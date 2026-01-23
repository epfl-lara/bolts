; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!703226 () Bool)

(assert start!703226)

(declare-fun b!7239477 () Bool)

(assert (=> b!7239477 true))

(declare-fun b!7239479 () Bool)

(assert (=> b!7239479 true))

(declare-fun e!4340335 () Bool)

(declare-fun e!4340333 () Bool)

(assert (=> b!7239477 (= e!4340335 (not e!4340333))))

(declare-fun res!2936870 () Bool)

(assert (=> b!7239477 (=> res!2936870 e!4340333)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37364 0))(
  ( (C!37365 (val!28630 Int)) )
))
(declare-datatypes ((Regex!18545 0))(
  ( (ElementMatch!18545 (c!1344131 C!37364)) (Concat!27390 (regOne!37602 Regex!18545) (regTwo!37602 Regex!18545)) (EmptyExpr!18545) (Star!18545 (reg!18874 Regex!18545)) (EmptyLang!18545) (Union!18545 (regOne!37603 Regex!18545) (regTwo!37603 Regex!18545)) )
))
(declare-datatypes ((List!70243 0))(
  ( (Nil!70119) (Cons!70119 (h!76567 Regex!18545) (t!384294 List!70243)) )
))
(declare-datatypes ((Context!14970 0))(
  ( (Context!14971 (exprs!7985 List!70243)) )
))
(declare-fun lt!2578428 () (InoxSet Context!14970))

(declare-fun lambda!441357 () Int)

(declare-fun exists!4233 ((InoxSet Context!14970) Int) Bool)

(assert (=> b!7239477 (= res!2936870 (not (exists!4233 lt!2578428 lambda!441357)))))

(declare-datatypes ((List!70244 0))(
  ( (Nil!70120) (Cons!70120 (h!76568 Context!14970) (t!384295 List!70244)) )
))
(declare-fun lt!2578442 () List!70244)

(declare-fun exists!4234 (List!70244 Int) Bool)

(assert (=> b!7239477 (exists!4234 lt!2578442 lambda!441357)))

(declare-datatypes ((Unit!163654 0))(
  ( (Unit!163655) )
))
(declare-fun lt!2578452 () Unit!163654)

(declare-datatypes ((List!70245 0))(
  ( (Nil!70121) (Cons!70121 (h!76569 C!37364) (t!384296 List!70245)) )
))
(declare-fun s1!1971 () List!70245)

(declare-fun lemmaZipperMatchesExistsMatchingContext!688 (List!70244 List!70245) Unit!163654)

(assert (=> b!7239477 (= lt!2578452 (lemmaZipperMatchesExistsMatchingContext!688 lt!2578442 (t!384296 s1!1971)))))

(declare-fun toList!11402 ((InoxSet Context!14970)) List!70244)

(assert (=> b!7239477 (= lt!2578442 (toList!11402 lt!2578428))))

(declare-fun b!7239478 () Bool)

(declare-fun e!4340328 () Bool)

(declare-fun tp!2035053 () Bool)

(assert (=> b!7239478 (= e!4340328 tp!2035053)))

(declare-fun e!4340331 () Bool)

(assert (=> b!7239479 (= e!4340331 true)))

(declare-fun lt!2578459 () Context!14970)

(declare-fun lambda!441356 () Int)

(declare-fun lt!2578453 () Unit!163654)

(declare-fun ct2!328 () Context!14970)

(declare-fun lemmaConcatPreservesForall!1354 (List!70243 List!70243 Int) Unit!163654)

(assert (=> b!7239479 (= lt!2578453 (lemmaConcatPreservesForall!1354 (exprs!7985 lt!2578459) (exprs!7985 ct2!328) lambda!441356))))

(declare-fun lt!2578443 () Context!14970)

(declare-fun lt!2578436 () (InoxSet Context!14970))

(declare-fun derivationStepZipper!3337 ((InoxSet Context!14970) C!37364) (InoxSet Context!14970))

(assert (=> b!7239479 (select (derivationStepZipper!3337 lt!2578436 (h!76569 s1!1971)) lt!2578443)))

(declare-fun lt!2578449 () Unit!163654)

(assert (=> b!7239479 (= lt!2578449 (lemmaConcatPreservesForall!1354 (exprs!7985 lt!2578459) (exprs!7985 ct2!328) lambda!441356))))

