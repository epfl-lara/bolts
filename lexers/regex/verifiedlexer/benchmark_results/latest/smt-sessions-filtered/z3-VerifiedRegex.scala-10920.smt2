; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565238 () Bool)

(assert start!565238)

(declare-fun b!5372364 () Bool)

(assert (=> b!5372364 true))

(assert (=> b!5372364 true))

(declare-fun lambda!277272 () Int)

(declare-fun lambda!277271 () Int)

(assert (=> b!5372364 (not (= lambda!277272 lambda!277271))))

(assert (=> b!5372364 true))

(assert (=> b!5372364 true))

(declare-fun b!5372353 () Bool)

(assert (=> b!5372353 true))

(declare-fun bs!1243982 () Bool)

(declare-fun b!5372349 () Bool)

(assert (= bs!1243982 (and b!5372349 b!5372364)))

(declare-datatypes ((C!30444 0))(
  ( (C!30445 (val!24924 Int)) )
))
(declare-datatypes ((Regex!15087 0))(
  ( (ElementMatch!15087 (c!936191 C!30444)) (Concat!23932 (regOne!30686 Regex!15087) (regTwo!30686 Regex!15087)) (EmptyExpr!15087) (Star!15087 (reg!15416 Regex!15087)) (EmptyLang!15087) (Union!15087 (regOne!30687 Regex!15087) (regTwo!30687 Regex!15087)) )
))
(declare-fun lt!2187686 () Regex!15087)

(declare-fun r!7292 () Regex!15087)

(declare-fun lambda!277274 () Int)

(assert (=> bs!1243982 (= (= lt!2187686 (regOne!30686 r!7292)) (= lambda!277274 lambda!277271))))

(assert (=> bs!1243982 (not (= lambda!277274 lambda!277272))))

(assert (=> b!5372349 true))

(assert (=> b!5372349 true))

(assert (=> b!5372349 true))

(declare-fun lambda!277275 () Int)

(assert (=> bs!1243982 (not (= lambda!277275 lambda!277271))))

(assert (=> bs!1243982 (= (= lt!2187686 (regOne!30686 r!7292)) (= lambda!277275 lambda!277272))))

(assert (=> b!5372349 (not (= lambda!277275 lambda!277274))))

(assert (=> b!5372349 true))

(assert (=> b!5372349 true))

(assert (=> b!5372349 true))

(declare-fun b!5372345 () Bool)

(declare-fun res!2280135 () Bool)

(declare-fun e!3333449 () Bool)

(assert (=> b!5372345 (=> (not res!2280135) (not e!3333449))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61560 0))(
  ( (Nil!61436) (Cons!61436 (h!67884 Regex!15087) (t!374783 List!61560)) )
))
(declare-datatypes ((Context!8942 0))(
  ( (Context!8943 (exprs!4971 List!61560)) )
))
(declare-fun z!1189 () (InoxSet Context!8942))

(declare-datatypes ((List!61561 0))(
  ( (Nil!61437) (Cons!61437 (h!67885 Context!8942) (t!374784 List!61561)) )
))
(declare-fun zl!343 () List!61561)

(declare-fun toList!8871 ((InoxSet Context!8942)) List!61561)

(assert (=> b!5372345 (= res!2280135 (= (toList!8871 z!1189) zl!343))))

(declare-fun b!5372346 () Bool)

(declare-fun res!2280136 () Bool)

(declare-fun e!3333450 () Bool)

(assert (=> b!5372346 (=> res!2280136 e!3333450)))

(get-info :version)

(assert (=> b!5372346 (= res!2280136 (not ((_ is Cons!61436) (exprs!4971 (h!67885 zl!343)))))))

(declare-fun b!5372347 () Bool)

(declare-fun res!2280134 () Bool)

(declare-fun e!3333451 () Bool)

(assert (=> b!5372347 (=> res!2280134 e!3333451)))

(declare-datatypes ((List!61562 0))(
  ( (Nil!61438) (Cons!61438 (h!67886 C!30444) (t!374785 List!61562)) )
))
(declare-datatypes ((tuple2!64572 0))(
  ( (tuple2!64573 (_1!35589 List!61562) (_2!35589 List!61562)) )
))
(declare-fun lt!2187716 () tuple2!64572)

(declare-fun matchR!7272 (Regex!15087 List!61562) Bool)

(assert (=> b!5372347 (= res!2280134 (not (matchR!7272 lt!2187686 (_1!35589 lt!2187716))))))

(declare-fun b!5372348 () Bool)

(declare-fun res!2280142 () Bool)

(declare-fun e!3333454 () Bool)

(assert (=> b!5372348 (=> res!2280142 e!3333454)))

(declare-fun s!2326 () List!61562)

(declare-fun lt!2187699 () (InoxSet Context!8942))

(declare-fun lt!2187711 () (InoxSet Context!8942))

(declare-fun matchZipper!1331 ((InoxSet Context!8942) List!61562) Bool)

