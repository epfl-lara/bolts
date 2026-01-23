; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!569094 () Bool)

(assert start!569094)

(declare-fun b!5420337 () Bool)

(assert (=> b!5420337 true))

(assert (=> b!5420337 true))

(declare-fun lambda!283783 () Int)

(declare-fun lambda!283782 () Int)

(assert (=> b!5420337 (not (= lambda!283783 lambda!283782))))

(assert (=> b!5420337 true))

(assert (=> b!5420337 true))

(declare-fun b!5420365 () Bool)

(assert (=> b!5420365 true))

(declare-fun b!5420336 () Bool)

(assert (=> b!5420336 true))

(declare-fun bs!1252308 () Bool)

(declare-fun b!5420358 () Bool)

(assert (= bs!1252308 (and b!5420358 b!5420337)))

(declare-datatypes ((C!30676 0))(
  ( (C!30677 (val!25040 Int)) )
))
(declare-datatypes ((Regex!15203 0))(
  ( (ElementMatch!15203 (c!945315 C!30676)) (Concat!24048 (regOne!30918 Regex!15203) (regTwo!30918 Regex!15203)) (EmptyExpr!15203) (Star!15203 (reg!15532 Regex!15203)) (EmptyLang!15203) (Union!15203 (regOne!30919 Regex!15203) (regTwo!30919 Regex!15203)) )
))
(declare-fun r!7292 () Regex!15203)

(declare-fun lambda!283787 () Int)

(declare-fun lt!2210434 () Regex!15203)

(assert (=> bs!1252308 (= (= lt!2210434 (regOne!30918 r!7292)) (= lambda!283787 lambda!283782))))

(assert (=> bs!1252308 (not (= lambda!283787 lambda!283783))))

(assert (=> b!5420358 true))

(assert (=> b!5420358 true))

(assert (=> b!5420358 true))

(declare-fun lambda!283788 () Int)

(assert (=> bs!1252308 (not (= lambda!283788 lambda!283782))))

(assert (=> bs!1252308 (= (= lt!2210434 (regOne!30918 r!7292)) (= lambda!283788 lambda!283783))))

(assert (=> b!5420358 (not (= lambda!283788 lambda!283787))))

(assert (=> b!5420358 true))

(assert (=> b!5420358 true))

(assert (=> b!5420358 true))

(declare-fun bs!1252309 () Bool)

(declare-fun b!5420345 () Bool)

(assert (= bs!1252309 (and b!5420345 b!5420337)))

(declare-datatypes ((List!61908 0))(
  ( (Nil!61784) (Cons!61784 (h!68232 C!30676) (t!375131 List!61908)) )
))
(declare-fun s!2326 () List!61908)

(declare-fun lt!2210462 () Regex!15203)

(declare-datatypes ((tuple2!64804 0))(
  ( (tuple2!64805 (_1!35705 List!61908) (_2!35705 List!61908)) )
))
(declare-fun lt!2210447 () tuple2!64804)

(declare-fun lambda!283789 () Int)

(assert (=> bs!1252309 (= (and (= (_1!35705 lt!2210447) s!2326) (= (reg!15532 (regOne!30918 r!7292)) (regOne!30918 r!7292)) (= lt!2210462 (regTwo!30918 r!7292))) (= lambda!283789 lambda!283782))))

(assert (=> bs!1252309 (not (= lambda!283789 lambda!283783))))

(declare-fun bs!1252310 () Bool)

(assert (= bs!1252310 (and b!5420345 b!5420358)))

(assert (=> bs!1252310 (= (and (= (_1!35705 lt!2210447) s!2326) (= (reg!15532 (regOne!30918 r!7292)) lt!2210434) (= lt!2210462 (regTwo!30918 r!7292))) (= lambda!283789 lambda!283787))))

(assert (=> bs!1252310 (not (= lambda!283789 lambda!283788))))

(assert (=> b!5420345 true))

(assert (=> b!5420345 true))

(assert (=> b!5420345 true))

(declare-fun lambda!283790 () Int)

(assert (=> b!5420345 (not (= lambda!283790 lambda!283789))))

(assert (=> bs!1252309 (not (= lambda!283790 lambda!283782))))

(assert (=> bs!1252310 (not (= lambda!283790 lambda!283787))))

(assert (=> bs!1252310 (= (and (= (_1!35705 lt!2210447) s!2326) (= (reg!15532 (regOne!30918 r!7292)) lt!2210434) (= lt!2210462 (regTwo!30918 r!7292))) (= lambda!283790 lambda!283788))))

(assert (=> bs!1252309 (= (and (= (_1!35705 lt!2210447) s!2326) (= (reg!15532 (regOne!30918 r!7292)) (regOne!30918 r!7292)) (= lt!2210462 (regTwo!30918 r!7292))) (= lambda!283790 lambda!283783))))

(assert (=> b!5420345 true))

(assert (=> b!5420345 true))

(assert (=> b!5420345 true))

(declare-fun lambda!283791 () Int)

(assert (=> b!5420345 (not (= lambda!283791 lambda!283789))))

(assert (=> bs!1252310 (not (= lambda!283791 lambda!283787))))

(assert (=> bs!1252310 (not (= lambda!283791 lambda!283788))))

(assert (=> bs!1252309 (not (= lambda!283791 lambda!283783))))

(assert (=> bs!1252309 (not (= lambda!283791 lambda!283782))))

(assert (=> b!5420345 (not (= lambda!283791 lambda!283790))))

(assert (=> b!5420345 true))

(assert (=> b!5420345 true))

(assert (=> b!5420345 true))

(declare-fun b!5420328 () Bool)

(declare-fun e!3359386 () Bool)

(declare-fun nullable!5372 (Regex!15203) Bool)

(assert (=> b!5420328 (= e!3359386 (nullable!5372 (regOne!30918 (regOne!30918 r!7292))))))

(declare-fun b!5420329 () Bool)

(declare-fun res!2306054 () Bool)

(declare-fun e!3359371 () Bool)

(assert (=> b!5420329 (=> res!2306054 e!3359371)))

(declare-datatypes ((List!61909 0))(
  ( (Nil!61785) (Cons!61785 (h!68233 Regex!15203) (t!375132 List!61909)) )
))
(declare-datatypes ((Context!9174 0))(
  ( (Context!9175 (exprs!5087 List!61909)) )
))
(declare-datatypes ((List!61910 0))(
  ( (Nil!61786) (Cons!61786 (h!68234 Context!9174) (t!375133 List!61910)) )
))
(declare-fun zl!343 () List!61910)

(declare-fun generalisedUnion!1132 (List!61909) Regex!15203)

(declare-fun unfocusZipperList!645 (List!61910) List!61909)

(assert (=> b!5420329 (= res!2306054 (not (= r!7292 (generalisedUnion!1132 (unfocusZipperList!645 zl!343)))))))

(declare-fun b!5420330 () Bool)

(declare-fun e!3359378 () Bool)

(declare-fun tp!1496727 () Bool)

(declare-fun tp!1496728 () Bool)

(assert (=> b!5420330 (= e!3359378 (and tp!1496727 tp!1496728))))

(declare-fun b!5420332 () Bool)

(declare-fun e!3359385 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2210443 () (InoxSet Context!9174))

(declare-fun matchZipper!1447 ((InoxSet Context!9174) List!61908) Bool)

