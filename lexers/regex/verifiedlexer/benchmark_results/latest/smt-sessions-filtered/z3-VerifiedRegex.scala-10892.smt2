; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563106 () Bool)

(assert start!563106)

(declare-fun b!5346375 () Bool)

(assert (=> b!5346375 true))

(assert (=> b!5346375 true))

(declare-fun lambda!274508 () Int)

(declare-fun lambda!274507 () Int)

(assert (=> b!5346375 (not (= lambda!274508 lambda!274507))))

(assert (=> b!5346375 true))

(assert (=> b!5346375 true))

(declare-fun b!5346374 () Bool)

(assert (=> b!5346374 true))

(declare-fun bs!1239576 () Bool)

(declare-fun b!5346388 () Bool)

(assert (= bs!1239576 (and b!5346388 b!5346375)))

(declare-datatypes ((C!30332 0))(
  ( (C!30333 (val!24868 Int)) )
))
(declare-datatypes ((Regex!15031 0))(
  ( (ElementMatch!15031 (c!930501 C!30332)) (Concat!23876 (regOne!30574 Regex!15031) (regTwo!30574 Regex!15031)) (EmptyExpr!15031) (Star!15031 (reg!15360 Regex!15031)) (EmptyLang!15031) (Union!15031 (regOne!30575 Regex!15031) (regTwo!30575 Regex!15031)) )
))
(declare-fun r!7292 () Regex!15031)

(declare-fun lambda!274510 () Int)

(declare-fun lt!2179732 () Regex!15031)

(assert (=> bs!1239576 (= (and (= (regOne!30574 (regOne!30574 r!7292)) (regOne!30574 r!7292)) (= lt!2179732 (regTwo!30574 r!7292))) (= lambda!274510 lambda!274507))))

(assert (=> bs!1239576 (not (= lambda!274510 lambda!274508))))

(assert (=> b!5346388 true))

(assert (=> b!5346388 true))

(assert (=> b!5346388 true))

(declare-fun lambda!274511 () Int)

(assert (=> bs!1239576 (not (= lambda!274511 lambda!274507))))

(assert (=> bs!1239576 (= (and (= (regOne!30574 (regOne!30574 r!7292)) (regOne!30574 r!7292)) (= lt!2179732 (regTwo!30574 r!7292))) (= lambda!274511 lambda!274508))))

(assert (=> b!5346388 (not (= lambda!274511 lambda!274510))))

(assert (=> b!5346388 true))

(assert (=> b!5346388 true))

(assert (=> b!5346388 true))

(declare-fun lt!2179729 () Regex!15031)

(declare-fun lambda!274512 () Int)

(assert (=> bs!1239576 (= (and (= (regTwo!30574 (regOne!30574 r!7292)) (regOne!30574 r!7292)) (= lt!2179729 (regTwo!30574 r!7292))) (= lambda!274512 lambda!274507))))

(assert (=> bs!1239576 (not (= lambda!274512 lambda!274508))))

(assert (=> b!5346388 (= (and (= (regTwo!30574 (regOne!30574 r!7292)) (regOne!30574 (regOne!30574 r!7292))) (= lt!2179729 lt!2179732)) (= lambda!274512 lambda!274510))))

(assert (=> b!5346388 (not (= lambda!274512 lambda!274511))))

(assert (=> b!5346388 true))

(assert (=> b!5346388 true))

(assert (=> b!5346388 true))

(declare-fun lambda!274513 () Int)

(assert (=> b!5346388 (= (and (= (regTwo!30574 (regOne!30574 r!7292)) (regOne!30574 (regOne!30574 r!7292))) (= lt!2179729 lt!2179732)) (= lambda!274513 lambda!274511))))

(assert (=> bs!1239576 (= (and (= (regTwo!30574 (regOne!30574 r!7292)) (regOne!30574 r!7292)) (= lt!2179729 (regTwo!30574 r!7292))) (= lambda!274513 lambda!274508))))

(assert (=> b!5346388 (not (= lambda!274513 lambda!274512))))

(assert (=> b!5346388 (not (= lambda!274513 lambda!274510))))

(assert (=> bs!1239576 (not (= lambda!274513 lambda!274507))))

(assert (=> b!5346388 true))

(assert (=> b!5346388 true))

(assert (=> b!5346388 true))

(declare-fun b!5346352 () Bool)

(declare-fun res!2268278 () Bool)

(declare-fun e!3319295 () Bool)

(assert (=> b!5346352 (=> (not res!2268278) (not e!3319295))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61392 0))(
  ( (Nil!61268) (Cons!61268 (h!67716 Regex!15031) (t!374609 List!61392)) )
))
(declare-datatypes ((Context!8830 0))(
  ( (Context!8831 (exprs!4915 List!61392)) )
))
(declare-fun z!1189 () (InoxSet Context!8830))

(declare-datatypes ((List!61393 0))(
  ( (Nil!61269) (Cons!61269 (h!67717 Context!8830) (t!374610 List!61393)) )
))
(declare-fun zl!343 () List!61393)

(declare-fun toList!8815 ((InoxSet Context!8830)) List!61393)

(assert (=> b!5346352 (= res!2268278 (= (toList!8815 z!1189) zl!343))))

(declare-fun setIsEmpty!34525 () Bool)

