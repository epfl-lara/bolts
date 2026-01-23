; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!589088 () Bool)

(assert start!589088)

(declare-fun b!5723326 () Bool)

(assert (=> b!5723326 true))

(assert (=> b!5723326 true))

(declare-fun lambda!309320 () Int)

(declare-fun lambda!309319 () Int)

(assert (=> b!5723326 (not (= lambda!309320 lambda!309319))))

(assert (=> b!5723326 true))

(assert (=> b!5723326 true))

(declare-fun b!5723322 () Bool)

(assert (=> b!5723322 true))

(declare-fun b!5723309 () Bool)

(declare-fun e!3519314 () Bool)

(declare-datatypes ((C!31708 0))(
  ( (C!31709 (val!25556 Int)) )
))
(declare-datatypes ((Regex!15719 0))(
  ( (ElementMatch!15719 (c!1009521 C!31708)) (Concat!24564 (regOne!31950 Regex!15719) (regTwo!31950 Regex!15719)) (EmptyExpr!15719) (Star!15719 (reg!16048 Regex!15719)) (EmptyLang!15719) (Union!15719 (regOne!31951 Regex!15719) (regTwo!31951 Regex!15719)) )
))
(declare-fun r!7292 () Regex!15719)

(declare-fun nullable!5751 (Regex!15719) Bool)

(assert (=> b!5723309 (= e!3519314 (nullable!5751 (regOne!31950 (regOne!31950 r!7292))))))

(declare-fun b!5723310 () Bool)

(declare-fun e!3519326 () Bool)

(declare-fun e!3519319 () Bool)

(assert (=> b!5723310 (= e!3519326 (not e!3519319))))

(declare-fun res!2416229 () Bool)

(assert (=> b!5723310 (=> res!2416229 e!3519319)))

(declare-datatypes ((List!63456 0))(
  ( (Nil!63332) (Cons!63332 (h!69780 Regex!15719) (t!376782 List!63456)) )
))
(declare-datatypes ((Context!10206 0))(
  ( (Context!10207 (exprs!5603 List!63456)) )
))
(declare-datatypes ((List!63457 0))(
  ( (Nil!63333) (Cons!63333 (h!69781 Context!10206) (t!376783 List!63457)) )
))
(declare-fun zl!343 () List!63457)

(get-info :version)

(assert (=> b!5723310 (= res!2416229 (not ((_ is Cons!63333) zl!343)))))

(declare-fun lt!2278439 () Bool)

(declare-datatypes ((List!63458 0))(
  ( (Nil!63334) (Cons!63334 (h!69782 C!31708) (t!376784 List!63458)) )
))
(declare-fun s!2326 () List!63458)

(declare-fun matchRSpec!2822 (Regex!15719 List!63458) Bool)

(assert (=> b!5723310 (= lt!2278439 (matchRSpec!2822 r!7292 s!2326))))

(declare-fun matchR!7904 (Regex!15719 List!63458) Bool)

(assert (=> b!5723310 (= lt!2278439 (matchR!7904 r!7292 s!2326))))

(declare-datatypes ((Unit!156408 0))(
  ( (Unit!156409) )
))
(declare-fun lt!2278459 () Unit!156408)

(declare-fun mainMatchTheorem!2822 (Regex!15719 List!63458) Unit!156408)

(assert (=> b!5723310 (= lt!2278459 (mainMatchTheorem!2822 r!7292 s!2326))))

(declare-fun b!5723311 () Bool)

(declare-fun e!3519317 () Bool)

(declare-fun e!3519327 () Bool)

(assert (=> b!5723311 (= e!3519317 e!3519327)))

(declare-fun res!2416231 () Bool)