(assert (=> b!5420332 (= e!3359385 (not (matchZipper!1447 lt!2210443 (t!375131 s!2326))))))

(declare-fun b!5420333 () Bool)

(declare-fun res!2306033 () Bool)

(assert (=> b!5420333 (=> res!2306033 e!3359371)))

(declare-fun isEmpty!33784 (List!61910) Bool)

(assert (=> b!5420333 (= res!2306033 (not (isEmpty!33784 (t!375133 zl!343))))))

(declare-fun b!5420334 () Bool)

(declare-datatypes ((Unit!154334 0))(
  ( (Unit!154335) )
))
(declare-fun e!3359374 () Unit!154334)

(declare-fun Unit!154336 () Unit!154334)

(assert (=> b!5420334 (= e!3359374 Unit!154336)))

(declare-fun lt!2210406 () Unit!154334)

(declare-fun lt!2210444 () (InoxSet Context!9174))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!440 ((InoxSet Context!9174) (InoxSet Context!9174) List!61908) Unit!154334)

(assert (=> b!5420334 (= lt!2210406 (lemmaZipperConcatMatchesSameAsBothZippers!440 lt!2210444 lt!2210443 (t!375131 s!2326)))))

(declare-fun res!2306026 () Bool)

(assert (=> b!5420334 (= res!2306026 (matchZipper!1447 lt!2210444 (t!375131 s!2326)))))

(declare-fun e!3359393 () Bool)

(assert (=> b!5420334 (=> res!2306026 e!3359393)))

(assert (=> b!5420334 (= (matchZipper!1447 ((_ map or) lt!2210444 lt!2210443) (t!375131 s!2326)) e!3359393)))

(declare-fun b!5420335 () Bool)

(declare-fun e!3359389 () Bool)

(declare-fun lt!2210423 () Bool)

(assert (=> b!5420335 (= e!3359389 lt!2210423)))

(declare-fun e!3359373 () Bool)

(declare-fun e!3359368 () Bool)

(assert (=> b!5420336 (= e!3359373 e!3359368)))

(declare-fun res!2306046 () Bool)

(assert (=> b!5420336 (=> res!2306046 e!3359368)))

(declare-fun lt!2210420 () (InoxSet Context!9174))

(declare-fun lt!2210435 () Context!9174)

(declare-fun lt!2210431 () (InoxSet Context!9174))

(declare-fun appendTo!62 ((InoxSet Context!9174) Context!9174) (InoxSet Context!9174))

(assert (=> b!5420336 (= res!2306046 (not (= (appendTo!62 lt!2210431 lt!2210435) lt!2210420)))))

(declare-fun lt!2210461 () List!61909)

(declare-fun lambda!283785 () Int)

(declare-fun lt!2210460 () List!61909)

(declare-fun map!14189 ((InoxSet Context!9174) Int) (InoxSet Context!9174))

(declare-fun ++!13579 (List!61909 List!61909) List!61909)

(assert (=> b!5420336 (= (map!14189 lt!2210431 lambda!283785) (store ((as const (Array Context!9174 Bool)) false) (Context!9175 (++!13579 lt!2210460 lt!2210461)) true))))

(declare-fun lambda!283786 () Int)

(declare-fun lt!2210424 () Unit!154334)

(declare-fun lemmaConcatPreservesForall!228 (List!61909 List!61909 Int) Unit!154334)

(assert (=> b!5420336 (= lt!2210424 (lemmaConcatPreservesForall!228 lt!2210460 lt!2210461 lambda!283786))))

(declare-fun lt!2210445 () Context!9174)

(declare-fun lt!2210421 () Unit!154334)

(declare-fun lemmaMapOnSingletonSet!62 ((InoxSet Context!9174) Context!9174 Int) Unit!154334)

(assert (=> b!5420336 (= lt!2210421 (lemmaMapOnSingletonSet!62 lt!2210431 lt!2210445 lambda!283785))))

(declare-fun e!3359384 () Bool)

(assert (=> b!5420337 (= e!3359371 e!3359384)))

(declare-fun res!2306049 () Bool)

(assert (=> b!5420337 (=> res!2306049 e!3359384)))

(declare-fun lt!2210457 () Bool)

(declare-fun lt!2210448 () Bool)

(get-info :version)

(assert (=> b!5420337 (= res!2306049 (or (not (= lt!2210457 lt!2210448)) ((_ is Nil!61784) s!2326)))))

(declare-fun Exists!2384 (Int) Bool)

(assert (=> b!5420337 (= (Exists!2384 lambda!283782) (Exists!2384 lambda!283783))))

(declare-fun lt!2210453 () Unit!154334)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1038 (Regex!15203 Regex!15203 List!61908) Unit!154334)

(assert (=> b!5420337 (= lt!2210453 (lemmaExistCutMatchRandMatchRSpecEquivalent!1038 (regOne!30918 r!7292) (regTwo!30918 r!7292) s!2326))))

(assert (=> b!5420337 (= lt!2210448 (Exists!2384 lambda!283782))))

(declare-datatypes ((Option!15314 0))(
  ( (None!15313) (Some!15313 (v!51342 tuple2!64804)) )
))
(declare-fun isDefined!12017 (Option!15314) Bool)

(declare-fun findConcatSeparation!1728 (Regex!15203 Regex!15203 List!61908 List!61908 List!61908) Option!15314)

(assert (=> b!5420337 (= lt!2210448 (isDefined!12017 (findConcatSeparation!1728 (regOne!30918 r!7292) (regTwo!30918 r!7292) Nil!61784 s!2326 s!2326)))))

(declare-fun lt!2210455 () Unit!154334)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1492 (Regex!15203 Regex!15203 List!61908) Unit!154334)

(assert (=> b!5420337 (= lt!2210455 (lemmaFindConcatSeparationEquivalentToExists!1492 (regOne!30918 r!7292) (regTwo!30918 r!7292) s!2326))))

(declare-fun b!5420338 () Bool)

(declare-fun e!3359390 () Bool)

(declare-fun e!3359367 () Bool)

(assert (=> b!5420338 (= e!3359390 e!3359367)))

(declare-fun res!2306038 () Bool)

(assert (=> b!5420338 (=> res!2306038 e!3359367)))

(declare-fun lt!2210408 () List!61910)

(declare-fun unfocusZipper!945 (List!61910) Regex!15203)

(assert (=> b!5420338 (= res!2306038 (not (= (unfocusZipper!945 lt!2210408) (reg!15532 (regOne!30918 r!7292)))))))

(assert (=> b!5420338 (= lt!2210408 (Cons!61786 lt!2210445 Nil!61786))))

(declare-fun lambda!283784 () Int)

(declare-fun lt!2210440 () (InoxSet Context!9174))

(declare-fun flatMap!930 ((InoxSet Context!9174) Int) (InoxSet Context!9174))

(declare-fun derivationStepZipperUp!575 (Context!9174 C!30676) (InoxSet Context!9174))

(assert (=> b!5420338 (= (flatMap!930 lt!2210440 lambda!283784) (derivationStepZipperUp!575 lt!2210435 (h!68232 s!2326)))))

(declare-fun lt!2210416 () Unit!154334)

(declare-fun lemmaFlatMapOnSingletonSet!462 ((InoxSet Context!9174) Context!9174 Int) Unit!154334)

(assert (=> b!5420338 (= lt!2210416 (lemmaFlatMapOnSingletonSet!462 lt!2210440 lt!2210435 lambda!283784))))

