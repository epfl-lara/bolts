; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!569554 () Bool)

(assert start!569554)

(declare-fun b!5426269 () Bool)

(assert (=> b!5426269 true))

(assert (=> b!5426269 true))

(declare-fun lambda!284591 () Int)

(declare-fun lambda!284590 () Int)

(assert (=> b!5426269 (not (= lambda!284591 lambda!284590))))

(assert (=> b!5426269 true))

(assert (=> b!5426269 true))

(declare-fun b!5426259 () Bool)

(assert (=> b!5426259 true))

(declare-fun b!5426258 () Bool)

(declare-fun res!2309300 () Bool)

(declare-fun e!3362567 () Bool)

(assert (=> b!5426258 (=> res!2309300 e!3362567)))

(declare-datatypes ((C!30704 0))(
  ( (C!30705 (val!25054 Int)) )
))
(declare-datatypes ((Regex!15217 0))(
  ( (ElementMatch!15217 (c!946431 C!30704)) (Concat!24062 (regOne!30946 Regex!15217) (regTwo!30946 Regex!15217)) (EmptyExpr!15217) (Star!15217 (reg!15546 Regex!15217)) (EmptyLang!15217) (Union!15217 (regOne!30947 Regex!15217) (regTwo!30947 Regex!15217)) )
))
(declare-fun r!7292 () Regex!15217)

(get-info :version)

(assert (=> b!5426258 (= res!2309300 (or ((_ is EmptyExpr!15217) r!7292) ((_ is EmptyLang!15217) r!7292) ((_ is ElementMatch!15217) r!7292) ((_ is Union!15217) r!7292) (not ((_ is Concat!24062) r!7292))))))

(declare-fun e!3362569 () Bool)

(declare-fun e!3362576 () Bool)

(assert (=> b!5426259 (= e!3362569 e!3362576)))

(declare-fun res!2309303 () Bool)

(assert (=> b!5426259 (=> res!2309303 e!3362576)))

(declare-datatypes ((List!61950 0))(
  ( (Nil!61826) (Cons!61826 (h!68274 C!30704) (t!375173 List!61950)) )
))
(declare-fun s!2326 () List!61950)

(assert (=> b!5426259 (= res!2309303 (or (and ((_ is ElementMatch!15217) (regOne!30946 r!7292)) (= (c!946431 (regOne!30946 r!7292)) (h!68274 s!2326))) ((_ is Union!15217) (regOne!30946 r!7292))))))

(declare-datatypes ((Unit!154390 0))(
  ( (Unit!154391) )
))
(declare-fun lt!2213345 () Unit!154390)

(declare-fun e!3362583 () Unit!154390)

(assert (=> b!5426259 (= lt!2213345 e!3362583)))

(declare-fun c!946430 () Bool)

(declare-fun lt!2213335 () Bool)

(assert (=> b!5426259 (= c!946430 lt!2213335)))

(declare-datatypes ((List!61951 0))(
  ( (Nil!61827) (Cons!61827 (h!68275 Regex!15217) (t!375174 List!61951)) )
))
(declare-datatypes ((Context!9202 0))(
  ( (Context!9203 (exprs!5101 List!61951)) )
))
(declare-datatypes ((List!61952 0))(
  ( (Nil!61828) (Cons!61828 (h!68276 Context!9202) (t!375175 List!61952)) )
))
(declare-fun zl!343 () List!61952)

(declare-fun nullable!5386 (Regex!15217) Bool)

(assert (=> b!5426259 (= lt!2213335 (nullable!5386 (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9202))

(declare-fun lambda!284592 () Int)

(declare-fun flatMap!944 ((InoxSet Context!9202) Int) (InoxSet Context!9202))

(declare-fun derivationStepZipperUp!589 (Context!9202 C!30704) (InoxSet Context!9202))

(assert (=> b!5426259 (= (flatMap!944 z!1189 lambda!284592) (derivationStepZipperUp!589 (h!68276 zl!343) (h!68274 s!2326)))))

(declare-fun lt!2213340 () Unit!154390)

(declare-fun lemmaFlatMapOnSingletonSet!476 ((InoxSet Context!9202) Context!9202 Int) Unit!154390)

(assert (=> b!5426259 (= lt!2213340 (lemmaFlatMapOnSingletonSet!476 z!1189 (h!68276 zl!343) lambda!284592))))

(declare-fun lt!2213318 () (InoxSet Context!9202))

(declare-fun lt!2213352 () Context!9202)

(assert (=> b!5426259 (= lt!2213318 (derivationStepZipperUp!589 lt!2213352 (h!68274 s!2326)))))

(declare-fun lt!2213328 () (InoxSet Context!9202))

(declare-fun derivationStepZipperDown!665 (Regex!15217 Context!9202 C!30704) (InoxSet Context!9202))

(assert (=> b!5426259 (= lt!2213328 (derivationStepZipperDown!665 (h!68275 (exprs!5101 (h!68276 zl!343))) lt!2213352 (h!68274 s!2326)))))

(assert (=> b!5426259 (= lt!2213352 (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun lt!2213342 () (InoxSet Context!9202))

(assert (=> b!5426259 (= lt!2213342 (derivationStepZipperUp!589 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))) (h!68274 s!2326)))))

(declare-fun b!5426260 () Bool)

(declare-fun e!3362580 () Bool)

(declare-fun lambda!284593 () Int)

(declare-fun forall!14555 (List!61951 Int) Bool)

(assert (=> b!5426260 (= e!3362580 (forall!14555 (t!375174 (exprs!5101 (h!68276 zl!343))) lambda!284593))))

(declare-fun b!5426261 () Bool)

(declare-fun res!2309314 () Bool)

(declare-fun e!3362582 () Bool)

(assert (=> b!5426261 (=> res!2309314 e!3362582)))

(declare-fun matchZipper!1461 ((InoxSet Context!9202) List!61950) Bool)

(assert (=> b!5426261 (= res!2309314 (not (matchZipper!1461 lt!2213318 (t!375173 s!2326))))))

(declare-fun b!5426262 () Bool)

(declare-fun res!2309296 () Bool)

(assert (=> b!5426262 (=> res!2309296 e!3362576)))

(declare-fun e!3362577 () Bool)

(assert (=> b!5426262 (= res!2309296 e!3362577)))

(declare-fun res!2309306 () Bool)

(assert (=> b!5426262 (=> (not res!2309306) (not e!3362577))))

(assert (=> b!5426262 (= res!2309306 ((_ is Concat!24062) (regOne!30946 r!7292)))))

(declare-fun b!5426263 () Bool)

(declare-fun e!3362570 () Bool)

(declare-fun tp!1497491 () Bool)

(assert (=> b!5426263 (= e!3362570 tp!1497491)))

(declare-fun b!5426264 () Bool)

(assert (=> b!5426264 (= e!3362577 (nullable!5386 (regOne!30946 (regOne!30946 r!7292))))))

(declare-fun b!5426265 () Bool)

(declare-fun res!2309298 () Bool)

(declare-fun e!3362571 () Bool)

(assert (=> b!5426265 (=> res!2309298 e!3362571)))

(declare-fun lt!2213351 () Regex!15217)

(assert (=> b!5426265 (= res!2309298 (not (= lt!2213351 r!7292)))))

(declare-fun b!5426266 () Bool)

(declare-fun res!2309299 () Bool)

(declare-fun e!3362574 () Bool)

(assert (=> b!5426266 (=> (not res!2309299) (not e!3362574))))

(declare-fun toList!9001 ((InoxSet Context!9202)) List!61952)

(assert (=> b!5426266 (= res!2309299 (= (toList!9001 z!1189) zl!343))))

(declare-fun b!5426267 () Bool)

(declare-fun res!2309312 () Bool)

(assert (=> b!5426267 (=> res!2309312 e!3362567)))

(declare-fun generalisedUnion!1146 (List!61951) Regex!15217)

(declare-fun unfocusZipperList!659 (List!61952) List!61951)

(assert (=> b!5426267 (= res!2309312 (not (= r!7292 (generalisedUnion!1146 (unfocusZipperList!659 zl!343)))))))

(declare-fun b!5426268 () Bool)

(declare-fun res!2309291 () Bool)

(declare-fun e!3362579 () Bool)

(assert (=> b!5426268 (=> res!2309291 e!3362579)))

(declare-fun lt!2213334 () Context!9202)

(declare-fun lt!2213331 () Regex!15217)

(declare-fun unfocusZipper!959 (List!61952) Regex!15217)

(assert (=> b!5426268 (= res!2309291 (not (= (unfocusZipper!959 (Cons!61828 lt!2213334 Nil!61828)) lt!2213331)))))

(assert (=> b!5426269 (= e!3362567 e!3362569)))

(declare-fun res!2309286 () Bool)

(assert (=> b!5426269 (=> res!2309286 e!3362569)))

(declare-fun lt!2213336 () Bool)

(declare-fun lt!2213344 () Bool)

(assert (=> b!5426269 (= res!2309286 (or (not (= lt!2213344 lt!2213336)) ((_ is Nil!61826) s!2326)))))

(declare-fun Exists!2398 (Int) Bool)

(assert (=> b!5426269 (= (Exists!2398 lambda!284590) (Exists!2398 lambda!284591))))

(declare-fun lt!2213324 () Unit!154390)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1052 (Regex!15217 Regex!15217 List!61950) Unit!154390)

(assert (=> b!5426269 (= lt!2213324 (lemmaExistCutMatchRandMatchRSpecEquivalent!1052 (regOne!30946 r!7292) (regTwo!30946 r!7292) s!2326))))

(assert (=> b!5426269 (= lt!2213336 (Exists!2398 lambda!284590))))

(declare-datatypes ((tuple2!64832 0))(
  ( (tuple2!64833 (_1!35719 List!61950) (_2!35719 List!61950)) )
))
(declare-datatypes ((Option!15328 0))(
  ( (None!15327) (Some!15327 (v!51356 tuple2!64832)) )
))
(declare-fun isDefined!12031 (Option!15328) Bool)

(declare-fun findConcatSeparation!1742 (Regex!15217 Regex!15217 List!61950 List!61950 List!61950) Option!15328)

(assert (=> b!5426269 (= lt!2213336 (isDefined!12031 (findConcatSeparation!1742 (regOne!30946 r!7292) (regTwo!30946 r!7292) Nil!61826 s!2326 s!2326)))))

(declare-fun lt!2213320 () Unit!154390)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1506 (Regex!15217 Regex!15217 List!61950) Unit!154390)

(assert (=> b!5426269 (= lt!2213320 (lemmaFindConcatSeparationEquivalentToExists!1506 (regOne!30946 r!7292) (regTwo!30946 r!7292) s!2326))))

(declare-fun b!5426270 () Bool)

(declare-fun res!2309310 () Bool)

(assert (=> b!5426270 (=> res!2309310 e!3362567)))

(declare-fun isEmpty!33824 (List!61952) Bool)

(assert (=> b!5426270 (= res!2309310 (not (isEmpty!33824 (t!375175 zl!343))))))

(declare-fun tp!1497494 () Bool)

(declare-fun e!3362585 () Bool)

(declare-fun setRes!35381 () Bool)

(declare-fun setElem!35381 () Context!9202)

(declare-fun setNonEmpty!35381 () Bool)

(declare-fun inv!81289 (Context!9202) Bool)

(assert (=> setNonEmpty!35381 (= setRes!35381 (and tp!1497494 (inv!81289 setElem!35381) e!3362585))))

(declare-fun setRest!35381 () (InoxSet Context!9202))

(assert (=> setNonEmpty!35381 (= z!1189 ((_ map or) (store ((as const (Array Context!9202 Bool)) false) setElem!35381 true) setRest!35381))))

(declare-fun b!5426271 () Bool)

(declare-fun res!2309293 () Bool)

(assert (=> b!5426271 (=> res!2309293 e!3362567)))

(declare-fun generalisedConcat!886 (List!61951) Regex!15217)

(assert (=> b!5426271 (= res!2309293 (not (= r!7292 (generalisedConcat!886 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun b!5426272 () Bool)

(declare-fun res!2309309 () Bool)

(declare-fun e!3362586 () Bool)

(assert (=> b!5426272 (=> res!2309309 e!3362586)))

(assert (=> b!5426272 (= res!2309309 (not lt!2213335))))

(declare-fun b!5426273 () Bool)

(declare-fun e!3362578 () Bool)

(declare-fun e!3362568 () Bool)

(assert (=> b!5426273 (= e!3362578 e!3362568)))

(declare-fun res!2309287 () Bool)

(assert (=> b!5426273 (=> res!2309287 e!3362568)))

(declare-fun lt!2213350 () Context!9202)

(declare-fun lt!2213346 () Regex!15217)

(assert (=> b!5426273 (= res!2309287 (not (= (unfocusZipper!959 (Cons!61828 lt!2213350 Nil!61828)) lt!2213346)))))

(assert (=> b!5426273 (= lt!2213346 (Concat!24062 (reg!15546 (regOne!30946 r!7292)) lt!2213331))))

(declare-fun setIsEmpty!35381 () Bool)

(assert (=> setIsEmpty!35381 setRes!35381))

(declare-fun res!2309294 () Bool)

(assert (=> start!569554 (=> (not res!2309294) (not e!3362574))))

(declare-fun validRegex!6953 (Regex!15217) Bool)

(assert (=> start!569554 (= res!2309294 (validRegex!6953 r!7292))))

(assert (=> start!569554 e!3362574))

(declare-fun e!3362587 () Bool)

(assert (=> start!569554 e!3362587))

(declare-fun condSetEmpty!35381 () Bool)

(assert (=> start!569554 (= condSetEmpty!35381 (= z!1189 ((as const (Array Context!9202 Bool)) false)))))

(assert (=> start!569554 setRes!35381))

(declare-fun e!3362588 () Bool)

(assert (=> start!569554 e!3362588))

(declare-fun e!3362573 () Bool)

(assert (=> start!569554 e!3362573))

(declare-fun b!5426274 () Bool)

(assert (=> b!5426274 (= e!3362571 e!3362578)))

(declare-fun res!2309316 () Bool)

(assert (=> b!5426274 (=> res!2309316 e!3362578)))

(assert (=> b!5426274 (= res!2309316 (not (= r!7292 lt!2213331)))))

(declare-fun lt!2213347 () Regex!15217)

(assert (=> b!5426274 (= lt!2213331 (Concat!24062 lt!2213347 (regTwo!30946 r!7292)))))

(declare-fun b!5426275 () Bool)

(declare-fun res!2309305 () Bool)

(assert (=> b!5426275 (=> res!2309305 e!3362569)))

(declare-fun isEmpty!33825 (List!61951) Bool)

(assert (=> b!5426275 (= res!2309305 (isEmpty!33825 (t!375174 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5426276 () Bool)

(declare-fun res!2309289 () Bool)

(assert (=> b!5426276 (=> res!2309289 e!3362586)))

(assert (=> b!5426276 (= res!2309289 (not (matchZipper!1461 z!1189 s!2326)))))

(declare-fun b!5426277 () Bool)

(declare-fun tp!1497488 () Bool)

(declare-fun tp!1497492 () Bool)

(assert (=> b!5426277 (= e!3362587 (and tp!1497488 tp!1497492))))

(declare-fun b!5426278 () Bool)

(assert (=> b!5426278 (= e!3362586 e!3362582)))

(declare-fun res!2309301 () Bool)

(assert (=> b!5426278 (=> res!2309301 e!3362582)))

(declare-fun e!3362584 () Bool)

(assert (=> b!5426278 (= res!2309301 e!3362584)))

(declare-fun res!2309313 () Bool)

(assert (=> b!5426278 (=> (not res!2309313) (not e!3362584))))

(declare-fun lt!2213323 () Bool)

(assert (=> b!5426278 (= res!2309313 (not lt!2213323))))

(assert (=> b!5426278 (= lt!2213323 (matchZipper!1461 lt!2213328 (t!375173 s!2326)))))

(declare-fun b!5426279 () Bool)

(declare-fun res!2309302 () Bool)

(assert (=> b!5426279 (=> res!2309302 e!3362571)))

(declare-fun lt!2213348 () (InoxSet Context!9202))

(declare-fun lt!2213337 () (InoxSet Context!9202))

(assert (=> b!5426279 (= res!2309302 (not (= (matchZipper!1461 lt!2213337 s!2326) (matchZipper!1461 lt!2213348 (t!375173 s!2326)))))))

(declare-fun b!5426280 () Bool)

(assert (=> b!5426280 (= e!3362582 e!3362580)))

(declare-fun res!2309290 () Bool)

(assert (=> b!5426280 (=> res!2309290 e!3362580)))

(declare-fun lt!2213329 () (InoxSet Context!9202))

(declare-fun derivationStepZipper!1456 ((InoxSet Context!9202) C!30704) (InoxSet Context!9202))

(assert (=> b!5426280 (= res!2309290 (not (= lt!2213318 (derivationStepZipper!1456 lt!2213329 (h!68274 s!2326)))))))

(assert (=> b!5426280 (= (flatMap!944 lt!2213329 lambda!284592) (derivationStepZipperUp!589 lt!2213352 (h!68274 s!2326)))))

(declare-fun lt!2213333 () Unit!154390)

(assert (=> b!5426280 (= lt!2213333 (lemmaFlatMapOnSingletonSet!476 lt!2213329 lt!2213352 lambda!284592))))

(assert (=> b!5426280 (= lt!2213329 (store ((as const (Array Context!9202 Bool)) false) lt!2213352 true))))

(declare-fun b!5426281 () Bool)

(declare-fun tp!1497493 () Bool)

(assert (=> b!5426281 (= e!3362585 tp!1497493)))

(declare-fun b!5426282 () Bool)

(declare-fun tp!1497495 () Bool)

(assert (=> b!5426282 (= e!3362587 tp!1497495)))

(declare-fun b!5426283 () Bool)

(declare-fun res!2309311 () Bool)

(assert (=> b!5426283 (=> res!2309311 e!3362582)))

(assert (=> b!5426283 (= res!2309311 lt!2213323)))

(declare-fun b!5426284 () Bool)

(declare-fun e!3362581 () Bool)

(assert (=> b!5426284 (= e!3362574 e!3362581)))

(declare-fun res!2309295 () Bool)

(assert (=> b!5426284 (=> (not res!2309295) (not e!3362581))))

(assert (=> b!5426284 (= res!2309295 (= r!7292 lt!2213351))))

(assert (=> b!5426284 (= lt!2213351 (unfocusZipper!959 zl!343))))

(declare-fun b!5426285 () Bool)

(declare-fun tp_is_empty!39687 () Bool)

(assert (=> b!5426285 (= e!3362587 tp_is_empty!39687)))

(declare-fun b!5426286 () Bool)

(declare-fun tp!1497496 () Bool)

(declare-fun tp!1497489 () Bool)

(assert (=> b!5426286 (= e!3362587 (and tp!1497496 tp!1497489))))

(declare-fun b!5426287 () Bool)

(declare-fun Unit!154392 () Unit!154390)

(assert (=> b!5426287 (= e!3362583 Unit!154392)))

(declare-fun lt!2213325 () Unit!154390)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!454 ((InoxSet Context!9202) (InoxSet Context!9202) List!61950) Unit!154390)

(assert (=> b!5426287 (= lt!2213325 (lemmaZipperConcatMatchesSameAsBothZippers!454 lt!2213328 lt!2213318 (t!375173 s!2326)))))

(declare-fun res!2309308 () Bool)

(assert (=> b!5426287 (= res!2309308 (matchZipper!1461 lt!2213328 (t!375173 s!2326)))))

(declare-fun e!3362572 () Bool)

(assert (=> b!5426287 (=> res!2309308 e!3362572)))

(assert (=> b!5426287 (= (matchZipper!1461 ((_ map or) lt!2213328 lt!2213318) (t!375173 s!2326)) e!3362572)))

(declare-fun b!5426288 () Bool)

(declare-fun res!2309307 () Bool)

(assert (=> b!5426288 (=> res!2309307 e!3362567)))

(assert (=> b!5426288 (= res!2309307 (not ((_ is Cons!61827) (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5426289 () Bool)

(declare-fun res!2309288 () Bool)

(assert (=> b!5426289 (=> res!2309288 e!3362576)))

(assert (=> b!5426289 (= res!2309288 (or ((_ is Concat!24062) (regOne!30946 r!7292)) (not ((_ is Star!15217) (regOne!30946 r!7292)))))))

(declare-fun b!5426290 () Bool)

(declare-fun tp!1497490 () Bool)

(assert (=> b!5426290 (= e!3362573 (and tp_is_empty!39687 tp!1497490))))

(declare-fun b!5426291 () Bool)

(declare-fun e!3362575 () Bool)

(assert (=> b!5426291 (= e!3362576 e!3362575)))

(declare-fun res!2309317 () Bool)

(assert (=> b!5426291 (=> res!2309317 e!3362575)))

(declare-fun lt!2213341 () (InoxSet Context!9202))

(assert (=> b!5426291 (= res!2309317 (not (= lt!2213328 lt!2213341)))))

(assert (=> b!5426291 (= lt!2213341 (derivationStepZipperDown!665 (reg!15546 (regOne!30946 r!7292)) lt!2213334 (h!68274 s!2326)))))

(declare-fun lt!2213322 () List!61951)

(assert (=> b!5426291 (= lt!2213334 (Context!9203 lt!2213322))))

(assert (=> b!5426291 (= lt!2213322 (Cons!61827 lt!2213347 (t!375174 (exprs!5101 (h!68276 zl!343)))))))

(assert (=> b!5426291 (= lt!2213347 (Star!15217 (reg!15546 (regOne!30946 r!7292))))))

(declare-fun b!5426292 () Bool)

(assert (=> b!5426292 (= e!3362584 (not (matchZipper!1461 lt!2213318 (t!375173 s!2326))))))

(declare-fun b!5426293 () Bool)

(assert (=> b!5426293 (= e!3362579 e!3362586)))

(declare-fun res!2309292 () Bool)

(assert (=> b!5426293 (=> res!2309292 e!3362586)))

(assert (=> b!5426293 (= res!2309292 lt!2213344)))

(declare-fun matchR!7402 (Regex!15217 List!61950) Bool)

(declare-fun matchRSpec!2320 (Regex!15217 List!61950) Bool)

(assert (=> b!5426293 (= (matchR!7402 lt!2213346 s!2326) (matchRSpec!2320 lt!2213346 s!2326))))

(declare-fun lt!2213343 () Unit!154390)

(declare-fun mainMatchTheorem!2320 (Regex!15217 List!61950) Unit!154390)

(assert (=> b!5426293 (= lt!2213343 (mainMatchTheorem!2320 lt!2213346 s!2326))))

(declare-fun b!5426294 () Bool)

(assert (=> b!5426294 (= e!3362568 e!3362579)))

(declare-fun res!2309297 () Bool)

(assert (=> b!5426294 (=> res!2309297 e!3362579)))

(declare-fun lt!2213330 () Context!9202)

(assert (=> b!5426294 (= res!2309297 (not (= (unfocusZipper!959 (Cons!61828 lt!2213330 Nil!61828)) (reg!15546 (regOne!30946 r!7292)))))))

(declare-fun lt!2213338 () (InoxSet Context!9202))

(assert (=> b!5426294 (= (flatMap!944 lt!2213338 lambda!284592) (derivationStepZipperUp!589 lt!2213334 (h!68274 s!2326)))))

(declare-fun lt!2213332 () Unit!154390)

(assert (=> b!5426294 (= lt!2213332 (lemmaFlatMapOnSingletonSet!476 lt!2213338 lt!2213334 lambda!284592))))

(declare-fun lt!2213327 () (InoxSet Context!9202))

(assert (=> b!5426294 (= (flatMap!944 lt!2213327 lambda!284592) (derivationStepZipperUp!589 lt!2213330 (h!68274 s!2326)))))

(declare-fun lt!2213339 () Unit!154390)

(assert (=> b!5426294 (= lt!2213339 (lemmaFlatMapOnSingletonSet!476 lt!2213327 lt!2213330 lambda!284592))))

(declare-fun lt!2213317 () (InoxSet Context!9202))

(assert (=> b!5426294 (= lt!2213317 (derivationStepZipperUp!589 lt!2213334 (h!68274 s!2326)))))

(declare-fun lt!2213319 () (InoxSet Context!9202))

(assert (=> b!5426294 (= lt!2213319 (derivationStepZipperUp!589 lt!2213330 (h!68274 s!2326)))))

(assert (=> b!5426294 (= lt!2213338 (store ((as const (Array Context!9202 Bool)) false) lt!2213334 true))))

(assert (=> b!5426294 (= lt!2213327 (store ((as const (Array Context!9202 Bool)) false) lt!2213330 true))))

(assert (=> b!5426294 (= lt!2213330 (Context!9203 (Cons!61827 (reg!15546 (regOne!30946 r!7292)) Nil!61827)))))

(declare-fun b!5426295 () Bool)

(declare-fun Unit!154393 () Unit!154390)

(assert (=> b!5426295 (= e!3362583 Unit!154393)))

(declare-fun b!5426296 () Bool)

(assert (=> b!5426296 (= e!3362572 (matchZipper!1461 lt!2213318 (t!375173 s!2326)))))

(declare-fun b!5426297 () Bool)

(assert (=> b!5426297 (= e!3362575 e!3362571)))

(declare-fun res!2309315 () Bool)

(assert (=> b!5426297 (=> res!2309315 e!3362571)))

(assert (=> b!5426297 (= res!2309315 (not (= lt!2213348 lt!2213341)))))

(assert (=> b!5426297 (= (flatMap!944 lt!2213337 lambda!284592) (derivationStepZipperUp!589 lt!2213350 (h!68274 s!2326)))))

(declare-fun lt!2213349 () Unit!154390)

(assert (=> b!5426297 (= lt!2213349 (lemmaFlatMapOnSingletonSet!476 lt!2213337 lt!2213350 lambda!284592))))

(declare-fun lt!2213326 () (InoxSet Context!9202))

(assert (=> b!5426297 (= lt!2213326 (derivationStepZipperUp!589 lt!2213350 (h!68274 s!2326)))))

(assert (=> b!5426297 (= lt!2213348 (derivationStepZipper!1456 lt!2213337 (h!68274 s!2326)))))

(assert (=> b!5426297 (= lt!2213337 (store ((as const (Array Context!9202 Bool)) false) lt!2213350 true))))

(assert (=> b!5426297 (= lt!2213350 (Context!9203 (Cons!61827 (reg!15546 (regOne!30946 r!7292)) lt!2213322)))))

(declare-fun b!5426298 () Bool)

(declare-fun tp!1497497 () Bool)

(assert (=> b!5426298 (= e!3362588 (and (inv!81289 (h!68276 zl!343)) e!3362570 tp!1497497))))

(declare-fun b!5426299 () Bool)

(assert (=> b!5426299 (= e!3362581 (not e!3362567))))

(declare-fun res!2309304 () Bool)

(assert (=> b!5426299 (=> res!2309304 e!3362567)))

(assert (=> b!5426299 (= res!2309304 (not ((_ is Cons!61828) zl!343)))))

(assert (=> b!5426299 (= lt!2213344 (matchRSpec!2320 r!7292 s!2326))))

(assert (=> b!5426299 (= lt!2213344 (matchR!7402 r!7292 s!2326))))

(declare-fun lt!2213321 () Unit!154390)

(assert (=> b!5426299 (= lt!2213321 (mainMatchTheorem!2320 r!7292 s!2326))))

(assert (= (and start!569554 res!2309294) b!5426266))

(assert (= (and b!5426266 res!2309299) b!5426284))

(assert (= (and b!5426284 res!2309295) b!5426299))

(assert (= (and b!5426299 (not res!2309304)) b!5426270))

(assert (= (and b!5426270 (not res!2309310)) b!5426271))

(assert (= (and b!5426271 (not res!2309293)) b!5426288))

(assert (= (and b!5426288 (not res!2309307)) b!5426267))

(assert (= (and b!5426267 (not res!2309312)) b!5426258))

(assert (= (and b!5426258 (not res!2309300)) b!5426269))

(assert (= (and b!5426269 (not res!2309286)) b!5426275))

(assert (= (and b!5426275 (not res!2309305)) b!5426259))

(assert (= (and b!5426259 c!946430) b!5426287))

(assert (= (and b!5426259 (not c!946430)) b!5426295))

(assert (= (and b!5426287 (not res!2309308)) b!5426296))

(assert (= (and b!5426259 (not res!2309303)) b!5426262))

(assert (= (and b!5426262 res!2309306) b!5426264))

(assert (= (and b!5426262 (not res!2309296)) b!5426289))

(assert (= (and b!5426289 (not res!2309288)) b!5426291))

(assert (= (and b!5426291 (not res!2309317)) b!5426297))

(assert (= (and b!5426297 (not res!2309315)) b!5426279))

(assert (= (and b!5426279 (not res!2309302)) b!5426265))

(assert (= (and b!5426265 (not res!2309298)) b!5426274))

(assert (= (and b!5426274 (not res!2309316)) b!5426273))

(assert (= (and b!5426273 (not res!2309287)) b!5426294))

(assert (= (and b!5426294 (not res!2309297)) b!5426268))

(assert (= (and b!5426268 (not res!2309291)) b!5426293))

(assert (= (and b!5426293 (not res!2309292)) b!5426276))

(assert (= (and b!5426276 (not res!2309289)) b!5426272))

(assert (= (and b!5426272 (not res!2309309)) b!5426278))

(assert (= (and b!5426278 res!2309313) b!5426292))

(assert (= (and b!5426278 (not res!2309301)) b!5426283))

(assert (= (and b!5426283 (not res!2309311)) b!5426261))

(assert (= (and b!5426261 (not res!2309314)) b!5426280))

(assert (= (and b!5426280 (not res!2309290)) b!5426260))

(assert (= (and start!569554 ((_ is ElementMatch!15217) r!7292)) b!5426285))

(assert (= (and start!569554 ((_ is Concat!24062) r!7292)) b!5426277))

(assert (= (and start!569554 ((_ is Star!15217) r!7292)) b!5426282))

(assert (= (and start!569554 ((_ is Union!15217) r!7292)) b!5426286))

(assert (= (and start!569554 condSetEmpty!35381) setIsEmpty!35381))

(assert (= (and start!569554 (not condSetEmpty!35381)) setNonEmpty!35381))

(assert (= setNonEmpty!35381 b!5426281))

(assert (= b!5426298 b!5426263))

(assert (= (and start!569554 ((_ is Cons!61828) zl!343)) b!5426298))

(assert (= (and start!569554 ((_ is Cons!61826) s!2326)) b!5426290))

(declare-fun m!6450082 () Bool)

(assert (=> b!5426276 m!6450082))

(declare-fun m!6450084 () Bool)

(assert (=> b!5426294 m!6450084))

(declare-fun m!6450086 () Bool)

(assert (=> b!5426294 m!6450086))

(declare-fun m!6450088 () Bool)

(assert (=> b!5426294 m!6450088))

(declare-fun m!6450090 () Bool)

(assert (=> b!5426294 m!6450090))

(declare-fun m!6450092 () Bool)

(assert (=> b!5426294 m!6450092))

(declare-fun m!6450094 () Bool)

(assert (=> b!5426294 m!6450094))

(declare-fun m!6450096 () Bool)

(assert (=> b!5426294 m!6450096))

(declare-fun m!6450098 () Bool)

(assert (=> b!5426294 m!6450098))

(declare-fun m!6450100 () Bool)

(assert (=> b!5426294 m!6450100))

(declare-fun m!6450102 () Bool)

(assert (=> b!5426259 m!6450102))

(declare-fun m!6450104 () Bool)

(assert (=> b!5426259 m!6450104))

(declare-fun m!6450106 () Bool)

(assert (=> b!5426259 m!6450106))

(declare-fun m!6450108 () Bool)

(assert (=> b!5426259 m!6450108))

(declare-fun m!6450110 () Bool)

(assert (=> b!5426259 m!6450110))

(declare-fun m!6450112 () Bool)

(assert (=> b!5426259 m!6450112))

(declare-fun m!6450114 () Bool)

(assert (=> b!5426259 m!6450114))

(declare-fun m!6450116 () Bool)

(assert (=> b!5426271 m!6450116))

(declare-fun m!6450118 () Bool)

(assert (=> b!5426279 m!6450118))

(declare-fun m!6450120 () Bool)

(assert (=> b!5426279 m!6450120))

(declare-fun m!6450122 () Bool)

(assert (=> b!5426292 m!6450122))

(declare-fun m!6450124 () Bool)

(assert (=> b!5426297 m!6450124))

(declare-fun m!6450126 () Bool)

(assert (=> b!5426297 m!6450126))

(declare-fun m!6450128 () Bool)

(assert (=> b!5426297 m!6450128))

(declare-fun m!6450130 () Bool)

(assert (=> b!5426297 m!6450130))

(declare-fun m!6450132 () Bool)

(assert (=> b!5426297 m!6450132))

(declare-fun m!6450134 () Bool)

(assert (=> b!5426284 m!6450134))

(declare-fun m!6450136 () Bool)

(assert (=> start!569554 m!6450136))

(declare-fun m!6450138 () Bool)

(assert (=> b!5426275 m!6450138))

(declare-fun m!6450140 () Bool)

(assert (=> b!5426287 m!6450140))

(declare-fun m!6450142 () Bool)

(assert (=> b!5426287 m!6450142))

(declare-fun m!6450144 () Bool)

(assert (=> b!5426287 m!6450144))

(declare-fun m!6450146 () Bool)

(assert (=> b!5426299 m!6450146))

(declare-fun m!6450148 () Bool)

(assert (=> b!5426299 m!6450148))

(declare-fun m!6450150 () Bool)

(assert (=> b!5426299 m!6450150))

(declare-fun m!6450152 () Bool)

(assert (=> b!5426298 m!6450152))

(declare-fun m!6450154 () Bool)

(assert (=> b!5426291 m!6450154))

(declare-fun m!6450156 () Bool)

(assert (=> setNonEmpty!35381 m!6450156))

(declare-fun m!6450158 () Bool)

(assert (=> b!5426280 m!6450158))

(declare-fun m!6450160 () Bool)

(assert (=> b!5426280 m!6450160))

(declare-fun m!6450162 () Bool)

(assert (=> b!5426280 m!6450162))

(declare-fun m!6450164 () Bool)

(assert (=> b!5426280 m!6450164))

(assert (=> b!5426280 m!6450114))

(declare-fun m!6450166 () Bool)

(assert (=> b!5426269 m!6450166))

(declare-fun m!6450168 () Bool)

(assert (=> b!5426269 m!6450168))

(declare-fun m!6450170 () Bool)

(assert (=> b!5426269 m!6450170))

(declare-fun m!6450172 () Bool)

(assert (=> b!5426269 m!6450172))

(assert (=> b!5426269 m!6450166))

(declare-fun m!6450174 () Bool)

(assert (=> b!5426269 m!6450174))

(assert (=> b!5426269 m!6450168))

(declare-fun m!6450176 () Bool)

(assert (=> b!5426269 m!6450176))

(declare-fun m!6450178 () Bool)

(assert (=> b!5426264 m!6450178))

(declare-fun m!6450180 () Bool)

(assert (=> b!5426273 m!6450180))

(declare-fun m!6450182 () Bool)

(assert (=> b!5426270 m!6450182))

(assert (=> b!5426261 m!6450122))

(assert (=> b!5426296 m!6450122))

(declare-fun m!6450184 () Bool)

(assert (=> b!5426268 m!6450184))

(declare-fun m!6450186 () Bool)

(assert (=> b!5426267 m!6450186))

(assert (=> b!5426267 m!6450186))

(declare-fun m!6450188 () Bool)

(assert (=> b!5426267 m!6450188))

(assert (=> b!5426278 m!6450142))

(declare-fun m!6450190 () Bool)

(assert (=> b!5426260 m!6450190))

(declare-fun m!6450192 () Bool)

(assert (=> b!5426293 m!6450192))

(declare-fun m!6450194 () Bool)

(assert (=> b!5426293 m!6450194))

(declare-fun m!6450196 () Bool)

(assert (=> b!5426293 m!6450196))

(declare-fun m!6450198 () Bool)

(assert (=> b!5426266 m!6450198))

(check-sat (not b!5426259) (not b!5426298) (not b!5426277) (not b!5426287) (not b!5426281) (not b!5426261) (not b!5426275) (not b!5426291) (not setNonEmpty!35381) (not b!5426270) (not b!5426260) (not b!5426266) (not b!5426273) (not b!5426292) (not b!5426268) (not b!5426296) (not b!5426286) (not b!5426279) (not b!5426280) (not b!5426269) (not b!5426294) (not b!5426284) (not b!5426276) (not b!5426271) (not b!5426267) (not start!569554) (not b!5426278) (not b!5426282) (not b!5426299) (not b!5426290) (not b!5426297) (not b!5426263) (not b!5426264) tp_is_empty!39687 (not b!5426293))
(check-sat)
(get-model)

(declare-fun d!1730396 () Bool)

(declare-fun dynLambda!24362 (Int Context!9202) (InoxSet Context!9202))

(assert (=> d!1730396 (= (flatMap!944 z!1189 lambda!284592) (dynLambda!24362 lambda!284592 (h!68276 zl!343)))))

(declare-fun lt!2213355 () Unit!154390)

(declare-fun choose!41150 ((InoxSet Context!9202) Context!9202 Int) Unit!154390)

(assert (=> d!1730396 (= lt!2213355 (choose!41150 z!1189 (h!68276 zl!343) lambda!284592))))

(assert (=> d!1730396 (= z!1189 (store ((as const (Array Context!9202 Bool)) false) (h!68276 zl!343) true))))

(assert (=> d!1730396 (= (lemmaFlatMapOnSingletonSet!476 z!1189 (h!68276 zl!343) lambda!284592) lt!2213355)))

(declare-fun b_lambda!207037 () Bool)

(assert (=> (not b_lambda!207037) (not d!1730396)))

(declare-fun bs!1253401 () Bool)

(assert (= bs!1253401 d!1730396))

(assert (=> bs!1253401 m!6450106))

(declare-fun m!6450200 () Bool)

(assert (=> bs!1253401 m!6450200))

(declare-fun m!6450202 () Bool)

(assert (=> bs!1253401 m!6450202))

(declare-fun m!6450204 () Bool)

(assert (=> bs!1253401 m!6450204))

(assert (=> b!5426259 d!1730396))

(declare-fun d!1730398 () Bool)

(declare-fun nullableFct!1612 (Regex!15217) Bool)

(assert (=> d!1730398 (= (nullable!5386 (h!68275 (exprs!5101 (h!68276 zl!343)))) (nullableFct!1612 (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun bs!1253402 () Bool)

(assert (= bs!1253402 d!1730398))

(declare-fun m!6450206 () Bool)

(assert (=> bs!1253402 m!6450206))

(assert (=> b!5426259 d!1730398))

(declare-fun b!5426316 () Bool)

(declare-fun e!3362595 () (InoxSet Context!9202))

(declare-fun call!388307 () (InoxSet Context!9202))

(assert (=> b!5426316 (= e!3362595 call!388307)))

(declare-fun b!5426317 () Bool)

(declare-fun e!3362596 () (InoxSet Context!9202))

(assert (=> b!5426317 (= e!3362596 e!3362595)))

(declare-fun c!946437 () Bool)

(assert (=> b!5426317 (= c!946437 ((_ is Cons!61827) (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))))))

(declare-fun d!1730400 () Bool)

(declare-fun c!946436 () Bool)

(declare-fun e!3362597 () Bool)

(assert (=> d!1730400 (= c!946436 e!3362597)))

(declare-fun res!2309320 () Bool)

(assert (=> d!1730400 (=> (not res!2309320) (not e!3362597))))

(assert (=> d!1730400 (= res!2309320 ((_ is Cons!61827) (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))))))

(assert (=> d!1730400 (= (derivationStepZipperUp!589 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))) (h!68274 s!2326)) e!3362596)))

(declare-fun b!5426318 () Bool)

(assert (=> b!5426318 (= e!3362596 ((_ map or) call!388307 (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (h!68274 s!2326))))))

(declare-fun b!5426319 () Bool)

(assert (=> b!5426319 (= e!3362597 (nullable!5386 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))))))

(declare-fun b!5426320 () Bool)

(assert (=> b!5426320 (= e!3362595 ((as const (Array Context!9202 Bool)) false))))

(declare-fun bm!388302 () Bool)

(assert (=> bm!388302 (= call!388307 (derivationStepZipperDown!665 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))) (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (h!68274 s!2326)))))

(assert (= (and d!1730400 res!2309320) b!5426319))

(assert (= (and d!1730400 c!946436) b!5426318))

(assert (= (and d!1730400 (not c!946436)) b!5426317))

(assert (= (and b!5426317 c!946437) b!5426316))

(assert (= (and b!5426317 (not c!946437)) b!5426320))

(assert (= (or b!5426318 b!5426316) bm!388302))

(declare-fun m!6450208 () Bool)

(assert (=> b!5426318 m!6450208))

(declare-fun m!6450210 () Bool)

(assert (=> b!5426319 m!6450210))

(declare-fun m!6450212 () Bool)

(assert (=> bm!388302 m!6450212))

(assert (=> b!5426259 d!1730400))

(declare-fun b!5426321 () Bool)

(declare-fun e!3362598 () (InoxSet Context!9202))

(declare-fun call!388308 () (InoxSet Context!9202))

(assert (=> b!5426321 (= e!3362598 call!388308)))

(declare-fun b!5426322 () Bool)

(declare-fun e!3362599 () (InoxSet Context!9202))

(assert (=> b!5426322 (= e!3362599 e!3362598)))

(declare-fun c!946439 () Bool)

(assert (=> b!5426322 (= c!946439 ((_ is Cons!61827) (exprs!5101 lt!2213352)))))

(declare-fun d!1730402 () Bool)

(declare-fun c!946438 () Bool)

(declare-fun e!3362600 () Bool)

(assert (=> d!1730402 (= c!946438 e!3362600)))

(declare-fun res!2309321 () Bool)

(assert (=> d!1730402 (=> (not res!2309321) (not e!3362600))))

(assert (=> d!1730402 (= res!2309321 ((_ is Cons!61827) (exprs!5101 lt!2213352)))))

(assert (=> d!1730402 (= (derivationStepZipperUp!589 lt!2213352 (h!68274 s!2326)) e!3362599)))

(declare-fun b!5426323 () Bool)

(assert (=> b!5426323 (= e!3362599 ((_ map or) call!388308 (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 lt!2213352))) (h!68274 s!2326))))))

(declare-fun b!5426324 () Bool)

(assert (=> b!5426324 (= e!3362600 (nullable!5386 (h!68275 (exprs!5101 lt!2213352))))))

(declare-fun b!5426325 () Bool)

(assert (=> b!5426325 (= e!3362598 ((as const (Array Context!9202 Bool)) false))))

(declare-fun bm!388303 () Bool)

(assert (=> bm!388303 (= call!388308 (derivationStepZipperDown!665 (h!68275 (exprs!5101 lt!2213352)) (Context!9203 (t!375174 (exprs!5101 lt!2213352))) (h!68274 s!2326)))))

(assert (= (and d!1730402 res!2309321) b!5426324))

(assert (= (and d!1730402 c!946438) b!5426323))

(assert (= (and d!1730402 (not c!946438)) b!5426322))

(assert (= (and b!5426322 c!946439) b!5426321))

(assert (= (and b!5426322 (not c!946439)) b!5426325))

(assert (= (or b!5426323 b!5426321) bm!388303))

(declare-fun m!6450214 () Bool)

(assert (=> b!5426323 m!6450214))

(declare-fun m!6450216 () Bool)

(assert (=> b!5426324 m!6450216))

(declare-fun m!6450218 () Bool)

(assert (=> bm!388303 m!6450218))

(assert (=> b!5426259 d!1730402))

(declare-fun b!5426416 () Bool)

(declare-fun e!3362662 () (InoxSet Context!9202))

(assert (=> b!5426416 (= e!3362662 (store ((as const (Array Context!9202 Bool)) false) lt!2213352 true))))

(declare-fun b!5426418 () Bool)

(declare-fun e!3362659 () Bool)

(assert (=> b!5426418 (= e!3362659 (nullable!5386 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun bm!388326 () Bool)

(declare-fun call!388336 () (InoxSet Context!9202))

(declare-fun call!388332 () (InoxSet Context!9202))

(assert (=> bm!388326 (= call!388336 call!388332)))

(declare-fun b!5426419 () Bool)

(declare-fun e!3362657 () (InoxSet Context!9202))

(declare-fun e!3362660 () (InoxSet Context!9202))

(assert (=> b!5426419 (= e!3362657 e!3362660)))

(declare-fun c!946475 () Bool)

(assert (=> b!5426419 (= c!946475 ((_ is Concat!24062) (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5426420 () Bool)

(declare-fun call!388335 () (InoxSet Context!9202))

(assert (=> b!5426420 (= e!3362657 ((_ map or) call!388335 call!388332))))

(declare-fun b!5426421 () Bool)

(declare-fun c!946478 () Bool)

(assert (=> b!5426421 (= c!946478 e!3362659)))

(declare-fun res!2309344 () Bool)

(assert (=> b!5426421 (=> (not res!2309344) (not e!3362659))))

(assert (=> b!5426421 (= res!2309344 ((_ is Concat!24062) (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun e!3362661 () (InoxSet Context!9202))

(assert (=> b!5426421 (= e!3362661 e!3362657)))

(declare-fun b!5426422 () Bool)

(declare-fun call!388331 () (InoxSet Context!9202))

(assert (=> b!5426422 (= e!3362661 ((_ map or) call!388335 call!388331))))

(declare-fun bm!388327 () Bool)

(assert (=> bm!388327 (= call!388332 call!388331)))

(declare-fun call!388333 () List!61951)

(declare-fun bm!388328 () Bool)

(declare-fun $colon$colon!1512 (List!61951 Regex!15217) List!61951)

(assert (=> bm!388328 (= call!388333 ($colon$colon!1512 (exprs!5101 lt!2213352) (ite (or c!946478 c!946475) (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (h!68275 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun bm!388329 () Bool)

(declare-fun c!946474 () Bool)

(assert (=> bm!388329 (= call!388335 (derivationStepZipperDown!665 (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343))))) (ite c!946474 lt!2213352 (Context!9203 call!388333)) (h!68274 s!2326)))))

(declare-fun d!1730406 () Bool)

(declare-fun c!946476 () Bool)

(assert (=> d!1730406 (= c!946476 (and ((_ is ElementMatch!15217) (h!68275 (exprs!5101 (h!68276 zl!343)))) (= (c!946431 (h!68275 (exprs!5101 (h!68276 zl!343)))) (h!68274 s!2326))))))

(assert (=> d!1730406 (= (derivationStepZipperDown!665 (h!68275 (exprs!5101 (h!68276 zl!343))) lt!2213352 (h!68274 s!2326)) e!3362662)))

(declare-fun b!5426417 () Bool)

(assert (=> b!5426417 (= e!3362662 e!3362661)))

(assert (=> b!5426417 (= c!946474 ((_ is Union!15217) (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5426423 () Bool)

(assert (=> b!5426423 (= e!3362660 call!388336)))

(declare-fun b!5426424 () Bool)

(declare-fun e!3362658 () (InoxSet Context!9202))

(assert (=> b!5426424 (= e!3362658 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5426425 () Bool)

(assert (=> b!5426425 (= e!3362658 call!388336)))

(declare-fun call!388334 () List!61951)

(declare-fun bm!388330 () Bool)

(assert (=> bm!388330 (= call!388331 (derivationStepZipperDown!665 (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343))))))) (ite (or c!946474 c!946478) lt!2213352 (Context!9203 call!388334)) (h!68274 s!2326)))))

(declare-fun bm!388331 () Bool)

(assert (=> bm!388331 (= call!388334 call!388333)))

(declare-fun b!5426426 () Bool)

(declare-fun c!946477 () Bool)

(assert (=> b!5426426 (= c!946477 ((_ is Star!15217) (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(assert (=> b!5426426 (= e!3362660 e!3362658)))

(assert (= (and d!1730406 c!946476) b!5426416))

(assert (= (and d!1730406 (not c!946476)) b!5426417))

(assert (= (and b!5426417 c!946474) b!5426422))

(assert (= (and b!5426417 (not c!946474)) b!5426421))

(assert (= (and b!5426421 res!2309344) b!5426418))

(assert (= (and b!5426421 c!946478) b!5426420))

(assert (= (and b!5426421 (not c!946478)) b!5426419))

(assert (= (and b!5426419 c!946475) b!5426423))

(assert (= (and b!5426419 (not c!946475)) b!5426426))

(assert (= (and b!5426426 c!946477) b!5426425))

(assert (= (and b!5426426 (not c!946477)) b!5426424))

(assert (= (or b!5426423 b!5426425) bm!388331))

(assert (= (or b!5426423 b!5426425) bm!388326))

(assert (= (or b!5426420 bm!388331) bm!388328))

(assert (= (or b!5426420 bm!388326) bm!388327))

(assert (= (or b!5426422 bm!388327) bm!388330))

(assert (= (or b!5426422 b!5426420) bm!388329))

(declare-fun m!6450268 () Bool)

(assert (=> bm!388328 m!6450268))

(assert (=> b!5426416 m!6450162))

(declare-fun m!6450270 () Bool)

(assert (=> bm!388330 m!6450270))

(declare-fun m!6450272 () Bool)

(assert (=> bm!388329 m!6450272))

(declare-fun m!6450276 () Bool)

(assert (=> b!5426418 m!6450276))

(assert (=> b!5426259 d!1730406))

(declare-fun b!5426436 () Bool)

(declare-fun e!3362670 () (InoxSet Context!9202))

(declare-fun call!388340 () (InoxSet Context!9202))

(assert (=> b!5426436 (= e!3362670 call!388340)))

(declare-fun b!5426437 () Bool)

(declare-fun e!3362671 () (InoxSet Context!9202))

(assert (=> b!5426437 (= e!3362671 e!3362670)))

(declare-fun c!946482 () Bool)

(assert (=> b!5426437 (= c!946482 ((_ is Cons!61827) (exprs!5101 (h!68276 zl!343))))))

(declare-fun d!1730424 () Bool)

(declare-fun c!946481 () Bool)

(declare-fun e!3362672 () Bool)

(assert (=> d!1730424 (= c!946481 e!3362672)))

(declare-fun res!2309350 () Bool)

(assert (=> d!1730424 (=> (not res!2309350) (not e!3362672))))

(assert (=> d!1730424 (= res!2309350 ((_ is Cons!61827) (exprs!5101 (h!68276 zl!343))))))

(assert (=> d!1730424 (= (derivationStepZipperUp!589 (h!68276 zl!343) (h!68274 s!2326)) e!3362671)))

(declare-fun b!5426438 () Bool)

(assert (=> b!5426438 (= e!3362671 ((_ map or) call!388340 (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343)))) (h!68274 s!2326))))))

(declare-fun b!5426439 () Bool)

(assert (=> b!5426439 (= e!3362672 (nullable!5386 (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5426440 () Bool)

(assert (=> b!5426440 (= e!3362670 ((as const (Array Context!9202 Bool)) false))))

(declare-fun bm!388335 () Bool)

(assert (=> bm!388335 (= call!388340 (derivationStepZipperDown!665 (h!68275 (exprs!5101 (h!68276 zl!343))) (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343)))) (h!68274 s!2326)))))

(assert (= (and d!1730424 res!2309350) b!5426439))

(assert (= (and d!1730424 c!946481) b!5426438))

(assert (= (and d!1730424 (not c!946481)) b!5426437))

(assert (= (and b!5426437 c!946482) b!5426436))

(assert (= (and b!5426437 (not c!946482)) b!5426440))

(assert (= (or b!5426438 b!5426436) bm!388335))

(declare-fun m!6450288 () Bool)

(assert (=> b!5426438 m!6450288))

(assert (=> b!5426439 m!6450112))

(declare-fun m!6450290 () Bool)

(assert (=> bm!388335 m!6450290))

(assert (=> b!5426259 d!1730424))

(declare-fun d!1730430 () Bool)

(declare-fun choose!41152 ((InoxSet Context!9202) Int) (InoxSet Context!9202))

(assert (=> d!1730430 (= (flatMap!944 z!1189 lambda!284592) (choose!41152 z!1189 lambda!284592))))

(declare-fun bs!1253410 () Bool)

(assert (= bs!1253410 d!1730430))

(declare-fun m!6450292 () Bool)

(assert (=> bs!1253410 m!6450292))

(assert (=> b!5426259 d!1730430))

(declare-fun bs!1253411 () Bool)

(declare-fun d!1730432 () Bool)

(assert (= bs!1253411 (and d!1730432 b!5426259)))

(declare-fun lambda!284599 () Int)

(assert (=> bs!1253411 (= lambda!284599 lambda!284592)))

(assert (=> d!1730432 true))

(assert (=> d!1730432 (= (derivationStepZipper!1456 lt!2213329 (h!68274 s!2326)) (flatMap!944 lt!2213329 lambda!284599))))

(declare-fun bs!1253412 () Bool)

(assert (= bs!1253412 d!1730432))

(declare-fun m!6450306 () Bool)

(assert (=> bs!1253412 m!6450306))

(assert (=> b!5426280 d!1730432))

(declare-fun d!1730436 () Bool)

(assert (=> d!1730436 (= (flatMap!944 lt!2213329 lambda!284592) (choose!41152 lt!2213329 lambda!284592))))

(declare-fun bs!1253413 () Bool)

(assert (= bs!1253413 d!1730436))

(declare-fun m!6450308 () Bool)

(assert (=> bs!1253413 m!6450308))

(assert (=> b!5426280 d!1730436))

(assert (=> b!5426280 d!1730402))

(declare-fun d!1730438 () Bool)

(assert (=> d!1730438 (= (flatMap!944 lt!2213329 lambda!284592) (dynLambda!24362 lambda!284592 lt!2213352))))

(declare-fun lt!2213370 () Unit!154390)

(assert (=> d!1730438 (= lt!2213370 (choose!41150 lt!2213329 lt!2213352 lambda!284592))))

(assert (=> d!1730438 (= lt!2213329 (store ((as const (Array Context!9202 Bool)) false) lt!2213352 true))))

(assert (=> d!1730438 (= (lemmaFlatMapOnSingletonSet!476 lt!2213329 lt!2213352 lambda!284592) lt!2213370)))

(declare-fun b_lambda!207043 () Bool)

(assert (=> (not b_lambda!207043) (not d!1730438)))

(declare-fun bs!1253414 () Bool)

(assert (= bs!1253414 d!1730438))

(assert (=> bs!1253414 m!6450164))

(declare-fun m!6450312 () Bool)

(assert (=> bs!1253414 m!6450312))

(declare-fun m!6450316 () Bool)

(assert (=> bs!1253414 m!6450316))

(assert (=> bs!1253414 m!6450162))

(assert (=> b!5426280 d!1730438))

(declare-fun d!1730442 () Bool)

(declare-fun res!2309358 () Bool)

(declare-fun e!3362685 () Bool)

(assert (=> d!1730442 (=> res!2309358 e!3362685)))

(assert (=> d!1730442 (= res!2309358 ((_ is Nil!61827) (t!375174 (exprs!5101 (h!68276 zl!343)))))))

(assert (=> d!1730442 (= (forall!14555 (t!375174 (exprs!5101 (h!68276 zl!343))) lambda!284593) e!3362685)))

(declare-fun b!5426460 () Bool)

(declare-fun e!3362686 () Bool)

(assert (=> b!5426460 (= e!3362685 e!3362686)))

(declare-fun res!2309359 () Bool)

(assert (=> b!5426460 (=> (not res!2309359) (not e!3362686))))

(declare-fun dynLambda!24363 (Int Regex!15217) Bool)

(assert (=> b!5426460 (= res!2309359 (dynLambda!24363 lambda!284593 (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun b!5426461 () Bool)

(assert (=> b!5426461 (= e!3362686 (forall!14555 (t!375174 (t!375174 (exprs!5101 (h!68276 zl!343)))) lambda!284593))))

(assert (= (and d!1730442 (not res!2309358)) b!5426460))

(assert (= (and b!5426460 res!2309359) b!5426461))

(declare-fun b_lambda!207045 () Bool)

(assert (=> (not b_lambda!207045) (not b!5426460)))

(declare-fun m!6450328 () Bool)

(assert (=> b!5426460 m!6450328))

(declare-fun m!6450330 () Bool)

(assert (=> b!5426461 m!6450330))

(assert (=> b!5426260 d!1730442))

(declare-fun d!1730448 () Bool)

(declare-fun c!946507 () Bool)

(declare-fun isEmpty!33827 (List!61950) Bool)

(assert (=> d!1730448 (= c!946507 (isEmpty!33827 (t!375173 s!2326)))))

(declare-fun e!3362710 () Bool)

(assert (=> d!1730448 (= (matchZipper!1461 lt!2213318 (t!375173 s!2326)) e!3362710)))

(declare-fun b!5426502 () Bool)

(declare-fun nullableZipper!1462 ((InoxSet Context!9202)) Bool)

(assert (=> b!5426502 (= e!3362710 (nullableZipper!1462 lt!2213318))))

(declare-fun b!5426503 () Bool)

(declare-fun head!11641 (List!61950) C!30704)

(declare-fun tail!10738 (List!61950) List!61950)

(assert (=> b!5426503 (= e!3362710 (matchZipper!1461 (derivationStepZipper!1456 lt!2213318 (head!11641 (t!375173 s!2326))) (tail!10738 (t!375173 s!2326))))))

(assert (= (and d!1730448 c!946507) b!5426502))

(assert (= (and d!1730448 (not c!946507)) b!5426503))

(declare-fun m!6450354 () Bool)

(assert (=> d!1730448 m!6450354))

(declare-fun m!6450358 () Bool)

(assert (=> b!5426502 m!6450358))

(declare-fun m!6450360 () Bool)

(assert (=> b!5426503 m!6450360))

(assert (=> b!5426503 m!6450360))

(declare-fun m!6450362 () Bool)

(assert (=> b!5426503 m!6450362))

(declare-fun m!6450364 () Bool)

(assert (=> b!5426503 m!6450364))

(assert (=> b!5426503 m!6450362))

(assert (=> b!5426503 m!6450364))

(declare-fun m!6450366 () Bool)

(assert (=> b!5426503 m!6450366))

(assert (=> b!5426261 d!1730448))

(declare-fun bs!1253421 () Bool)

(declare-fun d!1730454 () Bool)

(assert (= bs!1253421 (and d!1730454 b!5426260)))

(declare-fun lambda!284608 () Int)

(assert (=> bs!1253421 (= lambda!284608 lambda!284593)))

(assert (=> d!1730454 (= (inv!81289 (h!68276 zl!343)) (forall!14555 (exprs!5101 (h!68276 zl!343)) lambda!284608))))

(declare-fun bs!1253422 () Bool)

(assert (= bs!1253422 d!1730454))

(declare-fun m!6450376 () Bool)

(assert (=> bs!1253422 m!6450376))

(assert (=> b!5426298 d!1730454))

(declare-fun bs!1253427 () Bool)

(declare-fun b!5426653 () Bool)

(assert (= bs!1253427 (and b!5426653 b!5426269)))

(declare-fun lambda!284618 () Int)

(assert (=> bs!1253427 (not (= lambda!284618 lambda!284590))))

(assert (=> bs!1253427 (not (= lambda!284618 lambda!284591))))

(assert (=> b!5426653 true))

(assert (=> b!5426653 true))

(declare-fun bs!1253428 () Bool)

(declare-fun b!5426649 () Bool)

(assert (= bs!1253428 (and b!5426649 b!5426269)))

(declare-fun lambda!284621 () Int)

(assert (=> bs!1253428 (not (= lambda!284621 lambda!284590))))

(assert (=> bs!1253428 (= lambda!284621 lambda!284591)))

(declare-fun bs!1253429 () Bool)

(assert (= bs!1253429 (and b!5426649 b!5426653)))

(assert (=> bs!1253429 (not (= lambda!284621 lambda!284618))))

(assert (=> b!5426649 true))

(assert (=> b!5426649 true))

(declare-fun bm!388362 () Bool)

(declare-fun call!388367 () Bool)

(assert (=> bm!388362 (= call!388367 (isEmpty!33827 s!2326))))

(declare-fun b!5426645 () Bool)

(declare-fun c!946552 () Bool)

(assert (=> b!5426645 (= c!946552 ((_ is ElementMatch!15217) r!7292))))

(declare-fun e!3362789 () Bool)

(declare-fun e!3362796 () Bool)

(assert (=> b!5426645 (= e!3362789 e!3362796)))

(declare-fun call!388368 () Bool)

(declare-fun bm!388363 () Bool)

(declare-fun c!946554 () Bool)

(assert (=> bm!388363 (= call!388368 (Exists!2398 (ite c!946554 lambda!284618 lambda!284621)))))

(declare-fun d!1730462 () Bool)

(declare-fun c!946555 () Bool)

(assert (=> d!1730462 (= c!946555 ((_ is EmptyExpr!15217) r!7292))))

(declare-fun e!3362795 () Bool)

(assert (=> d!1730462 (= (matchRSpec!2320 r!7292 s!2326) e!3362795)))

(declare-fun b!5426646 () Bool)

(assert (=> b!5426646 (= e!3362795 e!3362789)))

(declare-fun res!2309420 () Bool)

(assert (=> b!5426646 (= res!2309420 (not ((_ is EmptyLang!15217) r!7292)))))

(assert (=> b!5426646 (=> (not res!2309420) (not e!3362789))))

(declare-fun b!5426647 () Bool)

(assert (=> b!5426647 (= e!3362795 call!388367)))

(declare-fun b!5426648 () Bool)

(declare-fun res!2309423 () Bool)

(declare-fun e!3362788 () Bool)

(assert (=> b!5426648 (=> res!2309423 e!3362788)))

(assert (=> b!5426648 (= res!2309423 call!388367)))

(declare-fun e!3362792 () Bool)

(assert (=> b!5426648 (= e!3362792 e!3362788)))

(assert (=> b!5426649 (= e!3362792 call!388368)))

(declare-fun b!5426650 () Bool)

(declare-fun e!3362791 () Bool)

(declare-fun e!3362790 () Bool)

(assert (=> b!5426650 (= e!3362791 e!3362790)))

(declare-fun res!2309419 () Bool)

(assert (=> b!5426650 (= res!2309419 (matchRSpec!2320 (regOne!30947 r!7292) s!2326))))

(assert (=> b!5426650 (=> res!2309419 e!3362790)))

(declare-fun b!5426651 () Bool)

(assert (=> b!5426651 (= e!3362796 (= s!2326 (Cons!61826 (c!946431 r!7292) Nil!61826)))))

(declare-fun b!5426652 () Bool)

(declare-fun c!946553 () Bool)

(assert (=> b!5426652 (= c!946553 ((_ is Union!15217) r!7292))))

(assert (=> b!5426652 (= e!3362796 e!3362791)))

(assert (=> b!5426653 (= e!3362788 call!388368)))

(declare-fun b!5426654 () Bool)

(assert (=> b!5426654 (= e!3362790 (matchRSpec!2320 (regTwo!30947 r!7292) s!2326))))

(declare-fun b!5426655 () Bool)

(assert (=> b!5426655 (= e!3362791 e!3362792)))

(assert (=> b!5426655 (= c!946554 ((_ is Star!15217) r!7292))))

(assert (= (and d!1730462 c!946555) b!5426647))

(assert (= (and d!1730462 (not c!946555)) b!5426646))

(assert (= (and b!5426646 res!2309420) b!5426645))

(assert (= (and b!5426645 c!946552) b!5426651))

(assert (= (and b!5426645 (not c!946552)) b!5426652))

(assert (= (and b!5426652 c!946553) b!5426650))

(assert (= (and b!5426652 (not c!946553)) b!5426655))

(assert (= (and b!5426650 (not res!2309419)) b!5426654))

(assert (= (and b!5426655 c!946554) b!5426648))

(assert (= (and b!5426655 (not c!946554)) b!5426649))

(assert (= (and b!5426648 (not res!2309423)) b!5426653))

(assert (= (or b!5426653 b!5426649) bm!388363))

(assert (= (or b!5426647 b!5426648) bm!388362))

(declare-fun m!6450416 () Bool)

(assert (=> bm!388362 m!6450416))

(declare-fun m!6450418 () Bool)

(assert (=> bm!388363 m!6450418))

(declare-fun m!6450420 () Bool)

(assert (=> b!5426650 m!6450420))

(declare-fun m!6450422 () Bool)

(assert (=> b!5426654 m!6450422))

(assert (=> b!5426299 d!1730462))

(declare-fun b!5426736 () Bool)

(declare-fun e!3362846 () Bool)

(assert (=> b!5426736 (= e!3362846 (nullable!5386 r!7292))))

(declare-fun bm!388380 () Bool)

(declare-fun call!388385 () Bool)

(assert (=> bm!388380 (= call!388385 (isEmpty!33827 s!2326))))

(declare-fun b!5426737 () Bool)

(declare-fun res!2309467 () Bool)

(declare-fun e!3362847 () Bool)

(assert (=> b!5426737 (=> res!2309467 e!3362847)))

(assert (=> b!5426737 (= res!2309467 (not (isEmpty!33827 (tail!10738 s!2326))))))

(declare-fun b!5426738 () Bool)

(declare-fun e!3362841 () Bool)

(declare-fun lt!2213392 () Bool)

(assert (=> b!5426738 (= e!3362841 (not lt!2213392))))

(declare-fun b!5426739 () Bool)

(declare-fun e!3362844 () Bool)

(assert (=> b!5426739 (= e!3362844 e!3362841)))

(declare-fun c!946578 () Bool)

(assert (=> b!5426739 (= c!946578 ((_ is EmptyLang!15217) r!7292))))

(declare-fun b!5426740 () Bool)

(declare-fun e!3362843 () Bool)

(assert (=> b!5426740 (= e!3362843 e!3362847)))

(declare-fun res!2309462 () Bool)

(assert (=> b!5426740 (=> res!2309462 e!3362847)))

(assert (=> b!5426740 (= res!2309462 call!388385)))

(declare-fun b!5426741 () Bool)

(declare-fun res!2309465 () Bool)

(declare-fun e!3362845 () Bool)

(assert (=> b!5426741 (=> res!2309465 e!3362845)))

(assert (=> b!5426741 (= res!2309465 (not ((_ is ElementMatch!15217) r!7292)))))

(assert (=> b!5426741 (= e!3362841 e!3362845)))

(declare-fun b!5426742 () Bool)

(declare-fun res!2309464 () Bool)

(declare-fun e!3362842 () Bool)

(assert (=> b!5426742 (=> (not res!2309464) (not e!3362842))))

(assert (=> b!5426742 (= res!2309464 (isEmpty!33827 (tail!10738 s!2326)))))

(declare-fun b!5426743 () Bool)

(declare-fun derivativeStep!4283 (Regex!15217 C!30704) Regex!15217)

(assert (=> b!5426743 (= e!3362846 (matchR!7402 (derivativeStep!4283 r!7292 (head!11641 s!2326)) (tail!10738 s!2326)))))

(declare-fun d!1730476 () Bool)

(assert (=> d!1730476 e!3362844))

(declare-fun c!946580 () Bool)

(assert (=> d!1730476 (= c!946580 ((_ is EmptyExpr!15217) r!7292))))

(assert (=> d!1730476 (= lt!2213392 e!3362846)))

(declare-fun c!946579 () Bool)

(assert (=> d!1730476 (= c!946579 (isEmpty!33827 s!2326))))

(assert (=> d!1730476 (validRegex!6953 r!7292)))

(assert (=> d!1730476 (= (matchR!7402 r!7292 s!2326) lt!2213392)))

(declare-fun b!5426744 () Bool)

(assert (=> b!5426744 (= e!3362844 (= lt!2213392 call!388385))))

(declare-fun b!5426745 () Bool)

(assert (=> b!5426745 (= e!3362845 e!3362843)))

(declare-fun res!2309463 () Bool)

(assert (=> b!5426745 (=> (not res!2309463) (not e!3362843))))

(assert (=> b!5426745 (= res!2309463 (not lt!2213392))))

(declare-fun b!5426746 () Bool)

(assert (=> b!5426746 (= e!3362842 (= (head!11641 s!2326) (c!946431 r!7292)))))

(declare-fun b!5426747 () Bool)

(assert (=> b!5426747 (= e!3362847 (not (= (head!11641 s!2326) (c!946431 r!7292))))))

(declare-fun b!5426748 () Bool)

(declare-fun res!2309460 () Bool)

(assert (=> b!5426748 (=> res!2309460 e!3362845)))

(assert (=> b!5426748 (= res!2309460 e!3362842)))

(declare-fun res!2309461 () Bool)

(assert (=> b!5426748 (=> (not res!2309461) (not e!3362842))))

(assert (=> b!5426748 (= res!2309461 lt!2213392)))

(declare-fun b!5426749 () Bool)

(declare-fun res!2309466 () Bool)

(assert (=> b!5426749 (=> (not res!2309466) (not e!3362842))))

(assert (=> b!5426749 (= res!2309466 (not call!388385))))

(assert (= (and d!1730476 c!946579) b!5426736))

(assert (= (and d!1730476 (not c!946579)) b!5426743))

(assert (= (and d!1730476 c!946580) b!5426744))

(assert (= (and d!1730476 (not c!946580)) b!5426739))

(assert (= (and b!5426739 c!946578) b!5426738))

(assert (= (and b!5426739 (not c!946578)) b!5426741))

(assert (= (and b!5426741 (not res!2309465)) b!5426748))

(assert (= (and b!5426748 res!2309461) b!5426749))

(assert (= (and b!5426749 res!2309466) b!5426742))

(assert (= (and b!5426742 res!2309464) b!5426746))

(assert (= (and b!5426748 (not res!2309460)) b!5426745))

(assert (= (and b!5426745 res!2309463) b!5426740))

(assert (= (and b!5426740 (not res!2309462)) b!5426737))

(assert (= (and b!5426737 (not res!2309467)) b!5426747))

(assert (= (or b!5426744 b!5426740 b!5426749) bm!388380))

(assert (=> d!1730476 m!6450416))

(assert (=> d!1730476 m!6450136))

(declare-fun m!6450496 () Bool)

(assert (=> b!5426742 m!6450496))

(assert (=> b!5426742 m!6450496))

(declare-fun m!6450498 () Bool)

(assert (=> b!5426742 m!6450498))

(declare-fun m!6450500 () Bool)

(assert (=> b!5426736 m!6450500))

(declare-fun m!6450502 () Bool)

(assert (=> b!5426743 m!6450502))

(assert (=> b!5426743 m!6450502))

(declare-fun m!6450504 () Bool)

(assert (=> b!5426743 m!6450504))

(assert (=> b!5426743 m!6450496))

(assert (=> b!5426743 m!6450504))

(assert (=> b!5426743 m!6450496))

(declare-fun m!6450506 () Bool)

(assert (=> b!5426743 m!6450506))

(assert (=> bm!388380 m!6450416))

(assert (=> b!5426747 m!6450502))

(assert (=> b!5426737 m!6450496))

(assert (=> b!5426737 m!6450496))

(assert (=> b!5426737 m!6450498))

(assert (=> b!5426746 m!6450502))

(assert (=> b!5426299 d!1730476))

(declare-fun d!1730514 () Bool)

(assert (=> d!1730514 (= (matchR!7402 r!7292 s!2326) (matchRSpec!2320 r!7292 s!2326))))

(declare-fun lt!2213398 () Unit!154390)

(declare-fun choose!41154 (Regex!15217 List!61950) Unit!154390)

(assert (=> d!1730514 (= lt!2213398 (choose!41154 r!7292 s!2326))))

(assert (=> d!1730514 (validRegex!6953 r!7292)))

(assert (=> d!1730514 (= (mainMatchTheorem!2320 r!7292 s!2326) lt!2213398)))

(declare-fun bs!1253455 () Bool)

(assert (= bs!1253455 d!1730514))

(assert (=> bs!1253455 m!6450148))

(assert (=> bs!1253455 m!6450146))

(declare-fun m!6450512 () Bool)

(assert (=> bs!1253455 m!6450512))

(assert (=> bs!1253455 m!6450136))

(assert (=> b!5426299 d!1730514))

(declare-fun d!1730518 () Bool)

(declare-fun c!946581 () Bool)

(assert (=> d!1730518 (= c!946581 (isEmpty!33827 (t!375173 s!2326)))))

(declare-fun e!3362850 () Bool)

(assert (=> d!1730518 (= (matchZipper!1461 lt!2213328 (t!375173 s!2326)) e!3362850)))

(declare-fun b!5426754 () Bool)

(assert (=> b!5426754 (= e!3362850 (nullableZipper!1462 lt!2213328))))

(declare-fun b!5426755 () Bool)

(assert (=> b!5426755 (= e!3362850 (matchZipper!1461 (derivationStepZipper!1456 lt!2213328 (head!11641 (t!375173 s!2326))) (tail!10738 (t!375173 s!2326))))))

(assert (= (and d!1730518 c!946581) b!5426754))

(assert (= (and d!1730518 (not c!946581)) b!5426755))

(assert (=> d!1730518 m!6450354))

(declare-fun m!6450516 () Bool)

(assert (=> b!5426754 m!6450516))

(assert (=> b!5426755 m!6450360))

(assert (=> b!5426755 m!6450360))

(declare-fun m!6450518 () Bool)

(assert (=> b!5426755 m!6450518))

(assert (=> b!5426755 m!6450364))

(assert (=> b!5426755 m!6450518))

(assert (=> b!5426755 m!6450364))

(declare-fun m!6450520 () Bool)

(assert (=> b!5426755 m!6450520))

(assert (=> b!5426278 d!1730518))

(declare-fun d!1730520 () Bool)

(declare-fun c!946582 () Bool)

(assert (=> d!1730520 (= c!946582 (isEmpty!33827 s!2326))))

(declare-fun e!3362851 () Bool)

(assert (=> d!1730520 (= (matchZipper!1461 lt!2213337 s!2326) e!3362851)))

(declare-fun b!5426756 () Bool)

(assert (=> b!5426756 (= e!3362851 (nullableZipper!1462 lt!2213337))))

(declare-fun b!5426757 () Bool)

(assert (=> b!5426757 (= e!3362851 (matchZipper!1461 (derivationStepZipper!1456 lt!2213337 (head!11641 s!2326)) (tail!10738 s!2326)))))

(assert (= (and d!1730520 c!946582) b!5426756))

(assert (= (and d!1730520 (not c!946582)) b!5426757))

(assert (=> d!1730520 m!6450416))

(declare-fun m!6450522 () Bool)

(assert (=> b!5426756 m!6450522))

(assert (=> b!5426757 m!6450502))

(assert (=> b!5426757 m!6450502))

(declare-fun m!6450524 () Bool)

(assert (=> b!5426757 m!6450524))

(assert (=> b!5426757 m!6450496))

(assert (=> b!5426757 m!6450524))

(assert (=> b!5426757 m!6450496))

(declare-fun m!6450526 () Bool)

(assert (=> b!5426757 m!6450526))

(assert (=> b!5426279 d!1730520))

(declare-fun d!1730522 () Bool)

(declare-fun c!946583 () Bool)

(assert (=> d!1730522 (= c!946583 (isEmpty!33827 (t!375173 s!2326)))))

(declare-fun e!3362852 () Bool)

(assert (=> d!1730522 (= (matchZipper!1461 lt!2213348 (t!375173 s!2326)) e!3362852)))

(declare-fun b!5426758 () Bool)

(assert (=> b!5426758 (= e!3362852 (nullableZipper!1462 lt!2213348))))

(declare-fun b!5426759 () Bool)

(assert (=> b!5426759 (= e!3362852 (matchZipper!1461 (derivationStepZipper!1456 lt!2213348 (head!11641 (t!375173 s!2326))) (tail!10738 (t!375173 s!2326))))))

(assert (= (and d!1730522 c!946583) b!5426758))

(assert (= (and d!1730522 (not c!946583)) b!5426759))

(assert (=> d!1730522 m!6450354))

(declare-fun m!6450528 () Bool)

(assert (=> b!5426758 m!6450528))

(assert (=> b!5426759 m!6450360))

(assert (=> b!5426759 m!6450360))

(declare-fun m!6450530 () Bool)

(assert (=> b!5426759 m!6450530))

(assert (=> b!5426759 m!6450364))

(assert (=> b!5426759 m!6450530))

(assert (=> b!5426759 m!6450364))

(declare-fun m!6450532 () Bool)

(assert (=> b!5426759 m!6450532))

(assert (=> b!5426279 d!1730522))

(assert (=> b!5426296 d!1730448))

(declare-fun d!1730524 () Bool)

(assert (=> d!1730524 (= (isEmpty!33825 (t!375174 (exprs!5101 (h!68276 zl!343)))) ((_ is Nil!61827) (t!375174 (exprs!5101 (h!68276 zl!343)))))))

(assert (=> b!5426275 d!1730524))

(declare-fun d!1730526 () Bool)

(assert (=> d!1730526 (= (flatMap!944 lt!2213337 lambda!284592) (choose!41152 lt!2213337 lambda!284592))))

(declare-fun bs!1253456 () Bool)

(assert (= bs!1253456 d!1730526))

(declare-fun m!6450534 () Bool)

(assert (=> bs!1253456 m!6450534))

(assert (=> b!5426297 d!1730526))

(declare-fun b!5426760 () Bool)

(declare-fun e!3362853 () (InoxSet Context!9202))

(declare-fun call!388386 () (InoxSet Context!9202))

(assert (=> b!5426760 (= e!3362853 call!388386)))

(declare-fun b!5426761 () Bool)

(declare-fun e!3362854 () (InoxSet Context!9202))

(assert (=> b!5426761 (= e!3362854 e!3362853)))

(declare-fun c!946585 () Bool)

(assert (=> b!5426761 (= c!946585 ((_ is Cons!61827) (exprs!5101 lt!2213350)))))

(declare-fun d!1730528 () Bool)

(declare-fun c!946584 () Bool)

(declare-fun e!3362855 () Bool)

(assert (=> d!1730528 (= c!946584 e!3362855)))

(declare-fun res!2309472 () Bool)

(assert (=> d!1730528 (=> (not res!2309472) (not e!3362855))))

(assert (=> d!1730528 (= res!2309472 ((_ is Cons!61827) (exprs!5101 lt!2213350)))))

(assert (=> d!1730528 (= (derivationStepZipperUp!589 lt!2213350 (h!68274 s!2326)) e!3362854)))

(declare-fun b!5426762 () Bool)

(assert (=> b!5426762 (= e!3362854 ((_ map or) call!388386 (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 lt!2213350))) (h!68274 s!2326))))))

(declare-fun b!5426763 () Bool)

(assert (=> b!5426763 (= e!3362855 (nullable!5386 (h!68275 (exprs!5101 lt!2213350))))))

(declare-fun b!5426764 () Bool)

(assert (=> b!5426764 (= e!3362853 ((as const (Array Context!9202 Bool)) false))))

(declare-fun bm!388381 () Bool)

(assert (=> bm!388381 (= call!388386 (derivationStepZipperDown!665 (h!68275 (exprs!5101 lt!2213350)) (Context!9203 (t!375174 (exprs!5101 lt!2213350))) (h!68274 s!2326)))))

(assert (= (and d!1730528 res!2309472) b!5426763))

(assert (= (and d!1730528 c!946584) b!5426762))

(assert (= (and d!1730528 (not c!946584)) b!5426761))

(assert (= (and b!5426761 c!946585) b!5426760))

(assert (= (and b!5426761 (not c!946585)) b!5426764))

(assert (= (or b!5426762 b!5426760) bm!388381))

(declare-fun m!6450536 () Bool)

(assert (=> b!5426762 m!6450536))

(declare-fun m!6450538 () Bool)

(assert (=> b!5426763 m!6450538))

(declare-fun m!6450540 () Bool)

(assert (=> bm!388381 m!6450540))

(assert (=> b!5426297 d!1730528))

(declare-fun d!1730530 () Bool)

(assert (=> d!1730530 (= (flatMap!944 lt!2213337 lambda!284592) (dynLambda!24362 lambda!284592 lt!2213350))))

(declare-fun lt!2213399 () Unit!154390)

(assert (=> d!1730530 (= lt!2213399 (choose!41150 lt!2213337 lt!2213350 lambda!284592))))

(assert (=> d!1730530 (= lt!2213337 (store ((as const (Array Context!9202 Bool)) false) lt!2213350 true))))

(assert (=> d!1730530 (= (lemmaFlatMapOnSingletonSet!476 lt!2213337 lt!2213350 lambda!284592) lt!2213399)))

(declare-fun b_lambda!207053 () Bool)

(assert (=> (not b_lambda!207053) (not d!1730530)))

(declare-fun bs!1253457 () Bool)

(assert (= bs!1253457 d!1730530))

(assert (=> bs!1253457 m!6450126))

(declare-fun m!6450542 () Bool)

(assert (=> bs!1253457 m!6450542))

(declare-fun m!6450544 () Bool)

(assert (=> bs!1253457 m!6450544))

(assert (=> bs!1253457 m!6450130))

(assert (=> b!5426297 d!1730530))

(declare-fun bs!1253458 () Bool)

(declare-fun d!1730532 () Bool)

(assert (= bs!1253458 (and d!1730532 b!5426259)))

(declare-fun lambda!284631 () Int)

(assert (=> bs!1253458 (= lambda!284631 lambda!284592)))

(declare-fun bs!1253459 () Bool)

(assert (= bs!1253459 (and d!1730532 d!1730432)))

(assert (=> bs!1253459 (= lambda!284631 lambda!284599)))

(assert (=> d!1730532 true))

(assert (=> d!1730532 (= (derivationStepZipper!1456 lt!2213337 (h!68274 s!2326)) (flatMap!944 lt!2213337 lambda!284631))))

(declare-fun bs!1253460 () Bool)

(assert (= bs!1253460 d!1730532))

(declare-fun m!6450546 () Bool)

(assert (=> bs!1253460 m!6450546))

(assert (=> b!5426297 d!1730532))

(declare-fun d!1730534 () Bool)

(declare-fun c!946586 () Bool)

(assert (=> d!1730534 (= c!946586 (isEmpty!33827 s!2326))))

(declare-fun e!3362856 () Bool)

(assert (=> d!1730534 (= (matchZipper!1461 z!1189 s!2326) e!3362856)))

(declare-fun b!5426765 () Bool)

(assert (=> b!5426765 (= e!3362856 (nullableZipper!1462 z!1189))))

(declare-fun b!5426766 () Bool)

(assert (=> b!5426766 (= e!3362856 (matchZipper!1461 (derivationStepZipper!1456 z!1189 (head!11641 s!2326)) (tail!10738 s!2326)))))

(assert (= (and d!1730534 c!946586) b!5426765))

(assert (= (and d!1730534 (not c!946586)) b!5426766))

(assert (=> d!1730534 m!6450416))

(declare-fun m!6450548 () Bool)

(assert (=> b!5426765 m!6450548))

(assert (=> b!5426766 m!6450502))

(assert (=> b!5426766 m!6450502))

(declare-fun m!6450550 () Bool)

(assert (=> b!5426766 m!6450550))

(assert (=> b!5426766 m!6450496))

(assert (=> b!5426766 m!6450550))

(assert (=> b!5426766 m!6450496))

(declare-fun m!6450552 () Bool)

(assert (=> b!5426766 m!6450552))

(assert (=> b!5426276 d!1730534))

(declare-fun b!5426767 () Bool)

(declare-fun e!3362862 () Bool)

(assert (=> b!5426767 (= e!3362862 (nullable!5386 lt!2213346))))

(declare-fun bm!388382 () Bool)

(declare-fun call!388387 () Bool)

(assert (=> bm!388382 (= call!388387 (isEmpty!33827 s!2326))))

(declare-fun b!5426768 () Bool)

(declare-fun res!2309480 () Bool)

(declare-fun e!3362863 () Bool)

(assert (=> b!5426768 (=> res!2309480 e!3362863)))

(assert (=> b!5426768 (= res!2309480 (not (isEmpty!33827 (tail!10738 s!2326))))))

(declare-fun b!5426769 () Bool)

(declare-fun e!3362857 () Bool)

(declare-fun lt!2213400 () Bool)

(assert (=> b!5426769 (= e!3362857 (not lt!2213400))))

(declare-fun b!5426770 () Bool)

(declare-fun e!3362860 () Bool)

(assert (=> b!5426770 (= e!3362860 e!3362857)))

(declare-fun c!946587 () Bool)

(assert (=> b!5426770 (= c!946587 ((_ is EmptyLang!15217) lt!2213346))))

(declare-fun b!5426771 () Bool)

(declare-fun e!3362859 () Bool)

(assert (=> b!5426771 (= e!3362859 e!3362863)))

(declare-fun res!2309475 () Bool)

(assert (=> b!5426771 (=> res!2309475 e!3362863)))

(assert (=> b!5426771 (= res!2309475 call!388387)))

(declare-fun b!5426772 () Bool)

(declare-fun res!2309478 () Bool)

(declare-fun e!3362861 () Bool)

(assert (=> b!5426772 (=> res!2309478 e!3362861)))

(assert (=> b!5426772 (= res!2309478 (not ((_ is ElementMatch!15217) lt!2213346)))))

(assert (=> b!5426772 (= e!3362857 e!3362861)))

(declare-fun b!5426773 () Bool)

(declare-fun res!2309477 () Bool)

(declare-fun e!3362858 () Bool)

(assert (=> b!5426773 (=> (not res!2309477) (not e!3362858))))

(assert (=> b!5426773 (= res!2309477 (isEmpty!33827 (tail!10738 s!2326)))))

(declare-fun b!5426774 () Bool)

(assert (=> b!5426774 (= e!3362862 (matchR!7402 (derivativeStep!4283 lt!2213346 (head!11641 s!2326)) (tail!10738 s!2326)))))

(declare-fun d!1730536 () Bool)

(assert (=> d!1730536 e!3362860))

(declare-fun c!946589 () Bool)

(assert (=> d!1730536 (= c!946589 ((_ is EmptyExpr!15217) lt!2213346))))

(assert (=> d!1730536 (= lt!2213400 e!3362862)))

(declare-fun c!946588 () Bool)

(assert (=> d!1730536 (= c!946588 (isEmpty!33827 s!2326))))

(assert (=> d!1730536 (validRegex!6953 lt!2213346)))

(assert (=> d!1730536 (= (matchR!7402 lt!2213346 s!2326) lt!2213400)))

(declare-fun b!5426775 () Bool)

(assert (=> b!5426775 (= e!3362860 (= lt!2213400 call!388387))))

(declare-fun b!5426776 () Bool)

(assert (=> b!5426776 (= e!3362861 e!3362859)))

(declare-fun res!2309476 () Bool)

(assert (=> b!5426776 (=> (not res!2309476) (not e!3362859))))

(assert (=> b!5426776 (= res!2309476 (not lt!2213400))))

(declare-fun b!5426777 () Bool)

(assert (=> b!5426777 (= e!3362858 (= (head!11641 s!2326) (c!946431 lt!2213346)))))

(declare-fun b!5426778 () Bool)

(assert (=> b!5426778 (= e!3362863 (not (= (head!11641 s!2326) (c!946431 lt!2213346))))))

(declare-fun b!5426779 () Bool)

(declare-fun res!2309473 () Bool)

(assert (=> b!5426779 (=> res!2309473 e!3362861)))

(assert (=> b!5426779 (= res!2309473 e!3362858)))

(declare-fun res!2309474 () Bool)

(assert (=> b!5426779 (=> (not res!2309474) (not e!3362858))))

(assert (=> b!5426779 (= res!2309474 lt!2213400)))

(declare-fun b!5426780 () Bool)

(declare-fun res!2309479 () Bool)

(assert (=> b!5426780 (=> (not res!2309479) (not e!3362858))))

(assert (=> b!5426780 (= res!2309479 (not call!388387))))

(assert (= (and d!1730536 c!946588) b!5426767))

(assert (= (and d!1730536 (not c!946588)) b!5426774))

(assert (= (and d!1730536 c!946589) b!5426775))

(assert (= (and d!1730536 (not c!946589)) b!5426770))

(assert (= (and b!5426770 c!946587) b!5426769))

(assert (= (and b!5426770 (not c!946587)) b!5426772))

(assert (= (and b!5426772 (not res!2309478)) b!5426779))

(assert (= (and b!5426779 res!2309474) b!5426780))

(assert (= (and b!5426780 res!2309479) b!5426773))

(assert (= (and b!5426773 res!2309477) b!5426777))

(assert (= (and b!5426779 (not res!2309473)) b!5426776))

(assert (= (and b!5426776 res!2309476) b!5426771))

(assert (= (and b!5426771 (not res!2309475)) b!5426768))

(assert (= (and b!5426768 (not res!2309480)) b!5426778))

(assert (= (or b!5426775 b!5426771 b!5426780) bm!388382))

(assert (=> d!1730536 m!6450416))

(declare-fun m!6450554 () Bool)

(assert (=> d!1730536 m!6450554))

(assert (=> b!5426773 m!6450496))

(assert (=> b!5426773 m!6450496))

(assert (=> b!5426773 m!6450498))

(declare-fun m!6450556 () Bool)

(assert (=> b!5426767 m!6450556))

(assert (=> b!5426774 m!6450502))

(assert (=> b!5426774 m!6450502))

(declare-fun m!6450558 () Bool)

(assert (=> b!5426774 m!6450558))

(assert (=> b!5426774 m!6450496))

(assert (=> b!5426774 m!6450558))

(assert (=> b!5426774 m!6450496))

(declare-fun m!6450560 () Bool)

(assert (=> b!5426774 m!6450560))

(assert (=> bm!388382 m!6450416))

(assert (=> b!5426778 m!6450502))

(assert (=> b!5426768 m!6450496))

(assert (=> b!5426768 m!6450496))

(assert (=> b!5426768 m!6450498))

(assert (=> b!5426777 m!6450502))

(assert (=> b!5426293 d!1730536))

(declare-fun bs!1253461 () Bool)

(declare-fun b!5426789 () Bool)

(assert (= bs!1253461 (and b!5426789 b!5426269)))

(declare-fun lambda!284632 () Int)

(assert (=> bs!1253461 (not (= lambda!284632 lambda!284590))))

(assert (=> bs!1253461 (not (= lambda!284632 lambda!284591))))

(declare-fun bs!1253462 () Bool)

(assert (= bs!1253462 (and b!5426789 b!5426653)))

(assert (=> bs!1253462 (= (and (= (reg!15546 lt!2213346) (reg!15546 r!7292)) (= lt!2213346 r!7292)) (= lambda!284632 lambda!284618))))

(declare-fun bs!1253463 () Bool)

(assert (= bs!1253463 (and b!5426789 b!5426649)))

(assert (=> bs!1253463 (not (= lambda!284632 lambda!284621))))

(assert (=> b!5426789 true))

(assert (=> b!5426789 true))

(declare-fun bs!1253464 () Bool)

(declare-fun b!5426785 () Bool)

(assert (= bs!1253464 (and b!5426785 b!5426649)))

(declare-fun lambda!284633 () Int)

(assert (=> bs!1253464 (= (and (= (regOne!30946 lt!2213346) (regOne!30946 r!7292)) (= (regTwo!30946 lt!2213346) (regTwo!30946 r!7292))) (= lambda!284633 lambda!284621))))

(declare-fun bs!1253465 () Bool)

(assert (= bs!1253465 (and b!5426785 b!5426653)))

(assert (=> bs!1253465 (not (= lambda!284633 lambda!284618))))

(declare-fun bs!1253466 () Bool)

(assert (= bs!1253466 (and b!5426785 b!5426269)))

(assert (=> bs!1253466 (= (and (= (regOne!30946 lt!2213346) (regOne!30946 r!7292)) (= (regTwo!30946 lt!2213346) (regTwo!30946 r!7292))) (= lambda!284633 lambda!284591))))

(assert (=> bs!1253466 (not (= lambda!284633 lambda!284590))))

(declare-fun bs!1253467 () Bool)

(assert (= bs!1253467 (and b!5426785 b!5426789)))

(assert (=> bs!1253467 (not (= lambda!284633 lambda!284632))))

(assert (=> b!5426785 true))

(assert (=> b!5426785 true))

(declare-fun bm!388383 () Bool)

(declare-fun call!388388 () Bool)

(assert (=> bm!388383 (= call!388388 (isEmpty!33827 s!2326))))

(declare-fun b!5426781 () Bool)

(declare-fun c!946590 () Bool)

(assert (=> b!5426781 (= c!946590 ((_ is ElementMatch!15217) lt!2213346))))

(declare-fun e!3362865 () Bool)

(declare-fun e!3362870 () Bool)

(assert (=> b!5426781 (= e!3362865 e!3362870)))

(declare-fun call!388389 () Bool)

(declare-fun bm!388384 () Bool)

(declare-fun c!946592 () Bool)

(assert (=> bm!388384 (= call!388389 (Exists!2398 (ite c!946592 lambda!284632 lambda!284633)))))

(declare-fun d!1730538 () Bool)

(declare-fun c!946593 () Bool)

(assert (=> d!1730538 (= c!946593 ((_ is EmptyExpr!15217) lt!2213346))))

(declare-fun e!3362869 () Bool)

(assert (=> d!1730538 (= (matchRSpec!2320 lt!2213346 s!2326) e!3362869)))

(declare-fun b!5426782 () Bool)

(assert (=> b!5426782 (= e!3362869 e!3362865)))

(declare-fun res!2309482 () Bool)

(assert (=> b!5426782 (= res!2309482 (not ((_ is EmptyLang!15217) lt!2213346)))))

(assert (=> b!5426782 (=> (not res!2309482) (not e!3362865))))

(declare-fun b!5426783 () Bool)

(assert (=> b!5426783 (= e!3362869 call!388388)))

(declare-fun b!5426784 () Bool)

(declare-fun res!2309483 () Bool)

(declare-fun e!3362864 () Bool)

(assert (=> b!5426784 (=> res!2309483 e!3362864)))

(assert (=> b!5426784 (= res!2309483 call!388388)))

(declare-fun e!3362868 () Bool)

(assert (=> b!5426784 (= e!3362868 e!3362864)))

(assert (=> b!5426785 (= e!3362868 call!388389)))

(declare-fun b!5426786 () Bool)

(declare-fun e!3362867 () Bool)

(declare-fun e!3362866 () Bool)

(assert (=> b!5426786 (= e!3362867 e!3362866)))

(declare-fun res!2309481 () Bool)

(assert (=> b!5426786 (= res!2309481 (matchRSpec!2320 (regOne!30947 lt!2213346) s!2326))))

(assert (=> b!5426786 (=> res!2309481 e!3362866)))

(declare-fun b!5426787 () Bool)

(assert (=> b!5426787 (= e!3362870 (= s!2326 (Cons!61826 (c!946431 lt!2213346) Nil!61826)))))

(declare-fun b!5426788 () Bool)

(declare-fun c!946591 () Bool)

(assert (=> b!5426788 (= c!946591 ((_ is Union!15217) lt!2213346))))

(assert (=> b!5426788 (= e!3362870 e!3362867)))

(assert (=> b!5426789 (= e!3362864 call!388389)))

(declare-fun b!5426790 () Bool)

(assert (=> b!5426790 (= e!3362866 (matchRSpec!2320 (regTwo!30947 lt!2213346) s!2326))))

(declare-fun b!5426791 () Bool)

(assert (=> b!5426791 (= e!3362867 e!3362868)))

(assert (=> b!5426791 (= c!946592 ((_ is Star!15217) lt!2213346))))

(assert (= (and d!1730538 c!946593) b!5426783))

(assert (= (and d!1730538 (not c!946593)) b!5426782))

(assert (= (and b!5426782 res!2309482) b!5426781))

(assert (= (and b!5426781 c!946590) b!5426787))

(assert (= (and b!5426781 (not c!946590)) b!5426788))

(assert (= (and b!5426788 c!946591) b!5426786))

(assert (= (and b!5426788 (not c!946591)) b!5426791))

(assert (= (and b!5426786 (not res!2309481)) b!5426790))

(assert (= (and b!5426791 c!946592) b!5426784))

(assert (= (and b!5426791 (not c!946592)) b!5426785))

(assert (= (and b!5426784 (not res!2309483)) b!5426789))

(assert (= (or b!5426789 b!5426785) bm!388384))

(assert (= (or b!5426783 b!5426784) bm!388383))

(assert (=> bm!388383 m!6450416))

(declare-fun m!6450562 () Bool)

(assert (=> bm!388384 m!6450562))

(declare-fun m!6450564 () Bool)

(assert (=> b!5426786 m!6450564))

(declare-fun m!6450566 () Bool)

(assert (=> b!5426790 m!6450566))

(assert (=> b!5426293 d!1730538))

(declare-fun d!1730540 () Bool)

(assert (=> d!1730540 (= (matchR!7402 lt!2213346 s!2326) (matchRSpec!2320 lt!2213346 s!2326))))

(declare-fun lt!2213410 () Unit!154390)

(assert (=> d!1730540 (= lt!2213410 (choose!41154 lt!2213346 s!2326))))

(assert (=> d!1730540 (validRegex!6953 lt!2213346)))

(assert (=> d!1730540 (= (mainMatchTheorem!2320 lt!2213346 s!2326) lt!2213410)))

(declare-fun bs!1253468 () Bool)

(assert (= bs!1253468 d!1730540))

(assert (=> bs!1253468 m!6450192))

(assert (=> bs!1253468 m!6450194))

(declare-fun m!6450568 () Bool)

(assert (=> bs!1253468 m!6450568))

(assert (=> bs!1253468 m!6450554))

(assert (=> b!5426293 d!1730540))

(declare-fun d!1730542 () Bool)

(assert (=> d!1730542 (= (flatMap!944 lt!2213327 lambda!284592) (choose!41152 lt!2213327 lambda!284592))))

(declare-fun bs!1253469 () Bool)

(assert (= bs!1253469 d!1730542))

(declare-fun m!6450578 () Bool)

(assert (=> bs!1253469 m!6450578))

(assert (=> b!5426294 d!1730542))

(declare-fun d!1730544 () Bool)

(assert (=> d!1730544 (= (flatMap!944 lt!2213338 lambda!284592) (dynLambda!24362 lambda!284592 lt!2213334))))

(declare-fun lt!2213411 () Unit!154390)

(assert (=> d!1730544 (= lt!2213411 (choose!41150 lt!2213338 lt!2213334 lambda!284592))))

(assert (=> d!1730544 (= lt!2213338 (store ((as const (Array Context!9202 Bool)) false) lt!2213334 true))))

(assert (=> d!1730544 (= (lemmaFlatMapOnSingletonSet!476 lt!2213338 lt!2213334 lambda!284592) lt!2213411)))

(declare-fun b_lambda!207055 () Bool)

(assert (=> (not b_lambda!207055) (not d!1730544)))

(declare-fun bs!1253470 () Bool)

(assert (= bs!1253470 d!1730544))

(assert (=> bs!1253470 m!6450090))

(declare-fun m!6450596 () Bool)

(assert (=> bs!1253470 m!6450596))

(declare-fun m!6450598 () Bool)

(assert (=> bs!1253470 m!6450598))

(assert (=> bs!1253470 m!6450092))

(assert (=> b!5426294 d!1730544))

(declare-fun d!1730550 () Bool)

(assert (=> d!1730550 (= (flatMap!944 lt!2213338 lambda!284592) (choose!41152 lt!2213338 lambda!284592))))

(declare-fun bs!1253472 () Bool)

(assert (= bs!1253472 d!1730550))

(declare-fun m!6450600 () Bool)

(assert (=> bs!1253472 m!6450600))

(assert (=> b!5426294 d!1730550))

(declare-fun b!5426819 () Bool)

(declare-fun e!3362886 () (InoxSet Context!9202))

(declare-fun call!388390 () (InoxSet Context!9202))

(assert (=> b!5426819 (= e!3362886 call!388390)))

(declare-fun b!5426820 () Bool)

(declare-fun e!3362887 () (InoxSet Context!9202))

(assert (=> b!5426820 (= e!3362887 e!3362886)))

(declare-fun c!946601 () Bool)

(assert (=> b!5426820 (= c!946601 ((_ is Cons!61827) (exprs!5101 lt!2213330)))))

(declare-fun d!1730552 () Bool)

(declare-fun c!946600 () Bool)

(declare-fun e!3362888 () Bool)

(assert (=> d!1730552 (= c!946600 e!3362888)))

(declare-fun res!2309499 () Bool)

(assert (=> d!1730552 (=> (not res!2309499) (not e!3362888))))

(assert (=> d!1730552 (= res!2309499 ((_ is Cons!61827) (exprs!5101 lt!2213330)))))

(assert (=> d!1730552 (= (derivationStepZipperUp!589 lt!2213330 (h!68274 s!2326)) e!3362887)))

(declare-fun b!5426821 () Bool)

(assert (=> b!5426821 (= e!3362887 ((_ map or) call!388390 (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 lt!2213330))) (h!68274 s!2326))))))

(declare-fun b!5426822 () Bool)

(assert (=> b!5426822 (= e!3362888 (nullable!5386 (h!68275 (exprs!5101 lt!2213330))))))

(declare-fun b!5426823 () Bool)

(assert (=> b!5426823 (= e!3362886 ((as const (Array Context!9202 Bool)) false))))

(declare-fun bm!388385 () Bool)

(assert (=> bm!388385 (= call!388390 (derivationStepZipperDown!665 (h!68275 (exprs!5101 lt!2213330)) (Context!9203 (t!375174 (exprs!5101 lt!2213330))) (h!68274 s!2326)))))

(assert (= (and d!1730552 res!2309499) b!5426822))

(assert (= (and d!1730552 c!946600) b!5426821))

(assert (= (and d!1730552 (not c!946600)) b!5426820))

(assert (= (and b!5426820 c!946601) b!5426819))

(assert (= (and b!5426820 (not c!946601)) b!5426823))

(assert (= (or b!5426821 b!5426819) bm!388385))

(declare-fun m!6450602 () Bool)

(assert (=> b!5426821 m!6450602))

(declare-fun m!6450604 () Bool)

(assert (=> b!5426822 m!6450604))

(declare-fun m!6450606 () Bool)

(assert (=> bm!388385 m!6450606))

(assert (=> b!5426294 d!1730552))

(declare-fun d!1730554 () Bool)

(assert (=> d!1730554 (= (flatMap!944 lt!2213327 lambda!284592) (dynLambda!24362 lambda!284592 lt!2213330))))

(declare-fun lt!2213412 () Unit!154390)

(assert (=> d!1730554 (= lt!2213412 (choose!41150 lt!2213327 lt!2213330 lambda!284592))))

(assert (=> d!1730554 (= lt!2213327 (store ((as const (Array Context!9202 Bool)) false) lt!2213330 true))))

(assert (=> d!1730554 (= (lemmaFlatMapOnSingletonSet!476 lt!2213327 lt!2213330 lambda!284592) lt!2213412)))

(declare-fun b_lambda!207057 () Bool)

(assert (=> (not b_lambda!207057) (not d!1730554)))

(declare-fun bs!1253473 () Bool)

(assert (= bs!1253473 d!1730554))

(assert (=> bs!1253473 m!6450088))

(declare-fun m!6450608 () Bool)

(assert (=> bs!1253473 m!6450608))

(declare-fun m!6450610 () Bool)

(assert (=> bs!1253473 m!6450610))

(assert (=> bs!1253473 m!6450096))

(assert (=> b!5426294 d!1730554))

(declare-fun b!5426824 () Bool)

(declare-fun e!3362889 () (InoxSet Context!9202))

(declare-fun call!388391 () (InoxSet Context!9202))

(assert (=> b!5426824 (= e!3362889 call!388391)))

(declare-fun b!5426825 () Bool)

(declare-fun e!3362890 () (InoxSet Context!9202))

(assert (=> b!5426825 (= e!3362890 e!3362889)))

(declare-fun c!946603 () Bool)

(assert (=> b!5426825 (= c!946603 ((_ is Cons!61827) (exprs!5101 lt!2213334)))))

(declare-fun d!1730556 () Bool)

(declare-fun c!946602 () Bool)

(declare-fun e!3362891 () Bool)

(assert (=> d!1730556 (= c!946602 e!3362891)))

(declare-fun res!2309500 () Bool)

(assert (=> d!1730556 (=> (not res!2309500) (not e!3362891))))

(assert (=> d!1730556 (= res!2309500 ((_ is Cons!61827) (exprs!5101 lt!2213334)))))

(assert (=> d!1730556 (= (derivationStepZipperUp!589 lt!2213334 (h!68274 s!2326)) e!3362890)))

(declare-fun b!5426826 () Bool)

(assert (=> b!5426826 (= e!3362890 ((_ map or) call!388391 (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 lt!2213334))) (h!68274 s!2326))))))

(declare-fun b!5426827 () Bool)

(assert (=> b!5426827 (= e!3362891 (nullable!5386 (h!68275 (exprs!5101 lt!2213334))))))

(declare-fun b!5426828 () Bool)

(assert (=> b!5426828 (= e!3362889 ((as const (Array Context!9202 Bool)) false))))

(declare-fun bm!388386 () Bool)

(assert (=> bm!388386 (= call!388391 (derivationStepZipperDown!665 (h!68275 (exprs!5101 lt!2213334)) (Context!9203 (t!375174 (exprs!5101 lt!2213334))) (h!68274 s!2326)))))

(assert (= (and d!1730556 res!2309500) b!5426827))

(assert (= (and d!1730556 c!946602) b!5426826))

(assert (= (and d!1730556 (not c!946602)) b!5426825))

(assert (= (and b!5426825 c!946603) b!5426824))

(assert (= (and b!5426825 (not c!946603)) b!5426828))

(assert (= (or b!5426826 b!5426824) bm!388386))

(declare-fun m!6450612 () Bool)

(assert (=> b!5426826 m!6450612))

(declare-fun m!6450614 () Bool)

(assert (=> b!5426827 m!6450614))

(declare-fun m!6450616 () Bool)

(assert (=> bm!388386 m!6450616))

(assert (=> b!5426294 d!1730556))

(declare-fun d!1730558 () Bool)

(declare-fun lt!2213417 () Regex!15217)

(assert (=> d!1730558 (validRegex!6953 lt!2213417)))

(assert (=> d!1730558 (= lt!2213417 (generalisedUnion!1146 (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828))))))

(assert (=> d!1730558 (= (unfocusZipper!959 (Cons!61828 lt!2213330 Nil!61828)) lt!2213417)))

(declare-fun bs!1253474 () Bool)

(assert (= bs!1253474 d!1730558))

(declare-fun m!6450618 () Bool)

(assert (=> bs!1253474 m!6450618))

(declare-fun m!6450620 () Bool)

(assert (=> bs!1253474 m!6450620))

(assert (=> bs!1253474 m!6450620))

(declare-fun m!6450622 () Bool)

(assert (=> bs!1253474 m!6450622))

(assert (=> b!5426294 d!1730558))

(declare-fun d!1730560 () Bool)

(declare-fun lt!2213418 () Regex!15217)

(assert (=> d!1730560 (validRegex!6953 lt!2213418)))

(assert (=> d!1730560 (= lt!2213418 (generalisedUnion!1146 (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828))))))

(assert (=> d!1730560 (= (unfocusZipper!959 (Cons!61828 lt!2213350 Nil!61828)) lt!2213418)))

(declare-fun bs!1253475 () Bool)

(assert (= bs!1253475 d!1730560))

(declare-fun m!6450624 () Bool)

(assert (=> bs!1253475 m!6450624))

(declare-fun m!6450626 () Bool)

(assert (=> bs!1253475 m!6450626))

(assert (=> bs!1253475 m!6450626))

(declare-fun m!6450628 () Bool)

(assert (=> bs!1253475 m!6450628))

(assert (=> b!5426273 d!1730560))

(declare-fun b!5426866 () Bool)

(declare-fun e!3362917 () Bool)

(declare-fun call!388400 () Bool)

(assert (=> b!5426866 (= e!3362917 call!388400)))

(declare-fun b!5426867 () Bool)

(declare-fun e!3362923 () Bool)

(declare-fun call!388402 () Bool)

(assert (=> b!5426867 (= e!3362923 call!388402)))

(declare-fun d!1730562 () Bool)

(declare-fun res!2309525 () Bool)

(declare-fun e!3362922 () Bool)

(assert (=> d!1730562 (=> res!2309525 e!3362922)))

(assert (=> d!1730562 (= res!2309525 ((_ is ElementMatch!15217) r!7292))))

(assert (=> d!1730562 (= (validRegex!6953 r!7292) e!3362922)))

(declare-fun b!5426868 () Bool)

(declare-fun e!3362919 () Bool)

(declare-fun e!3362920 () Bool)

(assert (=> b!5426868 (= e!3362919 e!3362920)))

(declare-fun c!946613 () Bool)

(assert (=> b!5426868 (= c!946613 ((_ is Union!15217) r!7292))))

(declare-fun b!5426869 () Bool)

(declare-fun e!3362918 () Bool)

(assert (=> b!5426869 (= e!3362918 call!388402)))

(declare-fun b!5426870 () Bool)

(assert (=> b!5426870 (= e!3362922 e!3362919)))

(declare-fun c!946612 () Bool)

(assert (=> b!5426870 (= c!946612 ((_ is Star!15217) r!7292))))

(declare-fun bm!388395 () Bool)

(assert (=> bm!388395 (= call!388400 (validRegex!6953 (ite c!946612 (reg!15546 r!7292) (ite c!946613 (regOne!30947 r!7292) (regOne!30946 r!7292)))))))

(declare-fun b!5426871 () Bool)

(declare-fun res!2309523 () Bool)

(assert (=> b!5426871 (=> (not res!2309523) (not e!3362918))))

(declare-fun call!388401 () Bool)

(assert (=> b!5426871 (= res!2309523 call!388401)))

(assert (=> b!5426871 (= e!3362920 e!3362918)))

(declare-fun b!5426872 () Bool)

(declare-fun e!3362921 () Bool)

(assert (=> b!5426872 (= e!3362921 e!3362923)))

(declare-fun res!2309526 () Bool)

(assert (=> b!5426872 (=> (not res!2309526) (not e!3362923))))

(assert (=> b!5426872 (= res!2309526 call!388401)))

(declare-fun bm!388396 () Bool)

(assert (=> bm!388396 (= call!388401 call!388400)))

(declare-fun b!5426873 () Bool)

(declare-fun res!2309524 () Bool)

(assert (=> b!5426873 (=> res!2309524 e!3362921)))

(assert (=> b!5426873 (= res!2309524 (not ((_ is Concat!24062) r!7292)))))

(assert (=> b!5426873 (= e!3362920 e!3362921)))

(declare-fun bm!388397 () Bool)

(assert (=> bm!388397 (= call!388402 (validRegex!6953 (ite c!946613 (regTwo!30947 r!7292) (regTwo!30946 r!7292))))))

(declare-fun b!5426874 () Bool)

(assert (=> b!5426874 (= e!3362919 e!3362917)))

(declare-fun res!2309522 () Bool)

(assert (=> b!5426874 (= res!2309522 (not (nullable!5386 (reg!15546 r!7292))))))

(assert (=> b!5426874 (=> (not res!2309522) (not e!3362917))))

(assert (= (and d!1730562 (not res!2309525)) b!5426870))

(assert (= (and b!5426870 c!946612) b!5426874))

(assert (= (and b!5426870 (not c!946612)) b!5426868))

(assert (= (and b!5426874 res!2309522) b!5426866))

(assert (= (and b!5426868 c!946613) b!5426871))

(assert (= (and b!5426868 (not c!946613)) b!5426873))

(assert (= (and b!5426871 res!2309523) b!5426869))

(assert (= (and b!5426873 (not res!2309524)) b!5426872))

(assert (= (and b!5426872 res!2309526) b!5426867))

(assert (= (or b!5426869 b!5426867) bm!388397))

(assert (= (or b!5426871 b!5426872) bm!388396))

(assert (= (or b!5426866 bm!388396) bm!388395))

(declare-fun m!6450644 () Bool)

(assert (=> bm!388395 m!6450644))

(declare-fun m!6450646 () Bool)

(assert (=> bm!388397 m!6450646))

(declare-fun m!6450648 () Bool)

(assert (=> b!5426874 m!6450648))

(assert (=> start!569554 d!1730562))

(declare-fun d!1730570 () Bool)

(assert (=> d!1730570 (= (isEmpty!33824 (t!375175 zl!343)) ((_ is Nil!61828) (t!375175 zl!343)))))

(assert (=> b!5426270 d!1730570))

(declare-fun b!5426889 () Bool)

(declare-fun e!3362936 () (InoxSet Context!9202))

(assert (=> b!5426889 (= e!3362936 (store ((as const (Array Context!9202 Bool)) false) lt!2213334 true))))

(declare-fun b!5426891 () Bool)

(declare-fun e!3362933 () Bool)

(assert (=> b!5426891 (= e!3362933 (nullable!5386 (regOne!30946 (reg!15546 (regOne!30946 r!7292)))))))

(declare-fun bm!388399 () Bool)

(declare-fun call!388409 () (InoxSet Context!9202))

(declare-fun call!388405 () (InoxSet Context!9202))

(assert (=> bm!388399 (= call!388409 call!388405)))

(declare-fun b!5426892 () Bool)

(declare-fun e!3362931 () (InoxSet Context!9202))

(declare-fun e!3362934 () (InoxSet Context!9202))

(assert (=> b!5426892 (= e!3362931 e!3362934)))

(declare-fun c!946618 () Bool)

(assert (=> b!5426892 (= c!946618 ((_ is Concat!24062) (reg!15546 (regOne!30946 r!7292))))))

(declare-fun b!5426893 () Bool)

(declare-fun call!388408 () (InoxSet Context!9202))

(assert (=> b!5426893 (= e!3362931 ((_ map or) call!388408 call!388405))))

(declare-fun b!5426894 () Bool)

(declare-fun c!946621 () Bool)

(assert (=> b!5426894 (= c!946621 e!3362933)))

(declare-fun res!2309535 () Bool)

(assert (=> b!5426894 (=> (not res!2309535) (not e!3362933))))

(assert (=> b!5426894 (= res!2309535 ((_ is Concat!24062) (reg!15546 (regOne!30946 r!7292))))))

(declare-fun e!3362935 () (InoxSet Context!9202))

(assert (=> b!5426894 (= e!3362935 e!3362931)))

(declare-fun b!5426895 () Bool)

(declare-fun call!388404 () (InoxSet Context!9202))

(assert (=> b!5426895 (= e!3362935 ((_ map or) call!388408 call!388404))))

(declare-fun bm!388400 () Bool)

(assert (=> bm!388400 (= call!388405 call!388404)))

(declare-fun call!388406 () List!61951)

(declare-fun bm!388401 () Bool)

(assert (=> bm!388401 (= call!388406 ($colon$colon!1512 (exprs!5101 lt!2213334) (ite (or c!946621 c!946618) (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (regOne!30946 r!7292)))))))

(declare-fun c!946617 () Bool)

(declare-fun bm!388402 () Bool)

(assert (=> bm!388402 (= call!388408 (derivationStepZipperDown!665 (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292)))) (ite c!946617 lt!2213334 (Context!9203 call!388406)) (h!68274 s!2326)))))

(declare-fun d!1730572 () Bool)

(declare-fun c!946619 () Bool)

(assert (=> d!1730572 (= c!946619 (and ((_ is ElementMatch!15217) (reg!15546 (regOne!30946 r!7292))) (= (c!946431 (reg!15546 (regOne!30946 r!7292))) (h!68274 s!2326))))))

(assert (=> d!1730572 (= (derivationStepZipperDown!665 (reg!15546 (regOne!30946 r!7292)) lt!2213334 (h!68274 s!2326)) e!3362936)))

(declare-fun b!5426890 () Bool)

(assert (=> b!5426890 (= e!3362936 e!3362935)))

(assert (=> b!5426890 (= c!946617 ((_ is Union!15217) (reg!15546 (regOne!30946 r!7292))))))

(declare-fun b!5426896 () Bool)

(assert (=> b!5426896 (= e!3362934 call!388409)))

(declare-fun b!5426897 () Bool)

(declare-fun e!3362932 () (InoxSet Context!9202))

(assert (=> b!5426897 (= e!3362932 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5426898 () Bool)

(assert (=> b!5426898 (= e!3362932 call!388409)))

(declare-fun bm!388403 () Bool)

(declare-fun call!388407 () List!61951)

(assert (=> bm!388403 (= call!388404 (derivationStepZipperDown!665 (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292)))))) (ite (or c!946617 c!946621) lt!2213334 (Context!9203 call!388407)) (h!68274 s!2326)))))

(declare-fun bm!388404 () Bool)

(assert (=> bm!388404 (= call!388407 call!388406)))

(declare-fun b!5426899 () Bool)

(declare-fun c!946620 () Bool)

(assert (=> b!5426899 (= c!946620 ((_ is Star!15217) (reg!15546 (regOne!30946 r!7292))))))

(assert (=> b!5426899 (= e!3362934 e!3362932)))

(assert (= (and d!1730572 c!946619) b!5426889))

(assert (= (and d!1730572 (not c!946619)) b!5426890))

(assert (= (and b!5426890 c!946617) b!5426895))

(assert (= (and b!5426890 (not c!946617)) b!5426894))

(assert (= (and b!5426894 res!2309535) b!5426891))

(assert (= (and b!5426894 c!946621) b!5426893))

(assert (= (and b!5426894 (not c!946621)) b!5426892))

(assert (= (and b!5426892 c!946618) b!5426896))

(assert (= (and b!5426892 (not c!946618)) b!5426899))

(assert (= (and b!5426899 c!946620) b!5426898))

(assert (= (and b!5426899 (not c!946620)) b!5426897))

(assert (= (or b!5426896 b!5426898) bm!388404))

(assert (= (or b!5426896 b!5426898) bm!388399))

(assert (= (or b!5426893 bm!388404) bm!388401))

(assert (= (or b!5426893 bm!388399) bm!388400))

(assert (= (or b!5426895 bm!388400) bm!388403))

(assert (= (or b!5426895 b!5426893) bm!388402))

(declare-fun m!6450660 () Bool)

(assert (=> bm!388401 m!6450660))

(assert (=> b!5426889 m!6450092))

(declare-fun m!6450662 () Bool)

(assert (=> bm!388403 m!6450662))

(declare-fun m!6450664 () Bool)

(assert (=> bm!388402 m!6450664))

(declare-fun m!6450668 () Bool)

(assert (=> b!5426891 m!6450668))

(assert (=> b!5426291 d!1730572))

(declare-fun bs!1253495 () Bool)

(declare-fun d!1730580 () Bool)

(assert (= bs!1253495 (and d!1730580 b!5426260)))

(declare-fun lambda!284642 () Int)

(assert (=> bs!1253495 (= lambda!284642 lambda!284593)))

(declare-fun bs!1253496 () Bool)

(assert (= bs!1253496 (and d!1730580 d!1730454)))

(assert (=> bs!1253496 (= lambda!284642 lambda!284608)))

(assert (=> d!1730580 (= (inv!81289 setElem!35381) (forall!14555 (exprs!5101 setElem!35381) lambda!284642))))

(declare-fun bs!1253498 () Bool)

(assert (= bs!1253498 d!1730580))

(declare-fun m!6450678 () Bool)

(assert (=> bs!1253498 m!6450678))

(assert (=> setNonEmpty!35381 d!1730580))

(assert (=> b!5426292 d!1730448))

(declare-fun bs!1253508 () Bool)

(declare-fun d!1730586 () Bool)

(assert (= bs!1253508 (and d!1730586 b!5426260)))

(declare-fun lambda!284646 () Int)

(assert (=> bs!1253508 (= lambda!284646 lambda!284593)))

(declare-fun bs!1253509 () Bool)

(assert (= bs!1253509 (and d!1730586 d!1730454)))

(assert (=> bs!1253509 (= lambda!284646 lambda!284608)))

(declare-fun bs!1253510 () Bool)

(assert (= bs!1253510 (and d!1730586 d!1730580)))

(assert (=> bs!1253510 (= lambda!284646 lambda!284642)))

(declare-fun e!3362975 () Bool)

(assert (=> d!1730586 e!3362975))

(declare-fun res!2309542 () Bool)

(assert (=> d!1730586 (=> (not res!2309542) (not e!3362975))))

(declare-fun lt!2213425 () Regex!15217)

(assert (=> d!1730586 (= res!2309542 (validRegex!6953 lt!2213425))))

(declare-fun e!3362978 () Regex!15217)

(assert (=> d!1730586 (= lt!2213425 e!3362978)))

(declare-fun c!946634 () Bool)

(declare-fun e!3362977 () Bool)

(assert (=> d!1730586 (= c!946634 e!3362977)))

(declare-fun res!2309541 () Bool)

(assert (=> d!1730586 (=> (not res!2309541) (not e!3362977))))

(assert (=> d!1730586 (= res!2309541 ((_ is Cons!61827) (exprs!5101 (h!68276 zl!343))))))

(assert (=> d!1730586 (forall!14555 (exprs!5101 (h!68276 zl!343)) lambda!284646)))

(assert (=> d!1730586 (= (generalisedConcat!886 (exprs!5101 (h!68276 zl!343))) lt!2213425)))

(declare-fun b!5426979 () Bool)

(declare-fun e!3362976 () Bool)

(declare-fun e!3362979 () Bool)

(assert (=> b!5426979 (= e!3362976 e!3362979)))

(declare-fun c!946635 () Bool)

(declare-fun tail!10739 (List!61951) List!61951)

(assert (=> b!5426979 (= c!946635 (isEmpty!33825 (tail!10739 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5426980 () Bool)

(declare-fun e!3362980 () Regex!15217)

(assert (=> b!5426980 (= e!3362980 EmptyExpr!15217)))

(declare-fun b!5426981 () Bool)

(assert (=> b!5426981 (= e!3362977 (isEmpty!33825 (t!375174 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5426982 () Bool)

(declare-fun head!11642 (List!61951) Regex!15217)

(assert (=> b!5426982 (= e!3362979 (= lt!2213425 (head!11642 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5426983 () Bool)

(assert (=> b!5426983 (= e!3362975 e!3362976)))

(declare-fun c!946633 () Bool)

(assert (=> b!5426983 (= c!946633 (isEmpty!33825 (exprs!5101 (h!68276 zl!343))))))

(declare-fun b!5426984 () Bool)

(declare-fun isEmptyExpr!994 (Regex!15217) Bool)

(assert (=> b!5426984 (= e!3362976 (isEmptyExpr!994 lt!2213425))))

(declare-fun b!5426985 () Bool)

(assert (=> b!5426985 (= e!3362980 (Concat!24062 (h!68275 (exprs!5101 (h!68276 zl!343))) (generalisedConcat!886 (t!375174 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun b!5426986 () Bool)

(assert (=> b!5426986 (= e!3362978 (h!68275 (exprs!5101 (h!68276 zl!343))))))

(declare-fun b!5426987 () Bool)

(declare-fun isConcat!517 (Regex!15217) Bool)

(assert (=> b!5426987 (= e!3362979 (isConcat!517 lt!2213425))))

(declare-fun b!5426988 () Bool)

(assert (=> b!5426988 (= e!3362978 e!3362980)))

(declare-fun c!946632 () Bool)

(assert (=> b!5426988 (= c!946632 ((_ is Cons!61827) (exprs!5101 (h!68276 zl!343))))))

(assert (= (and d!1730586 res!2309541) b!5426981))

(assert (= (and d!1730586 c!946634) b!5426986))

(assert (= (and d!1730586 (not c!946634)) b!5426988))

(assert (= (and b!5426988 c!946632) b!5426985))

(assert (= (and b!5426988 (not c!946632)) b!5426980))

(assert (= (and d!1730586 res!2309542) b!5426983))

(assert (= (and b!5426983 c!946633) b!5426984))

(assert (= (and b!5426983 (not c!946633)) b!5426979))

(assert (= (and b!5426979 c!946635) b!5426982))

(assert (= (and b!5426979 (not c!946635)) b!5426987))

(declare-fun m!6450688 () Bool)

(assert (=> b!5426987 m!6450688))

(declare-fun m!6450690 () Bool)

(assert (=> b!5426982 m!6450690))

(declare-fun m!6450692 () Bool)

(assert (=> b!5426983 m!6450692))

(declare-fun m!6450694 () Bool)

(assert (=> d!1730586 m!6450694))

(declare-fun m!6450696 () Bool)

(assert (=> d!1730586 m!6450696))

(declare-fun m!6450698 () Bool)

(assert (=> b!5426979 m!6450698))

(assert (=> b!5426979 m!6450698))

(declare-fun m!6450700 () Bool)

(assert (=> b!5426979 m!6450700))

(declare-fun m!6450702 () Bool)

(assert (=> b!5426985 m!6450702))

(assert (=> b!5426981 m!6450138))

(declare-fun m!6450704 () Bool)

(assert (=> b!5426984 m!6450704))

(assert (=> b!5426271 d!1730586))

(declare-fun bs!1253511 () Bool)

(declare-fun d!1730600 () Bool)

(assert (= bs!1253511 (and d!1730600 b!5426260)))

(declare-fun lambda!284649 () Int)

(assert (=> bs!1253511 (= lambda!284649 lambda!284593)))

(declare-fun bs!1253512 () Bool)

(assert (= bs!1253512 (and d!1730600 d!1730454)))

(assert (=> bs!1253512 (= lambda!284649 lambda!284608)))

(declare-fun bs!1253513 () Bool)

(assert (= bs!1253513 (and d!1730600 d!1730580)))

(assert (=> bs!1253513 (= lambda!284649 lambda!284642)))

(declare-fun bs!1253514 () Bool)

(assert (= bs!1253514 (and d!1730600 d!1730586)))

(assert (=> bs!1253514 (= lambda!284649 lambda!284646)))

(declare-fun b!5427009 () Bool)

(declare-fun e!3362998 () Regex!15217)

(declare-fun e!3362993 () Regex!15217)

(assert (=> b!5427009 (= e!3362998 e!3362993)))

(declare-fun c!946644 () Bool)

(assert (=> b!5427009 (= c!946644 ((_ is Cons!61827) (unfocusZipperList!659 zl!343)))))

(declare-fun b!5427010 () Bool)

(declare-fun e!3362997 () Bool)

(declare-fun lt!2213428 () Regex!15217)

(declare-fun isEmptyLang!1003 (Regex!15217) Bool)

(assert (=> b!5427010 (= e!3362997 (isEmptyLang!1003 lt!2213428))))

(declare-fun b!5427011 () Bool)

(assert (=> b!5427011 (= e!3362998 (h!68275 (unfocusZipperList!659 zl!343)))))

(declare-fun b!5427012 () Bool)

(declare-fun e!3362996 () Bool)

(assert (=> b!5427012 (= e!3362996 (= lt!2213428 (head!11642 (unfocusZipperList!659 zl!343))))))

(declare-fun b!5427013 () Bool)

(declare-fun e!3362994 () Bool)

(assert (=> b!5427013 (= e!3362994 e!3362997)))

(declare-fun c!946645 () Bool)

(assert (=> b!5427013 (= c!946645 (isEmpty!33825 (unfocusZipperList!659 zl!343)))))

(declare-fun b!5427014 () Bool)

(assert (=> b!5427014 (= e!3362993 (Union!15217 (h!68275 (unfocusZipperList!659 zl!343)) (generalisedUnion!1146 (t!375174 (unfocusZipperList!659 zl!343)))))))

(assert (=> d!1730600 e!3362994))

(declare-fun res!2309548 () Bool)

(assert (=> d!1730600 (=> (not res!2309548) (not e!3362994))))

(assert (=> d!1730600 (= res!2309548 (validRegex!6953 lt!2213428))))

(assert (=> d!1730600 (= lt!2213428 e!3362998)))

(declare-fun c!946646 () Bool)

(declare-fun e!3362995 () Bool)

(assert (=> d!1730600 (= c!946646 e!3362995)))

(declare-fun res!2309547 () Bool)

(assert (=> d!1730600 (=> (not res!2309547) (not e!3362995))))

(assert (=> d!1730600 (= res!2309547 ((_ is Cons!61827) (unfocusZipperList!659 zl!343)))))

(assert (=> d!1730600 (forall!14555 (unfocusZipperList!659 zl!343) lambda!284649)))

(assert (=> d!1730600 (= (generalisedUnion!1146 (unfocusZipperList!659 zl!343)) lt!2213428)))

(declare-fun b!5427015 () Bool)

(declare-fun isUnion!435 (Regex!15217) Bool)

(assert (=> b!5427015 (= e!3362996 (isUnion!435 lt!2213428))))

(declare-fun b!5427016 () Bool)

(assert (=> b!5427016 (= e!3362993 EmptyLang!15217)))

(declare-fun b!5427017 () Bool)

(assert (=> b!5427017 (= e!3362995 (isEmpty!33825 (t!375174 (unfocusZipperList!659 zl!343))))))

(declare-fun b!5427018 () Bool)

(assert (=> b!5427018 (= e!3362997 e!3362996)))

(declare-fun c!946647 () Bool)

(assert (=> b!5427018 (= c!946647 (isEmpty!33825 (tail!10739 (unfocusZipperList!659 zl!343))))))

(assert (= (and d!1730600 res!2309547) b!5427017))

(assert (= (and d!1730600 c!946646) b!5427011))

(assert (= (and d!1730600 (not c!946646)) b!5427009))

(assert (= (and b!5427009 c!946644) b!5427014))

(assert (= (and b!5427009 (not c!946644)) b!5427016))

(assert (= (and d!1730600 res!2309548) b!5427013))

(assert (= (and b!5427013 c!946645) b!5427010))

(assert (= (and b!5427013 (not c!946645)) b!5427018))

(assert (= (and b!5427018 c!946647) b!5427012))

(assert (= (and b!5427018 (not c!946647)) b!5427015))

(declare-fun m!6450706 () Bool)

(assert (=> d!1730600 m!6450706))

(assert (=> d!1730600 m!6450186))

(declare-fun m!6450708 () Bool)

(assert (=> d!1730600 m!6450708))

(declare-fun m!6450710 () Bool)

(assert (=> b!5427017 m!6450710))

(declare-fun m!6450712 () Bool)

(assert (=> b!5427014 m!6450712))

(assert (=> b!5427013 m!6450186))

(declare-fun m!6450714 () Bool)

(assert (=> b!5427013 m!6450714))

(assert (=> b!5427012 m!6450186))

(declare-fun m!6450716 () Bool)

(assert (=> b!5427012 m!6450716))

(declare-fun m!6450718 () Bool)

(assert (=> b!5427015 m!6450718))

(declare-fun m!6450720 () Bool)

(assert (=> b!5427010 m!6450720))

(assert (=> b!5427018 m!6450186))

(declare-fun m!6450722 () Bool)

(assert (=> b!5427018 m!6450722))

(assert (=> b!5427018 m!6450722))

(declare-fun m!6450724 () Bool)

(assert (=> b!5427018 m!6450724))

(assert (=> b!5426267 d!1730600))

(declare-fun bs!1253515 () Bool)

(declare-fun d!1730602 () Bool)

(assert (= bs!1253515 (and d!1730602 d!1730586)))

(declare-fun lambda!284652 () Int)

(assert (=> bs!1253515 (= lambda!284652 lambda!284646)))

(declare-fun bs!1253516 () Bool)

(assert (= bs!1253516 (and d!1730602 b!5426260)))

(assert (=> bs!1253516 (= lambda!284652 lambda!284593)))

(declare-fun bs!1253517 () Bool)

(assert (= bs!1253517 (and d!1730602 d!1730600)))

(assert (=> bs!1253517 (= lambda!284652 lambda!284649)))

(declare-fun bs!1253518 () Bool)

(assert (= bs!1253518 (and d!1730602 d!1730580)))

(assert (=> bs!1253518 (= lambda!284652 lambda!284642)))

(declare-fun bs!1253519 () Bool)

(assert (= bs!1253519 (and d!1730602 d!1730454)))

(assert (=> bs!1253519 (= lambda!284652 lambda!284608)))

(declare-fun lt!2213431 () List!61951)

(assert (=> d!1730602 (forall!14555 lt!2213431 lambda!284652)))

(declare-fun e!3363001 () List!61951)

(assert (=> d!1730602 (= lt!2213431 e!3363001)))

(declare-fun c!946650 () Bool)

(assert (=> d!1730602 (= c!946650 ((_ is Cons!61828) zl!343))))

(assert (=> d!1730602 (= (unfocusZipperList!659 zl!343) lt!2213431)))

(declare-fun b!5427023 () Bool)

(assert (=> b!5427023 (= e!3363001 (Cons!61827 (generalisedConcat!886 (exprs!5101 (h!68276 zl!343))) (unfocusZipperList!659 (t!375175 zl!343))))))

(declare-fun b!5427024 () Bool)

(assert (=> b!5427024 (= e!3363001 Nil!61827)))

(assert (= (and d!1730602 c!946650) b!5427023))

(assert (= (and d!1730602 (not c!946650)) b!5427024))

(declare-fun m!6450726 () Bool)

(assert (=> d!1730602 m!6450726))

(assert (=> b!5427023 m!6450116))

(declare-fun m!6450728 () Bool)

(assert (=> b!5427023 m!6450728))

(assert (=> b!5426267 d!1730602))

(declare-fun d!1730604 () Bool)

(declare-fun lt!2213432 () Regex!15217)

(assert (=> d!1730604 (validRegex!6953 lt!2213432)))

(assert (=> d!1730604 (= lt!2213432 (generalisedUnion!1146 (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828))))))

(assert (=> d!1730604 (= (unfocusZipper!959 (Cons!61828 lt!2213334 Nil!61828)) lt!2213432)))

(declare-fun bs!1253520 () Bool)

(assert (= bs!1253520 d!1730604))

(declare-fun m!6450730 () Bool)

(assert (=> bs!1253520 m!6450730))

(declare-fun m!6450732 () Bool)

(assert (=> bs!1253520 m!6450732))

(assert (=> bs!1253520 m!6450732))

(declare-fun m!6450734 () Bool)

(assert (=> bs!1253520 m!6450734))

(assert (=> b!5426268 d!1730604))

(declare-fun d!1730606 () Bool)

(declare-fun choose!41158 (Int) Bool)

(assert (=> d!1730606 (= (Exists!2398 lambda!284590) (choose!41158 lambda!284590))))

(declare-fun bs!1253521 () Bool)

(assert (= bs!1253521 d!1730606))

(declare-fun m!6450736 () Bool)

(assert (=> bs!1253521 m!6450736))

(assert (=> b!5426269 d!1730606))

(declare-fun bs!1253522 () Bool)

(declare-fun d!1730608 () Bool)

(assert (= bs!1253522 (and d!1730608 b!5426785)))

(declare-fun lambda!284655 () Int)

(assert (=> bs!1253522 (not (= lambda!284655 lambda!284633))))

(declare-fun bs!1253523 () Bool)

(assert (= bs!1253523 (and d!1730608 b!5426649)))

(assert (=> bs!1253523 (not (= lambda!284655 lambda!284621))))

(declare-fun bs!1253524 () Bool)

(assert (= bs!1253524 (and d!1730608 b!5426653)))

(assert (=> bs!1253524 (not (= lambda!284655 lambda!284618))))

(declare-fun bs!1253525 () Bool)

(assert (= bs!1253525 (and d!1730608 b!5426269)))

(assert (=> bs!1253525 (not (= lambda!284655 lambda!284591))))

(assert (=> bs!1253525 (= lambda!284655 lambda!284590)))

(declare-fun bs!1253526 () Bool)

(assert (= bs!1253526 (and d!1730608 b!5426789)))

(assert (=> bs!1253526 (not (= lambda!284655 lambda!284632))))

(assert (=> d!1730608 true))

(assert (=> d!1730608 true))

(assert (=> d!1730608 true))

(assert (=> d!1730608 (= (isDefined!12031 (findConcatSeparation!1742 (regOne!30946 r!7292) (regTwo!30946 r!7292) Nil!61826 s!2326 s!2326)) (Exists!2398 lambda!284655))))

(declare-fun lt!2213435 () Unit!154390)

(declare-fun choose!41159 (Regex!15217 Regex!15217 List!61950) Unit!154390)

(assert (=> d!1730608 (= lt!2213435 (choose!41159 (regOne!30946 r!7292) (regTwo!30946 r!7292) s!2326))))

(assert (=> d!1730608 (validRegex!6953 (regOne!30946 r!7292))))

(assert (=> d!1730608 (= (lemmaFindConcatSeparationEquivalentToExists!1506 (regOne!30946 r!7292) (regTwo!30946 r!7292) s!2326) lt!2213435)))

(declare-fun bs!1253527 () Bool)

(assert (= bs!1253527 d!1730608))

(assert (=> bs!1253527 m!6450168))

(declare-fun m!6450738 () Bool)

(assert (=> bs!1253527 m!6450738))

(assert (=> bs!1253527 m!6450168))

(assert (=> bs!1253527 m!6450170))

(declare-fun m!6450740 () Bool)

(assert (=> bs!1253527 m!6450740))

(declare-fun m!6450742 () Bool)

(assert (=> bs!1253527 m!6450742))

(assert (=> b!5426269 d!1730608))

(declare-fun b!5427047 () Bool)

(declare-fun res!2309565 () Bool)

(declare-fun e!3363014 () Bool)

(assert (=> b!5427047 (=> (not res!2309565) (not e!3363014))))

(declare-fun lt!2213443 () Option!15328)

(declare-fun get!21326 (Option!15328) tuple2!64832)

(assert (=> b!5427047 (= res!2309565 (matchR!7402 (regOne!30946 r!7292) (_1!35719 (get!21326 lt!2213443))))))

(declare-fun b!5427048 () Bool)

(declare-fun ++!13600 (List!61950 List!61950) List!61950)

(assert (=> b!5427048 (= e!3363014 (= (++!13600 (_1!35719 (get!21326 lt!2213443)) (_2!35719 (get!21326 lt!2213443))) s!2326))))

(declare-fun d!1730610 () Bool)

(declare-fun e!3363016 () Bool)

(assert (=> d!1730610 e!3363016))

(declare-fun res!2309566 () Bool)

(assert (=> d!1730610 (=> res!2309566 e!3363016)))

(assert (=> d!1730610 (= res!2309566 e!3363014)))

(declare-fun res!2309564 () Bool)

(assert (=> d!1730610 (=> (not res!2309564) (not e!3363014))))

(assert (=> d!1730610 (= res!2309564 (isDefined!12031 lt!2213443))))

(declare-fun e!3363017 () Option!15328)

(assert (=> d!1730610 (= lt!2213443 e!3363017)))

(declare-fun c!946656 () Bool)

(declare-fun e!3363018 () Bool)

(assert (=> d!1730610 (= c!946656 e!3363018)))

(declare-fun res!2309567 () Bool)

(assert (=> d!1730610 (=> (not res!2309567) (not e!3363018))))

(assert (=> d!1730610 (= res!2309567 (matchR!7402 (regOne!30946 r!7292) Nil!61826))))

(assert (=> d!1730610 (validRegex!6953 (regOne!30946 r!7292))))

(assert (=> d!1730610 (= (findConcatSeparation!1742 (regOne!30946 r!7292) (regTwo!30946 r!7292) Nil!61826 s!2326 s!2326) lt!2213443)))

(declare-fun b!5427049 () Bool)

(assert (=> b!5427049 (= e!3363017 (Some!15327 (tuple2!64833 Nil!61826 s!2326)))))

(declare-fun b!5427050 () Bool)

(assert (=> b!5427050 (= e!3363016 (not (isDefined!12031 lt!2213443)))))

(declare-fun b!5427051 () Bool)

(declare-fun res!2309563 () Bool)

(assert (=> b!5427051 (=> (not res!2309563) (not e!3363014))))

(assert (=> b!5427051 (= res!2309563 (matchR!7402 (regTwo!30946 r!7292) (_2!35719 (get!21326 lt!2213443))))))

(declare-fun b!5427052 () Bool)

(declare-fun e!3363015 () Option!15328)

(assert (=> b!5427052 (= e!3363015 None!15327)))

(declare-fun b!5427053 () Bool)

(declare-fun lt!2213444 () Unit!154390)

(declare-fun lt!2213442 () Unit!154390)

(assert (=> b!5427053 (= lt!2213444 lt!2213442)))

(assert (=> b!5427053 (= (++!13600 (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826)) (t!375173 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1857 (List!61950 C!30704 List!61950 List!61950) Unit!154390)

(assert (=> b!5427053 (= lt!2213442 (lemmaMoveElementToOtherListKeepsConcatEq!1857 Nil!61826 (h!68274 s!2326) (t!375173 s!2326) s!2326))))

(assert (=> b!5427053 (= e!3363015 (findConcatSeparation!1742 (regOne!30946 r!7292) (regTwo!30946 r!7292) (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826)) (t!375173 s!2326) s!2326))))

(declare-fun b!5427054 () Bool)

(assert (=> b!5427054 (= e!3363018 (matchR!7402 (regTwo!30946 r!7292) s!2326))))

(declare-fun b!5427055 () Bool)

(assert (=> b!5427055 (= e!3363017 e!3363015)))

(declare-fun c!946655 () Bool)

(assert (=> b!5427055 (= c!946655 ((_ is Nil!61826) s!2326))))

(assert (= (and d!1730610 res!2309567) b!5427054))

(assert (= (and d!1730610 c!946656) b!5427049))

(assert (= (and d!1730610 (not c!946656)) b!5427055))

(assert (= (and b!5427055 c!946655) b!5427052))

(assert (= (and b!5427055 (not c!946655)) b!5427053))

(assert (= (and d!1730610 res!2309564) b!5427047))

(assert (= (and b!5427047 res!2309565) b!5427051))

(assert (= (and b!5427051 res!2309563) b!5427048))

(assert (= (and d!1730610 (not res!2309566)) b!5427050))

(declare-fun m!6450744 () Bool)

(assert (=> b!5427050 m!6450744))

(declare-fun m!6450746 () Bool)

(assert (=> b!5427051 m!6450746))

(declare-fun m!6450748 () Bool)

(assert (=> b!5427051 m!6450748))

(declare-fun m!6450750 () Bool)

(assert (=> b!5427054 m!6450750))

(assert (=> d!1730610 m!6450744))

(declare-fun m!6450752 () Bool)

(assert (=> d!1730610 m!6450752))

(assert (=> d!1730610 m!6450740))

(declare-fun m!6450754 () Bool)

(assert (=> b!5427053 m!6450754))

(assert (=> b!5427053 m!6450754))

(declare-fun m!6450756 () Bool)

(assert (=> b!5427053 m!6450756))

(declare-fun m!6450758 () Bool)

(assert (=> b!5427053 m!6450758))

(assert (=> b!5427053 m!6450754))

(declare-fun m!6450760 () Bool)

(assert (=> b!5427053 m!6450760))

(assert (=> b!5427047 m!6450746))

(declare-fun m!6450762 () Bool)

(assert (=> b!5427047 m!6450762))

(assert (=> b!5427048 m!6450746))

(declare-fun m!6450764 () Bool)

(assert (=> b!5427048 m!6450764))

(assert (=> b!5426269 d!1730610))

(declare-fun d!1730612 () Bool)

(assert (=> d!1730612 (= (Exists!2398 lambda!284591) (choose!41158 lambda!284591))))

(declare-fun bs!1253528 () Bool)

(assert (= bs!1253528 d!1730612))

(declare-fun m!6450766 () Bool)

(assert (=> bs!1253528 m!6450766))

(assert (=> b!5426269 d!1730612))

(declare-fun bs!1253529 () Bool)

(declare-fun d!1730614 () Bool)

(assert (= bs!1253529 (and d!1730614 d!1730608)))

(declare-fun lambda!284660 () Int)

(assert (=> bs!1253529 (= lambda!284660 lambda!284655)))

(declare-fun bs!1253530 () Bool)

(assert (= bs!1253530 (and d!1730614 b!5426785)))

(assert (=> bs!1253530 (not (= lambda!284660 lambda!284633))))

(declare-fun bs!1253531 () Bool)

(assert (= bs!1253531 (and d!1730614 b!5426649)))

(assert (=> bs!1253531 (not (= lambda!284660 lambda!284621))))

(declare-fun bs!1253532 () Bool)

(assert (= bs!1253532 (and d!1730614 b!5426653)))

(assert (=> bs!1253532 (not (= lambda!284660 lambda!284618))))

(declare-fun bs!1253533 () Bool)

(assert (= bs!1253533 (and d!1730614 b!5426269)))

(assert (=> bs!1253533 (not (= lambda!284660 lambda!284591))))

(assert (=> bs!1253533 (= lambda!284660 lambda!284590)))

(declare-fun bs!1253534 () Bool)

(assert (= bs!1253534 (and d!1730614 b!5426789)))

(assert (=> bs!1253534 (not (= lambda!284660 lambda!284632))))

(assert (=> d!1730614 true))

(assert (=> d!1730614 true))

(assert (=> d!1730614 true))

(declare-fun lambda!284661 () Int)

(assert (=> bs!1253529 (not (= lambda!284661 lambda!284655))))

(assert (=> bs!1253530 (= (and (= (regOne!30946 r!7292) (regOne!30946 lt!2213346)) (= (regTwo!30946 r!7292) (regTwo!30946 lt!2213346))) (= lambda!284661 lambda!284633))))

(assert (=> bs!1253532 (not (= lambda!284661 lambda!284618))))

(assert (=> bs!1253533 (= lambda!284661 lambda!284591)))

(assert (=> bs!1253533 (not (= lambda!284661 lambda!284590))))

(assert (=> bs!1253534 (not (= lambda!284661 lambda!284632))))

(declare-fun bs!1253535 () Bool)

(assert (= bs!1253535 d!1730614))

(assert (=> bs!1253535 (not (= lambda!284661 lambda!284660))))

(assert (=> bs!1253531 (= lambda!284661 lambda!284621)))

(assert (=> d!1730614 true))

(assert (=> d!1730614 true))

(assert (=> d!1730614 true))

(assert (=> d!1730614 (= (Exists!2398 lambda!284660) (Exists!2398 lambda!284661))))

(declare-fun lt!2213447 () Unit!154390)

(declare-fun choose!41160 (Regex!15217 Regex!15217 List!61950) Unit!154390)

(assert (=> d!1730614 (= lt!2213447 (choose!41160 (regOne!30946 r!7292) (regTwo!30946 r!7292) s!2326))))

(assert (=> d!1730614 (validRegex!6953 (regOne!30946 r!7292))))

(assert (=> d!1730614 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1052 (regOne!30946 r!7292) (regTwo!30946 r!7292) s!2326) lt!2213447)))

(declare-fun m!6450768 () Bool)

(assert (=> bs!1253535 m!6450768))

(declare-fun m!6450770 () Bool)

(assert (=> bs!1253535 m!6450770))

(declare-fun m!6450772 () Bool)

(assert (=> bs!1253535 m!6450772))

(assert (=> bs!1253535 m!6450740))

(assert (=> b!5426269 d!1730614))

(declare-fun d!1730616 () Bool)

(declare-fun isEmpty!33829 (Option!15328) Bool)

(assert (=> d!1730616 (= (isDefined!12031 (findConcatSeparation!1742 (regOne!30946 r!7292) (regTwo!30946 r!7292) Nil!61826 s!2326 s!2326)) (not (isEmpty!33829 (findConcatSeparation!1742 (regOne!30946 r!7292) (regTwo!30946 r!7292) Nil!61826 s!2326 s!2326))))))

(declare-fun bs!1253536 () Bool)

(assert (= bs!1253536 d!1730616))

(assert (=> bs!1253536 m!6450168))

(declare-fun m!6450774 () Bool)

(assert (=> bs!1253536 m!6450774))

(assert (=> b!5426269 d!1730616))

(declare-fun d!1730618 () Bool)

(declare-fun e!3363025 () Bool)

(assert (=> d!1730618 e!3363025))

(declare-fun res!2309578 () Bool)

(assert (=> d!1730618 (=> (not res!2309578) (not e!3363025))))

(declare-fun lt!2213450 () List!61952)

(declare-fun noDuplicate!1412 (List!61952) Bool)

(assert (=> d!1730618 (= res!2309578 (noDuplicate!1412 lt!2213450))))

(declare-fun choose!41161 ((InoxSet Context!9202)) List!61952)

(assert (=> d!1730618 (= lt!2213450 (choose!41161 z!1189))))

(assert (=> d!1730618 (= (toList!9001 z!1189) lt!2213450)))

(declare-fun b!5427066 () Bool)

(declare-fun content!11127 (List!61952) (InoxSet Context!9202))

(assert (=> b!5427066 (= e!3363025 (= (content!11127 lt!2213450) z!1189))))

(assert (= (and d!1730618 res!2309578) b!5427066))

(declare-fun m!6450776 () Bool)

(assert (=> d!1730618 m!6450776))

(declare-fun m!6450778 () Bool)

(assert (=> d!1730618 m!6450778))

(declare-fun m!6450780 () Bool)

(assert (=> b!5427066 m!6450780))

(assert (=> b!5426266 d!1730618))

(declare-fun e!3363028 () Bool)

(declare-fun d!1730620 () Bool)

(assert (=> d!1730620 (= (matchZipper!1461 ((_ map or) lt!2213328 lt!2213318) (t!375173 s!2326)) e!3363028)))

(declare-fun res!2309581 () Bool)

(assert (=> d!1730620 (=> res!2309581 e!3363028)))

(assert (=> d!1730620 (= res!2309581 (matchZipper!1461 lt!2213328 (t!375173 s!2326)))))

(declare-fun lt!2213453 () Unit!154390)

(declare-fun choose!41162 ((InoxSet Context!9202) (InoxSet Context!9202) List!61950) Unit!154390)

(assert (=> d!1730620 (= lt!2213453 (choose!41162 lt!2213328 lt!2213318 (t!375173 s!2326)))))

(assert (=> d!1730620 (= (lemmaZipperConcatMatchesSameAsBothZippers!454 lt!2213328 lt!2213318 (t!375173 s!2326)) lt!2213453)))

(declare-fun b!5427069 () Bool)

(assert (=> b!5427069 (= e!3363028 (matchZipper!1461 lt!2213318 (t!375173 s!2326)))))

(assert (= (and d!1730620 (not res!2309581)) b!5427069))

(assert (=> d!1730620 m!6450144))

(assert (=> d!1730620 m!6450142))

(declare-fun m!6450782 () Bool)

(assert (=> d!1730620 m!6450782))

(assert (=> b!5427069 m!6450122))

(assert (=> b!5426287 d!1730620))

(assert (=> b!5426287 d!1730518))

(declare-fun d!1730622 () Bool)

(declare-fun c!946657 () Bool)

(assert (=> d!1730622 (= c!946657 (isEmpty!33827 (t!375173 s!2326)))))

(declare-fun e!3363029 () Bool)

(assert (=> d!1730622 (= (matchZipper!1461 ((_ map or) lt!2213328 lt!2213318) (t!375173 s!2326)) e!3363029)))

(declare-fun b!5427070 () Bool)

(assert (=> b!5427070 (= e!3363029 (nullableZipper!1462 ((_ map or) lt!2213328 lt!2213318)))))

(declare-fun b!5427071 () Bool)

(assert (=> b!5427071 (= e!3363029 (matchZipper!1461 (derivationStepZipper!1456 ((_ map or) lt!2213328 lt!2213318) (head!11641 (t!375173 s!2326))) (tail!10738 (t!375173 s!2326))))))

(assert (= (and d!1730622 c!946657) b!5427070))

(assert (= (and d!1730622 (not c!946657)) b!5427071))

(assert (=> d!1730622 m!6450354))

(declare-fun m!6450784 () Bool)

(assert (=> b!5427070 m!6450784))

(assert (=> b!5427071 m!6450360))

(assert (=> b!5427071 m!6450360))

(declare-fun m!6450786 () Bool)

(assert (=> b!5427071 m!6450786))

(assert (=> b!5427071 m!6450364))

(assert (=> b!5427071 m!6450786))

(assert (=> b!5427071 m!6450364))

(declare-fun m!6450788 () Bool)

(assert (=> b!5427071 m!6450788))

(assert (=> b!5426287 d!1730622))

(declare-fun d!1730624 () Bool)

(declare-fun lt!2213454 () Regex!15217)

(assert (=> d!1730624 (validRegex!6953 lt!2213454)))

(assert (=> d!1730624 (= lt!2213454 (generalisedUnion!1146 (unfocusZipperList!659 zl!343)))))

(assert (=> d!1730624 (= (unfocusZipper!959 zl!343) lt!2213454)))

(declare-fun bs!1253537 () Bool)

(assert (= bs!1253537 d!1730624))

(declare-fun m!6450790 () Bool)

(assert (=> bs!1253537 m!6450790))

(assert (=> bs!1253537 m!6450186))

(assert (=> bs!1253537 m!6450186))

(assert (=> bs!1253537 m!6450188))

(assert (=> b!5426284 d!1730624))

(declare-fun d!1730626 () Bool)

(assert (=> d!1730626 (= (nullable!5386 (regOne!30946 (regOne!30946 r!7292))) (nullableFct!1612 (regOne!30946 (regOne!30946 r!7292))))))

(declare-fun bs!1253538 () Bool)

(assert (= bs!1253538 d!1730626))

(declare-fun m!6450792 () Bool)

(assert (=> bs!1253538 m!6450792))

(assert (=> b!5426264 d!1730626))

(declare-fun b!5427076 () Bool)

(declare-fun e!3363032 () Bool)

(declare-fun tp!1497558 () Bool)

(assert (=> b!5427076 (= e!3363032 (and tp_is_empty!39687 tp!1497558))))

(assert (=> b!5426290 (= tp!1497490 e!3363032)))

(assert (= (and b!5426290 ((_ is Cons!61826) (t!375173 s!2326))) b!5427076))

(declare-fun b!5427090 () Bool)

(declare-fun e!3363035 () Bool)

(declare-fun tp!1497569 () Bool)

(declare-fun tp!1497570 () Bool)

(assert (=> b!5427090 (= e!3363035 (and tp!1497569 tp!1497570))))

(declare-fun b!5427088 () Bool)

(declare-fun tp!1497571 () Bool)

(declare-fun tp!1497573 () Bool)

(assert (=> b!5427088 (= e!3363035 (and tp!1497571 tp!1497573))))

(declare-fun b!5427087 () Bool)

(assert (=> b!5427087 (= e!3363035 tp_is_empty!39687)))

(declare-fun b!5427089 () Bool)

(declare-fun tp!1497572 () Bool)

(assert (=> b!5427089 (= e!3363035 tp!1497572)))

(assert (=> b!5426286 (= tp!1497496 e!3363035)))

(assert (= (and b!5426286 ((_ is ElementMatch!15217) (regOne!30947 r!7292))) b!5427087))

(assert (= (and b!5426286 ((_ is Concat!24062) (regOne!30947 r!7292))) b!5427088))

(assert (= (and b!5426286 ((_ is Star!15217) (regOne!30947 r!7292))) b!5427089))

(assert (= (and b!5426286 ((_ is Union!15217) (regOne!30947 r!7292))) b!5427090))

(declare-fun b!5427094 () Bool)

(declare-fun e!3363036 () Bool)

(declare-fun tp!1497574 () Bool)

(declare-fun tp!1497575 () Bool)

(assert (=> b!5427094 (= e!3363036 (and tp!1497574 tp!1497575))))

(declare-fun b!5427092 () Bool)

(declare-fun tp!1497576 () Bool)

(declare-fun tp!1497578 () Bool)

(assert (=> b!5427092 (= e!3363036 (and tp!1497576 tp!1497578))))

(declare-fun b!5427091 () Bool)

(assert (=> b!5427091 (= e!3363036 tp_is_empty!39687)))

(declare-fun b!5427093 () Bool)

(declare-fun tp!1497577 () Bool)

(assert (=> b!5427093 (= e!3363036 tp!1497577)))

(assert (=> b!5426286 (= tp!1497489 e!3363036)))

(assert (= (and b!5426286 ((_ is ElementMatch!15217) (regTwo!30947 r!7292))) b!5427091))

(assert (= (and b!5426286 ((_ is Concat!24062) (regTwo!30947 r!7292))) b!5427092))

(assert (= (and b!5426286 ((_ is Star!15217) (regTwo!30947 r!7292))) b!5427093))

(assert (= (and b!5426286 ((_ is Union!15217) (regTwo!30947 r!7292))) b!5427094))

(declare-fun condSetEmpty!35387 () Bool)

(assert (=> setNonEmpty!35381 (= condSetEmpty!35387 (= setRest!35381 ((as const (Array Context!9202 Bool)) false)))))

(declare-fun setRes!35387 () Bool)

(assert (=> setNonEmpty!35381 (= tp!1497494 setRes!35387)))

(declare-fun setIsEmpty!35387 () Bool)

(assert (=> setIsEmpty!35387 setRes!35387))

(declare-fun e!3363039 () Bool)

(declare-fun setElem!35387 () Context!9202)

(declare-fun tp!1497584 () Bool)

(declare-fun setNonEmpty!35387 () Bool)

(assert (=> setNonEmpty!35387 (= setRes!35387 (and tp!1497584 (inv!81289 setElem!35387) e!3363039))))

(declare-fun setRest!35387 () (InoxSet Context!9202))

(assert (=> setNonEmpty!35387 (= setRest!35381 ((_ map or) (store ((as const (Array Context!9202 Bool)) false) setElem!35387 true) setRest!35387))))

(declare-fun b!5427099 () Bool)

(declare-fun tp!1497583 () Bool)

(assert (=> b!5427099 (= e!3363039 tp!1497583)))

(assert (= (and setNonEmpty!35381 condSetEmpty!35387) setIsEmpty!35387))

(assert (= (and setNonEmpty!35381 (not condSetEmpty!35387)) setNonEmpty!35387))

(assert (= setNonEmpty!35387 b!5427099))

(declare-fun m!6450794 () Bool)

(assert (=> setNonEmpty!35387 m!6450794))

(declare-fun b!5427104 () Bool)

(declare-fun e!3363042 () Bool)

(declare-fun tp!1497589 () Bool)

(declare-fun tp!1497590 () Bool)

(assert (=> b!5427104 (= e!3363042 (and tp!1497589 tp!1497590))))

(assert (=> b!5426281 (= tp!1497493 e!3363042)))

(assert (= (and b!5426281 ((_ is Cons!61827) (exprs!5101 setElem!35381))) b!5427104))

(declare-fun b!5427108 () Bool)

(declare-fun e!3363043 () Bool)

(declare-fun tp!1497591 () Bool)

(declare-fun tp!1497592 () Bool)

(assert (=> b!5427108 (= e!3363043 (and tp!1497591 tp!1497592))))

(declare-fun b!5427106 () Bool)

(declare-fun tp!1497593 () Bool)

(declare-fun tp!1497595 () Bool)

(assert (=> b!5427106 (= e!3363043 (and tp!1497593 tp!1497595))))

(declare-fun b!5427105 () Bool)

(assert (=> b!5427105 (= e!3363043 tp_is_empty!39687)))

(declare-fun b!5427107 () Bool)

(declare-fun tp!1497594 () Bool)

(assert (=> b!5427107 (= e!3363043 tp!1497594)))

(assert (=> b!5426282 (= tp!1497495 e!3363043)))

(assert (= (and b!5426282 ((_ is ElementMatch!15217) (reg!15546 r!7292))) b!5427105))

(assert (= (and b!5426282 ((_ is Concat!24062) (reg!15546 r!7292))) b!5427106))

(assert (= (and b!5426282 ((_ is Star!15217) (reg!15546 r!7292))) b!5427107))

(assert (= (and b!5426282 ((_ is Union!15217) (reg!15546 r!7292))) b!5427108))

(declare-fun b!5427116 () Bool)

(declare-fun e!3363049 () Bool)

(declare-fun tp!1497600 () Bool)

(assert (=> b!5427116 (= e!3363049 tp!1497600)))

(declare-fun b!5427115 () Bool)

(declare-fun tp!1497601 () Bool)

(declare-fun e!3363048 () Bool)

(assert (=> b!5427115 (= e!3363048 (and (inv!81289 (h!68276 (t!375175 zl!343))) e!3363049 tp!1497601))))

(assert (=> b!5426298 (= tp!1497497 e!3363048)))

(assert (= b!5427115 b!5427116))

(assert (= (and b!5426298 ((_ is Cons!61828) (t!375175 zl!343))) b!5427115))

(declare-fun m!6450796 () Bool)

(assert (=> b!5427115 m!6450796))

(declare-fun b!5427120 () Bool)

(declare-fun e!3363050 () Bool)

(declare-fun tp!1497602 () Bool)

(declare-fun tp!1497603 () Bool)

(assert (=> b!5427120 (= e!3363050 (and tp!1497602 tp!1497603))))

(declare-fun b!5427118 () Bool)

(declare-fun tp!1497604 () Bool)

(declare-fun tp!1497606 () Bool)

(assert (=> b!5427118 (= e!3363050 (and tp!1497604 tp!1497606))))

(declare-fun b!5427117 () Bool)

(assert (=> b!5427117 (= e!3363050 tp_is_empty!39687)))

(declare-fun b!5427119 () Bool)

(declare-fun tp!1497605 () Bool)

(assert (=> b!5427119 (= e!3363050 tp!1497605)))

(assert (=> b!5426277 (= tp!1497488 e!3363050)))

(assert (= (and b!5426277 ((_ is ElementMatch!15217) (regOne!30946 r!7292))) b!5427117))

(assert (= (and b!5426277 ((_ is Concat!24062) (regOne!30946 r!7292))) b!5427118))

(assert (= (and b!5426277 ((_ is Star!15217) (regOne!30946 r!7292))) b!5427119))

(assert (= (and b!5426277 ((_ is Union!15217) (regOne!30946 r!7292))) b!5427120))

(declare-fun b!5427124 () Bool)

(declare-fun e!3363051 () Bool)

(declare-fun tp!1497607 () Bool)

(declare-fun tp!1497608 () Bool)

(assert (=> b!5427124 (= e!3363051 (and tp!1497607 tp!1497608))))

(declare-fun b!5427122 () Bool)

(declare-fun tp!1497609 () Bool)

(declare-fun tp!1497611 () Bool)

(assert (=> b!5427122 (= e!3363051 (and tp!1497609 tp!1497611))))

(declare-fun b!5427121 () Bool)

(assert (=> b!5427121 (= e!3363051 tp_is_empty!39687)))

(declare-fun b!5427123 () Bool)

(declare-fun tp!1497610 () Bool)

(assert (=> b!5427123 (= e!3363051 tp!1497610)))

(assert (=> b!5426277 (= tp!1497492 e!3363051)))

(assert (= (and b!5426277 ((_ is ElementMatch!15217) (regTwo!30946 r!7292))) b!5427121))

(assert (= (and b!5426277 ((_ is Concat!24062) (regTwo!30946 r!7292))) b!5427122))

(assert (= (and b!5426277 ((_ is Star!15217) (regTwo!30946 r!7292))) b!5427123))

(assert (= (and b!5426277 ((_ is Union!15217) (regTwo!30946 r!7292))) b!5427124))

(declare-fun b!5427125 () Bool)

(declare-fun e!3363052 () Bool)

(declare-fun tp!1497612 () Bool)

(declare-fun tp!1497613 () Bool)

(assert (=> b!5427125 (= e!3363052 (and tp!1497612 tp!1497613))))

(assert (=> b!5426263 (= tp!1497491 e!3363052)))

(assert (= (and b!5426263 ((_ is Cons!61827) (exprs!5101 (h!68276 zl!343)))) b!5427125))

(declare-fun b_lambda!207073 () Bool)

(assert (= b_lambda!207053 (or b!5426259 b_lambda!207073)))

(declare-fun bs!1253539 () Bool)

(declare-fun d!1730628 () Bool)

(assert (= bs!1253539 (and d!1730628 b!5426259)))

(assert (=> bs!1253539 (= (dynLambda!24362 lambda!284592 lt!2213350) (derivationStepZipperUp!589 lt!2213350 (h!68274 s!2326)))))

(assert (=> bs!1253539 m!6450132))

(assert (=> d!1730530 d!1730628))

(declare-fun b_lambda!207075 () Bool)

(assert (= b_lambda!207055 (or b!5426259 b_lambda!207075)))

(declare-fun bs!1253540 () Bool)

(declare-fun d!1730630 () Bool)

(assert (= bs!1253540 (and d!1730630 b!5426259)))

(assert (=> bs!1253540 (= (dynLambda!24362 lambda!284592 lt!2213334) (derivationStepZipperUp!589 lt!2213334 (h!68274 s!2326)))))

(assert (=> bs!1253540 m!6450094))

(assert (=> d!1730544 d!1730630))

(declare-fun b_lambda!207077 () Bool)

(assert (= b_lambda!207037 (or b!5426259 b_lambda!207077)))

(declare-fun bs!1253541 () Bool)

(declare-fun d!1730632 () Bool)

(assert (= bs!1253541 (and d!1730632 b!5426259)))

(assert (=> bs!1253541 (= (dynLambda!24362 lambda!284592 (h!68276 zl!343)) (derivationStepZipperUp!589 (h!68276 zl!343) (h!68274 s!2326)))))

(assert (=> bs!1253541 m!6450104))

(assert (=> d!1730396 d!1730632))

(declare-fun b_lambda!207079 () Bool)

(assert (= b_lambda!207043 (or b!5426259 b_lambda!207079)))

(declare-fun bs!1253542 () Bool)

(declare-fun d!1730634 () Bool)

(assert (= bs!1253542 (and d!1730634 b!5426259)))

(assert (=> bs!1253542 (= (dynLambda!24362 lambda!284592 lt!2213352) (derivationStepZipperUp!589 lt!2213352 (h!68274 s!2326)))))

(assert (=> bs!1253542 m!6450114))

(assert (=> d!1730438 d!1730634))

(declare-fun b_lambda!207081 () Bool)

(assert (= b_lambda!207045 (or b!5426260 b_lambda!207081)))

(declare-fun bs!1253543 () Bool)

(declare-fun d!1730636 () Bool)

(assert (= bs!1253543 (and d!1730636 b!5426260)))

(assert (=> bs!1253543 (= (dynLambda!24363 lambda!284593 (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343))))) (validRegex!6953 (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun m!6450798 () Bool)

(assert (=> bs!1253543 m!6450798))

(assert (=> b!5426460 d!1730636))

(declare-fun b_lambda!207083 () Bool)

(assert (= b_lambda!207057 (or b!5426259 b_lambda!207083)))

(declare-fun bs!1253544 () Bool)

(declare-fun d!1730638 () Bool)

(assert (= bs!1253544 (and d!1730638 b!5426259)))

(assert (=> bs!1253544 (= (dynLambda!24362 lambda!284592 lt!2213330) (derivationStepZipperUp!589 lt!2213330 (h!68274 s!2326)))))

(assert (=> bs!1253544 m!6450086))

(assert (=> d!1730554 d!1730638))

(check-sat (not b!5426777) (not bm!388329) (not bm!388384) (not bm!388328) (not b!5427066) (not b!5427116) (not d!1730532) (not bm!388401) (not b!5427090) (not b!5426743) (not b!5426766) (not bm!388381) (not b!5426503) (not d!1730430) (not b!5426790) (not bm!388362) (not b!5426324) (not b!5427092) (not b!5427010) (not b!5426758) (not bm!388330) (not b!5426762) (not b!5426891) (not b!5427099) (not d!1730586) (not b!5427071) (not bs!1253544) (not d!1730624) (not b!5426418) (not b!5427093) (not b!5427018) (not b!5426983) (not d!1730626) (not b!5426774) (not b!5427054) (not bm!388303) (not b!5427089) (not b!5427118) (not d!1730432) (not b!5426874) (not d!1730520) (not b!5427104) (not bm!388402) (not b!5427076) (not d!1730614) (not b!5426773) (not b!5427051) (not d!1730396) (not b!5426502) (not b!5427069) (not b!5426759) (not d!1730448) (not b!5426822) (not b!5427017) (not b!5426757) (not b!5426987) (not bm!388403) (not d!1730438) (not b_lambda!207077) (not b!5427106) (not b!5427125) (not b!5427094) (not d!1730540) (not bs!1253542) (not b!5426985) (not b_lambda!207075) (not b!5426756) (not b!5426827) (not d!1730604) (not b!5427108) (not b!5427120) (not b!5426438) (not d!1730476) (not bs!1253543) (not b!5426439) (not b!5426736) (not d!1730606) (not d!1730618) (not b!5427124) (not bm!388302) (not d!1730620) (not d!1730522) (not b!5426979) (not d!1730398) (not b!5426755) (not b!5427119) (not bs!1253540) (not d!1730526) (not b!5426984) (not b!5426737) (not d!1730554) (not d!1730608) (not bm!388395) (not b!5426650) (not d!1730560) (not b!5426318) (not b!5426746) (not bm!388382) (not d!1730518) (not bm!388386) (not b_lambda!207081) (not b!5427048) (not b!5427123) (not bm!388385) (not setNonEmpty!35387) (not d!1730558) (not bm!388335) (not b!5426786) (not d!1730602) (not d!1730542) (not b!5426778) (not b!5426981) (not b!5426765) (not b!5426768) (not bs!1253539) (not b!5426754) (not d!1730536) (not b!5426982) (not d!1730550) (not bm!388363) (not d!1730514) (not b!5426323) (not b!5426767) (not b!5427115) (not b!5427070) (not d!1730616) (not b!5427050) (not b!5426319) (not b!5427014) (not d!1730530) (not b!5427023) (not b!5427088) (not b!5426763) (not d!1730580) (not b!5426742) (not b!5427012) (not b!5426461) (not bm!388383) (not b!5426654) (not b!5426747) (not bm!388380) (not b!5427122) (not d!1730600) (not bm!388397) (not b!5427015) (not b!5427107) (not d!1730544) (not d!1730534) (not b!5427047) (not d!1730612) (not b!5426826) (not b_lambda!207083) (not bs!1253541) (not b!5426821) (not b_lambda!207073) (not d!1730610) (not b_lambda!207079) (not d!1730454) (not d!1730622) (not b!5427013) tp_is_empty!39687 (not d!1730436) (not b!5427053))
(check-sat)
(get-model)

(declare-fun b!5427142 () Bool)

(declare-fun e!3363063 () Bool)

(declare-fun call!388414 () Bool)

(assert (=> b!5427142 (= e!3363063 call!388414)))

(declare-fun b!5427143 () Bool)

(declare-fun e!3363069 () Bool)

(declare-fun call!388416 () Bool)

(assert (=> b!5427143 (= e!3363069 call!388416)))

(declare-fun d!1730646 () Bool)

(declare-fun res!2309589 () Bool)

(declare-fun e!3363068 () Bool)

(assert (=> d!1730646 (=> res!2309589 e!3363068)))

(assert (=> d!1730646 (= res!2309589 ((_ is ElementMatch!15217) lt!2213418))))

(assert (=> d!1730646 (= (validRegex!6953 lt!2213418) e!3363068)))

(declare-fun b!5427144 () Bool)

(declare-fun e!3363065 () Bool)

(declare-fun e!3363066 () Bool)

(assert (=> b!5427144 (= e!3363065 e!3363066)))

(declare-fun c!946667 () Bool)

(assert (=> b!5427144 (= c!946667 ((_ is Union!15217) lt!2213418))))

(declare-fun b!5427145 () Bool)

(declare-fun e!3363064 () Bool)

(assert (=> b!5427145 (= e!3363064 call!388416)))

(declare-fun b!5427146 () Bool)

(assert (=> b!5427146 (= e!3363068 e!3363065)))

(declare-fun c!946666 () Bool)

(assert (=> b!5427146 (= c!946666 ((_ is Star!15217) lt!2213418))))

(declare-fun bm!388409 () Bool)

(assert (=> bm!388409 (= call!388414 (validRegex!6953 (ite c!946666 (reg!15546 lt!2213418) (ite c!946667 (regOne!30947 lt!2213418) (regOne!30946 lt!2213418)))))))

(declare-fun b!5427147 () Bool)

(declare-fun res!2309587 () Bool)

(assert (=> b!5427147 (=> (not res!2309587) (not e!3363064))))

(declare-fun call!388415 () Bool)

(assert (=> b!5427147 (= res!2309587 call!388415)))

(assert (=> b!5427147 (= e!3363066 e!3363064)))

(declare-fun b!5427148 () Bool)

(declare-fun e!3363067 () Bool)

(assert (=> b!5427148 (= e!3363067 e!3363069)))

(declare-fun res!2309590 () Bool)

(assert (=> b!5427148 (=> (not res!2309590) (not e!3363069))))

(assert (=> b!5427148 (= res!2309590 call!388415)))

(declare-fun bm!388410 () Bool)

(assert (=> bm!388410 (= call!388415 call!388414)))

(declare-fun b!5427149 () Bool)

(declare-fun res!2309588 () Bool)

(assert (=> b!5427149 (=> res!2309588 e!3363067)))

(assert (=> b!5427149 (= res!2309588 (not ((_ is Concat!24062) lt!2213418)))))

(assert (=> b!5427149 (= e!3363066 e!3363067)))

(declare-fun bm!388411 () Bool)

(assert (=> bm!388411 (= call!388416 (validRegex!6953 (ite c!946667 (regTwo!30947 lt!2213418) (regTwo!30946 lt!2213418))))))

(declare-fun b!5427150 () Bool)

(assert (=> b!5427150 (= e!3363065 e!3363063)))

(declare-fun res!2309586 () Bool)

(assert (=> b!5427150 (= res!2309586 (not (nullable!5386 (reg!15546 lt!2213418))))))

(assert (=> b!5427150 (=> (not res!2309586) (not e!3363063))))

(assert (= (and d!1730646 (not res!2309589)) b!5427146))

(assert (= (and b!5427146 c!946666) b!5427150))

(assert (= (and b!5427146 (not c!946666)) b!5427144))

(assert (= (and b!5427150 res!2309586) b!5427142))

(assert (= (and b!5427144 c!946667) b!5427147))

(assert (= (and b!5427144 (not c!946667)) b!5427149))

(assert (= (and b!5427147 res!2309587) b!5427145))

(assert (= (and b!5427149 (not res!2309588)) b!5427148))

(assert (= (and b!5427148 res!2309590) b!5427143))

(assert (= (or b!5427145 b!5427143) bm!388411))

(assert (= (or b!5427147 b!5427148) bm!388410))

(assert (= (or b!5427142 bm!388410) bm!388409))

(declare-fun m!6450808 () Bool)

(assert (=> bm!388409 m!6450808))

(declare-fun m!6450810 () Bool)

(assert (=> bm!388411 m!6450810))

(declare-fun m!6450812 () Bool)

(assert (=> b!5427150 m!6450812))

(assert (=> d!1730560 d!1730646))

(declare-fun bs!1253551 () Bool)

(declare-fun d!1730648 () Bool)

(assert (= bs!1253551 (and d!1730648 d!1730602)))

(declare-fun lambda!284666 () Int)

(assert (=> bs!1253551 (= lambda!284666 lambda!284652)))

(declare-fun bs!1253553 () Bool)

(assert (= bs!1253553 (and d!1730648 d!1730586)))

(assert (=> bs!1253553 (= lambda!284666 lambda!284646)))

(declare-fun bs!1253554 () Bool)

(assert (= bs!1253554 (and d!1730648 b!5426260)))

(assert (=> bs!1253554 (= lambda!284666 lambda!284593)))

(declare-fun bs!1253556 () Bool)

(assert (= bs!1253556 (and d!1730648 d!1730600)))

(assert (=> bs!1253556 (= lambda!284666 lambda!284649)))

(declare-fun bs!1253557 () Bool)

(assert (= bs!1253557 (and d!1730648 d!1730580)))

(assert (=> bs!1253557 (= lambda!284666 lambda!284642)))

(declare-fun bs!1253558 () Bool)

(assert (= bs!1253558 (and d!1730648 d!1730454)))

(assert (=> bs!1253558 (= lambda!284666 lambda!284608)))

(declare-fun b!5427151 () Bool)

(declare-fun e!3363075 () Regex!15217)

(declare-fun e!3363070 () Regex!15217)

(assert (=> b!5427151 (= e!3363075 e!3363070)))

(declare-fun c!946668 () Bool)

(assert (=> b!5427151 (= c!946668 ((_ is Cons!61827) (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828))))))

(declare-fun b!5427152 () Bool)

(declare-fun e!3363074 () Bool)

(declare-fun lt!2213455 () Regex!15217)

(assert (=> b!5427152 (= e!3363074 (isEmptyLang!1003 lt!2213455))))

(declare-fun b!5427153 () Bool)

(assert (=> b!5427153 (= e!3363075 (h!68275 (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828))))))

(declare-fun b!5427154 () Bool)

(declare-fun e!3363073 () Bool)

(assert (=> b!5427154 (= e!3363073 (= lt!2213455 (head!11642 (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828)))))))

(declare-fun b!5427155 () Bool)

(declare-fun e!3363071 () Bool)

(assert (=> b!5427155 (= e!3363071 e!3363074)))

(declare-fun c!946669 () Bool)

(assert (=> b!5427155 (= c!946669 (isEmpty!33825 (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828))))))

(declare-fun b!5427156 () Bool)

(assert (=> b!5427156 (= e!3363070 (Union!15217 (h!68275 (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828))) (generalisedUnion!1146 (t!375174 (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828))))))))

(assert (=> d!1730648 e!3363071))

(declare-fun res!2309592 () Bool)

(assert (=> d!1730648 (=> (not res!2309592) (not e!3363071))))

(assert (=> d!1730648 (= res!2309592 (validRegex!6953 lt!2213455))))

(assert (=> d!1730648 (= lt!2213455 e!3363075)))

(declare-fun c!946670 () Bool)

(declare-fun e!3363072 () Bool)

(assert (=> d!1730648 (= c!946670 e!3363072)))

(declare-fun res!2309591 () Bool)

(assert (=> d!1730648 (=> (not res!2309591) (not e!3363072))))

(assert (=> d!1730648 (= res!2309591 ((_ is Cons!61827) (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828))))))

(assert (=> d!1730648 (forall!14555 (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828)) lambda!284666)))

(assert (=> d!1730648 (= (generalisedUnion!1146 (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828))) lt!2213455)))

(declare-fun b!5427157 () Bool)

(assert (=> b!5427157 (= e!3363073 (isUnion!435 lt!2213455))))

(declare-fun b!5427158 () Bool)

(assert (=> b!5427158 (= e!3363070 EmptyLang!15217)))

(declare-fun b!5427159 () Bool)

(assert (=> b!5427159 (= e!3363072 (isEmpty!33825 (t!375174 (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828)))))))

(declare-fun b!5427160 () Bool)

(assert (=> b!5427160 (= e!3363074 e!3363073)))

(declare-fun c!946671 () Bool)

(assert (=> b!5427160 (= c!946671 (isEmpty!33825 (tail!10739 (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828)))))))

(assert (= (and d!1730648 res!2309591) b!5427159))

(assert (= (and d!1730648 c!946670) b!5427153))

(assert (= (and d!1730648 (not c!946670)) b!5427151))

(assert (= (and b!5427151 c!946668) b!5427156))

(assert (= (and b!5427151 (not c!946668)) b!5427158))

(assert (= (and d!1730648 res!2309592) b!5427155))

(assert (= (and b!5427155 c!946669) b!5427152))

(assert (= (and b!5427155 (not c!946669)) b!5427160))

(assert (= (and b!5427160 c!946671) b!5427154))

(assert (= (and b!5427160 (not c!946671)) b!5427157))

(declare-fun m!6450814 () Bool)

(assert (=> d!1730648 m!6450814))

(assert (=> d!1730648 m!6450626))

(declare-fun m!6450816 () Bool)

(assert (=> d!1730648 m!6450816))

(declare-fun m!6450818 () Bool)

(assert (=> b!5427159 m!6450818))

(declare-fun m!6450820 () Bool)

(assert (=> b!5427156 m!6450820))

(assert (=> b!5427155 m!6450626))

(declare-fun m!6450822 () Bool)

(assert (=> b!5427155 m!6450822))

(assert (=> b!5427154 m!6450626))

(declare-fun m!6450824 () Bool)

(assert (=> b!5427154 m!6450824))

(declare-fun m!6450826 () Bool)

(assert (=> b!5427157 m!6450826))

(declare-fun m!6450828 () Bool)

(assert (=> b!5427152 m!6450828))

(assert (=> b!5427160 m!6450626))

(declare-fun m!6450830 () Bool)

(assert (=> b!5427160 m!6450830))

(assert (=> b!5427160 m!6450830))

(declare-fun m!6450832 () Bool)

(assert (=> b!5427160 m!6450832))

(assert (=> d!1730560 d!1730648))

(declare-fun bs!1253563 () Bool)

(declare-fun d!1730650 () Bool)

(assert (= bs!1253563 (and d!1730650 d!1730602)))

(declare-fun lambda!284668 () Int)

(assert (=> bs!1253563 (= lambda!284668 lambda!284652)))

(declare-fun bs!1253564 () Bool)

(assert (= bs!1253564 (and d!1730650 d!1730586)))

(assert (=> bs!1253564 (= lambda!284668 lambda!284646)))

(declare-fun bs!1253565 () Bool)

(assert (= bs!1253565 (and d!1730650 b!5426260)))

(assert (=> bs!1253565 (= lambda!284668 lambda!284593)))

(declare-fun bs!1253566 () Bool)

(assert (= bs!1253566 (and d!1730650 d!1730600)))

(assert (=> bs!1253566 (= lambda!284668 lambda!284649)))

(declare-fun bs!1253568 () Bool)

(assert (= bs!1253568 (and d!1730650 d!1730454)))

(assert (=> bs!1253568 (= lambda!284668 lambda!284608)))

(declare-fun bs!1253569 () Bool)

(assert (= bs!1253569 (and d!1730650 d!1730580)))

(assert (=> bs!1253569 (= lambda!284668 lambda!284642)))

(declare-fun bs!1253571 () Bool)

(assert (= bs!1253571 (and d!1730650 d!1730648)))

(assert (=> bs!1253571 (= lambda!284668 lambda!284666)))

(declare-fun lt!2213456 () List!61951)

(assert (=> d!1730650 (forall!14555 lt!2213456 lambda!284668)))

(declare-fun e!3363076 () List!61951)

(assert (=> d!1730650 (= lt!2213456 e!3363076)))

(declare-fun c!946672 () Bool)

(assert (=> d!1730650 (= c!946672 ((_ is Cons!61828) (Cons!61828 lt!2213350 Nil!61828)))))

(assert (=> d!1730650 (= (unfocusZipperList!659 (Cons!61828 lt!2213350 Nil!61828)) lt!2213456)))

(declare-fun b!5427161 () Bool)

(assert (=> b!5427161 (= e!3363076 (Cons!61827 (generalisedConcat!886 (exprs!5101 (h!68276 (Cons!61828 lt!2213350 Nil!61828)))) (unfocusZipperList!659 (t!375175 (Cons!61828 lt!2213350 Nil!61828)))))))

(declare-fun b!5427162 () Bool)

(assert (=> b!5427162 (= e!3363076 Nil!61827)))

(assert (= (and d!1730650 c!946672) b!5427161))

(assert (= (and d!1730650 (not c!946672)) b!5427162))

(declare-fun m!6450834 () Bool)

(assert (=> d!1730650 m!6450834))

(declare-fun m!6450836 () Bool)

(assert (=> b!5427161 m!6450836))

(declare-fun m!6450838 () Bool)

(assert (=> b!5427161 m!6450838))

(assert (=> d!1730560 d!1730650))

(declare-fun d!1730652 () Bool)

(assert (=> d!1730652 (= (isEmpty!33827 s!2326) ((_ is Nil!61826) s!2326))))

(assert (=> bm!388383 d!1730652))

(declare-fun d!1730654 () Bool)

(declare-fun c!946673 () Bool)

(assert (=> d!1730654 (= c!946673 (isEmpty!33827 (tail!10738 (t!375173 s!2326))))))

(declare-fun e!3363077 () Bool)

(assert (=> d!1730654 (= (matchZipper!1461 (derivationStepZipper!1456 lt!2213318 (head!11641 (t!375173 s!2326))) (tail!10738 (t!375173 s!2326))) e!3363077)))

(declare-fun b!5427163 () Bool)

(assert (=> b!5427163 (= e!3363077 (nullableZipper!1462 (derivationStepZipper!1456 lt!2213318 (head!11641 (t!375173 s!2326)))))))

(declare-fun b!5427164 () Bool)

(assert (=> b!5427164 (= e!3363077 (matchZipper!1461 (derivationStepZipper!1456 (derivationStepZipper!1456 lt!2213318 (head!11641 (t!375173 s!2326))) (head!11641 (tail!10738 (t!375173 s!2326)))) (tail!10738 (tail!10738 (t!375173 s!2326)))))))

(assert (= (and d!1730654 c!946673) b!5427163))

(assert (= (and d!1730654 (not c!946673)) b!5427164))

(assert (=> d!1730654 m!6450364))

(declare-fun m!6450846 () Bool)

(assert (=> d!1730654 m!6450846))

(assert (=> b!5427163 m!6450362))

(declare-fun m!6450848 () Bool)

(assert (=> b!5427163 m!6450848))

(assert (=> b!5427164 m!6450364))

(declare-fun m!6450850 () Bool)

(assert (=> b!5427164 m!6450850))

(assert (=> b!5427164 m!6450362))

(assert (=> b!5427164 m!6450850))

(declare-fun m!6450852 () Bool)

(assert (=> b!5427164 m!6450852))

(assert (=> b!5427164 m!6450364))

(declare-fun m!6450854 () Bool)

(assert (=> b!5427164 m!6450854))

(assert (=> b!5427164 m!6450852))

(assert (=> b!5427164 m!6450854))

(declare-fun m!6450856 () Bool)

(assert (=> b!5427164 m!6450856))

(assert (=> b!5426503 d!1730654))

(declare-fun bs!1253574 () Bool)

(declare-fun d!1730660 () Bool)

(assert (= bs!1253574 (and d!1730660 b!5426259)))

(declare-fun lambda!284669 () Int)

(assert (=> bs!1253574 (= (= (head!11641 (t!375173 s!2326)) (h!68274 s!2326)) (= lambda!284669 lambda!284592))))

(declare-fun bs!1253575 () Bool)

(assert (= bs!1253575 (and d!1730660 d!1730432)))

(assert (=> bs!1253575 (= (= (head!11641 (t!375173 s!2326)) (h!68274 s!2326)) (= lambda!284669 lambda!284599))))

(declare-fun bs!1253576 () Bool)

(assert (= bs!1253576 (and d!1730660 d!1730532)))

(assert (=> bs!1253576 (= (= (head!11641 (t!375173 s!2326)) (h!68274 s!2326)) (= lambda!284669 lambda!284631))))

(assert (=> d!1730660 true))

(assert (=> d!1730660 (= (derivationStepZipper!1456 lt!2213318 (head!11641 (t!375173 s!2326))) (flatMap!944 lt!2213318 lambda!284669))))

(declare-fun bs!1253577 () Bool)

(assert (= bs!1253577 d!1730660))

(declare-fun m!6450858 () Bool)

(assert (=> bs!1253577 m!6450858))

(assert (=> b!5426503 d!1730660))

(declare-fun d!1730662 () Bool)

(assert (=> d!1730662 (= (head!11641 (t!375173 s!2326)) (h!68274 (t!375173 s!2326)))))

(assert (=> b!5426503 d!1730662))

(declare-fun d!1730666 () Bool)

(assert (=> d!1730666 (= (tail!10738 (t!375173 s!2326)) (t!375173 (t!375173 s!2326)))))

(assert (=> b!5426503 d!1730666))

(declare-fun d!1730668 () Bool)

(assert (=> d!1730668 (= (isEmpty!33827 (tail!10738 s!2326)) ((_ is Nil!61826) (tail!10738 s!2326)))))

(assert (=> b!5426737 d!1730668))

(declare-fun d!1730670 () Bool)

(assert (=> d!1730670 (= (tail!10738 s!2326) (t!375173 s!2326))))

(assert (=> b!5426737 d!1730670))

(assert (=> d!1730520 d!1730652))

(declare-fun d!1730672 () Bool)

(assert (=> d!1730672 (= (isEmptyLang!1003 lt!2213428) ((_ is EmptyLang!15217) lt!2213428))))

(assert (=> b!5427010 d!1730672))

(declare-fun d!1730676 () Bool)

(declare-fun c!946677 () Bool)

(assert (=> d!1730676 (= c!946677 (isEmpty!33827 (tail!10738 (t!375173 s!2326))))))

(declare-fun e!3363086 () Bool)

(assert (=> d!1730676 (= (matchZipper!1461 (derivationStepZipper!1456 lt!2213328 (head!11641 (t!375173 s!2326))) (tail!10738 (t!375173 s!2326))) e!3363086)))

(declare-fun b!5427176 () Bool)

(assert (=> b!5427176 (= e!3363086 (nullableZipper!1462 (derivationStepZipper!1456 lt!2213328 (head!11641 (t!375173 s!2326)))))))

(declare-fun b!5427177 () Bool)

(assert (=> b!5427177 (= e!3363086 (matchZipper!1461 (derivationStepZipper!1456 (derivationStepZipper!1456 lt!2213328 (head!11641 (t!375173 s!2326))) (head!11641 (tail!10738 (t!375173 s!2326)))) (tail!10738 (tail!10738 (t!375173 s!2326)))))))

(assert (= (and d!1730676 c!946677) b!5427176))

(assert (= (and d!1730676 (not c!946677)) b!5427177))

(assert (=> d!1730676 m!6450364))

(assert (=> d!1730676 m!6450846))

(assert (=> b!5427176 m!6450518))

(declare-fun m!6450878 () Bool)

(assert (=> b!5427176 m!6450878))

(assert (=> b!5427177 m!6450364))

(assert (=> b!5427177 m!6450850))

(assert (=> b!5427177 m!6450518))

(assert (=> b!5427177 m!6450850))

(declare-fun m!6450880 () Bool)

(assert (=> b!5427177 m!6450880))

(assert (=> b!5427177 m!6450364))

(assert (=> b!5427177 m!6450854))

(assert (=> b!5427177 m!6450880))

(assert (=> b!5427177 m!6450854))

(declare-fun m!6450884 () Bool)

(assert (=> b!5427177 m!6450884))

(assert (=> b!5426755 d!1730676))

(declare-fun bs!1253585 () Bool)

(declare-fun d!1730678 () Bool)

(assert (= bs!1253585 (and d!1730678 b!5426259)))

(declare-fun lambda!284671 () Int)

(assert (=> bs!1253585 (= (= (head!11641 (t!375173 s!2326)) (h!68274 s!2326)) (= lambda!284671 lambda!284592))))

(declare-fun bs!1253586 () Bool)

(assert (= bs!1253586 (and d!1730678 d!1730432)))

(assert (=> bs!1253586 (= (= (head!11641 (t!375173 s!2326)) (h!68274 s!2326)) (= lambda!284671 lambda!284599))))

(declare-fun bs!1253587 () Bool)

(assert (= bs!1253587 (and d!1730678 d!1730532)))

(assert (=> bs!1253587 (= (= (head!11641 (t!375173 s!2326)) (h!68274 s!2326)) (= lambda!284671 lambda!284631))))

(declare-fun bs!1253588 () Bool)

(assert (= bs!1253588 (and d!1730678 d!1730660)))

(assert (=> bs!1253588 (= lambda!284671 lambda!284669)))

(assert (=> d!1730678 true))

(assert (=> d!1730678 (= (derivationStepZipper!1456 lt!2213328 (head!11641 (t!375173 s!2326))) (flatMap!944 lt!2213328 lambda!284671))))

(declare-fun bs!1253590 () Bool)

(assert (= bs!1253590 d!1730678))

(declare-fun m!6450886 () Bool)

(assert (=> bs!1253590 m!6450886))

(assert (=> b!5426755 d!1730678))

(assert (=> b!5426755 d!1730662))

(assert (=> b!5426755 d!1730666))

(assert (=> d!1730530 d!1730526))

(declare-fun d!1730682 () Bool)

(assert (=> d!1730682 (= (flatMap!944 lt!2213337 lambda!284592) (dynLambda!24362 lambda!284592 lt!2213350))))

(assert (=> d!1730682 true))

(declare-fun _$13!1945 () Unit!154390)

(assert (=> d!1730682 (= (choose!41150 lt!2213337 lt!2213350 lambda!284592) _$13!1945)))

(declare-fun b_lambda!207085 () Bool)

(assert (=> (not b_lambda!207085) (not d!1730682)))

(declare-fun bs!1253594 () Bool)

(assert (= bs!1253594 d!1730682))

(assert (=> bs!1253594 m!6450126))

(assert (=> bs!1253594 m!6450542))

(assert (=> d!1730530 d!1730682))

(declare-fun e!3363092 () (InoxSet Context!9202))

(declare-fun b!5427178 () Bool)

(assert (=> b!5427178 (= e!3363092 (store ((as const (Array Context!9202 Bool)) false) (ite (or c!946474 c!946478) lt!2213352 (Context!9203 call!388334)) true))))

(declare-fun b!5427180 () Bool)

(declare-fun e!3363089 () Bool)

(assert (=> b!5427180 (= e!3363089 (nullable!5386 (regOne!30946 (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343))))))))))))

(declare-fun bm!388415 () Bool)

(declare-fun call!388425 () (InoxSet Context!9202))

(declare-fun call!388421 () (InoxSet Context!9202))

(assert (=> bm!388415 (= call!388425 call!388421)))

(declare-fun b!5427181 () Bool)

(declare-fun e!3363087 () (InoxSet Context!9202))

(declare-fun e!3363090 () (InoxSet Context!9202))

(assert (=> b!5427181 (= e!3363087 e!3363090)))

(declare-fun c!946679 () Bool)

(assert (=> b!5427181 (= c!946679 ((_ is Concat!24062) (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343)))))))))))

(declare-fun b!5427182 () Bool)

(declare-fun call!388424 () (InoxSet Context!9202))

(assert (=> b!5427182 (= e!3363087 ((_ map or) call!388424 call!388421))))

(declare-fun b!5427183 () Bool)

(declare-fun c!946682 () Bool)

(assert (=> b!5427183 (= c!946682 e!3363089)))

(declare-fun res!2309598 () Bool)

(assert (=> b!5427183 (=> (not res!2309598) (not e!3363089))))

(assert (=> b!5427183 (= res!2309598 ((_ is Concat!24062) (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343)))))))))))

(declare-fun e!3363091 () (InoxSet Context!9202))

(assert (=> b!5427183 (= e!3363091 e!3363087)))

(declare-fun b!5427184 () Bool)

(declare-fun call!388420 () (InoxSet Context!9202))

(assert (=> b!5427184 (= e!3363091 ((_ map or) call!388424 call!388420))))

(declare-fun bm!388416 () Bool)

(assert (=> bm!388416 (= call!388421 call!388420)))

(declare-fun bm!388417 () Bool)

(declare-fun call!388422 () List!61951)

(assert (=> bm!388417 (= call!388422 ($colon$colon!1512 (exprs!5101 (ite (or c!946474 c!946478) lt!2213352 (Context!9203 call!388334))) (ite (or c!946682 c!946679) (regTwo!30946 (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343)))))))) (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343))))))))))))

(declare-fun c!946678 () Bool)

(declare-fun bm!388418 () Bool)

(assert (=> bm!388418 (= call!388424 (derivationStepZipperDown!665 (ite c!946678 (regOne!30947 (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343)))))))) (regOne!30946 (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343))))))))) (ite c!946678 (ite (or c!946474 c!946478) lt!2213352 (Context!9203 call!388334)) (Context!9203 call!388422)) (h!68274 s!2326)))))

(declare-fun d!1730686 () Bool)

(declare-fun c!946680 () Bool)

(assert (=> d!1730686 (= c!946680 (and ((_ is ElementMatch!15217) (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343)))))))) (= (c!946431 (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343)))))))) (h!68274 s!2326))))))

(assert (=> d!1730686 (= (derivationStepZipperDown!665 (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343))))))) (ite (or c!946474 c!946478) lt!2213352 (Context!9203 call!388334)) (h!68274 s!2326)) e!3363092)))

(declare-fun b!5427179 () Bool)

(assert (=> b!5427179 (= e!3363092 e!3363091)))

(assert (=> b!5427179 (= c!946678 ((_ is Union!15217) (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343)))))))))))

(declare-fun b!5427185 () Bool)

(assert (=> b!5427185 (= e!3363090 call!388425)))

(declare-fun b!5427186 () Bool)

(declare-fun e!3363088 () (InoxSet Context!9202))

(assert (=> b!5427186 (= e!3363088 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5427187 () Bool)

(assert (=> b!5427187 (= e!3363088 call!388425)))

(declare-fun bm!388419 () Bool)

(declare-fun call!388423 () List!61951)

(assert (=> bm!388419 (= call!388420 (derivationStepZipperDown!665 (ite c!946678 (regTwo!30947 (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343)))))))) (ite c!946682 (regTwo!30946 (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343)))))))) (ite c!946679 (regOne!30946 (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343)))))))) (reg!15546 (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343))))))))))) (ite (or c!946678 c!946682) (ite (or c!946474 c!946478) lt!2213352 (Context!9203 call!388334)) (Context!9203 call!388423)) (h!68274 s!2326)))))

(declare-fun bm!388420 () Bool)

(assert (=> bm!388420 (= call!388423 call!388422)))

(declare-fun c!946681 () Bool)

(declare-fun b!5427188 () Bool)

(assert (=> b!5427188 (= c!946681 ((_ is Star!15217) (ite c!946474 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946478 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946475 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343)))))))))))

(assert (=> b!5427188 (= e!3363090 e!3363088)))

(assert (= (and d!1730686 c!946680) b!5427178))

(assert (= (and d!1730686 (not c!946680)) b!5427179))

(assert (= (and b!5427179 c!946678) b!5427184))

(assert (= (and b!5427179 (not c!946678)) b!5427183))

(assert (= (and b!5427183 res!2309598) b!5427180))

(assert (= (and b!5427183 c!946682) b!5427182))

(assert (= (and b!5427183 (not c!946682)) b!5427181))

(assert (= (and b!5427181 c!946679) b!5427185))

(assert (= (and b!5427181 (not c!946679)) b!5427188))

(assert (= (and b!5427188 c!946681) b!5427187))

(assert (= (and b!5427188 (not c!946681)) b!5427186))

(assert (= (or b!5427185 b!5427187) bm!388420))

(assert (= (or b!5427185 b!5427187) bm!388415))

(assert (= (or b!5427182 bm!388420) bm!388417))

(assert (= (or b!5427182 bm!388415) bm!388416))

(assert (= (or b!5427184 bm!388416) bm!388419))

(assert (= (or b!5427184 b!5427182) bm!388418))

(declare-fun m!6450890 () Bool)

(assert (=> bm!388417 m!6450890))

(declare-fun m!6450892 () Bool)

(assert (=> b!5427178 m!6450892))

(declare-fun m!6450894 () Bool)

(assert (=> bm!388419 m!6450894))

(declare-fun m!6450896 () Bool)

(assert (=> bm!388418 m!6450896))

(declare-fun m!6450898 () Bool)

(assert (=> b!5427180 m!6450898))

(assert (=> bm!388330 d!1730686))

(declare-fun d!1730692 () Bool)

(declare-fun lambda!284675 () Int)

(declare-fun exists!2023 ((InoxSet Context!9202) Int) Bool)

(assert (=> d!1730692 (= (nullableZipper!1462 z!1189) (exists!2023 z!1189 lambda!284675))))

(declare-fun bs!1253595 () Bool)

(assert (= bs!1253595 d!1730692))

(declare-fun m!6450910 () Bool)

(assert (=> bs!1253595 m!6450910))

(assert (=> b!5426765 d!1730692))

(declare-fun b!5427200 () Bool)

(declare-fun e!3363104 () Bool)

(assert (=> b!5427200 (= e!3363104 (nullable!5386 (regTwo!30946 r!7292)))))

(declare-fun bm!388427 () Bool)

(declare-fun call!388432 () Bool)

(assert (=> bm!388427 (= call!388432 (isEmpty!33827 (_2!35719 (get!21326 lt!2213443))))))

(declare-fun b!5427201 () Bool)

(declare-fun res!2309607 () Bool)

(declare-fun e!3363105 () Bool)

(assert (=> b!5427201 (=> res!2309607 e!3363105)))

(assert (=> b!5427201 (= res!2309607 (not (isEmpty!33827 (tail!10738 (_2!35719 (get!21326 lt!2213443))))))))

(declare-fun b!5427202 () Bool)

(declare-fun e!3363099 () Bool)

(declare-fun lt!2213457 () Bool)

(assert (=> b!5427202 (= e!3363099 (not lt!2213457))))

(declare-fun b!5427203 () Bool)

(declare-fun e!3363102 () Bool)

(assert (=> b!5427203 (= e!3363102 e!3363099)))

(declare-fun c!946690 () Bool)

(assert (=> b!5427203 (= c!946690 ((_ is EmptyLang!15217) (regTwo!30946 r!7292)))))

(declare-fun b!5427204 () Bool)

(declare-fun e!3363101 () Bool)

(assert (=> b!5427204 (= e!3363101 e!3363105)))

(declare-fun res!2309602 () Bool)

(assert (=> b!5427204 (=> res!2309602 e!3363105)))

(assert (=> b!5427204 (= res!2309602 call!388432)))

(declare-fun b!5427205 () Bool)

(declare-fun res!2309605 () Bool)

(declare-fun e!3363103 () Bool)

(assert (=> b!5427205 (=> res!2309605 e!3363103)))

(assert (=> b!5427205 (= res!2309605 (not ((_ is ElementMatch!15217) (regTwo!30946 r!7292))))))

(assert (=> b!5427205 (= e!3363099 e!3363103)))

(declare-fun b!5427206 () Bool)

(declare-fun res!2309604 () Bool)

(declare-fun e!3363100 () Bool)

(assert (=> b!5427206 (=> (not res!2309604) (not e!3363100))))

(assert (=> b!5427206 (= res!2309604 (isEmpty!33827 (tail!10738 (_2!35719 (get!21326 lt!2213443)))))))

(declare-fun b!5427207 () Bool)

(assert (=> b!5427207 (= e!3363104 (matchR!7402 (derivativeStep!4283 (regTwo!30946 r!7292) (head!11641 (_2!35719 (get!21326 lt!2213443)))) (tail!10738 (_2!35719 (get!21326 lt!2213443)))))))

(declare-fun d!1730696 () Bool)

(assert (=> d!1730696 e!3363102))

(declare-fun c!946692 () Bool)

(assert (=> d!1730696 (= c!946692 ((_ is EmptyExpr!15217) (regTwo!30946 r!7292)))))

(assert (=> d!1730696 (= lt!2213457 e!3363104)))

(declare-fun c!946691 () Bool)

(assert (=> d!1730696 (= c!946691 (isEmpty!33827 (_2!35719 (get!21326 lt!2213443))))))

(assert (=> d!1730696 (validRegex!6953 (regTwo!30946 r!7292))))

(assert (=> d!1730696 (= (matchR!7402 (regTwo!30946 r!7292) (_2!35719 (get!21326 lt!2213443))) lt!2213457)))

(declare-fun b!5427208 () Bool)

(assert (=> b!5427208 (= e!3363102 (= lt!2213457 call!388432))))

(declare-fun b!5427209 () Bool)

(assert (=> b!5427209 (= e!3363103 e!3363101)))

(declare-fun res!2309603 () Bool)

(assert (=> b!5427209 (=> (not res!2309603) (not e!3363101))))

(assert (=> b!5427209 (= res!2309603 (not lt!2213457))))

(declare-fun b!5427210 () Bool)

(assert (=> b!5427210 (= e!3363100 (= (head!11641 (_2!35719 (get!21326 lt!2213443))) (c!946431 (regTwo!30946 r!7292))))))

(declare-fun b!5427211 () Bool)

(assert (=> b!5427211 (= e!3363105 (not (= (head!11641 (_2!35719 (get!21326 lt!2213443))) (c!946431 (regTwo!30946 r!7292)))))))

(declare-fun b!5427212 () Bool)

(declare-fun res!2309600 () Bool)

(assert (=> b!5427212 (=> res!2309600 e!3363103)))

(assert (=> b!5427212 (= res!2309600 e!3363100)))

(declare-fun res!2309601 () Bool)

(assert (=> b!5427212 (=> (not res!2309601) (not e!3363100))))

(assert (=> b!5427212 (= res!2309601 lt!2213457)))

(declare-fun b!5427213 () Bool)

(declare-fun res!2309606 () Bool)

(assert (=> b!5427213 (=> (not res!2309606) (not e!3363100))))

(assert (=> b!5427213 (= res!2309606 (not call!388432))))

(assert (= (and d!1730696 c!946691) b!5427200))

(assert (= (and d!1730696 (not c!946691)) b!5427207))

(assert (= (and d!1730696 c!946692) b!5427208))

(assert (= (and d!1730696 (not c!946692)) b!5427203))

(assert (= (and b!5427203 c!946690) b!5427202))

(assert (= (and b!5427203 (not c!946690)) b!5427205))

(assert (= (and b!5427205 (not res!2309605)) b!5427212))

(assert (= (and b!5427212 res!2309601) b!5427213))

(assert (= (and b!5427213 res!2309606) b!5427206))

(assert (= (and b!5427206 res!2309604) b!5427210))

(assert (= (and b!5427212 (not res!2309600)) b!5427209))

(assert (= (and b!5427209 res!2309603) b!5427204))

(assert (= (and b!5427204 (not res!2309602)) b!5427201))

(assert (= (and b!5427201 (not res!2309607)) b!5427211))

(assert (= (or b!5427208 b!5427204 b!5427213) bm!388427))

(declare-fun m!6450912 () Bool)

(assert (=> d!1730696 m!6450912))

(declare-fun m!6450914 () Bool)

(assert (=> d!1730696 m!6450914))

(declare-fun m!6450916 () Bool)

(assert (=> b!5427206 m!6450916))

(assert (=> b!5427206 m!6450916))

(declare-fun m!6450918 () Bool)

(assert (=> b!5427206 m!6450918))

(declare-fun m!6450920 () Bool)

(assert (=> b!5427200 m!6450920))

(declare-fun m!6450922 () Bool)

(assert (=> b!5427207 m!6450922))

(assert (=> b!5427207 m!6450922))

(declare-fun m!6450924 () Bool)

(assert (=> b!5427207 m!6450924))

(assert (=> b!5427207 m!6450916))

(assert (=> b!5427207 m!6450924))

(assert (=> b!5427207 m!6450916))

(declare-fun m!6450926 () Bool)

(assert (=> b!5427207 m!6450926))

(assert (=> bm!388427 m!6450912))

(assert (=> b!5427211 m!6450922))

(assert (=> b!5427201 m!6450916))

(assert (=> b!5427201 m!6450916))

(assert (=> b!5427201 m!6450918))

(assert (=> b!5427210 m!6450922))

(assert (=> b!5427051 d!1730696))

(declare-fun d!1730698 () Bool)

(assert (=> d!1730698 (= (get!21326 lt!2213443) (v!51356 lt!2213443))))

(assert (=> b!5427051 d!1730698))

(assert (=> d!1730396 d!1730430))

(declare-fun d!1730700 () Bool)

(assert (=> d!1730700 (= (flatMap!944 z!1189 lambda!284592) (dynLambda!24362 lambda!284592 (h!68276 zl!343)))))

(assert (=> d!1730700 true))

(declare-fun _$13!1946 () Unit!154390)

(assert (=> d!1730700 (= (choose!41150 z!1189 (h!68276 zl!343) lambda!284592) _$13!1946)))

(declare-fun b_lambda!207087 () Bool)

(assert (=> (not b_lambda!207087) (not d!1730700)))

(declare-fun bs!1253596 () Bool)

(assert (= bs!1253596 d!1730700))

(assert (=> bs!1253596 m!6450106))

(assert (=> bs!1253596 m!6450200))

(assert (=> d!1730396 d!1730700))

(declare-fun bs!1253597 () Bool)

(declare-fun d!1730702 () Bool)

(assert (= bs!1253597 (and d!1730702 d!1730602)))

(declare-fun lambda!284676 () Int)

(assert (=> bs!1253597 (= lambda!284676 lambda!284652)))

(declare-fun bs!1253598 () Bool)

(assert (= bs!1253598 (and d!1730702 d!1730586)))

(assert (=> bs!1253598 (= lambda!284676 lambda!284646)))

(declare-fun bs!1253599 () Bool)

(assert (= bs!1253599 (and d!1730702 b!5426260)))

(assert (=> bs!1253599 (= lambda!284676 lambda!284593)))

(declare-fun bs!1253600 () Bool)

(assert (= bs!1253600 (and d!1730702 d!1730600)))

(assert (=> bs!1253600 (= lambda!284676 lambda!284649)))

(declare-fun bs!1253601 () Bool)

(assert (= bs!1253601 (and d!1730702 d!1730650)))

(assert (=> bs!1253601 (= lambda!284676 lambda!284668)))

(declare-fun bs!1253602 () Bool)

(assert (= bs!1253602 (and d!1730702 d!1730454)))

(assert (=> bs!1253602 (= lambda!284676 lambda!284608)))

(declare-fun bs!1253603 () Bool)

(assert (= bs!1253603 (and d!1730702 d!1730580)))

(assert (=> bs!1253603 (= lambda!284676 lambda!284642)))

(declare-fun bs!1253604 () Bool)

(assert (= bs!1253604 (and d!1730702 d!1730648)))

(assert (=> bs!1253604 (= lambda!284676 lambda!284666)))

(declare-fun e!3363106 () Bool)

(assert (=> d!1730702 e!3363106))

(declare-fun res!2309609 () Bool)

(assert (=> d!1730702 (=> (not res!2309609) (not e!3363106))))

(declare-fun lt!2213458 () Regex!15217)

(assert (=> d!1730702 (= res!2309609 (validRegex!6953 lt!2213458))))

(declare-fun e!3363109 () Regex!15217)

(assert (=> d!1730702 (= lt!2213458 e!3363109)))

(declare-fun c!946695 () Bool)

(declare-fun e!3363108 () Bool)

(assert (=> d!1730702 (= c!946695 e!3363108)))

(declare-fun res!2309608 () Bool)

(assert (=> d!1730702 (=> (not res!2309608) (not e!3363108))))

(assert (=> d!1730702 (= res!2309608 ((_ is Cons!61827) (t!375174 (exprs!5101 (h!68276 zl!343)))))))

(assert (=> d!1730702 (forall!14555 (t!375174 (exprs!5101 (h!68276 zl!343))) lambda!284676)))

(assert (=> d!1730702 (= (generalisedConcat!886 (t!375174 (exprs!5101 (h!68276 zl!343)))) lt!2213458)))

(declare-fun b!5427214 () Bool)

(declare-fun e!3363107 () Bool)

(declare-fun e!3363110 () Bool)

(assert (=> b!5427214 (= e!3363107 e!3363110)))

(declare-fun c!946696 () Bool)

(assert (=> b!5427214 (= c!946696 (isEmpty!33825 (tail!10739 (t!375174 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun b!5427215 () Bool)

(declare-fun e!3363111 () Regex!15217)

(assert (=> b!5427215 (= e!3363111 EmptyExpr!15217)))

(declare-fun b!5427216 () Bool)

(assert (=> b!5427216 (= e!3363108 (isEmpty!33825 (t!375174 (t!375174 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun b!5427217 () Bool)

(assert (=> b!5427217 (= e!3363110 (= lt!2213458 (head!11642 (t!375174 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun b!5427218 () Bool)

(assert (=> b!5427218 (= e!3363106 e!3363107)))

(declare-fun c!946694 () Bool)

(assert (=> b!5427218 (= c!946694 (isEmpty!33825 (t!375174 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5427219 () Bool)

(assert (=> b!5427219 (= e!3363107 (isEmptyExpr!994 lt!2213458))))

(declare-fun b!5427220 () Bool)

(assert (=> b!5427220 (= e!3363111 (Concat!24062 (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343)))) (generalisedConcat!886 (t!375174 (t!375174 (exprs!5101 (h!68276 zl!343)))))))))

(declare-fun b!5427221 () Bool)

(assert (=> b!5427221 (= e!3363109 (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5427222 () Bool)

(assert (=> b!5427222 (= e!3363110 (isConcat!517 lt!2213458))))

(declare-fun b!5427223 () Bool)

(assert (=> b!5427223 (= e!3363109 e!3363111)))

(declare-fun c!946693 () Bool)

(assert (=> b!5427223 (= c!946693 ((_ is Cons!61827) (t!375174 (exprs!5101 (h!68276 zl!343)))))))

(assert (= (and d!1730702 res!2309608) b!5427216))

(assert (= (and d!1730702 c!946695) b!5427221))

(assert (= (and d!1730702 (not c!946695)) b!5427223))

(assert (= (and b!5427223 c!946693) b!5427220))

(assert (= (and b!5427223 (not c!946693)) b!5427215))

(assert (= (and d!1730702 res!2309609) b!5427218))

(assert (= (and b!5427218 c!946694) b!5427219))

(assert (= (and b!5427218 (not c!946694)) b!5427214))

(assert (= (and b!5427214 c!946696) b!5427217))

(assert (= (and b!5427214 (not c!946696)) b!5427222))

(declare-fun m!6450928 () Bool)

(assert (=> b!5427222 m!6450928))

(declare-fun m!6450930 () Bool)

(assert (=> b!5427217 m!6450930))

(assert (=> b!5427218 m!6450138))

(declare-fun m!6450932 () Bool)

(assert (=> d!1730702 m!6450932))

(declare-fun m!6450934 () Bool)

(assert (=> d!1730702 m!6450934))

(declare-fun m!6450936 () Bool)

(assert (=> b!5427214 m!6450936))

(assert (=> b!5427214 m!6450936))

(declare-fun m!6450938 () Bool)

(assert (=> b!5427214 m!6450938))

(declare-fun m!6450940 () Bool)

(assert (=> b!5427220 m!6450940))

(declare-fun m!6450942 () Bool)

(assert (=> b!5427216 m!6450942))

(declare-fun m!6450944 () Bool)

(assert (=> b!5427219 m!6450944))

(assert (=> b!5426985 d!1730702))

(declare-fun b!5427238 () Bool)

(declare-fun e!3363124 () (InoxSet Context!9202))

(declare-fun call!388433 () (InoxSet Context!9202))

(assert (=> b!5427238 (= e!3363124 call!388433)))

(declare-fun b!5427239 () Bool)

(declare-fun e!3363125 () (InoxSet Context!9202))

(assert (=> b!5427239 (= e!3363125 e!3363124)))

(declare-fun c!946700 () Bool)

(assert (=> b!5427239 (= c!946700 ((_ is Cons!61827) (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213352))))))))

(declare-fun d!1730704 () Bool)

(declare-fun c!946699 () Bool)

(declare-fun e!3363126 () Bool)

(assert (=> d!1730704 (= c!946699 e!3363126)))

(declare-fun res!2309620 () Bool)

(assert (=> d!1730704 (=> (not res!2309620) (not e!3363126))))

(assert (=> d!1730704 (= res!2309620 ((_ is Cons!61827) (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213352))))))))

(assert (=> d!1730704 (= (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 lt!2213352))) (h!68274 s!2326)) e!3363125)))

(declare-fun b!5427240 () Bool)

(assert (=> b!5427240 (= e!3363125 ((_ map or) call!388433 (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213352)))))) (h!68274 s!2326))))))

(declare-fun b!5427241 () Bool)

(assert (=> b!5427241 (= e!3363126 (nullable!5386 (h!68275 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213352)))))))))

(declare-fun b!5427242 () Bool)

(assert (=> b!5427242 (= e!3363124 ((as const (Array Context!9202 Bool)) false))))

(declare-fun bm!388428 () Bool)

(assert (=> bm!388428 (= call!388433 (derivationStepZipperDown!665 (h!68275 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213352))))) (Context!9203 (t!375174 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213352)))))) (h!68274 s!2326)))))

(assert (= (and d!1730704 res!2309620) b!5427241))

(assert (= (and d!1730704 c!946699) b!5427240))

(assert (= (and d!1730704 (not c!946699)) b!5427239))

(assert (= (and b!5427239 c!946700) b!5427238))

(assert (= (and b!5427239 (not c!946700)) b!5427242))

(assert (= (or b!5427240 b!5427238) bm!388428))

(declare-fun m!6450946 () Bool)

(assert (=> b!5427240 m!6450946))

(declare-fun m!6450948 () Bool)

(assert (=> b!5427241 m!6450948))

(declare-fun m!6450950 () Bool)

(assert (=> bm!388428 m!6450950))

(assert (=> b!5426323 d!1730704))

(declare-fun b!5427243 () Bool)

(declare-fun e!3363127 () (InoxSet Context!9202))

(declare-fun call!388436 () (InoxSet Context!9202))

(assert (=> b!5427243 (= e!3363127 call!388436)))

(declare-fun b!5427244 () Bool)

(declare-fun e!3363128 () (InoxSet Context!9202))

(assert (=> b!5427244 (= e!3363128 e!3363127)))

(declare-fun c!946702 () Bool)

(assert (=> b!5427244 (= c!946702 ((_ is Cons!61827) (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))))))))

(declare-fun d!1730706 () Bool)

(declare-fun c!946701 () Bool)

(declare-fun e!3363129 () Bool)

(assert (=> d!1730706 (= c!946701 e!3363129)))

(declare-fun res!2309621 () Bool)

(assert (=> d!1730706 (=> (not res!2309621) (not e!3363129))))

(assert (=> d!1730706 (= res!2309621 ((_ is Cons!61827) (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))))))))

(assert (=> d!1730706 (= (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (h!68274 s!2326)) e!3363128)))

(declare-fun b!5427245 () Bool)

(assert (=> b!5427245 (= e!3363128 ((_ map or) call!388436 (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))))))) (h!68274 s!2326))))))

(declare-fun b!5427246 () Bool)

(assert (=> b!5427246 (= e!3363129 (nullable!5386 (h!68275 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))))))))))

(declare-fun b!5427247 () Bool)

(assert (=> b!5427247 (= e!3363127 ((as const (Array Context!9202 Bool)) false))))

(declare-fun bm!388431 () Bool)

(assert (=> bm!388431 (= call!388436 (derivationStepZipperDown!665 (h!68275 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))))) (Context!9203 (t!375174 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))))))) (h!68274 s!2326)))))

(assert (= (and d!1730706 res!2309621) b!5427246))

(assert (= (and d!1730706 c!946701) b!5427245))

(assert (= (and d!1730706 (not c!946701)) b!5427244))

(assert (= (and b!5427244 c!946702) b!5427243))

(assert (= (and b!5427244 (not c!946702)) b!5427247))

(assert (= (or b!5427245 b!5427243) bm!388431))

(declare-fun m!6450952 () Bool)

(assert (=> b!5427245 m!6450952))

(declare-fun m!6450954 () Bool)

(assert (=> b!5427246 m!6450954))

(declare-fun m!6450956 () Bool)

(assert (=> bm!388431 m!6450956))

(assert (=> b!5426318 d!1730706))

(declare-fun d!1730708 () Bool)

(assert (=> d!1730708 true))

(declare-fun setRes!35390 () Bool)

(assert (=> d!1730708 setRes!35390))

(declare-fun condSetEmpty!35390 () Bool)

(declare-fun res!2309624 () (InoxSet Context!9202))

(assert (=> d!1730708 (= condSetEmpty!35390 (= res!2309624 ((as const (Array Context!9202 Bool)) false)))))

(assert (=> d!1730708 (= (choose!41152 lt!2213337 lambda!284592) res!2309624)))

(declare-fun setIsEmpty!35390 () Bool)

(assert (=> setIsEmpty!35390 setRes!35390))

(declare-fun setNonEmpty!35390 () Bool)

(declare-fun setElem!35390 () Context!9202)

(declare-fun e!3363132 () Bool)

(declare-fun tp!1497619 () Bool)

(assert (=> setNonEmpty!35390 (= setRes!35390 (and tp!1497619 (inv!81289 setElem!35390) e!3363132))))

(declare-fun setRest!35390 () (InoxSet Context!9202))

(assert (=> setNonEmpty!35390 (= res!2309624 ((_ map or) (store ((as const (Array Context!9202 Bool)) false) setElem!35390 true) setRest!35390))))

(declare-fun b!5427250 () Bool)

(declare-fun tp!1497618 () Bool)

(assert (=> b!5427250 (= e!3363132 tp!1497618)))

(assert (= (and d!1730708 condSetEmpty!35390) setIsEmpty!35390))

(assert (= (and d!1730708 (not condSetEmpty!35390)) setNonEmpty!35390))

(assert (= setNonEmpty!35390 b!5427250))

(declare-fun m!6450958 () Bool)

(assert (=> setNonEmpty!35390 m!6450958))

(assert (=> d!1730526 d!1730708))

(declare-fun d!1730710 () Bool)

(assert (=> d!1730710 (= ($colon$colon!1512 (exprs!5101 lt!2213352) (ite (or c!946478 c!946475) (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (h!68275 (exprs!5101 (h!68276 zl!343))))) (Cons!61827 (ite (or c!946478 c!946475) (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (h!68275 (exprs!5101 (h!68276 zl!343)))) (exprs!5101 lt!2213352)))))

(assert (=> bm!388328 d!1730710))

(declare-fun d!1730712 () Bool)

(assert (=> d!1730712 (= (isEmpty!33825 (tail!10739 (unfocusZipperList!659 zl!343))) ((_ is Nil!61827) (tail!10739 (unfocusZipperList!659 zl!343))))))

(assert (=> b!5427018 d!1730712))

(declare-fun d!1730714 () Bool)

(assert (=> d!1730714 (= (tail!10739 (unfocusZipperList!659 zl!343)) (t!375174 (unfocusZipperList!659 zl!343)))))

(assert (=> b!5427018 d!1730714))

(assert (=> b!5426773 d!1730668))

(assert (=> b!5426773 d!1730670))

(declare-fun b!5427251 () Bool)

(declare-fun e!3363133 () Bool)

(declare-fun call!388439 () Bool)

(assert (=> b!5427251 (= e!3363133 call!388439)))

(declare-fun b!5427252 () Bool)

(declare-fun e!3363139 () Bool)

(declare-fun call!388441 () Bool)

(assert (=> b!5427252 (= e!3363139 call!388441)))

(declare-fun d!1730716 () Bool)

(declare-fun res!2309628 () Bool)

(declare-fun e!3363138 () Bool)

(assert (=> d!1730716 (=> res!2309628 e!3363138)))

(assert (=> d!1730716 (= res!2309628 ((_ is ElementMatch!15217) (ite c!946613 (regTwo!30947 r!7292) (regTwo!30946 r!7292))))))

(assert (=> d!1730716 (= (validRegex!6953 (ite c!946613 (regTwo!30947 r!7292) (regTwo!30946 r!7292))) e!3363138)))

(declare-fun b!5427253 () Bool)

(declare-fun e!3363135 () Bool)

(declare-fun e!3363136 () Bool)

(assert (=> b!5427253 (= e!3363135 e!3363136)))

(declare-fun c!946704 () Bool)

(assert (=> b!5427253 (= c!946704 ((_ is Union!15217) (ite c!946613 (regTwo!30947 r!7292) (regTwo!30946 r!7292))))))

(declare-fun b!5427254 () Bool)

(declare-fun e!3363134 () Bool)

(assert (=> b!5427254 (= e!3363134 call!388441)))

(declare-fun b!5427255 () Bool)

(assert (=> b!5427255 (= e!3363138 e!3363135)))

(declare-fun c!946703 () Bool)

(assert (=> b!5427255 (= c!946703 ((_ is Star!15217) (ite c!946613 (regTwo!30947 r!7292) (regTwo!30946 r!7292))))))

(declare-fun bm!388434 () Bool)

(assert (=> bm!388434 (= call!388439 (validRegex!6953 (ite c!946703 (reg!15546 (ite c!946613 (regTwo!30947 r!7292) (regTwo!30946 r!7292))) (ite c!946704 (regOne!30947 (ite c!946613 (regTwo!30947 r!7292) (regTwo!30946 r!7292))) (regOne!30946 (ite c!946613 (regTwo!30947 r!7292) (regTwo!30946 r!7292)))))))))

(declare-fun b!5427256 () Bool)

(declare-fun res!2309626 () Bool)

(assert (=> b!5427256 (=> (not res!2309626) (not e!3363134))))

(declare-fun call!388440 () Bool)

(assert (=> b!5427256 (= res!2309626 call!388440)))

(assert (=> b!5427256 (= e!3363136 e!3363134)))

(declare-fun b!5427257 () Bool)

(declare-fun e!3363137 () Bool)

(assert (=> b!5427257 (= e!3363137 e!3363139)))

(declare-fun res!2309629 () Bool)

(assert (=> b!5427257 (=> (not res!2309629) (not e!3363139))))

(assert (=> b!5427257 (= res!2309629 call!388440)))

(declare-fun bm!388435 () Bool)

(assert (=> bm!388435 (= call!388440 call!388439)))

(declare-fun b!5427258 () Bool)

(declare-fun res!2309627 () Bool)

(assert (=> b!5427258 (=> res!2309627 e!3363137)))

(assert (=> b!5427258 (= res!2309627 (not ((_ is Concat!24062) (ite c!946613 (regTwo!30947 r!7292) (regTwo!30946 r!7292)))))))

(assert (=> b!5427258 (= e!3363136 e!3363137)))

(declare-fun bm!388436 () Bool)

(assert (=> bm!388436 (= call!388441 (validRegex!6953 (ite c!946704 (regTwo!30947 (ite c!946613 (regTwo!30947 r!7292) (regTwo!30946 r!7292))) (regTwo!30946 (ite c!946613 (regTwo!30947 r!7292) (regTwo!30946 r!7292))))))))

(declare-fun b!5427259 () Bool)

(assert (=> b!5427259 (= e!3363135 e!3363133)))

(declare-fun res!2309625 () Bool)

(assert (=> b!5427259 (= res!2309625 (not (nullable!5386 (reg!15546 (ite c!946613 (regTwo!30947 r!7292) (regTwo!30946 r!7292))))))))

(assert (=> b!5427259 (=> (not res!2309625) (not e!3363133))))

(assert (= (and d!1730716 (not res!2309628)) b!5427255))

(assert (= (and b!5427255 c!946703) b!5427259))

(assert (= (and b!5427255 (not c!946703)) b!5427253))

(assert (= (and b!5427259 res!2309625) b!5427251))

(assert (= (and b!5427253 c!946704) b!5427256))

(assert (= (and b!5427253 (not c!946704)) b!5427258))

(assert (= (and b!5427256 res!2309626) b!5427254))

(assert (= (and b!5427258 (not res!2309627)) b!5427257))

(assert (= (and b!5427257 res!2309629) b!5427252))

(assert (= (or b!5427254 b!5427252) bm!388436))

(assert (= (or b!5427256 b!5427257) bm!388435))

(assert (= (or b!5427251 bm!388435) bm!388434))

(declare-fun m!6450960 () Bool)

(assert (=> bm!388434 m!6450960))

(declare-fun m!6450962 () Bool)

(assert (=> bm!388436 m!6450962))

(declare-fun m!6450964 () Bool)

(assert (=> b!5427259 m!6450964))

(assert (=> bm!388397 d!1730716))

(assert (=> d!1730554 d!1730542))

(declare-fun d!1730718 () Bool)

(assert (=> d!1730718 (= (flatMap!944 lt!2213327 lambda!284592) (dynLambda!24362 lambda!284592 lt!2213330))))

(assert (=> d!1730718 true))

(declare-fun _$13!1947 () Unit!154390)

(assert (=> d!1730718 (= (choose!41150 lt!2213327 lt!2213330 lambda!284592) _$13!1947)))

(declare-fun b_lambda!207089 () Bool)

(assert (=> (not b_lambda!207089) (not d!1730718)))

(declare-fun bs!1253605 () Bool)

(assert (= bs!1253605 d!1730718))

(assert (=> bs!1253605 m!6450088))

(assert (=> bs!1253605 m!6450608))

(assert (=> d!1730554 d!1730718))

(declare-fun d!1730720 () Bool)

(assert (=> d!1730720 (= (head!11641 s!2326) (h!68274 s!2326))))

(assert (=> b!5426777 d!1730720))

(declare-fun d!1730722 () Bool)

(assert (=> d!1730722 (= (isDefined!12031 lt!2213443) (not (isEmpty!33829 lt!2213443)))))

(declare-fun bs!1253606 () Bool)

(assert (= bs!1253606 d!1730722))

(declare-fun m!6450966 () Bool)

(assert (=> bs!1253606 m!6450966))

(assert (=> b!5427050 d!1730722))

(declare-fun d!1730724 () Bool)

(assert (=> d!1730724 (= (nullable!5386 (h!68275 (exprs!5101 lt!2213334))) (nullableFct!1612 (h!68275 (exprs!5101 lt!2213334))))))

(declare-fun bs!1253607 () Bool)

(assert (= bs!1253607 d!1730724))

(declare-fun m!6450968 () Bool)

(assert (=> bs!1253607 m!6450968))

(assert (=> b!5426827 d!1730724))

(declare-fun b!5427267 () Bool)

(declare-fun e!3363146 () (InoxSet Context!9202))

(declare-fun call!388444 () (InoxSet Context!9202))

(assert (=> b!5427267 (= e!3363146 call!388444)))

(declare-fun b!5427268 () Bool)

(declare-fun e!3363147 () (InoxSet Context!9202))

(assert (=> b!5427268 (= e!3363147 e!3363146)))

(declare-fun c!946707 () Bool)

(assert (=> b!5427268 (= c!946707 ((_ is Cons!61827) (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343)))))))))

(declare-fun d!1730726 () Bool)

(declare-fun c!946706 () Bool)

(declare-fun e!3363148 () Bool)

(assert (=> d!1730726 (= c!946706 e!3363148)))

(declare-fun res!2309635 () Bool)

(assert (=> d!1730726 (=> (not res!2309635) (not e!3363148))))

(assert (=> d!1730726 (= res!2309635 ((_ is Cons!61827) (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343)))))))))

(assert (=> d!1730726 (= (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343)))) (h!68274 s!2326)) e!3363147)))

(declare-fun b!5427269 () Bool)

(assert (=> b!5427269 (= e!3363147 ((_ map or) call!388444 (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343))))))) (h!68274 s!2326))))))

(declare-fun b!5427270 () Bool)

(assert (=> b!5427270 (= e!3363148 (nullable!5386 (h!68275 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343))))))))))

(declare-fun b!5427271 () Bool)

(assert (=> b!5427271 (= e!3363146 ((as const (Array Context!9202 Bool)) false))))

(declare-fun bm!388439 () Bool)

(assert (=> bm!388439 (= call!388444 (derivationStepZipperDown!665 (h!68275 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343)))))) (Context!9203 (t!375174 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343))))))) (h!68274 s!2326)))))

(assert (= (and d!1730726 res!2309635) b!5427270))

(assert (= (and d!1730726 c!946706) b!5427269))

(assert (= (and d!1730726 (not c!946706)) b!5427268))

(assert (= (and b!5427268 c!946707) b!5427267))

(assert (= (and b!5427268 (not c!946707)) b!5427271))

(assert (= (or b!5427269 b!5427267) bm!388439))

(declare-fun m!6450970 () Bool)

(assert (=> b!5427269 m!6450970))

(declare-fun m!6450972 () Bool)

(assert (=> b!5427270 m!6450972))

(declare-fun m!6450976 () Bool)

(assert (=> bm!388439 m!6450976))

(assert (=> b!5426438 d!1730726))

(assert (=> bs!1253544 d!1730552))

(declare-fun b!5427272 () Bool)

(declare-fun e!3363154 () (InoxSet Context!9202))

(assert (=> b!5427272 (= e!3363154 (store ((as const (Array Context!9202 Bool)) false) (Context!9203 (t!375174 (exprs!5101 lt!2213330))) true))))

(declare-fun b!5427274 () Bool)

(declare-fun e!3363151 () Bool)

(assert (=> b!5427274 (= e!3363151 (nullable!5386 (regOne!30946 (h!68275 (exprs!5101 lt!2213330)))))))

(declare-fun bm!388440 () Bool)

(declare-fun call!388450 () (InoxSet Context!9202))

(declare-fun call!388446 () (InoxSet Context!9202))

(assert (=> bm!388440 (= call!388450 call!388446)))

(declare-fun b!5427275 () Bool)

(declare-fun e!3363149 () (InoxSet Context!9202))

(declare-fun e!3363152 () (InoxSet Context!9202))

(assert (=> b!5427275 (= e!3363149 e!3363152)))

(declare-fun c!946709 () Bool)

(assert (=> b!5427275 (= c!946709 ((_ is Concat!24062) (h!68275 (exprs!5101 lt!2213330))))))

(declare-fun b!5427276 () Bool)

(declare-fun call!388449 () (InoxSet Context!9202))

(assert (=> b!5427276 (= e!3363149 ((_ map or) call!388449 call!388446))))

(declare-fun b!5427277 () Bool)

(declare-fun c!946712 () Bool)

(assert (=> b!5427277 (= c!946712 e!3363151)))

(declare-fun res!2309636 () Bool)

(assert (=> b!5427277 (=> (not res!2309636) (not e!3363151))))

(assert (=> b!5427277 (= res!2309636 ((_ is Concat!24062) (h!68275 (exprs!5101 lt!2213330))))))

(declare-fun e!3363153 () (InoxSet Context!9202))

(assert (=> b!5427277 (= e!3363153 e!3363149)))

(declare-fun b!5427278 () Bool)

(declare-fun call!388445 () (InoxSet Context!9202))

(assert (=> b!5427278 (= e!3363153 ((_ map or) call!388449 call!388445))))

(declare-fun bm!388441 () Bool)

(assert (=> bm!388441 (= call!388446 call!388445)))

(declare-fun call!388447 () List!61951)

(declare-fun bm!388442 () Bool)

(assert (=> bm!388442 (= call!388447 ($colon$colon!1512 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213330)))) (ite (or c!946712 c!946709) (regTwo!30946 (h!68275 (exprs!5101 lt!2213330))) (h!68275 (exprs!5101 lt!2213330)))))))

(declare-fun bm!388443 () Bool)

(declare-fun c!946708 () Bool)

(assert (=> bm!388443 (= call!388449 (derivationStepZipperDown!665 (ite c!946708 (regOne!30947 (h!68275 (exprs!5101 lt!2213330))) (regOne!30946 (h!68275 (exprs!5101 lt!2213330)))) (ite c!946708 (Context!9203 (t!375174 (exprs!5101 lt!2213330))) (Context!9203 call!388447)) (h!68274 s!2326)))))

(declare-fun d!1730728 () Bool)

(declare-fun c!946710 () Bool)

(assert (=> d!1730728 (= c!946710 (and ((_ is ElementMatch!15217) (h!68275 (exprs!5101 lt!2213330))) (= (c!946431 (h!68275 (exprs!5101 lt!2213330))) (h!68274 s!2326))))))

(assert (=> d!1730728 (= (derivationStepZipperDown!665 (h!68275 (exprs!5101 lt!2213330)) (Context!9203 (t!375174 (exprs!5101 lt!2213330))) (h!68274 s!2326)) e!3363154)))

(declare-fun b!5427273 () Bool)

(assert (=> b!5427273 (= e!3363154 e!3363153)))

(assert (=> b!5427273 (= c!946708 ((_ is Union!15217) (h!68275 (exprs!5101 lt!2213330))))))

(declare-fun b!5427279 () Bool)

(assert (=> b!5427279 (= e!3363152 call!388450)))

(declare-fun b!5427280 () Bool)

(declare-fun e!3363150 () (InoxSet Context!9202))

(assert (=> b!5427280 (= e!3363150 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5427281 () Bool)

(assert (=> b!5427281 (= e!3363150 call!388450)))

(declare-fun call!388448 () List!61951)

(declare-fun bm!388444 () Bool)

(assert (=> bm!388444 (= call!388445 (derivationStepZipperDown!665 (ite c!946708 (regTwo!30947 (h!68275 (exprs!5101 lt!2213330))) (ite c!946712 (regTwo!30946 (h!68275 (exprs!5101 lt!2213330))) (ite c!946709 (regOne!30946 (h!68275 (exprs!5101 lt!2213330))) (reg!15546 (h!68275 (exprs!5101 lt!2213330)))))) (ite (or c!946708 c!946712) (Context!9203 (t!375174 (exprs!5101 lt!2213330))) (Context!9203 call!388448)) (h!68274 s!2326)))))

(declare-fun bm!388445 () Bool)

(assert (=> bm!388445 (= call!388448 call!388447)))

(declare-fun b!5427282 () Bool)

(declare-fun c!946711 () Bool)

(assert (=> b!5427282 (= c!946711 ((_ is Star!15217) (h!68275 (exprs!5101 lt!2213330))))))

(assert (=> b!5427282 (= e!3363152 e!3363150)))

(assert (= (and d!1730728 c!946710) b!5427272))

(assert (= (and d!1730728 (not c!946710)) b!5427273))

(assert (= (and b!5427273 c!946708) b!5427278))

(assert (= (and b!5427273 (not c!946708)) b!5427277))

(assert (= (and b!5427277 res!2309636) b!5427274))

(assert (= (and b!5427277 c!946712) b!5427276))

(assert (= (and b!5427277 (not c!946712)) b!5427275))

(assert (= (and b!5427275 c!946709) b!5427279))

(assert (= (and b!5427275 (not c!946709)) b!5427282))

(assert (= (and b!5427282 c!946711) b!5427281))

(assert (= (and b!5427282 (not c!946711)) b!5427280))

(assert (= (or b!5427279 b!5427281) bm!388445))

(assert (= (or b!5427279 b!5427281) bm!388440))

(assert (= (or b!5427276 bm!388445) bm!388442))

(assert (= (or b!5427276 bm!388440) bm!388441))

(assert (= (or b!5427278 bm!388441) bm!388444))

(assert (= (or b!5427278 b!5427276) bm!388443))

(declare-fun m!6450980 () Bool)

(assert (=> bm!388442 m!6450980))

(declare-fun m!6450982 () Bool)

(assert (=> b!5427272 m!6450982))

(declare-fun m!6450984 () Bool)

(assert (=> bm!388444 m!6450984))

(declare-fun m!6450986 () Bool)

(assert (=> bm!388443 m!6450986))

(declare-fun m!6450988 () Bool)

(assert (=> b!5427274 m!6450988))

(assert (=> bm!388385 d!1730728))

(declare-fun d!1730732 () Bool)

(assert (=> d!1730732 (= (Exists!2398 lambda!284660) (choose!41158 lambda!284660))))

(declare-fun bs!1253608 () Bool)

(assert (= bs!1253608 d!1730732))

(declare-fun m!6450990 () Bool)

(assert (=> bs!1253608 m!6450990))

(assert (=> d!1730614 d!1730732))

(declare-fun d!1730734 () Bool)

(assert (=> d!1730734 (= (Exists!2398 lambda!284661) (choose!41158 lambda!284661))))

(declare-fun bs!1253609 () Bool)

(assert (= bs!1253609 d!1730734))

(declare-fun m!6450992 () Bool)

(assert (=> bs!1253609 m!6450992))

(assert (=> d!1730614 d!1730734))

(declare-fun bs!1253612 () Bool)

(declare-fun d!1730736 () Bool)

(assert (= bs!1253612 (and d!1730736 d!1730608)))

(declare-fun lambda!284681 () Int)

(assert (=> bs!1253612 (= lambda!284681 lambda!284655)))

(declare-fun bs!1253613 () Bool)

(assert (= bs!1253613 (and d!1730736 b!5426785)))

(assert (=> bs!1253613 (not (= lambda!284681 lambda!284633))))

(declare-fun bs!1253614 () Bool)

(assert (= bs!1253614 (and d!1730736 b!5426653)))

(assert (=> bs!1253614 (not (= lambda!284681 lambda!284618))))

(declare-fun bs!1253615 () Bool)

(assert (= bs!1253615 (and d!1730736 b!5426269)))

(assert (=> bs!1253615 (not (= lambda!284681 lambda!284591))))

(assert (=> bs!1253615 (= lambda!284681 lambda!284590)))

(declare-fun bs!1253616 () Bool)

(assert (= bs!1253616 (and d!1730736 b!5426789)))

(assert (=> bs!1253616 (not (= lambda!284681 lambda!284632))))

(declare-fun bs!1253617 () Bool)

(assert (= bs!1253617 (and d!1730736 d!1730614)))

(assert (=> bs!1253617 (not (= lambda!284681 lambda!284661))))

(assert (=> bs!1253617 (= lambda!284681 lambda!284660)))

(declare-fun bs!1253618 () Bool)

(assert (= bs!1253618 (and d!1730736 b!5426649)))

(assert (=> bs!1253618 (not (= lambda!284681 lambda!284621))))

(assert (=> d!1730736 true))

(assert (=> d!1730736 true))

(assert (=> d!1730736 true))

(declare-fun lambda!284682 () Int)

(assert (=> bs!1253613 (= (and (= (regOne!30946 r!7292) (regOne!30946 lt!2213346)) (= (regTwo!30946 r!7292) (regTwo!30946 lt!2213346))) (= lambda!284682 lambda!284633))))

(assert (=> bs!1253614 (not (= lambda!284682 lambda!284618))))

(assert (=> bs!1253615 (= lambda!284682 lambda!284591)))

(assert (=> bs!1253615 (not (= lambda!284682 lambda!284590))))

(assert (=> bs!1253616 (not (= lambda!284682 lambda!284632))))

(assert (=> bs!1253617 (= lambda!284682 lambda!284661)))

(declare-fun bs!1253619 () Bool)

(assert (= bs!1253619 d!1730736))

(assert (=> bs!1253619 (not (= lambda!284682 lambda!284681))))

(assert (=> bs!1253612 (not (= lambda!284682 lambda!284655))))

(assert (=> bs!1253617 (not (= lambda!284682 lambda!284660))))

(assert (=> bs!1253618 (= lambda!284682 lambda!284621)))

(assert (=> d!1730736 true))

(assert (=> d!1730736 true))

(assert (=> d!1730736 true))

(assert (=> d!1730736 (= (Exists!2398 lambda!284681) (Exists!2398 lambda!284682))))

(assert (=> d!1730736 true))

(declare-fun _$90!1183 () Unit!154390)

(assert (=> d!1730736 (= (choose!41160 (regOne!30946 r!7292) (regTwo!30946 r!7292) s!2326) _$90!1183)))

(declare-fun m!6451018 () Bool)

(assert (=> bs!1253619 m!6451018))

(declare-fun m!6451020 () Bool)

(assert (=> bs!1253619 m!6451020))

(assert (=> d!1730614 d!1730736))

(declare-fun b!5427314 () Bool)

(declare-fun e!3363173 () Bool)

(declare-fun call!388455 () Bool)

(assert (=> b!5427314 (= e!3363173 call!388455)))

(declare-fun b!5427315 () Bool)

(declare-fun e!3363179 () Bool)

(declare-fun call!388457 () Bool)

(assert (=> b!5427315 (= e!3363179 call!388457)))

(declare-fun d!1730750 () Bool)

(declare-fun res!2309661 () Bool)

(declare-fun e!3363178 () Bool)

(assert (=> d!1730750 (=> res!2309661 e!3363178)))

(assert (=> d!1730750 (= res!2309661 ((_ is ElementMatch!15217) (regOne!30946 r!7292)))))

(assert (=> d!1730750 (= (validRegex!6953 (regOne!30946 r!7292)) e!3363178)))

(declare-fun b!5427316 () Bool)

(declare-fun e!3363175 () Bool)

(declare-fun e!3363176 () Bool)

(assert (=> b!5427316 (= e!3363175 e!3363176)))

(declare-fun c!946719 () Bool)

(assert (=> b!5427316 (= c!946719 ((_ is Union!15217) (regOne!30946 r!7292)))))

(declare-fun b!5427317 () Bool)

(declare-fun e!3363174 () Bool)

(assert (=> b!5427317 (= e!3363174 call!388457)))

(declare-fun b!5427318 () Bool)

(assert (=> b!5427318 (= e!3363178 e!3363175)))

(declare-fun c!946718 () Bool)

(assert (=> b!5427318 (= c!946718 ((_ is Star!15217) (regOne!30946 r!7292)))))

(declare-fun bm!388450 () Bool)

(assert (=> bm!388450 (= call!388455 (validRegex!6953 (ite c!946718 (reg!15546 (regOne!30946 r!7292)) (ite c!946719 (regOne!30947 (regOne!30946 r!7292)) (regOne!30946 (regOne!30946 r!7292))))))))

(declare-fun b!5427319 () Bool)

(declare-fun res!2309659 () Bool)

(assert (=> b!5427319 (=> (not res!2309659) (not e!3363174))))

(declare-fun call!388456 () Bool)

(assert (=> b!5427319 (= res!2309659 call!388456)))

(assert (=> b!5427319 (= e!3363176 e!3363174)))

(declare-fun b!5427320 () Bool)

(declare-fun e!3363177 () Bool)

(assert (=> b!5427320 (= e!3363177 e!3363179)))

(declare-fun res!2309662 () Bool)

(assert (=> b!5427320 (=> (not res!2309662) (not e!3363179))))

(assert (=> b!5427320 (= res!2309662 call!388456)))

(declare-fun bm!388451 () Bool)

(assert (=> bm!388451 (= call!388456 call!388455)))

(declare-fun b!5427321 () Bool)

(declare-fun res!2309660 () Bool)

(assert (=> b!5427321 (=> res!2309660 e!3363177)))

(assert (=> b!5427321 (= res!2309660 (not ((_ is Concat!24062) (regOne!30946 r!7292))))))

(assert (=> b!5427321 (= e!3363176 e!3363177)))

(declare-fun bm!388452 () Bool)

(assert (=> bm!388452 (= call!388457 (validRegex!6953 (ite c!946719 (regTwo!30947 (regOne!30946 r!7292)) (regTwo!30946 (regOne!30946 r!7292)))))))

(declare-fun b!5427322 () Bool)

(assert (=> b!5427322 (= e!3363175 e!3363173)))

(declare-fun res!2309658 () Bool)

(assert (=> b!5427322 (= res!2309658 (not (nullable!5386 (reg!15546 (regOne!30946 r!7292)))))))

(assert (=> b!5427322 (=> (not res!2309658) (not e!3363173))))

(assert (= (and d!1730750 (not res!2309661)) b!5427318))

(assert (= (and b!5427318 c!946718) b!5427322))

(assert (= (and b!5427318 (not c!946718)) b!5427316))

(assert (= (and b!5427322 res!2309658) b!5427314))

(assert (= (and b!5427316 c!946719) b!5427319))

(assert (= (and b!5427316 (not c!946719)) b!5427321))

(assert (= (and b!5427319 res!2309659) b!5427317))

(assert (= (and b!5427321 (not res!2309660)) b!5427320))

(assert (= (and b!5427320 res!2309662) b!5427315))

(assert (= (or b!5427317 b!5427315) bm!388452))

(assert (= (or b!5427319 b!5427320) bm!388451))

(assert (= (or b!5427314 bm!388451) bm!388450))

(declare-fun m!6451022 () Bool)

(assert (=> bm!388450 m!6451022))

(declare-fun m!6451024 () Bool)

(assert (=> bm!388452 m!6451024))

(declare-fun m!6451026 () Bool)

(assert (=> b!5427322 m!6451026))

(assert (=> d!1730614 d!1730750))

(declare-fun bs!1253620 () Bool)

(declare-fun d!1730752 () Bool)

(assert (= bs!1253620 (and d!1730752 d!1730602)))

(declare-fun lambda!284683 () Int)

(assert (=> bs!1253620 (= lambda!284683 lambda!284652)))

(declare-fun bs!1253621 () Bool)

(assert (= bs!1253621 (and d!1730752 d!1730586)))

(assert (=> bs!1253621 (= lambda!284683 lambda!284646)))

(declare-fun bs!1253622 () Bool)

(assert (= bs!1253622 (and d!1730752 d!1730702)))

(assert (=> bs!1253622 (= lambda!284683 lambda!284676)))

(declare-fun bs!1253623 () Bool)

(assert (= bs!1253623 (and d!1730752 b!5426260)))

(assert (=> bs!1253623 (= lambda!284683 lambda!284593)))

(declare-fun bs!1253624 () Bool)

(assert (= bs!1253624 (and d!1730752 d!1730600)))

(assert (=> bs!1253624 (= lambda!284683 lambda!284649)))

(declare-fun bs!1253625 () Bool)

(assert (= bs!1253625 (and d!1730752 d!1730650)))

(assert (=> bs!1253625 (= lambda!284683 lambda!284668)))

(declare-fun bs!1253626 () Bool)

(assert (= bs!1253626 (and d!1730752 d!1730454)))

(assert (=> bs!1253626 (= lambda!284683 lambda!284608)))

(declare-fun bs!1253627 () Bool)

(assert (= bs!1253627 (and d!1730752 d!1730580)))

(assert (=> bs!1253627 (= lambda!284683 lambda!284642)))

(declare-fun bs!1253628 () Bool)

(assert (= bs!1253628 (and d!1730752 d!1730648)))

(assert (=> bs!1253628 (= lambda!284683 lambda!284666)))

(declare-fun b!5427323 () Bool)

(declare-fun e!3363185 () Regex!15217)

(declare-fun e!3363180 () Regex!15217)

(assert (=> b!5427323 (= e!3363185 e!3363180)))

(declare-fun c!946720 () Bool)

(assert (=> b!5427323 (= c!946720 ((_ is Cons!61827) (t!375174 (unfocusZipperList!659 zl!343))))))

(declare-fun b!5427324 () Bool)

(declare-fun e!3363184 () Bool)

(declare-fun lt!2213460 () Regex!15217)

(assert (=> b!5427324 (= e!3363184 (isEmptyLang!1003 lt!2213460))))

(declare-fun b!5427325 () Bool)

(assert (=> b!5427325 (= e!3363185 (h!68275 (t!375174 (unfocusZipperList!659 zl!343))))))

(declare-fun b!5427326 () Bool)

(declare-fun e!3363183 () Bool)

(assert (=> b!5427326 (= e!3363183 (= lt!2213460 (head!11642 (t!375174 (unfocusZipperList!659 zl!343)))))))

(declare-fun b!5427327 () Bool)

(declare-fun e!3363181 () Bool)

(assert (=> b!5427327 (= e!3363181 e!3363184)))

(declare-fun c!946721 () Bool)

(assert (=> b!5427327 (= c!946721 (isEmpty!33825 (t!375174 (unfocusZipperList!659 zl!343))))))

(declare-fun b!5427328 () Bool)

(assert (=> b!5427328 (= e!3363180 (Union!15217 (h!68275 (t!375174 (unfocusZipperList!659 zl!343))) (generalisedUnion!1146 (t!375174 (t!375174 (unfocusZipperList!659 zl!343))))))))

(assert (=> d!1730752 e!3363181))

(declare-fun res!2309664 () Bool)

(assert (=> d!1730752 (=> (not res!2309664) (not e!3363181))))

(assert (=> d!1730752 (= res!2309664 (validRegex!6953 lt!2213460))))

(assert (=> d!1730752 (= lt!2213460 e!3363185)))

(declare-fun c!946722 () Bool)

(declare-fun e!3363182 () Bool)

(assert (=> d!1730752 (= c!946722 e!3363182)))

(declare-fun res!2309663 () Bool)

(assert (=> d!1730752 (=> (not res!2309663) (not e!3363182))))

(assert (=> d!1730752 (= res!2309663 ((_ is Cons!61827) (t!375174 (unfocusZipperList!659 zl!343))))))

(assert (=> d!1730752 (forall!14555 (t!375174 (unfocusZipperList!659 zl!343)) lambda!284683)))

(assert (=> d!1730752 (= (generalisedUnion!1146 (t!375174 (unfocusZipperList!659 zl!343))) lt!2213460)))

(declare-fun b!5427329 () Bool)

(assert (=> b!5427329 (= e!3363183 (isUnion!435 lt!2213460))))

(declare-fun b!5427330 () Bool)

(assert (=> b!5427330 (= e!3363180 EmptyLang!15217)))

(declare-fun b!5427331 () Bool)

(assert (=> b!5427331 (= e!3363182 (isEmpty!33825 (t!375174 (t!375174 (unfocusZipperList!659 zl!343)))))))

(declare-fun b!5427332 () Bool)

(assert (=> b!5427332 (= e!3363184 e!3363183)))

(declare-fun c!946723 () Bool)

(assert (=> b!5427332 (= c!946723 (isEmpty!33825 (tail!10739 (t!375174 (unfocusZipperList!659 zl!343)))))))

(assert (= (and d!1730752 res!2309663) b!5427331))

(assert (= (and d!1730752 c!946722) b!5427325))

(assert (= (and d!1730752 (not c!946722)) b!5427323))

(assert (= (and b!5427323 c!946720) b!5427328))

(assert (= (and b!5427323 (not c!946720)) b!5427330))

(assert (= (and d!1730752 res!2309664) b!5427327))

(assert (= (and b!5427327 c!946721) b!5427324))

(assert (= (and b!5427327 (not c!946721)) b!5427332))

(assert (= (and b!5427332 c!946723) b!5427326))

(assert (= (and b!5427332 (not c!946723)) b!5427329))

(declare-fun m!6451028 () Bool)

(assert (=> d!1730752 m!6451028))

(declare-fun m!6451030 () Bool)

(assert (=> d!1730752 m!6451030))

(declare-fun m!6451032 () Bool)

(assert (=> b!5427331 m!6451032))

(declare-fun m!6451034 () Bool)

(assert (=> b!5427328 m!6451034))

(assert (=> b!5427327 m!6450710))

(declare-fun m!6451036 () Bool)

(assert (=> b!5427326 m!6451036))

(declare-fun m!6451038 () Bool)

(assert (=> b!5427329 m!6451038))

(declare-fun m!6451040 () Bool)

(assert (=> b!5427324 m!6451040))

(declare-fun m!6451042 () Bool)

(assert (=> b!5427332 m!6451042))

(assert (=> b!5427332 m!6451042))

(declare-fun m!6451044 () Bool)

(assert (=> b!5427332 m!6451044))

(assert (=> b!5427014 d!1730752))

(declare-fun bs!1253629 () Bool)

(declare-fun d!1730754 () Bool)

(assert (= bs!1253629 (and d!1730754 d!1730602)))

(declare-fun lambda!284684 () Int)

(assert (=> bs!1253629 (= lambda!284684 lambda!284652)))

(declare-fun bs!1253630 () Bool)

(assert (= bs!1253630 (and d!1730754 d!1730586)))

(assert (=> bs!1253630 (= lambda!284684 lambda!284646)))

(declare-fun bs!1253631 () Bool)

(assert (= bs!1253631 (and d!1730754 d!1730702)))

(assert (=> bs!1253631 (= lambda!284684 lambda!284676)))

(declare-fun bs!1253632 () Bool)

(assert (= bs!1253632 (and d!1730754 d!1730752)))

(assert (=> bs!1253632 (= lambda!284684 lambda!284683)))

(declare-fun bs!1253633 () Bool)

(assert (= bs!1253633 (and d!1730754 b!5426260)))

(assert (=> bs!1253633 (= lambda!284684 lambda!284593)))

(declare-fun bs!1253634 () Bool)

(assert (= bs!1253634 (and d!1730754 d!1730600)))

(assert (=> bs!1253634 (= lambda!284684 lambda!284649)))

(declare-fun bs!1253635 () Bool)

(assert (= bs!1253635 (and d!1730754 d!1730650)))

(assert (=> bs!1253635 (= lambda!284684 lambda!284668)))

(declare-fun bs!1253636 () Bool)

(assert (= bs!1253636 (and d!1730754 d!1730454)))

(assert (=> bs!1253636 (= lambda!284684 lambda!284608)))

(declare-fun bs!1253637 () Bool)

(assert (= bs!1253637 (and d!1730754 d!1730580)))

(assert (=> bs!1253637 (= lambda!284684 lambda!284642)))

(declare-fun bs!1253638 () Bool)

(assert (= bs!1253638 (and d!1730754 d!1730648)))

(assert (=> bs!1253638 (= lambda!284684 lambda!284666)))

(assert (=> d!1730754 (= (inv!81289 setElem!35387) (forall!14555 (exprs!5101 setElem!35387) lambda!284684))))

(declare-fun bs!1253639 () Bool)

(assert (= bs!1253639 d!1730754))

(declare-fun m!6451046 () Bool)

(assert (=> bs!1253639 m!6451046))

(assert (=> setNonEmpty!35387 d!1730754))

(assert (=> bs!1253542 d!1730402))

(declare-fun d!1730756 () Bool)

(assert (=> d!1730756 (= (flatMap!944 lt!2213329 lambda!284599) (choose!41152 lt!2213329 lambda!284599))))

(declare-fun bs!1253640 () Bool)

(assert (= bs!1253640 d!1730756))

(declare-fun m!6451048 () Bool)

(assert (=> bs!1253640 m!6451048))

(assert (=> d!1730432 d!1730756))

(assert (=> b!5426981 d!1730524))

(declare-fun d!1730758 () Bool)

(declare-fun c!946731 () Bool)

(assert (=> d!1730758 (= c!946731 (isEmpty!33827 (tail!10738 s!2326)))))

(declare-fun e!3363193 () Bool)

(assert (=> d!1730758 (= (matchZipper!1461 (derivationStepZipper!1456 lt!2213337 (head!11641 s!2326)) (tail!10738 s!2326)) e!3363193)))

(declare-fun b!5427349 () Bool)

(assert (=> b!5427349 (= e!3363193 (nullableZipper!1462 (derivationStepZipper!1456 lt!2213337 (head!11641 s!2326))))))

(declare-fun b!5427350 () Bool)

(assert (=> b!5427350 (= e!3363193 (matchZipper!1461 (derivationStepZipper!1456 (derivationStepZipper!1456 lt!2213337 (head!11641 s!2326)) (head!11641 (tail!10738 s!2326))) (tail!10738 (tail!10738 s!2326))))))

(assert (= (and d!1730758 c!946731) b!5427349))

(assert (= (and d!1730758 (not c!946731)) b!5427350))

(assert (=> d!1730758 m!6450496))

(assert (=> d!1730758 m!6450498))

(assert (=> b!5427349 m!6450524))

(declare-fun m!6451050 () Bool)

(assert (=> b!5427349 m!6451050))

(assert (=> b!5427350 m!6450496))

(declare-fun m!6451052 () Bool)

(assert (=> b!5427350 m!6451052))

(assert (=> b!5427350 m!6450524))

(assert (=> b!5427350 m!6451052))

(declare-fun m!6451054 () Bool)

(assert (=> b!5427350 m!6451054))

(assert (=> b!5427350 m!6450496))

(declare-fun m!6451056 () Bool)

(assert (=> b!5427350 m!6451056))

(assert (=> b!5427350 m!6451054))

(assert (=> b!5427350 m!6451056))

(declare-fun m!6451058 () Bool)

(assert (=> b!5427350 m!6451058))

(assert (=> b!5426757 d!1730758))

(declare-fun bs!1253641 () Bool)

(declare-fun d!1730760 () Bool)

(assert (= bs!1253641 (and d!1730760 d!1730678)))

(declare-fun lambda!284685 () Int)

(assert (=> bs!1253641 (= (= (head!11641 s!2326) (head!11641 (t!375173 s!2326))) (= lambda!284685 lambda!284671))))

(declare-fun bs!1253642 () Bool)

(assert (= bs!1253642 (and d!1730760 d!1730660)))

(assert (=> bs!1253642 (= (= (head!11641 s!2326) (head!11641 (t!375173 s!2326))) (= lambda!284685 lambda!284669))))

(declare-fun bs!1253643 () Bool)

(assert (= bs!1253643 (and d!1730760 b!5426259)))

(assert (=> bs!1253643 (= (= (head!11641 s!2326) (h!68274 s!2326)) (= lambda!284685 lambda!284592))))

(declare-fun bs!1253644 () Bool)

(assert (= bs!1253644 (and d!1730760 d!1730532)))

(assert (=> bs!1253644 (= (= (head!11641 s!2326) (h!68274 s!2326)) (= lambda!284685 lambda!284631))))

(declare-fun bs!1253645 () Bool)

(assert (= bs!1253645 (and d!1730760 d!1730432)))

(assert (=> bs!1253645 (= (= (head!11641 s!2326) (h!68274 s!2326)) (= lambda!284685 lambda!284599))))

(assert (=> d!1730760 true))

(assert (=> d!1730760 (= (derivationStepZipper!1456 lt!2213337 (head!11641 s!2326)) (flatMap!944 lt!2213337 lambda!284685))))

(declare-fun bs!1253646 () Bool)

(assert (= bs!1253646 d!1730760))

(declare-fun m!6451060 () Bool)

(assert (=> bs!1253646 m!6451060))

(assert (=> b!5426757 d!1730760))

(assert (=> b!5426757 d!1730720))

(assert (=> b!5426757 d!1730670))

(declare-fun b!5427355 () Bool)

(declare-fun e!3363197 () Bool)

(declare-fun call!388460 () Bool)

(assert (=> b!5427355 (= e!3363197 call!388460)))

(declare-fun b!5427356 () Bool)

(declare-fun e!3363203 () Bool)

(declare-fun call!388462 () Bool)

(assert (=> b!5427356 (= e!3363203 call!388462)))

(declare-fun d!1730762 () Bool)

(declare-fun res!2309668 () Bool)

(declare-fun e!3363202 () Bool)

(assert (=> d!1730762 (=> res!2309668 e!3363202)))

(assert (=> d!1730762 (= res!2309668 ((_ is ElementMatch!15217) lt!2213425))))

(assert (=> d!1730762 (= (validRegex!6953 lt!2213425) e!3363202)))

(declare-fun b!5427357 () Bool)

(declare-fun e!3363199 () Bool)

(declare-fun e!3363200 () Bool)

(assert (=> b!5427357 (= e!3363199 e!3363200)))

(declare-fun c!946736 () Bool)

(assert (=> b!5427357 (= c!946736 ((_ is Union!15217) lt!2213425))))

(declare-fun b!5427358 () Bool)

(declare-fun e!3363198 () Bool)

(assert (=> b!5427358 (= e!3363198 call!388462)))

(declare-fun b!5427359 () Bool)

(assert (=> b!5427359 (= e!3363202 e!3363199)))

(declare-fun c!946735 () Bool)

(assert (=> b!5427359 (= c!946735 ((_ is Star!15217) lt!2213425))))

(declare-fun bm!388455 () Bool)

(assert (=> bm!388455 (= call!388460 (validRegex!6953 (ite c!946735 (reg!15546 lt!2213425) (ite c!946736 (regOne!30947 lt!2213425) (regOne!30946 lt!2213425)))))))

(declare-fun b!5427360 () Bool)

(declare-fun res!2309666 () Bool)

(assert (=> b!5427360 (=> (not res!2309666) (not e!3363198))))

(declare-fun call!388461 () Bool)

(assert (=> b!5427360 (= res!2309666 call!388461)))

(assert (=> b!5427360 (= e!3363200 e!3363198)))

(declare-fun b!5427361 () Bool)

(declare-fun e!3363201 () Bool)

(assert (=> b!5427361 (= e!3363201 e!3363203)))

(declare-fun res!2309669 () Bool)

(assert (=> b!5427361 (=> (not res!2309669) (not e!3363203))))

(assert (=> b!5427361 (= res!2309669 call!388461)))

(declare-fun bm!388456 () Bool)

(assert (=> bm!388456 (= call!388461 call!388460)))

(declare-fun b!5427362 () Bool)

(declare-fun res!2309667 () Bool)

(assert (=> b!5427362 (=> res!2309667 e!3363201)))

(assert (=> b!5427362 (= res!2309667 (not ((_ is Concat!24062) lt!2213425)))))

(assert (=> b!5427362 (= e!3363200 e!3363201)))

(declare-fun bm!388457 () Bool)

(assert (=> bm!388457 (= call!388462 (validRegex!6953 (ite c!946736 (regTwo!30947 lt!2213425) (regTwo!30946 lt!2213425))))))

(declare-fun b!5427363 () Bool)

(assert (=> b!5427363 (= e!3363199 e!3363197)))

(declare-fun res!2309665 () Bool)

(assert (=> b!5427363 (= res!2309665 (not (nullable!5386 (reg!15546 lt!2213425))))))

(assert (=> b!5427363 (=> (not res!2309665) (not e!3363197))))

(assert (= (and d!1730762 (not res!2309668)) b!5427359))

(assert (= (and b!5427359 c!946735) b!5427363))

(assert (= (and b!5427359 (not c!946735)) b!5427357))

(assert (= (and b!5427363 res!2309665) b!5427355))

(assert (= (and b!5427357 c!946736) b!5427360))

(assert (= (and b!5427357 (not c!946736)) b!5427362))

(assert (= (and b!5427360 res!2309666) b!5427358))

(assert (= (and b!5427362 (not res!2309667)) b!5427361))

(assert (= (and b!5427361 res!2309669) b!5427356))

(assert (= (or b!5427358 b!5427356) bm!388457))

(assert (= (or b!5427360 b!5427361) bm!388456))

(assert (= (or b!5427355 bm!388456) bm!388455))

(declare-fun m!6451062 () Bool)

(assert (=> bm!388455 m!6451062))

(declare-fun m!6451064 () Bool)

(assert (=> bm!388457 m!6451064))

(declare-fun m!6451066 () Bool)

(assert (=> b!5427363 m!6451066))

(assert (=> d!1730586 d!1730762))

(declare-fun d!1730764 () Bool)

(declare-fun res!2309670 () Bool)

(declare-fun e!3363204 () Bool)

(assert (=> d!1730764 (=> res!2309670 e!3363204)))

(assert (=> d!1730764 (= res!2309670 ((_ is Nil!61827) (exprs!5101 (h!68276 zl!343))))))

(assert (=> d!1730764 (= (forall!14555 (exprs!5101 (h!68276 zl!343)) lambda!284646) e!3363204)))

(declare-fun b!5427364 () Bool)

(declare-fun e!3363205 () Bool)

(assert (=> b!5427364 (= e!3363204 e!3363205)))

(declare-fun res!2309671 () Bool)

(assert (=> b!5427364 (=> (not res!2309671) (not e!3363205))))

(assert (=> b!5427364 (= res!2309671 (dynLambda!24363 lambda!284646 (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5427365 () Bool)

(assert (=> b!5427365 (= e!3363205 (forall!14555 (t!375174 (exprs!5101 (h!68276 zl!343))) lambda!284646))))

(assert (= (and d!1730764 (not res!2309670)) b!5427364))

(assert (= (and b!5427364 res!2309671) b!5427365))

(declare-fun b_lambda!207091 () Bool)

(assert (=> (not b_lambda!207091) (not b!5427364)))

(declare-fun m!6451068 () Bool)

(assert (=> b!5427364 m!6451068))

(declare-fun m!6451070 () Bool)

(assert (=> b!5427365 m!6451070))

(assert (=> d!1730586 d!1730764))

(assert (=> d!1730476 d!1730652))

(assert (=> d!1730476 d!1730562))

(declare-fun d!1730766 () Bool)

(assert (=> d!1730766 (= (nullable!5386 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343))))) (nullableFct!1612 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun bs!1253647 () Bool)

(assert (= bs!1253647 d!1730766))

(declare-fun m!6451072 () Bool)

(assert (=> bs!1253647 m!6451072))

(assert (=> b!5426418 d!1730766))

(assert (=> d!1730536 d!1730652))

(declare-fun b!5427366 () Bool)

(declare-fun e!3363206 () Bool)

(declare-fun call!388467 () Bool)

(assert (=> b!5427366 (= e!3363206 call!388467)))

(declare-fun b!5427367 () Bool)

(declare-fun e!3363212 () Bool)

(declare-fun call!388469 () Bool)

(assert (=> b!5427367 (= e!3363212 call!388469)))

(declare-fun d!1730768 () Bool)

(declare-fun res!2309675 () Bool)

(declare-fun e!3363211 () Bool)

(assert (=> d!1730768 (=> res!2309675 e!3363211)))

(assert (=> d!1730768 (= res!2309675 ((_ is ElementMatch!15217) lt!2213346))))

(assert (=> d!1730768 (= (validRegex!6953 lt!2213346) e!3363211)))

(declare-fun b!5427368 () Bool)

(declare-fun e!3363208 () Bool)

(declare-fun e!3363209 () Bool)

(assert (=> b!5427368 (= e!3363208 e!3363209)))

(declare-fun c!946738 () Bool)

(assert (=> b!5427368 (= c!946738 ((_ is Union!15217) lt!2213346))))

(declare-fun b!5427369 () Bool)

(declare-fun e!3363207 () Bool)

(assert (=> b!5427369 (= e!3363207 call!388469)))

(declare-fun b!5427370 () Bool)

(assert (=> b!5427370 (= e!3363211 e!3363208)))

(declare-fun c!946737 () Bool)

(assert (=> b!5427370 (= c!946737 ((_ is Star!15217) lt!2213346))))

(declare-fun bm!388462 () Bool)

(assert (=> bm!388462 (= call!388467 (validRegex!6953 (ite c!946737 (reg!15546 lt!2213346) (ite c!946738 (regOne!30947 lt!2213346) (regOne!30946 lt!2213346)))))))

(declare-fun b!5427371 () Bool)

(declare-fun res!2309673 () Bool)

(assert (=> b!5427371 (=> (not res!2309673) (not e!3363207))))

(declare-fun call!388468 () Bool)

(assert (=> b!5427371 (= res!2309673 call!388468)))

(assert (=> b!5427371 (= e!3363209 e!3363207)))

(declare-fun b!5427372 () Bool)

(declare-fun e!3363210 () Bool)

(assert (=> b!5427372 (= e!3363210 e!3363212)))

(declare-fun res!2309676 () Bool)

(assert (=> b!5427372 (=> (not res!2309676) (not e!3363212))))

(assert (=> b!5427372 (= res!2309676 call!388468)))

(declare-fun bm!388463 () Bool)

(assert (=> bm!388463 (= call!388468 call!388467)))

(declare-fun b!5427373 () Bool)

(declare-fun res!2309674 () Bool)

(assert (=> b!5427373 (=> res!2309674 e!3363210)))

(assert (=> b!5427373 (= res!2309674 (not ((_ is Concat!24062) lt!2213346)))))

(assert (=> b!5427373 (= e!3363209 e!3363210)))

(declare-fun bm!388464 () Bool)

(assert (=> bm!388464 (= call!388469 (validRegex!6953 (ite c!946738 (regTwo!30947 lt!2213346) (regTwo!30946 lt!2213346))))))

(declare-fun b!5427374 () Bool)

(assert (=> b!5427374 (= e!3363208 e!3363206)))

(declare-fun res!2309672 () Bool)

(assert (=> b!5427374 (= res!2309672 (not (nullable!5386 (reg!15546 lt!2213346))))))

(assert (=> b!5427374 (=> (not res!2309672) (not e!3363206))))

(assert (= (and d!1730768 (not res!2309675)) b!5427370))

(assert (= (and b!5427370 c!946737) b!5427374))

(assert (= (and b!5427370 (not c!946737)) b!5427368))

(assert (= (and b!5427374 res!2309672) b!5427366))

(assert (= (and b!5427368 c!946738) b!5427371))

(assert (= (and b!5427368 (not c!946738)) b!5427373))

(assert (= (and b!5427371 res!2309673) b!5427369))

(assert (= (and b!5427373 (not res!2309674)) b!5427372))

(assert (= (and b!5427372 res!2309676) b!5427367))

(assert (= (or b!5427369 b!5427367) bm!388464))

(assert (= (or b!5427371 b!5427372) bm!388463))

(assert (= (or b!5427366 bm!388463) bm!388462))

(declare-fun m!6451074 () Bool)

(assert (=> bm!388462 m!6451074))

(declare-fun m!6451076 () Bool)

(assert (=> bm!388464 m!6451076))

(declare-fun m!6451078 () Bool)

(assert (=> b!5427374 m!6451078))

(assert (=> d!1730536 d!1730768))

(declare-fun b!5427375 () Bool)

(declare-fun e!3363213 () (InoxSet Context!9202))

(declare-fun call!388472 () (InoxSet Context!9202))

(assert (=> b!5427375 (= e!3363213 call!388472)))

(declare-fun b!5427376 () Bool)

(declare-fun e!3363214 () (InoxSet Context!9202))

(assert (=> b!5427376 (= e!3363214 e!3363213)))

(declare-fun c!946740 () Bool)

(assert (=> b!5427376 (= c!946740 ((_ is Cons!61827) (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213330))))))))

(declare-fun d!1730770 () Bool)

(declare-fun c!946739 () Bool)

(declare-fun e!3363215 () Bool)

(assert (=> d!1730770 (= c!946739 e!3363215)))

(declare-fun res!2309677 () Bool)

(assert (=> d!1730770 (=> (not res!2309677) (not e!3363215))))

(assert (=> d!1730770 (= res!2309677 ((_ is Cons!61827) (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213330))))))))

(assert (=> d!1730770 (= (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 lt!2213330))) (h!68274 s!2326)) e!3363214)))

(declare-fun b!5427377 () Bool)

(assert (=> b!5427377 (= e!3363214 ((_ map or) call!388472 (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213330)))))) (h!68274 s!2326))))))

(declare-fun b!5427378 () Bool)

(assert (=> b!5427378 (= e!3363215 (nullable!5386 (h!68275 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213330)))))))))

(declare-fun b!5427379 () Bool)

(assert (=> b!5427379 (= e!3363213 ((as const (Array Context!9202 Bool)) false))))

(declare-fun bm!388467 () Bool)

(assert (=> bm!388467 (= call!388472 (derivationStepZipperDown!665 (h!68275 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213330))))) (Context!9203 (t!375174 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213330)))))) (h!68274 s!2326)))))

(assert (= (and d!1730770 res!2309677) b!5427378))

(assert (= (and d!1730770 c!946739) b!5427377))

(assert (= (and d!1730770 (not c!946739)) b!5427376))

(assert (= (and b!5427376 c!946740) b!5427375))

(assert (= (and b!5427376 (not c!946740)) b!5427379))

(assert (= (or b!5427377 b!5427375) bm!388467))

(declare-fun m!6451080 () Bool)

(assert (=> b!5427377 m!6451080))

(declare-fun m!6451082 () Bool)

(assert (=> b!5427378 m!6451082))

(declare-fun m!6451084 () Bool)

(assert (=> bm!388467 m!6451084))

(assert (=> b!5426821 d!1730770))

(assert (=> bs!1253541 d!1730424))

(declare-fun b!5427380 () Bool)

(declare-fun e!3363216 () Bool)

(declare-fun call!388473 () Bool)

(assert (=> b!5427380 (= e!3363216 call!388473)))

(declare-fun b!5427381 () Bool)

(declare-fun e!3363222 () Bool)

(declare-fun call!388475 () Bool)

(assert (=> b!5427381 (= e!3363222 call!388475)))

(declare-fun d!1730772 () Bool)

(declare-fun res!2309681 () Bool)

(declare-fun e!3363221 () Bool)

(assert (=> d!1730772 (=> res!2309681 e!3363221)))

(assert (=> d!1730772 (= res!2309681 ((_ is ElementMatch!15217) lt!2213417))))

(assert (=> d!1730772 (= (validRegex!6953 lt!2213417) e!3363221)))

(declare-fun b!5427382 () Bool)

(declare-fun e!3363218 () Bool)

(declare-fun e!3363219 () Bool)

(assert (=> b!5427382 (= e!3363218 e!3363219)))

(declare-fun c!946742 () Bool)

(assert (=> b!5427382 (= c!946742 ((_ is Union!15217) lt!2213417))))

(declare-fun b!5427383 () Bool)

(declare-fun e!3363217 () Bool)

(assert (=> b!5427383 (= e!3363217 call!388475)))

(declare-fun b!5427384 () Bool)

(assert (=> b!5427384 (= e!3363221 e!3363218)))

(declare-fun c!946741 () Bool)

(assert (=> b!5427384 (= c!946741 ((_ is Star!15217) lt!2213417))))

(declare-fun bm!388468 () Bool)

(assert (=> bm!388468 (= call!388473 (validRegex!6953 (ite c!946741 (reg!15546 lt!2213417) (ite c!946742 (regOne!30947 lt!2213417) (regOne!30946 lt!2213417)))))))

(declare-fun b!5427385 () Bool)

(declare-fun res!2309679 () Bool)

(assert (=> b!5427385 (=> (not res!2309679) (not e!3363217))))

(declare-fun call!388474 () Bool)

(assert (=> b!5427385 (= res!2309679 call!388474)))

(assert (=> b!5427385 (= e!3363219 e!3363217)))

(declare-fun b!5427386 () Bool)

(declare-fun e!3363220 () Bool)

(assert (=> b!5427386 (= e!3363220 e!3363222)))

(declare-fun res!2309682 () Bool)

(assert (=> b!5427386 (=> (not res!2309682) (not e!3363222))))

(assert (=> b!5427386 (= res!2309682 call!388474)))

(declare-fun bm!388469 () Bool)

(assert (=> bm!388469 (= call!388474 call!388473)))

(declare-fun b!5427387 () Bool)

(declare-fun res!2309680 () Bool)

(assert (=> b!5427387 (=> res!2309680 e!3363220)))

(assert (=> b!5427387 (= res!2309680 (not ((_ is Concat!24062) lt!2213417)))))

(assert (=> b!5427387 (= e!3363219 e!3363220)))

(declare-fun bm!388470 () Bool)

(assert (=> bm!388470 (= call!388475 (validRegex!6953 (ite c!946742 (regTwo!30947 lt!2213417) (regTwo!30946 lt!2213417))))))

(declare-fun b!5427388 () Bool)

(assert (=> b!5427388 (= e!3363218 e!3363216)))

(declare-fun res!2309678 () Bool)

(assert (=> b!5427388 (= res!2309678 (not (nullable!5386 (reg!15546 lt!2213417))))))

(assert (=> b!5427388 (=> (not res!2309678) (not e!3363216))))

(assert (= (and d!1730772 (not res!2309681)) b!5427384))

(assert (= (and b!5427384 c!946741) b!5427388))

(assert (= (and b!5427384 (not c!946741)) b!5427382))

(assert (= (and b!5427388 res!2309678) b!5427380))

(assert (= (and b!5427382 c!946742) b!5427385))

(assert (= (and b!5427382 (not c!946742)) b!5427387))

(assert (= (and b!5427385 res!2309679) b!5427383))

(assert (= (and b!5427387 (not res!2309680)) b!5427386))

(assert (= (and b!5427386 res!2309682) b!5427381))

(assert (= (or b!5427383 b!5427381) bm!388470))

(assert (= (or b!5427385 b!5427386) bm!388469))

(assert (= (or b!5427380 bm!388469) bm!388468))

(declare-fun m!6451086 () Bool)

(assert (=> bm!388468 m!6451086))

(declare-fun m!6451088 () Bool)

(assert (=> bm!388470 m!6451088))

(declare-fun m!6451090 () Bool)

(assert (=> b!5427388 m!6451090))

(assert (=> d!1730558 d!1730772))

(declare-fun bs!1253648 () Bool)

(declare-fun d!1730774 () Bool)

(assert (= bs!1253648 (and d!1730774 d!1730602)))

(declare-fun lambda!284686 () Int)

(assert (=> bs!1253648 (= lambda!284686 lambda!284652)))

(declare-fun bs!1253649 () Bool)

(assert (= bs!1253649 (and d!1730774 d!1730586)))

(assert (=> bs!1253649 (= lambda!284686 lambda!284646)))

(declare-fun bs!1253650 () Bool)

(assert (= bs!1253650 (and d!1730774 d!1730702)))

(assert (=> bs!1253650 (= lambda!284686 lambda!284676)))

(declare-fun bs!1253651 () Bool)

(assert (= bs!1253651 (and d!1730774 d!1730752)))

(assert (=> bs!1253651 (= lambda!284686 lambda!284683)))

(declare-fun bs!1253652 () Bool)

(assert (= bs!1253652 (and d!1730774 b!5426260)))

(assert (=> bs!1253652 (= lambda!284686 lambda!284593)))

(declare-fun bs!1253653 () Bool)

(assert (= bs!1253653 (and d!1730774 d!1730600)))

(assert (=> bs!1253653 (= lambda!284686 lambda!284649)))

(declare-fun bs!1253654 () Bool)

(assert (= bs!1253654 (and d!1730774 d!1730754)))

(assert (=> bs!1253654 (= lambda!284686 lambda!284684)))

(declare-fun bs!1253655 () Bool)

(assert (= bs!1253655 (and d!1730774 d!1730650)))

(assert (=> bs!1253655 (= lambda!284686 lambda!284668)))

(declare-fun bs!1253656 () Bool)

(assert (= bs!1253656 (and d!1730774 d!1730454)))

(assert (=> bs!1253656 (= lambda!284686 lambda!284608)))

(declare-fun bs!1253657 () Bool)

(assert (= bs!1253657 (and d!1730774 d!1730580)))

(assert (=> bs!1253657 (= lambda!284686 lambda!284642)))

(declare-fun bs!1253658 () Bool)

(assert (= bs!1253658 (and d!1730774 d!1730648)))

(assert (=> bs!1253658 (= lambda!284686 lambda!284666)))

(declare-fun b!5427389 () Bool)

(declare-fun e!3363228 () Regex!15217)

(declare-fun e!3363223 () Regex!15217)

(assert (=> b!5427389 (= e!3363228 e!3363223)))

(declare-fun c!946743 () Bool)

(assert (=> b!5427389 (= c!946743 ((_ is Cons!61827) (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828))))))

(declare-fun b!5427390 () Bool)

(declare-fun e!3363227 () Bool)

(declare-fun lt!2213463 () Regex!15217)

(assert (=> b!5427390 (= e!3363227 (isEmptyLang!1003 lt!2213463))))

(declare-fun b!5427391 () Bool)

(assert (=> b!5427391 (= e!3363228 (h!68275 (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828))))))

(declare-fun b!5427392 () Bool)

(declare-fun e!3363226 () Bool)

(assert (=> b!5427392 (= e!3363226 (= lt!2213463 (head!11642 (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828)))))))

(declare-fun b!5427393 () Bool)

(declare-fun e!3363224 () Bool)

(assert (=> b!5427393 (= e!3363224 e!3363227)))

(declare-fun c!946744 () Bool)

(assert (=> b!5427393 (= c!946744 (isEmpty!33825 (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828))))))

(declare-fun b!5427394 () Bool)

(assert (=> b!5427394 (= e!3363223 (Union!15217 (h!68275 (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828))) (generalisedUnion!1146 (t!375174 (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828))))))))

(assert (=> d!1730774 e!3363224))

(declare-fun res!2309684 () Bool)

(assert (=> d!1730774 (=> (not res!2309684) (not e!3363224))))

(assert (=> d!1730774 (= res!2309684 (validRegex!6953 lt!2213463))))

(assert (=> d!1730774 (= lt!2213463 e!3363228)))

(declare-fun c!946745 () Bool)

(declare-fun e!3363225 () Bool)

(assert (=> d!1730774 (= c!946745 e!3363225)))

(declare-fun res!2309683 () Bool)

(assert (=> d!1730774 (=> (not res!2309683) (not e!3363225))))

(assert (=> d!1730774 (= res!2309683 ((_ is Cons!61827) (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828))))))

(assert (=> d!1730774 (forall!14555 (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828)) lambda!284686)))

(assert (=> d!1730774 (= (generalisedUnion!1146 (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828))) lt!2213463)))

(declare-fun b!5427395 () Bool)

(assert (=> b!5427395 (= e!3363226 (isUnion!435 lt!2213463))))

(declare-fun b!5427396 () Bool)

(assert (=> b!5427396 (= e!3363223 EmptyLang!15217)))

(declare-fun b!5427397 () Bool)

(assert (=> b!5427397 (= e!3363225 (isEmpty!33825 (t!375174 (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828)))))))

(declare-fun b!5427398 () Bool)

(assert (=> b!5427398 (= e!3363227 e!3363226)))

(declare-fun c!946746 () Bool)

(assert (=> b!5427398 (= c!946746 (isEmpty!33825 (tail!10739 (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828)))))))

(assert (= (and d!1730774 res!2309683) b!5427397))

(assert (= (and d!1730774 c!946745) b!5427391))

(assert (= (and d!1730774 (not c!946745)) b!5427389))

(assert (= (and b!5427389 c!946743) b!5427394))

(assert (= (and b!5427389 (not c!946743)) b!5427396))

(assert (= (and d!1730774 res!2309684) b!5427393))

(assert (= (and b!5427393 c!946744) b!5427390))

(assert (= (and b!5427393 (not c!946744)) b!5427398))

(assert (= (and b!5427398 c!946746) b!5427392))

(assert (= (and b!5427398 (not c!946746)) b!5427395))

(declare-fun m!6451092 () Bool)

(assert (=> d!1730774 m!6451092))

(assert (=> d!1730774 m!6450620))

(declare-fun m!6451094 () Bool)

(assert (=> d!1730774 m!6451094))

(declare-fun m!6451096 () Bool)

(assert (=> b!5427397 m!6451096))

(declare-fun m!6451098 () Bool)

(assert (=> b!5427394 m!6451098))

(assert (=> b!5427393 m!6450620))

(declare-fun m!6451100 () Bool)

(assert (=> b!5427393 m!6451100))

(assert (=> b!5427392 m!6450620))

(declare-fun m!6451102 () Bool)

(assert (=> b!5427392 m!6451102))

(declare-fun m!6451104 () Bool)

(assert (=> b!5427395 m!6451104))

(declare-fun m!6451106 () Bool)

(assert (=> b!5427390 m!6451106))

(assert (=> b!5427398 m!6450620))

(declare-fun m!6451108 () Bool)

(assert (=> b!5427398 m!6451108))

(assert (=> b!5427398 m!6451108))

(declare-fun m!6451110 () Bool)

(assert (=> b!5427398 m!6451110))

(assert (=> d!1730558 d!1730774))

(declare-fun bs!1253659 () Bool)

(declare-fun d!1730776 () Bool)

(assert (= bs!1253659 (and d!1730776 d!1730602)))

(declare-fun lambda!284687 () Int)

(assert (=> bs!1253659 (= lambda!284687 lambda!284652)))

(declare-fun bs!1253660 () Bool)

(assert (= bs!1253660 (and d!1730776 d!1730586)))

(assert (=> bs!1253660 (= lambda!284687 lambda!284646)))

(declare-fun bs!1253661 () Bool)

(assert (= bs!1253661 (and d!1730776 d!1730702)))

(assert (=> bs!1253661 (= lambda!284687 lambda!284676)))

(declare-fun bs!1253662 () Bool)

(assert (= bs!1253662 (and d!1730776 d!1730752)))

(assert (=> bs!1253662 (= lambda!284687 lambda!284683)))

(declare-fun bs!1253663 () Bool)

(assert (= bs!1253663 (and d!1730776 b!5426260)))

(assert (=> bs!1253663 (= lambda!284687 lambda!284593)))

(declare-fun bs!1253664 () Bool)

(assert (= bs!1253664 (and d!1730776 d!1730600)))

(assert (=> bs!1253664 (= lambda!284687 lambda!284649)))

(declare-fun bs!1253665 () Bool)

(assert (= bs!1253665 (and d!1730776 d!1730754)))

(assert (=> bs!1253665 (= lambda!284687 lambda!284684)))

(declare-fun bs!1253666 () Bool)

(assert (= bs!1253666 (and d!1730776 d!1730650)))

(assert (=> bs!1253666 (= lambda!284687 lambda!284668)))

(declare-fun bs!1253667 () Bool)

(assert (= bs!1253667 (and d!1730776 d!1730774)))

(assert (=> bs!1253667 (= lambda!284687 lambda!284686)))

(declare-fun bs!1253668 () Bool)

(assert (= bs!1253668 (and d!1730776 d!1730454)))

(assert (=> bs!1253668 (= lambda!284687 lambda!284608)))

(declare-fun bs!1253669 () Bool)

(assert (= bs!1253669 (and d!1730776 d!1730580)))

(assert (=> bs!1253669 (= lambda!284687 lambda!284642)))

(declare-fun bs!1253670 () Bool)

(assert (= bs!1253670 (and d!1730776 d!1730648)))

(assert (=> bs!1253670 (= lambda!284687 lambda!284666)))

(declare-fun lt!2213464 () List!61951)

(assert (=> d!1730776 (forall!14555 lt!2213464 lambda!284687)))

(declare-fun e!3363229 () List!61951)

(assert (=> d!1730776 (= lt!2213464 e!3363229)))

(declare-fun c!946747 () Bool)

(assert (=> d!1730776 (= c!946747 ((_ is Cons!61828) (Cons!61828 lt!2213330 Nil!61828)))))

(assert (=> d!1730776 (= (unfocusZipperList!659 (Cons!61828 lt!2213330 Nil!61828)) lt!2213464)))

(declare-fun b!5427399 () Bool)

(assert (=> b!5427399 (= e!3363229 (Cons!61827 (generalisedConcat!886 (exprs!5101 (h!68276 (Cons!61828 lt!2213330 Nil!61828)))) (unfocusZipperList!659 (t!375175 (Cons!61828 lt!2213330 Nil!61828)))))))

(declare-fun b!5427400 () Bool)

(assert (=> b!5427400 (= e!3363229 Nil!61827)))

(assert (= (and d!1730776 c!946747) b!5427399))

(assert (= (and d!1730776 (not c!946747)) b!5427400))

(declare-fun m!6451112 () Bool)

(assert (=> d!1730776 m!6451112))

(declare-fun m!6451114 () Bool)

(assert (=> b!5427399 m!6451114))

(declare-fun m!6451116 () Bool)

(assert (=> b!5427399 m!6451116))

(assert (=> d!1730558 d!1730776))

(declare-fun d!1730778 () Bool)

(assert (=> d!1730778 (= (nullable!5386 lt!2213346) (nullableFct!1612 lt!2213346))))

(declare-fun bs!1253671 () Bool)

(assert (= bs!1253671 d!1730778))

(declare-fun m!6451118 () Bool)

(assert (=> bs!1253671 m!6451118))

(assert (=> b!5426767 d!1730778))

(declare-fun d!1730780 () Bool)

(declare-fun c!946748 () Bool)

(assert (=> d!1730780 (= c!946748 (isEmpty!33827 (tail!10738 s!2326)))))

(declare-fun e!3363230 () Bool)

(assert (=> d!1730780 (= (matchZipper!1461 (derivationStepZipper!1456 z!1189 (head!11641 s!2326)) (tail!10738 s!2326)) e!3363230)))

(declare-fun b!5427401 () Bool)

(assert (=> b!5427401 (= e!3363230 (nullableZipper!1462 (derivationStepZipper!1456 z!1189 (head!11641 s!2326))))))

(declare-fun b!5427402 () Bool)

(assert (=> b!5427402 (= e!3363230 (matchZipper!1461 (derivationStepZipper!1456 (derivationStepZipper!1456 z!1189 (head!11641 s!2326)) (head!11641 (tail!10738 s!2326))) (tail!10738 (tail!10738 s!2326))))))

(assert (= (and d!1730780 c!946748) b!5427401))

(assert (= (and d!1730780 (not c!946748)) b!5427402))

(assert (=> d!1730780 m!6450496))

(assert (=> d!1730780 m!6450498))

(assert (=> b!5427401 m!6450550))

(declare-fun m!6451120 () Bool)

(assert (=> b!5427401 m!6451120))

(assert (=> b!5427402 m!6450496))

(assert (=> b!5427402 m!6451052))

(assert (=> b!5427402 m!6450550))

(assert (=> b!5427402 m!6451052))

(declare-fun m!6451122 () Bool)

(assert (=> b!5427402 m!6451122))

(assert (=> b!5427402 m!6450496))

(assert (=> b!5427402 m!6451056))

(assert (=> b!5427402 m!6451122))

(assert (=> b!5427402 m!6451056))

(declare-fun m!6451124 () Bool)

(assert (=> b!5427402 m!6451124))

(assert (=> b!5426766 d!1730780))

(declare-fun bs!1253672 () Bool)

(declare-fun d!1730782 () Bool)

(assert (= bs!1253672 (and d!1730782 d!1730678)))

(declare-fun lambda!284688 () Int)

(assert (=> bs!1253672 (= (= (head!11641 s!2326) (head!11641 (t!375173 s!2326))) (= lambda!284688 lambda!284671))))

(declare-fun bs!1253673 () Bool)

(assert (= bs!1253673 (and d!1730782 d!1730660)))

(assert (=> bs!1253673 (= (= (head!11641 s!2326) (head!11641 (t!375173 s!2326))) (= lambda!284688 lambda!284669))))

(declare-fun bs!1253674 () Bool)

(assert (= bs!1253674 (and d!1730782 d!1730532)))

(assert (=> bs!1253674 (= (= (head!11641 s!2326) (h!68274 s!2326)) (= lambda!284688 lambda!284631))))

(declare-fun bs!1253675 () Bool)

(assert (= bs!1253675 (and d!1730782 d!1730432)))

(assert (=> bs!1253675 (= (= (head!11641 s!2326) (h!68274 s!2326)) (= lambda!284688 lambda!284599))))

(declare-fun bs!1253676 () Bool)

(assert (= bs!1253676 (and d!1730782 d!1730760)))

(assert (=> bs!1253676 (= lambda!284688 lambda!284685)))

(declare-fun bs!1253677 () Bool)

(assert (= bs!1253677 (and d!1730782 b!5426259)))

(assert (=> bs!1253677 (= (= (head!11641 s!2326) (h!68274 s!2326)) (= lambda!284688 lambda!284592))))

(assert (=> d!1730782 true))

(assert (=> d!1730782 (= (derivationStepZipper!1456 z!1189 (head!11641 s!2326)) (flatMap!944 z!1189 lambda!284688))))

(declare-fun bs!1253678 () Bool)

(assert (= bs!1253678 d!1730782))

(declare-fun m!6451126 () Bool)

(assert (=> bs!1253678 m!6451126))

(assert (=> b!5426766 d!1730782))

(assert (=> b!5426766 d!1730720))

(assert (=> b!5426766 d!1730670))

(declare-fun b!5427403 () Bool)

(declare-fun e!3363231 () Bool)

(declare-fun call!388476 () Bool)

(assert (=> b!5427403 (= e!3363231 call!388476)))

(declare-fun b!5427404 () Bool)

(declare-fun e!3363237 () Bool)

(declare-fun call!388478 () Bool)

(assert (=> b!5427404 (= e!3363237 call!388478)))

(declare-fun d!1730784 () Bool)

(declare-fun res!2309688 () Bool)

(declare-fun e!3363236 () Bool)

(assert (=> d!1730784 (=> res!2309688 e!3363236)))

(assert (=> d!1730784 (= res!2309688 ((_ is ElementMatch!15217) lt!2213428))))

(assert (=> d!1730784 (= (validRegex!6953 lt!2213428) e!3363236)))

(declare-fun b!5427405 () Bool)

(declare-fun e!3363233 () Bool)

(declare-fun e!3363234 () Bool)

(assert (=> b!5427405 (= e!3363233 e!3363234)))

(declare-fun c!946750 () Bool)

(assert (=> b!5427405 (= c!946750 ((_ is Union!15217) lt!2213428))))

(declare-fun b!5427406 () Bool)

(declare-fun e!3363232 () Bool)

(assert (=> b!5427406 (= e!3363232 call!388478)))

(declare-fun b!5427407 () Bool)

(assert (=> b!5427407 (= e!3363236 e!3363233)))

(declare-fun c!946749 () Bool)

(assert (=> b!5427407 (= c!946749 ((_ is Star!15217) lt!2213428))))

(declare-fun bm!388471 () Bool)

(assert (=> bm!388471 (= call!388476 (validRegex!6953 (ite c!946749 (reg!15546 lt!2213428) (ite c!946750 (regOne!30947 lt!2213428) (regOne!30946 lt!2213428)))))))

(declare-fun b!5427408 () Bool)

(declare-fun res!2309686 () Bool)

(assert (=> b!5427408 (=> (not res!2309686) (not e!3363232))))

(declare-fun call!388477 () Bool)

(assert (=> b!5427408 (= res!2309686 call!388477)))

(assert (=> b!5427408 (= e!3363234 e!3363232)))

(declare-fun b!5427409 () Bool)

(declare-fun e!3363235 () Bool)

(assert (=> b!5427409 (= e!3363235 e!3363237)))

(declare-fun res!2309689 () Bool)

(assert (=> b!5427409 (=> (not res!2309689) (not e!3363237))))

(assert (=> b!5427409 (= res!2309689 call!388477)))

(declare-fun bm!388472 () Bool)

(assert (=> bm!388472 (= call!388477 call!388476)))

(declare-fun b!5427410 () Bool)

(declare-fun res!2309687 () Bool)

(assert (=> b!5427410 (=> res!2309687 e!3363235)))

(assert (=> b!5427410 (= res!2309687 (not ((_ is Concat!24062) lt!2213428)))))

(assert (=> b!5427410 (= e!3363234 e!3363235)))

(declare-fun bm!388473 () Bool)

(assert (=> bm!388473 (= call!388478 (validRegex!6953 (ite c!946750 (regTwo!30947 lt!2213428) (regTwo!30946 lt!2213428))))))

(declare-fun b!5427411 () Bool)

(assert (=> b!5427411 (= e!3363233 e!3363231)))

(declare-fun res!2309685 () Bool)

(assert (=> b!5427411 (= res!2309685 (not (nullable!5386 (reg!15546 lt!2213428))))))

(assert (=> b!5427411 (=> (not res!2309685) (not e!3363231))))

(assert (= (and d!1730784 (not res!2309688)) b!5427407))

(assert (= (and b!5427407 c!946749) b!5427411))

(assert (= (and b!5427407 (not c!946749)) b!5427405))

(assert (= (and b!5427411 res!2309685) b!5427403))

(assert (= (and b!5427405 c!946750) b!5427408))

(assert (= (and b!5427405 (not c!946750)) b!5427410))

(assert (= (and b!5427408 res!2309686) b!5427406))

(assert (= (and b!5427410 (not res!2309687)) b!5427409))

(assert (= (and b!5427409 res!2309689) b!5427404))

(assert (= (or b!5427406 b!5427404) bm!388473))

(assert (= (or b!5427408 b!5427409) bm!388472))

(assert (= (or b!5427403 bm!388472) bm!388471))

(declare-fun m!6451128 () Bool)

(assert (=> bm!388471 m!6451128))

(declare-fun m!6451130 () Bool)

(assert (=> bm!388473 m!6451130))

(declare-fun m!6451132 () Bool)

(assert (=> b!5427411 m!6451132))

(assert (=> d!1730600 d!1730784))

(declare-fun d!1730786 () Bool)

(declare-fun res!2309690 () Bool)

(declare-fun e!3363238 () Bool)

(assert (=> d!1730786 (=> res!2309690 e!3363238)))

(assert (=> d!1730786 (= res!2309690 ((_ is Nil!61827) (unfocusZipperList!659 zl!343)))))

(assert (=> d!1730786 (= (forall!14555 (unfocusZipperList!659 zl!343) lambda!284649) e!3363238)))

(declare-fun b!5427412 () Bool)

(declare-fun e!3363239 () Bool)

(assert (=> b!5427412 (= e!3363238 e!3363239)))

(declare-fun res!2309691 () Bool)

(assert (=> b!5427412 (=> (not res!2309691) (not e!3363239))))

(assert (=> b!5427412 (= res!2309691 (dynLambda!24363 lambda!284649 (h!68275 (unfocusZipperList!659 zl!343))))))

(declare-fun b!5427413 () Bool)

(assert (=> b!5427413 (= e!3363239 (forall!14555 (t!375174 (unfocusZipperList!659 zl!343)) lambda!284649))))

(assert (= (and d!1730786 (not res!2309690)) b!5427412))

(assert (= (and b!5427412 res!2309691) b!5427413))

(declare-fun b_lambda!207093 () Bool)

(assert (=> (not b_lambda!207093) (not b!5427412)))

(declare-fun m!6451134 () Bool)

(assert (=> b!5427412 m!6451134))

(declare-fun m!6451136 () Bool)

(assert (=> b!5427413 m!6451136))

(assert (=> d!1730600 d!1730786))

(declare-fun d!1730788 () Bool)

(declare-fun res!2309692 () Bool)

(declare-fun e!3363245 () Bool)

(assert (=> d!1730788 (=> res!2309692 e!3363245)))

(assert (=> d!1730788 (= res!2309692 ((_ is Nil!61827) lt!2213431))))

(assert (=> d!1730788 (= (forall!14555 lt!2213431 lambda!284652) e!3363245)))

(declare-fun b!5427424 () Bool)

(declare-fun e!3363246 () Bool)

(assert (=> b!5427424 (= e!3363245 e!3363246)))

(declare-fun res!2309693 () Bool)

(assert (=> b!5427424 (=> (not res!2309693) (not e!3363246))))

(assert (=> b!5427424 (= res!2309693 (dynLambda!24363 lambda!284652 (h!68275 lt!2213431)))))

(declare-fun b!5427425 () Bool)

(assert (=> b!5427425 (= e!3363246 (forall!14555 (t!375174 lt!2213431) lambda!284652))))

(assert (= (and d!1730788 (not res!2309692)) b!5427424))

(assert (= (and b!5427424 res!2309693) b!5427425))

(declare-fun b_lambda!207095 () Bool)

(assert (=> (not b_lambda!207095) (not b!5427424)))

(declare-fun m!6451138 () Bool)

(assert (=> b!5427424 m!6451138))

(declare-fun m!6451140 () Bool)

(assert (=> b!5427425 m!6451140))

(assert (=> d!1730602 d!1730788))

(declare-fun b!5427426 () Bool)

(declare-fun e!3363252 () (InoxSet Context!9202))

(assert (=> b!5427426 (= e!3363252 (store ((as const (Array Context!9202 Bool)) false) (Context!9203 (t!375174 (exprs!5101 lt!2213334))) true))))

(declare-fun b!5427428 () Bool)

(declare-fun e!3363249 () Bool)

(assert (=> b!5427428 (= e!3363249 (nullable!5386 (regOne!30946 (h!68275 (exprs!5101 lt!2213334)))))))

(declare-fun bm!388478 () Bool)

(declare-fun call!388488 () (InoxSet Context!9202))

(declare-fun call!388484 () (InoxSet Context!9202))

(assert (=> bm!388478 (= call!388488 call!388484)))

(declare-fun b!5427429 () Bool)

(declare-fun e!3363247 () (InoxSet Context!9202))

(declare-fun e!3363250 () (InoxSet Context!9202))

(assert (=> b!5427429 (= e!3363247 e!3363250)))

(declare-fun c!946757 () Bool)

(assert (=> b!5427429 (= c!946757 ((_ is Concat!24062) (h!68275 (exprs!5101 lt!2213334))))))

(declare-fun b!5427430 () Bool)

(declare-fun call!388487 () (InoxSet Context!9202))

(assert (=> b!5427430 (= e!3363247 ((_ map or) call!388487 call!388484))))

(declare-fun b!5427431 () Bool)

(declare-fun c!946760 () Bool)

(assert (=> b!5427431 (= c!946760 e!3363249)))

(declare-fun res!2309694 () Bool)

(assert (=> b!5427431 (=> (not res!2309694) (not e!3363249))))

(assert (=> b!5427431 (= res!2309694 ((_ is Concat!24062) (h!68275 (exprs!5101 lt!2213334))))))

(declare-fun e!3363251 () (InoxSet Context!9202))

(assert (=> b!5427431 (= e!3363251 e!3363247)))

(declare-fun b!5427432 () Bool)

(declare-fun call!388483 () (InoxSet Context!9202))

(assert (=> b!5427432 (= e!3363251 ((_ map or) call!388487 call!388483))))

(declare-fun bm!388479 () Bool)

(assert (=> bm!388479 (= call!388484 call!388483)))

(declare-fun bm!388480 () Bool)

(declare-fun call!388485 () List!61951)

(assert (=> bm!388480 (= call!388485 ($colon$colon!1512 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213334)))) (ite (or c!946760 c!946757) (regTwo!30946 (h!68275 (exprs!5101 lt!2213334))) (h!68275 (exprs!5101 lt!2213334)))))))

(declare-fun c!946756 () Bool)

(declare-fun bm!388481 () Bool)

(assert (=> bm!388481 (= call!388487 (derivationStepZipperDown!665 (ite c!946756 (regOne!30947 (h!68275 (exprs!5101 lt!2213334))) (regOne!30946 (h!68275 (exprs!5101 lt!2213334)))) (ite c!946756 (Context!9203 (t!375174 (exprs!5101 lt!2213334))) (Context!9203 call!388485)) (h!68274 s!2326)))))

(declare-fun d!1730790 () Bool)

(declare-fun c!946758 () Bool)

(assert (=> d!1730790 (= c!946758 (and ((_ is ElementMatch!15217) (h!68275 (exprs!5101 lt!2213334))) (= (c!946431 (h!68275 (exprs!5101 lt!2213334))) (h!68274 s!2326))))))

(assert (=> d!1730790 (= (derivationStepZipperDown!665 (h!68275 (exprs!5101 lt!2213334)) (Context!9203 (t!375174 (exprs!5101 lt!2213334))) (h!68274 s!2326)) e!3363252)))

(declare-fun b!5427427 () Bool)

(assert (=> b!5427427 (= e!3363252 e!3363251)))

(assert (=> b!5427427 (= c!946756 ((_ is Union!15217) (h!68275 (exprs!5101 lt!2213334))))))

(declare-fun b!5427433 () Bool)

(assert (=> b!5427433 (= e!3363250 call!388488)))

(declare-fun b!5427434 () Bool)

(declare-fun e!3363248 () (InoxSet Context!9202))

(assert (=> b!5427434 (= e!3363248 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5427435 () Bool)

(assert (=> b!5427435 (= e!3363248 call!388488)))

(declare-fun call!388486 () List!61951)

(declare-fun bm!388482 () Bool)

(assert (=> bm!388482 (= call!388483 (derivationStepZipperDown!665 (ite c!946756 (regTwo!30947 (h!68275 (exprs!5101 lt!2213334))) (ite c!946760 (regTwo!30946 (h!68275 (exprs!5101 lt!2213334))) (ite c!946757 (regOne!30946 (h!68275 (exprs!5101 lt!2213334))) (reg!15546 (h!68275 (exprs!5101 lt!2213334)))))) (ite (or c!946756 c!946760) (Context!9203 (t!375174 (exprs!5101 lt!2213334))) (Context!9203 call!388486)) (h!68274 s!2326)))))

(declare-fun bm!388483 () Bool)

(assert (=> bm!388483 (= call!388486 call!388485)))

(declare-fun b!5427436 () Bool)

(declare-fun c!946759 () Bool)

(assert (=> b!5427436 (= c!946759 ((_ is Star!15217) (h!68275 (exprs!5101 lt!2213334))))))

(assert (=> b!5427436 (= e!3363250 e!3363248)))

(assert (= (and d!1730790 c!946758) b!5427426))

(assert (= (and d!1730790 (not c!946758)) b!5427427))

(assert (= (and b!5427427 c!946756) b!5427432))

(assert (= (and b!5427427 (not c!946756)) b!5427431))

(assert (= (and b!5427431 res!2309694) b!5427428))

(assert (= (and b!5427431 c!946760) b!5427430))

(assert (= (and b!5427431 (not c!946760)) b!5427429))

(assert (= (and b!5427429 c!946757) b!5427433))

(assert (= (and b!5427429 (not c!946757)) b!5427436))

(assert (= (and b!5427436 c!946759) b!5427435))

(assert (= (and b!5427436 (not c!946759)) b!5427434))

(assert (= (or b!5427433 b!5427435) bm!388483))

(assert (= (or b!5427433 b!5427435) bm!388478))

(assert (= (or b!5427430 bm!388483) bm!388480))

(assert (= (or b!5427430 bm!388478) bm!388479))

(assert (= (or b!5427432 bm!388479) bm!388482))

(assert (= (or b!5427432 b!5427430) bm!388481))

(declare-fun m!6451144 () Bool)

(assert (=> bm!388480 m!6451144))

(declare-fun m!6451146 () Bool)

(assert (=> b!5427426 m!6451146))

(declare-fun m!6451152 () Bool)

(assert (=> bm!388482 m!6451152))

(declare-fun m!6451154 () Bool)

(assert (=> bm!388481 m!6451154))

(declare-fun m!6451156 () Bool)

(assert (=> b!5427428 m!6451156))

(assert (=> bm!388386 d!1730790))

(declare-fun b!5427437 () Bool)

(declare-fun e!3363258 () (InoxSet Context!9202))

(assert (=> b!5427437 (= e!3363258 (store ((as const (Array Context!9202 Bool)) false) (ite (or c!946617 c!946621) lt!2213334 (Context!9203 call!388407)) true))))

(declare-fun b!5427439 () Bool)

(declare-fun e!3363255 () Bool)

(assert (=> b!5427439 (= e!3363255 (nullable!5386 (regOne!30946 (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292)))))))))))

(declare-fun bm!388484 () Bool)

(declare-fun call!388494 () (InoxSet Context!9202))

(declare-fun call!388490 () (InoxSet Context!9202))

(assert (=> bm!388484 (= call!388494 call!388490)))

(declare-fun b!5427440 () Bool)

(declare-fun e!3363253 () (InoxSet Context!9202))

(declare-fun e!3363256 () (InoxSet Context!9202))

(assert (=> b!5427440 (= e!3363253 e!3363256)))

(declare-fun c!946762 () Bool)

(assert (=> b!5427440 (= c!946762 ((_ is Concat!24062) (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292))))))))))

(declare-fun b!5427441 () Bool)

(declare-fun call!388493 () (InoxSet Context!9202))

(assert (=> b!5427441 (= e!3363253 ((_ map or) call!388493 call!388490))))

(declare-fun b!5427442 () Bool)

(declare-fun c!946765 () Bool)

(assert (=> b!5427442 (= c!946765 e!3363255)))

(declare-fun res!2309695 () Bool)

(assert (=> b!5427442 (=> (not res!2309695) (not e!3363255))))

(assert (=> b!5427442 (= res!2309695 ((_ is Concat!24062) (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292))))))))))

(declare-fun e!3363257 () (InoxSet Context!9202))

(assert (=> b!5427442 (= e!3363257 e!3363253)))

(declare-fun b!5427443 () Bool)

(declare-fun call!388489 () (InoxSet Context!9202))

(assert (=> b!5427443 (= e!3363257 ((_ map or) call!388493 call!388489))))

(declare-fun bm!388485 () Bool)

(assert (=> bm!388485 (= call!388490 call!388489)))

(declare-fun call!388491 () List!61951)

(declare-fun bm!388486 () Bool)

(assert (=> bm!388486 (= call!388491 ($colon$colon!1512 (exprs!5101 (ite (or c!946617 c!946621) lt!2213334 (Context!9203 call!388407))) (ite (or c!946765 c!946762) (regTwo!30946 (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292))))))) (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292)))))))))))

(declare-fun bm!388487 () Bool)

(declare-fun c!946761 () Bool)

(assert (=> bm!388487 (= call!388493 (derivationStepZipperDown!665 (ite c!946761 (regOne!30947 (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292))))))) (regOne!30946 (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292)))))))) (ite c!946761 (ite (or c!946617 c!946621) lt!2213334 (Context!9203 call!388407)) (Context!9203 call!388491)) (h!68274 s!2326)))))

(declare-fun c!946763 () Bool)

(declare-fun d!1730792 () Bool)

(assert (=> d!1730792 (= c!946763 (and ((_ is ElementMatch!15217) (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292))))))) (= (c!946431 (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292))))))) (h!68274 s!2326))))))

(assert (=> d!1730792 (= (derivationStepZipperDown!665 (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292)))))) (ite (or c!946617 c!946621) lt!2213334 (Context!9203 call!388407)) (h!68274 s!2326)) e!3363258)))

(declare-fun b!5427438 () Bool)

(assert (=> b!5427438 (= e!3363258 e!3363257)))

(assert (=> b!5427438 (= c!946761 ((_ is Union!15217) (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292))))))))))

(declare-fun b!5427444 () Bool)

(assert (=> b!5427444 (= e!3363256 call!388494)))

(declare-fun b!5427445 () Bool)

(declare-fun e!3363254 () (InoxSet Context!9202))

(assert (=> b!5427445 (= e!3363254 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5427446 () Bool)

(assert (=> b!5427446 (= e!3363254 call!388494)))

(declare-fun call!388492 () List!61951)

(declare-fun bm!388488 () Bool)

(assert (=> bm!388488 (= call!388489 (derivationStepZipperDown!665 (ite c!946761 (regTwo!30947 (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292))))))) (ite c!946765 (regTwo!30946 (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292))))))) (ite c!946762 (regOne!30946 (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292))))))) (reg!15546 (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292)))))))))) (ite (or c!946761 c!946765) (ite (or c!946617 c!946621) lt!2213334 (Context!9203 call!388407)) (Context!9203 call!388492)) (h!68274 s!2326)))))

(declare-fun bm!388489 () Bool)

(assert (=> bm!388489 (= call!388492 call!388491)))

(declare-fun b!5427447 () Bool)

(declare-fun c!946764 () Bool)

(assert (=> b!5427447 (= c!946764 ((_ is Star!15217) (ite c!946617 (regTwo!30947 (reg!15546 (regOne!30946 r!7292))) (ite c!946621 (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (ite c!946618 (regOne!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (reg!15546 (regOne!30946 r!7292))))))))))

(assert (=> b!5427447 (= e!3363256 e!3363254)))

(assert (= (and d!1730792 c!946763) b!5427437))

(assert (= (and d!1730792 (not c!946763)) b!5427438))

(assert (= (and b!5427438 c!946761) b!5427443))

(assert (= (and b!5427438 (not c!946761)) b!5427442))

(assert (= (and b!5427442 res!2309695) b!5427439))

(assert (= (and b!5427442 c!946765) b!5427441))

(assert (= (and b!5427442 (not c!946765)) b!5427440))

(assert (= (and b!5427440 c!946762) b!5427444))

(assert (= (and b!5427440 (not c!946762)) b!5427447))

(assert (= (and b!5427447 c!946764) b!5427446))

(assert (= (and b!5427447 (not c!946764)) b!5427445))

(assert (= (or b!5427444 b!5427446) bm!388489))

(assert (= (or b!5427444 b!5427446) bm!388484))

(assert (= (or b!5427441 bm!388489) bm!388486))

(assert (= (or b!5427441 bm!388484) bm!388485))

(assert (= (or b!5427443 bm!388485) bm!388488))

(assert (= (or b!5427443 b!5427441) bm!388487))

(declare-fun m!6451160 () Bool)

(assert (=> bm!388486 m!6451160))

(declare-fun m!6451162 () Bool)

(assert (=> b!5427437 m!6451162))

(declare-fun m!6451164 () Bool)

(assert (=> bm!388488 m!6451164))

(declare-fun m!6451168 () Bool)

(assert (=> bm!388487 m!6451168))

(declare-fun m!6451170 () Bool)

(assert (=> b!5427439 m!6451170))

(assert (=> bm!388403 d!1730792))

(assert (=> b!5427023 d!1730586))

(declare-fun bs!1253680 () Bool)

(declare-fun d!1730804 () Bool)

(assert (= bs!1253680 (and d!1730804 d!1730602)))

(declare-fun lambda!284689 () Int)

(assert (=> bs!1253680 (= lambda!284689 lambda!284652)))

(declare-fun bs!1253682 () Bool)

(assert (= bs!1253682 (and d!1730804 d!1730586)))

(assert (=> bs!1253682 (= lambda!284689 lambda!284646)))

(declare-fun bs!1253683 () Bool)

(assert (= bs!1253683 (and d!1730804 d!1730702)))

(assert (=> bs!1253683 (= lambda!284689 lambda!284676)))

(declare-fun bs!1253684 () Bool)

(assert (= bs!1253684 (and d!1730804 d!1730752)))

(assert (=> bs!1253684 (= lambda!284689 lambda!284683)))

(declare-fun bs!1253685 () Bool)

(assert (= bs!1253685 (and d!1730804 b!5426260)))

(assert (=> bs!1253685 (= lambda!284689 lambda!284593)))

(declare-fun bs!1253686 () Bool)

(assert (= bs!1253686 (and d!1730804 d!1730600)))

(assert (=> bs!1253686 (= lambda!284689 lambda!284649)))

(declare-fun bs!1253687 () Bool)

(assert (= bs!1253687 (and d!1730804 d!1730754)))

(assert (=> bs!1253687 (= lambda!284689 lambda!284684)))

(declare-fun bs!1253688 () Bool)

(assert (= bs!1253688 (and d!1730804 d!1730774)))

(assert (=> bs!1253688 (= lambda!284689 lambda!284686)))

(declare-fun bs!1253689 () Bool)

(assert (= bs!1253689 (and d!1730804 d!1730454)))

(assert (=> bs!1253689 (= lambda!284689 lambda!284608)))

(declare-fun bs!1253690 () Bool)

(assert (= bs!1253690 (and d!1730804 d!1730776)))

(assert (=> bs!1253690 (= lambda!284689 lambda!284687)))

(declare-fun bs!1253691 () Bool)

(assert (= bs!1253691 (and d!1730804 d!1730650)))

(assert (=> bs!1253691 (= lambda!284689 lambda!284668)))

(declare-fun bs!1253692 () Bool)

(assert (= bs!1253692 (and d!1730804 d!1730580)))

(assert (=> bs!1253692 (= lambda!284689 lambda!284642)))

(declare-fun bs!1253693 () Bool)

(assert (= bs!1253693 (and d!1730804 d!1730648)))

(assert (=> bs!1253693 (= lambda!284689 lambda!284666)))

(declare-fun lt!2213466 () List!61951)

(assert (=> d!1730804 (forall!14555 lt!2213466 lambda!284689)))

(declare-fun e!3363259 () List!61951)

(assert (=> d!1730804 (= lt!2213466 e!3363259)))

(declare-fun c!946766 () Bool)

(assert (=> d!1730804 (= c!946766 ((_ is Cons!61828) (t!375175 zl!343)))))

(assert (=> d!1730804 (= (unfocusZipperList!659 (t!375175 zl!343)) lt!2213466)))

(declare-fun b!5427448 () Bool)

(assert (=> b!5427448 (= e!3363259 (Cons!61827 (generalisedConcat!886 (exprs!5101 (h!68276 (t!375175 zl!343)))) (unfocusZipperList!659 (t!375175 (t!375175 zl!343)))))))

(declare-fun b!5427449 () Bool)

(assert (=> b!5427449 (= e!3363259 Nil!61827)))

(assert (= (and d!1730804 c!946766) b!5427448))

(assert (= (and d!1730804 (not c!946766)) b!5427449))

(declare-fun m!6451174 () Bool)

(assert (=> d!1730804 m!6451174))

(declare-fun m!6451176 () Bool)

(assert (=> b!5427448 m!6451176))

(declare-fun m!6451178 () Bool)

(assert (=> b!5427448 m!6451178))

(assert (=> b!5427023 d!1730804))

(declare-fun d!1730810 () Bool)

(assert (=> d!1730810 true))

(declare-fun setRes!35391 () Bool)

(assert (=> d!1730810 setRes!35391))

(declare-fun condSetEmpty!35391 () Bool)

(declare-fun res!2309696 () (InoxSet Context!9202))

(assert (=> d!1730810 (= condSetEmpty!35391 (= res!2309696 ((as const (Array Context!9202 Bool)) false)))))

(assert (=> d!1730810 (= (choose!41152 lt!2213329 lambda!284592) res!2309696)))

(declare-fun setIsEmpty!35391 () Bool)

(assert (=> setIsEmpty!35391 setRes!35391))

(declare-fun setElem!35391 () Context!9202)

(declare-fun setNonEmpty!35391 () Bool)

(declare-fun e!3363260 () Bool)

(declare-fun tp!1497621 () Bool)

(assert (=> setNonEmpty!35391 (= setRes!35391 (and tp!1497621 (inv!81289 setElem!35391) e!3363260))))

(declare-fun setRest!35391 () (InoxSet Context!9202))

(assert (=> setNonEmpty!35391 (= res!2309696 ((_ map or) (store ((as const (Array Context!9202 Bool)) false) setElem!35391 true) setRest!35391))))

(declare-fun b!5427450 () Bool)

(declare-fun tp!1497620 () Bool)

(assert (=> b!5427450 (= e!3363260 tp!1497620)))

(assert (= (and d!1730810 condSetEmpty!35391) setIsEmpty!35391))

(assert (= (and d!1730810 (not condSetEmpty!35391)) setNonEmpty!35391))

(assert (= setNonEmpty!35391 b!5427450))

(declare-fun m!6451180 () Bool)

(assert (=> setNonEmpty!35391 m!6451180))

(assert (=> d!1730436 d!1730810))

(declare-fun bs!1253694 () Bool)

(declare-fun d!1730812 () Bool)

(assert (= bs!1253694 (and d!1730812 d!1730692)))

(declare-fun lambda!284690 () Int)

(assert (=> bs!1253694 (= lambda!284690 lambda!284675)))

(assert (=> d!1730812 (= (nullableZipper!1462 ((_ map or) lt!2213328 lt!2213318)) (exists!2023 ((_ map or) lt!2213328 lt!2213318) lambda!284690))))

(declare-fun bs!1253695 () Bool)

(assert (= bs!1253695 d!1730812))

(declare-fun m!6451182 () Bool)

(assert (=> bs!1253695 m!6451182))

(assert (=> b!5427070 d!1730812))

(declare-fun d!1730814 () Bool)

(assert (=> d!1730814 (= (nullable!5386 (reg!15546 r!7292)) (nullableFct!1612 (reg!15546 r!7292)))))

(declare-fun bs!1253696 () Bool)

(assert (= bs!1253696 d!1730814))

(declare-fun m!6451184 () Bool)

(assert (=> bs!1253696 m!6451184))

(assert (=> b!5426874 d!1730814))

(declare-fun e!3363266 () (InoxSet Context!9202))

(declare-fun b!5427451 () Bool)

(assert (=> b!5427451 (= e!3363266 (store ((as const (Array Context!9202 Bool)) false) (ite c!946474 lt!2213352 (Context!9203 call!388333)) true))))

(declare-fun b!5427453 () Bool)

(declare-fun e!3363263 () Bool)

(assert (=> b!5427453 (= e!3363263 (nullable!5386 (regOne!30946 (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343))))))))))

(declare-fun bm!388490 () Bool)

(declare-fun call!388500 () (InoxSet Context!9202))

(declare-fun call!388496 () (InoxSet Context!9202))

(assert (=> bm!388490 (= call!388500 call!388496)))

(declare-fun b!5427454 () Bool)

(declare-fun e!3363261 () (InoxSet Context!9202))

(declare-fun e!3363264 () (InoxSet Context!9202))

(assert (=> b!5427454 (= e!3363261 e!3363264)))

(declare-fun c!946768 () Bool)

(assert (=> b!5427454 (= c!946768 ((_ is Concat!24062) (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))))))

(declare-fun b!5427455 () Bool)

(declare-fun call!388499 () (InoxSet Context!9202))

(assert (=> b!5427455 (= e!3363261 ((_ map or) call!388499 call!388496))))

(declare-fun b!5427456 () Bool)

(declare-fun c!946771 () Bool)

(assert (=> b!5427456 (= c!946771 e!3363263)))

(declare-fun res!2309697 () Bool)

(assert (=> b!5427456 (=> (not res!2309697) (not e!3363263))))

(assert (=> b!5427456 (= res!2309697 ((_ is Concat!24062) (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))))))

(declare-fun e!3363265 () (InoxSet Context!9202))

(assert (=> b!5427456 (= e!3363265 e!3363261)))

(declare-fun b!5427457 () Bool)

(declare-fun call!388495 () (InoxSet Context!9202))

(assert (=> b!5427457 (= e!3363265 ((_ map or) call!388499 call!388495))))

(declare-fun bm!388491 () Bool)

(assert (=> bm!388491 (= call!388496 call!388495)))

(declare-fun bm!388492 () Bool)

(declare-fun call!388497 () List!61951)

(assert (=> bm!388492 (= call!388497 ($colon$colon!1512 (exprs!5101 (ite c!946474 lt!2213352 (Context!9203 call!388333))) (ite (or c!946771 c!946768) (regTwo!30946 (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))) (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343))))))))))

(declare-fun bm!388493 () Bool)

(declare-fun c!946767 () Bool)

(assert (=> bm!388493 (= call!388499 (derivationStepZipperDown!665 (ite c!946767 (regOne!30947 (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))) (regOne!30946 (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343))))))) (ite c!946767 (ite c!946474 lt!2213352 (Context!9203 call!388333)) (Context!9203 call!388497)) (h!68274 s!2326)))))

(declare-fun c!946769 () Bool)

(declare-fun d!1730816 () Bool)

(assert (=> d!1730816 (= c!946769 (and ((_ is ElementMatch!15217) (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))) (= (c!946431 (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))) (h!68274 s!2326))))))

(assert (=> d!1730816 (= (derivationStepZipperDown!665 (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343))))) (ite c!946474 lt!2213352 (Context!9203 call!388333)) (h!68274 s!2326)) e!3363266)))

(declare-fun b!5427452 () Bool)

(assert (=> b!5427452 (= e!3363266 e!3363265)))

(assert (=> b!5427452 (= c!946767 ((_ is Union!15217) (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))))))

(declare-fun b!5427458 () Bool)

(assert (=> b!5427458 (= e!3363264 call!388500)))

(declare-fun b!5427459 () Bool)

(declare-fun e!3363262 () (InoxSet Context!9202))

(assert (=> b!5427459 (= e!3363262 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5427460 () Bool)

(assert (=> b!5427460 (= e!3363262 call!388500)))

(declare-fun bm!388494 () Bool)

(declare-fun call!388498 () List!61951)

(assert (=> bm!388494 (= call!388495 (derivationStepZipperDown!665 (ite c!946767 (regTwo!30947 (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))) (ite c!946771 (regTwo!30946 (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))) (ite c!946768 (regOne!30946 (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))) (reg!15546 (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343))))))))) (ite (or c!946767 c!946771) (ite c!946474 lt!2213352 (Context!9203 call!388333)) (Context!9203 call!388498)) (h!68274 s!2326)))))

(declare-fun bm!388495 () Bool)

(assert (=> bm!388495 (= call!388498 call!388497)))

(declare-fun b!5427461 () Bool)

(declare-fun c!946770 () Bool)

(assert (=> b!5427461 (= c!946770 ((_ is Star!15217) (ite c!946474 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))))))

(assert (=> b!5427461 (= e!3363264 e!3363262)))

(assert (= (and d!1730816 c!946769) b!5427451))

(assert (= (and d!1730816 (not c!946769)) b!5427452))

(assert (= (and b!5427452 c!946767) b!5427457))

(assert (= (and b!5427452 (not c!946767)) b!5427456))

(assert (= (and b!5427456 res!2309697) b!5427453))

(assert (= (and b!5427456 c!946771) b!5427455))

(assert (= (and b!5427456 (not c!946771)) b!5427454))

(assert (= (and b!5427454 c!946768) b!5427458))

(assert (= (and b!5427454 (not c!946768)) b!5427461))

(assert (= (and b!5427461 c!946770) b!5427460))

(assert (= (and b!5427461 (not c!946770)) b!5427459))

(assert (= (or b!5427458 b!5427460) bm!388495))

(assert (= (or b!5427458 b!5427460) bm!388490))

(assert (= (or b!5427455 bm!388495) bm!388492))

(assert (= (or b!5427455 bm!388490) bm!388491))

(assert (= (or b!5427457 bm!388491) bm!388494))

(assert (= (or b!5427457 b!5427455) bm!388493))

(declare-fun m!6451186 () Bool)

(assert (=> bm!388492 m!6451186))

(declare-fun m!6451188 () Bool)

(assert (=> b!5427451 m!6451188))

(declare-fun m!6451190 () Bool)

(assert (=> bm!388494 m!6451190))

(declare-fun m!6451192 () Bool)

(assert (=> bm!388493 m!6451192))

(declare-fun m!6451194 () Bool)

(assert (=> b!5427453 m!6451194))

(assert (=> bm!388329 d!1730816))

(declare-fun b!5427473 () Bool)

(declare-fun e!3363278 () Bool)

(assert (=> b!5427473 (= e!3363278 (nullable!5386 (regOne!30946 r!7292)))))

(declare-fun bm!388502 () Bool)

(declare-fun call!388507 () Bool)

(assert (=> bm!388502 (= call!388507 (isEmpty!33827 (_1!35719 (get!21326 lt!2213443))))))

(declare-fun b!5427474 () Bool)

(declare-fun res!2309706 () Bool)

(declare-fun e!3363279 () Bool)

(assert (=> b!5427474 (=> res!2309706 e!3363279)))

(assert (=> b!5427474 (= res!2309706 (not (isEmpty!33827 (tail!10738 (_1!35719 (get!21326 lt!2213443))))))))

(declare-fun b!5427475 () Bool)

(declare-fun e!3363273 () Bool)

(declare-fun lt!2213467 () Bool)

(assert (=> b!5427475 (= e!3363273 (not lt!2213467))))

(declare-fun b!5427476 () Bool)

(declare-fun e!3363276 () Bool)

(assert (=> b!5427476 (= e!3363276 e!3363273)))

(declare-fun c!946777 () Bool)

(assert (=> b!5427476 (= c!946777 ((_ is EmptyLang!15217) (regOne!30946 r!7292)))))

(declare-fun b!5427477 () Bool)

(declare-fun e!3363275 () Bool)

(assert (=> b!5427477 (= e!3363275 e!3363279)))

(declare-fun res!2309701 () Bool)

(assert (=> b!5427477 (=> res!2309701 e!3363279)))

(assert (=> b!5427477 (= res!2309701 call!388507)))

(declare-fun b!5427478 () Bool)

(declare-fun res!2309704 () Bool)

(declare-fun e!3363277 () Bool)

(assert (=> b!5427478 (=> res!2309704 e!3363277)))

(assert (=> b!5427478 (= res!2309704 (not ((_ is ElementMatch!15217) (regOne!30946 r!7292))))))

(assert (=> b!5427478 (= e!3363273 e!3363277)))

(declare-fun b!5427479 () Bool)

(declare-fun res!2309703 () Bool)

(declare-fun e!3363274 () Bool)

(assert (=> b!5427479 (=> (not res!2309703) (not e!3363274))))

(assert (=> b!5427479 (= res!2309703 (isEmpty!33827 (tail!10738 (_1!35719 (get!21326 lt!2213443)))))))

(declare-fun b!5427480 () Bool)

(assert (=> b!5427480 (= e!3363278 (matchR!7402 (derivativeStep!4283 (regOne!30946 r!7292) (head!11641 (_1!35719 (get!21326 lt!2213443)))) (tail!10738 (_1!35719 (get!21326 lt!2213443)))))))

(declare-fun d!1730820 () Bool)

(assert (=> d!1730820 e!3363276))

(declare-fun c!946779 () Bool)

(assert (=> d!1730820 (= c!946779 ((_ is EmptyExpr!15217) (regOne!30946 r!7292)))))

(assert (=> d!1730820 (= lt!2213467 e!3363278)))

(declare-fun c!946778 () Bool)

(assert (=> d!1730820 (= c!946778 (isEmpty!33827 (_1!35719 (get!21326 lt!2213443))))))

(assert (=> d!1730820 (validRegex!6953 (regOne!30946 r!7292))))

(assert (=> d!1730820 (= (matchR!7402 (regOne!30946 r!7292) (_1!35719 (get!21326 lt!2213443))) lt!2213467)))

(declare-fun b!5427481 () Bool)

(assert (=> b!5427481 (= e!3363276 (= lt!2213467 call!388507))))

(declare-fun b!5427482 () Bool)

(assert (=> b!5427482 (= e!3363277 e!3363275)))

(declare-fun res!2309702 () Bool)

(assert (=> b!5427482 (=> (not res!2309702) (not e!3363275))))

(assert (=> b!5427482 (= res!2309702 (not lt!2213467))))

(declare-fun b!5427483 () Bool)

(assert (=> b!5427483 (= e!3363274 (= (head!11641 (_1!35719 (get!21326 lt!2213443))) (c!946431 (regOne!30946 r!7292))))))

(declare-fun b!5427484 () Bool)

(assert (=> b!5427484 (= e!3363279 (not (= (head!11641 (_1!35719 (get!21326 lt!2213443))) (c!946431 (regOne!30946 r!7292)))))))

(declare-fun b!5427485 () Bool)

(declare-fun res!2309699 () Bool)

(assert (=> b!5427485 (=> res!2309699 e!3363277)))

(assert (=> b!5427485 (= res!2309699 e!3363274)))

(declare-fun res!2309700 () Bool)

(assert (=> b!5427485 (=> (not res!2309700) (not e!3363274))))

(assert (=> b!5427485 (= res!2309700 lt!2213467)))

(declare-fun b!5427486 () Bool)

(declare-fun res!2309705 () Bool)

(assert (=> b!5427486 (=> (not res!2309705) (not e!3363274))))

(assert (=> b!5427486 (= res!2309705 (not call!388507))))

(assert (= (and d!1730820 c!946778) b!5427473))

(assert (= (and d!1730820 (not c!946778)) b!5427480))

(assert (= (and d!1730820 c!946779) b!5427481))

(assert (= (and d!1730820 (not c!946779)) b!5427476))

(assert (= (and b!5427476 c!946777) b!5427475))

(assert (= (and b!5427476 (not c!946777)) b!5427478))

(assert (= (and b!5427478 (not res!2309704)) b!5427485))

(assert (= (and b!5427485 res!2309700) b!5427486))

(assert (= (and b!5427486 res!2309705) b!5427479))

(assert (= (and b!5427479 res!2309703) b!5427483))

(assert (= (and b!5427485 (not res!2309699)) b!5427482))

(assert (= (and b!5427482 res!2309702) b!5427477))

(assert (= (and b!5427477 (not res!2309701)) b!5427474))

(assert (= (and b!5427474 (not res!2309706)) b!5427484))

(assert (= (or b!5427481 b!5427477 b!5427486) bm!388502))

(declare-fun m!6451196 () Bool)

(assert (=> d!1730820 m!6451196))

(assert (=> d!1730820 m!6450740))

(declare-fun m!6451198 () Bool)

(assert (=> b!5427479 m!6451198))

(assert (=> b!5427479 m!6451198))

(declare-fun m!6451200 () Bool)

(assert (=> b!5427479 m!6451200))

(declare-fun m!6451202 () Bool)

(assert (=> b!5427473 m!6451202))

(declare-fun m!6451204 () Bool)

(assert (=> b!5427480 m!6451204))

(assert (=> b!5427480 m!6451204))

(declare-fun m!6451206 () Bool)

(assert (=> b!5427480 m!6451206))

(assert (=> b!5427480 m!6451198))

(assert (=> b!5427480 m!6451206))

(assert (=> b!5427480 m!6451198))

(declare-fun m!6451208 () Bool)

(assert (=> b!5427480 m!6451208))

(assert (=> bm!388502 m!6451196))

(assert (=> b!5427484 m!6451204))

(assert (=> b!5427474 m!6451198))

(assert (=> b!5427474 m!6451198))

(assert (=> b!5427474 m!6451200))

(assert (=> b!5427483 m!6451204))

(assert (=> b!5427047 d!1730820))

(assert (=> b!5427047 d!1730698))

(declare-fun d!1730822 () Bool)

(assert (=> d!1730822 (= (nullable!5386 (h!68275 (exprs!5101 lt!2213352))) (nullableFct!1612 (h!68275 (exprs!5101 lt!2213352))))))

(declare-fun bs!1253698 () Bool)

(assert (= bs!1253698 d!1730822))

(declare-fun m!6451212 () Bool)

(assert (=> bs!1253698 m!6451212))

(assert (=> b!5426324 d!1730822))

(declare-fun d!1730824 () Bool)

(assert (=> d!1730824 (= ($colon$colon!1512 (exprs!5101 lt!2213334) (ite (or c!946621 c!946618) (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (regOne!30946 r!7292)))) (Cons!61827 (ite (or c!946621 c!946618) (regTwo!30946 (reg!15546 (regOne!30946 r!7292))) (reg!15546 (regOne!30946 r!7292))) (exprs!5101 lt!2213334)))))

(assert (=> bm!388401 d!1730824))

(declare-fun d!1730826 () Bool)

(assert (=> d!1730826 (= (nullable!5386 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (nullableFct!1612 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))))))

(declare-fun bs!1253699 () Bool)

(assert (= bs!1253699 d!1730826))

(declare-fun m!6451218 () Bool)

(assert (=> bs!1253699 m!6451218))

(assert (=> b!5426319 d!1730826))

(declare-fun b!5427487 () Bool)

(declare-fun e!3363285 () Bool)

(assert (=> b!5427487 (= e!3363285 (nullable!5386 (derivativeStep!4283 lt!2213346 (head!11641 s!2326))))))

(declare-fun bm!388503 () Bool)

(declare-fun call!388508 () Bool)

(assert (=> bm!388503 (= call!388508 (isEmpty!33827 (tail!10738 s!2326)))))

(declare-fun b!5427488 () Bool)

(declare-fun res!2309714 () Bool)

(declare-fun e!3363286 () Bool)

(assert (=> b!5427488 (=> res!2309714 e!3363286)))

(assert (=> b!5427488 (= res!2309714 (not (isEmpty!33827 (tail!10738 (tail!10738 s!2326)))))))

(declare-fun b!5427489 () Bool)

(declare-fun e!3363280 () Bool)

(declare-fun lt!2213468 () Bool)

(assert (=> b!5427489 (= e!3363280 (not lt!2213468))))

(declare-fun b!5427490 () Bool)

(declare-fun e!3363283 () Bool)

(assert (=> b!5427490 (= e!3363283 e!3363280)))

(declare-fun c!946780 () Bool)

(assert (=> b!5427490 (= c!946780 ((_ is EmptyLang!15217) (derivativeStep!4283 lt!2213346 (head!11641 s!2326))))))

(declare-fun b!5427491 () Bool)

(declare-fun e!3363282 () Bool)

(assert (=> b!5427491 (= e!3363282 e!3363286)))

(declare-fun res!2309709 () Bool)

(assert (=> b!5427491 (=> res!2309709 e!3363286)))

(assert (=> b!5427491 (= res!2309709 call!388508)))

(declare-fun b!5427492 () Bool)

(declare-fun res!2309712 () Bool)

(declare-fun e!3363284 () Bool)

(assert (=> b!5427492 (=> res!2309712 e!3363284)))

(assert (=> b!5427492 (= res!2309712 (not ((_ is ElementMatch!15217) (derivativeStep!4283 lt!2213346 (head!11641 s!2326)))))))

(assert (=> b!5427492 (= e!3363280 e!3363284)))

(declare-fun b!5427493 () Bool)

(declare-fun res!2309711 () Bool)

(declare-fun e!3363281 () Bool)

(assert (=> b!5427493 (=> (not res!2309711) (not e!3363281))))

(assert (=> b!5427493 (= res!2309711 (isEmpty!33827 (tail!10738 (tail!10738 s!2326))))))

(declare-fun b!5427494 () Bool)

(assert (=> b!5427494 (= e!3363285 (matchR!7402 (derivativeStep!4283 (derivativeStep!4283 lt!2213346 (head!11641 s!2326)) (head!11641 (tail!10738 s!2326))) (tail!10738 (tail!10738 s!2326))))))

(declare-fun d!1730828 () Bool)

(assert (=> d!1730828 e!3363283))

(declare-fun c!946782 () Bool)

(assert (=> d!1730828 (= c!946782 ((_ is EmptyExpr!15217) (derivativeStep!4283 lt!2213346 (head!11641 s!2326))))))

(assert (=> d!1730828 (= lt!2213468 e!3363285)))

(declare-fun c!946781 () Bool)

(assert (=> d!1730828 (= c!946781 (isEmpty!33827 (tail!10738 s!2326)))))

(assert (=> d!1730828 (validRegex!6953 (derivativeStep!4283 lt!2213346 (head!11641 s!2326)))))

(assert (=> d!1730828 (= (matchR!7402 (derivativeStep!4283 lt!2213346 (head!11641 s!2326)) (tail!10738 s!2326)) lt!2213468)))

(declare-fun b!5427495 () Bool)

(assert (=> b!5427495 (= e!3363283 (= lt!2213468 call!388508))))

(declare-fun b!5427496 () Bool)

(assert (=> b!5427496 (= e!3363284 e!3363282)))

(declare-fun res!2309710 () Bool)

(assert (=> b!5427496 (=> (not res!2309710) (not e!3363282))))

(assert (=> b!5427496 (= res!2309710 (not lt!2213468))))

(declare-fun b!5427497 () Bool)

(assert (=> b!5427497 (= e!3363281 (= (head!11641 (tail!10738 s!2326)) (c!946431 (derivativeStep!4283 lt!2213346 (head!11641 s!2326)))))))

(declare-fun b!5427498 () Bool)

(assert (=> b!5427498 (= e!3363286 (not (= (head!11641 (tail!10738 s!2326)) (c!946431 (derivativeStep!4283 lt!2213346 (head!11641 s!2326))))))))

(declare-fun b!5427499 () Bool)

(declare-fun res!2309707 () Bool)

(assert (=> b!5427499 (=> res!2309707 e!3363284)))

(assert (=> b!5427499 (= res!2309707 e!3363281)))

(declare-fun res!2309708 () Bool)

(assert (=> b!5427499 (=> (not res!2309708) (not e!3363281))))

(assert (=> b!5427499 (= res!2309708 lt!2213468)))

(declare-fun b!5427500 () Bool)

(declare-fun res!2309713 () Bool)

(assert (=> b!5427500 (=> (not res!2309713) (not e!3363281))))

(assert (=> b!5427500 (= res!2309713 (not call!388508))))

(assert (= (and d!1730828 c!946781) b!5427487))

(assert (= (and d!1730828 (not c!946781)) b!5427494))

(assert (= (and d!1730828 c!946782) b!5427495))

(assert (= (and d!1730828 (not c!946782)) b!5427490))

(assert (= (and b!5427490 c!946780) b!5427489))

(assert (= (and b!5427490 (not c!946780)) b!5427492))

(assert (= (and b!5427492 (not res!2309712)) b!5427499))

(assert (= (and b!5427499 res!2309708) b!5427500))

(assert (= (and b!5427500 res!2309713) b!5427493))

(assert (= (and b!5427493 res!2309711) b!5427497))

(assert (= (and b!5427499 (not res!2309707)) b!5427496))

(assert (= (and b!5427496 res!2309710) b!5427491))

(assert (= (and b!5427491 (not res!2309709)) b!5427488))

(assert (= (and b!5427488 (not res!2309714)) b!5427498))

(assert (= (or b!5427495 b!5427491 b!5427500) bm!388503))

(assert (=> d!1730828 m!6450496))

(assert (=> d!1730828 m!6450498))

(assert (=> d!1730828 m!6450558))

(declare-fun m!6451224 () Bool)

(assert (=> d!1730828 m!6451224))

(assert (=> b!5427493 m!6450496))

(assert (=> b!5427493 m!6451056))

(assert (=> b!5427493 m!6451056))

(declare-fun m!6451226 () Bool)

(assert (=> b!5427493 m!6451226))

(assert (=> b!5427487 m!6450558))

(declare-fun m!6451228 () Bool)

(assert (=> b!5427487 m!6451228))

(assert (=> b!5427494 m!6450496))

(assert (=> b!5427494 m!6451052))

(assert (=> b!5427494 m!6450558))

(assert (=> b!5427494 m!6451052))

(declare-fun m!6451230 () Bool)

(assert (=> b!5427494 m!6451230))

(assert (=> b!5427494 m!6450496))

(assert (=> b!5427494 m!6451056))

(assert (=> b!5427494 m!6451230))

(assert (=> b!5427494 m!6451056))

(declare-fun m!6451232 () Bool)

(assert (=> b!5427494 m!6451232))

(assert (=> bm!388503 m!6450496))

(assert (=> bm!388503 m!6450498))

(assert (=> b!5427498 m!6450496))

(assert (=> b!5427498 m!6451052))

(assert (=> b!5427488 m!6450496))

(assert (=> b!5427488 m!6451056))

(assert (=> b!5427488 m!6451056))

(assert (=> b!5427488 m!6451226))

(assert (=> b!5427497 m!6450496))

(assert (=> b!5427497 m!6451052))

(assert (=> b!5426774 d!1730828))

(declare-fun b!5427543 () Bool)

(declare-fun c!946802 () Bool)

(assert (=> b!5427543 (= c!946802 (nullable!5386 (regOne!30946 lt!2213346)))))

(declare-fun e!3363310 () Regex!15217)

(declare-fun e!3363311 () Regex!15217)

(assert (=> b!5427543 (= e!3363310 e!3363311)))

(declare-fun call!388526 () Regex!15217)

(declare-fun c!946805 () Bool)

(declare-fun bm!388520 () Bool)

(assert (=> bm!388520 (= call!388526 (derivativeStep!4283 (ite c!946805 (regOne!30947 lt!2213346) (regOne!30946 lt!2213346)) (head!11641 s!2326)))))

(declare-fun b!5427544 () Bool)

(declare-fun e!3363314 () Regex!15217)

(assert (=> b!5427544 (= e!3363314 EmptyLang!15217)))

(declare-fun call!388528 () Regex!15217)

(declare-fun b!5427545 () Bool)

(assert (=> b!5427545 (= e!3363311 (Union!15217 (Concat!24062 call!388526 (regTwo!30946 lt!2213346)) call!388528))))

(declare-fun d!1730832 () Bool)

(declare-fun lt!2213471 () Regex!15217)

(assert (=> d!1730832 (validRegex!6953 lt!2213471)))

(assert (=> d!1730832 (= lt!2213471 e!3363314)))

(declare-fun c!946803 () Bool)

(assert (=> d!1730832 (= c!946803 (or ((_ is EmptyExpr!15217) lt!2213346) ((_ is EmptyLang!15217) lt!2213346)))))

(assert (=> d!1730832 (validRegex!6953 lt!2213346)))

(assert (=> d!1730832 (= (derivativeStep!4283 lt!2213346 (head!11641 s!2326)) lt!2213471)))

(declare-fun call!388525 () Regex!15217)

(declare-fun bm!388521 () Bool)

(declare-fun c!946806 () Bool)

(assert (=> bm!388521 (= call!388525 (derivativeStep!4283 (ite c!946805 (regTwo!30947 lt!2213346) (ite c!946806 (reg!15546 lt!2213346) (ite c!946802 (regTwo!30946 lt!2213346) (regOne!30946 lt!2213346)))) (head!11641 s!2326)))))

(declare-fun b!5427546 () Bool)

(declare-fun e!3363312 () Regex!15217)

(assert (=> b!5427546 (= e!3363312 (ite (= (head!11641 s!2326) (c!946431 lt!2213346)) EmptyExpr!15217 EmptyLang!15217))))

(declare-fun b!5427547 () Bool)

(assert (=> b!5427547 (= e!3363314 e!3363312)))

(declare-fun c!946804 () Bool)

(assert (=> b!5427547 (= c!946804 ((_ is ElementMatch!15217) lt!2213346))))

(declare-fun b!5427548 () Bool)

(assert (=> b!5427548 (= c!946805 ((_ is Union!15217) lt!2213346))))

(declare-fun e!3363313 () Regex!15217)

(assert (=> b!5427548 (= e!3363312 e!3363313)))

(declare-fun bm!388522 () Bool)

(declare-fun call!388527 () Regex!15217)

(assert (=> bm!388522 (= call!388527 call!388525)))

(declare-fun bm!388523 () Bool)

(assert (=> bm!388523 (= call!388528 call!388527)))

(declare-fun b!5427549 () Bool)

(assert (=> b!5427549 (= e!3363313 (Union!15217 call!388526 call!388525))))

(declare-fun b!5427550 () Bool)

(assert (=> b!5427550 (= e!3363311 (Union!15217 (Concat!24062 call!388528 (regTwo!30946 lt!2213346)) EmptyLang!15217))))

(declare-fun b!5427551 () Bool)

(assert (=> b!5427551 (= e!3363313 e!3363310)))

(assert (=> b!5427551 (= c!946806 ((_ is Star!15217) lt!2213346))))

(declare-fun b!5427552 () Bool)

(assert (=> b!5427552 (= e!3363310 (Concat!24062 call!388527 lt!2213346))))

(assert (= (and d!1730832 c!946803) b!5427544))

(assert (= (and d!1730832 (not c!946803)) b!5427547))

(assert (= (and b!5427547 c!946804) b!5427546))

(assert (= (and b!5427547 (not c!946804)) b!5427548))

(assert (= (and b!5427548 c!946805) b!5427549))

(assert (= (and b!5427548 (not c!946805)) b!5427551))

(assert (= (and b!5427551 c!946806) b!5427552))

(assert (= (and b!5427551 (not c!946806)) b!5427543))

(assert (= (and b!5427543 c!946802) b!5427545))

(assert (= (and b!5427543 (not c!946802)) b!5427550))

(assert (= (or b!5427545 b!5427550) bm!388523))

(assert (= (or b!5427552 bm!388523) bm!388522))

(assert (= (or b!5427549 bm!388522) bm!388521))

(assert (= (or b!5427549 b!5427545) bm!388520))

(declare-fun m!6451250 () Bool)

(assert (=> b!5427543 m!6451250))

(assert (=> bm!388520 m!6450502))

(declare-fun m!6451252 () Bool)

(assert (=> bm!388520 m!6451252))

(declare-fun m!6451254 () Bool)

(assert (=> d!1730832 m!6451254))

(assert (=> d!1730832 m!6450554))

(assert (=> bm!388521 m!6450502))

(declare-fun m!6451256 () Bool)

(assert (=> bm!388521 m!6451256))

(assert (=> b!5426774 d!1730832))

(assert (=> b!5426774 d!1730720))

(assert (=> b!5426774 d!1730670))

(assert (=> b!5426746 d!1730720))

(declare-fun d!1730840 () Bool)

(declare-fun res!2309723 () Bool)

(declare-fun e!3363319 () Bool)

(assert (=> d!1730840 (=> res!2309723 e!3363319)))

(assert (=> d!1730840 (= res!2309723 ((_ is Nil!61828) lt!2213450))))

(assert (=> d!1730840 (= (noDuplicate!1412 lt!2213450) e!3363319)))

(declare-fun b!5427557 () Bool)

(declare-fun e!3363320 () Bool)

(assert (=> b!5427557 (= e!3363319 e!3363320)))

(declare-fun res!2309724 () Bool)

(assert (=> b!5427557 (=> (not res!2309724) (not e!3363320))))

(declare-fun contains!19722 (List!61952 Context!9202) Bool)

(assert (=> b!5427557 (= res!2309724 (not (contains!19722 (t!375175 lt!2213450) (h!68276 lt!2213450))))))

(declare-fun b!5427558 () Bool)

(assert (=> b!5427558 (= e!3363320 (noDuplicate!1412 (t!375175 lt!2213450)))))

(assert (= (and d!1730840 (not res!2309723)) b!5427557))

(assert (= (and b!5427557 res!2309724) b!5427558))

(declare-fun m!6451258 () Bool)

(assert (=> b!5427557 m!6451258))

(declare-fun m!6451260 () Bool)

(assert (=> b!5427558 m!6451260))

(assert (=> d!1730618 d!1730840))

(declare-fun d!1730842 () Bool)

(declare-fun e!3363329 () Bool)

(assert (=> d!1730842 e!3363329))

(declare-fun res!2309731 () Bool)

(assert (=> d!1730842 (=> (not res!2309731) (not e!3363329))))

(declare-fun res!2309732 () List!61952)

(assert (=> d!1730842 (= res!2309731 (noDuplicate!1412 res!2309732))))

(declare-fun e!3363330 () Bool)

(assert (=> d!1730842 e!3363330))

(assert (=> d!1730842 (= (choose!41161 z!1189) res!2309732)))

(declare-fun b!5427568 () Bool)

(declare-fun e!3363331 () Bool)

(declare-fun tp!1497627 () Bool)

(assert (=> b!5427568 (= e!3363331 tp!1497627)))

(declare-fun tp!1497626 () Bool)

(declare-fun b!5427567 () Bool)

(assert (=> b!5427567 (= e!3363330 (and (inv!81289 (h!68276 res!2309732)) e!3363331 tp!1497626))))

(declare-fun b!5427569 () Bool)

(assert (=> b!5427569 (= e!3363329 (= (content!11127 res!2309732) z!1189))))

(assert (= b!5427567 b!5427568))

(assert (= (and d!1730842 ((_ is Cons!61828) res!2309732)) b!5427567))

(assert (= (and d!1730842 res!2309731) b!5427569))

(declare-fun m!6451262 () Bool)

(assert (=> d!1730842 m!6451262))

(declare-fun m!6451264 () Bool)

(assert (=> b!5427567 m!6451264))

(declare-fun m!6451266 () Bool)

(assert (=> b!5427569 m!6451266))

(assert (=> d!1730618 d!1730842))

(assert (=> b!5426439 d!1730398))

(assert (=> b!5426778 d!1730720))

(declare-fun d!1730844 () Bool)

(assert (=> d!1730844 (= (isEmpty!33827 (t!375173 s!2326)) ((_ is Nil!61826) (t!375173 s!2326)))))

(assert (=> d!1730518 d!1730844))

(declare-fun b!5427589 () Bool)

(declare-fun e!3363349 () Bool)

(declare-fun call!388533 () Bool)

(assert (=> b!5427589 (= e!3363349 call!388533)))

(declare-fun b!5427590 () Bool)

(declare-fun e!3363351 () Bool)

(assert (=> b!5427590 (= e!3363351 e!3363349)))

(declare-fun res!2309747 () Bool)

(declare-fun call!388534 () Bool)

(assert (=> b!5427590 (= res!2309747 call!388534)))

(assert (=> b!5427590 (=> res!2309747 e!3363349)))

(declare-fun b!5427591 () Bool)

(declare-fun e!3363352 () Bool)

(assert (=> b!5427591 (= e!3363352 call!388533)))

(declare-fun b!5427592 () Bool)

(declare-fun e!3363348 () Bool)

(declare-fun e!3363347 () Bool)

(assert (=> b!5427592 (= e!3363348 e!3363347)))

(declare-fun res!2309748 () Bool)

(assert (=> b!5427592 (=> res!2309748 e!3363347)))

(assert (=> b!5427592 (= res!2309748 ((_ is Star!15217) (regOne!30946 (regOne!30946 r!7292))))))

(declare-fun b!5427593 () Bool)

(assert (=> b!5427593 (= e!3363351 e!3363352)))

(declare-fun res!2309746 () Bool)

(assert (=> b!5427593 (= res!2309746 call!388534)))

(assert (=> b!5427593 (=> (not res!2309746) (not e!3363352))))

(declare-fun bm!388528 () Bool)

(declare-fun c!946811 () Bool)

(assert (=> bm!388528 (= call!388534 (nullable!5386 (ite c!946811 (regOne!30947 (regOne!30946 (regOne!30946 r!7292))) (regOne!30946 (regOne!30946 (regOne!30946 r!7292))))))))

(declare-fun b!5427594 () Bool)

(assert (=> b!5427594 (= e!3363347 e!3363351)))

(assert (=> b!5427594 (= c!946811 ((_ is Union!15217) (regOne!30946 (regOne!30946 r!7292))))))

(declare-fun d!1730846 () Bool)

(declare-fun res!2309744 () Bool)

(declare-fun e!3363350 () Bool)

(assert (=> d!1730846 (=> res!2309744 e!3363350)))

(assert (=> d!1730846 (= res!2309744 ((_ is EmptyExpr!15217) (regOne!30946 (regOne!30946 r!7292))))))

(assert (=> d!1730846 (= (nullableFct!1612 (regOne!30946 (regOne!30946 r!7292))) e!3363350)))

(declare-fun bm!388529 () Bool)

(assert (=> bm!388529 (= call!388533 (nullable!5386 (ite c!946811 (regTwo!30947 (regOne!30946 (regOne!30946 r!7292))) (regTwo!30946 (regOne!30946 (regOne!30946 r!7292))))))))

(declare-fun b!5427595 () Bool)

(assert (=> b!5427595 (= e!3363350 e!3363348)))

(declare-fun res!2309745 () Bool)

(assert (=> b!5427595 (=> (not res!2309745) (not e!3363348))))

(assert (=> b!5427595 (= res!2309745 (and (not ((_ is EmptyLang!15217) (regOne!30946 (regOne!30946 r!7292)))) (not ((_ is ElementMatch!15217) (regOne!30946 (regOne!30946 r!7292))))))))

(assert (= (and d!1730846 (not res!2309744)) b!5427595))

(assert (= (and b!5427595 res!2309745) b!5427592))

(assert (= (and b!5427592 (not res!2309748)) b!5427594))

(assert (= (and b!5427594 c!946811) b!5427590))

(assert (= (and b!5427594 (not c!946811)) b!5427593))

(assert (= (and b!5427590 (not res!2309747)) b!5427589))

(assert (= (and b!5427593 res!2309746) b!5427591))

(assert (= (or b!5427589 b!5427591) bm!388529))

(assert (= (or b!5427590 b!5427593) bm!388528))

(declare-fun m!6451272 () Bool)

(assert (=> bm!388528 m!6451272))

(declare-fun m!6451274 () Bool)

(assert (=> bm!388529 m!6451274))

(assert (=> d!1730626 d!1730846))

(declare-fun d!1730854 () Bool)

(assert (=> d!1730854 (= (isEmpty!33829 (findConcatSeparation!1742 (regOne!30946 r!7292) (regTwo!30946 r!7292) Nil!61826 s!2326 s!2326)) (not ((_ is Some!15327) (findConcatSeparation!1742 (regOne!30946 r!7292) (regTwo!30946 r!7292) Nil!61826 s!2326 s!2326))))))

(assert (=> d!1730616 d!1730854))

(assert (=> b!5426742 d!1730668))

(assert (=> b!5426742 d!1730670))

(declare-fun d!1730858 () Bool)

(assert (=> d!1730858 (= (isUnion!435 lt!2213428) ((_ is Union!15217) lt!2213428))))

(assert (=> b!5427015 d!1730858))

(assert (=> d!1730514 d!1730476))

(assert (=> d!1730514 d!1730462))

(declare-fun d!1730860 () Bool)

(assert (=> d!1730860 (= (matchR!7402 r!7292 s!2326) (matchRSpec!2320 r!7292 s!2326))))

(assert (=> d!1730860 true))

(declare-fun _$88!3661 () Unit!154390)

(assert (=> d!1730860 (= (choose!41154 r!7292 s!2326) _$88!3661)))

(declare-fun bs!1253722 () Bool)

(assert (= bs!1253722 d!1730860))

(assert (=> bs!1253722 m!6450148))

(assert (=> bs!1253722 m!6450146))

(assert (=> d!1730514 d!1730860))

(assert (=> d!1730514 d!1730562))

(assert (=> bm!388362 d!1730652))

(declare-fun d!1730866 () Bool)

(assert (=> d!1730866 (= (head!11642 (exprs!5101 (h!68276 zl!343))) (h!68275 (exprs!5101 (h!68276 zl!343))))))

(assert (=> b!5426982 d!1730866))

(declare-fun d!1730868 () Bool)

(assert (=> d!1730868 (= (Exists!2398 (ite c!946554 lambda!284618 lambda!284621)) (choose!41158 (ite c!946554 lambda!284618 lambda!284621)))))

(declare-fun bs!1253723 () Bool)

(assert (= bs!1253723 d!1730868))

(declare-fun m!6451298 () Bool)

(assert (=> bs!1253723 m!6451298))

(assert (=> bm!388363 d!1730868))

(declare-fun d!1730870 () Bool)

(assert (=> d!1730870 true))

(declare-fun setRes!35392 () Bool)

(assert (=> d!1730870 setRes!35392))

(declare-fun condSetEmpty!35392 () Bool)

(declare-fun res!2309750 () (InoxSet Context!9202))

(assert (=> d!1730870 (= condSetEmpty!35392 (= res!2309750 ((as const (Array Context!9202 Bool)) false)))))

(assert (=> d!1730870 (= (choose!41152 lt!2213327 lambda!284592) res!2309750)))

(declare-fun setIsEmpty!35392 () Bool)

(assert (=> setIsEmpty!35392 setRes!35392))

(declare-fun setElem!35392 () Context!9202)

(declare-fun setNonEmpty!35392 () Bool)

(declare-fun tp!1497629 () Bool)

(declare-fun e!3363361 () Bool)

(assert (=> setNonEmpty!35392 (= setRes!35392 (and tp!1497629 (inv!81289 setElem!35392) e!3363361))))

(declare-fun setRest!35392 () (InoxSet Context!9202))

(assert (=> setNonEmpty!35392 (= res!2309750 ((_ map or) (store ((as const (Array Context!9202 Bool)) false) setElem!35392 true) setRest!35392))))

(declare-fun b!5427611 () Bool)

(declare-fun tp!1497628 () Bool)

(assert (=> b!5427611 (= e!3363361 tp!1497628)))

(assert (= (and d!1730870 condSetEmpty!35392) setIsEmpty!35392))

(assert (= (and d!1730870 (not condSetEmpty!35392)) setNonEmpty!35392))

(assert (= setNonEmpty!35392 b!5427611))

(declare-fun m!6451300 () Bool)

(assert (=> setNonEmpty!35392 m!6451300))

(assert (=> d!1730542 d!1730870))

(declare-fun b!5427612 () Bool)

(declare-fun e!3363367 () (InoxSet Context!9202))

(assert (=> b!5427612 (= e!3363367 (store ((as const (Array Context!9202 Bool)) false) (Context!9203 (t!375174 (exprs!5101 lt!2213350))) true))))

(declare-fun b!5427614 () Bool)

(declare-fun e!3363364 () Bool)

(assert (=> b!5427614 (= e!3363364 (nullable!5386 (regOne!30946 (h!68275 (exprs!5101 lt!2213350)))))))

(declare-fun bm!388536 () Bool)

(declare-fun call!388546 () (InoxSet Context!9202))

(declare-fun call!388542 () (InoxSet Context!9202))

(assert (=> bm!388536 (= call!388546 call!388542)))

(declare-fun b!5427615 () Bool)

(declare-fun e!3363362 () (InoxSet Context!9202))

(declare-fun e!3363365 () (InoxSet Context!9202))

(assert (=> b!5427615 (= e!3363362 e!3363365)))

(declare-fun c!946820 () Bool)

(assert (=> b!5427615 (= c!946820 ((_ is Concat!24062) (h!68275 (exprs!5101 lt!2213350))))))

(declare-fun b!5427616 () Bool)

(declare-fun call!388545 () (InoxSet Context!9202))

(assert (=> b!5427616 (= e!3363362 ((_ map or) call!388545 call!388542))))

(declare-fun b!5427617 () Bool)

(declare-fun c!946823 () Bool)

(assert (=> b!5427617 (= c!946823 e!3363364)))

(declare-fun res!2309751 () Bool)

(assert (=> b!5427617 (=> (not res!2309751) (not e!3363364))))

(assert (=> b!5427617 (= res!2309751 ((_ is Concat!24062) (h!68275 (exprs!5101 lt!2213350))))))

(declare-fun e!3363366 () (InoxSet Context!9202))

(assert (=> b!5427617 (= e!3363366 e!3363362)))

(declare-fun b!5427618 () Bool)

(declare-fun call!388541 () (InoxSet Context!9202))

(assert (=> b!5427618 (= e!3363366 ((_ map or) call!388545 call!388541))))

(declare-fun bm!388537 () Bool)

(assert (=> bm!388537 (= call!388542 call!388541)))

(declare-fun call!388543 () List!61951)

(declare-fun bm!388538 () Bool)

(assert (=> bm!388538 (= call!388543 ($colon$colon!1512 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213350)))) (ite (or c!946823 c!946820) (regTwo!30946 (h!68275 (exprs!5101 lt!2213350))) (h!68275 (exprs!5101 lt!2213350)))))))

(declare-fun bm!388539 () Bool)

(declare-fun c!946819 () Bool)

(assert (=> bm!388539 (= call!388545 (derivationStepZipperDown!665 (ite c!946819 (regOne!30947 (h!68275 (exprs!5101 lt!2213350))) (regOne!30946 (h!68275 (exprs!5101 lt!2213350)))) (ite c!946819 (Context!9203 (t!375174 (exprs!5101 lt!2213350))) (Context!9203 call!388543)) (h!68274 s!2326)))))

(declare-fun d!1730874 () Bool)

(declare-fun c!946821 () Bool)

(assert (=> d!1730874 (= c!946821 (and ((_ is ElementMatch!15217) (h!68275 (exprs!5101 lt!2213350))) (= (c!946431 (h!68275 (exprs!5101 lt!2213350))) (h!68274 s!2326))))))

(assert (=> d!1730874 (= (derivationStepZipperDown!665 (h!68275 (exprs!5101 lt!2213350)) (Context!9203 (t!375174 (exprs!5101 lt!2213350))) (h!68274 s!2326)) e!3363367)))

(declare-fun b!5427613 () Bool)

(assert (=> b!5427613 (= e!3363367 e!3363366)))

(assert (=> b!5427613 (= c!946819 ((_ is Union!15217) (h!68275 (exprs!5101 lt!2213350))))))

(declare-fun b!5427619 () Bool)

(assert (=> b!5427619 (= e!3363365 call!388546)))

(declare-fun b!5427620 () Bool)

(declare-fun e!3363363 () (InoxSet Context!9202))

(assert (=> b!5427620 (= e!3363363 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5427621 () Bool)

(assert (=> b!5427621 (= e!3363363 call!388546)))

(declare-fun call!388544 () List!61951)

(declare-fun bm!388540 () Bool)

(assert (=> bm!388540 (= call!388541 (derivationStepZipperDown!665 (ite c!946819 (regTwo!30947 (h!68275 (exprs!5101 lt!2213350))) (ite c!946823 (regTwo!30946 (h!68275 (exprs!5101 lt!2213350))) (ite c!946820 (regOne!30946 (h!68275 (exprs!5101 lt!2213350))) (reg!15546 (h!68275 (exprs!5101 lt!2213350)))))) (ite (or c!946819 c!946823) (Context!9203 (t!375174 (exprs!5101 lt!2213350))) (Context!9203 call!388544)) (h!68274 s!2326)))))

(declare-fun bm!388541 () Bool)

(assert (=> bm!388541 (= call!388544 call!388543)))

(declare-fun b!5427622 () Bool)

(declare-fun c!946822 () Bool)

(assert (=> b!5427622 (= c!946822 ((_ is Star!15217) (h!68275 (exprs!5101 lt!2213350))))))

(assert (=> b!5427622 (= e!3363365 e!3363363)))

(assert (= (and d!1730874 c!946821) b!5427612))

(assert (= (and d!1730874 (not c!946821)) b!5427613))

(assert (= (and b!5427613 c!946819) b!5427618))

(assert (= (and b!5427613 (not c!946819)) b!5427617))

(assert (= (and b!5427617 res!2309751) b!5427614))

(assert (= (and b!5427617 c!946823) b!5427616))

(assert (= (and b!5427617 (not c!946823)) b!5427615))

(assert (= (and b!5427615 c!946820) b!5427619))

(assert (= (and b!5427615 (not c!946820)) b!5427622))

(assert (= (and b!5427622 c!946822) b!5427621))

(assert (= (and b!5427622 (not c!946822)) b!5427620))

(assert (= (or b!5427619 b!5427621) bm!388541))

(assert (= (or b!5427619 b!5427621) bm!388536))

(assert (= (or b!5427616 bm!388541) bm!388538))

(assert (= (or b!5427616 bm!388536) bm!388537))

(assert (= (or b!5427618 bm!388537) bm!388540))

(assert (= (or b!5427618 b!5427616) bm!388539))

(declare-fun m!6451304 () Bool)

(assert (=> bm!388538 m!6451304))

(declare-fun m!6451306 () Bool)

(assert (=> b!5427612 m!6451306))

(declare-fun m!6451308 () Bool)

(assert (=> bm!388540 m!6451308))

(declare-fun m!6451310 () Bool)

(assert (=> bm!388539 m!6451310))

(declare-fun m!6451312 () Bool)

(assert (=> b!5427614 m!6451312))

(assert (=> bm!388381 d!1730874))

(assert (=> bm!388382 d!1730652))

(declare-fun d!1730878 () Bool)

(assert (=> d!1730878 (= (nullable!5386 (regOne!30946 (reg!15546 (regOne!30946 r!7292)))) (nullableFct!1612 (regOne!30946 (reg!15546 (regOne!30946 r!7292)))))))

(declare-fun bs!1253729 () Bool)

(assert (= bs!1253729 d!1730878))

(declare-fun m!6451314 () Bool)

(assert (=> bs!1253729 m!6451314))

(assert (=> b!5426891 d!1730878))

(declare-fun d!1730880 () Bool)

(assert (=> d!1730880 (= (Exists!2398 (ite c!946592 lambda!284632 lambda!284633)) (choose!41158 (ite c!946592 lambda!284632 lambda!284633)))))

(declare-fun bs!1253730 () Bool)

(assert (= bs!1253730 d!1730880))

(declare-fun m!6451316 () Bool)

(assert (=> bs!1253730 m!6451316))

(assert (=> bm!388384 d!1730880))

(declare-fun d!1730882 () Bool)

(assert (=> d!1730882 (= (head!11642 (unfocusZipperList!659 zl!343)) (h!68275 (unfocusZipperList!659 zl!343)))))

(assert (=> b!5427012 d!1730882))

(assert (=> d!1730610 d!1730722))

(declare-fun b!5427623 () Bool)

(declare-fun e!3363373 () Bool)

(assert (=> b!5427623 (= e!3363373 (nullable!5386 (regOne!30946 r!7292)))))

(declare-fun bm!388542 () Bool)

(declare-fun call!388547 () Bool)

(assert (=> bm!388542 (= call!388547 (isEmpty!33827 Nil!61826))))

(declare-fun b!5427624 () Bool)

(declare-fun res!2309759 () Bool)

(declare-fun e!3363374 () Bool)

(assert (=> b!5427624 (=> res!2309759 e!3363374)))

(assert (=> b!5427624 (= res!2309759 (not (isEmpty!33827 (tail!10738 Nil!61826))))))

(declare-fun b!5427625 () Bool)

(declare-fun e!3363368 () Bool)

(declare-fun lt!2213472 () Bool)

(assert (=> b!5427625 (= e!3363368 (not lt!2213472))))

(declare-fun b!5427626 () Bool)

(declare-fun e!3363371 () Bool)

(assert (=> b!5427626 (= e!3363371 e!3363368)))

(declare-fun c!946824 () Bool)

(assert (=> b!5427626 (= c!946824 ((_ is EmptyLang!15217) (regOne!30946 r!7292)))))

(declare-fun b!5427627 () Bool)

(declare-fun e!3363370 () Bool)

(assert (=> b!5427627 (= e!3363370 e!3363374)))

(declare-fun res!2309754 () Bool)

(assert (=> b!5427627 (=> res!2309754 e!3363374)))

(assert (=> b!5427627 (= res!2309754 call!388547)))

(declare-fun b!5427628 () Bool)

(declare-fun res!2309757 () Bool)

(declare-fun e!3363372 () Bool)

(assert (=> b!5427628 (=> res!2309757 e!3363372)))

(assert (=> b!5427628 (= res!2309757 (not ((_ is ElementMatch!15217) (regOne!30946 r!7292))))))

(assert (=> b!5427628 (= e!3363368 e!3363372)))

(declare-fun b!5427629 () Bool)

(declare-fun res!2309756 () Bool)

(declare-fun e!3363369 () Bool)

(assert (=> b!5427629 (=> (not res!2309756) (not e!3363369))))

(assert (=> b!5427629 (= res!2309756 (isEmpty!33827 (tail!10738 Nil!61826)))))

(declare-fun b!5427630 () Bool)

(assert (=> b!5427630 (= e!3363373 (matchR!7402 (derivativeStep!4283 (regOne!30946 r!7292) (head!11641 Nil!61826)) (tail!10738 Nil!61826)))))

(declare-fun d!1730884 () Bool)

(assert (=> d!1730884 e!3363371))

(declare-fun c!946826 () Bool)

(assert (=> d!1730884 (= c!946826 ((_ is EmptyExpr!15217) (regOne!30946 r!7292)))))

(assert (=> d!1730884 (= lt!2213472 e!3363373)))

(declare-fun c!946825 () Bool)

(assert (=> d!1730884 (= c!946825 (isEmpty!33827 Nil!61826))))

(assert (=> d!1730884 (validRegex!6953 (regOne!30946 r!7292))))

(assert (=> d!1730884 (= (matchR!7402 (regOne!30946 r!7292) Nil!61826) lt!2213472)))

(declare-fun b!5427631 () Bool)

(assert (=> b!5427631 (= e!3363371 (= lt!2213472 call!388547))))

(declare-fun b!5427632 () Bool)

(assert (=> b!5427632 (= e!3363372 e!3363370)))

(declare-fun res!2309755 () Bool)

(assert (=> b!5427632 (=> (not res!2309755) (not e!3363370))))

(assert (=> b!5427632 (= res!2309755 (not lt!2213472))))

(declare-fun b!5427633 () Bool)

(assert (=> b!5427633 (= e!3363369 (= (head!11641 Nil!61826) (c!946431 (regOne!30946 r!7292))))))

(declare-fun b!5427634 () Bool)

(assert (=> b!5427634 (= e!3363374 (not (= (head!11641 Nil!61826) (c!946431 (regOne!30946 r!7292)))))))

(declare-fun b!5427635 () Bool)

(declare-fun res!2309752 () Bool)

(assert (=> b!5427635 (=> res!2309752 e!3363372)))

(assert (=> b!5427635 (= res!2309752 e!3363369)))

(declare-fun res!2309753 () Bool)

(assert (=> b!5427635 (=> (not res!2309753) (not e!3363369))))

(assert (=> b!5427635 (= res!2309753 lt!2213472)))

(declare-fun b!5427636 () Bool)

(declare-fun res!2309758 () Bool)

(assert (=> b!5427636 (=> (not res!2309758) (not e!3363369))))

(assert (=> b!5427636 (= res!2309758 (not call!388547))))

(assert (= (and d!1730884 c!946825) b!5427623))

(assert (= (and d!1730884 (not c!946825)) b!5427630))

(assert (= (and d!1730884 c!946826) b!5427631))

(assert (= (and d!1730884 (not c!946826)) b!5427626))

(assert (= (and b!5427626 c!946824) b!5427625))

(assert (= (and b!5427626 (not c!946824)) b!5427628))

(assert (= (and b!5427628 (not res!2309757)) b!5427635))

(assert (= (and b!5427635 res!2309753) b!5427636))

(assert (= (and b!5427636 res!2309758) b!5427629))

(assert (= (and b!5427629 res!2309756) b!5427633))

(assert (= (and b!5427635 (not res!2309752)) b!5427632))

(assert (= (and b!5427632 res!2309755) b!5427627))

(assert (= (and b!5427627 (not res!2309754)) b!5427624))

(assert (= (and b!5427624 (not res!2309759)) b!5427634))

(assert (= (or b!5427631 b!5427627 b!5427636) bm!388542))

(declare-fun m!6451318 () Bool)

(assert (=> d!1730884 m!6451318))

(assert (=> d!1730884 m!6450740))

(declare-fun m!6451320 () Bool)

(assert (=> b!5427629 m!6451320))

(assert (=> b!5427629 m!6451320))

(declare-fun m!6451322 () Bool)

(assert (=> b!5427629 m!6451322))

(assert (=> b!5427623 m!6451202))

(declare-fun m!6451324 () Bool)

(assert (=> b!5427630 m!6451324))

(assert (=> b!5427630 m!6451324))

(declare-fun m!6451326 () Bool)

(assert (=> b!5427630 m!6451326))

(assert (=> b!5427630 m!6451320))

(assert (=> b!5427630 m!6451326))

(assert (=> b!5427630 m!6451320))

(declare-fun m!6451328 () Bool)

(assert (=> b!5427630 m!6451328))

(assert (=> bm!388542 m!6451318))

(assert (=> b!5427634 m!6451324))

(assert (=> b!5427624 m!6451320))

(assert (=> b!5427624 m!6451320))

(assert (=> b!5427624 m!6451322))

(assert (=> b!5427633 m!6451324))

(assert (=> d!1730610 d!1730884))

(assert (=> d!1730610 d!1730750))

(declare-fun d!1730886 () Bool)

(declare-fun res!2309760 () Bool)

(declare-fun e!3363375 () Bool)

(assert (=> d!1730886 (=> res!2309760 e!3363375)))

(assert (=> d!1730886 (= res!2309760 ((_ is Nil!61827) (exprs!5101 (h!68276 zl!343))))))

(assert (=> d!1730886 (= (forall!14555 (exprs!5101 (h!68276 zl!343)) lambda!284608) e!3363375)))

(declare-fun b!5427637 () Bool)

(declare-fun e!3363376 () Bool)

(assert (=> b!5427637 (= e!3363375 e!3363376)))

(declare-fun res!2309761 () Bool)

(assert (=> b!5427637 (=> (not res!2309761) (not e!3363376))))

(assert (=> b!5427637 (= res!2309761 (dynLambda!24363 lambda!284608 (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5427638 () Bool)

(assert (=> b!5427638 (= e!3363376 (forall!14555 (t!375174 (exprs!5101 (h!68276 zl!343))) lambda!284608))))

(assert (= (and d!1730886 (not res!2309760)) b!5427637))

(assert (= (and b!5427637 res!2309761) b!5427638))

(declare-fun b_lambda!207099 () Bool)

(assert (=> (not b_lambda!207099) (not b!5427637)))

(declare-fun m!6451330 () Bool)

(assert (=> b!5427637 m!6451330))

(declare-fun m!6451332 () Bool)

(assert (=> b!5427638 m!6451332))

(assert (=> d!1730454 d!1730886))

(assert (=> d!1730438 d!1730436))

(declare-fun d!1730888 () Bool)

(assert (=> d!1730888 (= (flatMap!944 lt!2213329 lambda!284592) (dynLambda!24362 lambda!284592 lt!2213352))))

(assert (=> d!1730888 true))

(declare-fun _$13!1951 () Unit!154390)

(assert (=> d!1730888 (= (choose!41150 lt!2213329 lt!2213352 lambda!284592) _$13!1951)))

(declare-fun b_lambda!207101 () Bool)

(assert (=> (not b_lambda!207101) (not d!1730888)))

(declare-fun bs!1253731 () Bool)

(assert (= bs!1253731 d!1730888))

(assert (=> bs!1253731 m!6450164))

(assert (=> bs!1253731 m!6450312))

(assert (=> d!1730438 d!1730888))

(assert (=> d!1730622 d!1730844))

(assert (=> d!1730620 d!1730622))

(assert (=> d!1730620 d!1730518))

(declare-fun d!1730890 () Bool)

(declare-fun e!3363392 () Bool)

(assert (=> d!1730890 (= (matchZipper!1461 ((_ map or) lt!2213328 lt!2213318) (t!375173 s!2326)) e!3363392)))

(declare-fun res!2309771 () Bool)

(assert (=> d!1730890 (=> res!2309771 e!3363392)))

(assert (=> d!1730890 (= res!2309771 (matchZipper!1461 lt!2213328 (t!375173 s!2326)))))

(assert (=> d!1730890 true))

(declare-fun _$48!1036 () Unit!154390)

(assert (=> d!1730890 (= (choose!41162 lt!2213328 lt!2213318 (t!375173 s!2326)) _$48!1036)))

(declare-fun b!5427660 () Bool)

(assert (=> b!5427660 (= e!3363392 (matchZipper!1461 lt!2213318 (t!375173 s!2326)))))

(assert (= (and d!1730890 (not res!2309771)) b!5427660))

(assert (=> d!1730890 m!6450144))

(assert (=> d!1730890 m!6450142))

(assert (=> b!5427660 m!6450122))

(assert (=> d!1730620 d!1730890))

(declare-fun d!1730896 () Bool)

(declare-fun c!946833 () Bool)

(assert (=> d!1730896 (= c!946833 (isEmpty!33827 (tail!10738 (t!375173 s!2326))))))

(declare-fun e!3363393 () Bool)

(assert (=> d!1730896 (= (matchZipper!1461 (derivationStepZipper!1456 ((_ map or) lt!2213328 lt!2213318) (head!11641 (t!375173 s!2326))) (tail!10738 (t!375173 s!2326))) e!3363393)))

(declare-fun b!5427661 () Bool)

(assert (=> b!5427661 (= e!3363393 (nullableZipper!1462 (derivationStepZipper!1456 ((_ map or) lt!2213328 lt!2213318) (head!11641 (t!375173 s!2326)))))))

(declare-fun b!5427662 () Bool)

(assert (=> b!5427662 (= e!3363393 (matchZipper!1461 (derivationStepZipper!1456 (derivationStepZipper!1456 ((_ map or) lt!2213328 lt!2213318) (head!11641 (t!375173 s!2326))) (head!11641 (tail!10738 (t!375173 s!2326)))) (tail!10738 (tail!10738 (t!375173 s!2326)))))))

(assert (= (and d!1730896 c!946833) b!5427661))

(assert (= (and d!1730896 (not c!946833)) b!5427662))

(assert (=> d!1730896 m!6450364))

(assert (=> d!1730896 m!6450846))

(assert (=> b!5427661 m!6450786))

(declare-fun m!6451358 () Bool)

(assert (=> b!5427661 m!6451358))

(assert (=> b!5427662 m!6450364))

(assert (=> b!5427662 m!6450850))

(assert (=> b!5427662 m!6450786))

(assert (=> b!5427662 m!6450850))

(declare-fun m!6451360 () Bool)

(assert (=> b!5427662 m!6451360))

(assert (=> b!5427662 m!6450364))

(assert (=> b!5427662 m!6450854))

(assert (=> b!5427662 m!6451360))

(assert (=> b!5427662 m!6450854))

(declare-fun m!6451362 () Bool)

(assert (=> b!5427662 m!6451362))

(assert (=> b!5427071 d!1730896))

(declare-fun bs!1253740 () Bool)

(declare-fun d!1730902 () Bool)

(assert (= bs!1253740 (and d!1730902 d!1730678)))

(declare-fun lambda!284695 () Int)

(assert (=> bs!1253740 (= lambda!284695 lambda!284671)))

(declare-fun bs!1253741 () Bool)

(assert (= bs!1253741 (and d!1730902 d!1730660)))

(assert (=> bs!1253741 (= lambda!284695 lambda!284669)))

(declare-fun bs!1253742 () Bool)

(assert (= bs!1253742 (and d!1730902 d!1730782)))

(assert (=> bs!1253742 (= (= (head!11641 (t!375173 s!2326)) (head!11641 s!2326)) (= lambda!284695 lambda!284688))))

(declare-fun bs!1253743 () Bool)

(assert (= bs!1253743 (and d!1730902 d!1730532)))

(assert (=> bs!1253743 (= (= (head!11641 (t!375173 s!2326)) (h!68274 s!2326)) (= lambda!284695 lambda!284631))))

(declare-fun bs!1253744 () Bool)

(assert (= bs!1253744 (and d!1730902 d!1730432)))

(assert (=> bs!1253744 (= (= (head!11641 (t!375173 s!2326)) (h!68274 s!2326)) (= lambda!284695 lambda!284599))))

(declare-fun bs!1253745 () Bool)

(assert (= bs!1253745 (and d!1730902 d!1730760)))

(assert (=> bs!1253745 (= (= (head!11641 (t!375173 s!2326)) (head!11641 s!2326)) (= lambda!284695 lambda!284685))))

(declare-fun bs!1253746 () Bool)

(assert (= bs!1253746 (and d!1730902 b!5426259)))

(assert (=> bs!1253746 (= (= (head!11641 (t!375173 s!2326)) (h!68274 s!2326)) (= lambda!284695 lambda!284592))))

(assert (=> d!1730902 true))

(assert (=> d!1730902 (= (derivationStepZipper!1456 ((_ map or) lt!2213328 lt!2213318) (head!11641 (t!375173 s!2326))) (flatMap!944 ((_ map or) lt!2213328 lt!2213318) lambda!284695))))

(declare-fun bs!1253750 () Bool)

(assert (= bs!1253750 d!1730902))

(declare-fun m!6451364 () Bool)

(assert (=> bs!1253750 m!6451364))

(assert (=> b!5427071 d!1730902))

(assert (=> b!5427071 d!1730662))

(assert (=> b!5427071 d!1730666))

(declare-fun d!1730906 () Bool)

(assert (=> d!1730906 (= (nullable!5386 r!7292) (nullableFct!1612 r!7292))))

(declare-fun bs!1253753 () Bool)

(assert (= bs!1253753 d!1730906))

(declare-fun m!6451366 () Bool)

(assert (=> bs!1253753 m!6451366))

(assert (=> b!5426736 d!1730906))

(declare-fun b!5427673 () Bool)

(declare-fun e!3363405 () (InoxSet Context!9202))

(assert (=> b!5427673 (= e!3363405 (store ((as const (Array Context!9202 Bool)) false) (Context!9203 (t!375174 (exprs!5101 lt!2213352))) true))))

(declare-fun b!5427675 () Bool)

(declare-fun e!3363402 () Bool)

(assert (=> b!5427675 (= e!3363402 (nullable!5386 (regOne!30946 (h!68275 (exprs!5101 lt!2213352)))))))

(declare-fun bm!388546 () Bool)

(declare-fun call!388556 () (InoxSet Context!9202))

(declare-fun call!388552 () (InoxSet Context!9202))

(assert (=> bm!388546 (= call!388556 call!388552)))

(declare-fun b!5427676 () Bool)

(declare-fun e!3363400 () (InoxSet Context!9202))

(declare-fun e!3363403 () (InoxSet Context!9202))

(assert (=> b!5427676 (= e!3363400 e!3363403)))

(declare-fun c!946839 () Bool)

(assert (=> b!5427676 (= c!946839 ((_ is Concat!24062) (h!68275 (exprs!5101 lt!2213352))))))

(declare-fun b!5427677 () Bool)

(declare-fun call!388555 () (InoxSet Context!9202))

(assert (=> b!5427677 (= e!3363400 ((_ map or) call!388555 call!388552))))

(declare-fun b!5427678 () Bool)

(declare-fun c!946842 () Bool)

(assert (=> b!5427678 (= c!946842 e!3363402)))

(declare-fun res!2309774 () Bool)

(assert (=> b!5427678 (=> (not res!2309774) (not e!3363402))))

(assert (=> b!5427678 (= res!2309774 ((_ is Concat!24062) (h!68275 (exprs!5101 lt!2213352))))))

(declare-fun e!3363404 () (InoxSet Context!9202))

(assert (=> b!5427678 (= e!3363404 e!3363400)))

(declare-fun b!5427679 () Bool)

(declare-fun call!388551 () (InoxSet Context!9202))

(assert (=> b!5427679 (= e!3363404 ((_ map or) call!388555 call!388551))))

(declare-fun bm!388547 () Bool)

(assert (=> bm!388547 (= call!388552 call!388551)))

(declare-fun bm!388548 () Bool)

(declare-fun call!388553 () List!61951)

(assert (=> bm!388548 (= call!388553 ($colon$colon!1512 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213352)))) (ite (or c!946842 c!946839) (regTwo!30946 (h!68275 (exprs!5101 lt!2213352))) (h!68275 (exprs!5101 lt!2213352)))))))

(declare-fun c!946838 () Bool)

(declare-fun bm!388549 () Bool)

(assert (=> bm!388549 (= call!388555 (derivationStepZipperDown!665 (ite c!946838 (regOne!30947 (h!68275 (exprs!5101 lt!2213352))) (regOne!30946 (h!68275 (exprs!5101 lt!2213352)))) (ite c!946838 (Context!9203 (t!375174 (exprs!5101 lt!2213352))) (Context!9203 call!388553)) (h!68274 s!2326)))))

(declare-fun d!1730908 () Bool)

(declare-fun c!946840 () Bool)

(assert (=> d!1730908 (= c!946840 (and ((_ is ElementMatch!15217) (h!68275 (exprs!5101 lt!2213352))) (= (c!946431 (h!68275 (exprs!5101 lt!2213352))) (h!68274 s!2326))))))

(assert (=> d!1730908 (= (derivationStepZipperDown!665 (h!68275 (exprs!5101 lt!2213352)) (Context!9203 (t!375174 (exprs!5101 lt!2213352))) (h!68274 s!2326)) e!3363405)))

(declare-fun b!5427674 () Bool)

(assert (=> b!5427674 (= e!3363405 e!3363404)))

(assert (=> b!5427674 (= c!946838 ((_ is Union!15217) (h!68275 (exprs!5101 lt!2213352))))))

(declare-fun b!5427680 () Bool)

(assert (=> b!5427680 (= e!3363403 call!388556)))

(declare-fun b!5427681 () Bool)

(declare-fun e!3363401 () (InoxSet Context!9202))

(assert (=> b!5427681 (= e!3363401 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5427682 () Bool)

(assert (=> b!5427682 (= e!3363401 call!388556)))

(declare-fun call!388554 () List!61951)

(declare-fun bm!388550 () Bool)

(assert (=> bm!388550 (= call!388551 (derivationStepZipperDown!665 (ite c!946838 (regTwo!30947 (h!68275 (exprs!5101 lt!2213352))) (ite c!946842 (regTwo!30946 (h!68275 (exprs!5101 lt!2213352))) (ite c!946839 (regOne!30946 (h!68275 (exprs!5101 lt!2213352))) (reg!15546 (h!68275 (exprs!5101 lt!2213352)))))) (ite (or c!946838 c!946842) (Context!9203 (t!375174 (exprs!5101 lt!2213352))) (Context!9203 call!388554)) (h!68274 s!2326)))))

(declare-fun bm!388551 () Bool)

(assert (=> bm!388551 (= call!388554 call!388553)))

(declare-fun b!5427683 () Bool)

(declare-fun c!946841 () Bool)

(assert (=> b!5427683 (= c!946841 ((_ is Star!15217) (h!68275 (exprs!5101 lt!2213352))))))

(assert (=> b!5427683 (= e!3363403 e!3363401)))

(assert (= (and d!1730908 c!946840) b!5427673))

(assert (= (and d!1730908 (not c!946840)) b!5427674))

(assert (= (and b!5427674 c!946838) b!5427679))

(assert (= (and b!5427674 (not c!946838)) b!5427678))

(assert (= (and b!5427678 res!2309774) b!5427675))

(assert (= (and b!5427678 c!946842) b!5427677))

(assert (= (and b!5427678 (not c!946842)) b!5427676))

(assert (= (and b!5427676 c!946839) b!5427680))

(assert (= (and b!5427676 (not c!946839)) b!5427683))

(assert (= (and b!5427683 c!946841) b!5427682))

(assert (= (and b!5427683 (not c!946841)) b!5427681))

(assert (= (or b!5427680 b!5427682) bm!388551))

(assert (= (or b!5427680 b!5427682) bm!388546))

(assert (= (or b!5427677 bm!388551) bm!388548))

(assert (= (or b!5427677 bm!388546) bm!388547))

(assert (= (or b!5427679 bm!388547) bm!388550))

(assert (= (or b!5427679 b!5427677) bm!388549))

(declare-fun m!6451386 () Bool)

(assert (=> bm!388548 m!6451386))

(declare-fun m!6451388 () Bool)

(assert (=> b!5427673 m!6451388))

(declare-fun m!6451390 () Bool)

(assert (=> bm!388550 m!6451390))

(declare-fun m!6451392 () Bool)

(assert (=> bm!388549 m!6451392))

(declare-fun m!6451394 () Bool)

(assert (=> b!5427675 m!6451394))

(assert (=> bm!388303 d!1730908))

(declare-fun b!5427684 () Bool)

(declare-fun e!3363411 () (InoxSet Context!9202))

(assert (=> b!5427684 (= e!3363411 (store ((as const (Array Context!9202 Bool)) false) (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) true))))

(declare-fun b!5427686 () Bool)

(declare-fun e!3363408 () Bool)

(assert (=> b!5427686 (= e!3363408 (nullable!5386 (regOne!30946 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))))))))

(declare-fun bm!388552 () Bool)

(declare-fun call!388562 () (InoxSet Context!9202))

(declare-fun call!388558 () (InoxSet Context!9202))

(assert (=> bm!388552 (= call!388562 call!388558)))

(declare-fun b!5427687 () Bool)

(declare-fun e!3363406 () (InoxSet Context!9202))

(declare-fun e!3363409 () (InoxSet Context!9202))

(assert (=> b!5427687 (= e!3363406 e!3363409)))

(declare-fun c!946844 () Bool)

(assert (=> b!5427687 (= c!946844 ((_ is Concat!24062) (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))))))

(declare-fun b!5427688 () Bool)

(declare-fun call!388561 () (InoxSet Context!9202))

(assert (=> b!5427688 (= e!3363406 ((_ map or) call!388561 call!388558))))

(declare-fun b!5427689 () Bool)

(declare-fun c!946847 () Bool)

(assert (=> b!5427689 (= c!946847 e!3363408)))

(declare-fun res!2309775 () Bool)

(assert (=> b!5427689 (=> (not res!2309775) (not e!3363408))))

(assert (=> b!5427689 (= res!2309775 ((_ is Concat!24062) (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))))))

(declare-fun e!3363410 () (InoxSet Context!9202))

(assert (=> b!5427689 (= e!3363410 e!3363406)))

(declare-fun b!5427690 () Bool)

(declare-fun call!388557 () (InoxSet Context!9202))

(assert (=> b!5427690 (= e!3363410 ((_ map or) call!388561 call!388557))))

(declare-fun bm!388553 () Bool)

(assert (=> bm!388553 (= call!388558 call!388557)))

(declare-fun call!388559 () List!61951)

(declare-fun bm!388554 () Bool)

(assert (=> bm!388554 (= call!388559 ($colon$colon!1512 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))))) (ite (or c!946847 c!946844) (regTwo!30946 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))))))))

(declare-fun c!946843 () Bool)

(declare-fun bm!388555 () Bool)

(assert (=> bm!388555 (= call!388561 (derivationStepZipperDown!665 (ite c!946843 (regOne!30947 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (regOne!30946 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))))) (ite c!946843 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (Context!9203 call!388559)) (h!68274 s!2326)))))

(declare-fun d!1730912 () Bool)

(declare-fun c!946845 () Bool)

(assert (=> d!1730912 (= c!946845 (and ((_ is ElementMatch!15217) (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (= (c!946431 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (h!68274 s!2326))))))

(assert (=> d!1730912 (= (derivationStepZipperDown!665 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))) (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (h!68274 s!2326)) e!3363411)))

(declare-fun b!5427685 () Bool)

(assert (=> b!5427685 (= e!3363411 e!3363410)))

(assert (=> b!5427685 (= c!946843 ((_ is Union!15217) (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))))))

(declare-fun b!5427691 () Bool)

(assert (=> b!5427691 (= e!3363409 call!388562)))

(declare-fun b!5427692 () Bool)

(declare-fun e!3363407 () (InoxSet Context!9202))

(assert (=> b!5427692 (= e!3363407 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5427693 () Bool)

(assert (=> b!5427693 (= e!3363407 call!388562)))

(declare-fun bm!388556 () Bool)

(declare-fun call!388560 () List!61951)

(assert (=> bm!388556 (= call!388557 (derivationStepZipperDown!665 (ite c!946843 (regTwo!30947 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (ite c!946847 (regTwo!30946 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (ite c!946844 (regOne!30946 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (reg!15546 (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))))))) (ite (or c!946843 c!946847) (Context!9203 (t!375174 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))) (Context!9203 call!388560)) (h!68274 s!2326)))))

(declare-fun bm!388557 () Bool)

(assert (=> bm!388557 (= call!388560 call!388559)))

(declare-fun b!5427694 () Bool)

(declare-fun c!946846 () Bool)

(assert (=> b!5427694 (= c!946846 ((_ is Star!15217) (h!68275 (exprs!5101 (Context!9203 (Cons!61827 (h!68275 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343)))))))))))

(assert (=> b!5427694 (= e!3363409 e!3363407)))

(assert (= (and d!1730912 c!946845) b!5427684))

(assert (= (and d!1730912 (not c!946845)) b!5427685))

(assert (= (and b!5427685 c!946843) b!5427690))

(assert (= (and b!5427685 (not c!946843)) b!5427689))

(assert (= (and b!5427689 res!2309775) b!5427686))

(assert (= (and b!5427689 c!946847) b!5427688))

(assert (= (and b!5427689 (not c!946847)) b!5427687))

(assert (= (and b!5427687 c!946844) b!5427691))

(assert (= (and b!5427687 (not c!946844)) b!5427694))

(assert (= (and b!5427694 c!946846) b!5427693))

(assert (= (and b!5427694 (not c!946846)) b!5427692))

(assert (= (or b!5427691 b!5427693) bm!388557))

(assert (= (or b!5427691 b!5427693) bm!388552))

(assert (= (or b!5427688 bm!388557) bm!388554))

(assert (= (or b!5427688 bm!388552) bm!388553))

(assert (= (or b!5427690 bm!388553) bm!388556))

(assert (= (or b!5427690 b!5427688) bm!388555))

(declare-fun m!6451402 () Bool)

(assert (=> bm!388554 m!6451402))

(declare-fun m!6451404 () Bool)

(assert (=> b!5427684 m!6451404))

(declare-fun m!6451406 () Bool)

(assert (=> bm!388556 m!6451406))

(declare-fun m!6451408 () Bool)

(assert (=> bm!388555 m!6451408))

(declare-fun m!6451410 () Bool)

(assert (=> b!5427686 m!6451410))

(assert (=> bm!388302 d!1730912))

(assert (=> bs!1253540 d!1730556))

(declare-fun bs!1253767 () Bool)

(declare-fun d!1730922 () Bool)

(assert (= bs!1253767 (and d!1730922 d!1730692)))

(declare-fun lambda!284698 () Int)

(assert (=> bs!1253767 (= lambda!284698 lambda!284675)))

(declare-fun bs!1253768 () Bool)

(assert (= bs!1253768 (and d!1730922 d!1730812)))

(assert (=> bs!1253768 (= lambda!284698 lambda!284690)))

(assert (=> d!1730922 (= (nullableZipper!1462 lt!2213348) (exists!2023 lt!2213348 lambda!284698))))

(declare-fun bs!1253769 () Bool)

(assert (= bs!1253769 d!1730922))

(declare-fun m!6451412 () Bool)

(assert (=> bs!1253769 m!6451412))

(assert (=> b!5426758 d!1730922))

(declare-fun b!5427732 () Bool)

(declare-fun e!3363436 () List!61950)

(assert (=> b!5427732 (= e!3363436 (Cons!61826 (h!68274 (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826))) (++!13600 (t!375173 (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826))) (t!375173 s!2326))))))

(declare-fun b!5427733 () Bool)

(declare-fun res!2309791 () Bool)

(declare-fun e!3363435 () Bool)

(assert (=> b!5427733 (=> (not res!2309791) (not e!3363435))))

(declare-fun lt!2213479 () List!61950)

(declare-fun size!39886 (List!61950) Int)

(assert (=> b!5427733 (= res!2309791 (= (size!39886 lt!2213479) (+ (size!39886 (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826))) (size!39886 (t!375173 s!2326)))))))

(declare-fun d!1730924 () Bool)

(assert (=> d!1730924 e!3363435))

(declare-fun res!2309790 () Bool)

(assert (=> d!1730924 (=> (not res!2309790) (not e!3363435))))

(declare-fun content!11129 (List!61950) (InoxSet C!30704))

(assert (=> d!1730924 (= res!2309790 (= (content!11129 lt!2213479) ((_ map or) (content!11129 (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826))) (content!11129 (t!375173 s!2326)))))))

(assert (=> d!1730924 (= lt!2213479 e!3363436)))

(declare-fun c!946859 () Bool)

(assert (=> d!1730924 (= c!946859 ((_ is Nil!61826) (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826))))))

(assert (=> d!1730924 (= (++!13600 (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826)) (t!375173 s!2326)) lt!2213479)))

(declare-fun b!5427731 () Bool)

(assert (=> b!5427731 (= e!3363436 (t!375173 s!2326))))

(declare-fun b!5427734 () Bool)

(assert (=> b!5427734 (= e!3363435 (or (not (= (t!375173 s!2326) Nil!61826)) (= lt!2213479 (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826)))))))

(assert (= (and d!1730924 c!946859) b!5427731))

(assert (= (and d!1730924 (not c!946859)) b!5427732))

(assert (= (and d!1730924 res!2309790) b!5427733))

(assert (= (and b!5427733 res!2309791) b!5427734))

(declare-fun m!6451446 () Bool)

(assert (=> b!5427732 m!6451446))

(declare-fun m!6451448 () Bool)

(assert (=> b!5427733 m!6451448))

(assert (=> b!5427733 m!6450754))

(declare-fun m!6451450 () Bool)

(assert (=> b!5427733 m!6451450))

(declare-fun m!6451452 () Bool)

(assert (=> b!5427733 m!6451452))

(declare-fun m!6451454 () Bool)

(assert (=> d!1730924 m!6451454))

(assert (=> d!1730924 m!6450754))

(declare-fun m!6451456 () Bool)

(assert (=> d!1730924 m!6451456))

(declare-fun m!6451458 () Bool)

(assert (=> d!1730924 m!6451458))

(assert (=> b!5427053 d!1730924))

(declare-fun b!5427737 () Bool)

(declare-fun e!3363439 () List!61950)

(assert (=> b!5427737 (= e!3363439 (Cons!61826 (h!68274 Nil!61826) (++!13600 (t!375173 Nil!61826) (Cons!61826 (h!68274 s!2326) Nil!61826))))))

(declare-fun b!5427738 () Bool)

(declare-fun res!2309794 () Bool)

(declare-fun e!3363438 () Bool)

(assert (=> b!5427738 (=> (not res!2309794) (not e!3363438))))

(declare-fun lt!2213480 () List!61950)

(assert (=> b!5427738 (= res!2309794 (= (size!39886 lt!2213480) (+ (size!39886 Nil!61826) (size!39886 (Cons!61826 (h!68274 s!2326) Nil!61826)))))))

(declare-fun d!1730932 () Bool)

(assert (=> d!1730932 e!3363438))

(declare-fun res!2309793 () Bool)

(assert (=> d!1730932 (=> (not res!2309793) (not e!3363438))))

(assert (=> d!1730932 (= res!2309793 (= (content!11129 lt!2213480) ((_ map or) (content!11129 Nil!61826) (content!11129 (Cons!61826 (h!68274 s!2326) Nil!61826)))))))

(assert (=> d!1730932 (= lt!2213480 e!3363439)))

(declare-fun c!946860 () Bool)

(assert (=> d!1730932 (= c!946860 ((_ is Nil!61826) Nil!61826))))

(assert (=> d!1730932 (= (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826)) lt!2213480)))

(declare-fun b!5427736 () Bool)

(assert (=> b!5427736 (= e!3363439 (Cons!61826 (h!68274 s!2326) Nil!61826))))

(declare-fun b!5427739 () Bool)

(assert (=> b!5427739 (= e!3363438 (or (not (= (Cons!61826 (h!68274 s!2326) Nil!61826) Nil!61826)) (= lt!2213480 Nil!61826)))))

(assert (= (and d!1730932 c!946860) b!5427736))

(assert (= (and d!1730932 (not c!946860)) b!5427737))

(assert (= (and d!1730932 res!2309793) b!5427738))

(assert (= (and b!5427738 res!2309794) b!5427739))

(declare-fun m!6451462 () Bool)

(assert (=> b!5427737 m!6451462))

(declare-fun m!6451464 () Bool)

(assert (=> b!5427738 m!6451464))

(declare-fun m!6451466 () Bool)

(assert (=> b!5427738 m!6451466))

(declare-fun m!6451468 () Bool)

(assert (=> b!5427738 m!6451468))

(declare-fun m!6451470 () Bool)

(assert (=> d!1730932 m!6451470))

(declare-fun m!6451472 () Bool)

(assert (=> d!1730932 m!6451472))

(declare-fun m!6451474 () Bool)

(assert (=> d!1730932 m!6451474))

(assert (=> b!5427053 d!1730932))

(declare-fun d!1730938 () Bool)

(assert (=> d!1730938 (= (++!13600 (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826)) (t!375173 s!2326)) s!2326)))

(declare-fun lt!2213483 () Unit!154390)

(declare-fun choose!41164 (List!61950 C!30704 List!61950 List!61950) Unit!154390)

(assert (=> d!1730938 (= lt!2213483 (choose!41164 Nil!61826 (h!68274 s!2326) (t!375173 s!2326) s!2326))))

(assert (=> d!1730938 (= (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) (t!375173 s!2326))) s!2326)))

(assert (=> d!1730938 (= (lemmaMoveElementToOtherListKeepsConcatEq!1857 Nil!61826 (h!68274 s!2326) (t!375173 s!2326) s!2326) lt!2213483)))

(declare-fun bs!1253781 () Bool)

(assert (= bs!1253781 d!1730938))

(assert (=> bs!1253781 m!6450754))

(assert (=> bs!1253781 m!6450754))

(assert (=> bs!1253781 m!6450756))

(declare-fun m!6451480 () Bool)

(assert (=> bs!1253781 m!6451480))

(declare-fun m!6451482 () Bool)

(assert (=> bs!1253781 m!6451482))

(assert (=> b!5427053 d!1730938))

(declare-fun b!5427752 () Bool)

(declare-fun res!2309807 () Bool)

(declare-fun e!3363452 () Bool)

(assert (=> b!5427752 (=> (not res!2309807) (not e!3363452))))

(declare-fun lt!2213485 () Option!15328)

(assert (=> b!5427752 (= res!2309807 (matchR!7402 (regOne!30946 r!7292) (_1!35719 (get!21326 lt!2213485))))))

(declare-fun b!5427753 () Bool)

(assert (=> b!5427753 (= e!3363452 (= (++!13600 (_1!35719 (get!21326 lt!2213485)) (_2!35719 (get!21326 lt!2213485))) s!2326))))

(declare-fun d!1730942 () Bool)

(declare-fun e!3363454 () Bool)

(assert (=> d!1730942 e!3363454))

(declare-fun res!2309808 () Bool)

(assert (=> d!1730942 (=> res!2309808 e!3363454)))

(assert (=> d!1730942 (= res!2309808 e!3363452)))

(declare-fun res!2309806 () Bool)

(assert (=> d!1730942 (=> (not res!2309806) (not e!3363452))))

(assert (=> d!1730942 (= res!2309806 (isDefined!12031 lt!2213485))))

(declare-fun e!3363455 () Option!15328)

(assert (=> d!1730942 (= lt!2213485 e!3363455)))

(declare-fun c!946862 () Bool)

(declare-fun e!3363456 () Bool)

(assert (=> d!1730942 (= c!946862 e!3363456)))

(declare-fun res!2309809 () Bool)

(assert (=> d!1730942 (=> (not res!2309809) (not e!3363456))))

(assert (=> d!1730942 (= res!2309809 (matchR!7402 (regOne!30946 r!7292) (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826))))))

(assert (=> d!1730942 (validRegex!6953 (regOne!30946 r!7292))))

(assert (=> d!1730942 (= (findConcatSeparation!1742 (regOne!30946 r!7292) (regTwo!30946 r!7292) (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826)) (t!375173 s!2326) s!2326) lt!2213485)))

(declare-fun b!5427754 () Bool)

(assert (=> b!5427754 (= e!3363455 (Some!15327 (tuple2!64833 (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826)) (t!375173 s!2326))))))

(declare-fun b!5427755 () Bool)

(assert (=> b!5427755 (= e!3363454 (not (isDefined!12031 lt!2213485)))))

(declare-fun b!5427756 () Bool)

(declare-fun res!2309805 () Bool)

(assert (=> b!5427756 (=> (not res!2309805) (not e!3363452))))

(assert (=> b!5427756 (= res!2309805 (matchR!7402 (regTwo!30946 r!7292) (_2!35719 (get!21326 lt!2213485))))))

(declare-fun b!5427757 () Bool)

(declare-fun e!3363453 () Option!15328)

(assert (=> b!5427757 (= e!3363453 None!15327)))

(declare-fun b!5427758 () Bool)

(declare-fun lt!2213486 () Unit!154390)

(declare-fun lt!2213484 () Unit!154390)

(assert (=> b!5427758 (= lt!2213486 lt!2213484)))

(assert (=> b!5427758 (= (++!13600 (++!13600 (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826)) (Cons!61826 (h!68274 (t!375173 s!2326)) Nil!61826)) (t!375173 (t!375173 s!2326))) s!2326)))

(assert (=> b!5427758 (= lt!2213484 (lemmaMoveElementToOtherListKeepsConcatEq!1857 (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826)) (h!68274 (t!375173 s!2326)) (t!375173 (t!375173 s!2326)) s!2326))))

(assert (=> b!5427758 (= e!3363453 (findConcatSeparation!1742 (regOne!30946 r!7292) (regTwo!30946 r!7292) (++!13600 (++!13600 Nil!61826 (Cons!61826 (h!68274 s!2326) Nil!61826)) (Cons!61826 (h!68274 (t!375173 s!2326)) Nil!61826)) (t!375173 (t!375173 s!2326)) s!2326))))

(declare-fun b!5427759 () Bool)

(assert (=> b!5427759 (= e!3363456 (matchR!7402 (regTwo!30946 r!7292) (t!375173 s!2326)))))

(declare-fun b!5427760 () Bool)

(assert (=> b!5427760 (= e!3363455 e!3363453)))

(declare-fun c!946861 () Bool)

(assert (=> b!5427760 (= c!946861 ((_ is Nil!61826) (t!375173 s!2326)))))

(assert (= (and d!1730942 res!2309809) b!5427759))

(assert (= (and d!1730942 c!946862) b!5427754))

(assert (= (and d!1730942 (not c!946862)) b!5427760))

(assert (= (and b!5427760 c!946861) b!5427757))

(assert (= (and b!5427760 (not c!946861)) b!5427758))

(assert (= (and d!1730942 res!2309806) b!5427752))

(assert (= (and b!5427752 res!2309807) b!5427756))

(assert (= (and b!5427756 res!2309805) b!5427753))

(assert (= (and d!1730942 (not res!2309808)) b!5427755))

(declare-fun m!6451490 () Bool)

(assert (=> b!5427755 m!6451490))

(declare-fun m!6451492 () Bool)

(assert (=> b!5427756 m!6451492))

(declare-fun m!6451494 () Bool)

(assert (=> b!5427756 m!6451494))

(declare-fun m!6451496 () Bool)

(assert (=> b!5427759 m!6451496))

(assert (=> d!1730942 m!6451490))

(assert (=> d!1730942 m!6450754))

(declare-fun m!6451498 () Bool)

(assert (=> d!1730942 m!6451498))

(assert (=> d!1730942 m!6450740))

(assert (=> b!5427758 m!6450754))

(declare-fun m!6451500 () Bool)

(assert (=> b!5427758 m!6451500))

(assert (=> b!5427758 m!6451500))

(declare-fun m!6451502 () Bool)

(assert (=> b!5427758 m!6451502))

(assert (=> b!5427758 m!6450754))

(declare-fun m!6451504 () Bool)

(assert (=> b!5427758 m!6451504))

(assert (=> b!5427758 m!6451500))

(declare-fun m!6451506 () Bool)

(assert (=> b!5427758 m!6451506))

(assert (=> b!5427752 m!6451492))

(declare-fun m!6451508 () Bool)

(assert (=> b!5427752 m!6451508))

(assert (=> b!5427753 m!6451492))

(declare-fun m!6451510 () Bool)

(assert (=> b!5427753 m!6451510))

(assert (=> b!5427053 d!1730942))

(declare-fun b!5427778 () Bool)

(declare-fun e!3363472 () (InoxSet Context!9202))

(assert (=> b!5427778 (= e!3363472 (store ((as const (Array Context!9202 Bool)) false) (ite c!946617 lt!2213334 (Context!9203 call!388406)) true))))

(declare-fun b!5427780 () Bool)

(declare-fun e!3363469 () Bool)

(assert (=> b!5427780 (= e!3363469 (nullable!5386 (regOne!30946 (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292)))))))))

(declare-fun bm!388563 () Bool)

(declare-fun call!388573 () (InoxSet Context!9202))

(declare-fun call!388569 () (InoxSet Context!9202))

(assert (=> bm!388563 (= call!388573 call!388569)))

(declare-fun b!5427781 () Bool)

(declare-fun e!3363467 () (InoxSet Context!9202))

(declare-fun e!3363470 () (InoxSet Context!9202))

(assert (=> b!5427781 (= e!3363467 e!3363470)))

(declare-fun c!946867 () Bool)

(assert (=> b!5427781 (= c!946867 ((_ is Concat!24062) (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292))))))))

(declare-fun b!5427782 () Bool)

(declare-fun call!388572 () (InoxSet Context!9202))

(assert (=> b!5427782 (= e!3363467 ((_ map or) call!388572 call!388569))))

(declare-fun b!5427783 () Bool)

(declare-fun c!946870 () Bool)

(assert (=> b!5427783 (= c!946870 e!3363469)))

(declare-fun res!2309820 () Bool)

(assert (=> b!5427783 (=> (not res!2309820) (not e!3363469))))

(assert (=> b!5427783 (= res!2309820 ((_ is Concat!24062) (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292))))))))

(declare-fun e!3363471 () (InoxSet Context!9202))

(assert (=> b!5427783 (= e!3363471 e!3363467)))

(declare-fun b!5427784 () Bool)

(declare-fun call!388568 () (InoxSet Context!9202))

(assert (=> b!5427784 (= e!3363471 ((_ map or) call!388572 call!388568))))

(declare-fun bm!388564 () Bool)

(assert (=> bm!388564 (= call!388569 call!388568)))

(declare-fun bm!388565 () Bool)

(declare-fun call!388570 () List!61951)

(assert (=> bm!388565 (= call!388570 ($colon$colon!1512 (exprs!5101 (ite c!946617 lt!2213334 (Context!9203 call!388406))) (ite (or c!946870 c!946867) (regTwo!30946 (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292))))) (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292)))))))))

(declare-fun bm!388566 () Bool)

(declare-fun c!946866 () Bool)

(assert (=> bm!388566 (= call!388572 (derivationStepZipperDown!665 (ite c!946866 (regOne!30947 (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292))))) (regOne!30946 (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292)))))) (ite c!946866 (ite c!946617 lt!2213334 (Context!9203 call!388406)) (Context!9203 call!388570)) (h!68274 s!2326)))))

(declare-fun d!1730946 () Bool)

(declare-fun c!946868 () Bool)

(assert (=> d!1730946 (= c!946868 (and ((_ is ElementMatch!15217) (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292))))) (= (c!946431 (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292))))) (h!68274 s!2326))))))

(assert (=> d!1730946 (= (derivationStepZipperDown!665 (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292)))) (ite c!946617 lt!2213334 (Context!9203 call!388406)) (h!68274 s!2326)) e!3363472)))

(declare-fun b!5427779 () Bool)

(assert (=> b!5427779 (= e!3363472 e!3363471)))

(assert (=> b!5427779 (= c!946866 ((_ is Union!15217) (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292))))))))

(declare-fun b!5427785 () Bool)

(assert (=> b!5427785 (= e!3363470 call!388573)))

(declare-fun b!5427786 () Bool)

(declare-fun e!3363468 () (InoxSet Context!9202))

(assert (=> b!5427786 (= e!3363468 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5427787 () Bool)

(assert (=> b!5427787 (= e!3363468 call!388573)))

(declare-fun call!388571 () List!61951)

(declare-fun bm!388567 () Bool)

(assert (=> bm!388567 (= call!388568 (derivationStepZipperDown!665 (ite c!946866 (regTwo!30947 (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292))))) (ite c!946870 (regTwo!30946 (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292))))) (ite c!946867 (regOne!30946 (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292))))) (reg!15546 (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292)))))))) (ite (or c!946866 c!946870) (ite c!946617 lt!2213334 (Context!9203 call!388406)) (Context!9203 call!388571)) (h!68274 s!2326)))))

(declare-fun bm!388568 () Bool)

(assert (=> bm!388568 (= call!388571 call!388570)))

(declare-fun b!5427788 () Bool)

(declare-fun c!946869 () Bool)

(assert (=> b!5427788 (= c!946869 ((_ is Star!15217) (ite c!946617 (regOne!30947 (reg!15546 (regOne!30946 r!7292))) (regOne!30946 (reg!15546 (regOne!30946 r!7292))))))))

(assert (=> b!5427788 (= e!3363470 e!3363468)))

(assert (= (and d!1730946 c!946868) b!5427778))

(assert (= (and d!1730946 (not c!946868)) b!5427779))

(assert (= (and b!5427779 c!946866) b!5427784))

(assert (= (and b!5427779 (not c!946866)) b!5427783))

(assert (= (and b!5427783 res!2309820) b!5427780))

(assert (= (and b!5427783 c!946870) b!5427782))

(assert (= (and b!5427783 (not c!946870)) b!5427781))

(assert (= (and b!5427781 c!946867) b!5427785))

(assert (= (and b!5427781 (not c!946867)) b!5427788))

(assert (= (and b!5427788 c!946869) b!5427787))

(assert (= (and b!5427788 (not c!946869)) b!5427786))

(assert (= (or b!5427785 b!5427787) bm!388568))

(assert (= (or b!5427785 b!5427787) bm!388563))

(assert (= (or b!5427782 bm!388568) bm!388565))

(assert (= (or b!5427782 bm!388563) bm!388564))

(assert (= (or b!5427784 bm!388564) bm!388567))

(assert (= (or b!5427784 b!5427782) bm!388566))

(declare-fun m!6451524 () Bool)

(assert (=> bm!388565 m!6451524))

(declare-fun m!6451526 () Bool)

(assert (=> b!5427778 m!6451526))

(declare-fun m!6451528 () Bool)

(assert (=> bm!388567 m!6451528))

(declare-fun m!6451530 () Bool)

(assert (=> bm!388566 m!6451530))

(declare-fun m!6451532 () Bool)

(assert (=> b!5427780 m!6451532))

(assert (=> bm!388402 d!1730946))

(assert (=> b!5426747 d!1730720))

(declare-fun bs!1253782 () Bool)

(declare-fun b!5427806 () Bool)

(assert (= bs!1253782 (and b!5427806 b!5426785)))

(declare-fun lambda!284700 () Int)

(assert (=> bs!1253782 (not (= lambda!284700 lambda!284633))))

(declare-fun bs!1253783 () Bool)

(assert (= bs!1253783 (and b!5427806 b!5426653)))

(assert (=> bs!1253783 (= (and (= (reg!15546 (regOne!30947 r!7292)) (reg!15546 r!7292)) (= (regOne!30947 r!7292) r!7292)) (= lambda!284700 lambda!284618))))

(declare-fun bs!1253784 () Bool)

(assert (= bs!1253784 (and b!5427806 d!1730736)))

(assert (=> bs!1253784 (not (= lambda!284700 lambda!284682))))

(declare-fun bs!1253785 () Bool)

(assert (= bs!1253785 (and b!5427806 b!5426269)))

(assert (=> bs!1253785 (not (= lambda!284700 lambda!284591))))

(assert (=> bs!1253785 (not (= lambda!284700 lambda!284590))))

(declare-fun bs!1253786 () Bool)

(assert (= bs!1253786 (and b!5427806 b!5426789)))

(assert (=> bs!1253786 (= (and (= (reg!15546 (regOne!30947 r!7292)) (reg!15546 lt!2213346)) (= (regOne!30947 r!7292) lt!2213346)) (= lambda!284700 lambda!284632))))

(declare-fun bs!1253787 () Bool)

(assert (= bs!1253787 (and b!5427806 d!1730614)))

(assert (=> bs!1253787 (not (= lambda!284700 lambda!284661))))

(assert (=> bs!1253784 (not (= lambda!284700 lambda!284681))))

(declare-fun bs!1253788 () Bool)

(assert (= bs!1253788 (and b!5427806 d!1730608)))

(assert (=> bs!1253788 (not (= lambda!284700 lambda!284655))))

(assert (=> bs!1253787 (not (= lambda!284700 lambda!284660))))

(declare-fun bs!1253789 () Bool)

(assert (= bs!1253789 (and b!5427806 b!5426649)))

(assert (=> bs!1253789 (not (= lambda!284700 lambda!284621))))

(assert (=> b!5427806 true))

(assert (=> b!5427806 true))

(declare-fun bs!1253790 () Bool)

(declare-fun b!5427802 () Bool)

(assert (= bs!1253790 (and b!5427802 b!5426785)))

(declare-fun lambda!284701 () Int)

(assert (=> bs!1253790 (= (and (= (regOne!30946 (regOne!30947 r!7292)) (regOne!30946 lt!2213346)) (= (regTwo!30946 (regOne!30947 r!7292)) (regTwo!30946 lt!2213346))) (= lambda!284701 lambda!284633))))

(declare-fun bs!1253791 () Bool)

(assert (= bs!1253791 (and b!5427802 b!5426653)))

(assert (=> bs!1253791 (not (= lambda!284701 lambda!284618))))

(declare-fun bs!1253792 () Bool)

(assert (= bs!1253792 (and b!5427802 d!1730736)))

(assert (=> bs!1253792 (= (and (= (regOne!30946 (regOne!30947 r!7292)) (regOne!30946 r!7292)) (= (regTwo!30946 (regOne!30947 r!7292)) (regTwo!30946 r!7292))) (= lambda!284701 lambda!284682))))

(declare-fun bs!1253793 () Bool)

(assert (= bs!1253793 (and b!5427802 b!5426269)))

(assert (=> bs!1253793 (= (and (= (regOne!30946 (regOne!30947 r!7292)) (regOne!30946 r!7292)) (= (regTwo!30946 (regOne!30947 r!7292)) (regTwo!30946 r!7292))) (= lambda!284701 lambda!284591))))

(assert (=> bs!1253793 (not (= lambda!284701 lambda!284590))))

(declare-fun bs!1253794 () Bool)

(assert (= bs!1253794 (and b!5427802 b!5427806)))

(assert (=> bs!1253794 (not (= lambda!284701 lambda!284700))))

(declare-fun bs!1253795 () Bool)

(assert (= bs!1253795 (and b!5427802 b!5426789)))

(assert (=> bs!1253795 (not (= lambda!284701 lambda!284632))))

(declare-fun bs!1253796 () Bool)

(assert (= bs!1253796 (and b!5427802 d!1730614)))

(assert (=> bs!1253796 (= (and (= (regOne!30946 (regOne!30947 r!7292)) (regOne!30946 r!7292)) (= (regTwo!30946 (regOne!30947 r!7292)) (regTwo!30946 r!7292))) (= lambda!284701 lambda!284661))))

(assert (=> bs!1253792 (not (= lambda!284701 lambda!284681))))

(declare-fun bs!1253797 () Bool)

(assert (= bs!1253797 (and b!5427802 d!1730608)))

(assert (=> bs!1253797 (not (= lambda!284701 lambda!284655))))

(assert (=> bs!1253796 (not (= lambda!284701 lambda!284660))))

(declare-fun bs!1253798 () Bool)

(assert (= bs!1253798 (and b!5427802 b!5426649)))

(assert (=> bs!1253798 (= (and (= (regOne!30946 (regOne!30947 r!7292)) (regOne!30946 r!7292)) (= (regTwo!30946 (regOne!30947 r!7292)) (regTwo!30946 r!7292))) (= lambda!284701 lambda!284621))))

(assert (=> b!5427802 true))

(assert (=> b!5427802 true))

(declare-fun bm!388572 () Bool)

(declare-fun call!388577 () Bool)

(assert (=> bm!388572 (= call!388577 (isEmpty!33827 s!2326))))

(declare-fun b!5427798 () Bool)

(declare-fun c!946873 () Bool)

(assert (=> b!5427798 (= c!946873 ((_ is ElementMatch!15217) (regOne!30947 r!7292)))))

(declare-fun e!3363481 () Bool)

(declare-fun e!3363486 () Bool)

(assert (=> b!5427798 (= e!3363481 e!3363486)))

(declare-fun call!388578 () Bool)

(declare-fun bm!388573 () Bool)

(declare-fun c!946875 () Bool)

(assert (=> bm!388573 (= call!388578 (Exists!2398 (ite c!946875 lambda!284700 lambda!284701)))))

(declare-fun d!1730952 () Bool)

(declare-fun c!946876 () Bool)

(assert (=> d!1730952 (= c!946876 ((_ is EmptyExpr!15217) (regOne!30947 r!7292)))))

(declare-fun e!3363485 () Bool)

(assert (=> d!1730952 (= (matchRSpec!2320 (regOne!30947 r!7292) s!2326) e!3363485)))

(declare-fun b!5427799 () Bool)

(assert (=> b!5427799 (= e!3363485 e!3363481)))

(declare-fun res!2309827 () Bool)

(assert (=> b!5427799 (= res!2309827 (not ((_ is EmptyLang!15217) (regOne!30947 r!7292))))))

(assert (=> b!5427799 (=> (not res!2309827) (not e!3363481))))

(declare-fun b!5427800 () Bool)

(assert (=> b!5427800 (= e!3363485 call!388577)))

(declare-fun b!5427801 () Bool)

(declare-fun res!2309828 () Bool)

(declare-fun e!3363480 () Bool)

(assert (=> b!5427801 (=> res!2309828 e!3363480)))

(assert (=> b!5427801 (= res!2309828 call!388577)))

(declare-fun e!3363484 () Bool)

(assert (=> b!5427801 (= e!3363484 e!3363480)))

(assert (=> b!5427802 (= e!3363484 call!388578)))

(declare-fun b!5427803 () Bool)

(declare-fun e!3363483 () Bool)

(declare-fun e!3363482 () Bool)

(assert (=> b!5427803 (= e!3363483 e!3363482)))

(declare-fun res!2309826 () Bool)

(assert (=> b!5427803 (= res!2309826 (matchRSpec!2320 (regOne!30947 (regOne!30947 r!7292)) s!2326))))

(assert (=> b!5427803 (=> res!2309826 e!3363482)))

(declare-fun b!5427804 () Bool)

(assert (=> b!5427804 (= e!3363486 (= s!2326 (Cons!61826 (c!946431 (regOne!30947 r!7292)) Nil!61826)))))

(declare-fun b!5427805 () Bool)

(declare-fun c!946874 () Bool)

(assert (=> b!5427805 (= c!946874 ((_ is Union!15217) (regOne!30947 r!7292)))))

(assert (=> b!5427805 (= e!3363486 e!3363483)))

(assert (=> b!5427806 (= e!3363480 call!388578)))

(declare-fun b!5427807 () Bool)

(assert (=> b!5427807 (= e!3363482 (matchRSpec!2320 (regTwo!30947 (regOne!30947 r!7292)) s!2326))))

(declare-fun b!5427808 () Bool)

(assert (=> b!5427808 (= e!3363483 e!3363484)))

(assert (=> b!5427808 (= c!946875 ((_ is Star!15217) (regOne!30947 r!7292)))))

(assert (= (and d!1730952 c!946876) b!5427800))

(assert (= (and d!1730952 (not c!946876)) b!5427799))

(assert (= (and b!5427799 res!2309827) b!5427798))

(assert (= (and b!5427798 c!946873) b!5427804))

(assert (= (and b!5427798 (not c!946873)) b!5427805))

(assert (= (and b!5427805 c!946874) b!5427803))

(assert (= (and b!5427805 (not c!946874)) b!5427808))

(assert (= (and b!5427803 (not res!2309826)) b!5427807))

(assert (= (and b!5427808 c!946875) b!5427801))

(assert (= (and b!5427808 (not c!946875)) b!5427802))

(assert (= (and b!5427801 (not res!2309828)) b!5427806))

(assert (= (or b!5427806 b!5427802) bm!388573))

(assert (= (or b!5427800 b!5427801) bm!388572))

(assert (=> bm!388572 m!6450416))

(declare-fun m!6451556 () Bool)

(assert (=> bm!388573 m!6451556))

(declare-fun m!6451558 () Bool)

(assert (=> b!5427803 m!6451558))

(declare-fun m!6451560 () Bool)

(assert (=> b!5427807 m!6451560))

(assert (=> b!5426650 d!1730952))

(declare-fun b!5427826 () Bool)

(declare-fun e!3363497 () List!61950)

(assert (=> b!5427826 (= e!3363497 (Cons!61826 (h!68274 (_1!35719 (get!21326 lt!2213443))) (++!13600 (t!375173 (_1!35719 (get!21326 lt!2213443))) (_2!35719 (get!21326 lt!2213443)))))))

(declare-fun b!5427827 () Bool)

(declare-fun res!2309832 () Bool)

(declare-fun e!3363496 () Bool)

(assert (=> b!5427827 (=> (not res!2309832) (not e!3363496))))

(declare-fun lt!2213488 () List!61950)

(assert (=> b!5427827 (= res!2309832 (= (size!39886 lt!2213488) (+ (size!39886 (_1!35719 (get!21326 lt!2213443))) (size!39886 (_2!35719 (get!21326 lt!2213443))))))))

(declare-fun d!1730962 () Bool)

(assert (=> d!1730962 e!3363496))

(declare-fun res!2309831 () Bool)

(assert (=> d!1730962 (=> (not res!2309831) (not e!3363496))))

(assert (=> d!1730962 (= res!2309831 (= (content!11129 lt!2213488) ((_ map or) (content!11129 (_1!35719 (get!21326 lt!2213443))) (content!11129 (_2!35719 (get!21326 lt!2213443))))))))

(assert (=> d!1730962 (= lt!2213488 e!3363497)))

(declare-fun c!946884 () Bool)

(assert (=> d!1730962 (= c!946884 ((_ is Nil!61826) (_1!35719 (get!21326 lt!2213443))))))

(assert (=> d!1730962 (= (++!13600 (_1!35719 (get!21326 lt!2213443)) (_2!35719 (get!21326 lt!2213443))) lt!2213488)))

(declare-fun b!5427825 () Bool)

(assert (=> b!5427825 (= e!3363497 (_2!35719 (get!21326 lt!2213443)))))

(declare-fun b!5427828 () Bool)

(assert (=> b!5427828 (= e!3363496 (or (not (= (_2!35719 (get!21326 lt!2213443)) Nil!61826)) (= lt!2213488 (_1!35719 (get!21326 lt!2213443)))))))

(assert (= (and d!1730962 c!946884) b!5427825))

(assert (= (and d!1730962 (not c!946884)) b!5427826))

(assert (= (and d!1730962 res!2309831) b!5427827))

(assert (= (and b!5427827 res!2309832) b!5427828))

(declare-fun m!6451562 () Bool)

(assert (=> b!5427826 m!6451562))

(declare-fun m!6451564 () Bool)

(assert (=> b!5427827 m!6451564))

(declare-fun m!6451566 () Bool)

(assert (=> b!5427827 m!6451566))

(declare-fun m!6451568 () Bool)

(assert (=> b!5427827 m!6451568))

(declare-fun m!6451570 () Bool)

(assert (=> d!1730962 m!6451570))

(declare-fun m!6451572 () Bool)

(assert (=> d!1730962 m!6451572))

(declare-fun m!6451574 () Bool)

(assert (=> d!1730962 m!6451574))

(assert (=> b!5427048 d!1730962))

(assert (=> b!5427048 d!1730698))

(assert (=> d!1730534 d!1730652))

(declare-fun d!1730964 () Bool)

(assert (=> d!1730964 (= (isConcat!517 lt!2213425) ((_ is Concat!24062) lt!2213425))))

(assert (=> b!5426987 d!1730964))

(declare-fun b!5427837 () Bool)

(declare-fun e!3363507 () Bool)

(assert (=> b!5427837 (= e!3363507 (nullable!5386 (derivativeStep!4283 r!7292 (head!11641 s!2326))))))

(declare-fun bm!388581 () Bool)

(declare-fun call!388586 () Bool)

(assert (=> bm!388581 (= call!388586 (isEmpty!33827 (tail!10738 s!2326)))))

(declare-fun b!5427838 () Bool)

(declare-fun res!2309844 () Bool)

(declare-fun e!3363508 () Bool)

(assert (=> b!5427838 (=> res!2309844 e!3363508)))

(assert (=> b!5427838 (= res!2309844 (not (isEmpty!33827 (tail!10738 (tail!10738 s!2326)))))))

(declare-fun b!5427839 () Bool)

(declare-fun e!3363502 () Bool)

(declare-fun lt!2213491 () Bool)

(assert (=> b!5427839 (= e!3363502 (not lt!2213491))))

(declare-fun b!5427840 () Bool)

(declare-fun e!3363505 () Bool)

(assert (=> b!5427840 (= e!3363505 e!3363502)))

(declare-fun c!946887 () Bool)

(assert (=> b!5427840 (= c!946887 ((_ is EmptyLang!15217) (derivativeStep!4283 r!7292 (head!11641 s!2326))))))

(declare-fun b!5427841 () Bool)

(declare-fun e!3363504 () Bool)

(assert (=> b!5427841 (= e!3363504 e!3363508)))

(declare-fun res!2309839 () Bool)

(assert (=> b!5427841 (=> res!2309839 e!3363508)))

(assert (=> b!5427841 (= res!2309839 call!388586)))

(declare-fun b!5427842 () Bool)

(declare-fun res!2309842 () Bool)

(declare-fun e!3363506 () Bool)

(assert (=> b!5427842 (=> res!2309842 e!3363506)))

(assert (=> b!5427842 (= res!2309842 (not ((_ is ElementMatch!15217) (derivativeStep!4283 r!7292 (head!11641 s!2326)))))))

(assert (=> b!5427842 (= e!3363502 e!3363506)))

(declare-fun b!5427843 () Bool)

(declare-fun res!2309841 () Bool)

(declare-fun e!3363503 () Bool)

(assert (=> b!5427843 (=> (not res!2309841) (not e!3363503))))

(assert (=> b!5427843 (= res!2309841 (isEmpty!33827 (tail!10738 (tail!10738 s!2326))))))

(declare-fun b!5427844 () Bool)

(assert (=> b!5427844 (= e!3363507 (matchR!7402 (derivativeStep!4283 (derivativeStep!4283 r!7292 (head!11641 s!2326)) (head!11641 (tail!10738 s!2326))) (tail!10738 (tail!10738 s!2326))))))

(declare-fun d!1730966 () Bool)

(assert (=> d!1730966 e!3363505))

(declare-fun c!946889 () Bool)

(assert (=> d!1730966 (= c!946889 ((_ is EmptyExpr!15217) (derivativeStep!4283 r!7292 (head!11641 s!2326))))))

(assert (=> d!1730966 (= lt!2213491 e!3363507)))

(declare-fun c!946888 () Bool)

(assert (=> d!1730966 (= c!946888 (isEmpty!33827 (tail!10738 s!2326)))))

(assert (=> d!1730966 (validRegex!6953 (derivativeStep!4283 r!7292 (head!11641 s!2326)))))

(assert (=> d!1730966 (= (matchR!7402 (derivativeStep!4283 r!7292 (head!11641 s!2326)) (tail!10738 s!2326)) lt!2213491)))

(declare-fun b!5427845 () Bool)

(assert (=> b!5427845 (= e!3363505 (= lt!2213491 call!388586))))

(declare-fun b!5427846 () Bool)

(assert (=> b!5427846 (= e!3363506 e!3363504)))

(declare-fun res!2309840 () Bool)

(assert (=> b!5427846 (=> (not res!2309840) (not e!3363504))))

(assert (=> b!5427846 (= res!2309840 (not lt!2213491))))

(declare-fun b!5427847 () Bool)

(assert (=> b!5427847 (= e!3363503 (= (head!11641 (tail!10738 s!2326)) (c!946431 (derivativeStep!4283 r!7292 (head!11641 s!2326)))))))

(declare-fun b!5427848 () Bool)

(assert (=> b!5427848 (= e!3363508 (not (= (head!11641 (tail!10738 s!2326)) (c!946431 (derivativeStep!4283 r!7292 (head!11641 s!2326))))))))

(declare-fun b!5427849 () Bool)

(declare-fun res!2309837 () Bool)

(assert (=> b!5427849 (=> res!2309837 e!3363506)))

(assert (=> b!5427849 (= res!2309837 e!3363503)))

(declare-fun res!2309838 () Bool)

(assert (=> b!5427849 (=> (not res!2309838) (not e!3363503))))

(assert (=> b!5427849 (= res!2309838 lt!2213491)))

(declare-fun b!5427850 () Bool)

(declare-fun res!2309843 () Bool)

(assert (=> b!5427850 (=> (not res!2309843) (not e!3363503))))

(assert (=> b!5427850 (= res!2309843 (not call!388586))))

(assert (= (and d!1730966 c!946888) b!5427837))

(assert (= (and d!1730966 (not c!946888)) b!5427844))

(assert (= (and d!1730966 c!946889) b!5427845))

(assert (= (and d!1730966 (not c!946889)) b!5427840))

(assert (= (and b!5427840 c!946887) b!5427839))

(assert (= (and b!5427840 (not c!946887)) b!5427842))

(assert (= (and b!5427842 (not res!2309842)) b!5427849))

(assert (= (and b!5427849 res!2309838) b!5427850))

(assert (= (and b!5427850 res!2309843) b!5427843))

(assert (= (and b!5427843 res!2309841) b!5427847))

(assert (= (and b!5427849 (not res!2309837)) b!5427846))

(assert (= (and b!5427846 res!2309840) b!5427841))

(assert (= (and b!5427841 (not res!2309839)) b!5427838))

(assert (= (and b!5427838 (not res!2309844)) b!5427848))

(assert (= (or b!5427845 b!5427841 b!5427850) bm!388581))

(assert (=> d!1730966 m!6450496))

(assert (=> d!1730966 m!6450498))

(assert (=> d!1730966 m!6450504))

(declare-fun m!6451576 () Bool)

(assert (=> d!1730966 m!6451576))

(assert (=> b!5427843 m!6450496))

(assert (=> b!5427843 m!6451056))

(assert (=> b!5427843 m!6451056))

(assert (=> b!5427843 m!6451226))

(assert (=> b!5427837 m!6450504))

(declare-fun m!6451578 () Bool)

(assert (=> b!5427837 m!6451578))

(assert (=> b!5427844 m!6450496))

(assert (=> b!5427844 m!6451052))

(assert (=> b!5427844 m!6450504))

(assert (=> b!5427844 m!6451052))

(declare-fun m!6451580 () Bool)

(assert (=> b!5427844 m!6451580))

(assert (=> b!5427844 m!6450496))

(assert (=> b!5427844 m!6451056))

(assert (=> b!5427844 m!6451580))

(assert (=> b!5427844 m!6451056))

(declare-fun m!6451586 () Bool)

(assert (=> b!5427844 m!6451586))

(assert (=> bm!388581 m!6450496))

(assert (=> bm!388581 m!6450498))

(assert (=> b!5427848 m!6450496))

(assert (=> b!5427848 m!6451052))

(assert (=> b!5427838 m!6450496))

(assert (=> b!5427838 m!6451056))

(assert (=> b!5427838 m!6451056))

(assert (=> b!5427838 m!6451226))

(assert (=> b!5427847 m!6450496))

(assert (=> b!5427847 m!6451052))

(assert (=> b!5426743 d!1730966))

(declare-fun b!5427855 () Bool)

(declare-fun c!946891 () Bool)

(assert (=> b!5427855 (= c!946891 (nullable!5386 (regOne!30946 r!7292)))))

(declare-fun e!3363511 () Regex!15217)

(declare-fun e!3363512 () Regex!15217)

(assert (=> b!5427855 (= e!3363511 e!3363512)))

(declare-fun bm!388582 () Bool)

(declare-fun call!388588 () Regex!15217)

(declare-fun c!946894 () Bool)

(assert (=> bm!388582 (= call!388588 (derivativeStep!4283 (ite c!946894 (regOne!30947 r!7292) (regOne!30946 r!7292)) (head!11641 s!2326)))))

(declare-fun b!5427856 () Bool)

(declare-fun e!3363515 () Regex!15217)

(assert (=> b!5427856 (= e!3363515 EmptyLang!15217)))

(declare-fun b!5427857 () Bool)

(declare-fun call!388590 () Regex!15217)

(assert (=> b!5427857 (= e!3363512 (Union!15217 (Concat!24062 call!388588 (regTwo!30946 r!7292)) call!388590))))

(declare-fun d!1730970 () Bool)

(declare-fun lt!2213493 () Regex!15217)

(assert (=> d!1730970 (validRegex!6953 lt!2213493)))

(assert (=> d!1730970 (= lt!2213493 e!3363515)))

(declare-fun c!946892 () Bool)

(assert (=> d!1730970 (= c!946892 (or ((_ is EmptyExpr!15217) r!7292) ((_ is EmptyLang!15217) r!7292)))))

(assert (=> d!1730970 (validRegex!6953 r!7292)))

(assert (=> d!1730970 (= (derivativeStep!4283 r!7292 (head!11641 s!2326)) lt!2213493)))

(declare-fun bm!388583 () Bool)

(declare-fun call!388587 () Regex!15217)

(declare-fun c!946895 () Bool)

(assert (=> bm!388583 (= call!388587 (derivativeStep!4283 (ite c!946894 (regTwo!30947 r!7292) (ite c!946895 (reg!15546 r!7292) (ite c!946891 (regTwo!30946 r!7292) (regOne!30946 r!7292)))) (head!11641 s!2326)))))

(declare-fun b!5427858 () Bool)

(declare-fun e!3363513 () Regex!15217)

(assert (=> b!5427858 (= e!3363513 (ite (= (head!11641 s!2326) (c!946431 r!7292)) EmptyExpr!15217 EmptyLang!15217))))

(declare-fun b!5427859 () Bool)

(assert (=> b!5427859 (= e!3363515 e!3363513)))

(declare-fun c!946893 () Bool)

(assert (=> b!5427859 (= c!946893 ((_ is ElementMatch!15217) r!7292))))

(declare-fun b!5427860 () Bool)

(assert (=> b!5427860 (= c!946894 ((_ is Union!15217) r!7292))))

(declare-fun e!3363514 () Regex!15217)

(assert (=> b!5427860 (= e!3363513 e!3363514)))

(declare-fun bm!388584 () Bool)

(declare-fun call!388589 () Regex!15217)

(assert (=> bm!388584 (= call!388589 call!388587)))

(declare-fun bm!388585 () Bool)

(assert (=> bm!388585 (= call!388590 call!388589)))

(declare-fun b!5427861 () Bool)

(assert (=> b!5427861 (= e!3363514 (Union!15217 call!388588 call!388587))))

(declare-fun b!5427862 () Bool)

(assert (=> b!5427862 (= e!3363512 (Union!15217 (Concat!24062 call!388590 (regTwo!30946 r!7292)) EmptyLang!15217))))

(declare-fun b!5427863 () Bool)

(assert (=> b!5427863 (= e!3363514 e!3363511)))

(assert (=> b!5427863 (= c!946895 ((_ is Star!15217) r!7292))))

(declare-fun b!5427864 () Bool)

(assert (=> b!5427864 (= e!3363511 (Concat!24062 call!388589 r!7292))))

(assert (= (and d!1730970 c!946892) b!5427856))

(assert (= (and d!1730970 (not c!946892)) b!5427859))

(assert (= (and b!5427859 c!946893) b!5427858))

(assert (= (and b!5427859 (not c!946893)) b!5427860))

(assert (= (and b!5427860 c!946894) b!5427861))

(assert (= (and b!5427860 (not c!946894)) b!5427863))

(assert (= (and b!5427863 c!946895) b!5427864))

(assert (= (and b!5427863 (not c!946895)) b!5427855))

(assert (= (and b!5427855 c!946891) b!5427857))

(assert (= (and b!5427855 (not c!946891)) b!5427862))

(assert (= (or b!5427857 b!5427862) bm!388585))

(assert (= (or b!5427864 bm!388585) bm!388584))

(assert (= (or b!5427861 bm!388584) bm!388583))

(assert (= (or b!5427861 b!5427857) bm!388582))

(assert (=> b!5427855 m!6451202))

(assert (=> bm!388582 m!6450502))

(declare-fun m!6451612 () Bool)

(assert (=> bm!388582 m!6451612))

(declare-fun m!6451614 () Bool)

(assert (=> d!1730970 m!6451614))

(assert (=> d!1730970 m!6450136))

(assert (=> bm!388583 m!6450502))

(declare-fun m!6451616 () Bool)

(assert (=> bm!388583 m!6451616))

(assert (=> b!5426743 d!1730970))

(assert (=> b!5426743 d!1730720))

(assert (=> b!5426743 d!1730670))

(declare-fun b!5427869 () Bool)

(declare-fun e!3363518 () Bool)

(declare-fun call!388591 () Bool)

(assert (=> b!5427869 (= e!3363518 call!388591)))

(declare-fun b!5427870 () Bool)

(declare-fun e!3363524 () Bool)

(declare-fun call!388593 () Bool)

(assert (=> b!5427870 (= e!3363524 call!388593)))

(declare-fun d!1730974 () Bool)

(declare-fun res!2309852 () Bool)

(declare-fun e!3363523 () Bool)

(assert (=> d!1730974 (=> res!2309852 e!3363523)))

(assert (=> d!1730974 (= res!2309852 ((_ is ElementMatch!15217) lt!2213432))))

(assert (=> d!1730974 (= (validRegex!6953 lt!2213432) e!3363523)))

(declare-fun b!5427871 () Bool)

(declare-fun e!3363520 () Bool)

(declare-fun e!3363521 () Bool)

(assert (=> b!5427871 (= e!3363520 e!3363521)))

(declare-fun c!946898 () Bool)

(assert (=> b!5427871 (= c!946898 ((_ is Union!15217) lt!2213432))))

(declare-fun b!5427872 () Bool)

(declare-fun e!3363519 () Bool)

(assert (=> b!5427872 (= e!3363519 call!388593)))

(declare-fun b!5427873 () Bool)

(assert (=> b!5427873 (= e!3363523 e!3363520)))

(declare-fun c!946897 () Bool)

(assert (=> b!5427873 (= c!946897 ((_ is Star!15217) lt!2213432))))

(declare-fun bm!388586 () Bool)

(assert (=> bm!388586 (= call!388591 (validRegex!6953 (ite c!946897 (reg!15546 lt!2213432) (ite c!946898 (regOne!30947 lt!2213432) (regOne!30946 lt!2213432)))))))

(declare-fun b!5427874 () Bool)

(declare-fun res!2309850 () Bool)

(assert (=> b!5427874 (=> (not res!2309850) (not e!3363519))))

(declare-fun call!388592 () Bool)

(assert (=> b!5427874 (= res!2309850 call!388592)))

(assert (=> b!5427874 (= e!3363521 e!3363519)))

(declare-fun b!5427875 () Bool)

(declare-fun e!3363522 () Bool)

(assert (=> b!5427875 (= e!3363522 e!3363524)))

(declare-fun res!2309853 () Bool)

(assert (=> b!5427875 (=> (not res!2309853) (not e!3363524))))

(assert (=> b!5427875 (= res!2309853 call!388592)))

(declare-fun bm!388587 () Bool)

(assert (=> bm!388587 (= call!388592 call!388591)))

(declare-fun b!5427876 () Bool)

(declare-fun res!2309851 () Bool)

(assert (=> b!5427876 (=> res!2309851 e!3363522)))

(assert (=> b!5427876 (= res!2309851 (not ((_ is Concat!24062) lt!2213432)))))

(assert (=> b!5427876 (= e!3363521 e!3363522)))

(declare-fun bm!388588 () Bool)

(assert (=> bm!388588 (= call!388593 (validRegex!6953 (ite c!946898 (regTwo!30947 lt!2213432) (regTwo!30946 lt!2213432))))))

(declare-fun b!5427877 () Bool)

(assert (=> b!5427877 (= e!3363520 e!3363518)))

(declare-fun res!2309849 () Bool)

(assert (=> b!5427877 (= res!2309849 (not (nullable!5386 (reg!15546 lt!2213432))))))

(assert (=> b!5427877 (=> (not res!2309849) (not e!3363518))))

(assert (= (and d!1730974 (not res!2309852)) b!5427873))

(assert (= (and b!5427873 c!946897) b!5427877))

(assert (= (and b!5427873 (not c!946897)) b!5427871))

(assert (= (and b!5427877 res!2309849) b!5427869))

(assert (= (and b!5427871 c!946898) b!5427874))

(assert (= (and b!5427871 (not c!946898)) b!5427876))

(assert (= (and b!5427874 res!2309850) b!5427872))

(assert (= (and b!5427876 (not res!2309851)) b!5427875))

(assert (= (and b!5427875 res!2309853) b!5427870))

(assert (= (or b!5427872 b!5427870) bm!388588))

(assert (= (or b!5427874 b!5427875) bm!388587))

(assert (= (or b!5427869 bm!388587) bm!388586))

(declare-fun m!6451618 () Bool)

(assert (=> bm!388586 m!6451618))

(declare-fun m!6451620 () Bool)

(assert (=> bm!388588 m!6451620))

(declare-fun m!6451622 () Bool)

(assert (=> b!5427877 m!6451622))

(assert (=> d!1730604 d!1730974))

(declare-fun bs!1253799 () Bool)

(declare-fun d!1730976 () Bool)

(assert (= bs!1253799 (and d!1730976 d!1730602)))

(declare-fun lambda!284702 () Int)

(assert (=> bs!1253799 (= lambda!284702 lambda!284652)))

(declare-fun bs!1253800 () Bool)

(assert (= bs!1253800 (and d!1730976 d!1730586)))

(assert (=> bs!1253800 (= lambda!284702 lambda!284646)))

(declare-fun bs!1253801 () Bool)

(assert (= bs!1253801 (and d!1730976 d!1730702)))

(assert (=> bs!1253801 (= lambda!284702 lambda!284676)))

(declare-fun bs!1253802 () Bool)

(assert (= bs!1253802 (and d!1730976 d!1730752)))

(assert (=> bs!1253802 (= lambda!284702 lambda!284683)))

(declare-fun bs!1253803 () Bool)

(assert (= bs!1253803 (and d!1730976 b!5426260)))

(assert (=> bs!1253803 (= lambda!284702 lambda!284593)))

(declare-fun bs!1253804 () Bool)

(assert (= bs!1253804 (and d!1730976 d!1730600)))

(assert (=> bs!1253804 (= lambda!284702 lambda!284649)))

(declare-fun bs!1253805 () Bool)

(assert (= bs!1253805 (and d!1730976 d!1730754)))

(assert (=> bs!1253805 (= lambda!284702 lambda!284684)))

(declare-fun bs!1253806 () Bool)

(assert (= bs!1253806 (and d!1730976 d!1730774)))

(assert (=> bs!1253806 (= lambda!284702 lambda!284686)))

(declare-fun bs!1253807 () Bool)

(assert (= bs!1253807 (and d!1730976 d!1730776)))

(assert (=> bs!1253807 (= lambda!284702 lambda!284687)))

(declare-fun bs!1253808 () Bool)

(assert (= bs!1253808 (and d!1730976 d!1730650)))

(assert (=> bs!1253808 (= lambda!284702 lambda!284668)))

(declare-fun bs!1253809 () Bool)

(assert (= bs!1253809 (and d!1730976 d!1730580)))

(assert (=> bs!1253809 (= lambda!284702 lambda!284642)))

(declare-fun bs!1253810 () Bool)

(assert (= bs!1253810 (and d!1730976 d!1730648)))

(assert (=> bs!1253810 (= lambda!284702 lambda!284666)))

(declare-fun bs!1253811 () Bool)

(assert (= bs!1253811 (and d!1730976 d!1730804)))

(assert (=> bs!1253811 (= lambda!284702 lambda!284689)))

(declare-fun bs!1253812 () Bool)

(assert (= bs!1253812 (and d!1730976 d!1730454)))

(assert (=> bs!1253812 (= lambda!284702 lambda!284608)))

(declare-fun b!5427878 () Bool)

(declare-fun e!3363530 () Regex!15217)

(declare-fun e!3363525 () Regex!15217)

(assert (=> b!5427878 (= e!3363530 e!3363525)))

(declare-fun c!946899 () Bool)

(assert (=> b!5427878 (= c!946899 ((_ is Cons!61827) (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828))))))

(declare-fun b!5427879 () Bool)

(declare-fun e!3363529 () Bool)

(declare-fun lt!2213495 () Regex!15217)

(assert (=> b!5427879 (= e!3363529 (isEmptyLang!1003 lt!2213495))))

(declare-fun b!5427880 () Bool)

(assert (=> b!5427880 (= e!3363530 (h!68275 (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828))))))

(declare-fun b!5427881 () Bool)

(declare-fun e!3363528 () Bool)

(assert (=> b!5427881 (= e!3363528 (= lt!2213495 (head!11642 (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828)))))))

(declare-fun b!5427882 () Bool)

(declare-fun e!3363526 () Bool)

(assert (=> b!5427882 (= e!3363526 e!3363529)))

(declare-fun c!946900 () Bool)

(assert (=> b!5427882 (= c!946900 (isEmpty!33825 (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828))))))

(declare-fun b!5427883 () Bool)

(assert (=> b!5427883 (= e!3363525 (Union!15217 (h!68275 (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828))) (generalisedUnion!1146 (t!375174 (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828))))))))

(assert (=> d!1730976 e!3363526))

(declare-fun res!2309855 () Bool)

(assert (=> d!1730976 (=> (not res!2309855) (not e!3363526))))

(assert (=> d!1730976 (= res!2309855 (validRegex!6953 lt!2213495))))

(assert (=> d!1730976 (= lt!2213495 e!3363530)))

(declare-fun c!946901 () Bool)

(declare-fun e!3363527 () Bool)

(assert (=> d!1730976 (= c!946901 e!3363527)))

(declare-fun res!2309854 () Bool)

(assert (=> d!1730976 (=> (not res!2309854) (not e!3363527))))

(assert (=> d!1730976 (= res!2309854 ((_ is Cons!61827) (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828))))))

(assert (=> d!1730976 (forall!14555 (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828)) lambda!284702)))

(assert (=> d!1730976 (= (generalisedUnion!1146 (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828))) lt!2213495)))

(declare-fun b!5427884 () Bool)

(assert (=> b!5427884 (= e!3363528 (isUnion!435 lt!2213495))))

(declare-fun b!5427885 () Bool)

(assert (=> b!5427885 (= e!3363525 EmptyLang!15217)))

(declare-fun b!5427886 () Bool)

(assert (=> b!5427886 (= e!3363527 (isEmpty!33825 (t!375174 (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828)))))))

(declare-fun b!5427887 () Bool)

(assert (=> b!5427887 (= e!3363529 e!3363528)))

(declare-fun c!946902 () Bool)

(assert (=> b!5427887 (= c!946902 (isEmpty!33825 (tail!10739 (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828)))))))

(assert (= (and d!1730976 res!2309854) b!5427886))

(assert (= (and d!1730976 c!946901) b!5427880))

(assert (= (and d!1730976 (not c!946901)) b!5427878))

(assert (= (and b!5427878 c!946899) b!5427883))

(assert (= (and b!5427878 (not c!946899)) b!5427885))

(assert (= (and d!1730976 res!2309855) b!5427882))

(assert (= (and b!5427882 c!946900) b!5427879))

(assert (= (and b!5427882 (not c!946900)) b!5427887))

(assert (= (and b!5427887 c!946902) b!5427881))

(assert (= (and b!5427887 (not c!946902)) b!5427884))

(declare-fun m!6451624 () Bool)

(assert (=> d!1730976 m!6451624))

(assert (=> d!1730976 m!6450732))

(declare-fun m!6451626 () Bool)

(assert (=> d!1730976 m!6451626))

(declare-fun m!6451628 () Bool)

(assert (=> b!5427886 m!6451628))

(declare-fun m!6451630 () Bool)

(assert (=> b!5427883 m!6451630))

(assert (=> b!5427882 m!6450732))

(declare-fun m!6451632 () Bool)

(assert (=> b!5427882 m!6451632))

(assert (=> b!5427881 m!6450732))

(declare-fun m!6451634 () Bool)

(assert (=> b!5427881 m!6451634))

(declare-fun m!6451636 () Bool)

(assert (=> b!5427884 m!6451636))

(declare-fun m!6451638 () Bool)

(assert (=> b!5427879 m!6451638))

(assert (=> b!5427887 m!6450732))

(declare-fun m!6451640 () Bool)

(assert (=> b!5427887 m!6451640))

(assert (=> b!5427887 m!6451640))

(declare-fun m!6451642 () Bool)

(assert (=> b!5427887 m!6451642))

(assert (=> d!1730604 d!1730976))

(declare-fun bs!1253814 () Bool)

(declare-fun d!1730978 () Bool)

(assert (= bs!1253814 (and d!1730978 d!1730602)))

(declare-fun lambda!284703 () Int)

(assert (=> bs!1253814 (= lambda!284703 lambda!284652)))

(declare-fun bs!1253815 () Bool)

(assert (= bs!1253815 (and d!1730978 d!1730702)))

(assert (=> bs!1253815 (= lambda!284703 lambda!284676)))

(declare-fun bs!1253816 () Bool)

(assert (= bs!1253816 (and d!1730978 d!1730752)))

(assert (=> bs!1253816 (= lambda!284703 lambda!284683)))

(declare-fun bs!1253817 () Bool)

(assert (= bs!1253817 (and d!1730978 b!5426260)))

(assert (=> bs!1253817 (= lambda!284703 lambda!284593)))

(declare-fun bs!1253818 () Bool)

(assert (= bs!1253818 (and d!1730978 d!1730600)))

(assert (=> bs!1253818 (= lambda!284703 lambda!284649)))

(declare-fun bs!1253819 () Bool)

(assert (= bs!1253819 (and d!1730978 d!1730754)))

(assert (=> bs!1253819 (= lambda!284703 lambda!284684)))

(declare-fun bs!1253820 () Bool)

(assert (= bs!1253820 (and d!1730978 d!1730774)))

(assert (=> bs!1253820 (= lambda!284703 lambda!284686)))

(declare-fun bs!1253821 () Bool)

(assert (= bs!1253821 (and d!1730978 d!1730976)))

(assert (=> bs!1253821 (= lambda!284703 lambda!284702)))

(declare-fun bs!1253822 () Bool)

(assert (= bs!1253822 (and d!1730978 d!1730586)))

(assert (=> bs!1253822 (= lambda!284703 lambda!284646)))

(declare-fun bs!1253823 () Bool)

(assert (= bs!1253823 (and d!1730978 d!1730776)))

(assert (=> bs!1253823 (= lambda!284703 lambda!284687)))

(declare-fun bs!1253824 () Bool)

(assert (= bs!1253824 (and d!1730978 d!1730650)))

(assert (=> bs!1253824 (= lambda!284703 lambda!284668)))

(declare-fun bs!1253825 () Bool)

(assert (= bs!1253825 (and d!1730978 d!1730580)))

(assert (=> bs!1253825 (= lambda!284703 lambda!284642)))

(declare-fun bs!1253826 () Bool)

(assert (= bs!1253826 (and d!1730978 d!1730648)))

(assert (=> bs!1253826 (= lambda!284703 lambda!284666)))

(declare-fun bs!1253827 () Bool)

(assert (= bs!1253827 (and d!1730978 d!1730804)))

(assert (=> bs!1253827 (= lambda!284703 lambda!284689)))

(declare-fun bs!1253828 () Bool)

(assert (= bs!1253828 (and d!1730978 d!1730454)))

(assert (=> bs!1253828 (= lambda!284703 lambda!284608)))

(declare-fun lt!2213499 () List!61951)

(assert (=> d!1730978 (forall!14555 lt!2213499 lambda!284703)))

(declare-fun e!3363531 () List!61951)

(assert (=> d!1730978 (= lt!2213499 e!3363531)))

(declare-fun c!946903 () Bool)

(assert (=> d!1730978 (= c!946903 ((_ is Cons!61828) (Cons!61828 lt!2213334 Nil!61828)))))

(assert (=> d!1730978 (= (unfocusZipperList!659 (Cons!61828 lt!2213334 Nil!61828)) lt!2213499)))

(declare-fun b!5427888 () Bool)

(assert (=> b!5427888 (= e!3363531 (Cons!61827 (generalisedConcat!886 (exprs!5101 (h!68276 (Cons!61828 lt!2213334 Nil!61828)))) (unfocusZipperList!659 (t!375175 (Cons!61828 lt!2213334 Nil!61828)))))))

(declare-fun b!5427889 () Bool)

(assert (=> b!5427889 (= e!3363531 Nil!61827)))

(assert (= (and d!1730978 c!946903) b!5427888))

(assert (= (and d!1730978 (not c!946903)) b!5427889))

(declare-fun m!6451648 () Bool)

(assert (=> d!1730978 m!6451648))

(declare-fun m!6451650 () Bool)

(assert (=> b!5427888 m!6451650))

(declare-fun m!6451654 () Bool)

(assert (=> b!5427888 m!6451654))

(assert (=> d!1730604 d!1730978))

(declare-fun d!1730982 () Bool)

(assert (=> d!1730982 (= (nullable!5386 (h!68275 (exprs!5101 lt!2213330))) (nullableFct!1612 (h!68275 (exprs!5101 lt!2213330))))))

(declare-fun bs!1253829 () Bool)

(assert (= bs!1253829 d!1730982))

(declare-fun m!6451662 () Bool)

(assert (=> bs!1253829 m!6451662))

(assert (=> b!5426822 d!1730982))

(declare-fun d!1730984 () Bool)

(assert (=> d!1730984 (= (flatMap!944 lt!2213337 lambda!284631) (choose!41152 lt!2213337 lambda!284631))))

(declare-fun bs!1253830 () Bool)

(assert (= bs!1253830 d!1730984))

(declare-fun m!6451668 () Bool)

(assert (=> bs!1253830 m!6451668))

(assert (=> d!1730532 d!1730984))

(declare-fun d!1730986 () Bool)

(assert (=> d!1730986 (= (isEmpty!33825 (tail!10739 (exprs!5101 (h!68276 zl!343)))) ((_ is Nil!61827) (tail!10739 (exprs!5101 (h!68276 zl!343)))))))

(assert (=> b!5426979 d!1730986))

(declare-fun d!1730988 () Bool)

(assert (=> d!1730988 (= (tail!10739 (exprs!5101 (h!68276 zl!343))) (t!375174 (exprs!5101 (h!68276 zl!343))))))

(assert (=> b!5426979 d!1730988))

(declare-fun b!5427899 () Bool)

(declare-fun e!3363537 () (InoxSet Context!9202))

(declare-fun call!388594 () (InoxSet Context!9202))

(assert (=> b!5427899 (= e!3363537 call!388594)))

(declare-fun b!5427900 () Bool)

(declare-fun e!3363538 () (InoxSet Context!9202))

(assert (=> b!5427900 (= e!3363538 e!3363537)))

(declare-fun c!946907 () Bool)

(assert (=> b!5427900 (= c!946907 ((_ is Cons!61827) (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213350))))))))

(declare-fun d!1730990 () Bool)

(declare-fun c!946906 () Bool)

(declare-fun e!3363539 () Bool)

(assert (=> d!1730990 (= c!946906 e!3363539)))

(declare-fun res!2309861 () Bool)

(assert (=> d!1730990 (=> (not res!2309861) (not e!3363539))))

(assert (=> d!1730990 (= res!2309861 ((_ is Cons!61827) (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213350))))))))

(assert (=> d!1730990 (= (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 lt!2213350))) (h!68274 s!2326)) e!3363538)))

(declare-fun b!5427901 () Bool)

(assert (=> b!5427901 (= e!3363538 ((_ map or) call!388594 (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213350)))))) (h!68274 s!2326))))))

(declare-fun b!5427902 () Bool)

(assert (=> b!5427902 (= e!3363539 (nullable!5386 (h!68275 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213350)))))))))

(declare-fun b!5427903 () Bool)

(assert (=> b!5427903 (= e!3363537 ((as const (Array Context!9202 Bool)) false))))

(declare-fun bm!388589 () Bool)

(assert (=> bm!388589 (= call!388594 (derivationStepZipperDown!665 (h!68275 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213350))))) (Context!9203 (t!375174 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213350)))))) (h!68274 s!2326)))))

(assert (= (and d!1730990 res!2309861) b!5427902))

(assert (= (and d!1730990 c!946906) b!5427901))

(assert (= (and d!1730990 (not c!946906)) b!5427900))

(assert (= (and b!5427900 c!946907) b!5427899))

(assert (= (and b!5427900 (not c!946907)) b!5427903))

(assert (= (or b!5427901 b!5427899) bm!388589))

(declare-fun m!6451680 () Bool)

(assert (=> b!5427901 m!6451680))

(declare-fun m!6451682 () Bool)

(assert (=> b!5427902 m!6451682))

(declare-fun m!6451684 () Bool)

(assert (=> bm!388589 m!6451684))

(assert (=> b!5426762 d!1730990))

(declare-fun d!1730994 () Bool)

(assert (=> d!1730994 (= (isEmpty!33825 (exprs!5101 (h!68276 zl!343))) ((_ is Nil!61827) (exprs!5101 (h!68276 zl!343))))))

(assert (=> b!5426983 d!1730994))

(declare-fun d!1730996 () Bool)

(assert (=> d!1730996 true))

(assert (=> d!1730996 true))

(declare-fun res!2309873 () Bool)

(assert (=> d!1730996 (= (choose!41158 lambda!284591) res!2309873)))

(assert (=> d!1730612 d!1730996))

(assert (=> bm!388380 d!1730652))

(declare-fun d!1731002 () Bool)

(declare-fun res!2309876 () Bool)

(declare-fun e!3363553 () Bool)

(assert (=> d!1731002 (=> res!2309876 e!3363553)))

(assert (=> d!1731002 (= res!2309876 ((_ is Nil!61827) (exprs!5101 setElem!35381)))))

(assert (=> d!1731002 (= (forall!14555 (exprs!5101 setElem!35381) lambda!284642) e!3363553)))

(declare-fun b!5427919 () Bool)

(declare-fun e!3363554 () Bool)

(assert (=> b!5427919 (= e!3363553 e!3363554)))

(declare-fun res!2309877 () Bool)

(assert (=> b!5427919 (=> (not res!2309877) (not e!3363554))))

(assert (=> b!5427919 (= res!2309877 (dynLambda!24363 lambda!284642 (h!68275 (exprs!5101 setElem!35381))))))

(declare-fun b!5427920 () Bool)

(assert (=> b!5427920 (= e!3363554 (forall!14555 (t!375174 (exprs!5101 setElem!35381)) lambda!284642))))

(assert (= (and d!1731002 (not res!2309876)) b!5427919))

(assert (= (and b!5427919 res!2309877) b!5427920))

(declare-fun b_lambda!207113 () Bool)

(assert (=> (not b_lambda!207113) (not b!5427919)))

(declare-fun m!6451704 () Bool)

(assert (=> b!5427919 m!6451704))

(declare-fun m!6451706 () Bool)

(assert (=> b!5427920 m!6451706))

(assert (=> d!1730580 d!1731002))

(declare-fun bs!1253831 () Bool)

(declare-fun d!1731008 () Bool)

(assert (= bs!1253831 (and d!1731008 d!1730692)))

(declare-fun lambda!284704 () Int)

(assert (=> bs!1253831 (= lambda!284704 lambda!284675)))

(declare-fun bs!1253832 () Bool)

(assert (= bs!1253832 (and d!1731008 d!1730812)))

(assert (=> bs!1253832 (= lambda!284704 lambda!284690)))

(declare-fun bs!1253833 () Bool)

(assert (= bs!1253833 (and d!1731008 d!1730922)))

(assert (=> bs!1253833 (= lambda!284704 lambda!284698)))

(assert (=> d!1731008 (= (nullableZipper!1462 lt!2213318) (exists!2023 lt!2213318 lambda!284704))))

(declare-fun bs!1253834 () Bool)

(assert (= bs!1253834 d!1731008))

(declare-fun m!6451708 () Bool)

(assert (=> bs!1253834 m!6451708))

(assert (=> b!5426502 d!1731008))

(assert (=> d!1730608 d!1730610))

(assert (=> d!1730608 d!1730750))

(assert (=> d!1730608 d!1730616))

(declare-fun d!1731010 () Bool)

(assert (=> d!1731010 (= (Exists!2398 lambda!284655) (choose!41158 lambda!284655))))

(declare-fun bs!1253835 () Bool)

(assert (= bs!1253835 d!1731010))

(declare-fun m!6451716 () Bool)

(assert (=> bs!1253835 m!6451716))

(assert (=> d!1730608 d!1731010))

(declare-fun bs!1253839 () Bool)

(declare-fun d!1731014 () Bool)

(assert (= bs!1253839 (and d!1731014 b!5426785)))

(declare-fun lambda!284710 () Int)

(assert (=> bs!1253839 (not (= lambda!284710 lambda!284633))))

(declare-fun bs!1253840 () Bool)

(assert (= bs!1253840 (and d!1731014 b!5426653)))

(assert (=> bs!1253840 (not (= lambda!284710 lambda!284618))))

(declare-fun bs!1253841 () Bool)

(assert (= bs!1253841 (and d!1731014 d!1730736)))

(assert (=> bs!1253841 (not (= lambda!284710 lambda!284682))))

(declare-fun bs!1253842 () Bool)

(assert (= bs!1253842 (and d!1731014 b!5426269)))

(assert (=> bs!1253842 (not (= lambda!284710 lambda!284591))))

(assert (=> bs!1253842 (= lambda!284710 lambda!284590)))

(declare-fun bs!1253843 () Bool)

(assert (= bs!1253843 (and d!1731014 b!5427806)))

(assert (=> bs!1253843 (not (= lambda!284710 lambda!284700))))

(declare-fun bs!1253844 () Bool)

(assert (= bs!1253844 (and d!1731014 b!5426789)))

(assert (=> bs!1253844 (not (= lambda!284710 lambda!284632))))

(assert (=> bs!1253841 (= lambda!284710 lambda!284681)))

(declare-fun bs!1253845 () Bool)

(assert (= bs!1253845 (and d!1731014 d!1730608)))

(assert (=> bs!1253845 (= lambda!284710 lambda!284655)))

(declare-fun bs!1253846 () Bool)

(assert (= bs!1253846 (and d!1731014 d!1730614)))

(assert (=> bs!1253846 (= lambda!284710 lambda!284660)))

(declare-fun bs!1253847 () Bool)

(assert (= bs!1253847 (and d!1731014 b!5426649)))

(assert (=> bs!1253847 (not (= lambda!284710 lambda!284621))))

(assert (=> bs!1253846 (not (= lambda!284710 lambda!284661))))

(declare-fun bs!1253848 () Bool)

(assert (= bs!1253848 (and d!1731014 b!5427802)))

(assert (=> bs!1253848 (not (= lambda!284710 lambda!284701))))

(assert (=> d!1731014 true))

(assert (=> d!1731014 true))

(assert (=> d!1731014 true))

(assert (=> d!1731014 (= (isDefined!12031 (findConcatSeparation!1742 (regOne!30946 r!7292) (regTwo!30946 r!7292) Nil!61826 s!2326 s!2326)) (Exists!2398 lambda!284710))))

(assert (=> d!1731014 true))

(declare-fun _$89!1561 () Unit!154390)

(assert (=> d!1731014 (= (choose!41159 (regOne!30946 r!7292) (regTwo!30946 r!7292) s!2326) _$89!1561)))

(declare-fun bs!1253850 () Bool)

(assert (= bs!1253850 d!1731014))

(assert (=> bs!1253850 m!6450168))

(assert (=> bs!1253850 m!6450168))

(assert (=> bs!1253850 m!6450170))

(declare-fun m!6451732 () Bool)

(assert (=> bs!1253850 m!6451732))

(assert (=> d!1730608 d!1731014))

(assert (=> d!1730540 d!1730536))

(assert (=> d!1730540 d!1730538))

(declare-fun d!1731024 () Bool)

(assert (=> d!1731024 (= (matchR!7402 lt!2213346 s!2326) (matchRSpec!2320 lt!2213346 s!2326))))

(assert (=> d!1731024 true))

(declare-fun _$88!3665 () Unit!154390)

(assert (=> d!1731024 (= (choose!41154 lt!2213346 s!2326) _$88!3665)))

(declare-fun bs!1253854 () Bool)

(assert (= bs!1253854 d!1731024))

(assert (=> bs!1253854 m!6450192))

(assert (=> bs!1253854 m!6450194))

(assert (=> d!1730540 d!1731024))

(assert (=> d!1730540 d!1730768))

(declare-fun d!1731026 () Bool)

(declare-fun res!2309898 () Bool)

(declare-fun e!3363575 () Bool)

(assert (=> d!1731026 (=> res!2309898 e!3363575)))

(assert (=> d!1731026 (= res!2309898 ((_ is Nil!61827) (t!375174 (t!375174 (exprs!5101 (h!68276 zl!343))))))))

(assert (=> d!1731026 (= (forall!14555 (t!375174 (t!375174 (exprs!5101 (h!68276 zl!343)))) lambda!284593) e!3363575)))

(declare-fun b!5427949 () Bool)

(declare-fun e!3363576 () Bool)

(assert (=> b!5427949 (= e!3363575 e!3363576)))

(declare-fun res!2309899 () Bool)

(assert (=> b!5427949 (=> (not res!2309899) (not e!3363576))))

(assert (=> b!5427949 (= res!2309899 (dynLambda!24363 lambda!284593 (h!68275 (t!375174 (t!375174 (exprs!5101 (h!68276 zl!343)))))))))

(declare-fun b!5427950 () Bool)

(assert (=> b!5427950 (= e!3363576 (forall!14555 (t!375174 (t!375174 (t!375174 (exprs!5101 (h!68276 zl!343))))) lambda!284593))))

(assert (= (and d!1731026 (not res!2309898)) b!5427949))

(assert (= (and b!5427949 res!2309899) b!5427950))

(declare-fun b_lambda!207117 () Bool)

(assert (=> (not b_lambda!207117) (not b!5427949)))

(declare-fun m!6451734 () Bool)

(assert (=> b!5427949 m!6451734))

(declare-fun m!6451736 () Bool)

(assert (=> b!5427950 m!6451736))

(assert (=> b!5426461 d!1731026))

(assert (=> d!1730544 d!1730550))

(declare-fun d!1731028 () Bool)

(assert (=> d!1731028 (= (flatMap!944 lt!2213338 lambda!284592) (dynLambda!24362 lambda!284592 lt!2213334))))

(assert (=> d!1731028 true))

(declare-fun _$13!1954 () Unit!154390)

(assert (=> d!1731028 (= (choose!41150 lt!2213338 lt!2213334 lambda!284592) _$13!1954)))

(declare-fun b_lambda!207119 () Bool)

(assert (=> (not b_lambda!207119) (not d!1731028)))

(declare-fun bs!1253860 () Bool)

(assert (= bs!1253860 d!1731028))

(assert (=> bs!1253860 m!6450090))

(assert (=> bs!1253860 m!6450596))

(assert (=> d!1730544 d!1731028))

(declare-fun b!5427951 () Bool)

(declare-fun e!3363582 () (InoxSet Context!9202))

(assert (=> b!5427951 (= e!3363582 (store ((as const (Array Context!9202 Bool)) false) (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343)))) true))))

(declare-fun b!5427953 () Bool)

(declare-fun e!3363579 () Bool)

(assert (=> b!5427953 (= e!3363579 (nullable!5386 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun bm!388599 () Bool)

(declare-fun call!388609 () (InoxSet Context!9202))

(declare-fun call!388605 () (InoxSet Context!9202))

(assert (=> bm!388599 (= call!388609 call!388605)))

(declare-fun b!5427954 () Bool)

(declare-fun e!3363577 () (InoxSet Context!9202))

(declare-fun e!3363580 () (InoxSet Context!9202))

(assert (=> b!5427954 (= e!3363577 e!3363580)))

(declare-fun c!946915 () Bool)

(assert (=> b!5427954 (= c!946915 ((_ is Concat!24062) (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5427955 () Bool)

(declare-fun call!388608 () (InoxSet Context!9202))

(assert (=> b!5427955 (= e!3363577 ((_ map or) call!388608 call!388605))))

(declare-fun b!5427956 () Bool)

(declare-fun c!946918 () Bool)

(assert (=> b!5427956 (= c!946918 e!3363579)))

(declare-fun res!2309900 () Bool)

(assert (=> b!5427956 (=> (not res!2309900) (not e!3363579))))

(assert (=> b!5427956 (= res!2309900 ((_ is Concat!24062) (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun e!3363581 () (InoxSet Context!9202))

(assert (=> b!5427956 (= e!3363581 e!3363577)))

(declare-fun b!5427957 () Bool)

(declare-fun call!388604 () (InoxSet Context!9202))

(assert (=> b!5427957 (= e!3363581 ((_ map or) call!388608 call!388604))))

(declare-fun bm!388600 () Bool)

(assert (=> bm!388600 (= call!388605 call!388604)))

(declare-fun bm!388601 () Bool)

(declare-fun call!388606 () List!61951)

(assert (=> bm!388601 (= call!388606 ($colon$colon!1512 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343))))) (ite (or c!946918 c!946915) (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (h!68275 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun c!946914 () Bool)

(declare-fun bm!388602 () Bool)

(assert (=> bm!388602 (= call!388608 (derivationStepZipperDown!665 (ite c!946914 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343))))) (ite c!946914 (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343)))) (Context!9203 call!388606)) (h!68274 s!2326)))))

(declare-fun d!1731030 () Bool)

(declare-fun c!946916 () Bool)

(assert (=> d!1731030 (= c!946916 (and ((_ is ElementMatch!15217) (h!68275 (exprs!5101 (h!68276 zl!343)))) (= (c!946431 (h!68275 (exprs!5101 (h!68276 zl!343)))) (h!68274 s!2326))))))

(assert (=> d!1731030 (= (derivationStepZipperDown!665 (h!68275 (exprs!5101 (h!68276 zl!343))) (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343)))) (h!68274 s!2326)) e!3363582)))

(declare-fun b!5427952 () Bool)

(assert (=> b!5427952 (= e!3363582 e!3363581)))

(assert (=> b!5427952 (= c!946914 ((_ is Union!15217) (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5427958 () Bool)

(assert (=> b!5427958 (= e!3363580 call!388609)))

(declare-fun b!5427959 () Bool)

(declare-fun e!3363578 () (InoxSet Context!9202))

(assert (=> b!5427959 (= e!3363578 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5427960 () Bool)

(assert (=> b!5427960 (= e!3363578 call!388609)))

(declare-fun bm!388603 () Bool)

(declare-fun call!388607 () List!61951)

(assert (=> bm!388603 (= call!388604 (derivationStepZipperDown!665 (ite c!946914 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946918 (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (ite c!946915 (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))) (reg!15546 (h!68275 (exprs!5101 (h!68276 zl!343))))))) (ite (or c!946914 c!946918) (Context!9203 (t!375174 (exprs!5101 (h!68276 zl!343)))) (Context!9203 call!388607)) (h!68274 s!2326)))))

(declare-fun bm!388604 () Bool)

(assert (=> bm!388604 (= call!388607 call!388606)))

(declare-fun b!5427961 () Bool)

(declare-fun c!946917 () Bool)

(assert (=> b!5427961 (= c!946917 ((_ is Star!15217) (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(assert (=> b!5427961 (= e!3363580 e!3363578)))

(assert (= (and d!1731030 c!946916) b!5427951))

(assert (= (and d!1731030 (not c!946916)) b!5427952))

(assert (= (and b!5427952 c!946914) b!5427957))

(assert (= (and b!5427952 (not c!946914)) b!5427956))

(assert (= (and b!5427956 res!2309900) b!5427953))

(assert (= (and b!5427956 c!946918) b!5427955))

(assert (= (and b!5427956 (not c!946918)) b!5427954))

(assert (= (and b!5427954 c!946915) b!5427958))

(assert (= (and b!5427954 (not c!946915)) b!5427961))

(assert (= (and b!5427961 c!946917) b!5427960))

(assert (= (and b!5427961 (not c!946917)) b!5427959))

(assert (= (or b!5427958 b!5427960) bm!388604))

(assert (= (or b!5427958 b!5427960) bm!388599))

(assert (= (or b!5427955 bm!388604) bm!388601))

(assert (= (or b!5427955 bm!388599) bm!388600))

(assert (= (or b!5427957 bm!388600) bm!388603))

(assert (= (or b!5427957 b!5427955) bm!388602))

(declare-fun m!6451740 () Bool)

(assert (=> bm!388601 m!6451740))

(declare-fun m!6451742 () Bool)

(assert (=> b!5427951 m!6451742))

(declare-fun m!6451744 () Bool)

(assert (=> bm!388603 m!6451744))

(declare-fun m!6451746 () Bool)

(assert (=> bm!388602 m!6451746))

(assert (=> b!5427953 m!6450276))

(assert (=> bm!388335 d!1731030))

(declare-fun d!1731034 () Bool)

(assert (=> d!1731034 true))

(assert (=> d!1731034 true))

(declare-fun res!2309906 () Bool)

(assert (=> d!1731034 (= (choose!41158 lambda!284590) res!2309906)))

(assert (=> d!1730606 d!1731034))

(assert (=> bs!1253539 d!1730528))

(declare-fun bs!1253864 () Bool)

(declare-fun d!1731038 () Bool)

(assert (= bs!1253864 (and d!1731038 d!1730692)))

(declare-fun lambda!284712 () Int)

(assert (=> bs!1253864 (= lambda!284712 lambda!284675)))

(declare-fun bs!1253865 () Bool)

(assert (= bs!1253865 (and d!1731038 d!1730812)))

(assert (=> bs!1253865 (= lambda!284712 lambda!284690)))

(declare-fun bs!1253866 () Bool)

(assert (= bs!1253866 (and d!1731038 d!1730922)))

(assert (=> bs!1253866 (= lambda!284712 lambda!284698)))

(declare-fun bs!1253867 () Bool)

(assert (= bs!1253867 (and d!1731038 d!1731008)))

(assert (=> bs!1253867 (= lambda!284712 lambda!284704)))

(assert (=> d!1731038 (= (nullableZipper!1462 lt!2213328) (exists!2023 lt!2213328 lambda!284712))))

(declare-fun bs!1253868 () Bool)

(assert (= bs!1253868 d!1731038))

(declare-fun m!6451754 () Bool)

(assert (=> bs!1253868 m!6451754))

(assert (=> b!5426754 d!1731038))

(assert (=> d!1730522 d!1730844))

(declare-fun bs!1253869 () Bool)

(declare-fun b!5427990 () Bool)

(assert (= bs!1253869 (and b!5427990 d!1731014)))

(declare-fun lambda!284713 () Int)

(assert (=> bs!1253869 (not (= lambda!284713 lambda!284710))))

(declare-fun bs!1253870 () Bool)

(assert (= bs!1253870 (and b!5427990 b!5426785)))

(assert (=> bs!1253870 (not (= lambda!284713 lambda!284633))))

(declare-fun bs!1253871 () Bool)

(assert (= bs!1253871 (and b!5427990 b!5426653)))

(assert (=> bs!1253871 (= (and (= (reg!15546 (regTwo!30947 r!7292)) (reg!15546 r!7292)) (= (regTwo!30947 r!7292) r!7292)) (= lambda!284713 lambda!284618))))

(declare-fun bs!1253872 () Bool)

(assert (= bs!1253872 (and b!5427990 d!1730736)))

(assert (=> bs!1253872 (not (= lambda!284713 lambda!284682))))

(declare-fun bs!1253873 () Bool)

(assert (= bs!1253873 (and b!5427990 b!5426269)))

(assert (=> bs!1253873 (not (= lambda!284713 lambda!284591))))

(assert (=> bs!1253873 (not (= lambda!284713 lambda!284590))))

(declare-fun bs!1253875 () Bool)

(assert (= bs!1253875 (and b!5427990 b!5427806)))

(assert (=> bs!1253875 (= (and (= (reg!15546 (regTwo!30947 r!7292)) (reg!15546 (regOne!30947 r!7292))) (= (regTwo!30947 r!7292) (regOne!30947 r!7292))) (= lambda!284713 lambda!284700))))

(declare-fun bs!1253876 () Bool)

(assert (= bs!1253876 (and b!5427990 b!5426789)))

(assert (=> bs!1253876 (= (and (= (reg!15546 (regTwo!30947 r!7292)) (reg!15546 lt!2213346)) (= (regTwo!30947 r!7292) lt!2213346)) (= lambda!284713 lambda!284632))))

(assert (=> bs!1253872 (not (= lambda!284713 lambda!284681))))

(declare-fun bs!1253877 () Bool)

(assert (= bs!1253877 (and b!5427990 d!1730608)))

(assert (=> bs!1253877 (not (= lambda!284713 lambda!284655))))

(declare-fun bs!1253878 () Bool)

(assert (= bs!1253878 (and b!5427990 d!1730614)))

(assert (=> bs!1253878 (not (= lambda!284713 lambda!284660))))

(declare-fun bs!1253879 () Bool)

(assert (= bs!1253879 (and b!5427990 b!5426649)))

(assert (=> bs!1253879 (not (= lambda!284713 lambda!284621))))

(assert (=> bs!1253878 (not (= lambda!284713 lambda!284661))))

(declare-fun bs!1253880 () Bool)

(assert (= bs!1253880 (and b!5427990 b!5427802)))

(assert (=> bs!1253880 (not (= lambda!284713 lambda!284701))))

(assert (=> b!5427990 true))

(assert (=> b!5427990 true))

(declare-fun bs!1253881 () Bool)

(declare-fun b!5427986 () Bool)

(assert (= bs!1253881 (and b!5427986 d!1731014)))

(declare-fun lambda!284714 () Int)

(assert (=> bs!1253881 (not (= lambda!284714 lambda!284710))))

(declare-fun bs!1253882 () Bool)

(assert (= bs!1253882 (and b!5427986 b!5426785)))

(assert (=> bs!1253882 (= (and (= (regOne!30946 (regTwo!30947 r!7292)) (regOne!30946 lt!2213346)) (= (regTwo!30946 (regTwo!30947 r!7292)) (regTwo!30946 lt!2213346))) (= lambda!284714 lambda!284633))))

(declare-fun bs!1253885 () Bool)

(assert (= bs!1253885 (and b!5427986 b!5426653)))

(assert (=> bs!1253885 (not (= lambda!284714 lambda!284618))))

(declare-fun bs!1253887 () Bool)

(assert (= bs!1253887 (and b!5427986 d!1730736)))

(assert (=> bs!1253887 (= (and (= (regOne!30946 (regTwo!30947 r!7292)) (regOne!30946 r!7292)) (= (regTwo!30946 (regTwo!30947 r!7292)) (regTwo!30946 r!7292))) (= lambda!284714 lambda!284682))))

(declare-fun bs!1253890 () Bool)

(assert (= bs!1253890 (and b!5427986 b!5426269)))

(assert (=> bs!1253890 (= (and (= (regOne!30946 (regTwo!30947 r!7292)) (regOne!30946 r!7292)) (= (regTwo!30946 (regTwo!30947 r!7292)) (regTwo!30946 r!7292))) (= lambda!284714 lambda!284591))))

(assert (=> bs!1253890 (not (= lambda!284714 lambda!284590))))

(declare-fun bs!1253893 () Bool)

(assert (= bs!1253893 (and b!5427986 b!5427806)))

(assert (=> bs!1253893 (not (= lambda!284714 lambda!284700))))

(declare-fun bs!1253896 () Bool)

(assert (= bs!1253896 (and b!5427986 b!5427990)))

(assert (=> bs!1253896 (not (= lambda!284714 lambda!284713))))

(declare-fun bs!1253899 () Bool)

(assert (= bs!1253899 (and b!5427986 b!5426789)))

(assert (=> bs!1253899 (not (= lambda!284714 lambda!284632))))

(assert (=> bs!1253887 (not (= lambda!284714 lambda!284681))))

(declare-fun bs!1253900 () Bool)

(assert (= bs!1253900 (and b!5427986 d!1730608)))

(assert (=> bs!1253900 (not (= lambda!284714 lambda!284655))))

(declare-fun bs!1253901 () Bool)

(assert (= bs!1253901 (and b!5427986 d!1730614)))

(assert (=> bs!1253901 (not (= lambda!284714 lambda!284660))))

(declare-fun bs!1253902 () Bool)

(assert (= bs!1253902 (and b!5427986 b!5426649)))

(assert (=> bs!1253902 (= (and (= (regOne!30946 (regTwo!30947 r!7292)) (regOne!30946 r!7292)) (= (regTwo!30946 (regTwo!30947 r!7292)) (regTwo!30946 r!7292))) (= lambda!284714 lambda!284621))))

(assert (=> bs!1253901 (= (and (= (regOne!30946 (regTwo!30947 r!7292)) (regOne!30946 r!7292)) (= (regTwo!30946 (regTwo!30947 r!7292)) (regTwo!30946 r!7292))) (= lambda!284714 lambda!284661))))

(declare-fun bs!1253903 () Bool)

(assert (= bs!1253903 (and b!5427986 b!5427802)))

(assert (=> bs!1253903 (= (and (= (regOne!30946 (regTwo!30947 r!7292)) (regOne!30946 (regOne!30947 r!7292))) (= (regTwo!30946 (regTwo!30947 r!7292)) (regTwo!30946 (regOne!30947 r!7292)))) (= lambda!284714 lambda!284701))))

(assert (=> b!5427986 true))

(assert (=> b!5427986 true))

(declare-fun bm!388614 () Bool)

(declare-fun call!388619 () Bool)

(assert (=> bm!388614 (= call!388619 (isEmpty!33827 s!2326))))

(declare-fun b!5427982 () Bool)

(declare-fun c!946926 () Bool)

(assert (=> b!5427982 (= c!946926 ((_ is ElementMatch!15217) (regTwo!30947 r!7292)))))

(declare-fun e!3363597 () Bool)

(declare-fun e!3363602 () Bool)

(assert (=> b!5427982 (= e!3363597 e!3363602)))

(declare-fun bm!388615 () Bool)

(declare-fun c!946928 () Bool)

(declare-fun call!388620 () Bool)

(assert (=> bm!388615 (= call!388620 (Exists!2398 (ite c!946928 lambda!284713 lambda!284714)))))

(declare-fun d!1731040 () Bool)

(declare-fun c!946929 () Bool)

(assert (=> d!1731040 (= c!946929 ((_ is EmptyExpr!15217) (regTwo!30947 r!7292)))))

(declare-fun e!3363601 () Bool)

(assert (=> d!1731040 (= (matchRSpec!2320 (regTwo!30947 r!7292) s!2326) e!3363601)))

(declare-fun b!5427983 () Bool)

(assert (=> b!5427983 (= e!3363601 e!3363597)))

(declare-fun res!2309909 () Bool)

(assert (=> b!5427983 (= res!2309909 (not ((_ is EmptyLang!15217) (regTwo!30947 r!7292))))))

(assert (=> b!5427983 (=> (not res!2309909) (not e!3363597))))

(declare-fun b!5427984 () Bool)

(assert (=> b!5427984 (= e!3363601 call!388619)))

(declare-fun b!5427985 () Bool)

(declare-fun res!2309910 () Bool)

(declare-fun e!3363596 () Bool)

(assert (=> b!5427985 (=> res!2309910 e!3363596)))

(assert (=> b!5427985 (= res!2309910 call!388619)))

(declare-fun e!3363600 () Bool)

(assert (=> b!5427985 (= e!3363600 e!3363596)))

(assert (=> b!5427986 (= e!3363600 call!388620)))

(declare-fun b!5427987 () Bool)

(declare-fun e!3363599 () Bool)

(declare-fun e!3363598 () Bool)

(assert (=> b!5427987 (= e!3363599 e!3363598)))

(declare-fun res!2309908 () Bool)

(assert (=> b!5427987 (= res!2309908 (matchRSpec!2320 (regOne!30947 (regTwo!30947 r!7292)) s!2326))))

(assert (=> b!5427987 (=> res!2309908 e!3363598)))

(declare-fun b!5427988 () Bool)

(assert (=> b!5427988 (= e!3363602 (= s!2326 (Cons!61826 (c!946431 (regTwo!30947 r!7292)) Nil!61826)))))

(declare-fun b!5427989 () Bool)

(declare-fun c!946927 () Bool)

(assert (=> b!5427989 (= c!946927 ((_ is Union!15217) (regTwo!30947 r!7292)))))

(assert (=> b!5427989 (= e!3363602 e!3363599)))

(assert (=> b!5427990 (= e!3363596 call!388620)))

(declare-fun b!5427991 () Bool)

(assert (=> b!5427991 (= e!3363598 (matchRSpec!2320 (regTwo!30947 (regTwo!30947 r!7292)) s!2326))))

(declare-fun b!5427992 () Bool)

(assert (=> b!5427992 (= e!3363599 e!3363600)))

(assert (=> b!5427992 (= c!946928 ((_ is Star!15217) (regTwo!30947 r!7292)))))

(assert (= (and d!1731040 c!946929) b!5427984))

(assert (= (and d!1731040 (not c!946929)) b!5427983))

(assert (= (and b!5427983 res!2309909) b!5427982))

(assert (= (and b!5427982 c!946926) b!5427988))

(assert (= (and b!5427982 (not c!946926)) b!5427989))

(assert (= (and b!5427989 c!946927) b!5427987))

(assert (= (and b!5427989 (not c!946927)) b!5427992))

(assert (= (and b!5427987 (not res!2309908)) b!5427991))

(assert (= (and b!5427992 c!946928) b!5427985))

(assert (= (and b!5427992 (not c!946928)) b!5427986))

(assert (= (and b!5427985 (not res!2309910)) b!5427990))

(assert (= (or b!5427990 b!5427986) bm!388615))

(assert (= (or b!5427984 b!5427985) bm!388614))

(assert (=> bm!388614 m!6450416))

(declare-fun m!6451784 () Bool)

(assert (=> bm!388615 m!6451784))

(declare-fun m!6451788 () Bool)

(assert (=> b!5427987 m!6451788))

(declare-fun m!6451790 () Bool)

(assert (=> b!5427991 m!6451790))

(assert (=> b!5426654 d!1731040))

(declare-fun d!1731064 () Bool)

(declare-fun c!946931 () Bool)

(assert (=> d!1731064 (= c!946931 (isEmpty!33827 (tail!10738 (t!375173 s!2326))))))

(declare-fun e!3363609 () Bool)

(assert (=> d!1731064 (= (matchZipper!1461 (derivationStepZipper!1456 lt!2213348 (head!11641 (t!375173 s!2326))) (tail!10738 (t!375173 s!2326))) e!3363609)))

(declare-fun b!5428000 () Bool)

(assert (=> b!5428000 (= e!3363609 (nullableZipper!1462 (derivationStepZipper!1456 lt!2213348 (head!11641 (t!375173 s!2326)))))))

(declare-fun b!5428001 () Bool)

(assert (=> b!5428001 (= e!3363609 (matchZipper!1461 (derivationStepZipper!1456 (derivationStepZipper!1456 lt!2213348 (head!11641 (t!375173 s!2326))) (head!11641 (tail!10738 (t!375173 s!2326)))) (tail!10738 (tail!10738 (t!375173 s!2326)))))))

(assert (= (and d!1731064 c!946931) b!5428000))

(assert (= (and d!1731064 (not c!946931)) b!5428001))

(assert (=> d!1731064 m!6450364))

(assert (=> d!1731064 m!6450846))

(assert (=> b!5428000 m!6450530))

(declare-fun m!6451794 () Bool)

(assert (=> b!5428000 m!6451794))

(assert (=> b!5428001 m!6450364))

(assert (=> b!5428001 m!6450850))

(assert (=> b!5428001 m!6450530))

(assert (=> b!5428001 m!6450850))

(declare-fun m!6451796 () Bool)

(assert (=> b!5428001 m!6451796))

(assert (=> b!5428001 m!6450364))

(assert (=> b!5428001 m!6450854))

(assert (=> b!5428001 m!6451796))

(assert (=> b!5428001 m!6450854))

(declare-fun m!6451798 () Bool)

(assert (=> b!5428001 m!6451798))

(assert (=> b!5426759 d!1731064))

(declare-fun bs!1253911 () Bool)

(declare-fun d!1731068 () Bool)

(assert (= bs!1253911 (and d!1731068 d!1730902)))

(declare-fun lambda!284718 () Int)

(assert (=> bs!1253911 (= lambda!284718 lambda!284695)))

(declare-fun bs!1253912 () Bool)

(assert (= bs!1253912 (and d!1731068 d!1730678)))

(assert (=> bs!1253912 (= lambda!284718 lambda!284671)))

(declare-fun bs!1253913 () Bool)

(assert (= bs!1253913 (and d!1731068 d!1730660)))

(assert (=> bs!1253913 (= lambda!284718 lambda!284669)))

(declare-fun bs!1253914 () Bool)

(assert (= bs!1253914 (and d!1731068 d!1730782)))

(assert (=> bs!1253914 (= (= (head!11641 (t!375173 s!2326)) (head!11641 s!2326)) (= lambda!284718 lambda!284688))))

(declare-fun bs!1253915 () Bool)

(assert (= bs!1253915 (and d!1731068 d!1730532)))

(assert (=> bs!1253915 (= (= (head!11641 (t!375173 s!2326)) (h!68274 s!2326)) (= lambda!284718 lambda!284631))))

(declare-fun bs!1253916 () Bool)

(assert (= bs!1253916 (and d!1731068 d!1730432)))

(assert (=> bs!1253916 (= (= (head!11641 (t!375173 s!2326)) (h!68274 s!2326)) (= lambda!284718 lambda!284599))))

(declare-fun bs!1253917 () Bool)

(assert (= bs!1253917 (and d!1731068 d!1730760)))

(assert (=> bs!1253917 (= (= (head!11641 (t!375173 s!2326)) (head!11641 s!2326)) (= lambda!284718 lambda!284685))))

(declare-fun bs!1253918 () Bool)

(assert (= bs!1253918 (and d!1731068 b!5426259)))

(assert (=> bs!1253918 (= (= (head!11641 (t!375173 s!2326)) (h!68274 s!2326)) (= lambda!284718 lambda!284592))))

(assert (=> d!1731068 true))

(assert (=> d!1731068 (= (derivationStepZipper!1456 lt!2213348 (head!11641 (t!375173 s!2326))) (flatMap!944 lt!2213348 lambda!284718))))

(declare-fun bs!1253919 () Bool)

(assert (= bs!1253919 d!1731068))

(declare-fun m!6451800 () Bool)

(assert (=> bs!1253919 m!6451800))

(assert (=> b!5426759 d!1731068))

(assert (=> b!5426759 d!1730662))

(assert (=> b!5426759 d!1730666))

(declare-fun bs!1253920 () Bool)

(declare-fun d!1731072 () Bool)

(assert (= bs!1253920 (and d!1731072 d!1730602)))

(declare-fun lambda!284719 () Int)

(assert (=> bs!1253920 (= lambda!284719 lambda!284652)))

(declare-fun bs!1253921 () Bool)

(assert (= bs!1253921 (and d!1731072 d!1730702)))

(assert (=> bs!1253921 (= lambda!284719 lambda!284676)))

(declare-fun bs!1253922 () Bool)

(assert (= bs!1253922 (and d!1731072 d!1730752)))

(assert (=> bs!1253922 (= lambda!284719 lambda!284683)))

(declare-fun bs!1253923 () Bool)

(assert (= bs!1253923 (and d!1731072 b!5426260)))

(assert (=> bs!1253923 (= lambda!284719 lambda!284593)))

(declare-fun bs!1253924 () Bool)

(assert (= bs!1253924 (and d!1731072 d!1730600)))

(assert (=> bs!1253924 (= lambda!284719 lambda!284649)))

(declare-fun bs!1253925 () Bool)

(assert (= bs!1253925 (and d!1731072 d!1730754)))

(assert (=> bs!1253925 (= lambda!284719 lambda!284684)))

(declare-fun bs!1253926 () Bool)

(assert (= bs!1253926 (and d!1731072 d!1730978)))

(assert (=> bs!1253926 (= lambda!284719 lambda!284703)))

(declare-fun bs!1253927 () Bool)

(assert (= bs!1253927 (and d!1731072 d!1730774)))

(assert (=> bs!1253927 (= lambda!284719 lambda!284686)))

(declare-fun bs!1253928 () Bool)

(assert (= bs!1253928 (and d!1731072 d!1730976)))

(assert (=> bs!1253928 (= lambda!284719 lambda!284702)))

(declare-fun bs!1253929 () Bool)

(assert (= bs!1253929 (and d!1731072 d!1730586)))

(assert (=> bs!1253929 (= lambda!284719 lambda!284646)))

(declare-fun bs!1253930 () Bool)

(assert (= bs!1253930 (and d!1731072 d!1730776)))

(assert (=> bs!1253930 (= lambda!284719 lambda!284687)))

(declare-fun bs!1253931 () Bool)

(assert (= bs!1253931 (and d!1731072 d!1730650)))

(assert (=> bs!1253931 (= lambda!284719 lambda!284668)))

(declare-fun bs!1253932 () Bool)

(assert (= bs!1253932 (and d!1731072 d!1730580)))

(assert (=> bs!1253932 (= lambda!284719 lambda!284642)))

(declare-fun bs!1253933 () Bool)

(assert (= bs!1253933 (and d!1731072 d!1730648)))

(assert (=> bs!1253933 (= lambda!284719 lambda!284666)))

(declare-fun bs!1253934 () Bool)

(assert (= bs!1253934 (and d!1731072 d!1730804)))

(assert (=> bs!1253934 (= lambda!284719 lambda!284689)))

(declare-fun bs!1253935 () Bool)

(assert (= bs!1253935 (and d!1731072 d!1730454)))

(assert (=> bs!1253935 (= lambda!284719 lambda!284608)))

(assert (=> d!1731072 (= (inv!81289 (h!68276 (t!375175 zl!343))) (forall!14555 (exprs!5101 (h!68276 (t!375175 zl!343))) lambda!284719))))

(declare-fun bs!1253936 () Bool)

(assert (= bs!1253936 d!1731072))

(declare-fun m!6451818 () Bool)

(assert (=> bs!1253936 m!6451818))

(assert (=> b!5427115 d!1731072))

(declare-fun b!5428027 () Bool)

(declare-fun e!3363628 () Bool)

(assert (=> b!5428027 (= e!3363628 (nullable!5386 (regTwo!30946 r!7292)))))

(declare-fun bm!388623 () Bool)

(declare-fun call!388628 () Bool)

(assert (=> bm!388623 (= call!388628 (isEmpty!33827 s!2326))))

(declare-fun b!5428028 () Bool)

(declare-fun res!2309932 () Bool)

(declare-fun e!3363629 () Bool)

(assert (=> b!5428028 (=> res!2309932 e!3363629)))

(assert (=> b!5428028 (= res!2309932 (not (isEmpty!33827 (tail!10738 s!2326))))))

(declare-fun b!5428029 () Bool)

(declare-fun e!3363623 () Bool)

(declare-fun lt!2213505 () Bool)

(assert (=> b!5428029 (= e!3363623 (not lt!2213505))))

(declare-fun b!5428030 () Bool)

(declare-fun e!3363626 () Bool)

(assert (=> b!5428030 (= e!3363626 e!3363623)))

(declare-fun c!946940 () Bool)

(assert (=> b!5428030 (= c!946940 ((_ is EmptyLang!15217) (regTwo!30946 r!7292)))))

(declare-fun b!5428031 () Bool)

(declare-fun e!3363625 () Bool)

(assert (=> b!5428031 (= e!3363625 e!3363629)))

(declare-fun res!2309927 () Bool)

(assert (=> b!5428031 (=> res!2309927 e!3363629)))

(assert (=> b!5428031 (= res!2309927 call!388628)))

(declare-fun b!5428032 () Bool)

(declare-fun res!2309930 () Bool)

(declare-fun e!3363627 () Bool)

(assert (=> b!5428032 (=> res!2309930 e!3363627)))

(assert (=> b!5428032 (= res!2309930 (not ((_ is ElementMatch!15217) (regTwo!30946 r!7292))))))

(assert (=> b!5428032 (= e!3363623 e!3363627)))

(declare-fun b!5428033 () Bool)

(declare-fun res!2309929 () Bool)

(declare-fun e!3363624 () Bool)

(assert (=> b!5428033 (=> (not res!2309929) (not e!3363624))))

(assert (=> b!5428033 (= res!2309929 (isEmpty!33827 (tail!10738 s!2326)))))

(declare-fun b!5428034 () Bool)

(assert (=> b!5428034 (= e!3363628 (matchR!7402 (derivativeStep!4283 (regTwo!30946 r!7292) (head!11641 s!2326)) (tail!10738 s!2326)))))

(declare-fun d!1731076 () Bool)

(assert (=> d!1731076 e!3363626))

(declare-fun c!946942 () Bool)

(assert (=> d!1731076 (= c!946942 ((_ is EmptyExpr!15217) (regTwo!30946 r!7292)))))

(assert (=> d!1731076 (= lt!2213505 e!3363628)))

(declare-fun c!946941 () Bool)

(assert (=> d!1731076 (= c!946941 (isEmpty!33827 s!2326))))

(assert (=> d!1731076 (validRegex!6953 (regTwo!30946 r!7292))))

(assert (=> d!1731076 (= (matchR!7402 (regTwo!30946 r!7292) s!2326) lt!2213505)))

(declare-fun b!5428035 () Bool)

(assert (=> b!5428035 (= e!3363626 (= lt!2213505 call!388628))))

(declare-fun b!5428036 () Bool)

(assert (=> b!5428036 (= e!3363627 e!3363625)))

(declare-fun res!2309928 () Bool)

(assert (=> b!5428036 (=> (not res!2309928) (not e!3363625))))

(assert (=> b!5428036 (= res!2309928 (not lt!2213505))))

(declare-fun b!5428037 () Bool)

(assert (=> b!5428037 (= e!3363624 (= (head!11641 s!2326) (c!946431 (regTwo!30946 r!7292))))))

(declare-fun b!5428038 () Bool)

(assert (=> b!5428038 (= e!3363629 (not (= (head!11641 s!2326) (c!946431 (regTwo!30946 r!7292)))))))

(declare-fun b!5428039 () Bool)

(declare-fun res!2309925 () Bool)

(assert (=> b!5428039 (=> res!2309925 e!3363627)))

(assert (=> b!5428039 (= res!2309925 e!3363624)))

(declare-fun res!2309926 () Bool)

(assert (=> b!5428039 (=> (not res!2309926) (not e!3363624))))

(assert (=> b!5428039 (= res!2309926 lt!2213505)))

(declare-fun b!5428040 () Bool)

(declare-fun res!2309931 () Bool)

(assert (=> b!5428040 (=> (not res!2309931) (not e!3363624))))

(assert (=> b!5428040 (= res!2309931 (not call!388628))))

(assert (= (and d!1731076 c!946941) b!5428027))

(assert (= (and d!1731076 (not c!946941)) b!5428034))

(assert (= (and d!1731076 c!946942) b!5428035))

(assert (= (and d!1731076 (not c!946942)) b!5428030))

(assert (= (and b!5428030 c!946940) b!5428029))

(assert (= (and b!5428030 (not c!946940)) b!5428032))

(assert (= (and b!5428032 (not res!2309930)) b!5428039))

(assert (= (and b!5428039 res!2309926) b!5428040))

(assert (= (and b!5428040 res!2309931) b!5428033))

(assert (= (and b!5428033 res!2309929) b!5428037))

(assert (= (and b!5428039 (not res!2309925)) b!5428036))

(assert (= (and b!5428036 res!2309928) b!5428031))

(assert (= (and b!5428031 (not res!2309927)) b!5428028))

(assert (= (and b!5428028 (not res!2309932)) b!5428038))

(assert (= (or b!5428035 b!5428031 b!5428040) bm!388623))

(assert (=> d!1731076 m!6450416))

(assert (=> d!1731076 m!6450914))

(assert (=> b!5428033 m!6450496))

(assert (=> b!5428033 m!6450496))

(assert (=> b!5428033 m!6450498))

(assert (=> b!5428027 m!6450920))

(assert (=> b!5428034 m!6450502))

(assert (=> b!5428034 m!6450502))

(declare-fun m!6451830 () Bool)

(assert (=> b!5428034 m!6451830))

(assert (=> b!5428034 m!6450496))

(assert (=> b!5428034 m!6451830))

(assert (=> b!5428034 m!6450496))

(declare-fun m!6451832 () Bool)

(assert (=> b!5428034 m!6451832))

(assert (=> bm!388623 m!6450416))

(assert (=> b!5428038 m!6450502))

(assert (=> b!5428028 m!6450496))

(assert (=> b!5428028 m!6450496))

(assert (=> b!5428028 m!6450498))

(assert (=> b!5428037 m!6450502))

(assert (=> b!5427054 d!1731076))

(assert (=> b!5427069 d!1730448))

(declare-fun bs!1253946 () Bool)

(declare-fun b!5428049 () Bool)

(assert (= bs!1253946 (and b!5428049 d!1731014)))

(declare-fun lambda!284722 () Int)

(assert (=> bs!1253946 (not (= lambda!284722 lambda!284710))))

(declare-fun bs!1253949 () Bool)

(assert (= bs!1253949 (and b!5428049 b!5426785)))

(assert (=> bs!1253949 (not (= lambda!284722 lambda!284633))))

(declare-fun bs!1253951 () Bool)

(assert (= bs!1253951 (and b!5428049 b!5426653)))

(assert (=> bs!1253951 (= (and (= (reg!15546 (regTwo!30947 lt!2213346)) (reg!15546 r!7292)) (= (regTwo!30947 lt!2213346) r!7292)) (= lambda!284722 lambda!284618))))

(declare-fun bs!1253952 () Bool)

(assert (= bs!1253952 (and b!5428049 d!1730736)))

(assert (=> bs!1253952 (not (= lambda!284722 lambda!284682))))

(declare-fun bs!1253953 () Bool)

(assert (= bs!1253953 (and b!5428049 b!5426269)))

(assert (=> bs!1253953 (not (= lambda!284722 lambda!284591))))

(assert (=> bs!1253953 (not (= lambda!284722 lambda!284590))))

(declare-fun bs!1253954 () Bool)

(assert (= bs!1253954 (and b!5428049 b!5427806)))

(assert (=> bs!1253954 (= (and (= (reg!15546 (regTwo!30947 lt!2213346)) (reg!15546 (regOne!30947 r!7292))) (= (regTwo!30947 lt!2213346) (regOne!30947 r!7292))) (= lambda!284722 lambda!284700))))

(declare-fun bs!1253955 () Bool)

(assert (= bs!1253955 (and b!5428049 b!5427990)))

(assert (=> bs!1253955 (= (and (= (reg!15546 (regTwo!30947 lt!2213346)) (reg!15546 (regTwo!30947 r!7292))) (= (regTwo!30947 lt!2213346) (regTwo!30947 r!7292))) (= lambda!284722 lambda!284713))))

(declare-fun bs!1253956 () Bool)

(assert (= bs!1253956 (and b!5428049 b!5426789)))

(assert (=> bs!1253956 (= (and (= (reg!15546 (regTwo!30947 lt!2213346)) (reg!15546 lt!2213346)) (= (regTwo!30947 lt!2213346) lt!2213346)) (= lambda!284722 lambda!284632))))

(assert (=> bs!1253952 (not (= lambda!284722 lambda!284681))))

(declare-fun bs!1253957 () Bool)

(assert (= bs!1253957 (and b!5428049 d!1730608)))

(assert (=> bs!1253957 (not (= lambda!284722 lambda!284655))))

(declare-fun bs!1253958 () Bool)

(assert (= bs!1253958 (and b!5428049 d!1730614)))

(assert (=> bs!1253958 (not (= lambda!284722 lambda!284660))))

(declare-fun bs!1253959 () Bool)

(assert (= bs!1253959 (and b!5428049 b!5426649)))

(assert (=> bs!1253959 (not (= lambda!284722 lambda!284621))))

(assert (=> bs!1253958 (not (= lambda!284722 lambda!284661))))

(declare-fun bs!1253960 () Bool)

(assert (= bs!1253960 (and b!5428049 b!5427802)))

(assert (=> bs!1253960 (not (= lambda!284722 lambda!284701))))

(declare-fun bs!1253961 () Bool)

(assert (= bs!1253961 (and b!5428049 b!5427986)))

(assert (=> bs!1253961 (not (= lambda!284722 lambda!284714))))

(assert (=> b!5428049 true))

(assert (=> b!5428049 true))

(declare-fun bs!1253962 () Bool)

(declare-fun b!5428045 () Bool)

(assert (= bs!1253962 (and b!5428045 d!1731014)))

(declare-fun lambda!284723 () Int)

(assert (=> bs!1253962 (not (= lambda!284723 lambda!284710))))

(declare-fun bs!1253963 () Bool)

(assert (= bs!1253963 (and b!5428045 b!5426785)))

(assert (=> bs!1253963 (= (and (= (regOne!30946 (regTwo!30947 lt!2213346)) (regOne!30946 lt!2213346)) (= (regTwo!30946 (regTwo!30947 lt!2213346)) (regTwo!30946 lt!2213346))) (= lambda!284723 lambda!284633))))

(declare-fun bs!1253964 () Bool)

(assert (= bs!1253964 (and b!5428045 b!5426653)))

(assert (=> bs!1253964 (not (= lambda!284723 lambda!284618))))

(declare-fun bs!1253965 () Bool)

(assert (= bs!1253965 (and b!5428045 b!5428049)))

(assert (=> bs!1253965 (not (= lambda!284723 lambda!284722))))

(declare-fun bs!1253966 () Bool)

(assert (= bs!1253966 (and b!5428045 d!1730736)))

(assert (=> bs!1253966 (= (and (= (regOne!30946 (regTwo!30947 lt!2213346)) (regOne!30946 r!7292)) (= (regTwo!30946 (regTwo!30947 lt!2213346)) (regTwo!30946 r!7292))) (= lambda!284723 lambda!284682))))

(declare-fun bs!1253968 () Bool)

(assert (= bs!1253968 (and b!5428045 b!5426269)))

(assert (=> bs!1253968 (= (and (= (regOne!30946 (regTwo!30947 lt!2213346)) (regOne!30946 r!7292)) (= (regTwo!30946 (regTwo!30947 lt!2213346)) (regTwo!30946 r!7292))) (= lambda!284723 lambda!284591))))

(assert (=> bs!1253968 (not (= lambda!284723 lambda!284590))))

(declare-fun bs!1253973 () Bool)

(assert (= bs!1253973 (and b!5428045 b!5427806)))

(assert (=> bs!1253973 (not (= lambda!284723 lambda!284700))))

(declare-fun bs!1253975 () Bool)

(assert (= bs!1253975 (and b!5428045 b!5427990)))

(assert (=> bs!1253975 (not (= lambda!284723 lambda!284713))))

(declare-fun bs!1253978 () Bool)

(assert (= bs!1253978 (and b!5428045 b!5426789)))

(assert (=> bs!1253978 (not (= lambda!284723 lambda!284632))))

(assert (=> bs!1253966 (not (= lambda!284723 lambda!284681))))

(declare-fun bs!1253982 () Bool)

(assert (= bs!1253982 (and b!5428045 d!1730608)))

(assert (=> bs!1253982 (not (= lambda!284723 lambda!284655))))

(declare-fun bs!1253984 () Bool)

(assert (= bs!1253984 (and b!5428045 d!1730614)))

(assert (=> bs!1253984 (not (= lambda!284723 lambda!284660))))

(declare-fun bs!1253985 () Bool)

(assert (= bs!1253985 (and b!5428045 b!5426649)))

(assert (=> bs!1253985 (= (and (= (regOne!30946 (regTwo!30947 lt!2213346)) (regOne!30946 r!7292)) (= (regTwo!30946 (regTwo!30947 lt!2213346)) (regTwo!30946 r!7292))) (= lambda!284723 lambda!284621))))

(assert (=> bs!1253984 (= (and (= (regOne!30946 (regTwo!30947 lt!2213346)) (regOne!30946 r!7292)) (= (regTwo!30946 (regTwo!30947 lt!2213346)) (regTwo!30946 r!7292))) (= lambda!284723 lambda!284661))))

(declare-fun bs!1253986 () Bool)

(assert (= bs!1253986 (and b!5428045 b!5427802)))

(assert (=> bs!1253986 (= (and (= (regOne!30946 (regTwo!30947 lt!2213346)) (regOne!30946 (regOne!30947 r!7292))) (= (regTwo!30946 (regTwo!30947 lt!2213346)) (regTwo!30946 (regOne!30947 r!7292)))) (= lambda!284723 lambda!284701))))

(declare-fun bs!1253987 () Bool)

(assert (= bs!1253987 (and b!5428045 b!5427986)))

(assert (=> bs!1253987 (= (and (= (regOne!30946 (regTwo!30947 lt!2213346)) (regOne!30946 (regTwo!30947 r!7292))) (= (regTwo!30946 (regTwo!30947 lt!2213346)) (regTwo!30946 (regTwo!30947 r!7292)))) (= lambda!284723 lambda!284714))))

(assert (=> b!5428045 true))

(assert (=> b!5428045 true))

(declare-fun bm!388624 () Bool)

(declare-fun call!388629 () Bool)

(assert (=> bm!388624 (= call!388629 (isEmpty!33827 s!2326))))

(declare-fun b!5428041 () Bool)

(declare-fun c!946943 () Bool)

(assert (=> b!5428041 (= c!946943 ((_ is ElementMatch!15217) (regTwo!30947 lt!2213346)))))

(declare-fun e!3363631 () Bool)

(declare-fun e!3363636 () Bool)

(assert (=> b!5428041 (= e!3363631 e!3363636)))

(declare-fun call!388630 () Bool)

(declare-fun c!946945 () Bool)

(declare-fun bm!388625 () Bool)

(assert (=> bm!388625 (= call!388630 (Exists!2398 (ite c!946945 lambda!284722 lambda!284723)))))

(declare-fun d!1731082 () Bool)

(declare-fun c!946946 () Bool)

(assert (=> d!1731082 (= c!946946 ((_ is EmptyExpr!15217) (regTwo!30947 lt!2213346)))))

(declare-fun e!3363635 () Bool)

(assert (=> d!1731082 (= (matchRSpec!2320 (regTwo!30947 lt!2213346) s!2326) e!3363635)))

(declare-fun b!5428042 () Bool)

(assert (=> b!5428042 (= e!3363635 e!3363631)))

(declare-fun res!2309934 () Bool)

(assert (=> b!5428042 (= res!2309934 (not ((_ is EmptyLang!15217) (regTwo!30947 lt!2213346))))))

(assert (=> b!5428042 (=> (not res!2309934) (not e!3363631))))

(declare-fun b!5428043 () Bool)

(assert (=> b!5428043 (= e!3363635 call!388629)))

(declare-fun b!5428044 () Bool)

(declare-fun res!2309935 () Bool)

(declare-fun e!3363630 () Bool)

(assert (=> b!5428044 (=> res!2309935 e!3363630)))

(assert (=> b!5428044 (= res!2309935 call!388629)))

(declare-fun e!3363634 () Bool)

(assert (=> b!5428044 (= e!3363634 e!3363630)))

(assert (=> b!5428045 (= e!3363634 call!388630)))

(declare-fun b!5428046 () Bool)

(declare-fun e!3363633 () Bool)

(declare-fun e!3363632 () Bool)

(assert (=> b!5428046 (= e!3363633 e!3363632)))

(declare-fun res!2309933 () Bool)

(assert (=> b!5428046 (= res!2309933 (matchRSpec!2320 (regOne!30947 (regTwo!30947 lt!2213346)) s!2326))))

(assert (=> b!5428046 (=> res!2309933 e!3363632)))

(declare-fun b!5428047 () Bool)

(assert (=> b!5428047 (= e!3363636 (= s!2326 (Cons!61826 (c!946431 (regTwo!30947 lt!2213346)) Nil!61826)))))

(declare-fun b!5428048 () Bool)

(declare-fun c!946944 () Bool)

(assert (=> b!5428048 (= c!946944 ((_ is Union!15217) (regTwo!30947 lt!2213346)))))

(assert (=> b!5428048 (= e!3363636 e!3363633)))

(assert (=> b!5428049 (= e!3363630 call!388630)))

(declare-fun b!5428050 () Bool)

(assert (=> b!5428050 (= e!3363632 (matchRSpec!2320 (regTwo!30947 (regTwo!30947 lt!2213346)) s!2326))))

(declare-fun b!5428051 () Bool)

(assert (=> b!5428051 (= e!3363633 e!3363634)))

(assert (=> b!5428051 (= c!946945 ((_ is Star!15217) (regTwo!30947 lt!2213346)))))

(assert (= (and d!1731082 c!946946) b!5428043))

(assert (= (and d!1731082 (not c!946946)) b!5428042))

(assert (= (and b!5428042 res!2309934) b!5428041))

(assert (= (and b!5428041 c!946943) b!5428047))

(assert (= (and b!5428041 (not c!946943)) b!5428048))

(assert (= (and b!5428048 c!946944) b!5428046))

(assert (= (and b!5428048 (not c!946944)) b!5428051))

(assert (= (and b!5428046 (not res!2309933)) b!5428050))

(assert (= (and b!5428051 c!946945) b!5428044))

(assert (= (and b!5428051 (not c!946945)) b!5428045))

(assert (= (and b!5428044 (not res!2309935)) b!5428049))

(assert (= (or b!5428049 b!5428045) bm!388625))

(assert (= (or b!5428043 b!5428044) bm!388624))

(assert (=> bm!388624 m!6450416))

(declare-fun m!6451882 () Bool)

(assert (=> bm!388625 m!6451882))

(declare-fun m!6451884 () Bool)

(assert (=> b!5428046 m!6451884))

(declare-fun m!6451886 () Bool)

(assert (=> b!5428050 m!6451886))

(assert (=> b!5426790 d!1731082))

(declare-fun b!5428089 () Bool)

(declare-fun e!3363662 () Bool)

(declare-fun call!388641 () Bool)

(assert (=> b!5428089 (= e!3363662 call!388641)))

(declare-fun b!5428090 () Bool)

(declare-fun e!3363664 () Bool)

(assert (=> b!5428090 (= e!3363664 e!3363662)))

(declare-fun res!2309948 () Bool)

(declare-fun call!388642 () Bool)

(assert (=> b!5428090 (= res!2309948 call!388642)))

(assert (=> b!5428090 (=> res!2309948 e!3363662)))

(declare-fun b!5428091 () Bool)

(declare-fun e!3363665 () Bool)

(assert (=> b!5428091 (= e!3363665 call!388641)))

(declare-fun b!5428092 () Bool)

(declare-fun e!3363661 () Bool)

(declare-fun e!3363660 () Bool)

(assert (=> b!5428092 (= e!3363661 e!3363660)))

(declare-fun res!2309949 () Bool)

(assert (=> b!5428092 (=> res!2309949 e!3363660)))

(assert (=> b!5428092 (= res!2309949 ((_ is Star!15217) (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun b!5428093 () Bool)

(assert (=> b!5428093 (= e!3363664 e!3363665)))

(declare-fun res!2309947 () Bool)

(assert (=> b!5428093 (= res!2309947 call!388642)))

(assert (=> b!5428093 (=> (not res!2309947) (not e!3363665))))

(declare-fun bm!388636 () Bool)

(declare-fun c!946961 () Bool)

(assert (=> bm!388636 (= call!388642 (nullable!5386 (ite c!946961 (regOne!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regOne!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))))))

(declare-fun b!5428094 () Bool)

(assert (=> b!5428094 (= e!3363660 e!3363664)))

(assert (=> b!5428094 (= c!946961 ((_ is Union!15217) (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun d!1731096 () Bool)

(declare-fun res!2309945 () Bool)

(declare-fun e!3363663 () Bool)

(assert (=> d!1731096 (=> res!2309945 e!3363663)))

(assert (=> d!1731096 (= res!2309945 ((_ is EmptyExpr!15217) (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(assert (=> d!1731096 (= (nullableFct!1612 (h!68275 (exprs!5101 (h!68276 zl!343)))) e!3363663)))

(declare-fun bm!388637 () Bool)

(assert (=> bm!388637 (= call!388641 (nullable!5386 (ite c!946961 (regTwo!30947 (h!68275 (exprs!5101 (h!68276 zl!343)))) (regTwo!30946 (h!68275 (exprs!5101 (h!68276 zl!343)))))))))

(declare-fun b!5428095 () Bool)

(assert (=> b!5428095 (= e!3363663 e!3363661)))

(declare-fun res!2309946 () Bool)

(assert (=> b!5428095 (=> (not res!2309946) (not e!3363661))))

(assert (=> b!5428095 (= res!2309946 (and (not ((_ is EmptyLang!15217) (h!68275 (exprs!5101 (h!68276 zl!343))))) (not ((_ is ElementMatch!15217) (h!68275 (exprs!5101 (h!68276 zl!343)))))))))

(assert (= (and d!1731096 (not res!2309945)) b!5428095))

(assert (= (and b!5428095 res!2309946) b!5428092))

(assert (= (and b!5428092 (not res!2309949)) b!5428094))

(assert (= (and b!5428094 c!946961) b!5428090))

(assert (= (and b!5428094 (not c!946961)) b!5428093))

(assert (= (and b!5428090 (not res!2309948)) b!5428089))

(assert (= (and b!5428093 res!2309947) b!5428091))

(assert (= (or b!5428089 b!5428091) bm!388637))

(assert (= (or b!5428090 b!5428093) bm!388636))

(declare-fun m!6451888 () Bool)

(assert (=> bm!388636 m!6451888))

(declare-fun m!6451890 () Bool)

(assert (=> bm!388637 m!6451890))

(assert (=> d!1730398 d!1731096))

(declare-fun d!1731098 () Bool)

(assert (=> d!1731098 true))

(declare-fun setRes!35399 () Bool)

(assert (=> d!1731098 setRes!35399))

(declare-fun condSetEmpty!35399 () Bool)

(declare-fun res!2309950 () (InoxSet Context!9202))

(assert (=> d!1731098 (= condSetEmpty!35399 (= res!2309950 ((as const (Array Context!9202 Bool)) false)))))

(assert (=> d!1731098 (= (choose!41152 lt!2213338 lambda!284592) res!2309950)))

(declare-fun setIsEmpty!35399 () Bool)

(assert (=> setIsEmpty!35399 setRes!35399))

(declare-fun setNonEmpty!35399 () Bool)

(declare-fun setElem!35399 () Context!9202)

(declare-fun tp!1497649 () Bool)

(declare-fun e!3363666 () Bool)

(assert (=> setNonEmpty!35399 (= setRes!35399 (and tp!1497649 (inv!81289 setElem!35399) e!3363666))))

(declare-fun setRest!35399 () (InoxSet Context!9202))

(assert (=> setNonEmpty!35399 (= res!2309950 ((_ map or) (store ((as const (Array Context!9202 Bool)) false) setElem!35399 true) setRest!35399))))

(declare-fun b!5428096 () Bool)

(declare-fun tp!1497648 () Bool)

(assert (=> b!5428096 (= e!3363666 tp!1497648)))

(assert (= (and d!1731098 condSetEmpty!35399) setIsEmpty!35399))

(assert (= (and d!1731098 (not condSetEmpty!35399)) setNonEmpty!35399))

(assert (= setNonEmpty!35399 b!5428096))

(declare-fun m!6451898 () Bool)

(assert (=> setNonEmpty!35399 m!6451898))

(assert (=> d!1730550 d!1731098))

(declare-fun d!1731102 () Bool)

(assert (=> d!1731102 (= (isEmptyExpr!994 lt!2213425) ((_ is EmptyExpr!15217) lt!2213425))))

(assert (=> b!5426984 d!1731102))

(assert (=> d!1730448 d!1730844))

(declare-fun b!5428099 () Bool)

(declare-fun e!3363668 () (InoxSet Context!9202))

(declare-fun call!388643 () (InoxSet Context!9202))

(assert (=> b!5428099 (= e!3363668 call!388643)))

(declare-fun b!5428100 () Bool)

(declare-fun e!3363669 () (InoxSet Context!9202))

(assert (=> b!5428100 (= e!3363669 e!3363668)))

(declare-fun c!946964 () Bool)

(assert (=> b!5428100 (= c!946964 ((_ is Cons!61827) (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213334))))))))

(declare-fun d!1731106 () Bool)

(declare-fun c!946963 () Bool)

(declare-fun e!3363670 () Bool)

(assert (=> d!1731106 (= c!946963 e!3363670)))

(declare-fun res!2309951 () Bool)

(assert (=> d!1731106 (=> (not res!2309951) (not e!3363670))))

(assert (=> d!1731106 (= res!2309951 ((_ is Cons!61827) (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213334))))))))

(assert (=> d!1731106 (= (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 lt!2213334))) (h!68274 s!2326)) e!3363669)))

(declare-fun b!5428101 () Bool)

(assert (=> b!5428101 (= e!3363669 ((_ map or) call!388643 (derivationStepZipperUp!589 (Context!9203 (t!375174 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213334)))))) (h!68274 s!2326))))))

(declare-fun b!5428102 () Bool)

(assert (=> b!5428102 (= e!3363670 (nullable!5386 (h!68275 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213334)))))))))

(declare-fun b!5428103 () Bool)

(assert (=> b!5428103 (= e!3363668 ((as const (Array Context!9202 Bool)) false))))

(declare-fun bm!388638 () Bool)

(assert (=> bm!388638 (= call!388643 (derivationStepZipperDown!665 (h!68275 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213334))))) (Context!9203 (t!375174 (exprs!5101 (Context!9203 (t!375174 (exprs!5101 lt!2213334)))))) (h!68274 s!2326)))))

(assert (= (and d!1731106 res!2309951) b!5428102))

(assert (= (and d!1731106 c!946963) b!5428101))

(assert (= (and d!1731106 (not c!946963)) b!5428100))

(assert (= (and b!5428100 c!946964) b!5428099))

(assert (= (and b!5428100 (not c!946964)) b!5428103))

(assert (= (or b!5428101 b!5428099) bm!388638))

(declare-fun m!6451908 () Bool)

(assert (=> b!5428101 m!6451908))

(declare-fun m!6451910 () Bool)

(assert (=> b!5428102 m!6451910))

(declare-fun m!6451912 () Bool)

(assert (=> bm!388638 m!6451912))

(assert (=> b!5426826 d!1731106))

(declare-fun bs!1254008 () Bool)

(declare-fun d!1731110 () Bool)

(assert (= bs!1254008 (and d!1731110 d!1731038)))

(declare-fun lambda!284727 () Int)

(assert (=> bs!1254008 (= lambda!284727 lambda!284712)))

(declare-fun bs!1254009 () Bool)

(assert (= bs!1254009 (and d!1731110 d!1730812)))

(assert (=> bs!1254009 (= lambda!284727 lambda!284690)))

(declare-fun bs!1254010 () Bool)

(assert (= bs!1254010 (and d!1731110 d!1730692)))

(assert (=> bs!1254010 (= lambda!284727 lambda!284675)))

(declare-fun bs!1254011 () Bool)

(assert (= bs!1254011 (and d!1731110 d!1730922)))

(assert (=> bs!1254011 (= lambda!284727 lambda!284698)))

(declare-fun bs!1254012 () Bool)

(assert (= bs!1254012 (and d!1731110 d!1731008)))

(assert (=> bs!1254012 (= lambda!284727 lambda!284704)))

(assert (=> d!1731110 (= (nullableZipper!1462 lt!2213337) (exists!2023 lt!2213337 lambda!284727))))

(declare-fun bs!1254013 () Bool)

(assert (= bs!1254013 d!1731110))

(declare-fun m!6451916 () Bool)

(assert (=> bs!1254013 m!6451916))

(assert (=> b!5426756 d!1731110))

(declare-fun d!1731114 () Bool)

(assert (=> d!1731114 (= (nullable!5386 (h!68275 (exprs!5101 lt!2213350))) (nullableFct!1612 (h!68275 (exprs!5101 lt!2213350))))))

(declare-fun bs!1254014 () Bool)

(assert (= bs!1254014 d!1731114))

(declare-fun m!6451918 () Bool)

(assert (=> bs!1254014 m!6451918))

(assert (=> b!5426763 d!1731114))

(declare-fun d!1731116 () Bool)

(assert (=> d!1731116 (= (isEmpty!33825 (unfocusZipperList!659 zl!343)) ((_ is Nil!61827) (unfocusZipperList!659 zl!343)))))

(assert (=> b!5427013 d!1731116))

(declare-fun b!5428123 () Bool)

(declare-fun e!3363684 () Bool)

(declare-fun call!388647 () Bool)

(assert (=> b!5428123 (= e!3363684 call!388647)))

(declare-fun b!5428124 () Bool)

(declare-fun e!3363690 () Bool)

(declare-fun call!388649 () Bool)

(assert (=> b!5428124 (= e!3363690 call!388649)))

(declare-fun d!1731118 () Bool)

(declare-fun res!2309962 () Bool)

(declare-fun e!3363689 () Bool)

(assert (=> d!1731118 (=> res!2309962 e!3363689)))

(assert (=> d!1731118 (= res!2309962 ((_ is ElementMatch!15217) (ite c!946612 (reg!15546 r!7292) (ite c!946613 (regOne!30947 r!7292) (regOne!30946 r!7292)))))))

(assert (=> d!1731118 (= (validRegex!6953 (ite c!946612 (reg!15546 r!7292) (ite c!946613 (regOne!30947 r!7292) (regOne!30946 r!7292)))) e!3363689)))

(declare-fun b!5428125 () Bool)

(declare-fun e!3363686 () Bool)

(declare-fun e!3363687 () Bool)

(assert (=> b!5428125 (= e!3363686 e!3363687)))

(declare-fun c!946972 () Bool)

(assert (=> b!5428125 (= c!946972 ((_ is Union!15217) (ite c!946612 (reg!15546 r!7292) (ite c!946613 (regOne!30947 r!7292) (regOne!30946 r!7292)))))))

(declare-fun b!5428126 () Bool)

(declare-fun e!3363685 () Bool)

(assert (=> b!5428126 (= e!3363685 call!388649)))

(declare-fun b!5428127 () Bool)

(assert (=> b!5428127 (= e!3363689 e!3363686)))

(declare-fun c!946971 () Bool)

(assert (=> b!5428127 (= c!946971 ((_ is Star!15217) (ite c!946612 (reg!15546 r!7292) (ite c!946613 (regOne!30947 r!7292) (regOne!30946 r!7292)))))))

(declare-fun bm!388642 () Bool)

(assert (=> bm!388642 (= call!388647 (validRegex!6953 (ite c!946971 (reg!15546 (ite c!946612 (reg!15546 r!7292) (ite c!946613 (regOne!30947 r!7292) (regOne!30946 r!7292)))) (ite c!946972 (regOne!30947 (ite c!946612 (reg!15546 r!7292) (ite c!946613 (regOne!30947 r!7292) (regOne!30946 r!7292)))) (regOne!30946 (ite c!946612 (reg!15546 r!7292) (ite c!946613 (regOne!30947 r!7292) (regOne!30946 r!7292))))))))))

(declare-fun b!5428128 () Bool)

(declare-fun res!2309960 () Bool)

(assert (=> b!5428128 (=> (not res!2309960) (not e!3363685))))

(declare-fun call!388648 () Bool)

(assert (=> b!5428128 (= res!2309960 call!388648)))

(assert (=> b!5428128 (= e!3363687 e!3363685)))

(declare-fun b!5428129 () Bool)

(declare-fun e!3363688 () Bool)

(assert (=> b!5428129 (= e!3363688 e!3363690)))

(declare-fun res!2309963 () Bool)

(assert (=> b!5428129 (=> (not res!2309963) (not e!3363690))))

(assert (=> b!5428129 (= res!2309963 call!388648)))

(declare-fun bm!388643 () Bool)

(assert (=> bm!388643 (= call!388648 call!388647)))

(declare-fun b!5428130 () Bool)

(declare-fun res!2309961 () Bool)

(assert (=> b!5428130 (=> res!2309961 e!3363688)))

(assert (=> b!5428130 (= res!2309961 (not ((_ is Concat!24062) (ite c!946612 (reg!15546 r!7292) (ite c!946613 (regOne!30947 r!7292) (regOne!30946 r!7292))))))))

(assert (=> b!5428130 (= e!3363687 e!3363688)))

(declare-fun bm!388644 () Bool)

(assert (=> bm!388644 (= call!388649 (validRegex!6953 (ite c!946972 (regTwo!30947 (ite c!946612 (reg!15546 r!7292) (ite c!946613 (regOne!30947 r!7292) (regOne!30946 r!7292)))) (regTwo!30946 (ite c!946612 (reg!15546 r!7292) (ite c!946613 (regOne!30947 r!7292) (regOne!30946 r!7292)))))))))

(declare-fun b!5428131 () Bool)

(assert (=> b!5428131 (= e!3363686 e!3363684)))

(declare-fun res!2309959 () Bool)

(assert (=> b!5428131 (= res!2309959 (not (nullable!5386 (reg!15546 (ite c!946612 (reg!15546 r!7292) (ite c!946613 (regOne!30947 r!7292) (regOne!30946 r!7292)))))))))

(assert (=> b!5428131 (=> (not res!2309959) (not e!3363684))))

(assert (= (and d!1731118 (not res!2309962)) b!5428127))

(assert (= (and b!5428127 c!946971) b!5428131))

(assert (= (and b!5428127 (not c!946971)) b!5428125))

(assert (= (and b!5428131 res!2309959) b!5428123))

(assert (= (and b!5428125 c!946972) b!5428128))

(assert (= (and b!5428125 (not c!946972)) b!5428130))

(assert (= (and b!5428128 res!2309960) b!5428126))

(assert (= (and b!5428130 (not res!2309961)) b!5428129))

(assert (= (and b!5428129 res!2309963) b!5428124))

(assert (= (or b!5428126 b!5428124) bm!388644))

(assert (= (or b!5428128 b!5428129) bm!388643))

(assert (= (or b!5428123 bm!388643) bm!388642))

(declare-fun m!6451926 () Bool)

(assert (=> bm!388642 m!6451926))

(declare-fun m!6451928 () Bool)

(assert (=> bm!388644 m!6451928))

(declare-fun m!6451930 () Bool)

(assert (=> b!5428131 m!6451930))

(assert (=> bm!388395 d!1731118))

(assert (=> b!5426768 d!1730668))

(assert (=> b!5426768 d!1730670))

(declare-fun d!1731122 () Bool)

(assert (=> d!1731122 (= (isEmpty!33825 (t!375174 (unfocusZipperList!659 zl!343))) ((_ is Nil!61827) (t!375174 (unfocusZipperList!659 zl!343))))))

(assert (=> b!5427017 d!1731122))

(declare-fun d!1731124 () Bool)

(assert (=> d!1731124 true))

(declare-fun setRes!35400 () Bool)

(assert (=> d!1731124 setRes!35400))

(declare-fun condSetEmpty!35400 () Bool)

(declare-fun res!2309964 () (InoxSet Context!9202))

(assert (=> d!1731124 (= condSetEmpty!35400 (= res!2309964 ((as const (Array Context!9202 Bool)) false)))))

(assert (=> d!1731124 (= (choose!41152 z!1189 lambda!284592) res!2309964)))

(declare-fun setIsEmpty!35400 () Bool)

(assert (=> setIsEmpty!35400 setRes!35400))

(declare-fun e!3363691 () Bool)

(declare-fun setElem!35400 () Context!9202)

(declare-fun setNonEmpty!35400 () Bool)

(declare-fun tp!1497651 () Bool)

(assert (=> setNonEmpty!35400 (= setRes!35400 (and tp!1497651 (inv!81289 setElem!35400) e!3363691))))

(declare-fun setRest!35400 () (InoxSet Context!9202))

(assert (=> setNonEmpty!35400 (= res!2309964 ((_ map or) (store ((as const (Array Context!9202 Bool)) false) setElem!35400 true) setRest!35400))))

(declare-fun b!5428132 () Bool)

(declare-fun tp!1497650 () Bool)

(assert (=> b!5428132 (= e!3363691 tp!1497650)))

(assert (= (and d!1731124 condSetEmpty!35400) setIsEmpty!35400))

(assert (= (and d!1731124 (not condSetEmpty!35400)) setNonEmpty!35400))

(assert (= setNonEmpty!35400 b!5428132))

(declare-fun m!6451932 () Bool)

(assert (=> setNonEmpty!35400 m!6451932))

(assert (=> d!1730430 d!1731124))

(declare-fun bs!1254029 () Bool)

(declare-fun b!5428141 () Bool)

(assert (= bs!1254029 (and b!5428141 d!1731014)))

(declare-fun lambda!284729 () Int)

(assert (=> bs!1254029 (not (= lambda!284729 lambda!284710))))

(declare-fun bs!1254030 () Bool)

(assert (= bs!1254030 (and b!5428141 b!5426785)))

(assert (=> bs!1254030 (not (= lambda!284729 lambda!284633))))

(declare-fun bs!1254033 () Bool)

(assert (= bs!1254033 (and b!5428141 b!5426653)))

(assert (=> bs!1254033 (= (and (= (reg!15546 (regOne!30947 lt!2213346)) (reg!15546 r!7292)) (= (regOne!30947 lt!2213346) r!7292)) (= lambda!284729 lambda!284618))))

(declare-fun bs!1254036 () Bool)

(assert (= bs!1254036 (and b!5428141 b!5428049)))

(assert (=> bs!1254036 (= (and (= (reg!15546 (regOne!30947 lt!2213346)) (reg!15546 (regTwo!30947 lt!2213346))) (= (regOne!30947 lt!2213346) (regTwo!30947 lt!2213346))) (= lambda!284729 lambda!284722))))

(declare-fun bs!1254039 () Bool)

(assert (= bs!1254039 (and b!5428141 d!1730736)))

(assert (=> bs!1254039 (not (= lambda!284729 lambda!284682))))

(declare-fun bs!1254042 () Bool)

(assert (= bs!1254042 (and b!5428141 b!5426269)))

(assert (=> bs!1254042 (not (= lambda!284729 lambda!284591))))

(assert (=> bs!1254042 (not (= lambda!284729 lambda!284590))))

(declare-fun bs!1254046 () Bool)

(assert (= bs!1254046 (and b!5428141 b!5427806)))

(assert (=> bs!1254046 (= (and (= (reg!15546 (regOne!30947 lt!2213346)) (reg!15546 (regOne!30947 r!7292))) (= (regOne!30947 lt!2213346) (regOne!30947 r!7292))) (= lambda!284729 lambda!284700))))

(declare-fun bs!1254049 () Bool)

(assert (= bs!1254049 (and b!5428141 b!5427990)))

(assert (=> bs!1254049 (= (and (= (reg!15546 (regOne!30947 lt!2213346)) (reg!15546 (regTwo!30947 r!7292))) (= (regOne!30947 lt!2213346) (regTwo!30947 r!7292))) (= lambda!284729 lambda!284713))))

(declare-fun bs!1254052 () Bool)

(assert (= bs!1254052 (and b!5428141 b!5426789)))

(assert (=> bs!1254052 (= (and (= (reg!15546 (regOne!30947 lt!2213346)) (reg!15546 lt!2213346)) (= (regOne!30947 lt!2213346) lt!2213346)) (= lambda!284729 lambda!284632))))

(declare-fun bs!1254053 () Bool)

(assert (= bs!1254053 (and b!5428141 b!5428045)))

(assert (=> bs!1254053 (not (= lambda!284729 lambda!284723))))

(assert (=> bs!1254039 (not (= lambda!284729 lambda!284681))))

(declare-fun bs!1254054 () Bool)

(assert (= bs!1254054 (and b!5428141 d!1730608)))

(assert (=> bs!1254054 (not (= lambda!284729 lambda!284655))))

(declare-fun bs!1254055 () Bool)

(assert (= bs!1254055 (and b!5428141 d!1730614)))

(assert (=> bs!1254055 (not (= lambda!284729 lambda!284660))))

(declare-fun bs!1254056 () Bool)

(assert (= bs!1254056 (and b!5428141 b!5426649)))

(assert (=> bs!1254056 (not (= lambda!284729 lambda!284621))))

(assert (=> bs!1254055 (not (= lambda!284729 lambda!284661))))

(declare-fun bs!1254057 () Bool)

(assert (= bs!1254057 (and b!5428141 b!5427802)))

(assert (=> bs!1254057 (not (= lambda!284729 lambda!284701))))

(declare-fun bs!1254058 () Bool)

(assert (= bs!1254058 (and b!5428141 b!5427986)))

(assert (=> bs!1254058 (not (= lambda!284729 lambda!284714))))

(assert (=> b!5428141 true))

(assert (=> b!5428141 true))

(declare-fun bs!1254061 () Bool)

(declare-fun b!5428137 () Bool)

(assert (= bs!1254061 (and b!5428137 d!1731014)))

(declare-fun lambda!284731 () Int)

(assert (=> bs!1254061 (not (= lambda!284731 lambda!284710))))

(declare-fun bs!1254062 () Bool)

(assert (= bs!1254062 (and b!5428137 b!5426785)))

(assert (=> bs!1254062 (= (and (= (regOne!30946 (regOne!30947 lt!2213346)) (regOne!30946 lt!2213346)) (= (regTwo!30946 (regOne!30947 lt!2213346)) (regTwo!30946 lt!2213346))) (= lambda!284731 lambda!284633))))

(declare-fun bs!1254063 () Bool)

(assert (= bs!1254063 (and b!5428137 b!5426653)))

(assert (=> bs!1254063 (not (= lambda!284731 lambda!284618))))

(declare-fun bs!1254064 () Bool)

(assert (= bs!1254064 (and b!5428137 b!5428049)))

(assert (=> bs!1254064 (not (= lambda!284731 lambda!284722))))

(declare-fun bs!1254065 () Bool)

(assert (= bs!1254065 (and b!5428137 d!1730736)))

(assert (=> bs!1254065 (= (and (= (regOne!30946 (regOne!30947 lt!2213346)) (regOne!30946 r!7292)) (= (regTwo!30946 (regOne!30947 lt!2213346)) (regTwo!30946 r!7292))) (= lambda!284731 lambda!284682))))

(declare-fun bs!1254066 () Bool)

(assert (= bs!1254066 (and b!5428137 b!5426269)))

(assert (=> bs!1254066 (= (and (= (regOne!30946 (regOne!30947 lt!2213346)) (regOne!30946 r!7292)) (= (regTwo!30946 (regOne!30947 lt!2213346)) (regTwo!30946 r!7292))) (= lambda!284731 lambda!284591))))

(assert (=> bs!1254066 (not (= lambda!284731 lambda!284590))))

(declare-fun bs!1254067 () Bool)

(assert (= bs!1254067 (and b!5428137 b!5427806)))

(assert (=> bs!1254067 (not (= lambda!284731 lambda!284700))))

(declare-fun bs!1254068 () Bool)

(assert (= bs!1254068 (and b!5428137 b!5427990)))

(assert (=> bs!1254068 (not (= lambda!284731 lambda!284713))))

(declare-fun bs!1254069 () Bool)

(assert (= bs!1254069 (and b!5428137 b!5428045)))

(assert (=> bs!1254069 (= (and (= (regOne!30946 (regOne!30947 lt!2213346)) (regOne!30946 (regTwo!30947 lt!2213346))) (= (regTwo!30946 (regOne!30947 lt!2213346)) (regTwo!30946 (regTwo!30947 lt!2213346)))) (= lambda!284731 lambda!284723))))

(assert (=> bs!1254065 (not (= lambda!284731 lambda!284681))))

(declare-fun bs!1254070 () Bool)

(assert (= bs!1254070 (and b!5428137 d!1730608)))

(assert (=> bs!1254070 (not (= lambda!284731 lambda!284655))))

(declare-fun bs!1254071 () Bool)

(assert (= bs!1254071 (and b!5428137 d!1730614)))

(assert (=> bs!1254071 (not (= lambda!284731 lambda!284660))))

(declare-fun bs!1254072 () Bool)

(assert (= bs!1254072 (and b!5428137 b!5426649)))

(assert (=> bs!1254072 (= (and (= (regOne!30946 (regOne!30947 lt!2213346)) (regOne!30946 r!7292)) (= (regTwo!30946 (regOne!30947 lt!2213346)) (regTwo!30946 r!7292))) (= lambda!284731 lambda!284621))))

(declare-fun bs!1254074 () Bool)

(assert (= bs!1254074 (and b!5428137 b!5426789)))

(assert (=> bs!1254074 (not (= lambda!284731 lambda!284632))))

(declare-fun bs!1254075 () Bool)

(assert (= bs!1254075 (and b!5428137 b!5428141)))

(assert (=> bs!1254075 (not (= lambda!284731 lambda!284729))))

(assert (=> bs!1254071 (= (and (= (regOne!30946 (regOne!30947 lt!2213346)) (regOne!30946 r!7292)) (= (regTwo!30946 (regOne!30947 lt!2213346)) (regTwo!30946 r!7292))) (= lambda!284731 lambda!284661))))

(declare-fun bs!1254077 () Bool)

(assert (= bs!1254077 (and b!5428137 b!5427802)))

(assert (=> bs!1254077 (= (and (= (regOne!30946 (regOne!30947 lt!2213346)) (regOne!30946 (regOne!30947 r!7292))) (= (regTwo!30946 (regOne!30947 lt!2213346)) (regTwo!30946 (regOne!30947 r!7292)))) (= lambda!284731 lambda!284701))))

(declare-fun bs!1254079 () Bool)

(assert (= bs!1254079 (and b!5428137 b!5427986)))

(assert (=> bs!1254079 (= (and (= (regOne!30946 (regOne!30947 lt!2213346)) (regOne!30946 (regTwo!30947 r!7292))) (= (regTwo!30946 (regOne!30947 lt!2213346)) (regTwo!30946 (regTwo!30947 r!7292)))) (= lambda!284731 lambda!284714))))

(assert (=> b!5428137 true))

(assert (=> b!5428137 true))

(declare-fun bm!388645 () Bool)

(declare-fun call!388650 () Bool)

(assert (=> bm!388645 (= call!388650 (isEmpty!33827 s!2326))))

(declare-fun b!5428133 () Bool)

(declare-fun c!946973 () Bool)

(assert (=> b!5428133 (= c!946973 ((_ is ElementMatch!15217) (regOne!30947 lt!2213346)))))

(declare-fun e!3363693 () Bool)

(declare-fun e!3363698 () Bool)

(assert (=> b!5428133 (= e!3363693 e!3363698)))

(declare-fun c!946975 () Bool)

(declare-fun bm!388646 () Bool)

(declare-fun call!388651 () Bool)

(assert (=> bm!388646 (= call!388651 (Exists!2398 (ite c!946975 lambda!284729 lambda!284731)))))

(declare-fun d!1731126 () Bool)

(declare-fun c!946976 () Bool)

(assert (=> d!1731126 (= c!946976 ((_ is EmptyExpr!15217) (regOne!30947 lt!2213346)))))

(declare-fun e!3363697 () Bool)

(assert (=> d!1731126 (= (matchRSpec!2320 (regOne!30947 lt!2213346) s!2326) e!3363697)))

(declare-fun b!5428134 () Bool)

(assert (=> b!5428134 (= e!3363697 e!3363693)))

(declare-fun res!2309966 () Bool)

(assert (=> b!5428134 (= res!2309966 (not ((_ is EmptyLang!15217) (regOne!30947 lt!2213346))))))

(assert (=> b!5428134 (=> (not res!2309966) (not e!3363693))))

(declare-fun b!5428135 () Bool)

(assert (=> b!5428135 (= e!3363697 call!388650)))

(declare-fun b!5428136 () Bool)

(declare-fun res!2309967 () Bool)

(declare-fun e!3363692 () Bool)

(assert (=> b!5428136 (=> res!2309967 e!3363692)))

(assert (=> b!5428136 (= res!2309967 call!388650)))

(declare-fun e!3363696 () Bool)

(assert (=> b!5428136 (= e!3363696 e!3363692)))

(assert (=> b!5428137 (= e!3363696 call!388651)))

(declare-fun b!5428138 () Bool)

(declare-fun e!3363695 () Bool)

(declare-fun e!3363694 () Bool)

(assert (=> b!5428138 (= e!3363695 e!3363694)))

(declare-fun res!2309965 () Bool)

(assert (=> b!5428138 (= res!2309965 (matchRSpec!2320 (regOne!30947 (regOne!30947 lt!2213346)) s!2326))))

(assert (=> b!5428138 (=> res!2309965 e!3363694)))

(declare-fun b!5428139 () Bool)

(assert (=> b!5428139 (= e!3363698 (= s!2326 (Cons!61826 (c!946431 (regOne!30947 lt!2213346)) Nil!61826)))))

(declare-fun b!5428140 () Bool)

(declare-fun c!946974 () Bool)

(assert (=> b!5428140 (= c!946974 ((_ is Union!15217) (regOne!30947 lt!2213346)))))

(assert (=> b!5428140 (= e!3363698 e!3363695)))

(assert (=> b!5428141 (= e!3363692 call!388651)))

(declare-fun b!5428142 () Bool)

(assert (=> b!5428142 (= e!3363694 (matchRSpec!2320 (regTwo!30947 (regOne!30947 lt!2213346)) s!2326))))

(declare-fun b!5428143 () Bool)

(assert (=> b!5428143 (= e!3363695 e!3363696)))

(assert (=> b!5428143 (= c!946975 ((_ is Star!15217) (regOne!30947 lt!2213346)))))

(assert (= (and d!1731126 c!946976) b!5428135))

(assert (= (and d!1731126 (not c!946976)) b!5428134))

(assert (= (and b!5428134 res!2309966) b!5428133))

(assert (= (and b!5428133 c!946973) b!5428139))

(assert (= (and b!5428133 (not c!946973)) b!5428140))

(assert (= (and b!5428140 c!946974) b!5428138))

(assert (= (and b!5428140 (not c!946974)) b!5428143))

(assert (= (and b!5428138 (not res!2309965)) b!5428142))

(assert (= (and b!5428143 c!946975) b!5428136))

(assert (= (and b!5428143 (not c!946975)) b!5428137))

(assert (= (and b!5428136 (not res!2309967)) b!5428141))

(assert (= (or b!5428141 b!5428137) bm!388646))

(assert (= (or b!5428135 b!5428136) bm!388645))

(assert (=> bm!388645 m!6450416))

(declare-fun m!6451974 () Bool)

(assert (=> bm!388646 m!6451974))

(declare-fun m!6451976 () Bool)

(assert (=> b!5428138 m!6451976))

(declare-fun m!6451978 () Bool)

(assert (=> b!5428142 m!6451978))

(assert (=> b!5426786 d!1731126))

(declare-fun b!5428169 () Bool)

(declare-fun e!3363715 () Bool)

(declare-fun call!388655 () Bool)

(assert (=> b!5428169 (= e!3363715 call!388655)))

(declare-fun b!5428170 () Bool)

(declare-fun e!3363721 () Bool)

(declare-fun call!388657 () Bool)

(assert (=> b!5428170 (= e!3363721 call!388657)))

(declare-fun d!1731150 () Bool)

(declare-fun res!2309986 () Bool)

(declare-fun e!3363720 () Bool)

(assert (=> d!1731150 (=> res!2309986 e!3363720)))

(assert (=> d!1731150 (= res!2309986 ((_ is ElementMatch!15217) lt!2213454))))

(assert (=> d!1731150 (= (validRegex!6953 lt!2213454) e!3363720)))

(declare-fun b!5428171 () Bool)

(declare-fun e!3363717 () Bool)

(declare-fun e!3363718 () Bool)

(assert (=> b!5428171 (= e!3363717 e!3363718)))

(declare-fun c!946983 () Bool)

(assert (=> b!5428171 (= c!946983 ((_ is Union!15217) lt!2213454))))

(declare-fun b!5428172 () Bool)

(declare-fun e!3363716 () Bool)

(assert (=> b!5428172 (= e!3363716 call!388657)))

(declare-fun b!5428173 () Bool)

(assert (=> b!5428173 (= e!3363720 e!3363717)))

(declare-fun c!946982 () Bool)

(assert (=> b!5428173 (= c!946982 ((_ is Star!15217) lt!2213454))))

(declare-fun bm!388650 () Bool)

(assert (=> bm!388650 (= call!388655 (validRegex!6953 (ite c!946982 (reg!15546 lt!2213454) (ite c!946983 (regOne!30947 lt!2213454) (regOne!30946 lt!2213454)))))))

(declare-fun b!5428174 () Bool)

(declare-fun res!2309984 () Bool)

(assert (=> b!5428174 (=> (not res!2309984) (not e!3363716))))

(declare-fun call!388656 () Bool)

(assert (=> b!5428174 (= res!2309984 call!388656)))

(assert (=> b!5428174 (= e!3363718 e!3363716)))

(declare-fun b!5428175 () Bool)

(declare-fun e!3363719 () Bool)

(assert (=> b!5428175 (= e!3363719 e!3363721)))

(declare-fun res!2309987 () Bool)

(assert (=> b!5428175 (=> (not res!2309987) (not e!3363721))))

(assert (=> b!5428175 (= res!2309987 call!388656)))

(declare-fun bm!388651 () Bool)

(assert (=> bm!388651 (= call!388656 call!388655)))

(declare-fun b!5428176 () Bool)

(declare-fun res!2309985 () Bool)

(assert (=> b!5428176 (=> res!2309985 e!3363719)))

(assert (=> b!5428176 (= res!2309985 (not ((_ is Concat!24062) lt!2213454)))))

(assert (=> b!5428176 (= e!3363718 e!3363719)))

(declare-fun bm!388652 () Bool)

(assert (=> bm!388652 (= call!388657 (validRegex!6953 (ite c!946983 (regTwo!30947 lt!2213454) (regTwo!30946 lt!2213454))))))

(declare-fun b!5428177 () Bool)

(assert (=> b!5428177 (= e!3363717 e!3363715)))

(declare-fun res!2309983 () Bool)

(assert (=> b!5428177 (= res!2309983 (not (nullable!5386 (reg!15546 lt!2213454))))))

(assert (=> b!5428177 (=> (not res!2309983) (not e!3363715))))

(assert (= (and d!1731150 (not res!2309986)) b!5428173))

(assert (= (and b!5428173 c!946982) b!5428177))

(assert (= (and b!5428173 (not c!946982)) b!5428171))

(assert (= (and b!5428177 res!2309983) b!5428169))

(assert (= (and b!5428171 c!946983) b!5428174))

(assert (= (and b!5428171 (not c!946983)) b!5428176))

(assert (= (and b!5428174 res!2309984) b!5428172))

(assert (= (and b!5428176 (not res!2309985)) b!5428175))

(assert (= (and b!5428175 res!2309987) b!5428170))

(assert (= (or b!5428172 b!5428170) bm!388652))

(assert (= (or b!5428174 b!5428175) bm!388651))

(assert (= (or b!5428169 bm!388651) bm!388650))

(declare-fun m!6451982 () Bool)

(assert (=> bm!388650 m!6451982))

(declare-fun m!6451984 () Bool)

(assert (=> bm!388652 m!6451984))

(declare-fun m!6451986 () Bool)

(assert (=> b!5428177 m!6451986))

(assert (=> d!1730624 d!1731150))

(assert (=> d!1730624 d!1730600))

(assert (=> d!1730624 d!1730602))

(declare-fun b!5428178 () Bool)

(declare-fun e!3363722 () Bool)

(declare-fun call!388658 () Bool)

(assert (=> b!5428178 (= e!3363722 call!388658)))

(declare-fun b!5428179 () Bool)

(declare-fun e!3363728 () Bool)

(declare-fun call!388660 () Bool)

(assert (=> b!5428179 (= e!3363728 call!388660)))

(declare-fun d!1731154 () Bool)

(declare-fun res!2309993 () Bool)

(declare-fun e!3363727 () Bool)

(assert (=> d!1731154 (=> res!2309993 e!3363727)))

(assert (=> d!1731154 (= res!2309993 ((_ is ElementMatch!15217) (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343))))))))

(assert (=> d!1731154 (= (validRegex!6953 (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343))))) e!3363727)))

(declare-fun b!5428180 () Bool)

(declare-fun e!3363724 () Bool)

(declare-fun e!3363725 () Bool)

(assert (=> b!5428180 (= e!3363724 e!3363725)))

(declare-fun c!946985 () Bool)

(assert (=> b!5428180 (= c!946985 ((_ is Union!15217) (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun b!5428181 () Bool)

(declare-fun e!3363723 () Bool)

(assert (=> b!5428181 (= e!3363723 call!388660)))

(declare-fun b!5428182 () Bool)

(assert (=> b!5428182 (= e!3363727 e!3363724)))

(declare-fun c!946984 () Bool)

(assert (=> b!5428182 (= c!946984 ((_ is Star!15217) (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343))))))))

(declare-fun bm!388653 () Bool)

(assert (=> bm!388653 (= call!388658 (validRegex!6953 (ite c!946984 (reg!15546 (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343))))) (ite c!946985 (regOne!30947 (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343))))) (regOne!30946 (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343)))))))))))

(declare-fun b!5428183 () Bool)

(declare-fun res!2309991 () Bool)

(assert (=> b!5428183 (=> (not res!2309991) (not e!3363723))))

(declare-fun call!388659 () Bool)

(assert (=> b!5428183 (= res!2309991 call!388659)))

(assert (=> b!5428183 (= e!3363725 e!3363723)))

(declare-fun b!5428184 () Bool)

(declare-fun e!3363726 () Bool)

(assert (=> b!5428184 (= e!3363726 e!3363728)))

(declare-fun res!2309994 () Bool)

(assert (=> b!5428184 (=> (not res!2309994) (not e!3363728))))

(assert (=> b!5428184 (= res!2309994 call!388659)))

(declare-fun bm!388654 () Bool)

(assert (=> bm!388654 (= call!388659 call!388658)))

(declare-fun b!5428185 () Bool)

(declare-fun res!2309992 () Bool)

(assert (=> b!5428185 (=> res!2309992 e!3363726)))

(assert (=> b!5428185 (= res!2309992 (not ((_ is Concat!24062) (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343)))))))))

(assert (=> b!5428185 (= e!3363725 e!3363726)))

(declare-fun bm!388655 () Bool)

(assert (=> bm!388655 (= call!388660 (validRegex!6953 (ite c!946985 (regTwo!30947 (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343))))) (regTwo!30946 (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343))))))))))

(declare-fun b!5428186 () Bool)

(assert (=> b!5428186 (= e!3363724 e!3363722)))

(declare-fun res!2309990 () Bool)

(assert (=> b!5428186 (= res!2309990 (not (nullable!5386 (reg!15546 (h!68275 (t!375174 (exprs!5101 (h!68276 zl!343))))))))))

(assert (=> b!5428186 (=> (not res!2309990) (not e!3363722))))

(assert (= (and d!1731154 (not res!2309993)) b!5428182))

(assert (= (and b!5428182 c!946984) b!5428186))

(assert (= (and b!5428182 (not c!946984)) b!5428180))

(assert (= (and b!5428186 res!2309990) b!5428178))

(assert (= (and b!5428180 c!946985) b!5428183))

(assert (= (and b!5428180 (not c!946985)) b!5428185))

(assert (= (and b!5428183 res!2309991) b!5428181))

(assert (= (and b!5428185 (not res!2309992)) b!5428184))

(assert (= (and b!5428184 res!2309994) b!5428179))

(assert (= (or b!5428181 b!5428179) bm!388655))

(assert (= (or b!5428183 b!5428184) bm!388654))

(assert (= (or b!5428178 bm!388654) bm!388653))

(declare-fun m!6451990 () Bool)

(assert (=> bm!388653 m!6451990))

(declare-fun m!6451992 () Bool)

(assert (=> bm!388655 m!6451992))

(declare-fun m!6451994 () Bool)

(assert (=> b!5428186 m!6451994))

(assert (=> bs!1253543 d!1731154))

(declare-fun d!1731162 () Bool)

(declare-fun c!946991 () Bool)

(assert (=> d!1731162 (= c!946991 ((_ is Nil!61828) lt!2213450))))

(declare-fun e!3363735 () (InoxSet Context!9202))

(assert (=> d!1731162 (= (content!11127 lt!2213450) e!3363735)))

(declare-fun b!5428198 () Bool)

(assert (=> b!5428198 (= e!3363735 ((as const (Array Context!9202 Bool)) false))))

(declare-fun b!5428199 () Bool)

(assert (=> b!5428199 (= e!3363735 ((_ map or) (store ((as const (Array Context!9202 Bool)) false) (h!68276 lt!2213450) true) (content!11127 (t!375175 lt!2213450))))))

(assert (= (and d!1731162 c!946991) b!5428198))

(assert (= (and d!1731162 (not c!946991)) b!5428199))

(declare-fun m!6452008 () Bool)

(assert (=> b!5428199 m!6452008))

(declare-fun m!6452012 () Bool)

(assert (=> b!5428199 m!6452012))

(assert (=> b!5427066 d!1731162))

(declare-fun b!5428214 () Bool)

(declare-fun e!3363742 () Bool)

(declare-fun tp!1497652 () Bool)

(declare-fun tp!1497653 () Bool)

(assert (=> b!5428214 (= e!3363742 (and tp!1497652 tp!1497653))))

(declare-fun b!5428212 () Bool)

(declare-fun tp!1497654 () Bool)

(declare-fun tp!1497656 () Bool)

(assert (=> b!5428212 (= e!3363742 (and tp!1497654 tp!1497656))))

(declare-fun b!5428211 () Bool)

(assert (=> b!5428211 (= e!3363742 tp_is_empty!39687)))

(declare-fun b!5428213 () Bool)

(declare-fun tp!1497655 () Bool)

(assert (=> b!5428213 (= e!3363742 tp!1497655)))

(assert (=> b!5427088 (= tp!1497571 e!3363742)))

(assert (= (and b!5427088 ((_ is ElementMatch!15217) (regOne!30946 (regOne!30947 r!7292)))) b!5428211))

(assert (= (and b!5427088 ((_ is Concat!24062) (regOne!30946 (regOne!30947 r!7292)))) b!5428212))

(assert (= (and b!5427088 ((_ is Star!15217) (regOne!30946 (regOne!30947 r!7292)))) b!5428213))

(assert (= (and b!5427088 ((_ is Union!15217) (regOne!30946 (regOne!30947 r!7292)))) b!5428214))

(declare-fun b!5428218 () Bool)

(declare-fun e!3363743 () Bool)

(declare-fun tp!1497657 () Bool)

(declare-fun tp!1497658 () Bool)

(assert (=> b!5428218 (= e!3363743 (and tp!1497657 tp!1497658))))

(declare-fun b!5428216 () Bool)

(declare-fun tp!1497659 () Bool)

(declare-fun tp!1497661 () Bool)

(assert (=> b!5428216 (= e!3363743 (and tp!1497659 tp!1497661))))

(declare-fun b!5428215 () Bool)

(assert (=> b!5428215 (= e!3363743 tp_is_empty!39687)))

(declare-fun b!5428217 () Bool)

(declare-fun tp!1497660 () Bool)

(assert (=> b!5428217 (= e!3363743 tp!1497660)))

(assert (=> b!5427088 (= tp!1497573 e!3363743)))

(assert (= (and b!5427088 ((_ is ElementMatch!15217) (regTwo!30946 (regOne!30947 r!7292)))) b!5428215))

(assert (= (and b!5427088 ((_ is Concat!24062) (regTwo!30946 (regOne!30947 r!7292)))) b!5428216))

(assert (= (and b!5427088 ((_ is Star!15217) (regTwo!30946 (regOne!30947 r!7292)))) b!5428217))

(assert (= (and b!5427088 ((_ is Union!15217) (regTwo!30946 (regOne!30947 r!7292)))) b!5428218))

(declare-fun b!5428222 () Bool)

(declare-fun e!3363744 () Bool)

(declare-fun tp!1497662 () Bool)

(declare-fun tp!1497663 () Bool)

(assert (=> b!5428222 (= e!3363744 (and tp!1497662 tp!1497663))))

(declare-fun b!5428220 () Bool)

(declare-fun tp!1497664 () Bool)

(declare-fun tp!1497666 () Bool)

(assert (=> b!5428220 (= e!3363744 (and tp!1497664 tp!1497666))))

(declare-fun b!5428219 () Bool)

(assert (=> b!5428219 (= e!3363744 tp_is_empty!39687)))

(declare-fun b!5428221 () Bool)

(declare-fun tp!1497665 () Bool)

(assert (=> b!5428221 (= e!3363744 tp!1497665)))

(assert (=> b!5427090 (= tp!1497569 e!3363744)))

(assert (= (and b!5427090 ((_ is ElementMatch!15217) (regOne!30947 (regOne!30947 r!7292)))) b!5428219))

(assert (= (and b!5427090 ((_ is Concat!24062) (regOne!30947 (regOne!30947 r!7292)))) b!5428220))

(assert (= (and b!5427090 ((_ is Star!15217) (regOne!30947 (regOne!30947 r!7292)))) b!5428221))

(assert (= (and b!5427090 ((_ is Union!15217) (regOne!30947 (regOne!30947 r!7292)))) b!5428222))

(declare-fun b!5428226 () Bool)

(declare-fun e!3363745 () Bool)

(declare-fun tp!1497667 () Bool)

(declare-fun tp!1497668 () Bool)

(assert (=> b!5428226 (= e!3363745 (and tp!1497667 tp!1497668))))

(declare-fun b!5428224 () Bool)

(declare-fun tp!1497669 () Bool)

(declare-fun tp!1497671 () Bool)

(assert (=> b!5428224 (= e!3363745 (and tp!1497669 tp!1497671))))

(declare-fun b!5428223 () Bool)

(assert (=> b!5428223 (= e!3363745 tp_is_empty!39687)))

(declare-fun b!5428225 () Bool)

(declare-fun tp!1497670 () Bool)

(assert (=> b!5428225 (= e!3363745 tp!1497670)))

(assert (=> b!5427090 (= tp!1497570 e!3363745)))

(assert (= (and b!5427090 ((_ is ElementMatch!15217) (regTwo!30947 (regOne!30947 r!7292)))) b!5428223))

(assert (= (and b!5427090 ((_ is Concat!24062) (regTwo!30947 (regOne!30947 r!7292)))) b!5428224))

(assert (= (and b!5427090 ((_ is Star!15217) (regTwo!30947 (regOne!30947 r!7292)))) b!5428225))

(assert (= (and b!5427090 ((_ is Union!15217) (regTwo!30947 (regOne!30947 r!7292)))) b!5428226))

(declare-fun b!5428230 () Bool)

(declare-fun e!3363746 () Bool)

(declare-fun tp!1497672 () Bool)

(declare-fun tp!1497673 () Bool)

(assert (=> b!5428230 (= e!3363746 (and tp!1497672 tp!1497673))))

(declare-fun b!5428228 () Bool)

(declare-fun tp!1497674 () Bool)

(declare-fun tp!1497676 () Bool)

(assert (=> b!5428228 (= e!3363746 (and tp!1497674 tp!1497676))))

(declare-fun b!5428227 () Bool)

(assert (=> b!5428227 (= e!3363746 tp_is_empty!39687)))

(declare-fun b!5428229 () Bool)

(declare-fun tp!1497675 () Bool)

(assert (=> b!5428229 (= e!3363746 tp!1497675)))

(assert (=> b!5427089 (= tp!1497572 e!3363746)))

(assert (= (and b!5427089 ((_ is ElementMatch!15217) (reg!15546 (regOne!30947 r!7292)))) b!5428227))

(assert (= (and b!5427089 ((_ is Concat!24062) (reg!15546 (regOne!30947 r!7292)))) b!5428228))

(assert (= (and b!5427089 ((_ is Star!15217) (reg!15546 (regOne!30947 r!7292)))) b!5428229))

(assert (= (and b!5427089 ((_ is Union!15217) (reg!15546 (regOne!30947 r!7292)))) b!5428230))

(declare-fun b!5428248 () Bool)

(declare-fun e!3363754 () Bool)

(declare-fun tp!1497677 () Bool)

(declare-fun tp!1497678 () Bool)

(assert (=> b!5428248 (= e!3363754 (and tp!1497677 tp!1497678))))

(declare-fun b!5428246 () Bool)

(declare-fun tp!1497679 () Bool)

(declare-fun tp!1497681 () Bool)

(assert (=> b!5428246 (= e!3363754 (and tp!1497679 tp!1497681))))

(declare-fun b!5428245 () Bool)

(assert (=> b!5428245 (= e!3363754 tp_is_empty!39687)))

(declare-fun b!5428247 () Bool)

(declare-fun tp!1497680 () Bool)

(assert (=> b!5428247 (= e!3363754 tp!1497680)))

(assert (=> b!5427125 (= tp!1497612 e!3363754)))

(assert (= (and b!5427125 ((_ is ElementMatch!15217) (h!68275 (exprs!5101 (h!68276 zl!343))))) b!5428245))

(assert (= (and b!5427125 ((_ is Concat!24062) (h!68275 (exprs!5101 (h!68276 zl!343))))) b!5428246))

(assert (= (and b!5427125 ((_ is Star!15217) (h!68275 (exprs!5101 (h!68276 zl!343))))) b!5428247))

(assert (= (and b!5427125 ((_ is Union!15217) (h!68275 (exprs!5101 (h!68276 zl!343))))) b!5428248))

(declare-fun b!5428249 () Bool)

(declare-fun e!3363755 () Bool)

(declare-fun tp!1497682 () Bool)

(declare-fun tp!1497683 () Bool)

(assert (=> b!5428249 (= e!3363755 (and tp!1497682 tp!1497683))))

(assert (=> b!5427125 (= tp!1497613 e!3363755)))

(assert (= (and b!5427125 ((_ is Cons!61827) (t!375174 (exprs!5101 (h!68276 zl!343))))) b!5428249))

(declare-fun b!5428253 () Bool)

(declare-fun e!3363756 () Bool)

(declare-fun tp!1497684 () Bool)

(declare-fun tp!1497685 () Bool)

(assert (=> b!5428253 (= e!3363756 (and tp!1497684 tp!1497685))))

(declare-fun b!5428251 () Bool)

(declare-fun tp!1497686 () Bool)

(declare-fun tp!1497688 () Bool)

(assert (=> b!5428251 (= e!3363756 (and tp!1497686 tp!1497688))))

(declare-fun b!5428250 () Bool)

(assert (=> b!5428250 (= e!3363756 tp_is_empty!39687)))

(declare-fun b!5428252 () Bool)

(declare-fun tp!1497687 () Bool)

(assert (=> b!5428252 (= e!3363756 tp!1497687)))

(assert (=> b!5427122 (= tp!1497609 e!3363756)))

(assert (= (and b!5427122 ((_ is ElementMatch!15217) (regOne!30946 (regTwo!30946 r!7292)))) b!5428250))

(assert (= (and b!5427122 ((_ is Concat!24062) (regOne!30946 (regTwo!30946 r!7292)))) b!5428251))

(assert (= (and b!5427122 ((_ is Star!15217) (regOne!30946 (regTwo!30946 r!7292)))) b!5428252))

(assert (= (and b!5427122 ((_ is Union!15217) (regOne!30946 (regTwo!30946 r!7292)))) b!5428253))

(declare-fun b!5428257 () Bool)

(declare-fun e!3363757 () Bool)

(declare-fun tp!1497689 () Bool)

(declare-fun tp!1497690 () Bool)

(assert (=> b!5428257 (= e!3363757 (and tp!1497689 tp!1497690))))

(declare-fun b!5428255 () Bool)

(declare-fun tp!1497691 () Bool)

(declare-fun tp!1497693 () Bool)

(assert (=> b!5428255 (= e!3363757 (and tp!1497691 tp!1497693))))

(declare-fun b!5428254 () Bool)

(assert (=> b!5428254 (= e!3363757 tp_is_empty!39687)))

(declare-fun b!5428256 () Bool)

(declare-fun tp!1497692 () Bool)

(assert (=> b!5428256 (= e!3363757 tp!1497692)))

(assert (=> b!5427122 (= tp!1497611 e!3363757)))

(assert (= (and b!5427122 ((_ is ElementMatch!15217) (regTwo!30946 (regTwo!30946 r!7292)))) b!5428254))

(assert (= (and b!5427122 ((_ is Concat!24062) (regTwo!30946 (regTwo!30946 r!7292)))) b!5428255))

(assert (= (and b!5427122 ((_ is Star!15217) (regTwo!30946 (regTwo!30946 r!7292)))) b!5428256))

(assert (= (and b!5427122 ((_ is Union!15217) (regTwo!30946 (regTwo!30946 r!7292)))) b!5428257))

(declare-fun b!5428261 () Bool)

(declare-fun e!3363758 () Bool)

(declare-fun tp!1497694 () Bool)

(declare-fun tp!1497695 () Bool)

(assert (=> b!5428261 (= e!3363758 (and tp!1497694 tp!1497695))))

(declare-fun b!5428259 () Bool)

(declare-fun tp!1497696 () Bool)

(declare-fun tp!1497698 () Bool)

(assert (=> b!5428259 (= e!3363758 (and tp!1497696 tp!1497698))))

(declare-fun b!5428258 () Bool)

(assert (=> b!5428258 (= e!3363758 tp_is_empty!39687)))

(declare-fun b!5428260 () Bool)

(declare-fun tp!1497697 () Bool)

(assert (=> b!5428260 (= e!3363758 tp!1497697)))

(assert (=> b!5427107 (= tp!1497594 e!3363758)))

(assert (= (and b!5427107 ((_ is ElementMatch!15217) (reg!15546 (reg!15546 r!7292)))) b!5428258))

(assert (= (and b!5427107 ((_ is Concat!24062) (reg!15546 (reg!15546 r!7292)))) b!5428259))

(assert (= (and b!5427107 ((_ is Star!15217) (reg!15546 (reg!15546 r!7292)))) b!5428260))

(assert (= (and b!5427107 ((_ is Union!15217) (reg!15546 (reg!15546 r!7292)))) b!5428261))

(declare-fun b!5428265 () Bool)

(declare-fun e!3363759 () Bool)

(declare-fun tp!1497699 () Bool)

(declare-fun tp!1497700 () Bool)

(assert (=> b!5428265 (= e!3363759 (and tp!1497699 tp!1497700))))

(declare-fun b!5428263 () Bool)

(declare-fun tp!1497701 () Bool)

(declare-fun tp!1497703 () Bool)

(assert (=> b!5428263 (= e!3363759 (and tp!1497701 tp!1497703))))

(declare-fun b!5428262 () Bool)

(assert (=> b!5428262 (= e!3363759 tp_is_empty!39687)))

(declare-fun b!5428264 () Bool)

(declare-fun tp!1497702 () Bool)

(assert (=> b!5428264 (= e!3363759 tp!1497702)))

(assert (=> b!5427108 (= tp!1497591 e!3363759)))

(assert (= (and b!5427108 ((_ is ElementMatch!15217) (regOne!30947 (reg!15546 r!7292)))) b!5428262))

(assert (= (and b!5427108 ((_ is Concat!24062) (regOne!30947 (reg!15546 r!7292)))) b!5428263))

(assert (= (and b!5427108 ((_ is Star!15217) (regOne!30947 (reg!15546 r!7292)))) b!5428264))

(assert (= (and b!5427108 ((_ is Union!15217) (regOne!30947 (reg!15546 r!7292)))) b!5428265))

(declare-fun b!5428269 () Bool)

(declare-fun e!3363760 () Bool)

(declare-fun tp!1497704 () Bool)

(declare-fun tp!1497705 () Bool)

(assert (=> b!5428269 (= e!3363760 (and tp!1497704 tp!1497705))))

(declare-fun b!5428267 () Bool)

(declare-fun tp!1497706 () Bool)

(declare-fun tp!1497708 () Bool)

(assert (=> b!5428267 (= e!3363760 (and tp!1497706 tp!1497708))))

(declare-fun b!5428266 () Bool)

(assert (=> b!5428266 (= e!3363760 tp_is_empty!39687)))

(declare-fun b!5428268 () Bool)

(declare-fun tp!1497707 () Bool)

(assert (=> b!5428268 (= e!3363760 tp!1497707)))

(assert (=> b!5427108 (= tp!1497592 e!3363760)))

(assert (= (and b!5427108 ((_ is ElementMatch!15217) (regTwo!30947 (reg!15546 r!7292)))) b!5428266))

(assert (= (and b!5427108 ((_ is Concat!24062) (regTwo!30947 (reg!15546 r!7292)))) b!5428267))

(assert (= (and b!5427108 ((_ is Star!15217) (regTwo!30947 (reg!15546 r!7292)))) b!5428268))

(assert (= (and b!5427108 ((_ is Union!15217) (regTwo!30947 (reg!15546 r!7292)))) b!5428269))

(declare-fun b!5428277 () Bool)

(declare-fun e!3363763 () Bool)

(declare-fun tp!1497709 () Bool)

(declare-fun tp!1497710 () Bool)

(assert (=> b!5428277 (= e!3363763 (and tp!1497709 tp!1497710))))

(declare-fun b!5428275 () Bool)

(declare-fun tp!1497711 () Bool)

(declare-fun tp!1497713 () Bool)

(assert (=> b!5428275 (= e!3363763 (and tp!1497711 tp!1497713))))

(declare-fun b!5428274 () Bool)

(assert (=> b!5428274 (= e!3363763 tp_is_empty!39687)))

(declare-fun b!5428276 () Bool)

(declare-fun tp!1497712 () Bool)

(assert (=> b!5428276 (= e!3363763 tp!1497712)))

(assert (=> b!5427124 (= tp!1497607 e!3363763)))

(assert (= (and b!5427124 ((_ is ElementMatch!15217) (regOne!30947 (regTwo!30946 r!7292)))) b!5428274))

(assert (= (and b!5427124 ((_ is Concat!24062) (regOne!30947 (regTwo!30946 r!7292)))) b!5428275))

(assert (= (and b!5427124 ((_ is Star!15217) (regOne!30947 (regTwo!30946 r!7292)))) b!5428276))

(assert (= (and b!5427124 ((_ is Union!15217) (regOne!30947 (regTwo!30946 r!7292)))) b!5428277))

(declare-fun b!5428281 () Bool)

(declare-fun e!3363764 () Bool)

(declare-fun tp!1497714 () Bool)

(declare-fun tp!1497715 () Bool)

(assert (=> b!5428281 (= e!3363764 (and tp!1497714 tp!1497715))))

(declare-fun b!5428279 () Bool)

(declare-fun tp!1497716 () Bool)

(declare-fun tp!1497718 () Bool)

(assert (=> b!5428279 (= e!3363764 (and tp!1497716 tp!1497718))))

(declare-fun b!5428278 () Bool)

(assert (=> b!5428278 (= e!3363764 tp_is_empty!39687)))

(declare-fun b!5428280 () Bool)

(declare-fun tp!1497717 () Bool)

(assert (=> b!5428280 (= e!3363764 tp!1497717)))

(assert (=> b!5427124 (= tp!1497608 e!3363764)))

(assert (= (and b!5427124 ((_ is ElementMatch!15217) (regTwo!30947 (regTwo!30946 r!7292)))) b!5428278))

(assert (= (and b!5427124 ((_ is Concat!24062) (regTwo!30947 (regTwo!30946 r!7292)))) b!5428279))

(assert (= (and b!5427124 ((_ is Star!15217) (regTwo!30947 (regTwo!30946 r!7292)))) b!5428280))

(assert (= (and b!5427124 ((_ is Union!15217) (regTwo!30947 (regTwo!30946 r!7292)))) b!5428281))

(declare-fun b!5428283 () Bool)

(declare-fun e!3363766 () Bool)

(declare-fun tp!1497719 () Bool)

(assert (=> b!5428283 (= e!3363766 tp!1497719)))

(declare-fun e!3363765 () Bool)

(declare-fun b!5428282 () Bool)

(declare-fun tp!1497720 () Bool)

(assert (=> b!5428282 (= e!3363765 (and (inv!81289 (h!68276 (t!375175 (t!375175 zl!343)))) e!3363766 tp!1497720))))

(assert (=> b!5427115 (= tp!1497601 e!3363765)))

(assert (= b!5428282 b!5428283))

(assert (= (and b!5427115 ((_ is Cons!61828) (t!375175 (t!375175 zl!343)))) b!5428282))

(declare-fun m!6452048 () Bool)

(assert (=> b!5428282 m!6452048))

(declare-fun b!5428287 () Bool)

(declare-fun e!3363767 () Bool)

(declare-fun tp!1497721 () Bool)

(declare-fun tp!1497722 () Bool)

(assert (=> b!5428287 (= e!3363767 (and tp!1497721 tp!1497722))))

(declare-fun b!5428285 () Bool)

(declare-fun tp!1497723 () Bool)

(declare-fun tp!1497725 () Bool)

(assert (=> b!5428285 (= e!3363767 (and tp!1497723 tp!1497725))))

(declare-fun b!5428284 () Bool)

(assert (=> b!5428284 (= e!3363767 tp_is_empty!39687)))

(declare-fun b!5428286 () Bool)

(declare-fun tp!1497724 () Bool)

(assert (=> b!5428286 (= e!3363767 tp!1497724)))

(assert (=> b!5427123 (= tp!1497610 e!3363767)))

(assert (= (and b!5427123 ((_ is ElementMatch!15217) (reg!15546 (regTwo!30946 r!7292)))) b!5428284))

(assert (= (and b!5427123 ((_ is Concat!24062) (reg!15546 (regTwo!30946 r!7292)))) b!5428285))

(assert (= (and b!5427123 ((_ is Star!15217) (reg!15546 (regTwo!30946 r!7292)))) b!5428286))

(assert (= (and b!5427123 ((_ is Union!15217) (reg!15546 (regTwo!30946 r!7292)))) b!5428287))

(declare-fun b!5428293 () Bool)

(declare-fun e!3363771 () Bool)

(declare-fun tp!1497726 () Bool)

(declare-fun tp!1497727 () Bool)

(assert (=> b!5428293 (= e!3363771 (and tp!1497726 tp!1497727))))

(assert (=> b!5427116 (= tp!1497600 e!3363771)))

(assert (= (and b!5427116 ((_ is Cons!61827) (exprs!5101 (h!68276 (t!375175 zl!343))))) b!5428293))

(declare-fun b!5428297 () Bool)

(declare-fun e!3363772 () Bool)

(declare-fun tp!1497728 () Bool)

(declare-fun tp!1497729 () Bool)

(assert (=> b!5428297 (= e!3363772 (and tp!1497728 tp!1497729))))

(declare-fun b!5428295 () Bool)

(declare-fun tp!1497730 () Bool)

(declare-fun tp!1497732 () Bool)

(assert (=> b!5428295 (= e!3363772 (and tp!1497730 tp!1497732))))

(declare-fun b!5428294 () Bool)

(assert (=> b!5428294 (= e!3363772 tp_is_empty!39687)))

(declare-fun b!5428296 () Bool)

(declare-fun tp!1497731 () Bool)

(assert (=> b!5428296 (= e!3363772 tp!1497731)))

(assert (=> b!5427092 (= tp!1497576 e!3363772)))

(assert (= (and b!5427092 ((_ is ElementMatch!15217) (regOne!30946 (regTwo!30947 r!7292)))) b!5428294))

(assert (= (and b!5427092 ((_ is Concat!24062) (regOne!30946 (regTwo!30947 r!7292)))) b!5428295))

(assert (= (and b!5427092 ((_ is Star!15217) (regOne!30946 (regTwo!30947 r!7292)))) b!5428296))

(assert (= (and b!5427092 ((_ is Union!15217) (regOne!30946 (regTwo!30947 r!7292)))) b!5428297))

(declare-fun b!5428301 () Bool)

(declare-fun e!3363773 () Bool)

(declare-fun tp!1497733 () Bool)

(declare-fun tp!1497734 () Bool)

(assert (=> b!5428301 (= e!3363773 (and tp!1497733 tp!1497734))))

(declare-fun b!5428299 () Bool)

(declare-fun tp!1497735 () Bool)

(declare-fun tp!1497737 () Bool)

(assert (=> b!5428299 (= e!3363773 (and tp!1497735 tp!1497737))))

(declare-fun b!5428298 () Bool)

(assert (=> b!5428298 (= e!3363773 tp_is_empty!39687)))

(declare-fun b!5428300 () Bool)

(declare-fun tp!1497736 () Bool)

(assert (=> b!5428300 (= e!3363773 tp!1497736)))

(assert (=> b!5427092 (= tp!1497578 e!3363773)))

(assert (= (and b!5427092 ((_ is ElementMatch!15217) (regTwo!30946 (regTwo!30947 r!7292)))) b!5428298))

(assert (= (and b!5427092 ((_ is Concat!24062) (regTwo!30946 (regTwo!30947 r!7292)))) b!5428299))

(assert (= (and b!5427092 ((_ is Star!15217) (regTwo!30946 (regTwo!30947 r!7292)))) b!5428300))

(assert (= (and b!5427092 ((_ is Union!15217) (regTwo!30946 (regTwo!30947 r!7292)))) b!5428301))

(declare-fun b!5428307 () Bool)

(declare-fun e!3363775 () Bool)

(declare-fun tp!1497738 () Bool)

(declare-fun tp!1497739 () Bool)

(assert (=> b!5428307 (= e!3363775 (and tp!1497738 tp!1497739))))

(declare-fun b!5428305 () Bool)

(declare-fun tp!1497740 () Bool)

(declare-fun tp!1497742 () Bool)

(assert (=> b!5428305 (= e!3363775 (and tp!1497740 tp!1497742))))

(declare-fun b!5428304 () Bool)

(assert (=> b!5428304 (= e!3363775 tp_is_empty!39687)))

(declare-fun b!5428306 () Bool)

(declare-fun tp!1497741 () Bool)

(assert (=> b!5428306 (= e!3363775 tp!1497741)))

(assert (=> b!5427093 (= tp!1497577 e!3363775)))

(assert (= (and b!5427093 ((_ is ElementMatch!15217) (reg!15546 (regTwo!30947 r!7292)))) b!5428304))

(assert (= (and b!5427093 ((_ is Concat!24062) (reg!15546 (regTwo!30947 r!7292)))) b!5428305))

(assert (= (and b!5427093 ((_ is Star!15217) (reg!15546 (regTwo!30947 r!7292)))) b!5428306))

(assert (= (and b!5427093 ((_ is Union!15217) (reg!15546 (regTwo!30947 r!7292)))) b!5428307))

(declare-fun b!5428308 () Bool)

(declare-fun e!3363776 () Bool)

(declare-fun tp!1497743 () Bool)

(assert (=> b!5428308 (= e!3363776 (and tp_is_empty!39687 tp!1497743))))

(assert (=> b!5427076 (= tp!1497558 e!3363776)))

(assert (= (and b!5427076 ((_ is Cons!61826) (t!375173 (t!375173 s!2326)))) b!5428308))

(declare-fun b!5428312 () Bool)

(declare-fun e!3363777 () Bool)

(declare-fun tp!1497744 () Bool)

(declare-fun tp!1497745 () Bool)

(assert (=> b!5428312 (= e!3363777 (and tp!1497744 tp!1497745))))

(declare-fun b!5428310 () Bool)

(declare-fun tp!1497746 () Bool)

(declare-fun tp!1497748 () Bool)

(assert (=> b!5428310 (= e!3363777 (and tp!1497746 tp!1497748))))

(declare-fun b!5428309 () Bool)

(assert (=> b!5428309 (= e!3363777 tp_is_empty!39687)))

(declare-fun b!5428311 () Bool)

(declare-fun tp!1497747 () Bool)

(assert (=> b!5428311 (= e!3363777 tp!1497747)))

(assert (=> b!5427106 (= tp!1497593 e!3363777)))

(assert (= (and b!5427106 ((_ is ElementMatch!15217) (regOne!30946 (reg!15546 r!7292)))) b!5428309))

(assert (= (and b!5427106 ((_ is Concat!24062) (regOne!30946 (reg!15546 r!7292)))) b!5428310))

(assert (= (and b!5427106 ((_ is Star!15217) (regOne!30946 (reg!15546 r!7292)))) b!5428311))

(assert (= (and b!5427106 ((_ is Union!15217) (regOne!30946 (reg!15546 r!7292)))) b!5428312))

(declare-fun b!5428316 () Bool)

(declare-fun e!3363778 () Bool)

(declare-fun tp!1497749 () Bool)

(declare-fun tp!1497750 () Bool)

(assert (=> b!5428316 (= e!3363778 (and tp!1497749 tp!1497750))))

(declare-fun b!5428314 () Bool)

(declare-fun tp!1497751 () Bool)

(declare-fun tp!1497753 () Bool)

(assert (=> b!5428314 (= e!3363778 (and tp!1497751 tp!1497753))))

(declare-fun b!5428313 () Bool)

(assert (=> b!5428313 (= e!3363778 tp_is_empty!39687)))

(declare-fun b!5428315 () Bool)

(declare-fun tp!1497752 () Bool)

(assert (=> b!5428315 (= e!3363778 tp!1497752)))

(assert (=> b!5427106 (= tp!1497595 e!3363778)))

(assert (= (and b!5427106 ((_ is ElementMatch!15217) (regTwo!30946 (reg!15546 r!7292)))) b!5428313))

(assert (= (and b!5427106 ((_ is Concat!24062) (regTwo!30946 (reg!15546 r!7292)))) b!5428314))

(assert (= (and b!5427106 ((_ is Star!15217) (regTwo!30946 (reg!15546 r!7292)))) b!5428315))

(assert (= (and b!5427106 ((_ is Union!15217) (regTwo!30946 (reg!15546 r!7292)))) b!5428316))

(declare-fun b!5428320 () Bool)

(declare-fun e!3363779 () Bool)

(declare-fun tp!1497754 () Bool)

(declare-fun tp!1497755 () Bool)

(assert (=> b!5428320 (= e!3363779 (and tp!1497754 tp!1497755))))

(declare-fun b!5428318 () Bool)

(declare-fun tp!1497756 () Bool)

(declare-fun tp!1497758 () Bool)

(assert (=> b!5428318 (= e!3363779 (and tp!1497756 tp!1497758))))

(declare-fun b!5428317 () Bool)

(assert (=> b!5428317 (= e!3363779 tp_is_empty!39687)))

(declare-fun b!5428319 () Bool)

(declare-fun tp!1497757 () Bool)

(assert (=> b!5428319 (= e!3363779 tp!1497757)))

(assert (=> b!5427094 (= tp!1497574 e!3363779)))

(assert (= (and b!5427094 ((_ is ElementMatch!15217) (regOne!30947 (regTwo!30947 r!7292)))) b!5428317))

(assert (= (and b!5427094 ((_ is Concat!24062) (regOne!30947 (regTwo!30947 r!7292)))) b!5428318))

(assert (= (and b!5427094 ((_ is Star!15217) (regOne!30947 (regTwo!30947 r!7292)))) b!5428319))

(assert (= (and b!5427094 ((_ is Union!15217) (regOne!30947 (regTwo!30947 r!7292)))) b!5428320))

(declare-fun b!5428324 () Bool)

(declare-fun e!3363780 () Bool)

(declare-fun tp!1497759 () Bool)

(declare-fun tp!1497760 () Bool)

(assert (=> b!5428324 (= e!3363780 (and tp!1497759 tp!1497760))))

(declare-fun b!5428322 () Bool)

(declare-fun tp!1497761 () Bool)

(declare-fun tp!1497763 () Bool)

(assert (=> b!5428322 (= e!3363780 (and tp!1497761 tp!1497763))))

(declare-fun b!5428321 () Bool)

(assert (=> b!5428321 (= e!3363780 tp_is_empty!39687)))

(declare-fun b!5428323 () Bool)

(declare-fun tp!1497762 () Bool)

(assert (=> b!5428323 (= e!3363780 tp!1497762)))

(assert (=> b!5427094 (= tp!1497575 e!3363780)))

(assert (= (and b!5427094 ((_ is ElementMatch!15217) (regTwo!30947 (regTwo!30947 r!7292)))) b!5428321))

(assert (= (and b!5427094 ((_ is Concat!24062) (regTwo!30947 (regTwo!30947 r!7292)))) b!5428322))

(assert (= (and b!5427094 ((_ is Star!15217) (regTwo!30947 (regTwo!30947 r!7292)))) b!5428323))

(assert (= (and b!5427094 ((_ is Union!15217) (regTwo!30947 (regTwo!30947 r!7292)))) b!5428324))

(declare-fun b!5428328 () Bool)

(declare-fun e!3363781 () Bool)

(declare-fun tp!1497764 () Bool)

(declare-fun tp!1497765 () Bool)

(assert (=> b!5428328 (= e!3363781 (and tp!1497764 tp!1497765))))

(declare-fun b!5428326 () Bool)

(declare-fun tp!1497766 () Bool)

(declare-fun tp!1497768 () Bool)

(assert (=> b!5428326 (= e!3363781 (and tp!1497766 tp!1497768))))

(declare-fun b!5428325 () Bool)

(assert (=> b!5428325 (= e!3363781 tp_is_empty!39687)))

(declare-fun b!5428327 () Bool)

(declare-fun tp!1497767 () Bool)

(assert (=> b!5428327 (= e!3363781 tp!1497767)))

(assert (=> b!5427104 (= tp!1497589 e!3363781)))

(assert (= (and b!5427104 ((_ is ElementMatch!15217) (h!68275 (exprs!5101 setElem!35381)))) b!5428325))

(assert (= (and b!5427104 ((_ is Concat!24062) (h!68275 (exprs!5101 setElem!35381)))) b!5428326))

(assert (= (and b!5427104 ((_ is Star!15217) (h!68275 (exprs!5101 setElem!35381)))) b!5428327))

(assert (= (and b!5427104 ((_ is Union!15217) (h!68275 (exprs!5101 setElem!35381)))) b!5428328))

(declare-fun b!5428329 () Bool)

(declare-fun e!3363782 () Bool)

(declare-fun tp!1497769 () Bool)

(declare-fun tp!1497770 () Bool)

(assert (=> b!5428329 (= e!3363782 (and tp!1497769 tp!1497770))))

(assert (=> b!5427104 (= tp!1497590 e!3363782)))

(assert (= (and b!5427104 ((_ is Cons!61827) (t!375174 (exprs!5101 setElem!35381)))) b!5428329))

(declare-fun condSetEmpty!35401 () Bool)

(assert (=> setNonEmpty!35387 (= condSetEmpty!35401 (= setRest!35387 ((as const (Array Context!9202 Bool)) false)))))

(declare-fun setRes!35401 () Bool)

(assert (=> setNonEmpty!35387 (= tp!1497584 setRes!35401)))

(declare-fun setIsEmpty!35401 () Bool)

(assert (=> setIsEmpty!35401 setRes!35401))

(declare-fun setElem!35401 () Context!9202)

(declare-fun e!3363783 () Bool)

(declare-fun tp!1497772 () Bool)

(declare-fun setNonEmpty!35401 () Bool)

(assert (=> setNonEmpty!35401 (= setRes!35401 (and tp!1497772 (inv!81289 setElem!35401) e!3363783))))

(declare-fun setRest!35401 () (InoxSet Context!9202))

(assert (=> setNonEmpty!35401 (= setRest!35387 ((_ map or) (store ((as const (Array Context!9202 Bool)) false) setElem!35401 true) setRest!35401))))

(declare-fun b!5428330 () Bool)

(declare-fun tp!1497771 () Bool)

(assert (=> b!5428330 (= e!3363783 tp!1497771)))

(assert (= (and setNonEmpty!35387 condSetEmpty!35401) setIsEmpty!35401))

(assert (= (and setNonEmpty!35387 (not condSetEmpty!35401)) setNonEmpty!35401))

(assert (= setNonEmpty!35401 b!5428330))

(declare-fun m!6452064 () Bool)

(assert (=> setNonEmpty!35401 m!6452064))

(declare-fun b!5428336 () Bool)

(declare-fun e!3363785 () Bool)

(declare-fun tp!1497773 () Bool)

(declare-fun tp!1497774 () Bool)

(assert (=> b!5428336 (= e!3363785 (and tp!1497773 tp!1497774))))

(declare-fun b!5428334 () Bool)

(declare-fun tp!1497775 () Bool)

(declare-fun tp!1497777 () Bool)

(assert (=> b!5428334 (= e!3363785 (and tp!1497775 tp!1497777))))

(declare-fun b!5428333 () Bool)

(assert (=> b!5428333 (= e!3363785 tp_is_empty!39687)))

(declare-fun b!5428335 () Bool)

(declare-fun tp!1497776 () Bool)

(assert (=> b!5428335 (= e!3363785 tp!1497776)))

(assert (=> b!5427119 (= tp!1497605 e!3363785)))

(assert (= (and b!5427119 ((_ is ElementMatch!15217) (reg!15546 (regOne!30946 r!7292)))) b!5428333))

(assert (= (and b!5427119 ((_ is Concat!24062) (reg!15546 (regOne!30946 r!7292)))) b!5428334))

(assert (= (and b!5427119 ((_ is Star!15217) (reg!15546 (regOne!30946 r!7292)))) b!5428335))

(assert (= (and b!5427119 ((_ is Union!15217) (reg!15546 (regOne!30946 r!7292)))) b!5428336))

(declare-fun b!5428340 () Bool)

(declare-fun e!3363786 () Bool)

(declare-fun tp!1497778 () Bool)

(declare-fun tp!1497779 () Bool)

(assert (=> b!5428340 (= e!3363786 (and tp!1497778 tp!1497779))))

(declare-fun b!5428338 () Bool)

(declare-fun tp!1497780 () Bool)

(declare-fun tp!1497782 () Bool)

(assert (=> b!5428338 (= e!3363786 (and tp!1497780 tp!1497782))))

(declare-fun b!5428337 () Bool)

(assert (=> b!5428337 (= e!3363786 tp_is_empty!39687)))

(declare-fun b!5428339 () Bool)

(declare-fun tp!1497781 () Bool)

(assert (=> b!5428339 (= e!3363786 tp!1497781)))

(assert (=> b!5427120 (= tp!1497602 e!3363786)))

(assert (= (and b!5427120 ((_ is ElementMatch!15217) (regOne!30947 (regOne!30946 r!7292)))) b!5428337))

(assert (= (and b!5427120 ((_ is Concat!24062) (regOne!30947 (regOne!30946 r!7292)))) b!5428338))

(assert (= (and b!5427120 ((_ is Star!15217) (regOne!30947 (regOne!30946 r!7292)))) b!5428339))

(assert (= (and b!5427120 ((_ is Union!15217) (regOne!30947 (regOne!30946 r!7292)))) b!5428340))

(declare-fun b!5428344 () Bool)

(declare-fun e!3363787 () Bool)

(declare-fun tp!1497783 () Bool)

(declare-fun tp!1497784 () Bool)

(assert (=> b!5428344 (= e!3363787 (and tp!1497783 tp!1497784))))

(declare-fun b!5428342 () Bool)

(declare-fun tp!1497785 () Bool)

(declare-fun tp!1497787 () Bool)

(assert (=> b!5428342 (= e!3363787 (and tp!1497785 tp!1497787))))

(declare-fun b!5428341 () Bool)

(assert (=> b!5428341 (= e!3363787 tp_is_empty!39687)))

(declare-fun b!5428343 () Bool)

(declare-fun tp!1497786 () Bool)

(assert (=> b!5428343 (= e!3363787 tp!1497786)))

(assert (=> b!5427120 (= tp!1497603 e!3363787)))

(assert (= (and b!5427120 ((_ is ElementMatch!15217) (regTwo!30947 (regOne!30946 r!7292)))) b!5428341))

(assert (= (and b!5427120 ((_ is Concat!24062) (regTwo!30947 (regOne!30946 r!7292)))) b!5428342))

(assert (= (and b!5427120 ((_ is Star!15217) (regTwo!30947 (regOne!30946 r!7292)))) b!5428343))

(assert (= (and b!5427120 ((_ is Union!15217) (regTwo!30947 (regOne!30946 r!7292)))) b!5428344))

(declare-fun b!5428345 () Bool)

(declare-fun e!3363788 () Bool)

(declare-fun tp!1497788 () Bool)

(declare-fun tp!1497789 () Bool)

(assert (=> b!5428345 (= e!3363788 (and tp!1497788 tp!1497789))))

(assert (=> b!5427099 (= tp!1497583 e!3363788)))

(assert (= (and b!5427099 ((_ is Cons!61827) (exprs!5101 setElem!35387))) b!5428345))

(declare-fun b!5428349 () Bool)

(declare-fun e!3363789 () Bool)

(declare-fun tp!1497790 () Bool)

(declare-fun tp!1497791 () Bool)

(assert (=> b!5428349 (= e!3363789 (and tp!1497790 tp!1497791))))

(declare-fun b!5428347 () Bool)

(declare-fun tp!1497792 () Bool)

(declare-fun tp!1497794 () Bool)

(assert (=> b!5428347 (= e!3363789 (and tp!1497792 tp!1497794))))

(declare-fun b!5428346 () Bool)

(assert (=> b!5428346 (= e!3363789 tp_is_empty!39687)))

(declare-fun b!5428348 () Bool)

(declare-fun tp!1497793 () Bool)

(assert (=> b!5428348 (= e!3363789 tp!1497793)))

(assert (=> b!5427118 (= tp!1497604 e!3363789)))

(assert (= (and b!5427118 ((_ is ElementMatch!15217) (regOne!30946 (regOne!30946 r!7292)))) b!5428346))

(assert (= (and b!5427118 ((_ is Concat!24062) (regOne!30946 (regOne!30946 r!7292)))) b!5428347))

(assert (= (and b!5427118 ((_ is Star!15217) (regOne!30946 (regOne!30946 r!7292)))) b!5428348))

(assert (= (and b!5427118 ((_ is Union!15217) (regOne!30946 (regOne!30946 r!7292)))) b!5428349))

(declare-fun b!5428353 () Bool)

(declare-fun e!3363790 () Bool)

(declare-fun tp!1497795 () Bool)

(declare-fun tp!1497796 () Bool)

(assert (=> b!5428353 (= e!3363790 (and tp!1497795 tp!1497796))))

(declare-fun b!5428351 () Bool)

(declare-fun tp!1497797 () Bool)

(declare-fun tp!1497799 () Bool)

(assert (=> b!5428351 (= e!3363790 (and tp!1497797 tp!1497799))))

(declare-fun b!5428350 () Bool)

(assert (=> b!5428350 (= e!3363790 tp_is_empty!39687)))

(declare-fun b!5428352 () Bool)

(declare-fun tp!1497798 () Bool)

(assert (=> b!5428352 (= e!3363790 tp!1497798)))

(assert (=> b!5427118 (= tp!1497606 e!3363790)))

(assert (= (and b!5427118 ((_ is ElementMatch!15217) (regTwo!30946 (regOne!30946 r!7292)))) b!5428350))

(assert (= (and b!5427118 ((_ is Concat!24062) (regTwo!30946 (regOne!30946 r!7292)))) b!5428351))

(assert (= (and b!5427118 ((_ is Star!15217) (regTwo!30946 (regOne!30946 r!7292)))) b!5428352))

(assert (= (and b!5427118 ((_ is Union!15217) (regTwo!30946 (regOne!30946 r!7292)))) b!5428353))

(declare-fun b_lambda!207129 () Bool)

(assert (= b_lambda!207095 (or d!1730602 b_lambda!207129)))

(declare-fun bs!1254121 () Bool)

(declare-fun d!1731186 () Bool)

(assert (= bs!1254121 (and d!1731186 d!1730602)))

(assert (=> bs!1254121 (= (dynLambda!24363 lambda!284652 (h!68275 lt!2213431)) (validRegex!6953 (h!68275 lt!2213431)))))

(declare-fun m!6452074 () Bool)

(assert (=> bs!1254121 m!6452074))

(assert (=> b!5427424 d!1731186))

(declare-fun b_lambda!207131 () Bool)

(assert (= b_lambda!207091 (or d!1730586 b_lambda!207131)))

(declare-fun bs!1254122 () Bool)

(declare-fun d!1731188 () Bool)

(assert (= bs!1254122 (and d!1731188 d!1730586)))

(assert (=> bs!1254122 (= (dynLambda!24363 lambda!284646 (h!68275 (exprs!5101 (h!68276 zl!343)))) (validRegex!6953 (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(declare-fun m!6452076 () Bool)

(assert (=> bs!1254122 m!6452076))

(assert (=> b!5427364 d!1731188))

(declare-fun b_lambda!207133 () Bool)

(assert (= b_lambda!207119 (or b!5426259 b_lambda!207133)))

(assert (=> d!1731028 d!1730630))

(declare-fun b_lambda!207135 () Bool)

(assert (= b_lambda!207087 (or b!5426259 b_lambda!207135)))

(assert (=> d!1730700 d!1730632))

(declare-fun b_lambda!207137 () Bool)

(assert (= b_lambda!207101 (or b!5426259 b_lambda!207137)))

(assert (=> d!1730888 d!1730634))

(declare-fun b_lambda!207139 () Bool)

(assert (= b_lambda!207089 (or b!5426259 b_lambda!207139)))

(assert (=> d!1730718 d!1730638))

(declare-fun b_lambda!207141 () Bool)

(assert (= b_lambda!207093 (or d!1730600 b_lambda!207141)))

(declare-fun bs!1254123 () Bool)

(declare-fun d!1731190 () Bool)

(assert (= bs!1254123 (and d!1731190 d!1730600)))

(assert (=> bs!1254123 (= (dynLambda!24363 lambda!284649 (h!68275 (unfocusZipperList!659 zl!343))) (validRegex!6953 (h!68275 (unfocusZipperList!659 zl!343))))))

(declare-fun m!6452078 () Bool)

(assert (=> bs!1254123 m!6452078))

(assert (=> b!5427412 d!1731190))

(declare-fun b_lambda!207143 () Bool)

(assert (= b_lambda!207085 (or b!5426259 b_lambda!207143)))

(assert (=> d!1730682 d!1730628))

(declare-fun b_lambda!207145 () Bool)

(assert (= b_lambda!207099 (or d!1730454 b_lambda!207145)))

(declare-fun bs!1254124 () Bool)

(declare-fun d!1731194 () Bool)

(assert (= bs!1254124 (and d!1731194 d!1730454)))

(assert (=> bs!1254124 (= (dynLambda!24363 lambda!284608 (h!68275 (exprs!5101 (h!68276 zl!343)))) (validRegex!6953 (h!68275 (exprs!5101 (h!68276 zl!343)))))))

(assert (=> bs!1254124 m!6452076))

(assert (=> b!5427637 d!1731194))

(declare-fun b_lambda!207147 () Bool)

(assert (= b_lambda!207113 (or d!1730580 b_lambda!207147)))

(declare-fun bs!1254125 () Bool)

(declare-fun d!1731196 () Bool)

(assert (= bs!1254125 (and d!1731196 d!1730580)))

(assert (=> bs!1254125 (= (dynLambda!24363 lambda!284642 (h!68275 (exprs!5101 setElem!35381))) (validRegex!6953 (h!68275 (exprs!5101 setElem!35381))))))

(declare-fun m!6452080 () Bool)

(assert (=> bs!1254125 m!6452080))

(assert (=> b!5427919 d!1731196))

(declare-fun b_lambda!207149 () Bool)

(assert (= b_lambda!207117 (or b!5426260 b_lambda!207149)))

(declare-fun bs!1254126 () Bool)

(declare-fun d!1731200 () Bool)

(assert (= bs!1254126 (and d!1731200 b!5426260)))

(assert (=> bs!1254126 (= (dynLambda!24363 lambda!284593 (h!68275 (t!375174 (t!375174 (exprs!5101 (h!68276 zl!343)))))) (validRegex!6953 (h!68275 (t!375174 (t!375174 (exprs!5101 (h!68276 zl!343)))))))))

(declare-fun m!6452082 () Bool)

(assert (=> bs!1254126 m!6452082))

(assert (=> b!5427949 d!1731200))

(check-sat (not b!5427378) (not b!5428186) (not bm!388636) (not b!5427450) (not d!1730650) (not bm!388480) (not b!5427218) (not b!5427222) (not d!1730702) (not b!5428177) (not bm!388464) (not bm!388470) (not d!1730884) (not b!5428230) (not b!5428301) (not b!5428349) (not bm!388488) (not bm!388614) (not b!5428212) (not b!5427388) (not b!5428277) (not d!1730868) (not b!5428322) (not bm!388645) (not b!5427488) (not b!5427638) (not b!5428330) (not b!5427160) (not b!5428222) (not b!5427987) (not bm!388409) (not b_lambda!207141) (not b!5427219) (not d!1730828) (not b_lambda!207149) (not bm!388434) (not setNonEmpty!35392) (not b!5428267) (not b!5428268) (not bm!388521) (not b!5428334) (not bm!388473) (not d!1730722) (not b!5428225) (not b!5427886) (not bm!388642) (not d!1730754) (not bm!388482) (not bs!1254121) (not b!5428282) (not b!5428335) (not bm!388520) (not b!5427411) (not b!5427374) (not b!5427393) (not b!5428326) (not b!5428247) (not b!5428293) (not b!5428046) (not b!5428299) (not d!1730976) (not b!5428220) (not b!5427484) (not b!5427413) (not b!5428276) (not b!5427991) (not b!5427848) (not b!5428305) (not d!1730678) (not b!5427474) (not d!1730758) (not b!5428265) (not d!1730814) (not d!1731072) (not b!5427844) (not b!5428228) (not b!5427448) (not b!5428229) (not bm!388493) (not b!5427425) (not b!5427662) (not bm!388586) (not d!1730820) (not b!5428300) (not d!1730752) (not bm!388637) (not b!5428221) (not b!5427611) (not d!1730776) (not b!5427363) (not b!5427328) (not b!5427569) (not setNonEmpty!35400) (not b_lambda!207145) (not d!1730860) (not b!5427661) (not b!5428353) (not b!5427558) (not b!5427377) (not bm!388588) (not d!1730812) (not bm!388538) (not bm!388542) (not b!5428347) (not bm!388487) (not bm!388452) (not b!5428132) (not b!5427217) (not b!5427497) (not b!5427838) (not bm!388427) (not b!5428323) (not b!5427161) (not b!5427274) (not b!5427807) (not d!1730682) (not b!5428224) (not bm!388502) (not b!5427953) (not bm!388428) (not b!5428257) (not d!1731064) (not bm!388439) (not bm!388444) (not b!5428336) (not bm!388565) (not b!5428295) (not b!5428269) (not b!5427154) (not b!5428340) (not b!5427327) (not b!5428339) (not b!5427567) (not b!5427877) (not bm!388540) (not bs!1254125) (not bs!1254124) (not bm!388481) (not b!5427733) (not b!5427401) (not bm!388555) (not d!1731008) (not b!5427883) (not bm!388455) (not b_lambda!207131) (not b!5428001) (not bm!388625) (not d!1731024) (not b!5427623) (not b!5427245) (not bm!388529) (not b!5428283) (not b!5428138) (not d!1730804) (not d!1730878) (not b!5427675) (not d!1731010) (not b!5427901) (not b!5428329) (not b!5428327) (not b!5428216) (not d!1730902) (not bm!388471) (not b!5427157) (not d!1731114) (not b!5428199) (not b_lambda!207077) (not b!5428259) (not b!5428286) (not d!1730774) (not b!5427395) (not bm!388548) (not setNonEmpty!35391) (not bm!388556) (not d!1730978) (not b!5427888) (not b!5427493) (not b!5428351) (not b!5427920) (not d!1730942) (not b!5427397) (not b!5428287) (not bm!388638) (not b!5428343) (not b_lambda!207075) (not b!5427156) (not bm!388624) (not b!5428306) (not b!5427759) (not b!5427487) (not b!5427780) (not b!5427483) (not b!5427827) (not b!5428256) (not b!5427479) (not b!5427164) (not b!5428028) (not b!5427331) (not b!5427250) (not d!1730780) (not b!5427216) (not d!1730962) (not b!5428261) (not b!5428297) (not bm!388419) (not b!5427884) (not b!5427439) (not b!5427902) (not bm!388411) (not b!5427498) (not b!5427614) (not b!5427365) (not b!5427879) (not bs!1254123) (not d!1730782) (not b!5427200) (not b!5428038) (not d!1730696) (not b!5428253) (not bm!388615) (not b!5427324) (not b!5427392) (not b!5427350) (not b!5427624) (not b!5428310) (not b!5427428) (not b!5428246) (not b!5427855) (not b!5427220) (not bm!388494) (not b_lambda!207147) (not b!5427633) (not bm!388583) (not b!5427755) (not bm!388467) (not b!5428248) (not b!5428260) (not b!5428318) (not b!5428027) (not b!5428279) (not b!5427630) (not b!5427843) (not b!5428320) (not setNonEmpty!35399) (not d!1730756) (not d!1731014) (not d!1730724) (not bm!388442) (not b!5428311) (not bm!388655) (not b!5427246) (not b_lambda!207133) (not b!5427210) (not b!5427847) (not b!5427322) (not b!5427881) (not b!5428348) (not bm!388492) (not b!5428096) (not bm!388457) (not b!5427629) (not b!5427177) (not bm!388650) (not bm!388417) (not b!5428101) (not b!5427453) (not b!5427737) (not b!5428217) (not b!5427155) (not b!5427150) (not b_lambda!207081) (not b!5427494) (not b!5427837) (not b!5428344) (not d!1730654) (not d!1730970) (not b!5427201) (not bm!388601) (not b!5427394) (not b!5428252) (not b!5427399) (not d!1730924) (not bm!388589) (not d!1730826) (not b!5428131) (not bm!388436) (not b!5427241) (not d!1730880) (not b!5428037) (not b_lambda!207143) (not bm!388603) (not setNonEmpty!35390) (not b!5428050) (not b!5427326) (not bm!388443) (not b!5428345) (not bm!388503) (not d!1730888) (not b!5428280) (not b!5427390) (not bm!388623) (not d!1730842) (not bm!388554) (not b!5428324) (not b!5428296) (not b!5427882) (not bm!388602) (not b!5427152) (not b!5427159) (not bm!388450) (not d!1730982) (not b!5427240) (not b!5427803) (not d!1730734) (not b!5428034) (not d!1731028) (not b!5428316) (not d!1731110) (not d!1730906) (not b!5428312) (not b!5428285) (not b!5427206) (not bm!388418) (not b!5427180) (not b!5427756) (not b!5428102) (not b!5427270) (not b_lambda!207139) (not bm!388539) (not bm!388644) (not b!5428338) (not b!5428142) (not b!5428342) (not b!5428249) (not d!1730676) (not bm!388582) (not b!5427480) (not bm!388468) (not d!1730966) (not b!5427732) (not d!1730660) (not b!5427950) (not b!5427332) (not b!5427826) (not b!5428328) (not b!5428319) (not b!5428275) (not d!1730736) (not d!1730832) (not bm!388550) (not d!1730692) (not d!1730984) (not d!1730890) (not d!1730718) (not bs!1254126) (not b!5428214) (not b!5427752) (not b!5427753) (not b!5427543) (not bm!388653) (not b!5428281) (not b!5427214) (not b!5427329) (not bm!388581) (not bm!388486) (not d!1731038) (not bm!388567) (not bm!388566) (not bm!388572) (not b!5428251) (not b!5428218) (not b!5428314) (not b_lambda!207129) (not b!5427568) (not b!5427557) (not b!5428352) (not b!5427738) (not b!5428213) (not setNonEmpty!35401) (not d!1730732) (not b!5427402) (not b!5428033) (not bm!388573) (not b!5427176) (not d!1731068) (not d!1730938) (not b!5427207) (not d!1730648) (not b!5427758) (not bm!388652) (not d!1730932) (not b!5427349) (not b!5428264) (not b!5428226) (not b!5428000) (not b!5427473) (not bs!1254122) (not b!5427634) (not b!5427163) (not b!5427211) (not d!1730700) (not d!1730896) (not b!5428307) (not b_lambda!207083) (not b!5428255) (not d!1730778) (not bm!388528) (not bm!388462) (not d!1730922) (not b!5428308) (not d!1731076) (not d!1730760) (not bm!388549) (not bm!388646) (not b!5427259) (not bm!388431) (not b_lambda!207073) (not b_lambda!207137) (not d!1730766) (not b_lambda!207079) (not b!5428315) (not b_lambda!207135) (not b!5427660) (not b!5427686) (not b!5427398) (not b!5428263) (not b!5427887) (not d!1730822) tp_is_empty!39687 (not b!5427269))
(check-sat)