(assert (=> b!5723311 (=> res!2416231 e!3519327)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2278458 () (InoxSet Context!10206))

(declare-fun lt!2278468 () (InoxSet Context!10206))

(assert (=> b!5723311 (= res!2416231 (not (= lt!2278458 lt!2278468)))))

(declare-fun lambda!309321 () Int)

(declare-fun lt!2278465 () Context!10206)

(declare-fun lt!2278440 () (InoxSet Context!10206))

(declare-fun flatMap!1332 ((InoxSet Context!10206) Int) (InoxSet Context!10206))

(declare-fun derivationStepZipperUp!987 (Context!10206 C!31708) (InoxSet Context!10206))

(assert (=> b!5723311 (= (flatMap!1332 lt!2278440 lambda!309321) (derivationStepZipperUp!987 lt!2278465 (h!69782 s!2326)))))

(declare-fun lt!2278467 () Unit!156408)

(declare-fun lemmaFlatMapOnSingletonSet!864 ((InoxSet Context!10206) Context!10206 Int) Unit!156408)

(assert (=> b!5723311 (= lt!2278467 (lemmaFlatMapOnSingletonSet!864 lt!2278440 lt!2278465 lambda!309321))))

(declare-fun lt!2278443 () (InoxSet Context!10206))

(assert (=> b!5723311 (= lt!2278443 (derivationStepZipperUp!987 lt!2278465 (h!69782 s!2326)))))

(declare-fun derivationStepZipper!1802 ((InoxSet Context!10206) C!31708) (InoxSet Context!10206))

(assert (=> b!5723311 (= lt!2278458 (derivationStepZipper!1802 lt!2278440 (h!69782 s!2326)))))

(assert (=> b!5723311 (= lt!2278440 (store ((as const (Array Context!10206 Bool)) false) lt!2278465 true))))

(declare-fun lt!2278436 () List!63456)

(assert (=> b!5723311 (= lt!2278465 (Context!10207 (Cons!63332 (reg!16048 (regOne!31950 r!7292)) lt!2278436)))))

(declare-fun b!5723312 () Bool)

(declare-fun e!3519332 () Bool)

(declare-fun lt!2278434 () (InoxSet Context!10206))

(declare-fun matchZipper!1857 ((InoxSet Context!10206) List!63458) Bool)

(assert (=> b!5723312 (= e!3519332 (not (matchZipper!1857 lt!2278434 (t!376784 s!2326))))))

(declare-fun b!5723313 () Bool)

(declare-fun e!3519322 () Bool)

(assert (=> b!5723313 (= e!3519322 e!3519326)))

(declare-fun res!2416218 () Bool)

(assert (=> b!5723313 (=> (not res!2416218) (not e!3519326))))

(declare-fun lt!2278447 () Regex!15719)

(assert (=> b!5723313 (= res!2416218 (= r!7292 lt!2278447))))

(declare-fun unfocusZipper!1461 (List!63457) Regex!15719)

(assert (=> b!5723313 (= lt!2278447 (unfocusZipper!1461 zl!343))))

(declare-fun b!5723314 () Bool)

(declare-fun res!2416207 () Bool)

(declare-fun e!3519315 () Bool)

(assert (=> b!5723314 (=> res!2416207 e!3519315)))

(assert (=> b!5723314 (= res!2416207 e!3519314)))

(declare-fun res!2416212 () Bool)

(assert (=> b!5723314 (=> (not res!2416212) (not e!3519314))))

(assert (=> b!5723314 (= res!2416212 ((_ is Concat!24564) (regOne!31950 r!7292)))))

(declare-fun b!5723315 () Bool)

(declare-fun res!2416215 () Bool)

(assert (=> b!5723315 (=> res!2416215 e!3519319)))

(declare-fun generalisedConcat!1334 (List!63456) Regex!15719)

(assert (=> b!5723315 (= res!2416215 (not (= r!7292 (generalisedConcat!1334 (exprs!5603 (h!69781 zl!343))))))))

(declare-fun b!5723316 () Bool)

(declare-fun e!3519328 () Bool)

(declare-fun e!3519316 () Bool)

(assert (=> b!5723316 (= e!3519328 e!3519316)))

(declare-fun res!2416214 () Bool)

(assert (=> b!5723316 (=> res!2416214 e!3519316)))

(declare-fun lt!2278446 () Regex!15719)

(assert (=> b!5723316 (= res!2416214 (not (= r!7292 lt!2278446)))))

(declare-fun lt!2278462 () Regex!15719)

(assert (=> b!5723316 (= lt!2278446 (Concat!24564 lt!2278462 (regTwo!31950 r!7292)))))

(declare-fun b!5723317 () Bool)

(declare-fun e!3519329 () Bool)

(declare-fun tp!1584930 () Bool)

(assert (=> b!5723317 (= e!3519329 tp!1584930)))

(declare-fun b!5723318 () Bool)

(declare-fun e!3519321 () Bool)

(assert (=> b!5723318 (= e!3519321 (matchZipper!1857 lt!2278434 (t!376784 s!2326)))))

(declare-fun b!5723319 () Bool)

(declare-fun e!3519325 () Unit!156408)

(declare-fun Unit!156410 () Unit!156408)

(assert (=> b!5723319 (= e!3519325 Unit!156410)))

(declare-fun b!5723320 () Bool)

(declare-fun e!3519331 () Bool)

(declare-fun tp_is_empty!40691 () Bool)

(assert (=> b!5723320 (= e!3519331 tp_is_empty!40691)))

(declare-fun b!5723321 () Bool)

(declare-fun res!2416206 () Bool)

(assert (=> b!5723321 (=> res!2416206 e!3519328)))

(assert (=> b!5723321 (= res!2416206 (not (= lt!2278447 r!7292)))))

(declare-fun e!3519324 () Bool)

(assert (=> b!5723322 (= e!3519324 e!3519315)))

(declare-fun res!2416224 () Bool)

(assert (=> b!5723322 (=> res!2416224 e!3519315)))

(assert (=> b!5723322 (= res!2416224 (or (and ((_ is ElementMatch!15719) (regOne!31950 r!7292)) (= (c!1009521 (regOne!31950 r!7292)) (h!69782 s!2326))) ((_ is Union!15719) (regOne!31950 r!7292))))))

(declare-fun lt!2278453 () Unit!156408)

(assert (=> b!5723322 (= lt!2278453 e!3519325)))

(declare-fun c!1009520 () Bool)

(declare-fun lt!2278452 () Bool)

(assert (=> b!5723322 (= c!1009520 lt!2278452)))

(assert (=> b!5723322 (= lt!2278452 (nullable!5751 (h!69780 (exprs!5603 (h!69781 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!10206))

(assert (=> b!5723322 (= (flatMap!1332 z!1189 lambda!309321) (derivationStepZipperUp!987 (h!69781 zl!343) (h!69782 s!2326)))))

(declare-fun lt!2278463 () Unit!156408)

(assert (=> b!5723322 (= lt!2278463 (lemmaFlatMapOnSingletonSet!864 z!1189 (h!69781 zl!343) lambda!309321))))

(declare-fun lt!2278449 () Context!10206)

(assert (=> b!5723322 (= lt!2278434 (derivationStepZipperUp!987 lt!2278449 (h!69782 s!2326)))))

(declare-fun lt!2278454 () (InoxSet Context!10206))

(declare-fun derivationStepZipperDown!1061 (Regex!15719 Context!10206 C!31708) (InoxSet Context!10206))

(assert (=> b!5723322 (= lt!2278454 (derivationStepZipperDown!1061 (h!69780 (exprs!5603 (h!69781 zl!343))) lt!2278449 (h!69782 s!2326)))))

(assert (=> b!5723322 (= lt!2278449 (Context!10207 (t!376782 (exprs!5603 (h!69781 zl!343)))))))

(declare-fun lt!2278460 () (InoxSet Context!10206))

(assert (=> b!5723322 (= lt!2278460 (derivationStepZipperUp!987 (Context!10207 (Cons!63332 (h!69780 (exprs!5603 (h!69781 zl!343))) (t!376782 (exprs!5603 (h!69781 zl!343))))) (h!69782 s!2326)))))

(declare-fun b!5723323 () Bool)

(declare-fun e!3519323 () Bool)

(assert (=> b!5723323 (= e!3519316 e!3519323)))

(declare-fun res!2416216 () Bool)

(assert (=> b!5723323 (=> res!2416216 e!3519323)))

(declare-fun lt!2278444 () Regex!15719)

(assert (=> b!5723323 (= res!2416216 (not (= (unfocusZipper!1461 (Cons!63333 lt!2278465 Nil!63333)) lt!2278444)))))

(assert (=> b!5723323 (= lt!2278444 (Concat!24564 (reg!16048 (regOne!31950 r!7292)) lt!2278446))))

(declare-fun b!5723324 () Bool)

(declare-fun res!2416227 () Bool)

(assert (=> b!5723324 (=> res!2416227 e!3519324)))

(declare-fun isEmpty!35209 (List!63456) Bool)

(assert (=> b!5723324 (= res!2416227 (isEmpty!35209 (t!376782 (exprs!5603 (h!69781 zl!343)))))))

(declare-fun b!5723325 () Bool)

(declare-fun res!2416228 () Bool)

(declare-fun e!3519330 () Bool)

(assert (=> b!5723325 (=> res!2416228 e!3519330)))

(assert (=> b!5723325 (= res!2416228 (not lt!2278452))))

(assert (=> b!5723326 (= e!3519319 e!3519324)))

(declare-fun res!2416210 () Bool)

(assert (=> b!5723326 (=> res!2416210 e!3519324)))

(declare-fun lt!2278437 () Bool)

(assert (=> b!5723326 (= res!2416210 (or (not (= lt!2278439 lt!2278437)) ((_ is Nil!63334) s!2326)))))

(declare-fun Exists!2819 (Int) Bool)

(assert (=> b!5723326 (= (Exists!2819 lambda!309319) (Exists!2819 lambda!309320))))

(declare-fun lt!2278450 () Unit!156408)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1448 (Regex!15719 Regex!15719 List!63458) Unit!156408)

(assert (=> b!5723326 (= lt!2278450 (lemmaExistCutMatchRandMatchRSpecEquivalent!1448 (regOne!31950 r!7292) (regTwo!31950 r!7292) s!2326))))

(assert (=> b!5723326 (= lt!2278437 (Exists!2819 lambda!309319))))

(declare-datatypes ((tuple2!65632 0))(
  ( (tuple2!65633 (_1!36119 List!63458) (_2!36119 List!63458)) )
))
(declare-datatypes ((Option!15728 0))(
  ( (None!15727) (Some!15727 (v!51782 tuple2!65632)) )
))
(declare-fun isDefined!12431 (Option!15728) Bool)

(declare-fun findConcatSeparation!2142 (Regex!15719 Regex!15719 List!63458 List!63458 List!63458) Option!15728)

(assert (=> b!5723326 (= lt!2278437 (isDefined!12431 (findConcatSeparation!2142 (regOne!31950 r!7292) (regTwo!31950 r!7292) Nil!63334 s!2326 s!2326)))))

(declare-fun lt!2278464 () Unit!156408)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1906 (Regex!15719 Regex!15719 List!63458) Unit!156408)

(assert (=> b!5723326 (= lt!2278464 (lemmaFindConcatSeparationEquivalentToExists!1906 (regOne!31950 r!7292) (regTwo!31950 r!7292) s!2326))))

(declare-fun b!5723327 () Bool)

(declare-fun res!2416221 () Bool)

(assert (=> b!5723327 (=> res!2416221 e!3519319)))

(assert (=> b!5723327 (= res!2416221 (or ((_ is EmptyExpr!15719) r!7292) ((_ is EmptyLang!15719) r!7292) ((_ is ElementMatch!15719) r!7292) ((_ is Union!15719) r!7292) (not ((_ is Concat!24564) r!7292))))))

(declare-fun b!5723328 () Bool)

(declare-fun res!2416203 () Bool)

(declare-fun e!3519334 () Bool)

(assert (=> b!5723328 (=> res!2416203 e!3519334)))

(declare-fun lt!2278442 () Context!10206)

(assert (=> b!5723328 (= res!2416203 (not (= (unfocusZipper!1461 (Cons!63333 lt!2278442 Nil!63333)) lt!2278446)))))

(declare-fun b!5723329 () Bool)

(assert (=> b!5723329 (= e!3519315 e!3519317)))

(declare-fun res!2416204 () Bool)

(assert (=> b!5723329 (=> res!2416204 e!3519317)))

(assert (=> b!5723329 (= res!2416204 (not (= lt!2278454 lt!2278468)))))

(assert (=> b!5723329 (= lt!2278468 (derivationStepZipperDown!1061 (reg!16048 (regOne!31950 r!7292)) lt!2278442 (h!69782 s!2326)))))

(assert (=> b!5723329 (= lt!2278442 (Context!10207 lt!2278436))))

(assert (=> b!5723329 (= lt!2278436 (Cons!63332 lt!2278462 (t!376782 (exprs!5603 (h!69781 zl!343)))))))

(assert (=> b!5723329 (= lt!2278462 (Star!15719 (reg!16048 (regOne!31950 r!7292))))))

(declare-fun res!2416211 () Bool)

(assert (=> start!589088 (=> (not res!2416211) (not e!3519322))))

(declare-fun validRegex!7455 (Regex!15719) Bool)

(assert (=> start!589088 (= res!2416211 (validRegex!7455 r!7292))))

(assert (=> start!589088 e!3519322))

(assert (=> start!589088 e!3519331))

(declare-fun condSetEmpty!38357 () Bool)

(assert (=> start!589088 (= condSetEmpty!38357 (= z!1189 ((as const (Array Context!10206 Bool)) false)))))

(declare-fun setRes!38357 () Bool)

(assert (=> start!589088 setRes!38357))

(declare-fun e!3519333 () Bool)

(assert (=> start!589088 e!3519333))

(declare-fun e!3519313 () Bool)

(assert (=> start!589088 e!3519313))

(declare-fun b!5723330 () Bool)

(assert (=> b!5723330 (= e!3519323 e!3519334)))

(declare-fun res!2416205 () Bool)

(assert (=> b!5723330 (=> res!2416205 e!3519334)))

(declare-fun lt!2278457 () Context!10206)

(assert (=> b!5723330 (= res!2416205 (not (= (unfocusZipper!1461 (Cons!63333 lt!2278457 Nil!63333)) (reg!16048 (regOne!31950 r!7292)))))))

(declare-fun lt!2278456 () (InoxSet Context!10206))

(assert (=> b!5723330 (= (flatMap!1332 lt!2278456 lambda!309321) (derivationStepZipperUp!987 lt!2278442 (h!69782 s!2326)))))

(declare-fun lt!2278445 () Unit!156408)

(assert (=> b!5723330 (= lt!2278445 (lemmaFlatMapOnSingletonSet!864 lt!2278456 lt!2278442 lambda!309321))))

(declare-fun lt!2278441 () (InoxSet Context!10206))

(assert (=> b!5723330 (= (flatMap!1332 lt!2278441 lambda!309321) (derivationStepZipperUp!987 lt!2278457 (h!69782 s!2326)))))

(declare-fun lt!2278438 () Unit!156408)

(assert (=> b!5723330 (= lt!2278438 (lemmaFlatMapOnSingletonSet!864 lt!2278441 lt!2278457 lambda!309321))))

(declare-fun lt!2278435 () (InoxSet Context!10206))

(assert (=> b!5723330 (= lt!2278435 (derivationStepZipperUp!987 lt!2278442 (h!69782 s!2326)))))

(declare-fun lt!2278461 () (InoxSet Context!10206))

(assert (=> b!5723330 (= lt!2278461 (derivationStepZipperUp!987 lt!2278457 (h!69782 s!2326)))))

(assert (=> b!5723330 (= lt!2278456 (store ((as const (Array Context!10206 Bool)) false) lt!2278442 true))))

(assert (=> b!5723330 (= lt!2278441 (store ((as const (Array Context!10206 Bool)) false) lt!2278457 true))))

(assert (=> b!5723330 (= lt!2278457 (Context!10207 (Cons!63332 (reg!16048 (regOne!31950 r!7292)) Nil!63332)))))

(declare-fun b!5723331 () Bool)

(declare-fun e!3519318 () Bool)

(assert (=> b!5723331 (= e!3519330 e!3519318)))

(declare-fun res!2416219 () Bool)

(assert (=> b!5723331 (=> res!2416219 e!3519318)))

(assert (=> b!5723331 (= res!2416219 e!3519332)))

(declare-fun res!2416225 () Bool)

(assert (=> b!5723331 (=> (not res!2416225) (not e!3519332))))

(declare-fun lt!2278466 () Bool)

(assert (=> b!5723331 (= res!2416225 (not lt!2278466))))

(assert (=> b!5723331 (= lt!2278466 (matchZipper!1857 lt!2278454 (t!376784 s!2326)))))

(declare-fun b!5723332 () Bool)

(declare-fun res!2416209 () Bool)

(assert (=> b!5723332 (=> res!2416209 e!3519319)))

(assert (=> b!5723332 (= res!2416209 (not ((_ is Cons!63332) (exprs!5603 (h!69781 zl!343)))))))

(declare-fun b!5723333 () Bool)

(declare-fun res!2416208 () Bool)

(assert (=> b!5723333 (=> res!2416208 e!3519315)))

(assert (=> b!5723333 (= res!2416208 (or ((_ is Concat!24564) (regOne!31950 r!7292)) (not ((_ is Star!15719) (regOne!31950 r!7292)))))))

(declare-fun b!5723334 () Bool)

(assert (=> b!5723334 (= e!3519327 e!3519328)))

(declare-fun res!2416220 () Bool)

(assert (=> b!5723334 (=> res!2416220 e!3519328)))

(declare-fun lt!2278451 () Bool)

(assert (=> b!5723334 (= res!2416220 (not (= lt!2278451 (matchZipper!1857 lt!2278458 (t!376784 s!2326)))))))

(assert (=> b!5723334 (= lt!2278451 (matchZipper!1857 lt!2278440 s!2326))))

(declare-fun b!5723335 () Bool)

(declare-fun e!3519320 () Bool)

(declare-fun tp!1584934 () Bool)

(assert (=> b!5723335 (= e!3519320 tp!1584934)))

(declare-fun b!5723336 () Bool)

(declare-fun res!2416217 () Bool)

(assert (=> b!5723336 (=> res!2416217 e!3519319)))

(declare-fun isEmpty!35210 (List!63457) Bool)

(assert (=> b!5723336 (= res!2416217 (not (isEmpty!35210 (t!376783 zl!343))))))

(declare-fun b!5723337 () Bool)

(declare-fun res!2416226 () Bool)

(assert (=> b!5723337 (=> res!2416226 e!3519319)))

(declare-fun generalisedUnion!1582 (List!63456) Regex!15719)

(declare-fun unfocusZipperList!1147 (List!63457) List!63456)

(assert (=> b!5723337 (= res!2416226 (not (= r!7292 (generalisedUnion!1582 (unfocusZipperList!1147 zl!343)))))))

(declare-fun b!5723338 () Bool)

(declare-fun Unit!156411 () Unit!156408)

(assert (=> b!5723338 (= e!3519325 Unit!156411)))

(declare-fun lt!2278455 () Unit!156408)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!744 ((InoxSet Context!10206) (InoxSet Context!10206) List!63458) Unit!156408)

(assert (=> b!5723338 (= lt!2278455 (lemmaZipperConcatMatchesSameAsBothZippers!744 lt!2278454 lt!2278434 (t!376784 s!2326)))))

(declare-fun res!2416222 () Bool)

(assert (=> b!5723338 (= res!2416222 (matchZipper!1857 lt!2278454 (t!376784 s!2326)))))

(assert (=> b!5723338 (=> res!2416222 e!3519321)))

(assert (=> b!5723338 (= (matchZipper!1857 ((_ map or) lt!2278454 lt!2278434) (t!376784 s!2326)) e!3519321)))

(declare-fun b!5723339 () Bool)

(declare-fun tp!1584937 () Bool)

(assert (=> b!5723339 (= e!3519313 (and tp_is_empty!40691 tp!1584937))))

(declare-fun b!5723340 () Bool)

(assert (=> b!5723340 (= e!3519318 (or (not lt!2278466) lt!2278451))))

(declare-fun b!5723341 () Bool)

(declare-fun tp!1584933 () Bool)

(declare-fun tp!1584929 () Bool)

(assert (=> b!5723341 (= e!3519331 (and tp!1584933 tp!1584929))))

(declare-fun setElem!38357 () Context!10206)

(declare-fun tp!1584932 () Bool)

(declare-fun setNonEmpty!38357 () Bool)

(declare-fun inv!82544 (Context!10206) Bool)

(assert (=> setNonEmpty!38357 (= setRes!38357 (and tp!1584932 (inv!82544 setElem!38357) e!3519329))))

(declare-fun setRest!38357 () (InoxSet Context!10206))

(assert (=> setNonEmpty!38357 (= z!1189 ((_ map or) (store ((as const (Array Context!10206 Bool)) false) setElem!38357 true) setRest!38357))))

(declare-fun b!5723342 () Bool)

(declare-fun res!2416223 () Bool)

(assert (=> b!5723342 (=> res!2416223 e!3519330)))

(assert (=> b!5723342 (= res!2416223 (not (matchZipper!1857 z!1189 s!2326)))))

(declare-fun b!5723343 () Bool)

(assert (=> b!5723343 (= e!3519334 e!3519330)))

(declare-fun res!2416230 () Bool)

(assert (=> b!5723343 (=> res!2416230 e!3519330)))

(assert (=> b!5723343 (= res!2416230 lt!2278439)))

(assert (=> b!5723343 (= (matchR!7904 lt!2278444 s!2326) (matchRSpec!2822 lt!2278444 s!2326))))

(declare-fun lt!2278448 () Unit!156408)

(assert (=> b!5723343 (= lt!2278448 (mainMatchTheorem!2822 lt!2278444 s!2326))))

(declare-fun b!5723344 () Bool)

(declare-fun tp!1584938 () Bool)

(assert (=> b!5723344 (= e!3519333 (and (inv!82544 (h!69781 zl!343)) e!3519320 tp!1584938))))

(declare-fun b!5723345 () Bool)

(declare-fun tp!1584935 () Bool)

(assert (=> b!5723345 (= e!3519331 tp!1584935)))

(declare-fun b!5723346 () Bool)

(declare-fun tp!1584931 () Bool)

(declare-fun tp!1584936 () Bool)

(assert (=> b!5723346 (= e!3519331 (and tp!1584931 tp!1584936))))

(declare-fun setIsEmpty!38357 () Bool)

(assert (=> setIsEmpty!38357 setRes!38357))

(declare-fun b!5723347 () Bool)

(declare-fun res!2416213 () Bool)

(assert (=> b!5723347 (=> (not res!2416213) (not e!3519322))))

(declare-fun toList!9503 ((InoxSet Context!10206)) List!63457)

(assert (=> b!5723347 (= res!2416213 (= (toList!9503 z!1189) zl!343))))

(assert (= (and start!589088 res!2416211) b!5723347))

(assert (= (and b!5723347 res!2416213) b!5723313))

(assert (= (and b!5723313 res!2416218) b!5723310))

(assert (= (and b!5723310 (not res!2416229)) b!5723336))

(assert (= (and b!5723336 (not res!2416217)) b!5723315))

(assert (= (and b!5723315 (not res!2416215)) b!5723332))

(assert (= (and b!5723332 (not res!2416209)) b!5723337))

(assert (= (and b!5723337 (not res!2416226)) b!5723327))

(assert (= (and b!5723327 (not res!2416221)) b!5723326))

(assert (= (and b!5723326 (not res!2416210)) b!5723324))

(assert (= (and b!5723324 (not res!2416227)) b!5723322))

(assert (= (and b!5723322 c!1009520) b!5723338))

(assert (= (and b!5723322 (not c!1009520)) b!5723319))

(assert (= (and b!5723338 (not res!2416222)) b!5723318))

(assert (= (and b!5723322 (not res!2416224)) b!5723314))

(assert (= (and b!5723314 res!2416212) b!5723309))

(assert (= (and b!5723314 (not res!2416207)) b!5723333))

(assert (= (and b!5723333 (not res!2416208)) b!5723329))

(assert (= (and b!5723329 (not res!2416204)) b!5723311))

(assert (= (and b!5723311 (not res!2416231)) b!5723334))

(assert (= (and b!5723334 (not res!2416220)) b!5723321))

(assert (= (and b!5723321 (not res!2416206)) b!5723316))

(assert (= (and b!5723316 (not res!2416214)) b!5723323))

(assert (= (and b!5723323 (not res!2416216)) b!5723330))

(assert (= (and b!5723330 (not res!2416205)) b!5723328))

(assert (= (and b!5723328 (not res!2416203)) b!5723343))

(assert (= (and b!5723343 (not res!2416230)) b!5723342))

(assert (= (and b!5723342 (not res!2416223)) b!5723325))

(assert (= (and b!5723325 (not res!2416228)) b!5723331))

(assert (= (and b!5723331 res!2416225) b!5723312))

(assert (= (and b!5723331 (not res!2416219)) b!5723340))

(assert (= (and start!589088 ((_ is ElementMatch!15719) r!7292)) b!5723320))

(assert (= (and start!589088 ((_ is Concat!24564) r!7292)) b!5723341))

(assert (= (and start!589088 ((_ is Star!15719) r!7292)) b!5723345))

(assert (= (and start!589088 ((_ is Union!15719) r!7292)) b!5723346))

(assert (= (and start!589088 condSetEmpty!38357) setIsEmpty!38357))

(assert (= (and start!589088 (not condSetEmpty!38357)) setNonEmpty!38357))

(assert (= setNonEmpty!38357 b!5723317))

(assert (= b!5723344 b!5723335))

(assert (= (and start!589088 ((_ is Cons!63333) zl!343)) b!5723344))

(assert (= (and start!589088 ((_ is Cons!63334) s!2326)) b!5723339))

(declare-fun m!6676190 () Bool)

(assert (=> b!5723322 m!6676190))

(declare-fun m!6676192 () Bool)

(assert (=> b!5723322 m!6676192))

(declare-fun m!6676194 () Bool)

(assert (=> b!5723322 m!6676194))

(declare-fun m!6676196 () Bool)

(assert (=> b!5723322 m!6676196))

(declare-fun m!6676198 () Bool)

(assert (=> b!5723322 m!6676198))

(declare-fun m!6676200 () Bool)

(assert (=> b!5723322 m!6676200))

(declare-fun m!6676202 () Bool)

(assert (=> b!5723322 m!6676202))

(declare-fun m!6676204 () Bool)

(assert (=> b!5723328 m!6676204))

(declare-fun m!6676206 () Bool)

(assert (=> b!5723338 m!6676206))

(declare-fun m!6676208 () Bool)

(assert (=> b!5723338 m!6676208))

(declare-fun m!6676210 () Bool)

(assert (=> b!5723338 m!6676210))

(declare-fun m!6676212 () Bool)

(assert (=> b!5723343 m!6676212))

(declare-fun m!6676214 () Bool)

(assert (=> b!5723343 m!6676214))

(declare-fun m!6676216 () Bool)

(assert (=> b!5723343 m!6676216))

(declare-fun m!6676218 () Bool)

(assert (=> b!5723337 m!6676218))

(assert (=> b!5723337 m!6676218))

(declare-fun m!6676220 () Bool)

(assert (=> b!5723337 m!6676220))

(declare-fun m!6676222 () Bool)

(assert (=> b!5723309 m!6676222))

(declare-fun m!6676224 () Bool)

(assert (=> start!589088 m!6676224))

(assert (=> b!5723331 m!6676208))

(declare-fun m!6676226 () Bool)

(assert (=> b!5723334 m!6676226))

(declare-fun m!6676228 () Bool)

(assert (=> b!5723334 m!6676228))

(declare-fun m!6676230 () Bool)

(assert (=> b!5723347 m!6676230))

(declare-fun m!6676232 () Bool)

(assert (=> b!5723336 m!6676232))

(declare-fun m!6676234 () Bool)

(assert (=> b!5723342 m!6676234))

(declare-fun m!6676236 () Bool)

(assert (=> setNonEmpty!38357 m!6676236))

(declare-fun m!6676238 () Bool)

(assert (=> b!5723323 m!6676238))

(declare-fun m!6676240 () Bool)

(assert (=> b!5723311 m!6676240))

(declare-fun m!6676242 () Bool)

(assert (=> b!5723311 m!6676242))

(declare-fun m!6676244 () Bool)

(assert (=> b!5723311 m!6676244))

(declare-fun m!6676246 () Bool)

(assert (=> b!5723311 m!6676246))

(declare-fun m!6676248 () Bool)

(assert (=> b!5723311 m!6676248))

(declare-fun m!6676250 () Bool)

(assert (=> b!5723315 m!6676250))

(declare-fun m!6676252 () Bool)

(assert (=> b!5723344 m!6676252))

(declare-fun m!6676254 () Bool)

(assert (=> b!5723312 m!6676254))

(declare-fun m!6676256 () Bool)

(assert (=> b!5723324 m!6676256))

(declare-fun m!6676258 () Bool)

(assert (=> b!5723313 m!6676258))

(declare-fun m!6676260 () Bool)

(assert (=> b!5723326 m!6676260))

(declare-fun m!6676262 () Bool)

(assert (=> b!5723326 m!6676262))

(declare-fun m!6676264 () Bool)

(assert (=> b!5723326 m!6676264))

(assert (=> b!5723326 m!6676264))

(declare-fun m!6676266 () Bool)

(assert (=> b!5723326 m!6676266))

(declare-fun m!6676268 () Bool)

(assert (=> b!5723326 m!6676268))

(assert (=> b!5723326 m!6676260))

(declare-fun m!6676270 () Bool)

(assert (=> b!5723326 m!6676270))

(assert (=> b!5723318 m!6676254))

(declare-fun m!6676272 () Bool)

(assert (=> b!5723329 m!6676272))

(declare-fun m!6676274 () Bool)

(assert (=> b!5723330 m!6676274))

(declare-fun m!6676276 () Bool)

(assert (=> b!5723330 m!6676276))

(declare-fun m!6676278 () Bool)

(assert (=> b!5723330 m!6676278))

(declare-fun m!6676280 () Bool)

(assert (=> b!5723330 m!6676280))

(declare-fun m!6676282 () Bool)

(assert (=> b!5723330 m!6676282))

(declare-fun m!6676284 () Bool)

(assert (=> b!5723330 m!6676284))

(declare-fun m!6676286 () Bool)

(assert (=> b!5723330 m!6676286))

(declare-fun m!6676288 () Bool)

(assert (=> b!5723330 m!6676288))

(declare-fun m!6676290 () Bool)

(assert (=> b!5723330 m!6676290))

(declare-fun m!6676292 () Bool)

(assert (=> b!5723310 m!6676292))

(declare-fun m!6676294 () Bool)

(assert (=> b!5723310 m!6676294))

(declare-fun m!6676296 () Bool)

(assert (=> b!5723310 m!6676296))

(check-sat (not b!5723339) tp_is_empty!40691 (not b!5723317) (not b!5723334) (not b!5723343) (not b!5723310) (not b!5723344) (not b!5723341) (not b!5723311) (not b!5723338) (not b!5723337) (not b!5723347) (not b!5723330) (not b!5723342) (not b!5723324) (not b!5723312) (not setNonEmpty!38357) (not b!5723322) (not b!5723335) (not start!589088) (not b!5723331) (not b!5723329) (not b!5723345) (not b!5723318) (not b!5723328) (not b!5723313) (not b!5723309) (not b!5723346) (not b!5723315) (not b!5723336) (not b!5723326) (not b!5723323))
(check-sat)