(declare-fun setRes!34525 () Bool)

(assert (=> setIsEmpty!34525 setRes!34525))

(declare-fun b!5346353 () Bool)

(declare-fun res!2268268 () Bool)

(declare-fun e!3319292 () Bool)

(assert (=> b!5346353 (=> res!2268268 e!3319292)))

(declare-fun isEmpty!33243 (List!61393) Bool)

(assert (=> b!5346353 (= res!2268268 (not (isEmpty!33243 (t!374610 zl!343))))))

(declare-fun b!5346354 () Bool)

(declare-fun res!2268287 () Bool)

(assert (=> b!5346354 (=> res!2268287 e!3319292)))

(get-info :version)

(assert (=> b!5346354 (= res!2268287 (or ((_ is EmptyExpr!15031) r!7292) ((_ is EmptyLang!15031) r!7292) ((_ is ElementMatch!15031) r!7292) ((_ is Union!15031) r!7292) (not ((_ is Concat!23876) r!7292))))))

(declare-fun setNonEmpty!34525 () Bool)

(declare-fun e!3319287 () Bool)

(declare-fun tp!1485809 () Bool)

(declare-fun setElem!34525 () Context!8830)

(declare-fun inv!80824 (Context!8830) Bool)

(assert (=> setNonEmpty!34525 (= setRes!34525 (and tp!1485809 (inv!80824 setElem!34525) e!3319287))))

(declare-fun setRest!34525 () (InoxSet Context!8830))

(assert (=> setNonEmpty!34525 (= z!1189 ((_ map or) (store ((as const (Array Context!8830 Bool)) false) setElem!34525 true) setRest!34525))))

(declare-fun b!5346355 () Bool)

(declare-fun e!3319289 () Bool)

(declare-fun lt!2179727 () (InoxSet Context!8830))

(declare-datatypes ((List!61394 0))(
  ( (Nil!61270) (Cons!61270 (h!67718 C!30332) (t!374611 List!61394)) )
))
(declare-fun s!2326 () List!61394)

(declare-fun matchZipper!1275 ((InoxSet Context!8830) List!61394) Bool)

(assert (=> b!5346355 (= e!3319289 (matchZipper!1275 lt!2179727 (t!374611 s!2326)))))

(declare-fun b!5346356 () Bool)

(declare-fun tp!1485811 () Bool)

(assert (=> b!5346356 (= e!3319287 tp!1485811)))

(declare-fun b!5346357 () Bool)

(declare-datatypes ((Unit!153642 0))(
  ( (Unit!153643) )
))
(declare-fun e!3319291 () Unit!153642)

(declare-fun Unit!153644 () Unit!153642)

(assert (=> b!5346357 (= e!3319291 Unit!153644)))

(declare-fun lt!2179747 () Unit!153642)

(declare-fun lt!2179731 () (InoxSet Context!8830))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!268 ((InoxSet Context!8830) (InoxSet Context!8830) List!61394) Unit!153642)

(assert (=> b!5346357 (= lt!2179747 (lemmaZipperConcatMatchesSameAsBothZippers!268 lt!2179731 lt!2179727 (t!374611 s!2326)))))

(declare-fun res!2268277 () Bool)

(assert (=> b!5346357 (= res!2268277 (matchZipper!1275 lt!2179731 (t!374611 s!2326)))))

(assert (=> b!5346357 (=> res!2268277 e!3319289)))

(assert (=> b!5346357 (= (matchZipper!1275 ((_ map or) lt!2179731 lt!2179727) (t!374611 s!2326)) e!3319289)))

(declare-fun b!5346358 () Bool)

(declare-fun e!3319290 () Bool)

(declare-fun tp!1485805 () Bool)

(declare-fun tp!1485806 () Bool)

(assert (=> b!5346358 (= e!3319290 (and tp!1485805 tp!1485806))))

(declare-fun b!5346359 () Bool)

(declare-fun res!2268274 () Bool)

(declare-fun e!3319286 () Bool)

(assert (=> b!5346359 (=> res!2268274 e!3319286)))

(assert (=> b!5346359 (= res!2268274 (not ((_ is Concat!23876) (regOne!30574 r!7292))))))

(declare-fun b!5346360 () Bool)

(declare-fun e!3319302 () Bool)

(assert (=> b!5346360 (= e!3319302 true)))

(declare-fun b!5346361 () Bool)

(declare-fun res!2268270 () Bool)

(declare-fun e!3319300 () Bool)

(assert (=> b!5346361 (=> res!2268270 e!3319300)))

(declare-fun lt!2179736 () Context!8830)

(declare-fun contextDepthTotal!164 (Context!8830) Int)

(assert (=> b!5346361 (= res!2268270 (>= (contextDepthTotal!164 lt!2179736) (contextDepthTotal!164 (h!67717 zl!343))))))

(declare-fun b!5346362 () Bool)

(declare-fun e!3319296 () Bool)

(declare-fun e!3319301 () Bool)

(assert (=> b!5346362 (= e!3319296 e!3319301)))

(declare-fun res!2268266 () Bool)

(assert (=> b!5346362 (=> res!2268266 e!3319301)))

(declare-fun lt!2179746 () (InoxSet Context!8830))

(declare-fun lt!2179759 () (InoxSet Context!8830))