(declare-fun lt!2578425 () (InoxSet Context!14970))

(assert (=> b!7239479 (select lt!2578425 lt!2578443)))

(declare-fun ct1!232 () Context!14970)

(declare-fun lt!2578440 () Unit!163654)

(assert (=> b!7239479 (= lt!2578440 (lemmaConcatPreservesForall!1354 (exprs!7985 ct1!232) (exprs!7985 ct2!328) lambda!441356))))

(declare-fun lt!2578424 () Unit!163654)

(assert (=> b!7239479 (= lt!2578424 (lemmaConcatPreservesForall!1354 (exprs!7985 lt!2578459) (exprs!7985 ct2!328) lambda!441356))))

(declare-fun lt!2578434 () Unit!163654)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!10 (Context!14970 Context!14970 Context!14970 C!37364) Unit!163654)

(assert (=> b!7239479 (= lt!2578434 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!10 ct1!232 ct2!328 lt!2578459 (h!76569 s1!1971)))))

(declare-fun s2!1849 () List!70245)

(declare-fun lt!2578432 () List!70245)

(declare-fun tail!14200 (List!70245) List!70245)

(declare-fun ++!16390 (List!70245 List!70245) List!70245)

(assert (=> b!7239479 (= (tail!14200 (++!16390 s1!1971 s2!1849)) lt!2578432)))

(declare-fun lt!2578431 () Unit!163654)

(declare-fun e!4340330 () Unit!163654)

(assert (=> b!7239479 (= lt!2578431 e!4340330)))

(declare-fun c!1344130 () Bool)

(declare-fun nullable!7858 (Regex!18545) Bool)

(assert (=> b!7239479 (= c!1344130 (nullable!7858 (h!76567 (exprs!7985 ct1!232))))))

(declare-fun lambda!441358 () Int)

(declare-fun lt!2578441 () Context!14970)

(declare-fun flatMap!2749 ((InoxSet Context!14970) Int) (InoxSet Context!14970))

(declare-fun derivationStepZipperUp!2419 (Context!14970 C!37364) (InoxSet Context!14970))

(assert (=> b!7239479 (= (flatMap!2749 lt!2578436 lambda!441358) (derivationStepZipperUp!2419 lt!2578441 (h!76569 s1!1971)))))

(declare-fun lt!2578435 () Unit!163654)

(declare-fun lemmaFlatMapOnSingletonSet!2176 ((InoxSet Context!14970) Context!14970 Int) Unit!163654)

(assert (=> b!7239479 (= lt!2578435 (lemmaFlatMapOnSingletonSet!2176 lt!2578436 lt!2578441 lambda!441358))))

(declare-fun lt!2578430 () Unit!163654)

(assert (=> b!7239479 (= lt!2578430 (lemmaConcatPreservesForall!1354 (exprs!7985 ct1!232) (exprs!7985 ct2!328) lambda!441356))))

(declare-fun lt!2578429 () (InoxSet Context!14970))

(assert (=> b!7239479 (= (flatMap!2749 lt!2578429 lambda!441358) (derivationStepZipperUp!2419 ct1!232 (h!76569 s1!1971)))))

(declare-fun lt!2578433 () Unit!163654)

(assert (=> b!7239479 (= lt!2578433 (lemmaFlatMapOnSingletonSet!2176 lt!2578429 ct1!232 lambda!441358))))

(declare-fun lt!2578454 () (InoxSet Context!14970))

(declare-fun lt!2578427 () Context!14970)

(declare-fun derivationStepZipperDown!2589 (Regex!18545 Context!14970 C!37364) (InoxSet Context!14970))

(assert (=> b!7239479 (= lt!2578454 (derivationStepZipperDown!2589 (h!76567 (exprs!7985 ct1!232)) lt!2578427 (h!76569 s1!1971)))))

(declare-fun lt!2578455 () List!70243)

(declare-fun tail!14201 (List!70243) List!70243)

(assert (=> b!7239479 (= lt!2578427 (Context!14971 (tail!14201 lt!2578455)))))

(declare-fun b!7239480 () Bool)

(declare-fun e!4340329 () Bool)

(declare-fun e!4340338 () Bool)

