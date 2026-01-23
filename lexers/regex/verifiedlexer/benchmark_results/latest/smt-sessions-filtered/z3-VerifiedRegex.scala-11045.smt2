; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572498 () Bool)

(assert start!572498)

(declare-fun b!5470411 () Bool)

(assert (=> b!5470411 true))

(assert (=> b!5470411 true))

(declare-fun lambda!291095 () Int)

(declare-fun lambda!291094 () Int)

(assert (=> b!5470411 (not (= lambda!291095 lambda!291094))))

(assert (=> b!5470411 true))

(assert (=> b!5470411 true))

(declare-fun lambda!291096 () Int)

(assert (=> b!5470411 (not (= lambda!291096 lambda!291094))))

(assert (=> b!5470411 (not (= lambda!291096 lambda!291095))))

(assert (=> b!5470411 true))

(assert (=> b!5470411 true))

(declare-fun b!5470423 () Bool)

(assert (=> b!5470423 true))

(declare-fun b!5470400 () Bool)

(declare-fun e!3386430 () Bool)

(declare-fun e!3386442 () Bool)

(declare-fun tp!1504308 () Bool)

(declare-datatypes ((C!30944 0))(
  ( (C!30945 (val!25174 Int)) )
))
(declare-datatypes ((Regex!15337 0))(
  ( (ElementMatch!15337 (c!955657 C!30944)) (Concat!24182 (regOne!31186 Regex!15337) (regTwo!31186 Regex!15337)) (EmptyExpr!15337) (Star!15337 (reg!15666 Regex!15337)) (EmptyLang!15337) (Union!15337 (regOne!31187 Regex!15337) (regTwo!31187 Regex!15337)) )
))
(declare-datatypes ((List!62310 0))(
  ( (Nil!62186) (Cons!62186 (h!68634 Regex!15337) (t!375539 List!62310)) )
))
(declare-datatypes ((Context!9442 0))(
  ( (Context!9443 (exprs!5221 List!62310)) )
))
(declare-datatypes ((List!62311 0))(
  ( (Nil!62187) (Cons!62187 (h!68635 Context!9442) (t!375540 List!62311)) )
))
(declare-fun zl!343 () List!62311)

(declare-fun inv!81589 (Context!9442) Bool)

(assert (=> b!5470400 (= e!3386430 (and (inv!81589 (h!68635 zl!343)) e!3386442 tp!1504308))))

(declare-fun b!5470401 () Bool)

(declare-fun e!3386434 () Bool)

(declare-fun e!3386439 () Bool)

(assert (=> b!5470401 (= e!3386434 (not e!3386439))))

(declare-fun res!2331297 () Bool)

(assert (=> b!5470401 (=> res!2331297 e!3386439)))

(get-info :version)

(assert (=> b!5470401 (= res!2331297 (not ((_ is Cons!62187) zl!343)))))

(declare-fun lt!2235022 () Bool)

(declare-fun r!7292 () Regex!15337)

(declare-datatypes ((List!62312 0))(
  ( (Nil!62188) (Cons!62188 (h!68636 C!30944) (t!375541 List!62312)) )
))
(declare-fun s!2326 () List!62312)

(declare-fun matchRSpec!2440 (Regex!15337 List!62312) Bool)

(assert (=> b!5470401 (= lt!2235022 (matchRSpec!2440 r!7292 s!2326))))

(declare-fun matchR!7522 (Regex!15337 List!62312) Bool)

(assert (=> b!5470401 (= lt!2235022 (matchR!7522 r!7292 s!2326))))

(declare-datatypes ((Unit!155124 0))(
  ( (Unit!155125) )
))
(declare-fun lt!2235029 () Unit!155124)

(declare-fun mainMatchTheorem!2440 (Regex!15337 List!62312) Unit!155124)

(assert (=> b!5470401 (= lt!2235029 (mainMatchTheorem!2440 r!7292 s!2326))))

(declare-fun b!5470402 () Bool)

(declare-fun e!3386429 () Bool)

(declare-fun e!3386425 () Bool)

(assert (=> b!5470402 (= e!3386429 e!3386425)))

(declare-fun res!2331300 () Bool)

(assert (=> b!5470402 (=> res!2331300 e!3386425)))

(declare-fun lt!2235014 () Bool)

(assert (=> b!5470402 (= res!2331300 (not lt!2235014))))

(declare-fun b!5470403 () Bool)

(declare-fun res!2331286 () Bool)

(declare-fun e!3386427 () Bool)

(assert (=> b!5470403 (=> res!2331286 e!3386427)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2235011 () (InoxSet Context!9442))

(declare-fun matchZipper!1555 ((InoxSet Context!9442) List!62312) Bool)

(declare-fun derivationStepZipper!1532 ((InoxSet Context!9442) C!30944) (InoxSet Context!9442))

(assert (=> b!5470403 (= res!2331286 (not (= (matchZipper!1555 lt!2235011 s!2326) (matchZipper!1555 (derivationStepZipper!1532 lt!2235011 (h!68636 s!2326)) (t!375541 s!2326)))))))

(declare-fun b!5470404 () Bool)

(declare-fun res!2331302 () Bool)

(declare-fun e!3386426 () Bool)

(assert (=> b!5470404 (=> (not res!2331302) (not e!3386426))))

(declare-fun z!1189 () (InoxSet Context!9442))

(declare-fun toList!9121 ((InoxSet Context!9442)) List!62311)

(assert (=> b!5470404 (= res!2331302 (= (toList!9121 z!1189) zl!343))))

(declare-fun b!5470405 () Bool)

(declare-fun e!3386440 () Bool)

(assert (=> b!5470405 (= e!3386440 e!3386427)))

(declare-fun res!2331285 () Bool)

(assert (=> b!5470405 (=> res!2331285 e!3386427)))

(declare-fun lt!2235031 () (InoxSet Context!9442))

(declare-fun lt!2235033 () Context!9442)

(declare-fun derivationStepZipperDown!763 (Regex!15337 Context!9442 C!30944) (InoxSet Context!9442))

(assert (=> b!5470405 (= res!2331285 (not (= lt!2235031 (derivationStepZipperDown!763 (reg!15666 r!7292) lt!2235033 (h!68636 s!2326)))))))

(declare-fun lt!2235020 () List!62310)

(assert (=> b!5470405 (= lt!2235033 (Context!9443 lt!2235020))))

(declare-fun lambda!291097 () Int)

(declare-fun lt!2235007 () Context!9442)

(declare-fun flatMap!1040 ((InoxSet Context!9442) Int) (InoxSet Context!9442))

(declare-fun derivationStepZipperUp!689 (Context!9442 C!30944) (InoxSet Context!9442))

(assert (=> b!5470405 (= (flatMap!1040 lt!2235011 lambda!291097) (derivationStepZipperUp!689 lt!2235007 (h!68636 s!2326)))))

(declare-fun lt!2235028 () Unit!155124)

(declare-fun lemmaFlatMapOnSingletonSet!572 ((InoxSet Context!9442) Context!9442 Int) Unit!155124)

(assert (=> b!5470405 (= lt!2235028 (lemmaFlatMapOnSingletonSet!572 lt!2235011 lt!2235007 lambda!291097))))

(declare-fun lt!2235016 () (InoxSet Context!9442))

(assert (=> b!5470405 (= lt!2235016 (derivationStepZipperUp!689 lt!2235007 (h!68636 s!2326)))))

(assert (=> b!5470405 (= lt!2235011 (store ((as const (Array Context!9442 Bool)) false) lt!2235007 true))))

(assert (=> b!5470405 (= lt!2235007 (Context!9443 (Cons!62186 (reg!15666 r!7292) lt!2235020)))))

(assert (=> b!5470405 (= lt!2235020 (Cons!62186 r!7292 Nil!62186))))

(declare-fun b!5470406 () Bool)

(declare-fun res!2331281 () Bool)

(declare-fun e!3386428 () Bool)

(assert (=> b!5470406 (=> res!2331281 e!3386428)))

(declare-fun validRegex!7073 (Regex!15337) Bool)

(assert (=> b!5470406 (= res!2331281 (not (validRegex!7073 (reg!15666 r!7292))))))

(declare-fun b!5470407 () Bool)

(declare-fun e!3386432 () Bool)

(declare-fun lt!2235027 () Bool)

(assert (=> b!5470407 (= e!3386432 lt!2235027)))

(declare-fun b!5470408 () Bool)

(declare-fun e!3386433 () Bool)

(assert (=> b!5470408 (= e!3386425 e!3386433)))

(declare-fun res!2331301 () Bool)

(assert (=> b!5470408 (=> (not res!2331301) (not e!3386433))))

(declare-fun Exists!2516 (Int) Bool)

(assert (=> b!5470408 (= res!2331301 (= (Exists!2516 lambda!291094) (Exists!2516 lambda!291095)))))

(declare-fun b!5470409 () Bool)

(declare-fun res!2331288 () Bool)

(assert (=> b!5470409 (=> res!2331288 e!3386439)))

(assert (=> b!5470409 (= res!2331288 (not ((_ is Cons!62186) (exprs!5221 (h!68635 zl!343)))))))

(declare-fun b!5470410 () Bool)

(declare-fun res!2331304 () Bool)

(assert (=> b!5470410 (=> res!2331304 e!3386439)))

(assert (=> b!5470410 (= res!2331304 (or ((_ is EmptyExpr!15337) r!7292) ((_ is EmptyLang!15337) r!7292) ((_ is ElementMatch!15337) r!7292) ((_ is Union!15337) r!7292) ((_ is Concat!24182) r!7292)))))

(declare-fun e!3386435 () Bool)

(assert (=> b!5470411 (= e!3386439 e!3386435)))

(declare-fun res!2331296 () Bool)

(assert (=> b!5470411 (=> res!2331296 e!3386435)))

(assert (=> b!5470411 (= res!2331296 (not (= lt!2235022 e!3386432)))))

(declare-fun res!2331278 () Bool)

(assert (=> b!5470411 (=> res!2331278 e!3386432)))

(declare-fun isEmpty!34142 (List!62312) Bool)

(assert (=> b!5470411 (= res!2331278 (isEmpty!34142 s!2326))))

(assert (=> b!5470411 (= (Exists!2516 lambda!291094) (Exists!2516 lambda!291096))))

(declare-fun lt!2235018 () Unit!155124)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1166 (Regex!15337 Regex!15337 List!62312) Unit!155124)

(assert (=> b!5470411 (= lt!2235018 (lemmaExistCutMatchRandMatchRSpecEquivalent!1166 (reg!15666 r!7292) r!7292 s!2326))))

(assert (=> b!5470411 (= (Exists!2516 lambda!291094) (Exists!2516 lambda!291095))))

(declare-fun lt!2235026 () Unit!155124)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!490 (Regex!15337 List!62312) Unit!155124)

(assert (=> b!5470411 (= lt!2235026 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!490 (reg!15666 r!7292) s!2326))))

(assert (=> b!5470411 (= lt!2235027 (Exists!2516 lambda!291094))))

(declare-datatypes ((tuple2!65068 0))(
  ( (tuple2!65069 (_1!35837 List!62312) (_2!35837 List!62312)) )
))
(declare-datatypes ((Option!15446 0))(
  ( (None!15445) (Some!15445 (v!51474 tuple2!65068)) )
))
(declare-fun isDefined!12149 (Option!15446) Bool)

(declare-fun findConcatSeparation!1860 (Regex!15337 Regex!15337 List!62312 List!62312 List!62312) Option!15446)

(assert (=> b!5470411 (= lt!2235027 (isDefined!12149 (findConcatSeparation!1860 (reg!15666 r!7292) r!7292 Nil!62188 s!2326 s!2326)))))

(declare-fun lt!2235030 () Unit!155124)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1624 (Regex!15337 Regex!15337 List!62312) Unit!155124)

(assert (=> b!5470411 (= lt!2235030 (lemmaFindConcatSeparationEquivalentToExists!1624 (reg!15666 r!7292) r!7292 s!2326))))

(declare-fun b!5470412 () Bool)

(declare-fun e!3386438 () Bool)

(declare-fun e!3386436 () Bool)

(assert (=> b!5470412 (= e!3386438 e!3386436)))

(declare-fun res!2331298 () Bool)

(assert (=> b!5470412 (=> res!2331298 e!3386436)))

(declare-fun lt!2235023 () (InoxSet Context!9442))

(assert (=> b!5470412 (= res!2331298 (not (= lt!2235031 (derivationStepZipper!1532 lt!2235023 (h!68636 s!2326)))))))

(assert (=> b!5470412 (= (flatMap!1040 lt!2235023 lambda!291097) (derivationStepZipperUp!689 lt!2235033 (h!68636 s!2326)))))

(declare-fun lt!2235015 () Unit!155124)

(assert (=> b!5470412 (= lt!2235015 (lemmaFlatMapOnSingletonSet!572 lt!2235023 lt!2235033 lambda!291097))))

(declare-fun lt!2235017 () Context!9442)

(declare-fun lt!2235032 () (InoxSet Context!9442))

(assert (=> b!5470412 (= (flatMap!1040 lt!2235032 lambda!291097) (derivationStepZipperUp!689 lt!2235017 (h!68636 s!2326)))))

(declare-fun lt!2235025 () Unit!155124)

(assert (=> b!5470412 (= lt!2235025 (lemmaFlatMapOnSingletonSet!572 lt!2235032 lt!2235017 lambda!291097))))

(declare-fun lt!2235021 () (InoxSet Context!9442))

(assert (=> b!5470412 (= lt!2235021 (derivationStepZipperUp!689 lt!2235033 (h!68636 s!2326)))))

(declare-fun lt!2235012 () (InoxSet Context!9442))

(assert (=> b!5470412 (= lt!2235012 (derivationStepZipperUp!689 lt!2235017 (h!68636 s!2326)))))

(assert (=> b!5470412 (= lt!2235023 (store ((as const (Array Context!9442 Bool)) false) lt!2235033 true))))

(assert (=> b!5470412 (= lt!2235032 (store ((as const (Array Context!9442 Bool)) false) lt!2235017 true))))

(assert (=> b!5470412 (= lt!2235017 (Context!9443 (Cons!62186 (reg!15666 r!7292) Nil!62186)))))

(declare-fun b!5470413 () Bool)

(assert (=> b!5470413 (= e!3386436 e!3386428)))

(declare-fun res!2331283 () Bool)

(assert (=> b!5470413 (=> res!2331283 e!3386428)))

(assert (=> b!5470413 (= res!2331283 (not lt!2235014))))

(assert (=> b!5470413 e!3386429))

(declare-fun res!2331292 () Bool)

(assert (=> b!5470413 (=> (not res!2331292) (not e!3386429))))

(declare-fun lt!2235010 () Regex!15337)

(assert (=> b!5470413 (= res!2331292 (= lt!2235014 (matchRSpec!2440 lt!2235010 s!2326)))))

(assert (=> b!5470413 (= lt!2235014 (matchR!7522 lt!2235010 s!2326))))

(declare-fun lt!2235024 () Unit!155124)

(assert (=> b!5470413 (= lt!2235024 (mainMatchTheorem!2440 lt!2235010 s!2326))))

(declare-fun b!5470414 () Bool)

(declare-fun e!3386441 () Bool)

(declare-fun tp!1504309 () Bool)

(assert (=> b!5470414 (= e!3386441 tp!1504309)))

(declare-fun b!5470415 () Bool)

(declare-fun res!2331282 () Bool)

(assert (=> b!5470415 (=> res!2331282 e!3386439)))

(declare-fun generalisedUnion!1266 (List!62310) Regex!15337)

(declare-fun unfocusZipperList!779 (List!62311) List!62310)

(assert (=> b!5470415 (= res!2331282 (not (= r!7292 (generalisedUnion!1266 (unfocusZipperList!779 zl!343)))))))

(declare-fun b!5470416 () Bool)

(declare-fun res!2331295 () Bool)

(assert (=> b!5470416 (=> res!2331295 e!3386439)))

(declare-fun generalisedConcat!1006 (List!62310) Regex!15337)

(assert (=> b!5470416 (= res!2331295 (not (= r!7292 (generalisedConcat!1006 (exprs!5221 (h!68635 zl!343))))))))

(declare-fun b!5470417 () Bool)

(declare-fun e!3386424 () Bool)

(declare-fun tp_is_empty!39927 () Bool)

(declare-fun tp!1504310 () Bool)

(assert (=> b!5470417 (= e!3386424 (and tp_is_empty!39927 tp!1504310))))

(declare-fun b!5470418 () Bool)

(declare-fun ++!13674 (List!62312 List!62312) List!62312)

(assert (=> b!5470418 (= e!3386428 (= (++!13674 Nil!62188 s!2326) s!2326))))

(declare-fun b!5470419 () Bool)

(declare-fun res!2331303 () Bool)

(assert (=> b!5470419 (=> res!2331303 e!3386439)))

(declare-fun isEmpty!34143 (List!62311) Bool)

(assert (=> b!5470419 (= res!2331303 (not (isEmpty!34143 (t!375540 zl!343))))))

(declare-fun b!5470420 () Bool)

(declare-fun res!2331284 () Bool)

(assert (=> b!5470420 (=> res!2331284 e!3386435)))

(assert (=> b!5470420 (= res!2331284 ((_ is Nil!62188) s!2326))))

(declare-fun b!5470421 () Bool)

(declare-fun tp!1504305 () Bool)

(declare-fun tp!1504304 () Bool)

(assert (=> b!5470421 (= e!3386441 (and tp!1504305 tp!1504304))))

(declare-fun b!5470422 () Bool)

(declare-fun e!3386431 () Bool)

(assert (=> b!5470422 (= e!3386435 e!3386431)))

(declare-fun res!2331294 () Bool)

(assert (=> b!5470422 (=> res!2331294 e!3386431)))

(declare-fun lt!2235009 () (InoxSet Context!9442))

(declare-fun lt!2235013 () (InoxSet Context!9442))

(assert (=> b!5470422 (= res!2331294 (not (= lt!2235009 lt!2235013)))))

(assert (=> b!5470422 (= lt!2235013 (derivationStepZipperDown!763 r!7292 (Context!9443 Nil!62186) (h!68636 s!2326)))))

(assert (=> b!5470422 (= lt!2235009 (derivationStepZipperUp!689 (Context!9443 (Cons!62186 r!7292 Nil!62186)) (h!68636 s!2326)))))

(assert (=> b!5470422 (= lt!2235031 (derivationStepZipper!1532 z!1189 (h!68636 s!2326)))))

(assert (=> b!5470423 (= e!3386431 e!3386440)))

(declare-fun res!2331280 () Bool)

(assert (=> b!5470423 (=> res!2331280 e!3386440)))

(assert (=> b!5470423 (= res!2331280 (not (= lt!2235031 lt!2235013)))))

(assert (=> b!5470423 (= (flatMap!1040 z!1189 lambda!291097) (derivationStepZipperUp!689 (h!68635 zl!343) (h!68636 s!2326)))))

(declare-fun lt!2235008 () Unit!155124)

(assert (=> b!5470423 (= lt!2235008 (lemmaFlatMapOnSingletonSet!572 z!1189 (h!68635 zl!343) lambda!291097))))

(declare-fun b!5470424 () Bool)

(declare-fun res!2331291 () Bool)

(assert (=> b!5470424 (=> res!2331291 e!3386428)))

(assert (=> b!5470424 (= res!2331291 (not (validRegex!7073 r!7292)))))

(declare-fun b!5470425 () Bool)

(assert (=> b!5470425 (= e!3386427 e!3386438)))

(declare-fun res!2331287 () Bool)

(assert (=> b!5470425 (=> res!2331287 e!3386438)))

(declare-fun unfocusZipper!1079 (List!62311) Regex!15337)

(assert (=> b!5470425 (= res!2331287 (not (= (unfocusZipper!1079 (Cons!62187 lt!2235007 Nil!62187)) lt!2235010)))))

(assert (=> b!5470425 (= lt!2235010 (Concat!24182 (reg!15666 r!7292) r!7292))))

(declare-fun setIsEmpty!35905 () Bool)

(declare-fun setRes!35905 () Bool)

(assert (=> setIsEmpty!35905 setRes!35905))

(declare-fun b!5470426 () Bool)

(declare-fun res!2331293 () Bool)

(assert (=> b!5470426 (=> res!2331293 e!3386436)))

(assert (=> b!5470426 (= res!2331293 (not (= (unfocusZipper!1079 (Cons!62187 lt!2235017 Nil!62187)) (reg!15666 r!7292))))))

(declare-fun e!3386437 () Bool)

(declare-fun setElem!35905 () Context!9442)

(declare-fun tp!1504311 () Bool)

(declare-fun setNonEmpty!35905 () Bool)

(assert (=> setNonEmpty!35905 (= setRes!35905 (and tp!1504311 (inv!81589 setElem!35905) e!3386437))))

(declare-fun setRest!35905 () (InoxSet Context!9442))