(assert (=> b!5420338 (= (flatMap!930 lt!2210431 lambda!283784) (derivationStepZipperUp!575 lt!2210445 (h!68232 s!2326)))))

(declare-fun lt!2210429 () Unit!154334)

(assert (=> b!5420338 (= lt!2210429 (lemmaFlatMapOnSingletonSet!462 lt!2210431 lt!2210445 lambda!283784))))

(declare-fun lt!2210438 () (InoxSet Context!9174))

(assert (=> b!5420338 (= lt!2210438 (derivationStepZipperUp!575 lt!2210435 (h!68232 s!2326)))))

(declare-fun lt!2210430 () (InoxSet Context!9174))

(assert (=> b!5420338 (= lt!2210430 (derivationStepZipperUp!575 lt!2210445 (h!68232 s!2326)))))

(assert (=> b!5420338 (= lt!2210440 (store ((as const (Array Context!9174 Bool)) false) lt!2210435 true))))

(assert (=> b!5420338 (= lt!2210431 (store ((as const (Array Context!9174 Bool)) false) lt!2210445 true))))

(assert (=> b!5420338 (= lt!2210445 (Context!9175 lt!2210460))))

(assert (=> b!5420338 (= lt!2210460 (Cons!61785 (reg!15532 (regOne!30918 r!7292)) Nil!61785))))

(declare-fun b!5420339 () Bool)

(declare-fun e!3359369 () Bool)

(declare-fun tp_is_empty!39659 () Bool)

(declare-fun tp!1496725 () Bool)

(assert (=> b!5420339 (= e!3359369 (and tp_is_empty!39659 tp!1496725))))

(declare-fun b!5420340 () Bool)

(declare-fun e!3359394 () Bool)

(declare-fun e!3359376 () Bool)

(assert (=> b!5420340 (= e!3359394 e!3359376)))

(declare-fun res!2306052 () Bool)

(assert (=> b!5420340 (=> res!2306052 e!3359376)))

(assert (=> b!5420340 (= res!2306052 lt!2210457)))

(declare-fun lt!2210428 () Regex!15203)

(declare-fun matchRSpec!2306 (Regex!15203 List!61908) Bool)

(assert (=> b!5420340 (= lt!2210423 (matchRSpec!2306 lt!2210428 s!2326))))

(declare-fun matchR!7388 (Regex!15203 List!61908) Bool)

(assert (=> b!5420340 (= lt!2210423 (matchR!7388 lt!2210428 s!2326))))

(declare-fun lt!2210454 () Unit!154334)

(declare-fun mainMatchTheorem!2306 (Regex!15203 List!61908) Unit!154334)

(assert (=> b!5420340 (= lt!2210454 (mainMatchTheorem!2306 lt!2210428 s!2326))))

(declare-fun b!5420341 () Bool)

(declare-fun e!3359391 () Bool)

(declare-fun e!3359379 () Bool)

(assert (=> b!5420341 (= e!3359391 e!3359379)))

(declare-fun res!2306032 () Bool)

(assert (=> b!5420341 (=> res!2306032 e!3359379)))

(declare-fun lt!2210439 () Bool)

(declare-fun lt!2210426 () (InoxSet Context!9174))

(assert (=> b!5420341 (= res!2306032 (not (= lt!2210439 (matchZipper!1447 lt!2210426 (t!375131 s!2326)))))))

(assert (=> b!5420341 (= lt!2210439 (matchZipper!1447 lt!2210420 s!2326))))

(declare-fun b!5420342 () Bool)

(declare-fun res!2306056 () Bool)

(assert (=> b!5420342 (=> res!2306056 e!3359376)))

(declare-fun z!1189 () (InoxSet Context!9174))

(assert (=> b!5420342 (= res!2306056 (not (matchZipper!1447 z!1189 s!2326)))))

(declare-fun tp!1496722 () Bool)

(declare-fun setElem!35321 () Context!9174)

(declare-fun setRes!35321 () Bool)

(declare-fun setNonEmpty!35321 () Bool)

(declare-fun e!3359388 () Bool)

(declare-fun inv!81254 (Context!9174) Bool)

(assert (=> setNonEmpty!35321 (= setRes!35321 (and tp!1496722 (inv!81254 setElem!35321) e!3359388))))

(declare-fun setRest!35321 () (InoxSet Context!9174))

(assert (=> setNonEmpty!35321 (= z!1189 ((_ map or) (store ((as const (Array Context!9174 Bool)) false) setElem!35321 true) setRest!35321))))

(declare-fun res!2306058 () Bool)

(declare-fun e!3359375 () Bool)

(assert (=> start!569094 (=> (not res!2306058) (not e!3359375))))

(declare-fun validRegex!6939 (Regex!15203) Bool)

(assert (=> start!569094 (= res!2306058 (validRegex!6939 r!7292))))

(assert (=> start!569094 e!3359375))

(assert (=> start!569094 e!3359378))

(declare-fun condSetEmpty!35321 () Bool)

(assert (=> start!569094 (= condSetEmpty!35321 (= z!1189 ((as const (Array Context!9174 Bool)) false)))))

(assert (=> start!569094 setRes!35321))

(declare-fun e!3359382 () Bool)

(assert (=> start!569094 e!3359382))

(assert (=> start!569094 e!3359369))

(declare-fun b!5420331 () Bool)

(declare-fun e!3359380 () Bool)

(assert (=> b!5420331 (= e!3359380 e!3359390)))

(declare-fun res!2306037 () Bool)

(assert (=> b!5420331 (=> res!2306037 e!3359390)))

(declare-fun lt!2210400 () Context!9174)

(assert (=> b!5420331 (= res!2306037 (not (= (unfocusZipper!945 (Cons!61786 lt!2210400 Nil!61786)) lt!2210428)))))

(declare-fun lt!2210411 () Regex!15203)

(assert (=> b!5420331 (= lt!2210428 (Concat!24048 (reg!15532 (regOne!30918 r!7292)) lt!2210411))))

(declare-fun b!5420343 () Bool)

(declare-fun e!3359383 () Bool)

(declare-fun e!3359392 () Bool)

(assert (=> b!5420343 (= e!3359383 e!3359392)))

(declare-fun res!2306050 () Bool)

(assert (=> b!5420343 (=> res!2306050 e!3359392)))

(declare-fun lt!2210414 () (InoxSet Context!9174))

(assert (=> b!5420343 (= res!2306050 (not (= lt!2210444 lt!2210414)))))

(declare-fun derivationStepZipperDown!651 (Regex!15203 Context!9174 C!30676) (InoxSet Context!9174))

(assert (=> b!5420343 (= lt!2210414 (derivationStepZipperDown!651 (reg!15532 (regOne!30918 r!7292)) lt!2210435 (h!68232 s!2326)))))

(assert (=> b!5420343 (= lt!2210435 (Context!9175 lt!2210461))))

(assert (=> b!5420343 (= lt!2210461 (Cons!61785 lt!2210462 (t!375132 (exprs!5087 (h!68234 zl!343)))))))

(assert (=> b!5420343 (= lt!2210462 (Star!15203 (reg!15532 (regOne!30918 r!7292))))))

(declare-fun b!5420344 () Bool)

(assert (=> b!5420344 (= e!3359393 (matchZipper!1447 lt!2210443 (t!375131 s!2326)))))

(declare-fun e!3359372 () Bool)

(declare-fun e!3359370 () Bool)