(assert (=> b!5372348 (= res!2280142 (not (= (matchZipper!1331 lt!2187699 s!2326) (matchZipper!1331 lt!2187711 (t!374785 s!2326)))))))

(declare-fun e!3333455 () Bool)

(assert (=> b!5372349 (= e!3333455 e!3333451)))

(declare-fun res!2280151 () Bool)

(assert (=> b!5372349 (=> res!2280151 e!3333451)))

(declare-fun ++!13390 (List!61562 List!61562) List!61562)

(assert (=> b!5372349 (= res!2280151 (not (= (++!13390 (_1!35589 lt!2187716) (_2!35589 lt!2187716)) s!2326)))))

(declare-datatypes ((Option!15198 0))(
  ( (None!15197) (Some!15197 (v!51226 tuple2!64572)) )
))
(declare-fun lt!2187683 () Option!15198)

(declare-fun get!21139 (Option!15198) tuple2!64572)

(assert (=> b!5372349 (= lt!2187716 (get!21139 lt!2187683))))

(declare-fun Exists!2268 (Int) Bool)

(assert (=> b!5372349 (= (Exists!2268 lambda!277274) (Exists!2268 lambda!277275))))

(declare-datatypes ((Unit!153866 0))(
  ( (Unit!153867) )
))
(declare-fun lt!2187712 () Unit!153866)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!922 (Regex!15087 Regex!15087 List!61562) Unit!153866)

(assert (=> b!5372349 (= lt!2187712 (lemmaExistCutMatchRandMatchRSpecEquivalent!922 lt!2187686 (regTwo!30686 r!7292) s!2326))))

(declare-fun isDefined!11901 (Option!15198) Bool)

(assert (=> b!5372349 (= (isDefined!11901 lt!2187683) (Exists!2268 lambda!277274))))

(declare-fun findConcatSeparation!1612 (Regex!15087 Regex!15087 List!61562 List!61562 List!61562) Option!15198)

(assert (=> b!5372349 (= lt!2187683 (findConcatSeparation!1612 lt!2187686 (regTwo!30686 r!7292) Nil!61438 s!2326 s!2326))))

(declare-fun lt!2187689 () Unit!153866)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1376 (Regex!15087 Regex!15087 List!61562) Unit!153866)

(assert (=> b!5372349 (= lt!2187689 (lemmaFindConcatSeparationEquivalentToExists!1376 lt!2187686 (regTwo!30686 r!7292) s!2326))))

(declare-fun b!5372351 () Bool)

(declare-fun tp!1490207 () Bool)

(declare-fun e!3333462 () Bool)

(declare-fun e!3333452 () Bool)

(declare-fun inv!80964 (Context!8942) Bool)

(assert (=> b!5372351 (= e!3333452 (and (inv!80964 (h!67885 zl!343)) e!3333462 tp!1490207))))

(declare-fun b!5372352 () Bool)

(declare-fun e!3333446 () Unit!153866)

(declare-fun Unit!153868 () Unit!153866)

(assert (=> b!5372352 (= e!3333446 Unit!153868)))

(declare-fun lt!2187704 () (InoxSet Context!8942))

(declare-fun lt!2187718 () (InoxSet Context!8942))

(declare-fun lt!2187706 () Unit!153866)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!324 ((InoxSet Context!8942) (InoxSet Context!8942) List!61562) Unit!153866)

(assert (=> b!5372352 (= lt!2187706 (lemmaZipperConcatMatchesSameAsBothZippers!324 lt!2187704 lt!2187718 (t!374785 s!2326)))))

(declare-fun res!2280137 () Bool)

(assert (=> b!5372352 (= res!2280137 (matchZipper!1331 lt!2187704 (t!374785 s!2326)))))

(declare-fun e!3333457 () Bool)

(assert (=> b!5372352 (=> res!2280137 e!3333457)))

(assert (=> b!5372352 (= (matchZipper!1331 ((_ map or) lt!2187704 lt!2187718) (t!374785 s!2326)) e!3333457)))

(declare-fun e!3333447 () Bool)

(declare-fun e!3333465 () Bool)

(assert (=> b!5372353 (= e!3333447 e!3333465)))

(declare-fun res!2280155 () Bool)

(assert (=> b!5372353 (=> res!2280155 e!3333465)))

(assert (=> b!5372353 (= res!2280155 (or (and ((_ is ElementMatch!15087) (regOne!30686 r!7292)) (= (c!936191 (regOne!30686 r!7292)) (h!67886 s!2326))) ((_ is Union!15087) (regOne!30686 r!7292))))))

(declare-fun lt!2187717 () Unit!153866)

(assert (=> b!5372353 (= lt!2187717 e!3333446)))

(declare-fun c!936190 () Bool)

(declare-fun nullable!5256 (Regex!15087) Bool)

(assert (=> b!5372353 (= c!936190 (nullable!5256 (h!67884 (exprs!4971 (h!67885 zl!343)))))))

