; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!592164 () Bool)

(assert start!592164)

(declare-fun b!5765336 () Bool)

(assert (=> b!5765336 true))

(assert (=> b!5765336 true))

(declare-fun lambda!313082 () Int)

(declare-fun lambda!313081 () Int)

(assert (=> b!5765336 (not (= lambda!313082 lambda!313081))))

(assert (=> b!5765336 true))

(assert (=> b!5765336 true))

(declare-fun b!5765355 () Bool)

(assert (=> b!5765355 true))

(declare-fun b!5765334 () Bool)

(declare-datatypes ((Unit!156640 0))(
  ( (Unit!156641) )
))
(declare-fun e!3542212 () Unit!156640)

(declare-fun Unit!156642 () Unit!156640)

(assert (=> b!5765334 (= e!3542212 Unit!156642)))

(declare-fun b!5765335 () Bool)

(declare-fun e!3542213 () Bool)

(declare-fun e!3542217 () Bool)

(assert (=> b!5765335 (= e!3542213 (not e!3542217))))

(declare-fun res!2433157 () Bool)

(assert (=> b!5765335 (=> res!2433157 e!3542217)))

(declare-datatypes ((C!31824 0))(
  ( (C!31825 (val!25614 Int)) )
))
(declare-datatypes ((Regex!15777 0))(
  ( (ElementMatch!15777 (c!1019159 C!31824)) (Concat!24622 (regOne!32066 Regex!15777) (regTwo!32066 Regex!15777)) (EmptyExpr!15777) (Star!15777 (reg!16106 Regex!15777)) (EmptyLang!15777) (Union!15777 (regOne!32067 Regex!15777) (regTwo!32067 Regex!15777)) )
))
(declare-datatypes ((List!63630 0))(
  ( (Nil!63506) (Cons!63506 (h!69954 Regex!15777) (t!376966 List!63630)) )
))
(declare-datatypes ((Context!10322 0))(
  ( (Context!10323 (exprs!5661 List!63630)) )
))
(declare-datatypes ((List!63631 0))(
  ( (Nil!63507) (Cons!63507 (h!69955 Context!10322) (t!376967 List!63631)) )
))
(declare-fun zl!343 () List!63631)

(get-info :version)

(assert (=> b!5765335 (= res!2433157 (not ((_ is Cons!63507) zl!343)))))

(declare-fun lt!2289312 () Bool)

(declare-fun r!7292 () Regex!15777)

(declare-datatypes ((List!63632 0))(
  ( (Nil!63508) (Cons!63508 (h!69956 C!31824) (t!376968 List!63632)) )
))
(declare-fun s!2326 () List!63632)

(declare-fun matchRSpec!2880 (Regex!15777 List!63632) Bool)

(assert (=> b!5765335 (= lt!2289312 (matchRSpec!2880 r!7292 s!2326))))

(declare-fun matchR!7962 (Regex!15777 List!63632) Bool)

(assert (=> b!5765335 (= lt!2289312 (matchR!7962 r!7292 s!2326))))

(declare-fun lt!2289293 () Unit!156640)

(declare-fun mainMatchTheorem!2880 (Regex!15777 List!63632) Unit!156640)

(assert (=> b!5765335 (= lt!2289293 (mainMatchTheorem!2880 r!7292 s!2326))))

(declare-fun e!3542206 () Bool)

(assert (=> b!5765336 (= e!3542217 e!3542206)))

(declare-fun res!2433144 () Bool)

(assert (=> b!5765336 (=> res!2433144 e!3542206)))

(declare-fun lt!2289306 () Bool)

(assert (=> b!5765336 (= res!2433144 (or (not (= lt!2289312 lt!2289306)) ((_ is Nil!63508) s!2326)))))

(declare-fun Exists!2877 (Int) Bool)

(assert (=> b!5765336 (= (Exists!2877 lambda!313081) (Exists!2877 lambda!313082))))

(declare-fun lt!2289298 () Unit!156640)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1506 (Regex!15777 Regex!15777 List!63632) Unit!156640)

(assert (=> b!5765336 (= lt!2289298 (lemmaExistCutMatchRandMatchRSpecEquivalent!1506 (regOne!32066 r!7292) (regTwo!32066 r!7292) s!2326))))

(assert (=> b!5765336 (= lt!2289306 (Exists!2877 lambda!313081))))

(declare-datatypes ((tuple2!65748 0))(
  ( (tuple2!65749 (_1!36177 List!63632) (_2!36177 List!63632)) )
))
(declare-datatypes ((Option!15786 0))(
  ( (None!15785) (Some!15785 (v!51844 tuple2!65748)) )
))
(declare-fun isDefined!12489 (Option!15786) Bool)

(declare-fun findConcatSeparation!2200 (Regex!15777 Regex!15777 List!63632 List!63632 List!63632) Option!15786)

(assert (=> b!5765336 (= lt!2289306 (isDefined!12489 (findConcatSeparation!2200 (regOne!32066 r!7292) (regTwo!32066 r!7292) Nil!63508 s!2326 s!2326)))))

(declare-fun lt!2289299 () Unit!156640)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1964 (Regex!15777 Regex!15777 List!63632) Unit!156640)

(assert (=> b!5765336 (= lt!2289299 (lemmaFindConcatSeparationEquivalentToExists!1964 (regOne!32066 r!7292) (regTwo!32066 r!7292) s!2326))))

(declare-fun b!5765337 () Bool)

(declare-fun res!2433151 () Bool)

(assert (=> b!5765337 (=> (not res!2433151) (not e!3542213))))

(declare-fun unfocusZipper!1519 (List!63631) Regex!15777)

(assert (=> b!5765337 (= res!2433151 (= r!7292 (unfocusZipper!1519 zl!343)))))

(declare-fun b!5765338 () Bool)

(declare-fun res!2433150 () Bool)

(assert (=> b!5765338 (=> res!2433150 e!3542217)))

(declare-fun isEmpty!35397 (List!63631) Bool)

(assert (=> b!5765338 (= res!2433150 (not (isEmpty!35397 (t!376967 zl!343))))))

(declare-fun b!5765339 () Bool)

(declare-fun res!2433148 () Bool)

(assert (=> b!5765339 (=> res!2433148 e!3542217)))

(assert (=> b!5765339 (= res!2433148 (not ((_ is Cons!63506) (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5765340 () Bool)

(declare-fun res!2433138 () Bool)

(assert (=> b!5765340 (=> res!2433138 e!3542206)))

(declare-fun isEmpty!35398 (List!63630) Bool)

(assert (=> b!5765340 (= res!2433138 (isEmpty!35398 (t!376966 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5765341 () Bool)

(declare-fun e!3542216 () Bool)

(declare-fun e!3542215 () Bool)

(assert (=> b!5765341 (= e!3542216 e!3542215)))

(declare-fun res!2433142 () Bool)

(assert (=> b!5765341 (=> res!2433142 e!3542215)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2289297 () (InoxSet Context!10322))

(assert (=> b!5765341 (= res!2433142 (or (not (= lt!2289297 ((as const (Array Context!10322 Bool)) false))) (not (= r!7292 (Concat!24622 (regOne!32066 r!7292) (regTwo!32066 r!7292)))) (not (= (regOne!32066 r!7292) EmptyExpr!15777))))))

(declare-fun matchZipper!1915 ((InoxSet Context!10322) List!63632) Bool)

(assert (=> b!5765341 (not (matchZipper!1915 lt!2289297 (t!376968 s!2326)))))

(declare-fun lt!2289305 () Unit!156640)

(declare-fun lemmaEmptyZipperMatchesNothing!62 ((InoxSet Context!10322) List!63632) Unit!156640)

(assert (=> b!5765341 (= lt!2289305 (lemmaEmptyZipperMatchesNothing!62 lt!2289297 (t!376968 s!2326)))))

(declare-fun z!1189 () (InoxSet Context!10322))

(declare-fun b!5765342 () Bool)

(declare-fun lt!2289292 () Bool)

(declare-fun e!3542204 () Bool)

(assert (=> b!5765342 (= e!3542204 (= (matchZipper!1915 z!1189 s!2326) lt!2289292))))

(declare-fun lt!2289300 () Bool)

(assert (=> b!5765342 (= lt!2289300 lt!2289292)))

(declare-fun lt!2289310 () (InoxSet Context!10322))

(assert (=> b!5765342 (= lt!2289292 (matchZipper!1915 lt!2289310 (t!376968 s!2326)))))

(declare-fun lt!2289295 () (InoxSet Context!10322))

(assert (=> b!5765342 (= lt!2289300 (matchZipper!1915 lt!2289295 (t!376968 s!2326)))))

(declare-fun lt!2289301 () Unit!156640)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!802 ((InoxSet Context!10322) (InoxSet Context!10322) List!63632) Unit!156640)

(assert (=> b!5765342 (= lt!2289301 (lemmaZipperConcatMatchesSameAsBothZippers!802 lt!2289297 lt!2289310 (t!376968 s!2326)))))

(declare-fun b!5765343 () Bool)

(declare-fun res!2433145 () Bool)

(assert (=> b!5765343 (=> res!2433145 e!3542217)))

(assert (=> b!5765343 (= res!2433145 (or ((_ is EmptyExpr!15777) r!7292) ((_ is EmptyLang!15777) r!7292) ((_ is ElementMatch!15777) r!7292) ((_ is Union!15777) r!7292) (not ((_ is Concat!24622) r!7292))))))

(declare-fun b!5765344 () Bool)

(declare-fun e!3542218 () Bool)

(declare-fun tp!1593337 () Bool)

(assert (=> b!5765344 (= e!3542218 tp!1593337)))

(declare-fun b!5765345 () Bool)

(declare-fun e!3542210 () Bool)

(declare-fun tp_is_empty!40807 () Bool)

(assert (=> b!5765345 (= e!3542210 tp_is_empty!40807)))

(declare-fun setIsEmpty!38729 () Bool)

(declare-fun setRes!38729 () Bool)

(assert (=> setIsEmpty!38729 setRes!38729))

(declare-fun b!5765346 () Bool)

(declare-fun e!3542203 () Bool)

(assert (=> b!5765346 (= e!3542215 e!3542203)))

(declare-fun res!2433154 () Bool)

(assert (=> b!5765346 (=> res!2433154 e!3542203)))

(declare-fun lt!2289294 () Bool)

(assert (=> b!5765346 (= res!2433154 (not (= lt!2289312 lt!2289294)))))

(assert (=> b!5765346 (= lt!2289294 (matchRSpec!2880 (regTwo!32066 r!7292) s!2326))))

(assert (=> b!5765346 (= lt!2289294 (matchR!7962 (regTwo!32066 r!7292) s!2326))))

(declare-fun lt!2289302 () Unit!156640)

(assert (=> b!5765346 (= lt!2289302 (mainMatchTheorem!2880 (regTwo!32066 r!7292) s!2326))))

(assert (=> b!5765346 (= (matchR!7962 (regOne!32066 r!7292) s!2326) (matchRSpec!2880 (regOne!32066 r!7292) s!2326))))

(declare-fun lt!2289304 () Unit!156640)

(assert (=> b!5765346 (= lt!2289304 (mainMatchTheorem!2880 (regOne!32066 r!7292) s!2326))))

(declare-fun b!5765347 () Bool)

(declare-fun res!2433156 () Bool)

(assert (=> b!5765347 (=> res!2433156 e!3542216)))

(assert (=> b!5765347 (= res!2433156 (or ((_ is Concat!24622) (regOne!32066 r!7292)) ((_ is Star!15777) (regOne!32066 r!7292)) (not ((_ is EmptyExpr!15777) (regOne!32066 r!7292)))))))

(declare-fun b!5765348 () Bool)

(declare-fun Unit!156643 () Unit!156640)

(assert (=> b!5765348 (= e!3542212 Unit!156643)))

(declare-fun lt!2289311 () Unit!156640)

(assert (=> b!5765348 (= lt!2289311 (lemmaZipperConcatMatchesSameAsBothZippers!802 lt!2289297 lt!2289310 (t!376968 s!2326)))))

(declare-fun res!2433152 () Bool)

(assert (=> b!5765348 (= res!2433152 (matchZipper!1915 lt!2289297 (t!376968 s!2326)))))

(declare-fun e!3542205 () Bool)

(assert (=> b!5765348 (=> res!2433152 e!3542205)))

(assert (=> b!5765348 (= (matchZipper!1915 ((_ map or) lt!2289297 lt!2289310) (t!376968 s!2326)) e!3542205)))

(declare-fun b!5765349 () Bool)

(declare-fun res!2433143 () Bool)

(assert (=> b!5765349 (=> res!2433143 e!3542217)))

(declare-fun generalisedConcat!1392 (List!63630) Regex!15777)

(assert (=> b!5765349 (= res!2433143 (not (= r!7292 (generalisedConcat!1392 (exprs!5661 (h!69955 zl!343))))))))

(declare-fun b!5765350 () Bool)

(assert (=> b!5765350 (= e!3542205 (matchZipper!1915 lt!2289310 (t!376968 s!2326)))))

(declare-fun b!5765351 () Bool)

(declare-fun tp!1593342 () Bool)

(declare-fun tp!1593341 () Bool)

(assert (=> b!5765351 (= e!3542210 (and tp!1593342 tp!1593341))))

(declare-fun b!5765352 () Bool)

(declare-fun tp!1593338 () Bool)

(declare-fun tp!1593343 () Bool)

(assert (=> b!5765352 (= e!3542210 (and tp!1593338 tp!1593343))))

(declare-fun b!5765353 () Bool)

(declare-fun e!3542208 () Bool)

(assert (=> b!5765353 (= e!3542208 e!3542204)))

(declare-fun res!2433146 () Bool)

(assert (=> b!5765353 (=> res!2433146 e!3542204)))

(declare-fun derivationStepZipper!1856 ((InoxSet Context!10322) C!31824) (InoxSet Context!10322))

(assert (=> b!5765353 (= res!2433146 (not (= (derivationStepZipper!1856 z!1189 (h!69956 s!2326)) lt!2289295)))))

(assert (=> b!5765353 (= lt!2289295 ((_ map or) lt!2289297 lt!2289310))))

(declare-fun b!5765354 () Bool)

(assert (=> b!5765354 (= e!3542203 e!3542208)))

(declare-fun res!2433149 () Bool)

(assert (=> b!5765354 (=> res!2433149 e!3542208)))

(declare-fun lt!2289309 () (InoxSet Context!10322))

(assert (=> b!5765354 (= res!2433149 (not (= lt!2289310 (derivationStepZipper!1856 lt!2289309 (h!69956 s!2326)))))))

(declare-fun lambda!313083 () Int)

(declare-fun lt!2289296 () Context!10322)

(declare-fun flatMap!1390 ((InoxSet Context!10322) Int) (InoxSet Context!10322))

(declare-fun derivationStepZipperUp!1045 (Context!10322 C!31824) (InoxSet Context!10322))

(assert (=> b!5765354 (= (flatMap!1390 lt!2289309 lambda!313083) (derivationStepZipperUp!1045 lt!2289296 (h!69956 s!2326)))))

(declare-fun lt!2289291 () Unit!156640)

(declare-fun lemmaFlatMapOnSingletonSet!922 ((InoxSet Context!10322) Context!10322 Int) Unit!156640)

(assert (=> b!5765354 (= lt!2289291 (lemmaFlatMapOnSingletonSet!922 lt!2289309 lt!2289296 lambda!313083))))

(assert (=> b!5765354 (= lt!2289309 (store ((as const (Array Context!10322 Bool)) false) lt!2289296 true))))

(assert (=> b!5765355 (= e!3542206 e!3542216)))

(declare-fun res!2433139 () Bool)

(assert (=> b!5765355 (=> res!2433139 e!3542216)))

(assert (=> b!5765355 (= res!2433139 (or (and ((_ is ElementMatch!15777) (regOne!32066 r!7292)) (= (c!1019159 (regOne!32066 r!7292)) (h!69956 s!2326))) ((_ is Union!15777) (regOne!32066 r!7292))))))

(declare-fun lt!2289308 () Unit!156640)

(assert (=> b!5765355 (= lt!2289308 e!3542212)))

(declare-fun c!1019158 () Bool)

(declare-fun nullable!5809 (Regex!15777) Bool)

(assert (=> b!5765355 (= c!1019158 (nullable!5809 (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(assert (=> b!5765355 (= (flatMap!1390 z!1189 lambda!313083) (derivationStepZipperUp!1045 (h!69955 zl!343) (h!69956 s!2326)))))

(declare-fun lt!2289307 () Unit!156640)

(assert (=> b!5765355 (= lt!2289307 (lemmaFlatMapOnSingletonSet!922 z!1189 (h!69955 zl!343) lambda!313083))))

(assert (=> b!5765355 (= lt!2289310 (derivationStepZipperUp!1045 lt!2289296 (h!69956 s!2326)))))

(declare-fun derivationStepZipperDown!1119 (Regex!15777 Context!10322 C!31824) (InoxSet Context!10322))

(assert (=> b!5765355 (= lt!2289297 (derivationStepZipperDown!1119 (h!69954 (exprs!5661 (h!69955 zl!343))) lt!2289296 (h!69956 s!2326)))))

(assert (=> b!5765355 (= lt!2289296 (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun lt!2289303 () (InoxSet Context!10322))

(assert (=> b!5765355 (= lt!2289303 (derivationStepZipperUp!1045 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))) (h!69956 s!2326)))))

(declare-fun b!5765356 () Bool)

(declare-fun e!3542214 () Bool)

(declare-fun tp!1593345 () Bool)

(assert (=> b!5765356 (= e!3542214 (and tp_is_empty!40807 tp!1593345))))

(declare-fun b!5765357 () Bool)

(declare-fun res!2433153 () Bool)

(assert (=> b!5765357 (=> res!2433153 e!3542217)))

(declare-fun generalisedUnion!1640 (List!63630) Regex!15777)

(declare-fun unfocusZipperList!1205 (List!63631) List!63630)

(assert (=> b!5765357 (= res!2433153 (not (= r!7292 (generalisedUnion!1640 (unfocusZipperList!1205 zl!343)))))))

(declare-fun b!5765358 () Bool)

(declare-fun tp!1593346 () Bool)

(assert (=> b!5765358 (= e!3542210 tp!1593346)))

(declare-fun b!5765359 () Bool)

(declare-fun e!3542209 () Bool)

(assert (=> b!5765359 (= e!3542209 (nullable!5809 (regOne!32066 (regOne!32066 r!7292))))))

(declare-fun b!5765360 () Bool)

(declare-fun res!2433140 () Bool)

(assert (=> b!5765360 (=> res!2433140 e!3542216)))

(assert (=> b!5765360 (= res!2433140 e!3542209)))

(declare-fun res!2433147 () Bool)

(assert (=> b!5765360 (=> (not res!2433147) (not e!3542209))))

(assert (=> b!5765360 (= res!2433147 ((_ is Concat!24622) (regOne!32066 r!7292)))))

(declare-fun res!2433141 () Bool)

(assert (=> start!592164 (=> (not res!2433141) (not e!3542213))))

(declare-fun validRegex!7513 (Regex!15777) Bool)

(assert (=> start!592164 (= res!2433141 (validRegex!7513 r!7292))))

(assert (=> start!592164 e!3542213))

(assert (=> start!592164 e!3542210))

(declare-fun condSetEmpty!38729 () Bool)

(assert (=> start!592164 (= condSetEmpty!38729 (= z!1189 ((as const (Array Context!10322 Bool)) false)))))

(assert (=> start!592164 setRes!38729))

(declare-fun e!3542207 () Bool)

(assert (=> start!592164 e!3542207))

(assert (=> start!592164 e!3542214))

(declare-fun b!5765361 () Bool)

(declare-fun res!2433155 () Bool)

(assert (=> b!5765361 (=> (not res!2433155) (not e!3542213))))

(declare-fun toList!9561 ((InoxSet Context!10322)) List!63631)

(assert (=> b!5765361 (= res!2433155 (= (toList!9561 z!1189) zl!343))))

(declare-fun tp!1593339 () Bool)

(declare-fun setNonEmpty!38729 () Bool)

(declare-fun setElem!38729 () Context!10322)

(declare-fun inv!82689 (Context!10322) Bool)

(assert (=> setNonEmpty!38729 (= setRes!38729 (and tp!1593339 (inv!82689 setElem!38729) e!3542218))))

(declare-fun setRest!38729 () (InoxSet Context!10322))

(assert (=> setNonEmpty!38729 (= z!1189 ((_ map or) (store ((as const (Array Context!10322 Bool)) false) setElem!38729 true) setRest!38729))))

(declare-fun b!5765362 () Bool)

(declare-fun e!3542211 () Bool)

(declare-fun tp!1593340 () Bool)

(assert (=> b!5765362 (= e!3542211 tp!1593340)))

(declare-fun b!5765363 () Bool)

(declare-fun tp!1593344 () Bool)

(assert (=> b!5765363 (= e!3542207 (and (inv!82689 (h!69955 zl!343)) e!3542211 tp!1593344))))

(assert (= (and start!592164 res!2433141) b!5765361))

(assert (= (and b!5765361 res!2433155) b!5765337))

(assert (= (and b!5765337 res!2433151) b!5765335))

(assert (= (and b!5765335 (not res!2433157)) b!5765338))

(assert (= (and b!5765338 (not res!2433150)) b!5765349))

(assert (= (and b!5765349 (not res!2433143)) b!5765339))

(assert (= (and b!5765339 (not res!2433148)) b!5765357))

(assert (= (and b!5765357 (not res!2433153)) b!5765343))

(assert (= (and b!5765343 (not res!2433145)) b!5765336))

(assert (= (and b!5765336 (not res!2433144)) b!5765340))

(assert (= (and b!5765340 (not res!2433138)) b!5765355))

(assert (= (and b!5765355 c!1019158) b!5765348))

(assert (= (and b!5765355 (not c!1019158)) b!5765334))

(assert (= (and b!5765348 (not res!2433152)) b!5765350))

(assert (= (and b!5765355 (not res!2433139)) b!5765360))

(assert (= (and b!5765360 res!2433147) b!5765359))

(assert (= (and b!5765360 (not res!2433140)) b!5765347))

(assert (= (and b!5765347 (not res!2433156)) b!5765341))

(assert (= (and b!5765341 (not res!2433142)) b!5765346))

(assert (= (and b!5765346 (not res!2433154)) b!5765354))

(assert (= (and b!5765354 (not res!2433149)) b!5765353))

(assert (= (and b!5765353 (not res!2433146)) b!5765342))

(assert (= (and start!592164 ((_ is ElementMatch!15777) r!7292)) b!5765345))

(assert (= (and start!592164 ((_ is Concat!24622) r!7292)) b!5765352))

(assert (= (and start!592164 ((_ is Star!15777) r!7292)) b!5765358))

(assert (= (and start!592164 ((_ is Union!15777) r!7292)) b!5765351))

(assert (= (and start!592164 condSetEmpty!38729) setIsEmpty!38729))

(assert (= (and start!592164 (not condSetEmpty!38729)) setNonEmpty!38729))

(assert (= setNonEmpty!38729 b!5765344))

(assert (= b!5765363 b!5765362))

(assert (= (and start!592164 ((_ is Cons!63507) zl!343)) b!5765363))

(assert (= (and start!592164 ((_ is Cons!63508) s!2326)) b!5765356))

(declare-fun m!6711484 () Bool)

(assert (=> b!5765335 m!6711484))

(declare-fun m!6711486 () Bool)

(assert (=> b!5765335 m!6711486))

(declare-fun m!6711488 () Bool)

(assert (=> b!5765335 m!6711488))

(declare-fun m!6711490 () Bool)

(assert (=> b!5765353 m!6711490))

(declare-fun m!6711492 () Bool)

(assert (=> b!5765350 m!6711492))

(declare-fun m!6711494 () Bool)

(assert (=> b!5765341 m!6711494))

(declare-fun m!6711496 () Bool)

(assert (=> b!5765341 m!6711496))

(declare-fun m!6711498 () Bool)

(assert (=> b!5765340 m!6711498))

(declare-fun m!6711500 () Bool)

(assert (=> b!5765355 m!6711500))

(declare-fun m!6711502 () Bool)

(assert (=> b!5765355 m!6711502))

(declare-fun m!6711504 () Bool)

(assert (=> b!5765355 m!6711504))

(declare-fun m!6711506 () Bool)

(assert (=> b!5765355 m!6711506))

(declare-fun m!6711508 () Bool)

(assert (=> b!5765355 m!6711508))

(declare-fun m!6711510 () Bool)

(assert (=> b!5765355 m!6711510))

(declare-fun m!6711512 () Bool)

(assert (=> b!5765355 m!6711512))

(declare-fun m!6711514 () Bool)

(assert (=> b!5765346 m!6711514))

(declare-fun m!6711516 () Bool)

(assert (=> b!5765346 m!6711516))

(declare-fun m!6711518 () Bool)

(assert (=> b!5765346 m!6711518))

(declare-fun m!6711520 () Bool)

(assert (=> b!5765346 m!6711520))

(declare-fun m!6711522 () Bool)

(assert (=> b!5765346 m!6711522))

(declare-fun m!6711524 () Bool)

(assert (=> b!5765346 m!6711524))

(declare-fun m!6711526 () Bool)

(assert (=> b!5765337 m!6711526))

(declare-fun m!6711528 () Bool)

(assert (=> b!5765349 m!6711528))

(declare-fun m!6711530 () Bool)

(assert (=> setNonEmpty!38729 m!6711530))

(declare-fun m!6711532 () Bool)

(assert (=> b!5765361 m!6711532))

(declare-fun m!6711534 () Bool)

(assert (=> b!5765363 m!6711534))

(declare-fun m!6711536 () Bool)

(assert (=> b!5765348 m!6711536))

(assert (=> b!5765348 m!6711494))

(declare-fun m!6711538 () Bool)

(assert (=> b!5765348 m!6711538))

(declare-fun m!6711540 () Bool)

(assert (=> start!592164 m!6711540))

(declare-fun m!6711542 () Bool)

(assert (=> b!5765357 m!6711542))

(assert (=> b!5765357 m!6711542))

(declare-fun m!6711544 () Bool)

(assert (=> b!5765357 m!6711544))

(declare-fun m!6711546 () Bool)

(assert (=> b!5765354 m!6711546))

(declare-fun m!6711548 () Bool)

(assert (=> b!5765354 m!6711548))

(assert (=> b!5765354 m!6711506))

(declare-fun m!6711550 () Bool)

(assert (=> b!5765354 m!6711550))

(declare-fun m!6711552 () Bool)

(assert (=> b!5765354 m!6711552))

(declare-fun m!6711554 () Bool)

(assert (=> b!5765338 m!6711554))

(declare-fun m!6711556 () Bool)

(assert (=> b!5765336 m!6711556))

(declare-fun m!6711558 () Bool)

(assert (=> b!5765336 m!6711558))

(declare-fun m!6711560 () Bool)

(assert (=> b!5765336 m!6711560))

(declare-fun m!6711562 () Bool)

(assert (=> b!5765336 m!6711562))

(assert (=> b!5765336 m!6711556))

(declare-fun m!6711564 () Bool)

(assert (=> b!5765336 m!6711564))

(assert (=> b!5765336 m!6711558))

(declare-fun m!6711566 () Bool)

(assert (=> b!5765336 m!6711566))

(declare-fun m!6711568 () Bool)

(assert (=> b!5765359 m!6711568))

(declare-fun m!6711570 () Bool)

(assert (=> b!5765342 m!6711570))

(assert (=> b!5765342 m!6711492))

(declare-fun m!6711572 () Bool)

(assert (=> b!5765342 m!6711572))

(assert (=> b!5765342 m!6711536))

(check-sat (not b!5765356) (not b!5765357) (not b!5765354) (not b!5765340) (not b!5765335) (not b!5765348) (not b!5765355) (not b!5765344) (not b!5765349) (not b!5765336) (not b!5765363) (not b!5765338) (not b!5765337) (not b!5765353) (not b!5765361) (not b!5765342) (not b!5765346) (not b!5765358) (not b!5765350) (not b!5765352) tp_is_empty!40807 (not b!5765359) (not b!5765362) (not b!5765351) (not setNonEmpty!38729) (not b!5765341) (not start!592164))
(check-sat)
(get-model)

(declare-fun bs!1352401 () Bool)

(declare-fun d!1816316 () Bool)

(assert (= bs!1352401 (and d!1816316 b!5765355)))

(declare-fun lambda!313086 () Int)

(assert (=> bs!1352401 (= lambda!313086 lambda!313083)))

(assert (=> d!1816316 true))

(assert (=> d!1816316 (= (derivationStepZipper!1856 z!1189 (h!69956 s!2326)) (flatMap!1390 z!1189 lambda!313086))))

(declare-fun bs!1352402 () Bool)

(assert (= bs!1352402 d!1816316))

(declare-fun m!6711574 () Bool)

(assert (=> bs!1352402 m!6711574))

(assert (=> b!5765353 d!1816316))

(declare-fun d!1816318 () Bool)

(declare-fun lambda!313089 () Int)

(declare-fun forall!14894 (List!63630 Int) Bool)

(assert (=> d!1816318 (= (inv!82689 (h!69955 zl!343)) (forall!14894 (exprs!5661 (h!69955 zl!343)) lambda!313089))))

(declare-fun bs!1352403 () Bool)

(assert (= bs!1352403 d!1816318))

(declare-fun m!6711576 () Bool)

(assert (=> bs!1352403 m!6711576))

(assert (=> b!5765363 d!1816318))

(declare-fun d!1816320 () Bool)

(declare-fun c!1019164 () Bool)

(declare-fun isEmpty!35400 (List!63632) Bool)

(assert (=> d!1816320 (= c!1019164 (isEmpty!35400 s!2326))))

(declare-fun e!3542221 () Bool)

(assert (=> d!1816320 (= (matchZipper!1915 z!1189 s!2326) e!3542221)))

(declare-fun b!5765376 () Bool)

(declare-fun nullableZipper!1704 ((InoxSet Context!10322)) Bool)

(assert (=> b!5765376 (= e!3542221 (nullableZipper!1704 z!1189))))

(declare-fun b!5765377 () Bool)

(declare-fun head!12189 (List!63632) C!31824)

(declare-fun tail!11284 (List!63632) List!63632)

(assert (=> b!5765377 (= e!3542221 (matchZipper!1915 (derivationStepZipper!1856 z!1189 (head!12189 s!2326)) (tail!11284 s!2326)))))

(assert (= (and d!1816320 c!1019164) b!5765376))

(assert (= (and d!1816320 (not c!1019164)) b!5765377))

(declare-fun m!6711578 () Bool)

(assert (=> d!1816320 m!6711578))

(declare-fun m!6711580 () Bool)

(assert (=> b!5765376 m!6711580))

(declare-fun m!6711582 () Bool)

(assert (=> b!5765377 m!6711582))

(assert (=> b!5765377 m!6711582))

(declare-fun m!6711584 () Bool)

(assert (=> b!5765377 m!6711584))

(declare-fun m!6711586 () Bool)

(assert (=> b!5765377 m!6711586))

(assert (=> b!5765377 m!6711584))

(assert (=> b!5765377 m!6711586))

(declare-fun m!6711588 () Bool)

(assert (=> b!5765377 m!6711588))

(assert (=> b!5765342 d!1816320))

(declare-fun d!1816322 () Bool)

(declare-fun c!1019165 () Bool)

(assert (=> d!1816322 (= c!1019165 (isEmpty!35400 (t!376968 s!2326)))))

(declare-fun e!3542222 () Bool)

(assert (=> d!1816322 (= (matchZipper!1915 lt!2289310 (t!376968 s!2326)) e!3542222)))

(declare-fun b!5765378 () Bool)

(assert (=> b!5765378 (= e!3542222 (nullableZipper!1704 lt!2289310))))

(declare-fun b!5765379 () Bool)

(assert (=> b!5765379 (= e!3542222 (matchZipper!1915 (derivationStepZipper!1856 lt!2289310 (head!12189 (t!376968 s!2326))) (tail!11284 (t!376968 s!2326))))))

(assert (= (and d!1816322 c!1019165) b!5765378))

(assert (= (and d!1816322 (not c!1019165)) b!5765379))

(declare-fun m!6711590 () Bool)

(assert (=> d!1816322 m!6711590))

(declare-fun m!6711592 () Bool)

(assert (=> b!5765378 m!6711592))

(declare-fun m!6711594 () Bool)

(assert (=> b!5765379 m!6711594))

(assert (=> b!5765379 m!6711594))

(declare-fun m!6711596 () Bool)

(assert (=> b!5765379 m!6711596))

(declare-fun m!6711598 () Bool)

(assert (=> b!5765379 m!6711598))

(assert (=> b!5765379 m!6711596))

(assert (=> b!5765379 m!6711598))

(declare-fun m!6711600 () Bool)

(assert (=> b!5765379 m!6711600))

(assert (=> b!5765342 d!1816322))

(declare-fun d!1816324 () Bool)

(declare-fun c!1019166 () Bool)

(assert (=> d!1816324 (= c!1019166 (isEmpty!35400 (t!376968 s!2326)))))

(declare-fun e!3542223 () Bool)

(assert (=> d!1816324 (= (matchZipper!1915 lt!2289295 (t!376968 s!2326)) e!3542223)))

(declare-fun b!5765380 () Bool)

(assert (=> b!5765380 (= e!3542223 (nullableZipper!1704 lt!2289295))))

(declare-fun b!5765381 () Bool)

(assert (=> b!5765381 (= e!3542223 (matchZipper!1915 (derivationStepZipper!1856 lt!2289295 (head!12189 (t!376968 s!2326))) (tail!11284 (t!376968 s!2326))))))

(assert (= (and d!1816324 c!1019166) b!5765380))

(assert (= (and d!1816324 (not c!1019166)) b!5765381))

(assert (=> d!1816324 m!6711590))

(declare-fun m!6711602 () Bool)

(assert (=> b!5765380 m!6711602))

(assert (=> b!5765381 m!6711594))

(assert (=> b!5765381 m!6711594))

(declare-fun m!6711604 () Bool)

(assert (=> b!5765381 m!6711604))

(assert (=> b!5765381 m!6711598))

(assert (=> b!5765381 m!6711604))

(assert (=> b!5765381 m!6711598))

(declare-fun m!6711606 () Bool)

(assert (=> b!5765381 m!6711606))

(assert (=> b!5765342 d!1816324))

(declare-fun e!3542229 () Bool)

(declare-fun d!1816326 () Bool)

(assert (=> d!1816326 (= (matchZipper!1915 ((_ map or) lt!2289297 lt!2289310) (t!376968 s!2326)) e!3542229)))

(declare-fun res!2433163 () Bool)

(assert (=> d!1816326 (=> res!2433163 e!3542229)))

(assert (=> d!1816326 (= res!2433163 (matchZipper!1915 lt!2289297 (t!376968 s!2326)))))

(declare-fun lt!2289318 () Unit!156640)

(declare-fun choose!43724 ((InoxSet Context!10322) (InoxSet Context!10322) List!63632) Unit!156640)

(assert (=> d!1816326 (= lt!2289318 (choose!43724 lt!2289297 lt!2289310 (t!376968 s!2326)))))

(assert (=> d!1816326 (= (lemmaZipperConcatMatchesSameAsBothZippers!802 lt!2289297 lt!2289310 (t!376968 s!2326)) lt!2289318)))

(declare-fun b!5765389 () Bool)

(assert (=> b!5765389 (= e!3542229 (matchZipper!1915 lt!2289310 (t!376968 s!2326)))))

(assert (= (and d!1816326 (not res!2433163)) b!5765389))

(assert (=> d!1816326 m!6711538))

(assert (=> d!1816326 m!6711494))

(declare-fun m!6711616 () Bool)

(assert (=> d!1816326 m!6711616))

(assert (=> b!5765389 m!6711492))

(assert (=> b!5765342 d!1816326))

(declare-fun bs!1352406 () Bool)

(declare-fun d!1816334 () Bool)

(assert (= bs!1352406 (and d!1816334 d!1816318)))

(declare-fun lambda!313093 () Int)

(assert (=> bs!1352406 (= lambda!313093 lambda!313089)))

(assert (=> d!1816334 (= (inv!82689 setElem!38729) (forall!14894 (exprs!5661 setElem!38729) lambda!313093))))

(declare-fun bs!1352407 () Bool)

(assert (= bs!1352407 d!1816334))

(declare-fun m!6711618 () Bool)

(assert (=> bs!1352407 m!6711618))

(assert (=> setNonEmpty!38729 d!1816334))

(declare-fun d!1816336 () Bool)

(declare-fun e!3542248 () Bool)

(assert (=> d!1816336 e!3542248))

(declare-fun res!2433178 () Bool)

(assert (=> d!1816336 (=> (not res!2433178) (not e!3542248))))

(declare-fun lt!2289321 () List!63631)

(declare-fun noDuplicate!1684 (List!63631) Bool)

(assert (=> d!1816336 (= res!2433178 (noDuplicate!1684 lt!2289321))))

(declare-fun choose!43725 ((InoxSet Context!10322)) List!63631)

(assert (=> d!1816336 (= lt!2289321 (choose!43725 z!1189))))

(assert (=> d!1816336 (= (toList!9561 z!1189) lt!2289321)))

(declare-fun b!5765420 () Bool)

(declare-fun content!11593 (List!63631) (InoxSet Context!10322))

(assert (=> b!5765420 (= e!3542248 (= (content!11593 lt!2289321) z!1189))))

(assert (= (and d!1816336 res!2433178) b!5765420))

(declare-fun m!6711620 () Bool)

(assert (=> d!1816336 m!6711620))

(declare-fun m!6711622 () Bool)

(assert (=> d!1816336 m!6711622))

(declare-fun m!6711624 () Bool)

(assert (=> b!5765420 m!6711624))

(assert (=> b!5765361 d!1816336))

(assert (=> b!5765350 d!1816322))

(declare-fun b!5765458 () Bool)

(declare-fun res!2433197 () Bool)

(declare-fun e!3542278 () Bool)

(assert (=> b!5765458 (=> res!2433197 e!3542278)))

(assert (=> b!5765458 (= res!2433197 (not ((_ is Concat!24622) r!7292)))))

(declare-fun e!3542276 () Bool)

(assert (=> b!5765458 (= e!3542276 e!3542278)))

(declare-fun b!5765460 () Bool)

(declare-fun e!3542279 () Bool)

(declare-fun e!3542275 () Bool)

(assert (=> b!5765460 (= e!3542279 e!3542275)))

(declare-fun res!2433200 () Bool)

(assert (=> b!5765460 (= res!2433200 (not (nullable!5809 (reg!16106 r!7292))))))

(assert (=> b!5765460 (=> (not res!2433200) (not e!3542275))))

(declare-fun b!5765461 () Bool)

(declare-fun res!2433199 () Bool)

(declare-fun e!3542274 () Bool)

(assert (=> b!5765461 (=> (not res!2433199) (not e!3542274))))

(declare-fun call!442792 () Bool)

(assert (=> b!5765461 (= res!2433199 call!442792)))

(assert (=> b!5765461 (= e!3542276 e!3542274)))

(declare-fun b!5765462 () Bool)

(assert (=> b!5765462 (= e!3542279 e!3542276)))

(declare-fun c!1019187 () Bool)

(assert (=> b!5765462 (= c!1019187 ((_ is Union!15777) r!7292))))

(declare-fun b!5765463 () Bool)

(declare-fun e!3542280 () Bool)

(assert (=> b!5765463 (= e!3542278 e!3542280)))

(declare-fun res!2433198 () Bool)

(assert (=> b!5765463 (=> (not res!2433198) (not e!3542280))))

(assert (=> b!5765463 (= res!2433198 call!442792)))

(declare-fun b!5765464 () Bool)

(declare-fun call!442793 () Bool)

(assert (=> b!5765464 (= e!3542274 call!442793)))

(declare-fun c!1019188 () Bool)

(declare-fun call!442791 () Bool)

(declare-fun bm!442786 () Bool)

(assert (=> bm!442786 (= call!442791 (validRegex!7513 (ite c!1019188 (reg!16106 r!7292) (ite c!1019187 (regTwo!32067 r!7292) (regTwo!32066 r!7292)))))))

(declare-fun b!5765465 () Bool)

(assert (=> b!5765465 (= e!3542280 call!442793)))

(declare-fun b!5765466 () Bool)

(declare-fun e!3542277 () Bool)

(assert (=> b!5765466 (= e!3542277 e!3542279)))

(assert (=> b!5765466 (= c!1019188 ((_ is Star!15777) r!7292))))

(declare-fun bm!442787 () Bool)

(assert (=> bm!442787 (= call!442793 call!442791)))

(declare-fun bm!442788 () Bool)

(assert (=> bm!442788 (= call!442792 (validRegex!7513 (ite c!1019187 (regOne!32067 r!7292) (regOne!32066 r!7292))))))

(declare-fun b!5765459 () Bool)

(assert (=> b!5765459 (= e!3542275 call!442791)))

(declare-fun d!1816338 () Bool)

(declare-fun res!2433196 () Bool)

(assert (=> d!1816338 (=> res!2433196 e!3542277)))

(assert (=> d!1816338 (= res!2433196 ((_ is ElementMatch!15777) r!7292))))

(assert (=> d!1816338 (= (validRegex!7513 r!7292) e!3542277)))

(assert (= (and d!1816338 (not res!2433196)) b!5765466))

(assert (= (and b!5765466 c!1019188) b!5765460))

(assert (= (and b!5765466 (not c!1019188)) b!5765462))

(assert (= (and b!5765460 res!2433200) b!5765459))

(assert (= (and b!5765462 c!1019187) b!5765461))

(assert (= (and b!5765462 (not c!1019187)) b!5765458))

(assert (= (and b!5765461 res!2433199) b!5765464))

(assert (= (and b!5765458 (not res!2433197)) b!5765463))

(assert (= (and b!5765463 res!2433198) b!5765465))

(assert (= (or b!5765464 b!5765465) bm!442787))

(assert (= (or b!5765461 b!5765463) bm!442788))

(assert (= (or b!5765459 bm!442787) bm!442786))

(declare-fun m!6711634 () Bool)

(assert (=> b!5765460 m!6711634))

(declare-fun m!6711636 () Bool)

(assert (=> bm!442786 m!6711636))

(declare-fun m!6711638 () Bool)

(assert (=> bm!442788 m!6711638))

(assert (=> start!592164 d!1816338))

(declare-fun d!1816342 () Bool)

(declare-fun c!1019193 () Bool)

(assert (=> d!1816342 (= c!1019193 (isEmpty!35400 (t!376968 s!2326)))))

(declare-fun e!3542293 () Bool)

(assert (=> d!1816342 (= (matchZipper!1915 lt!2289297 (t!376968 s!2326)) e!3542293)))

(declare-fun b!5765491 () Bool)

(assert (=> b!5765491 (= e!3542293 (nullableZipper!1704 lt!2289297))))

(declare-fun b!5765492 () Bool)

(assert (=> b!5765492 (= e!3542293 (matchZipper!1915 (derivationStepZipper!1856 lt!2289297 (head!12189 (t!376968 s!2326))) (tail!11284 (t!376968 s!2326))))))

(assert (= (and d!1816342 c!1019193) b!5765491))

(assert (= (and d!1816342 (not c!1019193)) b!5765492))

(assert (=> d!1816342 m!6711590))

(declare-fun m!6711640 () Bool)

(assert (=> b!5765491 m!6711640))

(assert (=> b!5765492 m!6711594))

(assert (=> b!5765492 m!6711594))

(declare-fun m!6711642 () Bool)

(assert (=> b!5765492 m!6711642))

(assert (=> b!5765492 m!6711598))

(assert (=> b!5765492 m!6711642))

(assert (=> b!5765492 m!6711598))

(declare-fun m!6711644 () Bool)

(assert (=> b!5765492 m!6711644))

(assert (=> b!5765341 d!1816342))

(declare-fun d!1816344 () Bool)

(assert (=> d!1816344 (not (matchZipper!1915 lt!2289297 (t!376968 s!2326)))))

(declare-fun lt!2289330 () Unit!156640)

(declare-fun choose!43726 ((InoxSet Context!10322) List!63632) Unit!156640)

(assert (=> d!1816344 (= lt!2289330 (choose!43726 lt!2289297 (t!376968 s!2326)))))

(assert (=> d!1816344 (= lt!2289297 ((as const (Array Context!10322 Bool)) false))))

(assert (=> d!1816344 (= (lemmaEmptyZipperMatchesNothing!62 lt!2289297 (t!376968 s!2326)) lt!2289330)))

(declare-fun bs!1352413 () Bool)

(assert (= bs!1352413 d!1816344))

(assert (=> bs!1352413 m!6711494))

(declare-fun m!6711662 () Bool)

(assert (=> bs!1352413 m!6711662))

(assert (=> b!5765341 d!1816344))

(declare-fun bs!1352417 () Bool)

(declare-fun d!1816352 () Bool)

(assert (= bs!1352417 (and d!1816352 d!1816318)))

(declare-fun lambda!313102 () Int)

(assert (=> bs!1352417 (= lambda!313102 lambda!313089)))

(declare-fun bs!1352418 () Bool)

(assert (= bs!1352418 (and d!1816352 d!1816334)))

(assert (=> bs!1352418 (= lambda!313102 lambda!313093)))

(declare-fun e!3542346 () Bool)

(assert (=> d!1816352 e!3542346))

(declare-fun res!2433237 () Bool)

(assert (=> d!1816352 (=> (not res!2433237) (not e!3542346))))

(declare-fun lt!2289335 () Regex!15777)

(assert (=> d!1816352 (= res!2433237 (validRegex!7513 lt!2289335))))

(declare-fun e!3542344 () Regex!15777)

(assert (=> d!1816352 (= lt!2289335 e!3542344)))

(declare-fun c!1019230 () Bool)

(declare-fun e!3542343 () Bool)

(assert (=> d!1816352 (= c!1019230 e!3542343)))

(declare-fun res!2433236 () Bool)

(assert (=> d!1816352 (=> (not res!2433236) (not e!3542343))))

(assert (=> d!1816352 (= res!2433236 ((_ is Cons!63506) (exprs!5661 (h!69955 zl!343))))))

(assert (=> d!1816352 (forall!14894 (exprs!5661 (h!69955 zl!343)) lambda!313102)))

(assert (=> d!1816352 (= (generalisedConcat!1392 (exprs!5661 (h!69955 zl!343))) lt!2289335)))

(declare-fun b!5765580 () Bool)

(declare-fun e!3542345 () Regex!15777)

(assert (=> b!5765580 (= e!3542345 EmptyExpr!15777)))

(declare-fun b!5765581 () Bool)

(declare-fun e!3542348 () Bool)

(declare-fun e!3542347 () Bool)

(assert (=> b!5765581 (= e!3542348 e!3542347)))

(declare-fun c!1019229 () Bool)

(declare-fun tail!11285 (List!63630) List!63630)

(assert (=> b!5765581 (= c!1019229 (isEmpty!35398 (tail!11285 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5765582 () Bool)

(assert (=> b!5765582 (= e!3542346 e!3542348)))

(declare-fun c!1019231 () Bool)

(assert (=> b!5765582 (= c!1019231 (isEmpty!35398 (exprs!5661 (h!69955 zl!343))))))

(declare-fun b!5765583 () Bool)

(assert (=> b!5765583 (= e!3542344 (h!69954 (exprs!5661 (h!69955 zl!343))))))

(declare-fun b!5765584 () Bool)

(declare-fun isEmptyExpr!1262 (Regex!15777) Bool)

(assert (=> b!5765584 (= e!3542348 (isEmptyExpr!1262 lt!2289335))))

(declare-fun b!5765585 () Bool)

(assert (=> b!5765585 (= e!3542343 (isEmpty!35398 (t!376966 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5765586 () Bool)

(assert (=> b!5765586 (= e!3542344 e!3542345)))

(declare-fun c!1019228 () Bool)

(assert (=> b!5765586 (= c!1019228 ((_ is Cons!63506) (exprs!5661 (h!69955 zl!343))))))

(declare-fun b!5765587 () Bool)

(assert (=> b!5765587 (= e!3542345 (Concat!24622 (h!69954 (exprs!5661 (h!69955 zl!343))) (generalisedConcat!1392 (t!376966 (exprs!5661 (h!69955 zl!343))))))))

(declare-fun b!5765588 () Bool)

(declare-fun head!12190 (List!63630) Regex!15777)

(assert (=> b!5765588 (= e!3542347 (= lt!2289335 (head!12190 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5765589 () Bool)

(declare-fun isConcat!785 (Regex!15777) Bool)

(assert (=> b!5765589 (= e!3542347 (isConcat!785 lt!2289335))))

(assert (= (and d!1816352 res!2433236) b!5765585))

(assert (= (and d!1816352 c!1019230) b!5765583))

(assert (= (and d!1816352 (not c!1019230)) b!5765586))

(assert (= (and b!5765586 c!1019228) b!5765587))

(assert (= (and b!5765586 (not c!1019228)) b!5765580))

(assert (= (and d!1816352 res!2433237) b!5765582))

(assert (= (and b!5765582 c!1019231) b!5765584))

(assert (= (and b!5765582 (not c!1019231)) b!5765581))

(assert (= (and b!5765581 c!1019229) b!5765588))

(assert (= (and b!5765581 (not c!1019229)) b!5765589))

(declare-fun m!6711698 () Bool)

(assert (=> b!5765582 m!6711698))

(declare-fun m!6711700 () Bool)

(assert (=> b!5765584 m!6711700))

(declare-fun m!6711702 () Bool)

(assert (=> b!5765588 m!6711702))

(declare-fun m!6711704 () Bool)

(assert (=> b!5765589 m!6711704))

(assert (=> b!5765585 m!6711498))

(declare-fun m!6711706 () Bool)

(assert (=> b!5765587 m!6711706))

(declare-fun m!6711708 () Bool)

(assert (=> b!5765581 m!6711708))

(assert (=> b!5765581 m!6711708))

(declare-fun m!6711710 () Bool)

(assert (=> b!5765581 m!6711710))

(declare-fun m!6711712 () Bool)

(assert (=> d!1816352 m!6711712))

(declare-fun m!6711714 () Bool)

(assert (=> d!1816352 m!6711714))

(assert (=> b!5765349 d!1816352))

(declare-fun d!1816368 () Bool)

(assert (=> d!1816368 (= (isEmpty!35398 (t!376966 (exprs!5661 (h!69955 zl!343)))) ((_ is Nil!63506) (t!376966 (exprs!5661 (h!69955 zl!343)))))))

(assert (=> b!5765340 d!1816368))

(declare-fun d!1816370 () Bool)

(assert (=> d!1816370 (= (isEmpty!35397 (t!376967 zl!343)) ((_ is Nil!63507) (t!376967 zl!343)))))

(assert (=> b!5765338 d!1816370))

(declare-fun d!1816374 () Bool)

(declare-fun nullableFct!1850 (Regex!15777) Bool)

(assert (=> d!1816374 (= (nullable!5809 (regOne!32066 (regOne!32066 r!7292))) (nullableFct!1850 (regOne!32066 (regOne!32066 r!7292))))))

(declare-fun bs!1352419 () Bool)

(assert (= bs!1352419 d!1816374))

(declare-fun m!6711740 () Bool)

(assert (=> bs!1352419 m!6711740))

(assert (=> b!5765359 d!1816374))

(assert (=> b!5765348 d!1816326))

(assert (=> b!5765348 d!1816342))

(declare-fun d!1816380 () Bool)

(declare-fun c!1019239 () Bool)

(assert (=> d!1816380 (= c!1019239 (isEmpty!35400 (t!376968 s!2326)))))

(declare-fun e!3542357 () Bool)

(assert (=> d!1816380 (= (matchZipper!1915 ((_ map or) lt!2289297 lt!2289310) (t!376968 s!2326)) e!3542357)))

(declare-fun b!5765605 () Bool)

(assert (=> b!5765605 (= e!3542357 (nullableZipper!1704 ((_ map or) lt!2289297 lt!2289310)))))

(declare-fun b!5765606 () Bool)

(assert (=> b!5765606 (= e!3542357 (matchZipper!1915 (derivationStepZipper!1856 ((_ map or) lt!2289297 lt!2289310) (head!12189 (t!376968 s!2326))) (tail!11284 (t!376968 s!2326))))))

(assert (= (and d!1816380 c!1019239) b!5765605))

(assert (= (and d!1816380 (not c!1019239)) b!5765606))

(assert (=> d!1816380 m!6711590))

(declare-fun m!6711742 () Bool)

(assert (=> b!5765605 m!6711742))

(assert (=> b!5765606 m!6711594))

(assert (=> b!5765606 m!6711594))

(declare-fun m!6711744 () Bool)

(assert (=> b!5765606 m!6711744))

(assert (=> b!5765606 m!6711598))

(assert (=> b!5765606 m!6711744))

(assert (=> b!5765606 m!6711598))

(declare-fun m!6711746 () Bool)

(assert (=> b!5765606 m!6711746))

(assert (=> b!5765348 d!1816380))

(declare-fun bs!1352440 () Bool)

(declare-fun d!1816382 () Bool)

(assert (= bs!1352440 (and d!1816382 d!1816318)))

(declare-fun lambda!313109 () Int)

(assert (=> bs!1352440 (= lambda!313109 lambda!313089)))

(declare-fun bs!1352441 () Bool)

(assert (= bs!1352441 (and d!1816382 d!1816334)))

(assert (=> bs!1352441 (= lambda!313109 lambda!313093)))

(declare-fun bs!1352442 () Bool)

(assert (= bs!1352442 (and d!1816382 d!1816352)))

(assert (=> bs!1352442 (= lambda!313109 lambda!313102)))

(declare-fun b!5765707 () Bool)

(declare-fun e!3542425 () Bool)

(declare-fun lt!2289346 () Regex!15777)

(declare-fun isEmptyLang!1272 (Regex!15777) Bool)

(assert (=> b!5765707 (= e!3542425 (isEmptyLang!1272 lt!2289346))))

(declare-fun b!5765708 () Bool)

(declare-fun e!3542426 () Regex!15777)

(assert (=> b!5765708 (= e!3542426 (Union!15777 (h!69954 (unfocusZipperList!1205 zl!343)) (generalisedUnion!1640 (t!376966 (unfocusZipperList!1205 zl!343)))))))

(declare-fun b!5765709 () Bool)

(declare-fun e!3542424 () Bool)

(assert (=> b!5765709 (= e!3542424 (isEmpty!35398 (t!376966 (unfocusZipperList!1205 zl!343))))))

(declare-fun b!5765710 () Bool)

(declare-fun e!3542423 () Regex!15777)

(assert (=> b!5765710 (= e!3542423 (h!69954 (unfocusZipperList!1205 zl!343)))))

(declare-fun b!5765711 () Bool)

(declare-fun e!3542427 () Bool)

(assert (=> b!5765711 (= e!3542427 e!3542425)))

(declare-fun c!1019269 () Bool)

(assert (=> b!5765711 (= c!1019269 (isEmpty!35398 (unfocusZipperList!1205 zl!343)))))

(declare-fun b!5765712 () Bool)

(assert (=> b!5765712 (= e!3542426 EmptyLang!15777)))

(assert (=> d!1816382 e!3542427))

(declare-fun res!2433283 () Bool)

(assert (=> d!1816382 (=> (not res!2433283) (not e!3542427))))

(assert (=> d!1816382 (= res!2433283 (validRegex!7513 lt!2289346))))

(assert (=> d!1816382 (= lt!2289346 e!3542423)))

(declare-fun c!1019271 () Bool)

(assert (=> d!1816382 (= c!1019271 e!3542424)))

(declare-fun res!2433284 () Bool)

(assert (=> d!1816382 (=> (not res!2433284) (not e!3542424))))

(assert (=> d!1816382 (= res!2433284 ((_ is Cons!63506) (unfocusZipperList!1205 zl!343)))))

(assert (=> d!1816382 (forall!14894 (unfocusZipperList!1205 zl!343) lambda!313109)))

(assert (=> d!1816382 (= (generalisedUnion!1640 (unfocusZipperList!1205 zl!343)) lt!2289346)))

(declare-fun b!5765713 () Bool)

(declare-fun e!3542422 () Bool)

(assert (=> b!5765713 (= e!3542422 (= lt!2289346 (head!12190 (unfocusZipperList!1205 zl!343))))))

(declare-fun b!5765714 () Bool)

(declare-fun isUnion!702 (Regex!15777) Bool)

(assert (=> b!5765714 (= e!3542422 (isUnion!702 lt!2289346))))

(declare-fun b!5765715 () Bool)

(assert (=> b!5765715 (= e!3542425 e!3542422)))

(declare-fun c!1019270 () Bool)

(assert (=> b!5765715 (= c!1019270 (isEmpty!35398 (tail!11285 (unfocusZipperList!1205 zl!343))))))

(declare-fun b!5765716 () Bool)

(assert (=> b!5765716 (= e!3542423 e!3542426)))

(declare-fun c!1019268 () Bool)

(assert (=> b!5765716 (= c!1019268 ((_ is Cons!63506) (unfocusZipperList!1205 zl!343)))))

(assert (= (and d!1816382 res!2433284) b!5765709))

(assert (= (and d!1816382 c!1019271) b!5765710))

(assert (= (and d!1816382 (not c!1019271)) b!5765716))

(assert (= (and b!5765716 c!1019268) b!5765708))

(assert (= (and b!5765716 (not c!1019268)) b!5765712))

(assert (= (and d!1816382 res!2433283) b!5765711))

(assert (= (and b!5765711 c!1019269) b!5765707))

(assert (= (and b!5765711 (not c!1019269)) b!5765715))

(assert (= (and b!5765715 c!1019270) b!5765713))

(assert (= (and b!5765715 (not c!1019270)) b!5765714))

(declare-fun m!6711788 () Bool)

(assert (=> b!5765707 m!6711788))

(assert (=> b!5765713 m!6711542))

(declare-fun m!6711790 () Bool)

(assert (=> b!5765713 m!6711790))

(declare-fun m!6711792 () Bool)

(assert (=> b!5765714 m!6711792))

(assert (=> b!5765715 m!6711542))

(declare-fun m!6711794 () Bool)

(assert (=> b!5765715 m!6711794))

(assert (=> b!5765715 m!6711794))

(declare-fun m!6711796 () Bool)

(assert (=> b!5765715 m!6711796))

(assert (=> b!5765711 m!6711542))

(declare-fun m!6711798 () Bool)

(assert (=> b!5765711 m!6711798))

(declare-fun m!6711800 () Bool)

(assert (=> b!5765708 m!6711800))

(declare-fun m!6711802 () Bool)

(assert (=> b!5765709 m!6711802))

(declare-fun m!6711804 () Bool)

(assert (=> d!1816382 m!6711804))

(assert (=> d!1816382 m!6711542))

(declare-fun m!6711806 () Bool)

(assert (=> d!1816382 m!6711806))

(assert (=> b!5765357 d!1816382))

(declare-fun bs!1352450 () Bool)

(declare-fun d!1816404 () Bool)

(assert (= bs!1352450 (and d!1816404 d!1816318)))

(declare-fun lambda!313119 () Int)

(assert (=> bs!1352450 (= lambda!313119 lambda!313089)))

(declare-fun bs!1352451 () Bool)

(assert (= bs!1352451 (and d!1816404 d!1816334)))

(assert (=> bs!1352451 (= lambda!313119 lambda!313093)))

(declare-fun bs!1352452 () Bool)

(assert (= bs!1352452 (and d!1816404 d!1816352)))

(assert (=> bs!1352452 (= lambda!313119 lambda!313102)))

(declare-fun bs!1352453 () Bool)

(assert (= bs!1352453 (and d!1816404 d!1816382)))

(assert (=> bs!1352453 (= lambda!313119 lambda!313109)))

(declare-fun lt!2289353 () List!63630)

(assert (=> d!1816404 (forall!14894 lt!2289353 lambda!313119)))

(declare-fun e!3542448 () List!63630)

(assert (=> d!1816404 (= lt!2289353 e!3542448)))

(declare-fun c!1019286 () Bool)

(assert (=> d!1816404 (= c!1019286 ((_ is Cons!63507) zl!343))))

(assert (=> d!1816404 (= (unfocusZipperList!1205 zl!343) lt!2289353)))

(declare-fun b!5765751 () Bool)

(assert (=> b!5765751 (= e!3542448 (Cons!63506 (generalisedConcat!1392 (exprs!5661 (h!69955 zl!343))) (unfocusZipperList!1205 (t!376967 zl!343))))))

(declare-fun b!5765752 () Bool)

(assert (=> b!5765752 (= e!3542448 Nil!63506)))

(assert (= (and d!1816404 c!1019286) b!5765751))

(assert (= (and d!1816404 (not c!1019286)) b!5765752))

(declare-fun m!6711842 () Bool)

(assert (=> d!1816404 m!6711842))

(assert (=> b!5765751 m!6711528))

(declare-fun m!6711844 () Bool)

(assert (=> b!5765751 m!6711844))

(assert (=> b!5765357 d!1816404))

(declare-fun bs!1352460 () Bool)

(declare-fun b!5765851 () Bool)

(assert (= bs!1352460 (and b!5765851 b!5765336)))

(declare-fun lambda!313130 () Int)

(assert (=> bs!1352460 (not (= lambda!313130 lambda!313081))))

(assert (=> bs!1352460 (not (= lambda!313130 lambda!313082))))

(assert (=> b!5765851 true))

(assert (=> b!5765851 true))

(declare-fun bs!1352461 () Bool)

(declare-fun b!5765848 () Bool)

(assert (= bs!1352461 (and b!5765848 b!5765336)))

(declare-fun lambda!313131 () Int)

(assert (=> bs!1352461 (not (= lambda!313131 lambda!313081))))

(assert (=> bs!1352461 (= (and (= (regOne!32066 (regOne!32066 r!7292)) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32066 r!7292)) (regTwo!32066 r!7292))) (= lambda!313131 lambda!313082))))

(declare-fun bs!1352462 () Bool)

(assert (= bs!1352462 (and b!5765848 b!5765851)))

(assert (=> bs!1352462 (not (= lambda!313131 lambda!313130))))

(assert (=> b!5765848 true))

(assert (=> b!5765848 true))

(declare-fun b!5765841 () Bool)

(declare-fun c!1019316 () Bool)

(assert (=> b!5765841 (= c!1019316 ((_ is Union!15777) (regOne!32066 r!7292)))))

(declare-fun e!3542502 () Bool)

(declare-fun e!3542503 () Bool)

(assert (=> b!5765841 (= e!3542502 e!3542503)))

(declare-fun b!5765842 () Bool)

(declare-fun e!3542501 () Bool)

(assert (=> b!5765842 (= e!3542503 e!3542501)))

(declare-fun res!2433323 () Bool)

(assert (=> b!5765842 (= res!2433323 (matchRSpec!2880 (regOne!32067 (regOne!32066 r!7292)) s!2326))))

(assert (=> b!5765842 (=> res!2433323 e!3542501)))

(declare-fun c!1019315 () Bool)

(declare-fun call!442840 () Bool)

(declare-fun bm!442834 () Bool)

(assert (=> bm!442834 (= call!442840 (Exists!2877 (ite c!1019315 lambda!313130 lambda!313131)))))

(declare-fun bm!442835 () Bool)

(declare-fun call!442839 () Bool)

(assert (=> bm!442835 (= call!442839 (isEmpty!35400 s!2326))))

(declare-fun b!5765844 () Bool)

(assert (=> b!5765844 (= e!3542501 (matchRSpec!2880 (regTwo!32067 (regOne!32066 r!7292)) s!2326))))

(declare-fun b!5765845 () Bool)

(declare-fun e!3542499 () Bool)

(assert (=> b!5765845 (= e!3542499 call!442839)))

(declare-fun b!5765846 () Bool)

(declare-fun e!3542500 () Bool)

(assert (=> b!5765846 (= e!3542503 e!3542500)))

(assert (=> b!5765846 (= c!1019315 ((_ is Star!15777) (regOne!32066 r!7292)))))

(declare-fun b!5765847 () Bool)

(declare-fun res!2433324 () Bool)

(declare-fun e!3542505 () Bool)

(assert (=> b!5765847 (=> res!2433324 e!3542505)))

(assert (=> b!5765847 (= res!2433324 call!442839)))

(assert (=> b!5765847 (= e!3542500 e!3542505)))

(assert (=> b!5765848 (= e!3542500 call!442840)))

(declare-fun b!5765849 () Bool)

(declare-fun e!3542504 () Bool)

(assert (=> b!5765849 (= e!3542499 e!3542504)))

(declare-fun res!2433325 () Bool)

(assert (=> b!5765849 (= res!2433325 (not ((_ is EmptyLang!15777) (regOne!32066 r!7292))))))

(assert (=> b!5765849 (=> (not res!2433325) (not e!3542504))))

(declare-fun b!5765850 () Bool)

(assert (=> b!5765850 (= e!3542502 (= s!2326 (Cons!63508 (c!1019159 (regOne!32066 r!7292)) Nil!63508)))))

(assert (=> b!5765851 (= e!3542505 call!442840)))

(declare-fun b!5765843 () Bool)

(declare-fun c!1019318 () Bool)

(assert (=> b!5765843 (= c!1019318 ((_ is ElementMatch!15777) (regOne!32066 r!7292)))))

(assert (=> b!5765843 (= e!3542504 e!3542502)))

(declare-fun d!1816418 () Bool)

(declare-fun c!1019317 () Bool)

(assert (=> d!1816418 (= c!1019317 ((_ is EmptyExpr!15777) (regOne!32066 r!7292)))))

(assert (=> d!1816418 (= (matchRSpec!2880 (regOne!32066 r!7292) s!2326) e!3542499)))

(assert (= (and d!1816418 c!1019317) b!5765845))

(assert (= (and d!1816418 (not c!1019317)) b!5765849))

(assert (= (and b!5765849 res!2433325) b!5765843))

(assert (= (and b!5765843 c!1019318) b!5765850))

(assert (= (and b!5765843 (not c!1019318)) b!5765841))

(assert (= (and b!5765841 c!1019316) b!5765842))

(assert (= (and b!5765841 (not c!1019316)) b!5765846))

(assert (= (and b!5765842 (not res!2433323)) b!5765844))

(assert (= (and b!5765846 c!1019315) b!5765847))

(assert (= (and b!5765846 (not c!1019315)) b!5765848))

(assert (= (and b!5765847 (not res!2433324)) b!5765851))

(assert (= (or b!5765851 b!5765848) bm!442834))

(assert (= (or b!5765845 b!5765847) bm!442835))

(declare-fun m!6711894 () Bool)

(assert (=> b!5765842 m!6711894))

(declare-fun m!6711898 () Bool)

(assert (=> bm!442834 m!6711898))

(assert (=> bm!442835 m!6711578))

(declare-fun m!6711900 () Bool)

(assert (=> b!5765844 m!6711900))

(assert (=> b!5765346 d!1816418))

(declare-fun d!1816432 () Bool)

(assert (=> d!1816432 (= (matchR!7962 (regOne!32066 r!7292) s!2326) (matchRSpec!2880 (regOne!32066 r!7292) s!2326))))

(declare-fun lt!2289376 () Unit!156640)

(declare-fun choose!43727 (Regex!15777 List!63632) Unit!156640)

(assert (=> d!1816432 (= lt!2289376 (choose!43727 (regOne!32066 r!7292) s!2326))))

(assert (=> d!1816432 (validRegex!7513 (regOne!32066 r!7292))))

(assert (=> d!1816432 (= (mainMatchTheorem!2880 (regOne!32066 r!7292) s!2326) lt!2289376)))

(declare-fun bs!1352465 () Bool)

(assert (= bs!1352465 d!1816432))

(assert (=> bs!1352465 m!6711520))

(assert (=> bs!1352465 m!6711522))

(declare-fun m!6711902 () Bool)

(assert (=> bs!1352465 m!6711902))

(declare-fun m!6711904 () Bool)

(assert (=> bs!1352465 m!6711904))

(assert (=> b!5765346 d!1816432))

(declare-fun b!5765903 () Bool)

(declare-fun e!3542537 () Bool)

(declare-fun e!3542533 () Bool)

(assert (=> b!5765903 (= e!3542537 e!3542533)))

(declare-fun res!2433359 () Bool)

(assert (=> b!5765903 (=> res!2433359 e!3542533)))

(declare-fun call!442843 () Bool)

(assert (=> b!5765903 (= res!2433359 call!442843)))

(declare-fun bm!442838 () Bool)

(assert (=> bm!442838 (= call!442843 (isEmpty!35400 s!2326))))

(declare-fun b!5765905 () Bool)

(assert (=> b!5765905 (= e!3542533 (not (= (head!12189 s!2326) (c!1019159 (regOne!32066 r!7292)))))))

(declare-fun b!5765906 () Bool)

(declare-fun res!2433360 () Bool)

(declare-fun e!3542536 () Bool)

(assert (=> b!5765906 (=> res!2433360 e!3542536)))

(declare-fun e!3542538 () Bool)

(assert (=> b!5765906 (= res!2433360 e!3542538)))

(declare-fun res!2433362 () Bool)

(assert (=> b!5765906 (=> (not res!2433362) (not e!3542538))))

(declare-fun lt!2289385 () Bool)

(assert (=> b!5765906 (= res!2433362 lt!2289385)))

(declare-fun b!5765907 () Bool)

(assert (=> b!5765907 (= e!3542536 e!3542537)))

(declare-fun res!2433361 () Bool)

(assert (=> b!5765907 (=> (not res!2433361) (not e!3542537))))

(assert (=> b!5765907 (= res!2433361 (not lt!2289385))))

(declare-fun b!5765908 () Bool)

(declare-fun res!2433363 () Bool)

(assert (=> b!5765908 (=> (not res!2433363) (not e!3542538))))

(assert (=> b!5765908 (= res!2433363 (isEmpty!35400 (tail!11284 s!2326)))))

(declare-fun b!5765909 () Bool)

(declare-fun res!2433364 () Bool)

(assert (=> b!5765909 (=> (not res!2433364) (not e!3542538))))

(assert (=> b!5765909 (= res!2433364 (not call!442843))))

(declare-fun b!5765910 () Bool)

(declare-fun e!3542534 () Bool)

(declare-fun e!3542535 () Bool)

(assert (=> b!5765910 (= e!3542534 e!3542535)))

(declare-fun c!1019328 () Bool)

(assert (=> b!5765910 (= c!1019328 ((_ is EmptyLang!15777) (regOne!32066 r!7292)))))

(declare-fun b!5765911 () Bool)

(assert (=> b!5765911 (= e!3542534 (= lt!2289385 call!442843))))

(declare-fun b!5765912 () Bool)

(declare-fun e!3542532 () Bool)

(declare-fun derivativeStep!4558 (Regex!15777 C!31824) Regex!15777)

(assert (=> b!5765912 (= e!3542532 (matchR!7962 (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 s!2326)) (tail!11284 s!2326)))))

(declare-fun d!1816434 () Bool)

(assert (=> d!1816434 e!3542534))

(declare-fun c!1019330 () Bool)

(assert (=> d!1816434 (= c!1019330 ((_ is EmptyExpr!15777) (regOne!32066 r!7292)))))

(assert (=> d!1816434 (= lt!2289385 e!3542532)))

(declare-fun c!1019329 () Bool)

(assert (=> d!1816434 (= c!1019329 (isEmpty!35400 s!2326))))

(assert (=> d!1816434 (validRegex!7513 (regOne!32066 r!7292))))

(assert (=> d!1816434 (= (matchR!7962 (regOne!32066 r!7292) s!2326) lt!2289385)))

(declare-fun b!5765904 () Bool)

(assert (=> b!5765904 (= e!3542535 (not lt!2289385))))

(declare-fun b!5765913 () Bool)

(assert (=> b!5765913 (= e!3542538 (= (head!12189 s!2326) (c!1019159 (regOne!32066 r!7292))))))

(declare-fun b!5765914 () Bool)

(assert (=> b!5765914 (= e!3542532 (nullable!5809 (regOne!32066 r!7292)))))

(declare-fun b!5765915 () Bool)

(declare-fun res!2433366 () Bool)

(assert (=> b!5765915 (=> res!2433366 e!3542533)))

(assert (=> b!5765915 (= res!2433366 (not (isEmpty!35400 (tail!11284 s!2326))))))

(declare-fun b!5765916 () Bool)

(declare-fun res!2433365 () Bool)

(assert (=> b!5765916 (=> res!2433365 e!3542536)))

(assert (=> b!5765916 (= res!2433365 (not ((_ is ElementMatch!15777) (regOne!32066 r!7292))))))

(assert (=> b!5765916 (= e!3542535 e!3542536)))

(assert (= (and d!1816434 c!1019329) b!5765914))

(assert (= (and d!1816434 (not c!1019329)) b!5765912))

(assert (= (and d!1816434 c!1019330) b!5765911))

(assert (= (and d!1816434 (not c!1019330)) b!5765910))

(assert (= (and b!5765910 c!1019328) b!5765904))

(assert (= (and b!5765910 (not c!1019328)) b!5765916))

(assert (= (and b!5765916 (not res!2433365)) b!5765906))

(assert (= (and b!5765906 res!2433362) b!5765909))

(assert (= (and b!5765909 res!2433364) b!5765908))

(assert (= (and b!5765908 res!2433363) b!5765913))

(assert (= (and b!5765906 (not res!2433360)) b!5765907))

(assert (= (and b!5765907 res!2433361) b!5765903))

(assert (= (and b!5765903 (not res!2433359)) b!5765915))

(assert (= (and b!5765915 (not res!2433366)) b!5765905))

(assert (= (or b!5765911 b!5765903 b!5765909) bm!442838))

(assert (=> b!5765915 m!6711586))

(assert (=> b!5765915 m!6711586))

(declare-fun m!6711928 () Bool)

(assert (=> b!5765915 m!6711928))

(assert (=> b!5765912 m!6711582))

(assert (=> b!5765912 m!6711582))

(declare-fun m!6711930 () Bool)

(assert (=> b!5765912 m!6711930))

(assert (=> b!5765912 m!6711586))

(assert (=> b!5765912 m!6711930))

(assert (=> b!5765912 m!6711586))

(declare-fun m!6711932 () Bool)

(assert (=> b!5765912 m!6711932))

(assert (=> b!5765913 m!6711582))

(assert (=> b!5765908 m!6711586))

(assert (=> b!5765908 m!6711586))

(assert (=> b!5765908 m!6711928))

(assert (=> bm!442838 m!6711578))

(declare-fun m!6711934 () Bool)

(assert (=> b!5765914 m!6711934))

(assert (=> d!1816434 m!6711578))

(assert (=> d!1816434 m!6711904))

(assert (=> b!5765905 m!6711582))

(assert (=> b!5765346 d!1816434))

(declare-fun bs!1352490 () Bool)

(declare-fun b!5765954 () Bool)

(assert (= bs!1352490 (and b!5765954 b!5765336)))

(declare-fun lambda!313142 () Int)

(assert (=> bs!1352490 (not (= lambda!313142 lambda!313081))))

(assert (=> bs!1352490 (not (= lambda!313142 lambda!313082))))

(declare-fun bs!1352491 () Bool)

(assert (= bs!1352491 (and b!5765954 b!5765851)))

(assert (=> bs!1352491 (= (and (= (reg!16106 (regTwo!32066 r!7292)) (reg!16106 (regOne!32066 r!7292))) (= (regTwo!32066 r!7292) (regOne!32066 r!7292))) (= lambda!313142 lambda!313130))))

(declare-fun bs!1352492 () Bool)

(assert (= bs!1352492 (and b!5765954 b!5765848)))

(assert (=> bs!1352492 (not (= lambda!313142 lambda!313131))))

(assert (=> b!5765954 true))

(assert (=> b!5765954 true))

(declare-fun bs!1352495 () Bool)

(declare-fun b!5765951 () Bool)

(assert (= bs!1352495 (and b!5765951 b!5765336)))

(declare-fun lambda!313143 () Int)

(assert (=> bs!1352495 (not (= lambda!313143 lambda!313081))))

(declare-fun bs!1352496 () Bool)

(assert (= bs!1352496 (and b!5765951 b!5765954)))

(assert (=> bs!1352496 (not (= lambda!313143 lambda!313142))))

(assert (=> bs!1352495 (= (and (= (regOne!32066 (regTwo!32066 r!7292)) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32066 r!7292)) (regTwo!32066 r!7292))) (= lambda!313143 lambda!313082))))

(declare-fun bs!1352497 () Bool)

(assert (= bs!1352497 (and b!5765951 b!5765848)))

(assert (=> bs!1352497 (= (and (= (regOne!32066 (regTwo!32066 r!7292)) (regOne!32066 (regOne!32066 r!7292))) (= (regTwo!32066 (regTwo!32066 r!7292)) (regTwo!32066 (regOne!32066 r!7292)))) (= lambda!313143 lambda!313131))))

(declare-fun bs!1352498 () Bool)

(assert (= bs!1352498 (and b!5765951 b!5765851)))

(assert (=> bs!1352498 (not (= lambda!313143 lambda!313130))))

(assert (=> b!5765951 true))

(assert (=> b!5765951 true))

(declare-fun b!5765942 () Bool)

(declare-fun c!1019332 () Bool)

(assert (=> b!5765942 (= c!1019332 ((_ is Union!15777) (regTwo!32066 r!7292)))))

(declare-fun e!3542549 () Bool)

(declare-fun e!3542550 () Bool)

(assert (=> b!5765942 (= e!3542549 e!3542550)))

(declare-fun b!5765943 () Bool)

(declare-fun e!3542548 () Bool)

(assert (=> b!5765943 (= e!3542550 e!3542548)))

(declare-fun res!2433367 () Bool)

(assert (=> b!5765943 (= res!2433367 (matchRSpec!2880 (regOne!32067 (regTwo!32066 r!7292)) s!2326))))

(assert (=> b!5765943 (=> res!2433367 e!3542548)))

(declare-fun call!442845 () Bool)

(declare-fun c!1019331 () Bool)

(declare-fun bm!442839 () Bool)

(assert (=> bm!442839 (= call!442845 (Exists!2877 (ite c!1019331 lambda!313142 lambda!313143)))))

(declare-fun bm!442840 () Bool)

(declare-fun call!442844 () Bool)

(assert (=> bm!442840 (= call!442844 (isEmpty!35400 s!2326))))

(declare-fun b!5765947 () Bool)

(assert (=> b!5765947 (= e!3542548 (matchRSpec!2880 (regTwo!32067 (regTwo!32066 r!7292)) s!2326))))

(declare-fun b!5765948 () Bool)

(declare-fun e!3542546 () Bool)

(assert (=> b!5765948 (= e!3542546 call!442844)))

(declare-fun b!5765949 () Bool)

(declare-fun e!3542547 () Bool)

(assert (=> b!5765949 (= e!3542550 e!3542547)))

(assert (=> b!5765949 (= c!1019331 ((_ is Star!15777) (regTwo!32066 r!7292)))))

(declare-fun b!5765950 () Bool)

(declare-fun res!2433368 () Bool)

(declare-fun e!3542552 () Bool)

(assert (=> b!5765950 (=> res!2433368 e!3542552)))

(assert (=> b!5765950 (= res!2433368 call!442844)))

(assert (=> b!5765950 (= e!3542547 e!3542552)))

(assert (=> b!5765951 (= e!3542547 call!442845)))

(declare-fun b!5765952 () Bool)

(declare-fun e!3542551 () Bool)

(assert (=> b!5765952 (= e!3542546 e!3542551)))

(declare-fun res!2433369 () Bool)

(assert (=> b!5765952 (= res!2433369 (not ((_ is EmptyLang!15777) (regTwo!32066 r!7292))))))

(assert (=> b!5765952 (=> (not res!2433369) (not e!3542551))))

(declare-fun b!5765953 () Bool)

(assert (=> b!5765953 (= e!3542549 (= s!2326 (Cons!63508 (c!1019159 (regTwo!32066 r!7292)) Nil!63508)))))

(assert (=> b!5765954 (= e!3542552 call!442845)))

(declare-fun b!5765946 () Bool)

(declare-fun c!1019334 () Bool)

(assert (=> b!5765946 (= c!1019334 ((_ is ElementMatch!15777) (regTwo!32066 r!7292)))))

(assert (=> b!5765946 (= e!3542551 e!3542549)))

(declare-fun d!1816446 () Bool)

(declare-fun c!1019333 () Bool)

(assert (=> d!1816446 (= c!1019333 ((_ is EmptyExpr!15777) (regTwo!32066 r!7292)))))

(assert (=> d!1816446 (= (matchRSpec!2880 (regTwo!32066 r!7292) s!2326) e!3542546)))

(assert (= (and d!1816446 c!1019333) b!5765948))

(assert (= (and d!1816446 (not c!1019333)) b!5765952))

(assert (= (and b!5765952 res!2433369) b!5765946))

(assert (= (and b!5765946 c!1019334) b!5765953))

(assert (= (and b!5765946 (not c!1019334)) b!5765942))

(assert (= (and b!5765942 c!1019332) b!5765943))

(assert (= (and b!5765942 (not c!1019332)) b!5765949))

(assert (= (and b!5765943 (not res!2433367)) b!5765947))

(assert (= (and b!5765949 c!1019331) b!5765950))

(assert (= (and b!5765949 (not c!1019331)) b!5765951))

(assert (= (and b!5765950 (not res!2433368)) b!5765954))

(assert (= (or b!5765954 b!5765951) bm!442839))

(assert (= (or b!5765948 b!5765950) bm!442840))

(declare-fun m!6711940 () Bool)

(assert (=> b!5765943 m!6711940))

(declare-fun m!6711942 () Bool)

(assert (=> bm!442839 m!6711942))

(assert (=> bm!442840 m!6711578))

(declare-fun m!6711944 () Bool)

(assert (=> b!5765947 m!6711944))

(assert (=> b!5765346 d!1816446))

(declare-fun b!5765982 () Bool)

(declare-fun e!3542574 () Bool)

(declare-fun e!3542570 () Bool)

(assert (=> b!5765982 (= e!3542574 e!3542570)))

(declare-fun res!2433370 () Bool)

(assert (=> b!5765982 (=> res!2433370 e!3542570)))

(declare-fun call!442846 () Bool)

(assert (=> b!5765982 (= res!2433370 call!442846)))

(declare-fun bm!442841 () Bool)

(assert (=> bm!442841 (= call!442846 (isEmpty!35400 s!2326))))

(declare-fun b!5765984 () Bool)

(assert (=> b!5765984 (= e!3542570 (not (= (head!12189 s!2326) (c!1019159 (regTwo!32066 r!7292)))))))

(declare-fun b!5765985 () Bool)

(declare-fun res!2433371 () Bool)

(declare-fun e!3542573 () Bool)

(assert (=> b!5765985 (=> res!2433371 e!3542573)))

(declare-fun e!3542575 () Bool)

(assert (=> b!5765985 (= res!2433371 e!3542575)))

(declare-fun res!2433373 () Bool)

(assert (=> b!5765985 (=> (not res!2433373) (not e!3542575))))

(declare-fun lt!2289387 () Bool)

(assert (=> b!5765985 (= res!2433373 lt!2289387)))

(declare-fun b!5765986 () Bool)

(assert (=> b!5765986 (= e!3542573 e!3542574)))

(declare-fun res!2433372 () Bool)

(assert (=> b!5765986 (=> (not res!2433372) (not e!3542574))))

(assert (=> b!5765986 (= res!2433372 (not lt!2289387))))

(declare-fun b!5765987 () Bool)

(declare-fun res!2433374 () Bool)

(assert (=> b!5765987 (=> (not res!2433374) (not e!3542575))))

(assert (=> b!5765987 (= res!2433374 (isEmpty!35400 (tail!11284 s!2326)))))

(declare-fun b!5765988 () Bool)

(declare-fun res!2433375 () Bool)

(assert (=> b!5765988 (=> (not res!2433375) (not e!3542575))))

(assert (=> b!5765988 (= res!2433375 (not call!442846))))

(declare-fun b!5765989 () Bool)

(declare-fun e!3542571 () Bool)

(declare-fun e!3542572 () Bool)

(assert (=> b!5765989 (= e!3542571 e!3542572)))

(declare-fun c!1019335 () Bool)

(assert (=> b!5765989 (= c!1019335 ((_ is EmptyLang!15777) (regTwo!32066 r!7292)))))

(declare-fun b!5765990 () Bool)

(assert (=> b!5765990 (= e!3542571 (= lt!2289387 call!442846))))

(declare-fun b!5765991 () Bool)

(declare-fun e!3542569 () Bool)

(assert (=> b!5765991 (= e!3542569 (matchR!7962 (derivativeStep!4558 (regTwo!32066 r!7292) (head!12189 s!2326)) (tail!11284 s!2326)))))

(declare-fun d!1816452 () Bool)

(assert (=> d!1816452 e!3542571))

(declare-fun c!1019337 () Bool)

(assert (=> d!1816452 (= c!1019337 ((_ is EmptyExpr!15777) (regTwo!32066 r!7292)))))

(assert (=> d!1816452 (= lt!2289387 e!3542569)))

(declare-fun c!1019336 () Bool)

(assert (=> d!1816452 (= c!1019336 (isEmpty!35400 s!2326))))

(assert (=> d!1816452 (validRegex!7513 (regTwo!32066 r!7292))))

(assert (=> d!1816452 (= (matchR!7962 (regTwo!32066 r!7292) s!2326) lt!2289387)))

(declare-fun b!5765983 () Bool)

(assert (=> b!5765983 (= e!3542572 (not lt!2289387))))

(declare-fun b!5765992 () Bool)

(assert (=> b!5765992 (= e!3542575 (= (head!12189 s!2326) (c!1019159 (regTwo!32066 r!7292))))))

(declare-fun b!5765993 () Bool)

(assert (=> b!5765993 (= e!3542569 (nullable!5809 (regTwo!32066 r!7292)))))

(declare-fun b!5765994 () Bool)

(declare-fun res!2433377 () Bool)

(assert (=> b!5765994 (=> res!2433377 e!3542570)))

(assert (=> b!5765994 (= res!2433377 (not (isEmpty!35400 (tail!11284 s!2326))))))

(declare-fun b!5765995 () Bool)

(declare-fun res!2433376 () Bool)

(assert (=> b!5765995 (=> res!2433376 e!3542573)))

(assert (=> b!5765995 (= res!2433376 (not ((_ is ElementMatch!15777) (regTwo!32066 r!7292))))))

(assert (=> b!5765995 (= e!3542572 e!3542573)))

(assert (= (and d!1816452 c!1019336) b!5765993))

(assert (= (and d!1816452 (not c!1019336)) b!5765991))

(assert (= (and d!1816452 c!1019337) b!5765990))

(assert (= (and d!1816452 (not c!1019337)) b!5765989))

(assert (= (and b!5765989 c!1019335) b!5765983))

(assert (= (and b!5765989 (not c!1019335)) b!5765995))

(assert (= (and b!5765995 (not res!2433376)) b!5765985))

(assert (= (and b!5765985 res!2433373) b!5765988))

(assert (= (and b!5765988 res!2433375) b!5765987))

(assert (= (and b!5765987 res!2433374) b!5765992))

(assert (= (and b!5765985 (not res!2433371)) b!5765986))

(assert (= (and b!5765986 res!2433372) b!5765982))

(assert (= (and b!5765982 (not res!2433370)) b!5765994))

(assert (= (and b!5765994 (not res!2433377)) b!5765984))

(assert (= (or b!5765990 b!5765982 b!5765988) bm!442841))

(assert (=> b!5765994 m!6711586))

(assert (=> b!5765994 m!6711586))

(assert (=> b!5765994 m!6711928))

(assert (=> b!5765991 m!6711582))

(assert (=> b!5765991 m!6711582))

(declare-fun m!6711946 () Bool)

(assert (=> b!5765991 m!6711946))

(assert (=> b!5765991 m!6711586))

(assert (=> b!5765991 m!6711946))

(assert (=> b!5765991 m!6711586))

(declare-fun m!6711948 () Bool)

(assert (=> b!5765991 m!6711948))

(assert (=> b!5765992 m!6711582))

(assert (=> b!5765987 m!6711586))

(assert (=> b!5765987 m!6711586))

(assert (=> b!5765987 m!6711928))

(assert (=> bm!442841 m!6711578))

(declare-fun m!6711950 () Bool)

(assert (=> b!5765993 m!6711950))

(assert (=> d!1816452 m!6711578))

(declare-fun m!6711952 () Bool)

(assert (=> d!1816452 m!6711952))

(assert (=> b!5765984 m!6711582))

(assert (=> b!5765346 d!1816452))

(declare-fun d!1816454 () Bool)

(assert (=> d!1816454 (= (matchR!7962 (regTwo!32066 r!7292) s!2326) (matchRSpec!2880 (regTwo!32066 r!7292) s!2326))))

(declare-fun lt!2289388 () Unit!156640)

(assert (=> d!1816454 (= lt!2289388 (choose!43727 (regTwo!32066 r!7292) s!2326))))

(assert (=> d!1816454 (validRegex!7513 (regTwo!32066 r!7292))))

(assert (=> d!1816454 (= (mainMatchTheorem!2880 (regTwo!32066 r!7292) s!2326) lt!2289388)))

(declare-fun bs!1352499 () Bool)

(assert (= bs!1352499 d!1816454))

(assert (=> bs!1352499 m!6711514))

(assert (=> bs!1352499 m!6711524))

(declare-fun m!6711954 () Bool)

(assert (=> bs!1352499 m!6711954))

(assert (=> bs!1352499 m!6711952))

(assert (=> b!5765346 d!1816454))

(declare-fun d!1816456 () Bool)

(declare-fun lt!2289391 () Regex!15777)

(assert (=> d!1816456 (validRegex!7513 lt!2289391)))

(assert (=> d!1816456 (= lt!2289391 (generalisedUnion!1640 (unfocusZipperList!1205 zl!343)))))

(assert (=> d!1816456 (= (unfocusZipper!1519 zl!343) lt!2289391)))

(declare-fun bs!1352500 () Bool)

(assert (= bs!1352500 d!1816456))

(declare-fun m!6711956 () Bool)

(assert (=> bs!1352500 m!6711956))

(assert (=> bs!1352500 m!6711542))

(assert (=> bs!1352500 m!6711542))

(assert (=> bs!1352500 m!6711544))

(assert (=> b!5765337 d!1816456))

(declare-fun bs!1352501 () Bool)

(declare-fun b!5766006 () Bool)

(assert (= bs!1352501 (and b!5766006 b!5765336)))

(declare-fun lambda!313144 () Int)

(assert (=> bs!1352501 (not (= lambda!313144 lambda!313081))))

(declare-fun bs!1352502 () Bool)

(assert (= bs!1352502 (and b!5766006 b!5765954)))

(assert (=> bs!1352502 (= (and (= (reg!16106 r!7292) (reg!16106 (regTwo!32066 r!7292))) (= r!7292 (regTwo!32066 r!7292))) (= lambda!313144 lambda!313142))))

(declare-fun bs!1352503 () Bool)

(assert (= bs!1352503 (and b!5766006 b!5765951)))

(assert (=> bs!1352503 (not (= lambda!313144 lambda!313143))))

(assert (=> bs!1352501 (not (= lambda!313144 lambda!313082))))

(declare-fun bs!1352504 () Bool)

(assert (= bs!1352504 (and b!5766006 b!5765848)))

(assert (=> bs!1352504 (not (= lambda!313144 lambda!313131))))

(declare-fun bs!1352505 () Bool)

(assert (= bs!1352505 (and b!5766006 b!5765851)))

(assert (=> bs!1352505 (= (and (= (reg!16106 r!7292) (reg!16106 (regOne!32066 r!7292))) (= r!7292 (regOne!32066 r!7292))) (= lambda!313144 lambda!313130))))

(assert (=> b!5766006 true))

(assert (=> b!5766006 true))

(declare-fun bs!1352506 () Bool)

(declare-fun b!5766003 () Bool)

(assert (= bs!1352506 (and b!5766003 b!5765336)))

(declare-fun lambda!313145 () Int)

(assert (=> bs!1352506 (not (= lambda!313145 lambda!313081))))

(declare-fun bs!1352507 () Bool)

(assert (= bs!1352507 (and b!5766003 b!5765954)))

(assert (=> bs!1352507 (not (= lambda!313145 lambda!313142))))

(declare-fun bs!1352508 () Bool)

(assert (= bs!1352508 (and b!5766003 b!5765951)))

(assert (=> bs!1352508 (= (and (= (regOne!32066 r!7292) (regOne!32066 (regTwo!32066 r!7292))) (= (regTwo!32066 r!7292) (regTwo!32066 (regTwo!32066 r!7292)))) (= lambda!313145 lambda!313143))))

(assert (=> bs!1352506 (= lambda!313145 lambda!313082)))

(declare-fun bs!1352509 () Bool)

(assert (= bs!1352509 (and b!5766003 b!5765848)))

(assert (=> bs!1352509 (= (and (= (regOne!32066 r!7292) (regOne!32066 (regOne!32066 r!7292))) (= (regTwo!32066 r!7292) (regTwo!32066 (regOne!32066 r!7292)))) (= lambda!313145 lambda!313131))))

(declare-fun bs!1352510 () Bool)

(assert (= bs!1352510 (and b!5766003 b!5766006)))

(assert (=> bs!1352510 (not (= lambda!313145 lambda!313144))))

(declare-fun bs!1352511 () Bool)

(assert (= bs!1352511 (and b!5766003 b!5765851)))

(assert (=> bs!1352511 (not (= lambda!313145 lambda!313130))))

(assert (=> b!5766003 true))

(assert (=> b!5766003 true))

(declare-fun b!5765996 () Bool)

(declare-fun c!1019339 () Bool)

(assert (=> b!5765996 (= c!1019339 ((_ is Union!15777) r!7292))))

(declare-fun e!3542579 () Bool)

(declare-fun e!3542580 () Bool)

(assert (=> b!5765996 (= e!3542579 e!3542580)))

(declare-fun b!5765997 () Bool)

(declare-fun e!3542578 () Bool)

(assert (=> b!5765997 (= e!3542580 e!3542578)))

(declare-fun res!2433378 () Bool)

(assert (=> b!5765997 (= res!2433378 (matchRSpec!2880 (regOne!32067 r!7292) s!2326))))

(assert (=> b!5765997 (=> res!2433378 e!3542578)))

(declare-fun bm!442842 () Bool)

(declare-fun call!442848 () Bool)

(declare-fun c!1019338 () Bool)

(assert (=> bm!442842 (= call!442848 (Exists!2877 (ite c!1019338 lambda!313144 lambda!313145)))))

(declare-fun bm!442843 () Bool)

(declare-fun call!442847 () Bool)

(assert (=> bm!442843 (= call!442847 (isEmpty!35400 s!2326))))

(declare-fun b!5765999 () Bool)

(assert (=> b!5765999 (= e!3542578 (matchRSpec!2880 (regTwo!32067 r!7292) s!2326))))

(declare-fun b!5766000 () Bool)

(declare-fun e!3542576 () Bool)

(assert (=> b!5766000 (= e!3542576 call!442847)))

(declare-fun b!5766001 () Bool)

(declare-fun e!3542577 () Bool)

(assert (=> b!5766001 (= e!3542580 e!3542577)))

(assert (=> b!5766001 (= c!1019338 ((_ is Star!15777) r!7292))))

(declare-fun b!5766002 () Bool)

(declare-fun res!2433379 () Bool)

(declare-fun e!3542582 () Bool)

(assert (=> b!5766002 (=> res!2433379 e!3542582)))

(assert (=> b!5766002 (= res!2433379 call!442847)))

(assert (=> b!5766002 (= e!3542577 e!3542582)))

(assert (=> b!5766003 (= e!3542577 call!442848)))

(declare-fun b!5766004 () Bool)

(declare-fun e!3542581 () Bool)

(assert (=> b!5766004 (= e!3542576 e!3542581)))

(declare-fun res!2433380 () Bool)

(assert (=> b!5766004 (= res!2433380 (not ((_ is EmptyLang!15777) r!7292)))))

(assert (=> b!5766004 (=> (not res!2433380) (not e!3542581))))

(declare-fun b!5766005 () Bool)

(assert (=> b!5766005 (= e!3542579 (= s!2326 (Cons!63508 (c!1019159 r!7292) Nil!63508)))))

(assert (=> b!5766006 (= e!3542582 call!442848)))

(declare-fun b!5765998 () Bool)

(declare-fun c!1019341 () Bool)

(assert (=> b!5765998 (= c!1019341 ((_ is ElementMatch!15777) r!7292))))

(assert (=> b!5765998 (= e!3542581 e!3542579)))

(declare-fun d!1816458 () Bool)

(declare-fun c!1019340 () Bool)

(assert (=> d!1816458 (= c!1019340 ((_ is EmptyExpr!15777) r!7292))))

(assert (=> d!1816458 (= (matchRSpec!2880 r!7292 s!2326) e!3542576)))

(assert (= (and d!1816458 c!1019340) b!5766000))

(assert (= (and d!1816458 (not c!1019340)) b!5766004))

(assert (= (and b!5766004 res!2433380) b!5765998))

(assert (= (and b!5765998 c!1019341) b!5766005))

(assert (= (and b!5765998 (not c!1019341)) b!5765996))

(assert (= (and b!5765996 c!1019339) b!5765997))

(assert (= (and b!5765996 (not c!1019339)) b!5766001))

(assert (= (and b!5765997 (not res!2433378)) b!5765999))

(assert (= (and b!5766001 c!1019338) b!5766002))

(assert (= (and b!5766001 (not c!1019338)) b!5766003))

(assert (= (and b!5766002 (not res!2433379)) b!5766006))

(assert (= (or b!5766006 b!5766003) bm!442842))

(assert (= (or b!5766000 b!5766002) bm!442843))

(declare-fun m!6711958 () Bool)

(assert (=> b!5765997 m!6711958))

(declare-fun m!6711960 () Bool)

(assert (=> bm!442842 m!6711960))

(assert (=> bm!442843 m!6711578))

(declare-fun m!6711962 () Bool)

(assert (=> b!5765999 m!6711962))

(assert (=> b!5765335 d!1816458))

(declare-fun b!5766007 () Bool)

(declare-fun e!3542588 () Bool)

(declare-fun e!3542584 () Bool)

(assert (=> b!5766007 (= e!3542588 e!3542584)))

(declare-fun res!2433381 () Bool)

(assert (=> b!5766007 (=> res!2433381 e!3542584)))

(declare-fun call!442849 () Bool)

(assert (=> b!5766007 (= res!2433381 call!442849)))

(declare-fun bm!442844 () Bool)

(assert (=> bm!442844 (= call!442849 (isEmpty!35400 s!2326))))

(declare-fun b!5766009 () Bool)

(assert (=> b!5766009 (= e!3542584 (not (= (head!12189 s!2326) (c!1019159 r!7292))))))

(declare-fun b!5766010 () Bool)

(declare-fun res!2433382 () Bool)

(declare-fun e!3542587 () Bool)

(assert (=> b!5766010 (=> res!2433382 e!3542587)))

(declare-fun e!3542589 () Bool)

(assert (=> b!5766010 (= res!2433382 e!3542589)))

(declare-fun res!2433384 () Bool)

(assert (=> b!5766010 (=> (not res!2433384) (not e!3542589))))

(declare-fun lt!2289392 () Bool)

(assert (=> b!5766010 (= res!2433384 lt!2289392)))

(declare-fun b!5766011 () Bool)

(assert (=> b!5766011 (= e!3542587 e!3542588)))

(declare-fun res!2433383 () Bool)

(assert (=> b!5766011 (=> (not res!2433383) (not e!3542588))))

(assert (=> b!5766011 (= res!2433383 (not lt!2289392))))

(declare-fun b!5766012 () Bool)

(declare-fun res!2433385 () Bool)

(assert (=> b!5766012 (=> (not res!2433385) (not e!3542589))))

(assert (=> b!5766012 (= res!2433385 (isEmpty!35400 (tail!11284 s!2326)))))

(declare-fun b!5766013 () Bool)

(declare-fun res!2433386 () Bool)

(assert (=> b!5766013 (=> (not res!2433386) (not e!3542589))))

(assert (=> b!5766013 (= res!2433386 (not call!442849))))

(declare-fun b!5766014 () Bool)

(declare-fun e!3542585 () Bool)

(declare-fun e!3542586 () Bool)

(assert (=> b!5766014 (= e!3542585 e!3542586)))

(declare-fun c!1019342 () Bool)

(assert (=> b!5766014 (= c!1019342 ((_ is EmptyLang!15777) r!7292))))

(declare-fun b!5766015 () Bool)

(assert (=> b!5766015 (= e!3542585 (= lt!2289392 call!442849))))

(declare-fun b!5766016 () Bool)

(declare-fun e!3542583 () Bool)

(assert (=> b!5766016 (= e!3542583 (matchR!7962 (derivativeStep!4558 r!7292 (head!12189 s!2326)) (tail!11284 s!2326)))))

(declare-fun d!1816460 () Bool)

(assert (=> d!1816460 e!3542585))

(declare-fun c!1019344 () Bool)

(assert (=> d!1816460 (= c!1019344 ((_ is EmptyExpr!15777) r!7292))))

(assert (=> d!1816460 (= lt!2289392 e!3542583)))

(declare-fun c!1019343 () Bool)

(assert (=> d!1816460 (= c!1019343 (isEmpty!35400 s!2326))))

(assert (=> d!1816460 (validRegex!7513 r!7292)))

(assert (=> d!1816460 (= (matchR!7962 r!7292 s!2326) lt!2289392)))

(declare-fun b!5766008 () Bool)

(assert (=> b!5766008 (= e!3542586 (not lt!2289392))))

(declare-fun b!5766017 () Bool)

(assert (=> b!5766017 (= e!3542589 (= (head!12189 s!2326) (c!1019159 r!7292)))))

(declare-fun b!5766018 () Bool)

(assert (=> b!5766018 (= e!3542583 (nullable!5809 r!7292))))

(declare-fun b!5766019 () Bool)

(declare-fun res!2433388 () Bool)

(assert (=> b!5766019 (=> res!2433388 e!3542584)))

(assert (=> b!5766019 (= res!2433388 (not (isEmpty!35400 (tail!11284 s!2326))))))

(declare-fun b!5766020 () Bool)

(declare-fun res!2433387 () Bool)

(assert (=> b!5766020 (=> res!2433387 e!3542587)))

(assert (=> b!5766020 (= res!2433387 (not ((_ is ElementMatch!15777) r!7292)))))

(assert (=> b!5766020 (= e!3542586 e!3542587)))

(assert (= (and d!1816460 c!1019343) b!5766018))

(assert (= (and d!1816460 (not c!1019343)) b!5766016))

(assert (= (and d!1816460 c!1019344) b!5766015))

(assert (= (and d!1816460 (not c!1019344)) b!5766014))

(assert (= (and b!5766014 c!1019342) b!5766008))

(assert (= (and b!5766014 (not c!1019342)) b!5766020))

(assert (= (and b!5766020 (not res!2433387)) b!5766010))

(assert (= (and b!5766010 res!2433384) b!5766013))

(assert (= (and b!5766013 res!2433386) b!5766012))

(assert (= (and b!5766012 res!2433385) b!5766017))

(assert (= (and b!5766010 (not res!2433382)) b!5766011))

(assert (= (and b!5766011 res!2433383) b!5766007))

(assert (= (and b!5766007 (not res!2433381)) b!5766019))

(assert (= (and b!5766019 (not res!2433388)) b!5766009))

(assert (= (or b!5766015 b!5766007 b!5766013) bm!442844))

(assert (=> b!5766019 m!6711586))

(assert (=> b!5766019 m!6711586))

(assert (=> b!5766019 m!6711928))

(assert (=> b!5766016 m!6711582))

(assert (=> b!5766016 m!6711582))

(declare-fun m!6711964 () Bool)

(assert (=> b!5766016 m!6711964))

(assert (=> b!5766016 m!6711586))

(assert (=> b!5766016 m!6711964))

(assert (=> b!5766016 m!6711586))

(declare-fun m!6711966 () Bool)

(assert (=> b!5766016 m!6711966))

(assert (=> b!5766017 m!6711582))

(assert (=> b!5766012 m!6711586))

(assert (=> b!5766012 m!6711586))

(assert (=> b!5766012 m!6711928))

(assert (=> bm!442844 m!6711578))

(declare-fun m!6711968 () Bool)

(assert (=> b!5766018 m!6711968))

(assert (=> d!1816460 m!6711578))

(assert (=> d!1816460 m!6711540))

(assert (=> b!5766009 m!6711582))

(assert (=> b!5765335 d!1816460))

(declare-fun d!1816462 () Bool)

(assert (=> d!1816462 (= (matchR!7962 r!7292 s!2326) (matchRSpec!2880 r!7292 s!2326))))

(declare-fun lt!2289393 () Unit!156640)

(assert (=> d!1816462 (= lt!2289393 (choose!43727 r!7292 s!2326))))

(assert (=> d!1816462 (validRegex!7513 r!7292)))

(assert (=> d!1816462 (= (mainMatchTheorem!2880 r!7292 s!2326) lt!2289393)))

(declare-fun bs!1352512 () Bool)

(assert (= bs!1352512 d!1816462))

(assert (=> bs!1352512 m!6711486))

(assert (=> bs!1352512 m!6711484))

(declare-fun m!6711970 () Bool)

(assert (=> bs!1352512 m!6711970))

(assert (=> bs!1352512 m!6711540))

(assert (=> b!5765335 d!1816462))

(declare-fun d!1816464 () Bool)

(declare-fun choose!43732 (Int) Bool)

(assert (=> d!1816464 (= (Exists!2877 lambda!313082) (choose!43732 lambda!313082))))

(declare-fun bs!1352513 () Bool)

(assert (= bs!1352513 d!1816464))

(declare-fun m!6711972 () Bool)

(assert (=> bs!1352513 m!6711972))

(assert (=> b!5765336 d!1816464))

(declare-fun b!5766039 () Bool)

(declare-fun e!3542603 () Option!15786)

(assert (=> b!5766039 (= e!3542603 None!15785)))

(declare-fun b!5766040 () Bool)

(declare-fun e!3542601 () Option!15786)

(assert (=> b!5766040 (= e!3542601 e!3542603)))

(declare-fun c!1019349 () Bool)

(assert (=> b!5766040 (= c!1019349 ((_ is Nil!63508) s!2326))))

(declare-fun b!5766041 () Bool)

(declare-fun e!3542604 () Bool)

(declare-fun lt!2289400 () Option!15786)

(declare-fun ++!13991 (List!63632 List!63632) List!63632)

(declare-fun get!21913 (Option!15786) tuple2!65748)

(assert (=> b!5766041 (= e!3542604 (= (++!13991 (_1!36177 (get!21913 lt!2289400)) (_2!36177 (get!21913 lt!2289400))) s!2326))))

(declare-fun b!5766042 () Bool)

(declare-fun res!2433400 () Bool)

(assert (=> b!5766042 (=> (not res!2433400) (not e!3542604))))

(assert (=> b!5766042 (= res!2433400 (matchR!7962 (regOne!32066 r!7292) (_1!36177 (get!21913 lt!2289400))))))

(declare-fun b!5766043 () Bool)

(declare-fun res!2433399 () Bool)

(assert (=> b!5766043 (=> (not res!2433399) (not e!3542604))))

(assert (=> b!5766043 (= res!2433399 (matchR!7962 (regTwo!32066 r!7292) (_2!36177 (get!21913 lt!2289400))))))

(declare-fun b!5766044 () Bool)

(declare-fun lt!2289401 () Unit!156640)

(declare-fun lt!2289402 () Unit!156640)

(assert (=> b!5766044 (= lt!2289401 lt!2289402)))

(assert (=> b!5766044 (= (++!13991 (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508)) (t!376968 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2108 (List!63632 C!31824 List!63632 List!63632) Unit!156640)

(assert (=> b!5766044 (= lt!2289402 (lemmaMoveElementToOtherListKeepsConcatEq!2108 Nil!63508 (h!69956 s!2326) (t!376968 s!2326) s!2326))))

(assert (=> b!5766044 (= e!3542603 (findConcatSeparation!2200 (regOne!32066 r!7292) (regTwo!32066 r!7292) (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508)) (t!376968 s!2326) s!2326))))

(declare-fun d!1816466 () Bool)

(declare-fun e!3542602 () Bool)

(assert (=> d!1816466 e!3542602))

(declare-fun res!2433403 () Bool)

(assert (=> d!1816466 (=> res!2433403 e!3542602)))

(assert (=> d!1816466 (= res!2433403 e!3542604)))

(declare-fun res!2433401 () Bool)

(assert (=> d!1816466 (=> (not res!2433401) (not e!3542604))))

(assert (=> d!1816466 (= res!2433401 (isDefined!12489 lt!2289400))))

(assert (=> d!1816466 (= lt!2289400 e!3542601)))

(declare-fun c!1019350 () Bool)

(declare-fun e!3542600 () Bool)

(assert (=> d!1816466 (= c!1019350 e!3542600)))

(declare-fun res!2433402 () Bool)

(assert (=> d!1816466 (=> (not res!2433402) (not e!3542600))))

(assert (=> d!1816466 (= res!2433402 (matchR!7962 (regOne!32066 r!7292) Nil!63508))))

(assert (=> d!1816466 (validRegex!7513 (regOne!32066 r!7292))))

(assert (=> d!1816466 (= (findConcatSeparation!2200 (regOne!32066 r!7292) (regTwo!32066 r!7292) Nil!63508 s!2326 s!2326) lt!2289400)))

(declare-fun b!5766045 () Bool)

(assert (=> b!5766045 (= e!3542602 (not (isDefined!12489 lt!2289400)))))

(declare-fun b!5766046 () Bool)

(assert (=> b!5766046 (= e!3542600 (matchR!7962 (regTwo!32066 r!7292) s!2326))))

(declare-fun b!5766047 () Bool)

(assert (=> b!5766047 (= e!3542601 (Some!15785 (tuple2!65749 Nil!63508 s!2326)))))

(assert (= (and d!1816466 res!2433402) b!5766046))

(assert (= (and d!1816466 c!1019350) b!5766047))

(assert (= (and d!1816466 (not c!1019350)) b!5766040))

(assert (= (and b!5766040 c!1019349) b!5766039))

(assert (= (and b!5766040 (not c!1019349)) b!5766044))

(assert (= (and d!1816466 res!2433401) b!5766042))

(assert (= (and b!5766042 res!2433400) b!5766043))

(assert (= (and b!5766043 res!2433399) b!5766041))

(assert (= (and d!1816466 (not res!2433403)) b!5766045))

(declare-fun m!6711974 () Bool)

(assert (=> b!5766045 m!6711974))

(assert (=> d!1816466 m!6711974))

(declare-fun m!6711976 () Bool)

(assert (=> d!1816466 m!6711976))

(assert (=> d!1816466 m!6711904))

(declare-fun m!6711978 () Bool)

(assert (=> b!5766041 m!6711978))

(declare-fun m!6711980 () Bool)

(assert (=> b!5766041 m!6711980))

(assert (=> b!5766043 m!6711978))

(declare-fun m!6711982 () Bool)

(assert (=> b!5766043 m!6711982))

(assert (=> b!5766042 m!6711978))

(declare-fun m!6711984 () Bool)

(assert (=> b!5766042 m!6711984))

(assert (=> b!5766046 m!6711514))

(declare-fun m!6711986 () Bool)

(assert (=> b!5766044 m!6711986))

(assert (=> b!5766044 m!6711986))

(declare-fun m!6711988 () Bool)

(assert (=> b!5766044 m!6711988))

(declare-fun m!6711990 () Bool)

(assert (=> b!5766044 m!6711990))

(assert (=> b!5766044 m!6711986))

(declare-fun m!6711992 () Bool)

(assert (=> b!5766044 m!6711992))

(assert (=> b!5765336 d!1816466))

(declare-fun bs!1352514 () Bool)

(declare-fun d!1816468 () Bool)

(assert (= bs!1352514 (and d!1816468 b!5765336)))

(declare-fun lambda!313150 () Int)

(assert (=> bs!1352514 (= lambda!313150 lambda!313081)))

(declare-fun bs!1352515 () Bool)

(assert (= bs!1352515 (and d!1816468 b!5765954)))

(assert (=> bs!1352515 (not (= lambda!313150 lambda!313142))))

(declare-fun bs!1352516 () Bool)

(assert (= bs!1352516 (and d!1816468 b!5766003)))

(assert (=> bs!1352516 (not (= lambda!313150 lambda!313145))))

(declare-fun bs!1352517 () Bool)

(assert (= bs!1352517 (and d!1816468 b!5765951)))

(assert (=> bs!1352517 (not (= lambda!313150 lambda!313143))))

(assert (=> bs!1352514 (not (= lambda!313150 lambda!313082))))

(declare-fun bs!1352518 () Bool)

(assert (= bs!1352518 (and d!1816468 b!5765848)))

(assert (=> bs!1352518 (not (= lambda!313150 lambda!313131))))

(declare-fun bs!1352519 () Bool)

(assert (= bs!1352519 (and d!1816468 b!5766006)))

(assert (=> bs!1352519 (not (= lambda!313150 lambda!313144))))

(declare-fun bs!1352520 () Bool)

(assert (= bs!1352520 (and d!1816468 b!5765851)))

(assert (=> bs!1352520 (not (= lambda!313150 lambda!313130))))

(assert (=> d!1816468 true))

(assert (=> d!1816468 true))

(assert (=> d!1816468 true))

(declare-fun lambda!313151 () Int)

(assert (=> bs!1352514 (not (= lambda!313151 lambda!313081))))

(assert (=> bs!1352515 (not (= lambda!313151 lambda!313142))))

(assert (=> bs!1352516 (= lambda!313151 lambda!313145)))

(assert (=> bs!1352517 (= (and (= (regOne!32066 r!7292) (regOne!32066 (regTwo!32066 r!7292))) (= (regTwo!32066 r!7292) (regTwo!32066 (regTwo!32066 r!7292)))) (= lambda!313151 lambda!313143))))

(assert (=> bs!1352514 (= lambda!313151 lambda!313082)))

(declare-fun bs!1352521 () Bool)

(assert (= bs!1352521 d!1816468))

(assert (=> bs!1352521 (not (= lambda!313151 lambda!313150))))

(assert (=> bs!1352518 (= (and (= (regOne!32066 r!7292) (regOne!32066 (regOne!32066 r!7292))) (= (regTwo!32066 r!7292) (regTwo!32066 (regOne!32066 r!7292)))) (= lambda!313151 lambda!313131))))

(assert (=> bs!1352519 (not (= lambda!313151 lambda!313144))))

(assert (=> bs!1352520 (not (= lambda!313151 lambda!313130))))

(assert (=> d!1816468 true))

(assert (=> d!1816468 true))

(assert (=> d!1816468 true))

(assert (=> d!1816468 (= (Exists!2877 lambda!313150) (Exists!2877 lambda!313151))))

(declare-fun lt!2289405 () Unit!156640)

(declare-fun choose!43733 (Regex!15777 Regex!15777 List!63632) Unit!156640)

(assert (=> d!1816468 (= lt!2289405 (choose!43733 (regOne!32066 r!7292) (regTwo!32066 r!7292) s!2326))))

(assert (=> d!1816468 (validRegex!7513 (regOne!32066 r!7292))))

(assert (=> d!1816468 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1506 (regOne!32066 r!7292) (regTwo!32066 r!7292) s!2326) lt!2289405)))

(declare-fun m!6711994 () Bool)

(assert (=> bs!1352521 m!6711994))

(declare-fun m!6711996 () Bool)

(assert (=> bs!1352521 m!6711996))

(declare-fun m!6711998 () Bool)

(assert (=> bs!1352521 m!6711998))

(assert (=> bs!1352521 m!6711904))

(assert (=> b!5765336 d!1816468))

(declare-fun d!1816470 () Bool)

(declare-fun isEmpty!35402 (Option!15786) Bool)

(assert (=> d!1816470 (= (isDefined!12489 (findConcatSeparation!2200 (regOne!32066 r!7292) (regTwo!32066 r!7292) Nil!63508 s!2326 s!2326)) (not (isEmpty!35402 (findConcatSeparation!2200 (regOne!32066 r!7292) (regTwo!32066 r!7292) Nil!63508 s!2326 s!2326))))))

(declare-fun bs!1352522 () Bool)

(assert (= bs!1352522 d!1816470))

(assert (=> bs!1352522 m!6711558))

(declare-fun m!6712000 () Bool)

(assert (=> bs!1352522 m!6712000))

(assert (=> b!5765336 d!1816470))

(declare-fun d!1816472 () Bool)

(assert (=> d!1816472 (= (Exists!2877 lambda!313081) (choose!43732 lambda!313081))))

(declare-fun bs!1352523 () Bool)

(assert (= bs!1352523 d!1816472))

(declare-fun m!6712002 () Bool)

(assert (=> bs!1352523 m!6712002))

(assert (=> b!5765336 d!1816472))

(declare-fun bs!1352524 () Bool)

(declare-fun d!1816474 () Bool)

(assert (= bs!1352524 (and d!1816474 b!5765336)))

(declare-fun lambda!313154 () Int)

(assert (=> bs!1352524 (= lambda!313154 lambda!313081)))

(declare-fun bs!1352525 () Bool)

(assert (= bs!1352525 (and d!1816474 b!5765954)))

(assert (=> bs!1352525 (not (= lambda!313154 lambda!313142))))

(declare-fun bs!1352526 () Bool)

(assert (= bs!1352526 (and d!1816474 b!5766003)))

(assert (=> bs!1352526 (not (= lambda!313154 lambda!313145))))

(declare-fun bs!1352527 () Bool)

(assert (= bs!1352527 (and d!1816474 b!5765951)))

(assert (=> bs!1352527 (not (= lambda!313154 lambda!313143))))

(assert (=> bs!1352524 (not (= lambda!313154 lambda!313082))))

(declare-fun bs!1352528 () Bool)

(assert (= bs!1352528 (and d!1816474 d!1816468)))

(assert (=> bs!1352528 (= lambda!313154 lambda!313150)))

(declare-fun bs!1352529 () Bool)

(assert (= bs!1352529 (and d!1816474 b!5765848)))

(assert (=> bs!1352529 (not (= lambda!313154 lambda!313131))))

(declare-fun bs!1352530 () Bool)

(assert (= bs!1352530 (and d!1816474 b!5766006)))

(assert (=> bs!1352530 (not (= lambda!313154 lambda!313144))))

(assert (=> bs!1352528 (not (= lambda!313154 lambda!313151))))

(declare-fun bs!1352531 () Bool)

(assert (= bs!1352531 (and d!1816474 b!5765851)))

(assert (=> bs!1352531 (not (= lambda!313154 lambda!313130))))

(assert (=> d!1816474 true))

(assert (=> d!1816474 true))

(assert (=> d!1816474 true))

(assert (=> d!1816474 (= (isDefined!12489 (findConcatSeparation!2200 (regOne!32066 r!7292) (regTwo!32066 r!7292) Nil!63508 s!2326 s!2326)) (Exists!2877 lambda!313154))))

(declare-fun lt!2289408 () Unit!156640)

(declare-fun choose!43734 (Regex!15777 Regex!15777 List!63632) Unit!156640)

(assert (=> d!1816474 (= lt!2289408 (choose!43734 (regOne!32066 r!7292) (regTwo!32066 r!7292) s!2326))))

(assert (=> d!1816474 (validRegex!7513 (regOne!32066 r!7292))))

(assert (=> d!1816474 (= (lemmaFindConcatSeparationEquivalentToExists!1964 (regOne!32066 r!7292) (regTwo!32066 r!7292) s!2326) lt!2289408)))

(declare-fun bs!1352532 () Bool)

(assert (= bs!1352532 d!1816474))

(declare-fun m!6712004 () Bool)

(assert (=> bs!1352532 m!6712004))

(declare-fun m!6712006 () Bool)

(assert (=> bs!1352532 m!6712006))

(assert (=> bs!1352532 m!6711558))

(assert (=> bs!1352532 m!6711904))

(assert (=> bs!1352532 m!6711558))

(assert (=> bs!1352532 m!6711560))

(assert (=> b!5765336 d!1816474))

(declare-fun bs!1352533 () Bool)

(declare-fun d!1816476 () Bool)

(assert (= bs!1352533 (and d!1816476 b!5765355)))

(declare-fun lambda!313155 () Int)

(assert (=> bs!1352533 (= lambda!313155 lambda!313083)))

(declare-fun bs!1352534 () Bool)

(assert (= bs!1352534 (and d!1816476 d!1816316)))

(assert (=> bs!1352534 (= lambda!313155 lambda!313086)))

(assert (=> d!1816476 true))

(assert (=> d!1816476 (= (derivationStepZipper!1856 lt!2289309 (h!69956 s!2326)) (flatMap!1390 lt!2289309 lambda!313155))))

(declare-fun bs!1352535 () Bool)

(assert (= bs!1352535 d!1816476))

(declare-fun m!6712008 () Bool)

(assert (=> bs!1352535 m!6712008))

(assert (=> b!5765354 d!1816476))

(declare-fun d!1816478 () Bool)

(declare-fun choose!43735 ((InoxSet Context!10322) Int) (InoxSet Context!10322))

(assert (=> d!1816478 (= (flatMap!1390 lt!2289309 lambda!313083) (choose!43735 lt!2289309 lambda!313083))))

(declare-fun bs!1352536 () Bool)

(assert (= bs!1352536 d!1816478))

(declare-fun m!6712010 () Bool)

(assert (=> bs!1352536 m!6712010))

(assert (=> b!5765354 d!1816478))

(declare-fun b!5766070 () Bool)

(declare-fun e!3542618 () (InoxSet Context!10322))

(assert (=> b!5766070 (= e!3542618 ((as const (Array Context!10322 Bool)) false))))

(declare-fun b!5766071 () Bool)

(declare-fun call!442852 () (InoxSet Context!10322))

(declare-fun e!3542617 () (InoxSet Context!10322))

(assert (=> b!5766071 (= e!3542617 ((_ map or) call!442852 (derivationStepZipperUp!1045 (Context!10323 (t!376966 (exprs!5661 lt!2289296))) (h!69956 s!2326))))))

(declare-fun b!5766072 () Bool)

(declare-fun e!3542619 () Bool)

(assert (=> b!5766072 (= e!3542619 (nullable!5809 (h!69954 (exprs!5661 lt!2289296))))))

(declare-fun bm!442847 () Bool)

(assert (=> bm!442847 (= call!442852 (derivationStepZipperDown!1119 (h!69954 (exprs!5661 lt!2289296)) (Context!10323 (t!376966 (exprs!5661 lt!2289296))) (h!69956 s!2326)))))

(declare-fun d!1816480 () Bool)

(declare-fun c!1019355 () Bool)

(assert (=> d!1816480 (= c!1019355 e!3542619)))

(declare-fun res!2433418 () Bool)

(assert (=> d!1816480 (=> (not res!2433418) (not e!3542619))))

(assert (=> d!1816480 (= res!2433418 ((_ is Cons!63506) (exprs!5661 lt!2289296)))))

(assert (=> d!1816480 (= (derivationStepZipperUp!1045 lt!2289296 (h!69956 s!2326)) e!3542617)))

(declare-fun b!5766073 () Bool)

(assert (=> b!5766073 (= e!3542618 call!442852)))

(declare-fun b!5766074 () Bool)

(assert (=> b!5766074 (= e!3542617 e!3542618)))

(declare-fun c!1019356 () Bool)

(assert (=> b!5766074 (= c!1019356 ((_ is Cons!63506) (exprs!5661 lt!2289296)))))

(assert (= (and d!1816480 res!2433418) b!5766072))

(assert (= (and d!1816480 c!1019355) b!5766071))

(assert (= (and d!1816480 (not c!1019355)) b!5766074))

(assert (= (and b!5766074 c!1019356) b!5766073))

(assert (= (and b!5766074 (not c!1019356)) b!5766070))

(assert (= (or b!5766071 b!5766073) bm!442847))

(declare-fun m!6712012 () Bool)

(assert (=> b!5766071 m!6712012))

(declare-fun m!6712014 () Bool)

(assert (=> b!5766072 m!6712014))

(declare-fun m!6712016 () Bool)

(assert (=> bm!442847 m!6712016))

(assert (=> b!5765354 d!1816480))

(declare-fun d!1816482 () Bool)

(declare-fun dynLambda!24861 (Int Context!10322) (InoxSet Context!10322))

(assert (=> d!1816482 (= (flatMap!1390 lt!2289309 lambda!313083) (dynLambda!24861 lambda!313083 lt!2289296))))

(declare-fun lt!2289411 () Unit!156640)

(declare-fun choose!43736 ((InoxSet Context!10322) Context!10322 Int) Unit!156640)

(assert (=> d!1816482 (= lt!2289411 (choose!43736 lt!2289309 lt!2289296 lambda!313083))))

(assert (=> d!1816482 (= lt!2289309 (store ((as const (Array Context!10322 Bool)) false) lt!2289296 true))))

(assert (=> d!1816482 (= (lemmaFlatMapOnSingletonSet!922 lt!2289309 lt!2289296 lambda!313083) lt!2289411)))

(declare-fun b_lambda!217663 () Bool)

(assert (=> (not b_lambda!217663) (not d!1816482)))

(declare-fun bs!1352537 () Bool)

(assert (= bs!1352537 d!1816482))

(assert (=> bs!1352537 m!6711548))

(declare-fun m!6712018 () Bool)

(assert (=> bs!1352537 m!6712018))

(declare-fun m!6712020 () Bool)

(assert (=> bs!1352537 m!6712020))

(assert (=> bs!1352537 m!6711550))

(assert (=> b!5765354 d!1816482))

(declare-fun b!5766097 () Bool)

(declare-fun e!3542634 () (InoxSet Context!10322))

(assert (=> b!5766097 (= e!3542634 (store ((as const (Array Context!10322 Bool)) false) lt!2289296 true))))

(declare-fun b!5766098 () Bool)

(declare-fun e!3542635 () (InoxSet Context!10322))

(declare-fun call!442869 () (InoxSet Context!10322))

(assert (=> b!5766098 (= e!3542635 call!442869)))

(declare-fun b!5766099 () Bool)

(declare-fun e!3542637 () Bool)

(assert (=> b!5766099 (= e!3542637 (nullable!5809 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343))))))))

(declare-fun b!5766100 () Bool)

(declare-fun e!3542633 () (InoxSet Context!10322))

(declare-fun call!442868 () (InoxSet Context!10322))

(declare-fun call!442870 () (InoxSet Context!10322))

(assert (=> b!5766100 (= e!3542633 ((_ map or) call!442868 call!442870))))

(declare-fun bm!442860 () Bool)

(assert (=> bm!442860 (= call!442869 call!442870)))

(declare-fun b!5766102 () Bool)

(declare-fun e!3542636 () (InoxSet Context!10322))

(assert (=> b!5766102 (= e!3542634 e!3542636)))

(declare-fun c!1019367 () Bool)

(assert (=> b!5766102 (= c!1019367 ((_ is Union!15777) (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun call!442865 () List!63630)

(declare-fun bm!442861 () Bool)

(assert (=> bm!442861 (= call!442868 (derivationStepZipperDown!1119 (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343))))) (ite c!1019367 lt!2289296 (Context!10323 call!442865)) (h!69956 s!2326)))))

(declare-fun bm!442862 () Bool)

(declare-fun call!442867 () List!63630)

(assert (=> bm!442862 (= call!442867 call!442865)))

(declare-fun bm!442863 () Bool)

(declare-fun call!442866 () (InoxSet Context!10322))

(assert (=> bm!442863 (= call!442870 call!442866)))

(declare-fun c!1019371 () Bool)

(declare-fun bm!442864 () Bool)

(declare-fun c!1019370 () Bool)

(declare-fun $colon$colon!1772 (List!63630 Regex!15777) List!63630)

(assert (=> bm!442864 (= call!442865 ($colon$colon!1772 (exprs!5661 lt!2289296) (ite (or c!1019370 c!1019371) (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (h!69954 (exprs!5661 (h!69955 zl!343))))))))

(declare-fun bm!442865 () Bool)

(assert (=> bm!442865 (= call!442866 (derivationStepZipperDown!1119 (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343))))))) (ite (or c!1019367 c!1019370) lt!2289296 (Context!10323 call!442867)) (h!69956 s!2326)))))

(declare-fun d!1816484 () Bool)

(declare-fun c!1019368 () Bool)

(assert (=> d!1816484 (= c!1019368 (and ((_ is ElementMatch!15777) (h!69954 (exprs!5661 (h!69955 zl!343)))) (= (c!1019159 (h!69954 (exprs!5661 (h!69955 zl!343)))) (h!69956 s!2326))))))

(assert (=> d!1816484 (= (derivationStepZipperDown!1119 (h!69954 (exprs!5661 (h!69955 zl!343))) lt!2289296 (h!69956 s!2326)) e!3542634)))

(declare-fun b!5766101 () Bool)

(assert (=> b!5766101 (= e!3542636 ((_ map or) call!442868 call!442866))))

(declare-fun b!5766103 () Bool)

(declare-fun e!3542632 () (InoxSet Context!10322))

(assert (=> b!5766103 (= e!3542632 ((as const (Array Context!10322 Bool)) false))))

(declare-fun b!5766104 () Bool)

(assert (=> b!5766104 (= c!1019370 e!3542637)))

(declare-fun res!2433421 () Bool)

(assert (=> b!5766104 (=> (not res!2433421) (not e!3542637))))

(assert (=> b!5766104 (= res!2433421 ((_ is Concat!24622) (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(assert (=> b!5766104 (= e!3542636 e!3542633)))

(declare-fun b!5766105 () Bool)

(declare-fun c!1019369 () Bool)

(assert (=> b!5766105 (= c!1019369 ((_ is Star!15777) (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(assert (=> b!5766105 (= e!3542635 e!3542632)))

(declare-fun b!5766106 () Bool)

(assert (=> b!5766106 (= e!3542633 e!3542635)))

(assert (=> b!5766106 (= c!1019371 ((_ is Concat!24622) (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5766107 () Bool)

(assert (=> b!5766107 (= e!3542632 call!442869)))

(assert (= (and d!1816484 c!1019368) b!5766097))

(assert (= (and d!1816484 (not c!1019368)) b!5766102))

(assert (= (and b!5766102 c!1019367) b!5766101))

(assert (= (and b!5766102 (not c!1019367)) b!5766104))

(assert (= (and b!5766104 res!2433421) b!5766099))

(assert (= (and b!5766104 c!1019370) b!5766100))

(assert (= (and b!5766104 (not c!1019370)) b!5766106))

(assert (= (and b!5766106 c!1019371) b!5766098))

(assert (= (and b!5766106 (not c!1019371)) b!5766105))

(assert (= (and b!5766105 c!1019369) b!5766107))

(assert (= (and b!5766105 (not c!1019369)) b!5766103))

(assert (= (or b!5766098 b!5766107) bm!442862))

(assert (= (or b!5766098 b!5766107) bm!442860))

(assert (= (or b!5766100 bm!442862) bm!442864))

(assert (= (or b!5766100 bm!442860) bm!442863))

(assert (= (or b!5766101 bm!442863) bm!442865))

(assert (= (or b!5766101 b!5766100) bm!442861))

(declare-fun m!6712022 () Bool)

(assert (=> b!5766099 m!6712022))

(declare-fun m!6712024 () Bool)

(assert (=> bm!442864 m!6712024))

(assert (=> b!5766097 m!6711550))

(declare-fun m!6712026 () Bool)

(assert (=> bm!442865 m!6712026))

(declare-fun m!6712028 () Bool)

(assert (=> bm!442861 m!6712028))

(assert (=> b!5765355 d!1816484))

(declare-fun d!1816486 () Bool)

(assert (=> d!1816486 (= (nullable!5809 (h!69954 (exprs!5661 (h!69955 zl!343)))) (nullableFct!1850 (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun bs!1352538 () Bool)

(assert (= bs!1352538 d!1816486))

(declare-fun m!6712030 () Bool)

(assert (=> bs!1352538 m!6712030))

(assert (=> b!5765355 d!1816486))

(declare-fun b!5766108 () Bool)

(declare-fun e!3542639 () (InoxSet Context!10322))

(assert (=> b!5766108 (= e!3542639 ((as const (Array Context!10322 Bool)) false))))

(declare-fun e!3542638 () (InoxSet Context!10322))

(declare-fun call!442871 () (InoxSet Context!10322))

(declare-fun b!5766109 () Bool)

(assert (=> b!5766109 (= e!3542638 ((_ map or) call!442871 (derivationStepZipperUp!1045 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (h!69956 s!2326))))))

(declare-fun b!5766110 () Bool)

(declare-fun e!3542640 () Bool)

(assert (=> b!5766110 (= e!3542640 (nullable!5809 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))))))

(declare-fun bm!442866 () Bool)

(assert (=> bm!442866 (= call!442871 (derivationStepZipperDown!1119 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))) (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (h!69956 s!2326)))))

(declare-fun d!1816488 () Bool)

(declare-fun c!1019372 () Bool)

(assert (=> d!1816488 (= c!1019372 e!3542640)))

(declare-fun res!2433422 () Bool)

(assert (=> d!1816488 (=> (not res!2433422) (not e!3542640))))

(assert (=> d!1816488 (= res!2433422 ((_ is Cons!63506) (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))))))

(assert (=> d!1816488 (= (derivationStepZipperUp!1045 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))) (h!69956 s!2326)) e!3542638)))

(declare-fun b!5766111 () Bool)

(assert (=> b!5766111 (= e!3542639 call!442871)))

(declare-fun b!5766112 () Bool)

(assert (=> b!5766112 (= e!3542638 e!3542639)))

(declare-fun c!1019373 () Bool)

(assert (=> b!5766112 (= c!1019373 ((_ is Cons!63506) (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))))))

(assert (= (and d!1816488 res!2433422) b!5766110))

(assert (= (and d!1816488 c!1019372) b!5766109))

(assert (= (and d!1816488 (not c!1019372)) b!5766112))

(assert (= (and b!5766112 c!1019373) b!5766111))

(assert (= (and b!5766112 (not c!1019373)) b!5766108))

(assert (= (or b!5766109 b!5766111) bm!442866))

(declare-fun m!6712032 () Bool)

(assert (=> b!5766109 m!6712032))

(declare-fun m!6712034 () Bool)

(assert (=> b!5766110 m!6712034))

(declare-fun m!6712036 () Bool)

(assert (=> bm!442866 m!6712036))

(assert (=> b!5765355 d!1816488))

(declare-fun d!1816490 () Bool)

(assert (=> d!1816490 (= (flatMap!1390 z!1189 lambda!313083) (choose!43735 z!1189 lambda!313083))))

(declare-fun bs!1352539 () Bool)

(assert (= bs!1352539 d!1816490))

(declare-fun m!6712038 () Bool)

(assert (=> bs!1352539 m!6712038))

(assert (=> b!5765355 d!1816490))

(declare-fun b!5766113 () Bool)

(declare-fun e!3542642 () (InoxSet Context!10322))

(assert (=> b!5766113 (= e!3542642 ((as const (Array Context!10322 Bool)) false))))

(declare-fun b!5766114 () Bool)

(declare-fun e!3542641 () (InoxSet Context!10322))

(declare-fun call!442872 () (InoxSet Context!10322))

(assert (=> b!5766114 (= e!3542641 ((_ map or) call!442872 (derivationStepZipperUp!1045 (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343)))) (h!69956 s!2326))))))

(declare-fun b!5766115 () Bool)

(declare-fun e!3542643 () Bool)

(assert (=> b!5766115 (= e!3542643 (nullable!5809 (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun bm!442867 () Bool)

(assert (=> bm!442867 (= call!442872 (derivationStepZipperDown!1119 (h!69954 (exprs!5661 (h!69955 zl!343))) (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343)))) (h!69956 s!2326)))))

(declare-fun d!1816492 () Bool)

(declare-fun c!1019374 () Bool)

(assert (=> d!1816492 (= c!1019374 e!3542643)))

(declare-fun res!2433423 () Bool)

(assert (=> d!1816492 (=> (not res!2433423) (not e!3542643))))

(assert (=> d!1816492 (= res!2433423 ((_ is Cons!63506) (exprs!5661 (h!69955 zl!343))))))

(assert (=> d!1816492 (= (derivationStepZipperUp!1045 (h!69955 zl!343) (h!69956 s!2326)) e!3542641)))

(declare-fun b!5766116 () Bool)

(assert (=> b!5766116 (= e!3542642 call!442872)))

(declare-fun b!5766117 () Bool)

(assert (=> b!5766117 (= e!3542641 e!3542642)))

(declare-fun c!1019375 () Bool)

(assert (=> b!5766117 (= c!1019375 ((_ is Cons!63506) (exprs!5661 (h!69955 zl!343))))))

(assert (= (and d!1816492 res!2433423) b!5766115))

(assert (= (and d!1816492 c!1019374) b!5766114))

(assert (= (and d!1816492 (not c!1019374)) b!5766117))

(assert (= (and b!5766117 c!1019375) b!5766116))

(assert (= (and b!5766117 (not c!1019375)) b!5766113))

(assert (= (or b!5766114 b!5766116) bm!442867))

(declare-fun m!6712040 () Bool)

(assert (=> b!5766114 m!6712040))

(assert (=> b!5766115 m!6711508))

(declare-fun m!6712042 () Bool)

(assert (=> bm!442867 m!6712042))

(assert (=> b!5765355 d!1816492))

(declare-fun d!1816494 () Bool)

(assert (=> d!1816494 (= (flatMap!1390 z!1189 lambda!313083) (dynLambda!24861 lambda!313083 (h!69955 zl!343)))))

(declare-fun lt!2289412 () Unit!156640)

(assert (=> d!1816494 (= lt!2289412 (choose!43736 z!1189 (h!69955 zl!343) lambda!313083))))

(assert (=> d!1816494 (= z!1189 (store ((as const (Array Context!10322 Bool)) false) (h!69955 zl!343) true))))

(assert (=> d!1816494 (= (lemmaFlatMapOnSingletonSet!922 z!1189 (h!69955 zl!343) lambda!313083) lt!2289412)))

(declare-fun b_lambda!217665 () Bool)

(assert (=> (not b_lambda!217665) (not d!1816494)))

(declare-fun bs!1352540 () Bool)

(assert (= bs!1352540 d!1816494))

(assert (=> bs!1352540 m!6711502))

(declare-fun m!6712044 () Bool)

(assert (=> bs!1352540 m!6712044))

(declare-fun m!6712046 () Bool)

(assert (=> bs!1352540 m!6712046))

(declare-fun m!6712048 () Bool)

(assert (=> bs!1352540 m!6712048))

(assert (=> b!5765355 d!1816494))

(assert (=> b!5765355 d!1816480))

(declare-fun e!3542646 () Bool)

(assert (=> b!5765358 (= tp!1593346 e!3542646)))

(declare-fun b!5766130 () Bool)

(declare-fun tp!1593417 () Bool)

(assert (=> b!5766130 (= e!3542646 tp!1593417)))

(declare-fun b!5766131 () Bool)

(declare-fun tp!1593419 () Bool)

(declare-fun tp!1593415 () Bool)

(assert (=> b!5766131 (= e!3542646 (and tp!1593419 tp!1593415))))

(declare-fun b!5766128 () Bool)

(assert (=> b!5766128 (= e!3542646 tp_is_empty!40807)))

(declare-fun b!5766129 () Bool)

(declare-fun tp!1593416 () Bool)

(declare-fun tp!1593418 () Bool)

(assert (=> b!5766129 (= e!3542646 (and tp!1593416 tp!1593418))))

(assert (= (and b!5765358 ((_ is ElementMatch!15777) (reg!16106 r!7292))) b!5766128))

(assert (= (and b!5765358 ((_ is Concat!24622) (reg!16106 r!7292))) b!5766129))

(assert (= (and b!5765358 ((_ is Star!15777) (reg!16106 r!7292))) b!5766130))

(assert (= (and b!5765358 ((_ is Union!15777) (reg!16106 r!7292))) b!5766131))

(declare-fun b!5766136 () Bool)

(declare-fun e!3542649 () Bool)

(declare-fun tp!1593424 () Bool)

(declare-fun tp!1593425 () Bool)

(assert (=> b!5766136 (= e!3542649 (and tp!1593424 tp!1593425))))

(assert (=> b!5765344 (= tp!1593337 e!3542649)))

(assert (= (and b!5765344 ((_ is Cons!63506) (exprs!5661 setElem!38729))) b!5766136))

(declare-fun b!5766144 () Bool)

(declare-fun e!3542655 () Bool)

(declare-fun tp!1593430 () Bool)

(assert (=> b!5766144 (= e!3542655 tp!1593430)))

(declare-fun e!3542654 () Bool)

(declare-fun tp!1593431 () Bool)

(declare-fun b!5766143 () Bool)

(assert (=> b!5766143 (= e!3542654 (and (inv!82689 (h!69955 (t!376967 zl!343))) e!3542655 tp!1593431))))

(assert (=> b!5765363 (= tp!1593344 e!3542654)))

(assert (= b!5766143 b!5766144))

(assert (= (and b!5765363 ((_ is Cons!63507) (t!376967 zl!343))) b!5766143))

(declare-fun m!6712050 () Bool)

(assert (=> b!5766143 m!6712050))

(declare-fun condSetEmpty!38735 () Bool)

(assert (=> setNonEmpty!38729 (= condSetEmpty!38735 (= setRest!38729 ((as const (Array Context!10322 Bool)) false)))))

(declare-fun setRes!38735 () Bool)

(assert (=> setNonEmpty!38729 (= tp!1593339 setRes!38735)))

(declare-fun setIsEmpty!38735 () Bool)

(assert (=> setIsEmpty!38735 setRes!38735))

(declare-fun setNonEmpty!38735 () Bool)

(declare-fun setElem!38735 () Context!10322)

(declare-fun tp!1593436 () Bool)

(declare-fun e!3542658 () Bool)

(assert (=> setNonEmpty!38735 (= setRes!38735 (and tp!1593436 (inv!82689 setElem!38735) e!3542658))))

(declare-fun setRest!38735 () (InoxSet Context!10322))

(assert (=> setNonEmpty!38735 (= setRest!38729 ((_ map or) (store ((as const (Array Context!10322 Bool)) false) setElem!38735 true) setRest!38735))))

(declare-fun b!5766149 () Bool)

(declare-fun tp!1593437 () Bool)

(assert (=> b!5766149 (= e!3542658 tp!1593437)))

(assert (= (and setNonEmpty!38729 condSetEmpty!38735) setIsEmpty!38735))

(assert (= (and setNonEmpty!38729 (not condSetEmpty!38735)) setNonEmpty!38735))

(assert (= setNonEmpty!38735 b!5766149))

(declare-fun m!6712052 () Bool)

(assert (=> setNonEmpty!38735 m!6712052))

(declare-fun b!5766150 () Bool)

(declare-fun e!3542659 () Bool)

(declare-fun tp!1593438 () Bool)

(declare-fun tp!1593439 () Bool)

(assert (=> b!5766150 (= e!3542659 (and tp!1593438 tp!1593439))))

(assert (=> b!5765362 (= tp!1593340 e!3542659)))

(assert (= (and b!5765362 ((_ is Cons!63506) (exprs!5661 (h!69955 zl!343)))) b!5766150))

(declare-fun e!3542660 () Bool)

(assert (=> b!5765352 (= tp!1593338 e!3542660)))

(declare-fun b!5766153 () Bool)

(declare-fun tp!1593442 () Bool)

(assert (=> b!5766153 (= e!3542660 tp!1593442)))

(declare-fun b!5766154 () Bool)

(declare-fun tp!1593444 () Bool)

(declare-fun tp!1593440 () Bool)

(assert (=> b!5766154 (= e!3542660 (and tp!1593444 tp!1593440))))

(declare-fun b!5766151 () Bool)

(assert (=> b!5766151 (= e!3542660 tp_is_empty!40807)))

(declare-fun b!5766152 () Bool)

(declare-fun tp!1593441 () Bool)

(declare-fun tp!1593443 () Bool)

(assert (=> b!5766152 (= e!3542660 (and tp!1593441 tp!1593443))))

(assert (= (and b!5765352 ((_ is ElementMatch!15777) (regOne!32066 r!7292))) b!5766151))

(assert (= (and b!5765352 ((_ is Concat!24622) (regOne!32066 r!7292))) b!5766152))

(assert (= (and b!5765352 ((_ is Star!15777) (regOne!32066 r!7292))) b!5766153))

(assert (= (and b!5765352 ((_ is Union!15777) (regOne!32066 r!7292))) b!5766154))

(declare-fun e!3542661 () Bool)

(assert (=> b!5765352 (= tp!1593343 e!3542661)))

(declare-fun b!5766157 () Bool)

(declare-fun tp!1593447 () Bool)

(assert (=> b!5766157 (= e!3542661 tp!1593447)))

(declare-fun b!5766158 () Bool)

(declare-fun tp!1593449 () Bool)

(declare-fun tp!1593445 () Bool)

(assert (=> b!5766158 (= e!3542661 (and tp!1593449 tp!1593445))))

(declare-fun b!5766155 () Bool)

(assert (=> b!5766155 (= e!3542661 tp_is_empty!40807)))

(declare-fun b!5766156 () Bool)

(declare-fun tp!1593446 () Bool)

(declare-fun tp!1593448 () Bool)

(assert (=> b!5766156 (= e!3542661 (and tp!1593446 tp!1593448))))

(assert (= (and b!5765352 ((_ is ElementMatch!15777) (regTwo!32066 r!7292))) b!5766155))

(assert (= (and b!5765352 ((_ is Concat!24622) (regTwo!32066 r!7292))) b!5766156))

(assert (= (and b!5765352 ((_ is Star!15777) (regTwo!32066 r!7292))) b!5766157))

(assert (= (and b!5765352 ((_ is Union!15777) (regTwo!32066 r!7292))) b!5766158))

(declare-fun e!3542662 () Bool)

(assert (=> b!5765351 (= tp!1593342 e!3542662)))

(declare-fun b!5766161 () Bool)

(declare-fun tp!1593452 () Bool)

(assert (=> b!5766161 (= e!3542662 tp!1593452)))

(declare-fun b!5766162 () Bool)

(declare-fun tp!1593454 () Bool)

(declare-fun tp!1593450 () Bool)

(assert (=> b!5766162 (= e!3542662 (and tp!1593454 tp!1593450))))

(declare-fun b!5766159 () Bool)

(assert (=> b!5766159 (= e!3542662 tp_is_empty!40807)))

(declare-fun b!5766160 () Bool)

(declare-fun tp!1593451 () Bool)

(declare-fun tp!1593453 () Bool)

(assert (=> b!5766160 (= e!3542662 (and tp!1593451 tp!1593453))))

(assert (= (and b!5765351 ((_ is ElementMatch!15777) (regOne!32067 r!7292))) b!5766159))

(assert (= (and b!5765351 ((_ is Concat!24622) (regOne!32067 r!7292))) b!5766160))

(assert (= (and b!5765351 ((_ is Star!15777) (regOne!32067 r!7292))) b!5766161))

(assert (= (and b!5765351 ((_ is Union!15777) (regOne!32067 r!7292))) b!5766162))

(declare-fun e!3542663 () Bool)

(assert (=> b!5765351 (= tp!1593341 e!3542663)))

(declare-fun b!5766165 () Bool)

(declare-fun tp!1593457 () Bool)

(assert (=> b!5766165 (= e!3542663 tp!1593457)))

(declare-fun b!5766166 () Bool)

(declare-fun tp!1593459 () Bool)

(declare-fun tp!1593455 () Bool)

(assert (=> b!5766166 (= e!3542663 (and tp!1593459 tp!1593455))))

(declare-fun b!5766163 () Bool)

(assert (=> b!5766163 (= e!3542663 tp_is_empty!40807)))

(declare-fun b!5766164 () Bool)

(declare-fun tp!1593456 () Bool)

(declare-fun tp!1593458 () Bool)

(assert (=> b!5766164 (= e!3542663 (and tp!1593456 tp!1593458))))

(assert (= (and b!5765351 ((_ is ElementMatch!15777) (regTwo!32067 r!7292))) b!5766163))

(assert (= (and b!5765351 ((_ is Concat!24622) (regTwo!32067 r!7292))) b!5766164))

(assert (= (and b!5765351 ((_ is Star!15777) (regTwo!32067 r!7292))) b!5766165))

(assert (= (and b!5765351 ((_ is Union!15777) (regTwo!32067 r!7292))) b!5766166))

(declare-fun b!5766171 () Bool)

(declare-fun e!3542666 () Bool)

(declare-fun tp!1593462 () Bool)

(assert (=> b!5766171 (= e!3542666 (and tp_is_empty!40807 tp!1593462))))

(assert (=> b!5765356 (= tp!1593345 e!3542666)))

(assert (= (and b!5765356 ((_ is Cons!63508) (t!376968 s!2326))) b!5766171))

(declare-fun b_lambda!217667 () Bool)

(assert (= b_lambda!217663 (or b!5765355 b_lambda!217667)))

(declare-fun bs!1352541 () Bool)

(declare-fun d!1816496 () Bool)

(assert (= bs!1352541 (and d!1816496 b!5765355)))

(assert (=> bs!1352541 (= (dynLambda!24861 lambda!313083 lt!2289296) (derivationStepZipperUp!1045 lt!2289296 (h!69956 s!2326)))))

(assert (=> bs!1352541 m!6711506))

(assert (=> d!1816482 d!1816496))

(declare-fun b_lambda!217669 () Bool)

(assert (= b_lambda!217665 (or b!5765355 b_lambda!217669)))

(declare-fun bs!1352542 () Bool)

(declare-fun d!1816498 () Bool)

(assert (= bs!1352542 (and d!1816498 b!5765355)))

(assert (=> bs!1352542 (= (dynLambda!24861 lambda!313083 (h!69955 zl!343)) (derivationStepZipperUp!1045 (h!69955 zl!343) (h!69956 s!2326)))))

(assert (=> bs!1352542 m!6711504))

(assert (=> d!1816494 d!1816498))

(check-sat (not d!1816464) (not b!5765947) (not b!5765997) (not d!1816474) (not d!1816466) (not b_lambda!217669) (not bs!1352541) (not b!5765492) (not b!5766157) (not b!5765491) (not b!5765915) (not b!5766110) (not b!5765376) (not b!5766019) (not b!5766130) (not d!1816344) (not bm!442788) (not b!5765912) (not bm!442840) (not d!1816456) (not d!1816490) (not b!5765984) (not b!5765908) (not d!1816472) (not b!5766136) (not bm!442864) (not bm!442835) (not b!5766114) (not b!5765994) (not b!5765999) (not bs!1352542) (not d!1816404) (not b!5765585) (not b!5766143) (not b!5765589) (not b!5765605) (not b!5765460) (not bm!442786) (not d!1816482) (not bm!442842) (not setNonEmpty!38735) (not b!5765588) (not b!5765842) (not b!5765713) (not b!5765844) (not b!5765389) (not bm!442834) (not d!1816470) (not b!5766149) (not b!5766042) (not bm!442865) (not d!1816324) (not d!1816468) (not b!5765914) tp_is_empty!40807 (not b!5766099) (not b!5766071) (not bm!442838) (not b!5765987) (not b!5766041) (not b!5766158) (not d!1816454) (not b!5766046) (not d!1816352) (not bm!442843) (not b!5766164) (not b!5766018) (not d!1816478) (not b!5766144) (not b!5765582) (not b!5766016) (not b!5765709) (not b!5766153) (not d!1816316) (not b!5765606) (not b!5765707) (not d!1816486) (not b!5766162) (not d!1816452) (not d!1816322) (not d!1816374) (not b!5765943) (not bm!442867) (not b!5766009) (not bm!442847) (not b!5766156) (not d!1816494) (not b!5766044) (not d!1816476) (not b!5766160) (not b!5766152) (not d!1816326) (not b!5766109) (not b!5766129) (not b!5766115) (not b!5766165) (not b!5765711) (not b!5766045) (not d!1816318) (not b!5765715) (not b!5766161) (not b!5766171) (not d!1816434) (not d!1816380) (not b!5765993) (not b!5766017) (not d!1816336) (not b!5765751) (not b!5766154) (not b!5765380) (not b!5766012) (not b!5765587) (not b!5765379) (not d!1816334) (not b!5765420) (not b_lambda!217667) (not b!5766072) (not b!5765991) (not bm!442839) (not b!5765378) (not b!5765377) (not b!5765913) (not bm!442844) (not b!5765584) (not d!1816342) (not d!1816432) (not d!1816462) (not b!5765714) (not d!1816382) (not b!5766150) (not b!5765381) (not d!1816320) (not bm!442866) (not b!5765905) (not bm!442841) (not bm!442861) (not b!5766166) (not b!5766131) (not b!5765992) (not b!5765708) (not b!5766043) (not d!1816460) (not b!5765581))
(check-sat)
(get-model)

(declare-fun bs!1352543 () Bool)

(declare-fun d!1816500 () Bool)

(assert (= bs!1352543 (and d!1816500 d!1816318)))

(declare-fun lambda!313156 () Int)

(assert (=> bs!1352543 (= lambda!313156 lambda!313089)))

(declare-fun bs!1352544 () Bool)

(assert (= bs!1352544 (and d!1816500 d!1816334)))

(assert (=> bs!1352544 (= lambda!313156 lambda!313093)))

(declare-fun bs!1352545 () Bool)

(assert (= bs!1352545 (and d!1816500 d!1816352)))

(assert (=> bs!1352545 (= lambda!313156 lambda!313102)))

(declare-fun bs!1352546 () Bool)

(assert (= bs!1352546 (and d!1816500 d!1816404)))

(assert (=> bs!1352546 (= lambda!313156 lambda!313119)))

(declare-fun bs!1352547 () Bool)

(assert (= bs!1352547 (and d!1816500 d!1816382)))

(assert (=> bs!1352547 (= lambda!313156 lambda!313109)))

(declare-fun b!5766172 () Bool)

(declare-fun e!3542670 () Bool)

(declare-fun lt!2289413 () Regex!15777)

(assert (=> b!5766172 (= e!3542670 (isEmptyLang!1272 lt!2289413))))

(declare-fun b!5766173 () Bool)

(declare-fun e!3542671 () Regex!15777)

(assert (=> b!5766173 (= e!3542671 (Union!15777 (h!69954 (t!376966 (unfocusZipperList!1205 zl!343))) (generalisedUnion!1640 (t!376966 (t!376966 (unfocusZipperList!1205 zl!343))))))))

(declare-fun b!5766174 () Bool)

(declare-fun e!3542669 () Bool)

(assert (=> b!5766174 (= e!3542669 (isEmpty!35398 (t!376966 (t!376966 (unfocusZipperList!1205 zl!343)))))))

(declare-fun b!5766175 () Bool)

(declare-fun e!3542668 () Regex!15777)

(assert (=> b!5766175 (= e!3542668 (h!69954 (t!376966 (unfocusZipperList!1205 zl!343))))))

(declare-fun b!5766176 () Bool)

(declare-fun e!3542672 () Bool)

(assert (=> b!5766176 (= e!3542672 e!3542670)))

(declare-fun c!1019377 () Bool)

(assert (=> b!5766176 (= c!1019377 (isEmpty!35398 (t!376966 (unfocusZipperList!1205 zl!343))))))

(declare-fun b!5766177 () Bool)

(assert (=> b!5766177 (= e!3542671 EmptyLang!15777)))

(assert (=> d!1816500 e!3542672))

(declare-fun res!2433424 () Bool)

(assert (=> d!1816500 (=> (not res!2433424) (not e!3542672))))

(assert (=> d!1816500 (= res!2433424 (validRegex!7513 lt!2289413))))

(assert (=> d!1816500 (= lt!2289413 e!3542668)))

(declare-fun c!1019379 () Bool)

(assert (=> d!1816500 (= c!1019379 e!3542669)))

(declare-fun res!2433425 () Bool)

(assert (=> d!1816500 (=> (not res!2433425) (not e!3542669))))

(assert (=> d!1816500 (= res!2433425 ((_ is Cons!63506) (t!376966 (unfocusZipperList!1205 zl!343))))))

(assert (=> d!1816500 (forall!14894 (t!376966 (unfocusZipperList!1205 zl!343)) lambda!313156)))

(assert (=> d!1816500 (= (generalisedUnion!1640 (t!376966 (unfocusZipperList!1205 zl!343))) lt!2289413)))

(declare-fun b!5766178 () Bool)

(declare-fun e!3542667 () Bool)

(assert (=> b!5766178 (= e!3542667 (= lt!2289413 (head!12190 (t!376966 (unfocusZipperList!1205 zl!343)))))))

(declare-fun b!5766179 () Bool)

(assert (=> b!5766179 (= e!3542667 (isUnion!702 lt!2289413))))

(declare-fun b!5766180 () Bool)

(assert (=> b!5766180 (= e!3542670 e!3542667)))

(declare-fun c!1019378 () Bool)

(assert (=> b!5766180 (= c!1019378 (isEmpty!35398 (tail!11285 (t!376966 (unfocusZipperList!1205 zl!343)))))))

(declare-fun b!5766181 () Bool)

(assert (=> b!5766181 (= e!3542668 e!3542671)))

(declare-fun c!1019376 () Bool)

(assert (=> b!5766181 (= c!1019376 ((_ is Cons!63506) (t!376966 (unfocusZipperList!1205 zl!343))))))

(assert (= (and d!1816500 res!2433425) b!5766174))

(assert (= (and d!1816500 c!1019379) b!5766175))

(assert (= (and d!1816500 (not c!1019379)) b!5766181))

(assert (= (and b!5766181 c!1019376) b!5766173))

(assert (= (and b!5766181 (not c!1019376)) b!5766177))

(assert (= (and d!1816500 res!2433424) b!5766176))

(assert (= (and b!5766176 c!1019377) b!5766172))

(assert (= (and b!5766176 (not c!1019377)) b!5766180))

(assert (= (and b!5766180 c!1019378) b!5766178))

(assert (= (and b!5766180 (not c!1019378)) b!5766179))

(declare-fun m!6712054 () Bool)

(assert (=> b!5766172 m!6712054))

(declare-fun m!6712056 () Bool)

(assert (=> b!5766178 m!6712056))

(declare-fun m!6712058 () Bool)

(assert (=> b!5766179 m!6712058))

(declare-fun m!6712060 () Bool)

(assert (=> b!5766180 m!6712060))

(assert (=> b!5766180 m!6712060))

(declare-fun m!6712062 () Bool)

(assert (=> b!5766180 m!6712062))

(assert (=> b!5766176 m!6711802))

(declare-fun m!6712064 () Bool)

(assert (=> b!5766173 m!6712064))

(declare-fun m!6712066 () Bool)

(assert (=> b!5766174 m!6712066))

(declare-fun m!6712068 () Bool)

(assert (=> d!1816500 m!6712068))

(declare-fun m!6712070 () Bool)

(assert (=> d!1816500 m!6712070))

(assert (=> b!5765708 d!1816500))

(declare-fun d!1816502 () Bool)

(assert (=> d!1816502 (= (head!12190 (exprs!5661 (h!69955 zl!343))) (h!69954 (exprs!5661 (h!69955 zl!343))))))

(assert (=> b!5765588 d!1816502))

(declare-fun b!5766182 () Bool)

(declare-fun e!3542678 () Bool)

(declare-fun e!3542674 () Bool)

(assert (=> b!5766182 (= e!3542678 e!3542674)))

(declare-fun res!2433426 () Bool)

(assert (=> b!5766182 (=> res!2433426 e!3542674)))

(declare-fun call!442873 () Bool)

(assert (=> b!5766182 (= res!2433426 call!442873)))

(declare-fun bm!442868 () Bool)

(assert (=> bm!442868 (= call!442873 (isEmpty!35400 (tail!11284 s!2326)))))

(declare-fun b!5766184 () Bool)

(assert (=> b!5766184 (= e!3542674 (not (= (head!12189 (tail!11284 s!2326)) (c!1019159 (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 s!2326))))))))

(declare-fun b!5766185 () Bool)

(declare-fun res!2433427 () Bool)

(declare-fun e!3542677 () Bool)

(assert (=> b!5766185 (=> res!2433427 e!3542677)))

(declare-fun e!3542679 () Bool)

(assert (=> b!5766185 (= res!2433427 e!3542679)))

(declare-fun res!2433429 () Bool)

(assert (=> b!5766185 (=> (not res!2433429) (not e!3542679))))

(declare-fun lt!2289414 () Bool)

(assert (=> b!5766185 (= res!2433429 lt!2289414)))

(declare-fun b!5766186 () Bool)

(assert (=> b!5766186 (= e!3542677 e!3542678)))

(declare-fun res!2433428 () Bool)

(assert (=> b!5766186 (=> (not res!2433428) (not e!3542678))))

(assert (=> b!5766186 (= res!2433428 (not lt!2289414))))

(declare-fun b!5766187 () Bool)

(declare-fun res!2433430 () Bool)

(assert (=> b!5766187 (=> (not res!2433430) (not e!3542679))))

(assert (=> b!5766187 (= res!2433430 (isEmpty!35400 (tail!11284 (tail!11284 s!2326))))))

(declare-fun b!5766188 () Bool)

(declare-fun res!2433431 () Bool)

(assert (=> b!5766188 (=> (not res!2433431) (not e!3542679))))

(assert (=> b!5766188 (= res!2433431 (not call!442873))))

(declare-fun b!5766189 () Bool)

(declare-fun e!3542675 () Bool)

(declare-fun e!3542676 () Bool)

(assert (=> b!5766189 (= e!3542675 e!3542676)))

(declare-fun c!1019380 () Bool)

(assert (=> b!5766189 (= c!1019380 ((_ is EmptyLang!15777) (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 s!2326))))))

(declare-fun b!5766190 () Bool)

(assert (=> b!5766190 (= e!3542675 (= lt!2289414 call!442873))))

(declare-fun b!5766191 () Bool)

(declare-fun e!3542673 () Bool)

(assert (=> b!5766191 (= e!3542673 (matchR!7962 (derivativeStep!4558 (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 s!2326)) (head!12189 (tail!11284 s!2326))) (tail!11284 (tail!11284 s!2326))))))

(declare-fun d!1816504 () Bool)

(assert (=> d!1816504 e!3542675))

(declare-fun c!1019382 () Bool)

(assert (=> d!1816504 (= c!1019382 ((_ is EmptyExpr!15777) (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 s!2326))))))

(assert (=> d!1816504 (= lt!2289414 e!3542673)))

(declare-fun c!1019381 () Bool)

(assert (=> d!1816504 (= c!1019381 (isEmpty!35400 (tail!11284 s!2326)))))

(assert (=> d!1816504 (validRegex!7513 (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 s!2326)))))

(assert (=> d!1816504 (= (matchR!7962 (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 s!2326)) (tail!11284 s!2326)) lt!2289414)))

(declare-fun b!5766183 () Bool)

(assert (=> b!5766183 (= e!3542676 (not lt!2289414))))

(declare-fun b!5766192 () Bool)

(assert (=> b!5766192 (= e!3542679 (= (head!12189 (tail!11284 s!2326)) (c!1019159 (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 s!2326)))))))

(declare-fun b!5766193 () Bool)

(assert (=> b!5766193 (= e!3542673 (nullable!5809 (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 s!2326))))))

(declare-fun b!5766194 () Bool)

(declare-fun res!2433433 () Bool)

(assert (=> b!5766194 (=> res!2433433 e!3542674)))

(assert (=> b!5766194 (= res!2433433 (not (isEmpty!35400 (tail!11284 (tail!11284 s!2326)))))))

(declare-fun b!5766195 () Bool)

(declare-fun res!2433432 () Bool)

(assert (=> b!5766195 (=> res!2433432 e!3542677)))

(assert (=> b!5766195 (= res!2433432 (not ((_ is ElementMatch!15777) (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 s!2326)))))))

(assert (=> b!5766195 (= e!3542676 e!3542677)))

(assert (= (and d!1816504 c!1019381) b!5766193))

(assert (= (and d!1816504 (not c!1019381)) b!5766191))

(assert (= (and d!1816504 c!1019382) b!5766190))

(assert (= (and d!1816504 (not c!1019382)) b!5766189))

(assert (= (and b!5766189 c!1019380) b!5766183))

(assert (= (and b!5766189 (not c!1019380)) b!5766195))

(assert (= (and b!5766195 (not res!2433432)) b!5766185))

(assert (= (and b!5766185 res!2433429) b!5766188))

(assert (= (and b!5766188 res!2433431) b!5766187))

(assert (= (and b!5766187 res!2433430) b!5766192))

(assert (= (and b!5766185 (not res!2433427)) b!5766186))

(assert (= (and b!5766186 res!2433428) b!5766182))

(assert (= (and b!5766182 (not res!2433426)) b!5766194))

(assert (= (and b!5766194 (not res!2433433)) b!5766184))

(assert (= (or b!5766190 b!5766182 b!5766188) bm!442868))

(assert (=> b!5766194 m!6711586))

(declare-fun m!6712072 () Bool)

(assert (=> b!5766194 m!6712072))

(assert (=> b!5766194 m!6712072))

(declare-fun m!6712074 () Bool)

(assert (=> b!5766194 m!6712074))

(assert (=> b!5766191 m!6711586))

(declare-fun m!6712076 () Bool)

(assert (=> b!5766191 m!6712076))

(assert (=> b!5766191 m!6711930))

(assert (=> b!5766191 m!6712076))

(declare-fun m!6712078 () Bool)

(assert (=> b!5766191 m!6712078))

(assert (=> b!5766191 m!6711586))

(assert (=> b!5766191 m!6712072))

(assert (=> b!5766191 m!6712078))

(assert (=> b!5766191 m!6712072))

(declare-fun m!6712080 () Bool)

(assert (=> b!5766191 m!6712080))

(assert (=> b!5766192 m!6711586))

(assert (=> b!5766192 m!6712076))

(assert (=> b!5766187 m!6711586))

(assert (=> b!5766187 m!6712072))

(assert (=> b!5766187 m!6712072))

(assert (=> b!5766187 m!6712074))

(assert (=> bm!442868 m!6711586))

(assert (=> bm!442868 m!6711928))

(assert (=> b!5766193 m!6711930))

(declare-fun m!6712082 () Bool)

(assert (=> b!5766193 m!6712082))

(assert (=> d!1816504 m!6711586))

(assert (=> d!1816504 m!6711928))

(assert (=> d!1816504 m!6711930))

(declare-fun m!6712084 () Bool)

(assert (=> d!1816504 m!6712084))

(assert (=> b!5766184 m!6711586))

(assert (=> b!5766184 m!6712076))

(assert (=> b!5765912 d!1816504))

(declare-fun b!5766216 () Bool)

(declare-fun e!3542692 () Regex!15777)

(declare-fun call!442883 () Regex!15777)

(assert (=> b!5766216 (= e!3542692 (Union!15777 (Concat!24622 call!442883 (regTwo!32066 (regOne!32066 r!7292))) EmptyLang!15777))))

(declare-fun bm!442877 () Bool)

(declare-fun c!1019394 () Bool)

(declare-fun call!442884 () Regex!15777)

(declare-fun c!1019393 () Bool)

(declare-fun c!1019397 () Bool)

(assert (=> bm!442877 (= call!442884 (derivativeStep!4558 (ite c!1019393 (regOne!32067 (regOne!32066 r!7292)) (ite c!1019394 (reg!16106 (regOne!32066 r!7292)) (ite c!1019397 (regTwo!32066 (regOne!32066 r!7292)) (regOne!32066 (regOne!32066 r!7292))))) (head!12189 s!2326)))))

(declare-fun b!5766217 () Bool)

(declare-fun e!3542690 () Regex!15777)

(declare-fun e!3542694 () Regex!15777)

(assert (=> b!5766217 (= e!3542690 e!3542694)))

(assert (=> b!5766217 (= c!1019394 ((_ is Star!15777) (regOne!32066 r!7292)))))

(declare-fun b!5766218 () Bool)

(assert (=> b!5766218 (= c!1019393 ((_ is Union!15777) (regOne!32066 r!7292)))))

(declare-fun e!3542691 () Regex!15777)

(assert (=> b!5766218 (= e!3542691 e!3542690)))

(declare-fun bm!442878 () Bool)

(declare-fun call!442885 () Regex!15777)

(assert (=> bm!442878 (= call!442883 call!442885)))

(declare-fun b!5766220 () Bool)

(assert (=> b!5766220 (= e!3542694 (Concat!24622 call!442885 (regOne!32066 r!7292)))))

(declare-fun b!5766221 () Bool)

(declare-fun call!442882 () Regex!15777)

(assert (=> b!5766221 (= e!3542690 (Union!15777 call!442884 call!442882))))

(declare-fun b!5766222 () Bool)

(assert (=> b!5766222 (= e!3542691 (ite (= (head!12189 s!2326) (c!1019159 (regOne!32066 r!7292))) EmptyExpr!15777 EmptyLang!15777))))

(declare-fun bm!442879 () Bool)

(assert (=> bm!442879 (= call!442885 call!442884)))

(declare-fun d!1816506 () Bool)

(declare-fun lt!2289417 () Regex!15777)

(assert (=> d!1816506 (validRegex!7513 lt!2289417)))

(declare-fun e!3542693 () Regex!15777)

(assert (=> d!1816506 (= lt!2289417 e!3542693)))

(declare-fun c!1019396 () Bool)

(assert (=> d!1816506 (= c!1019396 (or ((_ is EmptyExpr!15777) (regOne!32066 r!7292)) ((_ is EmptyLang!15777) (regOne!32066 r!7292))))))

(assert (=> d!1816506 (validRegex!7513 (regOne!32066 r!7292))))

(assert (=> d!1816506 (= (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 s!2326)) lt!2289417)))

(declare-fun b!5766219 () Bool)

(assert (=> b!5766219 (= e!3542693 EmptyLang!15777)))

(declare-fun b!5766223 () Bool)

(assert (=> b!5766223 (= e!3542692 (Union!15777 (Concat!24622 call!442882 (regTwo!32066 (regOne!32066 r!7292))) call!442883))))

(declare-fun b!5766224 () Bool)

(assert (=> b!5766224 (= e!3542693 e!3542691)))

(declare-fun c!1019395 () Bool)

(assert (=> b!5766224 (= c!1019395 ((_ is ElementMatch!15777) (regOne!32066 r!7292)))))

(declare-fun bm!442880 () Bool)

(assert (=> bm!442880 (= call!442882 (derivativeStep!4558 (ite c!1019393 (regTwo!32067 (regOne!32066 r!7292)) (regOne!32066 (regOne!32066 r!7292))) (head!12189 s!2326)))))

(declare-fun b!5766225 () Bool)

(assert (=> b!5766225 (= c!1019397 (nullable!5809 (regOne!32066 (regOne!32066 r!7292))))))

(assert (=> b!5766225 (= e!3542694 e!3542692)))

(assert (= (and d!1816506 c!1019396) b!5766219))

(assert (= (and d!1816506 (not c!1019396)) b!5766224))

(assert (= (and b!5766224 c!1019395) b!5766222))

(assert (= (and b!5766224 (not c!1019395)) b!5766218))

(assert (= (and b!5766218 c!1019393) b!5766221))

(assert (= (and b!5766218 (not c!1019393)) b!5766217))

(assert (= (and b!5766217 c!1019394) b!5766220))

(assert (= (and b!5766217 (not c!1019394)) b!5766225))

(assert (= (and b!5766225 c!1019397) b!5766223))

(assert (= (and b!5766225 (not c!1019397)) b!5766216))

(assert (= (or b!5766223 b!5766216) bm!442878))

(assert (= (or b!5766220 bm!442878) bm!442879))

(assert (= (or b!5766221 b!5766223) bm!442880))

(assert (= (or b!5766221 bm!442879) bm!442877))

(assert (=> bm!442877 m!6711582))

(declare-fun m!6712086 () Bool)

(assert (=> bm!442877 m!6712086))

(declare-fun m!6712088 () Bool)

(assert (=> d!1816506 m!6712088))

(assert (=> d!1816506 m!6711904))

(assert (=> bm!442880 m!6711582))

(declare-fun m!6712090 () Bool)

(assert (=> bm!442880 m!6712090))

(assert (=> b!5766225 m!6711568))

(assert (=> b!5765912 d!1816506))

(declare-fun d!1816508 () Bool)

(assert (=> d!1816508 (= (head!12189 s!2326) (h!69956 s!2326))))

(assert (=> b!5765912 d!1816508))

(declare-fun d!1816510 () Bool)

(assert (=> d!1816510 (= (tail!11284 s!2326) (t!376968 s!2326))))

(assert (=> b!5765912 d!1816510))

(declare-fun d!1816512 () Bool)

(assert (=> d!1816512 (= (isEmpty!35400 (t!376968 s!2326)) ((_ is Nil!63508) (t!376968 s!2326)))))

(assert (=> d!1816380 d!1816512))

(declare-fun b!5766226 () Bool)

(declare-fun e!3542696 () (InoxSet Context!10322))

(assert (=> b!5766226 (= e!3542696 ((as const (Array Context!10322 Bool)) false))))

(declare-fun e!3542695 () (InoxSet Context!10322))

(declare-fun b!5766227 () Bool)

(declare-fun call!442886 () (InoxSet Context!10322))

(assert (=> b!5766227 (= e!3542695 ((_ map or) call!442886 (derivationStepZipperUp!1045 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343))))))) (h!69956 s!2326))))))

(declare-fun b!5766228 () Bool)

(declare-fun e!3542697 () Bool)

(assert (=> b!5766228 (= e!3542697 (nullable!5809 (h!69954 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343))))))))))

(declare-fun bm!442881 () Bool)

(assert (=> bm!442881 (= call!442886 (derivationStepZipperDown!1119 (h!69954 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343)))))) (Context!10323 (t!376966 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343))))))) (h!69956 s!2326)))))

(declare-fun d!1816514 () Bool)

(declare-fun c!1019398 () Bool)

(assert (=> d!1816514 (= c!1019398 e!3542697)))

(declare-fun res!2433434 () Bool)

(assert (=> d!1816514 (=> (not res!2433434) (not e!3542697))))

(assert (=> d!1816514 (= res!2433434 ((_ is Cons!63506) (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343)))))))))

(assert (=> d!1816514 (= (derivationStepZipperUp!1045 (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343)))) (h!69956 s!2326)) e!3542695)))

(declare-fun b!5766229 () Bool)

(assert (=> b!5766229 (= e!3542696 call!442886)))

(declare-fun b!5766230 () Bool)

(assert (=> b!5766230 (= e!3542695 e!3542696)))

(declare-fun c!1019399 () Bool)

(assert (=> b!5766230 (= c!1019399 ((_ is Cons!63506) (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343)))))))))

(assert (= (and d!1816514 res!2433434) b!5766228))

(assert (= (and d!1816514 c!1019398) b!5766227))

(assert (= (and d!1816514 (not c!1019398)) b!5766230))

(assert (= (and b!5766230 c!1019399) b!5766229))

(assert (= (and b!5766230 (not c!1019399)) b!5766226))

(assert (= (or b!5766227 b!5766229) bm!442881))

(declare-fun m!6712092 () Bool)

(assert (=> b!5766227 m!6712092))

(declare-fun m!6712094 () Bool)

(assert (=> b!5766228 m!6712094))

(declare-fun m!6712096 () Bool)

(assert (=> bm!442881 m!6712096))

(assert (=> b!5766114 d!1816514))

(declare-fun d!1816516 () Bool)

(assert (=> d!1816516 (= (isDefined!12489 lt!2289400) (not (isEmpty!35402 lt!2289400)))))

(declare-fun bs!1352548 () Bool)

(assert (= bs!1352548 d!1816516))

(declare-fun m!6712098 () Bool)

(assert (=> bs!1352548 m!6712098))

(assert (=> d!1816466 d!1816516))

(declare-fun b!5766231 () Bool)

(declare-fun e!3542703 () Bool)

(declare-fun e!3542699 () Bool)

(assert (=> b!5766231 (= e!3542703 e!3542699)))

(declare-fun res!2433435 () Bool)

(assert (=> b!5766231 (=> res!2433435 e!3542699)))

(declare-fun call!442887 () Bool)

(assert (=> b!5766231 (= res!2433435 call!442887)))

(declare-fun bm!442882 () Bool)

(assert (=> bm!442882 (= call!442887 (isEmpty!35400 Nil!63508))))

(declare-fun b!5766233 () Bool)

(assert (=> b!5766233 (= e!3542699 (not (= (head!12189 Nil!63508) (c!1019159 (regOne!32066 r!7292)))))))

(declare-fun b!5766234 () Bool)

(declare-fun res!2433436 () Bool)

(declare-fun e!3542702 () Bool)

(assert (=> b!5766234 (=> res!2433436 e!3542702)))

(declare-fun e!3542704 () Bool)

(assert (=> b!5766234 (= res!2433436 e!3542704)))

(declare-fun res!2433438 () Bool)

(assert (=> b!5766234 (=> (not res!2433438) (not e!3542704))))

(declare-fun lt!2289418 () Bool)

(assert (=> b!5766234 (= res!2433438 lt!2289418)))

(declare-fun b!5766235 () Bool)

(assert (=> b!5766235 (= e!3542702 e!3542703)))

(declare-fun res!2433437 () Bool)

(assert (=> b!5766235 (=> (not res!2433437) (not e!3542703))))

(assert (=> b!5766235 (= res!2433437 (not lt!2289418))))

(declare-fun b!5766236 () Bool)

(declare-fun res!2433439 () Bool)

(assert (=> b!5766236 (=> (not res!2433439) (not e!3542704))))

(assert (=> b!5766236 (= res!2433439 (isEmpty!35400 (tail!11284 Nil!63508)))))

(declare-fun b!5766237 () Bool)

(declare-fun res!2433440 () Bool)

(assert (=> b!5766237 (=> (not res!2433440) (not e!3542704))))

(assert (=> b!5766237 (= res!2433440 (not call!442887))))

(declare-fun b!5766238 () Bool)

(declare-fun e!3542700 () Bool)

(declare-fun e!3542701 () Bool)

(assert (=> b!5766238 (= e!3542700 e!3542701)))

(declare-fun c!1019400 () Bool)

(assert (=> b!5766238 (= c!1019400 ((_ is EmptyLang!15777) (regOne!32066 r!7292)))))

(declare-fun b!5766239 () Bool)

(assert (=> b!5766239 (= e!3542700 (= lt!2289418 call!442887))))

(declare-fun b!5766240 () Bool)

(declare-fun e!3542698 () Bool)

(assert (=> b!5766240 (= e!3542698 (matchR!7962 (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 Nil!63508)) (tail!11284 Nil!63508)))))

(declare-fun d!1816518 () Bool)

(assert (=> d!1816518 e!3542700))

(declare-fun c!1019402 () Bool)

(assert (=> d!1816518 (= c!1019402 ((_ is EmptyExpr!15777) (regOne!32066 r!7292)))))

(assert (=> d!1816518 (= lt!2289418 e!3542698)))

(declare-fun c!1019401 () Bool)

(assert (=> d!1816518 (= c!1019401 (isEmpty!35400 Nil!63508))))

(assert (=> d!1816518 (validRegex!7513 (regOne!32066 r!7292))))

(assert (=> d!1816518 (= (matchR!7962 (regOne!32066 r!7292) Nil!63508) lt!2289418)))

(declare-fun b!5766232 () Bool)

(assert (=> b!5766232 (= e!3542701 (not lt!2289418))))

(declare-fun b!5766241 () Bool)

(assert (=> b!5766241 (= e!3542704 (= (head!12189 Nil!63508) (c!1019159 (regOne!32066 r!7292))))))

(declare-fun b!5766242 () Bool)

(assert (=> b!5766242 (= e!3542698 (nullable!5809 (regOne!32066 r!7292)))))

(declare-fun b!5766243 () Bool)

(declare-fun res!2433442 () Bool)

(assert (=> b!5766243 (=> res!2433442 e!3542699)))

(assert (=> b!5766243 (= res!2433442 (not (isEmpty!35400 (tail!11284 Nil!63508))))))

(declare-fun b!5766244 () Bool)

(declare-fun res!2433441 () Bool)

(assert (=> b!5766244 (=> res!2433441 e!3542702)))

(assert (=> b!5766244 (= res!2433441 (not ((_ is ElementMatch!15777) (regOne!32066 r!7292))))))

(assert (=> b!5766244 (= e!3542701 e!3542702)))

(assert (= (and d!1816518 c!1019401) b!5766242))

(assert (= (and d!1816518 (not c!1019401)) b!5766240))

(assert (= (and d!1816518 c!1019402) b!5766239))

(assert (= (and d!1816518 (not c!1019402)) b!5766238))

(assert (= (and b!5766238 c!1019400) b!5766232))

(assert (= (and b!5766238 (not c!1019400)) b!5766244))

(assert (= (and b!5766244 (not res!2433441)) b!5766234))

(assert (= (and b!5766234 res!2433438) b!5766237))

(assert (= (and b!5766237 res!2433440) b!5766236))

(assert (= (and b!5766236 res!2433439) b!5766241))

(assert (= (and b!5766234 (not res!2433436)) b!5766235))

(assert (= (and b!5766235 res!2433437) b!5766231))

(assert (= (and b!5766231 (not res!2433435)) b!5766243))

(assert (= (and b!5766243 (not res!2433442)) b!5766233))

(assert (= (or b!5766239 b!5766231 b!5766237) bm!442882))

(declare-fun m!6712100 () Bool)

(assert (=> b!5766243 m!6712100))

(assert (=> b!5766243 m!6712100))

(declare-fun m!6712102 () Bool)

(assert (=> b!5766243 m!6712102))

(declare-fun m!6712104 () Bool)

(assert (=> b!5766240 m!6712104))

(assert (=> b!5766240 m!6712104))

(declare-fun m!6712106 () Bool)

(assert (=> b!5766240 m!6712106))

(assert (=> b!5766240 m!6712100))

(assert (=> b!5766240 m!6712106))

(assert (=> b!5766240 m!6712100))

(declare-fun m!6712108 () Bool)

(assert (=> b!5766240 m!6712108))

(assert (=> b!5766241 m!6712104))

(assert (=> b!5766236 m!6712100))

(assert (=> b!5766236 m!6712100))

(assert (=> b!5766236 m!6712102))

(declare-fun m!6712110 () Bool)

(assert (=> bm!442882 m!6712110))

(assert (=> b!5766242 m!6711934))

(assert (=> d!1816518 m!6712110))

(assert (=> d!1816518 m!6711904))

(assert (=> b!5766233 m!6712104))

(assert (=> d!1816466 d!1816518))

(declare-fun b!5766245 () Bool)

(declare-fun res!2433444 () Bool)

(declare-fun e!3542709 () Bool)

(assert (=> b!5766245 (=> res!2433444 e!3542709)))

(assert (=> b!5766245 (= res!2433444 (not ((_ is Concat!24622) (regOne!32066 r!7292))))))

(declare-fun e!3542707 () Bool)

(assert (=> b!5766245 (= e!3542707 e!3542709)))

(declare-fun b!5766247 () Bool)

(declare-fun e!3542710 () Bool)

(declare-fun e!3542706 () Bool)

(assert (=> b!5766247 (= e!3542710 e!3542706)))

(declare-fun res!2433447 () Bool)

(assert (=> b!5766247 (= res!2433447 (not (nullable!5809 (reg!16106 (regOne!32066 r!7292)))))))

(assert (=> b!5766247 (=> (not res!2433447) (not e!3542706))))

(declare-fun b!5766248 () Bool)

(declare-fun res!2433446 () Bool)

(declare-fun e!3542705 () Bool)

(assert (=> b!5766248 (=> (not res!2433446) (not e!3542705))))

(declare-fun call!442889 () Bool)

(assert (=> b!5766248 (= res!2433446 call!442889)))

(assert (=> b!5766248 (= e!3542707 e!3542705)))

(declare-fun b!5766249 () Bool)

(assert (=> b!5766249 (= e!3542710 e!3542707)))

(declare-fun c!1019403 () Bool)

(assert (=> b!5766249 (= c!1019403 ((_ is Union!15777) (regOne!32066 r!7292)))))

(declare-fun b!5766250 () Bool)

(declare-fun e!3542711 () Bool)

(assert (=> b!5766250 (= e!3542709 e!3542711)))

(declare-fun res!2433445 () Bool)

(assert (=> b!5766250 (=> (not res!2433445) (not e!3542711))))

(assert (=> b!5766250 (= res!2433445 call!442889)))

(declare-fun b!5766251 () Bool)

(declare-fun call!442890 () Bool)

(assert (=> b!5766251 (= e!3542705 call!442890)))

(declare-fun bm!442883 () Bool)

(declare-fun c!1019404 () Bool)

(declare-fun call!442888 () Bool)

(assert (=> bm!442883 (= call!442888 (validRegex!7513 (ite c!1019404 (reg!16106 (regOne!32066 r!7292)) (ite c!1019403 (regTwo!32067 (regOne!32066 r!7292)) (regTwo!32066 (regOne!32066 r!7292))))))))

(declare-fun b!5766252 () Bool)

(assert (=> b!5766252 (= e!3542711 call!442890)))

(declare-fun b!5766253 () Bool)

(declare-fun e!3542708 () Bool)

(assert (=> b!5766253 (= e!3542708 e!3542710)))

(assert (=> b!5766253 (= c!1019404 ((_ is Star!15777) (regOne!32066 r!7292)))))

(declare-fun bm!442884 () Bool)

(assert (=> bm!442884 (= call!442890 call!442888)))

(declare-fun bm!442885 () Bool)

(assert (=> bm!442885 (= call!442889 (validRegex!7513 (ite c!1019403 (regOne!32067 (regOne!32066 r!7292)) (regOne!32066 (regOne!32066 r!7292)))))))

(declare-fun b!5766246 () Bool)

(assert (=> b!5766246 (= e!3542706 call!442888)))

(declare-fun d!1816520 () Bool)

(declare-fun res!2433443 () Bool)

(assert (=> d!1816520 (=> res!2433443 e!3542708)))

(assert (=> d!1816520 (= res!2433443 ((_ is ElementMatch!15777) (regOne!32066 r!7292)))))

(assert (=> d!1816520 (= (validRegex!7513 (regOne!32066 r!7292)) e!3542708)))

(assert (= (and d!1816520 (not res!2433443)) b!5766253))

(assert (= (and b!5766253 c!1019404) b!5766247))

(assert (= (and b!5766253 (not c!1019404)) b!5766249))

(assert (= (and b!5766247 res!2433447) b!5766246))

(assert (= (and b!5766249 c!1019403) b!5766248))

(assert (= (and b!5766249 (not c!1019403)) b!5766245))

(assert (= (and b!5766248 res!2433446) b!5766251))

(assert (= (and b!5766245 (not res!2433444)) b!5766250))

(assert (= (and b!5766250 res!2433445) b!5766252))

(assert (= (or b!5766251 b!5766252) bm!442884))

(assert (= (or b!5766248 b!5766250) bm!442885))

(assert (= (or b!5766246 bm!442884) bm!442883))

(declare-fun m!6712112 () Bool)

(assert (=> b!5766247 m!6712112))

(declare-fun m!6712114 () Bool)

(assert (=> bm!442883 m!6712114))

(declare-fun m!6712116 () Bool)

(assert (=> bm!442885 m!6712116))

(assert (=> d!1816466 d!1816520))

(assert (=> b!5765585 d!1816368))

(declare-fun d!1816522 () Bool)

(declare-fun c!1019405 () Bool)

(assert (=> d!1816522 (= c!1019405 (isEmpty!35400 (tail!11284 s!2326)))))

(declare-fun e!3542712 () Bool)

(assert (=> d!1816522 (= (matchZipper!1915 (derivationStepZipper!1856 z!1189 (head!12189 s!2326)) (tail!11284 s!2326)) e!3542712)))

(declare-fun b!5766254 () Bool)

(assert (=> b!5766254 (= e!3542712 (nullableZipper!1704 (derivationStepZipper!1856 z!1189 (head!12189 s!2326))))))

(declare-fun b!5766255 () Bool)

(assert (=> b!5766255 (= e!3542712 (matchZipper!1915 (derivationStepZipper!1856 (derivationStepZipper!1856 z!1189 (head!12189 s!2326)) (head!12189 (tail!11284 s!2326))) (tail!11284 (tail!11284 s!2326))))))

(assert (= (and d!1816522 c!1019405) b!5766254))

(assert (= (and d!1816522 (not c!1019405)) b!5766255))

(assert (=> d!1816522 m!6711586))

(assert (=> d!1816522 m!6711928))

(assert (=> b!5766254 m!6711584))

(declare-fun m!6712118 () Bool)

(assert (=> b!5766254 m!6712118))

(assert (=> b!5766255 m!6711586))

(assert (=> b!5766255 m!6712076))

(assert (=> b!5766255 m!6711584))

(assert (=> b!5766255 m!6712076))

(declare-fun m!6712120 () Bool)

(assert (=> b!5766255 m!6712120))

(assert (=> b!5766255 m!6711586))

(assert (=> b!5766255 m!6712072))

(assert (=> b!5766255 m!6712120))

(assert (=> b!5766255 m!6712072))

(declare-fun m!6712122 () Bool)

(assert (=> b!5766255 m!6712122))

(assert (=> b!5765377 d!1816522))

(declare-fun bs!1352549 () Bool)

(declare-fun d!1816524 () Bool)

(assert (= bs!1352549 (and d!1816524 b!5765355)))

(declare-fun lambda!313157 () Int)

(assert (=> bs!1352549 (= (= (head!12189 s!2326) (h!69956 s!2326)) (= lambda!313157 lambda!313083))))

(declare-fun bs!1352550 () Bool)

(assert (= bs!1352550 (and d!1816524 d!1816316)))

(assert (=> bs!1352550 (= (= (head!12189 s!2326) (h!69956 s!2326)) (= lambda!313157 lambda!313086))))

(declare-fun bs!1352551 () Bool)

(assert (= bs!1352551 (and d!1816524 d!1816476)))

(assert (=> bs!1352551 (= (= (head!12189 s!2326) (h!69956 s!2326)) (= lambda!313157 lambda!313155))))

(assert (=> d!1816524 true))

(assert (=> d!1816524 (= (derivationStepZipper!1856 z!1189 (head!12189 s!2326)) (flatMap!1390 z!1189 lambda!313157))))

(declare-fun bs!1352552 () Bool)

(assert (= bs!1352552 d!1816524))

(declare-fun m!6712124 () Bool)

(assert (=> bs!1352552 m!6712124))

(assert (=> b!5765377 d!1816524))

(assert (=> b!5765377 d!1816508))

(assert (=> b!5765377 d!1816510))

(declare-fun d!1816526 () Bool)

(assert (=> d!1816526 (= (isEmpty!35400 s!2326) ((_ is Nil!63508) s!2326))))

(assert (=> bm!442835 d!1816526))

(declare-fun d!1816528 () Bool)

(assert (=> d!1816528 (= (isEmpty!35400 (tail!11284 s!2326)) ((_ is Nil!63508) (tail!11284 s!2326)))))

(assert (=> b!5765994 d!1816528))

(assert (=> b!5765994 d!1816510))

(assert (=> d!1816474 d!1816466))

(assert (=> d!1816474 d!1816520))

(assert (=> d!1816474 d!1816470))

(declare-fun d!1816530 () Bool)

(assert (=> d!1816530 (= (Exists!2877 lambda!313154) (choose!43732 lambda!313154))))

(declare-fun bs!1352553 () Bool)

(assert (= bs!1352553 d!1816530))

(declare-fun m!6712126 () Bool)

(assert (=> bs!1352553 m!6712126))

(assert (=> d!1816474 d!1816530))

(declare-fun bs!1352554 () Bool)

(declare-fun d!1816532 () Bool)

(assert (= bs!1352554 (and d!1816532 b!5765336)))

(declare-fun lambda!313160 () Int)

(assert (=> bs!1352554 (= lambda!313160 lambda!313081)))

(declare-fun bs!1352555 () Bool)

(assert (= bs!1352555 (and d!1816532 d!1816474)))

(assert (=> bs!1352555 (= lambda!313160 lambda!313154)))

(declare-fun bs!1352556 () Bool)

(assert (= bs!1352556 (and d!1816532 b!5765954)))

(assert (=> bs!1352556 (not (= lambda!313160 lambda!313142))))

(declare-fun bs!1352557 () Bool)

(assert (= bs!1352557 (and d!1816532 b!5766003)))

(assert (=> bs!1352557 (not (= lambda!313160 lambda!313145))))

(declare-fun bs!1352558 () Bool)

(assert (= bs!1352558 (and d!1816532 b!5765951)))

(assert (=> bs!1352558 (not (= lambda!313160 lambda!313143))))

(assert (=> bs!1352554 (not (= lambda!313160 lambda!313082))))

(declare-fun bs!1352559 () Bool)

(assert (= bs!1352559 (and d!1816532 d!1816468)))

(assert (=> bs!1352559 (= lambda!313160 lambda!313150)))

(declare-fun bs!1352560 () Bool)

(assert (= bs!1352560 (and d!1816532 b!5765848)))

(assert (=> bs!1352560 (not (= lambda!313160 lambda!313131))))

(declare-fun bs!1352561 () Bool)

(assert (= bs!1352561 (and d!1816532 b!5766006)))

(assert (=> bs!1352561 (not (= lambda!313160 lambda!313144))))

(assert (=> bs!1352559 (not (= lambda!313160 lambda!313151))))

(declare-fun bs!1352564 () Bool)

(assert (= bs!1352564 (and d!1816532 b!5765851)))

(assert (=> bs!1352564 (not (= lambda!313160 lambda!313130))))

(assert (=> d!1816532 true))

(assert (=> d!1816532 true))

(assert (=> d!1816532 true))

(assert (=> d!1816532 (= (isDefined!12489 (findConcatSeparation!2200 (regOne!32066 r!7292) (regTwo!32066 r!7292) Nil!63508 s!2326 s!2326)) (Exists!2877 lambda!313160))))

(assert (=> d!1816532 true))

(declare-fun _$89!1886 () Unit!156640)

(assert (=> d!1816532 (= (choose!43734 (regOne!32066 r!7292) (regTwo!32066 r!7292) s!2326) _$89!1886)))

(declare-fun bs!1352565 () Bool)

(assert (= bs!1352565 d!1816532))

(assert (=> bs!1352565 m!6711558))

(assert (=> bs!1352565 m!6711558))

(assert (=> bs!1352565 m!6711560))

(declare-fun m!6712140 () Bool)

(assert (=> bs!1352565 m!6712140))

(assert (=> d!1816474 d!1816532))

(declare-fun d!1816542 () Bool)

(declare-fun c!1019411 () Bool)

(assert (=> d!1816542 (= c!1019411 (isEmpty!35400 (tail!11284 (t!376968 s!2326))))))

(declare-fun e!3542721 () Bool)

(assert (=> d!1816542 (= (matchZipper!1915 (derivationStepZipper!1856 ((_ map or) lt!2289297 lt!2289310) (head!12189 (t!376968 s!2326))) (tail!11284 (t!376968 s!2326))) e!3542721)))

(declare-fun b!5766271 () Bool)

(assert (=> b!5766271 (= e!3542721 (nullableZipper!1704 (derivationStepZipper!1856 ((_ map or) lt!2289297 lt!2289310) (head!12189 (t!376968 s!2326)))))))

(declare-fun b!5766272 () Bool)

(assert (=> b!5766272 (= e!3542721 (matchZipper!1915 (derivationStepZipper!1856 (derivationStepZipper!1856 ((_ map or) lt!2289297 lt!2289310) (head!12189 (t!376968 s!2326))) (head!12189 (tail!11284 (t!376968 s!2326)))) (tail!11284 (tail!11284 (t!376968 s!2326)))))))

(assert (= (and d!1816542 c!1019411) b!5766271))

(assert (= (and d!1816542 (not c!1019411)) b!5766272))

(assert (=> d!1816542 m!6711598))

(declare-fun m!6712142 () Bool)

(assert (=> d!1816542 m!6712142))

(assert (=> b!5766271 m!6711744))

(declare-fun m!6712144 () Bool)

(assert (=> b!5766271 m!6712144))

(assert (=> b!5766272 m!6711598))

(declare-fun m!6712146 () Bool)

(assert (=> b!5766272 m!6712146))

(assert (=> b!5766272 m!6711744))

(assert (=> b!5766272 m!6712146))

(declare-fun m!6712148 () Bool)

(assert (=> b!5766272 m!6712148))

(assert (=> b!5766272 m!6711598))

(declare-fun m!6712150 () Bool)

(assert (=> b!5766272 m!6712150))

(assert (=> b!5766272 m!6712148))

(assert (=> b!5766272 m!6712150))

(declare-fun m!6712152 () Bool)

(assert (=> b!5766272 m!6712152))

(assert (=> b!5765606 d!1816542))

(declare-fun bs!1352566 () Bool)

(declare-fun d!1816544 () Bool)

(assert (= bs!1352566 (and d!1816544 b!5765355)))

(declare-fun lambda!313161 () Int)

(assert (=> bs!1352566 (= (= (head!12189 (t!376968 s!2326)) (h!69956 s!2326)) (= lambda!313161 lambda!313083))))

(declare-fun bs!1352567 () Bool)

(assert (= bs!1352567 (and d!1816544 d!1816316)))

(assert (=> bs!1352567 (= (= (head!12189 (t!376968 s!2326)) (h!69956 s!2326)) (= lambda!313161 lambda!313086))))

(declare-fun bs!1352568 () Bool)

(assert (= bs!1352568 (and d!1816544 d!1816476)))

(assert (=> bs!1352568 (= (= (head!12189 (t!376968 s!2326)) (h!69956 s!2326)) (= lambda!313161 lambda!313155))))

(declare-fun bs!1352569 () Bool)

(assert (= bs!1352569 (and d!1816544 d!1816524)))

(assert (=> bs!1352569 (= (= (head!12189 (t!376968 s!2326)) (head!12189 s!2326)) (= lambda!313161 lambda!313157))))

(assert (=> d!1816544 true))

(assert (=> d!1816544 (= (derivationStepZipper!1856 ((_ map or) lt!2289297 lt!2289310) (head!12189 (t!376968 s!2326))) (flatMap!1390 ((_ map or) lt!2289297 lt!2289310) lambda!313161))))

(declare-fun bs!1352570 () Bool)

(assert (= bs!1352570 d!1816544))

(declare-fun m!6712154 () Bool)

(assert (=> bs!1352570 m!6712154))

(assert (=> b!5765606 d!1816544))

(declare-fun d!1816546 () Bool)

(assert (=> d!1816546 (= (head!12189 (t!376968 s!2326)) (h!69956 (t!376968 s!2326)))))

(assert (=> b!5765606 d!1816546))

(declare-fun d!1816548 () Bool)

(assert (=> d!1816548 (= (tail!11284 (t!376968 s!2326)) (t!376968 (t!376968 s!2326)))))

(assert (=> b!5765606 d!1816548))

(assert (=> d!1816342 d!1816512))

(declare-fun d!1816550 () Bool)

(declare-fun c!1019412 () Bool)

(assert (=> d!1816550 (= c!1019412 (isEmpty!35400 (tail!11284 (t!376968 s!2326))))))

(declare-fun e!3542722 () Bool)

(assert (=> d!1816550 (= (matchZipper!1915 (derivationStepZipper!1856 lt!2289310 (head!12189 (t!376968 s!2326))) (tail!11284 (t!376968 s!2326))) e!3542722)))

(declare-fun b!5766273 () Bool)

(assert (=> b!5766273 (= e!3542722 (nullableZipper!1704 (derivationStepZipper!1856 lt!2289310 (head!12189 (t!376968 s!2326)))))))

(declare-fun b!5766274 () Bool)

(assert (=> b!5766274 (= e!3542722 (matchZipper!1915 (derivationStepZipper!1856 (derivationStepZipper!1856 lt!2289310 (head!12189 (t!376968 s!2326))) (head!12189 (tail!11284 (t!376968 s!2326)))) (tail!11284 (tail!11284 (t!376968 s!2326)))))))

(assert (= (and d!1816550 c!1019412) b!5766273))

(assert (= (and d!1816550 (not c!1019412)) b!5766274))

(assert (=> d!1816550 m!6711598))

(assert (=> d!1816550 m!6712142))

(assert (=> b!5766273 m!6711596))

(declare-fun m!6712156 () Bool)

(assert (=> b!5766273 m!6712156))

(assert (=> b!5766274 m!6711598))

(assert (=> b!5766274 m!6712146))

(assert (=> b!5766274 m!6711596))

(assert (=> b!5766274 m!6712146))

(declare-fun m!6712158 () Bool)

(assert (=> b!5766274 m!6712158))

(assert (=> b!5766274 m!6711598))

(assert (=> b!5766274 m!6712150))

(assert (=> b!5766274 m!6712158))

(assert (=> b!5766274 m!6712150))

(declare-fun m!6712160 () Bool)

(assert (=> b!5766274 m!6712160))

(assert (=> b!5765379 d!1816550))

(declare-fun bs!1352572 () Bool)

(declare-fun d!1816554 () Bool)

(assert (= bs!1352572 (and d!1816554 d!1816524)))

(declare-fun lambda!313162 () Int)

(assert (=> bs!1352572 (= (= (head!12189 (t!376968 s!2326)) (head!12189 s!2326)) (= lambda!313162 lambda!313157))))

(declare-fun bs!1352573 () Bool)

(assert (= bs!1352573 (and d!1816554 d!1816476)))

(assert (=> bs!1352573 (= (= (head!12189 (t!376968 s!2326)) (h!69956 s!2326)) (= lambda!313162 lambda!313155))))

(declare-fun bs!1352574 () Bool)

(assert (= bs!1352574 (and d!1816554 d!1816316)))

(assert (=> bs!1352574 (= (= (head!12189 (t!376968 s!2326)) (h!69956 s!2326)) (= lambda!313162 lambda!313086))))

(declare-fun bs!1352575 () Bool)

(assert (= bs!1352575 (and d!1816554 b!5765355)))

(assert (=> bs!1352575 (= (= (head!12189 (t!376968 s!2326)) (h!69956 s!2326)) (= lambda!313162 lambda!313083))))

(declare-fun bs!1352576 () Bool)

(assert (= bs!1352576 (and d!1816554 d!1816544)))

(assert (=> bs!1352576 (= lambda!313162 lambda!313161)))

(assert (=> d!1816554 true))

(assert (=> d!1816554 (= (derivationStepZipper!1856 lt!2289310 (head!12189 (t!376968 s!2326))) (flatMap!1390 lt!2289310 lambda!313162))))

(declare-fun bs!1352577 () Bool)

(assert (= bs!1352577 d!1816554))

(declare-fun m!6712168 () Bool)

(assert (=> bs!1352577 m!6712168))

(assert (=> b!5765379 d!1816554))

(assert (=> b!5765379 d!1816546))

(assert (=> b!5765379 d!1816548))

(declare-fun d!1816558 () Bool)

(declare-fun res!2433466 () Bool)

(declare-fun e!3542738 () Bool)

(assert (=> d!1816558 (=> res!2433466 e!3542738)))

(assert (=> d!1816558 (= res!2433466 ((_ is Nil!63506) (exprs!5661 (h!69955 zl!343))))))

(assert (=> d!1816558 (= (forall!14894 (exprs!5661 (h!69955 zl!343)) lambda!313089) e!3542738)))

(declare-fun b!5766292 () Bool)

(declare-fun e!3542739 () Bool)

(assert (=> b!5766292 (= e!3542738 e!3542739)))

(declare-fun res!2433467 () Bool)

(assert (=> b!5766292 (=> (not res!2433467) (not e!3542739))))

(declare-fun dynLambda!24863 (Int Regex!15777) Bool)

(assert (=> b!5766292 (= res!2433467 (dynLambda!24863 lambda!313089 (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5766293 () Bool)

(assert (=> b!5766293 (= e!3542739 (forall!14894 (t!376966 (exprs!5661 (h!69955 zl!343))) lambda!313089))))

(assert (= (and d!1816558 (not res!2433466)) b!5766292))

(assert (= (and b!5766292 res!2433467) b!5766293))

(declare-fun b_lambda!217671 () Bool)

(assert (=> (not b_lambda!217671) (not b!5766292)))

(declare-fun m!6712170 () Bool)

(assert (=> b!5766292 m!6712170))

(declare-fun m!6712172 () Bool)

(assert (=> b!5766293 m!6712172))

(assert (=> d!1816318 d!1816558))

(declare-fun d!1816562 () Bool)

(assert (=> d!1816562 true))

(assert (=> d!1816562 true))

(declare-fun res!2433474 () Bool)

(assert (=> d!1816562 (= (choose!43732 lambda!313082) res!2433474)))

(assert (=> d!1816464 d!1816562))

(declare-fun b!5766300 () Bool)

(declare-fun res!2433476 () Bool)

(declare-fun e!3542750 () Bool)

(assert (=> b!5766300 (=> res!2433476 e!3542750)))

(assert (=> b!5766300 (= res!2433476 (not ((_ is Concat!24622) lt!2289335)))))

(declare-fun e!3542748 () Bool)

(assert (=> b!5766300 (= e!3542748 e!3542750)))

(declare-fun b!5766302 () Bool)

(declare-fun e!3542751 () Bool)

(declare-fun e!3542747 () Bool)

(assert (=> b!5766302 (= e!3542751 e!3542747)))

(declare-fun res!2433479 () Bool)

(assert (=> b!5766302 (= res!2433479 (not (nullable!5809 (reg!16106 lt!2289335))))))

(assert (=> b!5766302 (=> (not res!2433479) (not e!3542747))))

(declare-fun b!5766303 () Bool)

(declare-fun res!2433478 () Bool)

(declare-fun e!3542746 () Bool)

(assert (=> b!5766303 (=> (not res!2433478) (not e!3542746))))

(declare-fun call!442901 () Bool)

(assert (=> b!5766303 (= res!2433478 call!442901)))

(assert (=> b!5766303 (= e!3542748 e!3542746)))

(declare-fun b!5766304 () Bool)

(assert (=> b!5766304 (= e!3542751 e!3542748)))

(declare-fun c!1019415 () Bool)

(assert (=> b!5766304 (= c!1019415 ((_ is Union!15777) lt!2289335))))

(declare-fun b!5766305 () Bool)

(declare-fun e!3542752 () Bool)

(assert (=> b!5766305 (= e!3542750 e!3542752)))

(declare-fun res!2433477 () Bool)

(assert (=> b!5766305 (=> (not res!2433477) (not e!3542752))))

(assert (=> b!5766305 (= res!2433477 call!442901)))

(declare-fun b!5766306 () Bool)

(declare-fun call!442902 () Bool)

(assert (=> b!5766306 (= e!3542746 call!442902)))

(declare-fun c!1019416 () Bool)

(declare-fun bm!442895 () Bool)

(declare-fun call!442900 () Bool)

(assert (=> bm!442895 (= call!442900 (validRegex!7513 (ite c!1019416 (reg!16106 lt!2289335) (ite c!1019415 (regTwo!32067 lt!2289335) (regTwo!32066 lt!2289335)))))))

(declare-fun b!5766307 () Bool)

(assert (=> b!5766307 (= e!3542752 call!442902)))

(declare-fun b!5766308 () Bool)

(declare-fun e!3542749 () Bool)

(assert (=> b!5766308 (= e!3542749 e!3542751)))

(assert (=> b!5766308 (= c!1019416 ((_ is Star!15777) lt!2289335))))

(declare-fun bm!442896 () Bool)

(assert (=> bm!442896 (= call!442902 call!442900)))

(declare-fun bm!442897 () Bool)

(assert (=> bm!442897 (= call!442901 (validRegex!7513 (ite c!1019415 (regOne!32067 lt!2289335) (regOne!32066 lt!2289335))))))

(declare-fun b!5766301 () Bool)

(assert (=> b!5766301 (= e!3542747 call!442900)))

(declare-fun d!1816566 () Bool)

(declare-fun res!2433475 () Bool)

(assert (=> d!1816566 (=> res!2433475 e!3542749)))

(assert (=> d!1816566 (= res!2433475 ((_ is ElementMatch!15777) lt!2289335))))

(assert (=> d!1816566 (= (validRegex!7513 lt!2289335) e!3542749)))

(assert (= (and d!1816566 (not res!2433475)) b!5766308))

(assert (= (and b!5766308 c!1019416) b!5766302))

(assert (= (and b!5766308 (not c!1019416)) b!5766304))

(assert (= (and b!5766302 res!2433479) b!5766301))

(assert (= (and b!5766304 c!1019415) b!5766303))

(assert (= (and b!5766304 (not c!1019415)) b!5766300))

(assert (= (and b!5766303 res!2433478) b!5766306))

(assert (= (and b!5766300 (not res!2433476)) b!5766305))

(assert (= (and b!5766305 res!2433477) b!5766307))

(assert (= (or b!5766306 b!5766307) bm!442896))

(assert (= (or b!5766303 b!5766305) bm!442897))

(assert (= (or b!5766301 bm!442896) bm!442895))

(declare-fun m!6712178 () Bool)

(assert (=> b!5766302 m!6712178))

(declare-fun m!6712180 () Bool)

(assert (=> bm!442895 m!6712180))

(declare-fun m!6712182 () Bool)

(assert (=> bm!442897 m!6712182))

(assert (=> d!1816352 d!1816566))

(declare-fun d!1816568 () Bool)

(declare-fun res!2433482 () Bool)

(declare-fun e!3542755 () Bool)

(assert (=> d!1816568 (=> res!2433482 e!3542755)))

(assert (=> d!1816568 (= res!2433482 ((_ is Nil!63506) (exprs!5661 (h!69955 zl!343))))))

(assert (=> d!1816568 (= (forall!14894 (exprs!5661 (h!69955 zl!343)) lambda!313102) e!3542755)))

(declare-fun b!5766311 () Bool)

(declare-fun e!3542756 () Bool)

(assert (=> b!5766311 (= e!3542755 e!3542756)))

(declare-fun res!2433483 () Bool)

(assert (=> b!5766311 (=> (not res!2433483) (not e!3542756))))

(assert (=> b!5766311 (= res!2433483 (dynLambda!24863 lambda!313102 (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5766312 () Bool)

(assert (=> b!5766312 (= e!3542756 (forall!14894 (t!376966 (exprs!5661 (h!69955 zl!343))) lambda!313102))))

(assert (= (and d!1816568 (not res!2433482)) b!5766311))

(assert (= (and b!5766311 res!2433483) b!5766312))

(declare-fun b_lambda!217673 () Bool)

(assert (=> (not b_lambda!217673) (not b!5766311)))

(declare-fun m!6712184 () Bool)

(assert (=> b!5766311 m!6712184))

(declare-fun m!6712186 () Bool)

(assert (=> b!5766312 m!6712186))

(assert (=> d!1816352 d!1816568))

(assert (=> d!1816482 d!1816478))

(declare-fun d!1816570 () Bool)

(assert (=> d!1816570 (= (flatMap!1390 lt!2289309 lambda!313083) (dynLambda!24861 lambda!313083 lt!2289296))))

(assert (=> d!1816570 true))

(declare-fun _$13!2468 () Unit!156640)

(assert (=> d!1816570 (= (choose!43736 lt!2289309 lt!2289296 lambda!313083) _$13!2468)))

(declare-fun b_lambda!217675 () Bool)

(assert (=> (not b_lambda!217675) (not d!1816570)))

(declare-fun bs!1352583 () Bool)

(assert (= bs!1352583 d!1816570))

(assert (=> bs!1352583 m!6711548))

(assert (=> bs!1352583 m!6712018))

(assert (=> d!1816482 d!1816570))

(declare-fun b!5766338 () Bool)

(declare-fun e!3542773 () Bool)

(declare-fun lt!2289421 () List!63632)

(assert (=> b!5766338 (= e!3542773 (or (not (= (_2!36177 (get!21913 lt!2289400)) Nil!63508)) (= lt!2289421 (_1!36177 (get!21913 lt!2289400)))))))

(declare-fun b!5766335 () Bool)

(declare-fun e!3542774 () List!63632)

(assert (=> b!5766335 (= e!3542774 (_2!36177 (get!21913 lt!2289400)))))

(declare-fun b!5766336 () Bool)

(assert (=> b!5766336 (= e!3542774 (Cons!63508 (h!69956 (_1!36177 (get!21913 lt!2289400))) (++!13991 (t!376968 (_1!36177 (get!21913 lt!2289400))) (_2!36177 (get!21913 lt!2289400)))))))

(declare-fun d!1816574 () Bool)

(assert (=> d!1816574 e!3542773))

(declare-fun res!2433497 () Bool)

(assert (=> d!1816574 (=> (not res!2433497) (not e!3542773))))

(declare-fun content!11594 (List!63632) (InoxSet C!31824))

(assert (=> d!1816574 (= res!2433497 (= (content!11594 lt!2289421) ((_ map or) (content!11594 (_1!36177 (get!21913 lt!2289400))) (content!11594 (_2!36177 (get!21913 lt!2289400))))))))

(assert (=> d!1816574 (= lt!2289421 e!3542774)))

(declare-fun c!1019423 () Bool)

(assert (=> d!1816574 (= c!1019423 ((_ is Nil!63508) (_1!36177 (get!21913 lt!2289400))))))

(assert (=> d!1816574 (= (++!13991 (_1!36177 (get!21913 lt!2289400)) (_2!36177 (get!21913 lt!2289400))) lt!2289421)))

(declare-fun b!5766337 () Bool)

(declare-fun res!2433498 () Bool)

(assert (=> b!5766337 (=> (not res!2433498) (not e!3542773))))

(declare-fun size!40076 (List!63632) Int)

(assert (=> b!5766337 (= res!2433498 (= (size!40076 lt!2289421) (+ (size!40076 (_1!36177 (get!21913 lt!2289400))) (size!40076 (_2!36177 (get!21913 lt!2289400))))))))

(assert (= (and d!1816574 c!1019423) b!5766335))

(assert (= (and d!1816574 (not c!1019423)) b!5766336))

(assert (= (and d!1816574 res!2433497) b!5766337))

(assert (= (and b!5766337 res!2433498) b!5766338))

(declare-fun m!6712204 () Bool)

(assert (=> b!5766336 m!6712204))

(declare-fun m!6712206 () Bool)

(assert (=> d!1816574 m!6712206))

(declare-fun m!6712208 () Bool)

(assert (=> d!1816574 m!6712208))

(declare-fun m!6712210 () Bool)

(assert (=> d!1816574 m!6712210))

(declare-fun m!6712212 () Bool)

(assert (=> b!5766337 m!6712212))

(declare-fun m!6712214 () Bool)

(assert (=> b!5766337 m!6712214))

(declare-fun m!6712216 () Bool)

(assert (=> b!5766337 m!6712216))

(assert (=> b!5766041 d!1816574))

(declare-fun d!1816586 () Bool)

(assert (=> d!1816586 (= (get!21913 lt!2289400) (v!51844 lt!2289400))))

(assert (=> b!5766041 d!1816586))

(assert (=> d!1816320 d!1816526))

(declare-fun bs!1352586 () Bool)

(declare-fun d!1816588 () Bool)

(assert (= bs!1352586 (and d!1816588 d!1816318)))

(declare-fun lambda!313167 () Int)

(assert (=> bs!1352586 (= lambda!313167 lambda!313089)))

(declare-fun bs!1352587 () Bool)

(assert (= bs!1352587 (and d!1816588 d!1816334)))

(assert (=> bs!1352587 (= lambda!313167 lambda!313093)))

(declare-fun bs!1352589 () Bool)

(assert (= bs!1352589 (and d!1816588 d!1816352)))

(assert (=> bs!1352589 (= lambda!313167 lambda!313102)))

(declare-fun bs!1352590 () Bool)

(assert (= bs!1352590 (and d!1816588 d!1816500)))

(assert (=> bs!1352590 (= lambda!313167 lambda!313156)))

(declare-fun bs!1352592 () Bool)

(assert (= bs!1352592 (and d!1816588 d!1816404)))

(assert (=> bs!1352592 (= lambda!313167 lambda!313119)))

(declare-fun bs!1352593 () Bool)

(assert (= bs!1352593 (and d!1816588 d!1816382)))

(assert (=> bs!1352593 (= lambda!313167 lambda!313109)))

(assert (=> d!1816588 (= (inv!82689 (h!69955 (t!376967 zl!343))) (forall!14894 (exprs!5661 (h!69955 (t!376967 zl!343))) lambda!313167))))

(declare-fun bs!1352594 () Bool)

(assert (= bs!1352594 d!1816588))

(declare-fun m!6712224 () Bool)

(assert (=> bs!1352594 m!6712224))

(assert (=> b!5766143 d!1816588))

(assert (=> bm!442841 d!1816526))

(assert (=> bm!442843 d!1816526))

(assert (=> b!5765908 d!1816528))

(assert (=> b!5765908 d!1816510))

(declare-fun d!1816594 () Bool)

(assert (=> d!1816594 (= (isEmpty!35398 (tail!11285 (exprs!5661 (h!69955 zl!343)))) ((_ is Nil!63506) (tail!11285 (exprs!5661 (h!69955 zl!343)))))))

(assert (=> b!5765581 d!1816594))

(declare-fun d!1816596 () Bool)

(assert (=> d!1816596 (= (tail!11285 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))

(assert (=> b!5765581 d!1816596))

(assert (=> b!5766045 d!1816516))

(declare-fun d!1816598 () Bool)

(assert (=> d!1816598 (= (nullable!5809 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (nullableFct!1850 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))))))

(declare-fun bs!1352595 () Bool)

(assert (= bs!1352595 d!1816598))

(declare-fun m!6712226 () Bool)

(assert (=> bs!1352595 m!6712226))

(assert (=> b!5766110 d!1816598))

(declare-fun d!1816600 () Bool)

(declare-fun res!2433504 () Bool)

(declare-fun e!3542785 () Bool)

(assert (=> d!1816600 (=> res!2433504 e!3542785)))

(assert (=> d!1816600 (= res!2433504 ((_ is Nil!63506) lt!2289353))))

(assert (=> d!1816600 (= (forall!14894 lt!2289353 lambda!313119) e!3542785)))

(declare-fun b!5766354 () Bool)

(declare-fun e!3542786 () Bool)

(assert (=> b!5766354 (= e!3542785 e!3542786)))

(declare-fun res!2433505 () Bool)

(assert (=> b!5766354 (=> (not res!2433505) (not e!3542786))))

(assert (=> b!5766354 (= res!2433505 (dynLambda!24863 lambda!313119 (h!69954 lt!2289353)))))

(declare-fun b!5766355 () Bool)

(assert (=> b!5766355 (= e!3542786 (forall!14894 (t!376966 lt!2289353) lambda!313119))))

(assert (= (and d!1816600 (not res!2433504)) b!5766354))

(assert (= (and b!5766354 res!2433505) b!5766355))

(declare-fun b_lambda!217679 () Bool)

(assert (=> (not b_lambda!217679) (not b!5766354)))

(declare-fun m!6712228 () Bool)

(assert (=> b!5766354 m!6712228))

(declare-fun m!6712230 () Bool)

(assert (=> b!5766355 m!6712230))

(assert (=> d!1816404 d!1816600))

(assert (=> b!5766017 d!1816508))

(declare-fun b!5766356 () Bool)

(declare-fun e!3542789 () (InoxSet Context!10322))

(assert (=> b!5766356 (= e!3542789 (store ((as const (Array Context!10322 Bool)) false) (Context!10323 (t!376966 (exprs!5661 lt!2289296))) true))))

(declare-fun b!5766357 () Bool)

(declare-fun e!3542790 () (InoxSet Context!10322))

(declare-fun call!442916 () (InoxSet Context!10322))

(assert (=> b!5766357 (= e!3542790 call!442916)))

(declare-fun b!5766358 () Bool)

(declare-fun e!3542792 () Bool)

(assert (=> b!5766358 (= e!3542792 (nullable!5809 (regOne!32066 (h!69954 (exprs!5661 lt!2289296)))))))

(declare-fun b!5766359 () Bool)

(declare-fun e!3542788 () (InoxSet Context!10322))

(declare-fun call!442915 () (InoxSet Context!10322))

(declare-fun call!442917 () (InoxSet Context!10322))

(assert (=> b!5766359 (= e!3542788 ((_ map or) call!442915 call!442917))))

(declare-fun bm!442907 () Bool)

(assert (=> bm!442907 (= call!442916 call!442917)))

(declare-fun b!5766361 () Bool)

(declare-fun e!3542791 () (InoxSet Context!10322))

(assert (=> b!5766361 (= e!3542789 e!3542791)))

(declare-fun c!1019429 () Bool)

(assert (=> b!5766361 (= c!1019429 ((_ is Union!15777) (h!69954 (exprs!5661 lt!2289296))))))

(declare-fun bm!442908 () Bool)

(declare-fun call!442912 () List!63630)

(assert (=> bm!442908 (= call!442915 (derivationStepZipperDown!1119 (ite c!1019429 (regOne!32067 (h!69954 (exprs!5661 lt!2289296))) (regOne!32066 (h!69954 (exprs!5661 lt!2289296)))) (ite c!1019429 (Context!10323 (t!376966 (exprs!5661 lt!2289296))) (Context!10323 call!442912)) (h!69956 s!2326)))))

(declare-fun bm!442909 () Bool)

(declare-fun call!442914 () List!63630)

(assert (=> bm!442909 (= call!442914 call!442912)))

(declare-fun bm!442910 () Bool)

(declare-fun call!442913 () (InoxSet Context!10322))

(assert (=> bm!442910 (= call!442917 call!442913)))

(declare-fun bm!442911 () Bool)

(declare-fun c!1019432 () Bool)

(declare-fun c!1019433 () Bool)

(assert (=> bm!442911 (= call!442912 ($colon$colon!1772 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 lt!2289296)))) (ite (or c!1019432 c!1019433) (regTwo!32066 (h!69954 (exprs!5661 lt!2289296))) (h!69954 (exprs!5661 lt!2289296)))))))

(declare-fun bm!442912 () Bool)

(assert (=> bm!442912 (= call!442913 (derivationStepZipperDown!1119 (ite c!1019429 (regTwo!32067 (h!69954 (exprs!5661 lt!2289296))) (ite c!1019432 (regTwo!32066 (h!69954 (exprs!5661 lt!2289296))) (ite c!1019433 (regOne!32066 (h!69954 (exprs!5661 lt!2289296))) (reg!16106 (h!69954 (exprs!5661 lt!2289296)))))) (ite (or c!1019429 c!1019432) (Context!10323 (t!376966 (exprs!5661 lt!2289296))) (Context!10323 call!442914)) (h!69956 s!2326)))))

(declare-fun d!1816602 () Bool)

(declare-fun c!1019430 () Bool)

(assert (=> d!1816602 (= c!1019430 (and ((_ is ElementMatch!15777) (h!69954 (exprs!5661 lt!2289296))) (= (c!1019159 (h!69954 (exprs!5661 lt!2289296))) (h!69956 s!2326))))))

(assert (=> d!1816602 (= (derivationStepZipperDown!1119 (h!69954 (exprs!5661 lt!2289296)) (Context!10323 (t!376966 (exprs!5661 lt!2289296))) (h!69956 s!2326)) e!3542789)))

(declare-fun b!5766360 () Bool)

(assert (=> b!5766360 (= e!3542791 ((_ map or) call!442915 call!442913))))

(declare-fun b!5766362 () Bool)

(declare-fun e!3542787 () (InoxSet Context!10322))

(assert (=> b!5766362 (= e!3542787 ((as const (Array Context!10322 Bool)) false))))

(declare-fun b!5766363 () Bool)

(assert (=> b!5766363 (= c!1019432 e!3542792)))

(declare-fun res!2433506 () Bool)

(assert (=> b!5766363 (=> (not res!2433506) (not e!3542792))))

(assert (=> b!5766363 (= res!2433506 ((_ is Concat!24622) (h!69954 (exprs!5661 lt!2289296))))))

(assert (=> b!5766363 (= e!3542791 e!3542788)))

(declare-fun b!5766364 () Bool)

(declare-fun c!1019431 () Bool)

(assert (=> b!5766364 (= c!1019431 ((_ is Star!15777) (h!69954 (exprs!5661 lt!2289296))))))

(assert (=> b!5766364 (= e!3542790 e!3542787)))

(declare-fun b!5766365 () Bool)

(assert (=> b!5766365 (= e!3542788 e!3542790)))

(assert (=> b!5766365 (= c!1019433 ((_ is Concat!24622) (h!69954 (exprs!5661 lt!2289296))))))

(declare-fun b!5766366 () Bool)

(assert (=> b!5766366 (= e!3542787 call!442916)))

(assert (= (and d!1816602 c!1019430) b!5766356))

(assert (= (and d!1816602 (not c!1019430)) b!5766361))

(assert (= (and b!5766361 c!1019429) b!5766360))

(assert (= (and b!5766361 (not c!1019429)) b!5766363))

(assert (= (and b!5766363 res!2433506) b!5766358))

(assert (= (and b!5766363 c!1019432) b!5766359))

(assert (= (and b!5766363 (not c!1019432)) b!5766365))

(assert (= (and b!5766365 c!1019433) b!5766357))

(assert (= (and b!5766365 (not c!1019433)) b!5766364))

(assert (= (and b!5766364 c!1019431) b!5766366))

(assert (= (and b!5766364 (not c!1019431)) b!5766362))

(assert (= (or b!5766357 b!5766366) bm!442909))

(assert (= (or b!5766357 b!5766366) bm!442907))

(assert (= (or b!5766359 bm!442909) bm!442911))

(assert (= (or b!5766359 bm!442907) bm!442910))

(assert (= (or b!5766360 bm!442910) bm!442912))

(assert (= (or b!5766360 b!5766359) bm!442908))

(declare-fun m!6712242 () Bool)

(assert (=> b!5766358 m!6712242))

(declare-fun m!6712244 () Bool)

(assert (=> bm!442911 m!6712244))

(declare-fun m!6712246 () Bool)

(assert (=> b!5766356 m!6712246))

(declare-fun m!6712248 () Bool)

(assert (=> bm!442912 m!6712248))

(declare-fun m!6712250 () Bool)

(assert (=> bm!442908 m!6712250))

(assert (=> bm!442847 d!1816602))

(declare-fun b!5766381 () Bool)

(declare-fun e!3542802 () (InoxSet Context!10322))

(assert (=> b!5766381 (= e!3542802 (store ((as const (Array Context!10322 Bool)) false) (ite c!1019367 lt!2289296 (Context!10323 call!442865)) true))))

(declare-fun b!5766382 () Bool)

(declare-fun e!3542803 () (InoxSet Context!10322))

(declare-fun call!442923 () (InoxSet Context!10322))

(assert (=> b!5766382 (= e!3542803 call!442923)))

(declare-fun b!5766383 () Bool)

(declare-fun e!3542805 () Bool)

(assert (=> b!5766383 (= e!3542805 (nullable!5809 (regOne!32066 (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343))))))))))

(declare-fun b!5766384 () Bool)

(declare-fun e!3542801 () (InoxSet Context!10322))

(declare-fun call!442922 () (InoxSet Context!10322))

(declare-fun call!442924 () (InoxSet Context!10322))

(assert (=> b!5766384 (= e!3542801 ((_ map or) call!442922 call!442924))))

(declare-fun bm!442914 () Bool)

(assert (=> bm!442914 (= call!442923 call!442924)))

(declare-fun b!5766386 () Bool)

(declare-fun e!3542804 () (InoxSet Context!10322))

(assert (=> b!5766386 (= e!3542802 e!3542804)))

(declare-fun c!1019437 () Bool)

(assert (=> b!5766386 (= c!1019437 ((_ is Union!15777) (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))))))

(declare-fun call!442919 () List!63630)

(declare-fun bm!442915 () Bool)

(assert (=> bm!442915 (= call!442922 (derivationStepZipperDown!1119 (ite c!1019437 (regOne!32067 (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))) (regOne!32066 (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343))))))) (ite c!1019437 (ite c!1019367 lt!2289296 (Context!10323 call!442865)) (Context!10323 call!442919)) (h!69956 s!2326)))))

(declare-fun bm!442916 () Bool)

(declare-fun call!442921 () List!63630)

(assert (=> bm!442916 (= call!442921 call!442919)))

(declare-fun bm!442917 () Bool)

(declare-fun call!442920 () (InoxSet Context!10322))

(assert (=> bm!442917 (= call!442924 call!442920)))

(declare-fun c!1019441 () Bool)

(declare-fun c!1019440 () Bool)

(declare-fun bm!442918 () Bool)

(assert (=> bm!442918 (= call!442919 ($colon$colon!1772 (exprs!5661 (ite c!1019367 lt!2289296 (Context!10323 call!442865))) (ite (or c!1019440 c!1019441) (regTwo!32066 (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))) (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343))))))))))

(declare-fun bm!442919 () Bool)

(assert (=> bm!442919 (= call!442920 (derivationStepZipperDown!1119 (ite c!1019437 (regTwo!32067 (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))) (ite c!1019440 (regTwo!32066 (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))) (ite c!1019441 (regOne!32066 (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))) (reg!16106 (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343))))))))) (ite (or c!1019437 c!1019440) (ite c!1019367 lt!2289296 (Context!10323 call!442865)) (Context!10323 call!442921)) (h!69956 s!2326)))))

(declare-fun c!1019438 () Bool)

(declare-fun d!1816606 () Bool)

(assert (=> d!1816606 (= c!1019438 (and ((_ is ElementMatch!15777) (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))) (= (c!1019159 (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))) (h!69956 s!2326))))))

(assert (=> d!1816606 (= (derivationStepZipperDown!1119 (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343))))) (ite c!1019367 lt!2289296 (Context!10323 call!442865)) (h!69956 s!2326)) e!3542802)))

(declare-fun b!5766385 () Bool)

(assert (=> b!5766385 (= e!3542804 ((_ map or) call!442922 call!442920))))

(declare-fun b!5766387 () Bool)

(declare-fun e!3542800 () (InoxSet Context!10322))

(assert (=> b!5766387 (= e!3542800 ((as const (Array Context!10322 Bool)) false))))

(declare-fun b!5766388 () Bool)

(assert (=> b!5766388 (= c!1019440 e!3542805)))

(declare-fun res!2433515 () Bool)

(assert (=> b!5766388 (=> (not res!2433515) (not e!3542805))))

(assert (=> b!5766388 (= res!2433515 ((_ is Concat!24622) (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))))))

(assert (=> b!5766388 (= e!3542804 e!3542801)))

(declare-fun b!5766389 () Bool)

(declare-fun c!1019439 () Bool)

(assert (=> b!5766389 (= c!1019439 ((_ is Star!15777) (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))))))

(assert (=> b!5766389 (= e!3542803 e!3542800)))

(declare-fun b!5766390 () Bool)

(assert (=> b!5766390 (= e!3542801 e!3542803)))

(assert (=> b!5766390 (= c!1019441 ((_ is Concat!24622) (ite c!1019367 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))))))

(declare-fun b!5766391 () Bool)

(assert (=> b!5766391 (= e!3542800 call!442923)))

(assert (= (and d!1816606 c!1019438) b!5766381))

(assert (= (and d!1816606 (not c!1019438)) b!5766386))

(assert (= (and b!5766386 c!1019437) b!5766385))

(assert (= (and b!5766386 (not c!1019437)) b!5766388))

(assert (= (and b!5766388 res!2433515) b!5766383))

(assert (= (and b!5766388 c!1019440) b!5766384))

(assert (= (and b!5766388 (not c!1019440)) b!5766390))

(assert (= (and b!5766390 c!1019441) b!5766382))

(assert (= (and b!5766390 (not c!1019441)) b!5766389))

(assert (= (and b!5766389 c!1019439) b!5766391))

(assert (= (and b!5766389 (not c!1019439)) b!5766387))

(assert (= (or b!5766382 b!5766391) bm!442916))

(assert (= (or b!5766382 b!5766391) bm!442914))

(assert (= (or b!5766384 bm!442916) bm!442918))

(assert (= (or b!5766384 bm!442914) bm!442917))

(assert (= (or b!5766385 bm!442917) bm!442919))

(assert (= (or b!5766385 b!5766384) bm!442915))

(declare-fun m!6712266 () Bool)

(assert (=> b!5766383 m!6712266))

(declare-fun m!6712268 () Bool)

(assert (=> bm!442918 m!6712268))

(declare-fun m!6712270 () Bool)

(assert (=> b!5766381 m!6712270))

(declare-fun m!6712272 () Bool)

(assert (=> bm!442919 m!6712272))

(declare-fun m!6712274 () Bool)

(assert (=> bm!442915 m!6712274))

(assert (=> bm!442861 d!1816606))

(declare-fun b!5766392 () Bool)

(declare-fun res!2433517 () Bool)

(declare-fun e!3542810 () Bool)

(assert (=> b!5766392 (=> res!2433517 e!3542810)))

(assert (=> b!5766392 (= res!2433517 (not ((_ is Concat!24622) (ite c!1019187 (regOne!32067 r!7292) (regOne!32066 r!7292)))))))

(declare-fun e!3542808 () Bool)

(assert (=> b!5766392 (= e!3542808 e!3542810)))

(declare-fun b!5766394 () Bool)

(declare-fun e!3542811 () Bool)

(declare-fun e!3542807 () Bool)

(assert (=> b!5766394 (= e!3542811 e!3542807)))

(declare-fun res!2433520 () Bool)

(assert (=> b!5766394 (= res!2433520 (not (nullable!5809 (reg!16106 (ite c!1019187 (regOne!32067 r!7292) (regOne!32066 r!7292))))))))

(assert (=> b!5766394 (=> (not res!2433520) (not e!3542807))))

(declare-fun b!5766395 () Bool)

(declare-fun res!2433519 () Bool)

(declare-fun e!3542806 () Bool)

(assert (=> b!5766395 (=> (not res!2433519) (not e!3542806))))

(declare-fun call!442926 () Bool)

(assert (=> b!5766395 (= res!2433519 call!442926)))

(assert (=> b!5766395 (= e!3542808 e!3542806)))

(declare-fun b!5766396 () Bool)

(assert (=> b!5766396 (= e!3542811 e!3542808)))

(declare-fun c!1019442 () Bool)

(assert (=> b!5766396 (= c!1019442 ((_ is Union!15777) (ite c!1019187 (regOne!32067 r!7292) (regOne!32066 r!7292))))))

(declare-fun b!5766397 () Bool)

(declare-fun e!3542812 () Bool)

(assert (=> b!5766397 (= e!3542810 e!3542812)))

(declare-fun res!2433518 () Bool)

(assert (=> b!5766397 (=> (not res!2433518) (not e!3542812))))

(assert (=> b!5766397 (= res!2433518 call!442926)))

(declare-fun b!5766398 () Bool)

(declare-fun call!442927 () Bool)

(assert (=> b!5766398 (= e!3542806 call!442927)))

(declare-fun bm!442920 () Bool)

(declare-fun call!442925 () Bool)

(declare-fun c!1019443 () Bool)

(assert (=> bm!442920 (= call!442925 (validRegex!7513 (ite c!1019443 (reg!16106 (ite c!1019187 (regOne!32067 r!7292) (regOne!32066 r!7292))) (ite c!1019442 (regTwo!32067 (ite c!1019187 (regOne!32067 r!7292) (regOne!32066 r!7292))) (regTwo!32066 (ite c!1019187 (regOne!32067 r!7292) (regOne!32066 r!7292)))))))))

(declare-fun b!5766399 () Bool)

(assert (=> b!5766399 (= e!3542812 call!442927)))

(declare-fun b!5766400 () Bool)

(declare-fun e!3542809 () Bool)

(assert (=> b!5766400 (= e!3542809 e!3542811)))

(assert (=> b!5766400 (= c!1019443 ((_ is Star!15777) (ite c!1019187 (regOne!32067 r!7292) (regOne!32066 r!7292))))))

(declare-fun bm!442921 () Bool)

(assert (=> bm!442921 (= call!442927 call!442925)))

(declare-fun bm!442922 () Bool)

(assert (=> bm!442922 (= call!442926 (validRegex!7513 (ite c!1019442 (regOne!32067 (ite c!1019187 (regOne!32067 r!7292) (regOne!32066 r!7292))) (regOne!32066 (ite c!1019187 (regOne!32067 r!7292) (regOne!32066 r!7292))))))))

(declare-fun b!5766393 () Bool)

(assert (=> b!5766393 (= e!3542807 call!442925)))

(declare-fun d!1816610 () Bool)

(declare-fun res!2433516 () Bool)

(assert (=> d!1816610 (=> res!2433516 e!3542809)))

(assert (=> d!1816610 (= res!2433516 ((_ is ElementMatch!15777) (ite c!1019187 (regOne!32067 r!7292) (regOne!32066 r!7292))))))

(assert (=> d!1816610 (= (validRegex!7513 (ite c!1019187 (regOne!32067 r!7292) (regOne!32066 r!7292))) e!3542809)))

(assert (= (and d!1816610 (not res!2433516)) b!5766400))

(assert (= (and b!5766400 c!1019443) b!5766394))

(assert (= (and b!5766400 (not c!1019443)) b!5766396))

(assert (= (and b!5766394 res!2433520) b!5766393))

(assert (= (and b!5766396 c!1019442) b!5766395))

(assert (= (and b!5766396 (not c!1019442)) b!5766392))

(assert (= (and b!5766395 res!2433519) b!5766398))

(assert (= (and b!5766392 (not res!2433517)) b!5766397))

(assert (= (and b!5766397 res!2433518) b!5766399))

(assert (= (or b!5766398 b!5766399) bm!442921))

(assert (= (or b!5766395 b!5766397) bm!442922))

(assert (= (or b!5766393 bm!442921) bm!442920))

(declare-fun m!6712276 () Bool)

(assert (=> b!5766394 m!6712276))

(declare-fun m!6712278 () Bool)

(assert (=> bm!442920 m!6712278))

(declare-fun m!6712280 () Bool)

(assert (=> bm!442922 m!6712280))

(assert (=> bm!442788 d!1816610))

(declare-fun d!1816612 () Bool)

(assert (=> d!1816612 (= (isEmptyLang!1272 lt!2289346) ((_ is EmptyLang!15777) lt!2289346))))

(assert (=> b!5765707 d!1816612))

(declare-fun bs!1352596 () Bool)

(declare-fun d!1816614 () Bool)

(assert (= bs!1352596 (and d!1816614 d!1816318)))

(declare-fun lambda!313169 () Int)

(assert (=> bs!1352596 (= lambda!313169 lambda!313089)))

(declare-fun bs!1352597 () Bool)

(assert (= bs!1352597 (and d!1816614 d!1816334)))

(assert (=> bs!1352597 (= lambda!313169 lambda!313093)))

(declare-fun bs!1352598 () Bool)

(assert (= bs!1352598 (and d!1816614 d!1816352)))

(assert (=> bs!1352598 (= lambda!313169 lambda!313102)))

(declare-fun bs!1352599 () Bool)

(assert (= bs!1352599 (and d!1816614 d!1816588)))

(assert (=> bs!1352599 (= lambda!313169 lambda!313167)))

(declare-fun bs!1352600 () Bool)

(assert (= bs!1352600 (and d!1816614 d!1816500)))

(assert (=> bs!1352600 (= lambda!313169 lambda!313156)))

(declare-fun bs!1352601 () Bool)

(assert (= bs!1352601 (and d!1816614 d!1816404)))

(assert (=> bs!1352601 (= lambda!313169 lambda!313119)))

(declare-fun bs!1352602 () Bool)

(assert (= bs!1352602 (and d!1816614 d!1816382)))

(assert (=> bs!1352602 (= lambda!313169 lambda!313109)))

(declare-fun e!3542816 () Bool)

(assert (=> d!1816614 e!3542816))

(declare-fun res!2433522 () Bool)

(assert (=> d!1816614 (=> (not res!2433522) (not e!3542816))))

(declare-fun lt!2289423 () Regex!15777)

(assert (=> d!1816614 (= res!2433522 (validRegex!7513 lt!2289423))))

(declare-fun e!3542814 () Regex!15777)

(assert (=> d!1816614 (= lt!2289423 e!3542814)))

(declare-fun c!1019446 () Bool)

(declare-fun e!3542813 () Bool)

(assert (=> d!1816614 (= c!1019446 e!3542813)))

(declare-fun res!2433521 () Bool)

(assert (=> d!1816614 (=> (not res!2433521) (not e!3542813))))

(assert (=> d!1816614 (= res!2433521 ((_ is Cons!63506) (t!376966 (exprs!5661 (h!69955 zl!343)))))))

(assert (=> d!1816614 (forall!14894 (t!376966 (exprs!5661 (h!69955 zl!343))) lambda!313169)))

(assert (=> d!1816614 (= (generalisedConcat!1392 (t!376966 (exprs!5661 (h!69955 zl!343)))) lt!2289423)))

(declare-fun b!5766401 () Bool)

(declare-fun e!3542815 () Regex!15777)

(assert (=> b!5766401 (= e!3542815 EmptyExpr!15777)))

(declare-fun b!5766402 () Bool)

(declare-fun e!3542818 () Bool)

(declare-fun e!3542817 () Bool)

(assert (=> b!5766402 (= e!3542818 e!3542817)))

(declare-fun c!1019445 () Bool)

(assert (=> b!5766402 (= c!1019445 (isEmpty!35398 (tail!11285 (t!376966 (exprs!5661 (h!69955 zl!343))))))))

(declare-fun b!5766403 () Bool)

(assert (=> b!5766403 (= e!3542816 e!3542818)))

(declare-fun c!1019447 () Bool)

(assert (=> b!5766403 (= c!1019447 (isEmpty!35398 (t!376966 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5766404 () Bool)

(assert (=> b!5766404 (= e!3542814 (h!69954 (t!376966 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5766405 () Bool)

(assert (=> b!5766405 (= e!3542818 (isEmptyExpr!1262 lt!2289423))))

(declare-fun b!5766406 () Bool)

(assert (=> b!5766406 (= e!3542813 (isEmpty!35398 (t!376966 (t!376966 (exprs!5661 (h!69955 zl!343))))))))

(declare-fun b!5766407 () Bool)

(assert (=> b!5766407 (= e!3542814 e!3542815)))

(declare-fun c!1019444 () Bool)

(assert (=> b!5766407 (= c!1019444 ((_ is Cons!63506) (t!376966 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5766408 () Bool)

(assert (=> b!5766408 (= e!3542815 (Concat!24622 (h!69954 (t!376966 (exprs!5661 (h!69955 zl!343)))) (generalisedConcat!1392 (t!376966 (t!376966 (exprs!5661 (h!69955 zl!343)))))))))

(declare-fun b!5766409 () Bool)

(assert (=> b!5766409 (= e!3542817 (= lt!2289423 (head!12190 (t!376966 (exprs!5661 (h!69955 zl!343))))))))

(declare-fun b!5766410 () Bool)

(assert (=> b!5766410 (= e!3542817 (isConcat!785 lt!2289423))))

(assert (= (and d!1816614 res!2433521) b!5766406))

(assert (= (and d!1816614 c!1019446) b!5766404))

(assert (= (and d!1816614 (not c!1019446)) b!5766407))

(assert (= (and b!5766407 c!1019444) b!5766408))

(assert (= (and b!5766407 (not c!1019444)) b!5766401))

(assert (= (and d!1816614 res!2433522) b!5766403))

(assert (= (and b!5766403 c!1019447) b!5766405))

(assert (= (and b!5766403 (not c!1019447)) b!5766402))

(assert (= (and b!5766402 c!1019445) b!5766409))

(assert (= (and b!5766402 (not c!1019445)) b!5766410))

(assert (=> b!5766403 m!6711498))

(declare-fun m!6712282 () Bool)

(assert (=> b!5766405 m!6712282))

(declare-fun m!6712284 () Bool)

(assert (=> b!5766409 m!6712284))

(declare-fun m!6712286 () Bool)

(assert (=> b!5766410 m!6712286))

(declare-fun m!6712288 () Bool)

(assert (=> b!5766406 m!6712288))

(declare-fun m!6712290 () Bool)

(assert (=> b!5766408 m!6712290))

(declare-fun m!6712292 () Bool)

(assert (=> b!5766402 m!6712292))

(assert (=> b!5766402 m!6712292))

(declare-fun m!6712294 () Bool)

(assert (=> b!5766402 m!6712294))

(declare-fun m!6712296 () Bool)

(assert (=> d!1816614 m!6712296))

(declare-fun m!6712298 () Bool)

(assert (=> d!1816614 m!6712298))

(assert (=> b!5765587 d!1816614))

(declare-fun d!1816616 () Bool)

(assert (=> d!1816616 (= (Exists!2877 (ite c!1019331 lambda!313142 lambda!313143)) (choose!43732 (ite c!1019331 lambda!313142 lambda!313143)))))

(declare-fun bs!1352603 () Bool)

(assert (= bs!1352603 d!1816616))

(declare-fun m!6712300 () Bool)

(assert (=> bs!1352603 m!6712300))

(assert (=> bm!442839 d!1816616))

(declare-fun d!1816618 () Bool)

(assert (=> d!1816618 true))

(assert (=> d!1816618 true))

(declare-fun res!2433523 () Bool)

(assert (=> d!1816618 (= (choose!43732 lambda!313081) res!2433523)))

(assert (=> d!1816472 d!1816618))

(declare-fun d!1816620 () Bool)

(declare-fun lambda!313172 () Int)

(declare-fun exists!2243 ((InoxSet Context!10322) Int) Bool)

(assert (=> d!1816620 (= (nullableZipper!1704 lt!2289297) (exists!2243 lt!2289297 lambda!313172))))

(declare-fun bs!1352604 () Bool)

(assert (= bs!1352604 d!1816620))

(declare-fun m!6712302 () Bool)

(assert (=> bs!1352604 m!6712302))

(assert (=> b!5765491 d!1816620))

(declare-fun b!5766431 () Bool)

(declare-fun res!2433525 () Bool)

(declare-fun e!3542833 () Bool)

(assert (=> b!5766431 (=> res!2433525 e!3542833)))

(assert (=> b!5766431 (= res!2433525 (not ((_ is Concat!24622) lt!2289391)))))

(declare-fun e!3542831 () Bool)

(assert (=> b!5766431 (= e!3542831 e!3542833)))

(declare-fun b!5766433 () Bool)

(declare-fun e!3542834 () Bool)

(declare-fun e!3542830 () Bool)

(assert (=> b!5766433 (= e!3542834 e!3542830)))

(declare-fun res!2433528 () Bool)

(assert (=> b!5766433 (= res!2433528 (not (nullable!5809 (reg!16106 lt!2289391))))))

(assert (=> b!5766433 (=> (not res!2433528) (not e!3542830))))

(declare-fun b!5766434 () Bool)

(declare-fun res!2433527 () Bool)

(declare-fun e!3542829 () Bool)

(assert (=> b!5766434 (=> (not res!2433527) (not e!3542829))))

(declare-fun call!442935 () Bool)

(assert (=> b!5766434 (= res!2433527 call!442935)))

(assert (=> b!5766434 (= e!3542831 e!3542829)))

(declare-fun b!5766435 () Bool)

(assert (=> b!5766435 (= e!3542834 e!3542831)))

(declare-fun c!1019460 () Bool)

(assert (=> b!5766435 (= c!1019460 ((_ is Union!15777) lt!2289391))))

(declare-fun b!5766436 () Bool)

(declare-fun e!3542835 () Bool)

(assert (=> b!5766436 (= e!3542833 e!3542835)))

(declare-fun res!2433526 () Bool)

(assert (=> b!5766436 (=> (not res!2433526) (not e!3542835))))

(assert (=> b!5766436 (= res!2433526 call!442935)))

(declare-fun b!5766437 () Bool)

(declare-fun call!442936 () Bool)

(assert (=> b!5766437 (= e!3542829 call!442936)))

(declare-fun bm!442929 () Bool)

(declare-fun call!442934 () Bool)

(declare-fun c!1019461 () Bool)

(assert (=> bm!442929 (= call!442934 (validRegex!7513 (ite c!1019461 (reg!16106 lt!2289391) (ite c!1019460 (regTwo!32067 lt!2289391) (regTwo!32066 lt!2289391)))))))

(declare-fun b!5766438 () Bool)

(assert (=> b!5766438 (= e!3542835 call!442936)))

(declare-fun b!5766439 () Bool)

(declare-fun e!3542832 () Bool)

(assert (=> b!5766439 (= e!3542832 e!3542834)))

(assert (=> b!5766439 (= c!1019461 ((_ is Star!15777) lt!2289391))))

(declare-fun bm!442930 () Bool)

(assert (=> bm!442930 (= call!442936 call!442934)))

(declare-fun bm!442931 () Bool)

(assert (=> bm!442931 (= call!442935 (validRegex!7513 (ite c!1019460 (regOne!32067 lt!2289391) (regOne!32066 lt!2289391))))))

(declare-fun b!5766432 () Bool)

(assert (=> b!5766432 (= e!3542830 call!442934)))

(declare-fun d!1816622 () Bool)

(declare-fun res!2433524 () Bool)

(assert (=> d!1816622 (=> res!2433524 e!3542832)))

(assert (=> d!1816622 (= res!2433524 ((_ is ElementMatch!15777) lt!2289391))))

(assert (=> d!1816622 (= (validRegex!7513 lt!2289391) e!3542832)))

(assert (= (and d!1816622 (not res!2433524)) b!5766439))

(assert (= (and b!5766439 c!1019461) b!5766433))

(assert (= (and b!5766439 (not c!1019461)) b!5766435))

(assert (= (and b!5766433 res!2433528) b!5766432))

(assert (= (and b!5766435 c!1019460) b!5766434))

(assert (= (and b!5766435 (not c!1019460)) b!5766431))

(assert (= (and b!5766434 res!2433527) b!5766437))

(assert (= (and b!5766431 (not res!2433525)) b!5766436))

(assert (= (and b!5766436 res!2433526) b!5766438))

(assert (= (or b!5766437 b!5766438) bm!442930))

(assert (= (or b!5766434 b!5766436) bm!442931))

(assert (= (or b!5766432 bm!442930) bm!442929))

(declare-fun m!6712304 () Bool)

(assert (=> b!5766433 m!6712304))

(declare-fun m!6712306 () Bool)

(assert (=> bm!442929 m!6712306))

(declare-fun m!6712308 () Bool)

(assert (=> bm!442931 m!6712308))

(assert (=> d!1816456 d!1816622))

(assert (=> d!1816456 d!1816382))

(assert (=> d!1816456 d!1816404))

(declare-fun e!3542838 () (InoxSet Context!10322))

(declare-fun b!5766440 () Bool)

(assert (=> b!5766440 (= e!3542838 (store ((as const (Array Context!10322 Bool)) false) (ite (or c!1019367 c!1019370) lt!2289296 (Context!10323 call!442867)) true))))

(declare-fun b!5766441 () Bool)

(declare-fun e!3542839 () (InoxSet Context!10322))

(declare-fun call!442943 () (InoxSet Context!10322))

(assert (=> b!5766441 (= e!3542839 call!442943)))

(declare-fun b!5766442 () Bool)

(declare-fun e!3542841 () Bool)

(assert (=> b!5766442 (= e!3542841 (nullable!5809 (regOne!32066 (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343))))))))))))

(declare-fun b!5766443 () Bool)

(declare-fun e!3542837 () (InoxSet Context!10322))

(declare-fun call!442942 () (InoxSet Context!10322))

(declare-fun call!442944 () (InoxSet Context!10322))

(assert (=> b!5766443 (= e!3542837 ((_ map or) call!442942 call!442944))))

(declare-fun bm!442934 () Bool)

(assert (=> bm!442934 (= call!442943 call!442944)))

(declare-fun b!5766445 () Bool)

(declare-fun e!3542840 () (InoxSet Context!10322))

(assert (=> b!5766445 (= e!3542838 e!3542840)))

(declare-fun c!1019462 () Bool)

(assert (=> b!5766445 (= c!1019462 ((_ is Union!15777) (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343)))))))))))

(declare-fun bm!442935 () Bool)

(declare-fun call!442939 () List!63630)

(assert (=> bm!442935 (= call!442942 (derivationStepZipperDown!1119 (ite c!1019462 (regOne!32067 (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343)))))))) (regOne!32066 (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343))))))))) (ite c!1019462 (ite (or c!1019367 c!1019370) lt!2289296 (Context!10323 call!442867)) (Context!10323 call!442939)) (h!69956 s!2326)))))

(declare-fun bm!442936 () Bool)

(declare-fun call!442941 () List!63630)

(assert (=> bm!442936 (= call!442941 call!442939)))

(declare-fun bm!442937 () Bool)

(declare-fun call!442940 () (InoxSet Context!10322))

(assert (=> bm!442937 (= call!442944 call!442940)))

(declare-fun bm!442938 () Bool)

(declare-fun c!1019466 () Bool)

(declare-fun c!1019465 () Bool)

(assert (=> bm!442938 (= call!442939 ($colon$colon!1772 (exprs!5661 (ite (or c!1019367 c!1019370) lt!2289296 (Context!10323 call!442867))) (ite (or c!1019465 c!1019466) (regTwo!32066 (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343)))))))) (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343))))))))))))

(declare-fun bm!442939 () Bool)

(assert (=> bm!442939 (= call!442940 (derivationStepZipperDown!1119 (ite c!1019462 (regTwo!32067 (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343)))))))) (ite c!1019465 (regTwo!32066 (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343)))))))) (ite c!1019466 (regOne!32066 (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343)))))))) (reg!16106 (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343))))))))))) (ite (or c!1019462 c!1019465) (ite (or c!1019367 c!1019370) lt!2289296 (Context!10323 call!442867)) (Context!10323 call!442941)) (h!69956 s!2326)))))

(declare-fun c!1019463 () Bool)

(declare-fun d!1816624 () Bool)

(assert (=> d!1816624 (= c!1019463 (and ((_ is ElementMatch!15777) (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343)))))))) (= (c!1019159 (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343)))))))) (h!69956 s!2326))))))

(assert (=> d!1816624 (= (derivationStepZipperDown!1119 (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343))))))) (ite (or c!1019367 c!1019370) lt!2289296 (Context!10323 call!442867)) (h!69956 s!2326)) e!3542838)))

(declare-fun b!5766444 () Bool)

(assert (=> b!5766444 (= e!3542840 ((_ map or) call!442942 call!442940))))

(declare-fun b!5766446 () Bool)

(declare-fun e!3542836 () (InoxSet Context!10322))

(assert (=> b!5766446 (= e!3542836 ((as const (Array Context!10322 Bool)) false))))

(declare-fun b!5766447 () Bool)

(assert (=> b!5766447 (= c!1019465 e!3542841)))

(declare-fun res!2433529 () Bool)

(assert (=> b!5766447 (=> (not res!2433529) (not e!3542841))))

(assert (=> b!5766447 (= res!2433529 ((_ is Concat!24622) (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343)))))))))))

(assert (=> b!5766447 (= e!3542840 e!3542837)))

(declare-fun c!1019464 () Bool)

(declare-fun b!5766448 () Bool)

(assert (=> b!5766448 (= c!1019464 ((_ is Star!15777) (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343)))))))))))

(assert (=> b!5766448 (= e!3542839 e!3542836)))

(declare-fun b!5766449 () Bool)

(assert (=> b!5766449 (= e!3542837 e!3542839)))

(assert (=> b!5766449 (= c!1019466 ((_ is Concat!24622) (ite c!1019367 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019370 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019371 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343)))))))))))

(declare-fun b!5766450 () Bool)

(assert (=> b!5766450 (= e!3542836 call!442943)))

(assert (= (and d!1816624 c!1019463) b!5766440))

(assert (= (and d!1816624 (not c!1019463)) b!5766445))

(assert (= (and b!5766445 c!1019462) b!5766444))

(assert (= (and b!5766445 (not c!1019462)) b!5766447))

(assert (= (and b!5766447 res!2433529) b!5766442))

(assert (= (and b!5766447 c!1019465) b!5766443))

(assert (= (and b!5766447 (not c!1019465)) b!5766449))

(assert (= (and b!5766449 c!1019466) b!5766441))

(assert (= (and b!5766449 (not c!1019466)) b!5766448))

(assert (= (and b!5766448 c!1019464) b!5766450))

(assert (= (and b!5766448 (not c!1019464)) b!5766446))

(assert (= (or b!5766441 b!5766450) bm!442936))

(assert (= (or b!5766441 b!5766450) bm!442934))

(assert (= (or b!5766443 bm!442936) bm!442938))

(assert (= (or b!5766443 bm!442934) bm!442937))

(assert (= (or b!5766444 bm!442937) bm!442939))

(assert (= (or b!5766444 b!5766443) bm!442935))

(declare-fun m!6712310 () Bool)

(assert (=> b!5766442 m!6712310))

(declare-fun m!6712312 () Bool)

(assert (=> bm!442938 m!6712312))

(declare-fun m!6712314 () Bool)

(assert (=> b!5766440 m!6712314))

(declare-fun m!6712316 () Bool)

(assert (=> bm!442939 m!6712316))

(declare-fun m!6712318 () Bool)

(assert (=> bm!442935 m!6712318))

(assert (=> bm!442865 d!1816624))

(declare-fun d!1816626 () Bool)

(assert (=> d!1816626 true))

(declare-fun setRes!38738 () Bool)

(assert (=> d!1816626 setRes!38738))

(declare-fun condSetEmpty!38738 () Bool)

(declare-fun res!2433532 () (InoxSet Context!10322))

(assert (=> d!1816626 (= condSetEmpty!38738 (= res!2433532 ((as const (Array Context!10322 Bool)) false)))))

(assert (=> d!1816626 (= (choose!43735 z!1189 lambda!313083) res!2433532)))

(declare-fun setIsEmpty!38738 () Bool)

(assert (=> setIsEmpty!38738 setRes!38738))

(declare-fun setElem!38738 () Context!10322)

(declare-fun e!3542849 () Bool)

(declare-fun tp!1593474 () Bool)

(declare-fun setNonEmpty!38738 () Bool)

(assert (=> setNonEmpty!38738 (= setRes!38738 (and tp!1593474 (inv!82689 setElem!38738) e!3542849))))

(declare-fun setRest!38738 () (InoxSet Context!10322))

(assert (=> setNonEmpty!38738 (= res!2433532 ((_ map or) (store ((as const (Array Context!10322 Bool)) false) setElem!38738 true) setRest!38738))))

(declare-fun b!5766463 () Bool)

(declare-fun tp!1593473 () Bool)

(assert (=> b!5766463 (= e!3542849 tp!1593473)))

(assert (= (and d!1816626 condSetEmpty!38738) setIsEmpty!38738))

(assert (= (and d!1816626 (not condSetEmpty!38738)) setNonEmpty!38738))

(assert (= setNonEmpty!38738 b!5766463))

(declare-fun m!6712320 () Bool)

(assert (=> setNonEmpty!38738 m!6712320))

(assert (=> d!1816490 d!1816626))

(declare-fun bs!1352605 () Bool)

(declare-fun d!1816628 () Bool)

(assert (= bs!1352605 (and d!1816628 d!1816620)))

(declare-fun lambda!313173 () Int)

(assert (=> bs!1352605 (= lambda!313173 lambda!313172)))

(assert (=> d!1816628 (= (nullableZipper!1704 z!1189) (exists!2243 z!1189 lambda!313173))))

(declare-fun bs!1352606 () Bool)

(assert (= bs!1352606 d!1816628))

(declare-fun m!6712322 () Bool)

(assert (=> bs!1352606 m!6712322))

(assert (=> b!5765376 d!1816628))

(declare-fun d!1816630 () Bool)

(assert (=> d!1816630 (= (nullable!5809 (regTwo!32066 r!7292)) (nullableFct!1850 (regTwo!32066 r!7292)))))

(declare-fun bs!1352607 () Bool)

(assert (= bs!1352607 d!1816630))

(declare-fun m!6712326 () Bool)

(assert (=> bs!1352607 m!6712326))

(assert (=> b!5765993 d!1816630))

(declare-fun d!1816632 () Bool)

(assert (=> d!1816632 (= (isEmpty!35398 (unfocusZipperList!1205 zl!343)) ((_ is Nil!63506) (unfocusZipperList!1205 zl!343)))))

(assert (=> b!5765711 d!1816632))

(assert (=> b!5765915 d!1816528))

(assert (=> b!5765915 d!1816510))

(assert (=> d!1816462 d!1816460))

(assert (=> d!1816462 d!1816458))

(declare-fun d!1816636 () Bool)

(assert (=> d!1816636 (= (matchR!7962 r!7292 s!2326) (matchRSpec!2880 r!7292 s!2326))))

(assert (=> d!1816636 true))

(declare-fun _$88!4077 () Unit!156640)

(assert (=> d!1816636 (= (choose!43727 r!7292 s!2326) _$88!4077)))

(declare-fun bs!1352609 () Bool)

(assert (= bs!1352609 d!1816636))

(assert (=> bs!1352609 m!6711486))

(assert (=> bs!1352609 m!6711484))

(assert (=> d!1816462 d!1816636))

(assert (=> d!1816462 d!1816338))

(declare-fun bs!1352610 () Bool)

(declare-fun d!1816642 () Bool)

(assert (= bs!1352610 (and d!1816642 d!1816620)))

(declare-fun lambda!313174 () Int)

(assert (=> bs!1352610 (= lambda!313174 lambda!313172)))

(declare-fun bs!1352611 () Bool)

(assert (= bs!1352611 (and d!1816642 d!1816628)))

(assert (=> bs!1352611 (= lambda!313174 lambda!313173)))

(assert (=> d!1816642 (= (nullableZipper!1704 ((_ map or) lt!2289297 lt!2289310)) (exists!2243 ((_ map or) lt!2289297 lt!2289310) lambda!313174))))

(declare-fun bs!1352612 () Bool)

(assert (= bs!1352612 d!1816642))

(declare-fun m!6712336 () Bool)

(assert (=> bs!1352612 m!6712336))

(assert (=> b!5765605 d!1816642))

(declare-fun d!1816646 () Bool)

(assert (=> d!1816646 (= (flatMap!1390 lt!2289309 lambda!313155) (choose!43735 lt!2289309 lambda!313155))))

(declare-fun bs!1352613 () Bool)

(assert (= bs!1352613 d!1816646))

(declare-fun m!6712338 () Bool)

(assert (=> bs!1352613 m!6712338))

(assert (=> d!1816476 d!1816646))

(assert (=> bm!442844 d!1816526))

(declare-fun d!1816648 () Bool)

(assert (=> d!1816648 (= (Exists!2877 (ite c!1019315 lambda!313130 lambda!313131)) (choose!43732 (ite c!1019315 lambda!313130 lambda!313131)))))

(declare-fun bs!1352614 () Bool)

(assert (= bs!1352614 d!1816648))

(declare-fun m!6712340 () Bool)

(assert (=> bs!1352614 m!6712340))

(assert (=> bm!442834 d!1816648))

(declare-fun d!1816652 () Bool)

(assert (=> d!1816652 (= (flatMap!1390 z!1189 lambda!313086) (choose!43735 z!1189 lambda!313086))))

(declare-fun bs!1352616 () Bool)

(assert (= bs!1352616 d!1816652))

(declare-fun m!6712344 () Bool)

(assert (=> bs!1352616 m!6712344))

(assert (=> d!1816316 d!1816652))

(declare-fun b!5766467 () Bool)

(declare-fun res!2433537 () Bool)

(declare-fun e!3542857 () Bool)

(assert (=> b!5766467 (=> res!2433537 e!3542857)))

(assert (=> b!5766467 (= res!2433537 (not ((_ is Concat!24622) lt!2289346)))))

(declare-fun e!3542855 () Bool)

(assert (=> b!5766467 (= e!3542855 e!3542857)))

(declare-fun b!5766469 () Bool)

(declare-fun e!3542858 () Bool)

(declare-fun e!3542854 () Bool)

(assert (=> b!5766469 (= e!3542858 e!3542854)))

(declare-fun res!2433540 () Bool)

(assert (=> b!5766469 (= res!2433540 (not (nullable!5809 (reg!16106 lt!2289346))))))

(assert (=> b!5766469 (=> (not res!2433540) (not e!3542854))))

(declare-fun b!5766470 () Bool)

(declare-fun res!2433539 () Bool)

(declare-fun e!3542853 () Bool)

(assert (=> b!5766470 (=> (not res!2433539) (not e!3542853))))

(declare-fun call!442950 () Bool)

(assert (=> b!5766470 (= res!2433539 call!442950)))

(assert (=> b!5766470 (= e!3542855 e!3542853)))

(declare-fun b!5766471 () Bool)

(assert (=> b!5766471 (= e!3542858 e!3542855)))

(declare-fun c!1019472 () Bool)

(assert (=> b!5766471 (= c!1019472 ((_ is Union!15777) lt!2289346))))

(declare-fun b!5766472 () Bool)

(declare-fun e!3542859 () Bool)

(assert (=> b!5766472 (= e!3542857 e!3542859)))

(declare-fun res!2433538 () Bool)

(assert (=> b!5766472 (=> (not res!2433538) (not e!3542859))))

(assert (=> b!5766472 (= res!2433538 call!442950)))

(declare-fun b!5766473 () Bool)

(declare-fun call!442951 () Bool)

(assert (=> b!5766473 (= e!3542853 call!442951)))

(declare-fun c!1019473 () Bool)

(declare-fun bm!442944 () Bool)

(declare-fun call!442949 () Bool)

(assert (=> bm!442944 (= call!442949 (validRegex!7513 (ite c!1019473 (reg!16106 lt!2289346) (ite c!1019472 (regTwo!32067 lt!2289346) (regTwo!32066 lt!2289346)))))))

(declare-fun b!5766474 () Bool)

(assert (=> b!5766474 (= e!3542859 call!442951)))

(declare-fun b!5766475 () Bool)

(declare-fun e!3542856 () Bool)

(assert (=> b!5766475 (= e!3542856 e!3542858)))

(assert (=> b!5766475 (= c!1019473 ((_ is Star!15777) lt!2289346))))

(declare-fun bm!442945 () Bool)

(assert (=> bm!442945 (= call!442951 call!442949)))

(declare-fun bm!442946 () Bool)

(assert (=> bm!442946 (= call!442950 (validRegex!7513 (ite c!1019472 (regOne!32067 lt!2289346) (regOne!32066 lt!2289346))))))

(declare-fun b!5766468 () Bool)

(assert (=> b!5766468 (= e!3542854 call!442949)))

(declare-fun d!1816656 () Bool)

(declare-fun res!2433536 () Bool)

(assert (=> d!1816656 (=> res!2433536 e!3542856)))

(assert (=> d!1816656 (= res!2433536 ((_ is ElementMatch!15777) lt!2289346))))

(assert (=> d!1816656 (= (validRegex!7513 lt!2289346) e!3542856)))

(assert (= (and d!1816656 (not res!2433536)) b!5766475))

(assert (= (and b!5766475 c!1019473) b!5766469))

(assert (= (and b!5766475 (not c!1019473)) b!5766471))

(assert (= (and b!5766469 res!2433540) b!5766468))

(assert (= (and b!5766471 c!1019472) b!5766470))

(assert (= (and b!5766471 (not c!1019472)) b!5766467))

(assert (= (and b!5766470 res!2433539) b!5766473))

(assert (= (and b!5766467 (not res!2433537)) b!5766472))

(assert (= (and b!5766472 res!2433538) b!5766474))

(assert (= (or b!5766473 b!5766474) bm!442945))

(assert (= (or b!5766470 b!5766472) bm!442946))

(assert (= (or b!5766468 bm!442945) bm!442944))

(declare-fun m!6712348 () Bool)

(assert (=> b!5766469 m!6712348))

(declare-fun m!6712350 () Bool)

(assert (=> bm!442944 m!6712350))

(declare-fun m!6712352 () Bool)

(assert (=> bm!442946 m!6712352))

(assert (=> d!1816382 d!1816656))

(declare-fun d!1816660 () Bool)

(declare-fun res!2433541 () Bool)

(declare-fun e!3542860 () Bool)

(assert (=> d!1816660 (=> res!2433541 e!3542860)))

(assert (=> d!1816660 (= res!2433541 ((_ is Nil!63506) (unfocusZipperList!1205 zl!343)))))

(assert (=> d!1816660 (= (forall!14894 (unfocusZipperList!1205 zl!343) lambda!313109) e!3542860)))

(declare-fun b!5766476 () Bool)

(declare-fun e!3542861 () Bool)

(assert (=> b!5766476 (= e!3542860 e!3542861)))

(declare-fun res!2433542 () Bool)

(assert (=> b!5766476 (=> (not res!2433542) (not e!3542861))))

(assert (=> b!5766476 (= res!2433542 (dynLambda!24863 lambda!313109 (h!69954 (unfocusZipperList!1205 zl!343))))))

(declare-fun b!5766477 () Bool)

(assert (=> b!5766477 (= e!3542861 (forall!14894 (t!376966 (unfocusZipperList!1205 zl!343)) lambda!313109))))

(assert (= (and d!1816660 (not res!2433541)) b!5766476))

(assert (= (and b!5766476 res!2433542) b!5766477))

(declare-fun b_lambda!217681 () Bool)

(assert (=> (not b_lambda!217681) (not b!5766476)))

(declare-fun m!6712354 () Bool)

(assert (=> b!5766476 m!6712354))

(declare-fun m!6712356 () Bool)

(assert (=> b!5766477 m!6712356))

(assert (=> d!1816382 d!1816660))

(declare-fun bs!1352618 () Bool)

(declare-fun d!1816662 () Bool)

(assert (= bs!1352618 (and d!1816662 d!1816620)))

(declare-fun lambda!313175 () Int)

(assert (=> bs!1352618 (= lambda!313175 lambda!313172)))

(declare-fun bs!1352619 () Bool)

(assert (= bs!1352619 (and d!1816662 d!1816628)))

(assert (=> bs!1352619 (= lambda!313175 lambda!313173)))

(declare-fun bs!1352620 () Bool)

(assert (= bs!1352620 (and d!1816662 d!1816642)))

(assert (=> bs!1352620 (= lambda!313175 lambda!313174)))

(assert (=> d!1816662 (= (nullableZipper!1704 lt!2289310) (exists!2243 lt!2289310 lambda!313175))))

(declare-fun bs!1352621 () Bool)

(assert (= bs!1352621 d!1816662))

(declare-fun m!6712358 () Bool)

(assert (=> bs!1352621 m!6712358))

(assert (=> b!5765378 d!1816662))

(assert (=> bm!442838 d!1816526))

(declare-fun b!5766481 () Bool)

(declare-fun e!3542862 () Bool)

(declare-fun lt!2289427 () List!63632)

(assert (=> b!5766481 (= e!3542862 (or (not (= (t!376968 s!2326) Nil!63508)) (= lt!2289427 (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508)))))))

(declare-fun b!5766478 () Bool)

(declare-fun e!3542863 () List!63632)

(assert (=> b!5766478 (= e!3542863 (t!376968 s!2326))))

(declare-fun b!5766479 () Bool)

(assert (=> b!5766479 (= e!3542863 (Cons!63508 (h!69956 (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508))) (++!13991 (t!376968 (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508))) (t!376968 s!2326))))))

(declare-fun d!1816664 () Bool)

(assert (=> d!1816664 e!3542862))

(declare-fun res!2433543 () Bool)

(assert (=> d!1816664 (=> (not res!2433543) (not e!3542862))))

(assert (=> d!1816664 (= res!2433543 (= (content!11594 lt!2289427) ((_ map or) (content!11594 (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508))) (content!11594 (t!376968 s!2326)))))))

(assert (=> d!1816664 (= lt!2289427 e!3542863)))

(declare-fun c!1019474 () Bool)

(assert (=> d!1816664 (= c!1019474 ((_ is Nil!63508) (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508))))))

(assert (=> d!1816664 (= (++!13991 (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508)) (t!376968 s!2326)) lt!2289427)))

(declare-fun b!5766480 () Bool)

(declare-fun res!2433544 () Bool)

(assert (=> b!5766480 (=> (not res!2433544) (not e!3542862))))

(assert (=> b!5766480 (= res!2433544 (= (size!40076 lt!2289427) (+ (size!40076 (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508))) (size!40076 (t!376968 s!2326)))))))

(assert (= (and d!1816664 c!1019474) b!5766478))

(assert (= (and d!1816664 (not c!1019474)) b!5766479))

(assert (= (and d!1816664 res!2433543) b!5766480))

(assert (= (and b!5766480 res!2433544) b!5766481))

(declare-fun m!6712360 () Bool)

(assert (=> b!5766479 m!6712360))

(declare-fun m!6712362 () Bool)

(assert (=> d!1816664 m!6712362))

(assert (=> d!1816664 m!6711986))

(declare-fun m!6712364 () Bool)

(assert (=> d!1816664 m!6712364))

(declare-fun m!6712366 () Bool)

(assert (=> d!1816664 m!6712366))

(declare-fun m!6712368 () Bool)

(assert (=> b!5766480 m!6712368))

(assert (=> b!5766480 m!6711986))

(declare-fun m!6712370 () Bool)

(assert (=> b!5766480 m!6712370))

(declare-fun m!6712372 () Bool)

(assert (=> b!5766480 m!6712372))

(assert (=> b!5766044 d!1816664))

(declare-fun b!5766485 () Bool)

(declare-fun e!3542864 () Bool)

(declare-fun lt!2289428 () List!63632)

(assert (=> b!5766485 (= e!3542864 (or (not (= (Cons!63508 (h!69956 s!2326) Nil!63508) Nil!63508)) (= lt!2289428 Nil!63508)))))

(declare-fun b!5766482 () Bool)

(declare-fun e!3542865 () List!63632)

(assert (=> b!5766482 (= e!3542865 (Cons!63508 (h!69956 s!2326) Nil!63508))))

(declare-fun b!5766483 () Bool)

(assert (=> b!5766483 (= e!3542865 (Cons!63508 (h!69956 Nil!63508) (++!13991 (t!376968 Nil!63508) (Cons!63508 (h!69956 s!2326) Nil!63508))))))

(declare-fun d!1816666 () Bool)

(assert (=> d!1816666 e!3542864))

(declare-fun res!2433545 () Bool)

(assert (=> d!1816666 (=> (not res!2433545) (not e!3542864))))

(assert (=> d!1816666 (= res!2433545 (= (content!11594 lt!2289428) ((_ map or) (content!11594 Nil!63508) (content!11594 (Cons!63508 (h!69956 s!2326) Nil!63508)))))))

(assert (=> d!1816666 (= lt!2289428 e!3542865)))

(declare-fun c!1019475 () Bool)

(assert (=> d!1816666 (= c!1019475 ((_ is Nil!63508) Nil!63508))))

(assert (=> d!1816666 (= (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508)) lt!2289428)))

(declare-fun b!5766484 () Bool)

(declare-fun res!2433546 () Bool)

(assert (=> b!5766484 (=> (not res!2433546) (not e!3542864))))

(assert (=> b!5766484 (= res!2433546 (= (size!40076 lt!2289428) (+ (size!40076 Nil!63508) (size!40076 (Cons!63508 (h!69956 s!2326) Nil!63508)))))))

(assert (= (and d!1816666 c!1019475) b!5766482))

(assert (= (and d!1816666 (not c!1019475)) b!5766483))

(assert (= (and d!1816666 res!2433545) b!5766484))

(assert (= (and b!5766484 res!2433546) b!5766485))

(declare-fun m!6712374 () Bool)

(assert (=> b!5766483 m!6712374))

(declare-fun m!6712376 () Bool)

(assert (=> d!1816666 m!6712376))

(declare-fun m!6712378 () Bool)

(assert (=> d!1816666 m!6712378))

(declare-fun m!6712380 () Bool)

(assert (=> d!1816666 m!6712380))

(declare-fun m!6712382 () Bool)

(assert (=> b!5766484 m!6712382))

(declare-fun m!6712384 () Bool)

(assert (=> b!5766484 m!6712384))

(declare-fun m!6712386 () Bool)

(assert (=> b!5766484 m!6712386))

(assert (=> b!5766044 d!1816666))

(declare-fun d!1816668 () Bool)

(assert (=> d!1816668 (= (++!13991 (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508)) (t!376968 s!2326)) s!2326)))

(declare-fun lt!2289431 () Unit!156640)

(declare-fun choose!43737 (List!63632 C!31824 List!63632 List!63632) Unit!156640)

(assert (=> d!1816668 (= lt!2289431 (choose!43737 Nil!63508 (h!69956 s!2326) (t!376968 s!2326) s!2326))))

(assert (=> d!1816668 (= (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) (t!376968 s!2326))) s!2326)))

(assert (=> d!1816668 (= (lemmaMoveElementToOtherListKeepsConcatEq!2108 Nil!63508 (h!69956 s!2326) (t!376968 s!2326) s!2326) lt!2289431)))

(declare-fun bs!1352622 () Bool)

(assert (= bs!1352622 d!1816668))

(assert (=> bs!1352622 m!6711986))

(assert (=> bs!1352622 m!6711986))

(assert (=> bs!1352622 m!6711988))

(declare-fun m!6712388 () Bool)

(assert (=> bs!1352622 m!6712388))

(declare-fun m!6712390 () Bool)

(assert (=> bs!1352622 m!6712390))

(assert (=> b!5766044 d!1816668))

(declare-fun b!5766494 () Bool)

(declare-fun e!3542873 () Option!15786)

(assert (=> b!5766494 (= e!3542873 None!15785)))

(declare-fun b!5766495 () Bool)

(declare-fun e!3542871 () Option!15786)

(assert (=> b!5766495 (= e!3542871 e!3542873)))

(declare-fun c!1019476 () Bool)

(assert (=> b!5766495 (= c!1019476 ((_ is Nil!63508) (t!376968 s!2326)))))

(declare-fun b!5766496 () Bool)

(declare-fun e!3542874 () Bool)

(declare-fun lt!2289432 () Option!15786)

(assert (=> b!5766496 (= e!3542874 (= (++!13991 (_1!36177 (get!21913 lt!2289432)) (_2!36177 (get!21913 lt!2289432))) s!2326))))

(declare-fun b!5766497 () Bool)

(declare-fun res!2433556 () Bool)

(assert (=> b!5766497 (=> (not res!2433556) (not e!3542874))))

(assert (=> b!5766497 (= res!2433556 (matchR!7962 (regOne!32066 r!7292) (_1!36177 (get!21913 lt!2289432))))))

(declare-fun b!5766498 () Bool)

(declare-fun res!2433555 () Bool)

(assert (=> b!5766498 (=> (not res!2433555) (not e!3542874))))

(assert (=> b!5766498 (= res!2433555 (matchR!7962 (regTwo!32066 r!7292) (_2!36177 (get!21913 lt!2289432))))))

(declare-fun b!5766499 () Bool)

(declare-fun lt!2289433 () Unit!156640)

(declare-fun lt!2289434 () Unit!156640)

(assert (=> b!5766499 (= lt!2289433 lt!2289434)))

(assert (=> b!5766499 (= (++!13991 (++!13991 (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508)) (Cons!63508 (h!69956 (t!376968 s!2326)) Nil!63508)) (t!376968 (t!376968 s!2326))) s!2326)))

(assert (=> b!5766499 (= lt!2289434 (lemmaMoveElementToOtherListKeepsConcatEq!2108 (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508)) (h!69956 (t!376968 s!2326)) (t!376968 (t!376968 s!2326)) s!2326))))

(assert (=> b!5766499 (= e!3542873 (findConcatSeparation!2200 (regOne!32066 r!7292) (regTwo!32066 r!7292) (++!13991 (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508)) (Cons!63508 (h!69956 (t!376968 s!2326)) Nil!63508)) (t!376968 (t!376968 s!2326)) s!2326))))

(declare-fun d!1816670 () Bool)

(declare-fun e!3542872 () Bool)

(assert (=> d!1816670 e!3542872))

(declare-fun res!2433559 () Bool)

(assert (=> d!1816670 (=> res!2433559 e!3542872)))

(assert (=> d!1816670 (= res!2433559 e!3542874)))

(declare-fun res!2433557 () Bool)

(assert (=> d!1816670 (=> (not res!2433557) (not e!3542874))))

(assert (=> d!1816670 (= res!2433557 (isDefined!12489 lt!2289432))))

(assert (=> d!1816670 (= lt!2289432 e!3542871)))

(declare-fun c!1019477 () Bool)

(declare-fun e!3542870 () Bool)

(assert (=> d!1816670 (= c!1019477 e!3542870)))

(declare-fun res!2433558 () Bool)

(assert (=> d!1816670 (=> (not res!2433558) (not e!3542870))))

(assert (=> d!1816670 (= res!2433558 (matchR!7962 (regOne!32066 r!7292) (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508))))))

(assert (=> d!1816670 (validRegex!7513 (regOne!32066 r!7292))))

(assert (=> d!1816670 (= (findConcatSeparation!2200 (regOne!32066 r!7292) (regTwo!32066 r!7292) (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508)) (t!376968 s!2326) s!2326) lt!2289432)))

(declare-fun b!5766500 () Bool)

(assert (=> b!5766500 (= e!3542872 (not (isDefined!12489 lt!2289432)))))

(declare-fun b!5766501 () Bool)

(assert (=> b!5766501 (= e!3542870 (matchR!7962 (regTwo!32066 r!7292) (t!376968 s!2326)))))

(declare-fun b!5766502 () Bool)

(assert (=> b!5766502 (= e!3542871 (Some!15785 (tuple2!65749 (++!13991 Nil!63508 (Cons!63508 (h!69956 s!2326) Nil!63508)) (t!376968 s!2326))))))

(assert (= (and d!1816670 res!2433558) b!5766501))

(assert (= (and d!1816670 c!1019477) b!5766502))

(assert (= (and d!1816670 (not c!1019477)) b!5766495))

(assert (= (and b!5766495 c!1019476) b!5766494))

(assert (= (and b!5766495 (not c!1019476)) b!5766499))

(assert (= (and d!1816670 res!2433557) b!5766497))

(assert (= (and b!5766497 res!2433556) b!5766498))

(assert (= (and b!5766498 res!2433555) b!5766496))

(assert (= (and d!1816670 (not res!2433559)) b!5766500))

(declare-fun m!6712392 () Bool)

(assert (=> b!5766500 m!6712392))

(assert (=> d!1816670 m!6712392))

(assert (=> d!1816670 m!6711986))

(declare-fun m!6712394 () Bool)

(assert (=> d!1816670 m!6712394))

(assert (=> d!1816670 m!6711904))

(declare-fun m!6712396 () Bool)

(assert (=> b!5766496 m!6712396))

(declare-fun m!6712398 () Bool)

(assert (=> b!5766496 m!6712398))

(assert (=> b!5766498 m!6712396))

(declare-fun m!6712400 () Bool)

(assert (=> b!5766498 m!6712400))

(assert (=> b!5766497 m!6712396))

(declare-fun m!6712402 () Bool)

(assert (=> b!5766497 m!6712402))

(declare-fun m!6712404 () Bool)

(assert (=> b!5766501 m!6712404))

(assert (=> b!5766499 m!6711986))

(declare-fun m!6712406 () Bool)

(assert (=> b!5766499 m!6712406))

(assert (=> b!5766499 m!6712406))

(declare-fun m!6712408 () Bool)

(assert (=> b!5766499 m!6712408))

(assert (=> b!5766499 m!6711986))

(declare-fun m!6712410 () Bool)

(assert (=> b!5766499 m!6712410))

(assert (=> b!5766499 m!6712406))

(declare-fun m!6712412 () Bool)

(assert (=> b!5766499 m!6712412))

(assert (=> b!5766044 d!1816670))

(assert (=> b!5766012 d!1816528))

(assert (=> b!5766012 d!1816510))

(declare-fun d!1816672 () Bool)

(declare-fun c!1019478 () Bool)

(assert (=> d!1816672 (= c!1019478 (isEmpty!35400 (tail!11284 (t!376968 s!2326))))))

(declare-fun e!3542875 () Bool)

(assert (=> d!1816672 (= (matchZipper!1915 (derivationStepZipper!1856 lt!2289297 (head!12189 (t!376968 s!2326))) (tail!11284 (t!376968 s!2326))) e!3542875)))

(declare-fun b!5766503 () Bool)

(assert (=> b!5766503 (= e!3542875 (nullableZipper!1704 (derivationStepZipper!1856 lt!2289297 (head!12189 (t!376968 s!2326)))))))

(declare-fun b!5766504 () Bool)

(assert (=> b!5766504 (= e!3542875 (matchZipper!1915 (derivationStepZipper!1856 (derivationStepZipper!1856 lt!2289297 (head!12189 (t!376968 s!2326))) (head!12189 (tail!11284 (t!376968 s!2326)))) (tail!11284 (tail!11284 (t!376968 s!2326)))))))

(assert (= (and d!1816672 c!1019478) b!5766503))

(assert (= (and d!1816672 (not c!1019478)) b!5766504))

(assert (=> d!1816672 m!6711598))

(assert (=> d!1816672 m!6712142))

(assert (=> b!5766503 m!6711642))

(declare-fun m!6712414 () Bool)

(assert (=> b!5766503 m!6712414))

(assert (=> b!5766504 m!6711598))

(assert (=> b!5766504 m!6712146))

(assert (=> b!5766504 m!6711642))

(assert (=> b!5766504 m!6712146))

(declare-fun m!6712416 () Bool)

(assert (=> b!5766504 m!6712416))

(assert (=> b!5766504 m!6711598))

(assert (=> b!5766504 m!6712150))

(assert (=> b!5766504 m!6712416))

(assert (=> b!5766504 m!6712150))

(declare-fun m!6712418 () Bool)

(assert (=> b!5766504 m!6712418))

(assert (=> b!5765492 d!1816672))

(declare-fun bs!1352628 () Bool)

(declare-fun d!1816674 () Bool)

(assert (= bs!1352628 (and d!1816674 d!1816524)))

(declare-fun lambda!313181 () Int)

(assert (=> bs!1352628 (= (= (head!12189 (t!376968 s!2326)) (head!12189 s!2326)) (= lambda!313181 lambda!313157))))

(declare-fun bs!1352630 () Bool)

(assert (= bs!1352630 (and d!1816674 d!1816476)))

(assert (=> bs!1352630 (= (= (head!12189 (t!376968 s!2326)) (h!69956 s!2326)) (= lambda!313181 lambda!313155))))

(declare-fun bs!1352631 () Bool)

(assert (= bs!1352631 (and d!1816674 d!1816316)))

(assert (=> bs!1352631 (= (= (head!12189 (t!376968 s!2326)) (h!69956 s!2326)) (= lambda!313181 lambda!313086))))

(declare-fun bs!1352633 () Bool)

(assert (= bs!1352633 (and d!1816674 b!5765355)))

(assert (=> bs!1352633 (= (= (head!12189 (t!376968 s!2326)) (h!69956 s!2326)) (= lambda!313181 lambda!313083))))

(declare-fun bs!1352634 () Bool)

(assert (= bs!1352634 (and d!1816674 d!1816554)))

(assert (=> bs!1352634 (= lambda!313181 lambda!313162)))

(declare-fun bs!1352635 () Bool)

(assert (= bs!1352635 (and d!1816674 d!1816544)))

(assert (=> bs!1352635 (= lambda!313181 lambda!313161)))

(assert (=> d!1816674 true))

(assert (=> d!1816674 (= (derivationStepZipper!1856 lt!2289297 (head!12189 (t!376968 s!2326))) (flatMap!1390 lt!2289297 lambda!313181))))

(declare-fun bs!1352638 () Bool)

(assert (= bs!1352638 d!1816674))

(declare-fun m!6712420 () Bool)

(assert (=> bs!1352638 m!6712420))

(assert (=> b!5765492 d!1816674))

(assert (=> b!5765492 d!1816546))

(assert (=> b!5765492 d!1816548))

(declare-fun b!5766505 () Bool)

(declare-fun res!2433561 () Bool)

(declare-fun e!3542880 () Bool)

(assert (=> b!5766505 (=> res!2433561 e!3542880)))

(assert (=> b!5766505 (= res!2433561 (not ((_ is Concat!24622) (ite c!1019188 (reg!16106 r!7292) (ite c!1019187 (regTwo!32067 r!7292) (regTwo!32066 r!7292))))))))

(declare-fun e!3542878 () Bool)

(assert (=> b!5766505 (= e!3542878 e!3542880)))

(declare-fun b!5766507 () Bool)

(declare-fun e!3542881 () Bool)

(declare-fun e!3542877 () Bool)

(assert (=> b!5766507 (= e!3542881 e!3542877)))

(declare-fun res!2433564 () Bool)

(assert (=> b!5766507 (= res!2433564 (not (nullable!5809 (reg!16106 (ite c!1019188 (reg!16106 r!7292) (ite c!1019187 (regTwo!32067 r!7292) (regTwo!32066 r!7292)))))))))

(assert (=> b!5766507 (=> (not res!2433564) (not e!3542877))))

(declare-fun b!5766508 () Bool)

(declare-fun res!2433563 () Bool)

(declare-fun e!3542876 () Bool)

(assert (=> b!5766508 (=> (not res!2433563) (not e!3542876))))

(declare-fun call!442953 () Bool)

(assert (=> b!5766508 (= res!2433563 call!442953)))

(assert (=> b!5766508 (= e!3542878 e!3542876)))

(declare-fun b!5766509 () Bool)

(assert (=> b!5766509 (= e!3542881 e!3542878)))

(declare-fun c!1019479 () Bool)

(assert (=> b!5766509 (= c!1019479 ((_ is Union!15777) (ite c!1019188 (reg!16106 r!7292) (ite c!1019187 (regTwo!32067 r!7292) (regTwo!32066 r!7292)))))))

(declare-fun b!5766510 () Bool)

(declare-fun e!3542882 () Bool)

(assert (=> b!5766510 (= e!3542880 e!3542882)))

(declare-fun res!2433562 () Bool)

(assert (=> b!5766510 (=> (not res!2433562) (not e!3542882))))

(assert (=> b!5766510 (= res!2433562 call!442953)))

(declare-fun b!5766511 () Bool)

(declare-fun call!442954 () Bool)

(assert (=> b!5766511 (= e!3542876 call!442954)))

(declare-fun bm!442947 () Bool)

(declare-fun c!1019480 () Bool)

(declare-fun call!442952 () Bool)

(assert (=> bm!442947 (= call!442952 (validRegex!7513 (ite c!1019480 (reg!16106 (ite c!1019188 (reg!16106 r!7292) (ite c!1019187 (regTwo!32067 r!7292) (regTwo!32066 r!7292)))) (ite c!1019479 (regTwo!32067 (ite c!1019188 (reg!16106 r!7292) (ite c!1019187 (regTwo!32067 r!7292) (regTwo!32066 r!7292)))) (regTwo!32066 (ite c!1019188 (reg!16106 r!7292) (ite c!1019187 (regTwo!32067 r!7292) (regTwo!32066 r!7292))))))))))

(declare-fun b!5766512 () Bool)

(assert (=> b!5766512 (= e!3542882 call!442954)))

(declare-fun b!5766513 () Bool)

(declare-fun e!3542879 () Bool)

(assert (=> b!5766513 (= e!3542879 e!3542881)))

(assert (=> b!5766513 (= c!1019480 ((_ is Star!15777) (ite c!1019188 (reg!16106 r!7292) (ite c!1019187 (regTwo!32067 r!7292) (regTwo!32066 r!7292)))))))

(declare-fun bm!442948 () Bool)

(assert (=> bm!442948 (= call!442954 call!442952)))

(declare-fun bm!442949 () Bool)

(assert (=> bm!442949 (= call!442953 (validRegex!7513 (ite c!1019479 (regOne!32067 (ite c!1019188 (reg!16106 r!7292) (ite c!1019187 (regTwo!32067 r!7292) (regTwo!32066 r!7292)))) (regOne!32066 (ite c!1019188 (reg!16106 r!7292) (ite c!1019187 (regTwo!32067 r!7292) (regTwo!32066 r!7292)))))))))

(declare-fun b!5766506 () Bool)

(assert (=> b!5766506 (= e!3542877 call!442952)))

(declare-fun d!1816676 () Bool)

(declare-fun res!2433560 () Bool)

(assert (=> d!1816676 (=> res!2433560 e!3542879)))

(assert (=> d!1816676 (= res!2433560 ((_ is ElementMatch!15777) (ite c!1019188 (reg!16106 r!7292) (ite c!1019187 (regTwo!32067 r!7292) (regTwo!32066 r!7292)))))))

(assert (=> d!1816676 (= (validRegex!7513 (ite c!1019188 (reg!16106 r!7292) (ite c!1019187 (regTwo!32067 r!7292) (regTwo!32066 r!7292)))) e!3542879)))

(assert (= (and d!1816676 (not res!2433560)) b!5766513))

(assert (= (and b!5766513 c!1019480) b!5766507))

(assert (= (and b!5766513 (not c!1019480)) b!5766509))

(assert (= (and b!5766507 res!2433564) b!5766506))

(assert (= (and b!5766509 c!1019479) b!5766508))

(assert (= (and b!5766509 (not c!1019479)) b!5766505))

(assert (= (and b!5766508 res!2433563) b!5766511))

(assert (= (and b!5766505 (not res!2433561)) b!5766510))

(assert (= (and b!5766510 res!2433562) b!5766512))

(assert (= (or b!5766511 b!5766512) bm!442948))

(assert (= (or b!5766508 b!5766510) bm!442949))

(assert (= (or b!5766506 bm!442948) bm!442947))

(declare-fun m!6712422 () Bool)

(assert (=> b!5766507 m!6712422))

(declare-fun m!6712424 () Bool)

(assert (=> bm!442947 m!6712424))

(declare-fun m!6712426 () Bool)

(assert (=> bm!442949 m!6712426))

(assert (=> bm!442786 d!1816676))

(assert (=> d!1816452 d!1816526))

(declare-fun b!5766514 () Bool)

(declare-fun res!2433566 () Bool)

(declare-fun e!3542887 () Bool)

(assert (=> b!5766514 (=> res!2433566 e!3542887)))

(assert (=> b!5766514 (= res!2433566 (not ((_ is Concat!24622) (regTwo!32066 r!7292))))))

(declare-fun e!3542885 () Bool)

(assert (=> b!5766514 (= e!3542885 e!3542887)))

(declare-fun b!5766516 () Bool)

(declare-fun e!3542888 () Bool)

(declare-fun e!3542884 () Bool)

(assert (=> b!5766516 (= e!3542888 e!3542884)))

(declare-fun res!2433569 () Bool)

(assert (=> b!5766516 (= res!2433569 (not (nullable!5809 (reg!16106 (regTwo!32066 r!7292)))))))

(assert (=> b!5766516 (=> (not res!2433569) (not e!3542884))))

(declare-fun b!5766517 () Bool)

(declare-fun res!2433568 () Bool)

(declare-fun e!3542883 () Bool)

(assert (=> b!5766517 (=> (not res!2433568) (not e!3542883))))

(declare-fun call!442956 () Bool)

(assert (=> b!5766517 (= res!2433568 call!442956)))

(assert (=> b!5766517 (= e!3542885 e!3542883)))

(declare-fun b!5766518 () Bool)

(assert (=> b!5766518 (= e!3542888 e!3542885)))

(declare-fun c!1019481 () Bool)

(assert (=> b!5766518 (= c!1019481 ((_ is Union!15777) (regTwo!32066 r!7292)))))

(declare-fun b!5766519 () Bool)

(declare-fun e!3542889 () Bool)

(assert (=> b!5766519 (= e!3542887 e!3542889)))

(declare-fun res!2433567 () Bool)

(assert (=> b!5766519 (=> (not res!2433567) (not e!3542889))))

(assert (=> b!5766519 (= res!2433567 call!442956)))

(declare-fun b!5766520 () Bool)

(declare-fun call!442957 () Bool)

(assert (=> b!5766520 (= e!3542883 call!442957)))

(declare-fun c!1019482 () Bool)

(declare-fun call!442955 () Bool)

(declare-fun bm!442950 () Bool)

(assert (=> bm!442950 (= call!442955 (validRegex!7513 (ite c!1019482 (reg!16106 (regTwo!32066 r!7292)) (ite c!1019481 (regTwo!32067 (regTwo!32066 r!7292)) (regTwo!32066 (regTwo!32066 r!7292))))))))

(declare-fun b!5766521 () Bool)

(assert (=> b!5766521 (= e!3542889 call!442957)))

(declare-fun b!5766522 () Bool)

(declare-fun e!3542886 () Bool)

(assert (=> b!5766522 (= e!3542886 e!3542888)))

(assert (=> b!5766522 (= c!1019482 ((_ is Star!15777) (regTwo!32066 r!7292)))))

(declare-fun bm!442951 () Bool)

(assert (=> bm!442951 (= call!442957 call!442955)))

(declare-fun bm!442952 () Bool)

(assert (=> bm!442952 (= call!442956 (validRegex!7513 (ite c!1019481 (regOne!32067 (regTwo!32066 r!7292)) (regOne!32066 (regTwo!32066 r!7292)))))))

(declare-fun b!5766515 () Bool)

(assert (=> b!5766515 (= e!3542884 call!442955)))

(declare-fun d!1816678 () Bool)

(declare-fun res!2433565 () Bool)

(assert (=> d!1816678 (=> res!2433565 e!3542886)))

(assert (=> d!1816678 (= res!2433565 ((_ is ElementMatch!15777) (regTwo!32066 r!7292)))))

(assert (=> d!1816678 (= (validRegex!7513 (regTwo!32066 r!7292)) e!3542886)))

(assert (= (and d!1816678 (not res!2433565)) b!5766522))

(assert (= (and b!5766522 c!1019482) b!5766516))

(assert (= (and b!5766522 (not c!1019482)) b!5766518))

(assert (= (and b!5766516 res!2433569) b!5766515))

(assert (= (and b!5766518 c!1019481) b!5766517))

(assert (= (and b!5766518 (not c!1019481)) b!5766514))

(assert (= (and b!5766517 res!2433568) b!5766520))

(assert (= (and b!5766514 (not res!2433566)) b!5766519))

(assert (= (and b!5766519 res!2433567) b!5766521))

(assert (= (or b!5766520 b!5766521) bm!442951))

(assert (= (or b!5766517 b!5766519) bm!442952))

(assert (= (or b!5766515 bm!442951) bm!442950))

(declare-fun m!6712428 () Bool)

(assert (=> b!5766516 m!6712428))

(declare-fun m!6712430 () Bool)

(assert (=> bm!442950 m!6712430))

(declare-fun m!6712432 () Bool)

(assert (=> bm!442952 m!6712432))

(assert (=> d!1816452 d!1816678))

(declare-fun d!1816680 () Bool)

(assert (=> d!1816680 (= (Exists!2877 lambda!313150) (choose!43732 lambda!313150))))

(declare-fun bs!1352639 () Bool)

(assert (= bs!1352639 d!1816680))

(declare-fun m!6712434 () Bool)

(assert (=> bs!1352639 m!6712434))

(assert (=> d!1816468 d!1816680))

(declare-fun d!1816682 () Bool)

(assert (=> d!1816682 (= (Exists!2877 lambda!313151) (choose!43732 lambda!313151))))

(declare-fun bs!1352640 () Bool)

(assert (= bs!1352640 d!1816682))

(declare-fun m!6712436 () Bool)

(assert (=> bs!1352640 m!6712436))

(assert (=> d!1816468 d!1816682))

(declare-fun bs!1352651 () Bool)

(declare-fun d!1816684 () Bool)

(assert (= bs!1352651 (and d!1816684 d!1816474)))

(declare-fun lambda!313188 () Int)

(assert (=> bs!1352651 (= lambda!313188 lambda!313154)))

(declare-fun bs!1352652 () Bool)

(assert (= bs!1352652 (and d!1816684 b!5765954)))

(assert (=> bs!1352652 (not (= lambda!313188 lambda!313142))))

(declare-fun bs!1352653 () Bool)

(assert (= bs!1352653 (and d!1816684 b!5766003)))

(assert (=> bs!1352653 (not (= lambda!313188 lambda!313145))))

(declare-fun bs!1352654 () Bool)

(assert (= bs!1352654 (and d!1816684 b!5765951)))

(assert (=> bs!1352654 (not (= lambda!313188 lambda!313143))))

(declare-fun bs!1352655 () Bool)

(assert (= bs!1352655 (and d!1816684 b!5765336)))

(assert (=> bs!1352655 (not (= lambda!313188 lambda!313082))))

(declare-fun bs!1352656 () Bool)

(assert (= bs!1352656 (and d!1816684 d!1816468)))

(assert (=> bs!1352656 (= lambda!313188 lambda!313150)))

(declare-fun bs!1352657 () Bool)

(assert (= bs!1352657 (and d!1816684 b!5765848)))

(assert (=> bs!1352657 (not (= lambda!313188 lambda!313131))))

(declare-fun bs!1352658 () Bool)

(assert (= bs!1352658 (and d!1816684 b!5766006)))

(assert (=> bs!1352658 (not (= lambda!313188 lambda!313144))))

(assert (=> bs!1352656 (not (= lambda!313188 lambda!313151))))

(declare-fun bs!1352659 () Bool)

(assert (= bs!1352659 (and d!1816684 b!5765851)))

(assert (=> bs!1352659 (not (= lambda!313188 lambda!313130))))

(declare-fun bs!1352660 () Bool)

(assert (= bs!1352660 (and d!1816684 d!1816532)))

(assert (=> bs!1352660 (= lambda!313188 lambda!313160)))

(assert (=> bs!1352655 (= lambda!313188 lambda!313081)))

(assert (=> d!1816684 true))

(assert (=> d!1816684 true))

(assert (=> d!1816684 true))

(declare-fun lambda!313189 () Int)

(assert (=> bs!1352651 (not (= lambda!313189 lambda!313154))))

(assert (=> bs!1352652 (not (= lambda!313189 lambda!313142))))

(assert (=> bs!1352653 (= lambda!313189 lambda!313145)))

(assert (=> bs!1352654 (= (and (= (regOne!32066 r!7292) (regOne!32066 (regTwo!32066 r!7292))) (= (regTwo!32066 r!7292) (regTwo!32066 (regTwo!32066 r!7292)))) (= lambda!313189 lambda!313143))))

(assert (=> bs!1352655 (= lambda!313189 lambda!313082)))

(assert (=> bs!1352657 (= (and (= (regOne!32066 r!7292) (regOne!32066 (regOne!32066 r!7292))) (= (regTwo!32066 r!7292) (regTwo!32066 (regOne!32066 r!7292)))) (= lambda!313189 lambda!313131))))

(assert (=> bs!1352658 (not (= lambda!313189 lambda!313144))))

(assert (=> bs!1352656 (= lambda!313189 lambda!313151)))

(assert (=> bs!1352659 (not (= lambda!313189 lambda!313130))))

(assert (=> bs!1352660 (not (= lambda!313189 lambda!313160))))

(assert (=> bs!1352655 (not (= lambda!313189 lambda!313081))))

(declare-fun bs!1352661 () Bool)

(assert (= bs!1352661 d!1816684))

(assert (=> bs!1352661 (not (= lambda!313189 lambda!313188))))

(assert (=> bs!1352656 (not (= lambda!313189 lambda!313150))))

(assert (=> d!1816684 true))

(assert (=> d!1816684 true))

(assert (=> d!1816684 true))

(assert (=> d!1816684 (= (Exists!2877 lambda!313188) (Exists!2877 lambda!313189))))

(assert (=> d!1816684 true))

(declare-fun _$90!1513 () Unit!156640)

(assert (=> d!1816684 (= (choose!43733 (regOne!32066 r!7292) (regTwo!32066 r!7292) s!2326) _$90!1513)))

(declare-fun m!6712486 () Bool)

(assert (=> bs!1352661 m!6712486))

(declare-fun m!6712488 () Bool)

(assert (=> bs!1352661 m!6712488))

(assert (=> d!1816468 d!1816684))

(assert (=> d!1816468 d!1816520))

(declare-fun d!1816712 () Bool)

(assert (=> d!1816712 (= (isEmptyExpr!1262 lt!2289335) ((_ is EmptyExpr!15777) lt!2289335))))

(assert (=> b!5765584 d!1816712))

(assert (=> d!1816344 d!1816342))

(declare-fun d!1816714 () Bool)

(assert (=> d!1816714 (not (matchZipper!1915 lt!2289297 (t!376968 s!2326)))))

(assert (=> d!1816714 true))

(declare-fun _$64!760 () Unit!156640)

(assert (=> d!1816714 (= (choose!43726 lt!2289297 (t!376968 s!2326)) _$64!760)))

(declare-fun bs!1352667 () Bool)

(assert (= bs!1352667 d!1816714))

(assert (=> bs!1352667 m!6711494))

(assert (=> d!1816344 d!1816714))

(declare-fun b!5766600 () Bool)

(declare-fun e!3542944 () Bool)

(declare-fun e!3542940 () Bool)

(assert (=> b!5766600 (= e!3542944 e!3542940)))

(declare-fun res!2433610 () Bool)

(assert (=> b!5766600 (=> res!2433610 e!3542940)))

(declare-fun call!442975 () Bool)

(assert (=> b!5766600 (= res!2433610 call!442975)))

(declare-fun bm!442970 () Bool)

(assert (=> bm!442970 (= call!442975 (isEmpty!35400 (tail!11284 s!2326)))))

(declare-fun b!5766602 () Bool)

(assert (=> b!5766602 (= e!3542940 (not (= (head!12189 (tail!11284 s!2326)) (c!1019159 (derivativeStep!4558 r!7292 (head!12189 s!2326))))))))

(declare-fun b!5766603 () Bool)

(declare-fun res!2433611 () Bool)

(declare-fun e!3542943 () Bool)

(assert (=> b!5766603 (=> res!2433611 e!3542943)))

(declare-fun e!3542945 () Bool)

(assert (=> b!5766603 (= res!2433611 e!3542945)))

(declare-fun res!2433613 () Bool)

(assert (=> b!5766603 (=> (not res!2433613) (not e!3542945))))

(declare-fun lt!2289436 () Bool)

(assert (=> b!5766603 (= res!2433613 lt!2289436)))

(declare-fun b!5766604 () Bool)

(assert (=> b!5766604 (= e!3542943 e!3542944)))

(declare-fun res!2433612 () Bool)

(assert (=> b!5766604 (=> (not res!2433612) (not e!3542944))))

(assert (=> b!5766604 (= res!2433612 (not lt!2289436))))

(declare-fun b!5766605 () Bool)

(declare-fun res!2433614 () Bool)

(assert (=> b!5766605 (=> (not res!2433614) (not e!3542945))))

(assert (=> b!5766605 (= res!2433614 (isEmpty!35400 (tail!11284 (tail!11284 s!2326))))))

(declare-fun b!5766606 () Bool)

(declare-fun res!2433615 () Bool)

(assert (=> b!5766606 (=> (not res!2433615) (not e!3542945))))

(assert (=> b!5766606 (= res!2433615 (not call!442975))))

(declare-fun b!5766607 () Bool)

(declare-fun e!3542941 () Bool)

(declare-fun e!3542942 () Bool)

(assert (=> b!5766607 (= e!3542941 e!3542942)))

(declare-fun c!1019503 () Bool)

(assert (=> b!5766607 (= c!1019503 ((_ is EmptyLang!15777) (derivativeStep!4558 r!7292 (head!12189 s!2326))))))

(declare-fun b!5766608 () Bool)

(assert (=> b!5766608 (= e!3542941 (= lt!2289436 call!442975))))

(declare-fun b!5766609 () Bool)

(declare-fun e!3542939 () Bool)

(assert (=> b!5766609 (= e!3542939 (matchR!7962 (derivativeStep!4558 (derivativeStep!4558 r!7292 (head!12189 s!2326)) (head!12189 (tail!11284 s!2326))) (tail!11284 (tail!11284 s!2326))))))

(declare-fun d!1816720 () Bool)

(assert (=> d!1816720 e!3542941))

(declare-fun c!1019505 () Bool)

(assert (=> d!1816720 (= c!1019505 ((_ is EmptyExpr!15777) (derivativeStep!4558 r!7292 (head!12189 s!2326))))))

(assert (=> d!1816720 (= lt!2289436 e!3542939)))

(declare-fun c!1019504 () Bool)

(assert (=> d!1816720 (= c!1019504 (isEmpty!35400 (tail!11284 s!2326)))))

(assert (=> d!1816720 (validRegex!7513 (derivativeStep!4558 r!7292 (head!12189 s!2326)))))

(assert (=> d!1816720 (= (matchR!7962 (derivativeStep!4558 r!7292 (head!12189 s!2326)) (tail!11284 s!2326)) lt!2289436)))

(declare-fun b!5766601 () Bool)

(assert (=> b!5766601 (= e!3542942 (not lt!2289436))))

(declare-fun b!5766610 () Bool)

(assert (=> b!5766610 (= e!3542945 (= (head!12189 (tail!11284 s!2326)) (c!1019159 (derivativeStep!4558 r!7292 (head!12189 s!2326)))))))

(declare-fun b!5766611 () Bool)

(assert (=> b!5766611 (= e!3542939 (nullable!5809 (derivativeStep!4558 r!7292 (head!12189 s!2326))))))

(declare-fun b!5766612 () Bool)

(declare-fun res!2433617 () Bool)

(assert (=> b!5766612 (=> res!2433617 e!3542940)))

(assert (=> b!5766612 (= res!2433617 (not (isEmpty!35400 (tail!11284 (tail!11284 s!2326)))))))

(declare-fun b!5766613 () Bool)

(declare-fun res!2433616 () Bool)

(assert (=> b!5766613 (=> res!2433616 e!3542943)))

(assert (=> b!5766613 (= res!2433616 (not ((_ is ElementMatch!15777) (derivativeStep!4558 r!7292 (head!12189 s!2326)))))))

(assert (=> b!5766613 (= e!3542942 e!3542943)))

(assert (= (and d!1816720 c!1019504) b!5766611))

(assert (= (and d!1816720 (not c!1019504)) b!5766609))

(assert (= (and d!1816720 c!1019505) b!5766608))

(assert (= (and d!1816720 (not c!1019505)) b!5766607))

(assert (= (and b!5766607 c!1019503) b!5766601))

(assert (= (and b!5766607 (not c!1019503)) b!5766613))

(assert (= (and b!5766613 (not res!2433616)) b!5766603))

(assert (= (and b!5766603 res!2433613) b!5766606))

(assert (= (and b!5766606 res!2433615) b!5766605))

(assert (= (and b!5766605 res!2433614) b!5766610))

(assert (= (and b!5766603 (not res!2433611)) b!5766604))

(assert (= (and b!5766604 res!2433612) b!5766600))

(assert (= (and b!5766600 (not res!2433610)) b!5766612))

(assert (= (and b!5766612 (not res!2433617)) b!5766602))

(assert (= (or b!5766608 b!5766600 b!5766606) bm!442970))

(assert (=> b!5766612 m!6711586))

(assert (=> b!5766612 m!6712072))

(assert (=> b!5766612 m!6712072))

(assert (=> b!5766612 m!6712074))

(assert (=> b!5766609 m!6711586))

(assert (=> b!5766609 m!6712076))

(assert (=> b!5766609 m!6711964))

(assert (=> b!5766609 m!6712076))

(declare-fun m!6712502 () Bool)

(assert (=> b!5766609 m!6712502))

(assert (=> b!5766609 m!6711586))

(assert (=> b!5766609 m!6712072))

(assert (=> b!5766609 m!6712502))

(assert (=> b!5766609 m!6712072))

(declare-fun m!6712504 () Bool)

(assert (=> b!5766609 m!6712504))

(assert (=> b!5766610 m!6711586))

(assert (=> b!5766610 m!6712076))

(assert (=> b!5766605 m!6711586))

(assert (=> b!5766605 m!6712072))

(assert (=> b!5766605 m!6712072))

(assert (=> b!5766605 m!6712074))

(assert (=> bm!442970 m!6711586))

(assert (=> bm!442970 m!6711928))

(assert (=> b!5766611 m!6711964))

(declare-fun m!6712506 () Bool)

(assert (=> b!5766611 m!6712506))

(assert (=> d!1816720 m!6711586))

(assert (=> d!1816720 m!6711928))

(assert (=> d!1816720 m!6711964))

(declare-fun m!6712508 () Bool)

(assert (=> d!1816720 m!6712508))

(assert (=> b!5766602 m!6711586))

(assert (=> b!5766602 m!6712076))

(assert (=> b!5766016 d!1816720))

(declare-fun b!5766614 () Bool)

(declare-fun e!3542948 () Regex!15777)

(declare-fun call!442977 () Regex!15777)

(assert (=> b!5766614 (= e!3542948 (Union!15777 (Concat!24622 call!442977 (regTwo!32066 r!7292)) EmptyLang!15777))))

(declare-fun c!1019506 () Bool)

(declare-fun c!1019507 () Bool)

(declare-fun bm!442971 () Bool)

(declare-fun call!442978 () Regex!15777)

(declare-fun c!1019510 () Bool)

(assert (=> bm!442971 (= call!442978 (derivativeStep!4558 (ite c!1019506 (regOne!32067 r!7292) (ite c!1019507 (reg!16106 r!7292) (ite c!1019510 (regTwo!32066 r!7292) (regOne!32066 r!7292)))) (head!12189 s!2326)))))

(declare-fun b!5766615 () Bool)

(declare-fun e!3542946 () Regex!15777)

(declare-fun e!3542950 () Regex!15777)

(assert (=> b!5766615 (= e!3542946 e!3542950)))

(assert (=> b!5766615 (= c!1019507 ((_ is Star!15777) r!7292))))

(declare-fun b!5766616 () Bool)

(assert (=> b!5766616 (= c!1019506 ((_ is Union!15777) r!7292))))

(declare-fun e!3542947 () Regex!15777)

(assert (=> b!5766616 (= e!3542947 e!3542946)))

(declare-fun bm!442972 () Bool)

(declare-fun call!442979 () Regex!15777)

(assert (=> bm!442972 (= call!442977 call!442979)))

(declare-fun b!5766618 () Bool)

(assert (=> b!5766618 (= e!3542950 (Concat!24622 call!442979 r!7292))))

(declare-fun b!5766619 () Bool)

(declare-fun call!442976 () Regex!15777)

(assert (=> b!5766619 (= e!3542946 (Union!15777 call!442978 call!442976))))

(declare-fun b!5766620 () Bool)

(assert (=> b!5766620 (= e!3542947 (ite (= (head!12189 s!2326) (c!1019159 r!7292)) EmptyExpr!15777 EmptyLang!15777))))

(declare-fun bm!442973 () Bool)

(assert (=> bm!442973 (= call!442979 call!442978)))

(declare-fun d!1816722 () Bool)

(declare-fun lt!2289437 () Regex!15777)

(assert (=> d!1816722 (validRegex!7513 lt!2289437)))

(declare-fun e!3542949 () Regex!15777)

(assert (=> d!1816722 (= lt!2289437 e!3542949)))

(declare-fun c!1019509 () Bool)

(assert (=> d!1816722 (= c!1019509 (or ((_ is EmptyExpr!15777) r!7292) ((_ is EmptyLang!15777) r!7292)))))

(assert (=> d!1816722 (validRegex!7513 r!7292)))

(assert (=> d!1816722 (= (derivativeStep!4558 r!7292 (head!12189 s!2326)) lt!2289437)))

(declare-fun b!5766617 () Bool)

(assert (=> b!5766617 (= e!3542949 EmptyLang!15777)))

(declare-fun b!5766621 () Bool)

(assert (=> b!5766621 (= e!3542948 (Union!15777 (Concat!24622 call!442976 (regTwo!32066 r!7292)) call!442977))))

(declare-fun b!5766622 () Bool)

(assert (=> b!5766622 (= e!3542949 e!3542947)))

(declare-fun c!1019508 () Bool)

(assert (=> b!5766622 (= c!1019508 ((_ is ElementMatch!15777) r!7292))))

(declare-fun bm!442974 () Bool)

(assert (=> bm!442974 (= call!442976 (derivativeStep!4558 (ite c!1019506 (regTwo!32067 r!7292) (regOne!32066 r!7292)) (head!12189 s!2326)))))

(declare-fun b!5766623 () Bool)

(assert (=> b!5766623 (= c!1019510 (nullable!5809 (regOne!32066 r!7292)))))

(assert (=> b!5766623 (= e!3542950 e!3542948)))

(assert (= (and d!1816722 c!1019509) b!5766617))

(assert (= (and d!1816722 (not c!1019509)) b!5766622))

(assert (= (and b!5766622 c!1019508) b!5766620))

(assert (= (and b!5766622 (not c!1019508)) b!5766616))

(assert (= (and b!5766616 c!1019506) b!5766619))

(assert (= (and b!5766616 (not c!1019506)) b!5766615))

(assert (= (and b!5766615 c!1019507) b!5766618))

(assert (= (and b!5766615 (not c!1019507)) b!5766623))

(assert (= (and b!5766623 c!1019510) b!5766621))

(assert (= (and b!5766623 (not c!1019510)) b!5766614))

(assert (= (or b!5766621 b!5766614) bm!442972))

(assert (= (or b!5766618 bm!442972) bm!442973))

(assert (= (or b!5766619 b!5766621) bm!442974))

(assert (= (or b!5766619 bm!442973) bm!442971))

(assert (=> bm!442971 m!6711582))

(declare-fun m!6712510 () Bool)

(assert (=> bm!442971 m!6712510))

(declare-fun m!6712512 () Bool)

(assert (=> d!1816722 m!6712512))

(assert (=> d!1816722 m!6711540))

(assert (=> bm!442974 m!6711582))

(declare-fun m!6712514 () Bool)

(assert (=> bm!442974 m!6712514))

(assert (=> b!5766623 m!6711934))

(assert (=> b!5766016 d!1816722))

(assert (=> b!5766016 d!1816508))

(assert (=> b!5766016 d!1816510))

(declare-fun d!1816724 () Bool)

(assert (=> d!1816724 (= (Exists!2877 (ite c!1019338 lambda!313144 lambda!313145)) (choose!43732 (ite c!1019338 lambda!313144 lambda!313145)))))

(declare-fun bs!1352680 () Bool)

(assert (= bs!1352680 d!1816724))

(declare-fun m!6712516 () Bool)

(assert (=> bs!1352680 m!6712516))

(assert (=> bm!442842 d!1816724))

(declare-fun b!5766624 () Bool)

(declare-fun e!3542952 () (InoxSet Context!10322))

(assert (=> b!5766624 (= e!3542952 ((as const (Array Context!10322 Bool)) false))))

(declare-fun e!3542951 () (InoxSet Context!10322))

(declare-fun call!442980 () (InoxSet Context!10322))

(declare-fun b!5766625 () Bool)

(assert (=> b!5766625 (= e!3542951 ((_ map or) call!442980 (derivationStepZipperUp!1045 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))))))) (h!69956 s!2326))))))

(declare-fun b!5766626 () Bool)

(declare-fun e!3542953 () Bool)

(assert (=> b!5766626 (= e!3542953 (nullable!5809 (h!69954 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))))))))))

(declare-fun bm!442975 () Bool)

(assert (=> bm!442975 (= call!442980 (derivationStepZipperDown!1119 (h!69954 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))))) (Context!10323 (t!376966 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))))))) (h!69956 s!2326)))))

(declare-fun d!1816726 () Bool)

(declare-fun c!1019511 () Bool)

(assert (=> d!1816726 (= c!1019511 e!3542953)))

(declare-fun res!2433618 () Bool)

(assert (=> d!1816726 (=> (not res!2433618) (not e!3542953))))

(assert (=> d!1816726 (= res!2433618 ((_ is Cons!63506) (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))))))))

(assert (=> d!1816726 (= (derivationStepZipperUp!1045 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (h!69956 s!2326)) e!3542951)))

(declare-fun b!5766627 () Bool)

(assert (=> b!5766627 (= e!3542952 call!442980)))

(declare-fun b!5766628 () Bool)

(assert (=> b!5766628 (= e!3542951 e!3542952)))

(declare-fun c!1019512 () Bool)

(assert (=> b!5766628 (= c!1019512 ((_ is Cons!63506) (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))))))))

(assert (= (and d!1816726 res!2433618) b!5766626))

(assert (= (and d!1816726 c!1019511) b!5766625))

(assert (= (and d!1816726 (not c!1019511)) b!5766628))

(assert (= (and b!5766628 c!1019512) b!5766627))

(assert (= (and b!5766628 (not c!1019512)) b!5766624))

(assert (= (or b!5766625 b!5766627) bm!442975))

(declare-fun m!6712518 () Bool)

(assert (=> b!5766625 m!6712518))

(declare-fun m!6712520 () Bool)

(assert (=> b!5766626 m!6712520))

(declare-fun m!6712522 () Bool)

(assert (=> bm!442975 m!6712522))

(assert (=> b!5766109 d!1816726))

(declare-fun d!1816728 () Bool)

(assert (=> d!1816728 (= (isEmpty!35402 (findConcatSeparation!2200 (regOne!32066 r!7292) (regTwo!32066 r!7292) Nil!63508 s!2326 s!2326)) (not ((_ is Some!15785) (findConcatSeparation!2200 (regOne!32066 r!7292) (regTwo!32066 r!7292) Nil!63508 s!2326 s!2326))))))

(assert (=> d!1816470 d!1816728))

(declare-fun b!5766656 () Bool)

(declare-fun e!3542976 () Bool)

(declare-fun e!3542977 () Bool)

(assert (=> b!5766656 (= e!3542976 e!3542977)))

(declare-fun res!2433637 () Bool)

(declare-fun call!442988 () Bool)

(assert (=> b!5766656 (= res!2433637 call!442988)))

(assert (=> b!5766656 (=> res!2433637 e!3542977)))

(declare-fun b!5766657 () Bool)

(declare-fun e!3542980 () Bool)

(declare-fun e!3542979 () Bool)

(assert (=> b!5766657 (= e!3542980 e!3542979)))

(declare-fun res!2433634 () Bool)

(assert (=> b!5766657 (=> res!2433634 e!3542979)))

(assert (=> b!5766657 (= res!2433634 ((_ is Star!15777) (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun bm!442982 () Bool)

(declare-fun call!442987 () Bool)

(declare-fun c!1019519 () Bool)

(assert (=> bm!442982 (= call!442987 (nullable!5809 (ite c!1019519 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))))))

(declare-fun b!5766658 () Bool)

(declare-fun e!3542978 () Bool)

(assert (=> b!5766658 (= e!3542976 e!3542978)))

(declare-fun res!2433638 () Bool)

(assert (=> b!5766658 (= res!2433638 call!442988)))

(assert (=> b!5766658 (=> (not res!2433638) (not e!3542978))))

(declare-fun b!5766659 () Bool)

(declare-fun e!3542975 () Bool)

(assert (=> b!5766659 (= e!3542975 e!3542980)))

(declare-fun res!2433636 () Bool)

(assert (=> b!5766659 (=> (not res!2433636) (not e!3542980))))

(assert (=> b!5766659 (= res!2433636 (and (not ((_ is EmptyLang!15777) (h!69954 (exprs!5661 (h!69955 zl!343))))) (not ((_ is ElementMatch!15777) (h!69954 (exprs!5661 (h!69955 zl!343)))))))))

(declare-fun d!1816730 () Bool)

(declare-fun res!2433635 () Bool)

(assert (=> d!1816730 (=> res!2433635 e!3542975)))

(assert (=> d!1816730 (= res!2433635 ((_ is EmptyExpr!15777) (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(assert (=> d!1816730 (= (nullableFct!1850 (h!69954 (exprs!5661 (h!69955 zl!343)))) e!3542975)))

(declare-fun b!5766660 () Bool)

(assert (=> b!5766660 (= e!3542978 call!442987)))

(declare-fun bm!442983 () Bool)

(assert (=> bm!442983 (= call!442988 (nullable!5809 (ite c!1019519 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))))))))

(declare-fun b!5766661 () Bool)

(assert (=> b!5766661 (= e!3542979 e!3542976)))

(assert (=> b!5766661 (= c!1019519 ((_ is Union!15777) (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5766662 () Bool)

(assert (=> b!5766662 (= e!3542977 call!442987)))

(assert (= (and d!1816730 (not res!2433635)) b!5766659))

(assert (= (and b!5766659 res!2433636) b!5766657))

(assert (= (and b!5766657 (not res!2433634)) b!5766661))

(assert (= (and b!5766661 c!1019519) b!5766656))

(assert (= (and b!5766661 (not c!1019519)) b!5766658))

(assert (= (and b!5766656 (not res!2433637)) b!5766662))

(assert (= (and b!5766658 res!2433638) b!5766660))

(assert (= (or b!5766662 b!5766660) bm!442982))

(assert (= (or b!5766656 b!5766658) bm!442983))

(declare-fun m!6712540 () Bool)

(assert (=> bm!442982 m!6712540))

(declare-fun m!6712542 () Bool)

(assert (=> bm!442983 m!6712542))

(assert (=> d!1816486 d!1816730))

(declare-fun b!5766663 () Bool)

(declare-fun e!3542983 () (InoxSet Context!10322))

(assert (=> b!5766663 (= e!3542983 (store ((as const (Array Context!10322 Bool)) false) (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343)))) true))))

(declare-fun b!5766664 () Bool)

(declare-fun e!3542984 () (InoxSet Context!10322))

(declare-fun call!442993 () (InoxSet Context!10322))

(assert (=> b!5766664 (= e!3542984 call!442993)))

(declare-fun b!5766665 () Bool)

(declare-fun e!3542986 () Bool)

(assert (=> b!5766665 (= e!3542986 (nullable!5809 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343))))))))

(declare-fun b!5766666 () Bool)

(declare-fun e!3542982 () (InoxSet Context!10322))

(declare-fun call!442992 () (InoxSet Context!10322))

(declare-fun call!442994 () (InoxSet Context!10322))

(assert (=> b!5766666 (= e!3542982 ((_ map or) call!442992 call!442994))))

(declare-fun bm!442984 () Bool)

(assert (=> bm!442984 (= call!442993 call!442994)))

(declare-fun b!5766668 () Bool)

(declare-fun e!3542985 () (InoxSet Context!10322))

(assert (=> b!5766668 (= e!3542983 e!3542985)))

(declare-fun c!1019520 () Bool)

(assert (=> b!5766668 (= c!1019520 ((_ is Union!15777) (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun bm!442985 () Bool)

(declare-fun call!442989 () List!63630)

(assert (=> bm!442985 (= call!442992 (derivationStepZipperDown!1119 (ite c!1019520 (regOne!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343))))) (ite c!1019520 (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343)))) (Context!10323 call!442989)) (h!69956 s!2326)))))

(declare-fun bm!442986 () Bool)

(declare-fun call!442991 () List!63630)

(assert (=> bm!442986 (= call!442991 call!442989)))

(declare-fun bm!442987 () Bool)

(declare-fun call!442990 () (InoxSet Context!10322))

(assert (=> bm!442987 (= call!442994 call!442990)))

(declare-fun c!1019524 () Bool)

(declare-fun c!1019523 () Bool)

(declare-fun bm!442988 () Bool)

(assert (=> bm!442988 (= call!442989 ($colon$colon!1772 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343))))) (ite (or c!1019523 c!1019524) (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (h!69954 (exprs!5661 (h!69955 zl!343))))))))

(declare-fun bm!442989 () Bool)

(assert (=> bm!442989 (= call!442990 (derivationStepZipperDown!1119 (ite c!1019520 (regTwo!32067 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019523 (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (ite c!1019524 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (reg!16106 (h!69954 (exprs!5661 (h!69955 zl!343))))))) (ite (or c!1019520 c!1019523) (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343)))) (Context!10323 call!442991)) (h!69956 s!2326)))))

(declare-fun d!1816744 () Bool)

(declare-fun c!1019521 () Bool)

(assert (=> d!1816744 (= c!1019521 (and ((_ is ElementMatch!15777) (h!69954 (exprs!5661 (h!69955 zl!343)))) (= (c!1019159 (h!69954 (exprs!5661 (h!69955 zl!343)))) (h!69956 s!2326))))))

(assert (=> d!1816744 (= (derivationStepZipperDown!1119 (h!69954 (exprs!5661 (h!69955 zl!343))) (Context!10323 (t!376966 (exprs!5661 (h!69955 zl!343)))) (h!69956 s!2326)) e!3542983)))

(declare-fun b!5766667 () Bool)

(assert (=> b!5766667 (= e!3542985 ((_ map or) call!442992 call!442990))))

(declare-fun b!5766669 () Bool)

(declare-fun e!3542981 () (InoxSet Context!10322))

(assert (=> b!5766669 (= e!3542981 ((as const (Array Context!10322 Bool)) false))))

(declare-fun b!5766670 () Bool)

(assert (=> b!5766670 (= c!1019523 e!3542986)))

(declare-fun res!2433639 () Bool)

(assert (=> b!5766670 (=> (not res!2433639) (not e!3542986))))

(assert (=> b!5766670 (= res!2433639 ((_ is Concat!24622) (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(assert (=> b!5766670 (= e!3542985 e!3542982)))

(declare-fun b!5766671 () Bool)

(declare-fun c!1019522 () Bool)

(assert (=> b!5766671 (= c!1019522 ((_ is Star!15777) (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(assert (=> b!5766671 (= e!3542984 e!3542981)))

(declare-fun b!5766672 () Bool)

(assert (=> b!5766672 (= e!3542982 e!3542984)))

(assert (=> b!5766672 (= c!1019524 ((_ is Concat!24622) (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun b!5766673 () Bool)

(assert (=> b!5766673 (= e!3542981 call!442993)))

(assert (= (and d!1816744 c!1019521) b!5766663))

(assert (= (and d!1816744 (not c!1019521)) b!5766668))

(assert (= (and b!5766668 c!1019520) b!5766667))

(assert (= (and b!5766668 (not c!1019520)) b!5766670))

(assert (= (and b!5766670 res!2433639) b!5766665))

(assert (= (and b!5766670 c!1019523) b!5766666))

(assert (= (and b!5766670 (not c!1019523)) b!5766672))

(assert (= (and b!5766672 c!1019524) b!5766664))

(assert (= (and b!5766672 (not c!1019524)) b!5766671))

(assert (= (and b!5766671 c!1019522) b!5766673))

(assert (= (and b!5766671 (not c!1019522)) b!5766669))

(assert (= (or b!5766664 b!5766673) bm!442986))

(assert (= (or b!5766664 b!5766673) bm!442984))

(assert (= (or b!5766666 bm!442986) bm!442988))

(assert (= (or b!5766666 bm!442984) bm!442987))

(assert (= (or b!5766667 bm!442987) bm!442989))

(assert (= (or b!5766667 b!5766666) bm!442985))

(assert (=> b!5766665 m!6712022))

(declare-fun m!6712544 () Bool)

(assert (=> bm!442988 m!6712544))

(declare-fun m!6712546 () Bool)

(assert (=> b!5766663 m!6712546))

(declare-fun m!6712548 () Bool)

(assert (=> bm!442989 m!6712548))

(declare-fun m!6712550 () Bool)

(assert (=> bm!442985 m!6712550))

(assert (=> bm!442867 d!1816744))

(declare-fun d!1816746 () Bool)

(assert (=> d!1816746 (= (nullable!5809 (regOne!32066 r!7292)) (nullableFct!1850 (regOne!32066 r!7292)))))

(declare-fun bs!1352701 () Bool)

(assert (= bs!1352701 d!1816746))

(declare-fun m!6712552 () Bool)

(assert (=> bs!1352701 m!6712552))

(assert (=> b!5765914 d!1816746))

(assert (=> b!5765984 d!1816508))

(declare-fun d!1816748 () Bool)

(declare-fun res!2433640 () Bool)

(declare-fun e!3542987 () Bool)

(assert (=> d!1816748 (=> res!2433640 e!3542987)))

(assert (=> d!1816748 (= res!2433640 ((_ is Nil!63506) (exprs!5661 setElem!38729)))))

(assert (=> d!1816748 (= (forall!14894 (exprs!5661 setElem!38729) lambda!313093) e!3542987)))

(declare-fun b!5766674 () Bool)

(declare-fun e!3542988 () Bool)

(assert (=> b!5766674 (= e!3542987 e!3542988)))

(declare-fun res!2433641 () Bool)

(assert (=> b!5766674 (=> (not res!2433641) (not e!3542988))))

(assert (=> b!5766674 (= res!2433641 (dynLambda!24863 lambda!313093 (h!69954 (exprs!5661 setElem!38729))))))

(declare-fun b!5766675 () Bool)

(assert (=> b!5766675 (= e!3542988 (forall!14894 (t!376966 (exprs!5661 setElem!38729)) lambda!313093))))

(assert (= (and d!1816748 (not res!2433640)) b!5766674))

(assert (= (and b!5766674 res!2433641) b!5766675))

(declare-fun b_lambda!217687 () Bool)

(assert (=> (not b_lambda!217687) (not b!5766674)))

(declare-fun m!6712554 () Bool)

(assert (=> b!5766674 m!6712554))

(declare-fun m!6712556 () Bool)

(assert (=> b!5766675 m!6712556))

(assert (=> d!1816334 d!1816748))

(declare-fun d!1816750 () Bool)

(assert (=> d!1816750 (= (nullable!5809 (h!69954 (exprs!5661 lt!2289296))) (nullableFct!1850 (h!69954 (exprs!5661 lt!2289296))))))

(declare-fun bs!1352704 () Bool)

(assert (= bs!1352704 d!1816750))

(declare-fun m!6712558 () Bool)

(assert (=> bs!1352704 m!6712558))

(assert (=> b!5766072 d!1816750))

(assert (=> b!5765992 d!1816508))

(declare-fun d!1816752 () Bool)

(assert (=> d!1816752 (= (isUnion!702 lt!2289346) ((_ is Union!15777) lt!2289346))))

(assert (=> b!5765714 d!1816752))

(declare-fun bs!1352715 () Bool)

(declare-fun b!5766686 () Bool)

(assert (= bs!1352715 (and b!5766686 b!5765954)))

(declare-fun lambda!313194 () Int)

(assert (=> bs!1352715 (= (and (= (reg!16106 (regTwo!32067 (regOne!32066 r!7292))) (reg!16106 (regTwo!32066 r!7292))) (= (regTwo!32067 (regOne!32066 r!7292)) (regTwo!32066 r!7292))) (= lambda!313194 lambda!313142))))

(declare-fun bs!1352717 () Bool)

(assert (= bs!1352717 (and b!5766686 b!5766003)))

(assert (=> bs!1352717 (not (= lambda!313194 lambda!313145))))

(declare-fun bs!1352718 () Bool)

(assert (= bs!1352718 (and b!5766686 b!5765951)))

(assert (=> bs!1352718 (not (= lambda!313194 lambda!313143))))

(declare-fun bs!1352719 () Bool)

(assert (= bs!1352719 (and b!5766686 b!5765336)))

(assert (=> bs!1352719 (not (= lambda!313194 lambda!313082))))

(declare-fun bs!1352720 () Bool)

(assert (= bs!1352720 (and b!5766686 b!5765848)))

(assert (=> bs!1352720 (not (= lambda!313194 lambda!313131))))

(declare-fun bs!1352721 () Bool)

(assert (= bs!1352721 (and b!5766686 b!5766006)))

(assert (=> bs!1352721 (= (and (= (reg!16106 (regTwo!32067 (regOne!32066 r!7292))) (reg!16106 r!7292)) (= (regTwo!32067 (regOne!32066 r!7292)) r!7292)) (= lambda!313194 lambda!313144))))

(declare-fun bs!1352722 () Bool)

(assert (= bs!1352722 (and b!5766686 d!1816468)))

(assert (=> bs!1352722 (not (= lambda!313194 lambda!313151))))

(declare-fun bs!1352723 () Bool)

(assert (= bs!1352723 (and b!5766686 b!5765851)))

(assert (=> bs!1352723 (= (and (= (reg!16106 (regTwo!32067 (regOne!32066 r!7292))) (reg!16106 (regOne!32066 r!7292))) (= (regTwo!32067 (regOne!32066 r!7292)) (regOne!32066 r!7292))) (= lambda!313194 lambda!313130))))

(declare-fun bs!1352724 () Bool)

(assert (= bs!1352724 (and b!5766686 d!1816532)))

(assert (=> bs!1352724 (not (= lambda!313194 lambda!313160))))

(assert (=> bs!1352719 (not (= lambda!313194 lambda!313081))))

(declare-fun bs!1352725 () Bool)

(assert (= bs!1352725 (and b!5766686 d!1816684)))

(assert (=> bs!1352725 (not (= lambda!313194 lambda!313189))))

(declare-fun bs!1352726 () Bool)

(assert (= bs!1352726 (and b!5766686 d!1816474)))

(assert (=> bs!1352726 (not (= lambda!313194 lambda!313154))))

(assert (=> bs!1352725 (not (= lambda!313194 lambda!313188))))

(assert (=> bs!1352722 (not (= lambda!313194 lambda!313150))))

(assert (=> b!5766686 true))

(assert (=> b!5766686 true))

(declare-fun bs!1352727 () Bool)

(declare-fun b!5766683 () Bool)

(assert (= bs!1352727 (and b!5766683 b!5765954)))

(declare-fun lambda!313195 () Int)

(assert (=> bs!1352727 (not (= lambda!313195 lambda!313142))))

(declare-fun bs!1352728 () Bool)

(assert (= bs!1352728 (and b!5766683 b!5766003)))

(assert (=> bs!1352728 (= (and (= (regOne!32066 (regTwo!32067 (regOne!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32067 (regOne!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313195 lambda!313145))))

(declare-fun bs!1352729 () Bool)

(assert (= bs!1352729 (and b!5766683 b!5765951)))

(assert (=> bs!1352729 (= (and (= (regOne!32066 (regTwo!32067 (regOne!32066 r!7292))) (regOne!32066 (regTwo!32066 r!7292))) (= (regTwo!32066 (regTwo!32067 (regOne!32066 r!7292))) (regTwo!32066 (regTwo!32066 r!7292)))) (= lambda!313195 lambda!313143))))

(declare-fun bs!1352730 () Bool)

(assert (= bs!1352730 (and b!5766683 b!5765336)))

(assert (=> bs!1352730 (= (and (= (regOne!32066 (regTwo!32067 (regOne!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32067 (regOne!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313195 lambda!313082))))

(declare-fun bs!1352731 () Bool)

(assert (= bs!1352731 (and b!5766683 b!5766686)))

(assert (=> bs!1352731 (not (= lambda!313195 lambda!313194))))

(declare-fun bs!1352732 () Bool)

(assert (= bs!1352732 (and b!5766683 b!5765848)))

(assert (=> bs!1352732 (= (and (= (regOne!32066 (regTwo!32067 (regOne!32066 r!7292))) (regOne!32066 (regOne!32066 r!7292))) (= (regTwo!32066 (regTwo!32067 (regOne!32066 r!7292))) (regTwo!32066 (regOne!32066 r!7292)))) (= lambda!313195 lambda!313131))))

(declare-fun bs!1352733 () Bool)

(assert (= bs!1352733 (and b!5766683 b!5766006)))

(assert (=> bs!1352733 (not (= lambda!313195 lambda!313144))))

(declare-fun bs!1352734 () Bool)

(assert (= bs!1352734 (and b!5766683 d!1816468)))

(assert (=> bs!1352734 (= (and (= (regOne!32066 (regTwo!32067 (regOne!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32067 (regOne!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313195 lambda!313151))))

(declare-fun bs!1352735 () Bool)

(assert (= bs!1352735 (and b!5766683 b!5765851)))

(assert (=> bs!1352735 (not (= lambda!313195 lambda!313130))))

(declare-fun bs!1352736 () Bool)

(assert (= bs!1352736 (and b!5766683 d!1816532)))

(assert (=> bs!1352736 (not (= lambda!313195 lambda!313160))))

(assert (=> bs!1352730 (not (= lambda!313195 lambda!313081))))

(declare-fun bs!1352737 () Bool)

(assert (= bs!1352737 (and b!5766683 d!1816684)))

(assert (=> bs!1352737 (= (and (= (regOne!32066 (regTwo!32067 (regOne!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32067 (regOne!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313195 lambda!313189))))

(declare-fun bs!1352738 () Bool)

(assert (= bs!1352738 (and b!5766683 d!1816474)))

(assert (=> bs!1352738 (not (= lambda!313195 lambda!313154))))

(assert (=> bs!1352737 (not (= lambda!313195 lambda!313188))))

(assert (=> bs!1352734 (not (= lambda!313195 lambda!313150))))

(assert (=> b!5766683 true))

(assert (=> b!5766683 true))

(declare-fun b!5766676 () Bool)

(declare-fun c!1019526 () Bool)

(assert (=> b!5766676 (= c!1019526 ((_ is Union!15777) (regTwo!32067 (regOne!32066 r!7292))))))

(declare-fun e!3542992 () Bool)

(declare-fun e!3542993 () Bool)

(assert (=> b!5766676 (= e!3542992 e!3542993)))

(declare-fun b!5766677 () Bool)

(declare-fun e!3542991 () Bool)

(assert (=> b!5766677 (= e!3542993 e!3542991)))

(declare-fun res!2433642 () Bool)

(assert (=> b!5766677 (= res!2433642 (matchRSpec!2880 (regOne!32067 (regTwo!32067 (regOne!32066 r!7292))) s!2326))))

(assert (=> b!5766677 (=> res!2433642 e!3542991)))

(declare-fun bm!442990 () Bool)

(declare-fun c!1019525 () Bool)

(declare-fun call!442996 () Bool)

(assert (=> bm!442990 (= call!442996 (Exists!2877 (ite c!1019525 lambda!313194 lambda!313195)))))

(declare-fun bm!442991 () Bool)

(declare-fun call!442995 () Bool)

(assert (=> bm!442991 (= call!442995 (isEmpty!35400 s!2326))))

(declare-fun b!5766679 () Bool)

(assert (=> b!5766679 (= e!3542991 (matchRSpec!2880 (regTwo!32067 (regTwo!32067 (regOne!32066 r!7292))) s!2326))))

(declare-fun b!5766680 () Bool)

(declare-fun e!3542989 () Bool)

(assert (=> b!5766680 (= e!3542989 call!442995)))

(declare-fun b!5766681 () Bool)

(declare-fun e!3542990 () Bool)

(assert (=> b!5766681 (= e!3542993 e!3542990)))

(assert (=> b!5766681 (= c!1019525 ((_ is Star!15777) (regTwo!32067 (regOne!32066 r!7292))))))

(declare-fun b!5766682 () Bool)

(declare-fun res!2433643 () Bool)

(declare-fun e!3542995 () Bool)

(assert (=> b!5766682 (=> res!2433643 e!3542995)))

(assert (=> b!5766682 (= res!2433643 call!442995)))

(assert (=> b!5766682 (= e!3542990 e!3542995)))

(assert (=> b!5766683 (= e!3542990 call!442996)))

(declare-fun b!5766684 () Bool)

(declare-fun e!3542994 () Bool)

(assert (=> b!5766684 (= e!3542989 e!3542994)))

(declare-fun res!2433644 () Bool)

(assert (=> b!5766684 (= res!2433644 (not ((_ is EmptyLang!15777) (regTwo!32067 (regOne!32066 r!7292)))))))

(assert (=> b!5766684 (=> (not res!2433644) (not e!3542994))))

(declare-fun b!5766685 () Bool)

(assert (=> b!5766685 (= e!3542992 (= s!2326 (Cons!63508 (c!1019159 (regTwo!32067 (regOne!32066 r!7292))) Nil!63508)))))

(assert (=> b!5766686 (= e!3542995 call!442996)))

(declare-fun b!5766678 () Bool)

(declare-fun c!1019528 () Bool)

(assert (=> b!5766678 (= c!1019528 ((_ is ElementMatch!15777) (regTwo!32067 (regOne!32066 r!7292))))))

(assert (=> b!5766678 (= e!3542994 e!3542992)))

(declare-fun d!1816754 () Bool)

(declare-fun c!1019527 () Bool)

(assert (=> d!1816754 (= c!1019527 ((_ is EmptyExpr!15777) (regTwo!32067 (regOne!32066 r!7292))))))

(assert (=> d!1816754 (= (matchRSpec!2880 (regTwo!32067 (regOne!32066 r!7292)) s!2326) e!3542989)))

(assert (= (and d!1816754 c!1019527) b!5766680))

(assert (= (and d!1816754 (not c!1019527)) b!5766684))

(assert (= (and b!5766684 res!2433644) b!5766678))

(assert (= (and b!5766678 c!1019528) b!5766685))

(assert (= (and b!5766678 (not c!1019528)) b!5766676))

(assert (= (and b!5766676 c!1019526) b!5766677))

(assert (= (and b!5766676 (not c!1019526)) b!5766681))

(assert (= (and b!5766677 (not res!2433642)) b!5766679))

(assert (= (and b!5766681 c!1019525) b!5766682))

(assert (= (and b!5766681 (not c!1019525)) b!5766683))

(assert (= (and b!5766682 (not res!2433643)) b!5766686))

(assert (= (or b!5766686 b!5766683) bm!442990))

(assert (= (or b!5766680 b!5766682) bm!442991))

(declare-fun m!6712582 () Bool)

(assert (=> b!5766677 m!6712582))

(declare-fun m!6712586 () Bool)

(assert (=> bm!442990 m!6712586))

(assert (=> bm!442991 m!6711578))

(declare-fun m!6712590 () Bool)

(assert (=> b!5766679 m!6712590))

(assert (=> b!5765844 d!1816754))

(declare-fun bs!1352740 () Bool)

(declare-fun b!5766729 () Bool)

(assert (= bs!1352740 (and b!5766729 b!5765954)))

(declare-fun lambda!313196 () Int)

(assert (=> bs!1352740 (= (and (= (reg!16106 (regOne!32067 (regOne!32066 r!7292))) (reg!16106 (regTwo!32066 r!7292))) (= (regOne!32067 (regOne!32066 r!7292)) (regTwo!32066 r!7292))) (= lambda!313196 lambda!313142))))

(declare-fun bs!1352743 () Bool)

(assert (= bs!1352743 (and b!5766729 b!5766003)))

(assert (=> bs!1352743 (not (= lambda!313196 lambda!313145))))

(declare-fun bs!1352744 () Bool)

(assert (= bs!1352744 (and b!5766729 b!5765951)))

(assert (=> bs!1352744 (not (= lambda!313196 lambda!313143))))

(declare-fun bs!1352746 () Bool)

(assert (= bs!1352746 (and b!5766729 b!5765336)))

(assert (=> bs!1352746 (not (= lambda!313196 lambda!313082))))

(declare-fun bs!1352747 () Bool)

(assert (= bs!1352747 (and b!5766729 b!5766683)))

(assert (=> bs!1352747 (not (= lambda!313196 lambda!313195))))

(declare-fun bs!1352748 () Bool)

(assert (= bs!1352748 (and b!5766729 b!5766686)))

(assert (=> bs!1352748 (= (and (= (reg!16106 (regOne!32067 (regOne!32066 r!7292))) (reg!16106 (regTwo!32067 (regOne!32066 r!7292)))) (= (regOne!32067 (regOne!32066 r!7292)) (regTwo!32067 (regOne!32066 r!7292)))) (= lambda!313196 lambda!313194))))

(declare-fun bs!1352749 () Bool)

(assert (= bs!1352749 (and b!5766729 b!5765848)))

(assert (=> bs!1352749 (not (= lambda!313196 lambda!313131))))

(declare-fun bs!1352750 () Bool)

(assert (= bs!1352750 (and b!5766729 b!5766006)))

(assert (=> bs!1352750 (= (and (= (reg!16106 (regOne!32067 (regOne!32066 r!7292))) (reg!16106 r!7292)) (= (regOne!32067 (regOne!32066 r!7292)) r!7292)) (= lambda!313196 lambda!313144))))

(declare-fun bs!1352751 () Bool)

(assert (= bs!1352751 (and b!5766729 d!1816468)))

(assert (=> bs!1352751 (not (= lambda!313196 lambda!313151))))

(declare-fun bs!1352752 () Bool)

(assert (= bs!1352752 (and b!5766729 b!5765851)))

(assert (=> bs!1352752 (= (and (= (reg!16106 (regOne!32067 (regOne!32066 r!7292))) (reg!16106 (regOne!32066 r!7292))) (= (regOne!32067 (regOne!32066 r!7292)) (regOne!32066 r!7292))) (= lambda!313196 lambda!313130))))

(declare-fun bs!1352753 () Bool)

(assert (= bs!1352753 (and b!5766729 d!1816532)))

(assert (=> bs!1352753 (not (= lambda!313196 lambda!313160))))

(assert (=> bs!1352746 (not (= lambda!313196 lambda!313081))))

(declare-fun bs!1352754 () Bool)

(assert (= bs!1352754 (and b!5766729 d!1816684)))

(assert (=> bs!1352754 (not (= lambda!313196 lambda!313189))))

(declare-fun bs!1352755 () Bool)

(assert (= bs!1352755 (and b!5766729 d!1816474)))

(assert (=> bs!1352755 (not (= lambda!313196 lambda!313154))))

(assert (=> bs!1352754 (not (= lambda!313196 lambda!313188))))

(assert (=> bs!1352751 (not (= lambda!313196 lambda!313150))))

(assert (=> b!5766729 true))

(assert (=> b!5766729 true))

(declare-fun bs!1352757 () Bool)

(declare-fun b!5766726 () Bool)

(assert (= bs!1352757 (and b!5766726 b!5765954)))

(declare-fun lambda!313198 () Int)

(assert (=> bs!1352757 (not (= lambda!313198 lambda!313142))))

(declare-fun bs!1352758 () Bool)

(assert (= bs!1352758 (and b!5766726 b!5766003)))

(assert (=> bs!1352758 (= (and (= (regOne!32066 (regOne!32067 (regOne!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32067 (regOne!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313198 lambda!313145))))

(declare-fun bs!1352759 () Bool)

(assert (= bs!1352759 (and b!5766726 b!5765951)))

(assert (=> bs!1352759 (= (and (= (regOne!32066 (regOne!32067 (regOne!32066 r!7292))) (regOne!32066 (regTwo!32066 r!7292))) (= (regTwo!32066 (regOne!32067 (regOne!32066 r!7292))) (regTwo!32066 (regTwo!32066 r!7292)))) (= lambda!313198 lambda!313143))))

(declare-fun bs!1352760 () Bool)

(assert (= bs!1352760 (and b!5766726 b!5765336)))

(assert (=> bs!1352760 (= (and (= (regOne!32066 (regOne!32067 (regOne!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32067 (regOne!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313198 lambda!313082))))

(declare-fun bs!1352761 () Bool)

(assert (= bs!1352761 (and b!5766726 b!5766686)))

(assert (=> bs!1352761 (not (= lambda!313198 lambda!313194))))

(declare-fun bs!1352762 () Bool)

(assert (= bs!1352762 (and b!5766726 b!5765848)))

(assert (=> bs!1352762 (= (and (= (regOne!32066 (regOne!32067 (regOne!32066 r!7292))) (regOne!32066 (regOne!32066 r!7292))) (= (regTwo!32066 (regOne!32067 (regOne!32066 r!7292))) (regTwo!32066 (regOne!32066 r!7292)))) (= lambda!313198 lambda!313131))))

(declare-fun bs!1352763 () Bool)

(assert (= bs!1352763 (and b!5766726 b!5766006)))

(assert (=> bs!1352763 (not (= lambda!313198 lambda!313144))))

(declare-fun bs!1352764 () Bool)

(assert (= bs!1352764 (and b!5766726 d!1816468)))

(assert (=> bs!1352764 (= (and (= (regOne!32066 (regOne!32067 (regOne!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32067 (regOne!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313198 lambda!313151))))

(declare-fun bs!1352765 () Bool)

(assert (= bs!1352765 (and b!5766726 b!5765851)))

(assert (=> bs!1352765 (not (= lambda!313198 lambda!313130))))

(declare-fun bs!1352766 () Bool)

(assert (= bs!1352766 (and b!5766726 d!1816532)))

(assert (=> bs!1352766 (not (= lambda!313198 lambda!313160))))

(assert (=> bs!1352760 (not (= lambda!313198 lambda!313081))))

(declare-fun bs!1352767 () Bool)

(assert (= bs!1352767 (and b!5766726 d!1816684)))

(assert (=> bs!1352767 (= (and (= (regOne!32066 (regOne!32067 (regOne!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32067 (regOne!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313198 lambda!313189))))

(declare-fun bs!1352768 () Bool)

(assert (= bs!1352768 (and b!5766726 d!1816474)))

(assert (=> bs!1352768 (not (= lambda!313198 lambda!313154))))

(declare-fun bs!1352769 () Bool)

(assert (= bs!1352769 (and b!5766726 b!5766683)))

(assert (=> bs!1352769 (= (and (= (regOne!32066 (regOne!32067 (regOne!32066 r!7292))) (regOne!32066 (regTwo!32067 (regOne!32066 r!7292)))) (= (regTwo!32066 (regOne!32067 (regOne!32066 r!7292))) (regTwo!32066 (regTwo!32067 (regOne!32066 r!7292))))) (= lambda!313198 lambda!313195))))

(declare-fun bs!1352770 () Bool)

(assert (= bs!1352770 (and b!5766726 b!5766729)))

(assert (=> bs!1352770 (not (= lambda!313198 lambda!313196))))

(assert (=> bs!1352767 (not (= lambda!313198 lambda!313188))))

(assert (=> bs!1352764 (not (= lambda!313198 lambda!313150))))

(assert (=> b!5766726 true))

(assert (=> b!5766726 true))

(declare-fun b!5766719 () Bool)

(declare-fun c!1019542 () Bool)

(assert (=> b!5766719 (= c!1019542 ((_ is Union!15777) (regOne!32067 (regOne!32066 r!7292))))))

(declare-fun e!3543015 () Bool)

(declare-fun e!3543016 () Bool)

(assert (=> b!5766719 (= e!3543015 e!3543016)))

(declare-fun b!5766720 () Bool)

(declare-fun e!3543013 () Bool)

(assert (=> b!5766720 (= e!3543016 e!3543013)))

(declare-fun res!2433653 () Bool)

(assert (=> b!5766720 (= res!2433653 (matchRSpec!2880 (regOne!32067 (regOne!32067 (regOne!32066 r!7292))) s!2326))))

(assert (=> b!5766720 (=> res!2433653 e!3543013)))

(declare-fun c!1019540 () Bool)

(declare-fun call!443003 () Bool)

(declare-fun bm!442997 () Bool)

(assert (=> bm!442997 (= call!443003 (Exists!2877 (ite c!1019540 lambda!313196 lambda!313198)))))

(declare-fun bm!442998 () Bool)

(declare-fun call!443002 () Bool)

(assert (=> bm!442998 (= call!443002 (isEmpty!35400 s!2326))))

(declare-fun b!5766722 () Bool)

(assert (=> b!5766722 (= e!3543013 (matchRSpec!2880 (regTwo!32067 (regOne!32067 (regOne!32066 r!7292))) s!2326))))

(declare-fun b!5766723 () Bool)

(declare-fun e!3543011 () Bool)

(assert (=> b!5766723 (= e!3543011 call!443002)))

(declare-fun b!5766724 () Bool)

(declare-fun e!3543012 () Bool)

(assert (=> b!5766724 (= e!3543016 e!3543012)))

(assert (=> b!5766724 (= c!1019540 ((_ is Star!15777) (regOne!32067 (regOne!32066 r!7292))))))

(declare-fun b!5766725 () Bool)

(declare-fun res!2433654 () Bool)

(declare-fun e!3543018 () Bool)

(assert (=> b!5766725 (=> res!2433654 e!3543018)))

(assert (=> b!5766725 (= res!2433654 call!443002)))

(assert (=> b!5766725 (= e!3543012 e!3543018)))

(assert (=> b!5766726 (= e!3543012 call!443003)))

(declare-fun b!5766727 () Bool)

(declare-fun e!3543017 () Bool)

(assert (=> b!5766727 (= e!3543011 e!3543017)))

(declare-fun res!2433655 () Bool)

(assert (=> b!5766727 (= res!2433655 (not ((_ is EmptyLang!15777) (regOne!32067 (regOne!32066 r!7292)))))))

(assert (=> b!5766727 (=> (not res!2433655) (not e!3543017))))

(declare-fun b!5766728 () Bool)

(assert (=> b!5766728 (= e!3543015 (= s!2326 (Cons!63508 (c!1019159 (regOne!32067 (regOne!32066 r!7292))) Nil!63508)))))

(assert (=> b!5766729 (= e!3543018 call!443003)))

(declare-fun b!5766721 () Bool)

(declare-fun c!1019544 () Bool)

(assert (=> b!5766721 (= c!1019544 ((_ is ElementMatch!15777) (regOne!32067 (regOne!32066 r!7292))))))

(assert (=> b!5766721 (= e!3543017 e!3543015)))

(declare-fun d!1816764 () Bool)

(declare-fun c!1019543 () Bool)

(assert (=> d!1816764 (= c!1019543 ((_ is EmptyExpr!15777) (regOne!32067 (regOne!32066 r!7292))))))

(assert (=> d!1816764 (= (matchRSpec!2880 (regOne!32067 (regOne!32066 r!7292)) s!2326) e!3543011)))

(assert (= (and d!1816764 c!1019543) b!5766723))

(assert (= (and d!1816764 (not c!1019543)) b!5766727))

(assert (= (and b!5766727 res!2433655) b!5766721))

(assert (= (and b!5766721 c!1019544) b!5766728))

(assert (= (and b!5766721 (not c!1019544)) b!5766719))

(assert (= (and b!5766719 c!1019542) b!5766720))

(assert (= (and b!5766719 (not c!1019542)) b!5766724))

(assert (= (and b!5766720 (not res!2433653)) b!5766722))

(assert (= (and b!5766724 c!1019540) b!5766725))

(assert (= (and b!5766724 (not c!1019540)) b!5766726))

(assert (= (and b!5766725 (not res!2433654)) b!5766729))

(assert (= (or b!5766729 b!5766726) bm!442997))

(assert (= (or b!5766723 b!5766725) bm!442998))

(declare-fun m!6712628 () Bool)

(assert (=> b!5766720 m!6712628))

(declare-fun m!6712630 () Bool)

(assert (=> bm!442997 m!6712630))

(assert (=> bm!442998 m!6711578))

(declare-fun m!6712632 () Bool)

(assert (=> b!5766722 m!6712632))

(assert (=> b!5765842 d!1816764))

(assert (=> d!1816324 d!1816512))

(declare-fun d!1816782 () Bool)

(assert (=> d!1816782 (= ($colon$colon!1772 (exprs!5661 lt!2289296) (ite (or c!1019370 c!1019371) (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (h!69954 (exprs!5661 (h!69955 zl!343))))) (Cons!63506 (ite (or c!1019370 c!1019371) (regTwo!32066 (h!69954 (exprs!5661 (h!69955 zl!343)))) (h!69954 (exprs!5661 (h!69955 zl!343)))) (exprs!5661 lt!2289296)))))

(assert (=> bm!442864 d!1816782))

(assert (=> d!1816460 d!1816526))

(assert (=> d!1816460 d!1816338))

(declare-fun d!1816784 () Bool)

(assert (=> d!1816784 (= (nullable!5809 (reg!16106 r!7292)) (nullableFct!1850 (reg!16106 r!7292)))))

(declare-fun bs!1352771 () Bool)

(assert (= bs!1352771 d!1816784))

(declare-fun m!6712642 () Bool)

(assert (=> bs!1352771 m!6712642))

(assert (=> b!5765460 d!1816784))

(declare-fun b!5766779 () Bool)

(declare-fun e!3543049 () Bool)

(declare-fun e!3543045 () Bool)

(assert (=> b!5766779 (= e!3543049 e!3543045)))

(declare-fun res!2433673 () Bool)

(assert (=> b!5766779 (=> res!2433673 e!3543045)))

(declare-fun call!443016 () Bool)

(assert (=> b!5766779 (= res!2433673 call!443016)))

(declare-fun bm!443011 () Bool)

(assert (=> bm!443011 (= call!443016 (isEmpty!35400 (_2!36177 (get!21913 lt!2289400))))))

(declare-fun b!5766781 () Bool)

(assert (=> b!5766781 (= e!3543045 (not (= (head!12189 (_2!36177 (get!21913 lt!2289400))) (c!1019159 (regTwo!32066 r!7292)))))))

(declare-fun b!5766782 () Bool)

(declare-fun res!2433674 () Bool)

(declare-fun e!3543048 () Bool)

(assert (=> b!5766782 (=> res!2433674 e!3543048)))

(declare-fun e!3543050 () Bool)

(assert (=> b!5766782 (= res!2433674 e!3543050)))

(declare-fun res!2433676 () Bool)

(assert (=> b!5766782 (=> (not res!2433676) (not e!3543050))))

(declare-fun lt!2289443 () Bool)

(assert (=> b!5766782 (= res!2433676 lt!2289443)))

(declare-fun b!5766783 () Bool)

(assert (=> b!5766783 (= e!3543048 e!3543049)))

(declare-fun res!2433675 () Bool)

(assert (=> b!5766783 (=> (not res!2433675) (not e!3543049))))

(assert (=> b!5766783 (= res!2433675 (not lt!2289443))))

(declare-fun b!5766784 () Bool)

(declare-fun res!2433677 () Bool)

(assert (=> b!5766784 (=> (not res!2433677) (not e!3543050))))

(assert (=> b!5766784 (= res!2433677 (isEmpty!35400 (tail!11284 (_2!36177 (get!21913 lt!2289400)))))))

(declare-fun b!5766785 () Bool)

(declare-fun res!2433678 () Bool)

(assert (=> b!5766785 (=> (not res!2433678) (not e!3543050))))

(assert (=> b!5766785 (= res!2433678 (not call!443016))))

(declare-fun b!5766786 () Bool)

(declare-fun e!3543046 () Bool)

(declare-fun e!3543047 () Bool)

(assert (=> b!5766786 (= e!3543046 e!3543047)))

(declare-fun c!1019561 () Bool)

(assert (=> b!5766786 (= c!1019561 ((_ is EmptyLang!15777) (regTwo!32066 r!7292)))))

(declare-fun b!5766787 () Bool)

(assert (=> b!5766787 (= e!3543046 (= lt!2289443 call!443016))))

(declare-fun b!5766788 () Bool)

(declare-fun e!3543044 () Bool)

(assert (=> b!5766788 (= e!3543044 (matchR!7962 (derivativeStep!4558 (regTwo!32066 r!7292) (head!12189 (_2!36177 (get!21913 lt!2289400)))) (tail!11284 (_2!36177 (get!21913 lt!2289400)))))))

(declare-fun d!1816786 () Bool)

(assert (=> d!1816786 e!3543046))

(declare-fun c!1019563 () Bool)

(assert (=> d!1816786 (= c!1019563 ((_ is EmptyExpr!15777) (regTwo!32066 r!7292)))))

(assert (=> d!1816786 (= lt!2289443 e!3543044)))

(declare-fun c!1019562 () Bool)

(assert (=> d!1816786 (= c!1019562 (isEmpty!35400 (_2!36177 (get!21913 lt!2289400))))))

(assert (=> d!1816786 (validRegex!7513 (regTwo!32066 r!7292))))

(assert (=> d!1816786 (= (matchR!7962 (regTwo!32066 r!7292) (_2!36177 (get!21913 lt!2289400))) lt!2289443)))

(declare-fun b!5766780 () Bool)

(assert (=> b!5766780 (= e!3543047 (not lt!2289443))))

(declare-fun b!5766789 () Bool)

(assert (=> b!5766789 (= e!3543050 (= (head!12189 (_2!36177 (get!21913 lt!2289400))) (c!1019159 (regTwo!32066 r!7292))))))

(declare-fun b!5766790 () Bool)

(assert (=> b!5766790 (= e!3543044 (nullable!5809 (regTwo!32066 r!7292)))))

(declare-fun b!5766791 () Bool)

(declare-fun res!2433680 () Bool)

(assert (=> b!5766791 (=> res!2433680 e!3543045)))

(assert (=> b!5766791 (= res!2433680 (not (isEmpty!35400 (tail!11284 (_2!36177 (get!21913 lt!2289400))))))))

(declare-fun b!5766792 () Bool)

(declare-fun res!2433679 () Bool)

(assert (=> b!5766792 (=> res!2433679 e!3543048)))

(assert (=> b!5766792 (= res!2433679 (not ((_ is ElementMatch!15777) (regTwo!32066 r!7292))))))

(assert (=> b!5766792 (= e!3543047 e!3543048)))

(assert (= (and d!1816786 c!1019562) b!5766790))

(assert (= (and d!1816786 (not c!1019562)) b!5766788))

(assert (= (and d!1816786 c!1019563) b!5766787))

(assert (= (and d!1816786 (not c!1019563)) b!5766786))

(assert (= (and b!5766786 c!1019561) b!5766780))

(assert (= (and b!5766786 (not c!1019561)) b!5766792))

(assert (= (and b!5766792 (not res!2433679)) b!5766782))

(assert (= (and b!5766782 res!2433676) b!5766785))

(assert (= (and b!5766785 res!2433678) b!5766784))

(assert (= (and b!5766784 res!2433677) b!5766789))

(assert (= (and b!5766782 (not res!2433674)) b!5766783))

(assert (= (and b!5766783 res!2433675) b!5766779))

(assert (= (and b!5766779 (not res!2433673)) b!5766791))

(assert (= (and b!5766791 (not res!2433680)) b!5766781))

(assert (= (or b!5766787 b!5766779 b!5766785) bm!443011))

(declare-fun m!6712646 () Bool)

(assert (=> b!5766791 m!6712646))

(assert (=> b!5766791 m!6712646))

(declare-fun m!6712648 () Bool)

(assert (=> b!5766791 m!6712648))

(declare-fun m!6712650 () Bool)

(assert (=> b!5766788 m!6712650))

(assert (=> b!5766788 m!6712650))

(declare-fun m!6712652 () Bool)

(assert (=> b!5766788 m!6712652))

(assert (=> b!5766788 m!6712646))

(assert (=> b!5766788 m!6712652))

(assert (=> b!5766788 m!6712646))

(declare-fun m!6712654 () Bool)

(assert (=> b!5766788 m!6712654))

(assert (=> b!5766789 m!6712650))

(assert (=> b!5766784 m!6712646))

(assert (=> b!5766784 m!6712646))

(assert (=> b!5766784 m!6712648))

(declare-fun m!6712656 () Bool)

(assert (=> bm!443011 m!6712656))

(assert (=> b!5766790 m!6711950))

(assert (=> d!1816786 m!6712656))

(assert (=> d!1816786 m!6711952))

(assert (=> b!5766781 m!6712650))

(assert (=> b!5766043 d!1816786))

(assert (=> b!5766043 d!1816586))

(declare-fun d!1816790 () Bool)

(declare-fun c!1019566 () Bool)

(assert (=> d!1816790 (= c!1019566 ((_ is Nil!63507) lt!2289321))))

(declare-fun e!3543053 () (InoxSet Context!10322))

(assert (=> d!1816790 (= (content!11593 lt!2289321) e!3543053)))

(declare-fun b!5766797 () Bool)

(assert (=> b!5766797 (= e!3543053 ((as const (Array Context!10322 Bool)) false))))

(declare-fun b!5766798 () Bool)

(assert (=> b!5766798 (= e!3543053 ((_ map or) (store ((as const (Array Context!10322 Bool)) false) (h!69955 lt!2289321) true) (content!11593 (t!376967 lt!2289321))))))

(assert (= (and d!1816790 c!1019566) b!5766797))

(assert (= (and d!1816790 (not c!1019566)) b!5766798))

(declare-fun m!6712658 () Bool)

(assert (=> b!5766798 m!6712658))

(declare-fun m!6712660 () Bool)

(assert (=> b!5766798 m!6712660))

(assert (=> b!5765420 d!1816790))

(declare-fun d!1816792 () Bool)

(assert (=> d!1816792 true))

(declare-fun setRes!38742 () Bool)

(assert (=> d!1816792 setRes!38742))

(declare-fun condSetEmpty!38742 () Bool)

(declare-fun res!2433681 () (InoxSet Context!10322))

(assert (=> d!1816792 (= condSetEmpty!38742 (= res!2433681 ((as const (Array Context!10322 Bool)) false)))))

(assert (=> d!1816792 (= (choose!43735 lt!2289309 lambda!313083) res!2433681)))

(declare-fun setIsEmpty!38742 () Bool)

(assert (=> setIsEmpty!38742 setRes!38742))

(declare-fun setNonEmpty!38742 () Bool)

(declare-fun setElem!38742 () Context!10322)

(declare-fun e!3543054 () Bool)

(declare-fun tp!1593482 () Bool)

(assert (=> setNonEmpty!38742 (= setRes!38742 (and tp!1593482 (inv!82689 setElem!38742) e!3543054))))

(declare-fun setRest!38742 () (InoxSet Context!10322))

(assert (=> setNonEmpty!38742 (= res!2433681 ((_ map or) (store ((as const (Array Context!10322 Bool)) false) setElem!38742 true) setRest!38742))))

(declare-fun b!5766799 () Bool)

(declare-fun tp!1593481 () Bool)

(assert (=> b!5766799 (= e!3543054 tp!1593481)))

(assert (= (and d!1816792 condSetEmpty!38742) setIsEmpty!38742))

(assert (= (and d!1816792 (not condSetEmpty!38742)) setNonEmpty!38742))

(assert (= setNonEmpty!38742 b!5766799))

(declare-fun m!6712662 () Bool)

(assert (=> setNonEmpty!38742 m!6712662))

(assert (=> d!1816478 d!1816792))

(assert (=> bs!1352541 d!1816480))

(declare-fun d!1816794 () Bool)

(assert (=> d!1816794 (= (isEmpty!35398 (tail!11285 (unfocusZipperList!1205 zl!343))) ((_ is Nil!63506) (tail!11285 (unfocusZipperList!1205 zl!343))))))

(assert (=> b!5765715 d!1816794))

(declare-fun d!1816796 () Bool)

(assert (=> d!1816796 (= (tail!11285 (unfocusZipperList!1205 zl!343)) (t!376966 (unfocusZipperList!1205 zl!343)))))

(assert (=> b!5765715 d!1816796))

(assert (=> b!5766019 d!1816528))

(assert (=> b!5766019 d!1816510))

(assert (=> b!5765751 d!1816352))

(declare-fun bs!1352772 () Bool)

(declare-fun d!1816798 () Bool)

(assert (= bs!1352772 (and d!1816798 d!1816318)))

(declare-fun lambda!313199 () Int)

(assert (=> bs!1352772 (= lambda!313199 lambda!313089)))

(declare-fun bs!1352773 () Bool)

(assert (= bs!1352773 (and d!1816798 d!1816614)))

(assert (=> bs!1352773 (= lambda!313199 lambda!313169)))

(declare-fun bs!1352774 () Bool)

(assert (= bs!1352774 (and d!1816798 d!1816334)))

(assert (=> bs!1352774 (= lambda!313199 lambda!313093)))

(declare-fun bs!1352775 () Bool)

(assert (= bs!1352775 (and d!1816798 d!1816352)))

(assert (=> bs!1352775 (= lambda!313199 lambda!313102)))

(declare-fun bs!1352776 () Bool)

(assert (= bs!1352776 (and d!1816798 d!1816588)))

(assert (=> bs!1352776 (= lambda!313199 lambda!313167)))

(declare-fun bs!1352777 () Bool)

(assert (= bs!1352777 (and d!1816798 d!1816500)))

(assert (=> bs!1352777 (= lambda!313199 lambda!313156)))

(declare-fun bs!1352778 () Bool)

(assert (= bs!1352778 (and d!1816798 d!1816404)))

(assert (=> bs!1352778 (= lambda!313199 lambda!313119)))

(declare-fun bs!1352779 () Bool)

(assert (= bs!1352779 (and d!1816798 d!1816382)))

(assert (=> bs!1352779 (= lambda!313199 lambda!313109)))

(declare-fun lt!2289444 () List!63630)

(assert (=> d!1816798 (forall!14894 lt!2289444 lambda!313199)))

(declare-fun e!3543055 () List!63630)

(assert (=> d!1816798 (= lt!2289444 e!3543055)))

(declare-fun c!1019567 () Bool)

(assert (=> d!1816798 (= c!1019567 ((_ is Cons!63507) (t!376967 zl!343)))))

(assert (=> d!1816798 (= (unfocusZipperList!1205 (t!376967 zl!343)) lt!2289444)))

(declare-fun b!5766800 () Bool)

(assert (=> b!5766800 (= e!3543055 (Cons!63506 (generalisedConcat!1392 (exprs!5661 (h!69955 (t!376967 zl!343)))) (unfocusZipperList!1205 (t!376967 (t!376967 zl!343)))))))

(declare-fun b!5766801 () Bool)

(assert (=> b!5766801 (= e!3543055 Nil!63506)))

(assert (= (and d!1816798 c!1019567) b!5766800))

(assert (= (and d!1816798 (not c!1019567)) b!5766801))

(declare-fun m!6712664 () Bool)

(assert (=> d!1816798 m!6712664))

(declare-fun m!6712666 () Bool)

(assert (=> b!5766800 m!6712666))

(declare-fun m!6712668 () Bool)

(assert (=> b!5766800 m!6712668))

(assert (=> b!5765751 d!1816798))

(declare-fun bs!1352780 () Bool)

(declare-fun b!5766816 () Bool)

(assert (= bs!1352780 (and b!5766816 b!5765954)))

(declare-fun lambda!313202 () Int)

(assert (=> bs!1352780 (= (and (= (reg!16106 (regTwo!32067 r!7292)) (reg!16106 (regTwo!32066 r!7292))) (= (regTwo!32067 r!7292) (regTwo!32066 r!7292))) (= lambda!313202 lambda!313142))))

(declare-fun bs!1352781 () Bool)

(assert (= bs!1352781 (and b!5766816 b!5766003)))

(assert (=> bs!1352781 (not (= lambda!313202 lambda!313145))))

(declare-fun bs!1352782 () Bool)

(assert (= bs!1352782 (and b!5766816 b!5765951)))

(assert (=> bs!1352782 (not (= lambda!313202 lambda!313143))))

(declare-fun bs!1352783 () Bool)

(assert (= bs!1352783 (and b!5766816 b!5765336)))

(assert (=> bs!1352783 (not (= lambda!313202 lambda!313082))))

(declare-fun bs!1352785 () Bool)

(assert (= bs!1352785 (and b!5766816 b!5765848)))

(assert (=> bs!1352785 (not (= lambda!313202 lambda!313131))))

(declare-fun bs!1352787 () Bool)

(assert (= bs!1352787 (and b!5766816 b!5766006)))

(assert (=> bs!1352787 (= (and (= (reg!16106 (regTwo!32067 r!7292)) (reg!16106 r!7292)) (= (regTwo!32067 r!7292) r!7292)) (= lambda!313202 lambda!313144))))

(declare-fun bs!1352789 () Bool)

(assert (= bs!1352789 (and b!5766816 d!1816468)))

(assert (=> bs!1352789 (not (= lambda!313202 lambda!313151))))

(declare-fun bs!1352791 () Bool)

(assert (= bs!1352791 (and b!5766816 b!5765851)))

(assert (=> bs!1352791 (= (and (= (reg!16106 (regTwo!32067 r!7292)) (reg!16106 (regOne!32066 r!7292))) (= (regTwo!32067 r!7292) (regOne!32066 r!7292))) (= lambda!313202 lambda!313130))))

(declare-fun bs!1352793 () Bool)

(assert (= bs!1352793 (and b!5766816 d!1816532)))

(assert (=> bs!1352793 (not (= lambda!313202 lambda!313160))))

(assert (=> bs!1352783 (not (= lambda!313202 lambda!313081))))

(declare-fun bs!1352796 () Bool)

(assert (= bs!1352796 (and b!5766816 d!1816684)))

(assert (=> bs!1352796 (not (= lambda!313202 lambda!313189))))

(declare-fun bs!1352798 () Bool)

(assert (= bs!1352798 (and b!5766816 d!1816474)))

(assert (=> bs!1352798 (not (= lambda!313202 lambda!313154))))

(declare-fun bs!1352799 () Bool)

(assert (= bs!1352799 (and b!5766816 b!5766683)))

(assert (=> bs!1352799 (not (= lambda!313202 lambda!313195))))

(declare-fun bs!1352801 () Bool)

(assert (= bs!1352801 (and b!5766816 b!5766729)))

(assert (=> bs!1352801 (= (and (= (reg!16106 (regTwo!32067 r!7292)) (reg!16106 (regOne!32067 (regOne!32066 r!7292)))) (= (regTwo!32067 r!7292) (regOne!32067 (regOne!32066 r!7292)))) (= lambda!313202 lambda!313196))))

(assert (=> bs!1352796 (not (= lambda!313202 lambda!313188))))

(assert (=> bs!1352789 (not (= lambda!313202 lambda!313150))))

(declare-fun bs!1352805 () Bool)

(assert (= bs!1352805 (and b!5766816 b!5766726)))

(assert (=> bs!1352805 (not (= lambda!313202 lambda!313198))))

(declare-fun bs!1352806 () Bool)

(assert (= bs!1352806 (and b!5766816 b!5766686)))

(assert (=> bs!1352806 (= (and (= (reg!16106 (regTwo!32067 r!7292)) (reg!16106 (regTwo!32067 (regOne!32066 r!7292)))) (= (regTwo!32067 r!7292) (regTwo!32067 (regOne!32066 r!7292)))) (= lambda!313202 lambda!313194))))

(assert (=> b!5766816 true))

(assert (=> b!5766816 true))

(declare-fun bs!1352810 () Bool)

(declare-fun b!5766813 () Bool)

(assert (= bs!1352810 (and b!5766813 b!5765954)))

(declare-fun lambda!313204 () Int)

(assert (=> bs!1352810 (not (= lambda!313204 lambda!313142))))

(declare-fun bs!1352812 () Bool)

(assert (= bs!1352812 (and b!5766813 b!5766003)))

(assert (=> bs!1352812 (= (and (= (regOne!32066 (regTwo!32067 r!7292)) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32067 r!7292)) (regTwo!32066 r!7292))) (= lambda!313204 lambda!313145))))

(declare-fun bs!1352813 () Bool)

(assert (= bs!1352813 (and b!5766813 b!5765951)))

(assert (=> bs!1352813 (= (and (= (regOne!32066 (regTwo!32067 r!7292)) (regOne!32066 (regTwo!32066 r!7292))) (= (regTwo!32066 (regTwo!32067 r!7292)) (regTwo!32066 (regTwo!32066 r!7292)))) (= lambda!313204 lambda!313143))))

(declare-fun bs!1352814 () Bool)

(assert (= bs!1352814 (and b!5766813 b!5765848)))

(assert (=> bs!1352814 (= (and (= (regOne!32066 (regTwo!32067 r!7292)) (regOne!32066 (regOne!32066 r!7292))) (= (regTwo!32066 (regTwo!32067 r!7292)) (regTwo!32066 (regOne!32066 r!7292)))) (= lambda!313204 lambda!313131))))

(declare-fun bs!1352815 () Bool)

(assert (= bs!1352815 (and b!5766813 b!5766006)))

(assert (=> bs!1352815 (not (= lambda!313204 lambda!313144))))

(declare-fun bs!1352816 () Bool)

(assert (= bs!1352816 (and b!5766813 d!1816468)))

(assert (=> bs!1352816 (= (and (= (regOne!32066 (regTwo!32067 r!7292)) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32067 r!7292)) (regTwo!32066 r!7292))) (= lambda!313204 lambda!313151))))

(declare-fun bs!1352818 () Bool)

(assert (= bs!1352818 (and b!5766813 b!5765851)))

(assert (=> bs!1352818 (not (= lambda!313204 lambda!313130))))

(declare-fun bs!1352819 () Bool)

(assert (= bs!1352819 (and b!5766813 d!1816532)))

(assert (=> bs!1352819 (not (= lambda!313204 lambda!313160))))

(declare-fun bs!1352820 () Bool)

(assert (= bs!1352820 (and b!5766813 b!5765336)))

(assert (=> bs!1352820 (not (= lambda!313204 lambda!313081))))

(declare-fun bs!1352821 () Bool)

(assert (= bs!1352821 (and b!5766813 d!1816684)))

(assert (=> bs!1352821 (= (and (= (regOne!32066 (regTwo!32067 r!7292)) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32067 r!7292)) (regTwo!32066 r!7292))) (= lambda!313204 lambda!313189))))

(declare-fun bs!1352822 () Bool)

(assert (= bs!1352822 (and b!5766813 d!1816474)))

(assert (=> bs!1352822 (not (= lambda!313204 lambda!313154))))

(declare-fun bs!1352823 () Bool)

(assert (= bs!1352823 (and b!5766813 b!5766816)))

(assert (=> bs!1352823 (not (= lambda!313204 lambda!313202))))

(assert (=> bs!1352820 (= (and (= (regOne!32066 (regTwo!32067 r!7292)) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32067 r!7292)) (regTwo!32066 r!7292))) (= lambda!313204 lambda!313082))))

(declare-fun bs!1352824 () Bool)

(assert (= bs!1352824 (and b!5766813 b!5766683)))

(assert (=> bs!1352824 (= (and (= (regOne!32066 (regTwo!32067 r!7292)) (regOne!32066 (regTwo!32067 (regOne!32066 r!7292)))) (= (regTwo!32066 (regTwo!32067 r!7292)) (regTwo!32066 (regTwo!32067 (regOne!32066 r!7292))))) (= lambda!313204 lambda!313195))))

(declare-fun bs!1352825 () Bool)

(assert (= bs!1352825 (and b!5766813 b!5766729)))

(assert (=> bs!1352825 (not (= lambda!313204 lambda!313196))))

(assert (=> bs!1352821 (not (= lambda!313204 lambda!313188))))

(assert (=> bs!1352816 (not (= lambda!313204 lambda!313150))))

(declare-fun bs!1352826 () Bool)

(assert (= bs!1352826 (and b!5766813 b!5766726)))

(assert (=> bs!1352826 (= (and (= (regOne!32066 (regTwo!32067 r!7292)) (regOne!32066 (regOne!32067 (regOne!32066 r!7292)))) (= (regTwo!32066 (regTwo!32067 r!7292)) (regTwo!32066 (regOne!32067 (regOne!32066 r!7292))))) (= lambda!313204 lambda!313198))))

(declare-fun bs!1352827 () Bool)

(assert (= bs!1352827 (and b!5766813 b!5766686)))

(assert (=> bs!1352827 (not (= lambda!313204 lambda!313194))))

(assert (=> b!5766813 true))

(assert (=> b!5766813 true))

(declare-fun b!5766806 () Bool)

(declare-fun c!1019569 () Bool)

(assert (=> b!5766806 (= c!1019569 ((_ is Union!15777) (regTwo!32067 r!7292)))))

(declare-fun e!3543061 () Bool)

(declare-fun e!3543062 () Bool)

(assert (=> b!5766806 (= e!3543061 e!3543062)))

(declare-fun b!5766807 () Bool)

(declare-fun e!3543060 () Bool)

(assert (=> b!5766807 (= e!3543062 e!3543060)))

(declare-fun res!2433686 () Bool)

(assert (=> b!5766807 (= res!2433686 (matchRSpec!2880 (regOne!32067 (regTwo!32067 r!7292)) s!2326))))

(assert (=> b!5766807 (=> res!2433686 e!3543060)))

(declare-fun call!443018 () Bool)

(declare-fun c!1019568 () Bool)

(declare-fun bm!443012 () Bool)

(assert (=> bm!443012 (= call!443018 (Exists!2877 (ite c!1019568 lambda!313202 lambda!313204)))))

(declare-fun bm!443013 () Bool)

(declare-fun call!443017 () Bool)

(assert (=> bm!443013 (= call!443017 (isEmpty!35400 s!2326))))

(declare-fun b!5766809 () Bool)

(assert (=> b!5766809 (= e!3543060 (matchRSpec!2880 (regTwo!32067 (regTwo!32067 r!7292)) s!2326))))

(declare-fun b!5766810 () Bool)

(declare-fun e!3543058 () Bool)

(assert (=> b!5766810 (= e!3543058 call!443017)))

(declare-fun b!5766811 () Bool)

(declare-fun e!3543059 () Bool)

(assert (=> b!5766811 (= e!3543062 e!3543059)))

(assert (=> b!5766811 (= c!1019568 ((_ is Star!15777) (regTwo!32067 r!7292)))))

(declare-fun b!5766812 () Bool)

(declare-fun res!2433687 () Bool)

(declare-fun e!3543064 () Bool)

(assert (=> b!5766812 (=> res!2433687 e!3543064)))

(assert (=> b!5766812 (= res!2433687 call!443017)))

(assert (=> b!5766812 (= e!3543059 e!3543064)))

(assert (=> b!5766813 (= e!3543059 call!443018)))

(declare-fun b!5766814 () Bool)

(declare-fun e!3543063 () Bool)

(assert (=> b!5766814 (= e!3543058 e!3543063)))

(declare-fun res!2433688 () Bool)

(assert (=> b!5766814 (= res!2433688 (not ((_ is EmptyLang!15777) (regTwo!32067 r!7292))))))

(assert (=> b!5766814 (=> (not res!2433688) (not e!3543063))))

(declare-fun b!5766815 () Bool)

(assert (=> b!5766815 (= e!3543061 (= s!2326 (Cons!63508 (c!1019159 (regTwo!32067 r!7292)) Nil!63508)))))

(assert (=> b!5766816 (= e!3543064 call!443018)))

(declare-fun b!5766808 () Bool)

(declare-fun c!1019571 () Bool)

(assert (=> b!5766808 (= c!1019571 ((_ is ElementMatch!15777) (regTwo!32067 r!7292)))))

(assert (=> b!5766808 (= e!3543063 e!3543061)))

(declare-fun d!1816800 () Bool)

(declare-fun c!1019570 () Bool)

(assert (=> d!1816800 (= c!1019570 ((_ is EmptyExpr!15777) (regTwo!32067 r!7292)))))

(assert (=> d!1816800 (= (matchRSpec!2880 (regTwo!32067 r!7292) s!2326) e!3543058)))

(assert (= (and d!1816800 c!1019570) b!5766810))

(assert (= (and d!1816800 (not c!1019570)) b!5766814))

(assert (= (and b!5766814 res!2433688) b!5766808))

(assert (= (and b!5766808 c!1019571) b!5766815))

(assert (= (and b!5766808 (not c!1019571)) b!5766806))

(assert (= (and b!5766806 c!1019569) b!5766807))

(assert (= (and b!5766806 (not c!1019569)) b!5766811))

(assert (= (and b!5766807 (not res!2433686)) b!5766809))

(assert (= (and b!5766811 c!1019568) b!5766812))

(assert (= (and b!5766811 (not c!1019568)) b!5766813))

(assert (= (and b!5766812 (not res!2433687)) b!5766816))

(assert (= (or b!5766816 b!5766813) bm!443012))

(assert (= (or b!5766810 b!5766812) bm!443013))

(declare-fun m!6712676 () Bool)

(assert (=> b!5766807 m!6712676))

(declare-fun m!6712678 () Bool)

(assert (=> bm!443012 m!6712678))

(assert (=> bm!443013 m!6711578))

(declare-fun m!6712680 () Bool)

(assert (=> b!5766809 m!6712680))

(assert (=> b!5765999 d!1816800))

(declare-fun d!1816810 () Bool)

(assert (=> d!1816810 (= (nullable!5809 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343))))) (nullableFct!1850 (regOne!32066 (h!69954 (exprs!5661 (h!69955 zl!343))))))))

(declare-fun bs!1352828 () Bool)

(assert (= bs!1352828 d!1816810))

(declare-fun m!6712682 () Bool)

(assert (=> bs!1352828 m!6712682))

(assert (=> b!5766099 d!1816810))

(assert (=> b!5765389 d!1816322))

(declare-fun bs!1352830 () Bool)

(declare-fun b!5766827 () Bool)

(assert (= bs!1352830 (and b!5766827 b!5765954)))

(declare-fun lambda!313205 () Int)

(assert (=> bs!1352830 (= (and (= (reg!16106 (regOne!32067 r!7292)) (reg!16106 (regTwo!32066 r!7292))) (= (regOne!32067 r!7292) (regTwo!32066 r!7292))) (= lambda!313205 lambda!313142))))

(declare-fun bs!1352832 () Bool)

(assert (= bs!1352832 (and b!5766827 b!5766003)))

(assert (=> bs!1352832 (not (= lambda!313205 lambda!313145))))

(declare-fun bs!1352833 () Bool)

(assert (= bs!1352833 (and b!5766827 b!5765951)))

(assert (=> bs!1352833 (not (= lambda!313205 lambda!313143))))

(declare-fun bs!1352834 () Bool)

(assert (= bs!1352834 (and b!5766827 b!5765848)))

(assert (=> bs!1352834 (not (= lambda!313205 lambda!313131))))

(declare-fun bs!1352835 () Bool)

(assert (= bs!1352835 (and b!5766827 b!5766006)))

(assert (=> bs!1352835 (= (and (= (reg!16106 (regOne!32067 r!7292)) (reg!16106 r!7292)) (= (regOne!32067 r!7292) r!7292)) (= lambda!313205 lambda!313144))))

(declare-fun bs!1352836 () Bool)

(assert (= bs!1352836 (and b!5766827 d!1816468)))

(assert (=> bs!1352836 (not (= lambda!313205 lambda!313151))))

(declare-fun bs!1352838 () Bool)

(assert (= bs!1352838 (and b!5766827 b!5765851)))

(assert (=> bs!1352838 (= (and (= (reg!16106 (regOne!32067 r!7292)) (reg!16106 (regOne!32066 r!7292))) (= (regOne!32067 r!7292) (regOne!32066 r!7292))) (= lambda!313205 lambda!313130))))

(declare-fun bs!1352839 () Bool)

(assert (= bs!1352839 (and b!5766827 d!1816532)))

(assert (=> bs!1352839 (not (= lambda!313205 lambda!313160))))

(declare-fun bs!1352841 () Bool)

(assert (= bs!1352841 (and b!5766827 b!5765336)))

(assert (=> bs!1352841 (not (= lambda!313205 lambda!313081))))

(declare-fun bs!1352843 () Bool)

(assert (= bs!1352843 (and b!5766827 d!1816684)))

(assert (=> bs!1352843 (not (= lambda!313205 lambda!313189))))

(declare-fun bs!1352844 () Bool)

(assert (= bs!1352844 (and b!5766827 d!1816474)))

(assert (=> bs!1352844 (not (= lambda!313205 lambda!313154))))

(declare-fun bs!1352846 () Bool)

(assert (= bs!1352846 (and b!5766827 b!5766816)))

(assert (=> bs!1352846 (= (and (= (reg!16106 (regOne!32067 r!7292)) (reg!16106 (regTwo!32067 r!7292))) (= (regOne!32067 r!7292) (regTwo!32067 r!7292))) (= lambda!313205 lambda!313202))))

(assert (=> bs!1352841 (not (= lambda!313205 lambda!313082))))

(declare-fun bs!1352849 () Bool)

(assert (= bs!1352849 (and b!5766827 b!5766683)))

(assert (=> bs!1352849 (not (= lambda!313205 lambda!313195))))

(declare-fun bs!1352851 () Bool)

(assert (= bs!1352851 (and b!5766827 b!5766729)))

(assert (=> bs!1352851 (= (and (= (reg!16106 (regOne!32067 r!7292)) (reg!16106 (regOne!32067 (regOne!32066 r!7292)))) (= (regOne!32067 r!7292) (regOne!32067 (regOne!32066 r!7292)))) (= lambda!313205 lambda!313196))))

(assert (=> bs!1352843 (not (= lambda!313205 lambda!313188))))

(declare-fun bs!1352852 () Bool)

(assert (= bs!1352852 (and b!5766827 b!5766813)))

(assert (=> bs!1352852 (not (= lambda!313205 lambda!313204))))

(assert (=> bs!1352836 (not (= lambda!313205 lambda!313150))))

(declare-fun bs!1352853 () Bool)

(assert (= bs!1352853 (and b!5766827 b!5766726)))

(assert (=> bs!1352853 (not (= lambda!313205 lambda!313198))))

(declare-fun bs!1352854 () Bool)

(assert (= bs!1352854 (and b!5766827 b!5766686)))

(assert (=> bs!1352854 (= (and (= (reg!16106 (regOne!32067 r!7292)) (reg!16106 (regTwo!32067 (regOne!32066 r!7292)))) (= (regOne!32067 r!7292) (regTwo!32067 (regOne!32066 r!7292)))) (= lambda!313205 lambda!313194))))

(assert (=> b!5766827 true))

(assert (=> b!5766827 true))

(declare-fun bs!1352855 () Bool)

(declare-fun b!5766824 () Bool)

(assert (= bs!1352855 (and b!5766824 b!5766827)))

(declare-fun lambda!313207 () Int)

(assert (=> bs!1352855 (not (= lambda!313207 lambda!313205))))

(declare-fun bs!1352856 () Bool)

(assert (= bs!1352856 (and b!5766824 b!5765954)))

(assert (=> bs!1352856 (not (= lambda!313207 lambda!313142))))

(declare-fun bs!1352857 () Bool)

(assert (= bs!1352857 (and b!5766824 b!5766003)))

(assert (=> bs!1352857 (= (and (= (regOne!32066 (regOne!32067 r!7292)) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32067 r!7292)) (regTwo!32066 r!7292))) (= lambda!313207 lambda!313145))))

(declare-fun bs!1352859 () Bool)

(assert (= bs!1352859 (and b!5766824 b!5765951)))

(assert (=> bs!1352859 (= (and (= (regOne!32066 (regOne!32067 r!7292)) (regOne!32066 (regTwo!32066 r!7292))) (= (regTwo!32066 (regOne!32067 r!7292)) (regTwo!32066 (regTwo!32066 r!7292)))) (= lambda!313207 lambda!313143))))

(declare-fun bs!1352860 () Bool)

(assert (= bs!1352860 (and b!5766824 b!5765848)))

(assert (=> bs!1352860 (= (and (= (regOne!32066 (regOne!32067 r!7292)) (regOne!32066 (regOne!32066 r!7292))) (= (regTwo!32066 (regOne!32067 r!7292)) (regTwo!32066 (regOne!32066 r!7292)))) (= lambda!313207 lambda!313131))))

(declare-fun bs!1352861 () Bool)

(assert (= bs!1352861 (and b!5766824 b!5766006)))

(assert (=> bs!1352861 (not (= lambda!313207 lambda!313144))))

(declare-fun bs!1352862 () Bool)

(assert (= bs!1352862 (and b!5766824 d!1816468)))

(assert (=> bs!1352862 (= (and (= (regOne!32066 (regOne!32067 r!7292)) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32067 r!7292)) (regTwo!32066 r!7292))) (= lambda!313207 lambda!313151))))

(declare-fun bs!1352863 () Bool)

(assert (= bs!1352863 (and b!5766824 b!5765851)))

(assert (=> bs!1352863 (not (= lambda!313207 lambda!313130))))

(declare-fun bs!1352864 () Bool)

(assert (= bs!1352864 (and b!5766824 d!1816532)))

(assert (=> bs!1352864 (not (= lambda!313207 lambda!313160))))

(declare-fun bs!1352865 () Bool)

(assert (= bs!1352865 (and b!5766824 b!5765336)))

(assert (=> bs!1352865 (not (= lambda!313207 lambda!313081))))

(declare-fun bs!1352866 () Bool)

(assert (= bs!1352866 (and b!5766824 d!1816684)))

(assert (=> bs!1352866 (= (and (= (regOne!32066 (regOne!32067 r!7292)) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32067 r!7292)) (regTwo!32066 r!7292))) (= lambda!313207 lambda!313189))))

(declare-fun bs!1352867 () Bool)

(assert (= bs!1352867 (and b!5766824 d!1816474)))

(assert (=> bs!1352867 (not (= lambda!313207 lambda!313154))))

(declare-fun bs!1352868 () Bool)

(assert (= bs!1352868 (and b!5766824 b!5766816)))

(assert (=> bs!1352868 (not (= lambda!313207 lambda!313202))))

(assert (=> bs!1352865 (= (and (= (regOne!32066 (regOne!32067 r!7292)) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32067 r!7292)) (regTwo!32066 r!7292))) (= lambda!313207 lambda!313082))))

(declare-fun bs!1352869 () Bool)

(assert (= bs!1352869 (and b!5766824 b!5766683)))

(assert (=> bs!1352869 (= (and (= (regOne!32066 (regOne!32067 r!7292)) (regOne!32066 (regTwo!32067 (regOne!32066 r!7292)))) (= (regTwo!32066 (regOne!32067 r!7292)) (regTwo!32066 (regTwo!32067 (regOne!32066 r!7292))))) (= lambda!313207 lambda!313195))))

(declare-fun bs!1352870 () Bool)

(assert (= bs!1352870 (and b!5766824 b!5766729)))

(assert (=> bs!1352870 (not (= lambda!313207 lambda!313196))))

(assert (=> bs!1352866 (not (= lambda!313207 lambda!313188))))

(declare-fun bs!1352871 () Bool)

(assert (= bs!1352871 (and b!5766824 b!5766813)))

(assert (=> bs!1352871 (= (and (= (regOne!32066 (regOne!32067 r!7292)) (regOne!32066 (regTwo!32067 r!7292))) (= (regTwo!32066 (regOne!32067 r!7292)) (regTwo!32066 (regTwo!32067 r!7292)))) (= lambda!313207 lambda!313204))))

(assert (=> bs!1352862 (not (= lambda!313207 lambda!313150))))

(declare-fun bs!1352872 () Bool)

(assert (= bs!1352872 (and b!5766824 b!5766726)))

(assert (=> bs!1352872 (= (and (= (regOne!32066 (regOne!32067 r!7292)) (regOne!32066 (regOne!32067 (regOne!32066 r!7292)))) (= (regTwo!32066 (regOne!32067 r!7292)) (regTwo!32066 (regOne!32067 (regOne!32066 r!7292))))) (= lambda!313207 lambda!313198))))

(declare-fun bs!1352873 () Bool)

(assert (= bs!1352873 (and b!5766824 b!5766686)))

(assert (=> bs!1352873 (not (= lambda!313207 lambda!313194))))

(assert (=> b!5766824 true))

(assert (=> b!5766824 true))

(declare-fun b!5766817 () Bool)

(declare-fun c!1019573 () Bool)

(assert (=> b!5766817 (= c!1019573 ((_ is Union!15777) (regOne!32067 r!7292)))))

(declare-fun e!3543068 () Bool)

(declare-fun e!3543069 () Bool)

(assert (=> b!5766817 (= e!3543068 e!3543069)))

(declare-fun b!5766818 () Bool)

(declare-fun e!3543067 () Bool)

(assert (=> b!5766818 (= e!3543069 e!3543067)))

(declare-fun res!2433689 () Bool)

(assert (=> b!5766818 (= res!2433689 (matchRSpec!2880 (regOne!32067 (regOne!32067 r!7292)) s!2326))))

(assert (=> b!5766818 (=> res!2433689 e!3543067)))

(declare-fun call!443020 () Bool)

(declare-fun c!1019572 () Bool)

(declare-fun bm!443014 () Bool)

(assert (=> bm!443014 (= call!443020 (Exists!2877 (ite c!1019572 lambda!313205 lambda!313207)))))

(declare-fun bm!443015 () Bool)

(declare-fun call!443019 () Bool)

(assert (=> bm!443015 (= call!443019 (isEmpty!35400 s!2326))))

(declare-fun b!5766820 () Bool)

(assert (=> b!5766820 (= e!3543067 (matchRSpec!2880 (regTwo!32067 (regOne!32067 r!7292)) s!2326))))

(declare-fun b!5766821 () Bool)

(declare-fun e!3543065 () Bool)

(assert (=> b!5766821 (= e!3543065 call!443019)))

(declare-fun b!5766822 () Bool)

(declare-fun e!3543066 () Bool)

(assert (=> b!5766822 (= e!3543069 e!3543066)))

(assert (=> b!5766822 (= c!1019572 ((_ is Star!15777) (regOne!32067 r!7292)))))

(declare-fun b!5766823 () Bool)

(declare-fun res!2433690 () Bool)

(declare-fun e!3543071 () Bool)

(assert (=> b!5766823 (=> res!2433690 e!3543071)))

(assert (=> b!5766823 (= res!2433690 call!443019)))

(assert (=> b!5766823 (= e!3543066 e!3543071)))

(assert (=> b!5766824 (= e!3543066 call!443020)))

(declare-fun b!5766825 () Bool)

(declare-fun e!3543070 () Bool)

(assert (=> b!5766825 (= e!3543065 e!3543070)))

(declare-fun res!2433691 () Bool)

(assert (=> b!5766825 (= res!2433691 (not ((_ is EmptyLang!15777) (regOne!32067 r!7292))))))

(assert (=> b!5766825 (=> (not res!2433691) (not e!3543070))))

(declare-fun b!5766826 () Bool)

(assert (=> b!5766826 (= e!3543068 (= s!2326 (Cons!63508 (c!1019159 (regOne!32067 r!7292)) Nil!63508)))))

(assert (=> b!5766827 (= e!3543071 call!443020)))

(declare-fun b!5766819 () Bool)

(declare-fun c!1019575 () Bool)

(assert (=> b!5766819 (= c!1019575 ((_ is ElementMatch!15777) (regOne!32067 r!7292)))))

(assert (=> b!5766819 (= e!3543070 e!3543068)))

(declare-fun d!1816812 () Bool)

(declare-fun c!1019574 () Bool)

(assert (=> d!1816812 (= c!1019574 ((_ is EmptyExpr!15777) (regOne!32067 r!7292)))))

(assert (=> d!1816812 (= (matchRSpec!2880 (regOne!32067 r!7292) s!2326) e!3543065)))

(assert (= (and d!1816812 c!1019574) b!5766821))

(assert (= (and d!1816812 (not c!1019574)) b!5766825))

(assert (= (and b!5766825 res!2433691) b!5766819))

(assert (= (and b!5766819 c!1019575) b!5766826))

(assert (= (and b!5766819 (not c!1019575)) b!5766817))

(assert (= (and b!5766817 c!1019573) b!5766818))

(assert (= (and b!5766817 (not c!1019573)) b!5766822))

(assert (= (and b!5766818 (not res!2433689)) b!5766820))

(assert (= (and b!5766822 c!1019572) b!5766823))

(assert (= (and b!5766822 (not c!1019572)) b!5766824))

(assert (= (and b!5766823 (not res!2433690)) b!5766827))

(assert (= (or b!5766827 b!5766824) bm!443014))

(assert (= (or b!5766821 b!5766823) bm!443015))

(declare-fun m!6712706 () Bool)

(assert (=> b!5766818 m!6712706))

(declare-fun m!6712708 () Bool)

(assert (=> bm!443014 m!6712708))

(assert (=> bm!443015 m!6711578))

(declare-fun m!6712710 () Bool)

(assert (=> b!5766820 m!6712710))

(assert (=> b!5765997 d!1816812))

(assert (=> d!1816432 d!1816434))

(assert (=> d!1816432 d!1816418))

(declare-fun d!1816838 () Bool)

(assert (=> d!1816838 (= (matchR!7962 (regOne!32066 r!7292) s!2326) (matchRSpec!2880 (regOne!32066 r!7292) s!2326))))

(assert (=> d!1816838 true))

(declare-fun _$88!4080 () Unit!156640)

(assert (=> d!1816838 (= (choose!43727 (regOne!32066 r!7292) s!2326) _$88!4080)))

(declare-fun bs!1352879 () Bool)

(assert (= bs!1352879 d!1816838))

(assert (=> bs!1352879 m!6711520))

(assert (=> bs!1352879 m!6711522))

(assert (=> d!1816432 d!1816838))

(assert (=> d!1816432 d!1816520))

(assert (=> b!5765913 d!1816508))

(assert (=> b!5765987 d!1816528))

(assert (=> b!5765987 d!1816510))

(assert (=> d!1816454 d!1816452))

(assert (=> d!1816454 d!1816446))

(declare-fun d!1816840 () Bool)

(assert (=> d!1816840 (= (matchR!7962 (regTwo!32066 r!7292) s!2326) (matchRSpec!2880 (regTwo!32066 r!7292) s!2326))))

(assert (=> d!1816840 true))

(declare-fun _$88!4081 () Unit!156640)

(assert (=> d!1816840 (= (choose!43727 (regTwo!32066 r!7292) s!2326) _$88!4081)))

(declare-fun bs!1352880 () Bool)

(assert (= bs!1352880 d!1816840))

(assert (=> bs!1352880 m!6711514))

(assert (=> bs!1352880 m!6711524))

(assert (=> d!1816454 d!1816840))

(assert (=> d!1816454 d!1816678))

(declare-fun b!5766835 () Bool)

(declare-fun e!3543077 () (InoxSet Context!10322))

(assert (=> b!5766835 (= e!3543077 ((as const (Array Context!10322 Bool)) false))))

(declare-fun b!5766836 () Bool)

(declare-fun e!3543076 () (InoxSet Context!10322))

(declare-fun call!443021 () (InoxSet Context!10322))

(assert (=> b!5766836 (= e!3543076 ((_ map or) call!443021 (derivationStepZipperUp!1045 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 lt!2289296)))))) (h!69956 s!2326))))))

(declare-fun b!5766837 () Bool)

(declare-fun e!3543078 () Bool)

(assert (=> b!5766837 (= e!3543078 (nullable!5809 (h!69954 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 lt!2289296)))))))))

(declare-fun bm!443016 () Bool)

(assert (=> bm!443016 (= call!443021 (derivationStepZipperDown!1119 (h!69954 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 lt!2289296))))) (Context!10323 (t!376966 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 lt!2289296)))))) (h!69956 s!2326)))))

(declare-fun d!1816842 () Bool)

(declare-fun c!1019579 () Bool)

(assert (=> d!1816842 (= c!1019579 e!3543078)))

(declare-fun res!2433693 () Bool)

(assert (=> d!1816842 (=> (not res!2433693) (not e!3543078))))

(assert (=> d!1816842 (= res!2433693 ((_ is Cons!63506) (exprs!5661 (Context!10323 (t!376966 (exprs!5661 lt!2289296))))))))

(assert (=> d!1816842 (= (derivationStepZipperUp!1045 (Context!10323 (t!376966 (exprs!5661 lt!2289296))) (h!69956 s!2326)) e!3543076)))

(declare-fun b!5766838 () Bool)

(assert (=> b!5766838 (= e!3543077 call!443021)))

(declare-fun b!5766839 () Bool)

(assert (=> b!5766839 (= e!3543076 e!3543077)))

(declare-fun c!1019580 () Bool)

(assert (=> b!5766839 (= c!1019580 ((_ is Cons!63506) (exprs!5661 (Context!10323 (t!376966 (exprs!5661 lt!2289296))))))))

(assert (= (and d!1816842 res!2433693) b!5766837))

(assert (= (and d!1816842 c!1019579) b!5766836))

(assert (= (and d!1816842 (not c!1019579)) b!5766839))

(assert (= (and b!5766839 c!1019580) b!5766838))

(assert (= (and b!5766839 (not c!1019580)) b!5766835))

(assert (= (or b!5766836 b!5766838) bm!443016))

(declare-fun m!6712718 () Bool)

(assert (=> b!5766836 m!6712718))

(declare-fun m!6712720 () Bool)

(assert (=> b!5766837 m!6712720))

(declare-fun m!6712722 () Bool)

(assert (=> bm!443016 m!6712722))

(assert (=> b!5766071 d!1816842))

(declare-fun b!5766840 () Bool)

(declare-fun e!3543080 () Bool)

(declare-fun e!3543081 () Bool)

(assert (=> b!5766840 (= e!3543080 e!3543081)))

(declare-fun res!2433697 () Bool)

(declare-fun call!443023 () Bool)

(assert (=> b!5766840 (= res!2433697 call!443023)))

(assert (=> b!5766840 (=> res!2433697 e!3543081)))

(declare-fun b!5766841 () Bool)

(declare-fun e!3543084 () Bool)

(declare-fun e!3543083 () Bool)

(assert (=> b!5766841 (= e!3543084 e!3543083)))

(declare-fun res!2433694 () Bool)

(assert (=> b!5766841 (=> res!2433694 e!3543083)))

(assert (=> b!5766841 (= res!2433694 ((_ is Star!15777) (regOne!32066 (regOne!32066 r!7292))))))

(declare-fun bm!443017 () Bool)

(declare-fun call!443022 () Bool)

(declare-fun c!1019581 () Bool)

(assert (=> bm!443017 (= call!443022 (nullable!5809 (ite c!1019581 (regTwo!32067 (regOne!32066 (regOne!32066 r!7292))) (regTwo!32066 (regOne!32066 (regOne!32066 r!7292))))))))

(declare-fun b!5766842 () Bool)

(declare-fun e!3543082 () Bool)

(assert (=> b!5766842 (= e!3543080 e!3543082)))

(declare-fun res!2433698 () Bool)

(assert (=> b!5766842 (= res!2433698 call!443023)))

(assert (=> b!5766842 (=> (not res!2433698) (not e!3543082))))

(declare-fun b!5766843 () Bool)

(declare-fun e!3543079 () Bool)

(assert (=> b!5766843 (= e!3543079 e!3543084)))

(declare-fun res!2433696 () Bool)

(assert (=> b!5766843 (=> (not res!2433696) (not e!3543084))))

(assert (=> b!5766843 (= res!2433696 (and (not ((_ is EmptyLang!15777) (regOne!32066 (regOne!32066 r!7292)))) (not ((_ is ElementMatch!15777) (regOne!32066 (regOne!32066 r!7292))))))))

(declare-fun d!1816846 () Bool)

(declare-fun res!2433695 () Bool)

(assert (=> d!1816846 (=> res!2433695 e!3543079)))

(assert (=> d!1816846 (= res!2433695 ((_ is EmptyExpr!15777) (regOne!32066 (regOne!32066 r!7292))))))

(assert (=> d!1816846 (= (nullableFct!1850 (regOne!32066 (regOne!32066 r!7292))) e!3543079)))

(declare-fun b!5766844 () Bool)

(assert (=> b!5766844 (= e!3543082 call!443022)))

(declare-fun bm!443018 () Bool)

(assert (=> bm!443018 (= call!443023 (nullable!5809 (ite c!1019581 (regOne!32067 (regOne!32066 (regOne!32066 r!7292))) (regOne!32066 (regOne!32066 (regOne!32066 r!7292))))))))

(declare-fun b!5766845 () Bool)

(assert (=> b!5766845 (= e!3543083 e!3543080)))

(assert (=> b!5766845 (= c!1019581 ((_ is Union!15777) (regOne!32066 (regOne!32066 r!7292))))))

(declare-fun b!5766846 () Bool)

(assert (=> b!5766846 (= e!3543081 call!443022)))

(assert (= (and d!1816846 (not res!2433695)) b!5766843))

(assert (= (and b!5766843 res!2433696) b!5766841))

(assert (= (and b!5766841 (not res!2433694)) b!5766845))

(assert (= (and b!5766845 c!1019581) b!5766840))

(assert (= (and b!5766845 (not c!1019581)) b!5766842))

(assert (= (and b!5766840 (not res!2433697)) b!5766846))

(assert (= (and b!5766842 res!2433698) b!5766844))

(assert (= (or b!5766846 b!5766844) bm!443017))

(assert (= (or b!5766840 b!5766842) bm!443018))

(declare-fun m!6712726 () Bool)

(assert (=> bm!443017 m!6712726))

(declare-fun m!6712728 () Bool)

(assert (=> bm!443018 m!6712728))

(assert (=> d!1816374 d!1816846))

(declare-fun bs!1352887 () Bool)

(declare-fun b!5766857 () Bool)

(assert (= bs!1352887 (and b!5766857 b!5766827)))

(declare-fun lambda!313210 () Int)

(assert (=> bs!1352887 (= (and (= (reg!16106 (regOne!32067 (regTwo!32066 r!7292))) (reg!16106 (regOne!32067 r!7292))) (= (regOne!32067 (regTwo!32066 r!7292)) (regOne!32067 r!7292))) (= lambda!313210 lambda!313205))))

(declare-fun bs!1352888 () Bool)

(assert (= bs!1352888 (and b!5766857 b!5765954)))

(assert (=> bs!1352888 (= (and (= (reg!16106 (regOne!32067 (regTwo!32066 r!7292))) (reg!16106 (regTwo!32066 r!7292))) (= (regOne!32067 (regTwo!32066 r!7292)) (regTwo!32066 r!7292))) (= lambda!313210 lambda!313142))))

(declare-fun bs!1352890 () Bool)

(assert (= bs!1352890 (and b!5766857 b!5766003)))

(assert (=> bs!1352890 (not (= lambda!313210 lambda!313145))))

(declare-fun bs!1352892 () Bool)

(assert (= bs!1352892 (and b!5766857 b!5765951)))

(assert (=> bs!1352892 (not (= lambda!313210 lambda!313143))))

(declare-fun bs!1352894 () Bool)

(assert (= bs!1352894 (and b!5766857 b!5765848)))

(assert (=> bs!1352894 (not (= lambda!313210 lambda!313131))))

(declare-fun bs!1352896 () Bool)

(assert (= bs!1352896 (and b!5766857 b!5766006)))

(assert (=> bs!1352896 (= (and (= (reg!16106 (regOne!32067 (regTwo!32066 r!7292))) (reg!16106 r!7292)) (= (regOne!32067 (regTwo!32066 r!7292)) r!7292)) (= lambda!313210 lambda!313144))))

(declare-fun bs!1352897 () Bool)

(assert (= bs!1352897 (and b!5766857 d!1816468)))

(assert (=> bs!1352897 (not (= lambda!313210 lambda!313151))))

(declare-fun bs!1352898 () Bool)

(assert (= bs!1352898 (and b!5766857 b!5765851)))

(assert (=> bs!1352898 (= (and (= (reg!16106 (regOne!32067 (regTwo!32066 r!7292))) (reg!16106 (regOne!32066 r!7292))) (= (regOne!32067 (regTwo!32066 r!7292)) (regOne!32066 r!7292))) (= lambda!313210 lambda!313130))))

(declare-fun bs!1352899 () Bool)

(assert (= bs!1352899 (and b!5766857 d!1816532)))

(assert (=> bs!1352899 (not (= lambda!313210 lambda!313160))))

(declare-fun bs!1352900 () Bool)

(assert (= bs!1352900 (and b!5766857 b!5765336)))

(assert (=> bs!1352900 (not (= lambda!313210 lambda!313081))))

(declare-fun bs!1352901 () Bool)

(assert (= bs!1352901 (and b!5766857 d!1816684)))

(assert (=> bs!1352901 (not (= lambda!313210 lambda!313189))))

(declare-fun bs!1352902 () Bool)

(assert (= bs!1352902 (and b!5766857 d!1816474)))

(assert (=> bs!1352902 (not (= lambda!313210 lambda!313154))))

(declare-fun bs!1352903 () Bool)

(assert (= bs!1352903 (and b!5766857 b!5766824)))

(assert (=> bs!1352903 (not (= lambda!313210 lambda!313207))))

(declare-fun bs!1352904 () Bool)

(assert (= bs!1352904 (and b!5766857 b!5766816)))

(assert (=> bs!1352904 (= (and (= (reg!16106 (regOne!32067 (regTwo!32066 r!7292))) (reg!16106 (regTwo!32067 r!7292))) (= (regOne!32067 (regTwo!32066 r!7292)) (regTwo!32067 r!7292))) (= lambda!313210 lambda!313202))))

(assert (=> bs!1352900 (not (= lambda!313210 lambda!313082))))

(declare-fun bs!1352905 () Bool)

(assert (= bs!1352905 (and b!5766857 b!5766683)))

(assert (=> bs!1352905 (not (= lambda!313210 lambda!313195))))

(declare-fun bs!1352906 () Bool)

(assert (= bs!1352906 (and b!5766857 b!5766729)))

(assert (=> bs!1352906 (= (and (= (reg!16106 (regOne!32067 (regTwo!32066 r!7292))) (reg!16106 (regOne!32067 (regOne!32066 r!7292)))) (= (regOne!32067 (regTwo!32066 r!7292)) (regOne!32067 (regOne!32066 r!7292)))) (= lambda!313210 lambda!313196))))

(assert (=> bs!1352901 (not (= lambda!313210 lambda!313188))))

(declare-fun bs!1352907 () Bool)

(assert (= bs!1352907 (and b!5766857 b!5766813)))

(assert (=> bs!1352907 (not (= lambda!313210 lambda!313204))))

(assert (=> bs!1352897 (not (= lambda!313210 lambda!313150))))

(declare-fun bs!1352908 () Bool)

(assert (= bs!1352908 (and b!5766857 b!5766726)))

(assert (=> bs!1352908 (not (= lambda!313210 lambda!313198))))

(declare-fun bs!1352909 () Bool)

(assert (= bs!1352909 (and b!5766857 b!5766686)))

(assert (=> bs!1352909 (= (and (= (reg!16106 (regOne!32067 (regTwo!32066 r!7292))) (reg!16106 (regTwo!32067 (regOne!32066 r!7292)))) (= (regOne!32067 (regTwo!32066 r!7292)) (regTwo!32067 (regOne!32066 r!7292)))) (= lambda!313210 lambda!313194))))

(assert (=> b!5766857 true))

(assert (=> b!5766857 true))

(declare-fun bs!1352910 () Bool)

(declare-fun b!5766854 () Bool)

(assert (= bs!1352910 (and b!5766854 b!5765954)))

(declare-fun lambda!313212 () Int)

(assert (=> bs!1352910 (not (= lambda!313212 lambda!313142))))

(declare-fun bs!1352911 () Bool)

(assert (= bs!1352911 (and b!5766854 b!5766003)))

(assert (=> bs!1352911 (= (and (= (regOne!32066 (regOne!32067 (regTwo!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32067 (regTwo!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313212 lambda!313145))))

(declare-fun bs!1352912 () Bool)

(assert (= bs!1352912 (and b!5766854 b!5765951)))

(assert (=> bs!1352912 (= (and (= (regOne!32066 (regOne!32067 (regTwo!32066 r!7292))) (regOne!32066 (regTwo!32066 r!7292))) (= (regTwo!32066 (regOne!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regTwo!32066 r!7292)))) (= lambda!313212 lambda!313143))))

(declare-fun bs!1352913 () Bool)

(assert (= bs!1352913 (and b!5766854 b!5765848)))

(assert (=> bs!1352913 (= (and (= (regOne!32066 (regOne!32067 (regTwo!32066 r!7292))) (regOne!32066 (regOne!32066 r!7292))) (= (regTwo!32066 (regOne!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regOne!32066 r!7292)))) (= lambda!313212 lambda!313131))))

(declare-fun bs!1352914 () Bool)

(assert (= bs!1352914 (and b!5766854 b!5766006)))

(assert (=> bs!1352914 (not (= lambda!313212 lambda!313144))))

(declare-fun bs!1352915 () Bool)

(assert (= bs!1352915 (and b!5766854 d!1816468)))

(assert (=> bs!1352915 (= (and (= (regOne!32066 (regOne!32067 (regTwo!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32067 (regTwo!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313212 lambda!313151))))

(declare-fun bs!1352916 () Bool)

(assert (= bs!1352916 (and b!5766854 b!5765851)))

(assert (=> bs!1352916 (not (= lambda!313212 lambda!313130))))

(declare-fun bs!1352917 () Bool)

(assert (= bs!1352917 (and b!5766854 d!1816532)))

(assert (=> bs!1352917 (not (= lambda!313212 lambda!313160))))

(declare-fun bs!1352918 () Bool)

(assert (= bs!1352918 (and b!5766854 b!5765336)))

(assert (=> bs!1352918 (not (= lambda!313212 lambda!313081))))

(declare-fun bs!1352919 () Bool)

(assert (= bs!1352919 (and b!5766854 b!5766827)))

(assert (=> bs!1352919 (not (= lambda!313212 lambda!313205))))

(declare-fun bs!1352920 () Bool)

(assert (= bs!1352920 (and b!5766854 b!5766857)))

(assert (=> bs!1352920 (not (= lambda!313212 lambda!313210))))

(declare-fun bs!1352921 () Bool)

(assert (= bs!1352921 (and b!5766854 d!1816684)))

(assert (=> bs!1352921 (= (and (= (regOne!32066 (regOne!32067 (regTwo!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32067 (regTwo!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313212 lambda!313189))))

(declare-fun bs!1352922 () Bool)

(assert (= bs!1352922 (and b!5766854 d!1816474)))

(assert (=> bs!1352922 (not (= lambda!313212 lambda!313154))))

(declare-fun bs!1352923 () Bool)

(assert (= bs!1352923 (and b!5766854 b!5766824)))

(assert (=> bs!1352923 (= (and (= (regOne!32066 (regOne!32067 (regTwo!32066 r!7292))) (regOne!32066 (regOne!32067 r!7292))) (= (regTwo!32066 (regOne!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regOne!32067 r!7292)))) (= lambda!313212 lambda!313207))))

(declare-fun bs!1352924 () Bool)

(assert (= bs!1352924 (and b!5766854 b!5766816)))

(assert (=> bs!1352924 (not (= lambda!313212 lambda!313202))))

(assert (=> bs!1352918 (= (and (= (regOne!32066 (regOne!32067 (regTwo!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regOne!32067 (regTwo!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313212 lambda!313082))))

(declare-fun bs!1352925 () Bool)

(assert (= bs!1352925 (and b!5766854 b!5766683)))

(assert (=> bs!1352925 (= (and (= (regOne!32066 (regOne!32067 (regTwo!32066 r!7292))) (regOne!32066 (regTwo!32067 (regOne!32066 r!7292)))) (= (regTwo!32066 (regOne!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regTwo!32067 (regOne!32066 r!7292))))) (= lambda!313212 lambda!313195))))

(declare-fun bs!1352926 () Bool)

(assert (= bs!1352926 (and b!5766854 b!5766729)))

(assert (=> bs!1352926 (not (= lambda!313212 lambda!313196))))

(assert (=> bs!1352921 (not (= lambda!313212 lambda!313188))))

(declare-fun bs!1352927 () Bool)

(assert (= bs!1352927 (and b!5766854 b!5766813)))

(assert (=> bs!1352927 (= (and (= (regOne!32066 (regOne!32067 (regTwo!32066 r!7292))) (regOne!32066 (regTwo!32067 r!7292))) (= (regTwo!32066 (regOne!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regTwo!32067 r!7292)))) (= lambda!313212 lambda!313204))))

(assert (=> bs!1352915 (not (= lambda!313212 lambda!313150))))

(declare-fun bs!1352928 () Bool)

(assert (= bs!1352928 (and b!5766854 b!5766726)))

(assert (=> bs!1352928 (= (and (= (regOne!32066 (regOne!32067 (regTwo!32066 r!7292))) (regOne!32066 (regOne!32067 (regOne!32066 r!7292)))) (= (regTwo!32066 (regOne!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regOne!32067 (regOne!32066 r!7292))))) (= lambda!313212 lambda!313198))))

(declare-fun bs!1352929 () Bool)

(assert (= bs!1352929 (and b!5766854 b!5766686)))

(assert (=> bs!1352929 (not (= lambda!313212 lambda!313194))))

(assert (=> b!5766854 true))

(assert (=> b!5766854 true))

(declare-fun b!5766847 () Bool)

(declare-fun c!1019583 () Bool)

(assert (=> b!5766847 (= c!1019583 ((_ is Union!15777) (regOne!32067 (regTwo!32066 r!7292))))))

(declare-fun e!3543088 () Bool)

(declare-fun e!3543089 () Bool)

(assert (=> b!5766847 (= e!3543088 e!3543089)))

(declare-fun b!5766848 () Bool)

(declare-fun e!3543087 () Bool)

(assert (=> b!5766848 (= e!3543089 e!3543087)))

(declare-fun res!2433699 () Bool)

(assert (=> b!5766848 (= res!2433699 (matchRSpec!2880 (regOne!32067 (regOne!32067 (regTwo!32066 r!7292))) s!2326))))

(assert (=> b!5766848 (=> res!2433699 e!3543087)))

(declare-fun c!1019582 () Bool)

(declare-fun bm!443019 () Bool)

(declare-fun call!443025 () Bool)

(assert (=> bm!443019 (= call!443025 (Exists!2877 (ite c!1019582 lambda!313210 lambda!313212)))))

(declare-fun bm!443020 () Bool)

(declare-fun call!443024 () Bool)

(assert (=> bm!443020 (= call!443024 (isEmpty!35400 s!2326))))

(declare-fun b!5766850 () Bool)

(assert (=> b!5766850 (= e!3543087 (matchRSpec!2880 (regTwo!32067 (regOne!32067 (regTwo!32066 r!7292))) s!2326))))

(declare-fun b!5766851 () Bool)

(declare-fun e!3543085 () Bool)

(assert (=> b!5766851 (= e!3543085 call!443024)))

(declare-fun b!5766852 () Bool)

(declare-fun e!3543086 () Bool)

(assert (=> b!5766852 (= e!3543089 e!3543086)))

(assert (=> b!5766852 (= c!1019582 ((_ is Star!15777) (regOne!32067 (regTwo!32066 r!7292))))))

(declare-fun b!5766853 () Bool)

(declare-fun res!2433700 () Bool)

(declare-fun e!3543091 () Bool)

(assert (=> b!5766853 (=> res!2433700 e!3543091)))

(assert (=> b!5766853 (= res!2433700 call!443024)))

(assert (=> b!5766853 (= e!3543086 e!3543091)))

(assert (=> b!5766854 (= e!3543086 call!443025)))

(declare-fun b!5766855 () Bool)

(declare-fun e!3543090 () Bool)

(assert (=> b!5766855 (= e!3543085 e!3543090)))

(declare-fun res!2433701 () Bool)

(assert (=> b!5766855 (= res!2433701 (not ((_ is EmptyLang!15777) (regOne!32067 (regTwo!32066 r!7292)))))))

(assert (=> b!5766855 (=> (not res!2433701) (not e!3543090))))

(declare-fun b!5766856 () Bool)

(assert (=> b!5766856 (= e!3543088 (= s!2326 (Cons!63508 (c!1019159 (regOne!32067 (regTwo!32066 r!7292))) Nil!63508)))))

(assert (=> b!5766857 (= e!3543091 call!443025)))

(declare-fun b!5766849 () Bool)

(declare-fun c!1019585 () Bool)

(assert (=> b!5766849 (= c!1019585 ((_ is ElementMatch!15777) (regOne!32067 (regTwo!32066 r!7292))))))

(assert (=> b!5766849 (= e!3543090 e!3543088)))

(declare-fun d!1816850 () Bool)

(declare-fun c!1019584 () Bool)

(assert (=> d!1816850 (= c!1019584 ((_ is EmptyExpr!15777) (regOne!32067 (regTwo!32066 r!7292))))))

(assert (=> d!1816850 (= (matchRSpec!2880 (regOne!32067 (regTwo!32066 r!7292)) s!2326) e!3543085)))

(assert (= (and d!1816850 c!1019584) b!5766851))

(assert (= (and d!1816850 (not c!1019584)) b!5766855))

(assert (= (and b!5766855 res!2433701) b!5766849))

(assert (= (and b!5766849 c!1019585) b!5766856))

(assert (= (and b!5766849 (not c!1019585)) b!5766847))

(assert (= (and b!5766847 c!1019583) b!5766848))

(assert (= (and b!5766847 (not c!1019583)) b!5766852))

(assert (= (and b!5766848 (not res!2433699)) b!5766850))

(assert (= (and b!5766852 c!1019582) b!5766853))

(assert (= (and b!5766852 (not c!1019582)) b!5766854))

(assert (= (and b!5766853 (not res!2433700)) b!5766857))

(assert (= (or b!5766857 b!5766854) bm!443019))

(assert (= (or b!5766851 b!5766853) bm!443020))

(declare-fun m!6712744 () Bool)

(assert (=> b!5766848 m!6712744))

(declare-fun m!6712746 () Bool)

(assert (=> bm!443019 m!6712746))

(assert (=> bm!443020 m!6711578))

(declare-fun m!6712748 () Bool)

(assert (=> b!5766850 m!6712748))

(assert (=> b!5765943 d!1816850))

(assert (=> b!5766115 d!1816486))

(declare-fun d!1816866 () Bool)

(assert (=> d!1816866 (= (head!12190 (unfocusZipperList!1205 zl!343)) (h!69954 (unfocusZipperList!1205 zl!343)))))

(assert (=> b!5765713 d!1816866))

(declare-fun bs!1352932 () Bool)

(declare-fun d!1816868 () Bool)

(assert (= bs!1352932 (and d!1816868 d!1816620)))

(declare-fun lambda!313214 () Int)

(assert (=> bs!1352932 (= lambda!313214 lambda!313172)))

(declare-fun bs!1352933 () Bool)

(assert (= bs!1352933 (and d!1816868 d!1816628)))

(assert (=> bs!1352933 (= lambda!313214 lambda!313173)))

(declare-fun bs!1352935 () Bool)

(assert (= bs!1352935 (and d!1816868 d!1816642)))

(assert (=> bs!1352935 (= lambda!313214 lambda!313174)))

(declare-fun bs!1352936 () Bool)

(assert (= bs!1352936 (and d!1816868 d!1816662)))

(assert (=> bs!1352936 (= lambda!313214 lambda!313175)))

(assert (=> d!1816868 (= (nullableZipper!1704 lt!2289295) (exists!2243 lt!2289295 lambda!313214))))

(declare-fun bs!1352939 () Bool)

(assert (= bs!1352939 d!1816868))

(declare-fun m!6712750 () Bool)

(assert (=> bs!1352939 m!6712750))

(assert (=> b!5765380 d!1816868))

(declare-fun bs!1352946 () Bool)

(declare-fun b!5766909 () Bool)

(assert (= bs!1352946 (and b!5766909 b!5766854)))

(declare-fun lambda!313215 () Int)

(assert (=> bs!1352946 (not (= lambda!313215 lambda!313212))))

(declare-fun bs!1352948 () Bool)

(assert (= bs!1352948 (and b!5766909 b!5765954)))

(assert (=> bs!1352948 (= (and (= (reg!16106 (regTwo!32067 (regTwo!32066 r!7292))) (reg!16106 (regTwo!32066 r!7292))) (= (regTwo!32067 (regTwo!32066 r!7292)) (regTwo!32066 r!7292))) (= lambda!313215 lambda!313142))))

(declare-fun bs!1352949 () Bool)

(assert (= bs!1352949 (and b!5766909 b!5766003)))

(assert (=> bs!1352949 (not (= lambda!313215 lambda!313145))))

(declare-fun bs!1352951 () Bool)

(assert (= bs!1352951 (and b!5766909 b!5765951)))

(assert (=> bs!1352951 (not (= lambda!313215 lambda!313143))))

(declare-fun bs!1352952 () Bool)

(assert (= bs!1352952 (and b!5766909 b!5765848)))

(assert (=> bs!1352952 (not (= lambda!313215 lambda!313131))))

(declare-fun bs!1352954 () Bool)

(assert (= bs!1352954 (and b!5766909 b!5766006)))

(assert (=> bs!1352954 (= (and (= (reg!16106 (regTwo!32067 (regTwo!32066 r!7292))) (reg!16106 r!7292)) (= (regTwo!32067 (regTwo!32066 r!7292)) r!7292)) (= lambda!313215 lambda!313144))))

(declare-fun bs!1352956 () Bool)

(assert (= bs!1352956 (and b!5766909 d!1816468)))

(assert (=> bs!1352956 (not (= lambda!313215 lambda!313151))))

(declare-fun bs!1352957 () Bool)

(assert (= bs!1352957 (and b!5766909 b!5765851)))

(assert (=> bs!1352957 (= (and (= (reg!16106 (regTwo!32067 (regTwo!32066 r!7292))) (reg!16106 (regOne!32066 r!7292))) (= (regTwo!32067 (regTwo!32066 r!7292)) (regOne!32066 r!7292))) (= lambda!313215 lambda!313130))))

(declare-fun bs!1352958 () Bool)

(assert (= bs!1352958 (and b!5766909 d!1816532)))

(assert (=> bs!1352958 (not (= lambda!313215 lambda!313160))))

(declare-fun bs!1352959 () Bool)

(assert (= bs!1352959 (and b!5766909 b!5765336)))

(assert (=> bs!1352959 (not (= lambda!313215 lambda!313081))))

(declare-fun bs!1352960 () Bool)

(assert (= bs!1352960 (and b!5766909 b!5766827)))

(assert (=> bs!1352960 (= (and (= (reg!16106 (regTwo!32067 (regTwo!32066 r!7292))) (reg!16106 (regOne!32067 r!7292))) (= (regTwo!32067 (regTwo!32066 r!7292)) (regOne!32067 r!7292))) (= lambda!313215 lambda!313205))))

(declare-fun bs!1352961 () Bool)

(assert (= bs!1352961 (and b!5766909 b!5766857)))

(assert (=> bs!1352961 (= (and (= (reg!16106 (regTwo!32067 (regTwo!32066 r!7292))) (reg!16106 (regOne!32067 (regTwo!32066 r!7292)))) (= (regTwo!32067 (regTwo!32066 r!7292)) (regOne!32067 (regTwo!32066 r!7292)))) (= lambda!313215 lambda!313210))))

(declare-fun bs!1352963 () Bool)

(assert (= bs!1352963 (and b!5766909 d!1816684)))

(assert (=> bs!1352963 (not (= lambda!313215 lambda!313189))))

(declare-fun bs!1352965 () Bool)

(assert (= bs!1352965 (and b!5766909 d!1816474)))

(assert (=> bs!1352965 (not (= lambda!313215 lambda!313154))))

(declare-fun bs!1352967 () Bool)

(assert (= bs!1352967 (and b!5766909 b!5766824)))

(assert (=> bs!1352967 (not (= lambda!313215 lambda!313207))))

(declare-fun bs!1352969 () Bool)

(assert (= bs!1352969 (and b!5766909 b!5766816)))

(assert (=> bs!1352969 (= (and (= (reg!16106 (regTwo!32067 (regTwo!32066 r!7292))) (reg!16106 (regTwo!32067 r!7292))) (= (regTwo!32067 (regTwo!32066 r!7292)) (regTwo!32067 r!7292))) (= lambda!313215 lambda!313202))))

(assert (=> bs!1352959 (not (= lambda!313215 lambda!313082))))

(declare-fun bs!1352972 () Bool)

(assert (= bs!1352972 (and b!5766909 b!5766683)))

(assert (=> bs!1352972 (not (= lambda!313215 lambda!313195))))

(declare-fun bs!1352974 () Bool)

(assert (= bs!1352974 (and b!5766909 b!5766729)))

(assert (=> bs!1352974 (= (and (= (reg!16106 (regTwo!32067 (regTwo!32066 r!7292))) (reg!16106 (regOne!32067 (regOne!32066 r!7292)))) (= (regTwo!32067 (regTwo!32066 r!7292)) (regOne!32067 (regOne!32066 r!7292)))) (= lambda!313215 lambda!313196))))

(assert (=> bs!1352963 (not (= lambda!313215 lambda!313188))))

(declare-fun bs!1352976 () Bool)

(assert (= bs!1352976 (and b!5766909 b!5766813)))

(assert (=> bs!1352976 (not (= lambda!313215 lambda!313204))))

(assert (=> bs!1352956 (not (= lambda!313215 lambda!313150))))

(declare-fun bs!1352979 () Bool)

(assert (= bs!1352979 (and b!5766909 b!5766726)))

(assert (=> bs!1352979 (not (= lambda!313215 lambda!313198))))

(declare-fun bs!1352980 () Bool)

(assert (= bs!1352980 (and b!5766909 b!5766686)))

(assert (=> bs!1352980 (= (and (= (reg!16106 (regTwo!32067 (regTwo!32066 r!7292))) (reg!16106 (regTwo!32067 (regOne!32066 r!7292)))) (= (regTwo!32067 (regTwo!32066 r!7292)) (regTwo!32067 (regOne!32066 r!7292)))) (= lambda!313215 lambda!313194))))

(assert (=> b!5766909 true))

(assert (=> b!5766909 true))

(declare-fun bs!1352986 () Bool)

(declare-fun b!5766906 () Bool)

(assert (= bs!1352986 (and b!5766906 b!5766854)))

(declare-fun lambda!313217 () Int)

(assert (=> bs!1352986 (= (and (= (regOne!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regOne!32066 (regOne!32067 (regTwo!32066 r!7292)))) (= (regTwo!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regOne!32067 (regTwo!32066 r!7292))))) (= lambda!313217 lambda!313212))))

(declare-fun bs!1352988 () Bool)

(assert (= bs!1352988 (and b!5766906 b!5765954)))

(assert (=> bs!1352988 (not (= lambda!313217 lambda!313142))))

(declare-fun bs!1352989 () Bool)

(assert (= bs!1352989 (and b!5766906 b!5766003)))

(assert (=> bs!1352989 (= (and (= (regOne!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313217 lambda!313145))))

(declare-fun bs!1352990 () Bool)

(assert (= bs!1352990 (and b!5766906 b!5765951)))

(assert (=> bs!1352990 (= (and (= (regOne!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regOne!32066 (regTwo!32066 r!7292))) (= (regTwo!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regTwo!32066 r!7292)))) (= lambda!313217 lambda!313143))))

(declare-fun bs!1352991 () Bool)

(assert (= bs!1352991 (and b!5766906 b!5765848)))

(assert (=> bs!1352991 (= (and (= (regOne!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regOne!32066 (regOne!32066 r!7292))) (= (regTwo!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regOne!32066 r!7292)))) (= lambda!313217 lambda!313131))))

(declare-fun bs!1352992 () Bool)

(assert (= bs!1352992 (and b!5766906 b!5766006)))

(assert (=> bs!1352992 (not (= lambda!313217 lambda!313144))))

(declare-fun bs!1352993 () Bool)

(assert (= bs!1352993 (and b!5766906 d!1816468)))

(assert (=> bs!1352993 (= (and (= (regOne!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313217 lambda!313151))))

(declare-fun bs!1352994 () Bool)

(assert (= bs!1352994 (and b!5766906 b!5765851)))

(assert (=> bs!1352994 (not (= lambda!313217 lambda!313130))))

(declare-fun bs!1352995 () Bool)

(assert (= bs!1352995 (and b!5766906 d!1816532)))

(assert (=> bs!1352995 (not (= lambda!313217 lambda!313160))))

(declare-fun bs!1352996 () Bool)

(assert (= bs!1352996 (and b!5766906 b!5765336)))

(assert (=> bs!1352996 (not (= lambda!313217 lambda!313081))))

(declare-fun bs!1352997 () Bool)

(assert (= bs!1352997 (and b!5766906 b!5766827)))

(assert (=> bs!1352997 (not (= lambda!313217 lambda!313205))))

(declare-fun bs!1352998 () Bool)

(assert (= bs!1352998 (and b!5766906 b!5766857)))

(assert (=> bs!1352998 (not (= lambda!313217 lambda!313210))))

(declare-fun bs!1352999 () Bool)

(assert (= bs!1352999 (and b!5766906 d!1816684)))

(assert (=> bs!1352999 (= (and (= (regOne!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313217 lambda!313189))))

(declare-fun bs!1353000 () Bool)

(assert (= bs!1353000 (and b!5766906 d!1816474)))

(assert (=> bs!1353000 (not (= lambda!313217 lambda!313154))))

(declare-fun bs!1353001 () Bool)

(assert (= bs!1353001 (and b!5766906 b!5766909)))

(assert (=> bs!1353001 (not (= lambda!313217 lambda!313215))))

(declare-fun bs!1353002 () Bool)

(assert (= bs!1353002 (and b!5766906 b!5766824)))

(assert (=> bs!1353002 (= (and (= (regOne!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regOne!32066 (regOne!32067 r!7292))) (= (regTwo!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regOne!32067 r!7292)))) (= lambda!313217 lambda!313207))))

(declare-fun bs!1353003 () Bool)

(assert (= bs!1353003 (and b!5766906 b!5766816)))

(assert (=> bs!1353003 (not (= lambda!313217 lambda!313202))))

(assert (=> bs!1352996 (= (and (= (regOne!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regOne!32066 r!7292)) (= (regTwo!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regTwo!32066 r!7292))) (= lambda!313217 lambda!313082))))

(declare-fun bs!1353004 () Bool)

(assert (= bs!1353004 (and b!5766906 b!5766683)))

(assert (=> bs!1353004 (= (and (= (regOne!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regOne!32066 (regTwo!32067 (regOne!32066 r!7292)))) (= (regTwo!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regTwo!32067 (regOne!32066 r!7292))))) (= lambda!313217 lambda!313195))))

(declare-fun bs!1353005 () Bool)

(assert (= bs!1353005 (and b!5766906 b!5766729)))

(assert (=> bs!1353005 (not (= lambda!313217 lambda!313196))))

(assert (=> bs!1352999 (not (= lambda!313217 lambda!313188))))

(declare-fun bs!1353007 () Bool)

(assert (= bs!1353007 (and b!5766906 b!5766813)))

(assert (=> bs!1353007 (= (and (= (regOne!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regOne!32066 (regTwo!32067 r!7292))) (= (regTwo!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regTwo!32067 r!7292)))) (= lambda!313217 lambda!313204))))

(assert (=> bs!1352993 (not (= lambda!313217 lambda!313150))))

(declare-fun bs!1353008 () Bool)

(assert (= bs!1353008 (and b!5766906 b!5766726)))

(assert (=> bs!1353008 (= (and (= (regOne!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regOne!32066 (regOne!32067 (regOne!32066 r!7292)))) (= (regTwo!32066 (regTwo!32067 (regTwo!32066 r!7292))) (regTwo!32066 (regOne!32067 (regOne!32066 r!7292))))) (= lambda!313217 lambda!313198))))

(declare-fun bs!1353009 () Bool)

(assert (= bs!1353009 (and b!5766906 b!5766686)))

(assert (=> bs!1353009 (not (= lambda!313217 lambda!313194))))

(assert (=> b!5766906 true))

(assert (=> b!5766906 true))

(declare-fun b!5766899 () Bool)

(declare-fun c!1019596 () Bool)

(assert (=> b!5766899 (= c!1019596 ((_ is Union!15777) (regTwo!32067 (regTwo!32066 r!7292))))))

(declare-fun e!3543127 () Bool)

(declare-fun e!3543128 () Bool)

(assert (=> b!5766899 (= e!3543127 e!3543128)))

(declare-fun b!5766900 () Bool)

(declare-fun e!3543126 () Bool)

(assert (=> b!5766900 (= e!3543128 e!3543126)))

(declare-fun res!2433725 () Bool)

(assert (=> b!5766900 (= res!2433725 (matchRSpec!2880 (regOne!32067 (regTwo!32067 (regTwo!32066 r!7292))) s!2326))))

(assert (=> b!5766900 (=> res!2433725 e!3543126)))

(declare-fun c!1019595 () Bool)

(declare-fun bm!443032 () Bool)

(declare-fun call!443038 () Bool)

(assert (=> bm!443032 (= call!443038 (Exists!2877 (ite c!1019595 lambda!313215 lambda!313217)))))

(declare-fun bm!443033 () Bool)

(declare-fun call!443037 () Bool)

(assert (=> bm!443033 (= call!443037 (isEmpty!35400 s!2326))))

(declare-fun b!5766902 () Bool)

(assert (=> b!5766902 (= e!3543126 (matchRSpec!2880 (regTwo!32067 (regTwo!32067 (regTwo!32066 r!7292))) s!2326))))

(declare-fun b!5766903 () Bool)

(declare-fun e!3543124 () Bool)

(assert (=> b!5766903 (= e!3543124 call!443037)))

(declare-fun b!5766904 () Bool)

(declare-fun e!3543125 () Bool)

(assert (=> b!5766904 (= e!3543128 e!3543125)))

(assert (=> b!5766904 (= c!1019595 ((_ is Star!15777) (regTwo!32067 (regTwo!32066 r!7292))))))

(declare-fun b!5766905 () Bool)

(declare-fun res!2433726 () Bool)

(declare-fun e!3543130 () Bool)

(assert (=> b!5766905 (=> res!2433726 e!3543130)))

(assert (=> b!5766905 (= res!2433726 call!443037)))

(assert (=> b!5766905 (= e!3543125 e!3543130)))

(assert (=> b!5766906 (= e!3543125 call!443038)))

(declare-fun b!5766907 () Bool)

(declare-fun e!3543129 () Bool)

(assert (=> b!5766907 (= e!3543124 e!3543129)))

(declare-fun res!2433727 () Bool)

(assert (=> b!5766907 (= res!2433727 (not ((_ is EmptyLang!15777) (regTwo!32067 (regTwo!32066 r!7292)))))))

(assert (=> b!5766907 (=> (not res!2433727) (not e!3543129))))

(declare-fun b!5766908 () Bool)

(assert (=> b!5766908 (= e!3543127 (= s!2326 (Cons!63508 (c!1019159 (regTwo!32067 (regTwo!32066 r!7292))) Nil!63508)))))

(assert (=> b!5766909 (= e!3543130 call!443038)))

(declare-fun b!5766901 () Bool)

(declare-fun c!1019598 () Bool)

(assert (=> b!5766901 (= c!1019598 ((_ is ElementMatch!15777) (regTwo!32067 (regTwo!32066 r!7292))))))

(assert (=> b!5766901 (= e!3543129 e!3543127)))

(declare-fun d!1816870 () Bool)

(declare-fun c!1019597 () Bool)

(assert (=> d!1816870 (= c!1019597 ((_ is EmptyExpr!15777) (regTwo!32067 (regTwo!32066 r!7292))))))

(assert (=> d!1816870 (= (matchRSpec!2880 (regTwo!32067 (regTwo!32066 r!7292)) s!2326) e!3543124)))

(assert (= (and d!1816870 c!1019597) b!5766903))

(assert (= (and d!1816870 (not c!1019597)) b!5766907))

(assert (= (and b!5766907 res!2433727) b!5766901))

(assert (= (and b!5766901 c!1019598) b!5766908))

(assert (= (and b!5766901 (not c!1019598)) b!5766899))

(assert (= (and b!5766899 c!1019596) b!5766900))

(assert (= (and b!5766899 (not c!1019596)) b!5766904))

(assert (= (and b!5766900 (not res!2433725)) b!5766902))

(assert (= (and b!5766904 c!1019595) b!5766905))

(assert (= (and b!5766904 (not c!1019595)) b!5766906))

(assert (= (and b!5766905 (not res!2433726)) b!5766909))

(assert (= (or b!5766909 b!5766906) bm!443032))

(assert (= (or b!5766903 b!5766905) bm!443033))

(declare-fun m!6712770 () Bool)

(assert (=> b!5766900 m!6712770))

(declare-fun m!6712772 () Bool)

(assert (=> bm!443032 m!6712772))

(assert (=> bm!443033 m!6711578))

(declare-fun m!6712774 () Bool)

(assert (=> b!5766902 m!6712774))

(assert (=> b!5765947 d!1816870))

(declare-fun d!1816878 () Bool)

(declare-fun res!2433737 () Bool)

(declare-fun e!3543145 () Bool)

(assert (=> d!1816878 (=> res!2433737 e!3543145)))

(assert (=> d!1816878 (= res!2433737 ((_ is Nil!63507) lt!2289321))))

(assert (=> d!1816878 (= (noDuplicate!1684 lt!2289321) e!3543145)))

(declare-fun b!5766933 () Bool)

(declare-fun e!3543146 () Bool)

(assert (=> b!5766933 (= e!3543145 e!3543146)))

(declare-fun res!2433738 () Bool)

(assert (=> b!5766933 (=> (not res!2433738) (not e!3543146))))

(declare-fun contains!19869 (List!63631 Context!10322) Bool)

(assert (=> b!5766933 (= res!2433738 (not (contains!19869 (t!376967 lt!2289321) (h!69955 lt!2289321))))))

(declare-fun b!5766934 () Bool)

(assert (=> b!5766934 (= e!3543146 (noDuplicate!1684 (t!376967 lt!2289321)))))

(assert (= (and d!1816878 (not res!2433737)) b!5766933))

(assert (= (and b!5766933 res!2433738) b!5766934))

(declare-fun m!6712776 () Bool)

(assert (=> b!5766933 m!6712776))

(declare-fun m!6712778 () Bool)

(assert (=> b!5766934 m!6712778))

(assert (=> d!1816336 d!1816878))

(declare-fun d!1816880 () Bool)

(declare-fun e!3543162 () Bool)

(assert (=> d!1816880 e!3543162))

(declare-fun res!2433747 () Bool)

(assert (=> d!1816880 (=> (not res!2433747) (not e!3543162))))

(declare-fun res!2433748 () List!63631)

(assert (=> d!1816880 (= res!2433747 (noDuplicate!1684 res!2433748))))

(declare-fun e!3543163 () Bool)

(assert (=> d!1816880 e!3543163))

(assert (=> d!1816880 (= (choose!43725 z!1189) res!2433748)))

(declare-fun b!5766956 () Bool)

(declare-fun e!3543161 () Bool)

(declare-fun tp!1593489 () Bool)

(assert (=> b!5766956 (= e!3543161 tp!1593489)))

(declare-fun b!5766955 () Bool)

(declare-fun tp!1593490 () Bool)

(assert (=> b!5766955 (= e!3543163 (and (inv!82689 (h!69955 res!2433748)) e!3543161 tp!1593490))))

(declare-fun b!5766957 () Bool)

(assert (=> b!5766957 (= e!3543162 (= (content!11593 res!2433748) z!1189))))

(assert (= b!5766955 b!5766956))

(assert (= (and d!1816880 ((_ is Cons!63507) res!2433748)) b!5766955))

(assert (= (and d!1816880 res!2433747) b!5766957))

(declare-fun m!6712794 () Bool)

(assert (=> d!1816880 m!6712794))

(declare-fun m!6712796 () Bool)

(assert (=> b!5766955 m!6712796))

(declare-fun m!6712798 () Bool)

(assert (=> b!5766957 m!6712798))

(assert (=> d!1816336 d!1816880))

(assert (=> b!5766009 d!1816508))

(assert (=> d!1816322 d!1816512))

(assert (=> bm!442840 d!1816526))

(declare-fun d!1816884 () Bool)

(assert (=> d!1816884 (= (isEmpty!35398 (t!376966 (unfocusZipperList!1205 zl!343))) ((_ is Nil!63506) (t!376966 (unfocusZipperList!1205 zl!343))))))

(assert (=> b!5765709 d!1816884))

(declare-fun d!1816886 () Bool)

(assert (=> d!1816886 (= (isConcat!785 lt!2289335) ((_ is Concat!24622) lt!2289335))))

(assert (=> b!5765589 d!1816886))

(declare-fun b!5766958 () Bool)

(declare-fun e!3543169 () Bool)

(declare-fun e!3543165 () Bool)

(assert (=> b!5766958 (= e!3543169 e!3543165)))

(declare-fun res!2433749 () Bool)

(assert (=> b!5766958 (=> res!2433749 e!3543165)))

(declare-fun call!443045 () Bool)

(assert (=> b!5766958 (= res!2433749 call!443045)))

(declare-fun bm!443040 () Bool)

(assert (=> bm!443040 (= call!443045 (isEmpty!35400 (tail!11284 s!2326)))))

(declare-fun b!5766960 () Bool)

(assert (=> b!5766960 (= e!3543165 (not (= (head!12189 (tail!11284 s!2326)) (c!1019159 (derivativeStep!4558 (regTwo!32066 r!7292) (head!12189 s!2326))))))))

(declare-fun b!5766961 () Bool)

(declare-fun res!2433750 () Bool)

(declare-fun e!3543168 () Bool)

(assert (=> b!5766961 (=> res!2433750 e!3543168)))

(declare-fun e!3543170 () Bool)

(assert (=> b!5766961 (= res!2433750 e!3543170)))

(declare-fun res!2433752 () Bool)

(assert (=> b!5766961 (=> (not res!2433752) (not e!3543170))))

(declare-fun lt!2289450 () Bool)

(assert (=> b!5766961 (= res!2433752 lt!2289450)))

(declare-fun b!5766962 () Bool)

(assert (=> b!5766962 (= e!3543168 e!3543169)))

(declare-fun res!2433751 () Bool)

(assert (=> b!5766962 (=> (not res!2433751) (not e!3543169))))

(assert (=> b!5766962 (= res!2433751 (not lt!2289450))))

(declare-fun b!5766963 () Bool)

(declare-fun res!2433753 () Bool)

(assert (=> b!5766963 (=> (not res!2433753) (not e!3543170))))

(assert (=> b!5766963 (= res!2433753 (isEmpty!35400 (tail!11284 (tail!11284 s!2326))))))

(declare-fun b!5766964 () Bool)

(declare-fun res!2433754 () Bool)

(assert (=> b!5766964 (=> (not res!2433754) (not e!3543170))))

(assert (=> b!5766964 (= res!2433754 (not call!443045))))

(declare-fun b!5766965 () Bool)

(declare-fun e!3543166 () Bool)

(declare-fun e!3543167 () Bool)

(assert (=> b!5766965 (= e!3543166 e!3543167)))

(declare-fun c!1019611 () Bool)

(assert (=> b!5766965 (= c!1019611 ((_ is EmptyLang!15777) (derivativeStep!4558 (regTwo!32066 r!7292) (head!12189 s!2326))))))

(declare-fun b!5766966 () Bool)

(assert (=> b!5766966 (= e!3543166 (= lt!2289450 call!443045))))

(declare-fun b!5766967 () Bool)

(declare-fun e!3543164 () Bool)

(assert (=> b!5766967 (= e!3543164 (matchR!7962 (derivativeStep!4558 (derivativeStep!4558 (regTwo!32066 r!7292) (head!12189 s!2326)) (head!12189 (tail!11284 s!2326))) (tail!11284 (tail!11284 s!2326))))))

(declare-fun d!1816888 () Bool)

(assert (=> d!1816888 e!3543166))

(declare-fun c!1019613 () Bool)

(assert (=> d!1816888 (= c!1019613 ((_ is EmptyExpr!15777) (derivativeStep!4558 (regTwo!32066 r!7292) (head!12189 s!2326))))))

(assert (=> d!1816888 (= lt!2289450 e!3543164)))

(declare-fun c!1019612 () Bool)

(assert (=> d!1816888 (= c!1019612 (isEmpty!35400 (tail!11284 s!2326)))))

(assert (=> d!1816888 (validRegex!7513 (derivativeStep!4558 (regTwo!32066 r!7292) (head!12189 s!2326)))))

(assert (=> d!1816888 (= (matchR!7962 (derivativeStep!4558 (regTwo!32066 r!7292) (head!12189 s!2326)) (tail!11284 s!2326)) lt!2289450)))

(declare-fun b!5766959 () Bool)

(assert (=> b!5766959 (= e!3543167 (not lt!2289450))))

(declare-fun b!5766968 () Bool)

(assert (=> b!5766968 (= e!3543170 (= (head!12189 (tail!11284 s!2326)) (c!1019159 (derivativeStep!4558 (regTwo!32066 r!7292) (head!12189 s!2326)))))))

(declare-fun b!5766969 () Bool)

(assert (=> b!5766969 (= e!3543164 (nullable!5809 (derivativeStep!4558 (regTwo!32066 r!7292) (head!12189 s!2326))))))

(declare-fun b!5766970 () Bool)

(declare-fun res!2433756 () Bool)

(assert (=> b!5766970 (=> res!2433756 e!3543165)))

(assert (=> b!5766970 (= res!2433756 (not (isEmpty!35400 (tail!11284 (tail!11284 s!2326)))))))

(declare-fun b!5766971 () Bool)

(declare-fun res!2433755 () Bool)

(assert (=> b!5766971 (=> res!2433755 e!3543168)))

(assert (=> b!5766971 (= res!2433755 (not ((_ is ElementMatch!15777) (derivativeStep!4558 (regTwo!32066 r!7292) (head!12189 s!2326)))))))

(assert (=> b!5766971 (= e!3543167 e!3543168)))

(assert (= (and d!1816888 c!1019612) b!5766969))

(assert (= (and d!1816888 (not c!1019612)) b!5766967))

(assert (= (and d!1816888 c!1019613) b!5766966))

(assert (= (and d!1816888 (not c!1019613)) b!5766965))

(assert (= (and b!5766965 c!1019611) b!5766959))

(assert (= (and b!5766965 (not c!1019611)) b!5766971))

(assert (= (and b!5766971 (not res!2433755)) b!5766961))

(assert (= (and b!5766961 res!2433752) b!5766964))

(assert (= (and b!5766964 res!2433754) b!5766963))

(assert (= (and b!5766963 res!2433753) b!5766968))

(assert (= (and b!5766961 (not res!2433750)) b!5766962))

(assert (= (and b!5766962 res!2433751) b!5766958))

(assert (= (and b!5766958 (not res!2433749)) b!5766970))

(assert (= (and b!5766970 (not res!2433756)) b!5766960))

(assert (= (or b!5766966 b!5766958 b!5766964) bm!443040))

(assert (=> b!5766970 m!6711586))

(assert (=> b!5766970 m!6712072))

(assert (=> b!5766970 m!6712072))

(assert (=> b!5766970 m!6712074))

(assert (=> b!5766967 m!6711586))

(assert (=> b!5766967 m!6712076))

(assert (=> b!5766967 m!6711946))

(assert (=> b!5766967 m!6712076))

(declare-fun m!6712822 () Bool)

(assert (=> b!5766967 m!6712822))

(assert (=> b!5766967 m!6711586))

(assert (=> b!5766967 m!6712072))

(assert (=> b!5766967 m!6712822))

(assert (=> b!5766967 m!6712072))

(declare-fun m!6712826 () Bool)

(assert (=> b!5766967 m!6712826))

(assert (=> b!5766968 m!6711586))

(assert (=> b!5766968 m!6712076))

(assert (=> b!5766963 m!6711586))

(assert (=> b!5766963 m!6712072))

(assert (=> b!5766963 m!6712072))

(assert (=> b!5766963 m!6712074))

(assert (=> bm!443040 m!6711586))

(assert (=> bm!443040 m!6711928))

(assert (=> b!5766969 m!6711946))

(declare-fun m!6712828 () Bool)

(assert (=> b!5766969 m!6712828))

(assert (=> d!1816888 m!6711586))

(assert (=> d!1816888 m!6711928))

(assert (=> d!1816888 m!6711946))

(declare-fun m!6712834 () Bool)

(assert (=> d!1816888 m!6712834))

(assert (=> b!5766960 m!6711586))

(assert (=> b!5766960 m!6712076))

(assert (=> b!5765991 d!1816888))

(declare-fun b!5766983 () Bool)

(declare-fun e!3543183 () Regex!15777)

(declare-fun call!443050 () Regex!15777)

(assert (=> b!5766983 (= e!3543183 (Union!15777 (Concat!24622 call!443050 (regTwo!32066 (regTwo!32066 r!7292))) EmptyLang!15777))))

(declare-fun call!443052 () Regex!15777)

(declare-fun c!1019616 () Bool)

(declare-fun c!1019620 () Bool)

(declare-fun bm!443044 () Bool)

(declare-fun c!1019624 () Bool)

(assert (=> bm!443044 (= call!443052 (derivativeStep!4558 (ite c!1019616 (regOne!32067 (regTwo!32066 r!7292)) (ite c!1019620 (reg!16106 (regTwo!32066 r!7292)) (ite c!1019624 (regTwo!32066 (regTwo!32066 r!7292)) (regOne!32066 (regTwo!32066 r!7292))))) (head!12189 s!2326)))))

(declare-fun b!5766984 () Bool)

(declare-fun e!3543180 () Regex!15777)

(declare-fun e!3543190 () Regex!15777)

(assert (=> b!5766984 (= e!3543180 e!3543190)))

(assert (=> b!5766984 (= c!1019620 ((_ is Star!15777) (regTwo!32066 r!7292)))))

(declare-fun b!5766986 () Bool)

(assert (=> b!5766986 (= c!1019616 ((_ is Union!15777) (regTwo!32066 r!7292)))))

(declare-fun e!3543181 () Regex!15777)

(assert (=> b!5766986 (= e!3543181 e!3543180)))

(declare-fun bm!443045 () Bool)

(declare-fun call!443053 () Regex!15777)

(assert (=> bm!443045 (= call!443050 call!443053)))

(declare-fun b!5766991 () Bool)

(assert (=> b!5766991 (= e!3543190 (Concat!24622 call!443053 (regTwo!32066 r!7292)))))

(declare-fun b!5766993 () Bool)

(declare-fun call!443049 () Regex!15777)

(assert (=> b!5766993 (= e!3543180 (Union!15777 call!443052 call!443049))))

(declare-fun b!5766995 () Bool)

(assert (=> b!5766995 (= e!3543181 (ite (= (head!12189 s!2326) (c!1019159 (regTwo!32066 r!7292))) EmptyExpr!15777 EmptyLang!15777))))

(declare-fun bm!443046 () Bool)

(assert (=> bm!443046 (= call!443053 call!443052)))

(declare-fun d!1816896 () Bool)

(declare-fun lt!2289451 () Regex!15777)

(assert (=> d!1816896 (validRegex!7513 lt!2289451)))

(declare-fun e!3543186 () Regex!15777)

(assert (=> d!1816896 (= lt!2289451 e!3543186)))

(declare-fun c!1019623 () Bool)

(assert (=> d!1816896 (= c!1019623 (or ((_ is EmptyExpr!15777) (regTwo!32066 r!7292)) ((_ is EmptyLang!15777) (regTwo!32066 r!7292))))))

(assert (=> d!1816896 (validRegex!7513 (regTwo!32066 r!7292))))

(assert (=> d!1816896 (= (derivativeStep!4558 (regTwo!32066 r!7292) (head!12189 s!2326)) lt!2289451)))

(declare-fun b!5766988 () Bool)

(assert (=> b!5766988 (= e!3543186 EmptyLang!15777)))

(declare-fun b!5766998 () Bool)

(assert (=> b!5766998 (= e!3543183 (Union!15777 (Concat!24622 call!443049 (regTwo!32066 (regTwo!32066 r!7292))) call!443050))))

(declare-fun b!5767000 () Bool)

(assert (=> b!5767000 (= e!3543186 e!3543181)))

(declare-fun c!1019621 () Bool)

(assert (=> b!5767000 (= c!1019621 ((_ is ElementMatch!15777) (regTwo!32066 r!7292)))))

(declare-fun bm!443047 () Bool)

(assert (=> bm!443047 (= call!443049 (derivativeStep!4558 (ite c!1019616 (regTwo!32067 (regTwo!32066 r!7292)) (regOne!32066 (regTwo!32066 r!7292))) (head!12189 s!2326)))))

(declare-fun b!5767003 () Bool)

(assert (=> b!5767003 (= c!1019624 (nullable!5809 (regOne!32066 (regTwo!32066 r!7292))))))

(assert (=> b!5767003 (= e!3543190 e!3543183)))

(assert (= (and d!1816896 c!1019623) b!5766988))

(assert (= (and d!1816896 (not c!1019623)) b!5767000))

(assert (= (and b!5767000 c!1019621) b!5766995))

(assert (= (and b!5767000 (not c!1019621)) b!5766986))

(assert (= (and b!5766986 c!1019616) b!5766993))

(assert (= (and b!5766986 (not c!1019616)) b!5766984))

(assert (= (and b!5766984 c!1019620) b!5766991))

(assert (= (and b!5766984 (not c!1019620)) b!5767003))

(assert (= (and b!5767003 c!1019624) b!5766998))

(assert (= (and b!5767003 (not c!1019624)) b!5766983))

(assert (= (or b!5766998 b!5766983) bm!443045))

(assert (= (or b!5766991 bm!443045) bm!443046))

(assert (= (or b!5766993 b!5766998) bm!443047))

(assert (= (or b!5766993 bm!443046) bm!443044))

(assert (=> bm!443044 m!6711582))

(declare-fun m!6712836 () Bool)

(assert (=> bm!443044 m!6712836))

(declare-fun m!6712838 () Bool)

(assert (=> d!1816896 m!6712838))

(assert (=> d!1816896 m!6711952))

(assert (=> bm!443047 m!6711582))

(declare-fun m!6712840 () Bool)

(assert (=> bm!443047 m!6712840))

(declare-fun m!6712842 () Bool)

(assert (=> b!5767003 m!6712842))

(assert (=> b!5765991 d!1816896))

(assert (=> b!5765991 d!1816508))

(assert (=> b!5765991 d!1816510))

(declare-fun bs!1353020 () Bool)

(declare-fun d!1816900 () Bool)

(assert (= bs!1353020 (and d!1816900 d!1816318)))

(declare-fun lambda!313220 () Int)

(assert (=> bs!1353020 (= lambda!313220 lambda!313089)))

(declare-fun bs!1353022 () Bool)

(assert (= bs!1353022 (and d!1816900 d!1816614)))

(assert (=> bs!1353022 (= lambda!313220 lambda!313169)))

(declare-fun bs!1353024 () Bool)

(assert (= bs!1353024 (and d!1816900 d!1816334)))

(assert (=> bs!1353024 (= lambda!313220 lambda!313093)))

(declare-fun bs!1353025 () Bool)

(assert (= bs!1353025 (and d!1816900 d!1816352)))

(assert (=> bs!1353025 (= lambda!313220 lambda!313102)))

(declare-fun bs!1353027 () Bool)

(assert (= bs!1353027 (and d!1816900 d!1816588)))

(assert (=> bs!1353027 (= lambda!313220 lambda!313167)))

(declare-fun bs!1353029 () Bool)

(assert (= bs!1353029 (and d!1816900 d!1816404)))

(assert (=> bs!1353029 (= lambda!313220 lambda!313119)))

(declare-fun bs!1353030 () Bool)

(assert (= bs!1353030 (and d!1816900 d!1816382)))

(assert (=> bs!1353030 (= lambda!313220 lambda!313109)))

(declare-fun bs!1353032 () Bool)

(assert (= bs!1353032 (and d!1816900 d!1816798)))

(assert (=> bs!1353032 (= lambda!313220 lambda!313199)))

(declare-fun bs!1353033 () Bool)

(assert (= bs!1353033 (and d!1816900 d!1816500)))

(assert (=> bs!1353033 (= lambda!313220 lambda!313156)))

(assert (=> d!1816900 (= (inv!82689 setElem!38735) (forall!14894 (exprs!5661 setElem!38735) lambda!313220))))

(declare-fun bs!1353036 () Bool)

(assert (= bs!1353036 d!1816900))

(declare-fun m!6712844 () Bool)

(assert (=> bs!1353036 m!6712844))

(assert (=> setNonEmpty!38735 d!1816900))

(assert (=> bs!1352542 d!1816492))

(assert (=> d!1816494 d!1816490))

(declare-fun d!1816902 () Bool)

(assert (=> d!1816902 (= (flatMap!1390 z!1189 lambda!313083) (dynLambda!24861 lambda!313083 (h!69955 zl!343)))))

(assert (=> d!1816902 true))

(declare-fun _$13!2472 () Unit!156640)

(assert (=> d!1816902 (= (choose!43736 z!1189 (h!69955 zl!343) lambda!313083) _$13!2472)))

(declare-fun b_lambda!217693 () Bool)

(assert (=> (not b_lambda!217693) (not d!1816902)))

(declare-fun bs!1353040 () Bool)

(assert (= bs!1353040 d!1816902))

(assert (=> bs!1353040 m!6711502))

(assert (=> bs!1353040 m!6712044))

(assert (=> d!1816494 d!1816902))

(declare-fun b!5767004 () Bool)

(declare-fun e!3543197 () Bool)

(declare-fun e!3543193 () Bool)

(assert (=> b!5767004 (= e!3543197 e!3543193)))

(declare-fun res!2433767 () Bool)

(assert (=> b!5767004 (=> res!2433767 e!3543193)))

(declare-fun call!443055 () Bool)

(assert (=> b!5767004 (= res!2433767 call!443055)))

(declare-fun bm!443050 () Bool)

(assert (=> bm!443050 (= call!443055 (isEmpty!35400 (_1!36177 (get!21913 lt!2289400))))))

(declare-fun b!5767006 () Bool)

(assert (=> b!5767006 (= e!3543193 (not (= (head!12189 (_1!36177 (get!21913 lt!2289400))) (c!1019159 (regOne!32066 r!7292)))))))

(declare-fun b!5767007 () Bool)

(declare-fun res!2433768 () Bool)

(declare-fun e!3543196 () Bool)

(assert (=> b!5767007 (=> res!2433768 e!3543196)))

(declare-fun e!3543198 () Bool)

(assert (=> b!5767007 (= res!2433768 e!3543198)))

(declare-fun res!2433770 () Bool)

(assert (=> b!5767007 (=> (not res!2433770) (not e!3543198))))

(declare-fun lt!2289452 () Bool)

(assert (=> b!5767007 (= res!2433770 lt!2289452)))

(declare-fun b!5767008 () Bool)

(assert (=> b!5767008 (= e!3543196 e!3543197)))

(declare-fun res!2433769 () Bool)

(assert (=> b!5767008 (=> (not res!2433769) (not e!3543197))))

(assert (=> b!5767008 (= res!2433769 (not lt!2289452))))

(declare-fun b!5767009 () Bool)

(declare-fun res!2433771 () Bool)

(assert (=> b!5767009 (=> (not res!2433771) (not e!3543198))))

(assert (=> b!5767009 (= res!2433771 (isEmpty!35400 (tail!11284 (_1!36177 (get!21913 lt!2289400)))))))

(declare-fun b!5767010 () Bool)

(declare-fun res!2433772 () Bool)

(assert (=> b!5767010 (=> (not res!2433772) (not e!3543198))))

(assert (=> b!5767010 (= res!2433772 (not call!443055))))

(declare-fun b!5767011 () Bool)

(declare-fun e!3543194 () Bool)

(declare-fun e!3543195 () Bool)

(assert (=> b!5767011 (= e!3543194 e!3543195)))

(declare-fun c!1019625 () Bool)

(assert (=> b!5767011 (= c!1019625 ((_ is EmptyLang!15777) (regOne!32066 r!7292)))))

(declare-fun b!5767012 () Bool)

(assert (=> b!5767012 (= e!3543194 (= lt!2289452 call!443055))))

(declare-fun b!5767013 () Bool)

(declare-fun e!3543192 () Bool)

(assert (=> b!5767013 (= e!3543192 (matchR!7962 (derivativeStep!4558 (regOne!32066 r!7292) (head!12189 (_1!36177 (get!21913 lt!2289400)))) (tail!11284 (_1!36177 (get!21913 lt!2289400)))))))

(declare-fun d!1816904 () Bool)

(assert (=> d!1816904 e!3543194))

(declare-fun c!1019627 () Bool)

(assert (=> d!1816904 (= c!1019627 ((_ is EmptyExpr!15777) (regOne!32066 r!7292)))))

(assert (=> d!1816904 (= lt!2289452 e!3543192)))

(declare-fun c!1019626 () Bool)

(assert (=> d!1816904 (= c!1019626 (isEmpty!35400 (_1!36177 (get!21913 lt!2289400))))))

(assert (=> d!1816904 (validRegex!7513 (regOne!32066 r!7292))))

(assert (=> d!1816904 (= (matchR!7962 (regOne!32066 r!7292) (_1!36177 (get!21913 lt!2289400))) lt!2289452)))

(declare-fun b!5767005 () Bool)

(assert (=> b!5767005 (= e!3543195 (not lt!2289452))))

(declare-fun b!5767014 () Bool)

(assert (=> b!5767014 (= e!3543198 (= (head!12189 (_1!36177 (get!21913 lt!2289400))) (c!1019159 (regOne!32066 r!7292))))))

(declare-fun b!5767015 () Bool)

(assert (=> b!5767015 (= e!3543192 (nullable!5809 (regOne!32066 r!7292)))))

(declare-fun b!5767016 () Bool)

(declare-fun res!2433774 () Bool)

(assert (=> b!5767016 (=> res!2433774 e!3543193)))

(assert (=> b!5767016 (= res!2433774 (not (isEmpty!35400 (tail!11284 (_1!36177 (get!21913 lt!2289400))))))))

(declare-fun b!5767017 () Bool)

(declare-fun res!2433773 () Bool)

(assert (=> b!5767017 (=> res!2433773 e!3543196)))

(assert (=> b!5767017 (= res!2433773 (not ((_ is ElementMatch!15777) (regOne!32066 r!7292))))))

(assert (=> b!5767017 (= e!3543195 e!3543196)))

(assert (= (and d!1816904 c!1019626) b!5767015))

(assert (= (and d!1816904 (not c!1019626)) b!5767013))

(assert (= (and d!1816904 c!1019627) b!5767012))

(assert (= (and d!1816904 (not c!1019627)) b!5767011))

(assert (= (and b!5767011 c!1019625) b!5767005))

(assert (= (and b!5767011 (not c!1019625)) b!5767017))

(assert (= (and b!5767017 (not res!2433773)) b!5767007))

(assert (= (and b!5767007 res!2433770) b!5767010))

(assert (= (and b!5767010 res!2433772) b!5767009))

(assert (= (and b!5767009 res!2433771) b!5767014))

(assert (= (and b!5767007 (not res!2433768)) b!5767008))

(assert (= (and b!5767008 res!2433769) b!5767004))

(assert (= (and b!5767004 (not res!2433767)) b!5767016))

(assert (= (and b!5767016 (not res!2433774)) b!5767006))

(assert (= (or b!5767012 b!5767004 b!5767010) bm!443050))

(declare-fun m!6712846 () Bool)

(assert (=> b!5767016 m!6712846))

(assert (=> b!5767016 m!6712846))

(declare-fun m!6712848 () Bool)

(assert (=> b!5767016 m!6712848))

(declare-fun m!6712850 () Bool)

(assert (=> b!5767013 m!6712850))

(assert (=> b!5767013 m!6712850))

(declare-fun m!6712852 () Bool)

(assert (=> b!5767013 m!6712852))

(assert (=> b!5767013 m!6712846))

(assert (=> b!5767013 m!6712852))

(assert (=> b!5767013 m!6712846))

(declare-fun m!6712854 () Bool)

(assert (=> b!5767013 m!6712854))

(assert (=> b!5767014 m!6712850))

(assert (=> b!5767009 m!6712846))

(assert (=> b!5767009 m!6712846))

(assert (=> b!5767009 m!6712848))

(declare-fun m!6712856 () Bool)

(assert (=> bm!443050 m!6712856))

(assert (=> b!5767015 m!6711934))

(assert (=> d!1816904 m!6712856))

(assert (=> d!1816904 m!6711904))

(assert (=> b!5767006 m!6712850))

(assert (=> b!5766042 d!1816904))

(assert (=> b!5766042 d!1816586))

(declare-fun d!1816906 () Bool)

(declare-fun c!1019628 () Bool)

(assert (=> d!1816906 (= c!1019628 (isEmpty!35400 (tail!11284 (t!376968 s!2326))))))

(declare-fun e!3543199 () Bool)

(assert (=> d!1816906 (= (matchZipper!1915 (derivationStepZipper!1856 lt!2289295 (head!12189 (t!376968 s!2326))) (tail!11284 (t!376968 s!2326))) e!3543199)))

(declare-fun b!5767018 () Bool)

(assert (=> b!5767018 (= e!3543199 (nullableZipper!1704 (derivationStepZipper!1856 lt!2289295 (head!12189 (t!376968 s!2326)))))))

(declare-fun b!5767019 () Bool)

(assert (=> b!5767019 (= e!3543199 (matchZipper!1915 (derivationStepZipper!1856 (derivationStepZipper!1856 lt!2289295 (head!12189 (t!376968 s!2326))) (head!12189 (tail!11284 (t!376968 s!2326)))) (tail!11284 (tail!11284 (t!376968 s!2326)))))))

(assert (= (and d!1816906 c!1019628) b!5767018))

(assert (= (and d!1816906 (not c!1019628)) b!5767019))

(assert (=> d!1816906 m!6711598))

(assert (=> d!1816906 m!6712142))

(assert (=> b!5767018 m!6711604))

(declare-fun m!6712858 () Bool)

(assert (=> b!5767018 m!6712858))

(assert (=> b!5767019 m!6711598))

(assert (=> b!5767019 m!6712146))

(assert (=> b!5767019 m!6711604))

(assert (=> b!5767019 m!6712146))

(declare-fun m!6712860 () Bool)

(assert (=> b!5767019 m!6712860))

(assert (=> b!5767019 m!6711598))

(assert (=> b!5767019 m!6712150))

(assert (=> b!5767019 m!6712860))

(assert (=> b!5767019 m!6712150))

(declare-fun m!6712862 () Bool)

(assert (=> b!5767019 m!6712862))

(assert (=> b!5765381 d!1816906))

(declare-fun bs!1353052 () Bool)

(declare-fun d!1816908 () Bool)

(assert (= bs!1353052 (and d!1816908 d!1816524)))

(declare-fun lambda!313222 () Int)

(assert (=> bs!1353052 (= (= (head!12189 (t!376968 s!2326)) (head!12189 s!2326)) (= lambda!313222 lambda!313157))))

(declare-fun bs!1353054 () Bool)

(assert (= bs!1353054 (and d!1816908 d!1816476)))

(assert (=> bs!1353054 (= (= (head!12189 (t!376968 s!2326)) (h!69956 s!2326)) (= lambda!313222 lambda!313155))))

(declare-fun bs!1353056 () Bool)

(assert (= bs!1353056 (and d!1816908 d!1816316)))

(assert (=> bs!1353056 (= (= (head!12189 (t!376968 s!2326)) (h!69956 s!2326)) (= lambda!313222 lambda!313086))))

(declare-fun bs!1353057 () Bool)

(assert (= bs!1353057 (and d!1816908 d!1816674)))

(assert (=> bs!1353057 (= lambda!313222 lambda!313181)))

(declare-fun bs!1353059 () Bool)

(assert (= bs!1353059 (and d!1816908 b!5765355)))

(assert (=> bs!1353059 (= (= (head!12189 (t!376968 s!2326)) (h!69956 s!2326)) (= lambda!313222 lambda!313083))))

(declare-fun bs!1353061 () Bool)

(assert (= bs!1353061 (and d!1816908 d!1816554)))

(assert (=> bs!1353061 (= lambda!313222 lambda!313162)))

(declare-fun bs!1353062 () Bool)

(assert (= bs!1353062 (and d!1816908 d!1816544)))

(assert (=> bs!1353062 (= lambda!313222 lambda!313161)))

(assert (=> d!1816908 true))

(assert (=> d!1816908 (= (derivationStepZipper!1856 lt!2289295 (head!12189 (t!376968 s!2326))) (flatMap!1390 lt!2289295 lambda!313222))))

(declare-fun bs!1353064 () Bool)

(assert (= bs!1353064 d!1816908))

(declare-fun m!6712864 () Bool)

(assert (=> bs!1353064 m!6712864))

(assert (=> b!5765381 d!1816908))

(assert (=> b!5765381 d!1816546))

(assert (=> b!5765381 d!1816548))

(declare-fun b!5767020 () Bool)

(declare-fun e!3543202 () (InoxSet Context!10322))

(assert (=> b!5767020 (= e!3543202 (store ((as const (Array Context!10322 Bool)) false) (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) true))))

(declare-fun b!5767021 () Bool)

(declare-fun e!3543203 () (InoxSet Context!10322))

(declare-fun call!443060 () (InoxSet Context!10322))

(assert (=> b!5767021 (= e!3543203 call!443060)))

(declare-fun b!5767022 () Bool)

(declare-fun e!3543205 () Bool)

(assert (=> b!5767022 (= e!3543205 (nullable!5809 (regOne!32066 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))))))))

(declare-fun b!5767023 () Bool)

(declare-fun e!3543201 () (InoxSet Context!10322))

(declare-fun call!443059 () (InoxSet Context!10322))

(declare-fun call!443061 () (InoxSet Context!10322))

(assert (=> b!5767023 (= e!3543201 ((_ map or) call!443059 call!443061))))

(declare-fun bm!443051 () Bool)

(assert (=> bm!443051 (= call!443060 call!443061)))

(declare-fun b!5767025 () Bool)

(declare-fun e!3543204 () (InoxSet Context!10322))

(assert (=> b!5767025 (= e!3543202 e!3543204)))

(declare-fun c!1019629 () Bool)

(assert (=> b!5767025 (= c!1019629 ((_ is Union!15777) (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))))))

(declare-fun bm!443052 () Bool)

(declare-fun call!443056 () List!63630)

(assert (=> bm!443052 (= call!443059 (derivationStepZipperDown!1119 (ite c!1019629 (regOne!32067 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (regOne!32066 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))))) (ite c!1019629 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (Context!10323 call!443056)) (h!69956 s!2326)))))

(declare-fun bm!443053 () Bool)

(declare-fun call!443058 () List!63630)

(assert (=> bm!443053 (= call!443058 call!443056)))

(declare-fun bm!443054 () Bool)

(declare-fun call!443057 () (InoxSet Context!10322))

(assert (=> bm!443054 (= call!443061 call!443057)))

(declare-fun bm!443055 () Bool)

(declare-fun c!1019633 () Bool)

(declare-fun c!1019632 () Bool)

(assert (=> bm!443055 (= call!443056 ($colon$colon!1772 (exprs!5661 (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))))) (ite (or c!1019632 c!1019633) (regTwo!32066 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))))))))

(declare-fun bm!443056 () Bool)

(assert (=> bm!443056 (= call!443057 (derivationStepZipperDown!1119 (ite c!1019629 (regTwo!32067 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (ite c!1019632 (regTwo!32066 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (ite c!1019633 (regOne!32066 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (reg!16106 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))))))) (ite (or c!1019629 c!1019632) (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (Context!10323 call!443058)) (h!69956 s!2326)))))

(declare-fun d!1816910 () Bool)

(declare-fun c!1019630 () Bool)

(assert (=> d!1816910 (= c!1019630 (and ((_ is ElementMatch!15777) (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (= (c!1019159 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (h!69956 s!2326))))))

(assert (=> d!1816910 (= (derivationStepZipperDown!1119 (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343))))))) (Context!10323 (t!376966 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))) (h!69956 s!2326)) e!3543202)))

(declare-fun b!5767024 () Bool)

(assert (=> b!5767024 (= e!3543204 ((_ map or) call!443059 call!443057))))

(declare-fun b!5767026 () Bool)

(declare-fun e!3543200 () (InoxSet Context!10322))

(assert (=> b!5767026 (= e!3543200 ((as const (Array Context!10322 Bool)) false))))

(declare-fun b!5767027 () Bool)

(assert (=> b!5767027 (= c!1019632 e!3543205)))

(declare-fun res!2433775 () Bool)

(assert (=> b!5767027 (=> (not res!2433775) (not e!3543205))))

(assert (=> b!5767027 (= res!2433775 ((_ is Concat!24622) (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))))))

(assert (=> b!5767027 (= e!3543204 e!3543201)))

(declare-fun b!5767028 () Bool)

(declare-fun c!1019631 () Bool)

(assert (=> b!5767028 (= c!1019631 ((_ is Star!15777) (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))))))

(assert (=> b!5767028 (= e!3543203 e!3543200)))

(declare-fun b!5767029 () Bool)

(assert (=> b!5767029 (= e!3543201 e!3543203)))

(assert (=> b!5767029 (= c!1019633 ((_ is Concat!24622) (h!69954 (exprs!5661 (Context!10323 (Cons!63506 (h!69954 (exprs!5661 (h!69955 zl!343))) (t!376966 (exprs!5661 (h!69955 zl!343)))))))))))

(declare-fun b!5767030 () Bool)

(assert (=> b!5767030 (= e!3543200 call!443060)))

(assert (= (and d!1816910 c!1019630) b!5767020))

(assert (= (and d!1816910 (not c!1019630)) b!5767025))

(assert (= (and b!5767025 c!1019629) b!5767024))

(assert (= (and b!5767025 (not c!1019629)) b!5767027))

(assert (= (and b!5767027 res!2433775) b!5767022))

(assert (= (and b!5767027 c!1019632) b!5767023))

(assert (= (and b!5767027 (not c!1019632)) b!5767029))

(assert (= (and b!5767029 c!1019633) b!5767021))

(assert (= (and b!5767029 (not c!1019633)) b!5767028))

(assert (= (and b!5767028 c!1019631) b!5767030))

(assert (= (and b!5767028 (not c!1019631)) b!5767026))

(assert (= (or b!5767021 b!5767030) bm!443053))

(assert (= (or b!5767021 b!5767030) bm!443051))

(assert (= (or b!5767023 bm!443053) bm!443055))

(assert (= (or b!5767023 bm!443051) bm!443054))

(assert (= (or b!5767024 bm!443054) bm!443056))

(assert (= (or b!5767024 b!5767023) bm!443052))

(declare-fun m!6712866 () Bool)

(assert (=> b!5767022 m!6712866))

(declare-fun m!6712868 () Bool)

(assert (=> bm!443055 m!6712868))

(declare-fun m!6712870 () Bool)

(assert (=> b!5767020 m!6712870))

(declare-fun m!6712872 () Bool)

(assert (=> bm!443056 m!6712872))

(declare-fun m!6712880 () Bool)

(assert (=> bm!443052 m!6712880))

(assert (=> bm!442866 d!1816910))

(declare-fun d!1816912 () Bool)

(assert (=> d!1816912 (= (nullable!5809 r!7292) (nullableFct!1850 r!7292))))

(declare-fun bs!1353072 () Bool)

(assert (= bs!1353072 d!1816912))

(declare-fun m!6712882 () Bool)

(assert (=> bs!1353072 m!6712882))

(assert (=> b!5766018 d!1816912))

(declare-fun d!1816916 () Bool)

(assert (=> d!1816916 (= (isEmpty!35398 (exprs!5661 (h!69955 zl!343))) ((_ is Nil!63506) (exprs!5661 (h!69955 zl!343))))))

(assert (=> b!5765582 d!1816916))

(assert (=> d!1816434 d!1816526))

(assert (=> d!1816434 d!1816520))

(assert (=> d!1816326 d!1816380))

(assert (=> d!1816326 d!1816342))

(declare-fun e!3543212 () Bool)

(declare-fun d!1816920 () Bool)

(assert (=> d!1816920 (= (matchZipper!1915 ((_ map or) lt!2289297 lt!2289310) (t!376968 s!2326)) e!3543212)))

(declare-fun res!2433783 () Bool)

(assert (=> d!1816920 (=> res!2433783 e!3543212)))

(assert (=> d!1816920 (= res!2433783 (matchZipper!1915 lt!2289297 (t!376968 s!2326)))))

(assert (=> d!1816920 true))

(declare-fun _$48!1395 () Unit!156640)

(assert (=> d!1816920 (= (choose!43724 lt!2289297 lt!2289310 (t!376968 s!2326)) _$48!1395)))

(declare-fun b!5767041 () Bool)

(assert (=> b!5767041 (= e!3543212 (matchZipper!1915 lt!2289310 (t!376968 s!2326)))))

(assert (= (and d!1816920 (not res!2433783)) b!5767041))

(assert (=> d!1816920 m!6711538))

(assert (=> d!1816920 m!6711494))

(assert (=> b!5767041 m!6711492))

(assert (=> d!1816326 d!1816920))

(assert (=> b!5765905 d!1816508))

(assert (=> b!5766046 d!1816452))

(declare-fun e!3543213 () Bool)

(assert (=> b!5766154 (= tp!1593444 e!3543213)))

(declare-fun b!5767044 () Bool)

(declare-fun tp!1593493 () Bool)

(assert (=> b!5767044 (= e!3543213 tp!1593493)))

(declare-fun b!5767045 () Bool)

(declare-fun tp!1593495 () Bool)

(declare-fun tp!1593491 () Bool)

(assert (=> b!5767045 (= e!3543213 (and tp!1593495 tp!1593491))))

(declare-fun b!5767042 () Bool)

(assert (=> b!5767042 (= e!3543213 tp_is_empty!40807)))

(declare-fun b!5767043 () Bool)

(declare-fun tp!1593492 () Bool)

(declare-fun tp!1593494 () Bool)

(assert (=> b!5767043 (= e!3543213 (and tp!1593492 tp!1593494))))

(assert (= (and b!5766154 ((_ is ElementMatch!15777) (regOne!32067 (regOne!32066 r!7292)))) b!5767042))

(assert (= (and b!5766154 ((_ is Concat!24622) (regOne!32067 (regOne!32066 r!7292)))) b!5767043))

(assert (= (and b!5766154 ((_ is Star!15777) (regOne!32067 (regOne!32066 r!7292)))) b!5767044))

(assert (= (and b!5766154 ((_ is Union!15777) (regOne!32067 (regOne!32066 r!7292)))) b!5767045))

(declare-fun e!3543214 () Bool)

(assert (=> b!5766154 (= tp!1593440 e!3543214)))

(declare-fun b!5767048 () Bool)

(declare-fun tp!1593498 () Bool)

(assert (=> b!5767048 (= e!3543214 tp!1593498)))

(declare-fun b!5767049 () Bool)

(declare-fun tp!1593500 () Bool)

(declare-fun tp!1593496 () Bool)

(assert (=> b!5767049 (= e!3543214 (and tp!1593500 tp!1593496))))

(declare-fun b!5767046 () Bool)

(assert (=> b!5767046 (= e!3543214 tp_is_empty!40807)))

(declare-fun b!5767047 () Bool)

(declare-fun tp!1593497 () Bool)

(declare-fun tp!1593499 () Bool)

(assert (=> b!5767047 (= e!3543214 (and tp!1593497 tp!1593499))))

(assert (= (and b!5766154 ((_ is ElementMatch!15777) (regTwo!32067 (regOne!32066 r!7292)))) b!5767046))

(assert (= (and b!5766154 ((_ is Concat!24622) (regTwo!32067 (regOne!32066 r!7292)))) b!5767047))

(assert (= (and b!5766154 ((_ is Star!15777) (regTwo!32067 (regOne!32066 r!7292)))) b!5767048))

(assert (= (and b!5766154 ((_ is Union!15777) (regTwo!32067 (regOne!32066 r!7292)))) b!5767049))

(declare-fun e!3543215 () Bool)

(assert (=> b!5766161 (= tp!1593452 e!3543215)))

(declare-fun b!5767052 () Bool)

(declare-fun tp!1593503 () Bool)

(assert (=> b!5767052 (= e!3543215 tp!1593503)))

(declare-fun b!5767053 () Bool)

(declare-fun tp!1593505 () Bool)

(declare-fun tp!1593501 () Bool)

(assert (=> b!5767053 (= e!3543215 (and tp!1593505 tp!1593501))))

(declare-fun b!5767050 () Bool)

(assert (=> b!5767050 (= e!3543215 tp_is_empty!40807)))

(declare-fun b!5767051 () Bool)

(declare-fun tp!1593502 () Bool)

(declare-fun tp!1593504 () Bool)

(assert (=> b!5767051 (= e!3543215 (and tp!1593502 tp!1593504))))

(assert (= (and b!5766161 ((_ is ElementMatch!15777) (reg!16106 (regOne!32067 r!7292)))) b!5767050))

(assert (= (and b!5766161 ((_ is Concat!24622) (reg!16106 (regOne!32067 r!7292)))) b!5767051))

(assert (= (and b!5766161 ((_ is Star!15777) (reg!16106 (regOne!32067 r!7292)))) b!5767052))

(assert (= (and b!5766161 ((_ is Union!15777) (reg!16106 (regOne!32067 r!7292)))) b!5767053))

(declare-fun e!3543216 () Bool)

(assert (=> b!5766160 (= tp!1593451 e!3543216)))

(declare-fun b!5767056 () Bool)

(declare-fun tp!1593508 () Bool)

(assert (=> b!5767056 (= e!3543216 tp!1593508)))

(declare-fun b!5767057 () Bool)

(declare-fun tp!1593510 () Bool)

(declare-fun tp!1593506 () Bool)

(assert (=> b!5767057 (= e!3543216 (and tp!1593510 tp!1593506))))

(declare-fun b!5767054 () Bool)

(assert (=> b!5767054 (= e!3543216 tp_is_empty!40807)))

(declare-fun b!5767055 () Bool)

(declare-fun tp!1593507 () Bool)

(declare-fun tp!1593509 () Bool)

(assert (=> b!5767055 (= e!3543216 (and tp!1593507 tp!1593509))))

(assert (= (and b!5766160 ((_ is ElementMatch!15777) (regOne!32066 (regOne!32067 r!7292)))) b!5767054))

(assert (= (and b!5766160 ((_ is Concat!24622) (regOne!32066 (regOne!32067 r!7292)))) b!5767055))

(assert (= (and b!5766160 ((_ is Star!15777) (regOne!32066 (regOne!32067 r!7292)))) b!5767056))

(assert (= (and b!5766160 ((_ is Union!15777) (regOne!32066 (regOne!32067 r!7292)))) b!5767057))

(declare-fun e!3543217 () Bool)

(assert (=> b!5766160 (= tp!1593453 e!3543217)))

(declare-fun b!5767060 () Bool)

(declare-fun tp!1593513 () Bool)

(assert (=> b!5767060 (= e!3543217 tp!1593513)))

(declare-fun b!5767061 () Bool)

(declare-fun tp!1593515 () Bool)

(declare-fun tp!1593511 () Bool)

(assert (=> b!5767061 (= e!3543217 (and tp!1593515 tp!1593511))))

(declare-fun b!5767058 () Bool)

(assert (=> b!5767058 (= e!3543217 tp_is_empty!40807)))

(declare-fun b!5767059 () Bool)

(declare-fun tp!1593512 () Bool)

(declare-fun tp!1593514 () Bool)

(assert (=> b!5767059 (= e!3543217 (and tp!1593512 tp!1593514))))

(assert (= (and b!5766160 ((_ is ElementMatch!15777) (regTwo!32066 (regOne!32067 r!7292)))) b!5767058))

(assert (= (and b!5766160 ((_ is Concat!24622) (regTwo!32066 (regOne!32067 r!7292)))) b!5767059))

(assert (= (and b!5766160 ((_ is Star!15777) (regTwo!32066 (regOne!32067 r!7292)))) b!5767060))

(assert (= (and b!5766160 ((_ is Union!15777) (regTwo!32066 (regOne!32067 r!7292)))) b!5767061))

(declare-fun e!3543218 () Bool)

(assert (=> b!5766162 (= tp!1593454 e!3543218)))

(declare-fun b!5767064 () Bool)

(declare-fun tp!1593518 () Bool)

(assert (=> b!5767064 (= e!3543218 tp!1593518)))

(declare-fun b!5767065 () Bool)

(declare-fun tp!1593520 () Bool)

(declare-fun tp!1593516 () Bool)

(assert (=> b!5767065 (= e!3543218 (and tp!1593520 tp!1593516))))

(declare-fun b!5767062 () Bool)

(assert (=> b!5767062 (= e!3543218 tp_is_empty!40807)))

(declare-fun b!5767063 () Bool)

(declare-fun tp!1593517 () Bool)

(declare-fun tp!1593519 () Bool)

(assert (=> b!5767063 (= e!3543218 (and tp!1593517 tp!1593519))))

(assert (= (and b!5766162 ((_ is ElementMatch!15777) (regOne!32067 (regOne!32067 r!7292)))) b!5767062))

(assert (= (and b!5766162 ((_ is Concat!24622) (regOne!32067 (regOne!32067 r!7292)))) b!5767063))

(assert (= (and b!5766162 ((_ is Star!15777) (regOne!32067 (regOne!32067 r!7292)))) b!5767064))

(assert (= (and b!5766162 ((_ is Union!15777) (regOne!32067 (regOne!32067 r!7292)))) b!5767065))

(declare-fun e!3543219 () Bool)

(assert (=> b!5766162 (= tp!1593450 e!3543219)))

(declare-fun b!5767068 () Bool)

(declare-fun tp!1593523 () Bool)

(assert (=> b!5767068 (= e!3543219 tp!1593523)))

(declare-fun b!5767069 () Bool)

(declare-fun tp!1593525 () Bool)

(declare-fun tp!1593521 () Bool)

(assert (=> b!5767069 (= e!3543219 (and tp!1593525 tp!1593521))))

(declare-fun b!5767066 () Bool)

(assert (=> b!5767066 (= e!3543219 tp_is_empty!40807)))

(declare-fun b!5767067 () Bool)

(declare-fun tp!1593522 () Bool)

(declare-fun tp!1593524 () Bool)

(assert (=> b!5767067 (= e!3543219 (and tp!1593522 tp!1593524))))

(assert (= (and b!5766162 ((_ is ElementMatch!15777) (regTwo!32067 (regOne!32067 r!7292)))) b!5767066))

(assert (= (and b!5766162 ((_ is Concat!24622) (regTwo!32067 (regOne!32067 r!7292)))) b!5767067))

(assert (= (and b!5766162 ((_ is Star!15777) (regTwo!32067 (regOne!32067 r!7292)))) b!5767068))

(assert (= (and b!5766162 ((_ is Union!15777) (regTwo!32067 (regOne!32067 r!7292)))) b!5767069))

(declare-fun e!3543224 () Bool)

(assert (=> b!5766153 (= tp!1593442 e!3543224)))

(declare-fun b!5767072 () Bool)

(declare-fun tp!1593528 () Bool)

(assert (=> b!5767072 (= e!3543224 tp!1593528)))

(declare-fun b!5767073 () Bool)

(declare-fun tp!1593530 () Bool)

(declare-fun tp!1593526 () Bool)

(assert (=> b!5767073 (= e!3543224 (and tp!1593530 tp!1593526))))

(declare-fun b!5767070 () Bool)

(assert (=> b!5767070 (= e!3543224 tp_is_empty!40807)))

(declare-fun b!5767071 () Bool)

(declare-fun tp!1593527 () Bool)

(declare-fun tp!1593529 () Bool)

(assert (=> b!5767071 (= e!3543224 (and tp!1593527 tp!1593529))))

(assert (= (and b!5766153 ((_ is ElementMatch!15777) (reg!16106 (regOne!32066 r!7292)))) b!5767070))

(assert (= (and b!5766153 ((_ is Concat!24622) (reg!16106 (regOne!32066 r!7292)))) b!5767071))

(assert (= (and b!5766153 ((_ is Star!15777) (reg!16106 (regOne!32066 r!7292)))) b!5767072))

(assert (= (and b!5766153 ((_ is Union!15777) (reg!16106 (regOne!32066 r!7292)))) b!5767073))

(declare-fun e!3543226 () Bool)

(assert (=> b!5766152 (= tp!1593441 e!3543226)))

(declare-fun b!5767085 () Bool)

(declare-fun tp!1593533 () Bool)

(assert (=> b!5767085 (= e!3543226 tp!1593533)))

(declare-fun b!5767086 () Bool)

(declare-fun tp!1593535 () Bool)

(declare-fun tp!1593531 () Bool)

(assert (=> b!5767086 (= e!3543226 (and tp!1593535 tp!1593531))))

(declare-fun b!5767083 () Bool)

(assert (=> b!5767083 (= e!3543226 tp_is_empty!40807)))

(declare-fun b!5767084 () Bool)

(declare-fun tp!1593532 () Bool)

(declare-fun tp!1593534 () Bool)

(assert (=> b!5767084 (= e!3543226 (and tp!1593532 tp!1593534))))

(assert (= (and b!5766152 ((_ is ElementMatch!15777) (regOne!32066 (regOne!32066 r!7292)))) b!5767083))

(assert (= (and b!5766152 ((_ is Concat!24622) (regOne!32066 (regOne!32066 r!7292)))) b!5767084))

(assert (= (and b!5766152 ((_ is Star!15777) (regOne!32066 (regOne!32066 r!7292)))) b!5767085))

(assert (= (and b!5766152 ((_ is Union!15777) (regOne!32066 (regOne!32066 r!7292)))) b!5767086))

(declare-fun e!3543227 () Bool)

(assert (=> b!5766152 (= tp!1593443 e!3543227)))

(declare-fun b!5767089 () Bool)

(declare-fun tp!1593538 () Bool)

(assert (=> b!5767089 (= e!3543227 tp!1593538)))

(declare-fun b!5767090 () Bool)

(declare-fun tp!1593540 () Bool)

(declare-fun tp!1593536 () Bool)

(assert (=> b!5767090 (= e!3543227 (and tp!1593540 tp!1593536))))

(declare-fun b!5767087 () Bool)

(assert (=> b!5767087 (= e!3543227 tp_is_empty!40807)))

(declare-fun b!5767088 () Bool)

(declare-fun tp!1593537 () Bool)

(declare-fun tp!1593539 () Bool)

(assert (=> b!5767088 (= e!3543227 (and tp!1593537 tp!1593539))))

(assert (= (and b!5766152 ((_ is ElementMatch!15777) (regTwo!32066 (regOne!32066 r!7292)))) b!5767087))

(assert (= (and b!5766152 ((_ is Concat!24622) (regTwo!32066 (regOne!32066 r!7292)))) b!5767088))

(assert (= (and b!5766152 ((_ is Star!15777) (regTwo!32066 (regOne!32066 r!7292)))) b!5767089))

(assert (= (and b!5766152 ((_ is Union!15777) (regTwo!32066 (regOne!32066 r!7292)))) b!5767090))

(declare-fun b!5767091 () Bool)

(declare-fun e!3543228 () Bool)

(declare-fun tp!1593541 () Bool)

(declare-fun tp!1593542 () Bool)

(assert (=> b!5767091 (= e!3543228 (and tp!1593541 tp!1593542))))

(assert (=> b!5766149 (= tp!1593437 e!3543228)))

(assert (= (and b!5766149 ((_ is Cons!63506) (exprs!5661 setElem!38735))) b!5767091))

(declare-fun e!3543229 () Bool)

(assert (=> b!5766164 (= tp!1593456 e!3543229)))

(declare-fun b!5767094 () Bool)

(declare-fun tp!1593545 () Bool)

(assert (=> b!5767094 (= e!3543229 tp!1593545)))

(declare-fun b!5767095 () Bool)

(declare-fun tp!1593547 () Bool)

(declare-fun tp!1593543 () Bool)

(assert (=> b!5767095 (= e!3543229 (and tp!1593547 tp!1593543))))

(declare-fun b!5767092 () Bool)

(assert (=> b!5767092 (= e!3543229 tp_is_empty!40807)))

(declare-fun b!5767093 () Bool)

(declare-fun tp!1593544 () Bool)

(declare-fun tp!1593546 () Bool)

(assert (=> b!5767093 (= e!3543229 (and tp!1593544 tp!1593546))))

(assert (= (and b!5766164 ((_ is ElementMatch!15777) (regOne!32066 (regTwo!32067 r!7292)))) b!5767092))

(assert (= (and b!5766164 ((_ is Concat!24622) (regOne!32066 (regTwo!32067 r!7292)))) b!5767093))

(assert (= (and b!5766164 ((_ is Star!15777) (regOne!32066 (regTwo!32067 r!7292)))) b!5767094))

(assert (= (and b!5766164 ((_ is Union!15777) (regOne!32066 (regTwo!32067 r!7292)))) b!5767095))

(declare-fun e!3543230 () Bool)

(assert (=> b!5766164 (= tp!1593458 e!3543230)))

(declare-fun b!5767098 () Bool)

(declare-fun tp!1593550 () Bool)

(assert (=> b!5767098 (= e!3543230 tp!1593550)))

(declare-fun b!5767099 () Bool)

(declare-fun tp!1593552 () Bool)

(declare-fun tp!1593548 () Bool)

(assert (=> b!5767099 (= e!3543230 (and tp!1593552 tp!1593548))))

(declare-fun b!5767096 () Bool)

(assert (=> b!5767096 (= e!3543230 tp_is_empty!40807)))

(declare-fun b!5767097 () Bool)

(declare-fun tp!1593549 () Bool)

(declare-fun tp!1593551 () Bool)

(assert (=> b!5767097 (= e!3543230 (and tp!1593549 tp!1593551))))

(assert (= (and b!5766164 ((_ is ElementMatch!15777) (regTwo!32066 (regTwo!32067 r!7292)))) b!5767096))

(assert (= (and b!5766164 ((_ is Concat!24622) (regTwo!32066 (regTwo!32067 r!7292)))) b!5767097))

(assert (= (and b!5766164 ((_ is Star!15777) (regTwo!32066 (regTwo!32067 r!7292)))) b!5767098))

(assert (= (and b!5766164 ((_ is Union!15777) (regTwo!32066 (regTwo!32067 r!7292)))) b!5767099))

(declare-fun b!5767100 () Bool)

(declare-fun e!3543231 () Bool)

(declare-fun tp!1593553 () Bool)

(assert (=> b!5767100 (= e!3543231 (and tp_is_empty!40807 tp!1593553))))

(assert (=> b!5766171 (= tp!1593462 e!3543231)))

(assert (= (and b!5766171 ((_ is Cons!63508) (t!376968 (t!376968 s!2326)))) b!5767100))

(declare-fun condSetEmpty!38744 () Bool)

(assert (=> setNonEmpty!38735 (= condSetEmpty!38744 (= setRest!38735 ((as const (Array Context!10322 Bool)) false)))))

(declare-fun setRes!38744 () Bool)

(assert (=> setNonEmpty!38735 (= tp!1593436 setRes!38744)))

(declare-fun setIsEmpty!38744 () Bool)

(assert (=> setIsEmpty!38744 setRes!38744))

(declare-fun e!3543232 () Bool)

(declare-fun setElem!38744 () Context!10322)

(declare-fun setNonEmpty!38744 () Bool)

(declare-fun tp!1593554 () Bool)

(assert (=> setNonEmpty!38744 (= setRes!38744 (and tp!1593554 (inv!82689 setElem!38744) e!3543232))))

(declare-fun setRest!38744 () (InoxSet Context!10322))

(assert (=> setNonEmpty!38744 (= setRest!38735 ((_ map or) (store ((as const (Array Context!10322 Bool)) false) setElem!38744 true) setRest!38744))))

(declare-fun b!5767101 () Bool)

(declare-fun tp!1593555 () Bool)

(assert (=> b!5767101 (= e!3543232 tp!1593555)))

(assert (= (and setNonEmpty!38735 condSetEmpty!38744) setIsEmpty!38744))

(assert (= (and setNonEmpty!38735 (not condSetEmpty!38744)) setNonEmpty!38744))

(assert (= setNonEmpty!38744 b!5767101))

(declare-fun m!6712922 () Bool)

(assert (=> setNonEmpty!38744 m!6712922))

(declare-fun e!3543233 () Bool)

(assert (=> b!5766131 (= tp!1593419 e!3543233)))

(declare-fun b!5767104 () Bool)

(declare-fun tp!1593558 () Bool)

(assert (=> b!5767104 (= e!3543233 tp!1593558)))

(declare-fun b!5767105 () Bool)

(declare-fun tp!1593560 () Bool)

(declare-fun tp!1593556 () Bool)

(assert (=> b!5767105 (= e!3543233 (and tp!1593560 tp!1593556))))

(declare-fun b!5767102 () Bool)

(assert (=> b!5767102 (= e!3543233 tp_is_empty!40807)))

(declare-fun b!5767103 () Bool)

(declare-fun tp!1593557 () Bool)

(declare-fun tp!1593559 () Bool)

(assert (=> b!5767103 (= e!3543233 (and tp!1593557 tp!1593559))))

(assert (= (and b!5766131 ((_ is ElementMatch!15777) (regOne!32067 (reg!16106 r!7292)))) b!5767102))

(assert (= (and b!5766131 ((_ is Concat!24622) (regOne!32067 (reg!16106 r!7292)))) b!5767103))

(assert (= (and b!5766131 ((_ is Star!15777) (regOne!32067 (reg!16106 r!7292)))) b!5767104))

(assert (= (and b!5766131 ((_ is Union!15777) (regOne!32067 (reg!16106 r!7292)))) b!5767105))

(declare-fun e!3543234 () Bool)

(assert (=> b!5766131 (= tp!1593415 e!3543234)))

(declare-fun b!5767108 () Bool)

(declare-fun tp!1593563 () Bool)

(assert (=> b!5767108 (= e!3543234 tp!1593563)))

(declare-fun b!5767109 () Bool)

(declare-fun tp!1593565 () Bool)

(declare-fun tp!1593561 () Bool)

(assert (=> b!5767109 (= e!3543234 (and tp!1593565 tp!1593561))))

(declare-fun b!5767106 () Bool)

(assert (=> b!5767106 (= e!3543234 tp_is_empty!40807)))

(declare-fun b!5767107 () Bool)

(declare-fun tp!1593562 () Bool)

(declare-fun tp!1593564 () Bool)

(assert (=> b!5767107 (= e!3543234 (and tp!1593562 tp!1593564))))

(assert (= (and b!5766131 ((_ is ElementMatch!15777) (regTwo!32067 (reg!16106 r!7292)))) b!5767106))

(assert (= (and b!5766131 ((_ is Concat!24622) (regTwo!32067 (reg!16106 r!7292)))) b!5767107))

(assert (= (and b!5766131 ((_ is Star!15777) (regTwo!32067 (reg!16106 r!7292)))) b!5767108))

(assert (= (and b!5766131 ((_ is Union!15777) (regTwo!32067 (reg!16106 r!7292)))) b!5767109))

(declare-fun e!3543235 () Bool)

(assert (=> b!5766158 (= tp!1593449 e!3543235)))

(declare-fun b!5767112 () Bool)

(declare-fun tp!1593568 () Bool)

(assert (=> b!5767112 (= e!3543235 tp!1593568)))

(declare-fun b!5767113 () Bool)

(declare-fun tp!1593570 () Bool)

(declare-fun tp!1593566 () Bool)

(assert (=> b!5767113 (= e!3543235 (and tp!1593570 tp!1593566))))

(declare-fun b!5767110 () Bool)

(assert (=> b!5767110 (= e!3543235 tp_is_empty!40807)))

(declare-fun b!5767111 () Bool)

(declare-fun tp!1593567 () Bool)

(declare-fun tp!1593569 () Bool)

(assert (=> b!5767111 (= e!3543235 (and tp!1593567 tp!1593569))))

(assert (= (and b!5766158 ((_ is ElementMatch!15777) (regOne!32067 (regTwo!32066 r!7292)))) b!5767110))

(assert (= (and b!5766158 ((_ is Concat!24622) (regOne!32067 (regTwo!32066 r!7292)))) b!5767111))

(assert (= (and b!5766158 ((_ is Star!15777) (regOne!32067 (regTwo!32066 r!7292)))) b!5767112))

(assert (= (and b!5766158 ((_ is Union!15777) (regOne!32067 (regTwo!32066 r!7292)))) b!5767113))

(declare-fun e!3543236 () Bool)

(assert (=> b!5766158 (= tp!1593445 e!3543236)))

(declare-fun b!5767116 () Bool)

(declare-fun tp!1593573 () Bool)

(assert (=> b!5767116 (= e!3543236 tp!1593573)))

(declare-fun b!5767117 () Bool)

(declare-fun tp!1593575 () Bool)

(declare-fun tp!1593571 () Bool)

(assert (=> b!5767117 (= e!3543236 (and tp!1593575 tp!1593571))))

(declare-fun b!5767114 () Bool)

(assert (=> b!5767114 (= e!3543236 tp_is_empty!40807)))

(declare-fun b!5767115 () Bool)

(declare-fun tp!1593572 () Bool)

(declare-fun tp!1593574 () Bool)

(assert (=> b!5767115 (= e!3543236 (and tp!1593572 tp!1593574))))

(assert (= (and b!5766158 ((_ is ElementMatch!15777) (regTwo!32067 (regTwo!32066 r!7292)))) b!5767114))

(assert (= (and b!5766158 ((_ is Concat!24622) (regTwo!32067 (regTwo!32066 r!7292)))) b!5767115))

(assert (= (and b!5766158 ((_ is Star!15777) (regTwo!32067 (regTwo!32066 r!7292)))) b!5767116))

(assert (= (and b!5766158 ((_ is Union!15777) (regTwo!32067 (regTwo!32066 r!7292)))) b!5767117))

(declare-fun b!5767118 () Bool)

(declare-fun e!3543237 () Bool)

(declare-fun tp!1593576 () Bool)

(declare-fun tp!1593577 () Bool)

(assert (=> b!5767118 (= e!3543237 (and tp!1593576 tp!1593577))))

(assert (=> b!5766144 (= tp!1593430 e!3543237)))

(assert (= (and b!5766144 ((_ is Cons!63506) (exprs!5661 (h!69955 (t!376967 zl!343))))) b!5767118))

(declare-fun e!3543238 () Bool)

(assert (=> b!5766150 (= tp!1593438 e!3543238)))

(declare-fun b!5767121 () Bool)

(declare-fun tp!1593580 () Bool)

(assert (=> b!5767121 (= e!3543238 tp!1593580)))

(declare-fun b!5767122 () Bool)

(declare-fun tp!1593582 () Bool)

(declare-fun tp!1593578 () Bool)

(assert (=> b!5767122 (= e!3543238 (and tp!1593582 tp!1593578))))

(declare-fun b!5767119 () Bool)

(assert (=> b!5767119 (= e!3543238 tp_is_empty!40807)))

(declare-fun b!5767120 () Bool)

(declare-fun tp!1593579 () Bool)

(declare-fun tp!1593581 () Bool)

(assert (=> b!5767120 (= e!3543238 (and tp!1593579 tp!1593581))))

(assert (= (and b!5766150 ((_ is ElementMatch!15777) (h!69954 (exprs!5661 (h!69955 zl!343))))) b!5767119))

(assert (= (and b!5766150 ((_ is Concat!24622) (h!69954 (exprs!5661 (h!69955 zl!343))))) b!5767120))

(assert (= (and b!5766150 ((_ is Star!15777) (h!69954 (exprs!5661 (h!69955 zl!343))))) b!5767121))

(assert (= (and b!5766150 ((_ is Union!15777) (h!69954 (exprs!5661 (h!69955 zl!343))))) b!5767122))

(declare-fun b!5767123 () Bool)

(declare-fun e!3543239 () Bool)

(declare-fun tp!1593583 () Bool)

(declare-fun tp!1593584 () Bool)

(assert (=> b!5767123 (= e!3543239 (and tp!1593583 tp!1593584))))

(assert (=> b!5766150 (= tp!1593439 e!3543239)))

(assert (= (and b!5766150 ((_ is Cons!63506) (t!376966 (exprs!5661 (h!69955 zl!343))))) b!5767123))

(declare-fun e!3543240 () Bool)

(assert (=> b!5766156 (= tp!1593446 e!3543240)))

(declare-fun b!5767126 () Bool)

(declare-fun tp!1593587 () Bool)

(assert (=> b!5767126 (= e!3543240 tp!1593587)))

(declare-fun b!5767127 () Bool)

(declare-fun tp!1593589 () Bool)

(declare-fun tp!1593585 () Bool)

(assert (=> b!5767127 (= e!3543240 (and tp!1593589 tp!1593585))))

(declare-fun b!5767124 () Bool)

(assert (=> b!5767124 (= e!3543240 tp_is_empty!40807)))

(declare-fun b!5767125 () Bool)

(declare-fun tp!1593586 () Bool)

(declare-fun tp!1593588 () Bool)

(assert (=> b!5767125 (= e!3543240 (and tp!1593586 tp!1593588))))

(assert (= (and b!5766156 ((_ is ElementMatch!15777) (regOne!32066 (regTwo!32066 r!7292)))) b!5767124))

(assert (= (and b!5766156 ((_ is Concat!24622) (regOne!32066 (regTwo!32066 r!7292)))) b!5767125))

(assert (= (and b!5766156 ((_ is Star!15777) (regOne!32066 (regTwo!32066 r!7292)))) b!5767126))

(assert (= (and b!5766156 ((_ is Union!15777) (regOne!32066 (regTwo!32066 r!7292)))) b!5767127))

(declare-fun e!3543243 () Bool)

(assert (=> b!5766156 (= tp!1593448 e!3543243)))

(declare-fun b!5767132 () Bool)

(declare-fun tp!1593592 () Bool)

(assert (=> b!5767132 (= e!3543243 tp!1593592)))

(declare-fun b!5767133 () Bool)

(declare-fun tp!1593594 () Bool)

(declare-fun tp!1593590 () Bool)

(assert (=> b!5767133 (= e!3543243 (and tp!1593594 tp!1593590))))

(declare-fun b!5767130 () Bool)

(assert (=> b!5767130 (= e!3543243 tp_is_empty!40807)))

(declare-fun b!5767131 () Bool)

(declare-fun tp!1593591 () Bool)

(declare-fun tp!1593593 () Bool)

(assert (=> b!5767131 (= e!3543243 (and tp!1593591 tp!1593593))))

(assert (= (and b!5766156 ((_ is ElementMatch!15777) (regTwo!32066 (regTwo!32066 r!7292)))) b!5767130))

(assert (= (and b!5766156 ((_ is Concat!24622) (regTwo!32066 (regTwo!32066 r!7292)))) b!5767131))

(assert (= (and b!5766156 ((_ is Star!15777) (regTwo!32066 (regTwo!32066 r!7292)))) b!5767132))

(assert (= (and b!5766156 ((_ is Union!15777) (regTwo!32066 (regTwo!32066 r!7292)))) b!5767133))

(declare-fun e!3543244 () Bool)

(assert (=> b!5766136 (= tp!1593424 e!3543244)))

(declare-fun b!5767136 () Bool)

(declare-fun tp!1593597 () Bool)

(assert (=> b!5767136 (= e!3543244 tp!1593597)))

(declare-fun b!5767137 () Bool)

(declare-fun tp!1593599 () Bool)

(declare-fun tp!1593595 () Bool)

(assert (=> b!5767137 (= e!3543244 (and tp!1593599 tp!1593595))))

(declare-fun b!5767134 () Bool)

(assert (=> b!5767134 (= e!3543244 tp_is_empty!40807)))

(declare-fun b!5767135 () Bool)

(declare-fun tp!1593596 () Bool)

(declare-fun tp!1593598 () Bool)

(assert (=> b!5767135 (= e!3543244 (and tp!1593596 tp!1593598))))

(assert (= (and b!5766136 ((_ is ElementMatch!15777) (h!69954 (exprs!5661 setElem!38729)))) b!5767134))

(assert (= (and b!5766136 ((_ is Concat!24622) (h!69954 (exprs!5661 setElem!38729)))) b!5767135))

(assert (= (and b!5766136 ((_ is Star!15777) (h!69954 (exprs!5661 setElem!38729)))) b!5767136))

(assert (= (and b!5766136 ((_ is Union!15777) (h!69954 (exprs!5661 setElem!38729)))) b!5767137))

(declare-fun b!5767138 () Bool)

(declare-fun e!3543245 () Bool)

(declare-fun tp!1593600 () Bool)

(declare-fun tp!1593601 () Bool)

(assert (=> b!5767138 (= e!3543245 (and tp!1593600 tp!1593601))))

(assert (=> b!5766136 (= tp!1593425 e!3543245)))

(assert (= (and b!5766136 ((_ is Cons!63506) (t!376966 (exprs!5661 setElem!38729)))) b!5767138))

(declare-fun e!3543247 () Bool)

(assert (=> b!5766165 (= tp!1593457 e!3543247)))

(declare-fun b!5767143 () Bool)

(declare-fun tp!1593604 () Bool)

(assert (=> b!5767143 (= e!3543247 tp!1593604)))

(declare-fun b!5767144 () Bool)

(declare-fun tp!1593606 () Bool)

(declare-fun tp!1593602 () Bool)

(assert (=> b!5767144 (= e!3543247 (and tp!1593606 tp!1593602))))

(declare-fun b!5767141 () Bool)

(assert (=> b!5767141 (= e!3543247 tp_is_empty!40807)))

(declare-fun b!5767142 () Bool)

(declare-fun tp!1593603 () Bool)

(declare-fun tp!1593605 () Bool)

(assert (=> b!5767142 (= e!3543247 (and tp!1593603 tp!1593605))))

(assert (= (and b!5766165 ((_ is ElementMatch!15777) (reg!16106 (regTwo!32067 r!7292)))) b!5767141))

(assert (= (and b!5766165 ((_ is Concat!24622) (reg!16106 (regTwo!32067 r!7292)))) b!5767142))

(assert (= (and b!5766165 ((_ is Star!15777) (reg!16106 (regTwo!32067 r!7292)))) b!5767143))

(assert (= (and b!5766165 ((_ is Union!15777) (reg!16106 (regTwo!32067 r!7292)))) b!5767144))

(declare-fun e!3543248 () Bool)

(assert (=> b!5766130 (= tp!1593417 e!3543248)))

(declare-fun b!5767147 () Bool)

(declare-fun tp!1593609 () Bool)

(assert (=> b!5767147 (= e!3543248 tp!1593609)))

(declare-fun b!5767148 () Bool)

(declare-fun tp!1593611 () Bool)

(declare-fun tp!1593607 () Bool)

(assert (=> b!5767148 (= e!3543248 (and tp!1593611 tp!1593607))))

(declare-fun b!5767145 () Bool)

(assert (=> b!5767145 (= e!3543248 tp_is_empty!40807)))

(declare-fun b!5767146 () Bool)

(declare-fun tp!1593608 () Bool)

(declare-fun tp!1593610 () Bool)

(assert (=> b!5767146 (= e!3543248 (and tp!1593608 tp!1593610))))

(assert (= (and b!5766130 ((_ is ElementMatch!15777) (reg!16106 (reg!16106 r!7292)))) b!5767145))

(assert (= (and b!5766130 ((_ is Concat!24622) (reg!16106 (reg!16106 r!7292)))) b!5767146))

(assert (= (and b!5766130 ((_ is Star!15777) (reg!16106 (reg!16106 r!7292)))) b!5767147))

(assert (= (and b!5766130 ((_ is Union!15777) (reg!16106 (reg!16106 r!7292)))) b!5767148))

(declare-fun e!3543249 () Bool)

(assert (=> b!5766166 (= tp!1593459 e!3543249)))

(declare-fun b!5767151 () Bool)

(declare-fun tp!1593614 () Bool)

(assert (=> b!5767151 (= e!3543249 tp!1593614)))

(declare-fun b!5767152 () Bool)

(declare-fun tp!1593616 () Bool)

(declare-fun tp!1593612 () Bool)

(assert (=> b!5767152 (= e!3543249 (and tp!1593616 tp!1593612))))

(declare-fun b!5767149 () Bool)

(assert (=> b!5767149 (= e!3543249 tp_is_empty!40807)))

(declare-fun b!5767150 () Bool)

(declare-fun tp!1593613 () Bool)

(declare-fun tp!1593615 () Bool)

(assert (=> b!5767150 (= e!3543249 (and tp!1593613 tp!1593615))))

(assert (= (and b!5766166 ((_ is ElementMatch!15777) (regOne!32067 (regTwo!32067 r!7292)))) b!5767149))

(assert (= (and b!5766166 ((_ is Concat!24622) (regOne!32067 (regTwo!32067 r!7292)))) b!5767150))

(assert (= (and b!5766166 ((_ is Star!15777) (regOne!32067 (regTwo!32067 r!7292)))) b!5767151))

(assert (= (and b!5766166 ((_ is Union!15777) (regOne!32067 (regTwo!32067 r!7292)))) b!5767152))

(declare-fun e!3543250 () Bool)

(assert (=> b!5766166 (= tp!1593455 e!3543250)))

(declare-fun b!5767155 () Bool)

(declare-fun tp!1593619 () Bool)

(assert (=> b!5767155 (= e!3543250 tp!1593619)))

(declare-fun b!5767156 () Bool)

(declare-fun tp!1593621 () Bool)

(declare-fun tp!1593617 () Bool)

(assert (=> b!5767156 (= e!3543250 (and tp!1593621 tp!1593617))))

(declare-fun b!5767153 () Bool)

(assert (=> b!5767153 (= e!3543250 tp_is_empty!40807)))

(declare-fun b!5767154 () Bool)

(declare-fun tp!1593618 () Bool)

(declare-fun tp!1593620 () Bool)

(assert (=> b!5767154 (= e!3543250 (and tp!1593618 tp!1593620))))

(assert (= (and b!5766166 ((_ is ElementMatch!15777) (regTwo!32067 (regTwo!32067 r!7292)))) b!5767153))

(assert (= (and b!5766166 ((_ is Concat!24622) (regTwo!32067 (regTwo!32067 r!7292)))) b!5767154))

(assert (= (and b!5766166 ((_ is Star!15777) (regTwo!32067 (regTwo!32067 r!7292)))) b!5767155))

(assert (= (and b!5766166 ((_ is Union!15777) (regTwo!32067 (regTwo!32067 r!7292)))) b!5767156))

(declare-fun e!3543251 () Bool)

(assert (=> b!5766129 (= tp!1593416 e!3543251)))

(declare-fun b!5767159 () Bool)

(declare-fun tp!1593624 () Bool)

(assert (=> b!5767159 (= e!3543251 tp!1593624)))

(declare-fun b!5767160 () Bool)

(declare-fun tp!1593626 () Bool)

(declare-fun tp!1593622 () Bool)

(assert (=> b!5767160 (= e!3543251 (and tp!1593626 tp!1593622))))

(declare-fun b!5767157 () Bool)

(assert (=> b!5767157 (= e!3543251 tp_is_empty!40807)))

(declare-fun b!5767158 () Bool)

(declare-fun tp!1593623 () Bool)

(declare-fun tp!1593625 () Bool)

(assert (=> b!5767158 (= e!3543251 (and tp!1593623 tp!1593625))))

(assert (= (and b!5766129 ((_ is ElementMatch!15777) (regOne!32066 (reg!16106 r!7292)))) b!5767157))

(assert (= (and b!5766129 ((_ is Concat!24622) (regOne!32066 (reg!16106 r!7292)))) b!5767158))

(assert (= (and b!5766129 ((_ is Star!15777) (regOne!32066 (reg!16106 r!7292)))) b!5767159))

(assert (= (and b!5766129 ((_ is Union!15777) (regOne!32066 (reg!16106 r!7292)))) b!5767160))

(declare-fun e!3543252 () Bool)

(assert (=> b!5766129 (= tp!1593418 e!3543252)))

(declare-fun b!5767163 () Bool)

(declare-fun tp!1593629 () Bool)

(assert (=> b!5767163 (= e!3543252 tp!1593629)))

(declare-fun b!5767164 () Bool)

(declare-fun tp!1593631 () Bool)

(declare-fun tp!1593627 () Bool)

(assert (=> b!5767164 (= e!3543252 (and tp!1593631 tp!1593627))))

(declare-fun b!5767161 () Bool)

(assert (=> b!5767161 (= e!3543252 tp_is_empty!40807)))

(declare-fun b!5767162 () Bool)

(declare-fun tp!1593628 () Bool)

(declare-fun tp!1593630 () Bool)

(assert (=> b!5767162 (= e!3543252 (and tp!1593628 tp!1593630))))

(assert (= (and b!5766129 ((_ is ElementMatch!15777) (regTwo!32066 (reg!16106 r!7292)))) b!5767161))

(assert (= (and b!5766129 ((_ is Concat!24622) (regTwo!32066 (reg!16106 r!7292)))) b!5767162))

(assert (= (and b!5766129 ((_ is Star!15777) (regTwo!32066 (reg!16106 r!7292)))) b!5767163))

(assert (= (and b!5766129 ((_ is Union!15777) (regTwo!32066 (reg!16106 r!7292)))) b!5767164))

(declare-fun e!3543253 () Bool)

(assert (=> b!5766157 (= tp!1593447 e!3543253)))

(declare-fun b!5767167 () Bool)

(declare-fun tp!1593634 () Bool)

(assert (=> b!5767167 (= e!3543253 tp!1593634)))

(declare-fun b!5767168 () Bool)

(declare-fun tp!1593636 () Bool)

(declare-fun tp!1593632 () Bool)

(assert (=> b!5767168 (= e!3543253 (and tp!1593636 tp!1593632))))

(declare-fun b!5767165 () Bool)

(assert (=> b!5767165 (= e!3543253 tp_is_empty!40807)))

(declare-fun b!5767166 () Bool)

(declare-fun tp!1593633 () Bool)

(declare-fun tp!1593635 () Bool)

(assert (=> b!5767166 (= e!3543253 (and tp!1593633 tp!1593635))))

(assert (= (and b!5766157 ((_ is ElementMatch!15777) (reg!16106 (regTwo!32066 r!7292)))) b!5767165))

(assert (= (and b!5766157 ((_ is Concat!24622) (reg!16106 (regTwo!32066 r!7292)))) b!5767166))

(assert (= (and b!5766157 ((_ is Star!15777) (reg!16106 (regTwo!32066 r!7292)))) b!5767167))

(assert (= (and b!5766157 ((_ is Union!15777) (reg!16106 (regTwo!32066 r!7292)))) b!5767168))

(declare-fun b!5767170 () Bool)

(declare-fun e!3543255 () Bool)

(declare-fun tp!1593637 () Bool)

(assert (=> b!5767170 (= e!3543255 tp!1593637)))

(declare-fun e!3543254 () Bool)

(declare-fun tp!1593638 () Bool)

(declare-fun b!5767169 () Bool)

(assert (=> b!5767169 (= e!3543254 (and (inv!82689 (h!69955 (t!376967 (t!376967 zl!343)))) e!3543255 tp!1593638))))

(assert (=> b!5766143 (= tp!1593431 e!3543254)))

(assert (= b!5767169 b!5767170))

(assert (= (and b!5766143 ((_ is Cons!63507) (t!376967 (t!376967 zl!343)))) b!5767169))

(declare-fun m!6712954 () Bool)

(assert (=> b!5767169 m!6712954))

(declare-fun b_lambda!217697 () Bool)

(assert (= b_lambda!217675 (or b!5765355 b_lambda!217697)))

(assert (=> d!1816570 d!1816496))

(declare-fun b_lambda!217699 () Bool)

(assert (= b_lambda!217681 (or d!1816382 b_lambda!217699)))

(declare-fun bs!1353085 () Bool)

(declare-fun d!1816946 () Bool)

(assert (= bs!1353085 (and d!1816946 d!1816382)))

(assert (=> bs!1353085 (= (dynLambda!24863 lambda!313109 (h!69954 (unfocusZipperList!1205 zl!343))) (validRegex!7513 (h!69954 (unfocusZipperList!1205 zl!343))))))

(declare-fun m!6712962 () Bool)

(assert (=> bs!1353085 m!6712962))

(assert (=> b!5766476 d!1816946))

(declare-fun b_lambda!217701 () Bool)

(assert (= b_lambda!217671 (or d!1816318 b_lambda!217701)))

(declare-fun bs!1353086 () Bool)

(declare-fun d!1816948 () Bool)

(assert (= bs!1353086 (and d!1816948 d!1816318)))

(assert (=> bs!1353086 (= (dynLambda!24863 lambda!313089 (h!69954 (exprs!5661 (h!69955 zl!343)))) (validRegex!7513 (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(declare-fun m!6712964 () Bool)

(assert (=> bs!1353086 m!6712964))

(assert (=> b!5766292 d!1816948))

(declare-fun b_lambda!217703 () Bool)

(assert (= b_lambda!217693 (or b!5765355 b_lambda!217703)))

(assert (=> d!1816902 d!1816498))

(declare-fun b_lambda!217705 () Bool)

(assert (= b_lambda!217673 (or d!1816352 b_lambda!217705)))

(declare-fun bs!1353088 () Bool)

(declare-fun d!1816950 () Bool)

(assert (= bs!1353088 (and d!1816950 d!1816352)))

(assert (=> bs!1353088 (= (dynLambda!24863 lambda!313102 (h!69954 (exprs!5661 (h!69955 zl!343)))) (validRegex!7513 (h!69954 (exprs!5661 (h!69955 zl!343)))))))

(assert (=> bs!1353088 m!6712964))

(assert (=> b!5766311 d!1816950))

(declare-fun b_lambda!217707 () Bool)

(assert (= b_lambda!217687 (or d!1816334 b_lambda!217707)))

(declare-fun bs!1353090 () Bool)

(declare-fun d!1816952 () Bool)

(assert (= bs!1353090 (and d!1816952 d!1816334)))

(assert (=> bs!1353090 (= (dynLambda!24863 lambda!313093 (h!69954 (exprs!5661 setElem!38729))) (validRegex!7513 (h!69954 (exprs!5661 setElem!38729))))))

(declare-fun m!6712966 () Bool)

(assert (=> bs!1353090 m!6712966))

(assert (=> b!5766674 d!1816952))

(declare-fun b_lambda!217709 () Bool)

(assert (= b_lambda!217679 (or d!1816404 b_lambda!217709)))

(declare-fun bs!1353092 () Bool)

(declare-fun d!1816954 () Bool)

(assert (= bs!1353092 (and d!1816954 d!1816404)))

(assert (=> bs!1353092 (= (dynLambda!24863 lambda!313119 (h!69954 lt!2289353)) (validRegex!7513 (h!69954 lt!2289353)))))

(declare-fun m!6712968 () Bool)

(assert (=> bs!1353092 m!6712968))

(assert (=> b!5766354 d!1816954))

(check-sat (not b!5767154) (not b!5766611) (not bm!443014) (not b!5767105) (not d!1816714) (not b!5766184) (not b!5766900) (not b!5767052) (not b!5766442) (not b!5767013) (not b!5767104) (not d!1816750) (not b_lambda!217669) (not b!5766225) (not b!5766176) (not bm!442949) (not b!5766483) (not bm!442931) (not b_lambda!217707) (not d!1816646) (not b!5766968) (not b!5766312) (not bs!1353092) (not b!5767045) (not b!5766187) (not b_lambda!217705) (not b!5766675) (not b!5767137) (not d!1816518) (not b!5767091) (not b!5767121) (not b!5766623) (not d!1816530) (not d!1816652) (not d!1816784) (not b!5767150) (not b!5767088) (not b!5767068) (not bm!443050) (not b_lambda!217709) (not b!5766789) (not b!5766722) (not bm!442911) (not d!1816666) (not bm!442883) (not b!5766336) (not d!1816908) (not b!5766174) (not b!5767123) (not setNonEmpty!38744) (not b!5767051) (not bm!442877) (not b!5766820) (not b_lambda!217701) (not b!5767147) (not b!5766798) (not d!1816888) (not d!1816670) (not b!5767085) (not b!5767109) (not b!5767056) (not b!5766433) (not bm!442991) (not d!1816524) (not b!5766836) (not b!5767095) (not b!5766969) (not b!5767112) (not b!5766193) (not b!5766293) (not bm!442920) (not b!5766501) (not bm!442912) (not b!5766355) (not b!5766679) (not b!5766955) (not setNonEmpty!38742) (not b!5766784) (not b!5766967) (not b!5767071) (not b!5766902) (not b!5766247) (not bs!1353086) (not d!1816880) (not b!5766809) (not b!5766255) (not b!5766610) (not bm!443011) (not bm!443056) (not b!5767061) (not b!5766800) (not bm!442895) (not d!1816588) (not d!1816798) (not b!5766337) (not b!5766963) (not b!5766720) (not bm!442908) (not b!5766358) (not b!5767064) (not d!1816598) (not b!5767014) (not bs!1353090) (not b!5766781) (not bm!442915) (not b!5766480) (not b!5767158) (not d!1816662) (not b!5766933) (not d!1816550) (not b!5767041) (not d!1816544) (not b!5766799) (not bm!442971) (not b!5766243) (not bm!442897) (not b!5767101) (not b!5767069) (not bm!443020) (not d!1816904) (not b!5766383) (not b!5766484) (not d!1816786) tp_is_empty!40807 (not b!5767097) (not b!5766497) (not b!5767111) (not b!5767133) (not d!1816902) (not b!5767055) (not b!5767115) (not b!5767063) (not d!1816500) (not b!5767089) (not d!1816868) (not b!5767135) (not b_lambda!217699) (not b!5767022) (not d!1816614) (not b!5766273) (not b!5767146) (not b!5767009) (not b!5767156) (not b!5767090) (not b!5766602) (not bm!442938) (not d!1816720) (not bs!1353088) (not d!1816636) (not bm!443017) (not bm!442988) (not bm!442990) (not b!5767163) (not bm!442918) (not b!5767155) (not b!5766677) (not b!5767043) (not bm!442881) (not b!5767065) (not b!5766612) (not bm!442946) (not b!5766241) (not b!5767086) (not b!5767166) (not b!5766178) (not b!5767170) (not b!5766957) (not d!1816642) (not b!5766394) (not b!5767118) (not b!5766970) (not b!5766240) (not b!5767144) (not d!1816912) (not d!1816664) (not bm!442885) (not b!5767057) (not b!5767047) (not b!5766180) (not bm!443032) (not bm!443012) (not b!5767159) (not bm!442868) (not bm!443019) (not bm!443052) (not b!5766956) (not b!5767053) (not b!5767094) (not b!5766605) (not d!1816746) (not d!1816900) (not d!1816672) (not b!5767167) (not b!5766271) (not bm!442989) (not b!5767006) (not b!5766496) (not bm!442975) (not b!5767107) (not b!5767160) (not b!5766934) (not bm!442998) (not d!1816674) (not bm!442929) (not bm!442997) (not d!1816554) (not bm!443033) (not d!1816682) (not b!5766788) (not bm!442947) (not b_lambda!217697) (not b!5767084) (not b!5767072) (not d!1816906) (not setNonEmpty!38738) (not b!5767093) (not b!5767132) (not b!5766409) (not d!1816574) (not b!5767164) (not d!1816680) (not b!5767113) (not b!5767018) (not d!1816668) (not b!5766516) (not b!5766191) (not b!5767099) (not bm!442935) (not b!5766507) (not bm!443015) (not b!5767048) (not b!5766504) (not b!5766274) (not bm!442985) (not b!5767108) (not b!5767015) (not b!5767003) (not d!1816616) (not b!5767059) (not b!5766173) (not bm!442880) (not b!5767073) (not d!1816630) (not b!5767019) (not b!5766410) (not d!1816648) (not b!5766192) (not b!5767016) (not b!5766233) (not b!5767138) (not d!1816628) (not bm!442952) (not b!5766850) (not b!5767162) (not b!5767125) (not d!1816620) (not bm!443016) (not b_lambda!217703) (not bm!442974) (not d!1816722) (not bm!442970) (not b!5767148) (not b!5766807) (not b!5766272) (not bm!442919) (not b!5767098) (not b!5767067) (not b!5767103) (not bm!443055) (not b!5766405) (not b!5766236) (not b!5766402) (not d!1816516) (not d!1816504) (not b!5767122) (not b!5766194) (not d!1816542) (not b!5766242) (not b_lambda!217667) (not d!1816522) (not b!5767044) (not d!1816532) (not b!5766665) (not bm!443013) (not d!1816684) (not bm!443047) (not bs!1353085) (not bm!442882) (not b!5766818) (not b!5767169) (not b!5766408) (not d!1816724) (not d!1816840) (not d!1816838) (not b!5767126) (not b!5767060) (not b!5766499) (not b!5766254) (not b!5766463) (not b!5766302) (not b!5767117) (not bm!443044) (not b!5767131) (not b!5766609) (not b!5766837) (not bm!442950) (not b!5766790) (not bm!442982) (not bm!443018) (not d!1816570) (not b!5766625) (not b!5766469) (not b!5766406) (not b!5766403) (not bm!442944) (not b!5766626) (not b!5767143) (not b!5767100) (not d!1816920) (not b!5766228) (not b!5766503) (not b!5767168) (not b!5766172) (not b!5767049) (not b!5766498) (not d!1816506) (not b!5766791) (not b!5766960) (not b!5767136) (not b!5767116) (not b!5766848) (not bm!442939) (not b!5766477) (not bm!442922) (not b!5766479) (not b!5766179) (not b!5767142) (not b!5767152) (not b!5767127) (not b!5766227) (not b!5767120) (not d!1816810) (not b!5767151) (not d!1816896) (not bm!443040) (not b!5766500) (not bm!442983))
(check-sat)