(assert (=> b!5420345 (= e!3359372 e!3359370)))

(declare-fun res!2306034 () Bool)

(assert (=> b!5420345 (=> res!2306034 e!3359370)))

(declare-fun lt!2210407 () tuple2!64804)

(assert (=> b!5420345 (= res!2306034 (not (matchR!7388 (reg!15532 (regOne!30918 r!7292)) (_1!35705 lt!2210407))))))

(declare-fun ++!13580 (List!61908 List!61908) List!61908)

(assert (=> b!5420345 (= (++!13580 (++!13580 (_1!35705 lt!2210407) (_2!35705 lt!2210407)) (_2!35705 lt!2210447)) (++!13580 (_1!35705 lt!2210407) (++!13580 (_2!35705 lt!2210407) (_2!35705 lt!2210447))))))

(declare-fun lt!2210401 () Unit!154334)

(declare-fun lemmaConcatAssociativity!2838 (List!61908 List!61908 List!61908) Unit!154334)

(assert (=> b!5420345 (= lt!2210401 (lemmaConcatAssociativity!2838 (_1!35705 lt!2210407) (_2!35705 lt!2210407) (_2!35705 lt!2210447)))))

(declare-fun lt!2210427 () Option!15314)

(declare-fun get!21307 (Option!15314) tuple2!64804)

(assert (=> b!5420345 (= lt!2210407 (get!21307 lt!2210427))))

(assert (=> b!5420345 (= (Exists!2384 lambda!283789) (Exists!2384 lambda!283791))))

(declare-fun lt!2210425 () Unit!154334)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!414 (Regex!15203 List!61908) Unit!154334)

(assert (=> b!5420345 (= lt!2210425 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!414 (reg!15532 (regOne!30918 r!7292)) (_1!35705 lt!2210447)))))

(assert (=> b!5420345 (= (Exists!2384 lambda!283789) (Exists!2384 lambda!283790))))

(declare-fun lt!2210418 () Unit!154334)

(assert (=> b!5420345 (= lt!2210418 (lemmaExistCutMatchRandMatchRSpecEquivalent!1038 (reg!15532 (regOne!30918 r!7292)) lt!2210462 (_1!35705 lt!2210447)))))

(assert (=> b!5420345 (= (isDefined!12017 lt!2210427) (Exists!2384 lambda!283789))))

(assert (=> b!5420345 (= lt!2210427 (findConcatSeparation!1728 (reg!15532 (regOne!30918 r!7292)) lt!2210462 Nil!61784 (_1!35705 lt!2210447) (_1!35705 lt!2210447)))))

(declare-fun lt!2210399 () Unit!154334)

(assert (=> b!5420345 (= lt!2210399 (lemmaFindConcatSeparationEquivalentToExists!1492 (reg!15532 (regOne!30918 r!7292)) lt!2210462 (_1!35705 lt!2210447)))))

(assert (=> b!5420345 (matchRSpec!2306 lt!2210434 (_1!35705 lt!2210447))))

(declare-fun lt!2210409 () Unit!154334)

(assert (=> b!5420345 (= lt!2210409 (mainMatchTheorem!2306 lt!2210434 (_1!35705 lt!2210447)))))

(declare-fun b!5420346 () Bool)

(declare-fun res!2306051 () Bool)

(assert (=> b!5420346 (=> res!2306051 e!3359383)))

(assert (=> b!5420346 (= res!2306051 e!3359386)))

(declare-fun res!2306048 () Bool)

(assert (=> b!5420346 (=> (not res!2306048) (not e!3359386))))

(assert (=> b!5420346 (= res!2306048 ((_ is Concat!24048) (regOne!30918 r!7292)))))

(declare-fun b!5420347 () Bool)

(declare-fun tp!1496723 () Bool)

(assert (=> b!5420347 (= e!3359388 tp!1496723)))

(declare-fun b!5420348 () Bool)

(declare-fun res!2306045 () Bool)

(assert (=> b!5420348 (=> res!2306045 e!3359371)))

(assert (=> b!5420348 (= res!2306045 (or ((_ is EmptyExpr!15203) r!7292) ((_ is EmptyLang!15203) r!7292) ((_ is ElementMatch!15203) r!7292) ((_ is Union!15203) r!7292) (not ((_ is Concat!24048) r!7292))))))

(declare-fun setIsEmpty!35321 () Bool)

(assert (=> setIsEmpty!35321 setRes!35321))

(declare-fun b!5420349 () Bool)

(declare-fun res!2306036 () Bool)

(assert (=> b!5420349 (=> res!2306036 e!3359371)))

(assert (=> b!5420349 (= res!2306036 (not ((_ is Cons!61785) (exprs!5087 (h!68234 zl!343)))))))

(declare-fun tp!1496724 () Bool)

(declare-fun e!3359381 () Bool)

(declare-fun b!5420350 () Bool)

(assert (=> b!5420350 (= e!3359382 (and (inv!81254 (h!68234 zl!343)) e!3359381 tp!1496724))))

(declare-fun b!5420351 () Bool)

(declare-fun res!2306040 () Bool)

(assert (=> b!5420351 (=> res!2306040 e!3359371)))

(declare-fun generalisedConcat!872 (List!61909) Regex!15203)

(assert (=> b!5420351 (= res!2306040 (not (= r!7292 (generalisedConcat!872 (exprs!5087 (h!68234 zl!343))))))))

(declare-fun b!5420352 () Bool)

(declare-fun res!2306030 () Bool)

(assert (=> b!5420352 (=> res!2306030 e!3359384)))

(declare-fun isEmpty!33785 (List!61909) Bool)

(assert (=> b!5420352 (= res!2306030 (isEmpty!33785 (t!375132 (exprs!5087 (h!68234 zl!343)))))))

(declare-fun b!5420353 () Bool)

(assert (=> b!5420353 (= e!3359379 e!3359380)))

(declare-fun res!2306057 () Bool)

(assert (=> b!5420353 (=> res!2306057 e!3359380)))

(assert (=> b!5420353 (= res!2306057 (not (= r!7292 lt!2210411)))))

(assert (=> b!5420353 (= lt!2210411 (Concat!24048 lt!2210462 (regTwo!30918 r!7292)))))

(declare-fun b!5420354 () Bool)

(declare-fun res!2306039 () Bool)

(declare-fun e!3359377 () Bool)

(assert (=> b!5420354 (=> res!2306039 e!3359377)))

(declare-fun lt!2210442 () tuple2!64804)

(assert (=> b!5420354 (= res!2306039 (not (matchZipper!1447 lt!2210431 (_1!35705 lt!2210442))))))

(declare-fun b!5420355 () Bool)

(assert (=> b!5420355 (= e!3359376 e!3359373)))

(declare-fun res!2306053 () Bool)

(assert (=> b!5420355 (=> res!2306053 e!3359373)))

(assert (=> b!5420355 (= res!2306053 e!3359385)))

(declare-fun res!2306061 () Bool)

(assert (=> b!5420355 (=> (not res!2306061) (not e!3359385))))

(declare-fun lt!2210417 () Bool)

(assert (=> b!5420355 (= res!2306061 (not lt!2210417))))

(assert (=> b!5420355 (= lt!2210417 (matchZipper!1447 lt!2210444 (t!375131 s!2326)))))

(declare-fun b!5420356 () Bool)

(assert (=> b!5420356 (= e!3359392 e!3359391)))