(assert (=> b!5346362 (= res!2268266 (not (= lt!2179746 lt!2179759)))))

(declare-fun lt!2179728 () (InoxSet Context!8830))

(declare-fun lambda!274509 () Int)

(declare-fun flatMap!758 ((InoxSet Context!8830) Int) (InoxSet Context!8830))

(declare-fun derivationStepZipperUp!403 (Context!8830 C!30332) (InoxSet Context!8830))

(assert (=> b!5346362 (= (flatMap!758 lt!2179728 lambda!274509) (derivationStepZipperUp!403 lt!2179736 (h!67718 s!2326)))))

(declare-fun lt!2179730 () Unit!153642)

(declare-fun lemmaFlatMapOnSingletonSet!290 ((InoxSet Context!8830) Context!8830 Int) Unit!153642)

(assert (=> b!5346362 (= lt!2179730 (lemmaFlatMapOnSingletonSet!290 lt!2179728 lt!2179736 lambda!274509))))

(declare-fun lt!2179748 () (InoxSet Context!8830))

(assert (=> b!5346362 (= lt!2179748 (derivationStepZipperUp!403 lt!2179736 (h!67718 s!2326)))))

(declare-fun derivationStepZipper!1272 ((InoxSet Context!8830) C!30332) (InoxSet Context!8830))

(assert (=> b!5346362 (= lt!2179746 (derivationStepZipper!1272 lt!2179728 (h!67718 s!2326)))))

(assert (=> b!5346362 (= lt!2179728 (store ((as const (Array Context!8830 Bool)) false) lt!2179736 true))))

(declare-fun lt!2179750 () List!61392)

(assert (=> b!5346362 (= lt!2179736 (Context!8831 lt!2179750))))

(declare-fun lt!2179734 () List!61392)

(assert (=> b!5346362 (= lt!2179750 (Cons!61268 (regOne!30574 (regOne!30574 r!7292)) lt!2179734))))

(declare-fun b!5346363 () Bool)

(declare-fun res!2268281 () Bool)

(assert (=> b!5346363 (=> res!2268281 e!3319302)))

(declare-fun lt!2179738 () Bool)

(declare-fun lt!2179743 () Regex!15031)

(declare-fun matchR!7216 (Regex!15031 List!61394) Bool)

(assert (=> b!5346363 (= res!2268281 (not (= lt!2179738 (matchR!7216 (Concat!23876 lt!2179743 (regTwo!30574 r!7292)) s!2326))))))

(declare-fun b!5346364 () Bool)

(declare-fun res!2268282 () Bool)

(assert (=> b!5346364 (=> res!2268282 e!3319301)))

(declare-fun lt!2179751 () Bool)

(assert (=> b!5346364 (= res!2268282 (not (= lt!2179751 (matchZipper!1275 lt!2179746 (t!374611 s!2326)))))))

(declare-fun b!5346365 () Bool)

(declare-fun tp!1485808 () Bool)

(assert (=> b!5346365 (= e!3319290 tp!1485808)))

(declare-fun b!5346366 () Bool)

(declare-fun res!2268275 () Bool)

(declare-fun e!3319288 () Bool)

(assert (=> b!5346366 (=> res!2268275 e!3319288)))

(declare-fun lt!2179756 () List!61393)

(declare-fun zipperDepth!140 (List!61393) Int)

(assert (=> b!5346366 (= res!2268275 (> (zipperDepth!140 lt!2179756) (zipperDepth!140 zl!343)))))

(declare-fun b!5346367 () Bool)

(declare-fun e!3319293 () Bool)

(declare-fun tp_is_empty!39315 () Bool)

(declare-fun tp!1485807 () Bool)

(assert (=> b!5346367 (= e!3319293 (and tp_is_empty!39315 tp!1485807))))

(declare-fun b!5346368 () Bool)

(declare-fun Unit!153645 () Unit!153642)

(assert (=> b!5346368 (= e!3319291 Unit!153645)))

(declare-fun b!5346369 () Bool)

(assert (=> b!5346369 (= e!3319301 e!3319300)))

(declare-fun res!2268285 () Bool)

(assert (=> b!5346369 (=> res!2268285 e!3319300)))

(assert (=> b!5346369 (= res!2268285 (not (= (exprs!4915 (h!67717 zl!343)) (Cons!61268 lt!2179743 (t!374609 (exprs!4915 (h!67717 zl!343)))))))))

(assert (=> b!5346369 (= lt!2179743 (Concat!23876 (regOne!30574 (regOne!30574 r!7292)) (regTwo!30574 (regOne!30574 r!7292))))))

(declare-fun b!5346370 () Bool)

(assert (=> b!5346370 (= e!3319290 tp_is_empty!39315)))

(declare-fun b!5346371 () Bool)

(declare-fun e!3319294 () Bool)

(assert (=> b!5346371 (= e!3319294 e!3319296)))

(declare-fun res!2268269 () Bool)

(assert (=> b!5346371 (=> res!2268269 e!3319296)))

(assert (=> b!5346371 (= res!2268269 (not (= lt!2179751 (matchZipper!1275 lt!2179759 (t!374611 s!2326)))))))

(assert (=> b!5346371 (= lt!2179751 (matchZipper!1275 lt!2179731 (t!374611 s!2326)))))