(declare-fun lambda!277273 () Int)

(declare-fun flatMap!814 ((InoxSet Context!8942) Int) (InoxSet Context!8942))

(declare-fun derivationStepZipperUp!459 (Context!8942 C!30444) (InoxSet Context!8942))

(assert (=> b!5372353 (= (flatMap!814 z!1189 lambda!277273) (derivationStepZipperUp!459 (h!67885 zl!343) (h!67886 s!2326)))))

(declare-fun lt!2187702 () Unit!153866)

(declare-fun lemmaFlatMapOnSingletonSet!346 ((InoxSet Context!8942) Context!8942 Int) Unit!153866)

(assert (=> b!5372353 (= lt!2187702 (lemmaFlatMapOnSingletonSet!346 z!1189 (h!67885 zl!343) lambda!277273))))

(declare-fun lt!2187708 () Context!8942)

(assert (=> b!5372353 (= lt!2187718 (derivationStepZipperUp!459 lt!2187708 (h!67886 s!2326)))))

(declare-fun derivationStepZipperDown!535 (Regex!15087 Context!8942 C!30444) (InoxSet Context!8942))

(assert (=> b!5372353 (= lt!2187704 (derivationStepZipperDown!535 (h!67884 (exprs!4971 (h!67885 zl!343))) lt!2187708 (h!67886 s!2326)))))

(assert (=> b!5372353 (= lt!2187708 (Context!8943 (t!374783 (exprs!4971 (h!67885 zl!343)))))))

(declare-fun lt!2187685 () (InoxSet Context!8942))

(assert (=> b!5372353 (= lt!2187685 (derivationStepZipperUp!459 (Context!8943 (Cons!61436 (h!67884 (exprs!4971 (h!67885 zl!343))) (t!374783 (exprs!4971 (h!67885 zl!343))))) (h!67886 s!2326)))))

(declare-fun b!5372354 () Bool)

(declare-fun e!3333458 () Bool)

(assert (=> b!5372354 (= e!3333449 e!3333458)))

(declare-fun res!2280159 () Bool)

(assert (=> b!5372354 (=> (not res!2280159) (not e!3333458))))

(declare-fun lt!2187694 () Regex!15087)

(assert (=> b!5372354 (= res!2280159 (= r!7292 lt!2187694))))

(declare-fun unfocusZipper!829 (List!61561) Regex!15087)

(assert (=> b!5372354 (= lt!2187694 (unfocusZipper!829 zl!343))))

(declare-fun b!5372355 () Bool)

(assert (=> b!5372355 (= e!3333458 (not e!3333450))))

(declare-fun res!2280141 () Bool)

(assert (=> b!5372355 (=> res!2280141 e!3333450)))

(assert (=> b!5372355 (= res!2280141 (not ((_ is Cons!61437) zl!343)))))

(declare-fun lt!2187700 () Bool)

(declare-fun lt!2187687 () Bool)

(assert (=> b!5372355 (= lt!2187700 lt!2187687)))

(declare-fun matchRSpec!2190 (Regex!15087 List!61562) Bool)

(assert (=> b!5372355 (= lt!2187687 (matchRSpec!2190 r!7292 s!2326))))

(assert (=> b!5372355 (= lt!2187700 (matchR!7272 r!7292 s!2326))))

(declare-fun lt!2187713 () Unit!153866)

(declare-fun mainMatchTheorem!2190 (Regex!15087 List!61562) Unit!153866)

(assert (=> b!5372355 (= lt!2187713 (mainMatchTheorem!2190 r!7292 s!2326))))

(declare-fun b!5372356 () Bool)

(declare-fun res!2280153 () Bool)

(declare-fun e!3333456 () Bool)

(assert (=> b!5372356 (=> res!2280153 e!3333456)))

(declare-fun lt!2187697 () Context!8942)

(declare-fun lt!2187688 () Regex!15087)

(assert (=> b!5372356 (= res!2280153 (not (= (unfocusZipper!829 (Cons!61437 lt!2187697 Nil!61437)) lt!2187688)))))

(declare-fun b!5372357 () Bool)

(declare-fun e!3333464 () Bool)

(assert (=> b!5372357 (= e!3333454 e!3333464)))

(declare-fun res!2280133 () Bool)

(assert (=> b!5372357 (=> res!2280133 e!3333464)))

(assert (=> b!5372357 (= res!2280133 (not (= r!7292 lt!2187688)))))

(assert (=> b!5372357 (= lt!2187688 (Concat!23932 lt!2187686 (regTwo!30686 r!7292)))))

(declare-fun setIsEmpty!34817 () Bool)

(declare-fun setRes!34817 () Bool)

(assert (=> setIsEmpty!34817 setRes!34817))

(declare-fun b!5372358 () Bool)

(assert (=> b!5372358 (= e!3333457 (matchZipper!1331 lt!2187718 (t!374785 s!2326)))))