(assert (=> setNonEmpty!35905 (= z!1189 ((_ map or) (store ((as const (Array Context!9442 Bool)) false) setElem!35905 true) setRest!35905))))

(declare-fun b!5470427 () Bool)

(declare-fun res!2331299 () Bool)

(assert (=> b!5470427 (=> res!2331299 e!3386427)))

(declare-fun lt!2235019 () Regex!15337)

(assert (=> b!5470427 (= res!2331299 (or (not (= lt!2235019 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun res!2331290 () Bool)

(assert (=> start!572498 (=> (not res!2331290) (not e!3386426))))

(assert (=> start!572498 (= res!2331290 (validRegex!7073 r!7292))))

(assert (=> start!572498 e!3386426))

(assert (=> start!572498 e!3386441))

(declare-fun condSetEmpty!35905 () Bool)

(assert (=> start!572498 (= condSetEmpty!35905 (= z!1189 ((as const (Array Context!9442 Bool)) false)))))

(assert (=> start!572498 setRes!35905))

(assert (=> start!572498 e!3386430))

(assert (=> start!572498 e!3386424))

(declare-fun b!5470428 () Bool)

(assert (=> b!5470428 (= e!3386433 (= lt!2235027 (Exists!2516 lambda!291094)))))

(declare-fun b!5470429 () Bool)

(declare-fun tp!1504306 () Bool)

(assert (=> b!5470429 (= e!3386437 tp!1504306)))

(declare-fun b!5470430 () Bool)

(assert (=> b!5470430 (= e!3386441 tp_is_empty!39927)))

(declare-fun b!5470431 () Bool)

(assert (=> b!5470431 (= e!3386426 e!3386434)))

(declare-fun res!2331289 () Bool)

(assert (=> b!5470431 (=> (not res!2331289) (not e!3386434))))

(assert (=> b!5470431 (= res!2331289 (= r!7292 lt!2235019))))

(assert (=> b!5470431 (= lt!2235019 (unfocusZipper!1079 zl!343))))

(declare-fun b!5470432 () Bool)

(declare-fun res!2331279 () Bool)

(assert (=> b!5470432 (=> res!2331279 e!3386436)))

(assert (=> b!5470432 (= res!2331279 (not (= (unfocusZipper!1079 (Cons!62187 lt!2235033 Nil!62187)) r!7292)))))

(declare-fun b!5470433 () Bool)

(declare-fun tp!1504312 () Bool)

(declare-fun tp!1504307 () Bool)

(assert (=> b!5470433 (= e!3386441 (and tp!1504312 tp!1504307))))

(declare-fun b!5470434 () Bool)

(declare-fun tp!1504313 () Bool)

(assert (=> b!5470434 (= e!3386442 tp!1504313)))

(assert (= (and start!572498 res!2331290) b!5470404))

(assert (= (and b!5470404 res!2331302) b!5470431))

(assert (= (and b!5470431 res!2331289) b!5470401))

(assert (= (and b!5470401 (not res!2331297)) b!5470419))

(assert (= (and b!5470419 (not res!2331303)) b!5470416))

(assert (= (and b!5470416 (not res!2331295)) b!5470409))

(assert (= (and b!5470409 (not res!2331288)) b!5470415))

(assert (= (and b!5470415 (not res!2331282)) b!5470410))

(assert (= (and b!5470410 (not res!2331304)) b!5470411))

(assert (= (and b!5470411 (not res!2331278)) b!5470407))

(assert (= (and b!5470411 (not res!2331296)) b!5470420))

(assert (= (and b!5470420 (not res!2331284)) b!5470422))

(assert (= (and b!5470422 (not res!2331294)) b!5470423))

(assert (= (and b!5470423 (not res!2331280)) b!5470405))

(assert (= (and b!5470405 (not res!2331285)) b!5470403))

(assert (= (and b!5470403 (not res!2331286)) b!5470427))

(assert (= (and b!5470427 (not res!2331299)) b!5470425))

(assert (= (and b!5470425 (not res!2331287)) b!5470412))

(assert (= (and b!5470412 (not res!2331298)) b!5470426))

(assert (= (and b!5470426 (not res!2331293)) b!5470432))

(assert (= (and b!5470432 (not res!2331279)) b!5470413))

(assert (= (and b!5470413 res!2331292) b!5470402))

(assert (= (and b!5470402 (not res!2331300)) b!5470408))

(assert (= (and b!5470408 res!2331301) b!5470428))

(assert (= (and b!5470413 (not res!2331283)) b!5470406))

(assert (= (and b!5470406 (not res!2331281)) b!5470424))

(assert (= (and b!5470424 (not res!2331291)) b!5470418))

(assert (= (and start!572498 ((_ is ElementMatch!15337) r!7292)) b!5470430))

(assert (= (and start!572498 ((_ is Concat!24182) r!7292)) b!5470421))

(assert (= (and start!572498 ((_ is Star!15337) r!7292)) b!5470414))

(assert (= (and start!572498 ((_ is Union!15337) r!7292)) b!5470433))

(assert (= (and start!572498 condSetEmpty!35905) setIsEmpty!35905))

(assert (= (and start!572498 (not condSetEmpty!35905)) setNonEmpty!35905))

(assert (= setNonEmpty!35905 b!5470429))

(assert (= b!5470400 b!5470434))

(assert (= (and start!572498 ((_ is Cons!62187) zl!343)) b!5470400))

(assert (= (and start!572498 ((_ is Cons!62188) s!2326)) b!5470417))

(declare-fun m!6488636 () Bool)

(assert (=> b!5470425 m!6488636))

(declare-fun m!6488638 () Bool)

(assert (=> b!5470424 m!6488638))

(declare-fun m!6488640 () Bool)

(assert (=> setNonEmpty!35905 m!6488640))

(declare-fun m!6488642 () Bool)

(assert (=> b!5470432 m!6488642))

(declare-fun m!6488644 () Bool)

(assert (=> b!5470415 m!6488644))

(assert (=> b!5470415 m!6488644))

(declare-fun m!6488646 () Bool)

(assert (=> b!5470415 m!6488646))

(declare-fun m!6488648 () Bool)

(assert (=> b!5470400 m!6488648))

(declare-fun m!6488650 () Bool)

(assert (=> b!5470404 m!6488650))

(declare-fun m!6488652 () Bool)

(assert (=> b!5470408 m!6488652))

(declare-fun m!6488654 () Bool)

(assert (=> b!5470408 m!6488654))

(declare-fun m!6488656 () Bool)

(assert (=> b!5470405 m!6488656))

(declare-fun m!6488658 () Bool)

(assert (=> b!5470405 m!6488658))

(declare-fun m!6488660 () Bool)

(assert (=> b!5470405 m!6488660))

(declare-fun m!6488662 () Bool)

(assert (=> b!5470405 m!6488662))

(declare-fun m!6488664 () Bool)

(assert (=> b!5470405 m!6488664))

(declare-fun m!6488666 () Bool)

(assert (=> b!5470401 m!6488666))

(declare-fun m!6488668 () Bool)

(assert (=> b!5470401 m!6488668))

(declare-fun m!6488670 () Bool)

(assert (=> b!5470401 m!6488670))

(assert (=> b!5470428 m!6488652))

(declare-fun m!6488672 () Bool)

(assert (=> b!5470413 m!6488672))

(declare-fun m!6488674 () Bool)

(assert (=> b!5470413 m!6488674))

(declare-fun m!6488676 () Bool)

(assert (=> b!5470413 m!6488676))

(declare-fun m!6488678 () Bool)

(assert (=> b!5470412 m!6488678))

(declare-fun m!6488680 () Bool)

(assert (=> b!5470412 m!6488680))

(declare-fun m!6488682 () Bool)

(assert (=> b!5470412 m!6488682))

(declare-fun m!6488684 () Bool)

(assert (=> b!5470412 m!6488684))

(declare-fun m!6488686 () Bool)

(assert (=> b!5470412 m!6488686))

(declare-fun m!6488688 () Bool)

(assert (=> b!5470412 m!6488688))

(declare-fun m!6488690 () Bool)

(assert (=> b!5470412 m!6488690))

(declare-fun m!6488692 () Bool)

(assert (=> b!5470412 m!6488692))

(declare-fun m!6488694 () Bool)

(assert (=> b!5470412 m!6488694))

(declare-fun m!6488696 () Bool)

(assert (=> b!5470419 m!6488696))

(declare-fun m!6488698 () Bool)

(assert (=> b!5470418 m!6488698))

(declare-fun m!6488700 () Bool)

(assert (=> b!5470423 m!6488700))

(declare-fun m!6488702 () Bool)

(assert (=> b!5470423 m!6488702))

(declare-fun m!6488704 () Bool)

(assert (=> b!5470423 m!6488704))

(declare-fun m!6488706 () Bool)

(assert (=> b!5470406 m!6488706))

(declare-fun m!6488708 () Bool)

(assert (=> b!5470411 m!6488708))

(declare-fun m!6488710 () Bool)

(assert (=> b!5470411 m!6488710))

(assert (=> b!5470411 m!6488652))

(assert (=> b!5470411 m!6488652))

(declare-fun m!6488712 () Bool)

(assert (=> b!5470411 m!6488712))

(declare-fun m!6488714 () Bool)

(assert (=> b!5470411 m!6488714))

(declare-fun m!6488716 () Bool)

(assert (=> b!5470411 m!6488716))

(assert (=> b!5470411 m!6488654))

(declare-fun m!6488718 () Bool)

(assert (=> b!5470411 m!6488718))

(assert (=> b!5470411 m!6488712))

(declare-fun m!6488720 () Bool)

(assert (=> b!5470411 m!6488720))

(assert (=> b!5470411 m!6488652))

(assert (=> start!572498 m!6488638))

(declare-fun m!6488722 () Bool)

(assert (=> b!5470403 m!6488722))

(declare-fun m!6488724 () Bool)

(assert (=> b!5470403 m!6488724))

(assert (=> b!5470403 m!6488724))

(declare-fun m!6488726 () Bool)

(assert (=> b!5470403 m!6488726))

(declare-fun m!6488728 () Bool)

(assert (=> b!5470416 m!6488728))

(declare-fun m!6488730 () Bool)

(assert (=> b!5470426 m!6488730))

(declare-fun m!6488732 () Bool)

(assert (=> b!5470422 m!6488732))

(declare-fun m!6488734 () Bool)

(assert (=> b!5470422 m!6488734))

(declare-fun m!6488736 () Bool)

(assert (=> b!5470422 m!6488736))

(declare-fun m!6488738 () Bool)

(assert (=> b!5470431 m!6488738))

(check-sat (not b!5470416) (not b!5470422) (not b!5470406) (not b!5470419) (not setNonEmpty!35905) (not b!5470428) (not b!5470432) (not b!5470423) (not b!5470425) (not b!5470417) (not b!5470411) (not b!5470421) (not b!5470431) (not start!572498) (not b!5470405) (not b!5470413) (not b!5470414) (not b!5470400) (not b!5470429) (not b!5470426) (not b!5470408) (not b!5470424) (not b!5470403) (not b!5470412) (not b!5470433) (not b!5470415) tp_is_empty!39927 (not b!5470401) (not b!5470404) (not b!5470418) (not b!5470434))
(check-sat)
(get-model)

(declare-fun b!5470461 () Bool)

(declare-fun e!3386458 () Regex!15337)

(assert (=> b!5470461 (= e!3386458 EmptyLang!15337)))

(declare-fun b!5470462 () Bool)

(declare-fun e!3386456 () Bool)

(declare-fun lt!2235036 () Regex!15337)

(declare-fun isEmptyLang!1040 (Regex!15337) Bool)

(assert (=> b!5470462 (= e!3386456 (isEmptyLang!1040 lt!2235036))))

(declare-fun b!5470463 () Bool)

(declare-fun e!3386459 () Bool)

(declare-fun isEmpty!34145 (List!62310) Bool)

(assert (=> b!5470463 (= e!3386459 (isEmpty!34145 (t!375539 (unfocusZipperList!779 zl!343))))))

(declare-fun b!5470464 () Bool)

(declare-fun e!3386460 () Bool)

(assert (=> b!5470464 (= e!3386456 e!3386460)))

(declare-fun c!955669 () Bool)

(declare-fun tail!10813 (List!62310) List!62310)

(assert (=> b!5470464 (= c!955669 (isEmpty!34145 (tail!10813 (unfocusZipperList!779 zl!343))))))

(declare-fun b!5470465 () Bool)

(declare-fun e!3386455 () Bool)

(assert (=> b!5470465 (= e!3386455 e!3386456)))

(declare-fun c!955666 () Bool)

(assert (=> b!5470465 (= c!955666 (isEmpty!34145 (unfocusZipperList!779 zl!343)))))

(declare-fun b!5470466 () Bool)

(declare-fun e!3386457 () Regex!15337)

(assert (=> b!5470466 (= e!3386457 (h!68634 (unfocusZipperList!779 zl!343)))))

(declare-fun d!1739080 () Bool)

(assert (=> d!1739080 e!3386455))

(declare-fun res!2331309 () Bool)

(assert (=> d!1739080 (=> (not res!2331309) (not e!3386455))))

(assert (=> d!1739080 (= res!2331309 (validRegex!7073 lt!2235036))))

(assert (=> d!1739080 (= lt!2235036 e!3386457)))

(declare-fun c!955667 () Bool)

(assert (=> d!1739080 (= c!955667 e!3386459)))

(declare-fun res!2331310 () Bool)

(assert (=> d!1739080 (=> (not res!2331310) (not e!3386459))))

(assert (=> d!1739080 (= res!2331310 ((_ is Cons!62186) (unfocusZipperList!779 zl!343)))))

(declare-fun lambda!291100 () Int)

(declare-fun forall!14605 (List!62310 Int) Bool)

(assert (=> d!1739080 (forall!14605 (unfocusZipperList!779 zl!343) lambda!291100)))

(assert (=> d!1739080 (= (generalisedUnion!1266 (unfocusZipperList!779 zl!343)) lt!2235036)))

(declare-fun b!5470467 () Bool)

(assert (=> b!5470467 (= e!3386457 e!3386458)))

(declare-fun c!955668 () Bool)

(assert (=> b!5470467 (= c!955668 ((_ is Cons!62186) (unfocusZipperList!779 zl!343)))))

(declare-fun b!5470468 () Bool)

(assert (=> b!5470468 (= e!3386458 (Union!15337 (h!68634 (unfocusZipperList!779 zl!343)) (generalisedUnion!1266 (t!375539 (unfocusZipperList!779 zl!343)))))))

(declare-fun b!5470469 () Bool)

(declare-fun isUnion!472 (Regex!15337) Bool)

(assert (=> b!5470469 (= e!3386460 (isUnion!472 lt!2235036))))

(declare-fun b!5470470 () Bool)

(declare-fun head!11716 (List!62310) Regex!15337)

(assert (=> b!5470470 (= e!3386460 (= lt!2235036 (head!11716 (unfocusZipperList!779 zl!343))))))

(assert (= (and d!1739080 res!2331310) b!5470463))

(assert (= (and d!1739080 c!955667) b!5470466))

(assert (= (and d!1739080 (not c!955667)) b!5470467))

(assert (= (and b!5470467 c!955668) b!5470468))

(assert (= (and b!5470467 (not c!955668)) b!5470461))

(assert (= (and d!1739080 res!2331309) b!5470465))

(assert (= (and b!5470465 c!955666) b!5470462))

(assert (= (and b!5470465 (not c!955666)) b!5470464))

(assert (= (and b!5470464 c!955669) b!5470470))

(assert (= (and b!5470464 (not c!955669)) b!5470469))

(declare-fun m!6488740 () Bool)

(assert (=> b!5470463 m!6488740))

(declare-fun m!6488742 () Bool)

(assert (=> b!5470468 m!6488742))

(declare-fun m!6488744 () Bool)

(assert (=> d!1739080 m!6488744))

(assert (=> d!1739080 m!6488644))

(declare-fun m!6488746 () Bool)

(assert (=> d!1739080 m!6488746))

(assert (=> b!5470464 m!6488644))

(declare-fun m!6488748 () Bool)

(assert (=> b!5470464 m!6488748))

(assert (=> b!5470464 m!6488748))

(declare-fun m!6488750 () Bool)

(assert (=> b!5470464 m!6488750))

(assert (=> b!5470465 m!6488644))

(declare-fun m!6488752 () Bool)

(assert (=> b!5470465 m!6488752))

(declare-fun m!6488754 () Bool)

(assert (=> b!5470462 m!6488754))

(declare-fun m!6488756 () Bool)

(assert (=> b!5470469 m!6488756))

(assert (=> b!5470470 m!6488644))

(declare-fun m!6488758 () Bool)

(assert (=> b!5470470 m!6488758))

(assert (=> b!5470415 d!1739080))

(declare-fun bs!1264887 () Bool)

(declare-fun d!1739082 () Bool)

(assert (= bs!1264887 (and d!1739082 d!1739080)))

(declare-fun lambda!291103 () Int)

(assert (=> bs!1264887 (= lambda!291103 lambda!291100)))

(declare-fun lt!2235039 () List!62310)

(assert (=> d!1739082 (forall!14605 lt!2235039 lambda!291103)))

(declare-fun e!3386463 () List!62310)

(assert (=> d!1739082 (= lt!2235039 e!3386463)))

(declare-fun c!955672 () Bool)

(assert (=> d!1739082 (= c!955672 ((_ is Cons!62187) zl!343))))

(assert (=> d!1739082 (= (unfocusZipperList!779 zl!343) lt!2235039)))

(declare-fun b!5470475 () Bool)

(assert (=> b!5470475 (= e!3386463 (Cons!62186 (generalisedConcat!1006 (exprs!5221 (h!68635 zl!343))) (unfocusZipperList!779 (t!375540 zl!343))))))

(declare-fun b!5470476 () Bool)

(assert (=> b!5470476 (= e!3386463 Nil!62186)))

(assert (= (and d!1739082 c!955672) b!5470475))

(assert (= (and d!1739082 (not c!955672)) b!5470476))

(declare-fun m!6488760 () Bool)

(assert (=> d!1739082 m!6488760))

(assert (=> b!5470475 m!6488728))

(declare-fun m!6488762 () Bool)

(assert (=> b!5470475 m!6488762))

(assert (=> b!5470415 d!1739082))

(declare-fun bs!1264890 () Bool)

(declare-fun d!1739084 () Bool)

(assert (= bs!1264890 (and d!1739084 d!1739080)))

(declare-fun lambda!291106 () Int)

(assert (=> bs!1264890 (= lambda!291106 lambda!291100)))

(declare-fun bs!1264891 () Bool)

(assert (= bs!1264891 (and d!1739084 d!1739082)))

(assert (=> bs!1264891 (= lambda!291106 lambda!291103)))

(declare-fun b!5470497 () Bool)

(declare-fun e!3386479 () Bool)

(declare-fun lt!2235042 () Regex!15337)

(declare-fun isEmptyExpr!1031 (Regex!15337) Bool)

(assert (=> b!5470497 (= e!3386479 (isEmptyExpr!1031 lt!2235042))))

(declare-fun b!5470498 () Bool)

(declare-fun e!3386480 () Bool)

(declare-fun isConcat!554 (Regex!15337) Bool)

(assert (=> b!5470498 (= e!3386480 (isConcat!554 lt!2235042))))

(declare-fun b!5470499 () Bool)

(declare-fun e!3386476 () Bool)

(assert (=> b!5470499 (= e!3386476 (isEmpty!34145 (t!375539 (exprs!5221 (h!68635 zl!343)))))))

(declare-fun b!5470500 () Bool)

(declare-fun e!3386477 () Regex!15337)

(assert (=> b!5470500 (= e!3386477 (h!68634 (exprs!5221 (h!68635 zl!343))))))

(declare-fun b!5470501 () Bool)

(assert (=> b!5470501 (= e!3386480 (= lt!2235042 (head!11716 (exprs!5221 (h!68635 zl!343)))))))

(declare-fun b!5470502 () Bool)

(declare-fun e!3386478 () Bool)

(assert (=> b!5470502 (= e!3386478 e!3386479)))

(declare-fun c!955681 () Bool)

(assert (=> b!5470502 (= c!955681 (isEmpty!34145 (exprs!5221 (h!68635 zl!343))))))

(assert (=> d!1739084 e!3386478))

(declare-fun res!2331316 () Bool)

(assert (=> d!1739084 (=> (not res!2331316) (not e!3386478))))

(assert (=> d!1739084 (= res!2331316 (validRegex!7073 lt!2235042))))

(assert (=> d!1739084 (= lt!2235042 e!3386477)))

(declare-fun c!955684 () Bool)

(assert (=> d!1739084 (= c!955684 e!3386476)))

(declare-fun res!2331315 () Bool)

(assert (=> d!1739084 (=> (not res!2331315) (not e!3386476))))

(assert (=> d!1739084 (= res!2331315 ((_ is Cons!62186) (exprs!5221 (h!68635 zl!343))))))

(assert (=> d!1739084 (forall!14605 (exprs!5221 (h!68635 zl!343)) lambda!291106)))

(assert (=> d!1739084 (= (generalisedConcat!1006 (exprs!5221 (h!68635 zl!343))) lt!2235042)))

(declare-fun b!5470503 () Bool)

(declare-fun e!3386481 () Regex!15337)

(assert (=> b!5470503 (= e!3386477 e!3386481)))

(declare-fun c!955683 () Bool)

(assert (=> b!5470503 (= c!955683 ((_ is Cons!62186) (exprs!5221 (h!68635 zl!343))))))

(declare-fun b!5470504 () Bool)

(assert (=> b!5470504 (= e!3386481 (Concat!24182 (h!68634 (exprs!5221 (h!68635 zl!343))) (generalisedConcat!1006 (t!375539 (exprs!5221 (h!68635 zl!343))))))))

(declare-fun b!5470505 () Bool)

(assert (=> b!5470505 (= e!3386479 e!3386480)))

(declare-fun c!955682 () Bool)

(assert (=> b!5470505 (= c!955682 (isEmpty!34145 (tail!10813 (exprs!5221 (h!68635 zl!343)))))))

(declare-fun b!5470506 () Bool)

(assert (=> b!5470506 (= e!3386481 EmptyExpr!15337)))

(assert (= (and d!1739084 res!2331315) b!5470499))

(assert (= (and d!1739084 c!955684) b!5470500))

(assert (= (and d!1739084 (not c!955684)) b!5470503))

(assert (= (and b!5470503 c!955683) b!5470504))

(assert (= (and b!5470503 (not c!955683)) b!5470506))

(assert (= (and d!1739084 res!2331316) b!5470502))

(assert (= (and b!5470502 c!955681) b!5470497))

(assert (= (and b!5470502 (not c!955681)) b!5470505))

(assert (= (and b!5470505 c!955682) b!5470501))

(assert (= (and b!5470505 (not c!955682)) b!5470498))

(declare-fun m!6488768 () Bool)

(assert (=> d!1739084 m!6488768))

(declare-fun m!6488770 () Bool)

(assert (=> d!1739084 m!6488770))

(declare-fun m!6488772 () Bool)

(assert (=> b!5470501 m!6488772))

(declare-fun m!6488774 () Bool)

(assert (=> b!5470499 m!6488774))

(declare-fun m!6488776 () Bool)

(assert (=> b!5470502 m!6488776))

(declare-fun m!6488778 () Bool)

(assert (=> b!5470497 m!6488778))

(declare-fun m!6488780 () Bool)

(assert (=> b!5470498 m!6488780))

(declare-fun m!6488782 () Bool)

(assert (=> b!5470505 m!6488782))

(assert (=> b!5470505 m!6488782))

(declare-fun m!6488784 () Bool)

(assert (=> b!5470505 m!6488784))

(declare-fun m!6488786 () Bool)

(assert (=> b!5470504 m!6488786))

(assert (=> b!5470416 d!1739084))

(declare-fun b!5470525 () Bool)

(declare-fun res!2331329 () Bool)

(declare-fun e!3386490 () Bool)

(assert (=> b!5470525 (=> (not res!2331329) (not e!3386490))))

(declare-fun lt!2235048 () List!62312)

(declare-fun size!39911 (List!62312) Int)

(assert (=> b!5470525 (= res!2331329 (= (size!39911 lt!2235048) (+ (size!39911 Nil!62188) (size!39911 s!2326))))))

(declare-fun d!1739092 () Bool)

(assert (=> d!1739092 e!3386490))

(declare-fun res!2331330 () Bool)

(assert (=> d!1739092 (=> (not res!2331330) (not e!3386490))))

(declare-fun content!11190 (List!62312) (InoxSet C!30944))

(assert (=> d!1739092 (= res!2331330 (= (content!11190 lt!2235048) ((_ map or) (content!11190 Nil!62188) (content!11190 s!2326))))))

(declare-fun e!3386491 () List!62312)

(assert (=> d!1739092 (= lt!2235048 e!3386491)))

(declare-fun c!955687 () Bool)

(assert (=> d!1739092 (= c!955687 ((_ is Nil!62188) Nil!62188))))

(assert (=> d!1739092 (= (++!13674 Nil!62188 s!2326) lt!2235048)))

(declare-fun b!5470523 () Bool)

(assert (=> b!5470523 (= e!3386491 s!2326)))

(declare-fun b!5470524 () Bool)

(assert (=> b!5470524 (= e!3386491 (Cons!62188 (h!68636 Nil!62188) (++!13674 (t!375541 Nil!62188) s!2326)))))

(declare-fun b!5470526 () Bool)

(assert (=> b!5470526 (= e!3386490 (or (not (= s!2326 Nil!62188)) (= lt!2235048 Nil!62188)))))

(assert (= (and d!1739092 c!955687) b!5470523))

(assert (= (and d!1739092 (not c!955687)) b!5470524))

(assert (= (and d!1739092 res!2331330) b!5470525))

(assert (= (and b!5470525 res!2331329) b!5470526))

(declare-fun m!6488796 () Bool)

(assert (=> b!5470525 m!6488796))

(declare-fun m!6488798 () Bool)

(assert (=> b!5470525 m!6488798))

(declare-fun m!6488800 () Bool)

(assert (=> b!5470525 m!6488800))

(declare-fun m!6488802 () Bool)

(assert (=> d!1739092 m!6488802))

(declare-fun m!6488804 () Bool)

(assert (=> d!1739092 m!6488804))

(declare-fun m!6488806 () Bool)

(assert (=> d!1739092 m!6488806))

(declare-fun m!6488808 () Bool)

(assert (=> b!5470524 m!6488808))

(assert (=> b!5470418 d!1739092))

(declare-fun b!5470555 () Bool)

(declare-fun e!3386512 () Bool)

(declare-fun e!3386515 () Bool)

(assert (=> b!5470555 (= e!3386512 e!3386515)))

(declare-fun c!955692 () Bool)

(assert (=> b!5470555 (= c!955692 ((_ is Union!15337) r!7292))))

(declare-fun b!5470556 () Bool)

(declare-fun e!3386513 () Bool)

(assert (=> b!5470556 (= e!3386512 e!3386513)))

(declare-fun res!2331353 () Bool)

(declare-fun nullable!5476 (Regex!15337) Bool)

(assert (=> b!5470556 (= res!2331353 (not (nullable!5476 (reg!15666 r!7292))))))

(assert (=> b!5470556 (=> (not res!2331353) (not e!3386513))))

(declare-fun d!1739098 () Bool)

(declare-fun res!2331355 () Bool)

(declare-fun e!3386516 () Bool)

(assert (=> d!1739098 (=> res!2331355 e!3386516)))

(assert (=> d!1739098 (= res!2331355 ((_ is ElementMatch!15337) r!7292))))

(assert (=> d!1739098 (= (validRegex!7073 r!7292) e!3386516)))

(declare-fun c!955693 () Bool)

(declare-fun call!403592 () Bool)

(declare-fun bm!403587 () Bool)

(assert (=> bm!403587 (= call!403592 (validRegex!7073 (ite c!955693 (reg!15666 r!7292) (ite c!955692 (regOne!31187 r!7292) (regOne!31186 r!7292)))))))

(declare-fun b!5470557 () Bool)

(declare-fun e!3386511 () Bool)

(declare-fun call!403594 () Bool)

(assert (=> b!5470557 (= e!3386511 call!403594)))

(declare-fun b!5470558 () Bool)

(assert (=> b!5470558 (= e!3386513 call!403592)))

(declare-fun b!5470559 () Bool)

(declare-fun res!2331351 () Bool)

(declare-fun e!3386514 () Bool)

(assert (=> b!5470559 (=> res!2331351 e!3386514)))

(assert (=> b!5470559 (= res!2331351 (not ((_ is Concat!24182) r!7292)))))

(assert (=> b!5470559 (= e!3386515 e!3386514)))

(declare-fun b!5470560 () Bool)

(declare-fun e!3386510 () Bool)

(assert (=> b!5470560 (= e!3386510 call!403594)))

(declare-fun b!5470561 () Bool)

(assert (=> b!5470561 (= e!3386514 e!3386510)))

(declare-fun res!2331352 () Bool)

(assert (=> b!5470561 (=> (not res!2331352) (not e!3386510))))

(declare-fun call!403593 () Bool)

(assert (=> b!5470561 (= res!2331352 call!403593)))

(declare-fun b!5470562 () Bool)

(assert (=> b!5470562 (= e!3386516 e!3386512)))

(assert (=> b!5470562 (= c!955693 ((_ is Star!15337) r!7292))))

(declare-fun bm!403588 () Bool)

(assert (=> bm!403588 (= call!403593 call!403592)))

(declare-fun bm!403589 () Bool)

(assert (=> bm!403589 (= call!403594 (validRegex!7073 (ite c!955692 (regTwo!31187 r!7292) (regTwo!31186 r!7292))))))

(declare-fun b!5470563 () Bool)

(declare-fun res!2331354 () Bool)

(assert (=> b!5470563 (=> (not res!2331354) (not e!3386511))))

(assert (=> b!5470563 (= res!2331354 call!403593)))

(assert (=> b!5470563 (= e!3386515 e!3386511)))

(assert (= (and d!1739098 (not res!2331355)) b!5470562))

(assert (= (and b!5470562 c!955693) b!5470556))

(assert (= (and b!5470562 (not c!955693)) b!5470555))

(assert (= (and b!5470556 res!2331353) b!5470558))

(assert (= (and b!5470555 c!955692) b!5470563))

(assert (= (and b!5470555 (not c!955692)) b!5470559))

(assert (= (and b!5470563 res!2331354) b!5470557))

(assert (= (and b!5470559 (not res!2331351)) b!5470561))

(assert (= (and b!5470561 res!2331352) b!5470560))

(assert (= (or b!5470557 b!5470560) bm!403589))

(assert (= (or b!5470563 b!5470561) bm!403588))

(assert (= (or b!5470558 bm!403588) bm!403587))

(declare-fun m!6488818 () Bool)

(assert (=> b!5470556 m!6488818))

(declare-fun m!6488820 () Bool)

(assert (=> bm!403587 m!6488820))

(declare-fun m!6488822 () Bool)

(assert (=> bm!403589 m!6488822))

(assert (=> start!572498 d!1739098))

(declare-fun d!1739106 () Bool)

(assert (=> d!1739106 (= (isEmpty!34143 (t!375540 zl!343)) ((_ is Nil!62187) (t!375540 zl!343)))))

(assert (=> b!5470419 d!1739106))

(declare-fun bs!1264899 () Bool)

(declare-fun d!1739108 () Bool)

(assert (= bs!1264899 (and d!1739108 d!1739080)))

(declare-fun lambda!291121 () Int)

(assert (=> bs!1264899 (= lambda!291121 lambda!291100)))

(declare-fun bs!1264900 () Bool)

(assert (= bs!1264900 (and d!1739108 d!1739082)))

(assert (=> bs!1264900 (= lambda!291121 lambda!291103)))

(declare-fun bs!1264901 () Bool)

(assert (= bs!1264901 (and d!1739108 d!1739084)))

(assert (=> bs!1264901 (= lambda!291121 lambda!291106)))

(assert (=> d!1739108 (= (inv!81589 (h!68635 zl!343)) (forall!14605 (exprs!5221 (h!68635 zl!343)) lambda!291121))))

(declare-fun bs!1264902 () Bool)

(assert (= bs!1264902 d!1739108))

(declare-fun m!6488824 () Bool)

(assert (=> bs!1264902 m!6488824))

(assert (=> b!5470400 d!1739108))

(declare-fun b!5470621 () Bool)

(declare-fun e!3386553 () (InoxSet Context!9442))

(assert (=> b!5470621 (= e!3386553 (store ((as const (Array Context!9442 Bool)) false) (Context!9443 Nil!62186) true))))

(declare-fun b!5470622 () Bool)

(declare-fun c!955712 () Bool)

(declare-fun e!3386550 () Bool)

(assert (=> b!5470622 (= c!955712 e!3386550)))

(declare-fun res!2331377 () Bool)

(assert (=> b!5470622 (=> (not res!2331377) (not e!3386550))))

(assert (=> b!5470622 (= res!2331377 ((_ is Concat!24182) r!7292))))

(declare-fun e!3386548 () (InoxSet Context!9442))

(declare-fun e!3386551 () (InoxSet Context!9442))

(assert (=> b!5470622 (= e!3386548 e!3386551)))

(declare-fun d!1739110 () Bool)

(declare-fun c!955715 () Bool)

(assert (=> d!1739110 (= c!955715 (and ((_ is ElementMatch!15337) r!7292) (= (c!955657 r!7292) (h!68636 s!2326))))))

(assert (=> d!1739110 (= (derivationStepZipperDown!763 r!7292 (Context!9443 Nil!62186) (h!68636 s!2326)) e!3386553)))

(declare-fun b!5470623 () Bool)

(assert (=> b!5470623 (= e!3386550 (nullable!5476 (regOne!31186 r!7292)))))

(declare-fun bm!403602 () Bool)

(declare-fun call!403608 () (InoxSet Context!9442))

(declare-fun call!403610 () (InoxSet Context!9442))

(assert (=> bm!403602 (= call!403608 call!403610)))

(declare-fun b!5470624 () Bool)

(declare-fun e!3386552 () (InoxSet Context!9442))

(assert (=> b!5470624 (= e!3386552 ((as const (Array Context!9442 Bool)) false))))

(declare-fun b!5470625 () Bool)

(assert (=> b!5470625 (= e!3386553 e!3386548)))

(declare-fun c!955713 () Bool)

(assert (=> b!5470625 (= c!955713 ((_ is Union!15337) r!7292))))

(declare-fun b!5470626 () Bool)

(declare-fun call!403607 () (InoxSet Context!9442))

(declare-fun call!403609 () (InoxSet Context!9442))

(assert (=> b!5470626 (= e!3386548 ((_ map or) call!403607 call!403609))))

(declare-fun b!5470627 () Bool)

(assert (=> b!5470627 (= e!3386551 ((_ map or) call!403607 call!403610))))

(declare-fun b!5470628 () Bool)

(declare-fun c!955716 () Bool)

(assert (=> b!5470628 (= c!955716 ((_ is Star!15337) r!7292))))

(declare-fun e!3386549 () (InoxSet Context!9442))

(assert (=> b!5470628 (= e!3386549 e!3386552)))

(declare-fun b!5470629 () Bool)

(assert (=> b!5470629 (= e!3386552 call!403608)))

(declare-fun bm!403603 () Bool)

(declare-fun call!403612 () List!62310)

(declare-fun call!403611 () List!62310)

(assert (=> bm!403603 (= call!403612 call!403611)))

(declare-fun b!5470630 () Bool)

(assert (=> b!5470630 (= e!3386551 e!3386549)))

(declare-fun c!955714 () Bool)

(assert (=> b!5470630 (= c!955714 ((_ is Concat!24182) r!7292))))

(declare-fun bm!403604 () Bool)

(assert (=> bm!403604 (= call!403607 (derivationStepZipperDown!763 (ite c!955713 (regOne!31187 r!7292) (regOne!31186 r!7292)) (ite c!955713 (Context!9443 Nil!62186) (Context!9443 call!403611)) (h!68636 s!2326)))))

(declare-fun b!5470631 () Bool)

(assert (=> b!5470631 (= e!3386549 call!403608)))

(declare-fun bm!403605 () Bool)

(declare-fun $colon$colon!1545 (List!62310 Regex!15337) List!62310)

(assert (=> bm!403605 (= call!403611 ($colon$colon!1545 (exprs!5221 (Context!9443 Nil!62186)) (ite (or c!955712 c!955714) (regTwo!31186 r!7292) r!7292)))))

(declare-fun bm!403606 () Bool)

(assert (=> bm!403606 (= call!403609 (derivationStepZipperDown!763 (ite c!955713 (regTwo!31187 r!7292) (ite c!955712 (regTwo!31186 r!7292) (ite c!955714 (regOne!31186 r!7292) (reg!15666 r!7292)))) (ite (or c!955713 c!955712) (Context!9443 Nil!62186) (Context!9443 call!403612)) (h!68636 s!2326)))))

(declare-fun bm!403607 () Bool)

(assert (=> bm!403607 (= call!403610 call!403609)))

(assert (= (and d!1739110 c!955715) b!5470621))

(assert (= (and d!1739110 (not c!955715)) b!5470625))

(assert (= (and b!5470625 c!955713) b!5470626))

(assert (= (and b!5470625 (not c!955713)) b!5470622))

(assert (= (and b!5470622 res!2331377) b!5470623))

(assert (= (and b!5470622 c!955712) b!5470627))

(assert (= (and b!5470622 (not c!955712)) b!5470630))

(assert (= (and b!5470630 c!955714) b!5470631))

(assert (= (and b!5470630 (not c!955714)) b!5470628))

(assert (= (and b!5470628 c!955716) b!5470629))

(assert (= (and b!5470628 (not c!955716)) b!5470624))

(assert (= (or b!5470631 b!5470629) bm!403603))

(assert (= (or b!5470631 b!5470629) bm!403602))

(assert (= (or b!5470627 bm!403603) bm!403605))

(assert (= (or b!5470627 bm!403602) bm!403607))

(assert (= (or b!5470626 bm!403607) bm!403606))

(assert (= (or b!5470626 b!5470627) bm!403604))

(declare-fun m!6488872 () Bool)

(assert (=> bm!403604 m!6488872))

(declare-fun m!6488874 () Bool)

(assert (=> b!5470621 m!6488874))

(declare-fun m!6488876 () Bool)

(assert (=> bm!403606 m!6488876))

(declare-fun m!6488878 () Bool)

(assert (=> b!5470623 m!6488878))

(declare-fun m!6488880 () Bool)

(assert (=> bm!403605 m!6488880))

(assert (=> b!5470422 d!1739110))

(declare-fun b!5470676 () Bool)

(declare-fun e!3386579 () (InoxSet Context!9442))

(declare-fun call!403615 () (InoxSet Context!9442))

(assert (=> b!5470676 (= e!3386579 call!403615)))

(declare-fun b!5470677 () Bool)

(declare-fun e!3386578 () Bool)

(assert (=> b!5470677 (= e!3386578 (nullable!5476 (h!68634 (exprs!5221 (Context!9443 (Cons!62186 r!7292 Nil!62186))))))))

(declare-fun b!5470678 () Bool)

(assert (=> b!5470678 (= e!3386579 ((as const (Array Context!9442 Bool)) false))))

(declare-fun bm!403610 () Bool)

(assert (=> bm!403610 (= call!403615 (derivationStepZipperDown!763 (h!68634 (exprs!5221 (Context!9443 (Cons!62186 r!7292 Nil!62186)))) (Context!9443 (t!375539 (exprs!5221 (Context!9443 (Cons!62186 r!7292 Nil!62186))))) (h!68636 s!2326)))))

(declare-fun b!5470679 () Bool)

(declare-fun e!3386580 () (InoxSet Context!9442))

(assert (=> b!5470679 (= e!3386580 e!3386579)))

(declare-fun c!955734 () Bool)

(assert (=> b!5470679 (= c!955734 ((_ is Cons!62186) (exprs!5221 (Context!9443 (Cons!62186 r!7292 Nil!62186)))))))

(declare-fun d!1739120 () Bool)

(declare-fun c!955733 () Bool)

(assert (=> d!1739120 (= c!955733 e!3386578)))

(declare-fun res!2331392 () Bool)

(assert (=> d!1739120 (=> (not res!2331392) (not e!3386578))))

(assert (=> d!1739120 (= res!2331392 ((_ is Cons!62186) (exprs!5221 (Context!9443 (Cons!62186 r!7292 Nil!62186)))))))

(assert (=> d!1739120 (= (derivationStepZipperUp!689 (Context!9443 (Cons!62186 r!7292 Nil!62186)) (h!68636 s!2326)) e!3386580)))

(declare-fun b!5470680 () Bool)

(assert (=> b!5470680 (= e!3386580 ((_ map or) call!403615 (derivationStepZipperUp!689 (Context!9443 (t!375539 (exprs!5221 (Context!9443 (Cons!62186 r!7292 Nil!62186))))) (h!68636 s!2326))))))

(assert (= (and d!1739120 res!2331392) b!5470677))

(assert (= (and d!1739120 c!955733) b!5470680))

(assert (= (and d!1739120 (not c!955733)) b!5470679))

(assert (= (and b!5470679 c!955734) b!5470676))

(assert (= (and b!5470679 (not c!955734)) b!5470678))

(assert (= (or b!5470680 b!5470676) bm!403610))

(declare-fun m!6488884 () Bool)

(assert (=> b!5470677 m!6488884))

(declare-fun m!6488886 () Bool)

(assert (=> bm!403610 m!6488886))

(declare-fun m!6488888 () Bool)

(assert (=> b!5470680 m!6488888))

(assert (=> b!5470422 d!1739120))

(declare-fun bs!1264909 () Bool)

(declare-fun d!1739124 () Bool)

(assert (= bs!1264909 (and d!1739124 b!5470423)))

(declare-fun lambda!291134 () Int)

(assert (=> bs!1264909 (= lambda!291134 lambda!291097)))

(assert (=> d!1739124 true))

(assert (=> d!1739124 (= (derivationStepZipper!1532 z!1189 (h!68636 s!2326)) (flatMap!1040 z!1189 lambda!291134))))

(declare-fun bs!1264910 () Bool)

(assert (= bs!1264910 d!1739124))

(declare-fun m!6488890 () Bool)

(assert (=> bs!1264910 m!6488890))

(assert (=> b!5470422 d!1739124))

(declare-fun bs!1264923 () Bool)

(declare-fun b!5470782 () Bool)

(assert (= bs!1264923 (and b!5470782 b!5470411)))

(declare-fun lambda!291144 () Int)

(assert (=> bs!1264923 (not (= lambda!291144 lambda!291094))))

(assert (=> bs!1264923 (= lambda!291144 lambda!291095)))

(assert (=> bs!1264923 (not (= lambda!291144 lambda!291096))))

(assert (=> b!5470782 true))

(assert (=> b!5470782 true))

(declare-fun bs!1264924 () Bool)

(declare-fun b!5470776 () Bool)

(assert (= bs!1264924 (and b!5470776 b!5470411)))

(declare-fun lambda!291145 () Int)

(assert (=> bs!1264924 (not (= lambda!291145 lambda!291094))))

(assert (=> bs!1264924 (not (= lambda!291145 lambda!291095))))

(assert (=> bs!1264924 (= (and (= (regOne!31186 r!7292) (reg!15666 r!7292)) (= (regTwo!31186 r!7292) r!7292)) (= lambda!291145 lambda!291096))))

(declare-fun bs!1264925 () Bool)

(assert (= bs!1264925 (and b!5470776 b!5470782)))

(assert (=> bs!1264925 (not (= lambda!291145 lambda!291144))))

(assert (=> b!5470776 true))

(assert (=> b!5470776 true))

(declare-fun b!5470772 () Bool)

(declare-fun res!2331440 () Bool)

(declare-fun e!3386629 () Bool)

(assert (=> b!5470772 (=> res!2331440 e!3386629)))

(declare-fun call!403629 () Bool)

(assert (=> b!5470772 (= res!2331440 call!403629)))

(declare-fun e!3386635 () Bool)

(assert (=> b!5470772 (= e!3386635 e!3386629)))

(declare-fun bm!403624 () Bool)

(declare-fun call!403630 () Bool)

(declare-fun c!955759 () Bool)

(assert (=> bm!403624 (= call!403630 (Exists!2516 (ite c!955759 lambda!291144 lambda!291145)))))

(declare-fun b!5470773 () Bool)

(declare-fun e!3386632 () Bool)

(declare-fun e!3386634 () Bool)

(assert (=> b!5470773 (= e!3386632 e!3386634)))

(declare-fun res!2331442 () Bool)

(assert (=> b!5470773 (= res!2331442 (not ((_ is EmptyLang!15337) r!7292)))))

(assert (=> b!5470773 (=> (not res!2331442) (not e!3386634))))

(declare-fun d!1739126 () Bool)

(declare-fun c!955760 () Bool)

(assert (=> d!1739126 (= c!955760 ((_ is EmptyExpr!15337) r!7292))))

(assert (=> d!1739126 (= (matchRSpec!2440 r!7292 s!2326) e!3386632)))

(declare-fun b!5470774 () Bool)

(declare-fun e!3386633 () Bool)

(assert (=> b!5470774 (= e!3386633 (= s!2326 (Cons!62188 (c!955657 r!7292) Nil!62188)))))

(declare-fun b!5470775 () Bool)

(assert (=> b!5470775 (= e!3386632 call!403629)))

(assert (=> b!5470776 (= e!3386635 call!403630)))

(declare-fun b!5470777 () Bool)

(declare-fun e!3386630 () Bool)

(declare-fun e!3386631 () Bool)

(assert (=> b!5470777 (= e!3386630 e!3386631)))

(declare-fun res!2331441 () Bool)

(assert (=> b!5470777 (= res!2331441 (matchRSpec!2440 (regOne!31187 r!7292) s!2326))))

(assert (=> b!5470777 (=> res!2331441 e!3386631)))

(declare-fun b!5470778 () Bool)

(declare-fun c!955761 () Bool)

(assert (=> b!5470778 (= c!955761 ((_ is ElementMatch!15337) r!7292))))

(assert (=> b!5470778 (= e!3386634 e!3386633)))

(declare-fun b!5470779 () Bool)

(assert (=> b!5470779 (= e!3386630 e!3386635)))

(assert (=> b!5470779 (= c!955759 ((_ is Star!15337) r!7292))))

(declare-fun b!5470780 () Bool)

(declare-fun c!955758 () Bool)

(assert (=> b!5470780 (= c!955758 ((_ is Union!15337) r!7292))))

(assert (=> b!5470780 (= e!3386633 e!3386630)))

(declare-fun bm!403625 () Bool)

(assert (=> bm!403625 (= call!403629 (isEmpty!34142 s!2326))))

(declare-fun b!5470781 () Bool)

(assert (=> b!5470781 (= e!3386631 (matchRSpec!2440 (regTwo!31187 r!7292) s!2326))))

(assert (=> b!5470782 (= e!3386629 call!403630)))

(assert (= (and d!1739126 c!955760) b!5470775))

(assert (= (and d!1739126 (not c!955760)) b!5470773))

(assert (= (and b!5470773 res!2331442) b!5470778))

(assert (= (and b!5470778 c!955761) b!5470774))

(assert (= (and b!5470778 (not c!955761)) b!5470780))

(assert (= (and b!5470780 c!955758) b!5470777))

(assert (= (and b!5470780 (not c!955758)) b!5470779))

(assert (= (and b!5470777 (not res!2331441)) b!5470781))

(assert (= (and b!5470779 c!955759) b!5470772))

(assert (= (and b!5470779 (not c!955759)) b!5470776))

(assert (= (and b!5470772 (not res!2331440)) b!5470782))

(assert (= (or b!5470782 b!5470776) bm!403624))

(assert (= (or b!5470775 b!5470772) bm!403625))

(declare-fun m!6488918 () Bool)

(assert (=> bm!403624 m!6488918))

(declare-fun m!6488920 () Bool)

(assert (=> b!5470777 m!6488920))

(assert (=> bm!403625 m!6488708))

(declare-fun m!6488922 () Bool)

(assert (=> b!5470781 m!6488922))

(assert (=> b!5470401 d!1739126))

(declare-fun bm!403631 () Bool)

(declare-fun call!403636 () Bool)

(assert (=> bm!403631 (= call!403636 (isEmpty!34142 s!2326))))

(declare-fun b!5470880 () Bool)

(declare-fun e!3386690 () Bool)

(declare-fun head!11718 (List!62312) C!30944)

(assert (=> b!5470880 (= e!3386690 (= (head!11718 s!2326) (c!955657 r!7292)))))

(declare-fun b!5470882 () Bool)

(declare-fun e!3386693 () Bool)

(assert (=> b!5470882 (= e!3386693 (nullable!5476 r!7292))))

(declare-fun b!5470883 () Bool)

(declare-fun e!3386687 () Bool)

(declare-fun e!3386689 () Bool)

(assert (=> b!5470883 (= e!3386687 e!3386689)))

(declare-fun res!2331484 () Bool)

(assert (=> b!5470883 (=> res!2331484 e!3386689)))

(assert (=> b!5470883 (= res!2331484 call!403636)))

(declare-fun b!5470884 () Bool)

(assert (=> b!5470884 (= e!3386689 (not (= (head!11718 s!2326) (c!955657 r!7292))))))

(declare-fun b!5470885 () Bool)

(declare-fun e!3386694 () Bool)

(declare-fun e!3386696 () Bool)

(assert (=> b!5470885 (= e!3386694 e!3386696)))

(declare-fun c!955793 () Bool)

(assert (=> b!5470885 (= c!955793 ((_ is EmptyLang!15337) r!7292))))

(declare-fun b!5470886 () Bool)

(declare-fun res!2331481 () Bool)

(assert (=> b!5470886 (=> res!2331481 e!3386689)))

(declare-fun tail!10815 (List!62312) List!62312)

(assert (=> b!5470886 (= res!2331481 (not (isEmpty!34142 (tail!10815 s!2326))))))

(declare-fun b!5470887 () Bool)

(declare-fun lt!2235080 () Bool)

(assert (=> b!5470887 (= e!3386696 (not lt!2235080))))

(declare-fun d!1739138 () Bool)

(assert (=> d!1739138 e!3386694))

(declare-fun c!955795 () Bool)

(assert (=> d!1739138 (= c!955795 ((_ is EmptyExpr!15337) r!7292))))

(assert (=> d!1739138 (= lt!2235080 e!3386693)))

(declare-fun c!955794 () Bool)

(assert (=> d!1739138 (= c!955794 (isEmpty!34142 s!2326))))

(assert (=> d!1739138 (validRegex!7073 r!7292)))

(assert (=> d!1739138 (= (matchR!7522 r!7292 s!2326) lt!2235080)))

(declare-fun b!5470881 () Bool)

(assert (=> b!5470881 (= e!3386694 (= lt!2235080 call!403636))))

(declare-fun b!5470888 () Bool)

(declare-fun res!2331485 () Bool)

(assert (=> b!5470888 (=> (not res!2331485) (not e!3386690))))

(assert (=> b!5470888 (= res!2331485 (not call!403636))))

(declare-fun b!5470889 () Bool)

(declare-fun res!2331476 () Bool)

(declare-fun e!3386695 () Bool)

(assert (=> b!5470889 (=> res!2331476 e!3386695)))

(assert (=> b!5470889 (= res!2331476 (not ((_ is ElementMatch!15337) r!7292)))))

(assert (=> b!5470889 (= e!3386696 e!3386695)))

(declare-fun b!5470890 () Bool)

(declare-fun res!2331483 () Bool)

(assert (=> b!5470890 (=> res!2331483 e!3386695)))

(assert (=> b!5470890 (= res!2331483 e!3386690)))

(declare-fun res!2331479 () Bool)

(assert (=> b!5470890 (=> (not res!2331479) (not e!3386690))))

(assert (=> b!5470890 (= res!2331479 lt!2235080)))

(declare-fun b!5470891 () Bool)

(declare-fun derivativeStep!4321 (Regex!15337 C!30944) Regex!15337)

(assert (=> b!5470891 (= e!3386693 (matchR!7522 (derivativeStep!4321 r!7292 (head!11718 s!2326)) (tail!10815 s!2326)))))

(declare-fun b!5470892 () Bool)

(assert (=> b!5470892 (= e!3386695 e!3386687)))

(declare-fun res!2331482 () Bool)

(assert (=> b!5470892 (=> (not res!2331482) (not e!3386687))))

(assert (=> b!5470892 (= res!2331482 (not lt!2235080))))

(declare-fun b!5470893 () Bool)

(declare-fun res!2331480 () Bool)

(assert (=> b!5470893 (=> (not res!2331480) (not e!3386690))))

(assert (=> b!5470893 (= res!2331480 (isEmpty!34142 (tail!10815 s!2326)))))

(assert (= (and d!1739138 c!955794) b!5470882))

(assert (= (and d!1739138 (not c!955794)) b!5470891))

(assert (= (and d!1739138 c!955795) b!5470881))

(assert (= (and d!1739138 (not c!955795)) b!5470885))

(assert (= (and b!5470885 c!955793) b!5470887))

(assert (= (and b!5470885 (not c!955793)) b!5470889))

(assert (= (and b!5470889 (not res!2331476)) b!5470890))

(assert (= (and b!5470890 res!2331479) b!5470888))

(assert (= (and b!5470888 res!2331485) b!5470893))

(assert (= (and b!5470893 res!2331480) b!5470880))

(assert (= (and b!5470890 (not res!2331483)) b!5470892))

(assert (= (and b!5470892 res!2331482) b!5470883))

(assert (= (and b!5470883 (not res!2331484)) b!5470886))

(assert (= (and b!5470886 (not res!2331481)) b!5470884))

(assert (= (or b!5470881 b!5470883 b!5470888) bm!403631))

(declare-fun m!6488958 () Bool)

(assert (=> b!5470893 m!6488958))

(assert (=> b!5470893 m!6488958))

(declare-fun m!6488960 () Bool)

(assert (=> b!5470893 m!6488960))

(assert (=> bm!403631 m!6488708))

(declare-fun m!6488962 () Bool)

(assert (=> b!5470882 m!6488962))

(declare-fun m!6488964 () Bool)

(assert (=> b!5470891 m!6488964))

(assert (=> b!5470891 m!6488964))

(declare-fun m!6488966 () Bool)

(assert (=> b!5470891 m!6488966))

(assert (=> b!5470891 m!6488958))

(assert (=> b!5470891 m!6488966))

(assert (=> b!5470891 m!6488958))

(declare-fun m!6488968 () Bool)

(assert (=> b!5470891 m!6488968))

(assert (=> b!5470884 m!6488964))

(assert (=> b!5470880 m!6488964))

(assert (=> b!5470886 m!6488958))

(assert (=> b!5470886 m!6488958))

(assert (=> b!5470886 m!6488960))

(assert (=> d!1739138 m!6488708))

(assert (=> d!1739138 m!6488638))

(assert (=> b!5470401 d!1739138))

(declare-fun d!1739148 () Bool)

(assert (=> d!1739148 (= (matchR!7522 r!7292 s!2326) (matchRSpec!2440 r!7292 s!2326))))

(declare-fun lt!2235083 () Unit!155124)

(declare-fun choose!41600 (Regex!15337 List!62312) Unit!155124)

(assert (=> d!1739148 (= lt!2235083 (choose!41600 r!7292 s!2326))))

(assert (=> d!1739148 (validRegex!7073 r!7292)))

(assert (=> d!1739148 (= (mainMatchTheorem!2440 r!7292 s!2326) lt!2235083)))

(declare-fun bs!1264941 () Bool)

(assert (= bs!1264941 d!1739148))

(assert (=> bs!1264941 m!6488668))

(assert (=> bs!1264941 m!6488666))

(declare-fun m!6488970 () Bool)

(assert (=> bs!1264941 m!6488970))

(assert (=> bs!1264941 m!6488638))

(assert (=> b!5470401 d!1739148))

(declare-fun d!1739150 () Bool)

(declare-fun choose!41601 ((InoxSet Context!9442) Int) (InoxSet Context!9442))

(assert (=> d!1739150 (= (flatMap!1040 z!1189 lambda!291097) (choose!41601 z!1189 lambda!291097))))

(declare-fun bs!1264942 () Bool)

(assert (= bs!1264942 d!1739150))

(declare-fun m!6488972 () Bool)

(assert (=> bs!1264942 m!6488972))

(assert (=> b!5470423 d!1739150))

(declare-fun b!5470902 () Bool)

(declare-fun e!3386702 () (InoxSet Context!9442))

(declare-fun call!403649 () (InoxSet Context!9442))

(assert (=> b!5470902 (= e!3386702 call!403649)))

(declare-fun b!5470903 () Bool)

(declare-fun e!3386701 () Bool)

(assert (=> b!5470903 (= e!3386701 (nullable!5476 (h!68634 (exprs!5221 (h!68635 zl!343)))))))

(declare-fun b!5470904 () Bool)

(assert (=> b!5470904 (= e!3386702 ((as const (Array Context!9442 Bool)) false))))

(declare-fun bm!403644 () Bool)

(assert (=> bm!403644 (= call!403649 (derivationStepZipperDown!763 (h!68634 (exprs!5221 (h!68635 zl!343))) (Context!9443 (t!375539 (exprs!5221 (h!68635 zl!343)))) (h!68636 s!2326)))))

(declare-fun b!5470905 () Bool)

(declare-fun e!3386703 () (InoxSet Context!9442))

(assert (=> b!5470905 (= e!3386703 e!3386702)))

(declare-fun c!955801 () Bool)

(assert (=> b!5470905 (= c!955801 ((_ is Cons!62186) (exprs!5221 (h!68635 zl!343))))))

(declare-fun d!1739152 () Bool)

(declare-fun c!955800 () Bool)

(assert (=> d!1739152 (= c!955800 e!3386701)))

(declare-fun res!2331486 () Bool)

(assert (=> d!1739152 (=> (not res!2331486) (not e!3386701))))

(assert (=> d!1739152 (= res!2331486 ((_ is Cons!62186) (exprs!5221 (h!68635 zl!343))))))

(assert (=> d!1739152 (= (derivationStepZipperUp!689 (h!68635 zl!343) (h!68636 s!2326)) e!3386703)))

(declare-fun b!5470906 () Bool)

(assert (=> b!5470906 (= e!3386703 ((_ map or) call!403649 (derivationStepZipperUp!689 (Context!9443 (t!375539 (exprs!5221 (h!68635 zl!343)))) (h!68636 s!2326))))))

(assert (= (and d!1739152 res!2331486) b!5470903))

(assert (= (and d!1739152 c!955800) b!5470906))

(assert (= (and d!1739152 (not c!955800)) b!5470905))

(assert (= (and b!5470905 c!955801) b!5470902))

(assert (= (and b!5470905 (not c!955801)) b!5470904))

(assert (= (or b!5470906 b!5470902) bm!403644))

(declare-fun m!6488974 () Bool)

(assert (=> b!5470903 m!6488974))

(declare-fun m!6488976 () Bool)

(assert (=> bm!403644 m!6488976))

(declare-fun m!6488978 () Bool)

(assert (=> b!5470906 m!6488978))

(assert (=> b!5470423 d!1739152))

(declare-fun d!1739154 () Bool)

(declare-fun dynLambda!24422 (Int Context!9442) (InoxSet Context!9442))

(assert (=> d!1739154 (= (flatMap!1040 z!1189 lambda!291097) (dynLambda!24422 lambda!291097 (h!68635 zl!343)))))

(declare-fun lt!2235086 () Unit!155124)

(declare-fun choose!41602 ((InoxSet Context!9442) Context!9442 Int) Unit!155124)

(assert (=> d!1739154 (= lt!2235086 (choose!41602 z!1189 (h!68635 zl!343) lambda!291097))))

(assert (=> d!1739154 (= z!1189 (store ((as const (Array Context!9442 Bool)) false) (h!68635 zl!343) true))))

(assert (=> d!1739154 (= (lemmaFlatMapOnSingletonSet!572 z!1189 (h!68635 zl!343) lambda!291097) lt!2235086)))

(declare-fun b_lambda!207947 () Bool)

(assert (=> (not b_lambda!207947) (not d!1739154)))

(declare-fun bs!1264943 () Bool)

(assert (= bs!1264943 d!1739154))

(assert (=> bs!1264943 m!6488700))

(declare-fun m!6488988 () Bool)

(assert (=> bs!1264943 m!6488988))

(declare-fun m!6488990 () Bool)

(assert (=> bs!1264943 m!6488990))

(declare-fun m!6488992 () Bool)

(assert (=> bs!1264943 m!6488992))

(assert (=> b!5470423 d!1739154))

(assert (=> b!5470424 d!1739098))

(declare-fun d!1739158 () Bool)

(declare-fun c!955813 () Bool)

(assert (=> d!1739158 (= c!955813 (isEmpty!34142 s!2326))))

(declare-fun e!3386718 () Bool)

(assert (=> d!1739158 (= (matchZipper!1555 lt!2235011 s!2326) e!3386718)))

(declare-fun b!5470932 () Bool)

(declare-fun nullableZipper!1498 ((InoxSet Context!9442)) Bool)

(assert (=> b!5470932 (= e!3386718 (nullableZipper!1498 lt!2235011))))

(declare-fun b!5470933 () Bool)

(assert (=> b!5470933 (= e!3386718 (matchZipper!1555 (derivationStepZipper!1532 lt!2235011 (head!11718 s!2326)) (tail!10815 s!2326)))))

(assert (= (and d!1739158 c!955813) b!5470932))

(assert (= (and d!1739158 (not c!955813)) b!5470933))

(assert (=> d!1739158 m!6488708))

(declare-fun m!6488996 () Bool)

(assert (=> b!5470932 m!6488996))

(assert (=> b!5470933 m!6488964))

(assert (=> b!5470933 m!6488964))

(declare-fun m!6488998 () Bool)

(assert (=> b!5470933 m!6488998))

(assert (=> b!5470933 m!6488958))

(assert (=> b!5470933 m!6488998))

(assert (=> b!5470933 m!6488958))

(declare-fun m!6489000 () Bool)

(assert (=> b!5470933 m!6489000))

(assert (=> b!5470403 d!1739158))

(declare-fun d!1739162 () Bool)

(declare-fun c!955814 () Bool)

(assert (=> d!1739162 (= c!955814 (isEmpty!34142 (t!375541 s!2326)))))

(declare-fun e!3386719 () Bool)

(assert (=> d!1739162 (= (matchZipper!1555 (derivationStepZipper!1532 lt!2235011 (h!68636 s!2326)) (t!375541 s!2326)) e!3386719)))

(declare-fun b!5470934 () Bool)

(assert (=> b!5470934 (= e!3386719 (nullableZipper!1498 (derivationStepZipper!1532 lt!2235011 (h!68636 s!2326))))))

(declare-fun b!5470935 () Bool)

(assert (=> b!5470935 (= e!3386719 (matchZipper!1555 (derivationStepZipper!1532 (derivationStepZipper!1532 lt!2235011 (h!68636 s!2326)) (head!11718 (t!375541 s!2326))) (tail!10815 (t!375541 s!2326))))))

(assert (= (and d!1739162 c!955814) b!5470934))

(assert (= (and d!1739162 (not c!955814)) b!5470935))

(declare-fun m!6489002 () Bool)

(assert (=> d!1739162 m!6489002))

(assert (=> b!5470934 m!6488724))

(declare-fun m!6489004 () Bool)

(assert (=> b!5470934 m!6489004))

(declare-fun m!6489006 () Bool)

(assert (=> b!5470935 m!6489006))

(assert (=> b!5470935 m!6488724))

(assert (=> b!5470935 m!6489006))

(declare-fun m!6489008 () Bool)

(assert (=> b!5470935 m!6489008))

(declare-fun m!6489010 () Bool)

(assert (=> b!5470935 m!6489010))

(assert (=> b!5470935 m!6489008))

(assert (=> b!5470935 m!6489010))

(declare-fun m!6489012 () Bool)

(assert (=> b!5470935 m!6489012))

(assert (=> b!5470403 d!1739162))

(declare-fun bs!1264945 () Bool)

(declare-fun d!1739164 () Bool)

(assert (= bs!1264945 (and d!1739164 b!5470423)))

(declare-fun lambda!291151 () Int)

(assert (=> bs!1264945 (= lambda!291151 lambda!291097)))

(declare-fun bs!1264946 () Bool)

(assert (= bs!1264946 (and d!1739164 d!1739124)))

(assert (=> bs!1264946 (= lambda!291151 lambda!291134)))

(assert (=> d!1739164 true))

(assert (=> d!1739164 (= (derivationStepZipper!1532 lt!2235011 (h!68636 s!2326)) (flatMap!1040 lt!2235011 lambda!291151))))

(declare-fun bs!1264947 () Bool)

(assert (= bs!1264947 d!1739164))

(declare-fun m!6489014 () Bool)

(assert (=> bs!1264947 m!6489014))

(assert (=> b!5470403 d!1739164))

(declare-fun d!1739166 () Bool)

(declare-fun lt!2235089 () Regex!15337)

(assert (=> d!1739166 (validRegex!7073 lt!2235089)))

(assert (=> d!1739166 (= lt!2235089 (generalisedUnion!1266 (unfocusZipperList!779 (Cons!62187 lt!2235007 Nil!62187))))))

(assert (=> d!1739166 (= (unfocusZipper!1079 (Cons!62187 lt!2235007 Nil!62187)) lt!2235089)))

(declare-fun bs!1264948 () Bool)

(assert (= bs!1264948 d!1739166))

(declare-fun m!6489022 () Bool)

(assert (=> bs!1264948 m!6489022))

(declare-fun m!6489024 () Bool)

(assert (=> bs!1264948 m!6489024))

(assert (=> bs!1264948 m!6489024))

(declare-fun m!6489026 () Bool)

(assert (=> bs!1264948 m!6489026))

(assert (=> b!5470425 d!1739166))

(declare-fun d!1739170 () Bool)

(declare-fun e!3386725 () Bool)

(assert (=> d!1739170 e!3386725))

(declare-fun res!2331493 () Bool)

(assert (=> d!1739170 (=> (not res!2331493) (not e!3386725))))

(declare-fun lt!2235096 () List!62311)

(declare-fun noDuplicate!1449 (List!62311) Bool)

(assert (=> d!1739170 (= res!2331493 (noDuplicate!1449 lt!2235096))))

(declare-fun choose!41603 ((InoxSet Context!9442)) List!62311)

(assert (=> d!1739170 (= lt!2235096 (choose!41603 z!1189))))

(assert (=> d!1739170 (= (toList!9121 z!1189) lt!2235096)))

(declare-fun b!5470943 () Bool)

(declare-fun content!11191 (List!62311) (InoxSet Context!9442))

(assert (=> b!5470943 (= e!3386725 (= (content!11191 lt!2235096) z!1189))))

(assert (= (and d!1739170 res!2331493) b!5470943))

(declare-fun m!6489038 () Bool)

(assert (=> d!1739170 m!6489038))

(declare-fun m!6489040 () Bool)

(assert (=> d!1739170 m!6489040))

(declare-fun m!6489042 () Bool)

(assert (=> b!5470943 m!6489042))

(assert (=> b!5470404 d!1739170))

(declare-fun b!5470944 () Bool)

(declare-fun e!3386731 () (InoxSet Context!9442))

(assert (=> b!5470944 (= e!3386731 (store ((as const (Array Context!9442 Bool)) false) lt!2235033 true))))

(declare-fun b!5470945 () Bool)

(declare-fun c!955817 () Bool)

(declare-fun e!3386728 () Bool)

(assert (=> b!5470945 (= c!955817 e!3386728)))

(declare-fun res!2331494 () Bool)

(assert (=> b!5470945 (=> (not res!2331494) (not e!3386728))))

(assert (=> b!5470945 (= res!2331494 ((_ is Concat!24182) (reg!15666 r!7292)))))

(declare-fun e!3386726 () (InoxSet Context!9442))

(declare-fun e!3386729 () (InoxSet Context!9442))

(assert (=> b!5470945 (= e!3386726 e!3386729)))

(declare-fun d!1739176 () Bool)

(declare-fun c!955820 () Bool)

(assert (=> d!1739176 (= c!955820 (and ((_ is ElementMatch!15337) (reg!15666 r!7292)) (= (c!955657 (reg!15666 r!7292)) (h!68636 s!2326))))))

(assert (=> d!1739176 (= (derivationStepZipperDown!763 (reg!15666 r!7292) lt!2235033 (h!68636 s!2326)) e!3386731)))

(declare-fun b!5470946 () Bool)

(assert (=> b!5470946 (= e!3386728 (nullable!5476 (regOne!31186 (reg!15666 r!7292))))))

(declare-fun bm!403654 () Bool)

(declare-fun call!403660 () (InoxSet Context!9442))

(declare-fun call!403662 () (InoxSet Context!9442))

(assert (=> bm!403654 (= call!403660 call!403662)))

(declare-fun b!5470947 () Bool)

(declare-fun e!3386730 () (InoxSet Context!9442))

(assert (=> b!5470947 (= e!3386730 ((as const (Array Context!9442 Bool)) false))))

(declare-fun b!5470948 () Bool)

(assert (=> b!5470948 (= e!3386731 e!3386726)))

(declare-fun c!955818 () Bool)

(assert (=> b!5470948 (= c!955818 ((_ is Union!15337) (reg!15666 r!7292)))))

(declare-fun b!5470949 () Bool)

(declare-fun call!403659 () (InoxSet Context!9442))

(declare-fun call!403661 () (InoxSet Context!9442))

(assert (=> b!5470949 (= e!3386726 ((_ map or) call!403659 call!403661))))

(declare-fun b!5470950 () Bool)

(assert (=> b!5470950 (= e!3386729 ((_ map or) call!403659 call!403662))))

(declare-fun b!5470951 () Bool)

(declare-fun c!955821 () Bool)

(assert (=> b!5470951 (= c!955821 ((_ is Star!15337) (reg!15666 r!7292)))))

(declare-fun e!3386727 () (InoxSet Context!9442))

(assert (=> b!5470951 (= e!3386727 e!3386730)))

(declare-fun b!5470952 () Bool)

(assert (=> b!5470952 (= e!3386730 call!403660)))

(declare-fun bm!403655 () Bool)

(declare-fun call!403664 () List!62310)

(declare-fun call!403663 () List!62310)

(assert (=> bm!403655 (= call!403664 call!403663)))

(declare-fun b!5470953 () Bool)

(assert (=> b!5470953 (= e!3386729 e!3386727)))

(declare-fun c!955819 () Bool)

(assert (=> b!5470953 (= c!955819 ((_ is Concat!24182) (reg!15666 r!7292)))))

(declare-fun bm!403656 () Bool)

(assert (=> bm!403656 (= call!403659 (derivationStepZipperDown!763 (ite c!955818 (regOne!31187 (reg!15666 r!7292)) (regOne!31186 (reg!15666 r!7292))) (ite c!955818 lt!2235033 (Context!9443 call!403663)) (h!68636 s!2326)))))

(declare-fun b!5470954 () Bool)

(assert (=> b!5470954 (= e!3386727 call!403660)))

(declare-fun bm!403657 () Bool)

(assert (=> bm!403657 (= call!403663 ($colon$colon!1545 (exprs!5221 lt!2235033) (ite (or c!955817 c!955819) (regTwo!31186 (reg!15666 r!7292)) (reg!15666 r!7292))))))

(declare-fun bm!403658 () Bool)

(assert (=> bm!403658 (= call!403661 (derivationStepZipperDown!763 (ite c!955818 (regTwo!31187 (reg!15666 r!7292)) (ite c!955817 (regTwo!31186 (reg!15666 r!7292)) (ite c!955819 (regOne!31186 (reg!15666 r!7292)) (reg!15666 (reg!15666 r!7292))))) (ite (or c!955818 c!955817) lt!2235033 (Context!9443 call!403664)) (h!68636 s!2326)))))

(declare-fun bm!403659 () Bool)

(assert (=> bm!403659 (= call!403662 call!403661)))

(assert (= (and d!1739176 c!955820) b!5470944))

(assert (= (and d!1739176 (not c!955820)) b!5470948))

(assert (= (and b!5470948 c!955818) b!5470949))

(assert (= (and b!5470948 (not c!955818)) b!5470945))

(assert (= (and b!5470945 res!2331494) b!5470946))

(assert (= (and b!5470945 c!955817) b!5470950))

(assert (= (and b!5470945 (not c!955817)) b!5470953))

(assert (= (and b!5470953 c!955819) b!5470954))

(assert (= (and b!5470953 (not c!955819)) b!5470951))

(assert (= (and b!5470951 c!955821) b!5470952))

(assert (= (and b!5470951 (not c!955821)) b!5470947))

(assert (= (or b!5470954 b!5470952) bm!403655))

(assert (= (or b!5470954 b!5470952) bm!403654))

(assert (= (or b!5470950 bm!403655) bm!403657))

(assert (= (or b!5470950 bm!403654) bm!403659))

(assert (= (or b!5470949 bm!403659) bm!403658))

(assert (= (or b!5470949 b!5470950) bm!403656))

(declare-fun m!6489044 () Bool)

(assert (=> bm!403656 m!6489044))

(assert (=> b!5470944 m!6488678))

(declare-fun m!6489046 () Bool)

(assert (=> bm!403658 m!6489046))

(declare-fun m!6489048 () Bool)

(assert (=> b!5470946 m!6489048))

(declare-fun m!6489050 () Bool)

(assert (=> bm!403657 m!6489050))

(assert (=> b!5470405 d!1739176))

(declare-fun d!1739178 () Bool)

(assert (=> d!1739178 (= (flatMap!1040 lt!2235011 lambda!291097) (choose!41601 lt!2235011 lambda!291097))))

(declare-fun bs!1264951 () Bool)

(assert (= bs!1264951 d!1739178))

(declare-fun m!6489052 () Bool)

(assert (=> bs!1264951 m!6489052))

(assert (=> b!5470405 d!1739178))

(declare-fun b!5470955 () Bool)

(declare-fun e!3386733 () (InoxSet Context!9442))

(declare-fun call!403665 () (InoxSet Context!9442))

(assert (=> b!5470955 (= e!3386733 call!403665)))

(declare-fun b!5470956 () Bool)

(declare-fun e!3386732 () Bool)

(assert (=> b!5470956 (= e!3386732 (nullable!5476 (h!68634 (exprs!5221 lt!2235007))))))

(declare-fun b!5470957 () Bool)

(assert (=> b!5470957 (= e!3386733 ((as const (Array Context!9442 Bool)) false))))

(declare-fun bm!403660 () Bool)

(assert (=> bm!403660 (= call!403665 (derivationStepZipperDown!763 (h!68634 (exprs!5221 lt!2235007)) (Context!9443 (t!375539 (exprs!5221 lt!2235007))) (h!68636 s!2326)))))

(declare-fun b!5470958 () Bool)

(declare-fun e!3386734 () (InoxSet Context!9442))

(assert (=> b!5470958 (= e!3386734 e!3386733)))

(declare-fun c!955823 () Bool)

(assert (=> b!5470958 (= c!955823 ((_ is Cons!62186) (exprs!5221 lt!2235007)))))

(declare-fun d!1739180 () Bool)

(declare-fun c!955822 () Bool)

(assert (=> d!1739180 (= c!955822 e!3386732)))

(declare-fun res!2331495 () Bool)

(assert (=> d!1739180 (=> (not res!2331495) (not e!3386732))))

(assert (=> d!1739180 (= res!2331495 ((_ is Cons!62186) (exprs!5221 lt!2235007)))))

(assert (=> d!1739180 (= (derivationStepZipperUp!689 lt!2235007 (h!68636 s!2326)) e!3386734)))

(declare-fun b!5470959 () Bool)

(assert (=> b!5470959 (= e!3386734 ((_ map or) call!403665 (derivationStepZipperUp!689 (Context!9443 (t!375539 (exprs!5221 lt!2235007))) (h!68636 s!2326))))))

(assert (= (and d!1739180 res!2331495) b!5470956))

(assert (= (and d!1739180 c!955822) b!5470959))

(assert (= (and d!1739180 (not c!955822)) b!5470958))

(assert (= (and b!5470958 c!955823) b!5470955))

(assert (= (and b!5470958 (not c!955823)) b!5470957))

(assert (= (or b!5470959 b!5470955) bm!403660))

(declare-fun m!6489054 () Bool)

(assert (=> b!5470956 m!6489054))

(declare-fun m!6489056 () Bool)

(assert (=> bm!403660 m!6489056))

(declare-fun m!6489058 () Bool)

(assert (=> b!5470959 m!6489058))

(assert (=> b!5470405 d!1739180))

(declare-fun d!1739182 () Bool)

(assert (=> d!1739182 (= (flatMap!1040 lt!2235011 lambda!291097) (dynLambda!24422 lambda!291097 lt!2235007))))

(declare-fun lt!2235099 () Unit!155124)

(assert (=> d!1739182 (= lt!2235099 (choose!41602 lt!2235011 lt!2235007 lambda!291097))))

(assert (=> d!1739182 (= lt!2235011 (store ((as const (Array Context!9442 Bool)) false) lt!2235007 true))))

(assert (=> d!1739182 (= (lemmaFlatMapOnSingletonSet!572 lt!2235011 lt!2235007 lambda!291097) lt!2235099)))

(declare-fun b_lambda!207951 () Bool)

(assert (=> (not b_lambda!207951) (not d!1739182)))

(declare-fun bs!1264952 () Bool)

(assert (= bs!1264952 d!1739182))

(assert (=> bs!1264952 m!6488660))

(declare-fun m!6489060 () Bool)

(assert (=> bs!1264952 m!6489060))

(declare-fun m!6489062 () Bool)

(assert (=> bs!1264952 m!6489062))

(assert (=> bs!1264952 m!6488662))

(assert (=> b!5470405 d!1739182))

(declare-fun d!1739184 () Bool)

(declare-fun lt!2235100 () Regex!15337)

(assert (=> d!1739184 (validRegex!7073 lt!2235100)))

(assert (=> d!1739184 (= lt!2235100 (generalisedUnion!1266 (unfocusZipperList!779 (Cons!62187 lt!2235017 Nil!62187))))))

(assert (=> d!1739184 (= (unfocusZipper!1079 (Cons!62187 lt!2235017 Nil!62187)) lt!2235100)))

(declare-fun bs!1264953 () Bool)

(assert (= bs!1264953 d!1739184))

(declare-fun m!6489064 () Bool)

(assert (=> bs!1264953 m!6489064))

(declare-fun m!6489066 () Bool)

(assert (=> bs!1264953 m!6489066))

(assert (=> bs!1264953 m!6489066))

(declare-fun m!6489068 () Bool)

(assert (=> bs!1264953 m!6489068))

(assert (=> b!5470426 d!1739184))

(declare-fun b!5470968 () Bool)

(declare-fun e!3386741 () Bool)

(declare-fun e!3386744 () Bool)

(assert (=> b!5470968 (= e!3386741 e!3386744)))

(declare-fun c!955826 () Bool)

(assert (=> b!5470968 (= c!955826 ((_ is Union!15337) (reg!15666 r!7292)))))

(declare-fun b!5470969 () Bool)

(declare-fun e!3386742 () Bool)

(assert (=> b!5470969 (= e!3386741 e!3386742)))

(declare-fun res!2331502 () Bool)

(assert (=> b!5470969 (= res!2331502 (not (nullable!5476 (reg!15666 (reg!15666 r!7292)))))))

(assert (=> b!5470969 (=> (not res!2331502) (not e!3386742))))

(declare-fun d!1739186 () Bool)

(declare-fun res!2331504 () Bool)

(declare-fun e!3386745 () Bool)

(assert (=> d!1739186 (=> res!2331504 e!3386745)))

(assert (=> d!1739186 (= res!2331504 ((_ is ElementMatch!15337) (reg!15666 r!7292)))))

(assert (=> d!1739186 (= (validRegex!7073 (reg!15666 r!7292)) e!3386745)))

(declare-fun call!403666 () Bool)

(declare-fun bm!403661 () Bool)

(declare-fun c!955827 () Bool)

(assert (=> bm!403661 (= call!403666 (validRegex!7073 (ite c!955827 (reg!15666 (reg!15666 r!7292)) (ite c!955826 (regOne!31187 (reg!15666 r!7292)) (regOne!31186 (reg!15666 r!7292))))))))

(declare-fun b!5470970 () Bool)

(declare-fun e!3386740 () Bool)

(declare-fun call!403668 () Bool)

(assert (=> b!5470970 (= e!3386740 call!403668)))

(declare-fun b!5470971 () Bool)

(assert (=> b!5470971 (= e!3386742 call!403666)))

(declare-fun b!5470972 () Bool)

(declare-fun res!2331500 () Bool)

(declare-fun e!3386743 () Bool)

(assert (=> b!5470972 (=> res!2331500 e!3386743)))

(assert (=> b!5470972 (= res!2331500 (not ((_ is Concat!24182) (reg!15666 r!7292))))))

(assert (=> b!5470972 (= e!3386744 e!3386743)))

(declare-fun b!5470973 () Bool)

(declare-fun e!3386739 () Bool)

(assert (=> b!5470973 (= e!3386739 call!403668)))

(declare-fun b!5470974 () Bool)

(assert (=> b!5470974 (= e!3386743 e!3386739)))

(declare-fun res!2331501 () Bool)

(assert (=> b!5470974 (=> (not res!2331501) (not e!3386739))))

(declare-fun call!403667 () Bool)

(assert (=> b!5470974 (= res!2331501 call!403667)))

(declare-fun b!5470975 () Bool)

(assert (=> b!5470975 (= e!3386745 e!3386741)))

(assert (=> b!5470975 (= c!955827 ((_ is Star!15337) (reg!15666 r!7292)))))

(declare-fun bm!403662 () Bool)

(assert (=> bm!403662 (= call!403667 call!403666)))

(declare-fun bm!403663 () Bool)

(assert (=> bm!403663 (= call!403668 (validRegex!7073 (ite c!955826 (regTwo!31187 (reg!15666 r!7292)) (regTwo!31186 (reg!15666 r!7292)))))))

(declare-fun b!5470976 () Bool)

(declare-fun res!2331503 () Bool)

(assert (=> b!5470976 (=> (not res!2331503) (not e!3386740))))

(assert (=> b!5470976 (= res!2331503 call!403667)))

(assert (=> b!5470976 (= e!3386744 e!3386740)))

(assert (= (and d!1739186 (not res!2331504)) b!5470975))

(assert (= (and b!5470975 c!955827) b!5470969))

(assert (= (and b!5470975 (not c!955827)) b!5470968))

(assert (= (and b!5470969 res!2331502) b!5470971))

(assert (= (and b!5470968 c!955826) b!5470976))

(assert (= (and b!5470968 (not c!955826)) b!5470972))

(assert (= (and b!5470976 res!2331503) b!5470970))

(assert (= (and b!5470972 (not res!2331500)) b!5470974))

(assert (= (and b!5470974 res!2331501) b!5470973))

(assert (= (or b!5470970 b!5470973) bm!403663))

(assert (= (or b!5470976 b!5470974) bm!403662))

(assert (= (or b!5470971 bm!403662) bm!403661))

(declare-fun m!6489070 () Bool)

(assert (=> b!5470969 m!6489070))

(declare-fun m!6489072 () Bool)

(assert (=> bm!403661 m!6489072))

(declare-fun m!6489074 () Bool)

(assert (=> bm!403663 m!6489074))

(assert (=> b!5470406 d!1739186))

(declare-fun bs!1264954 () Bool)

(declare-fun d!1739188 () Bool)

(assert (= bs!1264954 (and d!1739188 d!1739080)))

(declare-fun lambda!291152 () Int)

(assert (=> bs!1264954 (= lambda!291152 lambda!291100)))

(declare-fun bs!1264955 () Bool)

(assert (= bs!1264955 (and d!1739188 d!1739082)))

(assert (=> bs!1264955 (= lambda!291152 lambda!291103)))

(declare-fun bs!1264956 () Bool)

(assert (= bs!1264956 (and d!1739188 d!1739084)))

(assert (=> bs!1264956 (= lambda!291152 lambda!291106)))

(declare-fun bs!1264957 () Bool)

(assert (= bs!1264957 (and d!1739188 d!1739108)))

(assert (=> bs!1264957 (= lambda!291152 lambda!291121)))

(assert (=> d!1739188 (= (inv!81589 setElem!35905) (forall!14605 (exprs!5221 setElem!35905) lambda!291152))))

(declare-fun bs!1264958 () Bool)

(assert (= bs!1264958 d!1739188))

(declare-fun m!6489076 () Bool)

(assert (=> bs!1264958 m!6489076))

(assert (=> setNonEmpty!35905 d!1739188))

(declare-fun d!1739190 () Bool)

(declare-fun choose!41606 (Int) Bool)

(assert (=> d!1739190 (= (Exists!2516 lambda!291094) (choose!41606 lambda!291094))))

(declare-fun bs!1264960 () Bool)

(assert (= bs!1264960 d!1739190))

(declare-fun m!6489094 () Bool)

(assert (=> bs!1264960 m!6489094))

(assert (=> b!5470408 d!1739190))

(declare-fun d!1739196 () Bool)

(assert (=> d!1739196 (= (Exists!2516 lambda!291095) (choose!41606 lambda!291095))))

(declare-fun bs!1264961 () Bool)

(assert (= bs!1264961 d!1739196))

(declare-fun m!6489096 () Bool)

(assert (=> bs!1264961 m!6489096))

(assert (=> b!5470408 d!1739196))

(assert (=> b!5470428 d!1739190))

(declare-fun d!1739198 () Bool)

(assert (=> d!1739198 (= (Exists!2516 lambda!291096) (choose!41606 lambda!291096))))

(declare-fun bs!1264963 () Bool)

(assert (= bs!1264963 d!1739198))

(declare-fun m!6489102 () Bool)

(assert (=> bs!1264963 m!6489102))

(assert (=> b!5470411 d!1739198))

(declare-fun d!1739202 () Bool)

(declare-fun isEmpty!34147 (Option!15446) Bool)

(assert (=> d!1739202 (= (isDefined!12149 (findConcatSeparation!1860 (reg!15666 r!7292) r!7292 Nil!62188 s!2326 s!2326)) (not (isEmpty!34147 (findConcatSeparation!1860 (reg!15666 r!7292) r!7292 Nil!62188 s!2326 s!2326))))))

(declare-fun bs!1264964 () Bool)

(assert (= bs!1264964 d!1739202))

(assert (=> bs!1264964 m!6488712))

(declare-fun m!6489110 () Bool)

(assert (=> bs!1264964 m!6489110))

(assert (=> b!5470411 d!1739202))

(declare-fun bs!1264973 () Bool)

(declare-fun d!1739206 () Bool)

(assert (= bs!1264973 (and d!1739206 b!5470776)))

(declare-fun lambda!291158 () Int)

(assert (=> bs!1264973 (not (= lambda!291158 lambda!291145))))

(declare-fun bs!1264974 () Bool)

(assert (= bs!1264974 (and d!1739206 b!5470411)))

(assert (=> bs!1264974 (not (= lambda!291158 lambda!291096))))

(assert (=> bs!1264974 (not (= lambda!291158 lambda!291095))))

(declare-fun bs!1264975 () Bool)

(assert (= bs!1264975 (and d!1739206 b!5470782)))

(assert (=> bs!1264975 (not (= lambda!291158 lambda!291144))))

(assert (=> bs!1264974 (= lambda!291158 lambda!291094)))

(assert (=> d!1739206 true))

(assert (=> d!1739206 true))

(assert (=> d!1739206 true))

(declare-fun lambda!291159 () Int)

(assert (=> bs!1264973 (= (and (= (reg!15666 r!7292) (regOne!31186 r!7292)) (= r!7292 (regTwo!31186 r!7292))) (= lambda!291159 lambda!291145))))

(assert (=> bs!1264974 (= lambda!291159 lambda!291096)))

(assert (=> bs!1264974 (not (= lambda!291159 lambda!291095))))

(assert (=> bs!1264975 (not (= lambda!291159 lambda!291144))))

(assert (=> bs!1264974 (not (= lambda!291159 lambda!291094))))

(declare-fun bs!1264976 () Bool)

(assert (= bs!1264976 d!1739206))

(assert (=> bs!1264976 (not (= lambda!291159 lambda!291158))))

(assert (=> d!1739206 true))

(assert (=> d!1739206 true))

(assert (=> d!1739206 true))

(assert (=> d!1739206 (= (Exists!2516 lambda!291158) (Exists!2516 lambda!291159))))

(declare-fun lt!2235108 () Unit!155124)

(declare-fun choose!41607 (Regex!15337 Regex!15337 List!62312) Unit!155124)

(assert (=> d!1739206 (= lt!2235108 (choose!41607 (reg!15666 r!7292) r!7292 s!2326))))

(assert (=> d!1739206 (validRegex!7073 (reg!15666 r!7292))))

(assert (=> d!1739206 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1166 (reg!15666 r!7292) r!7292 s!2326) lt!2235108)))

(declare-fun m!6489168 () Bool)

(assert (=> bs!1264976 m!6489168))

(declare-fun m!6489170 () Bool)

(assert (=> bs!1264976 m!6489170))

(declare-fun m!6489172 () Bool)

(assert (=> bs!1264976 m!6489172))

(assert (=> bs!1264976 m!6488706))

(assert (=> b!5470411 d!1739206))

(assert (=> b!5470411 d!1739196))

(declare-fun d!1739230 () Bool)

(assert (=> d!1739230 (= (isEmpty!34142 s!2326) ((_ is Nil!62188) s!2326))))

(assert (=> b!5470411 d!1739230))

(assert (=> b!5470411 d!1739190))

(declare-fun bs!1264985 () Bool)

(declare-fun d!1739236 () Bool)

(assert (= bs!1264985 (and d!1739236 d!1739206)))

(declare-fun lambda!291168 () Int)

(assert (=> bs!1264985 (not (= lambda!291168 lambda!291159))))

(declare-fun bs!1264986 () Bool)

(assert (= bs!1264986 (and d!1739236 b!5470776)))

(assert (=> bs!1264986 (not (= lambda!291168 lambda!291145))))

(declare-fun bs!1264987 () Bool)

(assert (= bs!1264987 (and d!1739236 b!5470411)))

(assert (=> bs!1264987 (not (= lambda!291168 lambda!291096))))

(assert (=> bs!1264987 (not (= lambda!291168 lambda!291095))))

(declare-fun bs!1264988 () Bool)

(assert (= bs!1264988 (and d!1739236 b!5470782)))

(assert (=> bs!1264988 (not (= lambda!291168 lambda!291144))))

(assert (=> bs!1264987 (= (= (Star!15337 (reg!15666 r!7292)) r!7292) (= lambda!291168 lambda!291094))))

(assert (=> bs!1264985 (= (= (Star!15337 (reg!15666 r!7292)) r!7292) (= lambda!291168 lambda!291158))))

(assert (=> d!1739236 true))

(assert (=> d!1739236 true))

(declare-fun lambda!291170 () Int)

(assert (=> bs!1264985 (not (= lambda!291170 lambda!291159))))

(assert (=> bs!1264986 (not (= lambda!291170 lambda!291145))))

(assert (=> bs!1264987 (not (= lambda!291170 lambda!291096))))

(assert (=> bs!1264987 (= (= (Star!15337 (reg!15666 r!7292)) r!7292) (= lambda!291170 lambda!291095))))

(assert (=> bs!1264988 (= (= (Star!15337 (reg!15666 r!7292)) r!7292) (= lambda!291170 lambda!291144))))

(declare-fun bs!1264992 () Bool)

(assert (= bs!1264992 d!1739236))

(assert (=> bs!1264992 (not (= lambda!291170 lambda!291168))))

(assert (=> bs!1264987 (not (= lambda!291170 lambda!291094))))

(assert (=> bs!1264985 (not (= lambda!291170 lambda!291158))))

(assert (=> d!1739236 true))

(assert (=> d!1739236 true))

(assert (=> d!1739236 (= (Exists!2516 lambda!291168) (Exists!2516 lambda!291170))))

(declare-fun lt!2235117 () Unit!155124)

(declare-fun choose!41608 (Regex!15337 List!62312) Unit!155124)

(assert (=> d!1739236 (= lt!2235117 (choose!41608 (reg!15666 r!7292) s!2326))))

(assert (=> d!1739236 (validRegex!7073 (reg!15666 r!7292))))

(assert (=> d!1739236 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!490 (reg!15666 r!7292) s!2326) lt!2235117)))

(declare-fun m!6489212 () Bool)

(assert (=> bs!1264992 m!6489212))

(declare-fun m!6489214 () Bool)

(assert (=> bs!1264992 m!6489214))

(declare-fun m!6489216 () Bool)

(assert (=> bs!1264992 m!6489216))

(assert (=> bs!1264992 m!6488706))

(assert (=> b!5470411 d!1739236))

(declare-fun b!5471177 () Bool)

(declare-fun res!2331571 () Bool)

(declare-fun e!3386862 () Bool)

(assert (=> b!5471177 (=> (not res!2331571) (not e!3386862))))

(declare-fun lt!2235129 () Option!15446)

(declare-fun get!21436 (Option!15446) tuple2!65068)

(assert (=> b!5471177 (= res!2331571 (matchR!7522 (reg!15666 r!7292) (_1!35837 (get!21436 lt!2235129))))))

(declare-fun b!5471178 () Bool)

(declare-fun e!3386860 () Bool)

(assert (=> b!5471178 (= e!3386860 (not (isDefined!12149 lt!2235129)))))

(declare-fun b!5471179 () Bool)

(declare-fun e!3386863 () Option!15446)

(assert (=> b!5471179 (= e!3386863 (Some!15445 (tuple2!65069 Nil!62188 s!2326)))))

(declare-fun b!5471180 () Bool)

(declare-fun e!3386861 () Option!15446)

(assert (=> b!5471180 (= e!3386863 e!3386861)))

(declare-fun c!955869 () Bool)

(assert (=> b!5471180 (= c!955869 ((_ is Nil!62188) s!2326))))

(declare-fun d!1739248 () Bool)

(assert (=> d!1739248 e!3386860))

(declare-fun res!2331572 () Bool)

(assert (=> d!1739248 (=> res!2331572 e!3386860)))

(assert (=> d!1739248 (= res!2331572 e!3386862)))

(declare-fun res!2331570 () Bool)

(assert (=> d!1739248 (=> (not res!2331570) (not e!3386862))))

(assert (=> d!1739248 (= res!2331570 (isDefined!12149 lt!2235129))))

(assert (=> d!1739248 (= lt!2235129 e!3386863)))

(declare-fun c!955870 () Bool)

(declare-fun e!3386859 () Bool)

(assert (=> d!1739248 (= c!955870 e!3386859)))

(declare-fun res!2331573 () Bool)

(assert (=> d!1739248 (=> (not res!2331573) (not e!3386859))))

(assert (=> d!1739248 (= res!2331573 (matchR!7522 (reg!15666 r!7292) Nil!62188))))

(assert (=> d!1739248 (validRegex!7073 (reg!15666 r!7292))))

(assert (=> d!1739248 (= (findConcatSeparation!1860 (reg!15666 r!7292) r!7292 Nil!62188 s!2326 s!2326) lt!2235129)))

(declare-fun b!5471181 () Bool)

(assert (=> b!5471181 (= e!3386861 None!15445)))

(declare-fun b!5471182 () Bool)

(assert (=> b!5471182 (= e!3386862 (= (++!13674 (_1!35837 (get!21436 lt!2235129)) (_2!35837 (get!21436 lt!2235129))) s!2326))))

(declare-fun b!5471183 () Bool)

(declare-fun res!2331569 () Bool)

(assert (=> b!5471183 (=> (not res!2331569) (not e!3386862))))

(assert (=> b!5471183 (= res!2331569 (matchR!7522 r!7292 (_2!35837 (get!21436 lt!2235129))))))

(declare-fun b!5471184 () Bool)

(assert (=> b!5471184 (= e!3386859 (matchR!7522 r!7292 s!2326))))

(declare-fun b!5471185 () Bool)

(declare-fun lt!2235130 () Unit!155124)

(declare-fun lt!2235128 () Unit!155124)

(assert (=> b!5471185 (= lt!2235130 lt!2235128)))

(assert (=> b!5471185 (= (++!13674 (++!13674 Nil!62188 (Cons!62188 (h!68636 s!2326) Nil!62188)) (t!375541 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1895 (List!62312 C!30944 List!62312 List!62312) Unit!155124)

(assert (=> b!5471185 (= lt!2235128 (lemmaMoveElementToOtherListKeepsConcatEq!1895 Nil!62188 (h!68636 s!2326) (t!375541 s!2326) s!2326))))

(assert (=> b!5471185 (= e!3386861 (findConcatSeparation!1860 (reg!15666 r!7292) r!7292 (++!13674 Nil!62188 (Cons!62188 (h!68636 s!2326) Nil!62188)) (t!375541 s!2326) s!2326))))

(assert (= (and d!1739248 res!2331573) b!5471184))

(assert (= (and d!1739248 c!955870) b!5471179))

(assert (= (and d!1739248 (not c!955870)) b!5471180))

(assert (= (and b!5471180 c!955869) b!5471181))

(assert (= (and b!5471180 (not c!955869)) b!5471185))

(assert (= (and d!1739248 res!2331570) b!5471177))

(assert (= (and b!5471177 res!2331571) b!5471183))

(assert (= (and b!5471183 res!2331569) b!5471182))

(assert (= (and d!1739248 (not res!2331572)) b!5471178))

(declare-fun m!6489226 () Bool)

(assert (=> b!5471183 m!6489226))

(declare-fun m!6489228 () Bool)

(assert (=> b!5471183 m!6489228))

(assert (=> b!5471177 m!6489226))

(declare-fun m!6489230 () Bool)

(assert (=> b!5471177 m!6489230))

(declare-fun m!6489232 () Bool)

(assert (=> b!5471185 m!6489232))

(assert (=> b!5471185 m!6489232))

(declare-fun m!6489234 () Bool)

(assert (=> b!5471185 m!6489234))

(declare-fun m!6489236 () Bool)

(assert (=> b!5471185 m!6489236))

(assert (=> b!5471185 m!6489232))

(declare-fun m!6489238 () Bool)

(assert (=> b!5471185 m!6489238))

(assert (=> b!5471184 m!6488668))

(declare-fun m!6489240 () Bool)

(assert (=> b!5471178 m!6489240))

(assert (=> b!5471182 m!6489226))

(declare-fun m!6489242 () Bool)

(assert (=> b!5471182 m!6489242))

(assert (=> d!1739248 m!6489240))

(declare-fun m!6489244 () Bool)

(assert (=> d!1739248 m!6489244))

(assert (=> d!1739248 m!6488706))

(assert (=> b!5470411 d!1739248))

(declare-fun bs!1265001 () Bool)

(declare-fun d!1739258 () Bool)

(assert (= bs!1265001 (and d!1739258 d!1739206)))

(declare-fun lambda!291176 () Int)

(assert (=> bs!1265001 (not (= lambda!291176 lambda!291159))))

(declare-fun bs!1265002 () Bool)

(assert (= bs!1265002 (and d!1739258 b!5470776)))

(assert (=> bs!1265002 (not (= lambda!291176 lambda!291145))))

(declare-fun bs!1265003 () Bool)

(assert (= bs!1265003 (and d!1739258 b!5470411)))

(assert (=> bs!1265003 (not (= lambda!291176 lambda!291096))))

(assert (=> bs!1265003 (not (= lambda!291176 lambda!291095))))

(declare-fun bs!1265004 () Bool)

(assert (= bs!1265004 (and d!1739258 b!5470782)))

(assert (=> bs!1265004 (not (= lambda!291176 lambda!291144))))

(declare-fun bs!1265005 () Bool)

(assert (= bs!1265005 (and d!1739258 d!1739236)))

(assert (=> bs!1265005 (= (= r!7292 (Star!15337 (reg!15666 r!7292))) (= lambda!291176 lambda!291168))))

(assert (=> bs!1265005 (not (= lambda!291176 lambda!291170))))

(assert (=> bs!1265003 (= lambda!291176 lambda!291094)))

(assert (=> bs!1265001 (= lambda!291176 lambda!291158)))

(assert (=> d!1739258 true))

(assert (=> d!1739258 true))

(assert (=> d!1739258 true))

(assert (=> d!1739258 (= (isDefined!12149 (findConcatSeparation!1860 (reg!15666 r!7292) r!7292 Nil!62188 s!2326 s!2326)) (Exists!2516 lambda!291176))))

(declare-fun lt!2235133 () Unit!155124)

(declare-fun choose!41609 (Regex!15337 Regex!15337 List!62312) Unit!155124)

(assert (=> d!1739258 (= lt!2235133 (choose!41609 (reg!15666 r!7292) r!7292 s!2326))))

(assert (=> d!1739258 (validRegex!7073 (reg!15666 r!7292))))

(assert (=> d!1739258 (= (lemmaFindConcatSeparationEquivalentToExists!1624 (reg!15666 r!7292) r!7292 s!2326) lt!2235133)))

(declare-fun bs!1265006 () Bool)

(assert (= bs!1265006 d!1739258))

(assert (=> bs!1265006 m!6488712))

(assert (=> bs!1265006 m!6488714))

(declare-fun m!6489246 () Bool)

(assert (=> bs!1265006 m!6489246))

(declare-fun m!6489248 () Bool)

(assert (=> bs!1265006 m!6489248))

(assert (=> bs!1265006 m!6488712))

(assert (=> bs!1265006 m!6488706))

(assert (=> b!5470411 d!1739258))

(declare-fun d!1739260 () Bool)

(declare-fun lt!2235134 () Regex!15337)

(assert (=> d!1739260 (validRegex!7073 lt!2235134)))

(assert (=> d!1739260 (= lt!2235134 (generalisedUnion!1266 (unfocusZipperList!779 zl!343)))))

(assert (=> d!1739260 (= (unfocusZipper!1079 zl!343) lt!2235134)))

(declare-fun bs!1265007 () Bool)

(assert (= bs!1265007 d!1739260))

(declare-fun m!6489250 () Bool)

(assert (=> bs!1265007 m!6489250))

(assert (=> bs!1265007 m!6488644))

(assert (=> bs!1265007 m!6488644))

(assert (=> bs!1265007 m!6488646))

(assert (=> b!5470431 d!1739260))

(declare-fun b!5471190 () Bool)

(declare-fun e!3386867 () (InoxSet Context!9442))

(declare-fun call!403691 () (InoxSet Context!9442))

(assert (=> b!5471190 (= e!3386867 call!403691)))

(declare-fun b!5471191 () Bool)

(declare-fun e!3386866 () Bool)

(assert (=> b!5471191 (= e!3386866 (nullable!5476 (h!68634 (exprs!5221 lt!2235017))))))

(declare-fun b!5471192 () Bool)

(assert (=> b!5471192 (= e!3386867 ((as const (Array Context!9442 Bool)) false))))

(declare-fun bm!403686 () Bool)

(assert (=> bm!403686 (= call!403691 (derivationStepZipperDown!763 (h!68634 (exprs!5221 lt!2235017)) (Context!9443 (t!375539 (exprs!5221 lt!2235017))) (h!68636 s!2326)))))

(declare-fun b!5471193 () Bool)

(declare-fun e!3386868 () (InoxSet Context!9442))

(assert (=> b!5471193 (= e!3386868 e!3386867)))

(declare-fun c!955872 () Bool)

(assert (=> b!5471193 (= c!955872 ((_ is Cons!62186) (exprs!5221 lt!2235017)))))

(declare-fun d!1739262 () Bool)

(declare-fun c!955871 () Bool)

(assert (=> d!1739262 (= c!955871 e!3386866)))

(declare-fun res!2331578 () Bool)

(assert (=> d!1739262 (=> (not res!2331578) (not e!3386866))))

(assert (=> d!1739262 (= res!2331578 ((_ is Cons!62186) (exprs!5221 lt!2235017)))))

(assert (=> d!1739262 (= (derivationStepZipperUp!689 lt!2235017 (h!68636 s!2326)) e!3386868)))

(declare-fun b!5471194 () Bool)

(assert (=> b!5471194 (= e!3386868 ((_ map or) call!403691 (derivationStepZipperUp!689 (Context!9443 (t!375539 (exprs!5221 lt!2235017))) (h!68636 s!2326))))))

(assert (= (and d!1739262 res!2331578) b!5471191))

(assert (= (and d!1739262 c!955871) b!5471194))

(assert (= (and d!1739262 (not c!955871)) b!5471193))

(assert (= (and b!5471193 c!955872) b!5471190))

(assert (= (and b!5471193 (not c!955872)) b!5471192))

(assert (= (or b!5471194 b!5471190) bm!403686))

(declare-fun m!6489252 () Bool)

(assert (=> b!5471191 m!6489252))

(declare-fun m!6489254 () Bool)

(assert (=> bm!403686 m!6489254))

(declare-fun m!6489256 () Bool)

(assert (=> b!5471194 m!6489256))

(assert (=> b!5470412 d!1739262))

(declare-fun d!1739264 () Bool)

(assert (=> d!1739264 (= (flatMap!1040 lt!2235032 lambda!291097) (choose!41601 lt!2235032 lambda!291097))))

(declare-fun bs!1265008 () Bool)

(assert (= bs!1265008 d!1739264))

(declare-fun m!6489258 () Bool)

(assert (=> bs!1265008 m!6489258))

(assert (=> b!5470412 d!1739264))

(declare-fun d!1739266 () Bool)

(assert (=> d!1739266 (= (flatMap!1040 lt!2235023 lambda!291097) (choose!41601 lt!2235023 lambda!291097))))

(declare-fun bs!1265009 () Bool)

(assert (= bs!1265009 d!1739266))

(declare-fun m!6489260 () Bool)

(assert (=> bs!1265009 m!6489260))

(assert (=> b!5470412 d!1739266))

(declare-fun d!1739268 () Bool)

(assert (=> d!1739268 (= (flatMap!1040 lt!2235023 lambda!291097) (dynLambda!24422 lambda!291097 lt!2235033))))

(declare-fun lt!2235135 () Unit!155124)

(assert (=> d!1739268 (= lt!2235135 (choose!41602 lt!2235023 lt!2235033 lambda!291097))))

(assert (=> d!1739268 (= lt!2235023 (store ((as const (Array Context!9442 Bool)) false) lt!2235033 true))))

(assert (=> d!1739268 (= (lemmaFlatMapOnSingletonSet!572 lt!2235023 lt!2235033 lambda!291097) lt!2235135)))

(declare-fun b_lambda!207967 () Bool)

(assert (=> (not b_lambda!207967) (not d!1739268)))

(declare-fun bs!1265010 () Bool)

(assert (= bs!1265010 d!1739268))

(assert (=> bs!1265010 m!6488692))

(declare-fun m!6489262 () Bool)

(assert (=> bs!1265010 m!6489262))

(declare-fun m!6489264 () Bool)

(assert (=> bs!1265010 m!6489264))

(assert (=> bs!1265010 m!6488678))

(assert (=> b!5470412 d!1739268))

(declare-fun bs!1265011 () Bool)

(declare-fun d!1739270 () Bool)

(assert (= bs!1265011 (and d!1739270 b!5470423)))

(declare-fun lambda!291177 () Int)

(assert (=> bs!1265011 (= lambda!291177 lambda!291097)))

(declare-fun bs!1265012 () Bool)

(assert (= bs!1265012 (and d!1739270 d!1739124)))

(assert (=> bs!1265012 (= lambda!291177 lambda!291134)))

(declare-fun bs!1265013 () Bool)

(assert (= bs!1265013 (and d!1739270 d!1739164)))

(assert (=> bs!1265013 (= lambda!291177 lambda!291151)))

(assert (=> d!1739270 true))

(assert (=> d!1739270 (= (derivationStepZipper!1532 lt!2235023 (h!68636 s!2326)) (flatMap!1040 lt!2235023 lambda!291177))))

(declare-fun bs!1265014 () Bool)

(assert (= bs!1265014 d!1739270))

(declare-fun m!6489266 () Bool)

(assert (=> bs!1265014 m!6489266))

(assert (=> b!5470412 d!1739270))

(declare-fun b!5471195 () Bool)

(declare-fun e!3386870 () (InoxSet Context!9442))

(declare-fun call!403692 () (InoxSet Context!9442))

(assert (=> b!5471195 (= e!3386870 call!403692)))

(declare-fun b!5471196 () Bool)

(declare-fun e!3386869 () Bool)

(assert (=> b!5471196 (= e!3386869 (nullable!5476 (h!68634 (exprs!5221 lt!2235033))))))

(declare-fun b!5471197 () Bool)

(assert (=> b!5471197 (= e!3386870 ((as const (Array Context!9442 Bool)) false))))

(declare-fun bm!403687 () Bool)

(assert (=> bm!403687 (= call!403692 (derivationStepZipperDown!763 (h!68634 (exprs!5221 lt!2235033)) (Context!9443 (t!375539 (exprs!5221 lt!2235033))) (h!68636 s!2326)))))

(declare-fun b!5471198 () Bool)

(declare-fun e!3386871 () (InoxSet Context!9442))

(assert (=> b!5471198 (= e!3386871 e!3386870)))

(declare-fun c!955874 () Bool)

(assert (=> b!5471198 (= c!955874 ((_ is Cons!62186) (exprs!5221 lt!2235033)))))

(declare-fun d!1739272 () Bool)

(declare-fun c!955873 () Bool)

(assert (=> d!1739272 (= c!955873 e!3386869)))

(declare-fun res!2331579 () Bool)

(assert (=> d!1739272 (=> (not res!2331579) (not e!3386869))))

(assert (=> d!1739272 (= res!2331579 ((_ is Cons!62186) (exprs!5221 lt!2235033)))))

(assert (=> d!1739272 (= (derivationStepZipperUp!689 lt!2235033 (h!68636 s!2326)) e!3386871)))

(declare-fun b!5471199 () Bool)

(assert (=> b!5471199 (= e!3386871 ((_ map or) call!403692 (derivationStepZipperUp!689 (Context!9443 (t!375539 (exprs!5221 lt!2235033))) (h!68636 s!2326))))))

(assert (= (and d!1739272 res!2331579) b!5471196))

(assert (= (and d!1739272 c!955873) b!5471199))

(assert (= (and d!1739272 (not c!955873)) b!5471198))

(assert (= (and b!5471198 c!955874) b!5471195))

(assert (= (and b!5471198 (not c!955874)) b!5471197))

(assert (= (or b!5471199 b!5471195) bm!403687))

(declare-fun m!6489268 () Bool)

(assert (=> b!5471196 m!6489268))

(declare-fun m!6489270 () Bool)

(assert (=> bm!403687 m!6489270))

(declare-fun m!6489272 () Bool)

(assert (=> b!5471199 m!6489272))

(assert (=> b!5470412 d!1739272))

(declare-fun d!1739274 () Bool)

(assert (=> d!1739274 (= (flatMap!1040 lt!2235032 lambda!291097) (dynLambda!24422 lambda!291097 lt!2235017))))

(declare-fun lt!2235136 () Unit!155124)

(assert (=> d!1739274 (= lt!2235136 (choose!41602 lt!2235032 lt!2235017 lambda!291097))))

(assert (=> d!1739274 (= lt!2235032 (store ((as const (Array Context!9442 Bool)) false) lt!2235017 true))))

(assert (=> d!1739274 (= (lemmaFlatMapOnSingletonSet!572 lt!2235032 lt!2235017 lambda!291097) lt!2235136)))

(declare-fun b_lambda!207969 () Bool)

(assert (=> (not b_lambda!207969) (not d!1739274)))

(declare-fun bs!1265015 () Bool)

(assert (= bs!1265015 d!1739274))

(assert (=> bs!1265015 m!6488690))

(declare-fun m!6489274 () Bool)

(assert (=> bs!1265015 m!6489274))

(declare-fun m!6489276 () Bool)

(assert (=> bs!1265015 m!6489276))

(assert (=> bs!1265015 m!6488684))

(assert (=> b!5470412 d!1739274))

(declare-fun d!1739276 () Bool)

(declare-fun lt!2235137 () Regex!15337)

(assert (=> d!1739276 (validRegex!7073 lt!2235137)))

(assert (=> d!1739276 (= lt!2235137 (generalisedUnion!1266 (unfocusZipperList!779 (Cons!62187 lt!2235033 Nil!62187))))))

(assert (=> d!1739276 (= (unfocusZipper!1079 (Cons!62187 lt!2235033 Nil!62187)) lt!2235137)))

(declare-fun bs!1265016 () Bool)

(assert (= bs!1265016 d!1739276))

(declare-fun m!6489278 () Bool)

(assert (=> bs!1265016 m!6489278))

(declare-fun m!6489280 () Bool)

(assert (=> bs!1265016 m!6489280))

(assert (=> bs!1265016 m!6489280))

(declare-fun m!6489282 () Bool)

(assert (=> bs!1265016 m!6489282))

(assert (=> b!5470432 d!1739276))

(declare-fun bs!1265017 () Bool)

(declare-fun b!5471210 () Bool)

(assert (= bs!1265017 (and b!5471210 d!1739206)))

(declare-fun lambda!291178 () Int)

(assert (=> bs!1265017 (not (= lambda!291178 lambda!291159))))

(declare-fun bs!1265018 () Bool)

(assert (= bs!1265018 (and b!5471210 b!5470776)))

(assert (=> bs!1265018 (not (= lambda!291178 lambda!291145))))

(declare-fun bs!1265019 () Bool)

(assert (= bs!1265019 (and b!5471210 b!5470411)))

(assert (=> bs!1265019 (not (= lambda!291178 lambda!291096))))

(assert (=> bs!1265019 (= (and (= (reg!15666 lt!2235010) (reg!15666 r!7292)) (= lt!2235010 r!7292)) (= lambda!291178 lambda!291095))))

(declare-fun bs!1265020 () Bool)

(assert (= bs!1265020 (and b!5471210 b!5470782)))

(assert (=> bs!1265020 (= (and (= (reg!15666 lt!2235010) (reg!15666 r!7292)) (= lt!2235010 r!7292)) (= lambda!291178 lambda!291144))))

(declare-fun bs!1265021 () Bool)

(assert (= bs!1265021 (and b!5471210 d!1739236)))

(assert (=> bs!1265021 (not (= lambda!291178 lambda!291168))))

(assert (=> bs!1265021 (= (and (= (reg!15666 lt!2235010) (reg!15666 r!7292)) (= lt!2235010 (Star!15337 (reg!15666 r!7292)))) (= lambda!291178 lambda!291170))))

(declare-fun bs!1265022 () Bool)

(assert (= bs!1265022 (and b!5471210 d!1739258)))

(assert (=> bs!1265022 (not (= lambda!291178 lambda!291176))))

(assert (=> bs!1265019 (not (= lambda!291178 lambda!291094))))

(assert (=> bs!1265017 (not (= lambda!291178 lambda!291158))))

(assert (=> b!5471210 true))

(assert (=> b!5471210 true))

(declare-fun bs!1265023 () Bool)

(declare-fun b!5471204 () Bool)

(assert (= bs!1265023 (and b!5471204 d!1739206)))

(declare-fun lambda!291179 () Int)

(assert (=> bs!1265023 (= (and (= (regOne!31186 lt!2235010) (reg!15666 r!7292)) (= (regTwo!31186 lt!2235010) r!7292)) (= lambda!291179 lambda!291159))))

(declare-fun bs!1265024 () Bool)

(assert (= bs!1265024 (and b!5471204 b!5470776)))

(assert (=> bs!1265024 (= (and (= (regOne!31186 lt!2235010) (regOne!31186 r!7292)) (= (regTwo!31186 lt!2235010) (regTwo!31186 r!7292))) (= lambda!291179 lambda!291145))))

(declare-fun bs!1265025 () Bool)

(assert (= bs!1265025 (and b!5471204 b!5470411)))

(assert (=> bs!1265025 (= (and (= (regOne!31186 lt!2235010) (reg!15666 r!7292)) (= (regTwo!31186 lt!2235010) r!7292)) (= lambda!291179 lambda!291096))))

(assert (=> bs!1265025 (not (= lambda!291179 lambda!291095))))

(declare-fun bs!1265026 () Bool)

(assert (= bs!1265026 (and b!5471204 b!5470782)))

(assert (=> bs!1265026 (not (= lambda!291179 lambda!291144))))

(declare-fun bs!1265027 () Bool)

(assert (= bs!1265027 (and b!5471204 d!1739236)))

(assert (=> bs!1265027 (not (= lambda!291179 lambda!291168))))

(assert (=> bs!1265027 (not (= lambda!291179 lambda!291170))))

(declare-fun bs!1265028 () Bool)

(assert (= bs!1265028 (and b!5471204 b!5471210)))

(assert (=> bs!1265028 (not (= lambda!291179 lambda!291178))))

(declare-fun bs!1265029 () Bool)

(assert (= bs!1265029 (and b!5471204 d!1739258)))

(assert (=> bs!1265029 (not (= lambda!291179 lambda!291176))))

(assert (=> bs!1265025 (not (= lambda!291179 lambda!291094))))

(assert (=> bs!1265023 (not (= lambda!291179 lambda!291158))))

(assert (=> b!5471204 true))

(assert (=> b!5471204 true))

(declare-fun b!5471200 () Bool)

(declare-fun res!2331580 () Bool)

(declare-fun e!3386872 () Bool)

(assert (=> b!5471200 (=> res!2331580 e!3386872)))

(declare-fun call!403693 () Bool)

(assert (=> b!5471200 (= res!2331580 call!403693)))

(declare-fun e!3386878 () Bool)

(assert (=> b!5471200 (= e!3386878 e!3386872)))

(declare-fun bm!403688 () Bool)

(declare-fun c!955876 () Bool)

(declare-fun call!403694 () Bool)

(assert (=> bm!403688 (= call!403694 (Exists!2516 (ite c!955876 lambda!291178 lambda!291179)))))

(declare-fun b!5471201 () Bool)

(declare-fun e!3386875 () Bool)

(declare-fun e!3386877 () Bool)

(assert (=> b!5471201 (= e!3386875 e!3386877)))

(declare-fun res!2331582 () Bool)

(assert (=> b!5471201 (= res!2331582 (not ((_ is EmptyLang!15337) lt!2235010)))))

(assert (=> b!5471201 (=> (not res!2331582) (not e!3386877))))

(declare-fun d!1739278 () Bool)

(declare-fun c!955877 () Bool)

(assert (=> d!1739278 (= c!955877 ((_ is EmptyExpr!15337) lt!2235010))))

(assert (=> d!1739278 (= (matchRSpec!2440 lt!2235010 s!2326) e!3386875)))

(declare-fun b!5471202 () Bool)

(declare-fun e!3386876 () Bool)

(assert (=> b!5471202 (= e!3386876 (= s!2326 (Cons!62188 (c!955657 lt!2235010) Nil!62188)))))

(declare-fun b!5471203 () Bool)

(assert (=> b!5471203 (= e!3386875 call!403693)))

(assert (=> b!5471204 (= e!3386878 call!403694)))

(declare-fun b!5471205 () Bool)

(declare-fun e!3386873 () Bool)

(declare-fun e!3386874 () Bool)

(assert (=> b!5471205 (= e!3386873 e!3386874)))

(declare-fun res!2331581 () Bool)

(assert (=> b!5471205 (= res!2331581 (matchRSpec!2440 (regOne!31187 lt!2235010) s!2326))))

(assert (=> b!5471205 (=> res!2331581 e!3386874)))

(declare-fun b!5471206 () Bool)

(declare-fun c!955878 () Bool)

(assert (=> b!5471206 (= c!955878 ((_ is ElementMatch!15337) lt!2235010))))

(assert (=> b!5471206 (= e!3386877 e!3386876)))

(declare-fun b!5471207 () Bool)

(assert (=> b!5471207 (= e!3386873 e!3386878)))

(assert (=> b!5471207 (= c!955876 ((_ is Star!15337) lt!2235010))))

(declare-fun b!5471208 () Bool)

(declare-fun c!955875 () Bool)

(assert (=> b!5471208 (= c!955875 ((_ is Union!15337) lt!2235010))))

(assert (=> b!5471208 (= e!3386876 e!3386873)))

(declare-fun bm!403689 () Bool)

(assert (=> bm!403689 (= call!403693 (isEmpty!34142 s!2326))))

(declare-fun b!5471209 () Bool)

(assert (=> b!5471209 (= e!3386874 (matchRSpec!2440 (regTwo!31187 lt!2235010) s!2326))))

(assert (=> b!5471210 (= e!3386872 call!403694)))

(assert (= (and d!1739278 c!955877) b!5471203))

(assert (= (and d!1739278 (not c!955877)) b!5471201))

(assert (= (and b!5471201 res!2331582) b!5471206))

(assert (= (and b!5471206 c!955878) b!5471202))

(assert (= (and b!5471206 (not c!955878)) b!5471208))

(assert (= (and b!5471208 c!955875) b!5471205))

(assert (= (and b!5471208 (not c!955875)) b!5471207))

(assert (= (and b!5471205 (not res!2331581)) b!5471209))

(assert (= (and b!5471207 c!955876) b!5471200))

(assert (= (and b!5471207 (not c!955876)) b!5471204))

(assert (= (and b!5471200 (not res!2331580)) b!5471210))

(assert (= (or b!5471210 b!5471204) bm!403688))

(assert (= (or b!5471203 b!5471200) bm!403689))

(declare-fun m!6489284 () Bool)

(assert (=> bm!403688 m!6489284))

(declare-fun m!6489286 () Bool)

(assert (=> b!5471205 m!6489286))

(assert (=> bm!403689 m!6488708))

(declare-fun m!6489288 () Bool)

(assert (=> b!5471209 m!6489288))

(assert (=> b!5470413 d!1739278))

(declare-fun bm!403690 () Bool)

(declare-fun call!403695 () Bool)

(assert (=> bm!403690 (= call!403695 (isEmpty!34142 s!2326))))

(declare-fun b!5471211 () Bool)

(declare-fun e!3386881 () Bool)

(assert (=> b!5471211 (= e!3386881 (= (head!11718 s!2326) (c!955657 lt!2235010)))))

(declare-fun b!5471213 () Bool)

(declare-fun e!3386882 () Bool)

(assert (=> b!5471213 (= e!3386882 (nullable!5476 lt!2235010))))

(declare-fun b!5471214 () Bool)

(declare-fun e!3386879 () Bool)

(declare-fun e!3386880 () Bool)

(assert (=> b!5471214 (= e!3386879 e!3386880)))

(declare-fun res!2331589 () Bool)

(assert (=> b!5471214 (=> res!2331589 e!3386880)))

(assert (=> b!5471214 (= res!2331589 call!403695)))

(declare-fun b!5471215 () Bool)

(assert (=> b!5471215 (= e!3386880 (not (= (head!11718 s!2326) (c!955657 lt!2235010))))))

(declare-fun b!5471216 () Bool)

(declare-fun e!3386883 () Bool)

(declare-fun e!3386885 () Bool)

(assert (=> b!5471216 (= e!3386883 e!3386885)))

(declare-fun c!955879 () Bool)

(assert (=> b!5471216 (= c!955879 ((_ is EmptyLang!15337) lt!2235010))))

(declare-fun b!5471217 () Bool)

(declare-fun res!2331586 () Bool)

(assert (=> b!5471217 (=> res!2331586 e!3386880)))

(assert (=> b!5471217 (= res!2331586 (not (isEmpty!34142 (tail!10815 s!2326))))))

(declare-fun b!5471218 () Bool)

(declare-fun lt!2235138 () Bool)

(assert (=> b!5471218 (= e!3386885 (not lt!2235138))))

(declare-fun d!1739280 () Bool)

(assert (=> d!1739280 e!3386883))

(declare-fun c!955881 () Bool)

(assert (=> d!1739280 (= c!955881 ((_ is EmptyExpr!15337) lt!2235010))))

(assert (=> d!1739280 (= lt!2235138 e!3386882)))

(declare-fun c!955880 () Bool)

(assert (=> d!1739280 (= c!955880 (isEmpty!34142 s!2326))))

(assert (=> d!1739280 (validRegex!7073 lt!2235010)))

(assert (=> d!1739280 (= (matchR!7522 lt!2235010 s!2326) lt!2235138)))

(declare-fun b!5471212 () Bool)

(assert (=> b!5471212 (= e!3386883 (= lt!2235138 call!403695))))

(declare-fun b!5471219 () Bool)

(declare-fun res!2331590 () Bool)

(assert (=> b!5471219 (=> (not res!2331590) (not e!3386881))))

(assert (=> b!5471219 (= res!2331590 (not call!403695))))

(declare-fun b!5471220 () Bool)

(declare-fun res!2331583 () Bool)

(declare-fun e!3386884 () Bool)

(assert (=> b!5471220 (=> res!2331583 e!3386884)))

(assert (=> b!5471220 (= res!2331583 (not ((_ is ElementMatch!15337) lt!2235010)))))

(assert (=> b!5471220 (= e!3386885 e!3386884)))

(declare-fun b!5471221 () Bool)

(declare-fun res!2331588 () Bool)

(assert (=> b!5471221 (=> res!2331588 e!3386884)))

(assert (=> b!5471221 (= res!2331588 e!3386881)))

(declare-fun res!2331584 () Bool)

(assert (=> b!5471221 (=> (not res!2331584) (not e!3386881))))

(assert (=> b!5471221 (= res!2331584 lt!2235138)))

(declare-fun b!5471222 () Bool)

(assert (=> b!5471222 (= e!3386882 (matchR!7522 (derivativeStep!4321 lt!2235010 (head!11718 s!2326)) (tail!10815 s!2326)))))

(declare-fun b!5471223 () Bool)

(assert (=> b!5471223 (= e!3386884 e!3386879)))

(declare-fun res!2331587 () Bool)

(assert (=> b!5471223 (=> (not res!2331587) (not e!3386879))))

(assert (=> b!5471223 (= res!2331587 (not lt!2235138))))

(declare-fun b!5471224 () Bool)

(declare-fun res!2331585 () Bool)

(assert (=> b!5471224 (=> (not res!2331585) (not e!3386881))))

(assert (=> b!5471224 (= res!2331585 (isEmpty!34142 (tail!10815 s!2326)))))

(assert (= (and d!1739280 c!955880) b!5471213))

(assert (= (and d!1739280 (not c!955880)) b!5471222))

(assert (= (and d!1739280 c!955881) b!5471212))

(assert (= (and d!1739280 (not c!955881)) b!5471216))

(assert (= (and b!5471216 c!955879) b!5471218))

(assert (= (and b!5471216 (not c!955879)) b!5471220))

(assert (= (and b!5471220 (not res!2331583)) b!5471221))

(assert (= (and b!5471221 res!2331584) b!5471219))

(assert (= (and b!5471219 res!2331590) b!5471224))

(assert (= (and b!5471224 res!2331585) b!5471211))

(assert (= (and b!5471221 (not res!2331588)) b!5471223))

(assert (= (and b!5471223 res!2331587) b!5471214))

(assert (= (and b!5471214 (not res!2331589)) b!5471217))

(assert (= (and b!5471217 (not res!2331586)) b!5471215))

(assert (= (or b!5471212 b!5471214 b!5471219) bm!403690))

(assert (=> b!5471224 m!6488958))

(assert (=> b!5471224 m!6488958))

(assert (=> b!5471224 m!6488960))

(assert (=> bm!403690 m!6488708))

(declare-fun m!6489290 () Bool)

(assert (=> b!5471213 m!6489290))

(assert (=> b!5471222 m!6488964))

(assert (=> b!5471222 m!6488964))

(declare-fun m!6489292 () Bool)

(assert (=> b!5471222 m!6489292))

(assert (=> b!5471222 m!6488958))

(assert (=> b!5471222 m!6489292))

(assert (=> b!5471222 m!6488958))

(declare-fun m!6489294 () Bool)

(assert (=> b!5471222 m!6489294))

(assert (=> b!5471215 m!6488964))

(assert (=> b!5471211 m!6488964))

(assert (=> b!5471217 m!6488958))

(assert (=> b!5471217 m!6488958))

(assert (=> b!5471217 m!6488960))

(assert (=> d!1739280 m!6488708))

(declare-fun m!6489296 () Bool)

(assert (=> d!1739280 m!6489296))

(assert (=> b!5470413 d!1739280))

(declare-fun d!1739282 () Bool)

(assert (=> d!1739282 (= (matchR!7522 lt!2235010 s!2326) (matchRSpec!2440 lt!2235010 s!2326))))

(declare-fun lt!2235139 () Unit!155124)

(assert (=> d!1739282 (= lt!2235139 (choose!41600 lt!2235010 s!2326))))

(assert (=> d!1739282 (validRegex!7073 lt!2235010)))

(assert (=> d!1739282 (= (mainMatchTheorem!2440 lt!2235010 s!2326) lt!2235139)))

(declare-fun bs!1265030 () Bool)

(assert (= bs!1265030 d!1739282))

(assert (=> bs!1265030 m!6488674))

(assert (=> bs!1265030 m!6488672))

(declare-fun m!6489298 () Bool)

(assert (=> bs!1265030 m!6489298))

(assert (=> bs!1265030 m!6489296))

(assert (=> b!5470413 d!1739282))

(declare-fun b!5471237 () Bool)

(declare-fun e!3386888 () Bool)

(declare-fun tp!1504383 () Bool)

(assert (=> b!5471237 (= e!3386888 tp!1504383)))

(declare-fun b!5471236 () Bool)

(declare-fun tp!1504385 () Bool)

(declare-fun tp!1504382 () Bool)

(assert (=> b!5471236 (= e!3386888 (and tp!1504385 tp!1504382))))

(declare-fun b!5471238 () Bool)

(declare-fun tp!1504386 () Bool)

(declare-fun tp!1504384 () Bool)

(assert (=> b!5471238 (= e!3386888 (and tp!1504386 tp!1504384))))

(declare-fun b!5471235 () Bool)

(assert (=> b!5471235 (= e!3386888 tp_is_empty!39927)))

(assert (=> b!5470414 (= tp!1504309 e!3386888)))

(assert (= (and b!5470414 ((_ is ElementMatch!15337) (reg!15666 r!7292))) b!5471235))

(assert (= (and b!5470414 ((_ is Concat!24182) (reg!15666 r!7292))) b!5471236))

(assert (= (and b!5470414 ((_ is Star!15337) (reg!15666 r!7292))) b!5471237))

(assert (= (and b!5470414 ((_ is Union!15337) (reg!15666 r!7292))) b!5471238))

(declare-fun b!5471243 () Bool)

(declare-fun e!3386891 () Bool)

(declare-fun tp!1504391 () Bool)

(declare-fun tp!1504392 () Bool)

(assert (=> b!5471243 (= e!3386891 (and tp!1504391 tp!1504392))))

(assert (=> b!5470434 (= tp!1504313 e!3386891)))

(assert (= (and b!5470434 ((_ is Cons!62186) (exprs!5221 (h!68635 zl!343)))) b!5471243))

(declare-fun b!5471244 () Bool)

(declare-fun e!3386892 () Bool)

(declare-fun tp!1504393 () Bool)

(declare-fun tp!1504394 () Bool)

(assert (=> b!5471244 (= e!3386892 (and tp!1504393 tp!1504394))))

(assert (=> b!5470429 (= tp!1504306 e!3386892)))

(assert (= (and b!5470429 ((_ is Cons!62186) (exprs!5221 setElem!35905))) b!5471244))

(declare-fun b!5471247 () Bool)

(declare-fun e!3386893 () Bool)

(declare-fun tp!1504396 () Bool)

(assert (=> b!5471247 (= e!3386893 tp!1504396)))

(declare-fun b!5471246 () Bool)

(declare-fun tp!1504398 () Bool)

(declare-fun tp!1504395 () Bool)

(assert (=> b!5471246 (= e!3386893 (and tp!1504398 tp!1504395))))

(declare-fun b!5471248 () Bool)

(declare-fun tp!1504399 () Bool)

(declare-fun tp!1504397 () Bool)

(assert (=> b!5471248 (= e!3386893 (and tp!1504399 tp!1504397))))

(declare-fun b!5471245 () Bool)

(assert (=> b!5471245 (= e!3386893 tp_is_empty!39927)))

(assert (=> b!5470421 (= tp!1504305 e!3386893)))

(assert (= (and b!5470421 ((_ is ElementMatch!15337) (regOne!31186 r!7292))) b!5471245))

(assert (= (and b!5470421 ((_ is Concat!24182) (regOne!31186 r!7292))) b!5471246))

(assert (= (and b!5470421 ((_ is Star!15337) (regOne!31186 r!7292))) b!5471247))

(assert (= (and b!5470421 ((_ is Union!15337) (regOne!31186 r!7292))) b!5471248))

(declare-fun b!5471251 () Bool)

(declare-fun e!3386894 () Bool)

(declare-fun tp!1504401 () Bool)

(assert (=> b!5471251 (= e!3386894 tp!1504401)))

(declare-fun b!5471250 () Bool)

(declare-fun tp!1504403 () Bool)

(declare-fun tp!1504400 () Bool)

(assert (=> b!5471250 (= e!3386894 (and tp!1504403 tp!1504400))))

(declare-fun b!5471252 () Bool)

(declare-fun tp!1504404 () Bool)

(declare-fun tp!1504402 () Bool)

(assert (=> b!5471252 (= e!3386894 (and tp!1504404 tp!1504402))))

(declare-fun b!5471249 () Bool)

(assert (=> b!5471249 (= e!3386894 tp_is_empty!39927)))

(assert (=> b!5470421 (= tp!1504304 e!3386894)))

(assert (= (and b!5470421 ((_ is ElementMatch!15337) (regTwo!31186 r!7292))) b!5471249))

(assert (= (and b!5470421 ((_ is Concat!24182) (regTwo!31186 r!7292))) b!5471250))

(assert (= (and b!5470421 ((_ is Star!15337) (regTwo!31186 r!7292))) b!5471251))

(assert (= (and b!5470421 ((_ is Union!15337) (regTwo!31186 r!7292))) b!5471252))

(declare-fun b!5471260 () Bool)

(declare-fun e!3386900 () Bool)

(declare-fun tp!1504409 () Bool)

(assert (=> b!5471260 (= e!3386900 tp!1504409)))

(declare-fun e!3386899 () Bool)

(declare-fun b!5471259 () Bool)

(declare-fun tp!1504410 () Bool)

(assert (=> b!5471259 (= e!3386899 (and (inv!81589 (h!68635 (t!375540 zl!343))) e!3386900 tp!1504410))))

(assert (=> b!5470400 (= tp!1504308 e!3386899)))

(assert (= b!5471259 b!5471260))

(assert (= (and b!5470400 ((_ is Cons!62187) (t!375540 zl!343))) b!5471259))

(declare-fun m!6489300 () Bool)

(assert (=> b!5471259 m!6489300))

(declare-fun b!5471265 () Bool)

(declare-fun e!3386903 () Bool)

(declare-fun tp!1504413 () Bool)

(assert (=> b!5471265 (= e!3386903 (and tp_is_empty!39927 tp!1504413))))

(assert (=> b!5470417 (= tp!1504310 e!3386903)))

(assert (= (and b!5470417 ((_ is Cons!62188) (t!375541 s!2326))) b!5471265))

(declare-fun condSetEmpty!35911 () Bool)

(assert (=> setNonEmpty!35905 (= condSetEmpty!35911 (= setRest!35905 ((as const (Array Context!9442 Bool)) false)))))

(declare-fun setRes!35911 () Bool)

(assert (=> setNonEmpty!35905 (= tp!1504311 setRes!35911)))

(declare-fun setIsEmpty!35911 () Bool)

(assert (=> setIsEmpty!35911 setRes!35911))

(declare-fun tp!1504418 () Bool)

(declare-fun e!3386906 () Bool)

(declare-fun setElem!35911 () Context!9442)

(declare-fun setNonEmpty!35911 () Bool)

(assert (=> setNonEmpty!35911 (= setRes!35911 (and tp!1504418 (inv!81589 setElem!35911) e!3386906))))

(declare-fun setRest!35911 () (InoxSet Context!9442))

(assert (=> setNonEmpty!35911 (= setRest!35905 ((_ map or) (store ((as const (Array Context!9442 Bool)) false) setElem!35911 true) setRest!35911))))

(declare-fun b!5471270 () Bool)

(declare-fun tp!1504419 () Bool)

(assert (=> b!5471270 (= e!3386906 tp!1504419)))

(assert (= (and setNonEmpty!35905 condSetEmpty!35911) setIsEmpty!35911))

(assert (= (and setNonEmpty!35905 (not condSetEmpty!35911)) setNonEmpty!35911))

(assert (= setNonEmpty!35911 b!5471270))

(declare-fun m!6489302 () Bool)

(assert (=> setNonEmpty!35911 m!6489302))

(declare-fun b!5471273 () Bool)

(declare-fun e!3386907 () Bool)

(declare-fun tp!1504421 () Bool)

(assert (=> b!5471273 (= e!3386907 tp!1504421)))

(declare-fun b!5471272 () Bool)

(declare-fun tp!1504423 () Bool)

(declare-fun tp!1504420 () Bool)

(assert (=> b!5471272 (= e!3386907 (and tp!1504423 tp!1504420))))

(declare-fun b!5471274 () Bool)

(declare-fun tp!1504424 () Bool)

(declare-fun tp!1504422 () Bool)

(assert (=> b!5471274 (= e!3386907 (and tp!1504424 tp!1504422))))

(declare-fun b!5471271 () Bool)

(assert (=> b!5471271 (= e!3386907 tp_is_empty!39927)))

(assert (=> b!5470433 (= tp!1504312 e!3386907)))

(assert (= (and b!5470433 ((_ is ElementMatch!15337) (regOne!31187 r!7292))) b!5471271))

(assert (= (and b!5470433 ((_ is Concat!24182) (regOne!31187 r!7292))) b!5471272))

(assert (= (and b!5470433 ((_ is Star!15337) (regOne!31187 r!7292))) b!5471273))

(assert (= (and b!5470433 ((_ is Union!15337) (regOne!31187 r!7292))) b!5471274))

(declare-fun b!5471277 () Bool)

(declare-fun e!3386908 () Bool)

(declare-fun tp!1504426 () Bool)

(assert (=> b!5471277 (= e!3386908 tp!1504426)))

(declare-fun b!5471276 () Bool)

(declare-fun tp!1504428 () Bool)

(declare-fun tp!1504425 () Bool)

(assert (=> b!5471276 (= e!3386908 (and tp!1504428 tp!1504425))))

(declare-fun b!5471278 () Bool)

(declare-fun tp!1504429 () Bool)

(declare-fun tp!1504427 () Bool)

(assert (=> b!5471278 (= e!3386908 (and tp!1504429 tp!1504427))))

(declare-fun b!5471275 () Bool)

(assert (=> b!5471275 (= e!3386908 tp_is_empty!39927)))

(assert (=> b!5470433 (= tp!1504307 e!3386908)))

(assert (= (and b!5470433 ((_ is ElementMatch!15337) (regTwo!31187 r!7292))) b!5471275))

(assert (= (and b!5470433 ((_ is Concat!24182) (regTwo!31187 r!7292))) b!5471276))

(assert (= (and b!5470433 ((_ is Star!15337) (regTwo!31187 r!7292))) b!5471277))

(assert (= (and b!5470433 ((_ is Union!15337) (regTwo!31187 r!7292))) b!5471278))

(declare-fun b_lambda!207971 () Bool)

(assert (= b_lambda!207967 (or b!5470423 b_lambda!207971)))

(declare-fun bs!1265031 () Bool)

(declare-fun d!1739284 () Bool)

(assert (= bs!1265031 (and d!1739284 b!5470423)))

(assert (=> bs!1265031 (= (dynLambda!24422 lambda!291097 lt!2235033) (derivationStepZipperUp!689 lt!2235033 (h!68636 s!2326)))))

(assert (=> bs!1265031 m!6488694))

(assert (=> d!1739268 d!1739284))

(declare-fun b_lambda!207973 () Bool)

(assert (= b_lambda!207947 (or b!5470423 b_lambda!207973)))

(declare-fun bs!1265032 () Bool)

(declare-fun d!1739286 () Bool)

(assert (= bs!1265032 (and d!1739286 b!5470423)))

(assert (=> bs!1265032 (= (dynLambda!24422 lambda!291097 (h!68635 zl!343)) (derivationStepZipperUp!689 (h!68635 zl!343) (h!68636 s!2326)))))

(assert (=> bs!1265032 m!6488702))

(assert (=> d!1739154 d!1739286))

(declare-fun b_lambda!207975 () Bool)

(assert (= b_lambda!207969 (or b!5470423 b_lambda!207975)))

(declare-fun bs!1265033 () Bool)

(declare-fun d!1739288 () Bool)

(assert (= bs!1265033 (and d!1739288 b!5470423)))

(assert (=> bs!1265033 (= (dynLambda!24422 lambda!291097 lt!2235017) (derivationStepZipperUp!689 lt!2235017 (h!68636 s!2326)))))

(assert (=> bs!1265033 m!6488682))

(assert (=> d!1739274 d!1739288))

(declare-fun b_lambda!207977 () Bool)

(assert (= b_lambda!207951 (or b!5470423 b_lambda!207977)))

(declare-fun bs!1265034 () Bool)

(declare-fun d!1739290 () Bool)

(assert (= bs!1265034 (and d!1739290 b!5470423)))

(assert (=> bs!1265034 (= (dynLambda!24422 lambda!291097 lt!2235007) (derivationStepZipperUp!689 lt!2235007 (h!68636 s!2326)))))

(assert (=> bs!1265034 m!6488658))

(assert (=> d!1739182 d!1739290))

(check-sat (not bm!403631) (not d!1739170) (not b!5470882) (not b!5471224) (not b!5471222) (not d!1739092) (not b!5470463) (not bm!403689) (not d!1739124) (not b!5470943) (not b!5470462) (not d!1739162) (not b!5470891) (not b!5471248) (not d!1739158) (not d!1739178) (not d!1739282) (not b!5471244) (not b!5471260) (not b!5471276) (not b!5471238) (not b!5470934) (not b!5471215) (not b_lambda!207973) (not d!1739266) (not b!5470497) (not b!5471237) (not d!1739260) (not b!5470777) (not b!5470499) (not d!1739148) (not b!5471184) (not bm!403661) (not b!5471182) (not d!1739268) (not d!1739276) (not bm!403658) (not bm!403606) (not b_lambda!207977) (not b!5471177) (not b!5471252) (not b!5470464) (not d!1739182) (not b!5471278) (not b!5470880) (not b!5471250) (not b!5471259) (not bm!403657) (not b!5470946) (not d!1739202) (not bs!1265031) (not d!1739080) (not d!1739138) (not b!5470505) (not b_lambda!207975) (not b!5471209) (not b!5471277) (not d!1739082) (not b!5470470) (not d!1739274) (not b!5470501) (not bs!1265032) (not b!5470465) (not d!1739196) (not bm!403687) (not b!5470504) (not d!1739206) (not b!5471185) (not b!5470903) (not d!1739164) (not b!5471213) (not d!1739248) (not b!5470498) (not d!1739166) (not d!1739108) (not b!5471183) (not d!1739184) (not b!5470677) (not bm!403660) (not d!1739198) (not d!1739084) (not bm!403610) (not b!5470623) (not b!5471205) (not b_lambda!207971) (not setNonEmpty!35911) (not b!5470475) (not b!5470468) (not d!1739236) (not b!5471274) (not b!5470680) (not d!1739150) (not b!5470956) (not b!5470886) (not d!1739264) (not b!5471243) (not b!5471217) (not b!5470884) (not b!5471270) (not b!5470556) (not d!1739190) (not b!5470969) (not b!5471199) (not b!5470906) (not b!5471273) (not b!5470524) (not b!5471251) (not b!5471247) (not d!1739280) (not bm!403663) (not b!5470502) (not b!5470469) (not bm!403656) (not bm!403625) (not bm!403686) (not bm!403604) (not d!1739270) (not b!5471194) (not b!5471246) (not b!5470935) (not bm!403587) (not b!5470932) tp_is_empty!39927 (not b!5471178) (not bs!1265033) (not b!5471211) (not b!5471236) (not b!5470525) (not bm!403624) (not b!5471265) (not bm!403690) (not b!5470933) (not bm!403589) (not bs!1265034) (not d!1739188) (not b!5470959) (not d!1739258) (not b!5471272) (not b!5471196) (not b!5470781) (not b!5470893) (not bm!403644) (not bm!403688) (not bm!403605) (not d!1739154) (not b!5471191))
(check-sat)