(declare-fun res!2268276 () Bool)

(assert (=> start!563106 (=> (not res!2268276) (not e!3319295))))

(declare-fun validRegex!6767 (Regex!15031) Bool)

(assert (=> start!563106 (= res!2268276 (validRegex!6767 r!7292))))

(assert (=> start!563106 e!3319295))

(assert (=> start!563106 e!3319290))

(declare-fun condSetEmpty!34525 () Bool)

(assert (=> start!563106 (= condSetEmpty!34525 (= z!1189 ((as const (Array Context!8830 Bool)) false)))))

(assert (=> start!563106 setRes!34525))

(declare-fun e!3319298 () Bool)

(assert (=> start!563106 e!3319298))

(assert (=> start!563106 e!3319293))

(declare-fun b!5346372 () Bool)

(declare-fun res!2268280 () Bool)

(declare-fun e!3319299 () Bool)

(assert (=> b!5346372 (=> res!2268280 e!3319299)))

(declare-fun isEmpty!33244 (List!61392) Bool)

(assert (=> b!5346372 (= res!2268280 (isEmpty!33244 (t!374609 (exprs!4915 (h!67717 zl!343)))))))

(declare-fun b!5346373 () Bool)

(declare-fun res!2268284 () Bool)

(assert (=> b!5346373 (=> res!2268284 e!3319292)))

(declare-fun generalisedConcat!700 (List!61392) Regex!15031)

(assert (=> b!5346373 (= res!2268284 (not (= r!7292 (generalisedConcat!700 (exprs!4915 (h!67717 zl!343))))))))

(assert (=> b!5346374 (= e!3319299 e!3319286)))

(declare-fun res!2268289 () Bool)

(assert (=> b!5346374 (=> res!2268289 e!3319286)))

(assert (=> b!5346374 (= res!2268289 (or (and ((_ is ElementMatch!15031) (regOne!30574 r!7292)) (= (c!930501 (regOne!30574 r!7292)) (h!67718 s!2326))) ((_ is Union!15031) (regOne!30574 r!7292))))))

(declare-fun lt!2179739 () Unit!153642)

(assert (=> b!5346374 (= lt!2179739 e!3319291)))

(declare-fun c!930500 () Bool)

(declare-fun nullable!5200 (Regex!15031) Bool)

(assert (=> b!5346374 (= c!930500 (nullable!5200 (h!67716 (exprs!4915 (h!67717 zl!343)))))))

(assert (=> b!5346374 (= (flatMap!758 z!1189 lambda!274509) (derivationStepZipperUp!403 (h!67717 zl!343) (h!67718 s!2326)))))

(declare-fun lt!2179735 () Unit!153642)

(assert (=> b!5346374 (= lt!2179735 (lemmaFlatMapOnSingletonSet!290 z!1189 (h!67717 zl!343) lambda!274509))))

(declare-fun lt!2179753 () Context!8830)

(assert (=> b!5346374 (= lt!2179727 (derivationStepZipperUp!403 lt!2179753 (h!67718 s!2326)))))

(declare-fun derivationStepZipperDown!479 (Regex!15031 Context!8830 C!30332) (InoxSet Context!8830))

(assert (=> b!5346374 (= lt!2179731 (derivationStepZipperDown!479 (h!67716 (exprs!4915 (h!67717 zl!343))) lt!2179753 (h!67718 s!2326)))))

(assert (=> b!5346374 (= lt!2179753 (Context!8831 (t!374609 (exprs!4915 (h!67717 zl!343)))))))

(declare-fun lt!2179733 () (InoxSet Context!8830))

(assert (=> b!5346374 (= lt!2179733 (derivationStepZipperUp!403 (Context!8831 (Cons!61268 (h!67716 (exprs!4915 (h!67717 zl!343))) (t!374609 (exprs!4915 (h!67717 zl!343))))) (h!67718 s!2326)))))

(assert (=> b!5346375 (= e!3319292 e!3319299)))

(declare-fun res!2268288 () Bool)

(assert (=> b!5346375 (=> res!2268288 e!3319299)))

(declare-fun lt!2179741 () Bool)

(assert (=> b!5346375 (= res!2268288 (or (not (= lt!2179738 lt!2179741)) ((_ is Nil!61270) s!2326)))))

(declare-fun Exists!2212 (Int) Bool)

(assert (=> b!5346375 (= (Exists!2212 lambda!274507) (Exists!2212 lambda!274508))))

(declare-fun lt!2179749 () Unit!153642)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!866 (Regex!15031 Regex!15031 List!61394) Unit!153642)

(assert (=> b!5346375 (= lt!2179749 (lemmaExistCutMatchRandMatchRSpecEquivalent!866 (regOne!30574 r!7292) (regTwo!30574 r!7292) s!2326))))

(assert (=> b!5346375 (= lt!2179741 (Exists!2212 lambda!274507))))

(declare-datatypes ((tuple2!64460 0))(
  ( (tuple2!64461 (_1!35533 List!61394) (_2!35533 List!61394)) )
))
(declare-datatypes ((Option!15142 0))(
  ( (None!15141) (Some!15141 (v!51170 tuple2!64460)) )
))
(declare-fun isDefined!11845 (Option!15142) Bool)