(declare-fun b!5372359 () Bool)

(declare-fun res!2280143 () Bool)

(assert (=> b!5372359 (=> res!2280143 e!3333451)))

(assert (=> b!5372359 (= res!2280143 (not (matchR!7272 (regTwo!30686 r!7292) (_2!35589 lt!2187716))))))

(declare-fun b!5372360 () Bool)

(declare-fun res!2280157 () Bool)

(assert (=> b!5372360 (=> res!2280157 e!3333450)))

(assert (=> b!5372360 (= res!2280157 (or ((_ is EmptyExpr!15087) r!7292) ((_ is EmptyLang!15087) r!7292) ((_ is ElementMatch!15087) r!7292) ((_ is Union!15087) r!7292) (not ((_ is Concat!23932) r!7292))))))

(declare-fun b!5372361 () Bool)

(declare-fun res!2280145 () Bool)

(assert (=> b!5372361 (=> res!2280145 e!3333450)))

(declare-fun generalisedConcat!756 (List!61560) Regex!15087)

(assert (=> b!5372361 (= res!2280145 (not (= r!7292 (generalisedConcat!756 (exprs!4971 (h!67885 zl!343))))))))

(declare-fun b!5372362 () Bool)

(declare-fun e!3333463 () Bool)

(declare-fun tp!1490206 () Bool)

(declare-fun tp!1490208 () Bool)

(assert (=> b!5372362 (= e!3333463 (and tp!1490206 tp!1490208))))

(declare-fun b!5372363 () Bool)

(declare-fun tp!1490212 () Bool)

(assert (=> b!5372363 (= e!3333462 tp!1490212)))

(assert (=> b!5372364 (= e!3333450 e!3333447)))

(declare-fun res!2280149 () Bool)

(assert (=> b!5372364 (=> res!2280149 e!3333447)))

(declare-fun lt!2187703 () Bool)

(assert (=> b!5372364 (= res!2280149 (or (not (= lt!2187700 lt!2187703)) ((_ is Nil!61438) s!2326)))))

(assert (=> b!5372364 (= (Exists!2268 lambda!277271) (Exists!2268 lambda!277272))))

(declare-fun lt!2187693 () Unit!153866)

(assert (=> b!5372364 (= lt!2187693 (lemmaExistCutMatchRandMatchRSpecEquivalent!922 (regOne!30686 r!7292) (regTwo!30686 r!7292) s!2326))))

(assert (=> b!5372364 (= lt!2187703 (Exists!2268 lambda!277271))))

(assert (=> b!5372364 (= lt!2187703 (isDefined!11901 (findConcatSeparation!1612 (regOne!30686 r!7292) (regTwo!30686 r!7292) Nil!61438 s!2326 s!2326)))))

(declare-fun lt!2187690 () Unit!153866)

(assert (=> b!5372364 (= lt!2187690 (lemmaFindConcatSeparationEquivalentToExists!1376 (regOne!30686 r!7292) (regTwo!30686 r!7292) s!2326))))

(declare-fun b!5372365 () Bool)

(assert (=> b!5372365 (= e!3333456 e!3333455)))

(declare-fun res!2280156 () Bool)

(assert (=> b!5372365 (=> res!2280156 e!3333455)))

(assert (=> b!5372365 (= res!2280156 (not lt!2187700))))

(declare-fun e!3333460 () Bool)

(assert (=> b!5372365 e!3333460))

(declare-fun res!2280150 () Bool)

(assert (=> b!5372365 (=> (not res!2280150) (not e!3333460))))

(declare-fun lt!2187701 () Regex!15087)

(assert (=> b!5372365 (= res!2280150 (= (matchR!7272 lt!2187701 s!2326) (matchRSpec!2190 lt!2187701 s!2326)))))

(declare-fun lt!2187698 () Unit!153866)

(assert (=> b!5372365 (= lt!2187698 (mainMatchTheorem!2190 lt!2187701 s!2326))))

(declare-fun b!5372350 () Bool)

(declare-fun res!2280147 () Bool)

(assert (=> b!5372350 (=> res!2280147 e!3333465)))

(assert (=> b!5372350 (= res!2280147 (or ((_ is Concat!23932) (regOne!30686 r!7292)) (not ((_ is Star!15087) (regOne!30686 r!7292)))))))

(declare-fun res!2280131 () Bool)

(assert (=> start!565238 (=> (not res!2280131) (not e!3333449))))

(declare-fun validRegex!6823 (Regex!15087) Bool)

(assert (=> start!565238 (= res!2280131 (validRegex!6823 r!7292))))

(assert (=> start!565238 e!3333449))

(assert (=> start!565238 e!3333463))

(declare-fun condSetEmpty!34817 () Bool)

(assert (=> start!565238 (= condSetEmpty!34817 (= z!1189 ((as const (Array Context!8942 Bool)) false)))))