(declare-fun res!2306035 () Bool)

(assert (=> b!5420356 (=> res!2306035 e!3359391)))

(assert (=> b!5420356 (= res!2306035 (not (= lt!2210426 lt!2210414)))))

(assert (=> b!5420356 (= (flatMap!930 lt!2210420 lambda!283784) (derivationStepZipperUp!575 lt!2210400 (h!68232 s!2326)))))

(declare-fun lt!2210402 () Unit!154334)

(assert (=> b!5420356 (= lt!2210402 (lemmaFlatMapOnSingletonSet!462 lt!2210420 lt!2210400 lambda!283784))))

(declare-fun lt!2210410 () (InoxSet Context!9174))

(assert (=> b!5420356 (= lt!2210410 (derivationStepZipperUp!575 lt!2210400 (h!68232 s!2326)))))

(declare-fun derivationStepZipper!1442 ((InoxSet Context!9174) C!30676) (InoxSet Context!9174))

(assert (=> b!5420356 (= lt!2210426 (derivationStepZipper!1442 lt!2210420 (h!68232 s!2326)))))

(assert (=> b!5420356 (= lt!2210420 (store ((as const (Array Context!9174 Bool)) false) lt!2210400 true))))

(assert (=> b!5420356 (= lt!2210400 (Context!9175 (Cons!61785 (reg!15532 (regOne!30918 r!7292)) lt!2210461)))))

(declare-fun b!5420357 () Bool)

(declare-fun e!3359387 () Bool)

(assert (=> b!5420357 (= e!3359387 (not e!3359371))))

(declare-fun res!2306025 () Bool)

(assert (=> b!5420357 (=> res!2306025 e!3359371)))

(assert (=> b!5420357 (= res!2306025 (not ((_ is Cons!61786) zl!343)))))

(assert (=> b!5420357 (= lt!2210457 (matchRSpec!2306 r!7292 s!2326))))

(assert (=> b!5420357 (= lt!2210457 (matchR!7388 r!7292 s!2326))))

(declare-fun lt!2210449 () Unit!154334)

(assert (=> b!5420357 (= lt!2210449 (mainMatchTheorem!2306 r!7292 s!2326))))

(assert (=> b!5420358 (= e!3359377 e!3359372)))

(declare-fun res!2306059 () Bool)

(assert (=> b!5420358 (=> res!2306059 e!3359372)))

(assert (=> b!5420358 (= res!2306059 (not (matchR!7388 lt!2210434 (_1!35705 lt!2210447))))))

(declare-fun lt!2210415 () Option!15314)

(assert (=> b!5420358 (= lt!2210447 (get!21307 lt!2210415))))

(assert (=> b!5420358 (= (Exists!2384 lambda!283787) (Exists!2384 lambda!283788))))

(declare-fun lt!2210446 () Unit!154334)

(assert (=> b!5420358 (= lt!2210446 (lemmaExistCutMatchRandMatchRSpecEquivalent!1038 lt!2210434 (regTwo!30918 r!7292) s!2326))))

(assert (=> b!5420358 (= (isDefined!12017 lt!2210415) (Exists!2384 lambda!283787))))

(assert (=> b!5420358 (= lt!2210415 (findConcatSeparation!1728 lt!2210434 (regTwo!30918 r!7292) Nil!61784 s!2326 s!2326))))

(declare-fun lt!2210404 () Unit!154334)

(assert (=> b!5420358 (= lt!2210404 (lemmaFindConcatSeparationEquivalentToExists!1492 lt!2210434 (regTwo!30918 r!7292) s!2326))))

(declare-fun lt!2210459 () Regex!15203)

(assert (=> b!5420358 (matchRSpec!2306 lt!2210459 s!2326)))

(declare-fun lt!2210450 () Unit!154334)

(assert (=> b!5420358 (= lt!2210450 (mainMatchTheorem!2306 lt!2210459 s!2326))))

(assert (=> b!5420358 (matchR!7388 lt!2210459 s!2326)))

(assert (=> b!5420358 (= lt!2210459 (Concat!24048 lt!2210434 (regTwo!30918 r!7292)))))

(assert (=> b!5420358 (= lt!2210434 (Concat!24048 (reg!15532 (regOne!30918 r!7292)) lt!2210462))))

(declare-fun lt!2210398 () Unit!154334)

(declare-fun lemmaConcatAssociative!56 (Regex!15203 Regex!15203 Regex!15203 List!61908) Unit!154334)

(assert (=> b!5420358 (= lt!2210398 (lemmaConcatAssociative!56 (reg!15532 (regOne!30918 r!7292)) lt!2210462 (regTwo!30918 r!7292) s!2326))))

(assert (=> b!5420358 e!3359389))

(declare-fun res!2306024 () Bool)

(assert (=> b!5420358 (=> (not res!2306024) (not e!3359389))))

(declare-fun lt!2210433 () List!61908)

(assert (=> b!5420358 (= res!2306024 (matchR!7388 lt!2210428 lt!2210433))))

(declare-fun lt!2210441 () Unit!154334)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!226 (Regex!15203 Regex!15203 List!61908 List!61908) Unit!154334)

(assert (=> b!5420358 (= lt!2210441 (lemmaTwoRegexMatchThenConcatMatchesConcatString!226 (reg!15532 (regOne!30918 r!7292)) lt!2210411 (_1!35705 lt!2210442) (_2!35705 lt!2210442)))))

(assert (=> b!5420358 (matchR!7388 lt!2210411 (_2!35705 lt!2210442))))

(declare-fun lt!2210419 () List!61910)

(declare-fun lt!2210451 () Unit!154334)

(declare-fun theoremZipperRegexEquiv!517 ((InoxSet Context!9174) List!61910 Regex!15203 List!61908) Unit!154334)

(assert (=> b!5420358 (= lt!2210451 (theoremZipperRegexEquiv!517 lt!2210440 lt!2210419 lt!2210411 (_2!35705 lt!2210442)))))

(assert (=> b!5420358 (matchR!7388 (reg!15532 (regOne!30918 r!7292)) (_1!35705 lt!2210442))))

(declare-fun lt!2210413 () Unit!154334)

(assert (=> b!5420358 (= lt!2210413 (theoremZipperRegexEquiv!517 lt!2210431 lt!2210408 (reg!15532 (regOne!30918 r!7292)) (_1!35705 lt!2210442)))))

(assert (=> b!5420358 (matchZipper!1447 (store ((as const (Array Context!9174 Bool)) false) (Context!9175 (++!13579 lt!2210460 lt!2210461)) true) lt!2210433)))

(declare-fun lt!2210437 () Unit!154334)

(assert (=> b!5420358 (= lt!2210437 (lemmaConcatPreservesForall!228 lt!2210460 lt!2210461 lambda!283786))))

(declare-fun lt!2210422 () Unit!154334)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!76 (Context!9174 Context!9174 List!61908 List!61908) Unit!154334)

(assert (=> b!5420358 (= lt!2210422 (lemmaConcatenateContextMatchesConcatOfStrings!76 lt!2210445 lt!2210435 (_1!35705 lt!2210442) (_2!35705 lt!2210442)))))

(declare-fun b!5420359 () Bool)

(assert (=> b!5420359 (= e!3359375 e!3359387)))

(declare-fun res!2306042 () Bool)

(assert (=> b!5420359 (=> (not res!2306042) (not e!3359387))))