(declare-fun findConcatSeparation!1556 (Regex!15031 Regex!15031 List!61394 List!61394 List!61394) Option!15142)

(assert (=> b!5346375 (= lt!2179741 (isDefined!11845 (findConcatSeparation!1556 (regOne!30574 r!7292) (regTwo!30574 r!7292) Nil!61270 s!2326 s!2326)))))

(declare-fun lt!2179757 () Unit!153642)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1320 (Regex!15031 Regex!15031 List!61394) Unit!153642)

(assert (=> b!5346375 (= lt!2179757 (lemmaFindConcatSeparationEquivalentToExists!1320 (regOne!30574 r!7292) (regTwo!30574 r!7292) s!2326))))

(declare-fun b!5346376 () Bool)

(declare-fun tp!1485813 () Bool)

(declare-fun tp!1485810 () Bool)

(assert (=> b!5346376 (= e!3319290 (and tp!1485813 tp!1485810))))

(declare-fun b!5346377 () Bool)

(assert (=> b!5346377 (= e!3319286 e!3319294)))

(declare-fun res!2268286 () Bool)

(assert (=> b!5346377 (=> res!2268286 e!3319294)))

(assert (=> b!5346377 (= res!2268286 (not (= lt!2179731 lt!2179759)))))

(assert (=> b!5346377 (= lt!2179759 (derivationStepZipperDown!479 (regOne!30574 (regOne!30574 r!7292)) (Context!8831 lt!2179734) (h!67718 s!2326)))))

(assert (=> b!5346377 (= lt!2179734 (Cons!61268 (regTwo!30574 (regOne!30574 r!7292)) (t!374609 (exprs!4915 (h!67717 zl!343)))))))

(declare-fun b!5346378 () Bool)

(declare-fun res!2268267 () Bool)

(assert (=> b!5346378 (=> res!2268267 e!3319292)))

(assert (=> b!5346378 (= res!2268267 (not ((_ is Cons!61268) (exprs!4915 (h!67717 zl!343)))))))

(declare-fun b!5346379 () Bool)

(declare-fun res!2268279 () Bool)

(assert (=> b!5346379 (=> res!2268279 e!3319286)))

(declare-fun e!3319285 () Bool)

(assert (=> b!5346379 (= res!2268279 e!3319285)))

(declare-fun res!2268290 () Bool)

(assert (=> b!5346379 (=> (not res!2268290) (not e!3319285))))

(assert (=> b!5346379 (= res!2268290 ((_ is Concat!23876) (regOne!30574 r!7292)))))

(declare-fun b!5346380 () Bool)

(declare-fun res!2268271 () Bool)

(assert (=> b!5346380 (=> res!2268271 e!3319302)))

(assert (=> b!5346380 (= res!2268271 (not (= lt!2179738 (matchR!7216 (Concat!23876 lt!2179743 lt!2179729) s!2326))))))

(declare-fun b!5346381 () Bool)

(assert (=> b!5346381 (= e!3319285 (nullable!5200 (regOne!30574 (regOne!30574 r!7292))))))

(declare-fun b!5346382 () Bool)

(assert (=> b!5346382 (= e!3319295 (not e!3319292))))

(declare-fun res!2268273 () Bool)

(assert (=> b!5346382 (=> res!2268273 e!3319292)))

(assert (=> b!5346382 (= res!2268273 (not ((_ is Cons!61269) zl!343)))))

(declare-fun matchRSpec!2134 (Regex!15031 List!61394) Bool)

(assert (=> b!5346382 (= lt!2179738 (matchRSpec!2134 r!7292 s!2326))))

(assert (=> b!5346382 (= lt!2179738 (matchR!7216 r!7292 s!2326))))

(declare-fun lt!2179752 () Unit!153642)

(declare-fun mainMatchTheorem!2134 (Regex!15031 List!61394) Unit!153642)

(assert (=> b!5346382 (= lt!2179752 (mainMatchTheorem!2134 r!7292 s!2326))))

(declare-fun b!5346383 () Bool)

(declare-fun res!2268283 () Bool)

(assert (=> b!5346383 (=> (not res!2268283) (not e!3319295))))

(declare-fun unfocusZipper!773 (List!61393) Regex!15031)

(assert (=> b!5346383 (= res!2268283 (= r!7292 (unfocusZipper!773 zl!343)))))

(declare-fun b!5346384 () Bool)

(declare-fun res!2268264 () Bool)

(assert (=> b!5346384 (=> res!2268264 e!3319292)))

(declare-fun generalisedUnion!960 (List!61392) Regex!15031)

(declare-fun unfocusZipperList!473 (List!61393) List!61392)

(assert (=> b!5346384 (= res!2268264 (not (= r!7292 (generalisedUnion!960 (unfocusZipperList!473 zl!343)))))))

(declare-fun b!5346385 () Bool)

(assert (=> b!5346385 (= e!3319300 e!3319288)))

(declare-fun res!2268265 () Bool)

(assert (=> b!5346385 (=> res!2268265 e!3319288)))

(declare-fun zipperDepthTotal!184 (List!61393) Int)

(assert (=> b!5346385 (= res!2268265 (>= (zipperDepthTotal!184 lt!2179756) (zipperDepthTotal!184 zl!343)))))