(assert (=> start!565238 setRes!34817))

(assert (=> start!565238 e!3333452))

(declare-fun e!3333448 () Bool)

(assert (=> start!565238 e!3333448))

(declare-fun b!5372366 () Bool)

(declare-fun e!3333453 () Bool)

(assert (=> b!5372366 (= e!3333453 e!3333456)))

(declare-fun res!2280154 () Bool)

(assert (=> b!5372366 (=> res!2280154 e!3333456)))

(declare-fun lt!2187705 () Context!8942)

(assert (=> b!5372366 (= res!2280154 (not (= (unfocusZipper!829 (Cons!61437 lt!2187705 Nil!61437)) (reg!15416 (regOne!30686 r!7292)))))))

(declare-fun lt!2187714 () (InoxSet Context!8942))

(assert (=> b!5372366 (= (flatMap!814 lt!2187714 lambda!277273) (derivationStepZipperUp!459 lt!2187697 (h!67886 s!2326)))))

(declare-fun lt!2187709 () Unit!153866)

(assert (=> b!5372366 (= lt!2187709 (lemmaFlatMapOnSingletonSet!346 lt!2187714 lt!2187697 lambda!277273))))

(declare-fun lt!2187695 () (InoxSet Context!8942))

(assert (=> b!5372366 (= (flatMap!814 lt!2187695 lambda!277273) (derivationStepZipperUp!459 lt!2187705 (h!67886 s!2326)))))

(declare-fun lt!2187715 () Unit!153866)

(assert (=> b!5372366 (= lt!2187715 (lemmaFlatMapOnSingletonSet!346 lt!2187695 lt!2187705 lambda!277273))))

(declare-fun lt!2187691 () (InoxSet Context!8942))

(assert (=> b!5372366 (= lt!2187691 (derivationStepZipperUp!459 lt!2187697 (h!67886 s!2326)))))

(declare-fun lt!2187696 () (InoxSet Context!8942))

(assert (=> b!5372366 (= lt!2187696 (derivationStepZipperUp!459 lt!2187705 (h!67886 s!2326)))))

(assert (=> b!5372366 (= lt!2187714 (store ((as const (Array Context!8942 Bool)) false) lt!2187697 true))))

(assert (=> b!5372366 (= lt!2187695 (store ((as const (Array Context!8942 Bool)) false) lt!2187705 true))))

(assert (=> b!5372366 (= lt!2187705 (Context!8943 (Cons!61436 (reg!15416 (regOne!30686 r!7292)) Nil!61436)))))

(declare-fun b!5372367 () Bool)

(declare-fun res!2280140 () Bool)

(assert (=> b!5372367 (=> res!2280140 e!3333447)))

(declare-fun isEmpty!33419 (List!61560) Bool)

(assert (=> b!5372367 (= res!2280140 (isEmpty!33419 (t!374783 (exprs!4971 (h!67885 zl!343)))))))

(declare-fun b!5372368 () Bool)

(declare-fun Unit!153869 () Unit!153866)

(assert (=> b!5372368 (= e!3333446 Unit!153869)))

(declare-fun b!5372369 () Bool)

(declare-fun tp!1490211 () Bool)

(declare-fun tp!1490209 () Bool)

(assert (=> b!5372369 (= e!3333463 (and tp!1490211 tp!1490209))))

(declare-fun b!5372370 () Bool)

(assert (=> b!5372370 (= e!3333464 e!3333453)))

(declare-fun res!2280144 () Bool)

(assert (=> b!5372370 (=> res!2280144 e!3333453)))

(declare-fun lt!2187710 () Context!8942)

(assert (=> b!5372370 (= res!2280144 (not (= (unfocusZipper!829 (Cons!61437 lt!2187710 Nil!61437)) lt!2187701)))))

(assert (=> b!5372370 (= lt!2187701 (Concat!23932 (reg!15416 (regOne!30686 r!7292)) lt!2187688))))

(declare-fun b!5372371 () Bool)

(declare-fun e!3333461 () Bool)

(assert (=> b!5372371 (= e!3333461 e!3333454)))

(declare-fun res!2280158 () Bool)

(assert (=> b!5372371 (=> res!2280158 e!3333454)))

(declare-fun lt!2187684 () (InoxSet Context!8942))

(assert (=> b!5372371 (= res!2280158 (not (= lt!2187711 lt!2187684)))))

(assert (=> b!5372371 (= (flatMap!814 lt!2187699 lambda!277273) (derivationStepZipperUp!459 lt!2187710 (h!67886 s!2326)))))

(declare-fun lt!2187682 () Unit!153866)

(assert (=> b!5372371 (= lt!2187682 (lemmaFlatMapOnSingletonSet!346 lt!2187699 lt!2187710 lambda!277273))))

(declare-fun lt!2187692 () (InoxSet Context!8942))

(assert (=> b!5372371 (= lt!2187692 (derivationStepZipperUp!459 lt!2187710 (h!67886 s!2326)))))