(declare-fun lt!2210456 () Regex!15203)

(assert (=> b!5420359 (= res!2306042 (= r!7292 lt!2210456))))

(assert (=> b!5420359 (= lt!2210456 (unfocusZipper!945 zl!343))))

(declare-fun b!5420360 () Bool)

(declare-fun tp!1496720 () Bool)

(assert (=> b!5420360 (= e!3359381 tp!1496720)))

(declare-fun b!5420361 () Bool)

(declare-fun res!2306028 () Bool)

(assert (=> b!5420361 (=> res!2306028 e!3359376)))

(declare-fun lt!2210412 () Bool)

(assert (=> b!5420361 (= res!2306028 (not lt!2210412))))

(declare-fun b!5420362 () Bool)

(assert (=> b!5420362 (= e!3359367 e!3359394)))

(declare-fun res!2306047 () Bool)

(assert (=> b!5420362 (=> res!2306047 e!3359394)))

(assert (=> b!5420362 (= res!2306047 (not (= (unfocusZipper!945 lt!2210419) lt!2210411)))))

(assert (=> b!5420362 (= lt!2210419 (Cons!61786 lt!2210435 Nil!61786))))

(declare-fun b!5420363 () Bool)

(declare-fun tp!1496726 () Bool)

(declare-fun tp!1496729 () Bool)

(assert (=> b!5420363 (= e!3359378 (and tp!1496726 tp!1496729))))

(declare-fun b!5420364 () Bool)

(declare-fun tp!1496721 () Bool)

(assert (=> b!5420364 (= e!3359378 tp!1496721)))

(assert (=> b!5420365 (= e!3359384 e!3359383)))

(declare-fun res!2306043 () Bool)

(assert (=> b!5420365 (=> res!2306043 e!3359383)))

(assert (=> b!5420365 (= res!2306043 (or (and ((_ is ElementMatch!15203) (regOne!30918 r!7292)) (= (c!945315 (regOne!30918 r!7292)) (h!68232 s!2326))) ((_ is Union!15203) (regOne!30918 r!7292))))))

(declare-fun lt!2210403 () Unit!154334)

(assert (=> b!5420365 (= lt!2210403 e!3359374)))

(declare-fun c!945314 () Bool)

(assert (=> b!5420365 (= c!945314 lt!2210412)))

(assert (=> b!5420365 (= lt!2210412 (nullable!5372 (h!68233 (exprs!5087 (h!68234 zl!343)))))))

(assert (=> b!5420365 (= (flatMap!930 z!1189 lambda!283784) (derivationStepZipperUp!575 (h!68234 zl!343) (h!68232 s!2326)))))

(declare-fun lt!2210405 () Unit!154334)

(assert (=> b!5420365 (= lt!2210405 (lemmaFlatMapOnSingletonSet!462 z!1189 (h!68234 zl!343) lambda!283784))))

(declare-fun lt!2210458 () Context!9174)

(assert (=> b!5420365 (= lt!2210443 (derivationStepZipperUp!575 lt!2210458 (h!68232 s!2326)))))

(assert (=> b!5420365 (= lt!2210444 (derivationStepZipperDown!651 (h!68233 (exprs!5087 (h!68234 zl!343))) lt!2210458 (h!68232 s!2326)))))

(assert (=> b!5420365 (= lt!2210458 (Context!9175 (t!375132 (exprs!5087 (h!68234 zl!343)))))))

(declare-fun lt!2210436 () (InoxSet Context!9174))

(assert (=> b!5420365 (= lt!2210436 (derivationStepZipperUp!575 (Context!9175 (Cons!61785 (h!68233 (exprs!5087 (h!68234 zl!343))) (t!375132 (exprs!5087 (h!68234 zl!343))))) (h!68232 s!2326)))))

(declare-fun b!5420366 () Bool)

(declare-fun res!2306031 () Bool)

(assert (=> b!5420366 (=> res!2306031 e!3359373)))

(assert (=> b!5420366 (= res!2306031 (or (not lt!2210417) (not lt!2210439)))))

(declare-fun b!5420367 () Bool)

(declare-fun res!2306029 () Bool)

(assert (=> b!5420367 (=> res!2306029 e!3359377)))

(assert (=> b!5420367 (= res!2306029 (not (matchZipper!1447 lt!2210440 (_2!35705 lt!2210442))))))

(declare-fun b!5420368 () Bool)

(assert (=> b!5420368 (= e!3359378 tp_is_empty!39659)))

(declare-fun b!5420369 () Bool)

(assert (=> b!5420369 (= e!3359370 true)))

(declare-fun b!5420370 () Bool)

(declare-fun res!2306041 () Bool)

(assert (=> b!5420370 (=> (not res!2306041) (not e!3359375))))

(declare-fun toList!8987 ((InoxSet Context!9174)) List!61910)

(assert (=> b!5420370 (= res!2306041 (= (toList!8987 z!1189) zl!343))))

(declare-fun b!5420371 () Bool)

(declare-fun Unit!154337 () Unit!154334)

(assert (=> b!5420371 (= e!3359374 Unit!154337)))

(declare-fun b!5420372 () Bool)

(declare-fun res!2306044 () Bool)

(assert (=> b!5420372 (=> res!2306044 e!3359383)))

(assert (=> b!5420372 (= res!2306044 (or ((_ is Concat!24048) (regOne!30918 r!7292)) (not ((_ is Star!15203) (regOne!30918 r!7292)))))))

(declare-fun b!5420373 () Bool)

(declare-fun res!2306027 () Bool)

(assert (=> b!5420373 (=> res!2306027 e!3359370)))

(assert (=> b!5420373 (= res!2306027 (not (matchR!7388 lt!2210462 (_2!35705 lt!2210407))))))

(declare-fun b!5420374 () Bool)

(assert (=> b!5420374 (= e!3359368 e!3359377)))

(declare-fun res!2306060 () Bool)

(assert (=> b!5420374 (=> res!2306060 e!3359377)))

(assert (=> b!5420374 (= res!2306060 (not (= s!2326 lt!2210433)))))

(assert (=> b!5420374 (= lt!2210433 (++!13580 (_1!35705 lt!2210442) (_2!35705 lt!2210442)))))

(declare-fun lt!2210432 () Option!15314)

(assert (=> b!5420374 (= lt!2210442 (get!21307 lt!2210432))))

(assert (=> b!5420374 (isDefined!12017 lt!2210432)))

(declare-fun findConcatSeparationZippers!60 ((InoxSet Context!9174) (InoxSet Context!9174) List!61908 List!61908 List!61908) Option!15314)

(assert (=> b!5420374 (= lt!2210432 (findConcatSeparationZippers!60 lt!2210431 lt!2210440 Nil!61784 s!2326 s!2326))))

(declare-fun lt!2210452 () Unit!154334)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!60 ((InoxSet Context!9174) Context!9174 List!61908) Unit!154334)

(assert (=> b!5420374 (= lt!2210452 (lemmaConcatZipperMatchesStringThenFindConcatDefined!60 lt!2210431 lt!2210435 s!2326))))

(declare-fun b!5420375 () Bool)

(declare-fun res!2306055 () Bool)

(assert (=> b!5420375 (=> res!2306055 e!3359379)))

(assert (=> b!5420375 (= res!2306055 (not (= lt!2210456 r!7292)))))

(assert (= (and start!569094 res!2306058) b!5420370))