(assert (=> b!7239480 (= e!4340329 e!4340338)))

(declare-fun res!2936873 () Bool)

(assert (=> b!7239480 (=> (not res!2936873) (not e!4340338))))

(get-info :version)

(assert (=> b!7239480 (= res!2936873 (and (not ((_ is Nil!70119) (exprs!7985 ct1!232))) ((_ is Cons!70121) s1!1971)))))

(assert (=> b!7239480 (= lt!2578436 (store ((as const (Array Context!14970 Bool)) false) lt!2578441 true))))

(assert (=> b!7239480 (= lt!2578441 (Context!14971 lt!2578455))))

(declare-fun ++!16391 (List!70243 List!70243) List!70243)

(assert (=> b!7239480 (= lt!2578455 (++!16391 (exprs!7985 ct1!232) (exprs!7985 ct2!328)))))

(declare-fun lt!2578456 () Unit!163654)

(assert (=> b!7239480 (= lt!2578456 (lemmaConcatPreservesForall!1354 (exprs!7985 ct1!232) (exprs!7985 ct2!328) lambda!441356))))

(declare-fun b!7239481 () Bool)

(declare-fun e!4340337 () Bool)

(declare-fun lt!2578460 () (InoxSet Context!14970))

(declare-fun matchZipper!3455 ((InoxSet Context!14970) List!70245) Bool)

(assert (=> b!7239481 (= e!4340337 (matchZipper!3455 lt!2578460 lt!2578432))))

(declare-fun b!7239482 () Bool)

(declare-fun Unit!163656 () Unit!163654)

(assert (=> b!7239482 (= e!4340330 Unit!163656)))

(declare-fun lt!2578437 () Unit!163654)

(assert (=> b!7239482 (= lt!2578437 (lemmaConcatPreservesForall!1354 (exprs!7985 ct1!232) (exprs!7985 ct2!328) lambda!441356))))

(declare-fun lt!2578444 () (InoxSet Context!14970))

(declare-fun lt!2578457 () Context!14970)

(assert (=> b!7239482 (= lt!2578444 (derivationStepZipperUp!2419 lt!2578457 (h!76569 s1!1971)))))

(declare-fun lt!2578446 () (InoxSet Context!14970))

(declare-fun lt!2578426 () Unit!163654)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1692 ((InoxSet Context!14970) (InoxSet Context!14970) List!70245) Unit!163654)

(assert (=> b!7239482 (= lt!2578426 (lemmaZipperConcatMatchesSameAsBothZippers!1692 lt!2578446 lt!2578444 (t!384296 s1!1971)))))

(declare-fun res!2936876 () Bool)

(assert (=> b!7239482 (= res!2936876 (matchZipper!3455 lt!2578446 (t!384296 s1!1971)))))

(declare-fun e!4340332 () Bool)

(assert (=> b!7239482 (=> res!2936876 e!4340332)))

(assert (=> b!7239482 (= (matchZipper!3455 ((_ map or) lt!2578446 lt!2578444) (t!384296 s1!1971)) e!4340332)))

(declare-fun lt!2578438 () Unit!163654)

(assert (=> b!7239482 (= lt!2578438 (lemmaConcatPreservesForall!1354 (exprs!7985 ct1!232) (exprs!7985 ct2!328) lambda!441356))))

(assert (=> b!7239482 (= lt!2578460 (derivationStepZipperUp!2419 lt!2578427 (h!76569 s1!1971)))))

(declare-fun lt!2578445 () Unit!163654)

(assert (=> b!7239482 (= lt!2578445 (lemmaZipperConcatMatchesSameAsBothZippers!1692 lt!2578454 lt!2578460 lt!2578432))))

(declare-fun res!2936874 () Bool)

(assert (=> b!7239482 (= res!2936874 (matchZipper!3455 lt!2578454 lt!2578432))))

(assert (=> b!7239482 (=> res!2936874 e!4340337)))

(assert (=> b!7239482 (= (matchZipper!3455 ((_ map or) lt!2578454 lt!2578460) lt!2578432) e!4340337)))

(declare-fun b!7239483 () Bool)

(declare-fun e!4340336 () Bool)

(declare-fun tp_is_empty!46555 () Bool)

(declare-fun tp!2035055 () Bool)