(declare-fun derivationStepZipper!1326 ((InoxSet Context!8942) C!30444) (InoxSet Context!8942))

(assert (=> b!5372371 (= lt!2187711 (derivationStepZipper!1326 lt!2187699 (h!67886 s!2326)))))

(assert (=> b!5372371 (= lt!2187699 (store ((as const (Array Context!8942 Bool)) false) lt!2187710 true))))

(declare-fun lt!2187707 () List!61560)

(assert (=> b!5372371 (= lt!2187710 (Context!8943 (Cons!61436 (reg!15416 (regOne!30686 r!7292)) lt!2187707)))))

(declare-fun b!5372372 () Bool)

(assert (=> b!5372372 (= e!3333451 true)))

(declare-fun b!5372373 () Bool)

(assert (=> b!5372373 (= e!3333460 (or (not lt!2187700) lt!2187687))))

(declare-fun b!5372374 () Bool)

(declare-fun res!2280132 () Bool)

(assert (=> b!5372374 (=> res!2280132 e!3333450)))

(declare-fun generalisedUnion!1016 (List!61560) Regex!15087)

(declare-fun unfocusZipperList!529 (List!61561) List!61560)

(assert (=> b!5372374 (= res!2280132 (not (= r!7292 (generalisedUnion!1016 (unfocusZipperList!529 zl!343)))))))

(declare-fun b!5372375 () Bool)

(declare-fun res!2280152 () Bool)

(assert (=> b!5372375 (=> res!2280152 e!3333465)))

(declare-fun e!3333459 () Bool)

(assert (=> b!5372375 (= res!2280152 e!3333459)))

(declare-fun res!2280146 () Bool)

(assert (=> b!5372375 (=> (not res!2280146) (not e!3333459))))

(assert (=> b!5372375 (= res!2280146 ((_ is Concat!23932) (regOne!30686 r!7292)))))

(declare-fun b!5372376 () Bool)

(declare-fun tp!1490213 () Bool)

(assert (=> b!5372376 (= e!3333463 tp!1490213)))

(declare-fun b!5372377 () Bool)

(declare-fun tp_is_empty!39427 () Bool)

(assert (=> b!5372377 (= e!3333463 tp_is_empty!39427)))

(declare-fun b!5372378 () Bool)

(declare-fun res!2280138 () Bool)

(assert (=> b!5372378 (=> res!2280138 e!3333454)))

(assert (=> b!5372378 (= res!2280138 (not (= lt!2187694 r!7292)))))

(declare-fun b!5372379 () Bool)

(assert (=> b!5372379 (= e!3333465 e!3333461)))

(declare-fun res!2280148 () Bool)

(assert (=> b!5372379 (=> res!2280148 e!3333461)))

(assert (=> b!5372379 (= res!2280148 (not (= lt!2187704 lt!2187684)))))

(assert (=> b!5372379 (= lt!2187684 (derivationStepZipperDown!535 (reg!15416 (regOne!30686 r!7292)) lt!2187697 (h!67886 s!2326)))))

(assert (=> b!5372379 (= lt!2187697 (Context!8943 lt!2187707))))

(assert (=> b!5372379 (= lt!2187707 (Cons!61436 lt!2187686 (t!374783 (exprs!4971 (h!67885 zl!343)))))))

(assert (=> b!5372379 (= lt!2187686 (Star!15087 (reg!15416 (regOne!30686 r!7292))))))

(declare-fun b!5372380 () Bool)

(declare-fun tp!1490205 () Bool)

(assert (=> b!5372380 (= e!3333448 (and tp_is_empty!39427 tp!1490205))))

(declare-fun b!5372381 () Bool)

(assert (=> b!5372381 (= e!3333459 (nullable!5256 (regOne!30686 (regOne!30686 r!7292))))))

(declare-fun b!5372382 () Bool)

(declare-fun res!2280139 () Bool)

(assert (=> b!5372382 (=> res!2280139 e!3333450)))

(declare-fun isEmpty!33420 (List!61561) Bool)

(assert (=> b!5372382 (= res!2280139 (not (isEmpty!33420 (t!374784 zl!343))))))

(declare-fun tp!1490204 () Bool)

(declare-fun setElem!34817 () Context!8942)

(declare-fun setNonEmpty!34817 () Bool)

(declare-fun e!3333466 () Bool)

(assert (=> setNonEmpty!34817 (= setRes!34817 (and tp!1490204 (inv!80964 setElem!34817) e!3333466))))

(declare-fun setRest!34817 () (InoxSet Context!8942))

(assert (=> setNonEmpty!34817 (= z!1189 ((_ map or) (store ((as const (Array Context!8942 Bool)) false) setElem!34817 true) setRest!34817))))

(declare-fun b!5372383 () Bool)

(declare-fun tp!1490210 () Bool)

(assert (=> b!5372383 (= e!3333466 tp!1490210)))