(assert (=> b!5346385 (= lt!2179756 (Cons!61269 lt!2179736 Nil!61269))))

(declare-fun e!3319297 () Bool)

(declare-fun b!5346386 () Bool)

(declare-fun tp!1485804 () Bool)

(assert (=> b!5346386 (= e!3319298 (and (inv!80824 (h!67717 zl!343)) e!3319297 tp!1485804))))

(declare-fun b!5346387 () Bool)

(declare-fun tp!1485812 () Bool)

(assert (=> b!5346387 (= e!3319297 tp!1485812)))

(assert (=> b!5346388 (= e!3319288 e!3319302)))

(declare-fun res!2268272 () Bool)

(assert (=> b!5346388 (=> res!2268272 e!3319302)))

(declare-fun lt!2179755 () Bool)

(declare-fun lt!2179726 () Bool)

(declare-fun lt!2179754 () Bool)

(assert (=> b!5346388 (= res!2268272 (or (not (= lt!2179754 lt!2179726)) (not (= lt!2179754 lt!2179755))))))

(assert (=> b!5346388 (= lt!2179754 (matchZipper!1275 z!1189 s!2326))))

(assert (=> b!5346388 (= (Exists!2212 lambda!274512) (Exists!2212 lambda!274513))))

(declare-fun lt!2179740 () Unit!153642)

(assert (=> b!5346388 (= lt!2179740 (lemmaExistCutMatchRandMatchRSpecEquivalent!866 (regTwo!30574 (regOne!30574 r!7292)) lt!2179729 s!2326))))

(assert (=> b!5346388 (= (isDefined!11845 (findConcatSeparation!1556 (regTwo!30574 (regOne!30574 r!7292)) lt!2179729 Nil!61270 s!2326 s!2326)) (Exists!2212 lambda!274512))))

(declare-fun lt!2179760 () Unit!153642)

(assert (=> b!5346388 (= lt!2179760 (lemmaFindConcatSeparationEquivalentToExists!1320 (regTwo!30574 (regOne!30574 r!7292)) lt!2179729 s!2326))))

(assert (=> b!5346388 (= lt!2179729 (generalisedConcat!700 (t!374609 (exprs!4915 (h!67717 zl!343)))))))

(assert (=> b!5346388 (= (matchR!7216 lt!2179732 s!2326) (matchRSpec!2134 lt!2179732 s!2326))))

(declare-fun lt!2179737 () Unit!153642)

(assert (=> b!5346388 (= lt!2179737 (mainMatchTheorem!2134 lt!2179732 s!2326))))

(assert (=> b!5346388 (= (Exists!2212 lambda!274510) (Exists!2212 lambda!274511))))

(declare-fun lt!2179745 () Unit!153642)

(assert (=> b!5346388 (= lt!2179745 (lemmaExistCutMatchRandMatchRSpecEquivalent!866 (regOne!30574 (regOne!30574 r!7292)) lt!2179732 s!2326))))

(assert (=> b!5346388 (= (isDefined!11845 (findConcatSeparation!1556 (regOne!30574 (regOne!30574 r!7292)) lt!2179732 Nil!61270 s!2326 s!2326)) (Exists!2212 lambda!274510))))

(declare-fun lt!2179744 () Unit!153642)

(assert (=> b!5346388 (= lt!2179744 (lemmaFindConcatSeparationEquivalentToExists!1320 (regOne!30574 (regOne!30574 r!7292)) lt!2179732 s!2326))))

(assert (=> b!5346388 (= lt!2179732 (generalisedConcat!700 lt!2179734))))

(declare-fun lt!2179758 () Regex!15031)

(assert (=> b!5346388 (= lt!2179755 (matchRSpec!2134 lt!2179758 s!2326))))

(declare-fun lt!2179742 () Unit!153642)

(assert (=> b!5346388 (= lt!2179742 (mainMatchTheorem!2134 lt!2179758 s!2326))))

(assert (=> b!5346388 (= lt!2179755 lt!2179726)))

(assert (=> b!5346388 (= lt!2179726 (matchZipper!1275 lt!2179728 s!2326))))

(assert (=> b!5346388 (= lt!2179755 (matchR!7216 lt!2179758 s!2326))))

(declare-fun lt!2179725 () Unit!153642)

(declare-fun theoremZipperRegexEquiv!429 ((InoxSet Context!8830) List!61393 Regex!15031 List!61394) Unit!153642)

(assert (=> b!5346388 (= lt!2179725 (theoremZipperRegexEquiv!429 lt!2179728 lt!2179756 lt!2179758 s!2326))))

(assert (=> b!5346388 (= lt!2179758 (generalisedConcat!700 lt!2179750))))

(declare-fun b!5346389 () Bool)

(declare-fun res!2268291 () Bool)

(assert (=> b!5346389 (=> res!2268291 e!3319302)))

(assert (=> b!5346389 (= res!2268291 (not (= lt!2179738 (matchR!7216 (Concat!23876 (regOne!30574 r!7292) (regTwo!30574 r!7292)) s!2326))))))

(assert (= (and start!563106 res!2268276) b!5346352))

(assert (= (and b!5346352 res!2268278) b!5346383))

(assert (= (and b!5346383 res!2268283) b!5346382))

(assert (= (and b!5346382 (not res!2268273)) b!5346353))