(assert (=> b!7239483 (= e!4340336 (and tp_is_empty!46555 tp!2035055))))

(declare-fun b!7239484 () Bool)

(assert (=> b!7239484 (= e!4340332 (matchZipper!3455 lt!2578444 (t!384296 s1!1971)))))

(declare-fun b!7239486 () Bool)

(declare-fun e!4340334 () Bool)

(assert (=> b!7239486 (= e!4340334 e!4340331)))

(declare-fun res!2936871 () Bool)

(assert (=> b!7239486 (=> res!2936871 e!4340331)))

(declare-fun isEmpty!40408 (List!70243) Bool)

(assert (=> b!7239486 (= res!2936871 (isEmpty!40408 lt!2578455))))

(declare-fun lt!2578447 () Unit!163654)

(assert (=> b!7239486 (= lt!2578447 (lemmaConcatPreservesForall!1354 (exprs!7985 ct1!232) (exprs!7985 ct2!328) lambda!441356))))

(assert (=> b!7239486 (= lt!2578425 (derivationStepZipperUp!2419 lt!2578441 (h!76569 s1!1971)))))

(declare-fun lt!2578448 () Unit!163654)

(assert (=> b!7239486 (= lt!2578448 (lemmaConcatPreservesForall!1354 (exprs!7985 ct1!232) (exprs!7985 ct2!328) lambda!441356))))

(assert (=> b!7239486 (= lt!2578446 (derivationStepZipperDown!2589 (h!76567 (exprs!7985 ct1!232)) lt!2578457 (h!76569 s1!1971)))))

(assert (=> b!7239486 (= lt!2578457 (Context!14971 (tail!14201 (exprs!7985 ct1!232))))))

(declare-fun b!7239487 () Bool)

(declare-fun Unit!163657 () Unit!163654)

(assert (=> b!7239487 (= e!4340330 Unit!163657)))

(declare-fun b!7239488 () Bool)

(declare-fun e!4340327 () Bool)

(declare-fun tp!2035056 () Bool)

(assert (=> b!7239488 (= e!4340327 (and tp_is_empty!46555 tp!2035056))))

(declare-fun b!7239489 () Bool)

(declare-fun res!2936869 () Bool)

(assert (=> b!7239489 (=> (not res!2936869) (not e!4340329))))