(assert (= (and start!565238 res!2280131) b!5372345))

(assert (= (and b!5372345 res!2280135) b!5372354))

(assert (= (and b!5372354 res!2280159) b!5372355))

(assert (= (and b!5372355 (not res!2280141)) b!5372382))

(assert (= (and b!5372382 (not res!2280139)) b!5372361))

(assert (= (and b!5372361 (not res!2280145)) b!5372346))

(assert (= (and b!5372346 (not res!2280136)) b!5372374))

(assert (= (and b!5372374 (not res!2280132)) b!5372360))

(assert (= (and b!5372360 (not res!2280157)) b!5372364))

(assert (= (and b!5372364 (not res!2280149)) b!5372367))

(assert (= (and b!5372367 (not res!2280140)) b!5372353))

(assert (= (and b!5372353 c!936190) b!5372352))

(assert (= (and b!5372353 (not c!936190)) b!5372368))

(assert (= (and b!5372352 (not res!2280137)) b!5372358))

(assert (= (and b!5372353 (not res!2280155)) b!5372375))

(assert (= (and b!5372375 res!2280146) b!5372381))

(assert (= (and b!5372375 (not res!2280152)) b!5372350))

(assert (= (and b!5372350 (not res!2280147)) b!5372379))

(assert (= (and b!5372379 (not res!2280148)) b!5372371))

(assert (= (and b!5372371 (not res!2280158)) b!5372348))

(assert (= (and b!5372348 (not res!2280142)) b!5372378))

(assert (= (and b!5372378 (not res!2280138)) b!5372357))

(assert (= (and b!5372357 (not res!2280133)) b!5372370))

(assert (= (and b!5372370 (not res!2280144)) b!5372366))

(assert (= (and b!5372366 (not res!2280154)) b!5372356))

(assert (= (and b!5372356 (not res!2280153)) b!5372365))

(assert (= (and b!5372365 res!2280150) b!5372373))

(assert (= (and b!5372365 (not res!2280156)) b!5372349))

(assert (= (and b!5372349 (not res!2280151)) b!5372347))

(assert (= (and b!5372347 (not res!2280134)) b!5372359))

(assert (= (and b!5372359 (not res!2280143)) b!5372372))

(assert (= (and start!565238 ((_ is ElementMatch!15087) r!7292)) b!5372377))

(assert (= (and start!565238 ((_ is Concat!23932) r!7292)) b!5372369))

(assert (= (and start!565238 ((_ is Star!15087) r!7292)) b!5372376))

(assert (= (and start!565238 ((_ is Union!15087) r!7292)) b!5372362))

(assert (= (and start!565238 condSetEmpty!34817) setIsEmpty!34817))

(assert (= (and start!565238 (not condSetEmpty!34817)) setNonEmpty!34817))

(assert (= setNonEmpty!34817 b!5372383))

(assert (= b!5372351 b!5372363))

(assert (= (and start!565238 ((_ is Cons!61437) zl!343)) b!5372351))

(assert (= (and start!565238 ((_ is Cons!61438) s!2326)) b!5372380))

(declare-fun m!6399418 () Bool)

(assert (=> b!5372348 m!6399418))

(declare-fun m!6399420 () Bool)

(assert (=> b!5372348 m!6399420))

(declare-fun m!6399422 () Bool)

(assert (=> b!5372371 m!6399422))

(declare-fun m!6399424 () Bool)

(assert (=> b!5372371 m!6399424))

(declare-fun m!6399426 () Bool)

(assert (=> b!5372371 m!6399426))

(declare-fun m!6399428 () Bool)

(assert (=> b!5372371 m!6399428))

(declare-fun m!6399430 () Bool)

(assert (=> b!5372371 m!6399430))

(declare-fun m!6399432 () Bool)

(assert (=> b!5372352 m!6399432))

(declare-fun m!6399434 () Bool)

(assert (=> b!5372352 m!6399434))

(declare-fun m!6399436 () Bool)

(assert (=> b!5372352 m!6399436))

(declare-fun m!6399438 () Bool)

(assert (=> b!5372358 m!6399438))

(declare-fun m!6399440 () Bool)

(assert (=> b!5372374 m!6399440))

(assert (=> b!5372374 m!6399440))

(declare-fun m!6399442 () Bool)

(assert (=> b!5372374 m!6399442))

(declare-fun m!6399444 () Bool)

(assert (=> b!5372361 m!6399444))

(declare-fun m!6399446 () Bool)

(assert (=> b!5372351 m!6399446))

(declare-fun m!6399448 () Bool)

(assert (=> b!5372382 m!6399448))

(declare-fun m!6399450 () Bool)

(assert (=> b!5372366 m!6399450))

(declare-fun m!6399452 () Bool)

(assert (=> b!5372366 m!6399452))

(declare-fun m!6399454 () Bool)

(assert (=> b!5372366 m!6399454))

(declare-fun m!6399456 () Bool)