(assert (= (and b!5346353 (not res!2268268)) b!5346373))

(assert (= (and b!5346373 (not res!2268284)) b!5346378))

(assert (= (and b!5346378 (not res!2268267)) b!5346384))

(assert (= (and b!5346384 (not res!2268264)) b!5346354))

(assert (= (and b!5346354 (not res!2268287)) b!5346375))

(assert (= (and b!5346375 (not res!2268288)) b!5346372))

(assert (= (and b!5346372 (not res!2268280)) b!5346374))

(assert (= (and b!5346374 c!930500) b!5346357))

(assert (= (and b!5346374 (not c!930500)) b!5346368))

(assert (= (and b!5346357 (not res!2268277)) b!5346355))

(assert (= (and b!5346374 (not res!2268289)) b!5346379))

(assert (= (and b!5346379 res!2268290) b!5346381))

(assert (= (and b!5346379 (not res!2268279)) b!5346359))

(assert (= (and b!5346359 (not res!2268274)) b!5346377))

(assert (= (and b!5346377 (not res!2268286)) b!5346371))

(assert (= (and b!5346371 (not res!2268269)) b!5346362))

(assert (= (and b!5346362 (not res!2268266)) b!5346364))

(assert (= (and b!5346364 (not res!2268282)) b!5346369))

(assert (= (and b!5346369 (not res!2268285)) b!5346361))

(assert (= (and b!5346361 (not res!2268270)) b!5346385))

(assert (= (and b!5346385 (not res!2268265)) b!5346366))

(assert (= (and b!5346366 (not res!2268275)) b!5346388))

(assert (= (and b!5346388 (not res!2268272)) b!5346389))

(assert (= (and b!5346389 (not res!2268291)) b!5346363))

(assert (= (and b!5346363 (not res!2268281)) b!5346380))

(assert (= (and b!5346380 (not res!2268271)) b!5346360))

(assert (= (and start!563106 ((_ is ElementMatch!15031) r!7292)) b!5346370))

(assert (= (and start!563106 ((_ is Concat!23876) r!7292)) b!5346358))

(assert (= (and start!563106 ((_ is Star!15031) r!7292)) b!5346365))

(assert (= (and start!563106 ((_ is Union!15031) r!7292)) b!5346376))

(assert (= (and start!563106 condSetEmpty!34525) setIsEmpty!34525))

(assert (= (and start!563106 (not condSetEmpty!34525)) setNonEmpty!34525))

(assert (= setNonEmpty!34525 b!5346356))

(assert (= b!5346386 b!5346387))

(assert (= (and start!563106 ((_ is Cons!61269) zl!343)) b!5346386))

(assert (= (and start!563106 ((_ is Cons!61270) s!2326)) b!5346367))

(declare-fun m!6378000 () Bool)

(assert (=> b!5346353 m!6378000))

(declare-fun m!6378002 () Bool)

(assert (=> b!5346389 m!6378002))

(declare-fun m!6378004 () Bool)

(assert (=> b!5346357 m!6378004))

(declare-fun m!6378006 () Bool)

(assert (=> b!5346357 m!6378006))

(declare-fun m!6378008 () Bool)

(assert (=> b!5346357 m!6378008))

(declare-fun m!6378010 () Bool)

(assert (=> b!5346366 m!6378010))

(declare-fun m!6378012 () Bool)

(assert (=> b!5346366 m!6378012))

(declare-fun m!6378014 () Bool)

(assert (=> start!563106 m!6378014))

(declare-fun m!6378016 () Bool)

(assert (=> b!5346375 m!6378016))

(declare-fun m!6378018 () Bool)

(assert (=> b!5346375 m!6378018))

(assert (=> b!5346375 m!6378016))

(declare-fun m!6378020 () Bool)

(assert (=> b!5346375 m!6378020))

(declare-fun m!6378022 () Bool)

(assert (=> b!5346375 m!6378022))

(declare-fun m!6378024 () Bool)

(assert (=> b!5346375 m!6378024))

(assert (=> b!5346375 m!6378024))

(declare-fun m!6378026 () Bool)

(assert (=> b!5346375 m!6378026))

(declare-fun m!6378028 () Bool)

(assert (=> b!5346388 m!6378028))

(declare-fun m!6378030 () Bool)

(assert (=> b!5346388 m!6378030))

(declare-fun m!6378032 () Bool)

(assert (=> b!5346388 m!6378032))

(declare-fun m!6378034 () Bool)

(assert (=> b!5346388 m!6378034))

(declare-fun m!6378036 () Bool)

(assert (=> b!5346388 m!6378036))

(declare-fun m!6378038 () Bool)

(assert (=> b!5346388 m!6378038))

(declare-fun m!6378040 () Bool)

(assert (=> b!5346388 m!6378040))

(declare-fun m!6378042 () Bool)

(assert (=> b!5346388 m!6378042))

(declare-fun m!6378044 () Bool)

(assert (=> b!5346388 m!6378044))

(assert (=> b!5346388 m!6378030))

(declare-fun m!6378046 () Bool)

(assert (=> b!5346388 m!6378046))

(declare-fun m!6378048 () Bool)

(assert (=> b!5346388 m!6378048))

(declare-fun m!6378050 () Bool)

(assert (=> b!5346388 m!6378050))