(assert (= (and b!5420370 res!2306041) b!5420359))

(assert (= (and b!5420359 res!2306042) b!5420357))

(assert (= (and b!5420357 (not res!2306025)) b!5420333))

(assert (= (and b!5420333 (not res!2306033)) b!5420351))

(assert (= (and b!5420351 (not res!2306040)) b!5420349))

(assert (= (and b!5420349 (not res!2306036)) b!5420329))

(assert (= (and b!5420329 (not res!2306054)) b!5420348))

(assert (= (and b!5420348 (not res!2306045)) b!5420337))

(assert (= (and b!5420337 (not res!2306049)) b!5420352))

(assert (= (and b!5420352 (not res!2306030)) b!5420365))

(assert (= (and b!5420365 c!945314) b!5420334))

(assert (= (and b!5420365 (not c!945314)) b!5420371))

(assert (= (and b!5420334 (not res!2306026)) b!5420344))

(assert (= (and b!5420365 (not res!2306043)) b!5420346))

(assert (= (and b!5420346 res!2306048) b!5420328))

(assert (= (and b!5420346 (not res!2306051)) b!5420372))

(assert (= (and b!5420372 (not res!2306044)) b!5420343))

(assert (= (and b!5420343 (not res!2306050)) b!5420356))

(assert (= (and b!5420356 (not res!2306035)) b!5420341))

(assert (= (and b!5420341 (not res!2306032)) b!5420375))

(assert (= (and b!5420375 (not res!2306055)) b!5420353))

(assert (= (and b!5420353 (not res!2306057)) b!5420331))

(assert (= (and b!5420331 (not res!2306037)) b!5420338))

(assert (= (and b!5420338 (not res!2306038)) b!5420362))

(assert (= (and b!5420362 (not res!2306047)) b!5420340))

(assert (= (and b!5420340 (not res!2306052)) b!5420342))

(assert (= (and b!5420342 (not res!2306056)) b!5420361))

(assert (= (and b!5420361 (not res!2306028)) b!5420355))

(assert (= (and b!5420355 res!2306061) b!5420332))

(assert (= (and b!5420355 (not res!2306053)) b!5420366))

(assert (= (and b!5420366 (not res!2306031)) b!5420336))

(assert (= (and b!5420336 (not res!2306046)) b!5420374))

(assert (= (and b!5420374 (not res!2306060)) b!5420354))

(assert (= (and b!5420354 (not res!2306039)) b!5420367))

(assert (= (and b!5420367 (not res!2306029)) b!5420358))

(assert (= (and b!5420358 res!2306024) b!5420335))

(assert (= (and b!5420358 (not res!2306059)) b!5420345))

(assert (= (and b!5420345 (not res!2306034)) b!5420373))

(assert (= (and b!5420373 (not res!2306027)) b!5420369))

(assert (= (and start!569094 ((_ is ElementMatch!15203) r!7292)) b!5420368))

(assert (= (and start!569094 ((_ is Concat!24048) r!7292)) b!5420363))

(assert (= (and start!569094 ((_ is Star!15203) r!7292)) b!5420364))

(assert (= (and start!569094 ((_ is Union!15203) r!7292)) b!5420330))

(assert (= (and start!569094 condSetEmpty!35321) setIsEmpty!35321))

(assert (= (and start!569094 (not condSetEmpty!35321)) setNonEmpty!35321))

(assert (= setNonEmpty!35321 b!5420347))

(assert (= b!5420350 b!5420360))

(assert (= (and start!569094 ((_ is Cons!61786) zl!343)) b!5420350))

(assert (= (and start!569094 ((_ is Cons!61784) s!2326)) b!5420339))

(declare-fun m!6444278 () Bool)

(assert (=> b!5420351 m!6444278))

(declare-fun m!6444280 () Bool)

(assert (=> b!5420359 m!6444280))

(declare-fun m!6444282 () Bool)

(assert (=> b!5420332 m!6444282))

(declare-fun m!6444284 () Bool)

(assert (=> b!5420370 m!6444284))

(declare-fun m!6444286 () Bool)

(assert (=> b!5420354 m!6444286))

(declare-fun m!6444288 () Bool)

(assert (=> b!5420350 m!6444288))

(declare-fun m!6444290 () Bool)

(assert (=> b!5420373 m!6444290))

(declare-fun m!6444292 () Bool)

(assert (=> b!5420352 m!6444292))

(declare-fun m!6444294 () Bool)

(assert (=> setNonEmpty!35321 m!6444294))

(declare-fun m!6444296 () Bool)

(assert (=> b!5420343 m!6444296))

(declare-fun m!6444298 () Bool)

(assert (=> b!5420362 m!6444298))

(declare-fun m!6444300 () Bool)

(assert (=> b!5420341 m!6444300))

(declare-fun m!6444302 () Bool)

(assert (=> b!5420341 m!6444302))

(declare-fun m!6444304 () Bool)

(assert (=> b!5420328 m!6444304))

(declare-fun m!6444306 () Bool)

(assert (=> b!5420356 m!6444306))

(declare-fun m!6444308 () Bool)

(assert (=> b!5420356 m!6444308))

(declare-fun m!6444310 () Bool)

(assert (=> b!5420356 m!6444310))

(declare-fun m!6444312 () Bool)

(assert (=> b!5420356 m!6444312))

(declare-fun m!6444314 () Bool)

(assert (=> b!5420356 m!6444314))

(declare-fun m!6444316 () Bool)

(assert (=> b!5420355 m!6444316))

(declare-fun m!6444318 () Bool)

(assert (=> b!5420374 m!6444318))

(declare-fun m!6444320 () Bool)

(assert (=> b!5420374 m!6444320))

(declare-fun m!6444322 () Bool)

(assert (=> b!5420374 m!6444322))

(declare-fun m!6444324 () Bool)

(assert (=> b!5420374 m!6444324))

(declare-fun m!6444326 () Bool)

(assert (=> b!5420374 m!6444326))

(assert (=> b!5420344 m!6444282))

(declare-fun m!6444328 () Bool)

(assert (=> b!5420329 m!6444328))

(assert (=> b!5420329 m!6444328))

(declare-fun m!6444330 () Bool)

(assert (=> b!5420329 m!6444330))

(declare-fun m!6444332 () Bool)

(assert (=> b!5420333 m!6444332))

(declare-fun m!6444334 () Bool)

(assert (=> b!5420337 m!6444334))

(declare-fun m!6444336 () Bool)

(assert (=> b!5420337 m!6444336))

(declare-fun m!6444338 () Bool)

(assert (=> b!5420337 m!6444338))

(declare-fun m!6444340 () Bool)

(assert (=> b!5420337 m!6444340))

(assert (=> b!5420337 m!6444336))

(declare-fun m!6444342 () Bool)

(assert (=> b!5420337 m!6444342))

(declare-fun m!6444344 () Bool)

(assert (=> b!5420337 m!6444344))

(assert (=> b!5420337 m!6444340))

(declare-fun m!6444346 () Bool)

(assert (=> b!5420365 m!6444346))

(declare-fun m!6444348 () Bool)

(assert (=> b!5420365 m!6444348))

(declare-fun m!6444350 () Bool)

(assert (=> b!5420365 m!6444350))

(declare-fun m!6444352 () Bool)

(assert (=> b!5420365 m!6444352))

(declare-fun m!6444354 () Bool)

(assert (=> b!5420365 m!6444354))