(assert (=> b!7239489 (= res!2936869 (matchZipper!3455 (store ((as const (Array Context!14970 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7239490 () Bool)

(assert (=> b!7239490 (= e!4340338 e!4340335)))

(declare-fun res!2936868 () Bool)

(assert (=> b!7239490 (=> (not res!2936868) (not e!4340335))))

(assert (=> b!7239490 (= res!2936868 (matchZipper!3455 lt!2578428 (t!384296 s1!1971)))))

(assert (=> b!7239490 (= lt!2578428 (derivationStepZipper!3337 lt!2578429 (h!76569 s1!1971)))))

(declare-fun b!7239491 () Bool)

(assert (=> b!7239491 (= e!4340333 e!4340334)))

(declare-fun res!2936875 () Bool)

(assert (=> b!7239491 (=> res!2936875 e!4340334)))

(assert (=> b!7239491 (= res!2936875 (isEmpty!40408 (exprs!7985 ct1!232)))))

(declare-fun lt!2578450 () (InoxSet Context!14970))

(assert (=> b!7239491 (= lt!2578450 (derivationStepZipperUp!2419 ct1!232 (h!76569 s1!1971)))))

(declare-fun lt!2578451 () Unit!163654)

(assert (=> b!7239491 (= lt!2578451 (lemmaConcatPreservesForall!1354 (exprs!7985 lt!2578459) (exprs!7985 ct2!328) lambda!441356))))

(assert (=> b!7239491 (matchZipper!3455 (store ((as const (Array Context!14970 Bool)) false) lt!2578443 true) lt!2578432)))

(assert (=> b!7239491 (= lt!2578432 (++!16390 (t!384296 s1!1971) s2!1849))))

(assert (=> b!7239491 (= lt!2578443 (Context!14971 (++!16391 (exprs!7985 lt!2578459) (exprs!7985 ct2!328))))))

(declare-fun lt!2578458 () Unit!163654)

(assert (=> b!7239491 (= lt!2578458 (lemmaConcatPreservesForall!1354 (exprs!7985 lt!2578459) (exprs!7985 ct2!328) lambda!441356))))

(declare-fun lt!2578439 () Unit!163654)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!336 (Context!14970 Context!14970 List!70245 List!70245) Unit!163654)

(assert (=> b!7239491 (= lt!2578439 (lemmaConcatenateContextMatchesConcatOfStrings!336 lt!2578459 ct2!328 (t!384296 s1!1971) s2!1849))))

(declare-fun getWitness!2092 ((InoxSet Context!14970) Int) Context!14970)

(assert (=> b!7239491 (= lt!2578459 (getWitness!2092 lt!2578428 lambda!441357))))

(declare-fun res!2936872 () Bool)

(assert (=> start!703226 (=> (not res!2936872) (not e!4340329))))

(assert (=> start!703226 (= res!2936872 (matchZipper!3455 lt!2578429 s1!1971))))

(assert (=> start!703226 (= lt!2578429 (store ((as const (Array Context!14970 Bool)) false) ct1!232 true))))

(assert (=> start!703226 e!4340329))

(declare-fun e!4340339 () Bool)

(declare-fun inv!89372 (Context!14970) Bool)

(assert (=> start!703226 (and (inv!89372 ct1!232) e!4340339)))

(assert (=> start!703226 e!4340336))

(assert (=> start!703226 e!4340327))

(assert (=> start!703226 (and (inv!89372 ct2!328) e!4340328)))

(declare-fun b!7239485 () Bool)

(declare-fun tp!2035054 () Bool)

(assert (=> b!7239485 (= e!4340339 tp!2035054)))

(assert (= (and start!703226 res!2936872) b!7239489))

(assert (= (and b!7239489 res!2936869) b!7239480))

(assert (= (and b!7239480 res!2936873) b!7239490))

(assert (= (and b!7239490 res!2936868) b!7239477))

(assert (= (and b!7239477 (not res!2936870)) b!7239491))

(assert (= (and b!7239491 (not res!2936875)) b!7239486))

(assert (= (and b!7239486 (not res!2936871)) b!7239479))

(assert (= (and b!7239479 c!1344130) b!7239482))

(assert (= (and b!7239479 (not c!1344130)) b!7239487))

(assert (= (and b!7239482 (not res!2936876)) b!7239484))

(assert (= (and b!7239482 (not res!2936874)) b!7239481))

(assert (= start!703226 b!7239485))

(assert (= (and start!703226 ((_ is Cons!70121) s1!1971)) b!7239483))

(assert (= (and start!703226 ((_ is Cons!70121) s2!1849)) b!7239488))

(assert (= start!703226 b!7239478))

(declare-fun m!7912282 () Bool)

(assert (=> start!703226 m!7912282))

(declare-fun m!7912284 () Bool)

(assert (=> start!703226 m!7912284))

(declare-fun m!7912286 () Bool)

(assert (=> start!703226 m!7912286))

(declare-fun m!7912288 () Bool)

(assert (=> start!703226 m!7912288))

(declare-fun m!7912290 () Bool)

(assert (=> b!7239491 m!7912290))

(declare-fun m!7912292 () Bool)

(assert (=> b!7239491 m!7912292))

(declare-fun m!7912294 () Bool)

(assert (=> b!7239491 m!7912294))

(declare-fun m!7912296 () Bool)

(assert (=> b!7239491 m!7912296))

(declare-fun m!7912298 () Bool)

(assert (=> b!7239491 m!7912298))

(assert (=> b!7239491 m!7912298))

(declare-fun m!7912300 () Bool)

(assert (=> b!7239491 m!7912300))

(assert (=> b!7239491 m!7912292))

(declare-fun m!7912302 () Bool)

(assert (=> b!7239491 m!7912302))

(declare-fun m!7912304 () Bool)

(assert (=> b!7239491 m!7912304))

(declare-fun m!7912306 () Bool)

(assert (=> b!7239491 m!7912306))

(declare-fun m!7912308 () Bool)

(assert (=> b!7239484 m!7912308))

(declare-fun m!7912310 () Bool)

(assert (=> b!7239481 m!7912310))

(declare-fun m!7912312 () Bool)

(assert (=> b!7239477 m!7912312))

(declare-fun m!7912314 () Bool)

(assert (=> b!7239477 m!7912314))

(declare-fun m!7912316 () Bool)

(assert (=> b!7239477 m!7912316))

(declare-fun m!7912318 () Bool)

(assert (=> b!7239477 m!7912318))

(declare-fun m!7912320 () Bool)

(assert (=> b!7239489 m!7912320))

(assert (=> b!7239489 m!7912320))

(declare-fun m!7912322 () Bool)

(assert (=> b!7239489 m!7912322))

(assert (=> b!7239479 m!7912298))

(declare-fun m!7912324 () Bool)

(assert (=> b!7239479 m!7912324))

(declare-fun m!7912326 () Bool)

(assert (=> b!7239479 m!7912326))

(declare-fun m!7912328 () Bool)

(assert (=> b!7239479 m!7912328))

(declare-fun m!7912330 () Bool)

(assert (=> b!7239479 m!7912330))

(declare-fun m!7912332 () Bool)

(assert (=> b!7239479 m!7912332))

(declare-fun m!7912334 () Bool)

(assert (=> b!7239479 m!7912334))

(declare-fun m!7912336 () Bool)

(assert (=> b!7239479 m!7912336))

(declare-fun m!7912338 () Bool)

(assert (=> b!7239479 m!7912338))

(declare-fun m!7912340 () Bool)

(assert (=> b!7239479 m!7912340))

(declare-fun m!7912342 () Bool)

(assert (=> b!7239479 m!7912342))

(declare-fun m!7912344 () Bool)

(assert (=> b!7239479 m!7912344))

(assert (=> b!7239479 m!7912298))

(declare-fun m!7912346 () Bool)

(assert (=> b!7239479 m!7912346))

(assert (=> b!7239479 m!7912298))

(assert (=> b!7239479 m!7912336))

(declare-fun m!7912348 () Bool)

(assert (=> b!7239479 m!7912348))

(assert (=> b!7239479 m!7912304))

(declare-fun m!7912350 () Bool)

(assert (=> b!7239479 m!7912350))

(declare-fun m!7912352 () Bool)

(assert (=> b!7239479 m!7912352))

(assert (=> b!7239479 m!7912352))

(assert (=> b!7239486 m!7912352))

(declare-fun m!7912354 () Bool)

(assert (=> b!7239486 m!7912354))

(assert (=> b!7239486 m!7912332))

(declare-fun m!7912356 () Bool)

(assert (=> b!7239486 m!7912356))

(declare-fun m!7912358 () Bool)

(assert (=> b!7239486 m!7912358))

(assert (=> b!7239486 m!7912352))

(declare-fun m!7912360 () Bool)

(assert (=> b!7239480 m!7912360))

(declare-fun m!7912362 () Bool)

(assert (=> b!7239480 m!7912362))

(assert (=> b!7239480 m!7912352))

(declare-fun m!7912364 () Bool)

(assert (=> b!7239482 m!7912364))

(assert (=> b!7239482 m!7912352))

(declare-fun m!7912366 () Bool)

(assert (=> b!7239482 m!7912366))

(declare-fun m!7912368 () Bool)

(assert (=> b!7239482 m!7912368))

(declare-fun m!7912370 () Bool)

(assert (=> b!7239482 m!7912370))

(declare-fun m!7912372 () Bool)

(assert (=> b!7239482 m!7912372))

(declare-fun m!7912374 () Bool)

(assert (=> b!7239482 m!7912374))

(declare-fun m!7912376 () Bool)

(assert (=> b!7239482 m!7912376))

(assert (=> b!7239482 m!7912352))

(declare-fun m!7912378 () Bool)

(assert (=> b!7239482 m!7912378))

(declare-fun m!7912380 () Bool)

(assert (=> b!7239490 m!7912380))

(declare-fun m!7912382 () Bool)

(assert (=> b!7239490 m!7912382))

(check-sat (not b!7239483) (not b!7239486) (not start!703226) (not b!7239484) (not b!7239478) (not b!7239490) (not b!7239491) (not b!7239479) tp_is_empty!46555 (not b!7239481) (not b!7239480) (not b!7239488) (not b!7239482) (not b!7239485) (not b!7239489) (not b!7239477))
(check-sat)