(assert (=> b!5372366 m!6399456))

(declare-fun m!6399458 () Bool)

(assert (=> b!5372366 m!6399458))

(declare-fun m!6399460 () Bool)

(assert (=> b!5372366 m!6399460))

(declare-fun m!6399462 () Bool)

(assert (=> b!5372366 m!6399462))

(declare-fun m!6399464 () Bool)

(assert (=> b!5372366 m!6399464))

(declare-fun m!6399466 () Bool)

(assert (=> b!5372366 m!6399466))

(declare-fun m!6399468 () Bool)

(assert (=> b!5372367 m!6399468))

(declare-fun m!6399470 () Bool)

(assert (=> setNonEmpty!34817 m!6399470))

(declare-fun m!6399472 () Bool)

(assert (=> b!5372364 m!6399472))

(declare-fun m!6399474 () Bool)

(assert (=> b!5372364 m!6399474))

(declare-fun m!6399476 () Bool)

(assert (=> b!5372364 m!6399476))

(declare-fun m!6399478 () Bool)

(assert (=> b!5372364 m!6399478))

(declare-fun m!6399480 () Bool)

(assert (=> b!5372364 m!6399480))

(assert (=> b!5372364 m!6399472))

(assert (=> b!5372364 m!6399474))

(declare-fun m!6399482 () Bool)

(assert (=> b!5372364 m!6399482))

(declare-fun m!6399484 () Bool)

(assert (=> b!5372379 m!6399484))

(declare-fun m!6399486 () Bool)

(assert (=> b!5372370 m!6399486))

(declare-fun m!6399488 () Bool)

(assert (=> b!5372345 m!6399488))

(declare-fun m!6399490 () Bool)

(assert (=> b!5372355 m!6399490))

(declare-fun m!6399492 () Bool)

(assert (=> b!5372355 m!6399492))

(declare-fun m!6399494 () Bool)

(assert (=> b!5372355 m!6399494))

(declare-fun m!6399496 () Bool)

(assert (=> b!5372365 m!6399496))

(declare-fun m!6399498 () Bool)

(assert (=> b!5372365 m!6399498))

(declare-fun m!6399500 () Bool)

(assert (=> b!5372365 m!6399500))

(declare-fun m!6399502 () Bool)

(assert (=> b!5372356 m!6399502))

(declare-fun m!6399504 () Bool)

(assert (=> b!5372381 m!6399504))

(declare-fun m!6399506 () Bool)

(assert (=> b!5372349 m!6399506))

(declare-fun m!6399508 () Bool)

(assert (=> b!5372349 m!6399508))

(declare-fun m!6399510 () Bool)

(assert (=> b!5372349 m!6399510))

(declare-fun m!6399512 () Bool)

(assert (=> b!5372349 m!6399512))

(declare-fun m!6399514 () Bool)

(assert (=> b!5372349 m!6399514))

(declare-fun m!6399516 () Bool)

(assert (=> b!5372349 m!6399516))

(declare-fun m!6399518 () Bool)

(assert (=> b!5372349 m!6399518))

(declare-fun m!6399520 () Bool)

(assert (=> b!5372349 m!6399520))

(assert (=> b!5372349 m!6399510))

(declare-fun m!6399522 () Bool)

(assert (=> b!5372354 m!6399522))

(declare-fun m!6399524 () Bool)

(assert (=> b!5372359 m!6399524))

(declare-fun m!6399526 () Bool)

(assert (=> b!5372347 m!6399526))

(declare-fun m!6399528 () Bool)

(assert (=> b!5372353 m!6399528))

(declare-fun m!6399530 () Bool)

(assert (=> b!5372353 m!6399530))

(declare-fun m!6399532 () Bool)

(assert (=> b!5372353 m!6399532))

(declare-fun m!6399534 () Bool)

(assert (=> b!5372353 m!6399534))

(declare-fun m!6399536 () Bool)

(assert (=> b!5372353 m!6399536))

(declare-fun m!6399538 () Bool)

(assert (=> b!5372353 m!6399538))

(declare-fun m!6399540 () Bool)

(assert (=> b!5372353 m!6399540))

(declare-fun m!6399542 () Bool)

(assert (=> start!565238 m!6399542))

(check-sat (not setNonEmpty!34817) (not b!5372376) (not b!5372353) (not b!5372366) (not b!5372359) (not b!5372364) (not b!5372363) (not b!5372355) (not b!5372358) (not b!5372369) (not b!5372349) (not start!565238) (not b!5372362) (not b!5372367) (not b!5372352) (not b!5372374) (not b!5372371) (not b!5372345) (not b!5372379) (not b!5372381) (not b!5372383) (not b!5372361) (not b!5372348) (not b!5372356) tp_is_empty!39427 (not b!5372354) (not b!5372351) (not b!5372382) (not b!5372370) (not b!5372380) (not b!5372365) (not b!5372347))
(check-sat)