(declare-fun m!6444356 () Bool)

(assert (=> b!5420365 m!6444356))

(declare-fun m!6444358 () Bool)

(assert (=> b!5420365 m!6444358))

(declare-fun m!6444360 () Bool)

(assert (=> b!5420340 m!6444360))

(declare-fun m!6444362 () Bool)

(assert (=> b!5420340 m!6444362))

(declare-fun m!6444364 () Bool)

(assert (=> b!5420340 m!6444364))

(declare-fun m!6444366 () Bool)

(assert (=> b!5420331 m!6444366))

(declare-fun m!6444368 () Bool)

(assert (=> b!5420336 m!6444368))

(declare-fun m!6444370 () Bool)

(assert (=> b!5420336 m!6444370))

(declare-fun m!6444372 () Bool)

(assert (=> b!5420336 m!6444372))

(declare-fun m!6444374 () Bool)

(assert (=> b!5420336 m!6444374))

(declare-fun m!6444376 () Bool)

(assert (=> b!5420336 m!6444376))

(declare-fun m!6444378 () Bool)

(assert (=> b!5420336 m!6444378))

(declare-fun m!6444380 () Bool)

(assert (=> b!5420342 m!6444380))

(declare-fun m!6444382 () Bool)

(assert (=> start!569094 m!6444382))

(declare-fun m!6444384 () Bool)

(assert (=> b!5420367 m!6444384))

(declare-fun m!6444386 () Bool)

(assert (=> b!5420358 m!6444386))

(declare-fun m!6444388 () Bool)

(assert (=> b!5420358 m!6444388))

(declare-fun m!6444390 () Bool)

(assert (=> b!5420358 m!6444390))

(assert (=> b!5420358 m!6444368))

(declare-fun m!6444392 () Bool)

(assert (=> b!5420358 m!6444392))

(declare-fun m!6444394 () Bool)

(assert (=> b!5420358 m!6444394))

(declare-fun m!6444396 () Bool)

(assert (=> b!5420358 m!6444396))

(assert (=> b!5420358 m!6444392))

(declare-fun m!6444398 () Bool)

(assert (=> b!5420358 m!6444398))

(declare-fun m!6444400 () Bool)

(assert (=> b!5420358 m!6444400))

(declare-fun m!6444402 () Bool)

(assert (=> b!5420358 m!6444402))

(declare-fun m!6444404 () Bool)

(assert (=> b!5420358 m!6444404))

(declare-fun m!6444406 () Bool)

(assert (=> b!5420358 m!6444406))

(declare-fun m!6444408 () Bool)

(assert (=> b!5420358 m!6444408))

(declare-fun m!6444410 () Bool)

(assert (=> b!5420358 m!6444410))

(declare-fun m!6444412 () Bool)

(assert (=> b!5420358 m!6444412))

(declare-fun m!6444414 () Bool)

(assert (=> b!5420358 m!6444414))

(assert (=> b!5420358 m!6444372))

(assert (=> b!5420358 m!6444372))

(declare-fun m!6444416 () Bool)

(assert (=> b!5420358 m!6444416))

(assert (=> b!5420358 m!6444376))

(declare-fun m!6444418 () Bool)

(assert (=> b!5420358 m!6444418))

(declare-fun m!6444420 () Bool)

(assert (=> b!5420358 m!6444420))

(declare-fun m!6444422 () Bool)

(assert (=> b!5420358 m!6444422))

(declare-fun m!6444424 () Bool)

(assert (=> b!5420358 m!6444424))

(declare-fun m!6444426 () Bool)

(assert (=> b!5420357 m!6444426))

(declare-fun m!6444428 () Bool)

(assert (=> b!5420357 m!6444428))

(declare-fun m!6444430 () Bool)

(assert (=> b!5420357 m!6444430))

(declare-fun m!6444432 () Bool)

(assert (=> b!5420334 m!6444432))

(assert (=> b!5420334 m!6444316))

(declare-fun m!6444434 () Bool)

(assert (=> b!5420334 m!6444434))

(declare-fun m!6444436 () Bool)

(assert (=> b!5420338 m!6444436))

(declare-fun m!6444438 () Bool)

(assert (=> b!5420338 m!6444438))

(declare-fun m!6444440 () Bool)

(assert (=> b!5420338 m!6444440))

(declare-fun m!6444442 () Bool)

(assert (=> b!5420338 m!6444442))

(declare-fun m!6444444 () Bool)

(assert (=> b!5420338 m!6444444))

(declare-fun m!6444446 () Bool)

(assert (=> b!5420338 m!6444446))

(declare-fun m!6444448 () Bool)

(assert (=> b!5420338 m!6444448))

(declare-fun m!6444450 () Bool)

(assert (=> b!5420338 m!6444450))

(declare-fun m!6444452 () Bool)

(assert (=> b!5420338 m!6444452))

(declare-fun m!6444454 () Bool)

(assert (=> b!5420345 m!6444454))

(declare-fun m!6444456 () Bool)

(assert (=> b!5420345 m!6444456))

(declare-fun m!6444458 () Bool)

(assert (=> b!5420345 m!6444458))

(declare-fun m!6444460 () Bool)

(assert (=> b!5420345 m!6444460))

(declare-fun m!6444462 () Bool)

(assert (=> b!5420345 m!6444462))

(declare-fun m!6444464 () Bool)

(assert (=> b!5420345 m!6444464))

(declare-fun m!6444466 () Bool)

(assert (=> b!5420345 m!6444466))

(declare-fun m!6444468 () Bool)

(assert (=> b!5420345 m!6444468))

(declare-fun m!6444470 () Bool)

(assert (=> b!5420345 m!6444470))

(declare-fun m!6444472 () Bool)

(assert (=> b!5420345 m!6444472))

(declare-fun m!6444474 () Bool)

(assert (=> b!5420345 m!6444474))

(declare-fun m!6444476 () Bool)

(assert (=> b!5420345 m!6444476))

(declare-fun m!6444478 () Bool)

(assert (=> b!5420345 m!6444478))

(assert (=> b!5420345 m!6444474))

(declare-fun m!6444480 () Bool)

(assert (=> b!5420345 m!6444480))

(declare-fun m!6444482 () Bool)

(assert (=> b!5420345 m!6444482))

(declare-fun m!6444484 () Bool)

(assert (=> b!5420345 m!6444484))

(declare-fun m!6444486 () Bool)

(assert (=> b!5420345 m!6444486))

(assert (=> b!5420345 m!6444474))

(assert (=> b!5420345 m!6444464))

(assert (=> b!5420345 m!6444476))

(check-sat (not b!5420359) (not b!5420337) (not b!5420364) (not b!5420365) (not b!5420340) (not b!5420350) (not b!5420362) (not b!5420329) (not b!5420357) (not b!5420336) (not b!5420338) (not b!5420332) (not b!5420330) (not b!5420352) (not b!5420370) (not b!5420358) (not start!569094) (not b!5420356) (not b!5420342) (not b!5420347) (not b!5420334) (not b!5420343) (not b!5420360) (not b!5420345) (not b!5420328) (not b!5420367) (not b!5420344) (not b!5420373) (not b!5420354) (not b!5420333) (not b!5420363) (not b!5420341) (not b!5420355) (not b!5420374) (not setNonEmpty!35321) (not b!5420351) (not b!5420331) tp_is_empty!39659 (not b!5420339))
(check-sat)