(declare-fun m!6378052 () Bool)

(assert (=> b!5346388 m!6378052))

(declare-fun m!6378054 () Bool)

(assert (=> b!5346388 m!6378054))

(declare-fun m!6378056 () Bool)

(assert (=> b!5346388 m!6378056))

(assert (=> b!5346388 m!6378048))

(declare-fun m!6378058 () Bool)

(assert (=> b!5346388 m!6378058))

(assert (=> b!5346388 m!6378044))

(declare-fun m!6378060 () Bool)

(assert (=> b!5346388 m!6378060))

(assert (=> b!5346388 m!6378054))

(declare-fun m!6378062 () Bool)

(assert (=> b!5346388 m!6378062))

(declare-fun m!6378064 () Bool)

(assert (=> b!5346388 m!6378064))

(declare-fun m!6378066 () Bool)

(assert (=> b!5346388 m!6378066))

(declare-fun m!6378068 () Bool)

(assert (=> b!5346388 m!6378068))

(declare-fun m!6378070 () Bool)

(assert (=> b!5346388 m!6378070))

(declare-fun m!6378072 () Bool)

(assert (=> b!5346388 m!6378072))

(declare-fun m!6378074 () Bool)

(assert (=> b!5346388 m!6378074))

(declare-fun m!6378076 () Bool)

(assert (=> b!5346355 m!6378076))

(declare-fun m!6378078 () Bool)

(assert (=> setNonEmpty!34525 m!6378078))

(declare-fun m!6378080 () Bool)

(assert (=> b!5346380 m!6378080))

(declare-fun m!6378082 () Bool)

(assert (=> b!5346383 m!6378082))

(declare-fun m!6378084 () Bool)

(assert (=> b!5346361 m!6378084))

(declare-fun m!6378086 () Bool)

(assert (=> b!5346361 m!6378086))

(declare-fun m!6378088 () Bool)

(assert (=> b!5346377 m!6378088))

(declare-fun m!6378090 () Bool)

(assert (=> b!5346363 m!6378090))

(declare-fun m!6378092 () Bool)

(assert (=> b!5346352 m!6378092))

(declare-fun m!6378094 () Bool)

(assert (=> b!5346381 m!6378094))

(declare-fun m!6378096 () Bool)

(assert (=> b!5346362 m!6378096))

(declare-fun m!6378098 () Bool)

(assert (=> b!5346362 m!6378098))

(declare-fun m!6378100 () Bool)

(assert (=> b!5346362 m!6378100))

(declare-fun m!6378102 () Bool)

(assert (=> b!5346362 m!6378102))

(declare-fun m!6378104 () Bool)

(assert (=> b!5346362 m!6378104))

(declare-fun m!6378106 () Bool)

(assert (=> b!5346371 m!6378106))

(assert (=> b!5346371 m!6378006))

(declare-fun m!6378108 () Bool)

(assert (=> b!5346386 m!6378108))

(declare-fun m!6378110 () Bool)

(assert (=> b!5346374 m!6378110))

(declare-fun m!6378112 () Bool)

(assert (=> b!5346374 m!6378112))

(declare-fun m!6378114 () Bool)

(assert (=> b!5346374 m!6378114))

(declare-fun m!6378116 () Bool)

(assert (=> b!5346374 m!6378116))

(declare-fun m!6378118 () Bool)

(assert (=> b!5346374 m!6378118))

(declare-fun m!6378120 () Bool)

(assert (=> b!5346374 m!6378120))

(declare-fun m!6378122 () Bool)

(assert (=> b!5346374 m!6378122))

(declare-fun m!6378124 () Bool)

(assert (=> b!5346364 m!6378124))

(declare-fun m!6378126 () Bool)

(assert (=> b!5346373 m!6378126))

(declare-fun m!6378128 () Bool)

(assert (=> b!5346384 m!6378128))

(assert (=> b!5346384 m!6378128))

(declare-fun m!6378130 () Bool)

(assert (=> b!5346384 m!6378130))

(declare-fun m!6378132 () Bool)

(assert (=> b!5346372 m!6378132))

(declare-fun m!6378134 () Bool)

(assert (=> b!5346382 m!6378134))

(declare-fun m!6378136 () Bool)

(assert (=> b!5346382 m!6378136))

(declare-fun m!6378138 () Bool)

(assert (=> b!5346382 m!6378138))

(declare-fun m!6378140 () Bool)

(assert (=> b!5346385 m!6378140))

(declare-fun m!6378142 () Bool)

(assert (=> b!5346385 m!6378142))

(check-sat (not b!5346377) (not b!5346385) (not b!5346383) (not b!5346380) (not b!5346388) (not b!5346382) (not b!5346364) (not b!5346375) (not b!5346372) (not b!5346353) (not b!5346363) (not start!563106) (not b!5346352) (not b!5346381) (not b!5346366) (not b!5346362) (not b!5346376) (not b!5346355) (not b!5346371) (not b!5346367) (not b!5346389) (not b!5346356) (not b!5346358) (not b!5346357) (not b!5346365) (not b!5346387) (not b!5346373) (not b!5346386) (not b!5346361) (not setNonEmpty!34525) (not b!5346384) (not b!5346374) tp_is_empty!39315)
(check-sat)
