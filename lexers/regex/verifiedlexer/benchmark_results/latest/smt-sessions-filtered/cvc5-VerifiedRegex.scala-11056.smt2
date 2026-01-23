; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!573036 () Bool)

(assert start!573036)

(declare-fun b!5477508 () Bool)

(assert (=> b!5477508 true))

(assert (=> b!5477508 true))

(declare-fun lambda!292085 () Int)

(declare-fun lambda!292084 () Int)

(assert (=> b!5477508 (not (= lambda!292085 lambda!292084))))

(assert (=> b!5477508 true))

(assert (=> b!5477508 true))

(declare-fun lambda!292086 () Int)

(assert (=> b!5477508 (not (= lambda!292086 lambda!292084))))

(assert (=> b!5477508 (not (= lambda!292086 lambda!292085))))

(assert (=> b!5477508 true))

(assert (=> b!5477508 true))

(declare-fun b!5477507 () Bool)

(assert (=> b!5477507 true))

(declare-fun b!5477483 () Bool)

(declare-fun e!3390264 () Bool)

(declare-fun e!3390263 () Bool)

(assert (=> b!5477483 (= e!3390264 e!3390263)))

(declare-fun res!2335029 () Bool)

(assert (=> b!5477483 (=> res!2335029 e!3390263)))

(declare-datatypes ((C!30986 0))(
  ( (C!30987 (val!25195 Int)) )
))
(declare-datatypes ((List!62373 0))(
  ( (Nil!62249) (Cons!62249 (h!68697 C!30986) (t!375602 List!62373)) )
))
(declare-fun s!2326 () List!62373)

(declare-datatypes ((Regex!15358 0))(
  ( (ElementMatch!15358 (c!956963 C!30986)) (Concat!24203 (regOne!31228 Regex!15358) (regTwo!31228 Regex!15358)) (EmptyExpr!15358) (Star!15358 (reg!15687 Regex!15358)) (EmptyLang!15358) (Union!15358 (regOne!31229 Regex!15358) (regTwo!31229 Regex!15358)) )
))
(declare-datatypes ((List!62374 0))(
  ( (Nil!62250) (Cons!62250 (h!68698 Regex!15358) (t!375603 List!62374)) )
))
(declare-datatypes ((Context!9484 0))(
  ( (Context!9485 (exprs!5242 List!62374)) )
))
(declare-fun lt!2237466 () (Set Context!9484))

(declare-fun lt!2237456 () (Set Context!9484))

(declare-fun derivationStepZipper!1553 ((Set Context!9484) C!30986) (Set Context!9484))

(assert (=> b!5477483 (= res!2335029 (not (= lt!2237456 (derivationStepZipper!1553 lt!2237466 (h!68697 s!2326)))))))

(declare-fun lambda!292087 () Int)

(declare-fun lt!2237455 () Context!9484)

(declare-fun flatMap!1061 ((Set Context!9484) Int) (Set Context!9484))

(declare-fun derivationStepZipperUp!710 (Context!9484 C!30986) (Set Context!9484))

(assert (=> b!5477483 (= (flatMap!1061 lt!2237466 lambda!292087) (derivationStepZipperUp!710 lt!2237455 (h!68697 s!2326)))))

(declare-datatypes ((Unit!155166 0))(
  ( (Unit!155167) )
))
(declare-fun lt!2237474 () Unit!155166)

(declare-fun lemmaFlatMapOnSingletonSet!593 ((Set Context!9484) Context!9484 Int) Unit!155166)

(assert (=> b!5477483 (= lt!2237474 (lemmaFlatMapOnSingletonSet!593 lt!2237466 lt!2237455 lambda!292087))))

(declare-fun lt!2237457 () Context!9484)

(declare-fun lt!2237479 () (Set Context!9484))

(assert (=> b!5477483 (= (flatMap!1061 lt!2237479 lambda!292087) (derivationStepZipperUp!710 lt!2237457 (h!68697 s!2326)))))

(declare-fun lt!2237473 () Unit!155166)

(assert (=> b!5477483 (= lt!2237473 (lemmaFlatMapOnSingletonSet!593 lt!2237479 lt!2237457 lambda!292087))))

(declare-fun lt!2237477 () (Set Context!9484))

(assert (=> b!5477483 (= lt!2237477 (derivationStepZipperUp!710 lt!2237455 (h!68697 s!2326)))))

(declare-fun lt!2237480 () (Set Context!9484))

(assert (=> b!5477483 (= lt!2237480 (derivationStepZipperUp!710 lt!2237457 (h!68697 s!2326)))))

(assert (=> b!5477483 (= lt!2237466 (set.insert lt!2237455 (as set.empty (Set Context!9484))))))

(assert (=> b!5477483 (= lt!2237479 (set.insert lt!2237457 (as set.empty (Set Context!9484))))))

(declare-fun r!7292 () Regex!15358)

(assert (=> b!5477483 (= lt!2237457 (Context!9485 (Cons!62250 (reg!15687 r!7292) Nil!62250)))))

(declare-fun b!5477484 () Bool)

(declare-fun res!2335025 () Bool)

(declare-fun e!3390267 () Bool)

(assert (=> b!5477484 (=> res!2335025 e!3390267)))

(assert (=> b!5477484 (= res!2335025 (or (is-EmptyExpr!15358 r!7292) (is-EmptyLang!15358 r!7292) (is-ElementMatch!15358 r!7292) (is-Union!15358 r!7292) (is-Concat!24203 r!7292)))))

(declare-fun b!5477486 () Bool)

(declare-fun e!3390273 () Bool)

(declare-fun e!3390265 () Bool)

(assert (=> b!5477486 (= e!3390273 e!3390265)))

(declare-fun res!2335023 () Bool)

(assert (=> b!5477486 (=> res!2335023 e!3390265)))

(declare-fun derivationStepZipperDown!784 (Regex!15358 Context!9484 C!30986) (Set Context!9484))

(assert (=> b!5477486 (= res!2335023 (not (= lt!2237456 (derivationStepZipperDown!784 (reg!15687 r!7292) lt!2237455 (h!68697 s!2326)))))))

(declare-fun lt!2237465 () List!62374)

(assert (=> b!5477486 (= lt!2237455 (Context!9485 lt!2237465))))

(declare-fun lt!2237468 () (Set Context!9484))

(declare-fun lt!2237476 () Context!9484)

(assert (=> b!5477486 (= (flatMap!1061 lt!2237468 lambda!292087) (derivationStepZipperUp!710 lt!2237476 (h!68697 s!2326)))))

(declare-fun lt!2237462 () Unit!155166)

(assert (=> b!5477486 (= lt!2237462 (lemmaFlatMapOnSingletonSet!593 lt!2237468 lt!2237476 lambda!292087))))

(declare-fun lt!2237472 () (Set Context!9484))

(assert (=> b!5477486 (= lt!2237472 (derivationStepZipperUp!710 lt!2237476 (h!68697 s!2326)))))

(assert (=> b!5477486 (= lt!2237468 (set.insert lt!2237476 (as set.empty (Set Context!9484))))))

(assert (=> b!5477486 (= lt!2237476 (Context!9485 (Cons!62250 (reg!15687 r!7292) lt!2237465)))))

(assert (=> b!5477486 (= lt!2237465 (Cons!62250 r!7292 Nil!62250))))

(declare-fun b!5477487 () Bool)

(declare-fun e!3390277 () Bool)

(declare-fun e!3390275 () Bool)

(assert (=> b!5477487 (= e!3390277 e!3390275)))

(declare-fun res!2335018 () Bool)

(assert (=> b!5477487 (=> res!2335018 e!3390275)))

(declare-fun c!332 () Context!9484)

(declare-fun lambda!292088 () Int)

(declare-fun forall!14615 (List!62374 Int) Bool)

(assert (=> b!5477487 (= res!2335018 (not (forall!14615 (exprs!5242 c!332) lambda!292088)))))

(declare-fun b!5477488 () Bool)

(declare-fun res!2335028 () Bool)

(assert (=> b!5477488 (=> res!2335028 e!3390267)))

(declare-datatypes ((List!62375 0))(
  ( (Nil!62251) (Cons!62251 (h!68699 Context!9484) (t!375604 List!62375)) )
))
(declare-fun zl!343 () List!62375)

(declare-fun generalisedUnion!1287 (List!62374) Regex!15358)

(declare-fun unfocusZipperList!800 (List!62375) List!62374)

(assert (=> b!5477488 (= res!2335028 (not (= r!7292 (generalisedUnion!1287 (unfocusZipperList!800 zl!343)))))))

(declare-fun b!5477489 () Bool)

(declare-fun e!3390261 () Bool)

(declare-fun e!3390274 () Bool)

(assert (=> b!5477489 (= e!3390261 e!3390274)))

(declare-fun res!2335032 () Bool)

(assert (=> b!5477489 (=> res!2335032 e!3390274)))

(declare-fun lt!2237475 () (Set Context!9484))

(declare-fun lt!2237471 () (Set Context!9484))

(assert (=> b!5477489 (= res!2335032 (not (= lt!2237475 lt!2237471)))))

(assert (=> b!5477489 (= lt!2237471 (derivationStepZipperDown!784 r!7292 (Context!9485 Nil!62250) (h!68697 s!2326)))))

(assert (=> b!5477489 (= lt!2237475 (derivationStepZipperUp!710 (Context!9485 (Cons!62250 r!7292 Nil!62250)) (h!68697 s!2326)))))

(declare-fun z!1189 () (Set Context!9484))

(assert (=> b!5477489 (= lt!2237456 (derivationStepZipper!1553 z!1189 (h!68697 s!2326)))))

(declare-fun e!3390270 () Bool)

(declare-fun tp!1505528 () Bool)

(declare-fun e!3390271 () Bool)

(declare-fun b!5477490 () Bool)

(declare-fun inv!81643 (Context!9484) Bool)

(assert (=> b!5477490 (= e!3390270 (and (inv!81643 (h!68699 zl!343)) e!3390271 tp!1505528))))

(declare-fun b!5477491 () Bool)

(declare-fun res!2335017 () Bool)

(assert (=> b!5477491 (=> res!2335017 e!3390265)))

(declare-fun lt!2237463 () Regex!15358)

(assert (=> b!5477491 (= res!2335017 (or (not (= lt!2237463 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5477492 () Bool)

(declare-fun e!3390266 () Bool)

(declare-fun lt!2237460 () Bool)

(assert (=> b!5477492 (= e!3390266 lt!2237460)))

(declare-fun b!5477493 () Bool)

(declare-fun res!2335012 () Bool)

(assert (=> b!5477493 (=> res!2335012 e!3390263)))

(declare-fun unfocusZipper!1100 (List!62375) Regex!15358)

(assert (=> b!5477493 (= res!2335012 (not (= (unfocusZipper!1100 (Cons!62251 lt!2237457 Nil!62251)) (reg!15687 r!7292))))))

(declare-fun b!5477494 () Bool)

(declare-fun res!2335019 () Bool)

(assert (=> b!5477494 (=> res!2335019 e!3390267)))

(assert (=> b!5477494 (= res!2335019 (not (is-Cons!62250 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun b!5477495 () Bool)

(declare-fun e!3390268 () Bool)

(declare-fun tp_is_empty!39969 () Bool)

(declare-fun tp!1505527 () Bool)

(assert (=> b!5477495 (= e!3390268 (and tp_is_empty!39969 tp!1505527))))

(declare-fun b!5477496 () Bool)

(declare-fun e!3390272 () Bool)

(declare-fun tp!1505532 () Bool)

(assert (=> b!5477496 (= e!3390272 tp!1505532)))

(declare-fun b!5477497 () Bool)

(declare-fun e!3390262 () Bool)

(declare-fun tp!1505536 () Bool)

(declare-fun tp!1505531 () Bool)

(assert (=> b!5477497 (= e!3390262 (and tp!1505536 tp!1505531))))

(declare-fun b!5477498 () Bool)

(declare-fun res!2335022 () Bool)

(assert (=> b!5477498 (=> res!2335022 e!3390267)))

(declare-fun isEmpty!34204 (List!62375) Bool)

(assert (=> b!5477498 (= res!2335022 (not (isEmpty!34204 (t!375604 zl!343))))))

(declare-fun b!5477499 () Bool)

(declare-fun res!2335010 () Bool)

(assert (=> b!5477499 (=> res!2335010 e!3390263)))

(assert (=> b!5477499 (= res!2335010 (not (= (unfocusZipper!1100 (Cons!62251 lt!2237455 Nil!62251)) r!7292)))))

(declare-fun b!5477500 () Bool)

(assert (=> b!5477500 (= e!3390263 e!3390277)))

(declare-fun res!2335009 () Bool)

(assert (=> b!5477500 (=> res!2335009 e!3390277)))

(declare-fun lt!2237454 () Bool)

(assert (=> b!5477500 (= res!2335009 lt!2237454)))

(declare-fun lt!2237470 () Regex!15358)

(declare-fun matchRSpec!2461 (Regex!15358 List!62373) Bool)

(assert (=> b!5477500 (= lt!2237454 (matchRSpec!2461 lt!2237470 s!2326))))

(declare-fun matchR!7543 (Regex!15358 List!62373) Bool)

(assert (=> b!5477500 (= lt!2237454 (matchR!7543 lt!2237470 s!2326))))

(declare-fun lt!2237478 () Unit!155166)

(declare-fun mainMatchTheorem!2461 (Regex!15358 List!62373) Unit!155166)

(assert (=> b!5477500 (= lt!2237478 (mainMatchTheorem!2461 lt!2237470 s!2326))))

(declare-fun b!5477501 () Bool)

(declare-fun e!3390269 () Bool)

(declare-fun e!3390276 () Bool)

(assert (=> b!5477501 (= e!3390269 e!3390276)))

(declare-fun res!2335013 () Bool)

(assert (=> b!5477501 (=> (not res!2335013) (not e!3390276))))

(assert (=> b!5477501 (= res!2335013 (= r!7292 lt!2237463))))

(assert (=> b!5477501 (= lt!2237463 (unfocusZipper!1100 zl!343))))

(declare-fun b!5477502 () Bool)

(declare-fun e!3390278 () Bool)

(declare-fun tp!1505529 () Bool)

(assert (=> b!5477502 (= e!3390278 tp!1505529)))

(declare-fun b!5477503 () Bool)

(declare-fun res!2335024 () Bool)

(assert (=> b!5477503 (=> res!2335024 e!3390267)))

(declare-fun generalisedConcat!1027 (List!62374) Regex!15358)

(assert (=> b!5477503 (= res!2335024 (not (= r!7292 (generalisedConcat!1027 (exprs!5242 (h!68699 zl!343))))))))

(declare-fun b!5477504 () Bool)

(declare-fun res!2335031 () Bool)

(assert (=> b!5477504 (=> res!2335031 e!3390265)))

(declare-fun matchZipper!1576 ((Set Context!9484) List!62373) Bool)

(assert (=> b!5477504 (= res!2335031 (not (= (matchZipper!1576 lt!2237468 s!2326) (matchZipper!1576 (derivationStepZipper!1553 lt!2237468 (h!68697 s!2326)) (t!375602 s!2326)))))))

(declare-fun b!5477505 () Bool)

(declare-fun tp!1505526 () Bool)

(assert (=> b!5477505 (= e!3390271 tp!1505526)))

(declare-fun b!5477506 () Bool)

(declare-fun res!2335026 () Bool)

(assert (=> b!5477506 (=> res!2335026 e!3390277)))

(assert (=> b!5477506 (= res!2335026 (not (matchZipper!1576 z!1189 s!2326)))))

(assert (=> b!5477507 (= e!3390274 e!3390273)))

(declare-fun res!2335021 () Bool)

(assert (=> b!5477507 (=> res!2335021 e!3390273)))

(assert (=> b!5477507 (= res!2335021 (not (= lt!2237456 lt!2237471)))))

(assert (=> b!5477507 (= (flatMap!1061 z!1189 lambda!292087) (derivationStepZipperUp!710 (h!68699 zl!343) (h!68697 s!2326)))))

(declare-fun lt!2237464 () Unit!155166)

(assert (=> b!5477507 (= lt!2237464 (lemmaFlatMapOnSingletonSet!593 z!1189 (h!68699 zl!343) lambda!292087))))

(declare-fun b!5477485 () Bool)

(assert (=> b!5477485 (= e!3390262 tp_is_empty!39969)))

(declare-fun res!2335011 () Bool)

(assert (=> start!573036 (=> (not res!2335011) (not e!3390269))))

(declare-fun validRegex!7094 (Regex!15358) Bool)

(assert (=> start!573036 (= res!2335011 (validRegex!7094 r!7292))))

(assert (=> start!573036 e!3390269))

(assert (=> start!573036 e!3390262))

(assert (=> start!573036 e!3390268))

(assert (=> start!573036 (and (inv!81643 c!332) e!3390278)))

(declare-fun condSetEmpty!35998 () Bool)

(assert (=> start!573036 (= condSetEmpty!35998 (= z!1189 (as set.empty (Set Context!9484))))))

(declare-fun setRes!35998 () Bool)

(assert (=> start!573036 setRes!35998))

(assert (=> start!573036 e!3390270))

(assert (=> b!5477508 (= e!3390267 e!3390261)))

(declare-fun res!2335020 () Bool)

(assert (=> b!5477508 (=> res!2335020 e!3390261)))

(declare-fun lt!2237459 () Bool)

(assert (=> b!5477508 (= res!2335020 (not (= lt!2237459 e!3390266)))))

(declare-fun res!2335030 () Bool)

(assert (=> b!5477508 (=> res!2335030 e!3390266)))

(declare-fun isEmpty!34205 (List!62373) Bool)

(assert (=> b!5477508 (= res!2335030 (isEmpty!34205 s!2326))))

(declare-fun Exists!2537 (Int) Bool)

(assert (=> b!5477508 (= (Exists!2537 lambda!292084) (Exists!2537 lambda!292086))))

(declare-fun lt!2237469 () Unit!155166)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1187 (Regex!15358 Regex!15358 List!62373) Unit!155166)

(assert (=> b!5477508 (= lt!2237469 (lemmaExistCutMatchRandMatchRSpecEquivalent!1187 (reg!15687 r!7292) r!7292 s!2326))))

(assert (=> b!5477508 (= (Exists!2537 lambda!292084) (Exists!2537 lambda!292085))))

(declare-fun lt!2237467 () Unit!155166)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!511 (Regex!15358 List!62373) Unit!155166)

(assert (=> b!5477508 (= lt!2237467 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!511 (reg!15687 r!7292) s!2326))))

(assert (=> b!5477508 (= lt!2237460 (Exists!2537 lambda!292084))))

(declare-datatypes ((tuple2!65110 0))(
  ( (tuple2!65111 (_1!35858 List!62373) (_2!35858 List!62373)) )
))
(declare-datatypes ((Option!15467 0))(
  ( (None!15466) (Some!15466 (v!51495 tuple2!65110)) )
))
(declare-fun isDefined!12170 (Option!15467) Bool)

(declare-fun findConcatSeparation!1881 (Regex!15358 Regex!15358 List!62373 List!62373 List!62373) Option!15467)

(assert (=> b!5477508 (= lt!2237460 (isDefined!12170 (findConcatSeparation!1881 (reg!15687 r!7292) r!7292 Nil!62249 s!2326 s!2326)))))

(declare-fun lt!2237461 () Unit!155166)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1645 (Regex!15358 Regex!15358 List!62373) Unit!155166)

(assert (=> b!5477508 (= lt!2237461 (lemmaFindConcatSeparationEquivalentToExists!1645 (reg!15687 r!7292) r!7292 s!2326))))

(declare-fun b!5477509 () Bool)

(declare-fun tp!1505530 () Bool)

(declare-fun tp!1505533 () Bool)

(assert (=> b!5477509 (= e!3390262 (and tp!1505530 tp!1505533))))

(declare-fun setIsEmpty!35998 () Bool)

(assert (=> setIsEmpty!35998 setRes!35998))

(declare-fun b!5477510 () Bool)

(assert (=> b!5477510 (= e!3390265 e!3390264)))

(declare-fun res!2335015 () Bool)

(assert (=> b!5477510 (=> res!2335015 e!3390264)))

(assert (=> b!5477510 (= res!2335015 (not (= (unfocusZipper!1100 (Cons!62251 lt!2237476 Nil!62251)) lt!2237470)))))

(assert (=> b!5477510 (= lt!2237470 (Concat!24203 (reg!15687 r!7292) r!7292))))

(declare-fun b!5477511 () Bool)

(declare-fun res!2335016 () Bool)

(assert (=> b!5477511 (=> (not res!2335016) (not e!3390269))))

(declare-fun toList!9142 ((Set Context!9484)) List!62375)

(assert (=> b!5477511 (= res!2335016 (= (toList!9142 z!1189) zl!343))))

(declare-fun b!5477512 () Bool)

(declare-fun res!2335014 () Bool)

(assert (=> b!5477512 (=> res!2335014 e!3390261)))

(assert (=> b!5477512 (= res!2335014 (is-Nil!62249 s!2326))))

(declare-fun b!5477513 () Bool)

(assert (=> b!5477513 (= e!3390276 (not e!3390267))))

(declare-fun res!2335027 () Bool)

(assert (=> b!5477513 (=> res!2335027 e!3390267)))

(assert (=> b!5477513 (= res!2335027 (not (is-Cons!62251 zl!343)))))

(assert (=> b!5477513 (= lt!2237459 (matchRSpec!2461 r!7292 s!2326))))

(assert (=> b!5477513 (= lt!2237459 (matchR!7543 r!7292 s!2326))))

(declare-fun lt!2237458 () Unit!155166)

(assert (=> b!5477513 (= lt!2237458 (mainMatchTheorem!2461 r!7292 s!2326))))

(declare-fun b!5477514 () Bool)

(assert (=> b!5477514 (= e!3390275 (forall!14615 lt!2237465 lambda!292088))))

(declare-fun setElem!35998 () Context!9484)

(declare-fun tp!1505535 () Bool)

(declare-fun setNonEmpty!35998 () Bool)

(assert (=> setNonEmpty!35998 (= setRes!35998 (and tp!1505535 (inv!81643 setElem!35998) e!3390272))))

(declare-fun setRest!35998 () (Set Context!9484))

(assert (=> setNonEmpty!35998 (= z!1189 (set.union (set.insert setElem!35998 (as set.empty (Set Context!9484))) setRest!35998))))

(declare-fun b!5477515 () Bool)

(declare-fun tp!1505534 () Bool)

(assert (=> b!5477515 (= e!3390262 tp!1505534)))

(assert (= (and start!573036 res!2335011) b!5477511))

(assert (= (and b!5477511 res!2335016) b!5477501))

(assert (= (and b!5477501 res!2335013) b!5477513))

(assert (= (and b!5477513 (not res!2335027)) b!5477498))

(assert (= (and b!5477498 (not res!2335022)) b!5477503))

(assert (= (and b!5477503 (not res!2335024)) b!5477494))

(assert (= (and b!5477494 (not res!2335019)) b!5477488))

(assert (= (and b!5477488 (not res!2335028)) b!5477484))

(assert (= (and b!5477484 (not res!2335025)) b!5477508))

(assert (= (and b!5477508 (not res!2335030)) b!5477492))

(assert (= (and b!5477508 (not res!2335020)) b!5477512))

(assert (= (and b!5477512 (not res!2335014)) b!5477489))

(assert (= (and b!5477489 (not res!2335032)) b!5477507))

(assert (= (and b!5477507 (not res!2335021)) b!5477486))

(assert (= (and b!5477486 (not res!2335023)) b!5477504))

(assert (= (and b!5477504 (not res!2335031)) b!5477491))

(assert (= (and b!5477491 (not res!2335017)) b!5477510))

(assert (= (and b!5477510 (not res!2335015)) b!5477483))

(assert (= (and b!5477483 (not res!2335029)) b!5477493))

(assert (= (and b!5477493 (not res!2335012)) b!5477499))

(assert (= (and b!5477499 (not res!2335010)) b!5477500))

(assert (= (and b!5477500 (not res!2335009)) b!5477506))

(assert (= (and b!5477506 (not res!2335026)) b!5477487))

(assert (= (and b!5477487 (not res!2335018)) b!5477514))

(assert (= (and start!573036 (is-ElementMatch!15358 r!7292)) b!5477485))

(assert (= (and start!573036 (is-Concat!24203 r!7292)) b!5477497))

(assert (= (and start!573036 (is-Star!15358 r!7292)) b!5477515))

(assert (= (and start!573036 (is-Union!15358 r!7292)) b!5477509))

(assert (= (and start!573036 (is-Cons!62249 s!2326)) b!5477495))

(assert (= start!573036 b!5477502))

(assert (= (and start!573036 condSetEmpty!35998) setIsEmpty!35998))

(assert (= (and start!573036 (not condSetEmpty!35998)) setNonEmpty!35998))

(assert (= setNonEmpty!35998 b!5477496))

(assert (= b!5477490 b!5477505))

(assert (= (and start!573036 (is-Cons!62251 zl!343)) b!5477490))

(declare-fun m!6493724 () Bool)

(assert (=> start!573036 m!6493724))

(declare-fun m!6493726 () Bool)

(assert (=> start!573036 m!6493726))

(declare-fun m!6493728 () Bool)

(assert (=> b!5477488 m!6493728))

(assert (=> b!5477488 m!6493728))

(declare-fun m!6493730 () Bool)

(assert (=> b!5477488 m!6493730))

(declare-fun m!6493732 () Bool)

(assert (=> b!5477507 m!6493732))

(declare-fun m!6493734 () Bool)

(assert (=> b!5477507 m!6493734))

(declare-fun m!6493736 () Bool)

(assert (=> b!5477507 m!6493736))

(declare-fun m!6493738 () Bool)

(assert (=> b!5477483 m!6493738))

(declare-fun m!6493740 () Bool)

(assert (=> b!5477483 m!6493740))

(declare-fun m!6493742 () Bool)

(assert (=> b!5477483 m!6493742))

(declare-fun m!6493744 () Bool)

(assert (=> b!5477483 m!6493744))

(declare-fun m!6493746 () Bool)

(assert (=> b!5477483 m!6493746))

(declare-fun m!6493748 () Bool)

(assert (=> b!5477483 m!6493748))

(declare-fun m!6493750 () Bool)

(assert (=> b!5477483 m!6493750))

(declare-fun m!6493752 () Bool)

(assert (=> b!5477483 m!6493752))

(declare-fun m!6493754 () Bool)

(assert (=> b!5477483 m!6493754))

(declare-fun m!6493756 () Bool)

(assert (=> b!5477489 m!6493756))

(declare-fun m!6493758 () Bool)

(assert (=> b!5477489 m!6493758))

(declare-fun m!6493760 () Bool)

(assert (=> b!5477489 m!6493760))

(declare-fun m!6493762 () Bool)

(assert (=> b!5477514 m!6493762))

(declare-fun m!6493764 () Bool)

(assert (=> b!5477513 m!6493764))

(declare-fun m!6493766 () Bool)

(assert (=> b!5477513 m!6493766))

(declare-fun m!6493768 () Bool)

(assert (=> b!5477513 m!6493768))

(declare-fun m!6493770 () Bool)

(assert (=> b!5477510 m!6493770))

(declare-fun m!6493772 () Bool)

(assert (=> b!5477487 m!6493772))

(declare-fun m!6493774 () Bool)

(assert (=> b!5477486 m!6493774))

(declare-fun m!6493776 () Bool)

(assert (=> b!5477486 m!6493776))

(declare-fun m!6493778 () Bool)

(assert (=> b!5477486 m!6493778))

(declare-fun m!6493780 () Bool)

(assert (=> b!5477486 m!6493780))

(declare-fun m!6493782 () Bool)

(assert (=> b!5477486 m!6493782))

(declare-fun m!6493784 () Bool)

(assert (=> b!5477501 m!6493784))

(declare-fun m!6493786 () Bool)

(assert (=> b!5477504 m!6493786))

(declare-fun m!6493788 () Bool)

(assert (=> b!5477504 m!6493788))

(assert (=> b!5477504 m!6493788))

(declare-fun m!6493790 () Bool)

(assert (=> b!5477504 m!6493790))

(declare-fun m!6493792 () Bool)

(assert (=> b!5477511 m!6493792))

(declare-fun m!6493794 () Bool)

(assert (=> b!5477508 m!6493794))

(declare-fun m!6493796 () Bool)

(assert (=> b!5477508 m!6493796))

(declare-fun m!6493798 () Bool)

(assert (=> b!5477508 m!6493798))

(declare-fun m!6493800 () Bool)

(assert (=> b!5477508 m!6493800))

(declare-fun m!6493802 () Bool)

(assert (=> b!5477508 m!6493802))

(declare-fun m!6493804 () Bool)

(assert (=> b!5477508 m!6493804))

(assert (=> b!5477508 m!6493796))

(assert (=> b!5477508 m!6493804))

(declare-fun m!6493806 () Bool)

(assert (=> b!5477508 m!6493806))

(declare-fun m!6493808 () Bool)

(assert (=> b!5477508 m!6493808))

(declare-fun m!6493810 () Bool)

(assert (=> b!5477508 m!6493810))

(assert (=> b!5477508 m!6493796))

(declare-fun m!6493812 () Bool)

(assert (=> b!5477493 m!6493812))

(declare-fun m!6493814 () Bool)

(assert (=> b!5477490 m!6493814))

(declare-fun m!6493816 () Bool)

(assert (=> b!5477503 m!6493816))

(declare-fun m!6493818 () Bool)

(assert (=> b!5477506 m!6493818))

(declare-fun m!6493820 () Bool)

(assert (=> b!5477498 m!6493820))

(declare-fun m!6493822 () Bool)

(assert (=> setNonEmpty!35998 m!6493822))

(declare-fun m!6493824 () Bool)

(assert (=> b!5477500 m!6493824))

(declare-fun m!6493826 () Bool)

(assert (=> b!5477500 m!6493826))

(declare-fun m!6493828 () Bool)

(assert (=> b!5477500 m!6493828))

(declare-fun m!6493830 () Bool)

(assert (=> b!5477499 m!6493830))

(push 1)

(assert (not b!5477499))

(assert (not b!5477515))

(assert (not b!5477493))

(assert (not b!5477511))

(assert (not b!5477488))

(assert (not b!5477505))

(assert (not b!5477489))

(assert (not b!5477490))

(assert (not b!5477514))

(assert (not b!5477497))

(assert tp_is_empty!39969)

(assert (not b!5477501))

(assert (not b!5477502))

(assert (not b!5477500))

(assert (not start!573036))

(assert (not b!5477510))

(assert (not b!5477504))

(assert (not b!5477506))

(assert (not b!5477513))

(assert (not b!5477508))

(assert (not b!5477503))

(assert (not setNonEmpty!35998))

(assert (not b!5477487))

(assert (not b!5477507))

(assert (not b!5477509))

(assert (not b!5477495))

(assert (not b!5477498))

(assert (not b!5477486))

(assert (not b!5477496))

(assert (not b!5477483))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1740151 () Bool)

(declare-fun c!956976 () Bool)

(assert (=> d!1740151 (= c!956976 (isEmpty!34205 s!2326))))

(declare-fun e!3390345 () Bool)

(assert (=> d!1740151 (= (matchZipper!1576 lt!2237468 s!2326) e!3390345)))

(declare-fun b!5477653 () Bool)

(declare-fun nullableZipper!1506 ((Set Context!9484)) Bool)

(assert (=> b!5477653 (= e!3390345 (nullableZipper!1506 lt!2237468))))

(declare-fun b!5477654 () Bool)

(declare-fun head!11735 (List!62373) C!30986)

(declare-fun tail!10832 (List!62373) List!62373)

(assert (=> b!5477654 (= e!3390345 (matchZipper!1576 (derivationStepZipper!1553 lt!2237468 (head!11735 s!2326)) (tail!10832 s!2326)))))

(assert (= (and d!1740151 c!956976) b!5477653))

(assert (= (and d!1740151 (not c!956976)) b!5477654))

(assert (=> d!1740151 m!6493794))

(declare-fun m!6493940 () Bool)

(assert (=> b!5477653 m!6493940))

(declare-fun m!6493942 () Bool)

(assert (=> b!5477654 m!6493942))

(assert (=> b!5477654 m!6493942))

(declare-fun m!6493944 () Bool)

(assert (=> b!5477654 m!6493944))

(declare-fun m!6493946 () Bool)

(assert (=> b!5477654 m!6493946))

(assert (=> b!5477654 m!6493944))

(assert (=> b!5477654 m!6493946))

(declare-fun m!6493948 () Bool)

(assert (=> b!5477654 m!6493948))

(assert (=> b!5477504 d!1740151))

(declare-fun d!1740153 () Bool)

(declare-fun c!956977 () Bool)

(assert (=> d!1740153 (= c!956977 (isEmpty!34205 (t!375602 s!2326)))))

(declare-fun e!3390346 () Bool)

(assert (=> d!1740153 (= (matchZipper!1576 (derivationStepZipper!1553 lt!2237468 (h!68697 s!2326)) (t!375602 s!2326)) e!3390346)))

(declare-fun b!5477655 () Bool)

(assert (=> b!5477655 (= e!3390346 (nullableZipper!1506 (derivationStepZipper!1553 lt!2237468 (h!68697 s!2326))))))

(declare-fun b!5477656 () Bool)

(assert (=> b!5477656 (= e!3390346 (matchZipper!1576 (derivationStepZipper!1553 (derivationStepZipper!1553 lt!2237468 (h!68697 s!2326)) (head!11735 (t!375602 s!2326))) (tail!10832 (t!375602 s!2326))))))

(assert (= (and d!1740153 c!956977) b!5477655))

(assert (= (and d!1740153 (not c!956977)) b!5477656))

(declare-fun m!6493950 () Bool)

(assert (=> d!1740153 m!6493950))

(assert (=> b!5477655 m!6493788))

(declare-fun m!6493952 () Bool)

(assert (=> b!5477655 m!6493952))

(declare-fun m!6493954 () Bool)

(assert (=> b!5477656 m!6493954))

(assert (=> b!5477656 m!6493788))

(assert (=> b!5477656 m!6493954))

(declare-fun m!6493956 () Bool)

(assert (=> b!5477656 m!6493956))

(declare-fun m!6493958 () Bool)

(assert (=> b!5477656 m!6493958))

(assert (=> b!5477656 m!6493956))

(assert (=> b!5477656 m!6493958))

(declare-fun m!6493960 () Bool)

(assert (=> b!5477656 m!6493960))

(assert (=> b!5477504 d!1740153))

(declare-fun bs!1265675 () Bool)

(declare-fun d!1740155 () Bool)

(assert (= bs!1265675 (and d!1740155 b!5477507)))

(declare-fun lambda!292116 () Int)

(assert (=> bs!1265675 (= lambda!292116 lambda!292087)))

(assert (=> d!1740155 true))

(assert (=> d!1740155 (= (derivationStepZipper!1553 lt!2237468 (h!68697 s!2326)) (flatMap!1061 lt!2237468 lambda!292116))))

(declare-fun bs!1265676 () Bool)

(assert (= bs!1265676 d!1740155))

(declare-fun m!6493962 () Bool)

(assert (=> bs!1265676 m!6493962))

(assert (=> b!5477504 d!1740155))

(declare-fun d!1740157 () Bool)

(declare-fun dynLambda!24434 (Int Context!9484) (Set Context!9484))

(assert (=> d!1740157 (= (flatMap!1061 lt!2237479 lambda!292087) (dynLambda!24434 lambda!292087 lt!2237457))))

(declare-fun lt!2237564 () Unit!155166)

(declare-fun choose!41675 ((Set Context!9484) Context!9484 Int) Unit!155166)

(assert (=> d!1740157 (= lt!2237564 (choose!41675 lt!2237479 lt!2237457 lambda!292087))))

(assert (=> d!1740157 (= lt!2237479 (set.insert lt!2237457 (as set.empty (Set Context!9484))))))

(assert (=> d!1740157 (= (lemmaFlatMapOnSingletonSet!593 lt!2237479 lt!2237457 lambda!292087) lt!2237564)))

(declare-fun b_lambda!208115 () Bool)

(assert (=> (not b_lambda!208115) (not d!1740157)))

(declare-fun bs!1265677 () Bool)

(assert (= bs!1265677 d!1740157))

(assert (=> bs!1265677 m!6493750))

(declare-fun m!6493964 () Bool)

(assert (=> bs!1265677 m!6493964))

(declare-fun m!6493966 () Bool)

(assert (=> bs!1265677 m!6493966))

(assert (=> bs!1265677 m!6493742))

(assert (=> b!5477483 d!1740157))

(declare-fun bs!1265678 () Bool)

(declare-fun d!1740159 () Bool)

(assert (= bs!1265678 (and d!1740159 b!5477507)))

(declare-fun lambda!292117 () Int)

(assert (=> bs!1265678 (= lambda!292117 lambda!292087)))

(declare-fun bs!1265679 () Bool)

(assert (= bs!1265679 (and d!1740159 d!1740155)))

(assert (=> bs!1265679 (= lambda!292117 lambda!292116)))

(assert (=> d!1740159 true))

(assert (=> d!1740159 (= (derivationStepZipper!1553 lt!2237466 (h!68697 s!2326)) (flatMap!1061 lt!2237466 lambda!292117))))

(declare-fun bs!1265680 () Bool)

(assert (= bs!1265680 d!1740159))

(declare-fun m!6493968 () Bool)

(assert (=> bs!1265680 m!6493968))

(assert (=> b!5477483 d!1740159))

(declare-fun d!1740161 () Bool)

(declare-fun c!956984 () Bool)

(declare-fun e!3390355 () Bool)

(assert (=> d!1740161 (= c!956984 e!3390355)))

(declare-fun res!2335129 () Bool)

(assert (=> d!1740161 (=> (not res!2335129) (not e!3390355))))

(assert (=> d!1740161 (= res!2335129 (is-Cons!62250 (exprs!5242 lt!2237455)))))

(declare-fun e!3390354 () (Set Context!9484))

(assert (=> d!1740161 (= (derivationStepZipperUp!710 lt!2237455 (h!68697 s!2326)) e!3390354)))

(declare-fun b!5477669 () Bool)

(declare-fun e!3390353 () (Set Context!9484))

(assert (=> b!5477669 (= e!3390353 (as set.empty (Set Context!9484)))))

(declare-fun b!5477670 () Bool)

(declare-fun call!404126 () (Set Context!9484))

(assert (=> b!5477670 (= e!3390353 call!404126)))

(declare-fun b!5477671 () Bool)

(declare-fun nullable!5485 (Regex!15358) Bool)

(assert (=> b!5477671 (= e!3390355 (nullable!5485 (h!68698 (exprs!5242 lt!2237455))))))

(declare-fun b!5477672 () Bool)

(assert (=> b!5477672 (= e!3390354 (set.union call!404126 (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 lt!2237455))) (h!68697 s!2326))))))

(declare-fun b!5477673 () Bool)

(assert (=> b!5477673 (= e!3390354 e!3390353)))

(declare-fun c!956985 () Bool)

(assert (=> b!5477673 (= c!956985 (is-Cons!62250 (exprs!5242 lt!2237455)))))

(declare-fun bm!404121 () Bool)

(assert (=> bm!404121 (= call!404126 (derivationStepZipperDown!784 (h!68698 (exprs!5242 lt!2237455)) (Context!9485 (t!375603 (exprs!5242 lt!2237455))) (h!68697 s!2326)))))

(assert (= (and d!1740161 res!2335129) b!5477671))

(assert (= (and d!1740161 c!956984) b!5477672))

(assert (= (and d!1740161 (not c!956984)) b!5477673))

(assert (= (and b!5477673 c!956985) b!5477670))

(assert (= (and b!5477673 (not c!956985)) b!5477669))

(assert (= (or b!5477672 b!5477670) bm!404121))

(declare-fun m!6493970 () Bool)

(assert (=> b!5477671 m!6493970))

(declare-fun m!6493972 () Bool)

(assert (=> b!5477672 m!6493972))

(declare-fun m!6493974 () Bool)

(assert (=> bm!404121 m!6493974))

(assert (=> b!5477483 d!1740161))

(declare-fun d!1740163 () Bool)

(declare-fun c!956986 () Bool)

(declare-fun e!3390358 () Bool)

(assert (=> d!1740163 (= c!956986 e!3390358)))

(declare-fun res!2335130 () Bool)

(assert (=> d!1740163 (=> (not res!2335130) (not e!3390358))))

(assert (=> d!1740163 (= res!2335130 (is-Cons!62250 (exprs!5242 lt!2237457)))))

(declare-fun e!3390357 () (Set Context!9484))

(assert (=> d!1740163 (= (derivationStepZipperUp!710 lt!2237457 (h!68697 s!2326)) e!3390357)))

(declare-fun b!5477674 () Bool)

(declare-fun e!3390356 () (Set Context!9484))

(assert (=> b!5477674 (= e!3390356 (as set.empty (Set Context!9484)))))

(declare-fun b!5477675 () Bool)

(declare-fun call!404127 () (Set Context!9484))

(assert (=> b!5477675 (= e!3390356 call!404127)))

(declare-fun b!5477676 () Bool)

(assert (=> b!5477676 (= e!3390358 (nullable!5485 (h!68698 (exprs!5242 lt!2237457))))))

(declare-fun b!5477677 () Bool)

(assert (=> b!5477677 (= e!3390357 (set.union call!404127 (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 lt!2237457))) (h!68697 s!2326))))))

(declare-fun b!5477678 () Bool)

(assert (=> b!5477678 (= e!3390357 e!3390356)))

(declare-fun c!956987 () Bool)

(assert (=> b!5477678 (= c!956987 (is-Cons!62250 (exprs!5242 lt!2237457)))))

(declare-fun bm!404122 () Bool)

(assert (=> bm!404122 (= call!404127 (derivationStepZipperDown!784 (h!68698 (exprs!5242 lt!2237457)) (Context!9485 (t!375603 (exprs!5242 lt!2237457))) (h!68697 s!2326)))))

(assert (= (and d!1740163 res!2335130) b!5477676))

(assert (= (and d!1740163 c!956986) b!5477677))

(assert (= (and d!1740163 (not c!956986)) b!5477678))

(assert (= (and b!5477678 c!956987) b!5477675))

(assert (= (and b!5477678 (not c!956987)) b!5477674))

(assert (= (or b!5477677 b!5477675) bm!404122))

(declare-fun m!6493976 () Bool)

(assert (=> b!5477676 m!6493976))

(declare-fun m!6493978 () Bool)

(assert (=> b!5477677 m!6493978))

(declare-fun m!6493980 () Bool)

(assert (=> bm!404122 m!6493980))

(assert (=> b!5477483 d!1740163))

(declare-fun d!1740165 () Bool)

(assert (=> d!1740165 (= (flatMap!1061 lt!2237466 lambda!292087) (dynLambda!24434 lambda!292087 lt!2237455))))

(declare-fun lt!2237565 () Unit!155166)

(assert (=> d!1740165 (= lt!2237565 (choose!41675 lt!2237466 lt!2237455 lambda!292087))))

(assert (=> d!1740165 (= lt!2237466 (set.insert lt!2237455 (as set.empty (Set Context!9484))))))

(assert (=> d!1740165 (= (lemmaFlatMapOnSingletonSet!593 lt!2237466 lt!2237455 lambda!292087) lt!2237565)))

(declare-fun b_lambda!208117 () Bool)

(assert (=> (not b_lambda!208117) (not d!1740165)))

(declare-fun bs!1265681 () Bool)

(assert (= bs!1265681 d!1740165))

(assert (=> bs!1265681 m!6493746))

(declare-fun m!6493982 () Bool)

(assert (=> bs!1265681 m!6493982))

(declare-fun m!6493984 () Bool)

(assert (=> bs!1265681 m!6493984))

(assert (=> bs!1265681 m!6493748))

(assert (=> b!5477483 d!1740165))

(declare-fun d!1740167 () Bool)

(declare-fun choose!41676 ((Set Context!9484) Int) (Set Context!9484))

(assert (=> d!1740167 (= (flatMap!1061 lt!2237479 lambda!292087) (choose!41676 lt!2237479 lambda!292087))))

(declare-fun bs!1265682 () Bool)

(assert (= bs!1265682 d!1740167))

(declare-fun m!6493986 () Bool)

(assert (=> bs!1265682 m!6493986))

(assert (=> b!5477483 d!1740167))

(declare-fun d!1740169 () Bool)

(assert (=> d!1740169 (= (flatMap!1061 lt!2237466 lambda!292087) (choose!41676 lt!2237466 lambda!292087))))

(declare-fun bs!1265683 () Bool)

(assert (= bs!1265683 d!1740169))

(declare-fun m!6493988 () Bool)

(assert (=> bs!1265683 m!6493988))

(assert (=> b!5477483 d!1740169))

(declare-fun d!1740171 () Bool)

(declare-fun res!2335135 () Bool)

(declare-fun e!3390363 () Bool)

(assert (=> d!1740171 (=> res!2335135 e!3390363)))

(assert (=> d!1740171 (= res!2335135 (is-Nil!62250 lt!2237465))))

(assert (=> d!1740171 (= (forall!14615 lt!2237465 lambda!292088) e!3390363)))

(declare-fun b!5477683 () Bool)

(declare-fun e!3390364 () Bool)

(assert (=> b!5477683 (= e!3390363 e!3390364)))

(declare-fun res!2335136 () Bool)

(assert (=> b!5477683 (=> (not res!2335136) (not e!3390364))))

(declare-fun dynLambda!24435 (Int Regex!15358) Bool)

(assert (=> b!5477683 (= res!2335136 (dynLambda!24435 lambda!292088 (h!68698 lt!2237465)))))

(declare-fun b!5477684 () Bool)

(assert (=> b!5477684 (= e!3390364 (forall!14615 (t!375603 lt!2237465) lambda!292088))))

(assert (= (and d!1740171 (not res!2335135)) b!5477683))

(assert (= (and b!5477683 res!2335136) b!5477684))

(declare-fun b_lambda!208119 () Bool)

(assert (=> (not b_lambda!208119) (not b!5477683)))

(declare-fun m!6493990 () Bool)

(assert (=> b!5477683 m!6493990))

(declare-fun m!6493992 () Bool)

(assert (=> b!5477684 m!6493992))

(assert (=> b!5477514 d!1740171))

(declare-fun bs!1265684 () Bool)

(declare-fun b!5477726 () Bool)

(assert (= bs!1265684 (and b!5477726 b!5477508)))

(declare-fun lambda!292122 () Int)

(assert (=> bs!1265684 (not (= lambda!292122 lambda!292084))))

(assert (=> bs!1265684 (= lambda!292122 lambda!292085)))

(assert (=> bs!1265684 (not (= lambda!292122 lambda!292086))))

(assert (=> b!5477726 true))

(assert (=> b!5477726 true))

(declare-fun bs!1265685 () Bool)

(declare-fun b!5477718 () Bool)

(assert (= bs!1265685 (and b!5477718 b!5477508)))

(declare-fun lambda!292123 () Int)

(assert (=> bs!1265685 (not (= lambda!292123 lambda!292084))))

(assert (=> bs!1265685 (not (= lambda!292123 lambda!292085))))

(assert (=> bs!1265685 (= (and (= (regOne!31228 r!7292) (reg!15687 r!7292)) (= (regTwo!31228 r!7292) r!7292)) (= lambda!292123 lambda!292086))))

(declare-fun bs!1265686 () Bool)

(assert (= bs!1265686 (and b!5477718 b!5477726)))

(assert (=> bs!1265686 (not (= lambda!292123 lambda!292122))))

(assert (=> b!5477718 true))

(assert (=> b!5477718 true))

(declare-fun b!5477717 () Bool)

(declare-fun c!956997 () Bool)

(assert (=> b!5477717 (= c!956997 (is-ElementMatch!15358 r!7292))))

(declare-fun e!3390385 () Bool)

(declare-fun e!3390384 () Bool)

(assert (=> b!5477717 (= e!3390385 e!3390384)))

(declare-fun e!3390387 () Bool)

(declare-fun call!404132 () Bool)

(assert (=> b!5477718 (= e!3390387 call!404132)))

(declare-fun b!5477719 () Bool)

(declare-fun e!3390386 () Bool)

(assert (=> b!5477719 (= e!3390386 (matchRSpec!2461 (regTwo!31229 r!7292) s!2326))))

(declare-fun b!5477720 () Bool)

(declare-fun c!956996 () Bool)

(assert (=> b!5477720 (= c!956996 (is-Union!15358 r!7292))))

(declare-fun e!3390383 () Bool)

(assert (=> b!5477720 (= e!3390384 e!3390383)))

(declare-fun b!5477721 () Bool)

(declare-fun e!3390389 () Bool)

(assert (=> b!5477721 (= e!3390389 e!3390385)))

(declare-fun res!2335154 () Bool)

(assert (=> b!5477721 (= res!2335154 (not (is-EmptyLang!15358 r!7292)))))

(assert (=> b!5477721 (=> (not res!2335154) (not e!3390385))))

(declare-fun b!5477722 () Bool)

(declare-fun res!2335155 () Bool)

(declare-fun e!3390388 () Bool)

(assert (=> b!5477722 (=> res!2335155 e!3390388)))

(declare-fun call!404133 () Bool)

(assert (=> b!5477722 (= res!2335155 call!404133)))

(assert (=> b!5477722 (= e!3390387 e!3390388)))

(declare-fun b!5477723 () Bool)

(assert (=> b!5477723 (= e!3390389 call!404133)))

(declare-fun bm!404127 () Bool)

(assert (=> bm!404127 (= call!404133 (isEmpty!34205 s!2326))))

(declare-fun b!5477724 () Bool)

(assert (=> b!5477724 (= e!3390384 (= s!2326 (Cons!62249 (c!956963 r!7292) Nil!62249)))))

(declare-fun bm!404128 () Bool)

(declare-fun c!956998 () Bool)

(assert (=> bm!404128 (= call!404132 (Exists!2537 (ite c!956998 lambda!292122 lambda!292123)))))

(declare-fun d!1740173 () Bool)

(declare-fun c!956999 () Bool)

(assert (=> d!1740173 (= c!956999 (is-EmptyExpr!15358 r!7292))))

(assert (=> d!1740173 (= (matchRSpec!2461 r!7292 s!2326) e!3390389)))

(declare-fun b!5477725 () Bool)

(assert (=> b!5477725 (= e!3390383 e!3390387)))

(assert (=> b!5477725 (= c!956998 (is-Star!15358 r!7292))))

(assert (=> b!5477726 (= e!3390388 call!404132)))

(declare-fun b!5477727 () Bool)

(assert (=> b!5477727 (= e!3390383 e!3390386)))

(declare-fun res!2335153 () Bool)

(assert (=> b!5477727 (= res!2335153 (matchRSpec!2461 (regOne!31229 r!7292) s!2326))))

(assert (=> b!5477727 (=> res!2335153 e!3390386)))

(assert (= (and d!1740173 c!956999) b!5477723))

(assert (= (and d!1740173 (not c!956999)) b!5477721))

(assert (= (and b!5477721 res!2335154) b!5477717))

(assert (= (and b!5477717 c!956997) b!5477724))

(assert (= (and b!5477717 (not c!956997)) b!5477720))

(assert (= (and b!5477720 c!956996) b!5477727))

(assert (= (and b!5477720 (not c!956996)) b!5477725))

(assert (= (and b!5477727 (not res!2335153)) b!5477719))

(assert (= (and b!5477725 c!956998) b!5477722))

(assert (= (and b!5477725 (not c!956998)) b!5477718))

(assert (= (and b!5477722 (not res!2335155)) b!5477726))

(assert (= (or b!5477726 b!5477718) bm!404128))

(assert (= (or b!5477723 b!5477722) bm!404127))

(declare-fun m!6493994 () Bool)

(assert (=> b!5477719 m!6493994))

(assert (=> bm!404127 m!6493794))

(declare-fun m!6493996 () Bool)

(assert (=> bm!404128 m!6493996))

(declare-fun m!6493998 () Bool)

(assert (=> b!5477727 m!6493998))

(assert (=> b!5477513 d!1740173))

(declare-fun b!5477756 () Bool)

(declare-fun e!3390406 () Bool)

(assert (=> b!5477756 (= e!3390406 (= (head!11735 s!2326) (c!956963 r!7292)))))

(declare-fun b!5477757 () Bool)

(declare-fun res!2335176 () Bool)

(declare-fun e!3390410 () Bool)

(assert (=> b!5477757 (=> res!2335176 e!3390410)))

(assert (=> b!5477757 (= res!2335176 e!3390406)))

(declare-fun res!2335172 () Bool)

(assert (=> b!5477757 (=> (not res!2335172) (not e!3390406))))

(declare-fun lt!2237568 () Bool)

(assert (=> b!5477757 (= res!2335172 lt!2237568)))

(declare-fun b!5477758 () Bool)

(declare-fun res!2335174 () Bool)

(assert (=> b!5477758 (=> (not res!2335174) (not e!3390406))))

(declare-fun call!404136 () Bool)

(assert (=> b!5477758 (= res!2335174 (not call!404136))))

(declare-fun b!5477759 () Bool)

(declare-fun e!3390407 () Bool)

(declare-fun derivativeStep!4330 (Regex!15358 C!30986) Regex!15358)

(assert (=> b!5477759 (= e!3390407 (matchR!7543 (derivativeStep!4330 r!7292 (head!11735 s!2326)) (tail!10832 s!2326)))))

(declare-fun b!5477760 () Bool)

(declare-fun res!2335179 () Bool)

(assert (=> b!5477760 (=> res!2335179 e!3390410)))

(assert (=> b!5477760 (= res!2335179 (not (is-ElementMatch!15358 r!7292)))))

(declare-fun e!3390409 () Bool)

(assert (=> b!5477760 (= e!3390409 e!3390410)))

(declare-fun b!5477761 () Bool)

(declare-fun res!2335173 () Bool)

(declare-fun e!3390408 () Bool)

(assert (=> b!5477761 (=> res!2335173 e!3390408)))

(assert (=> b!5477761 (= res!2335173 (not (isEmpty!34205 (tail!10832 s!2326))))))

(declare-fun bm!404131 () Bool)

(assert (=> bm!404131 (= call!404136 (isEmpty!34205 s!2326))))

(declare-fun b!5477763 () Bool)

(assert (=> b!5477763 (= e!3390409 (not lt!2237568))))

(declare-fun b!5477764 () Bool)

(assert (=> b!5477764 (= e!3390408 (not (= (head!11735 s!2326) (c!956963 r!7292))))))

(declare-fun b!5477765 () Bool)

(declare-fun e!3390404 () Bool)

(assert (=> b!5477765 (= e!3390404 (= lt!2237568 call!404136))))

(declare-fun b!5477766 () Bool)

(assert (=> b!5477766 (= e!3390404 e!3390409)))

(declare-fun c!957006 () Bool)

(assert (=> b!5477766 (= c!957006 (is-EmptyLang!15358 r!7292))))

(declare-fun b!5477767 () Bool)

(declare-fun e!3390405 () Bool)

(assert (=> b!5477767 (= e!3390410 e!3390405)))

(declare-fun res!2335175 () Bool)

(assert (=> b!5477767 (=> (not res!2335175) (not e!3390405))))

(assert (=> b!5477767 (= res!2335175 (not lt!2237568))))

(declare-fun b!5477762 () Bool)

(declare-fun res!2335177 () Bool)

(assert (=> b!5477762 (=> (not res!2335177) (not e!3390406))))

(assert (=> b!5477762 (= res!2335177 (isEmpty!34205 (tail!10832 s!2326)))))

(declare-fun d!1740175 () Bool)

(assert (=> d!1740175 e!3390404))

(declare-fun c!957008 () Bool)

(assert (=> d!1740175 (= c!957008 (is-EmptyExpr!15358 r!7292))))

(assert (=> d!1740175 (= lt!2237568 e!3390407)))

(declare-fun c!957007 () Bool)

(assert (=> d!1740175 (= c!957007 (isEmpty!34205 s!2326))))

(assert (=> d!1740175 (validRegex!7094 r!7292)))

(assert (=> d!1740175 (= (matchR!7543 r!7292 s!2326) lt!2237568)))

(declare-fun b!5477768 () Bool)

(assert (=> b!5477768 (= e!3390405 e!3390408)))

(declare-fun res!2335178 () Bool)

(assert (=> b!5477768 (=> res!2335178 e!3390408)))

(assert (=> b!5477768 (= res!2335178 call!404136)))

(declare-fun b!5477769 () Bool)

(assert (=> b!5477769 (= e!3390407 (nullable!5485 r!7292))))

(assert (= (and d!1740175 c!957007) b!5477769))

(assert (= (and d!1740175 (not c!957007)) b!5477759))

(assert (= (and d!1740175 c!957008) b!5477765))

(assert (= (and d!1740175 (not c!957008)) b!5477766))

(assert (= (and b!5477766 c!957006) b!5477763))

(assert (= (and b!5477766 (not c!957006)) b!5477760))

(assert (= (and b!5477760 (not res!2335179)) b!5477757))

(assert (= (and b!5477757 res!2335172) b!5477758))

(assert (= (and b!5477758 res!2335174) b!5477762))

(assert (= (and b!5477762 res!2335177) b!5477756))

(assert (= (and b!5477757 (not res!2335176)) b!5477767))

(assert (= (and b!5477767 res!2335175) b!5477768))

(assert (= (and b!5477768 (not res!2335178)) b!5477761))

(assert (= (and b!5477761 (not res!2335173)) b!5477764))

(assert (= (or b!5477765 b!5477758 b!5477768) bm!404131))

(declare-fun m!6494000 () Bool)

(assert (=> b!5477769 m!6494000))

(assert (=> d!1740175 m!6493794))

(assert (=> d!1740175 m!6493724))

(assert (=> b!5477762 m!6493946))

(assert (=> b!5477762 m!6493946))

(declare-fun m!6494002 () Bool)

(assert (=> b!5477762 m!6494002))

(assert (=> b!5477761 m!6493946))

(assert (=> b!5477761 m!6493946))

(assert (=> b!5477761 m!6494002))

(assert (=> b!5477756 m!6493942))

(assert (=> bm!404131 m!6493794))

(assert (=> b!5477764 m!6493942))

(assert (=> b!5477759 m!6493942))

(assert (=> b!5477759 m!6493942))

(declare-fun m!6494004 () Bool)

(assert (=> b!5477759 m!6494004))

(assert (=> b!5477759 m!6493946))

(assert (=> b!5477759 m!6494004))

(assert (=> b!5477759 m!6493946))

(declare-fun m!6494006 () Bool)

(assert (=> b!5477759 m!6494006))

(assert (=> b!5477513 d!1740175))

(declare-fun d!1740177 () Bool)

(assert (=> d!1740177 (= (matchR!7543 r!7292 s!2326) (matchRSpec!2461 r!7292 s!2326))))

(declare-fun lt!2237571 () Unit!155166)

(declare-fun choose!41677 (Regex!15358 List!62373) Unit!155166)

(assert (=> d!1740177 (= lt!2237571 (choose!41677 r!7292 s!2326))))

(assert (=> d!1740177 (validRegex!7094 r!7292)))

(assert (=> d!1740177 (= (mainMatchTheorem!2461 r!7292 s!2326) lt!2237571)))

(declare-fun bs!1265687 () Bool)

(assert (= bs!1265687 d!1740177))

(assert (=> bs!1265687 m!6493766))

(assert (=> bs!1265687 m!6493764))

(declare-fun m!6494008 () Bool)

(assert (=> bs!1265687 m!6494008))

(assert (=> bs!1265687 m!6493724))

(assert (=> b!5477513 d!1740177))

(declare-fun d!1740179 () Bool)

(declare-fun lt!2237574 () Regex!15358)

(assert (=> d!1740179 (validRegex!7094 lt!2237574)))

(assert (=> d!1740179 (= lt!2237574 (generalisedUnion!1287 (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251))))))

(assert (=> d!1740179 (= (unfocusZipper!1100 (Cons!62251 lt!2237457 Nil!62251)) lt!2237574)))

(declare-fun bs!1265688 () Bool)

(assert (= bs!1265688 d!1740179))

(declare-fun m!6494010 () Bool)

(assert (=> bs!1265688 m!6494010))

(declare-fun m!6494012 () Bool)

(assert (=> bs!1265688 m!6494012))

(assert (=> bs!1265688 m!6494012))

(declare-fun m!6494014 () Bool)

(assert (=> bs!1265688 m!6494014))

(assert (=> b!5477493 d!1740179))

(declare-fun bs!1265689 () Bool)

(declare-fun d!1740181 () Bool)

(assert (= bs!1265689 (and d!1740181 b!5477487)))

(declare-fun lambda!292126 () Int)

(assert (=> bs!1265689 (= lambda!292126 lambda!292088)))

(declare-fun b!5477790 () Bool)

(declare-fun e!3390427 () Regex!15358)

(assert (=> b!5477790 (= e!3390427 (Concat!24203 (h!68698 (exprs!5242 (h!68699 zl!343))) (generalisedConcat!1027 (t!375603 (exprs!5242 (h!68699 zl!343))))))))

(declare-fun b!5477791 () Bool)

(declare-fun e!3390428 () Bool)

(declare-fun lt!2237577 () Regex!15358)

(declare-fun head!11736 (List!62374) Regex!15358)

(assert (=> b!5477791 (= e!3390428 (= lt!2237577 (head!11736 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun e!3390425 () Bool)

(assert (=> d!1740181 e!3390425))

(declare-fun res!2335184 () Bool)

(assert (=> d!1740181 (=> (not res!2335184) (not e!3390425))))

(assert (=> d!1740181 (= res!2335184 (validRegex!7094 lt!2237577))))

(declare-fun e!3390423 () Regex!15358)

(assert (=> d!1740181 (= lt!2237577 e!3390423)))

(declare-fun c!957020 () Bool)

(declare-fun e!3390424 () Bool)

(assert (=> d!1740181 (= c!957020 e!3390424)))

(declare-fun res!2335185 () Bool)

(assert (=> d!1740181 (=> (not res!2335185) (not e!3390424))))

(assert (=> d!1740181 (= res!2335185 (is-Cons!62250 (exprs!5242 (h!68699 zl!343))))))

(assert (=> d!1740181 (forall!14615 (exprs!5242 (h!68699 zl!343)) lambda!292126)))

(assert (=> d!1740181 (= (generalisedConcat!1027 (exprs!5242 (h!68699 zl!343))) lt!2237577)))

(declare-fun b!5477792 () Bool)

(assert (=> b!5477792 (= e!3390427 EmptyExpr!15358)))

(declare-fun b!5477793 () Bool)

(declare-fun isConcat!564 (Regex!15358) Bool)

(assert (=> b!5477793 (= e!3390428 (isConcat!564 lt!2237577))))

(declare-fun b!5477794 () Bool)

(assert (=> b!5477794 (= e!3390423 e!3390427)))

(declare-fun c!957018 () Bool)

(assert (=> b!5477794 (= c!957018 (is-Cons!62250 (exprs!5242 (h!68699 zl!343))))))

(declare-fun b!5477795 () Bool)

(assert (=> b!5477795 (= e!3390423 (h!68698 (exprs!5242 (h!68699 zl!343))))))

(declare-fun b!5477796 () Bool)

(declare-fun e!3390426 () Bool)

(declare-fun isEmptyExpr!1041 (Regex!15358) Bool)

(assert (=> b!5477796 (= e!3390426 (isEmptyExpr!1041 lt!2237577))))

(declare-fun b!5477797 () Bool)

(assert (=> b!5477797 (= e!3390426 e!3390428)))

(declare-fun c!957019 () Bool)

(declare-fun isEmpty!34208 (List!62374) Bool)

(declare-fun tail!10833 (List!62374) List!62374)

(assert (=> b!5477797 (= c!957019 (isEmpty!34208 (tail!10833 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun b!5477798 () Bool)

(assert (=> b!5477798 (= e!3390424 (isEmpty!34208 (t!375603 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun b!5477799 () Bool)

(assert (=> b!5477799 (= e!3390425 e!3390426)))

(declare-fun c!957017 () Bool)

(assert (=> b!5477799 (= c!957017 (isEmpty!34208 (exprs!5242 (h!68699 zl!343))))))

(assert (= (and d!1740181 res!2335185) b!5477798))

(assert (= (and d!1740181 c!957020) b!5477795))

(assert (= (and d!1740181 (not c!957020)) b!5477794))

(assert (= (and b!5477794 c!957018) b!5477790))

(assert (= (and b!5477794 (not c!957018)) b!5477792))

(assert (= (and d!1740181 res!2335184) b!5477799))

(assert (= (and b!5477799 c!957017) b!5477796))

(assert (= (and b!5477799 (not c!957017)) b!5477797))

(assert (= (and b!5477797 c!957019) b!5477791))

(assert (= (and b!5477797 (not c!957019)) b!5477793))

(declare-fun m!6494016 () Bool)

(assert (=> b!5477799 m!6494016))

(declare-fun m!6494018 () Bool)

(assert (=> b!5477797 m!6494018))

(assert (=> b!5477797 m!6494018))

(declare-fun m!6494020 () Bool)

(assert (=> b!5477797 m!6494020))

(declare-fun m!6494022 () Bool)

(assert (=> b!5477796 m!6494022))

(declare-fun m!6494024 () Bool)

(assert (=> b!5477791 m!6494024))

(declare-fun m!6494026 () Bool)

(assert (=> b!5477790 m!6494026))

(declare-fun m!6494028 () Bool)

(assert (=> b!5477798 m!6494028))

(declare-fun m!6494030 () Bool)

(assert (=> d!1740181 m!6494030))

(declare-fun m!6494032 () Bool)

(assert (=> d!1740181 m!6494032))

(declare-fun m!6494034 () Bool)

(assert (=> b!5477793 m!6494034))

(assert (=> b!5477503 d!1740181))

(declare-fun d!1740185 () Bool)

(declare-fun e!3390431 () Bool)

(assert (=> d!1740185 e!3390431))

(declare-fun res!2335188 () Bool)

(assert (=> d!1740185 (=> (not res!2335188) (not e!3390431))))

(declare-fun lt!2237580 () List!62375)

(declare-fun noDuplicate!1459 (List!62375) Bool)

(assert (=> d!1740185 (= res!2335188 (noDuplicate!1459 lt!2237580))))

(declare-fun choose!41678 ((Set Context!9484)) List!62375)

(assert (=> d!1740185 (= lt!2237580 (choose!41678 z!1189))))

(assert (=> d!1740185 (= (toList!9142 z!1189) lt!2237580)))

(declare-fun b!5477802 () Bool)

(declare-fun content!11203 (List!62375) (Set Context!9484))

(assert (=> b!5477802 (= e!3390431 (= (content!11203 lt!2237580) z!1189))))

(assert (= (and d!1740185 res!2335188) b!5477802))

(declare-fun m!6494036 () Bool)

(assert (=> d!1740185 m!6494036))

(declare-fun m!6494038 () Bool)

(assert (=> d!1740185 m!6494038))

(declare-fun m!6494040 () Bool)

(assert (=> b!5477802 m!6494040))

(assert (=> b!5477511 d!1740185))

(declare-fun d!1740187 () Bool)

(declare-fun res!2335200 () Bool)

(declare-fun e!3390452 () Bool)

(assert (=> d!1740187 (=> res!2335200 e!3390452)))

(assert (=> d!1740187 (= res!2335200 (is-ElementMatch!15358 r!7292))))

(assert (=> d!1740187 (= (validRegex!7094 r!7292) e!3390452)))

(declare-fun bm!404138 () Bool)

(declare-fun call!404144 () Bool)

(declare-fun c!957026 () Bool)

(assert (=> bm!404138 (= call!404144 (validRegex!7094 (ite c!957026 (regTwo!31229 r!7292) (regTwo!31228 r!7292))))))

(declare-fun b!5477823 () Bool)

(declare-fun e!3390449 () Bool)

(assert (=> b!5477823 (= e!3390449 call!404144)))

(declare-fun b!5477824 () Bool)

(declare-fun e!3390450 () Bool)

(declare-fun e!3390446 () Bool)

(assert (=> b!5477824 (= e!3390450 e!3390446)))

(assert (=> b!5477824 (= c!957026 (is-Union!15358 r!7292))))

(declare-fun call!404143 () Bool)

(declare-fun c!957025 () Bool)

(declare-fun bm!404139 () Bool)

(assert (=> bm!404139 (= call!404143 (validRegex!7094 (ite c!957025 (reg!15687 r!7292) (ite c!957026 (regOne!31229 r!7292) (regOne!31228 r!7292)))))))

(declare-fun b!5477825 () Bool)

(declare-fun e!3390448 () Bool)

(assert (=> b!5477825 (= e!3390448 e!3390449)))

(declare-fun res!2335202 () Bool)

(assert (=> b!5477825 (=> (not res!2335202) (not e!3390449))))

(declare-fun call!404145 () Bool)

(assert (=> b!5477825 (= res!2335202 call!404145)))

(declare-fun b!5477826 () Bool)

(declare-fun e!3390451 () Bool)

(assert (=> b!5477826 (= e!3390451 call!404144)))

(declare-fun b!5477827 () Bool)

(declare-fun e!3390447 () Bool)

(assert (=> b!5477827 (= e!3390450 e!3390447)))

(declare-fun res!2335199 () Bool)

(assert (=> b!5477827 (= res!2335199 (not (nullable!5485 (reg!15687 r!7292))))))

(assert (=> b!5477827 (=> (not res!2335199) (not e!3390447))))

(declare-fun b!5477828 () Bool)

(declare-fun res!2335203 () Bool)

(assert (=> b!5477828 (=> res!2335203 e!3390448)))

(assert (=> b!5477828 (= res!2335203 (not (is-Concat!24203 r!7292)))))

(assert (=> b!5477828 (= e!3390446 e!3390448)))

(declare-fun bm!404140 () Bool)

(assert (=> bm!404140 (= call!404145 call!404143)))

(declare-fun b!5477829 () Bool)

(assert (=> b!5477829 (= e!3390447 call!404143)))

(declare-fun b!5477830 () Bool)

(assert (=> b!5477830 (= e!3390452 e!3390450)))

(assert (=> b!5477830 (= c!957025 (is-Star!15358 r!7292))))

(declare-fun b!5477831 () Bool)

(declare-fun res!2335201 () Bool)

(assert (=> b!5477831 (=> (not res!2335201) (not e!3390451))))

(assert (=> b!5477831 (= res!2335201 call!404145)))

(assert (=> b!5477831 (= e!3390446 e!3390451)))

(assert (= (and d!1740187 (not res!2335200)) b!5477830))

(assert (= (and b!5477830 c!957025) b!5477827))

(assert (= (and b!5477830 (not c!957025)) b!5477824))

(assert (= (and b!5477827 res!2335199) b!5477829))

(assert (= (and b!5477824 c!957026) b!5477831))

(assert (= (and b!5477824 (not c!957026)) b!5477828))

(assert (= (and b!5477831 res!2335201) b!5477826))

(assert (= (and b!5477828 (not res!2335203)) b!5477825))

(assert (= (and b!5477825 res!2335202) b!5477823))

(assert (= (or b!5477826 b!5477823) bm!404138))

(assert (= (or b!5477831 b!5477825) bm!404140))

(assert (= (or b!5477829 bm!404140) bm!404139))

(declare-fun m!6494042 () Bool)

(assert (=> bm!404138 m!6494042))

(declare-fun m!6494044 () Bool)

(assert (=> bm!404139 m!6494044))

(declare-fun m!6494046 () Bool)

(assert (=> b!5477827 m!6494046))

(assert (=> start!573036 d!1740187))

(declare-fun bs!1265690 () Bool)

(declare-fun d!1740189 () Bool)

(assert (= bs!1265690 (and d!1740189 b!5477487)))

(declare-fun lambda!292129 () Int)

(assert (=> bs!1265690 (= lambda!292129 lambda!292088)))

(declare-fun bs!1265691 () Bool)

(assert (= bs!1265691 (and d!1740189 d!1740181)))

(assert (=> bs!1265691 (= lambda!292129 lambda!292126)))

(assert (=> d!1740189 (= (inv!81643 c!332) (forall!14615 (exprs!5242 c!332) lambda!292129))))

(declare-fun bs!1265692 () Bool)

(assert (= bs!1265692 d!1740189))

(declare-fun m!6494048 () Bool)

(assert (=> bs!1265692 m!6494048))

(assert (=> start!573036 d!1740189))

(declare-fun bs!1265693 () Bool)

(declare-fun d!1740191 () Bool)

(assert (= bs!1265693 (and d!1740191 b!5477487)))

(declare-fun lambda!292130 () Int)

(assert (=> bs!1265693 (= lambda!292130 lambda!292088)))

(declare-fun bs!1265694 () Bool)

(assert (= bs!1265694 (and d!1740191 d!1740181)))

(assert (=> bs!1265694 (= lambda!292130 lambda!292126)))

(declare-fun bs!1265695 () Bool)

(assert (= bs!1265695 (and d!1740191 d!1740189)))

(assert (=> bs!1265695 (= lambda!292130 lambda!292129)))

(assert (=> d!1740191 (= (inv!81643 (h!68699 zl!343)) (forall!14615 (exprs!5242 (h!68699 zl!343)) lambda!292130))))

(declare-fun bs!1265696 () Bool)

(assert (= bs!1265696 d!1740191))

(declare-fun m!6494050 () Bool)

(assert (=> bs!1265696 m!6494050))

(assert (=> b!5477490 d!1740191))

(declare-fun d!1740193 () Bool)

(declare-fun lt!2237581 () Regex!15358)

(assert (=> d!1740193 (validRegex!7094 lt!2237581)))

(assert (=> d!1740193 (= lt!2237581 (generalisedUnion!1287 (unfocusZipperList!800 zl!343)))))

(assert (=> d!1740193 (= (unfocusZipper!1100 zl!343) lt!2237581)))

(declare-fun bs!1265697 () Bool)

(assert (= bs!1265697 d!1740193))

(declare-fun m!6494052 () Bool)

(assert (=> bs!1265697 m!6494052))

(assert (=> bs!1265697 m!6493728))

(assert (=> bs!1265697 m!6493728))

(assert (=> bs!1265697 m!6493730))

(assert (=> b!5477501 d!1740193))

(declare-fun bs!1265698 () Bool)

(declare-fun b!5477861 () Bool)

(assert (= bs!1265698 (and b!5477861 b!5477508)))

(declare-fun lambda!292131 () Int)

(assert (=> bs!1265698 (= (and (= (reg!15687 lt!2237470) (reg!15687 r!7292)) (= lt!2237470 r!7292)) (= lambda!292131 lambda!292085))))

(assert (=> bs!1265698 (not (= lambda!292131 lambda!292086))))

(declare-fun bs!1265699 () Bool)

(assert (= bs!1265699 (and b!5477861 b!5477718)))

(assert (=> bs!1265699 (not (= lambda!292131 lambda!292123))))

(declare-fun bs!1265700 () Bool)

(assert (= bs!1265700 (and b!5477861 b!5477726)))

(assert (=> bs!1265700 (= (and (= (reg!15687 lt!2237470) (reg!15687 r!7292)) (= lt!2237470 r!7292)) (= lambda!292131 lambda!292122))))

(assert (=> bs!1265698 (not (= lambda!292131 lambda!292084))))

(assert (=> b!5477861 true))

(assert (=> b!5477861 true))

(declare-fun bs!1265701 () Bool)

(declare-fun b!5477853 () Bool)

(assert (= bs!1265701 (and b!5477853 b!5477508)))

(declare-fun lambda!292133 () Int)

(assert (=> bs!1265701 (not (= lambda!292133 lambda!292085))))

(declare-fun bs!1265702 () Bool)

(assert (= bs!1265702 (and b!5477853 b!5477861)))

(assert (=> bs!1265702 (not (= lambda!292133 lambda!292131))))

(assert (=> bs!1265701 (= (and (= (regOne!31228 lt!2237470) (reg!15687 r!7292)) (= (regTwo!31228 lt!2237470) r!7292)) (= lambda!292133 lambda!292086))))

(declare-fun bs!1265703 () Bool)

(assert (= bs!1265703 (and b!5477853 b!5477718)))

(assert (=> bs!1265703 (= (and (= (regOne!31228 lt!2237470) (regOne!31228 r!7292)) (= (regTwo!31228 lt!2237470) (regTwo!31228 r!7292))) (= lambda!292133 lambda!292123))))

(declare-fun bs!1265704 () Bool)

(assert (= bs!1265704 (and b!5477853 b!5477726)))

(assert (=> bs!1265704 (not (= lambda!292133 lambda!292122))))

(assert (=> bs!1265701 (not (= lambda!292133 lambda!292084))))

(assert (=> b!5477853 true))

(assert (=> b!5477853 true))

(declare-fun b!5477852 () Bool)

(declare-fun c!957036 () Bool)

(assert (=> b!5477852 (= c!957036 (is-ElementMatch!15358 lt!2237470))))

(declare-fun e!3390469 () Bool)

(declare-fun e!3390468 () Bool)

(assert (=> b!5477852 (= e!3390469 e!3390468)))

(declare-fun e!3390471 () Bool)

(declare-fun call!404146 () Bool)

(assert (=> b!5477853 (= e!3390471 call!404146)))

(declare-fun b!5477854 () Bool)

(declare-fun e!3390470 () Bool)

(assert (=> b!5477854 (= e!3390470 (matchRSpec!2461 (regTwo!31229 lt!2237470) s!2326))))

(declare-fun b!5477855 () Bool)

(declare-fun c!957035 () Bool)

(assert (=> b!5477855 (= c!957035 (is-Union!15358 lt!2237470))))

(declare-fun e!3390467 () Bool)

(assert (=> b!5477855 (= e!3390468 e!3390467)))

(declare-fun b!5477856 () Bool)

(declare-fun e!3390473 () Bool)

(assert (=> b!5477856 (= e!3390473 e!3390469)))

(declare-fun res!2335211 () Bool)

(assert (=> b!5477856 (= res!2335211 (not (is-EmptyLang!15358 lt!2237470)))))

(assert (=> b!5477856 (=> (not res!2335211) (not e!3390469))))

(declare-fun b!5477857 () Bool)

(declare-fun res!2335212 () Bool)

(declare-fun e!3390472 () Bool)

(assert (=> b!5477857 (=> res!2335212 e!3390472)))

(declare-fun call!404147 () Bool)

(assert (=> b!5477857 (= res!2335212 call!404147)))

(assert (=> b!5477857 (= e!3390471 e!3390472)))

(declare-fun b!5477858 () Bool)

(assert (=> b!5477858 (= e!3390473 call!404147)))

(declare-fun bm!404141 () Bool)

(assert (=> bm!404141 (= call!404147 (isEmpty!34205 s!2326))))

(declare-fun b!5477859 () Bool)

(assert (=> b!5477859 (= e!3390468 (= s!2326 (Cons!62249 (c!956963 lt!2237470) Nil!62249)))))

(declare-fun c!957037 () Bool)

(declare-fun bm!404142 () Bool)

(assert (=> bm!404142 (= call!404146 (Exists!2537 (ite c!957037 lambda!292131 lambda!292133)))))

(declare-fun d!1740195 () Bool)

(declare-fun c!957038 () Bool)

(assert (=> d!1740195 (= c!957038 (is-EmptyExpr!15358 lt!2237470))))

(assert (=> d!1740195 (= (matchRSpec!2461 lt!2237470 s!2326) e!3390473)))

(declare-fun b!5477860 () Bool)

(assert (=> b!5477860 (= e!3390467 e!3390471)))

(assert (=> b!5477860 (= c!957037 (is-Star!15358 lt!2237470))))

(assert (=> b!5477861 (= e!3390472 call!404146)))

(declare-fun b!5477862 () Bool)

(assert (=> b!5477862 (= e!3390467 e!3390470)))

(declare-fun res!2335210 () Bool)

(assert (=> b!5477862 (= res!2335210 (matchRSpec!2461 (regOne!31229 lt!2237470) s!2326))))

(assert (=> b!5477862 (=> res!2335210 e!3390470)))

(assert (= (and d!1740195 c!957038) b!5477858))

(assert (= (and d!1740195 (not c!957038)) b!5477856))

(assert (= (and b!5477856 res!2335211) b!5477852))

(assert (= (and b!5477852 c!957036) b!5477859))

(assert (= (and b!5477852 (not c!957036)) b!5477855))

(assert (= (and b!5477855 c!957035) b!5477862))

(assert (= (and b!5477855 (not c!957035)) b!5477860))

(assert (= (and b!5477862 (not res!2335210)) b!5477854))

(assert (= (and b!5477860 c!957037) b!5477857))

(assert (= (and b!5477860 (not c!957037)) b!5477853))

(assert (= (and b!5477857 (not res!2335212)) b!5477861))

(assert (= (or b!5477861 b!5477853) bm!404142))

(assert (= (or b!5477858 b!5477857) bm!404141))

(declare-fun m!6494054 () Bool)

(assert (=> b!5477854 m!6494054))

(assert (=> bm!404141 m!6493794))

(declare-fun m!6494056 () Bool)

(assert (=> bm!404142 m!6494056))

(declare-fun m!6494058 () Bool)

(assert (=> b!5477862 m!6494058))

(assert (=> b!5477500 d!1740195))

(declare-fun b!5477869 () Bool)

(declare-fun e!3390478 () Bool)

(assert (=> b!5477869 (= e!3390478 (= (head!11735 s!2326) (c!956963 lt!2237470)))))

(declare-fun b!5477870 () Bool)

(declare-fun res!2335223 () Bool)

(declare-fun e!3390482 () Bool)

(assert (=> b!5477870 (=> res!2335223 e!3390482)))

(assert (=> b!5477870 (= res!2335223 e!3390478)))

(declare-fun res!2335219 () Bool)

(assert (=> b!5477870 (=> (not res!2335219) (not e!3390478))))

(declare-fun lt!2237582 () Bool)

(assert (=> b!5477870 (= res!2335219 lt!2237582)))

(declare-fun b!5477871 () Bool)

(declare-fun res!2335221 () Bool)

(assert (=> b!5477871 (=> (not res!2335221) (not e!3390478))))

(declare-fun call!404148 () Bool)

(assert (=> b!5477871 (= res!2335221 (not call!404148))))

(declare-fun b!5477872 () Bool)

(declare-fun e!3390479 () Bool)

(assert (=> b!5477872 (= e!3390479 (matchR!7543 (derivativeStep!4330 lt!2237470 (head!11735 s!2326)) (tail!10832 s!2326)))))

(declare-fun b!5477873 () Bool)

(declare-fun res!2335226 () Bool)

(assert (=> b!5477873 (=> res!2335226 e!3390482)))

(assert (=> b!5477873 (= res!2335226 (not (is-ElementMatch!15358 lt!2237470)))))

(declare-fun e!3390481 () Bool)

(assert (=> b!5477873 (= e!3390481 e!3390482)))

(declare-fun b!5477874 () Bool)

(declare-fun res!2335220 () Bool)

(declare-fun e!3390480 () Bool)

(assert (=> b!5477874 (=> res!2335220 e!3390480)))

(assert (=> b!5477874 (= res!2335220 (not (isEmpty!34205 (tail!10832 s!2326))))))

(declare-fun bm!404143 () Bool)

(assert (=> bm!404143 (= call!404148 (isEmpty!34205 s!2326))))

(declare-fun b!5477876 () Bool)

(assert (=> b!5477876 (= e!3390481 (not lt!2237582))))

(declare-fun b!5477877 () Bool)

(assert (=> b!5477877 (= e!3390480 (not (= (head!11735 s!2326) (c!956963 lt!2237470))))))

(declare-fun b!5477878 () Bool)

(declare-fun e!3390476 () Bool)

(assert (=> b!5477878 (= e!3390476 (= lt!2237582 call!404148))))

(declare-fun b!5477879 () Bool)

(assert (=> b!5477879 (= e!3390476 e!3390481)))

(declare-fun c!957039 () Bool)

(assert (=> b!5477879 (= c!957039 (is-EmptyLang!15358 lt!2237470))))

(declare-fun b!5477880 () Bool)

(declare-fun e!3390477 () Bool)

(assert (=> b!5477880 (= e!3390482 e!3390477)))

(declare-fun res!2335222 () Bool)

(assert (=> b!5477880 (=> (not res!2335222) (not e!3390477))))

(assert (=> b!5477880 (= res!2335222 (not lt!2237582))))

(declare-fun b!5477875 () Bool)

(declare-fun res!2335224 () Bool)

(assert (=> b!5477875 (=> (not res!2335224) (not e!3390478))))

(assert (=> b!5477875 (= res!2335224 (isEmpty!34205 (tail!10832 s!2326)))))

(declare-fun d!1740197 () Bool)

(assert (=> d!1740197 e!3390476))

(declare-fun c!957041 () Bool)

(assert (=> d!1740197 (= c!957041 (is-EmptyExpr!15358 lt!2237470))))

(assert (=> d!1740197 (= lt!2237582 e!3390479)))

(declare-fun c!957040 () Bool)

(assert (=> d!1740197 (= c!957040 (isEmpty!34205 s!2326))))

(assert (=> d!1740197 (validRegex!7094 lt!2237470)))

(assert (=> d!1740197 (= (matchR!7543 lt!2237470 s!2326) lt!2237582)))

(declare-fun b!5477881 () Bool)

(assert (=> b!5477881 (= e!3390477 e!3390480)))

(declare-fun res!2335225 () Bool)

(assert (=> b!5477881 (=> res!2335225 e!3390480)))

(assert (=> b!5477881 (= res!2335225 call!404148)))

(declare-fun b!5477882 () Bool)

(assert (=> b!5477882 (= e!3390479 (nullable!5485 lt!2237470))))

(assert (= (and d!1740197 c!957040) b!5477882))

(assert (= (and d!1740197 (not c!957040)) b!5477872))

(assert (= (and d!1740197 c!957041) b!5477878))

(assert (= (and d!1740197 (not c!957041)) b!5477879))

(assert (= (and b!5477879 c!957039) b!5477876))

(assert (= (and b!5477879 (not c!957039)) b!5477873))

(assert (= (and b!5477873 (not res!2335226)) b!5477870))

(assert (= (and b!5477870 res!2335219) b!5477871))

(assert (= (and b!5477871 res!2335221) b!5477875))

(assert (= (and b!5477875 res!2335224) b!5477869))

(assert (= (and b!5477870 (not res!2335223)) b!5477880))

(assert (= (and b!5477880 res!2335222) b!5477881))

(assert (= (and b!5477881 (not res!2335225)) b!5477874))

(assert (= (and b!5477874 (not res!2335220)) b!5477877))

(assert (= (or b!5477878 b!5477871 b!5477881) bm!404143))

(declare-fun m!6494060 () Bool)

(assert (=> b!5477882 m!6494060))

(assert (=> d!1740197 m!6493794))

(declare-fun m!6494062 () Bool)

(assert (=> d!1740197 m!6494062))

(assert (=> b!5477875 m!6493946))

(assert (=> b!5477875 m!6493946))

(assert (=> b!5477875 m!6494002))

(assert (=> b!5477874 m!6493946))

(assert (=> b!5477874 m!6493946))

(assert (=> b!5477874 m!6494002))

(assert (=> b!5477869 m!6493942))

(assert (=> bm!404143 m!6493794))

(assert (=> b!5477877 m!6493942))

(assert (=> b!5477872 m!6493942))

(assert (=> b!5477872 m!6493942))

(declare-fun m!6494064 () Bool)

(assert (=> b!5477872 m!6494064))

(assert (=> b!5477872 m!6493946))

(assert (=> b!5477872 m!6494064))

(assert (=> b!5477872 m!6493946))

(declare-fun m!6494066 () Bool)

(assert (=> b!5477872 m!6494066))

(assert (=> b!5477500 d!1740197))

(declare-fun d!1740199 () Bool)

(assert (=> d!1740199 (= (matchR!7543 lt!2237470 s!2326) (matchRSpec!2461 lt!2237470 s!2326))))

(declare-fun lt!2237583 () Unit!155166)

(assert (=> d!1740199 (= lt!2237583 (choose!41677 lt!2237470 s!2326))))

(assert (=> d!1740199 (validRegex!7094 lt!2237470)))

(assert (=> d!1740199 (= (mainMatchTheorem!2461 lt!2237470 s!2326) lt!2237583)))

(declare-fun bs!1265705 () Bool)

(assert (= bs!1265705 d!1740199))

(assert (=> bs!1265705 m!6493826))

(assert (=> bs!1265705 m!6493824))

(declare-fun m!6494068 () Bool)

(assert (=> bs!1265705 m!6494068))

(assert (=> bs!1265705 m!6494062))

(assert (=> b!5477500 d!1740199))

(declare-fun d!1740201 () Bool)

(declare-fun lt!2237584 () Regex!15358)

(assert (=> d!1740201 (validRegex!7094 lt!2237584)))

(assert (=> d!1740201 (= lt!2237584 (generalisedUnion!1287 (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251))))))

(assert (=> d!1740201 (= (unfocusZipper!1100 (Cons!62251 lt!2237476 Nil!62251)) lt!2237584)))

(declare-fun bs!1265706 () Bool)

(assert (= bs!1265706 d!1740201))

(declare-fun m!6494070 () Bool)

(assert (=> bs!1265706 m!6494070))

(declare-fun m!6494072 () Bool)

(assert (=> bs!1265706 m!6494072))

(assert (=> bs!1265706 m!6494072))

(declare-fun m!6494074 () Bool)

(assert (=> bs!1265706 m!6494074))

(assert (=> b!5477510 d!1740201))

(declare-fun bm!404160 () Bool)

(declare-fun call!404166 () (Set Context!9484))

(declare-fun call!404168 () (Set Context!9484))

(assert (=> bm!404160 (= call!404166 call!404168)))

(declare-fun c!957055 () Bool)

(declare-fun call!404167 () (Set Context!9484))

(declare-fun bm!404161 () Bool)

(declare-fun call!404169 () List!62374)

(assert (=> bm!404161 (= call!404167 (derivationStepZipperDown!784 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292)) (ite c!957055 (Context!9485 Nil!62250) (Context!9485 call!404169)) (h!68697 s!2326)))))

(declare-fun d!1740203 () Bool)

(declare-fun c!957053 () Bool)

(assert (=> d!1740203 (= c!957053 (and (is-ElementMatch!15358 r!7292) (= (c!956963 r!7292) (h!68697 s!2326))))))

(declare-fun e!3390497 () (Set Context!9484))

(assert (=> d!1740203 (= (derivationStepZipperDown!784 r!7292 (Context!9485 Nil!62250) (h!68697 s!2326)) e!3390497)))

(declare-fun b!5477909 () Bool)

(declare-fun c!957052 () Bool)

(declare-fun e!3390501 () Bool)

(assert (=> b!5477909 (= c!957052 e!3390501)))

(declare-fun res!2335233 () Bool)

(assert (=> b!5477909 (=> (not res!2335233) (not e!3390501))))

(assert (=> b!5477909 (= res!2335233 (is-Concat!24203 r!7292))))

(declare-fun e!3390499 () (Set Context!9484))

(declare-fun e!3390500 () (Set Context!9484))

(assert (=> b!5477909 (= e!3390499 e!3390500)))

(declare-fun bm!404162 () Bool)

(declare-fun call!404170 () List!62374)

(assert (=> bm!404162 (= call!404170 call!404169)))

(declare-fun b!5477910 () Bool)

(assert (=> b!5477910 (= e!3390501 (nullable!5485 (regOne!31228 r!7292)))))

(declare-fun b!5477911 () Bool)

(declare-fun e!3390498 () (Set Context!9484))

(declare-fun call!404165 () (Set Context!9484))

(assert (=> b!5477911 (= e!3390498 call!404165)))

(declare-fun c!957054 () Bool)

(declare-fun bm!404163 () Bool)

(assert (=> bm!404163 (= call!404168 (derivationStepZipperDown!784 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292)))) (ite (or c!957055 c!957052) (Context!9485 Nil!62250) (Context!9485 call!404170)) (h!68697 s!2326)))))

(declare-fun b!5477912 () Bool)

(assert (=> b!5477912 (= e!3390500 (set.union call!404167 call!404166))))

(declare-fun bm!404164 () Bool)

(assert (=> bm!404164 (= call!404165 call!404166)))

(declare-fun b!5477913 () Bool)

(assert (=> b!5477913 (= e!3390499 (set.union call!404168 call!404167))))

(declare-fun b!5477914 () Bool)

(declare-fun e!3390502 () (Set Context!9484))

(assert (=> b!5477914 (= e!3390502 call!404165)))

(declare-fun b!5477915 () Bool)

(assert (=> b!5477915 (= e!3390497 e!3390499)))

(assert (=> b!5477915 (= c!957055 (is-Union!15358 r!7292))))

(declare-fun b!5477916 () Bool)

(assert (=> b!5477916 (= e!3390502 (as set.empty (Set Context!9484)))))

(declare-fun bm!404165 () Bool)

(declare-fun $colon$colon!1555 (List!62374 Regex!15358) List!62374)

(assert (=> bm!404165 (= call!404169 ($colon$colon!1555 (exprs!5242 (Context!9485 Nil!62250)) (ite (or c!957052 c!957054) (regTwo!31228 r!7292) r!7292)))))

(declare-fun b!5477917 () Bool)

(declare-fun c!957056 () Bool)

(assert (=> b!5477917 (= c!957056 (is-Star!15358 r!7292))))

(assert (=> b!5477917 (= e!3390498 e!3390502)))

(declare-fun b!5477918 () Bool)

(assert (=> b!5477918 (= e!3390500 e!3390498)))

(assert (=> b!5477918 (= c!957054 (is-Concat!24203 r!7292))))

(declare-fun b!5477919 () Bool)

(assert (=> b!5477919 (= e!3390497 (set.insert (Context!9485 Nil!62250) (as set.empty (Set Context!9484))))))

(assert (= (and d!1740203 c!957053) b!5477919))

(assert (= (and d!1740203 (not c!957053)) b!5477915))

(assert (= (and b!5477915 c!957055) b!5477913))

(assert (= (and b!5477915 (not c!957055)) b!5477909))

(assert (= (and b!5477909 res!2335233) b!5477910))

(assert (= (and b!5477909 c!957052) b!5477912))

(assert (= (and b!5477909 (not c!957052)) b!5477918))

(assert (= (and b!5477918 c!957054) b!5477911))

(assert (= (and b!5477918 (not c!957054)) b!5477917))

(assert (= (and b!5477917 c!957056) b!5477914))

(assert (= (and b!5477917 (not c!957056)) b!5477916))

(assert (= (or b!5477911 b!5477914) bm!404162))

(assert (= (or b!5477911 b!5477914) bm!404164))

(assert (= (or b!5477912 bm!404162) bm!404165))

(assert (= (or b!5477912 bm!404164) bm!404160))

(assert (= (or b!5477913 b!5477912) bm!404161))

(assert (= (or b!5477913 bm!404160) bm!404163))

(declare-fun m!6494076 () Bool)

(assert (=> b!5477910 m!6494076))

(declare-fun m!6494078 () Bool)

(assert (=> b!5477919 m!6494078))

(declare-fun m!6494080 () Bool)

(assert (=> bm!404163 m!6494080))

(declare-fun m!6494082 () Bool)

(assert (=> bm!404165 m!6494082))

(declare-fun m!6494084 () Bool)

(assert (=> bm!404161 m!6494084))

(assert (=> b!5477489 d!1740203))

(declare-fun d!1740205 () Bool)

(declare-fun c!957057 () Bool)

(declare-fun e!3390505 () Bool)

(assert (=> d!1740205 (= c!957057 e!3390505)))

(declare-fun res!2335234 () Bool)

(assert (=> d!1740205 (=> (not res!2335234) (not e!3390505))))

(assert (=> d!1740205 (= res!2335234 (is-Cons!62250 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250)))))))

(declare-fun e!3390504 () (Set Context!9484))

(assert (=> d!1740205 (= (derivationStepZipperUp!710 (Context!9485 (Cons!62250 r!7292 Nil!62250)) (h!68697 s!2326)) e!3390504)))

(declare-fun b!5477920 () Bool)

(declare-fun e!3390503 () (Set Context!9484))

(assert (=> b!5477920 (= e!3390503 (as set.empty (Set Context!9484)))))

(declare-fun b!5477921 () Bool)

(declare-fun call!404171 () (Set Context!9484))

(assert (=> b!5477921 (= e!3390503 call!404171)))

(declare-fun b!5477922 () Bool)

(assert (=> b!5477922 (= e!3390505 (nullable!5485 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))))))

(declare-fun b!5477923 () Bool)

(assert (=> b!5477923 (= e!3390504 (set.union call!404171 (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (h!68697 s!2326))))))

(declare-fun b!5477924 () Bool)

(assert (=> b!5477924 (= e!3390504 e!3390503)))

(declare-fun c!957058 () Bool)

(assert (=> b!5477924 (= c!957058 (is-Cons!62250 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250)))))))

(declare-fun bm!404166 () Bool)

(assert (=> bm!404166 (= call!404171 (derivationStepZipperDown!784 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250)))) (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (h!68697 s!2326)))))

(assert (= (and d!1740205 res!2335234) b!5477922))

(assert (= (and d!1740205 c!957057) b!5477923))

(assert (= (and d!1740205 (not c!957057)) b!5477924))

(assert (= (and b!5477924 c!957058) b!5477921))

(assert (= (and b!5477924 (not c!957058)) b!5477920))

(assert (= (or b!5477923 b!5477921) bm!404166))

(declare-fun m!6494086 () Bool)

(assert (=> b!5477922 m!6494086))

(declare-fun m!6494088 () Bool)

(assert (=> b!5477923 m!6494088))

(declare-fun m!6494090 () Bool)

(assert (=> bm!404166 m!6494090))

(assert (=> b!5477489 d!1740205))

(declare-fun bs!1265707 () Bool)

(declare-fun d!1740207 () Bool)

(assert (= bs!1265707 (and d!1740207 b!5477507)))

(declare-fun lambda!292137 () Int)

(assert (=> bs!1265707 (= lambda!292137 lambda!292087)))

(declare-fun bs!1265708 () Bool)

(assert (= bs!1265708 (and d!1740207 d!1740155)))

(assert (=> bs!1265708 (= lambda!292137 lambda!292116)))

(declare-fun bs!1265709 () Bool)

(assert (= bs!1265709 (and d!1740207 d!1740159)))

(assert (=> bs!1265709 (= lambda!292137 lambda!292117)))

(assert (=> d!1740207 true))

(assert (=> d!1740207 (= (derivationStepZipper!1553 z!1189 (h!68697 s!2326)) (flatMap!1061 z!1189 lambda!292137))))

(declare-fun bs!1265710 () Bool)

(assert (= bs!1265710 d!1740207))

(declare-fun m!6494092 () Bool)

(assert (=> bs!1265710 m!6494092))

(assert (=> b!5477489 d!1740207))

(declare-fun bs!1265714 () Bool)

(declare-fun d!1740209 () Bool)

(assert (= bs!1265714 (and d!1740209 b!5477487)))

(declare-fun lambda!292142 () Int)

(assert (=> bs!1265714 (= lambda!292142 lambda!292088)))

(declare-fun bs!1265715 () Bool)

(assert (= bs!1265715 (and d!1740209 d!1740181)))

(assert (=> bs!1265715 (= lambda!292142 lambda!292126)))

(declare-fun bs!1265716 () Bool)

(assert (= bs!1265716 (and d!1740209 d!1740189)))

(assert (=> bs!1265716 (= lambda!292142 lambda!292129)))

(declare-fun bs!1265717 () Bool)

(assert (= bs!1265717 (and d!1740209 d!1740191)))

(assert (=> bs!1265717 (= lambda!292142 lambda!292130)))

(declare-fun b!5477956 () Bool)

(declare-fun e!3390527 () Regex!15358)

(assert (=> b!5477956 (= e!3390527 (Union!15358 (h!68698 (unfocusZipperList!800 zl!343)) (generalisedUnion!1287 (t!375603 (unfocusZipperList!800 zl!343)))))))

(declare-fun b!5477957 () Bool)

(declare-fun e!3390529 () Bool)

(declare-fun lt!2237587 () Regex!15358)

(assert (=> b!5477957 (= e!3390529 (= lt!2237587 (head!11736 (unfocusZipperList!800 zl!343))))))

(declare-fun b!5477958 () Bool)

(declare-fun e!3390526 () Regex!15358)

(assert (=> b!5477958 (= e!3390526 e!3390527)))

(declare-fun c!957074 () Bool)

(assert (=> b!5477958 (= c!957074 (is-Cons!62250 (unfocusZipperList!800 zl!343)))))

(declare-fun b!5477959 () Bool)

(declare-fun e!3390525 () Bool)

(declare-fun isEmptyLang!1050 (Regex!15358) Bool)

(assert (=> b!5477959 (= e!3390525 (isEmptyLang!1050 lt!2237587))))

(declare-fun b!5477960 () Bool)

(assert (=> b!5477960 (= e!3390525 e!3390529)))

(declare-fun c!957072 () Bool)

(assert (=> b!5477960 (= c!957072 (isEmpty!34208 (tail!10833 (unfocusZipperList!800 zl!343))))))

(declare-fun b!5477961 () Bool)

(declare-fun isUnion!482 (Regex!15358) Bool)

(assert (=> b!5477961 (= e!3390529 (isUnion!482 lt!2237587))))

(declare-fun e!3390528 () Bool)

(assert (=> d!1740209 e!3390528))

(declare-fun res!2335242 () Bool)

(assert (=> d!1740209 (=> (not res!2335242) (not e!3390528))))

(assert (=> d!1740209 (= res!2335242 (validRegex!7094 lt!2237587))))

(assert (=> d!1740209 (= lt!2237587 e!3390526)))

(declare-fun c!957073 () Bool)

(declare-fun e!3390530 () Bool)

(assert (=> d!1740209 (= c!957073 e!3390530)))

(declare-fun res!2335243 () Bool)

(assert (=> d!1740209 (=> (not res!2335243) (not e!3390530))))

(assert (=> d!1740209 (= res!2335243 (is-Cons!62250 (unfocusZipperList!800 zl!343)))))

(assert (=> d!1740209 (forall!14615 (unfocusZipperList!800 zl!343) lambda!292142)))

(assert (=> d!1740209 (= (generalisedUnion!1287 (unfocusZipperList!800 zl!343)) lt!2237587)))

(declare-fun b!5477962 () Bool)

(assert (=> b!5477962 (= e!3390528 e!3390525)))

(declare-fun c!957071 () Bool)

(assert (=> b!5477962 (= c!957071 (isEmpty!34208 (unfocusZipperList!800 zl!343)))))

(declare-fun b!5477963 () Bool)

(assert (=> b!5477963 (= e!3390530 (isEmpty!34208 (t!375603 (unfocusZipperList!800 zl!343))))))

(declare-fun b!5477964 () Bool)

(assert (=> b!5477964 (= e!3390527 EmptyLang!15358)))

(declare-fun b!5477965 () Bool)

(assert (=> b!5477965 (= e!3390526 (h!68698 (unfocusZipperList!800 zl!343)))))

(assert (= (and d!1740209 res!2335243) b!5477963))

(assert (= (and d!1740209 c!957073) b!5477965))

(assert (= (and d!1740209 (not c!957073)) b!5477958))

(assert (= (and b!5477958 c!957074) b!5477956))

(assert (= (and b!5477958 (not c!957074)) b!5477964))

(assert (= (and d!1740209 res!2335242) b!5477962))

(assert (= (and b!5477962 c!957071) b!5477959))

(assert (= (and b!5477962 (not c!957071)) b!5477960))

(assert (= (and b!5477960 c!957072) b!5477957))

(assert (= (and b!5477960 (not c!957072)) b!5477961))

(declare-fun m!6494094 () Bool)

(assert (=> b!5477956 m!6494094))

(declare-fun m!6494096 () Bool)

(assert (=> b!5477963 m!6494096))

(assert (=> b!5477957 m!6493728))

(declare-fun m!6494098 () Bool)

(assert (=> b!5477957 m!6494098))

(declare-fun m!6494100 () Bool)

(assert (=> b!5477959 m!6494100))

(assert (=> b!5477960 m!6493728))

(declare-fun m!6494102 () Bool)

(assert (=> b!5477960 m!6494102))

(assert (=> b!5477960 m!6494102))

(declare-fun m!6494104 () Bool)

(assert (=> b!5477960 m!6494104))

(assert (=> b!5477962 m!6493728))

(declare-fun m!6494106 () Bool)

(assert (=> b!5477962 m!6494106))

(declare-fun m!6494108 () Bool)

(assert (=> d!1740209 m!6494108))

(assert (=> d!1740209 m!6493728))

(declare-fun m!6494110 () Bool)

(assert (=> d!1740209 m!6494110))

(declare-fun m!6494112 () Bool)

(assert (=> b!5477961 m!6494112))

(assert (=> b!5477488 d!1740209))

(declare-fun bs!1265718 () Bool)

(declare-fun d!1740211 () Bool)

(assert (= bs!1265718 (and d!1740211 d!1740209)))

(declare-fun lambda!292145 () Int)

(assert (=> bs!1265718 (= lambda!292145 lambda!292142)))

(declare-fun bs!1265719 () Bool)

(assert (= bs!1265719 (and d!1740211 b!5477487)))

(assert (=> bs!1265719 (= lambda!292145 lambda!292088)))

(declare-fun bs!1265720 () Bool)

(assert (= bs!1265720 (and d!1740211 d!1740181)))

(assert (=> bs!1265720 (= lambda!292145 lambda!292126)))

(declare-fun bs!1265721 () Bool)

(assert (= bs!1265721 (and d!1740211 d!1740189)))

(assert (=> bs!1265721 (= lambda!292145 lambda!292129)))

(declare-fun bs!1265722 () Bool)

(assert (= bs!1265722 (and d!1740211 d!1740191)))

(assert (=> bs!1265722 (= lambda!292145 lambda!292130)))

(declare-fun lt!2237590 () List!62374)

(assert (=> d!1740211 (forall!14615 lt!2237590 lambda!292145)))

(declare-fun e!3390533 () List!62374)

(assert (=> d!1740211 (= lt!2237590 e!3390533)))

(declare-fun c!957077 () Bool)

(assert (=> d!1740211 (= c!957077 (is-Cons!62251 zl!343))))

(assert (=> d!1740211 (= (unfocusZipperList!800 zl!343) lt!2237590)))

(declare-fun b!5477970 () Bool)

(assert (=> b!5477970 (= e!3390533 (Cons!62250 (generalisedConcat!1027 (exprs!5242 (h!68699 zl!343))) (unfocusZipperList!800 (t!375604 zl!343))))))

(declare-fun b!5477971 () Bool)

(assert (=> b!5477971 (= e!3390533 Nil!62250)))

(assert (= (and d!1740211 c!957077) b!5477970))

(assert (= (and d!1740211 (not c!957077)) b!5477971))

(declare-fun m!6494120 () Bool)

(assert (=> d!1740211 m!6494120))

(assert (=> b!5477970 m!6493816))

(declare-fun m!6494122 () Bool)

(assert (=> b!5477970 m!6494122))

(assert (=> b!5477488 d!1740211))

(declare-fun d!1740215 () Bool)

(declare-fun lt!2237591 () Regex!15358)

(assert (=> d!1740215 (validRegex!7094 lt!2237591)))

(assert (=> d!1740215 (= lt!2237591 (generalisedUnion!1287 (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251))))))

(assert (=> d!1740215 (= (unfocusZipper!1100 (Cons!62251 lt!2237455 Nil!62251)) lt!2237591)))

(declare-fun bs!1265723 () Bool)

(assert (= bs!1265723 d!1740215))

(declare-fun m!6494124 () Bool)

(assert (=> bs!1265723 m!6494124))

(declare-fun m!6494126 () Bool)

(assert (=> bs!1265723 m!6494126))

(assert (=> bs!1265723 m!6494126))

(declare-fun m!6494128 () Bool)

(assert (=> bs!1265723 m!6494128))

(assert (=> b!5477499 d!1740215))

(declare-fun d!1740217 () Bool)

(assert (=> d!1740217 (= (isEmpty!34204 (t!375604 zl!343)) (is-Nil!62251 (t!375604 zl!343)))))

(assert (=> b!5477498 d!1740217))

(declare-fun d!1740219 () Bool)

(declare-fun choose!41679 (Int) Bool)

(assert (=> d!1740219 (= (Exists!2537 lambda!292084) (choose!41679 lambda!292084))))

(declare-fun bs!1265724 () Bool)

(assert (= bs!1265724 d!1740219))

(declare-fun m!6494130 () Bool)

(assert (=> bs!1265724 m!6494130))

(assert (=> b!5477508 d!1740219))

(declare-fun d!1740221 () Bool)

(declare-fun isEmpty!34209 (Option!15467) Bool)

(assert (=> d!1740221 (= (isDefined!12170 (findConcatSeparation!1881 (reg!15687 r!7292) r!7292 Nil!62249 s!2326 s!2326)) (not (isEmpty!34209 (findConcatSeparation!1881 (reg!15687 r!7292) r!7292 Nil!62249 s!2326 s!2326))))))

(declare-fun bs!1265725 () Bool)

(assert (= bs!1265725 d!1740221))

(assert (=> bs!1265725 m!6493804))

(declare-fun m!6494132 () Bool)

(assert (=> bs!1265725 m!6494132))

(assert (=> b!5477508 d!1740221))

(declare-fun bs!1265726 () Bool)

(declare-fun d!1740223 () Bool)

(assert (= bs!1265726 (and d!1740223 b!5477508)))

(declare-fun lambda!292150 () Int)

(assert (=> bs!1265726 (not (= lambda!292150 lambda!292085))))

(declare-fun bs!1265727 () Bool)

(assert (= bs!1265727 (and d!1740223 b!5477861)))

(assert (=> bs!1265727 (not (= lambda!292150 lambda!292131))))

(assert (=> bs!1265726 (not (= lambda!292150 lambda!292086))))

(declare-fun bs!1265728 () Bool)

(assert (= bs!1265728 (and d!1740223 b!5477718)))

(assert (=> bs!1265728 (not (= lambda!292150 lambda!292123))))

(declare-fun bs!1265729 () Bool)

(assert (= bs!1265729 (and d!1740223 b!5477726)))

(assert (=> bs!1265729 (not (= lambda!292150 lambda!292122))))

(declare-fun bs!1265730 () Bool)

(assert (= bs!1265730 (and d!1740223 b!5477853)))

(assert (=> bs!1265730 (not (= lambda!292150 lambda!292133))))

(assert (=> bs!1265726 (= lambda!292150 lambda!292084)))

(assert (=> d!1740223 true))

(assert (=> d!1740223 true))

(assert (=> d!1740223 true))

(declare-fun lambda!292151 () Int)

(assert (=> bs!1265726 (not (= lambda!292151 lambda!292085))))

(assert (=> bs!1265727 (not (= lambda!292151 lambda!292131))))

(assert (=> bs!1265726 (= lambda!292151 lambda!292086)))

(assert (=> bs!1265728 (= (and (= (reg!15687 r!7292) (regOne!31228 r!7292)) (= r!7292 (regTwo!31228 r!7292))) (= lambda!292151 lambda!292123))))

(assert (=> bs!1265730 (= (and (= (reg!15687 r!7292) (regOne!31228 lt!2237470)) (= r!7292 (regTwo!31228 lt!2237470))) (= lambda!292151 lambda!292133))))

(assert (=> bs!1265726 (not (= lambda!292151 lambda!292084))))

(declare-fun bs!1265731 () Bool)

(assert (= bs!1265731 d!1740223))

(assert (=> bs!1265731 (not (= lambda!292151 lambda!292150))))

(assert (=> bs!1265729 (not (= lambda!292151 lambda!292122))))

(assert (=> d!1740223 true))

(assert (=> d!1740223 true))

(assert (=> d!1740223 true))

(assert (=> d!1740223 (= (Exists!2537 lambda!292150) (Exists!2537 lambda!292151))))

(declare-fun lt!2237596 () Unit!155166)

(declare-fun choose!41680 (Regex!15358 Regex!15358 List!62373) Unit!155166)

(assert (=> d!1740223 (= lt!2237596 (choose!41680 (reg!15687 r!7292) r!7292 s!2326))))

(assert (=> d!1740223 (validRegex!7094 (reg!15687 r!7292))))

(assert (=> d!1740223 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1187 (reg!15687 r!7292) r!7292 s!2326) lt!2237596)))

(declare-fun m!6494134 () Bool)

(assert (=> bs!1265731 m!6494134))

(declare-fun m!6494136 () Bool)

(assert (=> bs!1265731 m!6494136))

(declare-fun m!6494138 () Bool)

(assert (=> bs!1265731 m!6494138))

(declare-fun m!6494140 () Bool)

(assert (=> bs!1265731 m!6494140))

(assert (=> b!5477508 d!1740223))

(declare-fun bs!1265732 () Bool)

(declare-fun d!1740225 () Bool)

(assert (= bs!1265732 (and d!1740225 b!5477508)))

(declare-fun lambda!292156 () Int)

(assert (=> bs!1265732 (not (= lambda!292156 lambda!292085))))

(declare-fun bs!1265733 () Bool)

(assert (= bs!1265733 (and d!1740225 b!5477861)))

(assert (=> bs!1265733 (not (= lambda!292156 lambda!292131))))

(assert (=> bs!1265732 (not (= lambda!292156 lambda!292086))))

(declare-fun bs!1265734 () Bool)

(assert (= bs!1265734 (and d!1740225 b!5477718)))

(assert (=> bs!1265734 (not (= lambda!292156 lambda!292123))))

(declare-fun bs!1265735 () Bool)

(assert (= bs!1265735 (and d!1740225 b!5477853)))

(assert (=> bs!1265735 (not (= lambda!292156 lambda!292133))))

(assert (=> bs!1265732 (= (= (Star!15358 (reg!15687 r!7292)) r!7292) (= lambda!292156 lambda!292084))))

(declare-fun bs!1265736 () Bool)

(assert (= bs!1265736 (and d!1740225 d!1740223)))

(assert (=> bs!1265736 (not (= lambda!292156 lambda!292151))))

(assert (=> bs!1265736 (= (= (Star!15358 (reg!15687 r!7292)) r!7292) (= lambda!292156 lambda!292150))))

(declare-fun bs!1265737 () Bool)

(assert (= bs!1265737 (and d!1740225 b!5477726)))

(assert (=> bs!1265737 (not (= lambda!292156 lambda!292122))))

(assert (=> d!1740225 true))

(assert (=> d!1740225 true))

(declare-fun bs!1265738 () Bool)

(assert (= bs!1265738 d!1740225))

(declare-fun lambda!292157 () Int)

(assert (=> bs!1265738 (not (= lambda!292157 lambda!292156))))

(assert (=> bs!1265732 (= (= (Star!15358 (reg!15687 r!7292)) r!7292) (= lambda!292157 lambda!292085))))

(assert (=> bs!1265733 (= (and (= (reg!15687 r!7292) (reg!15687 lt!2237470)) (= (Star!15358 (reg!15687 r!7292)) lt!2237470)) (= lambda!292157 lambda!292131))))

(assert (=> bs!1265732 (not (= lambda!292157 lambda!292086))))

(assert (=> bs!1265734 (not (= lambda!292157 lambda!292123))))

(assert (=> bs!1265735 (not (= lambda!292157 lambda!292133))))

(assert (=> bs!1265732 (not (= lambda!292157 lambda!292084))))

(assert (=> bs!1265736 (not (= lambda!292157 lambda!292151))))

(assert (=> bs!1265736 (not (= lambda!292157 lambda!292150))))

(assert (=> bs!1265737 (= (= (Star!15358 (reg!15687 r!7292)) r!7292) (= lambda!292157 lambda!292122))))

(assert (=> d!1740225 true))

(assert (=> d!1740225 true))

(assert (=> d!1740225 (= (Exists!2537 lambda!292156) (Exists!2537 lambda!292157))))

(declare-fun lt!2237600 () Unit!155166)

(declare-fun choose!41681 (Regex!15358 List!62373) Unit!155166)

(assert (=> d!1740225 (= lt!2237600 (choose!41681 (reg!15687 r!7292) s!2326))))

(assert (=> d!1740225 (validRegex!7094 (reg!15687 r!7292))))

(assert (=> d!1740225 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!511 (reg!15687 r!7292) s!2326) lt!2237600)))

(declare-fun m!6494154 () Bool)

(assert (=> bs!1265738 m!6494154))

(declare-fun m!6494156 () Bool)

(assert (=> bs!1265738 m!6494156))

(declare-fun m!6494158 () Bool)

(assert (=> bs!1265738 m!6494158))

(assert (=> bs!1265738 m!6494140))

(assert (=> b!5477508 d!1740225))

(declare-fun d!1740229 () Bool)

(assert (=> d!1740229 (= (isEmpty!34205 s!2326) (is-Nil!62249 s!2326))))

(assert (=> b!5477508 d!1740229))

(declare-fun d!1740231 () Bool)

(assert (=> d!1740231 (= (Exists!2537 lambda!292086) (choose!41679 lambda!292086))))

(declare-fun bs!1265739 () Bool)

(assert (= bs!1265739 d!1740231))

(declare-fun m!6494160 () Bool)

(assert (=> bs!1265739 m!6494160))

(assert (=> b!5477508 d!1740231))

(declare-fun d!1740233 () Bool)

(assert (=> d!1740233 (= (Exists!2537 lambda!292085) (choose!41679 lambda!292085))))

(declare-fun bs!1265740 () Bool)

(assert (= bs!1265740 d!1740233))

(declare-fun m!6494162 () Bool)

(assert (=> bs!1265740 m!6494162))

(assert (=> b!5477508 d!1740233))

(declare-fun b!5478050 () Bool)

(declare-fun e!3390573 () Bool)

(assert (=> b!5478050 (= e!3390573 (matchR!7543 r!7292 s!2326))))

(declare-fun b!5478051 () Bool)

(declare-fun res!2335299 () Bool)

(declare-fun e!3390575 () Bool)

(assert (=> b!5478051 (=> (not res!2335299) (not e!3390575))))

(declare-fun lt!2237612 () Option!15467)

(declare-fun get!21468 (Option!15467) tuple2!65110)

(assert (=> b!5478051 (= res!2335299 (matchR!7543 r!7292 (_2!35858 (get!21468 lt!2237612))))))

(declare-fun d!1740235 () Bool)

(declare-fun e!3390574 () Bool)

(assert (=> d!1740235 e!3390574))

(declare-fun res!2335296 () Bool)

(assert (=> d!1740235 (=> res!2335296 e!3390574)))

(assert (=> d!1740235 (= res!2335296 e!3390575)))

(declare-fun res!2335300 () Bool)

(assert (=> d!1740235 (=> (not res!2335300) (not e!3390575))))

(assert (=> d!1740235 (= res!2335300 (isDefined!12170 lt!2237612))))

(declare-fun e!3390576 () Option!15467)

(assert (=> d!1740235 (= lt!2237612 e!3390576)))

(declare-fun c!957091 () Bool)

(assert (=> d!1740235 (= c!957091 e!3390573)))

(declare-fun res!2335298 () Bool)

(assert (=> d!1740235 (=> (not res!2335298) (not e!3390573))))

(assert (=> d!1740235 (= res!2335298 (matchR!7543 (reg!15687 r!7292) Nil!62249))))

(assert (=> d!1740235 (validRegex!7094 (reg!15687 r!7292))))

(assert (=> d!1740235 (= (findConcatSeparation!1881 (reg!15687 r!7292) r!7292 Nil!62249 s!2326 s!2326) lt!2237612)))

(declare-fun b!5478052 () Bool)

(declare-fun e!3390577 () Option!15467)

(assert (=> b!5478052 (= e!3390576 e!3390577)))

(declare-fun c!957092 () Bool)

(assert (=> b!5478052 (= c!957092 (is-Nil!62249 s!2326))))

(declare-fun b!5478053 () Bool)

(declare-fun ++!13699 (List!62373 List!62373) List!62373)

(assert (=> b!5478053 (= e!3390575 (= (++!13699 (_1!35858 (get!21468 lt!2237612)) (_2!35858 (get!21468 lt!2237612))) s!2326))))

(declare-fun b!5478054 () Bool)

(assert (=> b!5478054 (= e!3390574 (not (isDefined!12170 lt!2237612)))))

(declare-fun b!5478055 () Bool)

(assert (=> b!5478055 (= e!3390576 (Some!15466 (tuple2!65111 Nil!62249 s!2326)))))

(declare-fun b!5478056 () Bool)

(declare-fun lt!2237610 () Unit!155166)

(declare-fun lt!2237611 () Unit!155166)

(assert (=> b!5478056 (= lt!2237610 lt!2237611)))

(assert (=> b!5478056 (= (++!13699 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249)) (t!375602 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1904 (List!62373 C!30986 List!62373 List!62373) Unit!155166)

(assert (=> b!5478056 (= lt!2237611 (lemmaMoveElementToOtherListKeepsConcatEq!1904 Nil!62249 (h!68697 s!2326) (t!375602 s!2326) s!2326))))

(assert (=> b!5478056 (= e!3390577 (findConcatSeparation!1881 (reg!15687 r!7292) r!7292 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249)) (t!375602 s!2326) s!2326))))

(declare-fun b!5478057 () Bool)

(declare-fun res!2335297 () Bool)

(assert (=> b!5478057 (=> (not res!2335297) (not e!3390575))))

(assert (=> b!5478057 (= res!2335297 (matchR!7543 (reg!15687 r!7292) (_1!35858 (get!21468 lt!2237612))))))

(declare-fun b!5478058 () Bool)

(assert (=> b!5478058 (= e!3390577 None!15466)))

(assert (= (and d!1740235 res!2335298) b!5478050))

(assert (= (and d!1740235 c!957091) b!5478055))

(assert (= (and d!1740235 (not c!957091)) b!5478052))

(assert (= (and b!5478052 c!957092) b!5478058))

(assert (= (and b!5478052 (not c!957092)) b!5478056))

(assert (= (and d!1740235 res!2335300) b!5478057))

(assert (= (and b!5478057 res!2335297) b!5478051))

(assert (= (and b!5478051 res!2335299) b!5478053))

(assert (= (and d!1740235 (not res!2335296)) b!5478054))

(declare-fun m!6494168 () Bool)

(assert (=> b!5478056 m!6494168))

(assert (=> b!5478056 m!6494168))

(declare-fun m!6494170 () Bool)

(assert (=> b!5478056 m!6494170))

(declare-fun m!6494172 () Bool)

(assert (=> b!5478056 m!6494172))

(assert (=> b!5478056 m!6494168))

(declare-fun m!6494174 () Bool)

(assert (=> b!5478056 m!6494174))

(declare-fun m!6494176 () Bool)

(assert (=> d!1740235 m!6494176))

(declare-fun m!6494178 () Bool)

(assert (=> d!1740235 m!6494178))

(assert (=> d!1740235 m!6494140))

(assert (=> b!5478054 m!6494176))

(declare-fun m!6494180 () Bool)

(assert (=> b!5478057 m!6494180))

(declare-fun m!6494182 () Bool)

(assert (=> b!5478057 m!6494182))

(assert (=> b!5478050 m!6493766))

(assert (=> b!5478051 m!6494180))

(declare-fun m!6494184 () Bool)

(assert (=> b!5478051 m!6494184))

(assert (=> b!5478053 m!6494180))

(declare-fun m!6494186 () Bool)

(assert (=> b!5478053 m!6494186))

(assert (=> b!5477508 d!1740235))

(declare-fun bs!1265744 () Bool)

(declare-fun d!1740241 () Bool)

(assert (= bs!1265744 (and d!1740241 d!1740225)))

(declare-fun lambda!292163 () Int)

(assert (=> bs!1265744 (= (= r!7292 (Star!15358 (reg!15687 r!7292))) (= lambda!292163 lambda!292156))))

(declare-fun bs!1265745 () Bool)

(assert (= bs!1265745 (and d!1740241 b!5477508)))

(assert (=> bs!1265745 (not (= lambda!292163 lambda!292085))))

(declare-fun bs!1265746 () Bool)

(assert (= bs!1265746 (and d!1740241 b!5477861)))

(assert (=> bs!1265746 (not (= lambda!292163 lambda!292131))))

(assert (=> bs!1265745 (not (= lambda!292163 lambda!292086))))

(declare-fun bs!1265747 () Bool)

(assert (= bs!1265747 (and d!1740241 b!5477718)))

(assert (=> bs!1265747 (not (= lambda!292163 lambda!292123))))

(declare-fun bs!1265748 () Bool)

(assert (= bs!1265748 (and d!1740241 b!5477853)))

(assert (=> bs!1265748 (not (= lambda!292163 lambda!292133))))

(assert (=> bs!1265745 (= lambda!292163 lambda!292084)))

(declare-fun bs!1265749 () Bool)

(assert (= bs!1265749 (and d!1740241 d!1740223)))

(assert (=> bs!1265749 (not (= lambda!292163 lambda!292151))))

(assert (=> bs!1265744 (not (= lambda!292163 lambda!292157))))

(assert (=> bs!1265749 (= lambda!292163 lambda!292150)))

(declare-fun bs!1265750 () Bool)

(assert (= bs!1265750 (and d!1740241 b!5477726)))

(assert (=> bs!1265750 (not (= lambda!292163 lambda!292122))))

(assert (=> d!1740241 true))

(assert (=> d!1740241 true))

(assert (=> d!1740241 true))

(assert (=> d!1740241 (= (isDefined!12170 (findConcatSeparation!1881 (reg!15687 r!7292) r!7292 Nil!62249 s!2326 s!2326)) (Exists!2537 lambda!292163))))

(declare-fun lt!2237615 () Unit!155166)

(declare-fun choose!41682 (Regex!15358 Regex!15358 List!62373) Unit!155166)

(assert (=> d!1740241 (= lt!2237615 (choose!41682 (reg!15687 r!7292) r!7292 s!2326))))

(assert (=> d!1740241 (validRegex!7094 (reg!15687 r!7292))))

(assert (=> d!1740241 (= (lemmaFindConcatSeparationEquivalentToExists!1645 (reg!15687 r!7292) r!7292 s!2326) lt!2237615)))

(declare-fun bs!1265751 () Bool)

(assert (= bs!1265751 d!1740241))

(assert (=> bs!1265751 m!6493804))

(declare-fun m!6494188 () Bool)

(assert (=> bs!1265751 m!6494188))

(assert (=> bs!1265751 m!6494140))

(declare-fun m!6494190 () Bool)

(assert (=> bs!1265751 m!6494190))

(assert (=> bs!1265751 m!6493804))

(assert (=> bs!1265751 m!6493806))

(assert (=> b!5477508 d!1740241))

(declare-fun d!1740243 () Bool)

(declare-fun res!2335307 () Bool)

(declare-fun e!3390592 () Bool)

(assert (=> d!1740243 (=> res!2335307 e!3390592)))

(assert (=> d!1740243 (= res!2335307 (is-Nil!62250 (exprs!5242 c!332)))))

(assert (=> d!1740243 (= (forall!14615 (exprs!5242 c!332) lambda!292088) e!3390592)))

(declare-fun b!5478085 () Bool)

(declare-fun e!3390593 () Bool)

(assert (=> b!5478085 (= e!3390592 e!3390593)))

(declare-fun res!2335308 () Bool)

(assert (=> b!5478085 (=> (not res!2335308) (not e!3390593))))

(assert (=> b!5478085 (= res!2335308 (dynLambda!24435 lambda!292088 (h!68698 (exprs!5242 c!332))))))

(declare-fun b!5478086 () Bool)

(assert (=> b!5478086 (= e!3390593 (forall!14615 (t!375603 (exprs!5242 c!332)) lambda!292088))))

(assert (= (and d!1740243 (not res!2335307)) b!5478085))

(assert (= (and b!5478085 res!2335308) b!5478086))

(declare-fun b_lambda!208121 () Bool)

(assert (=> (not b_lambda!208121) (not b!5478085)))

(declare-fun m!6494192 () Bool)

(assert (=> b!5478085 m!6494192))

(declare-fun m!6494194 () Bool)

(assert (=> b!5478086 m!6494194))

(assert (=> b!5477487 d!1740243))

(declare-fun bm!404184 () Bool)

(declare-fun call!404190 () (Set Context!9484))

(declare-fun call!404192 () (Set Context!9484))

(assert (=> bm!404184 (= call!404190 call!404192)))

(declare-fun call!404191 () (Set Context!9484))

(declare-fun c!957106 () Bool)

(declare-fun bm!404185 () Bool)

(declare-fun call!404193 () List!62374)

(assert (=> bm!404185 (= call!404191 (derivationStepZipperDown!784 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292))) (ite c!957106 lt!2237455 (Context!9485 call!404193)) (h!68697 s!2326)))))

(declare-fun d!1740245 () Bool)

(declare-fun c!957104 () Bool)

(assert (=> d!1740245 (= c!957104 (and (is-ElementMatch!15358 (reg!15687 r!7292)) (= (c!956963 (reg!15687 r!7292)) (h!68697 s!2326))))))

(declare-fun e!3390594 () (Set Context!9484))

(assert (=> d!1740245 (= (derivationStepZipperDown!784 (reg!15687 r!7292) lt!2237455 (h!68697 s!2326)) e!3390594)))

(declare-fun b!5478087 () Bool)

(declare-fun c!957103 () Bool)

(declare-fun e!3390598 () Bool)

(assert (=> b!5478087 (= c!957103 e!3390598)))

(declare-fun res!2335309 () Bool)

(assert (=> b!5478087 (=> (not res!2335309) (not e!3390598))))

(assert (=> b!5478087 (= res!2335309 (is-Concat!24203 (reg!15687 r!7292)))))

(declare-fun e!3390596 () (Set Context!9484))

(declare-fun e!3390597 () (Set Context!9484))

(assert (=> b!5478087 (= e!3390596 e!3390597)))

(declare-fun bm!404186 () Bool)

(declare-fun call!404194 () List!62374)

(assert (=> bm!404186 (= call!404194 call!404193)))

(declare-fun b!5478088 () Bool)

(assert (=> b!5478088 (= e!3390598 (nullable!5485 (regOne!31228 (reg!15687 r!7292))))))

(declare-fun b!5478089 () Bool)

(declare-fun e!3390595 () (Set Context!9484))

(declare-fun call!404189 () (Set Context!9484))

(assert (=> b!5478089 (= e!3390595 call!404189)))

(declare-fun c!957105 () Bool)

(declare-fun bm!404187 () Bool)

(assert (=> bm!404187 (= call!404192 (derivationStepZipperDown!784 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292))))) (ite (or c!957106 c!957103) lt!2237455 (Context!9485 call!404194)) (h!68697 s!2326)))))

(declare-fun b!5478090 () Bool)

(assert (=> b!5478090 (= e!3390597 (set.union call!404191 call!404190))))

(declare-fun bm!404188 () Bool)

(assert (=> bm!404188 (= call!404189 call!404190)))

(declare-fun b!5478091 () Bool)

(assert (=> b!5478091 (= e!3390596 (set.union call!404192 call!404191))))

(declare-fun b!5478092 () Bool)

(declare-fun e!3390599 () (Set Context!9484))

(assert (=> b!5478092 (= e!3390599 call!404189)))

(declare-fun b!5478093 () Bool)

(assert (=> b!5478093 (= e!3390594 e!3390596)))

(assert (=> b!5478093 (= c!957106 (is-Union!15358 (reg!15687 r!7292)))))

(declare-fun b!5478094 () Bool)

(assert (=> b!5478094 (= e!3390599 (as set.empty (Set Context!9484)))))

(declare-fun bm!404189 () Bool)

(assert (=> bm!404189 (= call!404193 ($colon$colon!1555 (exprs!5242 lt!2237455) (ite (or c!957103 c!957105) (regTwo!31228 (reg!15687 r!7292)) (reg!15687 r!7292))))))

(declare-fun b!5478095 () Bool)

(declare-fun c!957107 () Bool)

(assert (=> b!5478095 (= c!957107 (is-Star!15358 (reg!15687 r!7292)))))

(assert (=> b!5478095 (= e!3390595 e!3390599)))

(declare-fun b!5478096 () Bool)

(assert (=> b!5478096 (= e!3390597 e!3390595)))

(assert (=> b!5478096 (= c!957105 (is-Concat!24203 (reg!15687 r!7292)))))

(declare-fun b!5478097 () Bool)

(assert (=> b!5478097 (= e!3390594 (set.insert lt!2237455 (as set.empty (Set Context!9484))))))

(assert (= (and d!1740245 c!957104) b!5478097))

(assert (= (and d!1740245 (not c!957104)) b!5478093))

(assert (= (and b!5478093 c!957106) b!5478091))

(assert (= (and b!5478093 (not c!957106)) b!5478087))

(assert (= (and b!5478087 res!2335309) b!5478088))

(assert (= (and b!5478087 c!957103) b!5478090))

(assert (= (and b!5478087 (not c!957103)) b!5478096))

(assert (= (and b!5478096 c!957105) b!5478089))

(assert (= (and b!5478096 (not c!957105)) b!5478095))

(assert (= (and b!5478095 c!957107) b!5478092))

(assert (= (and b!5478095 (not c!957107)) b!5478094))

(assert (= (or b!5478089 b!5478092) bm!404186))

(assert (= (or b!5478089 b!5478092) bm!404188))

(assert (= (or b!5478090 bm!404186) bm!404189))

(assert (= (or b!5478090 bm!404188) bm!404184))

(assert (= (or b!5478091 b!5478090) bm!404185))

(assert (= (or b!5478091 bm!404184) bm!404187))

(declare-fun m!6494196 () Bool)

(assert (=> b!5478088 m!6494196))

(assert (=> b!5478097 m!6493748))

(declare-fun m!6494198 () Bool)

(assert (=> bm!404187 m!6494198))

(declare-fun m!6494200 () Bool)

(assert (=> bm!404189 m!6494200))

(declare-fun m!6494202 () Bool)

(assert (=> bm!404185 m!6494202))

(assert (=> b!5477486 d!1740245))

(declare-fun d!1740247 () Bool)

(assert (=> d!1740247 (= (flatMap!1061 lt!2237468 lambda!292087) (choose!41676 lt!2237468 lambda!292087))))

(declare-fun bs!1265752 () Bool)

(assert (= bs!1265752 d!1740247))

(declare-fun m!6494204 () Bool)

(assert (=> bs!1265752 m!6494204))

(assert (=> b!5477486 d!1740247))

(declare-fun d!1740249 () Bool)

(declare-fun c!957108 () Bool)

(declare-fun e!3390602 () Bool)

(assert (=> d!1740249 (= c!957108 e!3390602)))

(declare-fun res!2335310 () Bool)

(assert (=> d!1740249 (=> (not res!2335310) (not e!3390602))))

(assert (=> d!1740249 (= res!2335310 (is-Cons!62250 (exprs!5242 lt!2237476)))))

(declare-fun e!3390601 () (Set Context!9484))

(assert (=> d!1740249 (= (derivationStepZipperUp!710 lt!2237476 (h!68697 s!2326)) e!3390601)))

(declare-fun b!5478098 () Bool)

(declare-fun e!3390600 () (Set Context!9484))

(assert (=> b!5478098 (= e!3390600 (as set.empty (Set Context!9484)))))

(declare-fun b!5478099 () Bool)

(declare-fun call!404195 () (Set Context!9484))

(assert (=> b!5478099 (= e!3390600 call!404195)))

(declare-fun b!5478100 () Bool)

(assert (=> b!5478100 (= e!3390602 (nullable!5485 (h!68698 (exprs!5242 lt!2237476))))))

(declare-fun b!5478101 () Bool)

(assert (=> b!5478101 (= e!3390601 (set.union call!404195 (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 lt!2237476))) (h!68697 s!2326))))))

(declare-fun b!5478102 () Bool)

(assert (=> b!5478102 (= e!3390601 e!3390600)))

(declare-fun c!957109 () Bool)

(assert (=> b!5478102 (= c!957109 (is-Cons!62250 (exprs!5242 lt!2237476)))))

(declare-fun bm!404190 () Bool)

(assert (=> bm!404190 (= call!404195 (derivationStepZipperDown!784 (h!68698 (exprs!5242 lt!2237476)) (Context!9485 (t!375603 (exprs!5242 lt!2237476))) (h!68697 s!2326)))))

(assert (= (and d!1740249 res!2335310) b!5478100))

(assert (= (and d!1740249 c!957108) b!5478101))

(assert (= (and d!1740249 (not c!957108)) b!5478102))

(assert (= (and b!5478102 c!957109) b!5478099))

(assert (= (and b!5478102 (not c!957109)) b!5478098))

(assert (= (or b!5478101 b!5478099) bm!404190))

(declare-fun m!6494206 () Bool)

(assert (=> b!5478100 m!6494206))

(declare-fun m!6494208 () Bool)

(assert (=> b!5478101 m!6494208))

(declare-fun m!6494210 () Bool)

(assert (=> bm!404190 m!6494210))

(assert (=> b!5477486 d!1740249))

(declare-fun d!1740251 () Bool)

(assert (=> d!1740251 (= (flatMap!1061 lt!2237468 lambda!292087) (dynLambda!24434 lambda!292087 lt!2237476))))

(declare-fun lt!2237616 () Unit!155166)

(assert (=> d!1740251 (= lt!2237616 (choose!41675 lt!2237468 lt!2237476 lambda!292087))))

(assert (=> d!1740251 (= lt!2237468 (set.insert lt!2237476 (as set.empty (Set Context!9484))))))

(assert (=> d!1740251 (= (lemmaFlatMapOnSingletonSet!593 lt!2237468 lt!2237476 lambda!292087) lt!2237616)))

(declare-fun b_lambda!208123 () Bool)

(assert (=> (not b_lambda!208123) (not d!1740251)))

(declare-fun bs!1265753 () Bool)

(assert (= bs!1265753 d!1740251))

(assert (=> bs!1265753 m!6493780))

(declare-fun m!6494212 () Bool)

(assert (=> bs!1265753 m!6494212))

(declare-fun m!6494214 () Bool)

(assert (=> bs!1265753 m!6494214))

(assert (=> bs!1265753 m!6493776))

(assert (=> b!5477486 d!1740251))

(declare-fun d!1740253 () Bool)

(assert (=> d!1740253 (= (flatMap!1061 z!1189 lambda!292087) (choose!41676 z!1189 lambda!292087))))

(declare-fun bs!1265754 () Bool)

(assert (= bs!1265754 d!1740253))

(declare-fun m!6494216 () Bool)

(assert (=> bs!1265754 m!6494216))

(assert (=> b!5477507 d!1740253))

(declare-fun d!1740255 () Bool)

(declare-fun c!957110 () Bool)

(declare-fun e!3390605 () Bool)

(assert (=> d!1740255 (= c!957110 e!3390605)))

(declare-fun res!2335311 () Bool)

(assert (=> d!1740255 (=> (not res!2335311) (not e!3390605))))

(assert (=> d!1740255 (= res!2335311 (is-Cons!62250 (exprs!5242 (h!68699 zl!343))))))

(declare-fun e!3390604 () (Set Context!9484))

(assert (=> d!1740255 (= (derivationStepZipperUp!710 (h!68699 zl!343) (h!68697 s!2326)) e!3390604)))

(declare-fun b!5478103 () Bool)

(declare-fun e!3390603 () (Set Context!9484))

(assert (=> b!5478103 (= e!3390603 (as set.empty (Set Context!9484)))))

(declare-fun b!5478104 () Bool)

(declare-fun call!404196 () (Set Context!9484))

(assert (=> b!5478104 (= e!3390603 call!404196)))

(declare-fun b!5478105 () Bool)

(assert (=> b!5478105 (= e!3390605 (nullable!5485 (h!68698 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun b!5478106 () Bool)

(assert (=> b!5478106 (= e!3390604 (set.union call!404196 (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343)))) (h!68697 s!2326))))))

(declare-fun b!5478107 () Bool)

(assert (=> b!5478107 (= e!3390604 e!3390603)))

(declare-fun c!957111 () Bool)

(assert (=> b!5478107 (= c!957111 (is-Cons!62250 (exprs!5242 (h!68699 zl!343))))))

(declare-fun bm!404191 () Bool)

(assert (=> bm!404191 (= call!404196 (derivationStepZipperDown!784 (h!68698 (exprs!5242 (h!68699 zl!343))) (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343)))) (h!68697 s!2326)))))

(assert (= (and d!1740255 res!2335311) b!5478105))

(assert (= (and d!1740255 c!957110) b!5478106))

(assert (= (and d!1740255 (not c!957110)) b!5478107))

(assert (= (and b!5478107 c!957111) b!5478104))

(assert (= (and b!5478107 (not c!957111)) b!5478103))

(assert (= (or b!5478106 b!5478104) bm!404191))

(declare-fun m!6494218 () Bool)

(assert (=> b!5478105 m!6494218))

(declare-fun m!6494220 () Bool)

(assert (=> b!5478106 m!6494220))

(declare-fun m!6494222 () Bool)

(assert (=> bm!404191 m!6494222))

(assert (=> b!5477507 d!1740255))

(declare-fun d!1740257 () Bool)

(assert (=> d!1740257 (= (flatMap!1061 z!1189 lambda!292087) (dynLambda!24434 lambda!292087 (h!68699 zl!343)))))

(declare-fun lt!2237617 () Unit!155166)

(assert (=> d!1740257 (= lt!2237617 (choose!41675 z!1189 (h!68699 zl!343) lambda!292087))))

(assert (=> d!1740257 (= z!1189 (set.insert (h!68699 zl!343) (as set.empty (Set Context!9484))))))

(assert (=> d!1740257 (= (lemmaFlatMapOnSingletonSet!593 z!1189 (h!68699 zl!343) lambda!292087) lt!2237617)))

(declare-fun b_lambda!208125 () Bool)

(assert (=> (not b_lambda!208125) (not d!1740257)))

(declare-fun bs!1265755 () Bool)

(assert (= bs!1265755 d!1740257))

(assert (=> bs!1265755 m!6493732))

(declare-fun m!6494224 () Bool)

(assert (=> bs!1265755 m!6494224))

(declare-fun m!6494226 () Bool)

(assert (=> bs!1265755 m!6494226))

(declare-fun m!6494228 () Bool)

(assert (=> bs!1265755 m!6494228))

(assert (=> b!5477507 d!1740257))

(declare-fun d!1740259 () Bool)

(declare-fun c!957112 () Bool)

(assert (=> d!1740259 (= c!957112 (isEmpty!34205 s!2326))))

(declare-fun e!3390606 () Bool)

(assert (=> d!1740259 (= (matchZipper!1576 z!1189 s!2326) e!3390606)))

(declare-fun b!5478108 () Bool)

(assert (=> b!5478108 (= e!3390606 (nullableZipper!1506 z!1189))))

(declare-fun b!5478109 () Bool)

(assert (=> b!5478109 (= e!3390606 (matchZipper!1576 (derivationStepZipper!1553 z!1189 (head!11735 s!2326)) (tail!10832 s!2326)))))

(assert (= (and d!1740259 c!957112) b!5478108))

(assert (= (and d!1740259 (not c!957112)) b!5478109))

(assert (=> d!1740259 m!6493794))

(declare-fun m!6494230 () Bool)

(assert (=> b!5478108 m!6494230))

(assert (=> b!5478109 m!6493942))

(assert (=> b!5478109 m!6493942))

(declare-fun m!6494232 () Bool)

(assert (=> b!5478109 m!6494232))

(assert (=> b!5478109 m!6493946))

(assert (=> b!5478109 m!6494232))

(assert (=> b!5478109 m!6493946))

(declare-fun m!6494234 () Bool)

(assert (=> b!5478109 m!6494234))

(assert (=> b!5477506 d!1740259))

(declare-fun bs!1265756 () Bool)

(declare-fun d!1740261 () Bool)

(assert (= bs!1265756 (and d!1740261 d!1740211)))

(declare-fun lambda!292164 () Int)

(assert (=> bs!1265756 (= lambda!292164 lambda!292145)))

(declare-fun bs!1265757 () Bool)

(assert (= bs!1265757 (and d!1740261 d!1740209)))

(assert (=> bs!1265757 (= lambda!292164 lambda!292142)))

(declare-fun bs!1265758 () Bool)

(assert (= bs!1265758 (and d!1740261 b!5477487)))

(assert (=> bs!1265758 (= lambda!292164 lambda!292088)))

(declare-fun bs!1265759 () Bool)

(assert (= bs!1265759 (and d!1740261 d!1740181)))

(assert (=> bs!1265759 (= lambda!292164 lambda!292126)))

(declare-fun bs!1265760 () Bool)

(assert (= bs!1265760 (and d!1740261 d!1740189)))

(assert (=> bs!1265760 (= lambda!292164 lambda!292129)))

(declare-fun bs!1265761 () Bool)

(assert (= bs!1265761 (and d!1740261 d!1740191)))

(assert (=> bs!1265761 (= lambda!292164 lambda!292130)))

(assert (=> d!1740261 (= (inv!81643 setElem!35998) (forall!14615 (exprs!5242 setElem!35998) lambda!292164))))

(declare-fun bs!1265762 () Bool)

(assert (= bs!1265762 d!1740261))

(declare-fun m!6494236 () Bool)

(assert (=> bs!1265762 m!6494236))

(assert (=> setNonEmpty!35998 d!1740261))

(declare-fun b!5478131 () Bool)

(declare-fun e!3390615 () Bool)

(assert (=> b!5478131 (= e!3390615 tp_is_empty!39969)))

(declare-fun b!5478132 () Bool)

(declare-fun tp!1505580 () Bool)

(declare-fun tp!1505581 () Bool)

(assert (=> b!5478132 (= e!3390615 (and tp!1505580 tp!1505581))))

(declare-fun b!5478134 () Bool)

(declare-fun tp!1505583 () Bool)

(declare-fun tp!1505584 () Bool)

(assert (=> b!5478134 (= e!3390615 (and tp!1505583 tp!1505584))))

(assert (=> b!5477509 (= tp!1505530 e!3390615)))

(declare-fun b!5478133 () Bool)

(declare-fun tp!1505582 () Bool)

(assert (=> b!5478133 (= e!3390615 tp!1505582)))

(assert (= (and b!5477509 (is-ElementMatch!15358 (regOne!31229 r!7292))) b!5478131))

(assert (= (and b!5477509 (is-Concat!24203 (regOne!31229 r!7292))) b!5478132))

(assert (= (and b!5477509 (is-Star!15358 (regOne!31229 r!7292))) b!5478133))

(assert (= (and b!5477509 (is-Union!15358 (regOne!31229 r!7292))) b!5478134))

(declare-fun b!5478135 () Bool)

(declare-fun e!3390616 () Bool)

(assert (=> b!5478135 (= e!3390616 tp_is_empty!39969)))

(declare-fun b!5478136 () Bool)

(declare-fun tp!1505585 () Bool)

(declare-fun tp!1505586 () Bool)

(assert (=> b!5478136 (= e!3390616 (and tp!1505585 tp!1505586))))

(declare-fun b!5478138 () Bool)

(declare-fun tp!1505588 () Bool)

(declare-fun tp!1505589 () Bool)

(assert (=> b!5478138 (= e!3390616 (and tp!1505588 tp!1505589))))

(assert (=> b!5477509 (= tp!1505533 e!3390616)))

(declare-fun b!5478137 () Bool)

(declare-fun tp!1505587 () Bool)

(assert (=> b!5478137 (= e!3390616 tp!1505587)))

(assert (= (and b!5477509 (is-ElementMatch!15358 (regTwo!31229 r!7292))) b!5478135))

(assert (= (and b!5477509 (is-Concat!24203 (regTwo!31229 r!7292))) b!5478136))

(assert (= (and b!5477509 (is-Star!15358 (regTwo!31229 r!7292))) b!5478137))

(assert (= (and b!5477509 (is-Union!15358 (regTwo!31229 r!7292))) b!5478138))

(declare-fun b!5478143 () Bool)

(declare-fun e!3390619 () Bool)

(declare-fun tp!1505594 () Bool)

(declare-fun tp!1505595 () Bool)

(assert (=> b!5478143 (= e!3390619 (and tp!1505594 tp!1505595))))

(assert (=> b!5477502 (= tp!1505529 e!3390619)))

(assert (= (and b!5477502 (is-Cons!62250 (exprs!5242 c!332))) b!5478143))

(declare-fun b!5478144 () Bool)

(declare-fun e!3390620 () Bool)

(assert (=> b!5478144 (= e!3390620 tp_is_empty!39969)))

(declare-fun b!5478145 () Bool)

(declare-fun tp!1505596 () Bool)

(declare-fun tp!1505597 () Bool)

(assert (=> b!5478145 (= e!3390620 (and tp!1505596 tp!1505597))))

(declare-fun b!5478147 () Bool)

(declare-fun tp!1505599 () Bool)

(declare-fun tp!1505600 () Bool)

(assert (=> b!5478147 (= e!3390620 (and tp!1505599 tp!1505600))))

(assert (=> b!5477497 (= tp!1505536 e!3390620)))

(declare-fun b!5478146 () Bool)

(declare-fun tp!1505598 () Bool)

(assert (=> b!5478146 (= e!3390620 tp!1505598)))

(assert (= (and b!5477497 (is-ElementMatch!15358 (regOne!31228 r!7292))) b!5478144))

(assert (= (and b!5477497 (is-Concat!24203 (regOne!31228 r!7292))) b!5478145))

(assert (= (and b!5477497 (is-Star!15358 (regOne!31228 r!7292))) b!5478146))

(assert (= (and b!5477497 (is-Union!15358 (regOne!31228 r!7292))) b!5478147))

(declare-fun b!5478148 () Bool)

(declare-fun e!3390621 () Bool)

(assert (=> b!5478148 (= e!3390621 tp_is_empty!39969)))

(declare-fun b!5478149 () Bool)

(declare-fun tp!1505601 () Bool)

(declare-fun tp!1505602 () Bool)

(assert (=> b!5478149 (= e!3390621 (and tp!1505601 tp!1505602))))

(declare-fun b!5478151 () Bool)

(declare-fun tp!1505604 () Bool)

(declare-fun tp!1505605 () Bool)

(assert (=> b!5478151 (= e!3390621 (and tp!1505604 tp!1505605))))

(assert (=> b!5477497 (= tp!1505531 e!3390621)))

(declare-fun b!5478150 () Bool)

(declare-fun tp!1505603 () Bool)

(assert (=> b!5478150 (= e!3390621 tp!1505603)))

(assert (= (and b!5477497 (is-ElementMatch!15358 (regTwo!31228 r!7292))) b!5478148))

(assert (= (and b!5477497 (is-Concat!24203 (regTwo!31228 r!7292))) b!5478149))

(assert (= (and b!5477497 (is-Star!15358 (regTwo!31228 r!7292))) b!5478150))

(assert (= (and b!5477497 (is-Union!15358 (regTwo!31228 r!7292))) b!5478151))

(declare-fun b!5478152 () Bool)

(declare-fun e!3390622 () Bool)

(declare-fun tp!1505606 () Bool)

(declare-fun tp!1505607 () Bool)

(assert (=> b!5478152 (= e!3390622 (and tp!1505606 tp!1505607))))

(assert (=> b!5477496 (= tp!1505532 e!3390622)))

(assert (= (and b!5477496 (is-Cons!62250 (exprs!5242 setElem!35998))) b!5478152))

(declare-fun b!5478160 () Bool)

(declare-fun e!3390628 () Bool)

(declare-fun tp!1505612 () Bool)

(assert (=> b!5478160 (= e!3390628 tp!1505612)))

(declare-fun e!3390627 () Bool)

(declare-fun tp!1505613 () Bool)

(declare-fun b!5478159 () Bool)

(assert (=> b!5478159 (= e!3390627 (and (inv!81643 (h!68699 (t!375604 zl!343))) e!3390628 tp!1505613))))

(assert (=> b!5477490 (= tp!1505528 e!3390627)))

(assert (= b!5478159 b!5478160))

(assert (= (and b!5477490 (is-Cons!62251 (t!375604 zl!343))) b!5478159))

(declare-fun m!6494248 () Bool)

(assert (=> b!5478159 m!6494248))

(declare-fun b!5478161 () Bool)

(declare-fun e!3390629 () Bool)

(assert (=> b!5478161 (= e!3390629 tp_is_empty!39969)))

(declare-fun b!5478162 () Bool)

(declare-fun tp!1505614 () Bool)

(declare-fun tp!1505615 () Bool)

(assert (=> b!5478162 (= e!3390629 (and tp!1505614 tp!1505615))))

(declare-fun b!5478164 () Bool)

(declare-fun tp!1505617 () Bool)

(declare-fun tp!1505618 () Bool)

(assert (=> b!5478164 (= e!3390629 (and tp!1505617 tp!1505618))))

(assert (=> b!5477515 (= tp!1505534 e!3390629)))

(declare-fun b!5478163 () Bool)

(declare-fun tp!1505616 () Bool)

(assert (=> b!5478163 (= e!3390629 tp!1505616)))

(assert (= (and b!5477515 (is-ElementMatch!15358 (reg!15687 r!7292))) b!5478161))

(assert (= (and b!5477515 (is-Concat!24203 (reg!15687 r!7292))) b!5478162))

(assert (= (and b!5477515 (is-Star!15358 (reg!15687 r!7292))) b!5478163))

(assert (= (and b!5477515 (is-Union!15358 (reg!15687 r!7292))) b!5478164))

(declare-fun condSetEmpty!36004 () Bool)

(assert (=> setNonEmpty!35998 (= condSetEmpty!36004 (= setRest!35998 (as set.empty (Set Context!9484))))))

(declare-fun setRes!36004 () Bool)

(assert (=> setNonEmpty!35998 (= tp!1505535 setRes!36004)))

(declare-fun setIsEmpty!36004 () Bool)

(assert (=> setIsEmpty!36004 setRes!36004))

(declare-fun setNonEmpty!36004 () Bool)

(declare-fun e!3390632 () Bool)

(declare-fun tp!1505623 () Bool)

(declare-fun setElem!36004 () Context!9484)

(assert (=> setNonEmpty!36004 (= setRes!36004 (and tp!1505623 (inv!81643 setElem!36004) e!3390632))))

(declare-fun setRest!36004 () (Set Context!9484))

(assert (=> setNonEmpty!36004 (= setRest!35998 (set.union (set.insert setElem!36004 (as set.empty (Set Context!9484))) setRest!36004))))

(declare-fun b!5478169 () Bool)

(declare-fun tp!1505624 () Bool)

(assert (=> b!5478169 (= e!3390632 tp!1505624)))

(assert (= (and setNonEmpty!35998 condSetEmpty!36004) setIsEmpty!36004))

(assert (= (and setNonEmpty!35998 (not condSetEmpty!36004)) setNonEmpty!36004))

(assert (= setNonEmpty!36004 b!5478169))

(declare-fun m!6494250 () Bool)

(assert (=> setNonEmpty!36004 m!6494250))

(declare-fun b!5478174 () Bool)

(declare-fun e!3390635 () Bool)

(declare-fun tp!1505627 () Bool)

(assert (=> b!5478174 (= e!3390635 (and tp_is_empty!39969 tp!1505627))))

(assert (=> b!5477495 (= tp!1505527 e!3390635)))

(assert (= (and b!5477495 (is-Cons!62249 (t!375602 s!2326))) b!5478174))

(declare-fun b!5478175 () Bool)

(declare-fun e!3390636 () Bool)

(declare-fun tp!1505628 () Bool)

(declare-fun tp!1505629 () Bool)

(assert (=> b!5478175 (= e!3390636 (and tp!1505628 tp!1505629))))

(assert (=> b!5477505 (= tp!1505526 e!3390636)))

(assert (= (and b!5477505 (is-Cons!62250 (exprs!5242 (h!68699 zl!343)))) b!5478175))

(declare-fun b_lambda!208127 () Bool)

(assert (= b_lambda!208119 (or b!5477487 b_lambda!208127)))

(declare-fun bs!1265764 () Bool)

(declare-fun d!1740267 () Bool)

(assert (= bs!1265764 (and d!1740267 b!5477487)))

(assert (=> bs!1265764 (= (dynLambda!24435 lambda!292088 (h!68698 lt!2237465)) (validRegex!7094 (h!68698 lt!2237465)))))

(declare-fun m!6494252 () Bool)

(assert (=> bs!1265764 m!6494252))

(assert (=> b!5477683 d!1740267))

(declare-fun b_lambda!208129 () Bool)

(assert (= b_lambda!208115 (or b!5477507 b_lambda!208129)))

(declare-fun bs!1265765 () Bool)

(declare-fun d!1740269 () Bool)

(assert (= bs!1265765 (and d!1740269 b!5477507)))

(assert (=> bs!1265765 (= (dynLambda!24434 lambda!292087 lt!2237457) (derivationStepZipperUp!710 lt!2237457 (h!68697 s!2326)))))

(assert (=> bs!1265765 m!6493740))

(assert (=> d!1740157 d!1740269))

(declare-fun b_lambda!208131 () Bool)

(assert (= b_lambda!208117 (or b!5477507 b_lambda!208131)))

(declare-fun bs!1265766 () Bool)

(declare-fun d!1740271 () Bool)

(assert (= bs!1265766 (and d!1740271 b!5477507)))

(assert (=> bs!1265766 (= (dynLambda!24434 lambda!292087 lt!2237455) (derivationStepZipperUp!710 lt!2237455 (h!68697 s!2326)))))

(assert (=> bs!1265766 m!6493754))

(assert (=> d!1740165 d!1740271))

(declare-fun b_lambda!208133 () Bool)

(assert (= b_lambda!208123 (or b!5477507 b_lambda!208133)))

(declare-fun bs!1265767 () Bool)

(declare-fun d!1740273 () Bool)

(assert (= bs!1265767 (and d!1740273 b!5477507)))

(assert (=> bs!1265767 (= (dynLambda!24434 lambda!292087 lt!2237476) (derivationStepZipperUp!710 lt!2237476 (h!68697 s!2326)))))

(assert (=> bs!1265767 m!6493778))

(assert (=> d!1740251 d!1740273))

(declare-fun b_lambda!208135 () Bool)

(assert (= b_lambda!208125 (or b!5477507 b_lambda!208135)))

(declare-fun bs!1265768 () Bool)

(declare-fun d!1740275 () Bool)

(assert (= bs!1265768 (and d!1740275 b!5477507)))

(assert (=> bs!1265768 (= (dynLambda!24434 lambda!292087 (h!68699 zl!343)) (derivationStepZipperUp!710 (h!68699 zl!343) (h!68697 s!2326)))))

(assert (=> bs!1265768 m!6493734))

(assert (=> d!1740257 d!1740275))

(declare-fun b_lambda!208137 () Bool)

(assert (= b_lambda!208121 (or b!5477487 b_lambda!208137)))

(declare-fun bs!1265769 () Bool)

(declare-fun d!1740277 () Bool)

(assert (= bs!1265769 (and d!1740277 b!5477487)))

(assert (=> bs!1265769 (= (dynLambda!24435 lambda!292088 (h!68698 (exprs!5242 c!332))) (validRegex!7094 (h!68698 (exprs!5242 c!332))))))

(declare-fun m!6494254 () Bool)

(assert (=> bs!1265769 m!6494254))

(assert (=> b!5478085 d!1740277))

(push 1)

(assert (not b!5477676))

(assert (not b!5478164))

(assert (not bm!404191))

(assert (not b!5477877))

(assert (not d!1740197))

(assert (not b!5478152))

(assert (not b!5477756))

(assert (not bm!404122))

(assert (not b!5477802))

(assert (not b!5477790))

(assert (not bm!404141))

(assert (not b!5478136))

(assert (not b_lambda!208133))

(assert (not b!5477799))

(assert (not b!5477653))

(assert (not setNonEmpty!36004))

(assert (not b!5478137))

(assert (not d!1740233))

(assert (not d!1740181))

(assert (not b!5477671))

(assert (not bm!404128))

(assert (not b!5478163))

(assert (not b!5478162))

(assert (not bs!1265767))

(assert (not d!1740175))

(assert (not b!5477727))

(assert tp_is_empty!39969)

(assert (not d!1740235))

(assert (not d!1740189))

(assert (not d!1740225))

(assert (not d!1740165))

(assert (not d!1740151))

(assert (not b!5478134))

(assert (not b!5477960))

(assert (not b!5477672))

(assert (not bs!1265766))

(assert (not d!1740251))

(assert (not b!5477869))

(assert (not bm!404121))

(assert (not b!5478145))

(assert (not b!5477854))

(assert (not b!5477791))

(assert (not b!5478151))

(assert (not b!5477798))

(assert (not b!5478057))

(assert (not b!5478109))

(assert (not b!5477796))

(assert (not b!5478132))

(assert (not b!5478143))

(assert (not bm!404138))

(assert (not b!5477872))

(assert (not d!1740219))

(assert (not bm!404166))

(assert (not d!1740253))

(assert (not d!1740207))

(assert (not bm!404131))

(assert (not b!5478101))

(assert (not b!5477793))

(assert (not b!5477961))

(assert (not b!5477874))

(assert (not b!5477875))

(assert (not b!5478053))

(assert (not b!5477762))

(assert (not d!1740231))

(assert (not d!1740211))

(assert (not d!1740199))

(assert (not bm!404142))

(assert (not bm!404127))

(assert (not b!5478133))

(assert (not bm!404139))

(assert (not b!5477719))

(assert (not d!1740185))

(assert (not b!5477759))

(assert (not b!5477862))

(assert (not d!1740223))

(assert (not bm!404165))

(assert (not b!5477959))

(assert (not b!5478108))

(assert (not b!5478175))

(assert (not d!1740179))

(assert (not b!5478149))

(assert (not d!1740241))

(assert (not b!5477684))

(assert (not b!5478159))

(assert (not b!5477923))

(assert (not b!5477827))

(assert (not d!1740157))

(assert (not b!5477922))

(assert (not b!5478051))

(assert (not b!5478138))

(assert (not b!5477656))

(assert (not b_lambda!208129))

(assert (not b_lambda!208131))

(assert (not d!1740167))

(assert (not b!5477761))

(assert (not b!5478106))

(assert (not bm!404189))

(assert (not b_lambda!208137))

(assert (not bs!1265764))

(assert (not b!5478050))

(assert (not b!5477963))

(assert (not bs!1265768))

(assert (not d!1740169))

(assert (not bm!404185))

(assert (not b!5477957))

(assert (not bs!1265769))

(assert (not b!5478169))

(assert (not b_lambda!208127))

(assert (not b!5478146))

(assert (not d!1740259))

(assert (not bm!404163))

(assert (not d!1740155))

(assert (not b!5477956))

(assert (not d!1740201))

(assert (not b!5477882))

(assert (not d!1740153))

(assert (not b!5478054))

(assert (not b!5478147))

(assert (not b!5477962))

(assert (not bm!404161))

(assert (not b!5478088))

(assert (not b!5477677))

(assert (not b!5478056))

(assert (not d!1740191))

(assert (not b!5478160))

(assert (not d!1740215))

(assert (not b!5477655))

(assert (not b!5477797))

(assert (not b!5477764))

(assert (not bs!1265765))

(assert (not d!1740247))

(assert (not d!1740159))

(assert (not d!1740257))

(assert (not b!5478086))

(assert (not b!5478105))

(assert (not b!5477769))

(assert (not d!1740209))

(assert (not bm!404143))

(assert (not d!1740177))

(assert (not b!5478100))

(assert (not b!5478150))

(assert (not b!5477970))

(assert (not d!1740221))

(assert (not b_lambda!208135))

(assert (not bm!404187))

(assert (not d!1740193))

(assert (not b!5478174))

(assert (not d!1740261))

(assert (not b!5477654))

(assert (not b!5477910))

(assert (not bm!404190))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1740379 () Bool)

(declare-fun res!2335407 () Bool)

(declare-fun e!3390803 () Bool)

(assert (=> d!1740379 (=> res!2335407 e!3390803)))

(assert (=> d!1740379 (= res!2335407 (is-Nil!62250 lt!2237590))))

(assert (=> d!1740379 (= (forall!14615 lt!2237590 lambda!292145) e!3390803)))

(declare-fun b!5478467 () Bool)

(declare-fun e!3390804 () Bool)

(assert (=> b!5478467 (= e!3390803 e!3390804)))

(declare-fun res!2335408 () Bool)

(assert (=> b!5478467 (=> (not res!2335408) (not e!3390804))))

(assert (=> b!5478467 (= res!2335408 (dynLambda!24435 lambda!292145 (h!68698 lt!2237590)))))

(declare-fun b!5478468 () Bool)

(assert (=> b!5478468 (= e!3390804 (forall!14615 (t!375603 lt!2237590) lambda!292145))))

(assert (= (and d!1740379 (not res!2335407)) b!5478467))

(assert (= (and b!5478467 res!2335408) b!5478468))

(declare-fun b_lambda!208163 () Bool)

(assert (=> (not b_lambda!208163) (not b!5478467)))

(declare-fun m!6494508 () Bool)

(assert (=> b!5478467 m!6494508))

(declare-fun m!6494510 () Bool)

(assert (=> b!5478468 m!6494510))

(assert (=> d!1740211 d!1740379))

(declare-fun d!1740381 () Bool)

(assert (=> d!1740381 (= (isEmpty!34205 (tail!10832 s!2326)) (is-Nil!62249 (tail!10832 s!2326)))))

(assert (=> b!5477761 d!1740381))

(declare-fun d!1740383 () Bool)

(assert (=> d!1740383 (= (tail!10832 s!2326) (t!375602 s!2326))))

(assert (=> b!5477761 d!1740383))

(declare-fun d!1740385 () Bool)

(declare-fun res!2335410 () Bool)

(declare-fun e!3390811 () Bool)

(assert (=> d!1740385 (=> res!2335410 e!3390811)))

(assert (=> d!1740385 (= res!2335410 (is-ElementMatch!15358 lt!2237581))))

(assert (=> d!1740385 (= (validRegex!7094 lt!2237581) e!3390811)))

(declare-fun bm!404223 () Bool)

(declare-fun call!404229 () Bool)

(declare-fun c!957191 () Bool)

(assert (=> bm!404223 (= call!404229 (validRegex!7094 (ite c!957191 (regTwo!31229 lt!2237581) (regTwo!31228 lt!2237581))))))

(declare-fun b!5478469 () Bool)

(declare-fun e!3390808 () Bool)

(assert (=> b!5478469 (= e!3390808 call!404229)))

(declare-fun b!5478470 () Bool)

(declare-fun e!3390809 () Bool)

(declare-fun e!3390805 () Bool)

(assert (=> b!5478470 (= e!3390809 e!3390805)))

(assert (=> b!5478470 (= c!957191 (is-Union!15358 lt!2237581))))

(declare-fun call!404228 () Bool)

(declare-fun c!957190 () Bool)

(declare-fun bm!404224 () Bool)

(assert (=> bm!404224 (= call!404228 (validRegex!7094 (ite c!957190 (reg!15687 lt!2237581) (ite c!957191 (regOne!31229 lt!2237581) (regOne!31228 lt!2237581)))))))

(declare-fun b!5478471 () Bool)

(declare-fun e!3390807 () Bool)

(assert (=> b!5478471 (= e!3390807 e!3390808)))

(declare-fun res!2335412 () Bool)

(assert (=> b!5478471 (=> (not res!2335412) (not e!3390808))))

(declare-fun call!404230 () Bool)

(assert (=> b!5478471 (= res!2335412 call!404230)))

(declare-fun b!5478472 () Bool)

(declare-fun e!3390810 () Bool)

(assert (=> b!5478472 (= e!3390810 call!404229)))

(declare-fun b!5478473 () Bool)

(declare-fun e!3390806 () Bool)

(assert (=> b!5478473 (= e!3390809 e!3390806)))

(declare-fun res!2335409 () Bool)

(assert (=> b!5478473 (= res!2335409 (not (nullable!5485 (reg!15687 lt!2237581))))))

(assert (=> b!5478473 (=> (not res!2335409) (not e!3390806))))

(declare-fun b!5478474 () Bool)

(declare-fun res!2335413 () Bool)

(assert (=> b!5478474 (=> res!2335413 e!3390807)))

(assert (=> b!5478474 (= res!2335413 (not (is-Concat!24203 lt!2237581)))))

(assert (=> b!5478474 (= e!3390805 e!3390807)))

(declare-fun bm!404225 () Bool)

(assert (=> bm!404225 (= call!404230 call!404228)))

(declare-fun b!5478475 () Bool)

(assert (=> b!5478475 (= e!3390806 call!404228)))

(declare-fun b!5478476 () Bool)

(assert (=> b!5478476 (= e!3390811 e!3390809)))

(assert (=> b!5478476 (= c!957190 (is-Star!15358 lt!2237581))))

(declare-fun b!5478477 () Bool)

(declare-fun res!2335411 () Bool)

(assert (=> b!5478477 (=> (not res!2335411) (not e!3390810))))

(assert (=> b!5478477 (= res!2335411 call!404230)))

(assert (=> b!5478477 (= e!3390805 e!3390810)))

(assert (= (and d!1740385 (not res!2335410)) b!5478476))

(assert (= (and b!5478476 c!957190) b!5478473))

(assert (= (and b!5478476 (not c!957190)) b!5478470))

(assert (= (and b!5478473 res!2335409) b!5478475))

(assert (= (and b!5478470 c!957191) b!5478477))

(assert (= (and b!5478470 (not c!957191)) b!5478474))

(assert (= (and b!5478477 res!2335411) b!5478472))

(assert (= (and b!5478474 (not res!2335413)) b!5478471))

(assert (= (and b!5478471 res!2335412) b!5478469))

(assert (= (or b!5478472 b!5478469) bm!404223))

(assert (= (or b!5478477 b!5478471) bm!404225))

(assert (= (or b!5478475 bm!404225) bm!404224))

(declare-fun m!6494512 () Bool)

(assert (=> bm!404223 m!6494512))

(declare-fun m!6494514 () Bool)

(assert (=> bm!404224 m!6494514))

(declare-fun m!6494516 () Bool)

(assert (=> b!5478473 m!6494516))

(assert (=> d!1740193 d!1740385))

(assert (=> d!1740193 d!1740209))

(assert (=> d!1740193 d!1740211))

(declare-fun d!1740387 () Bool)

(declare-fun res!2335415 () Bool)

(declare-fun e!3390818 () Bool)

(assert (=> d!1740387 (=> res!2335415 e!3390818)))

(assert (=> d!1740387 (= res!2335415 (is-ElementMatch!15358 lt!2237591))))

(assert (=> d!1740387 (= (validRegex!7094 lt!2237591) e!3390818)))

(declare-fun bm!404226 () Bool)

(declare-fun call!404232 () Bool)

(declare-fun c!957193 () Bool)

(assert (=> bm!404226 (= call!404232 (validRegex!7094 (ite c!957193 (regTwo!31229 lt!2237591) (regTwo!31228 lt!2237591))))))

(declare-fun b!5478478 () Bool)

(declare-fun e!3390815 () Bool)

(assert (=> b!5478478 (= e!3390815 call!404232)))

(declare-fun b!5478479 () Bool)

(declare-fun e!3390816 () Bool)

(declare-fun e!3390812 () Bool)

(assert (=> b!5478479 (= e!3390816 e!3390812)))

(assert (=> b!5478479 (= c!957193 (is-Union!15358 lt!2237591))))

(declare-fun c!957192 () Bool)

(declare-fun call!404231 () Bool)

(declare-fun bm!404227 () Bool)

(assert (=> bm!404227 (= call!404231 (validRegex!7094 (ite c!957192 (reg!15687 lt!2237591) (ite c!957193 (regOne!31229 lt!2237591) (regOne!31228 lt!2237591)))))))

(declare-fun b!5478480 () Bool)

(declare-fun e!3390814 () Bool)

(assert (=> b!5478480 (= e!3390814 e!3390815)))

(declare-fun res!2335417 () Bool)

(assert (=> b!5478480 (=> (not res!2335417) (not e!3390815))))

(declare-fun call!404233 () Bool)

(assert (=> b!5478480 (= res!2335417 call!404233)))

(declare-fun b!5478481 () Bool)

(declare-fun e!3390817 () Bool)

(assert (=> b!5478481 (= e!3390817 call!404232)))

(declare-fun b!5478482 () Bool)

(declare-fun e!3390813 () Bool)

(assert (=> b!5478482 (= e!3390816 e!3390813)))

(declare-fun res!2335414 () Bool)

(assert (=> b!5478482 (= res!2335414 (not (nullable!5485 (reg!15687 lt!2237591))))))

(assert (=> b!5478482 (=> (not res!2335414) (not e!3390813))))

(declare-fun b!5478483 () Bool)

(declare-fun res!2335418 () Bool)

(assert (=> b!5478483 (=> res!2335418 e!3390814)))

(assert (=> b!5478483 (= res!2335418 (not (is-Concat!24203 lt!2237591)))))

(assert (=> b!5478483 (= e!3390812 e!3390814)))

(declare-fun bm!404228 () Bool)

(assert (=> bm!404228 (= call!404233 call!404231)))

(declare-fun b!5478484 () Bool)

(assert (=> b!5478484 (= e!3390813 call!404231)))

(declare-fun b!5478485 () Bool)

(assert (=> b!5478485 (= e!3390818 e!3390816)))

(assert (=> b!5478485 (= c!957192 (is-Star!15358 lt!2237591))))

(declare-fun b!5478486 () Bool)

(declare-fun res!2335416 () Bool)

(assert (=> b!5478486 (=> (not res!2335416) (not e!3390817))))

(assert (=> b!5478486 (= res!2335416 call!404233)))

(assert (=> b!5478486 (= e!3390812 e!3390817)))

(assert (= (and d!1740387 (not res!2335415)) b!5478485))

(assert (= (and b!5478485 c!957192) b!5478482))

(assert (= (and b!5478485 (not c!957192)) b!5478479))

(assert (= (and b!5478482 res!2335414) b!5478484))

(assert (= (and b!5478479 c!957193) b!5478486))

(assert (= (and b!5478479 (not c!957193)) b!5478483))

(assert (= (and b!5478486 res!2335416) b!5478481))

(assert (= (and b!5478483 (not res!2335418)) b!5478480))

(assert (= (and b!5478480 res!2335417) b!5478478))

(assert (= (or b!5478481 b!5478478) bm!404226))

(assert (= (or b!5478486 b!5478480) bm!404228))

(assert (= (or b!5478484 bm!404228) bm!404227))

(declare-fun m!6494518 () Bool)

(assert (=> bm!404226 m!6494518))

(declare-fun m!6494520 () Bool)

(assert (=> bm!404227 m!6494520))

(declare-fun m!6494522 () Bool)

(assert (=> b!5478482 m!6494522))

(assert (=> d!1740215 d!1740387))

(declare-fun bs!1265851 () Bool)

(declare-fun d!1740389 () Bool)

(assert (= bs!1265851 (and d!1740389 d!1740211)))

(declare-fun lambda!292198 () Int)

(assert (=> bs!1265851 (= lambda!292198 lambda!292145)))

(declare-fun bs!1265852 () Bool)

(assert (= bs!1265852 (and d!1740389 b!5477487)))

(assert (=> bs!1265852 (= lambda!292198 lambda!292088)))

(declare-fun bs!1265853 () Bool)

(assert (= bs!1265853 (and d!1740389 d!1740181)))

(assert (=> bs!1265853 (= lambda!292198 lambda!292126)))

(declare-fun bs!1265854 () Bool)

(assert (= bs!1265854 (and d!1740389 d!1740189)))

(assert (=> bs!1265854 (= lambda!292198 lambda!292129)))

(declare-fun bs!1265855 () Bool)

(assert (= bs!1265855 (and d!1740389 d!1740191)))

(assert (=> bs!1265855 (= lambda!292198 lambda!292130)))

(declare-fun bs!1265856 () Bool)

(assert (= bs!1265856 (and d!1740389 d!1740209)))

(assert (=> bs!1265856 (= lambda!292198 lambda!292142)))

(declare-fun bs!1265857 () Bool)

(assert (= bs!1265857 (and d!1740389 d!1740261)))

(assert (=> bs!1265857 (= lambda!292198 lambda!292164)))

(declare-fun b!5478487 () Bool)

(declare-fun e!3390821 () Regex!15358)

(assert (=> b!5478487 (= e!3390821 (Union!15358 (h!68698 (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251))) (generalisedUnion!1287 (t!375603 (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251))))))))

(declare-fun b!5478488 () Bool)

(declare-fun e!3390823 () Bool)

(declare-fun lt!2237662 () Regex!15358)

(assert (=> b!5478488 (= e!3390823 (= lt!2237662 (head!11736 (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251)))))))

(declare-fun b!5478489 () Bool)

(declare-fun e!3390820 () Regex!15358)

(assert (=> b!5478489 (= e!3390820 e!3390821)))

(declare-fun c!957197 () Bool)

(assert (=> b!5478489 (= c!957197 (is-Cons!62250 (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251))))))

(declare-fun b!5478490 () Bool)

(declare-fun e!3390819 () Bool)

(assert (=> b!5478490 (= e!3390819 (isEmptyLang!1050 lt!2237662))))

(declare-fun b!5478491 () Bool)

(assert (=> b!5478491 (= e!3390819 e!3390823)))

(declare-fun c!957195 () Bool)

(assert (=> b!5478491 (= c!957195 (isEmpty!34208 (tail!10833 (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251)))))))

(declare-fun b!5478492 () Bool)

(assert (=> b!5478492 (= e!3390823 (isUnion!482 lt!2237662))))

(declare-fun e!3390822 () Bool)

(assert (=> d!1740389 e!3390822))

(declare-fun res!2335419 () Bool)

(assert (=> d!1740389 (=> (not res!2335419) (not e!3390822))))

(assert (=> d!1740389 (= res!2335419 (validRegex!7094 lt!2237662))))

(assert (=> d!1740389 (= lt!2237662 e!3390820)))

(declare-fun c!957196 () Bool)

(declare-fun e!3390824 () Bool)

(assert (=> d!1740389 (= c!957196 e!3390824)))

(declare-fun res!2335420 () Bool)

(assert (=> d!1740389 (=> (not res!2335420) (not e!3390824))))

(assert (=> d!1740389 (= res!2335420 (is-Cons!62250 (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251))))))

(assert (=> d!1740389 (forall!14615 (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251)) lambda!292198)))

(assert (=> d!1740389 (= (generalisedUnion!1287 (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251))) lt!2237662)))

(declare-fun b!5478493 () Bool)

(assert (=> b!5478493 (= e!3390822 e!3390819)))

(declare-fun c!957194 () Bool)

(assert (=> b!5478493 (= c!957194 (isEmpty!34208 (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251))))))

(declare-fun b!5478494 () Bool)

(assert (=> b!5478494 (= e!3390824 (isEmpty!34208 (t!375603 (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251)))))))

(declare-fun b!5478495 () Bool)

(assert (=> b!5478495 (= e!3390821 EmptyLang!15358)))

(declare-fun b!5478496 () Bool)

(assert (=> b!5478496 (= e!3390820 (h!68698 (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251))))))

(assert (= (and d!1740389 res!2335420) b!5478494))

(assert (= (and d!1740389 c!957196) b!5478496))

(assert (= (and d!1740389 (not c!957196)) b!5478489))

(assert (= (and b!5478489 c!957197) b!5478487))

(assert (= (and b!5478489 (not c!957197)) b!5478495))

(assert (= (and d!1740389 res!2335419) b!5478493))

(assert (= (and b!5478493 c!957194) b!5478490))

(assert (= (and b!5478493 (not c!957194)) b!5478491))

(assert (= (and b!5478491 c!957195) b!5478488))

(assert (= (and b!5478491 (not c!957195)) b!5478492))

(declare-fun m!6494524 () Bool)

(assert (=> b!5478487 m!6494524))

(declare-fun m!6494526 () Bool)

(assert (=> b!5478494 m!6494526))

(assert (=> b!5478488 m!6494126))

(declare-fun m!6494528 () Bool)

(assert (=> b!5478488 m!6494528))

(declare-fun m!6494530 () Bool)

(assert (=> b!5478490 m!6494530))

(assert (=> b!5478491 m!6494126))

(declare-fun m!6494532 () Bool)

(assert (=> b!5478491 m!6494532))

(assert (=> b!5478491 m!6494532))

(declare-fun m!6494534 () Bool)

(assert (=> b!5478491 m!6494534))

(assert (=> b!5478493 m!6494126))

(declare-fun m!6494536 () Bool)

(assert (=> b!5478493 m!6494536))

(declare-fun m!6494538 () Bool)

(assert (=> d!1740389 m!6494538))

(assert (=> d!1740389 m!6494126))

(declare-fun m!6494540 () Bool)

(assert (=> d!1740389 m!6494540))

(declare-fun m!6494542 () Bool)

(assert (=> b!5478492 m!6494542))

(assert (=> d!1740215 d!1740389))

(declare-fun bs!1265858 () Bool)

(declare-fun d!1740391 () Bool)

(assert (= bs!1265858 (and d!1740391 d!1740211)))

(declare-fun lambda!292199 () Int)

(assert (=> bs!1265858 (= lambda!292199 lambda!292145)))

(declare-fun bs!1265859 () Bool)

(assert (= bs!1265859 (and d!1740391 b!5477487)))

(assert (=> bs!1265859 (= lambda!292199 lambda!292088)))

(declare-fun bs!1265860 () Bool)

(assert (= bs!1265860 (and d!1740391 d!1740181)))

(assert (=> bs!1265860 (= lambda!292199 lambda!292126)))

(declare-fun bs!1265861 () Bool)

(assert (= bs!1265861 (and d!1740391 d!1740189)))

(assert (=> bs!1265861 (= lambda!292199 lambda!292129)))

(declare-fun bs!1265862 () Bool)

(assert (= bs!1265862 (and d!1740391 d!1740209)))

(assert (=> bs!1265862 (= lambda!292199 lambda!292142)))

(declare-fun bs!1265863 () Bool)

(assert (= bs!1265863 (and d!1740391 d!1740261)))

(assert (=> bs!1265863 (= lambda!292199 lambda!292164)))

(declare-fun bs!1265864 () Bool)

(assert (= bs!1265864 (and d!1740391 d!1740191)))

(assert (=> bs!1265864 (= lambda!292199 lambda!292130)))

(declare-fun bs!1265865 () Bool)

(assert (= bs!1265865 (and d!1740391 d!1740389)))

(assert (=> bs!1265865 (= lambda!292199 lambda!292198)))

(declare-fun lt!2237663 () List!62374)

(assert (=> d!1740391 (forall!14615 lt!2237663 lambda!292199)))

(declare-fun e!3390825 () List!62374)

(assert (=> d!1740391 (= lt!2237663 e!3390825)))

(declare-fun c!957198 () Bool)

(assert (=> d!1740391 (= c!957198 (is-Cons!62251 (Cons!62251 lt!2237455 Nil!62251)))))

(assert (=> d!1740391 (= (unfocusZipperList!800 (Cons!62251 lt!2237455 Nil!62251)) lt!2237663)))

(declare-fun b!5478497 () Bool)

(assert (=> b!5478497 (= e!3390825 (Cons!62250 (generalisedConcat!1027 (exprs!5242 (h!68699 (Cons!62251 lt!2237455 Nil!62251)))) (unfocusZipperList!800 (t!375604 (Cons!62251 lt!2237455 Nil!62251)))))))

(declare-fun b!5478498 () Bool)

(assert (=> b!5478498 (= e!3390825 Nil!62250)))

(assert (= (and d!1740391 c!957198) b!5478497))

(assert (= (and d!1740391 (not c!957198)) b!5478498))

(declare-fun m!6494544 () Bool)

(assert (=> d!1740391 m!6494544))

(declare-fun m!6494546 () Bool)

(assert (=> b!5478497 m!6494546))

(declare-fun m!6494548 () Bool)

(assert (=> b!5478497 m!6494548))

(assert (=> d!1740215 d!1740391))

(declare-fun d!1740393 () Bool)

(declare-fun lambda!292202 () Int)

(declare-fun exists!2028 ((Set Context!9484) Int) Bool)

(assert (=> d!1740393 (= (nullableZipper!1506 lt!2237468) (exists!2028 lt!2237468 lambda!292202))))

(declare-fun bs!1265866 () Bool)

(assert (= bs!1265866 d!1740393))

(declare-fun m!6494550 () Bool)

(assert (=> bs!1265866 m!6494550))

(assert (=> b!5477653 d!1740393))

(declare-fun bs!1265867 () Bool)

(declare-fun d!1740395 () Bool)

(assert (= bs!1265867 (and d!1740395 d!1740391)))

(declare-fun lambda!292203 () Int)

(assert (=> bs!1265867 (= lambda!292203 lambda!292199)))

(declare-fun bs!1265868 () Bool)

(assert (= bs!1265868 (and d!1740395 d!1740211)))

(assert (=> bs!1265868 (= lambda!292203 lambda!292145)))

(declare-fun bs!1265869 () Bool)

(assert (= bs!1265869 (and d!1740395 b!5477487)))

(assert (=> bs!1265869 (= lambda!292203 lambda!292088)))

(declare-fun bs!1265870 () Bool)

(assert (= bs!1265870 (and d!1740395 d!1740181)))

(assert (=> bs!1265870 (= lambda!292203 lambda!292126)))

(declare-fun bs!1265871 () Bool)

(assert (= bs!1265871 (and d!1740395 d!1740189)))

(assert (=> bs!1265871 (= lambda!292203 lambda!292129)))

(declare-fun bs!1265872 () Bool)

(assert (= bs!1265872 (and d!1740395 d!1740209)))

(assert (=> bs!1265872 (= lambda!292203 lambda!292142)))

(declare-fun bs!1265873 () Bool)

(assert (= bs!1265873 (and d!1740395 d!1740261)))

(assert (=> bs!1265873 (= lambda!292203 lambda!292164)))

(declare-fun bs!1265874 () Bool)

(assert (= bs!1265874 (and d!1740395 d!1740191)))

(assert (=> bs!1265874 (= lambda!292203 lambda!292130)))

(declare-fun bs!1265875 () Bool)

(assert (= bs!1265875 (and d!1740395 d!1740389)))

(assert (=> bs!1265875 (= lambda!292203 lambda!292198)))

(assert (=> d!1740395 (= (inv!81643 (h!68699 (t!375604 zl!343))) (forall!14615 (exprs!5242 (h!68699 (t!375604 zl!343))) lambda!292203))))

(declare-fun bs!1265876 () Bool)

(assert (= bs!1265876 d!1740395))

(declare-fun m!6494552 () Bool)

(assert (=> bs!1265876 m!6494552))

(assert (=> b!5478159 d!1740395))

(declare-fun d!1740397 () Bool)

(assert (=> d!1740397 (= (head!11735 s!2326) (h!68697 s!2326))))

(assert (=> b!5477877 d!1740397))

(declare-fun d!1740399 () Bool)

(declare-fun res!2335422 () Bool)

(declare-fun e!3390832 () Bool)

(assert (=> d!1740399 (=> res!2335422 e!3390832)))

(assert (=> d!1740399 (= res!2335422 (is-ElementMatch!15358 lt!2237584))))

(assert (=> d!1740399 (= (validRegex!7094 lt!2237584) e!3390832)))

(declare-fun bm!404229 () Bool)

(declare-fun call!404235 () Bool)

(declare-fun c!957202 () Bool)

(assert (=> bm!404229 (= call!404235 (validRegex!7094 (ite c!957202 (regTwo!31229 lt!2237584) (regTwo!31228 lt!2237584))))))

(declare-fun b!5478499 () Bool)

(declare-fun e!3390829 () Bool)

(assert (=> b!5478499 (= e!3390829 call!404235)))

(declare-fun b!5478500 () Bool)

(declare-fun e!3390830 () Bool)

(declare-fun e!3390826 () Bool)

(assert (=> b!5478500 (= e!3390830 e!3390826)))

(assert (=> b!5478500 (= c!957202 (is-Union!15358 lt!2237584))))

(declare-fun call!404234 () Bool)

(declare-fun c!957201 () Bool)

(declare-fun bm!404230 () Bool)

(assert (=> bm!404230 (= call!404234 (validRegex!7094 (ite c!957201 (reg!15687 lt!2237584) (ite c!957202 (regOne!31229 lt!2237584) (regOne!31228 lt!2237584)))))))

(declare-fun b!5478501 () Bool)

(declare-fun e!3390828 () Bool)

(assert (=> b!5478501 (= e!3390828 e!3390829)))

(declare-fun res!2335424 () Bool)

(assert (=> b!5478501 (=> (not res!2335424) (not e!3390829))))

(declare-fun call!404236 () Bool)

(assert (=> b!5478501 (= res!2335424 call!404236)))

(declare-fun b!5478502 () Bool)

(declare-fun e!3390831 () Bool)

(assert (=> b!5478502 (= e!3390831 call!404235)))

(declare-fun b!5478503 () Bool)

(declare-fun e!3390827 () Bool)

(assert (=> b!5478503 (= e!3390830 e!3390827)))

(declare-fun res!2335421 () Bool)

(assert (=> b!5478503 (= res!2335421 (not (nullable!5485 (reg!15687 lt!2237584))))))

(assert (=> b!5478503 (=> (not res!2335421) (not e!3390827))))

(declare-fun b!5478504 () Bool)

(declare-fun res!2335425 () Bool)

(assert (=> b!5478504 (=> res!2335425 e!3390828)))

(assert (=> b!5478504 (= res!2335425 (not (is-Concat!24203 lt!2237584)))))

(assert (=> b!5478504 (= e!3390826 e!3390828)))

(declare-fun bm!404231 () Bool)

(assert (=> bm!404231 (= call!404236 call!404234)))

(declare-fun b!5478505 () Bool)

(assert (=> b!5478505 (= e!3390827 call!404234)))

(declare-fun b!5478506 () Bool)

(assert (=> b!5478506 (= e!3390832 e!3390830)))

(assert (=> b!5478506 (= c!957201 (is-Star!15358 lt!2237584))))

(declare-fun b!5478507 () Bool)

(declare-fun res!2335423 () Bool)

(assert (=> b!5478507 (=> (not res!2335423) (not e!3390831))))

(assert (=> b!5478507 (= res!2335423 call!404236)))

(assert (=> b!5478507 (= e!3390826 e!3390831)))

(assert (= (and d!1740399 (not res!2335422)) b!5478506))

(assert (= (and b!5478506 c!957201) b!5478503))

(assert (= (and b!5478506 (not c!957201)) b!5478500))

(assert (= (and b!5478503 res!2335421) b!5478505))

(assert (= (and b!5478500 c!957202) b!5478507))

(assert (= (and b!5478500 (not c!957202)) b!5478504))

(assert (= (and b!5478507 res!2335423) b!5478502))

(assert (= (and b!5478504 (not res!2335425)) b!5478501))

(assert (= (and b!5478501 res!2335424) b!5478499))

(assert (= (or b!5478502 b!5478499) bm!404229))

(assert (= (or b!5478507 b!5478501) bm!404231))

(assert (= (or b!5478505 bm!404231) bm!404230))

(declare-fun m!6494554 () Bool)

(assert (=> bm!404229 m!6494554))

(declare-fun m!6494556 () Bool)

(assert (=> bm!404230 m!6494556))

(declare-fun m!6494558 () Bool)

(assert (=> b!5478503 m!6494558))

(assert (=> d!1740201 d!1740399))

(declare-fun bs!1265877 () Bool)

(declare-fun d!1740401 () Bool)

(assert (= bs!1265877 (and d!1740401 d!1740391)))

(declare-fun lambda!292204 () Int)

(assert (=> bs!1265877 (= lambda!292204 lambda!292199)))

(declare-fun bs!1265878 () Bool)

(assert (= bs!1265878 (and d!1740401 d!1740211)))

(assert (=> bs!1265878 (= lambda!292204 lambda!292145)))

(declare-fun bs!1265879 () Bool)

(assert (= bs!1265879 (and d!1740401 b!5477487)))

(assert (=> bs!1265879 (= lambda!292204 lambda!292088)))

(declare-fun bs!1265880 () Bool)

(assert (= bs!1265880 (and d!1740401 d!1740181)))

(assert (=> bs!1265880 (= lambda!292204 lambda!292126)))

(declare-fun bs!1265881 () Bool)

(assert (= bs!1265881 (and d!1740401 d!1740395)))

(assert (=> bs!1265881 (= lambda!292204 lambda!292203)))

(declare-fun bs!1265882 () Bool)

(assert (= bs!1265882 (and d!1740401 d!1740189)))

(assert (=> bs!1265882 (= lambda!292204 lambda!292129)))

(declare-fun bs!1265883 () Bool)

(assert (= bs!1265883 (and d!1740401 d!1740209)))

(assert (=> bs!1265883 (= lambda!292204 lambda!292142)))

(declare-fun bs!1265884 () Bool)

(assert (= bs!1265884 (and d!1740401 d!1740261)))

(assert (=> bs!1265884 (= lambda!292204 lambda!292164)))

(declare-fun bs!1265885 () Bool)

(assert (= bs!1265885 (and d!1740401 d!1740191)))

(assert (=> bs!1265885 (= lambda!292204 lambda!292130)))

(declare-fun bs!1265886 () Bool)

(assert (= bs!1265886 (and d!1740401 d!1740389)))

(assert (=> bs!1265886 (= lambda!292204 lambda!292198)))

(declare-fun b!5478508 () Bool)

(declare-fun e!3390835 () Regex!15358)

(assert (=> b!5478508 (= e!3390835 (Union!15358 (h!68698 (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251))) (generalisedUnion!1287 (t!375603 (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251))))))))

(declare-fun b!5478509 () Bool)

(declare-fun e!3390837 () Bool)

(declare-fun lt!2237664 () Regex!15358)

(assert (=> b!5478509 (= e!3390837 (= lt!2237664 (head!11736 (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251)))))))

(declare-fun b!5478510 () Bool)

(declare-fun e!3390834 () Regex!15358)

(assert (=> b!5478510 (= e!3390834 e!3390835)))

(declare-fun c!957206 () Bool)

(assert (=> b!5478510 (= c!957206 (is-Cons!62250 (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251))))))

(declare-fun b!5478511 () Bool)

(declare-fun e!3390833 () Bool)

(assert (=> b!5478511 (= e!3390833 (isEmptyLang!1050 lt!2237664))))

(declare-fun b!5478512 () Bool)

(assert (=> b!5478512 (= e!3390833 e!3390837)))

(declare-fun c!957204 () Bool)

(assert (=> b!5478512 (= c!957204 (isEmpty!34208 (tail!10833 (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251)))))))

(declare-fun b!5478513 () Bool)

(assert (=> b!5478513 (= e!3390837 (isUnion!482 lt!2237664))))

(declare-fun e!3390836 () Bool)

(assert (=> d!1740401 e!3390836))

(declare-fun res!2335426 () Bool)

(assert (=> d!1740401 (=> (not res!2335426) (not e!3390836))))

(assert (=> d!1740401 (= res!2335426 (validRegex!7094 lt!2237664))))

(assert (=> d!1740401 (= lt!2237664 e!3390834)))

(declare-fun c!957205 () Bool)

(declare-fun e!3390838 () Bool)

(assert (=> d!1740401 (= c!957205 e!3390838)))

(declare-fun res!2335427 () Bool)

(assert (=> d!1740401 (=> (not res!2335427) (not e!3390838))))

(assert (=> d!1740401 (= res!2335427 (is-Cons!62250 (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251))))))

(assert (=> d!1740401 (forall!14615 (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251)) lambda!292204)))

(assert (=> d!1740401 (= (generalisedUnion!1287 (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251))) lt!2237664)))

(declare-fun b!5478514 () Bool)

(assert (=> b!5478514 (= e!3390836 e!3390833)))

(declare-fun c!957203 () Bool)

(assert (=> b!5478514 (= c!957203 (isEmpty!34208 (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251))))))

(declare-fun b!5478515 () Bool)

(assert (=> b!5478515 (= e!3390838 (isEmpty!34208 (t!375603 (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251)))))))

(declare-fun b!5478516 () Bool)

(assert (=> b!5478516 (= e!3390835 EmptyLang!15358)))

(declare-fun b!5478517 () Bool)

(assert (=> b!5478517 (= e!3390834 (h!68698 (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251))))))

(assert (= (and d!1740401 res!2335427) b!5478515))

(assert (= (and d!1740401 c!957205) b!5478517))

(assert (= (and d!1740401 (not c!957205)) b!5478510))

(assert (= (and b!5478510 c!957206) b!5478508))

(assert (= (and b!5478510 (not c!957206)) b!5478516))

(assert (= (and d!1740401 res!2335426) b!5478514))

(assert (= (and b!5478514 c!957203) b!5478511))

(assert (= (and b!5478514 (not c!957203)) b!5478512))

(assert (= (and b!5478512 c!957204) b!5478509))

(assert (= (and b!5478512 (not c!957204)) b!5478513))

(declare-fun m!6494560 () Bool)

(assert (=> b!5478508 m!6494560))

(declare-fun m!6494562 () Bool)

(assert (=> b!5478515 m!6494562))

(assert (=> b!5478509 m!6494072))

(declare-fun m!6494564 () Bool)

(assert (=> b!5478509 m!6494564))

(declare-fun m!6494566 () Bool)

(assert (=> b!5478511 m!6494566))

(assert (=> b!5478512 m!6494072))

(declare-fun m!6494568 () Bool)

(assert (=> b!5478512 m!6494568))

(assert (=> b!5478512 m!6494568))

(declare-fun m!6494570 () Bool)

(assert (=> b!5478512 m!6494570))

(assert (=> b!5478514 m!6494072))

(declare-fun m!6494572 () Bool)

(assert (=> b!5478514 m!6494572))

(declare-fun m!6494574 () Bool)

(assert (=> d!1740401 m!6494574))

(assert (=> d!1740401 m!6494072))

(declare-fun m!6494576 () Bool)

(assert (=> d!1740401 m!6494576))

(declare-fun m!6494578 () Bool)

(assert (=> b!5478513 m!6494578))

(assert (=> d!1740201 d!1740401))

(declare-fun bs!1265887 () Bool)

(declare-fun d!1740403 () Bool)

(assert (= bs!1265887 (and d!1740403 d!1740391)))

(declare-fun lambda!292205 () Int)

(assert (=> bs!1265887 (= lambda!292205 lambda!292199)))

(declare-fun bs!1265888 () Bool)

(assert (= bs!1265888 (and d!1740403 d!1740211)))

(assert (=> bs!1265888 (= lambda!292205 lambda!292145)))

(declare-fun bs!1265889 () Bool)

(assert (= bs!1265889 (and d!1740403 b!5477487)))

(assert (=> bs!1265889 (= lambda!292205 lambda!292088)))

(declare-fun bs!1265890 () Bool)

(assert (= bs!1265890 (and d!1740403 d!1740181)))

(assert (=> bs!1265890 (= lambda!292205 lambda!292126)))

(declare-fun bs!1265891 () Bool)

(assert (= bs!1265891 (and d!1740403 d!1740401)))

(assert (=> bs!1265891 (= lambda!292205 lambda!292204)))

(declare-fun bs!1265892 () Bool)

(assert (= bs!1265892 (and d!1740403 d!1740395)))

(assert (=> bs!1265892 (= lambda!292205 lambda!292203)))

(declare-fun bs!1265893 () Bool)

(assert (= bs!1265893 (and d!1740403 d!1740189)))

(assert (=> bs!1265893 (= lambda!292205 lambda!292129)))

(declare-fun bs!1265894 () Bool)

(assert (= bs!1265894 (and d!1740403 d!1740209)))

(assert (=> bs!1265894 (= lambda!292205 lambda!292142)))

(declare-fun bs!1265895 () Bool)

(assert (= bs!1265895 (and d!1740403 d!1740261)))

(assert (=> bs!1265895 (= lambda!292205 lambda!292164)))

(declare-fun bs!1265896 () Bool)

(assert (= bs!1265896 (and d!1740403 d!1740191)))

(assert (=> bs!1265896 (= lambda!292205 lambda!292130)))

(declare-fun bs!1265897 () Bool)

(assert (= bs!1265897 (and d!1740403 d!1740389)))

(assert (=> bs!1265897 (= lambda!292205 lambda!292198)))

(declare-fun lt!2237665 () List!62374)

(assert (=> d!1740403 (forall!14615 lt!2237665 lambda!292205)))

(declare-fun e!3390839 () List!62374)

(assert (=> d!1740403 (= lt!2237665 e!3390839)))

(declare-fun c!957207 () Bool)

(assert (=> d!1740403 (= c!957207 (is-Cons!62251 (Cons!62251 lt!2237476 Nil!62251)))))

(assert (=> d!1740403 (= (unfocusZipperList!800 (Cons!62251 lt!2237476 Nil!62251)) lt!2237665)))

(declare-fun b!5478518 () Bool)

(assert (=> b!5478518 (= e!3390839 (Cons!62250 (generalisedConcat!1027 (exprs!5242 (h!68699 (Cons!62251 lt!2237476 Nil!62251)))) (unfocusZipperList!800 (t!375604 (Cons!62251 lt!2237476 Nil!62251)))))))

(declare-fun b!5478519 () Bool)

(assert (=> b!5478519 (= e!3390839 Nil!62250)))

(assert (= (and d!1740403 c!957207) b!5478518))

(assert (= (and d!1740403 (not c!957207)) b!5478519))

(declare-fun m!6494580 () Bool)

(assert (=> d!1740403 m!6494580))

(declare-fun m!6494582 () Bool)

(assert (=> b!5478518 m!6494582))

(declare-fun m!6494584 () Bool)

(assert (=> b!5478518 m!6494584))

(assert (=> d!1740201 d!1740403))

(declare-fun d!1740405 () Bool)

(assert (=> d!1740405 true))

(declare-fun setRes!36010 () Bool)

(assert (=> d!1740405 setRes!36010))

(declare-fun condSetEmpty!36010 () Bool)

(declare-fun res!2335430 () (Set Context!9484))

(assert (=> d!1740405 (= condSetEmpty!36010 (= res!2335430 (as set.empty (Set Context!9484))))))

(assert (=> d!1740405 (= (choose!41676 lt!2237468 lambda!292087) res!2335430)))

(declare-fun setIsEmpty!36010 () Bool)

(assert (=> setIsEmpty!36010 setRes!36010))

(declare-fun setNonEmpty!36010 () Bool)

(declare-fun setElem!36010 () Context!9484)

(declare-fun e!3390842 () Bool)

(declare-fun tp!1505695 () Bool)

(assert (=> setNonEmpty!36010 (= setRes!36010 (and tp!1505695 (inv!81643 setElem!36010) e!3390842))))

(declare-fun setRest!36010 () (Set Context!9484))

(assert (=> setNonEmpty!36010 (= res!2335430 (set.union (set.insert setElem!36010 (as set.empty (Set Context!9484))) setRest!36010))))

(declare-fun b!5478522 () Bool)

(declare-fun tp!1505694 () Bool)

(assert (=> b!5478522 (= e!3390842 tp!1505694)))

(assert (= (and d!1740405 condSetEmpty!36010) setIsEmpty!36010))

(assert (= (and d!1740405 (not condSetEmpty!36010)) setNonEmpty!36010))

(assert (= setNonEmpty!36010 b!5478522))

(declare-fun m!6494586 () Bool)

(assert (=> setNonEmpty!36010 m!6494586))

(assert (=> d!1740247 d!1740405))

(declare-fun d!1740407 () Bool)

(declare-fun c!957208 () Bool)

(assert (=> d!1740407 (= c!957208 (isEmpty!34205 (tail!10832 (t!375602 s!2326))))))

(declare-fun e!3390843 () Bool)

(assert (=> d!1740407 (= (matchZipper!1576 (derivationStepZipper!1553 (derivationStepZipper!1553 lt!2237468 (h!68697 s!2326)) (head!11735 (t!375602 s!2326))) (tail!10832 (t!375602 s!2326))) e!3390843)))

(declare-fun b!5478523 () Bool)

(assert (=> b!5478523 (= e!3390843 (nullableZipper!1506 (derivationStepZipper!1553 (derivationStepZipper!1553 lt!2237468 (h!68697 s!2326)) (head!11735 (t!375602 s!2326)))))))

(declare-fun b!5478524 () Bool)

(assert (=> b!5478524 (= e!3390843 (matchZipper!1576 (derivationStepZipper!1553 (derivationStepZipper!1553 (derivationStepZipper!1553 lt!2237468 (h!68697 s!2326)) (head!11735 (t!375602 s!2326))) (head!11735 (tail!10832 (t!375602 s!2326)))) (tail!10832 (tail!10832 (t!375602 s!2326)))))))

(assert (= (and d!1740407 c!957208) b!5478523))

(assert (= (and d!1740407 (not c!957208)) b!5478524))

(assert (=> d!1740407 m!6493958))

(declare-fun m!6494588 () Bool)

(assert (=> d!1740407 m!6494588))

(assert (=> b!5478523 m!6493956))

(declare-fun m!6494590 () Bool)

(assert (=> b!5478523 m!6494590))

(assert (=> b!5478524 m!6493958))

(declare-fun m!6494592 () Bool)

(assert (=> b!5478524 m!6494592))

(assert (=> b!5478524 m!6493956))

(assert (=> b!5478524 m!6494592))

(declare-fun m!6494594 () Bool)

(assert (=> b!5478524 m!6494594))

(assert (=> b!5478524 m!6493958))

(declare-fun m!6494596 () Bool)

(assert (=> b!5478524 m!6494596))

(assert (=> b!5478524 m!6494594))

(assert (=> b!5478524 m!6494596))

(declare-fun m!6494598 () Bool)

(assert (=> b!5478524 m!6494598))

(assert (=> b!5477656 d!1740407))

(declare-fun bs!1265898 () Bool)

(declare-fun d!1740409 () Bool)

(assert (= bs!1265898 (and d!1740409 b!5477507)))

(declare-fun lambda!292206 () Int)

(assert (=> bs!1265898 (= (= (head!11735 (t!375602 s!2326)) (h!68697 s!2326)) (= lambda!292206 lambda!292087))))

(declare-fun bs!1265899 () Bool)

(assert (= bs!1265899 (and d!1740409 d!1740155)))

(assert (=> bs!1265899 (= (= (head!11735 (t!375602 s!2326)) (h!68697 s!2326)) (= lambda!292206 lambda!292116))))

(declare-fun bs!1265900 () Bool)

(assert (= bs!1265900 (and d!1740409 d!1740159)))

(assert (=> bs!1265900 (= (= (head!11735 (t!375602 s!2326)) (h!68697 s!2326)) (= lambda!292206 lambda!292117))))

(declare-fun bs!1265901 () Bool)

(assert (= bs!1265901 (and d!1740409 d!1740207)))

(assert (=> bs!1265901 (= (= (head!11735 (t!375602 s!2326)) (h!68697 s!2326)) (= lambda!292206 lambda!292137))))

(assert (=> d!1740409 true))

(assert (=> d!1740409 (= (derivationStepZipper!1553 (derivationStepZipper!1553 lt!2237468 (h!68697 s!2326)) (head!11735 (t!375602 s!2326))) (flatMap!1061 (derivationStepZipper!1553 lt!2237468 (h!68697 s!2326)) lambda!292206))))

(declare-fun bs!1265902 () Bool)

(assert (= bs!1265902 d!1740409))

(assert (=> bs!1265902 m!6493788))

(declare-fun m!6494600 () Bool)

(assert (=> bs!1265902 m!6494600))

(assert (=> b!5477656 d!1740409))

(declare-fun d!1740411 () Bool)

(assert (=> d!1740411 (= (head!11735 (t!375602 s!2326)) (h!68697 (t!375602 s!2326)))))

(assert (=> b!5477656 d!1740411))

(declare-fun d!1740413 () Bool)

(assert (=> d!1740413 (= (tail!10832 (t!375602 s!2326)) (t!375602 (t!375602 s!2326)))))

(assert (=> b!5477656 d!1740413))

(declare-fun d!1740415 () Bool)

(assert (=> d!1740415 (= (isEmpty!34208 (t!375603 (unfocusZipperList!800 zl!343))) (is-Nil!62250 (t!375603 (unfocusZipperList!800 zl!343))))))

(assert (=> b!5477963 d!1740415))

(declare-fun bm!404232 () Bool)

(declare-fun call!404238 () (Set Context!9484))

(declare-fun call!404240 () (Set Context!9484))

(assert (=> bm!404232 (= call!404238 call!404240)))

(declare-fun bm!404233 () Bool)

(declare-fun call!404241 () List!62374)

(declare-fun call!404239 () (Set Context!9484))

(declare-fun c!957212 () Bool)

(assert (=> bm!404233 (= call!404239 (derivationStepZipperDown!784 (ite c!957212 (regTwo!31229 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292)))) (regOne!31228 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292))))) (ite c!957212 (ite c!957106 lt!2237455 (Context!9485 call!404193)) (Context!9485 call!404241)) (h!68697 s!2326)))))

(declare-fun d!1740417 () Bool)

(declare-fun c!957210 () Bool)

(assert (=> d!1740417 (= c!957210 (and (is-ElementMatch!15358 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292)))) (= (c!956963 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292)))) (h!68697 s!2326))))))

(declare-fun e!3390844 () (Set Context!9484))

(assert (=> d!1740417 (= (derivationStepZipperDown!784 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292))) (ite c!957106 lt!2237455 (Context!9485 call!404193)) (h!68697 s!2326)) e!3390844)))

(declare-fun b!5478525 () Bool)

(declare-fun c!957209 () Bool)

(declare-fun e!3390848 () Bool)

(assert (=> b!5478525 (= c!957209 e!3390848)))

(declare-fun res!2335431 () Bool)

(assert (=> b!5478525 (=> (not res!2335431) (not e!3390848))))

(assert (=> b!5478525 (= res!2335431 (is-Concat!24203 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292)))))))

(declare-fun e!3390846 () (Set Context!9484))

(declare-fun e!3390847 () (Set Context!9484))

(assert (=> b!5478525 (= e!3390846 e!3390847)))

(declare-fun bm!404234 () Bool)

(declare-fun call!404242 () List!62374)

(assert (=> bm!404234 (= call!404242 call!404241)))

(declare-fun b!5478526 () Bool)

(assert (=> b!5478526 (= e!3390848 (nullable!5485 (regOne!31228 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292))))))))

(declare-fun b!5478527 () Bool)

(declare-fun e!3390845 () (Set Context!9484))

(declare-fun call!404237 () (Set Context!9484))

(assert (=> b!5478527 (= e!3390845 call!404237)))

(declare-fun c!957211 () Bool)

(declare-fun bm!404235 () Bool)

(assert (=> bm!404235 (= call!404240 (derivationStepZipperDown!784 (ite c!957212 (regOne!31229 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292)))) (ite c!957209 (regTwo!31228 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292)))) (ite c!957211 (regOne!31228 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292)))) (reg!15687 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292))))))) (ite (or c!957212 c!957209) (ite c!957106 lt!2237455 (Context!9485 call!404193)) (Context!9485 call!404242)) (h!68697 s!2326)))))

(declare-fun b!5478528 () Bool)

(assert (=> b!5478528 (= e!3390847 (set.union call!404239 call!404238))))

(declare-fun bm!404236 () Bool)

(assert (=> bm!404236 (= call!404237 call!404238)))

(declare-fun b!5478529 () Bool)

(assert (=> b!5478529 (= e!3390846 (set.union call!404240 call!404239))))

(declare-fun b!5478530 () Bool)

(declare-fun e!3390849 () (Set Context!9484))

(assert (=> b!5478530 (= e!3390849 call!404237)))

(declare-fun b!5478531 () Bool)

(assert (=> b!5478531 (= e!3390844 e!3390846)))

(assert (=> b!5478531 (= c!957212 (is-Union!15358 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292)))))))

(declare-fun b!5478532 () Bool)

(assert (=> b!5478532 (= e!3390849 (as set.empty (Set Context!9484)))))

(declare-fun bm!404237 () Bool)

(assert (=> bm!404237 (= call!404241 ($colon$colon!1555 (exprs!5242 (ite c!957106 lt!2237455 (Context!9485 call!404193))) (ite (or c!957209 c!957211) (regTwo!31228 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292)))) (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292))))))))

(declare-fun b!5478533 () Bool)

(declare-fun c!957213 () Bool)

(assert (=> b!5478533 (= c!957213 (is-Star!15358 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292)))))))

(assert (=> b!5478533 (= e!3390845 e!3390849)))

(declare-fun b!5478534 () Bool)

(assert (=> b!5478534 (= e!3390847 e!3390845)))

(assert (=> b!5478534 (= c!957211 (is-Concat!24203 (ite c!957106 (regTwo!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292)))))))

(declare-fun b!5478535 () Bool)

(assert (=> b!5478535 (= e!3390844 (set.insert (ite c!957106 lt!2237455 (Context!9485 call!404193)) (as set.empty (Set Context!9484))))))

(assert (= (and d!1740417 c!957210) b!5478535))

(assert (= (and d!1740417 (not c!957210)) b!5478531))

(assert (= (and b!5478531 c!957212) b!5478529))

(assert (= (and b!5478531 (not c!957212)) b!5478525))

(assert (= (and b!5478525 res!2335431) b!5478526))

(assert (= (and b!5478525 c!957209) b!5478528))

(assert (= (and b!5478525 (not c!957209)) b!5478534))

(assert (= (and b!5478534 c!957211) b!5478527))

(assert (= (and b!5478534 (not c!957211)) b!5478533))

(assert (= (and b!5478533 c!957213) b!5478530))

(assert (= (and b!5478533 (not c!957213)) b!5478532))

(assert (= (or b!5478527 b!5478530) bm!404234))

(assert (= (or b!5478527 b!5478530) bm!404236))

(assert (= (or b!5478528 bm!404234) bm!404237))

(assert (= (or b!5478528 bm!404236) bm!404232))

(assert (= (or b!5478529 b!5478528) bm!404233))

(assert (= (or b!5478529 bm!404232) bm!404235))

(declare-fun m!6494602 () Bool)

(assert (=> b!5478526 m!6494602))

(declare-fun m!6494604 () Bool)

(assert (=> b!5478535 m!6494604))

(declare-fun m!6494606 () Bool)

(assert (=> bm!404235 m!6494606))

(declare-fun m!6494608 () Bool)

(assert (=> bm!404237 m!6494608))

(declare-fun m!6494610 () Bool)

(assert (=> bm!404233 m!6494610))

(assert (=> bm!404185 d!1740417))

(assert (=> b!5477874 d!1740381))

(assert (=> b!5477874 d!1740383))

(declare-fun b!5478536 () Bool)

(declare-fun e!3390852 () Bool)

(assert (=> b!5478536 (= e!3390852 (= (head!11735 (_1!35858 (get!21468 lt!2237612))) (c!956963 (reg!15687 r!7292))))))

(declare-fun b!5478537 () Bool)

(declare-fun res!2335436 () Bool)

(declare-fun e!3390856 () Bool)

(assert (=> b!5478537 (=> res!2335436 e!3390856)))

(assert (=> b!5478537 (= res!2335436 e!3390852)))

(declare-fun res!2335432 () Bool)

(assert (=> b!5478537 (=> (not res!2335432) (not e!3390852))))

(declare-fun lt!2237666 () Bool)

(assert (=> b!5478537 (= res!2335432 lt!2237666)))

(declare-fun b!5478538 () Bool)

(declare-fun res!2335434 () Bool)

(assert (=> b!5478538 (=> (not res!2335434) (not e!3390852))))

(declare-fun call!404243 () Bool)

(assert (=> b!5478538 (= res!2335434 (not call!404243))))

(declare-fun b!5478539 () Bool)

(declare-fun e!3390853 () Bool)

(assert (=> b!5478539 (= e!3390853 (matchR!7543 (derivativeStep!4330 (reg!15687 r!7292) (head!11735 (_1!35858 (get!21468 lt!2237612)))) (tail!10832 (_1!35858 (get!21468 lt!2237612)))))))

(declare-fun b!5478540 () Bool)

(declare-fun res!2335439 () Bool)

(assert (=> b!5478540 (=> res!2335439 e!3390856)))

(assert (=> b!5478540 (= res!2335439 (not (is-ElementMatch!15358 (reg!15687 r!7292))))))

(declare-fun e!3390855 () Bool)

(assert (=> b!5478540 (= e!3390855 e!3390856)))

(declare-fun b!5478541 () Bool)

(declare-fun res!2335433 () Bool)

(declare-fun e!3390854 () Bool)

(assert (=> b!5478541 (=> res!2335433 e!3390854)))

(assert (=> b!5478541 (= res!2335433 (not (isEmpty!34205 (tail!10832 (_1!35858 (get!21468 lt!2237612))))))))

(declare-fun bm!404238 () Bool)

(assert (=> bm!404238 (= call!404243 (isEmpty!34205 (_1!35858 (get!21468 lt!2237612))))))

(declare-fun b!5478543 () Bool)

(assert (=> b!5478543 (= e!3390855 (not lt!2237666))))

(declare-fun b!5478544 () Bool)

(assert (=> b!5478544 (= e!3390854 (not (= (head!11735 (_1!35858 (get!21468 lt!2237612))) (c!956963 (reg!15687 r!7292)))))))

(declare-fun b!5478545 () Bool)

(declare-fun e!3390850 () Bool)

(assert (=> b!5478545 (= e!3390850 (= lt!2237666 call!404243))))

(declare-fun b!5478546 () Bool)

(assert (=> b!5478546 (= e!3390850 e!3390855)))

(declare-fun c!957214 () Bool)

(assert (=> b!5478546 (= c!957214 (is-EmptyLang!15358 (reg!15687 r!7292)))))

(declare-fun b!5478547 () Bool)

(declare-fun e!3390851 () Bool)

(assert (=> b!5478547 (= e!3390856 e!3390851)))

(declare-fun res!2335435 () Bool)

(assert (=> b!5478547 (=> (not res!2335435) (not e!3390851))))

(assert (=> b!5478547 (= res!2335435 (not lt!2237666))))

(declare-fun b!5478542 () Bool)

(declare-fun res!2335437 () Bool)

(assert (=> b!5478542 (=> (not res!2335437) (not e!3390852))))

(assert (=> b!5478542 (= res!2335437 (isEmpty!34205 (tail!10832 (_1!35858 (get!21468 lt!2237612)))))))

(declare-fun d!1740419 () Bool)

(assert (=> d!1740419 e!3390850))

(declare-fun c!957216 () Bool)

(assert (=> d!1740419 (= c!957216 (is-EmptyExpr!15358 (reg!15687 r!7292)))))

(assert (=> d!1740419 (= lt!2237666 e!3390853)))

(declare-fun c!957215 () Bool)

(assert (=> d!1740419 (= c!957215 (isEmpty!34205 (_1!35858 (get!21468 lt!2237612))))))

(assert (=> d!1740419 (validRegex!7094 (reg!15687 r!7292))))

(assert (=> d!1740419 (= (matchR!7543 (reg!15687 r!7292) (_1!35858 (get!21468 lt!2237612))) lt!2237666)))

(declare-fun b!5478548 () Bool)

(assert (=> b!5478548 (= e!3390851 e!3390854)))

(declare-fun res!2335438 () Bool)

(assert (=> b!5478548 (=> res!2335438 e!3390854)))

(assert (=> b!5478548 (= res!2335438 call!404243)))

(declare-fun b!5478549 () Bool)

(assert (=> b!5478549 (= e!3390853 (nullable!5485 (reg!15687 r!7292)))))

(assert (= (and d!1740419 c!957215) b!5478549))

(assert (= (and d!1740419 (not c!957215)) b!5478539))

(assert (= (and d!1740419 c!957216) b!5478545))

(assert (= (and d!1740419 (not c!957216)) b!5478546))

(assert (= (and b!5478546 c!957214) b!5478543))

(assert (= (and b!5478546 (not c!957214)) b!5478540))

(assert (= (and b!5478540 (not res!2335439)) b!5478537))

(assert (= (and b!5478537 res!2335432) b!5478538))

(assert (= (and b!5478538 res!2335434) b!5478542))

(assert (= (and b!5478542 res!2335437) b!5478536))

(assert (= (and b!5478537 (not res!2335436)) b!5478547))

(assert (= (and b!5478547 res!2335435) b!5478548))

(assert (= (and b!5478548 (not res!2335438)) b!5478541))

(assert (= (and b!5478541 (not res!2335433)) b!5478544))

(assert (= (or b!5478545 b!5478538 b!5478548) bm!404238))

(assert (=> b!5478549 m!6494046))

(declare-fun m!6494612 () Bool)

(assert (=> d!1740419 m!6494612))

(assert (=> d!1740419 m!6494140))

(declare-fun m!6494614 () Bool)

(assert (=> b!5478542 m!6494614))

(assert (=> b!5478542 m!6494614))

(declare-fun m!6494616 () Bool)

(assert (=> b!5478542 m!6494616))

(assert (=> b!5478541 m!6494614))

(assert (=> b!5478541 m!6494614))

(assert (=> b!5478541 m!6494616))

(declare-fun m!6494618 () Bool)

(assert (=> b!5478536 m!6494618))

(assert (=> bm!404238 m!6494612))

(assert (=> b!5478544 m!6494618))

(assert (=> b!5478539 m!6494618))

(assert (=> b!5478539 m!6494618))

(declare-fun m!6494620 () Bool)

(assert (=> b!5478539 m!6494620))

(assert (=> b!5478539 m!6494614))

(assert (=> b!5478539 m!6494620))

(assert (=> b!5478539 m!6494614))

(declare-fun m!6494622 () Bool)

(assert (=> b!5478539 m!6494622))

(assert (=> b!5478057 d!1740419))

(declare-fun d!1740421 () Bool)

(assert (=> d!1740421 (= (get!21468 lt!2237612) (v!51495 lt!2237612))))

(assert (=> b!5478057 d!1740421))

(assert (=> bs!1265767 d!1740249))

(declare-fun d!1740423 () Bool)

(declare-fun res!2335444 () Bool)

(declare-fun e!3390861 () Bool)

(assert (=> d!1740423 (=> res!2335444 e!3390861)))

(assert (=> d!1740423 (= res!2335444 (is-Nil!62251 lt!2237580))))

(assert (=> d!1740423 (= (noDuplicate!1459 lt!2237580) e!3390861)))

(declare-fun b!5478554 () Bool)

(declare-fun e!3390862 () Bool)

(assert (=> b!5478554 (= e!3390861 e!3390862)))

(declare-fun res!2335445 () Bool)

(assert (=> b!5478554 (=> (not res!2335445) (not e!3390862))))

(declare-fun contains!19726 (List!62375 Context!9484) Bool)

(assert (=> b!5478554 (= res!2335445 (not (contains!19726 (t!375604 lt!2237580) (h!68699 lt!2237580))))))

(declare-fun b!5478555 () Bool)

(assert (=> b!5478555 (= e!3390862 (noDuplicate!1459 (t!375604 lt!2237580)))))

(assert (= (and d!1740423 (not res!2335444)) b!5478554))

(assert (= (and b!5478554 res!2335445) b!5478555))

(declare-fun m!6494624 () Bool)

(assert (=> b!5478554 m!6494624))

(declare-fun m!6494626 () Bool)

(assert (=> b!5478555 m!6494626))

(assert (=> d!1740185 d!1740423))

(declare-fun d!1740425 () Bool)

(declare-fun e!3390870 () Bool)

(assert (=> d!1740425 e!3390870))

(declare-fun res!2335450 () Bool)

(assert (=> d!1740425 (=> (not res!2335450) (not e!3390870))))

(declare-fun res!2335451 () List!62375)

(assert (=> d!1740425 (= res!2335450 (noDuplicate!1459 res!2335451))))

(declare-fun e!3390869 () Bool)

(assert (=> d!1740425 e!3390869))

(assert (=> d!1740425 (= (choose!41678 z!1189) res!2335451)))

(declare-fun b!5478563 () Bool)

(declare-fun e!3390871 () Bool)

(declare-fun tp!1505701 () Bool)

(assert (=> b!5478563 (= e!3390871 tp!1505701)))

(declare-fun tp!1505700 () Bool)

(declare-fun b!5478562 () Bool)

(assert (=> b!5478562 (= e!3390869 (and (inv!81643 (h!68699 res!2335451)) e!3390871 tp!1505700))))

(declare-fun b!5478564 () Bool)

(assert (=> b!5478564 (= e!3390870 (= (content!11203 res!2335451) z!1189))))

(assert (= b!5478562 b!5478563))

(assert (= (and d!1740425 (is-Cons!62251 res!2335451)) b!5478562))

(assert (= (and d!1740425 res!2335450) b!5478564))

(declare-fun m!6494628 () Bool)

(assert (=> d!1740425 m!6494628))

(declare-fun m!6494630 () Bool)

(assert (=> b!5478562 m!6494630))

(declare-fun m!6494632 () Bool)

(assert (=> b!5478564 m!6494632))

(assert (=> d!1740185 d!1740425))

(declare-fun d!1740427 () Bool)

(assert (=> d!1740427 (= (isEmpty!34205 (t!375602 s!2326)) (is-Nil!62249 (t!375602 s!2326)))))

(assert (=> d!1740153 d!1740427))

(declare-fun d!1740429 () Bool)

(assert (=> d!1740429 (= (isEmptyLang!1050 lt!2237587) (is-EmptyLang!15358 lt!2237587))))

(assert (=> b!5477959 d!1740429))

(declare-fun d!1740431 () Bool)

(declare-fun nullableFct!1640 (Regex!15358) Bool)

(assert (=> d!1740431 (= (nullable!5485 r!7292) (nullableFct!1640 r!7292))))

(declare-fun bs!1265903 () Bool)

(assert (= bs!1265903 d!1740431))

(declare-fun m!6494634 () Bool)

(assert (=> bs!1265903 m!6494634))

(assert (=> b!5477769 d!1740431))

(declare-fun bs!1265904 () Bool)

(declare-fun b!5478574 () Bool)

(assert (= bs!1265904 (and b!5478574 d!1740225)))

(declare-fun lambda!292207 () Int)

(assert (=> bs!1265904 (not (= lambda!292207 lambda!292156))))

(declare-fun bs!1265905 () Bool)

(assert (= bs!1265905 (and b!5478574 b!5477508)))

(assert (=> bs!1265905 (= (and (= (reg!15687 (regOne!31229 r!7292)) (reg!15687 r!7292)) (= (regOne!31229 r!7292) r!7292)) (= lambda!292207 lambda!292085))))

(declare-fun bs!1265906 () Bool)

(assert (= bs!1265906 (and b!5478574 b!5477861)))

(assert (=> bs!1265906 (= (and (= (reg!15687 (regOne!31229 r!7292)) (reg!15687 lt!2237470)) (= (regOne!31229 r!7292) lt!2237470)) (= lambda!292207 lambda!292131))))

(assert (=> bs!1265905 (not (= lambda!292207 lambda!292086))))

(declare-fun bs!1265907 () Bool)

(assert (= bs!1265907 (and b!5478574 b!5477718)))

(assert (=> bs!1265907 (not (= lambda!292207 lambda!292123))))

(declare-fun bs!1265908 () Bool)

(assert (= bs!1265908 (and b!5478574 b!5477853)))

(assert (=> bs!1265908 (not (= lambda!292207 lambda!292133))))

(assert (=> bs!1265905 (not (= lambda!292207 lambda!292084))))

(declare-fun bs!1265909 () Bool)

(assert (= bs!1265909 (and b!5478574 d!1740223)))

(assert (=> bs!1265909 (not (= lambda!292207 lambda!292151))))

(assert (=> bs!1265904 (= (and (= (reg!15687 (regOne!31229 r!7292)) (reg!15687 r!7292)) (= (regOne!31229 r!7292) (Star!15358 (reg!15687 r!7292)))) (= lambda!292207 lambda!292157))))

(declare-fun bs!1265910 () Bool)

(assert (= bs!1265910 (and b!5478574 d!1740241)))

(assert (=> bs!1265910 (not (= lambda!292207 lambda!292163))))

(assert (=> bs!1265909 (not (= lambda!292207 lambda!292150))))

(declare-fun bs!1265911 () Bool)

(assert (= bs!1265911 (and b!5478574 b!5477726)))

(assert (=> bs!1265911 (= (and (= (reg!15687 (regOne!31229 r!7292)) (reg!15687 r!7292)) (= (regOne!31229 r!7292) r!7292)) (= lambda!292207 lambda!292122))))

(assert (=> b!5478574 true))

(assert (=> b!5478574 true))

(declare-fun bs!1265912 () Bool)

(declare-fun b!5478566 () Bool)

(assert (= bs!1265912 (and b!5478566 d!1740225)))

(declare-fun lambda!292208 () Int)

(assert (=> bs!1265912 (not (= lambda!292208 lambda!292156))))

(declare-fun bs!1265913 () Bool)

(assert (= bs!1265913 (and b!5478566 b!5477508)))

(assert (=> bs!1265913 (not (= lambda!292208 lambda!292085))))

(declare-fun bs!1265914 () Bool)

(assert (= bs!1265914 (and b!5478566 b!5477861)))

(assert (=> bs!1265914 (not (= lambda!292208 lambda!292131))))

(assert (=> bs!1265913 (= (and (= (regOne!31228 (regOne!31229 r!7292)) (reg!15687 r!7292)) (= (regTwo!31228 (regOne!31229 r!7292)) r!7292)) (= lambda!292208 lambda!292086))))

(declare-fun bs!1265915 () Bool)

(assert (= bs!1265915 (and b!5478566 b!5477853)))

(assert (=> bs!1265915 (= (and (= (regOne!31228 (regOne!31229 r!7292)) (regOne!31228 lt!2237470)) (= (regTwo!31228 (regOne!31229 r!7292)) (regTwo!31228 lt!2237470))) (= lambda!292208 lambda!292133))))

(assert (=> bs!1265913 (not (= lambda!292208 lambda!292084))))

(declare-fun bs!1265916 () Bool)

(assert (= bs!1265916 (and b!5478566 d!1740223)))

(assert (=> bs!1265916 (= (and (= (regOne!31228 (regOne!31229 r!7292)) (reg!15687 r!7292)) (= (regTwo!31228 (regOne!31229 r!7292)) r!7292)) (= lambda!292208 lambda!292151))))

(assert (=> bs!1265912 (not (= lambda!292208 lambda!292157))))

(declare-fun bs!1265917 () Bool)

(assert (= bs!1265917 (and b!5478566 d!1740241)))

(assert (=> bs!1265917 (not (= lambda!292208 lambda!292163))))

(declare-fun bs!1265918 () Bool)

(assert (= bs!1265918 (and b!5478566 b!5478574)))

(assert (=> bs!1265918 (not (= lambda!292208 lambda!292207))))

(declare-fun bs!1265919 () Bool)

(assert (= bs!1265919 (and b!5478566 b!5477718)))

(assert (=> bs!1265919 (= (and (= (regOne!31228 (regOne!31229 r!7292)) (regOne!31228 r!7292)) (= (regTwo!31228 (regOne!31229 r!7292)) (regTwo!31228 r!7292))) (= lambda!292208 lambda!292123))))

(assert (=> bs!1265916 (not (= lambda!292208 lambda!292150))))

(declare-fun bs!1265920 () Bool)

(assert (= bs!1265920 (and b!5478566 b!5477726)))

(assert (=> bs!1265920 (not (= lambda!292208 lambda!292122))))

(assert (=> b!5478566 true))

(assert (=> b!5478566 true))

(declare-fun b!5478565 () Bool)

(declare-fun c!957218 () Bool)

(assert (=> b!5478565 (= c!957218 (is-ElementMatch!15358 (regOne!31229 r!7292)))))

(declare-fun e!3390874 () Bool)

(declare-fun e!3390873 () Bool)

(assert (=> b!5478565 (= e!3390874 e!3390873)))

(declare-fun e!3390876 () Bool)

(declare-fun call!404244 () Bool)

(assert (=> b!5478566 (= e!3390876 call!404244)))

(declare-fun b!5478567 () Bool)

(declare-fun e!3390875 () Bool)

(assert (=> b!5478567 (= e!3390875 (matchRSpec!2461 (regTwo!31229 (regOne!31229 r!7292)) s!2326))))

(declare-fun b!5478568 () Bool)

(declare-fun c!957217 () Bool)

(assert (=> b!5478568 (= c!957217 (is-Union!15358 (regOne!31229 r!7292)))))

(declare-fun e!3390872 () Bool)

(assert (=> b!5478568 (= e!3390873 e!3390872)))

(declare-fun b!5478569 () Bool)

(declare-fun e!3390878 () Bool)

(assert (=> b!5478569 (= e!3390878 e!3390874)))

(declare-fun res!2335453 () Bool)

(assert (=> b!5478569 (= res!2335453 (not (is-EmptyLang!15358 (regOne!31229 r!7292))))))

(assert (=> b!5478569 (=> (not res!2335453) (not e!3390874))))

(declare-fun b!5478570 () Bool)

(declare-fun res!2335454 () Bool)

(declare-fun e!3390877 () Bool)

(assert (=> b!5478570 (=> res!2335454 e!3390877)))

(declare-fun call!404245 () Bool)

(assert (=> b!5478570 (= res!2335454 call!404245)))

(assert (=> b!5478570 (= e!3390876 e!3390877)))

(declare-fun b!5478571 () Bool)

(assert (=> b!5478571 (= e!3390878 call!404245)))

(declare-fun bm!404239 () Bool)

(assert (=> bm!404239 (= call!404245 (isEmpty!34205 s!2326))))

(declare-fun b!5478572 () Bool)

(assert (=> b!5478572 (= e!3390873 (= s!2326 (Cons!62249 (c!956963 (regOne!31229 r!7292)) Nil!62249)))))

(declare-fun bm!404240 () Bool)

(declare-fun c!957219 () Bool)

(assert (=> bm!404240 (= call!404244 (Exists!2537 (ite c!957219 lambda!292207 lambda!292208)))))

(declare-fun d!1740433 () Bool)

(declare-fun c!957220 () Bool)

(assert (=> d!1740433 (= c!957220 (is-EmptyExpr!15358 (regOne!31229 r!7292)))))

(assert (=> d!1740433 (= (matchRSpec!2461 (regOne!31229 r!7292) s!2326) e!3390878)))

(declare-fun b!5478573 () Bool)

(assert (=> b!5478573 (= e!3390872 e!3390876)))

(assert (=> b!5478573 (= c!957219 (is-Star!15358 (regOne!31229 r!7292)))))

(assert (=> b!5478574 (= e!3390877 call!404244)))

(declare-fun b!5478575 () Bool)

(assert (=> b!5478575 (= e!3390872 e!3390875)))

(declare-fun res!2335452 () Bool)

(assert (=> b!5478575 (= res!2335452 (matchRSpec!2461 (regOne!31229 (regOne!31229 r!7292)) s!2326))))

(assert (=> b!5478575 (=> res!2335452 e!3390875)))

(assert (= (and d!1740433 c!957220) b!5478571))

(assert (= (and d!1740433 (not c!957220)) b!5478569))

(assert (= (and b!5478569 res!2335453) b!5478565))

(assert (= (and b!5478565 c!957218) b!5478572))

(assert (= (and b!5478565 (not c!957218)) b!5478568))

(assert (= (and b!5478568 c!957217) b!5478575))

(assert (= (and b!5478568 (not c!957217)) b!5478573))

(assert (= (and b!5478575 (not res!2335452)) b!5478567))

(assert (= (and b!5478573 c!957219) b!5478570))

(assert (= (and b!5478573 (not c!957219)) b!5478566))

(assert (= (and b!5478570 (not res!2335454)) b!5478574))

(assert (= (or b!5478574 b!5478566) bm!404240))

(assert (= (or b!5478571 b!5478570) bm!404239))

(declare-fun m!6494636 () Bool)

(assert (=> b!5478567 m!6494636))

(assert (=> bm!404239 m!6493794))

(declare-fun m!6494638 () Bool)

(assert (=> bm!404240 m!6494638))

(declare-fun m!6494640 () Bool)

(assert (=> b!5478575 m!6494640))

(assert (=> b!5477727 d!1740433))

(assert (=> bm!404141 d!1740229))

(declare-fun d!1740435 () Bool)

(assert (=> d!1740435 (= (isEmpty!34208 (t!375603 (exprs!5242 (h!68699 zl!343)))) (is-Nil!62250 (t!375603 (exprs!5242 (h!68699 zl!343)))))))

(assert (=> b!5477798 d!1740435))

(declare-fun d!1740437 () Bool)

(assert (=> d!1740437 true))

(assert (=> d!1740437 true))

(declare-fun res!2335457 () Bool)

(assert (=> d!1740437 (= (choose!41679 lambda!292085) res!2335457)))

(assert (=> d!1740233 d!1740437))

(declare-fun d!1740439 () Bool)

(assert (=> d!1740439 true))

(declare-fun setRes!36011 () Bool)

(assert (=> d!1740439 setRes!36011))

(declare-fun condSetEmpty!36011 () Bool)

(declare-fun res!2335458 () (Set Context!9484))

(assert (=> d!1740439 (= condSetEmpty!36011 (= res!2335458 (as set.empty (Set Context!9484))))))

(assert (=> d!1740439 (= (choose!41676 lt!2237479 lambda!292087) res!2335458)))

(declare-fun setIsEmpty!36011 () Bool)

(assert (=> setIsEmpty!36011 setRes!36011))

(declare-fun setNonEmpty!36011 () Bool)

(declare-fun tp!1505703 () Bool)

(declare-fun setElem!36011 () Context!9484)

(declare-fun e!3390879 () Bool)

(assert (=> setNonEmpty!36011 (= setRes!36011 (and tp!1505703 (inv!81643 setElem!36011) e!3390879))))

(declare-fun setRest!36011 () (Set Context!9484))

(assert (=> setNonEmpty!36011 (= res!2335458 (set.union (set.insert setElem!36011 (as set.empty (Set Context!9484))) setRest!36011))))

(declare-fun b!5478576 () Bool)

(declare-fun tp!1505702 () Bool)

(assert (=> b!5478576 (= e!3390879 tp!1505702)))

(assert (= (and d!1740439 condSetEmpty!36011) setIsEmpty!36011))

(assert (= (and d!1740439 (not condSetEmpty!36011)) setNonEmpty!36011))

(assert (= setNonEmpty!36011 b!5478576))

(declare-fun m!6494642 () Bool)

(assert (=> setNonEmpty!36011 m!6494642))

(assert (=> d!1740167 d!1740439))

(declare-fun b!5478585 () Bool)

(declare-fun e!3390885 () List!62373)

(assert (=> b!5478585 (= e!3390885 (_2!35858 (get!21468 lt!2237612)))))

(declare-fun b!5478587 () Bool)

(declare-fun res!2335463 () Bool)

(declare-fun e!3390884 () Bool)

(assert (=> b!5478587 (=> (not res!2335463) (not e!3390884))))

(declare-fun lt!2237669 () List!62373)

(declare-fun size!39914 (List!62373) Int)

(assert (=> b!5478587 (= res!2335463 (= (size!39914 lt!2237669) (+ (size!39914 (_1!35858 (get!21468 lt!2237612))) (size!39914 (_2!35858 (get!21468 lt!2237612))))))))

(declare-fun b!5478588 () Bool)

(assert (=> b!5478588 (= e!3390884 (or (not (= (_2!35858 (get!21468 lt!2237612)) Nil!62249)) (= lt!2237669 (_1!35858 (get!21468 lt!2237612)))))))

(declare-fun d!1740441 () Bool)

(assert (=> d!1740441 e!3390884))

(declare-fun res!2335464 () Bool)

(assert (=> d!1740441 (=> (not res!2335464) (not e!3390884))))

(declare-fun content!11205 (List!62373) (Set C!30986))

(assert (=> d!1740441 (= res!2335464 (= (content!11205 lt!2237669) (set.union (content!11205 (_1!35858 (get!21468 lt!2237612))) (content!11205 (_2!35858 (get!21468 lt!2237612))))))))

(assert (=> d!1740441 (= lt!2237669 e!3390885)))

(declare-fun c!957223 () Bool)

(assert (=> d!1740441 (= c!957223 (is-Nil!62249 (_1!35858 (get!21468 lt!2237612))))))

(assert (=> d!1740441 (= (++!13699 (_1!35858 (get!21468 lt!2237612)) (_2!35858 (get!21468 lt!2237612))) lt!2237669)))

(declare-fun b!5478586 () Bool)

(assert (=> b!5478586 (= e!3390885 (Cons!62249 (h!68697 (_1!35858 (get!21468 lt!2237612))) (++!13699 (t!375602 (_1!35858 (get!21468 lt!2237612))) (_2!35858 (get!21468 lt!2237612)))))))

(assert (= (and d!1740441 c!957223) b!5478585))

(assert (= (and d!1740441 (not c!957223)) b!5478586))

(assert (= (and d!1740441 res!2335464) b!5478587))

(assert (= (and b!5478587 res!2335463) b!5478588))

(declare-fun m!6494644 () Bool)

(assert (=> b!5478587 m!6494644))

(declare-fun m!6494646 () Bool)

(assert (=> b!5478587 m!6494646))

(declare-fun m!6494648 () Bool)

(assert (=> b!5478587 m!6494648))

(declare-fun m!6494650 () Bool)

(assert (=> d!1740441 m!6494650))

(declare-fun m!6494652 () Bool)

(assert (=> d!1740441 m!6494652))

(declare-fun m!6494654 () Bool)

(assert (=> d!1740441 m!6494654))

(declare-fun m!6494656 () Bool)

(assert (=> b!5478586 m!6494656))

(assert (=> b!5478053 d!1740441))

(assert (=> b!5478053 d!1740421))

(declare-fun d!1740443 () Bool)

(assert (=> d!1740443 (= (nullable!5485 (h!68698 (exprs!5242 lt!2237455))) (nullableFct!1640 (h!68698 (exprs!5242 lt!2237455))))))

(declare-fun bs!1265921 () Bool)

(assert (= bs!1265921 d!1740443))

(declare-fun m!6494658 () Bool)

(assert (=> bs!1265921 m!6494658))

(assert (=> b!5477671 d!1740443))

(declare-fun d!1740445 () Bool)

(assert (=> d!1740445 (= (nullable!5485 (h!68698 (exprs!5242 lt!2237457))) (nullableFct!1640 (h!68698 (exprs!5242 lt!2237457))))))

(declare-fun bs!1265922 () Bool)

(assert (= bs!1265922 d!1740445))

(declare-fun m!6494660 () Bool)

(assert (=> bs!1265922 m!6494660))

(assert (=> b!5477676 d!1740445))

(declare-fun d!1740447 () Bool)

(assert (=> d!1740447 (= (nullable!5485 (h!68698 (exprs!5242 (h!68699 zl!343)))) (nullableFct!1640 (h!68698 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun bs!1265923 () Bool)

(assert (= bs!1265923 d!1740447))

(declare-fun m!6494662 () Bool)

(assert (=> bs!1265923 m!6494662))

(assert (=> b!5478105 d!1740447))

(declare-fun d!1740449 () Bool)

(assert (=> d!1740449 (= (flatMap!1061 z!1189 lambda!292137) (choose!41676 z!1189 lambda!292137))))

(declare-fun bs!1265924 () Bool)

(assert (= bs!1265924 d!1740449))

(declare-fun m!6494664 () Bool)

(assert (=> bs!1265924 m!6494664))

(assert (=> d!1740207 d!1740449))

(assert (=> b!5477762 d!1740381))

(assert (=> b!5477762 d!1740383))

(declare-fun d!1740451 () Bool)

(declare-fun res!2335465 () Bool)

(declare-fun e!3390886 () Bool)

(assert (=> d!1740451 (=> res!2335465 e!3390886)))

(assert (=> d!1740451 (= res!2335465 (is-Nil!62250 (t!375603 lt!2237465)))))

(assert (=> d!1740451 (= (forall!14615 (t!375603 lt!2237465) lambda!292088) e!3390886)))

(declare-fun b!5478589 () Bool)

(declare-fun e!3390887 () Bool)

(assert (=> b!5478589 (= e!3390886 e!3390887)))

(declare-fun res!2335466 () Bool)

(assert (=> b!5478589 (=> (not res!2335466) (not e!3390887))))

(assert (=> b!5478589 (= res!2335466 (dynLambda!24435 lambda!292088 (h!68698 (t!375603 lt!2237465))))))

(declare-fun b!5478590 () Bool)

(assert (=> b!5478590 (= e!3390887 (forall!14615 (t!375603 (t!375603 lt!2237465)) lambda!292088))))

(assert (= (and d!1740451 (not res!2335465)) b!5478589))

(assert (= (and b!5478589 res!2335466) b!5478590))

(declare-fun b_lambda!208165 () Bool)

(assert (=> (not b_lambda!208165) (not b!5478589)))

(declare-fun m!6494666 () Bool)

(assert (=> b!5478589 m!6494666))

(declare-fun m!6494668 () Bool)

(assert (=> b!5478590 m!6494668))

(assert (=> b!5477684 d!1740451))

(declare-fun bs!1265925 () Bool)

(declare-fun b!5478600 () Bool)

(assert (= bs!1265925 (and b!5478600 d!1740225)))

(declare-fun lambda!292209 () Int)

(assert (=> bs!1265925 (not (= lambda!292209 lambda!292156))))

(declare-fun bs!1265926 () Bool)

(assert (= bs!1265926 (and b!5478600 b!5477508)))

(assert (=> bs!1265926 (= (and (= (reg!15687 (regTwo!31229 r!7292)) (reg!15687 r!7292)) (= (regTwo!31229 r!7292) r!7292)) (= lambda!292209 lambda!292085))))

(declare-fun bs!1265927 () Bool)

(assert (= bs!1265927 (and b!5478600 b!5477861)))

(assert (=> bs!1265927 (= (and (= (reg!15687 (regTwo!31229 r!7292)) (reg!15687 lt!2237470)) (= (regTwo!31229 r!7292) lt!2237470)) (= lambda!292209 lambda!292131))))

(assert (=> bs!1265926 (not (= lambda!292209 lambda!292086))))

(declare-fun bs!1265928 () Bool)

(assert (= bs!1265928 (and b!5478600 b!5478566)))

(assert (=> bs!1265928 (not (= lambda!292209 lambda!292208))))

(declare-fun bs!1265929 () Bool)

(assert (= bs!1265929 (and b!5478600 b!5477853)))

(assert (=> bs!1265929 (not (= lambda!292209 lambda!292133))))

(assert (=> bs!1265926 (not (= lambda!292209 lambda!292084))))

(declare-fun bs!1265930 () Bool)

(assert (= bs!1265930 (and b!5478600 d!1740223)))

(assert (=> bs!1265930 (not (= lambda!292209 lambda!292151))))

(assert (=> bs!1265925 (= (and (= (reg!15687 (regTwo!31229 r!7292)) (reg!15687 r!7292)) (= (regTwo!31229 r!7292) (Star!15358 (reg!15687 r!7292)))) (= lambda!292209 lambda!292157))))

(declare-fun bs!1265931 () Bool)

(assert (= bs!1265931 (and b!5478600 d!1740241)))

(assert (=> bs!1265931 (not (= lambda!292209 lambda!292163))))

(declare-fun bs!1265932 () Bool)

(assert (= bs!1265932 (and b!5478600 b!5478574)))

(assert (=> bs!1265932 (= (and (= (reg!15687 (regTwo!31229 r!7292)) (reg!15687 (regOne!31229 r!7292))) (= (regTwo!31229 r!7292) (regOne!31229 r!7292))) (= lambda!292209 lambda!292207))))

(declare-fun bs!1265933 () Bool)

(assert (= bs!1265933 (and b!5478600 b!5477718)))

(assert (=> bs!1265933 (not (= lambda!292209 lambda!292123))))

(assert (=> bs!1265930 (not (= lambda!292209 lambda!292150))))

(declare-fun bs!1265934 () Bool)

(assert (= bs!1265934 (and b!5478600 b!5477726)))

(assert (=> bs!1265934 (= (and (= (reg!15687 (regTwo!31229 r!7292)) (reg!15687 r!7292)) (= (regTwo!31229 r!7292) r!7292)) (= lambda!292209 lambda!292122))))

(assert (=> b!5478600 true))

(assert (=> b!5478600 true))

(declare-fun bs!1265935 () Bool)

(declare-fun b!5478592 () Bool)

(assert (= bs!1265935 (and b!5478592 d!1740225)))

(declare-fun lambda!292210 () Int)

(assert (=> bs!1265935 (not (= lambda!292210 lambda!292156))))

(declare-fun bs!1265936 () Bool)

(assert (= bs!1265936 (and b!5478592 b!5477508)))

(assert (=> bs!1265936 (not (= lambda!292210 lambda!292085))))

(declare-fun bs!1265937 () Bool)

(assert (= bs!1265937 (and b!5478592 b!5477861)))

(assert (=> bs!1265937 (not (= lambda!292210 lambda!292131))))

(assert (=> bs!1265936 (= (and (= (regOne!31228 (regTwo!31229 r!7292)) (reg!15687 r!7292)) (= (regTwo!31228 (regTwo!31229 r!7292)) r!7292)) (= lambda!292210 lambda!292086))))

(declare-fun bs!1265938 () Bool)

(assert (= bs!1265938 (and b!5478592 b!5478566)))

(assert (=> bs!1265938 (= (and (= (regOne!31228 (regTwo!31229 r!7292)) (regOne!31228 (regOne!31229 r!7292))) (= (regTwo!31228 (regTwo!31229 r!7292)) (regTwo!31228 (regOne!31229 r!7292)))) (= lambda!292210 lambda!292208))))

(declare-fun bs!1265939 () Bool)

(assert (= bs!1265939 (and b!5478592 b!5477853)))

(assert (=> bs!1265939 (= (and (= (regOne!31228 (regTwo!31229 r!7292)) (regOne!31228 lt!2237470)) (= (regTwo!31228 (regTwo!31229 r!7292)) (regTwo!31228 lt!2237470))) (= lambda!292210 lambda!292133))))

(assert (=> bs!1265936 (not (= lambda!292210 lambda!292084))))

(declare-fun bs!1265940 () Bool)

(assert (= bs!1265940 (and b!5478592 d!1740223)))

(assert (=> bs!1265940 (= (and (= (regOne!31228 (regTwo!31229 r!7292)) (reg!15687 r!7292)) (= (regTwo!31228 (regTwo!31229 r!7292)) r!7292)) (= lambda!292210 lambda!292151))))

(assert (=> bs!1265935 (not (= lambda!292210 lambda!292157))))

(declare-fun bs!1265941 () Bool)

(assert (= bs!1265941 (and b!5478592 d!1740241)))

(assert (=> bs!1265941 (not (= lambda!292210 lambda!292163))))

(declare-fun bs!1265942 () Bool)

(assert (= bs!1265942 (and b!5478592 b!5478600)))

(assert (=> bs!1265942 (not (= lambda!292210 lambda!292209))))

(declare-fun bs!1265943 () Bool)

(assert (= bs!1265943 (and b!5478592 b!5478574)))

(assert (=> bs!1265943 (not (= lambda!292210 lambda!292207))))

(declare-fun bs!1265944 () Bool)

(assert (= bs!1265944 (and b!5478592 b!5477718)))

(assert (=> bs!1265944 (= (and (= (regOne!31228 (regTwo!31229 r!7292)) (regOne!31228 r!7292)) (= (regTwo!31228 (regTwo!31229 r!7292)) (regTwo!31228 r!7292))) (= lambda!292210 lambda!292123))))

(assert (=> bs!1265940 (not (= lambda!292210 lambda!292150))))

(declare-fun bs!1265945 () Bool)

(assert (= bs!1265945 (and b!5478592 b!5477726)))

(assert (=> bs!1265945 (not (= lambda!292210 lambda!292122))))

(assert (=> b!5478592 true))

(assert (=> b!5478592 true))

(declare-fun b!5478591 () Bool)

(declare-fun c!957225 () Bool)

(assert (=> b!5478591 (= c!957225 (is-ElementMatch!15358 (regTwo!31229 r!7292)))))

(declare-fun e!3390890 () Bool)

(declare-fun e!3390889 () Bool)

(assert (=> b!5478591 (= e!3390890 e!3390889)))

(declare-fun e!3390892 () Bool)

(declare-fun call!404246 () Bool)

(assert (=> b!5478592 (= e!3390892 call!404246)))

(declare-fun b!5478593 () Bool)

(declare-fun e!3390891 () Bool)

(assert (=> b!5478593 (= e!3390891 (matchRSpec!2461 (regTwo!31229 (regTwo!31229 r!7292)) s!2326))))

(declare-fun b!5478594 () Bool)

(declare-fun c!957224 () Bool)

(assert (=> b!5478594 (= c!957224 (is-Union!15358 (regTwo!31229 r!7292)))))

(declare-fun e!3390888 () Bool)

(assert (=> b!5478594 (= e!3390889 e!3390888)))

(declare-fun b!5478595 () Bool)

(declare-fun e!3390894 () Bool)

(assert (=> b!5478595 (= e!3390894 e!3390890)))

(declare-fun res!2335468 () Bool)

(assert (=> b!5478595 (= res!2335468 (not (is-EmptyLang!15358 (regTwo!31229 r!7292))))))

(assert (=> b!5478595 (=> (not res!2335468) (not e!3390890))))

(declare-fun b!5478596 () Bool)

(declare-fun res!2335469 () Bool)

(declare-fun e!3390893 () Bool)

(assert (=> b!5478596 (=> res!2335469 e!3390893)))

(declare-fun call!404247 () Bool)

(assert (=> b!5478596 (= res!2335469 call!404247)))

(assert (=> b!5478596 (= e!3390892 e!3390893)))

(declare-fun b!5478597 () Bool)

(assert (=> b!5478597 (= e!3390894 call!404247)))

(declare-fun bm!404241 () Bool)

(assert (=> bm!404241 (= call!404247 (isEmpty!34205 s!2326))))

(declare-fun b!5478598 () Bool)

(assert (=> b!5478598 (= e!3390889 (= s!2326 (Cons!62249 (c!956963 (regTwo!31229 r!7292)) Nil!62249)))))

(declare-fun bm!404242 () Bool)

(declare-fun c!957226 () Bool)

(assert (=> bm!404242 (= call!404246 (Exists!2537 (ite c!957226 lambda!292209 lambda!292210)))))

(declare-fun d!1740453 () Bool)

(declare-fun c!957227 () Bool)

(assert (=> d!1740453 (= c!957227 (is-EmptyExpr!15358 (regTwo!31229 r!7292)))))

(assert (=> d!1740453 (= (matchRSpec!2461 (regTwo!31229 r!7292) s!2326) e!3390894)))

(declare-fun b!5478599 () Bool)

(assert (=> b!5478599 (= e!3390888 e!3390892)))

(assert (=> b!5478599 (= c!957226 (is-Star!15358 (regTwo!31229 r!7292)))))

(assert (=> b!5478600 (= e!3390893 call!404246)))

(declare-fun b!5478601 () Bool)

(assert (=> b!5478601 (= e!3390888 e!3390891)))

(declare-fun res!2335467 () Bool)

(assert (=> b!5478601 (= res!2335467 (matchRSpec!2461 (regOne!31229 (regTwo!31229 r!7292)) s!2326))))

(assert (=> b!5478601 (=> res!2335467 e!3390891)))

(assert (= (and d!1740453 c!957227) b!5478597))

(assert (= (and d!1740453 (not c!957227)) b!5478595))

(assert (= (and b!5478595 res!2335468) b!5478591))

(assert (= (and b!5478591 c!957225) b!5478598))

(assert (= (and b!5478591 (not c!957225)) b!5478594))

(assert (= (and b!5478594 c!957224) b!5478601))

(assert (= (and b!5478594 (not c!957224)) b!5478599))

(assert (= (and b!5478601 (not res!2335467)) b!5478593))

(assert (= (and b!5478599 c!957226) b!5478596))

(assert (= (and b!5478599 (not c!957226)) b!5478592))

(assert (= (and b!5478596 (not res!2335469)) b!5478600))

(assert (= (or b!5478600 b!5478592) bm!404242))

(assert (= (or b!5478597 b!5478596) bm!404241))

(declare-fun m!6494670 () Bool)

(assert (=> b!5478593 m!6494670))

(assert (=> bm!404241 m!6493794))

(declare-fun m!6494672 () Bool)

(assert (=> bm!404242 m!6494672))

(declare-fun m!6494674 () Bool)

(assert (=> b!5478601 m!6494674))

(assert (=> b!5477719 d!1740453))

(declare-fun bm!404243 () Bool)

(declare-fun call!404249 () (Set Context!9484))

(declare-fun call!404251 () (Set Context!9484))

(assert (=> bm!404243 (= call!404249 call!404251)))

(declare-fun bm!404244 () Bool)

(declare-fun call!404250 () (Set Context!9484))

(declare-fun call!404252 () List!62374)

(declare-fun c!957231 () Bool)

(assert (=> bm!404244 (= call!404250 (derivationStepZipperDown!784 (ite c!957231 (regTwo!31229 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292))) (regOne!31228 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292)))) (ite c!957231 (ite c!957055 (Context!9485 Nil!62250) (Context!9485 call!404169)) (Context!9485 call!404252)) (h!68697 s!2326)))))

(declare-fun c!957229 () Bool)

(declare-fun d!1740455 () Bool)

(assert (=> d!1740455 (= c!957229 (and (is-ElementMatch!15358 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292))) (= (c!956963 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292))) (h!68697 s!2326))))))

(declare-fun e!3390895 () (Set Context!9484))

(assert (=> d!1740455 (= (derivationStepZipperDown!784 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292)) (ite c!957055 (Context!9485 Nil!62250) (Context!9485 call!404169)) (h!68697 s!2326)) e!3390895)))

(declare-fun b!5478602 () Bool)

(declare-fun c!957228 () Bool)

(declare-fun e!3390899 () Bool)

(assert (=> b!5478602 (= c!957228 e!3390899)))

(declare-fun res!2335470 () Bool)

(assert (=> b!5478602 (=> (not res!2335470) (not e!3390899))))

(assert (=> b!5478602 (= res!2335470 (is-Concat!24203 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292))))))

(declare-fun e!3390897 () (Set Context!9484))

(declare-fun e!3390898 () (Set Context!9484))

(assert (=> b!5478602 (= e!3390897 e!3390898)))

(declare-fun bm!404245 () Bool)

(declare-fun call!404253 () List!62374)

(assert (=> bm!404245 (= call!404253 call!404252)))

(declare-fun b!5478603 () Bool)

(assert (=> b!5478603 (= e!3390899 (nullable!5485 (regOne!31228 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292)))))))

(declare-fun b!5478604 () Bool)

(declare-fun e!3390896 () (Set Context!9484))

(declare-fun call!404248 () (Set Context!9484))

(assert (=> b!5478604 (= e!3390896 call!404248)))

(declare-fun bm!404246 () Bool)

(declare-fun c!957230 () Bool)

(assert (=> bm!404246 (= call!404251 (derivationStepZipperDown!784 (ite c!957231 (regOne!31229 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292))) (ite c!957228 (regTwo!31228 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292))) (ite c!957230 (regOne!31228 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292))) (reg!15687 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292)))))) (ite (or c!957231 c!957228) (ite c!957055 (Context!9485 Nil!62250) (Context!9485 call!404169)) (Context!9485 call!404253)) (h!68697 s!2326)))))

(declare-fun b!5478605 () Bool)

(assert (=> b!5478605 (= e!3390898 (set.union call!404250 call!404249))))

(declare-fun bm!404247 () Bool)

(assert (=> bm!404247 (= call!404248 call!404249)))

(declare-fun b!5478606 () Bool)

(assert (=> b!5478606 (= e!3390897 (set.union call!404251 call!404250))))

(declare-fun b!5478607 () Bool)

(declare-fun e!3390900 () (Set Context!9484))

(assert (=> b!5478607 (= e!3390900 call!404248)))

(declare-fun b!5478608 () Bool)

(assert (=> b!5478608 (= e!3390895 e!3390897)))

(assert (=> b!5478608 (= c!957231 (is-Union!15358 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292))))))

(declare-fun b!5478609 () Bool)

(assert (=> b!5478609 (= e!3390900 (as set.empty (Set Context!9484)))))

(declare-fun bm!404248 () Bool)

(assert (=> bm!404248 (= call!404252 ($colon$colon!1555 (exprs!5242 (ite c!957055 (Context!9485 Nil!62250) (Context!9485 call!404169))) (ite (or c!957228 c!957230) (regTwo!31228 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292))) (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292)))))))

(declare-fun b!5478610 () Bool)

(declare-fun c!957232 () Bool)

(assert (=> b!5478610 (= c!957232 (is-Star!15358 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292))))))

(assert (=> b!5478610 (= e!3390896 e!3390900)))

(declare-fun b!5478611 () Bool)

(assert (=> b!5478611 (= e!3390898 e!3390896)))

(assert (=> b!5478611 (= c!957230 (is-Concat!24203 (ite c!957055 (regTwo!31229 r!7292) (regOne!31228 r!7292))))))

(declare-fun b!5478612 () Bool)

(assert (=> b!5478612 (= e!3390895 (set.insert (ite c!957055 (Context!9485 Nil!62250) (Context!9485 call!404169)) (as set.empty (Set Context!9484))))))

(assert (= (and d!1740455 c!957229) b!5478612))

(assert (= (and d!1740455 (not c!957229)) b!5478608))

(assert (= (and b!5478608 c!957231) b!5478606))

(assert (= (and b!5478608 (not c!957231)) b!5478602))

(assert (= (and b!5478602 res!2335470) b!5478603))

(assert (= (and b!5478602 c!957228) b!5478605))

(assert (= (and b!5478602 (not c!957228)) b!5478611))

(assert (= (and b!5478611 c!957230) b!5478604))

(assert (= (and b!5478611 (not c!957230)) b!5478610))

(assert (= (and b!5478610 c!957232) b!5478607))

(assert (= (and b!5478610 (not c!957232)) b!5478609))

(assert (= (or b!5478604 b!5478607) bm!404245))

(assert (= (or b!5478604 b!5478607) bm!404247))

(assert (= (or b!5478605 bm!404245) bm!404248))

(assert (= (or b!5478605 bm!404247) bm!404243))

(assert (= (or b!5478606 b!5478605) bm!404244))

(assert (= (or b!5478606 bm!404243) bm!404246))

(declare-fun m!6494676 () Bool)

(assert (=> b!5478603 m!6494676))

(declare-fun m!6494678 () Bool)

(assert (=> b!5478612 m!6494678))

(declare-fun m!6494680 () Bool)

(assert (=> bm!404246 m!6494680))

(declare-fun m!6494682 () Bool)

(assert (=> bm!404248 m!6494682))

(declare-fun m!6494684 () Bool)

(assert (=> bm!404244 m!6494684))

(assert (=> bm!404161 d!1740455))

(assert (=> b!5477756 d!1740397))

(assert (=> d!1740165 d!1740169))

(declare-fun d!1740457 () Bool)

(assert (=> d!1740457 (= (flatMap!1061 lt!2237466 lambda!292087) (dynLambda!24434 lambda!292087 lt!2237455))))

(assert (=> d!1740457 true))

(declare-fun _$13!1983 () Unit!155166)

(assert (=> d!1740457 (= (choose!41675 lt!2237466 lt!2237455 lambda!292087) _$13!1983)))

(declare-fun b_lambda!208167 () Bool)

(assert (=> (not b_lambda!208167) (not d!1740457)))

(declare-fun bs!1265946 () Bool)

(assert (= bs!1265946 d!1740457))

(assert (=> bs!1265946 m!6493746))

(assert (=> bs!1265946 m!6493982))

(assert (=> d!1740165 d!1740457))

(declare-fun d!1740459 () Bool)

(declare-fun res!2335471 () Bool)

(declare-fun e!3390901 () Bool)

(assert (=> d!1740459 (=> res!2335471 e!3390901)))

(assert (=> d!1740459 (= res!2335471 (is-Nil!62250 (exprs!5242 c!332)))))

(assert (=> d!1740459 (= (forall!14615 (exprs!5242 c!332) lambda!292129) e!3390901)))

(declare-fun b!5478613 () Bool)

(declare-fun e!3390902 () Bool)

(assert (=> b!5478613 (= e!3390901 e!3390902)))

(declare-fun res!2335472 () Bool)

(assert (=> b!5478613 (=> (not res!2335472) (not e!3390902))))

(assert (=> b!5478613 (= res!2335472 (dynLambda!24435 lambda!292129 (h!68698 (exprs!5242 c!332))))))

(declare-fun b!5478614 () Bool)

(assert (=> b!5478614 (= e!3390902 (forall!14615 (t!375603 (exprs!5242 c!332)) lambda!292129))))

(assert (= (and d!1740459 (not res!2335471)) b!5478613))

(assert (= (and b!5478613 res!2335472) b!5478614))

(declare-fun b_lambda!208169 () Bool)

(assert (=> (not b_lambda!208169) (not b!5478613)))

(declare-fun m!6494686 () Bool)

(assert (=> b!5478613 m!6494686))

(declare-fun m!6494688 () Bool)

(assert (=> b!5478614 m!6494688))

(assert (=> d!1740189 d!1740459))

(declare-fun d!1740461 () Bool)

(declare-fun c!957233 () Bool)

(declare-fun e!3390905 () Bool)

(assert (=> d!1740461 (= c!957233 e!3390905)))

(declare-fun res!2335473 () Bool)

(assert (=> d!1740461 (=> (not res!2335473) (not e!3390905))))

(assert (=> d!1740461 (= res!2335473 (is-Cons!62250 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))))))))

(declare-fun e!3390904 () (Set Context!9484))

(assert (=> d!1740461 (= (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (h!68697 s!2326)) e!3390904)))

(declare-fun b!5478615 () Bool)

(declare-fun e!3390903 () (Set Context!9484))

(assert (=> b!5478615 (= e!3390903 (as set.empty (Set Context!9484)))))

(declare-fun b!5478616 () Bool)

(declare-fun call!404254 () (Set Context!9484))

(assert (=> b!5478616 (= e!3390903 call!404254)))

(declare-fun b!5478617 () Bool)

(assert (=> b!5478617 (= e!3390905 (nullable!5485 (h!68698 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250)))))))))))

(declare-fun b!5478618 () Bool)

(assert (=> b!5478618 (= e!3390904 (set.union call!404254 (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250)))))))) (h!68697 s!2326))))))

(declare-fun b!5478619 () Bool)

(assert (=> b!5478619 (= e!3390904 e!3390903)))

(declare-fun c!957234 () Bool)

(assert (=> b!5478619 (= c!957234 (is-Cons!62250 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))))))))

(declare-fun bm!404249 () Bool)

(assert (=> bm!404249 (= call!404254 (derivationStepZipperDown!784 (h!68698 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))))) (Context!9485 (t!375603 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250)))))))) (h!68697 s!2326)))))

(assert (= (and d!1740461 res!2335473) b!5478617))

(assert (= (and d!1740461 c!957233) b!5478618))

(assert (= (and d!1740461 (not c!957233)) b!5478619))

(assert (= (and b!5478619 c!957234) b!5478616))

(assert (= (and b!5478619 (not c!957234)) b!5478615))

(assert (= (or b!5478618 b!5478616) bm!404249))

(declare-fun m!6494690 () Bool)

(assert (=> b!5478617 m!6494690))

(declare-fun m!6494692 () Bool)

(assert (=> b!5478618 m!6494692))

(declare-fun m!6494694 () Bool)

(assert (=> bm!404249 m!6494694))

(assert (=> b!5477923 d!1740461))

(declare-fun d!1740463 () Bool)

(assert (=> d!1740463 (= (nullable!5485 (regOne!31228 (reg!15687 r!7292))) (nullableFct!1640 (regOne!31228 (reg!15687 r!7292))))))

(declare-fun bs!1265947 () Bool)

(assert (= bs!1265947 d!1740463))

(declare-fun m!6494696 () Bool)

(assert (=> bs!1265947 m!6494696))

(assert (=> b!5478088 d!1740463))

(assert (=> bs!1265768 d!1740255))

(assert (=> d!1740257 d!1740253))

(declare-fun d!1740465 () Bool)

(assert (=> d!1740465 (= (flatMap!1061 z!1189 lambda!292087) (dynLambda!24434 lambda!292087 (h!68699 zl!343)))))

(assert (=> d!1740465 true))

(declare-fun _$13!1984 () Unit!155166)

(assert (=> d!1740465 (= (choose!41675 z!1189 (h!68699 zl!343) lambda!292087) _$13!1984)))

(declare-fun b_lambda!208171 () Bool)

(assert (=> (not b_lambda!208171) (not d!1740465)))

(declare-fun bs!1265948 () Bool)

(assert (= bs!1265948 d!1740465))

(assert (=> bs!1265948 m!6493732))

(assert (=> bs!1265948 m!6494224))

(assert (=> d!1740257 d!1740465))

(declare-fun bs!1265949 () Bool)

(declare-fun d!1740467 () Bool)

(assert (= bs!1265949 (and d!1740467 d!1740393)))

(declare-fun lambda!292211 () Int)

(assert (=> bs!1265949 (= lambda!292211 lambda!292202)))

(assert (=> d!1740467 (= (nullableZipper!1506 (derivationStepZipper!1553 lt!2237468 (h!68697 s!2326))) (exists!2028 (derivationStepZipper!1553 lt!2237468 (h!68697 s!2326)) lambda!292211))))

(declare-fun bs!1265950 () Bool)

(assert (= bs!1265950 d!1740467))

(assert (=> bs!1265950 m!6493788))

(declare-fun m!6494698 () Bool)

(assert (=> bs!1265950 m!6494698))

(assert (=> b!5477655 d!1740467))

(declare-fun d!1740469 () Bool)

(declare-fun res!2335475 () Bool)

(declare-fun e!3390912 () Bool)

(assert (=> d!1740469 (=> res!2335475 e!3390912)))

(assert (=> d!1740469 (= res!2335475 (is-ElementMatch!15358 lt!2237577))))

(assert (=> d!1740469 (= (validRegex!7094 lt!2237577) e!3390912)))

(declare-fun bm!404250 () Bool)

(declare-fun call!404256 () Bool)

(declare-fun c!957236 () Bool)

(assert (=> bm!404250 (= call!404256 (validRegex!7094 (ite c!957236 (regTwo!31229 lt!2237577) (regTwo!31228 lt!2237577))))))

(declare-fun b!5478620 () Bool)

(declare-fun e!3390909 () Bool)

(assert (=> b!5478620 (= e!3390909 call!404256)))

(declare-fun b!5478621 () Bool)

(declare-fun e!3390910 () Bool)

(declare-fun e!3390906 () Bool)

(assert (=> b!5478621 (= e!3390910 e!3390906)))

(assert (=> b!5478621 (= c!957236 (is-Union!15358 lt!2237577))))

(declare-fun call!404255 () Bool)

(declare-fun c!957235 () Bool)

(declare-fun bm!404251 () Bool)

(assert (=> bm!404251 (= call!404255 (validRegex!7094 (ite c!957235 (reg!15687 lt!2237577) (ite c!957236 (regOne!31229 lt!2237577) (regOne!31228 lt!2237577)))))))

(declare-fun b!5478622 () Bool)

(declare-fun e!3390908 () Bool)

(assert (=> b!5478622 (= e!3390908 e!3390909)))

(declare-fun res!2335477 () Bool)

(assert (=> b!5478622 (=> (not res!2335477) (not e!3390909))))

(declare-fun call!404257 () Bool)

(assert (=> b!5478622 (= res!2335477 call!404257)))

(declare-fun b!5478623 () Bool)

(declare-fun e!3390911 () Bool)

(assert (=> b!5478623 (= e!3390911 call!404256)))

(declare-fun b!5478624 () Bool)

(declare-fun e!3390907 () Bool)

(assert (=> b!5478624 (= e!3390910 e!3390907)))

(declare-fun res!2335474 () Bool)

(assert (=> b!5478624 (= res!2335474 (not (nullable!5485 (reg!15687 lt!2237577))))))

(assert (=> b!5478624 (=> (not res!2335474) (not e!3390907))))

(declare-fun b!5478625 () Bool)

(declare-fun res!2335478 () Bool)

(assert (=> b!5478625 (=> res!2335478 e!3390908)))

(assert (=> b!5478625 (= res!2335478 (not (is-Concat!24203 lt!2237577)))))

(assert (=> b!5478625 (= e!3390906 e!3390908)))

(declare-fun bm!404252 () Bool)

(assert (=> bm!404252 (= call!404257 call!404255)))

(declare-fun b!5478626 () Bool)

(assert (=> b!5478626 (= e!3390907 call!404255)))

(declare-fun b!5478627 () Bool)

(assert (=> b!5478627 (= e!3390912 e!3390910)))

(assert (=> b!5478627 (= c!957235 (is-Star!15358 lt!2237577))))

(declare-fun b!5478628 () Bool)

(declare-fun res!2335476 () Bool)

(assert (=> b!5478628 (=> (not res!2335476) (not e!3390911))))

(assert (=> b!5478628 (= res!2335476 call!404257)))

(assert (=> b!5478628 (= e!3390906 e!3390911)))

(assert (= (and d!1740469 (not res!2335475)) b!5478627))

(assert (= (and b!5478627 c!957235) b!5478624))

(assert (= (and b!5478627 (not c!957235)) b!5478621))

(assert (= (and b!5478624 res!2335474) b!5478626))

(assert (= (and b!5478621 c!957236) b!5478628))

(assert (= (and b!5478621 (not c!957236)) b!5478625))

(assert (= (and b!5478628 res!2335476) b!5478623))

(assert (= (and b!5478625 (not res!2335478)) b!5478622))

(assert (= (and b!5478622 res!2335477) b!5478620))

(assert (= (or b!5478623 b!5478620) bm!404250))

(assert (= (or b!5478628 b!5478622) bm!404252))

(assert (= (or b!5478626 bm!404252) bm!404251))

(declare-fun m!6494700 () Bool)

(assert (=> bm!404250 m!6494700))

(declare-fun m!6494702 () Bool)

(assert (=> bm!404251 m!6494702))

(declare-fun m!6494704 () Bool)

(assert (=> b!5478624 m!6494704))

(assert (=> d!1740181 d!1740469))

(declare-fun d!1740471 () Bool)

(declare-fun res!2335479 () Bool)

(declare-fun e!3390913 () Bool)

(assert (=> d!1740471 (=> res!2335479 e!3390913)))

(assert (=> d!1740471 (= res!2335479 (is-Nil!62250 (exprs!5242 (h!68699 zl!343))))))

(assert (=> d!1740471 (= (forall!14615 (exprs!5242 (h!68699 zl!343)) lambda!292126) e!3390913)))

(declare-fun b!5478629 () Bool)

(declare-fun e!3390914 () Bool)

(assert (=> b!5478629 (= e!3390913 e!3390914)))

(declare-fun res!2335480 () Bool)

(assert (=> b!5478629 (=> (not res!2335480) (not e!3390914))))

(assert (=> b!5478629 (= res!2335480 (dynLambda!24435 lambda!292126 (h!68698 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun b!5478630 () Bool)

(assert (=> b!5478630 (= e!3390914 (forall!14615 (t!375603 (exprs!5242 (h!68699 zl!343))) lambda!292126))))

(assert (= (and d!1740471 (not res!2335479)) b!5478629))

(assert (= (and b!5478629 res!2335480) b!5478630))

(declare-fun b_lambda!208173 () Bool)

(assert (=> (not b_lambda!208173) (not b!5478629)))

(declare-fun m!6494706 () Bool)

(assert (=> b!5478629 m!6494706))

(declare-fun m!6494708 () Bool)

(assert (=> b!5478630 m!6494708))

(assert (=> d!1740181 d!1740471))

(declare-fun d!1740473 () Bool)

(declare-fun res!2335482 () Bool)

(declare-fun e!3390921 () Bool)

(assert (=> d!1740473 (=> res!2335482 e!3390921)))

(assert (=> d!1740473 (= res!2335482 (is-ElementMatch!15358 (ite c!957026 (regTwo!31229 r!7292) (regTwo!31228 r!7292))))))

(assert (=> d!1740473 (= (validRegex!7094 (ite c!957026 (regTwo!31229 r!7292) (regTwo!31228 r!7292))) e!3390921)))

(declare-fun call!404259 () Bool)

(declare-fun bm!404253 () Bool)

(declare-fun c!957238 () Bool)

(assert (=> bm!404253 (= call!404259 (validRegex!7094 (ite c!957238 (regTwo!31229 (ite c!957026 (regTwo!31229 r!7292) (regTwo!31228 r!7292))) (regTwo!31228 (ite c!957026 (regTwo!31229 r!7292) (regTwo!31228 r!7292))))))))

(declare-fun b!5478631 () Bool)

(declare-fun e!3390918 () Bool)

(assert (=> b!5478631 (= e!3390918 call!404259)))

(declare-fun b!5478632 () Bool)

(declare-fun e!3390919 () Bool)

(declare-fun e!3390915 () Bool)

(assert (=> b!5478632 (= e!3390919 e!3390915)))

(assert (=> b!5478632 (= c!957238 (is-Union!15358 (ite c!957026 (regTwo!31229 r!7292) (regTwo!31228 r!7292))))))

(declare-fun call!404258 () Bool)

(declare-fun bm!404254 () Bool)

(declare-fun c!957237 () Bool)

(assert (=> bm!404254 (= call!404258 (validRegex!7094 (ite c!957237 (reg!15687 (ite c!957026 (regTwo!31229 r!7292) (regTwo!31228 r!7292))) (ite c!957238 (regOne!31229 (ite c!957026 (regTwo!31229 r!7292) (regTwo!31228 r!7292))) (regOne!31228 (ite c!957026 (regTwo!31229 r!7292) (regTwo!31228 r!7292)))))))))

(declare-fun b!5478633 () Bool)

(declare-fun e!3390917 () Bool)

(assert (=> b!5478633 (= e!3390917 e!3390918)))

(declare-fun res!2335484 () Bool)

(assert (=> b!5478633 (=> (not res!2335484) (not e!3390918))))

(declare-fun call!404260 () Bool)

(assert (=> b!5478633 (= res!2335484 call!404260)))

(declare-fun b!5478634 () Bool)

(declare-fun e!3390920 () Bool)

(assert (=> b!5478634 (= e!3390920 call!404259)))

(declare-fun b!5478635 () Bool)

(declare-fun e!3390916 () Bool)

(assert (=> b!5478635 (= e!3390919 e!3390916)))

(declare-fun res!2335481 () Bool)

(assert (=> b!5478635 (= res!2335481 (not (nullable!5485 (reg!15687 (ite c!957026 (regTwo!31229 r!7292) (regTwo!31228 r!7292))))))))

(assert (=> b!5478635 (=> (not res!2335481) (not e!3390916))))

(declare-fun b!5478636 () Bool)

(declare-fun res!2335485 () Bool)

(assert (=> b!5478636 (=> res!2335485 e!3390917)))

(assert (=> b!5478636 (= res!2335485 (not (is-Concat!24203 (ite c!957026 (regTwo!31229 r!7292) (regTwo!31228 r!7292)))))))

(assert (=> b!5478636 (= e!3390915 e!3390917)))

(declare-fun bm!404255 () Bool)

(assert (=> bm!404255 (= call!404260 call!404258)))

(declare-fun b!5478637 () Bool)

(assert (=> b!5478637 (= e!3390916 call!404258)))

(declare-fun b!5478638 () Bool)

(assert (=> b!5478638 (= e!3390921 e!3390919)))

(assert (=> b!5478638 (= c!957237 (is-Star!15358 (ite c!957026 (regTwo!31229 r!7292) (regTwo!31228 r!7292))))))

(declare-fun b!5478639 () Bool)

(declare-fun res!2335483 () Bool)

(assert (=> b!5478639 (=> (not res!2335483) (not e!3390920))))

(assert (=> b!5478639 (= res!2335483 call!404260)))

(assert (=> b!5478639 (= e!3390915 e!3390920)))

(assert (= (and d!1740473 (not res!2335482)) b!5478638))

(assert (= (and b!5478638 c!957237) b!5478635))

(assert (= (and b!5478638 (not c!957237)) b!5478632))

(assert (= (and b!5478635 res!2335481) b!5478637))

(assert (= (and b!5478632 c!957238) b!5478639))

(assert (= (and b!5478632 (not c!957238)) b!5478636))

(assert (= (and b!5478639 res!2335483) b!5478634))

(assert (= (and b!5478636 (not res!2335485)) b!5478633))

(assert (= (and b!5478633 res!2335484) b!5478631))

(assert (= (or b!5478634 b!5478631) bm!404253))

(assert (= (or b!5478639 b!5478633) bm!404255))

(assert (= (or b!5478637 bm!404255) bm!404254))

(declare-fun m!6494710 () Bool)

(assert (=> bm!404253 m!6494710))

(declare-fun m!6494712 () Bool)

(assert (=> bm!404254 m!6494712))

(declare-fun m!6494714 () Bool)

(assert (=> b!5478635 m!6494714))

(assert (=> bm!404138 d!1740473))

(declare-fun d!1740475 () Bool)

(assert (=> d!1740475 (= (isEmpty!34208 (unfocusZipperList!800 zl!343)) (is-Nil!62250 (unfocusZipperList!800 zl!343)))))

(assert (=> b!5477962 d!1740475))

(declare-fun bm!404256 () Bool)

(declare-fun call!404262 () (Set Context!9484))

(declare-fun call!404264 () (Set Context!9484))

(assert (=> bm!404256 (= call!404262 call!404264)))

(declare-fun call!404265 () List!62374)

(declare-fun bm!404257 () Bool)

(declare-fun c!957242 () Bool)

(declare-fun call!404263 () (Set Context!9484))

(assert (=> bm!404257 (= call!404263 (derivationStepZipperDown!784 (ite c!957242 (regTwo!31229 (h!68698 (exprs!5242 lt!2237455))) (regOne!31228 (h!68698 (exprs!5242 lt!2237455)))) (ite c!957242 (Context!9485 (t!375603 (exprs!5242 lt!2237455))) (Context!9485 call!404265)) (h!68697 s!2326)))))

(declare-fun d!1740477 () Bool)

(declare-fun c!957240 () Bool)

(assert (=> d!1740477 (= c!957240 (and (is-ElementMatch!15358 (h!68698 (exprs!5242 lt!2237455))) (= (c!956963 (h!68698 (exprs!5242 lt!2237455))) (h!68697 s!2326))))))

(declare-fun e!3390922 () (Set Context!9484))

(assert (=> d!1740477 (= (derivationStepZipperDown!784 (h!68698 (exprs!5242 lt!2237455)) (Context!9485 (t!375603 (exprs!5242 lt!2237455))) (h!68697 s!2326)) e!3390922)))

(declare-fun b!5478640 () Bool)

(declare-fun c!957239 () Bool)

(declare-fun e!3390926 () Bool)

(assert (=> b!5478640 (= c!957239 e!3390926)))

(declare-fun res!2335486 () Bool)

(assert (=> b!5478640 (=> (not res!2335486) (not e!3390926))))

(assert (=> b!5478640 (= res!2335486 (is-Concat!24203 (h!68698 (exprs!5242 lt!2237455))))))

(declare-fun e!3390924 () (Set Context!9484))

(declare-fun e!3390925 () (Set Context!9484))

(assert (=> b!5478640 (= e!3390924 e!3390925)))

(declare-fun bm!404258 () Bool)

(declare-fun call!404266 () List!62374)

(assert (=> bm!404258 (= call!404266 call!404265)))

(declare-fun b!5478641 () Bool)

(assert (=> b!5478641 (= e!3390926 (nullable!5485 (regOne!31228 (h!68698 (exprs!5242 lt!2237455)))))))

(declare-fun b!5478642 () Bool)

(declare-fun e!3390923 () (Set Context!9484))

(declare-fun call!404261 () (Set Context!9484))

(assert (=> b!5478642 (= e!3390923 call!404261)))

(declare-fun c!957241 () Bool)

(declare-fun bm!404259 () Bool)

(assert (=> bm!404259 (= call!404264 (derivationStepZipperDown!784 (ite c!957242 (regOne!31229 (h!68698 (exprs!5242 lt!2237455))) (ite c!957239 (regTwo!31228 (h!68698 (exprs!5242 lt!2237455))) (ite c!957241 (regOne!31228 (h!68698 (exprs!5242 lt!2237455))) (reg!15687 (h!68698 (exprs!5242 lt!2237455)))))) (ite (or c!957242 c!957239) (Context!9485 (t!375603 (exprs!5242 lt!2237455))) (Context!9485 call!404266)) (h!68697 s!2326)))))

(declare-fun b!5478643 () Bool)

(assert (=> b!5478643 (= e!3390925 (set.union call!404263 call!404262))))

(declare-fun bm!404260 () Bool)

(assert (=> bm!404260 (= call!404261 call!404262)))

(declare-fun b!5478644 () Bool)

(assert (=> b!5478644 (= e!3390924 (set.union call!404264 call!404263))))

(declare-fun b!5478645 () Bool)

(declare-fun e!3390927 () (Set Context!9484))

(assert (=> b!5478645 (= e!3390927 call!404261)))

(declare-fun b!5478646 () Bool)

(assert (=> b!5478646 (= e!3390922 e!3390924)))

(assert (=> b!5478646 (= c!957242 (is-Union!15358 (h!68698 (exprs!5242 lt!2237455))))))

(declare-fun b!5478647 () Bool)

(assert (=> b!5478647 (= e!3390927 (as set.empty (Set Context!9484)))))

(declare-fun bm!404261 () Bool)

(assert (=> bm!404261 (= call!404265 ($colon$colon!1555 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237455)))) (ite (or c!957239 c!957241) (regTwo!31228 (h!68698 (exprs!5242 lt!2237455))) (h!68698 (exprs!5242 lt!2237455)))))))

(declare-fun b!5478648 () Bool)

(declare-fun c!957243 () Bool)

(assert (=> b!5478648 (= c!957243 (is-Star!15358 (h!68698 (exprs!5242 lt!2237455))))))

(assert (=> b!5478648 (= e!3390923 e!3390927)))

(declare-fun b!5478649 () Bool)

(assert (=> b!5478649 (= e!3390925 e!3390923)))

(assert (=> b!5478649 (= c!957241 (is-Concat!24203 (h!68698 (exprs!5242 lt!2237455))))))

(declare-fun b!5478650 () Bool)

(assert (=> b!5478650 (= e!3390922 (set.insert (Context!9485 (t!375603 (exprs!5242 lt!2237455))) (as set.empty (Set Context!9484))))))

(assert (= (and d!1740477 c!957240) b!5478650))

(assert (= (and d!1740477 (not c!957240)) b!5478646))

(assert (= (and b!5478646 c!957242) b!5478644))

(assert (= (and b!5478646 (not c!957242)) b!5478640))

(assert (= (and b!5478640 res!2335486) b!5478641))

(assert (= (and b!5478640 c!957239) b!5478643))

(assert (= (and b!5478640 (not c!957239)) b!5478649))

(assert (= (and b!5478649 c!957241) b!5478642))

(assert (= (and b!5478649 (not c!957241)) b!5478648))

(assert (= (and b!5478648 c!957243) b!5478645))

(assert (= (and b!5478648 (not c!957243)) b!5478647))

(assert (= (or b!5478642 b!5478645) bm!404258))

(assert (= (or b!5478642 b!5478645) bm!404260))

(assert (= (or b!5478643 bm!404258) bm!404261))

(assert (= (or b!5478643 bm!404260) bm!404256))

(assert (= (or b!5478644 b!5478643) bm!404257))

(assert (= (or b!5478644 bm!404256) bm!404259))

(declare-fun m!6494716 () Bool)

(assert (=> b!5478641 m!6494716))

(declare-fun m!6494718 () Bool)

(assert (=> b!5478650 m!6494718))

(declare-fun m!6494720 () Bool)

(assert (=> bm!404259 m!6494720))

(declare-fun m!6494722 () Bool)

(assert (=> bm!404261 m!6494722))

(declare-fun m!6494724 () Bool)

(assert (=> bm!404257 m!6494724))

(assert (=> bm!404121 d!1740477))

(declare-fun d!1740479 () Bool)

(declare-fun res!2335487 () Bool)

(declare-fun e!3390928 () Bool)

(assert (=> d!1740479 (=> res!2335487 e!3390928)))

(assert (=> d!1740479 (= res!2335487 (is-Nil!62250 (exprs!5242 (h!68699 zl!343))))))

(assert (=> d!1740479 (= (forall!14615 (exprs!5242 (h!68699 zl!343)) lambda!292130) e!3390928)))

(declare-fun b!5478651 () Bool)

(declare-fun e!3390929 () Bool)

(assert (=> b!5478651 (= e!3390928 e!3390929)))

(declare-fun res!2335488 () Bool)

(assert (=> b!5478651 (=> (not res!2335488) (not e!3390929))))

(assert (=> b!5478651 (= res!2335488 (dynLambda!24435 lambda!292130 (h!68698 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun b!5478652 () Bool)

(assert (=> b!5478652 (= e!3390929 (forall!14615 (t!375603 (exprs!5242 (h!68699 zl!343))) lambda!292130))))

(assert (= (and d!1740479 (not res!2335487)) b!5478651))

(assert (= (and b!5478651 res!2335488) b!5478652))

(declare-fun b_lambda!208175 () Bool)

(assert (=> (not b_lambda!208175) (not b!5478651)))

(declare-fun m!6494726 () Bool)

(assert (=> b!5478651 m!6494726))

(declare-fun m!6494728 () Bool)

(assert (=> b!5478652 m!6494728))

(assert (=> d!1740191 d!1740479))

(declare-fun b!5478653 () Bool)

(declare-fun e!3390931 () List!62373)

(assert (=> b!5478653 (= e!3390931 (t!375602 s!2326))))

(declare-fun b!5478655 () Bool)

(declare-fun res!2335489 () Bool)

(declare-fun e!3390930 () Bool)

(assert (=> b!5478655 (=> (not res!2335489) (not e!3390930))))

(declare-fun lt!2237670 () List!62373)

(assert (=> b!5478655 (= res!2335489 (= (size!39914 lt!2237670) (+ (size!39914 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249))) (size!39914 (t!375602 s!2326)))))))

(declare-fun b!5478656 () Bool)

(assert (=> b!5478656 (= e!3390930 (or (not (= (t!375602 s!2326) Nil!62249)) (= lt!2237670 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249)))))))

(declare-fun d!1740481 () Bool)

(assert (=> d!1740481 e!3390930))

(declare-fun res!2335490 () Bool)

(assert (=> d!1740481 (=> (not res!2335490) (not e!3390930))))

(assert (=> d!1740481 (= res!2335490 (= (content!11205 lt!2237670) (set.union (content!11205 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249))) (content!11205 (t!375602 s!2326)))))))

(assert (=> d!1740481 (= lt!2237670 e!3390931)))

(declare-fun c!957244 () Bool)

(assert (=> d!1740481 (= c!957244 (is-Nil!62249 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249))))))

(assert (=> d!1740481 (= (++!13699 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249)) (t!375602 s!2326)) lt!2237670)))

(declare-fun b!5478654 () Bool)

(assert (=> b!5478654 (= e!3390931 (Cons!62249 (h!68697 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249))) (++!13699 (t!375602 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249))) (t!375602 s!2326))))))

(assert (= (and d!1740481 c!957244) b!5478653))

(assert (= (and d!1740481 (not c!957244)) b!5478654))

(assert (= (and d!1740481 res!2335490) b!5478655))

(assert (= (and b!5478655 res!2335489) b!5478656))

(declare-fun m!6494730 () Bool)

(assert (=> b!5478655 m!6494730))

(assert (=> b!5478655 m!6494168))

(declare-fun m!6494732 () Bool)

(assert (=> b!5478655 m!6494732))

(declare-fun m!6494734 () Bool)

(assert (=> b!5478655 m!6494734))

(declare-fun m!6494736 () Bool)

(assert (=> d!1740481 m!6494736))

(assert (=> d!1740481 m!6494168))

(declare-fun m!6494738 () Bool)

(assert (=> d!1740481 m!6494738))

(declare-fun m!6494740 () Bool)

(assert (=> d!1740481 m!6494740))

(declare-fun m!6494742 () Bool)

(assert (=> b!5478654 m!6494742))

(assert (=> b!5478056 d!1740481))

(declare-fun b!5478657 () Bool)

(declare-fun e!3390933 () List!62373)

(assert (=> b!5478657 (= e!3390933 (Cons!62249 (h!68697 s!2326) Nil!62249))))

(declare-fun b!5478659 () Bool)

(declare-fun res!2335491 () Bool)

(declare-fun e!3390932 () Bool)

(assert (=> b!5478659 (=> (not res!2335491) (not e!3390932))))

(declare-fun lt!2237671 () List!62373)

(assert (=> b!5478659 (= res!2335491 (= (size!39914 lt!2237671) (+ (size!39914 Nil!62249) (size!39914 (Cons!62249 (h!68697 s!2326) Nil!62249)))))))

(declare-fun b!5478660 () Bool)

(assert (=> b!5478660 (= e!3390932 (or (not (= (Cons!62249 (h!68697 s!2326) Nil!62249) Nil!62249)) (= lt!2237671 Nil!62249)))))

(declare-fun d!1740483 () Bool)

(assert (=> d!1740483 e!3390932))

(declare-fun res!2335492 () Bool)

(assert (=> d!1740483 (=> (not res!2335492) (not e!3390932))))

(assert (=> d!1740483 (= res!2335492 (= (content!11205 lt!2237671) (set.union (content!11205 Nil!62249) (content!11205 (Cons!62249 (h!68697 s!2326) Nil!62249)))))))

(assert (=> d!1740483 (= lt!2237671 e!3390933)))

(declare-fun c!957245 () Bool)

(assert (=> d!1740483 (= c!957245 (is-Nil!62249 Nil!62249))))

(assert (=> d!1740483 (= (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249)) lt!2237671)))

(declare-fun b!5478658 () Bool)

(assert (=> b!5478658 (= e!3390933 (Cons!62249 (h!68697 Nil!62249) (++!13699 (t!375602 Nil!62249) (Cons!62249 (h!68697 s!2326) Nil!62249))))))

(assert (= (and d!1740483 c!957245) b!5478657))

(assert (= (and d!1740483 (not c!957245)) b!5478658))

(assert (= (and d!1740483 res!2335492) b!5478659))

(assert (= (and b!5478659 res!2335491) b!5478660))

(declare-fun m!6494744 () Bool)

(assert (=> b!5478659 m!6494744))

(declare-fun m!6494746 () Bool)

(assert (=> b!5478659 m!6494746))

(declare-fun m!6494748 () Bool)

(assert (=> b!5478659 m!6494748))

(declare-fun m!6494750 () Bool)

(assert (=> d!1740483 m!6494750))

(declare-fun m!6494752 () Bool)

(assert (=> d!1740483 m!6494752))

(declare-fun m!6494754 () Bool)

(assert (=> d!1740483 m!6494754))

(declare-fun m!6494756 () Bool)

(assert (=> b!5478658 m!6494756))

(assert (=> b!5478056 d!1740483))

(declare-fun d!1740485 () Bool)

(assert (=> d!1740485 (= (++!13699 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249)) (t!375602 s!2326)) s!2326)))

(declare-fun lt!2237674 () Unit!155166)

(declare-fun choose!41691 (List!62373 C!30986 List!62373 List!62373) Unit!155166)

(assert (=> d!1740485 (= lt!2237674 (choose!41691 Nil!62249 (h!68697 s!2326) (t!375602 s!2326) s!2326))))

(assert (=> d!1740485 (= (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) (t!375602 s!2326))) s!2326)))

(assert (=> d!1740485 (= (lemmaMoveElementToOtherListKeepsConcatEq!1904 Nil!62249 (h!68697 s!2326) (t!375602 s!2326) s!2326) lt!2237674)))

(declare-fun bs!1265951 () Bool)

(assert (= bs!1265951 d!1740485))

(assert (=> bs!1265951 m!6494168))

(assert (=> bs!1265951 m!6494168))

(assert (=> bs!1265951 m!6494170))

(declare-fun m!6494758 () Bool)

(assert (=> bs!1265951 m!6494758))

(declare-fun m!6494760 () Bool)

(assert (=> bs!1265951 m!6494760))

(assert (=> b!5478056 d!1740485))

(declare-fun b!5478661 () Bool)

(declare-fun e!3390934 () Bool)

(assert (=> b!5478661 (= e!3390934 (matchR!7543 r!7292 (t!375602 s!2326)))))

(declare-fun b!5478662 () Bool)

(declare-fun res!2335496 () Bool)

(declare-fun e!3390936 () Bool)

(assert (=> b!5478662 (=> (not res!2335496) (not e!3390936))))

(declare-fun lt!2237677 () Option!15467)

(assert (=> b!5478662 (= res!2335496 (matchR!7543 r!7292 (_2!35858 (get!21468 lt!2237677))))))

(declare-fun d!1740487 () Bool)

(declare-fun e!3390935 () Bool)

(assert (=> d!1740487 e!3390935))

(declare-fun res!2335493 () Bool)

(assert (=> d!1740487 (=> res!2335493 e!3390935)))

(assert (=> d!1740487 (= res!2335493 e!3390936)))

(declare-fun res!2335497 () Bool)

(assert (=> d!1740487 (=> (not res!2335497) (not e!3390936))))

(assert (=> d!1740487 (= res!2335497 (isDefined!12170 lt!2237677))))

(declare-fun e!3390937 () Option!15467)

(assert (=> d!1740487 (= lt!2237677 e!3390937)))

(declare-fun c!957246 () Bool)

(assert (=> d!1740487 (= c!957246 e!3390934)))

(declare-fun res!2335495 () Bool)

(assert (=> d!1740487 (=> (not res!2335495) (not e!3390934))))

(assert (=> d!1740487 (= res!2335495 (matchR!7543 (reg!15687 r!7292) (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249))))))

(assert (=> d!1740487 (validRegex!7094 (reg!15687 r!7292))))

(assert (=> d!1740487 (= (findConcatSeparation!1881 (reg!15687 r!7292) r!7292 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249)) (t!375602 s!2326) s!2326) lt!2237677)))

(declare-fun b!5478663 () Bool)

(declare-fun e!3390938 () Option!15467)

(assert (=> b!5478663 (= e!3390937 e!3390938)))

(declare-fun c!957247 () Bool)

(assert (=> b!5478663 (= c!957247 (is-Nil!62249 (t!375602 s!2326)))))

(declare-fun b!5478664 () Bool)

(assert (=> b!5478664 (= e!3390936 (= (++!13699 (_1!35858 (get!21468 lt!2237677)) (_2!35858 (get!21468 lt!2237677))) s!2326))))

(declare-fun b!5478665 () Bool)

(assert (=> b!5478665 (= e!3390935 (not (isDefined!12170 lt!2237677)))))

(declare-fun b!5478666 () Bool)

(assert (=> b!5478666 (= e!3390937 (Some!15466 (tuple2!65111 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249)) (t!375602 s!2326))))))

(declare-fun b!5478667 () Bool)

(declare-fun lt!2237675 () Unit!155166)

(declare-fun lt!2237676 () Unit!155166)

(assert (=> b!5478667 (= lt!2237675 lt!2237676)))

(assert (=> b!5478667 (= (++!13699 (++!13699 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249)) (Cons!62249 (h!68697 (t!375602 s!2326)) Nil!62249)) (t!375602 (t!375602 s!2326))) s!2326)))

(assert (=> b!5478667 (= lt!2237676 (lemmaMoveElementToOtherListKeepsConcatEq!1904 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249)) (h!68697 (t!375602 s!2326)) (t!375602 (t!375602 s!2326)) s!2326))))

(assert (=> b!5478667 (= e!3390938 (findConcatSeparation!1881 (reg!15687 r!7292) r!7292 (++!13699 (++!13699 Nil!62249 (Cons!62249 (h!68697 s!2326) Nil!62249)) (Cons!62249 (h!68697 (t!375602 s!2326)) Nil!62249)) (t!375602 (t!375602 s!2326)) s!2326))))

(declare-fun b!5478668 () Bool)

(declare-fun res!2335494 () Bool)

(assert (=> b!5478668 (=> (not res!2335494) (not e!3390936))))

(assert (=> b!5478668 (= res!2335494 (matchR!7543 (reg!15687 r!7292) (_1!35858 (get!21468 lt!2237677))))))

(declare-fun b!5478669 () Bool)

(assert (=> b!5478669 (= e!3390938 None!15466)))

(assert (= (and d!1740487 res!2335495) b!5478661))

(assert (= (and d!1740487 c!957246) b!5478666))

(assert (= (and d!1740487 (not c!957246)) b!5478663))

(assert (= (and b!5478663 c!957247) b!5478669))

(assert (= (and b!5478663 (not c!957247)) b!5478667))

(assert (= (and d!1740487 res!2335497) b!5478668))

(assert (= (and b!5478668 res!2335494) b!5478662))

(assert (= (and b!5478662 res!2335496) b!5478664))

(assert (= (and d!1740487 (not res!2335493)) b!5478665))

(assert (=> b!5478667 m!6494168))

(declare-fun m!6494762 () Bool)

(assert (=> b!5478667 m!6494762))

(assert (=> b!5478667 m!6494762))

(declare-fun m!6494764 () Bool)

(assert (=> b!5478667 m!6494764))

(assert (=> b!5478667 m!6494168))

(declare-fun m!6494766 () Bool)

(assert (=> b!5478667 m!6494766))

(assert (=> b!5478667 m!6494762))

(declare-fun m!6494768 () Bool)

(assert (=> b!5478667 m!6494768))

(declare-fun m!6494770 () Bool)

(assert (=> d!1740487 m!6494770))

(assert (=> d!1740487 m!6494168))

(declare-fun m!6494772 () Bool)

(assert (=> d!1740487 m!6494772))

(assert (=> d!1740487 m!6494140))

(assert (=> b!5478665 m!6494770))

(declare-fun m!6494774 () Bool)

(assert (=> b!5478668 m!6494774))

(declare-fun m!6494776 () Bool)

(assert (=> b!5478668 m!6494776))

(declare-fun m!6494778 () Bool)

(assert (=> b!5478661 m!6494778))

(assert (=> b!5478662 m!6494774))

(declare-fun m!6494780 () Bool)

(assert (=> b!5478662 m!6494780))

(assert (=> b!5478664 m!6494774))

(declare-fun m!6494782 () Bool)

(assert (=> b!5478664 m!6494782))

(assert (=> b!5478056 d!1740487))

(declare-fun bm!404262 () Bool)

(declare-fun call!404268 () (Set Context!9484))

(declare-fun call!404270 () (Set Context!9484))

(assert (=> bm!404262 (= call!404268 call!404270)))

(declare-fun c!957251 () Bool)

(declare-fun bm!404263 () Bool)

(declare-fun call!404269 () (Set Context!9484))

(declare-fun call!404271 () List!62374)

(assert (=> bm!404263 (= call!404269 (derivationStepZipperDown!784 (ite c!957251 (regTwo!31229 (h!68698 (exprs!5242 lt!2237457))) (regOne!31228 (h!68698 (exprs!5242 lt!2237457)))) (ite c!957251 (Context!9485 (t!375603 (exprs!5242 lt!2237457))) (Context!9485 call!404271)) (h!68697 s!2326)))))

(declare-fun d!1740489 () Bool)

(declare-fun c!957249 () Bool)

(assert (=> d!1740489 (= c!957249 (and (is-ElementMatch!15358 (h!68698 (exprs!5242 lt!2237457))) (= (c!956963 (h!68698 (exprs!5242 lt!2237457))) (h!68697 s!2326))))))

(declare-fun e!3390939 () (Set Context!9484))

(assert (=> d!1740489 (= (derivationStepZipperDown!784 (h!68698 (exprs!5242 lt!2237457)) (Context!9485 (t!375603 (exprs!5242 lt!2237457))) (h!68697 s!2326)) e!3390939)))

(declare-fun b!5478670 () Bool)

(declare-fun c!957248 () Bool)

(declare-fun e!3390943 () Bool)

(assert (=> b!5478670 (= c!957248 e!3390943)))

(declare-fun res!2335498 () Bool)

(assert (=> b!5478670 (=> (not res!2335498) (not e!3390943))))

(assert (=> b!5478670 (= res!2335498 (is-Concat!24203 (h!68698 (exprs!5242 lt!2237457))))))

(declare-fun e!3390941 () (Set Context!9484))

(declare-fun e!3390942 () (Set Context!9484))

(assert (=> b!5478670 (= e!3390941 e!3390942)))

(declare-fun bm!404264 () Bool)

(declare-fun call!404272 () List!62374)

(assert (=> bm!404264 (= call!404272 call!404271)))

(declare-fun b!5478671 () Bool)

(assert (=> b!5478671 (= e!3390943 (nullable!5485 (regOne!31228 (h!68698 (exprs!5242 lt!2237457)))))))

(declare-fun b!5478672 () Bool)

(declare-fun e!3390940 () (Set Context!9484))

(declare-fun call!404267 () (Set Context!9484))

(assert (=> b!5478672 (= e!3390940 call!404267)))

(declare-fun c!957250 () Bool)

(declare-fun bm!404265 () Bool)

(assert (=> bm!404265 (= call!404270 (derivationStepZipperDown!784 (ite c!957251 (regOne!31229 (h!68698 (exprs!5242 lt!2237457))) (ite c!957248 (regTwo!31228 (h!68698 (exprs!5242 lt!2237457))) (ite c!957250 (regOne!31228 (h!68698 (exprs!5242 lt!2237457))) (reg!15687 (h!68698 (exprs!5242 lt!2237457)))))) (ite (or c!957251 c!957248) (Context!9485 (t!375603 (exprs!5242 lt!2237457))) (Context!9485 call!404272)) (h!68697 s!2326)))))

(declare-fun b!5478673 () Bool)

(assert (=> b!5478673 (= e!3390942 (set.union call!404269 call!404268))))

(declare-fun bm!404266 () Bool)

(assert (=> bm!404266 (= call!404267 call!404268)))

(declare-fun b!5478674 () Bool)

(assert (=> b!5478674 (= e!3390941 (set.union call!404270 call!404269))))

(declare-fun b!5478675 () Bool)

(declare-fun e!3390944 () (Set Context!9484))

(assert (=> b!5478675 (= e!3390944 call!404267)))

(declare-fun b!5478676 () Bool)

(assert (=> b!5478676 (= e!3390939 e!3390941)))

(assert (=> b!5478676 (= c!957251 (is-Union!15358 (h!68698 (exprs!5242 lt!2237457))))))

(declare-fun b!5478677 () Bool)

(assert (=> b!5478677 (= e!3390944 (as set.empty (Set Context!9484)))))

(declare-fun bm!404267 () Bool)

(assert (=> bm!404267 (= call!404271 ($colon$colon!1555 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237457)))) (ite (or c!957248 c!957250) (regTwo!31228 (h!68698 (exprs!5242 lt!2237457))) (h!68698 (exprs!5242 lt!2237457)))))))

(declare-fun b!5478678 () Bool)

(declare-fun c!957252 () Bool)

(assert (=> b!5478678 (= c!957252 (is-Star!15358 (h!68698 (exprs!5242 lt!2237457))))))

(assert (=> b!5478678 (= e!3390940 e!3390944)))

(declare-fun b!5478679 () Bool)

(assert (=> b!5478679 (= e!3390942 e!3390940)))

(assert (=> b!5478679 (= c!957250 (is-Concat!24203 (h!68698 (exprs!5242 lt!2237457))))))

(declare-fun b!5478680 () Bool)

(assert (=> b!5478680 (= e!3390939 (set.insert (Context!9485 (t!375603 (exprs!5242 lt!2237457))) (as set.empty (Set Context!9484))))))

(assert (= (and d!1740489 c!957249) b!5478680))

(assert (= (and d!1740489 (not c!957249)) b!5478676))

(assert (= (and b!5478676 c!957251) b!5478674))

(assert (= (and b!5478676 (not c!957251)) b!5478670))

(assert (= (and b!5478670 res!2335498) b!5478671))

(assert (= (and b!5478670 c!957248) b!5478673))

(assert (= (and b!5478670 (not c!957248)) b!5478679))

(assert (= (and b!5478679 c!957250) b!5478672))

(assert (= (and b!5478679 (not c!957250)) b!5478678))

(assert (= (and b!5478678 c!957252) b!5478675))

(assert (= (and b!5478678 (not c!957252)) b!5478677))

(assert (= (or b!5478672 b!5478675) bm!404264))

(assert (= (or b!5478672 b!5478675) bm!404266))

(assert (= (or b!5478673 bm!404264) bm!404267))

(assert (= (or b!5478673 bm!404266) bm!404262))

(assert (= (or b!5478674 b!5478673) bm!404263))

(assert (= (or b!5478674 bm!404262) bm!404265))

(declare-fun m!6494784 () Bool)

(assert (=> b!5478671 m!6494784))

(declare-fun m!6494786 () Bool)

(assert (=> b!5478680 m!6494786))

(declare-fun m!6494788 () Bool)

(assert (=> bm!404265 m!6494788))

(declare-fun m!6494790 () Bool)

(assert (=> bm!404267 m!6494790))

(declare-fun m!6494792 () Bool)

(assert (=> bm!404263 m!6494792))

(assert (=> bm!404122 d!1740489))

(declare-fun d!1740491 () Bool)

(declare-fun c!957253 () Bool)

(declare-fun e!3390947 () Bool)

(assert (=> d!1740491 (= c!957253 e!3390947)))

(declare-fun res!2335499 () Bool)

(assert (=> d!1740491 (=> (not res!2335499) (not e!3390947))))

(assert (=> d!1740491 (= res!2335499 (is-Cons!62250 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237476))))))))

(declare-fun e!3390946 () (Set Context!9484))

(assert (=> d!1740491 (= (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 lt!2237476))) (h!68697 s!2326)) e!3390946)))

(declare-fun b!5478681 () Bool)

(declare-fun e!3390945 () (Set Context!9484))

(assert (=> b!5478681 (= e!3390945 (as set.empty (Set Context!9484)))))

(declare-fun b!5478682 () Bool)

(declare-fun call!404273 () (Set Context!9484))

(assert (=> b!5478682 (= e!3390945 call!404273)))

(declare-fun b!5478683 () Bool)

(assert (=> b!5478683 (= e!3390947 (nullable!5485 (h!68698 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237476)))))))))

(declare-fun b!5478684 () Bool)

(assert (=> b!5478684 (= e!3390946 (set.union call!404273 (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237476)))))) (h!68697 s!2326))))))

(declare-fun b!5478685 () Bool)

(assert (=> b!5478685 (= e!3390946 e!3390945)))

(declare-fun c!957254 () Bool)

(assert (=> b!5478685 (= c!957254 (is-Cons!62250 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237476))))))))

(declare-fun bm!404268 () Bool)

(assert (=> bm!404268 (= call!404273 (derivationStepZipperDown!784 (h!68698 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237476))))) (Context!9485 (t!375603 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237476)))))) (h!68697 s!2326)))))

(assert (= (and d!1740491 res!2335499) b!5478683))

(assert (= (and d!1740491 c!957253) b!5478684))

(assert (= (and d!1740491 (not c!957253)) b!5478685))

(assert (= (and b!5478685 c!957254) b!5478682))

(assert (= (and b!5478685 (not c!957254)) b!5478681))

(assert (= (or b!5478684 b!5478682) bm!404268))

(declare-fun m!6494794 () Bool)

(assert (=> b!5478683 m!6494794))

(declare-fun m!6494796 () Bool)

(assert (=> b!5478684 m!6494796))

(declare-fun m!6494798 () Bool)

(assert (=> bm!404268 m!6494798))

(assert (=> b!5478101 d!1740491))

(assert (=> b!5477970 d!1740181))

(declare-fun bs!1265952 () Bool)

(declare-fun d!1740493 () Bool)

(assert (= bs!1265952 (and d!1740493 d!1740403)))

(declare-fun lambda!292212 () Int)

(assert (=> bs!1265952 (= lambda!292212 lambda!292205)))

(declare-fun bs!1265953 () Bool)

(assert (= bs!1265953 (and d!1740493 d!1740391)))

(assert (=> bs!1265953 (= lambda!292212 lambda!292199)))

(declare-fun bs!1265954 () Bool)

(assert (= bs!1265954 (and d!1740493 d!1740211)))

(assert (=> bs!1265954 (= lambda!292212 lambda!292145)))

(declare-fun bs!1265955 () Bool)

(assert (= bs!1265955 (and d!1740493 b!5477487)))

(assert (=> bs!1265955 (= lambda!292212 lambda!292088)))

(declare-fun bs!1265956 () Bool)

(assert (= bs!1265956 (and d!1740493 d!1740181)))

(assert (=> bs!1265956 (= lambda!292212 lambda!292126)))

(declare-fun bs!1265957 () Bool)

(assert (= bs!1265957 (and d!1740493 d!1740401)))

(assert (=> bs!1265957 (= lambda!292212 lambda!292204)))

(declare-fun bs!1265958 () Bool)

(assert (= bs!1265958 (and d!1740493 d!1740395)))

(assert (=> bs!1265958 (= lambda!292212 lambda!292203)))

(declare-fun bs!1265959 () Bool)

(assert (= bs!1265959 (and d!1740493 d!1740189)))

(assert (=> bs!1265959 (= lambda!292212 lambda!292129)))

(declare-fun bs!1265960 () Bool)

(assert (= bs!1265960 (and d!1740493 d!1740209)))

(assert (=> bs!1265960 (= lambda!292212 lambda!292142)))

(declare-fun bs!1265961 () Bool)

(assert (= bs!1265961 (and d!1740493 d!1740261)))

(assert (=> bs!1265961 (= lambda!292212 lambda!292164)))

(declare-fun bs!1265962 () Bool)

(assert (= bs!1265962 (and d!1740493 d!1740191)))

(assert (=> bs!1265962 (= lambda!292212 lambda!292130)))

(declare-fun bs!1265963 () Bool)

(assert (= bs!1265963 (and d!1740493 d!1740389)))

(assert (=> bs!1265963 (= lambda!292212 lambda!292198)))

(declare-fun lt!2237678 () List!62374)

(assert (=> d!1740493 (forall!14615 lt!2237678 lambda!292212)))

(declare-fun e!3390948 () List!62374)

(assert (=> d!1740493 (= lt!2237678 e!3390948)))

(declare-fun c!957255 () Bool)

(assert (=> d!1740493 (= c!957255 (is-Cons!62251 (t!375604 zl!343)))))

(assert (=> d!1740493 (= (unfocusZipperList!800 (t!375604 zl!343)) lt!2237678)))

(declare-fun b!5478686 () Bool)

(assert (=> b!5478686 (= e!3390948 (Cons!62250 (generalisedConcat!1027 (exprs!5242 (h!68699 (t!375604 zl!343)))) (unfocusZipperList!800 (t!375604 (t!375604 zl!343)))))))

(declare-fun b!5478687 () Bool)

(assert (=> b!5478687 (= e!3390948 Nil!62250)))

(assert (= (and d!1740493 c!957255) b!5478686))

(assert (= (and d!1740493 (not c!957255)) b!5478687))

(declare-fun m!6494800 () Bool)

(assert (=> d!1740493 m!6494800))

(declare-fun m!6494802 () Bool)

(assert (=> b!5478686 m!6494802))

(declare-fun m!6494804 () Bool)

(assert (=> b!5478686 m!6494804))

(assert (=> b!5477970 d!1740493))

(declare-fun d!1740495 () Bool)

(assert (=> d!1740495 (= (isEmpty!34208 (tail!10833 (exprs!5242 (h!68699 zl!343)))) (is-Nil!62250 (tail!10833 (exprs!5242 (h!68699 zl!343)))))))

(assert (=> b!5477797 d!1740495))

(declare-fun d!1740497 () Bool)

(assert (=> d!1740497 (= (tail!10833 (exprs!5242 (h!68699 zl!343))) (t!375603 (exprs!5242 (h!68699 zl!343))))))

(assert (=> b!5477797 d!1740497))

(declare-fun bm!404269 () Bool)

(declare-fun call!404275 () (Set Context!9484))

(declare-fun call!404277 () (Set Context!9484))

(assert (=> bm!404269 (= call!404275 call!404277)))

(declare-fun call!404278 () List!62374)

(declare-fun c!957259 () Bool)

(declare-fun bm!404270 () Bool)

(declare-fun call!404276 () (Set Context!9484))

(assert (=> bm!404270 (= call!404276 (derivationStepZipperDown!784 (ite c!957259 (regTwo!31229 (h!68698 (exprs!5242 (h!68699 zl!343)))) (regOne!31228 (h!68698 (exprs!5242 (h!68699 zl!343))))) (ite c!957259 (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343)))) (Context!9485 call!404278)) (h!68697 s!2326)))))

(declare-fun d!1740499 () Bool)

(declare-fun c!957257 () Bool)

(assert (=> d!1740499 (= c!957257 (and (is-ElementMatch!15358 (h!68698 (exprs!5242 (h!68699 zl!343)))) (= (c!956963 (h!68698 (exprs!5242 (h!68699 zl!343)))) (h!68697 s!2326))))))

(declare-fun e!3390949 () (Set Context!9484))

(assert (=> d!1740499 (= (derivationStepZipperDown!784 (h!68698 (exprs!5242 (h!68699 zl!343))) (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343)))) (h!68697 s!2326)) e!3390949)))

(declare-fun b!5478688 () Bool)

(declare-fun c!957256 () Bool)

(declare-fun e!3390953 () Bool)

(assert (=> b!5478688 (= c!957256 e!3390953)))

(declare-fun res!2335500 () Bool)

(assert (=> b!5478688 (=> (not res!2335500) (not e!3390953))))

(assert (=> b!5478688 (= res!2335500 (is-Concat!24203 (h!68698 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun e!3390951 () (Set Context!9484))

(declare-fun e!3390952 () (Set Context!9484))

(assert (=> b!5478688 (= e!3390951 e!3390952)))

(declare-fun bm!404271 () Bool)

(declare-fun call!404279 () List!62374)

(assert (=> bm!404271 (= call!404279 call!404278)))

(declare-fun b!5478689 () Bool)

(assert (=> b!5478689 (= e!3390953 (nullable!5485 (regOne!31228 (h!68698 (exprs!5242 (h!68699 zl!343))))))))

(declare-fun b!5478690 () Bool)

(declare-fun e!3390950 () (Set Context!9484))

(declare-fun call!404274 () (Set Context!9484))

(assert (=> b!5478690 (= e!3390950 call!404274)))

(declare-fun c!957258 () Bool)

(declare-fun bm!404272 () Bool)

(assert (=> bm!404272 (= call!404277 (derivationStepZipperDown!784 (ite c!957259 (regOne!31229 (h!68698 (exprs!5242 (h!68699 zl!343)))) (ite c!957256 (regTwo!31228 (h!68698 (exprs!5242 (h!68699 zl!343)))) (ite c!957258 (regOne!31228 (h!68698 (exprs!5242 (h!68699 zl!343)))) (reg!15687 (h!68698 (exprs!5242 (h!68699 zl!343))))))) (ite (or c!957259 c!957256) (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343)))) (Context!9485 call!404279)) (h!68697 s!2326)))))

(declare-fun b!5478691 () Bool)

(assert (=> b!5478691 (= e!3390952 (set.union call!404276 call!404275))))

(declare-fun bm!404273 () Bool)

(assert (=> bm!404273 (= call!404274 call!404275)))

(declare-fun b!5478692 () Bool)

(assert (=> b!5478692 (= e!3390951 (set.union call!404277 call!404276))))

(declare-fun b!5478693 () Bool)

(declare-fun e!3390954 () (Set Context!9484))

(assert (=> b!5478693 (= e!3390954 call!404274)))

(declare-fun b!5478694 () Bool)

(assert (=> b!5478694 (= e!3390949 e!3390951)))

(assert (=> b!5478694 (= c!957259 (is-Union!15358 (h!68698 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun b!5478695 () Bool)

(assert (=> b!5478695 (= e!3390954 (as set.empty (Set Context!9484)))))

(declare-fun bm!404274 () Bool)

(assert (=> bm!404274 (= call!404278 ($colon$colon!1555 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343))))) (ite (or c!957256 c!957258) (regTwo!31228 (h!68698 (exprs!5242 (h!68699 zl!343)))) (h!68698 (exprs!5242 (h!68699 zl!343))))))))

(declare-fun b!5478696 () Bool)

(declare-fun c!957260 () Bool)

(assert (=> b!5478696 (= c!957260 (is-Star!15358 (h!68698 (exprs!5242 (h!68699 zl!343)))))))

(assert (=> b!5478696 (= e!3390950 e!3390954)))

(declare-fun b!5478697 () Bool)

(assert (=> b!5478697 (= e!3390952 e!3390950)))

(assert (=> b!5478697 (= c!957258 (is-Concat!24203 (h!68698 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun b!5478698 () Bool)

(assert (=> b!5478698 (= e!3390949 (set.insert (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343)))) (as set.empty (Set Context!9484))))))

(assert (= (and d!1740499 c!957257) b!5478698))

(assert (= (and d!1740499 (not c!957257)) b!5478694))

(assert (= (and b!5478694 c!957259) b!5478692))

(assert (= (and b!5478694 (not c!957259)) b!5478688))

(assert (= (and b!5478688 res!2335500) b!5478689))

(assert (= (and b!5478688 c!957256) b!5478691))

(assert (= (and b!5478688 (not c!957256)) b!5478697))

(assert (= (and b!5478697 c!957258) b!5478690))

(assert (= (and b!5478697 (not c!957258)) b!5478696))

(assert (= (and b!5478696 c!957260) b!5478693))

(assert (= (and b!5478696 (not c!957260)) b!5478695))

(assert (= (or b!5478690 b!5478693) bm!404271))

(assert (= (or b!5478690 b!5478693) bm!404273))

(assert (= (or b!5478691 bm!404271) bm!404274))

(assert (= (or b!5478691 bm!404273) bm!404269))

(assert (= (or b!5478692 b!5478691) bm!404270))

(assert (= (or b!5478692 bm!404269) bm!404272))

(declare-fun m!6494806 () Bool)

(assert (=> b!5478689 m!6494806))

(declare-fun m!6494808 () Bool)

(assert (=> b!5478698 m!6494808))

(declare-fun m!6494810 () Bool)

(assert (=> bm!404272 m!6494810))

(declare-fun m!6494812 () Bool)

(assert (=> bm!404274 m!6494812))

(declare-fun m!6494814 () Bool)

(assert (=> bm!404270 m!6494814))

(assert (=> bm!404191 d!1740499))

(assert (=> d!1740197 d!1740229))

(declare-fun d!1740501 () Bool)

(declare-fun res!2335502 () Bool)

(declare-fun e!3390961 () Bool)

(assert (=> d!1740501 (=> res!2335502 e!3390961)))

(assert (=> d!1740501 (= res!2335502 (is-ElementMatch!15358 lt!2237470))))

(assert (=> d!1740501 (= (validRegex!7094 lt!2237470) e!3390961)))

(declare-fun bm!404275 () Bool)

(declare-fun call!404281 () Bool)

(declare-fun c!957262 () Bool)

(assert (=> bm!404275 (= call!404281 (validRegex!7094 (ite c!957262 (regTwo!31229 lt!2237470) (regTwo!31228 lt!2237470))))))

(declare-fun b!5478699 () Bool)

(declare-fun e!3390958 () Bool)

(assert (=> b!5478699 (= e!3390958 call!404281)))

(declare-fun b!5478700 () Bool)

(declare-fun e!3390959 () Bool)

(declare-fun e!3390955 () Bool)

(assert (=> b!5478700 (= e!3390959 e!3390955)))

(assert (=> b!5478700 (= c!957262 (is-Union!15358 lt!2237470))))

(declare-fun call!404280 () Bool)

(declare-fun c!957261 () Bool)

(declare-fun bm!404276 () Bool)

(assert (=> bm!404276 (= call!404280 (validRegex!7094 (ite c!957261 (reg!15687 lt!2237470) (ite c!957262 (regOne!31229 lt!2237470) (regOne!31228 lt!2237470)))))))

(declare-fun b!5478701 () Bool)

(declare-fun e!3390957 () Bool)

(assert (=> b!5478701 (= e!3390957 e!3390958)))

(declare-fun res!2335504 () Bool)

(assert (=> b!5478701 (=> (not res!2335504) (not e!3390958))))

(declare-fun call!404282 () Bool)

(assert (=> b!5478701 (= res!2335504 call!404282)))

(declare-fun b!5478702 () Bool)

(declare-fun e!3390960 () Bool)

(assert (=> b!5478702 (= e!3390960 call!404281)))

(declare-fun b!5478703 () Bool)

(declare-fun e!3390956 () Bool)

(assert (=> b!5478703 (= e!3390959 e!3390956)))

(declare-fun res!2335501 () Bool)

(assert (=> b!5478703 (= res!2335501 (not (nullable!5485 (reg!15687 lt!2237470))))))

(assert (=> b!5478703 (=> (not res!2335501) (not e!3390956))))

(declare-fun b!5478704 () Bool)

(declare-fun res!2335505 () Bool)

(assert (=> b!5478704 (=> res!2335505 e!3390957)))

(assert (=> b!5478704 (= res!2335505 (not (is-Concat!24203 lt!2237470)))))

(assert (=> b!5478704 (= e!3390955 e!3390957)))

(declare-fun bm!404277 () Bool)

(assert (=> bm!404277 (= call!404282 call!404280)))

(declare-fun b!5478705 () Bool)

(assert (=> b!5478705 (= e!3390956 call!404280)))

(declare-fun b!5478706 () Bool)

(assert (=> b!5478706 (= e!3390961 e!3390959)))

(assert (=> b!5478706 (= c!957261 (is-Star!15358 lt!2237470))))

(declare-fun b!5478707 () Bool)

(declare-fun res!2335503 () Bool)

(assert (=> b!5478707 (=> (not res!2335503) (not e!3390960))))

(assert (=> b!5478707 (= res!2335503 call!404282)))

(assert (=> b!5478707 (= e!3390955 e!3390960)))

(assert (= (and d!1740501 (not res!2335502)) b!5478706))

(assert (= (and b!5478706 c!957261) b!5478703))

(assert (= (and b!5478706 (not c!957261)) b!5478700))

(assert (= (and b!5478703 res!2335501) b!5478705))

(assert (= (and b!5478700 c!957262) b!5478707))

(assert (= (and b!5478700 (not c!957262)) b!5478704))

(assert (= (and b!5478707 res!2335503) b!5478702))

(assert (= (and b!5478704 (not res!2335505)) b!5478701))

(assert (= (and b!5478701 res!2335504) b!5478699))

(assert (= (or b!5478702 b!5478699) bm!404275))

(assert (= (or b!5478707 b!5478701) bm!404277))

(assert (= (or b!5478705 bm!404277) bm!404276))

(declare-fun m!6494816 () Bool)

(assert (=> bm!404275 m!6494816))

(declare-fun m!6494818 () Bool)

(assert (=> bm!404276 m!6494818))

(declare-fun m!6494820 () Bool)

(assert (=> b!5478703 m!6494820))

(assert (=> d!1740197 d!1740501))

(assert (=> b!5477869 d!1740397))

(assert (=> b!5477764 d!1740397))

(assert (=> bm!404127 d!1740229))

(declare-fun bs!1265964 () Bool)

(declare-fun b!5478717 () Bool)

(assert (= bs!1265964 (and b!5478717 b!5478592)))

(declare-fun lambda!292213 () Int)

(assert (=> bs!1265964 (not (= lambda!292213 lambda!292210))))

(declare-fun bs!1265965 () Bool)

(assert (= bs!1265965 (and b!5478717 d!1740225)))

(assert (=> bs!1265965 (not (= lambda!292213 lambda!292156))))

(declare-fun bs!1265966 () Bool)

(assert (= bs!1265966 (and b!5478717 b!5477508)))

(assert (=> bs!1265966 (= (and (= (reg!15687 (regTwo!31229 lt!2237470)) (reg!15687 r!7292)) (= (regTwo!31229 lt!2237470) r!7292)) (= lambda!292213 lambda!292085))))

(declare-fun bs!1265967 () Bool)

(assert (= bs!1265967 (and b!5478717 b!5477861)))

(assert (=> bs!1265967 (= (and (= (reg!15687 (regTwo!31229 lt!2237470)) (reg!15687 lt!2237470)) (= (regTwo!31229 lt!2237470) lt!2237470)) (= lambda!292213 lambda!292131))))

(assert (=> bs!1265966 (not (= lambda!292213 lambda!292086))))

(declare-fun bs!1265968 () Bool)

(assert (= bs!1265968 (and b!5478717 b!5478566)))

(assert (=> bs!1265968 (not (= lambda!292213 lambda!292208))))

(declare-fun bs!1265969 () Bool)

(assert (= bs!1265969 (and b!5478717 b!5477853)))

(assert (=> bs!1265969 (not (= lambda!292213 lambda!292133))))

(assert (=> bs!1265966 (not (= lambda!292213 lambda!292084))))

(declare-fun bs!1265970 () Bool)

(assert (= bs!1265970 (and b!5478717 d!1740223)))

(assert (=> bs!1265970 (not (= lambda!292213 lambda!292151))))

(assert (=> bs!1265965 (= (and (= (reg!15687 (regTwo!31229 lt!2237470)) (reg!15687 r!7292)) (= (regTwo!31229 lt!2237470) (Star!15358 (reg!15687 r!7292)))) (= lambda!292213 lambda!292157))))

(declare-fun bs!1265971 () Bool)

(assert (= bs!1265971 (and b!5478717 d!1740241)))

(assert (=> bs!1265971 (not (= lambda!292213 lambda!292163))))

(declare-fun bs!1265972 () Bool)

(assert (= bs!1265972 (and b!5478717 b!5478600)))

(assert (=> bs!1265972 (= (and (= (reg!15687 (regTwo!31229 lt!2237470)) (reg!15687 (regTwo!31229 r!7292))) (= (regTwo!31229 lt!2237470) (regTwo!31229 r!7292))) (= lambda!292213 lambda!292209))))

(declare-fun bs!1265973 () Bool)

(assert (= bs!1265973 (and b!5478717 b!5478574)))

(assert (=> bs!1265973 (= (and (= (reg!15687 (regTwo!31229 lt!2237470)) (reg!15687 (regOne!31229 r!7292))) (= (regTwo!31229 lt!2237470) (regOne!31229 r!7292))) (= lambda!292213 lambda!292207))))

(declare-fun bs!1265974 () Bool)

(assert (= bs!1265974 (and b!5478717 b!5477718)))

(assert (=> bs!1265974 (not (= lambda!292213 lambda!292123))))

(assert (=> bs!1265970 (not (= lambda!292213 lambda!292150))))

(declare-fun bs!1265975 () Bool)

(assert (= bs!1265975 (and b!5478717 b!5477726)))

(assert (=> bs!1265975 (= (and (= (reg!15687 (regTwo!31229 lt!2237470)) (reg!15687 r!7292)) (= (regTwo!31229 lt!2237470) r!7292)) (= lambda!292213 lambda!292122))))

(assert (=> b!5478717 true))

(assert (=> b!5478717 true))

(declare-fun bs!1265976 () Bool)

(declare-fun b!5478709 () Bool)

(assert (= bs!1265976 (and b!5478709 b!5478592)))

(declare-fun lambda!292214 () Int)

(assert (=> bs!1265976 (= (and (= (regOne!31228 (regTwo!31229 lt!2237470)) (regOne!31228 (regTwo!31229 r!7292))) (= (regTwo!31228 (regTwo!31229 lt!2237470)) (regTwo!31228 (regTwo!31229 r!7292)))) (= lambda!292214 lambda!292210))))

(declare-fun bs!1265977 () Bool)

(assert (= bs!1265977 (and b!5478709 d!1740225)))

(assert (=> bs!1265977 (not (= lambda!292214 lambda!292156))))

(declare-fun bs!1265978 () Bool)

(assert (= bs!1265978 (and b!5478709 b!5477508)))

(assert (=> bs!1265978 (not (= lambda!292214 lambda!292085))))

(declare-fun bs!1265979 () Bool)

(assert (= bs!1265979 (and b!5478709 b!5477861)))

(assert (=> bs!1265979 (not (= lambda!292214 lambda!292131))))

(assert (=> bs!1265978 (= (and (= (regOne!31228 (regTwo!31229 lt!2237470)) (reg!15687 r!7292)) (= (regTwo!31228 (regTwo!31229 lt!2237470)) r!7292)) (= lambda!292214 lambda!292086))))

(declare-fun bs!1265980 () Bool)

(assert (= bs!1265980 (and b!5478709 b!5478566)))

(assert (=> bs!1265980 (= (and (= (regOne!31228 (regTwo!31229 lt!2237470)) (regOne!31228 (regOne!31229 r!7292))) (= (regTwo!31228 (regTwo!31229 lt!2237470)) (regTwo!31228 (regOne!31229 r!7292)))) (= lambda!292214 lambda!292208))))

(declare-fun bs!1265981 () Bool)

(assert (= bs!1265981 (and b!5478709 b!5477853)))

(assert (=> bs!1265981 (= (and (= (regOne!31228 (regTwo!31229 lt!2237470)) (regOne!31228 lt!2237470)) (= (regTwo!31228 (regTwo!31229 lt!2237470)) (regTwo!31228 lt!2237470))) (= lambda!292214 lambda!292133))))

(assert (=> bs!1265978 (not (= lambda!292214 lambda!292084))))

(declare-fun bs!1265982 () Bool)

(assert (= bs!1265982 (and b!5478709 d!1740223)))

(assert (=> bs!1265982 (= (and (= (regOne!31228 (regTwo!31229 lt!2237470)) (reg!15687 r!7292)) (= (regTwo!31228 (regTwo!31229 lt!2237470)) r!7292)) (= lambda!292214 lambda!292151))))

(assert (=> bs!1265977 (not (= lambda!292214 lambda!292157))))

(declare-fun bs!1265983 () Bool)

(assert (= bs!1265983 (and b!5478709 d!1740241)))

(assert (=> bs!1265983 (not (= lambda!292214 lambda!292163))))

(declare-fun bs!1265984 () Bool)

(assert (= bs!1265984 (and b!5478709 b!5478717)))

(assert (=> bs!1265984 (not (= lambda!292214 lambda!292213))))

(declare-fun bs!1265985 () Bool)

(assert (= bs!1265985 (and b!5478709 b!5478600)))

(assert (=> bs!1265985 (not (= lambda!292214 lambda!292209))))

(declare-fun bs!1265986 () Bool)

(assert (= bs!1265986 (and b!5478709 b!5478574)))

(assert (=> bs!1265986 (not (= lambda!292214 lambda!292207))))

(declare-fun bs!1265987 () Bool)

(assert (= bs!1265987 (and b!5478709 b!5477718)))

(assert (=> bs!1265987 (= (and (= (regOne!31228 (regTwo!31229 lt!2237470)) (regOne!31228 r!7292)) (= (regTwo!31228 (regTwo!31229 lt!2237470)) (regTwo!31228 r!7292))) (= lambda!292214 lambda!292123))))

(assert (=> bs!1265982 (not (= lambda!292214 lambda!292150))))

(declare-fun bs!1265988 () Bool)

(assert (= bs!1265988 (and b!5478709 b!5477726)))

(assert (=> bs!1265988 (not (= lambda!292214 lambda!292122))))

(assert (=> b!5478709 true))

(assert (=> b!5478709 true))

(declare-fun b!5478708 () Bool)

(declare-fun c!957264 () Bool)

(assert (=> b!5478708 (= c!957264 (is-ElementMatch!15358 (regTwo!31229 lt!2237470)))))

(declare-fun e!3390964 () Bool)

(declare-fun e!3390963 () Bool)

(assert (=> b!5478708 (= e!3390964 e!3390963)))

(declare-fun e!3390966 () Bool)

(declare-fun call!404283 () Bool)

(assert (=> b!5478709 (= e!3390966 call!404283)))

(declare-fun b!5478710 () Bool)

(declare-fun e!3390965 () Bool)

(assert (=> b!5478710 (= e!3390965 (matchRSpec!2461 (regTwo!31229 (regTwo!31229 lt!2237470)) s!2326))))

(declare-fun b!5478711 () Bool)

(declare-fun c!957263 () Bool)

(assert (=> b!5478711 (= c!957263 (is-Union!15358 (regTwo!31229 lt!2237470)))))

(declare-fun e!3390962 () Bool)

(assert (=> b!5478711 (= e!3390963 e!3390962)))

(declare-fun b!5478712 () Bool)

(declare-fun e!3390968 () Bool)

(assert (=> b!5478712 (= e!3390968 e!3390964)))

(declare-fun res!2335507 () Bool)

(assert (=> b!5478712 (= res!2335507 (not (is-EmptyLang!15358 (regTwo!31229 lt!2237470))))))

(assert (=> b!5478712 (=> (not res!2335507) (not e!3390964))))

(declare-fun b!5478713 () Bool)

(declare-fun res!2335508 () Bool)

(declare-fun e!3390967 () Bool)

(assert (=> b!5478713 (=> res!2335508 e!3390967)))

(declare-fun call!404284 () Bool)

(assert (=> b!5478713 (= res!2335508 call!404284)))

(assert (=> b!5478713 (= e!3390966 e!3390967)))

(declare-fun b!5478714 () Bool)

(assert (=> b!5478714 (= e!3390968 call!404284)))

(declare-fun bm!404278 () Bool)

(assert (=> bm!404278 (= call!404284 (isEmpty!34205 s!2326))))

(declare-fun b!5478715 () Bool)

(assert (=> b!5478715 (= e!3390963 (= s!2326 (Cons!62249 (c!956963 (regTwo!31229 lt!2237470)) Nil!62249)))))

(declare-fun c!957265 () Bool)

(declare-fun bm!404279 () Bool)

(assert (=> bm!404279 (= call!404283 (Exists!2537 (ite c!957265 lambda!292213 lambda!292214)))))

(declare-fun d!1740503 () Bool)

(declare-fun c!957266 () Bool)

(assert (=> d!1740503 (= c!957266 (is-EmptyExpr!15358 (regTwo!31229 lt!2237470)))))

(assert (=> d!1740503 (= (matchRSpec!2461 (regTwo!31229 lt!2237470) s!2326) e!3390968)))

(declare-fun b!5478716 () Bool)

(assert (=> b!5478716 (= e!3390962 e!3390966)))

(assert (=> b!5478716 (= c!957265 (is-Star!15358 (regTwo!31229 lt!2237470)))))

(assert (=> b!5478717 (= e!3390967 call!404283)))

(declare-fun b!5478718 () Bool)

(assert (=> b!5478718 (= e!3390962 e!3390965)))

(declare-fun res!2335506 () Bool)

(assert (=> b!5478718 (= res!2335506 (matchRSpec!2461 (regOne!31229 (regTwo!31229 lt!2237470)) s!2326))))

(assert (=> b!5478718 (=> res!2335506 e!3390965)))

(assert (= (and d!1740503 c!957266) b!5478714))

(assert (= (and d!1740503 (not c!957266)) b!5478712))

(assert (= (and b!5478712 res!2335507) b!5478708))

(assert (= (and b!5478708 c!957264) b!5478715))

(assert (= (and b!5478708 (not c!957264)) b!5478711))

(assert (= (and b!5478711 c!957263) b!5478718))

(assert (= (and b!5478711 (not c!957263)) b!5478716))

(assert (= (and b!5478718 (not res!2335506)) b!5478710))

(assert (= (and b!5478716 c!957265) b!5478713))

(assert (= (and b!5478716 (not c!957265)) b!5478709))

(assert (= (and b!5478713 (not res!2335508)) b!5478717))

(assert (= (or b!5478717 b!5478709) bm!404279))

(assert (= (or b!5478714 b!5478713) bm!404278))

(declare-fun m!6494822 () Bool)

(assert (=> b!5478710 m!6494822))

(assert (=> bm!404278 m!6493794))

(declare-fun m!6494824 () Bool)

(assert (=> bm!404279 m!6494824))

(declare-fun m!6494826 () Bool)

(assert (=> b!5478718 m!6494826))

(assert (=> b!5477854 d!1740503))

(declare-fun d!1740505 () Bool)

(assert (=> d!1740505 (= (isConcat!564 lt!2237577) (is-Concat!24203 lt!2237577))))

(assert (=> b!5477793 d!1740505))

(declare-fun d!1740507 () Bool)

(assert (=> d!1740507 (= ($colon$colon!1555 (exprs!5242 lt!2237455) (ite (or c!957103 c!957105) (regTwo!31228 (reg!15687 r!7292)) (reg!15687 r!7292))) (Cons!62250 (ite (or c!957103 c!957105) (regTwo!31228 (reg!15687 r!7292)) (reg!15687 r!7292)) (exprs!5242 lt!2237455)))))

(assert (=> bm!404189 d!1740507))

(declare-fun bm!404280 () Bool)

(declare-fun call!404286 () (Set Context!9484))

(declare-fun call!404288 () (Set Context!9484))

(assert (=> bm!404280 (= call!404286 call!404288)))

(declare-fun call!404287 () (Set Context!9484))

(declare-fun c!957270 () Bool)

(declare-fun bm!404281 () Bool)

(declare-fun call!404289 () List!62374)

(assert (=> bm!404281 (= call!404287 (derivationStepZipperDown!784 (ite c!957270 (regTwo!31229 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292))))) (regOne!31228 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292)))))) (ite c!957270 (ite (or c!957055 c!957052) (Context!9485 Nil!62250) (Context!9485 call!404170)) (Context!9485 call!404289)) (h!68697 s!2326)))))

(declare-fun c!957268 () Bool)

(declare-fun d!1740509 () Bool)

(assert (=> d!1740509 (= c!957268 (and (is-ElementMatch!15358 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292))))) (= (c!956963 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292))))) (h!68697 s!2326))))))

(declare-fun e!3390969 () (Set Context!9484))

(assert (=> d!1740509 (= (derivationStepZipperDown!784 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292)))) (ite (or c!957055 c!957052) (Context!9485 Nil!62250) (Context!9485 call!404170)) (h!68697 s!2326)) e!3390969)))

(declare-fun b!5478719 () Bool)

(declare-fun c!957267 () Bool)

(declare-fun e!3390973 () Bool)

(assert (=> b!5478719 (= c!957267 e!3390973)))

(declare-fun res!2335509 () Bool)

(assert (=> b!5478719 (=> (not res!2335509) (not e!3390973))))

(assert (=> b!5478719 (= res!2335509 (is-Concat!24203 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292))))))))

(declare-fun e!3390971 () (Set Context!9484))

(declare-fun e!3390972 () (Set Context!9484))

(assert (=> b!5478719 (= e!3390971 e!3390972)))

(declare-fun bm!404282 () Bool)

(declare-fun call!404290 () List!62374)

(assert (=> bm!404282 (= call!404290 call!404289)))

(declare-fun b!5478720 () Bool)

(assert (=> b!5478720 (= e!3390973 (nullable!5485 (regOne!31228 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292)))))))))

(declare-fun b!5478721 () Bool)

(declare-fun e!3390970 () (Set Context!9484))

(declare-fun call!404285 () (Set Context!9484))

(assert (=> b!5478721 (= e!3390970 call!404285)))

(declare-fun c!957269 () Bool)

(declare-fun bm!404283 () Bool)

(assert (=> bm!404283 (= call!404288 (derivationStepZipperDown!784 (ite c!957270 (regOne!31229 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292))))) (ite c!957267 (regTwo!31228 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292))))) (ite c!957269 (regOne!31228 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292))))) (reg!15687 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292)))))))) (ite (or c!957270 c!957267) (ite (or c!957055 c!957052) (Context!9485 Nil!62250) (Context!9485 call!404170)) (Context!9485 call!404290)) (h!68697 s!2326)))))

(declare-fun b!5478722 () Bool)

(assert (=> b!5478722 (= e!3390972 (set.union call!404287 call!404286))))

(declare-fun bm!404284 () Bool)

(assert (=> bm!404284 (= call!404285 call!404286)))

(declare-fun b!5478723 () Bool)

(assert (=> b!5478723 (= e!3390971 (set.union call!404288 call!404287))))

(declare-fun b!5478724 () Bool)

(declare-fun e!3390974 () (Set Context!9484))

(assert (=> b!5478724 (= e!3390974 call!404285)))

(declare-fun b!5478725 () Bool)

(assert (=> b!5478725 (= e!3390969 e!3390971)))

(assert (=> b!5478725 (= c!957270 (is-Union!15358 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292))))))))

(declare-fun b!5478726 () Bool)

(assert (=> b!5478726 (= e!3390974 (as set.empty (Set Context!9484)))))

(declare-fun bm!404285 () Bool)

(assert (=> bm!404285 (= call!404289 ($colon$colon!1555 (exprs!5242 (ite (or c!957055 c!957052) (Context!9485 Nil!62250) (Context!9485 call!404170))) (ite (or c!957267 c!957269) (regTwo!31228 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292))))) (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292)))))))))

(declare-fun b!5478727 () Bool)

(declare-fun c!957271 () Bool)

(assert (=> b!5478727 (= c!957271 (is-Star!15358 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292))))))))

(assert (=> b!5478727 (= e!3390970 e!3390974)))

(declare-fun b!5478728 () Bool)

(assert (=> b!5478728 (= e!3390972 e!3390970)))

(assert (=> b!5478728 (= c!957269 (is-Concat!24203 (ite c!957055 (regOne!31229 r!7292) (ite c!957052 (regTwo!31228 r!7292) (ite c!957054 (regOne!31228 r!7292) (reg!15687 r!7292))))))))

(declare-fun b!5478729 () Bool)

(assert (=> b!5478729 (= e!3390969 (set.insert (ite (or c!957055 c!957052) (Context!9485 Nil!62250) (Context!9485 call!404170)) (as set.empty (Set Context!9484))))))

(assert (= (and d!1740509 c!957268) b!5478729))

(assert (= (and d!1740509 (not c!957268)) b!5478725))

(assert (= (and b!5478725 c!957270) b!5478723))

(assert (= (and b!5478725 (not c!957270)) b!5478719))

(assert (= (and b!5478719 res!2335509) b!5478720))

(assert (= (and b!5478719 c!957267) b!5478722))

(assert (= (and b!5478719 (not c!957267)) b!5478728))

(assert (= (and b!5478728 c!957269) b!5478721))

(assert (= (and b!5478728 (not c!957269)) b!5478727))

(assert (= (and b!5478727 c!957271) b!5478724))

(assert (= (and b!5478727 (not c!957271)) b!5478726))

(assert (= (or b!5478721 b!5478724) bm!404282))

(assert (= (or b!5478721 b!5478724) bm!404284))

(assert (= (or b!5478722 bm!404282) bm!404285))

(assert (= (or b!5478722 bm!404284) bm!404280))

(assert (= (or b!5478723 b!5478722) bm!404281))

(assert (= (or b!5478723 bm!404280) bm!404283))

(declare-fun m!6494828 () Bool)

(assert (=> b!5478720 m!6494828))

(declare-fun m!6494830 () Bool)

(assert (=> b!5478729 m!6494830))

(declare-fun m!6494832 () Bool)

(assert (=> bm!404283 m!6494832))

(declare-fun m!6494834 () Bool)

(assert (=> bm!404285 m!6494834))

(declare-fun m!6494836 () Bool)

(assert (=> bm!404281 m!6494836))

(assert (=> bm!404163 d!1740509))

(declare-fun d!1740511 () Bool)

(assert (=> d!1740511 true))

(assert (=> d!1740511 true))

(declare-fun res!2335510 () Bool)

(assert (=> d!1740511 (= (choose!41679 lambda!292086) res!2335510)))

(assert (=> d!1740231 d!1740511))

(declare-fun d!1740513 () Bool)

(assert (=> d!1740513 (= (head!11736 (exprs!5242 (h!68699 zl!343))) (h!68698 (exprs!5242 (h!68699 zl!343))))))

(assert (=> b!5477791 d!1740513))

(declare-fun d!1740515 () Bool)

(declare-fun res!2335512 () Bool)

(declare-fun e!3390981 () Bool)

(assert (=> d!1740515 (=> res!2335512 e!3390981)))

(assert (=> d!1740515 (= res!2335512 (is-ElementMatch!15358 (h!68698 lt!2237465)))))

(assert (=> d!1740515 (= (validRegex!7094 (h!68698 lt!2237465)) e!3390981)))

(declare-fun bm!404286 () Bool)

(declare-fun call!404292 () Bool)

(declare-fun c!957273 () Bool)

(assert (=> bm!404286 (= call!404292 (validRegex!7094 (ite c!957273 (regTwo!31229 (h!68698 lt!2237465)) (regTwo!31228 (h!68698 lt!2237465)))))))

(declare-fun b!5478730 () Bool)

(declare-fun e!3390978 () Bool)

(assert (=> b!5478730 (= e!3390978 call!404292)))

(declare-fun b!5478731 () Bool)

(declare-fun e!3390979 () Bool)

(declare-fun e!3390975 () Bool)

(assert (=> b!5478731 (= e!3390979 e!3390975)))

(assert (=> b!5478731 (= c!957273 (is-Union!15358 (h!68698 lt!2237465)))))

(declare-fun c!957272 () Bool)

(declare-fun bm!404287 () Bool)

(declare-fun call!404291 () Bool)

(assert (=> bm!404287 (= call!404291 (validRegex!7094 (ite c!957272 (reg!15687 (h!68698 lt!2237465)) (ite c!957273 (regOne!31229 (h!68698 lt!2237465)) (regOne!31228 (h!68698 lt!2237465))))))))

(declare-fun b!5478732 () Bool)

(declare-fun e!3390977 () Bool)

(assert (=> b!5478732 (= e!3390977 e!3390978)))

(declare-fun res!2335514 () Bool)

(assert (=> b!5478732 (=> (not res!2335514) (not e!3390978))))

(declare-fun call!404293 () Bool)

(assert (=> b!5478732 (= res!2335514 call!404293)))

(declare-fun b!5478733 () Bool)

(declare-fun e!3390980 () Bool)

(assert (=> b!5478733 (= e!3390980 call!404292)))

(declare-fun b!5478734 () Bool)

(declare-fun e!3390976 () Bool)

(assert (=> b!5478734 (= e!3390979 e!3390976)))

(declare-fun res!2335511 () Bool)

(assert (=> b!5478734 (= res!2335511 (not (nullable!5485 (reg!15687 (h!68698 lt!2237465)))))))

(assert (=> b!5478734 (=> (not res!2335511) (not e!3390976))))

(declare-fun b!5478735 () Bool)

(declare-fun res!2335515 () Bool)

(assert (=> b!5478735 (=> res!2335515 e!3390977)))

(assert (=> b!5478735 (= res!2335515 (not (is-Concat!24203 (h!68698 lt!2237465))))))

(assert (=> b!5478735 (= e!3390975 e!3390977)))

(declare-fun bm!404288 () Bool)

(assert (=> bm!404288 (= call!404293 call!404291)))

(declare-fun b!5478736 () Bool)

(assert (=> b!5478736 (= e!3390976 call!404291)))

(declare-fun b!5478737 () Bool)

(assert (=> b!5478737 (= e!3390981 e!3390979)))

(assert (=> b!5478737 (= c!957272 (is-Star!15358 (h!68698 lt!2237465)))))

(declare-fun b!5478738 () Bool)

(declare-fun res!2335513 () Bool)

(assert (=> b!5478738 (=> (not res!2335513) (not e!3390980))))

(assert (=> b!5478738 (= res!2335513 call!404293)))

(assert (=> b!5478738 (= e!3390975 e!3390980)))

(assert (= (and d!1740515 (not res!2335512)) b!5478737))

(assert (= (and b!5478737 c!957272) b!5478734))

(assert (= (and b!5478737 (not c!957272)) b!5478731))

(assert (= (and b!5478734 res!2335511) b!5478736))

(assert (= (and b!5478731 c!957273) b!5478738))

(assert (= (and b!5478731 (not c!957273)) b!5478735))

(assert (= (and b!5478738 res!2335513) b!5478733))

(assert (= (and b!5478735 (not res!2335515)) b!5478732))

(assert (= (and b!5478732 res!2335514) b!5478730))

(assert (= (or b!5478733 b!5478730) bm!404286))

(assert (= (or b!5478738 b!5478732) bm!404288))

(assert (= (or b!5478736 bm!404288) bm!404287))

(declare-fun m!6494838 () Bool)

(assert (=> bm!404286 m!6494838))

(declare-fun m!6494840 () Bool)

(assert (=> bm!404287 m!6494840))

(declare-fun m!6494842 () Bool)

(assert (=> b!5478734 m!6494842))

(assert (=> bs!1265764 d!1740515))

(declare-fun b!5478739 () Bool)

(declare-fun e!3390984 () Bool)

(assert (=> b!5478739 (= e!3390984 (= (head!11735 (tail!10832 s!2326)) (c!956963 (derivativeStep!4330 r!7292 (head!11735 s!2326)))))))

(declare-fun b!5478740 () Bool)

(declare-fun res!2335520 () Bool)

(declare-fun e!3390988 () Bool)

(assert (=> b!5478740 (=> res!2335520 e!3390988)))

(assert (=> b!5478740 (= res!2335520 e!3390984)))

(declare-fun res!2335516 () Bool)

(assert (=> b!5478740 (=> (not res!2335516) (not e!3390984))))

(declare-fun lt!2237679 () Bool)

(assert (=> b!5478740 (= res!2335516 lt!2237679)))

(declare-fun b!5478741 () Bool)

(declare-fun res!2335518 () Bool)

(assert (=> b!5478741 (=> (not res!2335518) (not e!3390984))))

(declare-fun call!404294 () Bool)

(assert (=> b!5478741 (= res!2335518 (not call!404294))))

(declare-fun b!5478742 () Bool)

(declare-fun e!3390985 () Bool)

(assert (=> b!5478742 (= e!3390985 (matchR!7543 (derivativeStep!4330 (derivativeStep!4330 r!7292 (head!11735 s!2326)) (head!11735 (tail!10832 s!2326))) (tail!10832 (tail!10832 s!2326))))))

(declare-fun b!5478743 () Bool)

(declare-fun res!2335523 () Bool)

(assert (=> b!5478743 (=> res!2335523 e!3390988)))

(assert (=> b!5478743 (= res!2335523 (not (is-ElementMatch!15358 (derivativeStep!4330 r!7292 (head!11735 s!2326)))))))

(declare-fun e!3390987 () Bool)

(assert (=> b!5478743 (= e!3390987 e!3390988)))

(declare-fun b!5478744 () Bool)

(declare-fun res!2335517 () Bool)

(declare-fun e!3390986 () Bool)

(assert (=> b!5478744 (=> res!2335517 e!3390986)))

(assert (=> b!5478744 (= res!2335517 (not (isEmpty!34205 (tail!10832 (tail!10832 s!2326)))))))

(declare-fun bm!404289 () Bool)

(assert (=> bm!404289 (= call!404294 (isEmpty!34205 (tail!10832 s!2326)))))

(declare-fun b!5478746 () Bool)

(assert (=> b!5478746 (= e!3390987 (not lt!2237679))))

(declare-fun b!5478747 () Bool)

(assert (=> b!5478747 (= e!3390986 (not (= (head!11735 (tail!10832 s!2326)) (c!956963 (derivativeStep!4330 r!7292 (head!11735 s!2326))))))))

(declare-fun b!5478748 () Bool)

(declare-fun e!3390982 () Bool)

(assert (=> b!5478748 (= e!3390982 (= lt!2237679 call!404294))))

(declare-fun b!5478749 () Bool)

(assert (=> b!5478749 (= e!3390982 e!3390987)))

(declare-fun c!957274 () Bool)

(assert (=> b!5478749 (= c!957274 (is-EmptyLang!15358 (derivativeStep!4330 r!7292 (head!11735 s!2326))))))

(declare-fun b!5478750 () Bool)

(declare-fun e!3390983 () Bool)

(assert (=> b!5478750 (= e!3390988 e!3390983)))

(declare-fun res!2335519 () Bool)

(assert (=> b!5478750 (=> (not res!2335519) (not e!3390983))))

(assert (=> b!5478750 (= res!2335519 (not lt!2237679))))

(declare-fun b!5478745 () Bool)

(declare-fun res!2335521 () Bool)

(assert (=> b!5478745 (=> (not res!2335521) (not e!3390984))))

(assert (=> b!5478745 (= res!2335521 (isEmpty!34205 (tail!10832 (tail!10832 s!2326))))))

(declare-fun d!1740517 () Bool)

(assert (=> d!1740517 e!3390982))

(declare-fun c!957276 () Bool)

(assert (=> d!1740517 (= c!957276 (is-EmptyExpr!15358 (derivativeStep!4330 r!7292 (head!11735 s!2326))))))

(assert (=> d!1740517 (= lt!2237679 e!3390985)))

(declare-fun c!957275 () Bool)

(assert (=> d!1740517 (= c!957275 (isEmpty!34205 (tail!10832 s!2326)))))

(assert (=> d!1740517 (validRegex!7094 (derivativeStep!4330 r!7292 (head!11735 s!2326)))))

(assert (=> d!1740517 (= (matchR!7543 (derivativeStep!4330 r!7292 (head!11735 s!2326)) (tail!10832 s!2326)) lt!2237679)))

(declare-fun b!5478751 () Bool)

(assert (=> b!5478751 (= e!3390983 e!3390986)))

(declare-fun res!2335522 () Bool)

(assert (=> b!5478751 (=> res!2335522 e!3390986)))

(assert (=> b!5478751 (= res!2335522 call!404294)))

(declare-fun b!5478752 () Bool)

(assert (=> b!5478752 (= e!3390985 (nullable!5485 (derivativeStep!4330 r!7292 (head!11735 s!2326))))))

(assert (= (and d!1740517 c!957275) b!5478752))

(assert (= (and d!1740517 (not c!957275)) b!5478742))

(assert (= (and d!1740517 c!957276) b!5478748))

(assert (= (and d!1740517 (not c!957276)) b!5478749))

(assert (= (and b!5478749 c!957274) b!5478746))

(assert (= (and b!5478749 (not c!957274)) b!5478743))

(assert (= (and b!5478743 (not res!2335523)) b!5478740))

(assert (= (and b!5478740 res!2335516) b!5478741))

(assert (= (and b!5478741 res!2335518) b!5478745))

(assert (= (and b!5478745 res!2335521) b!5478739))

(assert (= (and b!5478740 (not res!2335520)) b!5478750))

(assert (= (and b!5478750 res!2335519) b!5478751))

(assert (= (and b!5478751 (not res!2335522)) b!5478744))

(assert (= (and b!5478744 (not res!2335517)) b!5478747))

(assert (= (or b!5478748 b!5478741 b!5478751) bm!404289))

(assert (=> b!5478752 m!6494004))

(declare-fun m!6494844 () Bool)

(assert (=> b!5478752 m!6494844))

(assert (=> d!1740517 m!6493946))

(assert (=> d!1740517 m!6494002))

(assert (=> d!1740517 m!6494004))

(declare-fun m!6494846 () Bool)

(assert (=> d!1740517 m!6494846))

(assert (=> b!5478745 m!6493946))

(declare-fun m!6494848 () Bool)

(assert (=> b!5478745 m!6494848))

(assert (=> b!5478745 m!6494848))

(declare-fun m!6494850 () Bool)

(assert (=> b!5478745 m!6494850))

(assert (=> b!5478744 m!6493946))

(assert (=> b!5478744 m!6494848))

(assert (=> b!5478744 m!6494848))

(assert (=> b!5478744 m!6494850))

(assert (=> b!5478739 m!6493946))

(declare-fun m!6494852 () Bool)

(assert (=> b!5478739 m!6494852))

(assert (=> bm!404289 m!6493946))

(assert (=> bm!404289 m!6494002))

(assert (=> b!5478747 m!6493946))

(assert (=> b!5478747 m!6494852))

(assert (=> b!5478742 m!6493946))

(assert (=> b!5478742 m!6494852))

(assert (=> b!5478742 m!6494004))

(assert (=> b!5478742 m!6494852))

(declare-fun m!6494854 () Bool)

(assert (=> b!5478742 m!6494854))

(assert (=> b!5478742 m!6493946))

(assert (=> b!5478742 m!6494848))

(assert (=> b!5478742 m!6494854))

(assert (=> b!5478742 m!6494848))

(declare-fun m!6494856 () Bool)

(assert (=> b!5478742 m!6494856))

(assert (=> b!5477759 d!1740517))

(declare-fun bm!404298 () Bool)

(declare-fun call!404303 () Regex!15358)

(declare-fun call!404305 () Regex!15358)

(assert (=> bm!404298 (= call!404303 call!404305)))

(declare-fun b!5478773 () Bool)

(declare-fun e!3391001 () Regex!15358)

(declare-fun call!404306 () Regex!15358)

(declare-fun call!404304 () Regex!15358)

(assert (=> b!5478773 (= e!3391001 (Union!15358 call!404306 call!404304))))

(declare-fun b!5478774 () Bool)

(declare-fun e!3391002 () Regex!15358)

(assert (=> b!5478774 (= e!3391001 e!3391002)))

(declare-fun c!957291 () Bool)

(assert (=> b!5478774 (= c!957291 (is-Star!15358 r!7292))))

(declare-fun d!1740519 () Bool)

(declare-fun lt!2237682 () Regex!15358)

(assert (=> d!1740519 (validRegex!7094 lt!2237682)))

(declare-fun e!3391003 () Regex!15358)

(assert (=> d!1740519 (= lt!2237682 e!3391003)))

(declare-fun c!957289 () Bool)

(assert (=> d!1740519 (= c!957289 (or (is-EmptyExpr!15358 r!7292) (is-EmptyLang!15358 r!7292)))))

(assert (=> d!1740519 (validRegex!7094 r!7292)))

(assert (=> d!1740519 (= (derivativeStep!4330 r!7292 (head!11735 s!2326)) lt!2237682)))

(declare-fun b!5478775 () Bool)

(declare-fun c!957287 () Bool)

(assert (=> b!5478775 (= c!957287 (nullable!5485 (regOne!31228 r!7292)))))

(declare-fun e!3391000 () Regex!15358)

(assert (=> b!5478775 (= e!3391002 e!3391000)))

(declare-fun b!5478776 () Bool)

(assert (=> b!5478776 (= e!3391003 EmptyLang!15358)))

(declare-fun b!5478777 () Bool)

(assert (=> b!5478777 (= e!3391000 (Union!15358 (Concat!24203 call!404306 (regTwo!31228 r!7292)) call!404303))))

(declare-fun c!957288 () Bool)

(declare-fun bm!404299 () Bool)

(assert (=> bm!404299 (= call!404306 (derivativeStep!4330 (ite c!957288 (regOne!31229 r!7292) (regOne!31228 r!7292)) (head!11735 s!2326)))))

(declare-fun bm!404300 () Bool)

(assert (=> bm!404300 (= call!404304 (derivativeStep!4330 (ite c!957288 (regTwo!31229 r!7292) (ite c!957291 (reg!15687 r!7292) (ite c!957287 (regTwo!31228 r!7292) (regOne!31228 r!7292)))) (head!11735 s!2326)))))

(declare-fun b!5478778 () Bool)

(assert (=> b!5478778 (= c!957288 (is-Union!15358 r!7292))))

(declare-fun e!3390999 () Regex!15358)

(assert (=> b!5478778 (= e!3390999 e!3391001)))

(declare-fun b!5478779 () Bool)

(assert (=> b!5478779 (= e!3390999 (ite (= (head!11735 s!2326) (c!956963 r!7292)) EmptyExpr!15358 EmptyLang!15358))))

(declare-fun bm!404301 () Bool)

(assert (=> bm!404301 (= call!404305 call!404304)))

(declare-fun b!5478780 () Bool)

(assert (=> b!5478780 (= e!3391003 e!3390999)))

(declare-fun c!957290 () Bool)

(assert (=> b!5478780 (= c!957290 (is-ElementMatch!15358 r!7292))))

(declare-fun b!5478781 () Bool)

(assert (=> b!5478781 (= e!3391002 (Concat!24203 call!404305 r!7292))))

(declare-fun b!5478782 () Bool)

(assert (=> b!5478782 (= e!3391000 (Union!15358 (Concat!24203 call!404303 (regTwo!31228 r!7292)) EmptyLang!15358))))

(assert (= (and d!1740519 c!957289) b!5478776))

(assert (= (and d!1740519 (not c!957289)) b!5478780))

(assert (= (and b!5478780 c!957290) b!5478779))

(assert (= (and b!5478780 (not c!957290)) b!5478778))

(assert (= (and b!5478778 c!957288) b!5478773))

(assert (= (and b!5478778 (not c!957288)) b!5478774))

(assert (= (and b!5478774 c!957291) b!5478781))

(assert (= (and b!5478774 (not c!957291)) b!5478775))

(assert (= (and b!5478775 c!957287) b!5478777))

(assert (= (and b!5478775 (not c!957287)) b!5478782))

(assert (= (or b!5478777 b!5478782) bm!404298))

(assert (= (or b!5478781 bm!404298) bm!404301))

(assert (= (or b!5478773 bm!404301) bm!404300))

(assert (= (or b!5478773 b!5478777) bm!404299))

(declare-fun m!6494858 () Bool)

(assert (=> d!1740519 m!6494858))

(assert (=> d!1740519 m!6493724))

(assert (=> b!5478775 m!6494076))

(assert (=> bm!404299 m!6493942))

(declare-fun m!6494860 () Bool)

(assert (=> bm!404299 m!6494860))

(assert (=> bm!404300 m!6493942))

(declare-fun m!6494862 () Bool)

(assert (=> bm!404300 m!6494862))

(assert (=> b!5477759 d!1740519))

(assert (=> b!5477759 d!1740397))

(assert (=> b!5477759 d!1740383))

(assert (=> d!1740177 d!1740175))

(assert (=> d!1740177 d!1740173))

(declare-fun d!1740521 () Bool)

(assert (=> d!1740521 (= (matchR!7543 r!7292 s!2326) (matchRSpec!2461 r!7292 s!2326))))

(assert (=> d!1740521 true))

(declare-fun _$88!3693 () Unit!155166)

(assert (=> d!1740521 (= (choose!41677 r!7292 s!2326) _$88!3693)))

(declare-fun bs!1265989 () Bool)

(assert (= bs!1265989 d!1740521))

(assert (=> bs!1265989 m!6493766))

(assert (=> bs!1265989 m!6493764))

(assert (=> d!1740177 d!1740521))

(assert (=> d!1740177 d!1740187))

(declare-fun d!1740523 () Bool)

(declare-fun res!2335525 () Bool)

(declare-fun e!3391010 () Bool)

(assert (=> d!1740523 (=> res!2335525 e!3391010)))

(assert (=> d!1740523 (= res!2335525 (is-ElementMatch!15358 (ite c!957025 (reg!15687 r!7292) (ite c!957026 (regOne!31229 r!7292) (regOne!31228 r!7292)))))))

(assert (=> d!1740523 (= (validRegex!7094 (ite c!957025 (reg!15687 r!7292) (ite c!957026 (regOne!31229 r!7292) (regOne!31228 r!7292)))) e!3391010)))

(declare-fun bm!404302 () Bool)

(declare-fun call!404308 () Bool)

(declare-fun c!957293 () Bool)

(assert (=> bm!404302 (= call!404308 (validRegex!7094 (ite c!957293 (regTwo!31229 (ite c!957025 (reg!15687 r!7292) (ite c!957026 (regOne!31229 r!7292) (regOne!31228 r!7292)))) (regTwo!31228 (ite c!957025 (reg!15687 r!7292) (ite c!957026 (regOne!31229 r!7292) (regOne!31228 r!7292)))))))))

(declare-fun b!5478783 () Bool)

(declare-fun e!3391007 () Bool)

(assert (=> b!5478783 (= e!3391007 call!404308)))

(declare-fun b!5478784 () Bool)

(declare-fun e!3391008 () Bool)

(declare-fun e!3391004 () Bool)

(assert (=> b!5478784 (= e!3391008 e!3391004)))

(assert (=> b!5478784 (= c!957293 (is-Union!15358 (ite c!957025 (reg!15687 r!7292) (ite c!957026 (regOne!31229 r!7292) (regOne!31228 r!7292)))))))

(declare-fun bm!404303 () Bool)

(declare-fun c!957292 () Bool)

(declare-fun call!404307 () Bool)

(assert (=> bm!404303 (= call!404307 (validRegex!7094 (ite c!957292 (reg!15687 (ite c!957025 (reg!15687 r!7292) (ite c!957026 (regOne!31229 r!7292) (regOne!31228 r!7292)))) (ite c!957293 (regOne!31229 (ite c!957025 (reg!15687 r!7292) (ite c!957026 (regOne!31229 r!7292) (regOne!31228 r!7292)))) (regOne!31228 (ite c!957025 (reg!15687 r!7292) (ite c!957026 (regOne!31229 r!7292) (regOne!31228 r!7292))))))))))

(declare-fun b!5478785 () Bool)

(declare-fun e!3391006 () Bool)

(assert (=> b!5478785 (= e!3391006 e!3391007)))

(declare-fun res!2335527 () Bool)

(assert (=> b!5478785 (=> (not res!2335527) (not e!3391007))))

(declare-fun call!404309 () Bool)

(assert (=> b!5478785 (= res!2335527 call!404309)))

(declare-fun b!5478786 () Bool)

(declare-fun e!3391009 () Bool)

(assert (=> b!5478786 (= e!3391009 call!404308)))

(declare-fun b!5478787 () Bool)

(declare-fun e!3391005 () Bool)

(assert (=> b!5478787 (= e!3391008 e!3391005)))

(declare-fun res!2335524 () Bool)

(assert (=> b!5478787 (= res!2335524 (not (nullable!5485 (reg!15687 (ite c!957025 (reg!15687 r!7292) (ite c!957026 (regOne!31229 r!7292) (regOne!31228 r!7292)))))))))

(assert (=> b!5478787 (=> (not res!2335524) (not e!3391005))))

(declare-fun b!5478788 () Bool)

(declare-fun res!2335528 () Bool)

(assert (=> b!5478788 (=> res!2335528 e!3391006)))

(assert (=> b!5478788 (= res!2335528 (not (is-Concat!24203 (ite c!957025 (reg!15687 r!7292) (ite c!957026 (regOne!31229 r!7292) (regOne!31228 r!7292))))))))

(assert (=> b!5478788 (= e!3391004 e!3391006)))

(declare-fun bm!404304 () Bool)

(assert (=> bm!404304 (= call!404309 call!404307)))

(declare-fun b!5478789 () Bool)

(assert (=> b!5478789 (= e!3391005 call!404307)))

(declare-fun b!5478790 () Bool)

(assert (=> b!5478790 (= e!3391010 e!3391008)))

(assert (=> b!5478790 (= c!957292 (is-Star!15358 (ite c!957025 (reg!15687 r!7292) (ite c!957026 (regOne!31229 r!7292) (regOne!31228 r!7292)))))))

(declare-fun b!5478791 () Bool)

(declare-fun res!2335526 () Bool)

(assert (=> b!5478791 (=> (not res!2335526) (not e!3391009))))

(assert (=> b!5478791 (= res!2335526 call!404309)))

(assert (=> b!5478791 (= e!3391004 e!3391009)))

(assert (= (and d!1740523 (not res!2335525)) b!5478790))

(assert (= (and b!5478790 c!957292) b!5478787))

(assert (= (and b!5478790 (not c!957292)) b!5478784))

(assert (= (and b!5478787 res!2335524) b!5478789))

(assert (= (and b!5478784 c!957293) b!5478791))

(assert (= (and b!5478784 (not c!957293)) b!5478788))

(assert (= (and b!5478791 res!2335526) b!5478786))

(assert (= (and b!5478788 (not res!2335528)) b!5478785))

(assert (= (and b!5478785 res!2335527) b!5478783))

(assert (= (or b!5478786 b!5478783) bm!404302))

(assert (= (or b!5478791 b!5478785) bm!404304))

(assert (= (or b!5478789 bm!404304) bm!404303))

(declare-fun m!6494864 () Bool)

(assert (=> bm!404302 m!6494864))

(declare-fun m!6494866 () Bool)

(assert (=> bm!404303 m!6494866))

(declare-fun m!6494868 () Bool)

(assert (=> b!5478787 m!6494868))

(assert (=> bm!404139 d!1740523))

(declare-fun d!1740525 () Bool)

(declare-fun res!2335529 () Bool)

(declare-fun e!3391011 () Bool)

(assert (=> d!1740525 (=> res!2335529 e!3391011)))

(assert (=> d!1740525 (= res!2335529 (is-Nil!62250 (exprs!5242 setElem!35998)))))

(assert (=> d!1740525 (= (forall!14615 (exprs!5242 setElem!35998) lambda!292164) e!3391011)))

(declare-fun b!5478792 () Bool)

(declare-fun e!3391012 () Bool)

(assert (=> b!5478792 (= e!3391011 e!3391012)))

(declare-fun res!2335530 () Bool)

(assert (=> b!5478792 (=> (not res!2335530) (not e!3391012))))

(assert (=> b!5478792 (= res!2335530 (dynLambda!24435 lambda!292164 (h!68698 (exprs!5242 setElem!35998))))))

(declare-fun b!5478793 () Bool)

(assert (=> b!5478793 (= e!3391012 (forall!14615 (t!375603 (exprs!5242 setElem!35998)) lambda!292164))))

(assert (= (and d!1740525 (not res!2335529)) b!5478792))

(assert (= (and b!5478792 res!2335530) b!5478793))

(declare-fun b_lambda!208177 () Bool)

(assert (=> (not b_lambda!208177) (not b!5478792)))

(declare-fun m!6494870 () Bool)

(assert (=> b!5478792 m!6494870))

(declare-fun m!6494872 () Bool)

(assert (=> b!5478793 m!6494872))

(assert (=> d!1740261 d!1740525))

(declare-fun d!1740527 () Bool)

(assert (=> d!1740527 true))

(assert (=> d!1740527 true))

(declare-fun res!2335531 () Bool)

(assert (=> d!1740527 (= (choose!41679 lambda!292084) res!2335531)))

(assert (=> d!1740219 d!1740527))

(declare-fun d!1740529 () Bool)

(declare-fun res!2335533 () Bool)

(declare-fun e!3391019 () Bool)

(assert (=> d!1740529 (=> res!2335533 e!3391019)))

(assert (=> d!1740529 (= res!2335533 (is-ElementMatch!15358 (h!68698 (exprs!5242 c!332))))))

(assert (=> d!1740529 (= (validRegex!7094 (h!68698 (exprs!5242 c!332))) e!3391019)))

(declare-fun bm!404305 () Bool)

(declare-fun call!404311 () Bool)

(declare-fun c!957295 () Bool)

(assert (=> bm!404305 (= call!404311 (validRegex!7094 (ite c!957295 (regTwo!31229 (h!68698 (exprs!5242 c!332))) (regTwo!31228 (h!68698 (exprs!5242 c!332))))))))

(declare-fun b!5478794 () Bool)

(declare-fun e!3391016 () Bool)

(assert (=> b!5478794 (= e!3391016 call!404311)))

(declare-fun b!5478795 () Bool)

(declare-fun e!3391017 () Bool)

(declare-fun e!3391013 () Bool)

(assert (=> b!5478795 (= e!3391017 e!3391013)))

(assert (=> b!5478795 (= c!957295 (is-Union!15358 (h!68698 (exprs!5242 c!332))))))

(declare-fun call!404310 () Bool)

(declare-fun c!957294 () Bool)

(declare-fun bm!404306 () Bool)

(assert (=> bm!404306 (= call!404310 (validRegex!7094 (ite c!957294 (reg!15687 (h!68698 (exprs!5242 c!332))) (ite c!957295 (regOne!31229 (h!68698 (exprs!5242 c!332))) (regOne!31228 (h!68698 (exprs!5242 c!332)))))))))

(declare-fun b!5478796 () Bool)

(declare-fun e!3391015 () Bool)

(assert (=> b!5478796 (= e!3391015 e!3391016)))

(declare-fun res!2335535 () Bool)

(assert (=> b!5478796 (=> (not res!2335535) (not e!3391016))))

(declare-fun call!404312 () Bool)

(assert (=> b!5478796 (= res!2335535 call!404312)))

(declare-fun b!5478797 () Bool)

(declare-fun e!3391018 () Bool)

(assert (=> b!5478797 (= e!3391018 call!404311)))

(declare-fun b!5478798 () Bool)

(declare-fun e!3391014 () Bool)

(assert (=> b!5478798 (= e!3391017 e!3391014)))

(declare-fun res!2335532 () Bool)

(assert (=> b!5478798 (= res!2335532 (not (nullable!5485 (reg!15687 (h!68698 (exprs!5242 c!332))))))))

(assert (=> b!5478798 (=> (not res!2335532) (not e!3391014))))

(declare-fun b!5478799 () Bool)

(declare-fun res!2335536 () Bool)

(assert (=> b!5478799 (=> res!2335536 e!3391015)))

(assert (=> b!5478799 (= res!2335536 (not (is-Concat!24203 (h!68698 (exprs!5242 c!332)))))))

(assert (=> b!5478799 (= e!3391013 e!3391015)))

(declare-fun bm!404307 () Bool)

(assert (=> bm!404307 (= call!404312 call!404310)))

(declare-fun b!5478800 () Bool)

(assert (=> b!5478800 (= e!3391014 call!404310)))

(declare-fun b!5478801 () Bool)

(assert (=> b!5478801 (= e!3391019 e!3391017)))

(assert (=> b!5478801 (= c!957294 (is-Star!15358 (h!68698 (exprs!5242 c!332))))))

(declare-fun b!5478802 () Bool)

(declare-fun res!2335534 () Bool)

(assert (=> b!5478802 (=> (not res!2335534) (not e!3391018))))

(assert (=> b!5478802 (= res!2335534 call!404312)))

(assert (=> b!5478802 (= e!3391013 e!3391018)))

(assert (= (and d!1740529 (not res!2335533)) b!5478801))

(assert (= (and b!5478801 c!957294) b!5478798))

(assert (= (and b!5478801 (not c!957294)) b!5478795))

(assert (= (and b!5478798 res!2335532) b!5478800))

(assert (= (and b!5478795 c!957295) b!5478802))

(assert (= (and b!5478795 (not c!957295)) b!5478799))

(assert (= (and b!5478802 res!2335534) b!5478797))

(assert (= (and b!5478799 (not res!2335536)) b!5478796))

(assert (= (and b!5478796 res!2335535) b!5478794))

(assert (= (or b!5478797 b!5478794) bm!404305))

(assert (= (or b!5478802 b!5478796) bm!404307))

(assert (= (or b!5478800 bm!404307) bm!404306))

(declare-fun m!6494874 () Bool)

(assert (=> bm!404305 m!6494874))

(declare-fun m!6494876 () Bool)

(assert (=> bm!404306 m!6494876))

(declare-fun m!6494878 () Bool)

(assert (=> b!5478798 m!6494878))

(assert (=> bs!1265769 d!1740529))

(declare-fun d!1740531 () Bool)

(assert (=> d!1740531 (= (nullable!5485 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (nullableFct!1640 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))))))

(declare-fun bs!1265990 () Bool)

(assert (= bs!1265990 d!1740531))

(declare-fun m!6494880 () Bool)

(assert (=> bs!1265990 m!6494880))

(assert (=> b!5477922 d!1740531))

(declare-fun d!1740533 () Bool)

(assert (=> d!1740533 (= (isUnion!482 lt!2237587) (is-Union!15358 lt!2237587))))

(assert (=> b!5477961 d!1740533))

(declare-fun d!1740535 () Bool)

(assert (=> d!1740535 (= (Exists!2537 lambda!292163) (choose!41679 lambda!292163))))

(declare-fun bs!1265991 () Bool)

(assert (= bs!1265991 d!1740535))

(declare-fun m!6494882 () Bool)

(assert (=> bs!1265991 m!6494882))

(assert (=> d!1740241 d!1740535))

(assert (=> d!1740241 d!1740221))

(declare-fun bs!1265992 () Bool)

(declare-fun d!1740537 () Bool)

(assert (= bs!1265992 (and d!1740537 b!5478592)))

(declare-fun lambda!292217 () Int)

(assert (=> bs!1265992 (not (= lambda!292217 lambda!292210))))

(declare-fun bs!1265993 () Bool)

(assert (= bs!1265993 (and d!1740537 d!1740225)))

(assert (=> bs!1265993 (= (= r!7292 (Star!15358 (reg!15687 r!7292))) (= lambda!292217 lambda!292156))))

(declare-fun bs!1265994 () Bool)

(assert (= bs!1265994 (and d!1740537 b!5477508)))

(assert (=> bs!1265994 (not (= lambda!292217 lambda!292085))))

(declare-fun bs!1265995 () Bool)

(assert (= bs!1265995 (and d!1740537 b!5477861)))

(assert (=> bs!1265995 (not (= lambda!292217 lambda!292131))))

(assert (=> bs!1265994 (not (= lambda!292217 lambda!292086))))

(declare-fun bs!1265996 () Bool)

(assert (= bs!1265996 (and d!1740537 b!5478709)))

(assert (=> bs!1265996 (not (= lambda!292217 lambda!292214))))

(declare-fun bs!1265997 () Bool)

(assert (= bs!1265997 (and d!1740537 b!5478566)))

(assert (=> bs!1265997 (not (= lambda!292217 lambda!292208))))

(declare-fun bs!1265998 () Bool)

(assert (= bs!1265998 (and d!1740537 b!5477853)))

(assert (=> bs!1265998 (not (= lambda!292217 lambda!292133))))

(assert (=> bs!1265994 (= lambda!292217 lambda!292084)))

(declare-fun bs!1265999 () Bool)

(assert (= bs!1265999 (and d!1740537 d!1740223)))

(assert (=> bs!1265999 (not (= lambda!292217 lambda!292151))))

(assert (=> bs!1265993 (not (= lambda!292217 lambda!292157))))

(declare-fun bs!1266000 () Bool)

(assert (= bs!1266000 (and d!1740537 d!1740241)))

(assert (=> bs!1266000 (= lambda!292217 lambda!292163)))

(declare-fun bs!1266001 () Bool)

(assert (= bs!1266001 (and d!1740537 b!5478717)))

(assert (=> bs!1266001 (not (= lambda!292217 lambda!292213))))

(declare-fun bs!1266002 () Bool)

(assert (= bs!1266002 (and d!1740537 b!5478600)))

(assert (=> bs!1266002 (not (= lambda!292217 lambda!292209))))

(declare-fun bs!1266003 () Bool)

(assert (= bs!1266003 (and d!1740537 b!5478574)))

(assert (=> bs!1266003 (not (= lambda!292217 lambda!292207))))

(declare-fun bs!1266004 () Bool)

(assert (= bs!1266004 (and d!1740537 b!5477718)))

(assert (=> bs!1266004 (not (= lambda!292217 lambda!292123))))

(assert (=> bs!1265999 (= lambda!292217 lambda!292150)))

(declare-fun bs!1266005 () Bool)

(assert (= bs!1266005 (and d!1740537 b!5477726)))

(assert (=> bs!1266005 (not (= lambda!292217 lambda!292122))))

(assert (=> d!1740537 true))

(assert (=> d!1740537 true))

(assert (=> d!1740537 true))

(assert (=> d!1740537 (= (isDefined!12170 (findConcatSeparation!1881 (reg!15687 r!7292) r!7292 Nil!62249 s!2326 s!2326)) (Exists!2537 lambda!292217))))

(assert (=> d!1740537 true))

(declare-fun _$89!1581 () Unit!155166)

(assert (=> d!1740537 (= (choose!41682 (reg!15687 r!7292) r!7292 s!2326) _$89!1581)))

(declare-fun bs!1266006 () Bool)

(assert (= bs!1266006 d!1740537))

(assert (=> bs!1266006 m!6493804))

(assert (=> bs!1266006 m!6493804))

(assert (=> bs!1266006 m!6493806))

(declare-fun m!6494884 () Bool)

(assert (=> bs!1266006 m!6494884))

(assert (=> d!1740241 d!1740537))

(assert (=> d!1740241 d!1740235))

(declare-fun d!1740539 () Bool)

(declare-fun res!2335542 () Bool)

(declare-fun e!3391028 () Bool)

(assert (=> d!1740539 (=> res!2335542 e!3391028)))

(assert (=> d!1740539 (= res!2335542 (is-ElementMatch!15358 (reg!15687 r!7292)))))

(assert (=> d!1740539 (= (validRegex!7094 (reg!15687 r!7292)) e!3391028)))

(declare-fun bm!404308 () Bool)

(declare-fun call!404314 () Bool)

(declare-fun c!957297 () Bool)

(assert (=> bm!404308 (= call!404314 (validRegex!7094 (ite c!957297 (regTwo!31229 (reg!15687 r!7292)) (regTwo!31228 (reg!15687 r!7292)))))))

(declare-fun b!5478807 () Bool)

(declare-fun e!3391025 () Bool)

(assert (=> b!5478807 (= e!3391025 call!404314)))

(declare-fun b!5478808 () Bool)

(declare-fun e!3391026 () Bool)

(declare-fun e!3391022 () Bool)

(assert (=> b!5478808 (= e!3391026 e!3391022)))

(assert (=> b!5478808 (= c!957297 (is-Union!15358 (reg!15687 r!7292)))))

(declare-fun call!404313 () Bool)

(declare-fun bm!404309 () Bool)

(declare-fun c!957296 () Bool)

(assert (=> bm!404309 (= call!404313 (validRegex!7094 (ite c!957296 (reg!15687 (reg!15687 r!7292)) (ite c!957297 (regOne!31229 (reg!15687 r!7292)) (regOne!31228 (reg!15687 r!7292))))))))

(declare-fun b!5478809 () Bool)

(declare-fun e!3391024 () Bool)

(assert (=> b!5478809 (= e!3391024 e!3391025)))

(declare-fun res!2335544 () Bool)

(assert (=> b!5478809 (=> (not res!2335544) (not e!3391025))))

(declare-fun call!404315 () Bool)

(assert (=> b!5478809 (= res!2335544 call!404315)))

(declare-fun b!5478810 () Bool)

(declare-fun e!3391027 () Bool)

(assert (=> b!5478810 (= e!3391027 call!404314)))

(declare-fun b!5478811 () Bool)

(declare-fun e!3391023 () Bool)

(assert (=> b!5478811 (= e!3391026 e!3391023)))

(declare-fun res!2335541 () Bool)

(assert (=> b!5478811 (= res!2335541 (not (nullable!5485 (reg!15687 (reg!15687 r!7292)))))))

(assert (=> b!5478811 (=> (not res!2335541) (not e!3391023))))

(declare-fun b!5478812 () Bool)

(declare-fun res!2335545 () Bool)

(assert (=> b!5478812 (=> res!2335545 e!3391024)))

(assert (=> b!5478812 (= res!2335545 (not (is-Concat!24203 (reg!15687 r!7292))))))

(assert (=> b!5478812 (= e!3391022 e!3391024)))

(declare-fun bm!404310 () Bool)

(assert (=> bm!404310 (= call!404315 call!404313)))

(declare-fun b!5478813 () Bool)

(assert (=> b!5478813 (= e!3391023 call!404313)))

(declare-fun b!5478814 () Bool)

(assert (=> b!5478814 (= e!3391028 e!3391026)))

(assert (=> b!5478814 (= c!957296 (is-Star!15358 (reg!15687 r!7292)))))

(declare-fun b!5478815 () Bool)

(declare-fun res!2335543 () Bool)

(assert (=> b!5478815 (=> (not res!2335543) (not e!3391027))))

(assert (=> b!5478815 (= res!2335543 call!404315)))

(assert (=> b!5478815 (= e!3391022 e!3391027)))

(assert (= (and d!1740539 (not res!2335542)) b!5478814))

(assert (= (and b!5478814 c!957296) b!5478811))

(assert (= (and b!5478814 (not c!957296)) b!5478808))

(assert (= (and b!5478811 res!2335541) b!5478813))

(assert (= (and b!5478808 c!957297) b!5478815))

(assert (= (and b!5478808 (not c!957297)) b!5478812))

(assert (= (and b!5478815 res!2335543) b!5478810))

(assert (= (and b!5478812 (not res!2335545)) b!5478809))

(assert (= (and b!5478809 res!2335544) b!5478807))

(assert (= (or b!5478810 b!5478807) bm!404308))

(assert (= (or b!5478815 b!5478809) bm!404310))

(assert (= (or b!5478813 bm!404310) bm!404309))

(declare-fun m!6494886 () Bool)

(assert (=> bm!404308 m!6494886))

(declare-fun m!6494888 () Bool)

(assert (=> bm!404309 m!6494888))

(declare-fun m!6494890 () Bool)

(assert (=> b!5478811 m!6494890))

(assert (=> d!1740241 d!1740539))

(assert (=> bm!404143 d!1740229))

(declare-fun d!1740541 () Bool)

(assert (=> d!1740541 (= (nullable!5485 (h!68698 (exprs!5242 lt!2237476))) (nullableFct!1640 (h!68698 (exprs!5242 lt!2237476))))))

(declare-fun bs!1266007 () Bool)

(assert (= bs!1266007 d!1740541))

(declare-fun m!6494892 () Bool)

(assert (=> bs!1266007 m!6494892))

(assert (=> b!5478100 d!1740541))

(declare-fun d!1740543 () Bool)

(assert (=> d!1740543 (= (Exists!2537 (ite c!957037 lambda!292131 lambda!292133)) (choose!41679 (ite c!957037 lambda!292131 lambda!292133)))))

(declare-fun bs!1266008 () Bool)

(assert (= bs!1266008 d!1740543))

(declare-fun m!6494894 () Bool)

(assert (=> bs!1266008 m!6494894))

(assert (=> bm!404142 d!1740543))

(declare-fun d!1740545 () Bool)

(assert (=> d!1740545 (= ($colon$colon!1555 (exprs!5242 (Context!9485 Nil!62250)) (ite (or c!957052 c!957054) (regTwo!31228 r!7292) r!7292)) (Cons!62250 (ite (or c!957052 c!957054) (regTwo!31228 r!7292) r!7292) (exprs!5242 (Context!9485 Nil!62250))))))

(assert (=> bm!404165 d!1740545))

(declare-fun d!1740547 () Bool)

(assert (=> d!1740547 (= (head!11736 (unfocusZipperList!800 zl!343)) (h!68698 (unfocusZipperList!800 zl!343)))))

(assert (=> b!5477957 d!1740547))

(declare-fun d!1740549 () Bool)

(declare-fun c!957298 () Bool)

(assert (=> d!1740549 (= c!957298 (isEmpty!34205 (tail!10832 s!2326)))))

(declare-fun e!3391029 () Bool)

(assert (=> d!1740549 (= (matchZipper!1576 (derivationStepZipper!1553 z!1189 (head!11735 s!2326)) (tail!10832 s!2326)) e!3391029)))

(declare-fun b!5478816 () Bool)

(assert (=> b!5478816 (= e!3391029 (nullableZipper!1506 (derivationStepZipper!1553 z!1189 (head!11735 s!2326))))))

(declare-fun b!5478817 () Bool)

(assert (=> b!5478817 (= e!3391029 (matchZipper!1576 (derivationStepZipper!1553 (derivationStepZipper!1553 z!1189 (head!11735 s!2326)) (head!11735 (tail!10832 s!2326))) (tail!10832 (tail!10832 s!2326))))))

(assert (= (and d!1740549 c!957298) b!5478816))

(assert (= (and d!1740549 (not c!957298)) b!5478817))

(assert (=> d!1740549 m!6493946))

(assert (=> d!1740549 m!6494002))

(assert (=> b!5478816 m!6494232))

(declare-fun m!6494896 () Bool)

(assert (=> b!5478816 m!6494896))

(assert (=> b!5478817 m!6493946))

(assert (=> b!5478817 m!6494852))

(assert (=> b!5478817 m!6494232))

(assert (=> b!5478817 m!6494852))

(declare-fun m!6494898 () Bool)

(assert (=> b!5478817 m!6494898))

(assert (=> b!5478817 m!6493946))

(assert (=> b!5478817 m!6494848))

(assert (=> b!5478817 m!6494898))

(assert (=> b!5478817 m!6494848))

(declare-fun m!6494900 () Bool)

(assert (=> b!5478817 m!6494900))

(assert (=> b!5478109 d!1740549))

(declare-fun bs!1266009 () Bool)

(declare-fun d!1740551 () Bool)

(assert (= bs!1266009 (and d!1740551 b!5477507)))

(declare-fun lambda!292218 () Int)

(assert (=> bs!1266009 (= (= (head!11735 s!2326) (h!68697 s!2326)) (= lambda!292218 lambda!292087))))

(declare-fun bs!1266010 () Bool)

(assert (= bs!1266010 (and d!1740551 d!1740409)))

(assert (=> bs!1266010 (= (= (head!11735 s!2326) (head!11735 (t!375602 s!2326))) (= lambda!292218 lambda!292206))))

(declare-fun bs!1266011 () Bool)

(assert (= bs!1266011 (and d!1740551 d!1740207)))

(assert (=> bs!1266011 (= (= (head!11735 s!2326) (h!68697 s!2326)) (= lambda!292218 lambda!292137))))

(declare-fun bs!1266012 () Bool)

(assert (= bs!1266012 (and d!1740551 d!1740159)))

(assert (=> bs!1266012 (= (= (head!11735 s!2326) (h!68697 s!2326)) (= lambda!292218 lambda!292117))))

(declare-fun bs!1266013 () Bool)

(assert (= bs!1266013 (and d!1740551 d!1740155)))

(assert (=> bs!1266013 (= (= (head!11735 s!2326) (h!68697 s!2326)) (= lambda!292218 lambda!292116))))

(assert (=> d!1740551 true))

(assert (=> d!1740551 (= (derivationStepZipper!1553 z!1189 (head!11735 s!2326)) (flatMap!1061 z!1189 lambda!292218))))

(declare-fun bs!1266014 () Bool)

(assert (= bs!1266014 d!1740551))

(declare-fun m!6494902 () Bool)

(assert (=> bs!1266014 m!6494902))

(assert (=> b!5478109 d!1740551))

(assert (=> b!5478109 d!1740397))

(assert (=> b!5478109 d!1740383))

(declare-fun b!5478818 () Bool)

(declare-fun e!3391032 () Bool)

(assert (=> b!5478818 (= e!3391032 (= (head!11735 (tail!10832 s!2326)) (c!956963 (derivativeStep!4330 lt!2237470 (head!11735 s!2326)))))))

(declare-fun b!5478819 () Bool)

(declare-fun res!2335550 () Bool)

(declare-fun e!3391036 () Bool)

(assert (=> b!5478819 (=> res!2335550 e!3391036)))

(assert (=> b!5478819 (= res!2335550 e!3391032)))

(declare-fun res!2335546 () Bool)

(assert (=> b!5478819 (=> (not res!2335546) (not e!3391032))))

(declare-fun lt!2237683 () Bool)

(assert (=> b!5478819 (= res!2335546 lt!2237683)))

(declare-fun b!5478820 () Bool)

(declare-fun res!2335548 () Bool)

(assert (=> b!5478820 (=> (not res!2335548) (not e!3391032))))

(declare-fun call!404316 () Bool)

(assert (=> b!5478820 (= res!2335548 (not call!404316))))

(declare-fun b!5478821 () Bool)

(declare-fun e!3391033 () Bool)

(assert (=> b!5478821 (= e!3391033 (matchR!7543 (derivativeStep!4330 (derivativeStep!4330 lt!2237470 (head!11735 s!2326)) (head!11735 (tail!10832 s!2326))) (tail!10832 (tail!10832 s!2326))))))

(declare-fun b!5478822 () Bool)

(declare-fun res!2335553 () Bool)

(assert (=> b!5478822 (=> res!2335553 e!3391036)))

(assert (=> b!5478822 (= res!2335553 (not (is-ElementMatch!15358 (derivativeStep!4330 lt!2237470 (head!11735 s!2326)))))))

(declare-fun e!3391035 () Bool)

(assert (=> b!5478822 (= e!3391035 e!3391036)))

(declare-fun b!5478823 () Bool)

(declare-fun res!2335547 () Bool)

(declare-fun e!3391034 () Bool)

(assert (=> b!5478823 (=> res!2335547 e!3391034)))

(assert (=> b!5478823 (= res!2335547 (not (isEmpty!34205 (tail!10832 (tail!10832 s!2326)))))))

(declare-fun bm!404311 () Bool)

(assert (=> bm!404311 (= call!404316 (isEmpty!34205 (tail!10832 s!2326)))))

(declare-fun b!5478825 () Bool)

(assert (=> b!5478825 (= e!3391035 (not lt!2237683))))

(declare-fun b!5478826 () Bool)

(assert (=> b!5478826 (= e!3391034 (not (= (head!11735 (tail!10832 s!2326)) (c!956963 (derivativeStep!4330 lt!2237470 (head!11735 s!2326))))))))

(declare-fun b!5478827 () Bool)

(declare-fun e!3391030 () Bool)

(assert (=> b!5478827 (= e!3391030 (= lt!2237683 call!404316))))

(declare-fun b!5478828 () Bool)

(assert (=> b!5478828 (= e!3391030 e!3391035)))

(declare-fun c!957299 () Bool)

(assert (=> b!5478828 (= c!957299 (is-EmptyLang!15358 (derivativeStep!4330 lt!2237470 (head!11735 s!2326))))))

(declare-fun b!5478829 () Bool)

(declare-fun e!3391031 () Bool)

(assert (=> b!5478829 (= e!3391036 e!3391031)))

(declare-fun res!2335549 () Bool)

(assert (=> b!5478829 (=> (not res!2335549) (not e!3391031))))

(assert (=> b!5478829 (= res!2335549 (not lt!2237683))))

(declare-fun b!5478824 () Bool)

(declare-fun res!2335551 () Bool)

(assert (=> b!5478824 (=> (not res!2335551) (not e!3391032))))

(assert (=> b!5478824 (= res!2335551 (isEmpty!34205 (tail!10832 (tail!10832 s!2326))))))

(declare-fun d!1740553 () Bool)

(assert (=> d!1740553 e!3391030))

(declare-fun c!957301 () Bool)

(assert (=> d!1740553 (= c!957301 (is-EmptyExpr!15358 (derivativeStep!4330 lt!2237470 (head!11735 s!2326))))))

(assert (=> d!1740553 (= lt!2237683 e!3391033)))

(declare-fun c!957300 () Bool)

(assert (=> d!1740553 (= c!957300 (isEmpty!34205 (tail!10832 s!2326)))))

(assert (=> d!1740553 (validRegex!7094 (derivativeStep!4330 lt!2237470 (head!11735 s!2326)))))

(assert (=> d!1740553 (= (matchR!7543 (derivativeStep!4330 lt!2237470 (head!11735 s!2326)) (tail!10832 s!2326)) lt!2237683)))

(declare-fun b!5478830 () Bool)

(assert (=> b!5478830 (= e!3391031 e!3391034)))

(declare-fun res!2335552 () Bool)

(assert (=> b!5478830 (=> res!2335552 e!3391034)))

(assert (=> b!5478830 (= res!2335552 call!404316)))

(declare-fun b!5478831 () Bool)

(assert (=> b!5478831 (= e!3391033 (nullable!5485 (derivativeStep!4330 lt!2237470 (head!11735 s!2326))))))

(assert (= (and d!1740553 c!957300) b!5478831))

(assert (= (and d!1740553 (not c!957300)) b!5478821))

(assert (= (and d!1740553 c!957301) b!5478827))

(assert (= (and d!1740553 (not c!957301)) b!5478828))

(assert (= (and b!5478828 c!957299) b!5478825))

(assert (= (and b!5478828 (not c!957299)) b!5478822))

(assert (= (and b!5478822 (not res!2335553)) b!5478819))

(assert (= (and b!5478819 res!2335546) b!5478820))

(assert (= (and b!5478820 res!2335548) b!5478824))

(assert (= (and b!5478824 res!2335551) b!5478818))

(assert (= (and b!5478819 (not res!2335550)) b!5478829))

(assert (= (and b!5478829 res!2335549) b!5478830))

(assert (= (and b!5478830 (not res!2335552)) b!5478823))

(assert (= (and b!5478823 (not res!2335547)) b!5478826))

(assert (= (or b!5478827 b!5478820 b!5478830) bm!404311))

(assert (=> b!5478831 m!6494064))

(declare-fun m!6494904 () Bool)

(assert (=> b!5478831 m!6494904))

(assert (=> d!1740553 m!6493946))

(assert (=> d!1740553 m!6494002))

(assert (=> d!1740553 m!6494064))

(declare-fun m!6494906 () Bool)

(assert (=> d!1740553 m!6494906))

(assert (=> b!5478824 m!6493946))

(assert (=> b!5478824 m!6494848))

(assert (=> b!5478824 m!6494848))

(assert (=> b!5478824 m!6494850))

(assert (=> b!5478823 m!6493946))

(assert (=> b!5478823 m!6494848))

(assert (=> b!5478823 m!6494848))

(assert (=> b!5478823 m!6494850))

(assert (=> b!5478818 m!6493946))

(assert (=> b!5478818 m!6494852))

(assert (=> bm!404311 m!6493946))

(assert (=> bm!404311 m!6494002))

(assert (=> b!5478826 m!6493946))

(assert (=> b!5478826 m!6494852))

(assert (=> b!5478821 m!6493946))

(assert (=> b!5478821 m!6494852))

(assert (=> b!5478821 m!6494064))

(assert (=> b!5478821 m!6494852))

(declare-fun m!6494908 () Bool)

(assert (=> b!5478821 m!6494908))

(assert (=> b!5478821 m!6493946))

(assert (=> b!5478821 m!6494848))

(assert (=> b!5478821 m!6494908))

(assert (=> b!5478821 m!6494848))

(declare-fun m!6494910 () Bool)

(assert (=> b!5478821 m!6494910))

(assert (=> b!5477872 d!1740553))

(declare-fun bm!404312 () Bool)

(declare-fun call!404317 () Regex!15358)

(declare-fun call!404319 () Regex!15358)

(assert (=> bm!404312 (= call!404317 call!404319)))

(declare-fun b!5478832 () Bool)

(declare-fun e!3391039 () Regex!15358)

(declare-fun call!404320 () Regex!15358)

(declare-fun call!404318 () Regex!15358)

(assert (=> b!5478832 (= e!3391039 (Union!15358 call!404320 call!404318))))

(declare-fun b!5478833 () Bool)

(declare-fun e!3391040 () Regex!15358)

(assert (=> b!5478833 (= e!3391039 e!3391040)))

(declare-fun c!957306 () Bool)

(assert (=> b!5478833 (= c!957306 (is-Star!15358 lt!2237470))))

(declare-fun d!1740555 () Bool)

(declare-fun lt!2237684 () Regex!15358)

(assert (=> d!1740555 (validRegex!7094 lt!2237684)))

(declare-fun e!3391041 () Regex!15358)

(assert (=> d!1740555 (= lt!2237684 e!3391041)))

(declare-fun c!957304 () Bool)

(assert (=> d!1740555 (= c!957304 (or (is-EmptyExpr!15358 lt!2237470) (is-EmptyLang!15358 lt!2237470)))))

(assert (=> d!1740555 (validRegex!7094 lt!2237470)))

(assert (=> d!1740555 (= (derivativeStep!4330 lt!2237470 (head!11735 s!2326)) lt!2237684)))

(declare-fun b!5478834 () Bool)

(declare-fun c!957302 () Bool)

(assert (=> b!5478834 (= c!957302 (nullable!5485 (regOne!31228 lt!2237470)))))

(declare-fun e!3391038 () Regex!15358)

(assert (=> b!5478834 (= e!3391040 e!3391038)))

(declare-fun b!5478835 () Bool)

(assert (=> b!5478835 (= e!3391041 EmptyLang!15358)))

(declare-fun b!5478836 () Bool)

(assert (=> b!5478836 (= e!3391038 (Union!15358 (Concat!24203 call!404320 (regTwo!31228 lt!2237470)) call!404317))))

(declare-fun c!957303 () Bool)

(declare-fun bm!404313 () Bool)

(assert (=> bm!404313 (= call!404320 (derivativeStep!4330 (ite c!957303 (regOne!31229 lt!2237470) (regOne!31228 lt!2237470)) (head!11735 s!2326)))))

(declare-fun bm!404314 () Bool)

(assert (=> bm!404314 (= call!404318 (derivativeStep!4330 (ite c!957303 (regTwo!31229 lt!2237470) (ite c!957306 (reg!15687 lt!2237470) (ite c!957302 (regTwo!31228 lt!2237470) (regOne!31228 lt!2237470)))) (head!11735 s!2326)))))

(declare-fun b!5478837 () Bool)

(assert (=> b!5478837 (= c!957303 (is-Union!15358 lt!2237470))))

(declare-fun e!3391037 () Regex!15358)

(assert (=> b!5478837 (= e!3391037 e!3391039)))

(declare-fun b!5478838 () Bool)

(assert (=> b!5478838 (= e!3391037 (ite (= (head!11735 s!2326) (c!956963 lt!2237470)) EmptyExpr!15358 EmptyLang!15358))))

(declare-fun bm!404315 () Bool)

(assert (=> bm!404315 (= call!404319 call!404318)))

(declare-fun b!5478839 () Bool)

(assert (=> b!5478839 (= e!3391041 e!3391037)))

(declare-fun c!957305 () Bool)

(assert (=> b!5478839 (= c!957305 (is-ElementMatch!15358 lt!2237470))))

(declare-fun b!5478840 () Bool)

(assert (=> b!5478840 (= e!3391040 (Concat!24203 call!404319 lt!2237470))))

(declare-fun b!5478841 () Bool)

(assert (=> b!5478841 (= e!3391038 (Union!15358 (Concat!24203 call!404317 (regTwo!31228 lt!2237470)) EmptyLang!15358))))

(assert (= (and d!1740555 c!957304) b!5478835))

(assert (= (and d!1740555 (not c!957304)) b!5478839))

(assert (= (and b!5478839 c!957305) b!5478838))

(assert (= (and b!5478839 (not c!957305)) b!5478837))

(assert (= (and b!5478837 c!957303) b!5478832))

(assert (= (and b!5478837 (not c!957303)) b!5478833))

(assert (= (and b!5478833 c!957306) b!5478840))

(assert (= (and b!5478833 (not c!957306)) b!5478834))

(assert (= (and b!5478834 c!957302) b!5478836))

(assert (= (and b!5478834 (not c!957302)) b!5478841))

(assert (= (or b!5478836 b!5478841) bm!404312))

(assert (= (or b!5478840 bm!404312) bm!404315))

(assert (= (or b!5478832 bm!404315) bm!404314))

(assert (= (or b!5478832 b!5478836) bm!404313))

(declare-fun m!6494912 () Bool)

(assert (=> d!1740555 m!6494912))

(assert (=> d!1740555 m!6494062))

(declare-fun m!6494914 () Bool)

(assert (=> b!5478834 m!6494914))

(assert (=> bm!404313 m!6493942))

(declare-fun m!6494916 () Bool)

(assert (=> bm!404313 m!6494916))

(assert (=> bm!404314 m!6493942))

(declare-fun m!6494918 () Bool)

(assert (=> bm!404314 m!6494918))

(assert (=> b!5477872 d!1740555))

(assert (=> b!5477872 d!1740397))

(assert (=> b!5477872 d!1740383))

(assert (=> d!1740199 d!1740197))

(assert (=> d!1740199 d!1740195))

(declare-fun d!1740557 () Bool)

(assert (=> d!1740557 (= (matchR!7543 lt!2237470 s!2326) (matchRSpec!2461 lt!2237470 s!2326))))

(assert (=> d!1740557 true))

(declare-fun _$88!3694 () Unit!155166)

(assert (=> d!1740557 (= (choose!41677 lt!2237470 s!2326) _$88!3694)))

(declare-fun bs!1266015 () Bool)

(assert (= bs!1266015 d!1740557))

(assert (=> bs!1266015 m!6493826))

(assert (=> bs!1266015 m!6493824))

(assert (=> d!1740199 d!1740557))

(assert (=> d!1740199 d!1740501))

(declare-fun d!1740559 () Bool)

(assert (=> d!1740559 true))

(declare-fun setRes!36012 () Bool)

(assert (=> d!1740559 setRes!36012))

(declare-fun condSetEmpty!36012 () Bool)

(declare-fun res!2335554 () (Set Context!9484))

(assert (=> d!1740559 (= condSetEmpty!36012 (= res!2335554 (as set.empty (Set Context!9484))))))

(assert (=> d!1740559 (= (choose!41676 z!1189 lambda!292087) res!2335554)))

(declare-fun setIsEmpty!36012 () Bool)

(assert (=> setIsEmpty!36012 setRes!36012))

(declare-fun e!3391042 () Bool)

(declare-fun setNonEmpty!36012 () Bool)

(declare-fun setElem!36012 () Context!9484)

(declare-fun tp!1505705 () Bool)

(assert (=> setNonEmpty!36012 (= setRes!36012 (and tp!1505705 (inv!81643 setElem!36012) e!3391042))))

(declare-fun setRest!36012 () (Set Context!9484))

(assert (=> setNonEmpty!36012 (= res!2335554 (set.union (set.insert setElem!36012 (as set.empty (Set Context!9484))) setRest!36012))))

(declare-fun b!5478842 () Bool)

(declare-fun tp!1505704 () Bool)

(assert (=> b!5478842 (= e!3391042 tp!1505704)))

(assert (= (and d!1740559 condSetEmpty!36012) setIsEmpty!36012))

(assert (= (and d!1740559 (not condSetEmpty!36012)) setNonEmpty!36012))

(assert (= setNonEmpty!36012 b!5478842))

(declare-fun m!6494920 () Bool)

(assert (=> setNonEmpty!36012 m!6494920))

(assert (=> d!1740253 d!1740559))

(assert (=> d!1740157 d!1740167))

(declare-fun d!1740561 () Bool)

(assert (=> d!1740561 (= (flatMap!1061 lt!2237479 lambda!292087) (dynLambda!24434 lambda!292087 lt!2237457))))

(assert (=> d!1740561 true))

(declare-fun _$13!1985 () Unit!155166)

(assert (=> d!1740561 (= (choose!41675 lt!2237479 lt!2237457 lambda!292087) _$13!1985)))

(declare-fun b_lambda!208179 () Bool)

(assert (=> (not b_lambda!208179) (not d!1740561)))

(declare-fun bs!1266016 () Bool)

(assert (= bs!1266016 d!1740561))

(assert (=> bs!1266016 m!6493750))

(assert (=> bs!1266016 m!6493964))

(assert (=> d!1740157 d!1740561))

(declare-fun d!1740563 () Bool)

(declare-fun c!957309 () Bool)

(assert (=> d!1740563 (= c!957309 (is-Nil!62251 lt!2237580))))

(declare-fun e!3391045 () (Set Context!9484))

(assert (=> d!1740563 (= (content!11203 lt!2237580) e!3391045)))

(declare-fun b!5478847 () Bool)

(assert (=> b!5478847 (= e!3391045 (as set.empty (Set Context!9484)))))

(declare-fun b!5478848 () Bool)

(assert (=> b!5478848 (= e!3391045 (set.union (set.insert (h!68699 lt!2237580) (as set.empty (Set Context!9484))) (content!11203 (t!375604 lt!2237580))))))

(assert (= (and d!1740563 c!957309) b!5478847))

(assert (= (and d!1740563 (not c!957309)) b!5478848))

(declare-fun m!6494922 () Bool)

(assert (=> b!5478848 m!6494922))

(declare-fun m!6494924 () Bool)

(assert (=> b!5478848 m!6494924))

(assert (=> b!5477802 d!1740563))

(declare-fun bs!1266017 () Bool)

(declare-fun d!1740565 () Bool)

(assert (= bs!1266017 (and d!1740565 d!1740403)))

(declare-fun lambda!292219 () Int)

(assert (=> bs!1266017 (= lambda!292219 lambda!292205)))

(declare-fun bs!1266018 () Bool)

(assert (= bs!1266018 (and d!1740565 d!1740391)))

(assert (=> bs!1266018 (= lambda!292219 lambda!292199)))

(declare-fun bs!1266019 () Bool)

(assert (= bs!1266019 (and d!1740565 d!1740211)))

(assert (=> bs!1266019 (= lambda!292219 lambda!292145)))

(declare-fun bs!1266020 () Bool)

(assert (= bs!1266020 (and d!1740565 b!5477487)))

(assert (=> bs!1266020 (= lambda!292219 lambda!292088)))

(declare-fun bs!1266021 () Bool)

(assert (= bs!1266021 (and d!1740565 d!1740181)))

(assert (=> bs!1266021 (= lambda!292219 lambda!292126)))

(declare-fun bs!1266022 () Bool)

(assert (= bs!1266022 (and d!1740565 d!1740493)))

(assert (=> bs!1266022 (= lambda!292219 lambda!292212)))

(declare-fun bs!1266023 () Bool)

(assert (= bs!1266023 (and d!1740565 d!1740401)))

(assert (=> bs!1266023 (= lambda!292219 lambda!292204)))

(declare-fun bs!1266024 () Bool)

(assert (= bs!1266024 (and d!1740565 d!1740395)))

(assert (=> bs!1266024 (= lambda!292219 lambda!292203)))

(declare-fun bs!1266025 () Bool)

(assert (= bs!1266025 (and d!1740565 d!1740189)))

(assert (=> bs!1266025 (= lambda!292219 lambda!292129)))

(declare-fun bs!1266026 () Bool)

(assert (= bs!1266026 (and d!1740565 d!1740209)))

(assert (=> bs!1266026 (= lambda!292219 lambda!292142)))

(declare-fun bs!1266027 () Bool)

(assert (= bs!1266027 (and d!1740565 d!1740261)))

(assert (=> bs!1266027 (= lambda!292219 lambda!292164)))

(declare-fun bs!1266028 () Bool)

(assert (= bs!1266028 (and d!1740565 d!1740191)))

(assert (=> bs!1266028 (= lambda!292219 lambda!292130)))

(declare-fun bs!1266029 () Bool)

(assert (= bs!1266029 (and d!1740565 d!1740389)))

(assert (=> bs!1266029 (= lambda!292219 lambda!292198)))

(assert (=> d!1740565 (= (inv!81643 setElem!36004) (forall!14615 (exprs!5242 setElem!36004) lambda!292219))))

(declare-fun bs!1266030 () Bool)

(assert (= bs!1266030 d!1740565))

(declare-fun m!6494926 () Bool)

(assert (=> bs!1266030 m!6494926))

(assert (=> setNonEmpty!36004 d!1740565))

(declare-fun d!1740567 () Bool)

(assert (=> d!1740567 (= (isEmptyExpr!1041 lt!2237577) (is-EmptyExpr!15358 lt!2237577))))

(assert (=> b!5477796 d!1740567))

(assert (=> bs!1265765 d!1740163))

(assert (=> d!1740259 d!1740229))

(declare-fun b!5478849 () Bool)

(declare-fun e!3391048 () Bool)

(assert (=> b!5478849 (= e!3391048 (= (head!11735 (_2!35858 (get!21468 lt!2237612))) (c!956963 r!7292)))))

(declare-fun b!5478850 () Bool)

(declare-fun res!2335559 () Bool)

(declare-fun e!3391052 () Bool)

(assert (=> b!5478850 (=> res!2335559 e!3391052)))

(assert (=> b!5478850 (= res!2335559 e!3391048)))

(declare-fun res!2335555 () Bool)

(assert (=> b!5478850 (=> (not res!2335555) (not e!3391048))))

(declare-fun lt!2237685 () Bool)

(assert (=> b!5478850 (= res!2335555 lt!2237685)))

(declare-fun b!5478851 () Bool)

(declare-fun res!2335557 () Bool)

(assert (=> b!5478851 (=> (not res!2335557) (not e!3391048))))

(declare-fun call!404321 () Bool)

(assert (=> b!5478851 (= res!2335557 (not call!404321))))

(declare-fun b!5478852 () Bool)

(declare-fun e!3391049 () Bool)

(assert (=> b!5478852 (= e!3391049 (matchR!7543 (derivativeStep!4330 r!7292 (head!11735 (_2!35858 (get!21468 lt!2237612)))) (tail!10832 (_2!35858 (get!21468 lt!2237612)))))))

(declare-fun b!5478853 () Bool)

(declare-fun res!2335562 () Bool)

(assert (=> b!5478853 (=> res!2335562 e!3391052)))

(assert (=> b!5478853 (= res!2335562 (not (is-ElementMatch!15358 r!7292)))))

(declare-fun e!3391051 () Bool)

(assert (=> b!5478853 (= e!3391051 e!3391052)))

(declare-fun b!5478854 () Bool)

(declare-fun res!2335556 () Bool)

(declare-fun e!3391050 () Bool)

(assert (=> b!5478854 (=> res!2335556 e!3391050)))

(assert (=> b!5478854 (= res!2335556 (not (isEmpty!34205 (tail!10832 (_2!35858 (get!21468 lt!2237612))))))))

(declare-fun bm!404316 () Bool)

(assert (=> bm!404316 (= call!404321 (isEmpty!34205 (_2!35858 (get!21468 lt!2237612))))))

(declare-fun b!5478856 () Bool)

(assert (=> b!5478856 (= e!3391051 (not lt!2237685))))

(declare-fun b!5478857 () Bool)

(assert (=> b!5478857 (= e!3391050 (not (= (head!11735 (_2!35858 (get!21468 lt!2237612))) (c!956963 r!7292))))))

(declare-fun b!5478858 () Bool)

(declare-fun e!3391046 () Bool)

(assert (=> b!5478858 (= e!3391046 (= lt!2237685 call!404321))))

(declare-fun b!5478859 () Bool)

(assert (=> b!5478859 (= e!3391046 e!3391051)))

(declare-fun c!957310 () Bool)

(assert (=> b!5478859 (= c!957310 (is-EmptyLang!15358 r!7292))))

(declare-fun b!5478860 () Bool)

(declare-fun e!3391047 () Bool)

(assert (=> b!5478860 (= e!3391052 e!3391047)))

(declare-fun res!2335558 () Bool)

(assert (=> b!5478860 (=> (not res!2335558) (not e!3391047))))

(assert (=> b!5478860 (= res!2335558 (not lt!2237685))))

(declare-fun b!5478855 () Bool)

(declare-fun res!2335560 () Bool)

(assert (=> b!5478855 (=> (not res!2335560) (not e!3391048))))

(assert (=> b!5478855 (= res!2335560 (isEmpty!34205 (tail!10832 (_2!35858 (get!21468 lt!2237612)))))))

(declare-fun d!1740569 () Bool)

(assert (=> d!1740569 e!3391046))

(declare-fun c!957312 () Bool)

(assert (=> d!1740569 (= c!957312 (is-EmptyExpr!15358 r!7292))))

(assert (=> d!1740569 (= lt!2237685 e!3391049)))

(declare-fun c!957311 () Bool)

(assert (=> d!1740569 (= c!957311 (isEmpty!34205 (_2!35858 (get!21468 lt!2237612))))))

(assert (=> d!1740569 (validRegex!7094 r!7292)))

(assert (=> d!1740569 (= (matchR!7543 r!7292 (_2!35858 (get!21468 lt!2237612))) lt!2237685)))

(declare-fun b!5478861 () Bool)

(assert (=> b!5478861 (= e!3391047 e!3391050)))

(declare-fun res!2335561 () Bool)

(assert (=> b!5478861 (=> res!2335561 e!3391050)))

(assert (=> b!5478861 (= res!2335561 call!404321)))

(declare-fun b!5478862 () Bool)

(assert (=> b!5478862 (= e!3391049 (nullable!5485 r!7292))))

(assert (= (and d!1740569 c!957311) b!5478862))

(assert (= (and d!1740569 (not c!957311)) b!5478852))

(assert (= (and d!1740569 c!957312) b!5478858))

(assert (= (and d!1740569 (not c!957312)) b!5478859))

(assert (= (and b!5478859 c!957310) b!5478856))

(assert (= (and b!5478859 (not c!957310)) b!5478853))

(assert (= (and b!5478853 (not res!2335562)) b!5478850))

(assert (= (and b!5478850 res!2335555) b!5478851))

(assert (= (and b!5478851 res!2335557) b!5478855))

(assert (= (and b!5478855 res!2335560) b!5478849))

(assert (= (and b!5478850 (not res!2335559)) b!5478860))

(assert (= (and b!5478860 res!2335558) b!5478861))

(assert (= (and b!5478861 (not res!2335561)) b!5478854))

(assert (= (and b!5478854 (not res!2335556)) b!5478857))

(assert (= (or b!5478858 b!5478851 b!5478861) bm!404316))

(assert (=> b!5478862 m!6494000))

(declare-fun m!6494928 () Bool)

(assert (=> d!1740569 m!6494928))

(assert (=> d!1740569 m!6493724))

(declare-fun m!6494930 () Bool)

(assert (=> b!5478855 m!6494930))

(assert (=> b!5478855 m!6494930))

(declare-fun m!6494932 () Bool)

(assert (=> b!5478855 m!6494932))

(assert (=> b!5478854 m!6494930))

(assert (=> b!5478854 m!6494930))

(assert (=> b!5478854 m!6494932))

(declare-fun m!6494934 () Bool)

(assert (=> b!5478849 m!6494934))

(assert (=> bm!404316 m!6494928))

(assert (=> b!5478857 m!6494934))

(assert (=> b!5478852 m!6494934))

(assert (=> b!5478852 m!6494934))

(declare-fun m!6494936 () Bool)

(assert (=> b!5478852 m!6494936))

(assert (=> b!5478852 m!6494930))

(assert (=> b!5478852 m!6494936))

(assert (=> b!5478852 m!6494930))

(declare-fun m!6494938 () Bool)

(assert (=> b!5478852 m!6494938))

(assert (=> b!5478051 d!1740569))

(assert (=> b!5478051 d!1740421))

(declare-fun d!1740571 () Bool)

(assert (=> d!1740571 (= (flatMap!1061 lt!2237466 lambda!292117) (choose!41676 lt!2237466 lambda!292117))))

(declare-fun bs!1266031 () Bool)

(assert (= bs!1266031 d!1740571))

(declare-fun m!6494940 () Bool)

(assert (=> bs!1266031 m!6494940))

(assert (=> d!1740159 d!1740571))

(declare-fun bs!1266032 () Bool)

(declare-fun d!1740573 () Bool)

(assert (= bs!1266032 (and d!1740573 d!1740403)))

(declare-fun lambda!292220 () Int)

(assert (=> bs!1266032 (= lambda!292220 lambda!292205)))

(declare-fun bs!1266033 () Bool)

(assert (= bs!1266033 (and d!1740573 d!1740211)))

(assert (=> bs!1266033 (= lambda!292220 lambda!292145)))

(declare-fun bs!1266034 () Bool)

(assert (= bs!1266034 (and d!1740573 b!5477487)))

(assert (=> bs!1266034 (= lambda!292220 lambda!292088)))

(declare-fun bs!1266035 () Bool)

(assert (= bs!1266035 (and d!1740573 d!1740181)))

(assert (=> bs!1266035 (= lambda!292220 lambda!292126)))

(declare-fun bs!1266036 () Bool)

(assert (= bs!1266036 (and d!1740573 d!1740493)))

(assert (=> bs!1266036 (= lambda!292220 lambda!292212)))

(declare-fun bs!1266037 () Bool)

(assert (= bs!1266037 (and d!1740573 d!1740401)))

(assert (=> bs!1266037 (= lambda!292220 lambda!292204)))

(declare-fun bs!1266038 () Bool)

(assert (= bs!1266038 (and d!1740573 d!1740395)))

(assert (=> bs!1266038 (= lambda!292220 lambda!292203)))

(declare-fun bs!1266039 () Bool)

(assert (= bs!1266039 (and d!1740573 d!1740189)))

(assert (=> bs!1266039 (= lambda!292220 lambda!292129)))

(declare-fun bs!1266040 () Bool)

(assert (= bs!1266040 (and d!1740573 d!1740391)))

(assert (=> bs!1266040 (= lambda!292220 lambda!292199)))

(declare-fun bs!1266041 () Bool)

(assert (= bs!1266041 (and d!1740573 d!1740565)))

(assert (=> bs!1266041 (= lambda!292220 lambda!292219)))

(declare-fun bs!1266042 () Bool)

(assert (= bs!1266042 (and d!1740573 d!1740209)))

(assert (=> bs!1266042 (= lambda!292220 lambda!292142)))

(declare-fun bs!1266043 () Bool)

(assert (= bs!1266043 (and d!1740573 d!1740261)))

(assert (=> bs!1266043 (= lambda!292220 lambda!292164)))

(declare-fun bs!1266044 () Bool)

(assert (= bs!1266044 (and d!1740573 d!1740191)))

(assert (=> bs!1266044 (= lambda!292220 lambda!292130)))

(declare-fun bs!1266045 () Bool)

(assert (= bs!1266045 (and d!1740573 d!1740389)))

(assert (=> bs!1266045 (= lambda!292220 lambda!292198)))

(declare-fun b!5478863 () Bool)

(declare-fun e!3391057 () Regex!15358)

(assert (=> b!5478863 (= e!3391057 (Concat!24203 (h!68698 (t!375603 (exprs!5242 (h!68699 zl!343)))) (generalisedConcat!1027 (t!375603 (t!375603 (exprs!5242 (h!68699 zl!343)))))))))

(declare-fun b!5478864 () Bool)

(declare-fun e!3391058 () Bool)

(declare-fun lt!2237686 () Regex!15358)

(assert (=> b!5478864 (= e!3391058 (= lt!2237686 (head!11736 (t!375603 (exprs!5242 (h!68699 zl!343))))))))

(declare-fun e!3391055 () Bool)

(assert (=> d!1740573 e!3391055))

(declare-fun res!2335563 () Bool)

(assert (=> d!1740573 (=> (not res!2335563) (not e!3391055))))

(assert (=> d!1740573 (= res!2335563 (validRegex!7094 lt!2237686))))

(declare-fun e!3391053 () Regex!15358)

(assert (=> d!1740573 (= lt!2237686 e!3391053)))

(declare-fun c!957316 () Bool)

(declare-fun e!3391054 () Bool)

(assert (=> d!1740573 (= c!957316 e!3391054)))

(declare-fun res!2335564 () Bool)

(assert (=> d!1740573 (=> (not res!2335564) (not e!3391054))))

(assert (=> d!1740573 (= res!2335564 (is-Cons!62250 (t!375603 (exprs!5242 (h!68699 zl!343)))))))

(assert (=> d!1740573 (forall!14615 (t!375603 (exprs!5242 (h!68699 zl!343))) lambda!292220)))

(assert (=> d!1740573 (= (generalisedConcat!1027 (t!375603 (exprs!5242 (h!68699 zl!343)))) lt!2237686)))

(declare-fun b!5478865 () Bool)

(assert (=> b!5478865 (= e!3391057 EmptyExpr!15358)))

(declare-fun b!5478866 () Bool)

(assert (=> b!5478866 (= e!3391058 (isConcat!564 lt!2237686))))

(declare-fun b!5478867 () Bool)

(assert (=> b!5478867 (= e!3391053 e!3391057)))

(declare-fun c!957314 () Bool)

(assert (=> b!5478867 (= c!957314 (is-Cons!62250 (t!375603 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun b!5478868 () Bool)

(assert (=> b!5478868 (= e!3391053 (h!68698 (t!375603 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun b!5478869 () Bool)

(declare-fun e!3391056 () Bool)

(assert (=> b!5478869 (= e!3391056 (isEmptyExpr!1041 lt!2237686))))

(declare-fun b!5478870 () Bool)

(assert (=> b!5478870 (= e!3391056 e!3391058)))

(declare-fun c!957315 () Bool)

(assert (=> b!5478870 (= c!957315 (isEmpty!34208 (tail!10833 (t!375603 (exprs!5242 (h!68699 zl!343))))))))

(declare-fun b!5478871 () Bool)

(assert (=> b!5478871 (= e!3391054 (isEmpty!34208 (t!375603 (t!375603 (exprs!5242 (h!68699 zl!343))))))))

(declare-fun b!5478872 () Bool)

(assert (=> b!5478872 (= e!3391055 e!3391056)))

(declare-fun c!957313 () Bool)

(assert (=> b!5478872 (= c!957313 (isEmpty!34208 (t!375603 (exprs!5242 (h!68699 zl!343)))))))

(assert (= (and d!1740573 res!2335564) b!5478871))

(assert (= (and d!1740573 c!957316) b!5478868))

(assert (= (and d!1740573 (not c!957316)) b!5478867))

(assert (= (and b!5478867 c!957314) b!5478863))

(assert (= (and b!5478867 (not c!957314)) b!5478865))

(assert (= (and d!1740573 res!2335563) b!5478872))

(assert (= (and b!5478872 c!957313) b!5478869))

(assert (= (and b!5478872 (not c!957313)) b!5478870))

(assert (= (and b!5478870 c!957315) b!5478864))

(assert (= (and b!5478870 (not c!957315)) b!5478866))

(assert (=> b!5478872 m!6494028))

(declare-fun m!6494942 () Bool)

(assert (=> b!5478870 m!6494942))

(assert (=> b!5478870 m!6494942))

(declare-fun m!6494944 () Bool)

(assert (=> b!5478870 m!6494944))

(declare-fun m!6494946 () Bool)

(assert (=> b!5478869 m!6494946))

(declare-fun m!6494948 () Bool)

(assert (=> b!5478864 m!6494948))

(declare-fun m!6494950 () Bool)

(assert (=> b!5478863 m!6494950))

(declare-fun m!6494952 () Bool)

(assert (=> b!5478871 m!6494952))

(declare-fun m!6494954 () Bool)

(assert (=> d!1740573 m!6494954))

(declare-fun m!6494956 () Bool)

(assert (=> d!1740573 m!6494956))

(declare-fun m!6494958 () Bool)

(assert (=> b!5478866 m!6494958))

(assert (=> b!5477790 d!1740573))

(declare-fun d!1740575 () Bool)

(assert (=> d!1740575 (= (nullable!5485 lt!2237470) (nullableFct!1640 lt!2237470))))

(declare-fun bs!1266046 () Bool)

(assert (= bs!1266046 d!1740575))

(declare-fun m!6494960 () Bool)

(assert (=> bs!1266046 m!6494960))

(assert (=> b!5477882 d!1740575))

(assert (=> d!1740251 d!1740247))

(declare-fun d!1740577 () Bool)

(assert (=> d!1740577 (= (flatMap!1061 lt!2237468 lambda!292087) (dynLambda!24434 lambda!292087 lt!2237476))))

(assert (=> d!1740577 true))

(declare-fun _$13!1986 () Unit!155166)

(assert (=> d!1740577 (= (choose!41675 lt!2237468 lt!2237476 lambda!292087) _$13!1986)))

(declare-fun b_lambda!208181 () Bool)

(assert (=> (not b_lambda!208181) (not d!1740577)))

(declare-fun bs!1266047 () Bool)

(assert (= bs!1266047 d!1740577))

(assert (=> bs!1266047 m!6493780))

(assert (=> bs!1266047 m!6494212))

(assert (=> d!1740251 d!1740577))

(assert (=> d!1740175 d!1740229))

(assert (=> d!1740175 d!1740187))

(declare-fun d!1740579 () Bool)

(assert (=> d!1740579 (= (nullable!5485 (reg!15687 r!7292)) (nullableFct!1640 (reg!15687 r!7292)))))

(declare-fun bs!1266048 () Bool)

(assert (= bs!1266048 d!1740579))

(declare-fun m!6494962 () Bool)

(assert (=> bs!1266048 m!6494962))

(assert (=> b!5477827 d!1740579))

(declare-fun d!1740581 () Bool)

(declare-fun c!957317 () Bool)

(assert (=> d!1740581 (= c!957317 (isEmpty!34205 (tail!10832 s!2326)))))

(declare-fun e!3391059 () Bool)

(assert (=> d!1740581 (= (matchZipper!1576 (derivationStepZipper!1553 lt!2237468 (head!11735 s!2326)) (tail!10832 s!2326)) e!3391059)))

(declare-fun b!5478873 () Bool)

(assert (=> b!5478873 (= e!3391059 (nullableZipper!1506 (derivationStepZipper!1553 lt!2237468 (head!11735 s!2326))))))

(declare-fun b!5478874 () Bool)

(assert (=> b!5478874 (= e!3391059 (matchZipper!1576 (derivationStepZipper!1553 (derivationStepZipper!1553 lt!2237468 (head!11735 s!2326)) (head!11735 (tail!10832 s!2326))) (tail!10832 (tail!10832 s!2326))))))

(assert (= (and d!1740581 c!957317) b!5478873))

(assert (= (and d!1740581 (not c!957317)) b!5478874))

(assert (=> d!1740581 m!6493946))

(assert (=> d!1740581 m!6494002))

(assert (=> b!5478873 m!6493944))

(declare-fun m!6494964 () Bool)

(assert (=> b!5478873 m!6494964))

(assert (=> b!5478874 m!6493946))

(assert (=> b!5478874 m!6494852))

(assert (=> b!5478874 m!6493944))

(assert (=> b!5478874 m!6494852))

(declare-fun m!6494966 () Bool)

(assert (=> b!5478874 m!6494966))

(assert (=> b!5478874 m!6493946))

(assert (=> b!5478874 m!6494848))

(assert (=> b!5478874 m!6494966))

(assert (=> b!5478874 m!6494848))

(declare-fun m!6494968 () Bool)

(assert (=> b!5478874 m!6494968))

(assert (=> b!5477654 d!1740581))

(declare-fun bs!1266049 () Bool)

(declare-fun d!1740583 () Bool)

(assert (= bs!1266049 (and d!1740583 b!5477507)))

(declare-fun lambda!292221 () Int)

(assert (=> bs!1266049 (= (= (head!11735 s!2326) (h!68697 s!2326)) (= lambda!292221 lambda!292087))))

(declare-fun bs!1266050 () Bool)

(assert (= bs!1266050 (and d!1740583 d!1740409)))

(assert (=> bs!1266050 (= (= (head!11735 s!2326) (head!11735 (t!375602 s!2326))) (= lambda!292221 lambda!292206))))

(declare-fun bs!1266051 () Bool)

(assert (= bs!1266051 (and d!1740583 d!1740207)))

(assert (=> bs!1266051 (= (= (head!11735 s!2326) (h!68697 s!2326)) (= lambda!292221 lambda!292137))))

(declare-fun bs!1266052 () Bool)

(assert (= bs!1266052 (and d!1740583 d!1740551)))

(assert (=> bs!1266052 (= lambda!292221 lambda!292218)))

(declare-fun bs!1266053 () Bool)

(assert (= bs!1266053 (and d!1740583 d!1740159)))

(assert (=> bs!1266053 (= (= (head!11735 s!2326) (h!68697 s!2326)) (= lambda!292221 lambda!292117))))

(declare-fun bs!1266054 () Bool)

(assert (= bs!1266054 (and d!1740583 d!1740155)))

(assert (=> bs!1266054 (= (= (head!11735 s!2326) (h!68697 s!2326)) (= lambda!292221 lambda!292116))))

(assert (=> d!1740583 true))

(assert (=> d!1740583 (= (derivationStepZipper!1553 lt!2237468 (head!11735 s!2326)) (flatMap!1061 lt!2237468 lambda!292221))))

(declare-fun bs!1266055 () Bool)

(assert (= bs!1266055 d!1740583))

(declare-fun m!6494970 () Bool)

(assert (=> bs!1266055 m!6494970))

(assert (=> b!5477654 d!1740583))

(assert (=> b!5477654 d!1740397))

(assert (=> b!5477654 d!1740383))

(declare-fun d!1740585 () Bool)

(assert (=> d!1740585 true))

(declare-fun setRes!36013 () Bool)

(assert (=> d!1740585 setRes!36013))

(declare-fun condSetEmpty!36013 () Bool)

(declare-fun res!2335565 () (Set Context!9484))

(assert (=> d!1740585 (= condSetEmpty!36013 (= res!2335565 (as set.empty (Set Context!9484))))))

(assert (=> d!1740585 (= (choose!41676 lt!2237466 lambda!292087) res!2335565)))

(declare-fun setIsEmpty!36013 () Bool)

(assert (=> setIsEmpty!36013 setRes!36013))

(declare-fun tp!1505707 () Bool)

(declare-fun setNonEmpty!36013 () Bool)

(declare-fun e!3391060 () Bool)

(declare-fun setElem!36013 () Context!9484)

(assert (=> setNonEmpty!36013 (= setRes!36013 (and tp!1505707 (inv!81643 setElem!36013) e!3391060))))

(declare-fun setRest!36013 () (Set Context!9484))

(assert (=> setNonEmpty!36013 (= res!2335565 (set.union (set.insert setElem!36013 (as set.empty (Set Context!9484))) setRest!36013))))

(declare-fun b!5478875 () Bool)

(declare-fun tp!1505706 () Bool)

(assert (=> b!5478875 (= e!3391060 tp!1505706)))

(assert (= (and d!1740585 condSetEmpty!36013) setIsEmpty!36013))

(assert (= (and d!1740585 (not condSetEmpty!36013)) setNonEmpty!36013))

(assert (= setNonEmpty!36013 b!5478875))

(declare-fun m!6494972 () Bool)

(assert (=> setNonEmpty!36013 m!6494972))

(assert (=> d!1740169 d!1740585))

(declare-fun bm!404317 () Bool)

(declare-fun call!404323 () (Set Context!9484))

(declare-fun call!404325 () (Set Context!9484))

(assert (=> bm!404317 (= call!404323 call!404325)))

(declare-fun bm!404318 () Bool)

(declare-fun c!957321 () Bool)

(declare-fun call!404326 () List!62374)

(declare-fun call!404324 () (Set Context!9484))

(assert (=> bm!404318 (= call!404324 (derivationStepZipperDown!784 (ite c!957321 (regTwo!31229 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (regOne!31228 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250)))))) (ite c!957321 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (Context!9485 call!404326)) (h!68697 s!2326)))))

(declare-fun d!1740587 () Bool)

(declare-fun c!957319 () Bool)

(assert (=> d!1740587 (= c!957319 (and (is-ElementMatch!15358 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (= (c!956963 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (h!68697 s!2326))))))

(declare-fun e!3391061 () (Set Context!9484))

(assert (=> d!1740587 (= (derivationStepZipperDown!784 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250)))) (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (h!68697 s!2326)) e!3391061)))

(declare-fun b!5478876 () Bool)

(declare-fun c!957318 () Bool)

(declare-fun e!3391065 () Bool)

(assert (=> b!5478876 (= c!957318 e!3391065)))

(declare-fun res!2335566 () Bool)

(assert (=> b!5478876 (=> (not res!2335566) (not e!3391065))))

(assert (=> b!5478876 (= res!2335566 (is-Concat!24203 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))))))

(declare-fun e!3391063 () (Set Context!9484))

(declare-fun e!3391064 () (Set Context!9484))

(assert (=> b!5478876 (= e!3391063 e!3391064)))

(declare-fun bm!404319 () Bool)

(declare-fun call!404327 () List!62374)

(assert (=> bm!404319 (= call!404327 call!404326)))

(declare-fun b!5478877 () Bool)

(assert (=> b!5478877 (= e!3391065 (nullable!5485 (regOne!31228 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250)))))))))

(declare-fun b!5478878 () Bool)

(declare-fun e!3391062 () (Set Context!9484))

(declare-fun call!404322 () (Set Context!9484))

(assert (=> b!5478878 (= e!3391062 call!404322)))

(declare-fun bm!404320 () Bool)

(declare-fun c!957320 () Bool)

(assert (=> bm!404320 (= call!404325 (derivationStepZipperDown!784 (ite c!957321 (regOne!31229 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (ite c!957318 (regTwo!31228 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (ite c!957320 (regOne!31228 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (reg!15687 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250)))))))) (ite (or c!957321 c!957318) (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (Context!9485 call!404327)) (h!68697 s!2326)))))

(declare-fun b!5478879 () Bool)

(assert (=> b!5478879 (= e!3391064 (set.union call!404324 call!404323))))

(declare-fun bm!404321 () Bool)

(assert (=> bm!404321 (= call!404322 call!404323)))

(declare-fun b!5478880 () Bool)

(assert (=> b!5478880 (= e!3391063 (set.union call!404325 call!404324))))

(declare-fun b!5478881 () Bool)

(declare-fun e!3391066 () (Set Context!9484))

(assert (=> b!5478881 (= e!3391066 call!404322)))

(declare-fun b!5478882 () Bool)

(assert (=> b!5478882 (= e!3391061 e!3391063)))

(assert (=> b!5478882 (= c!957321 (is-Union!15358 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))))))

(declare-fun b!5478883 () Bool)

(assert (=> b!5478883 (= e!3391066 (as set.empty (Set Context!9484)))))

(declare-fun bm!404322 () Bool)

(assert (=> bm!404322 (= call!404326 ($colon$colon!1555 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250)))))) (ite (or c!957318 c!957320) (regTwo!31228 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250)))))))))

(declare-fun b!5478884 () Bool)

(declare-fun c!957322 () Bool)

(assert (=> b!5478884 (= c!957322 (is-Star!15358 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))))))

(assert (=> b!5478884 (= e!3391062 e!3391066)))

(declare-fun b!5478885 () Bool)

(assert (=> b!5478885 (= e!3391064 e!3391062)))

(assert (=> b!5478885 (= c!957320 (is-Concat!24203 (h!68698 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))))))

(declare-fun b!5478886 () Bool)

(assert (=> b!5478886 (= e!3391061 (set.insert (Context!9485 (t!375603 (exprs!5242 (Context!9485 (Cons!62250 r!7292 Nil!62250))))) (as set.empty (Set Context!9484))))))

(assert (= (and d!1740587 c!957319) b!5478886))

(assert (= (and d!1740587 (not c!957319)) b!5478882))

(assert (= (and b!5478882 c!957321) b!5478880))

(assert (= (and b!5478882 (not c!957321)) b!5478876))

(assert (= (and b!5478876 res!2335566) b!5478877))

(assert (= (and b!5478876 c!957318) b!5478879))

(assert (= (and b!5478876 (not c!957318)) b!5478885))

(assert (= (and b!5478885 c!957320) b!5478878))

(assert (= (and b!5478885 (not c!957320)) b!5478884))

(assert (= (and b!5478884 c!957322) b!5478881))

(assert (= (and b!5478884 (not c!957322)) b!5478883))

(assert (= (or b!5478878 b!5478881) bm!404319))

(assert (= (or b!5478878 b!5478881) bm!404321))

(assert (= (or b!5478879 bm!404319) bm!404322))

(assert (= (or b!5478879 bm!404321) bm!404317))

(assert (= (or b!5478880 b!5478879) bm!404318))

(assert (= (or b!5478880 bm!404317) bm!404320))

(declare-fun m!6494974 () Bool)

(assert (=> b!5478877 m!6494974))

(declare-fun m!6494976 () Bool)

(assert (=> b!5478886 m!6494976))

(declare-fun m!6494978 () Bool)

(assert (=> bm!404320 m!6494978))

(declare-fun m!6494980 () Bool)

(assert (=> bm!404322 m!6494980))

(declare-fun m!6494982 () Bool)

(assert (=> bm!404318 m!6494982))

(assert (=> bm!404166 d!1740587))

(declare-fun bm!404323 () Bool)

(declare-fun call!404329 () (Set Context!9484))

(declare-fun call!404331 () (Set Context!9484))

(assert (=> bm!404323 (= call!404329 call!404331)))

(declare-fun call!404330 () (Set Context!9484))

(declare-fun call!404332 () List!62374)

(declare-fun c!957326 () Bool)

(declare-fun bm!404324 () Bool)

(assert (=> bm!404324 (= call!404330 (derivationStepZipperDown!784 (ite c!957326 (regTwo!31229 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292)))))) (regOne!31228 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292))))))) (ite c!957326 (ite (or c!957106 c!957103) lt!2237455 (Context!9485 call!404194)) (Context!9485 call!404332)) (h!68697 s!2326)))))

(declare-fun c!957324 () Bool)

(declare-fun d!1740589 () Bool)

(assert (=> d!1740589 (= c!957324 (and (is-ElementMatch!15358 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292)))))) (= (c!956963 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292)))))) (h!68697 s!2326))))))

(declare-fun e!3391067 () (Set Context!9484))

(assert (=> d!1740589 (= (derivationStepZipperDown!784 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292))))) (ite (or c!957106 c!957103) lt!2237455 (Context!9485 call!404194)) (h!68697 s!2326)) e!3391067)))

(declare-fun b!5478887 () Bool)

(declare-fun c!957323 () Bool)

(declare-fun e!3391071 () Bool)

(assert (=> b!5478887 (= c!957323 e!3391071)))

(declare-fun res!2335567 () Bool)

(assert (=> b!5478887 (=> (not res!2335567) (not e!3391071))))

(assert (=> b!5478887 (= res!2335567 (is-Concat!24203 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292)))))))))

(declare-fun e!3391069 () (Set Context!9484))

(declare-fun e!3391070 () (Set Context!9484))

(assert (=> b!5478887 (= e!3391069 e!3391070)))

(declare-fun bm!404325 () Bool)

(declare-fun call!404333 () List!62374)

(assert (=> bm!404325 (= call!404333 call!404332)))

(declare-fun b!5478888 () Bool)

(assert (=> b!5478888 (= e!3391071 (nullable!5485 (regOne!31228 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292))))))))))

(declare-fun b!5478889 () Bool)

(declare-fun e!3391068 () (Set Context!9484))

(declare-fun call!404328 () (Set Context!9484))

(assert (=> b!5478889 (= e!3391068 call!404328)))

(declare-fun c!957325 () Bool)

(declare-fun bm!404326 () Bool)

(assert (=> bm!404326 (= call!404331 (derivationStepZipperDown!784 (ite c!957326 (regOne!31229 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292)))))) (ite c!957323 (regTwo!31228 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292)))))) (ite c!957325 (regOne!31228 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292)))))) (reg!15687 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292))))))))) (ite (or c!957326 c!957323) (ite (or c!957106 c!957103) lt!2237455 (Context!9485 call!404194)) (Context!9485 call!404333)) (h!68697 s!2326)))))

(declare-fun b!5478890 () Bool)

(assert (=> b!5478890 (= e!3391070 (set.union call!404330 call!404329))))

(declare-fun bm!404327 () Bool)

(assert (=> bm!404327 (= call!404328 call!404329)))

(declare-fun b!5478891 () Bool)

(assert (=> b!5478891 (= e!3391069 (set.union call!404331 call!404330))))

(declare-fun b!5478892 () Bool)

(declare-fun e!3391072 () (Set Context!9484))

(assert (=> b!5478892 (= e!3391072 call!404328)))

(declare-fun b!5478893 () Bool)

(assert (=> b!5478893 (= e!3391067 e!3391069)))

(assert (=> b!5478893 (= c!957326 (is-Union!15358 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292)))))))))

(declare-fun b!5478894 () Bool)

(assert (=> b!5478894 (= e!3391072 (as set.empty (Set Context!9484)))))

(declare-fun bm!404328 () Bool)

(assert (=> bm!404328 (= call!404332 ($colon$colon!1555 (exprs!5242 (ite (or c!957106 c!957103) lt!2237455 (Context!9485 call!404194))) (ite (or c!957323 c!957325) (regTwo!31228 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292)))))) (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292))))))))))

(declare-fun b!5478895 () Bool)

(declare-fun c!957327 () Bool)

(assert (=> b!5478895 (= c!957327 (is-Star!15358 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292)))))))))

(assert (=> b!5478895 (= e!3391068 e!3391072)))

(declare-fun b!5478896 () Bool)

(assert (=> b!5478896 (= e!3391070 e!3391068)))

(assert (=> b!5478896 (= c!957325 (is-Concat!24203 (ite c!957106 (regOne!31229 (reg!15687 r!7292)) (ite c!957103 (regTwo!31228 (reg!15687 r!7292)) (ite c!957105 (regOne!31228 (reg!15687 r!7292)) (reg!15687 (reg!15687 r!7292)))))))))

(declare-fun b!5478897 () Bool)

(assert (=> b!5478897 (= e!3391067 (set.insert (ite (or c!957106 c!957103) lt!2237455 (Context!9485 call!404194)) (as set.empty (Set Context!9484))))))

(assert (= (and d!1740589 c!957324) b!5478897))

(assert (= (and d!1740589 (not c!957324)) b!5478893))

(assert (= (and b!5478893 c!957326) b!5478891))

(assert (= (and b!5478893 (not c!957326)) b!5478887))

(assert (= (and b!5478887 res!2335567) b!5478888))

(assert (= (and b!5478887 c!957323) b!5478890))

(assert (= (and b!5478887 (not c!957323)) b!5478896))

(assert (= (and b!5478896 c!957325) b!5478889))

(assert (= (and b!5478896 (not c!957325)) b!5478895))

(assert (= (and b!5478895 c!957327) b!5478892))

(assert (= (and b!5478895 (not c!957327)) b!5478894))

(assert (= (or b!5478889 b!5478892) bm!404325))

(assert (= (or b!5478889 b!5478892) bm!404327))

(assert (= (or b!5478890 bm!404325) bm!404328))

(assert (= (or b!5478890 bm!404327) bm!404323))

(assert (= (or b!5478891 b!5478890) bm!404324))

(assert (= (or b!5478891 bm!404323) bm!404326))

(declare-fun m!6494984 () Bool)

(assert (=> b!5478888 m!6494984))

(declare-fun m!6494986 () Bool)

(assert (=> b!5478897 m!6494986))

(declare-fun m!6494988 () Bool)

(assert (=> bm!404326 m!6494988))

(declare-fun m!6494990 () Bool)

(assert (=> bm!404328 m!6494990))

(declare-fun m!6494992 () Bool)

(assert (=> bm!404324 m!6494992))

(assert (=> bm!404187 d!1740589))

(declare-fun d!1740591 () Bool)

(declare-fun res!2335569 () Bool)

(declare-fun e!3391079 () Bool)

(assert (=> d!1740591 (=> res!2335569 e!3391079)))

(assert (=> d!1740591 (= res!2335569 (is-ElementMatch!15358 lt!2237574))))

(assert (=> d!1740591 (= (validRegex!7094 lt!2237574) e!3391079)))

(declare-fun bm!404329 () Bool)

(declare-fun call!404335 () Bool)

(declare-fun c!957329 () Bool)

(assert (=> bm!404329 (= call!404335 (validRegex!7094 (ite c!957329 (regTwo!31229 lt!2237574) (regTwo!31228 lt!2237574))))))

(declare-fun b!5478898 () Bool)

(declare-fun e!3391076 () Bool)

(assert (=> b!5478898 (= e!3391076 call!404335)))

(declare-fun b!5478899 () Bool)

(declare-fun e!3391077 () Bool)

(declare-fun e!3391073 () Bool)

(assert (=> b!5478899 (= e!3391077 e!3391073)))

(assert (=> b!5478899 (= c!957329 (is-Union!15358 lt!2237574))))

(declare-fun call!404334 () Bool)

(declare-fun bm!404330 () Bool)

(declare-fun c!957328 () Bool)

(assert (=> bm!404330 (= call!404334 (validRegex!7094 (ite c!957328 (reg!15687 lt!2237574) (ite c!957329 (regOne!31229 lt!2237574) (regOne!31228 lt!2237574)))))))

(declare-fun b!5478900 () Bool)

(declare-fun e!3391075 () Bool)

(assert (=> b!5478900 (= e!3391075 e!3391076)))

(declare-fun res!2335571 () Bool)

(assert (=> b!5478900 (=> (not res!2335571) (not e!3391076))))

(declare-fun call!404336 () Bool)

(assert (=> b!5478900 (= res!2335571 call!404336)))

(declare-fun b!5478901 () Bool)

(declare-fun e!3391078 () Bool)

(assert (=> b!5478901 (= e!3391078 call!404335)))

(declare-fun b!5478902 () Bool)

(declare-fun e!3391074 () Bool)

(assert (=> b!5478902 (= e!3391077 e!3391074)))

(declare-fun res!2335568 () Bool)

(assert (=> b!5478902 (= res!2335568 (not (nullable!5485 (reg!15687 lt!2237574))))))

(assert (=> b!5478902 (=> (not res!2335568) (not e!3391074))))

(declare-fun b!5478903 () Bool)

(declare-fun res!2335572 () Bool)

(assert (=> b!5478903 (=> res!2335572 e!3391075)))

(assert (=> b!5478903 (= res!2335572 (not (is-Concat!24203 lt!2237574)))))

(assert (=> b!5478903 (= e!3391073 e!3391075)))

(declare-fun bm!404331 () Bool)

(assert (=> bm!404331 (= call!404336 call!404334)))

(declare-fun b!5478904 () Bool)

(assert (=> b!5478904 (= e!3391074 call!404334)))

(declare-fun b!5478905 () Bool)

(assert (=> b!5478905 (= e!3391079 e!3391077)))

(assert (=> b!5478905 (= c!957328 (is-Star!15358 lt!2237574))))

(declare-fun b!5478906 () Bool)

(declare-fun res!2335570 () Bool)

(assert (=> b!5478906 (=> (not res!2335570) (not e!3391078))))

(assert (=> b!5478906 (= res!2335570 call!404336)))

(assert (=> b!5478906 (= e!3391073 e!3391078)))

(assert (= (and d!1740591 (not res!2335569)) b!5478905))

(assert (= (and b!5478905 c!957328) b!5478902))

(assert (= (and b!5478905 (not c!957328)) b!5478899))

(assert (= (and b!5478902 res!2335568) b!5478904))

(assert (= (and b!5478899 c!957329) b!5478906))

(assert (= (and b!5478899 (not c!957329)) b!5478903))

(assert (= (and b!5478906 res!2335570) b!5478901))

(assert (= (and b!5478903 (not res!2335572)) b!5478900))

(assert (= (and b!5478900 res!2335571) b!5478898))

(assert (= (or b!5478901 b!5478898) bm!404329))

(assert (= (or b!5478906 b!5478900) bm!404331))

(assert (= (or b!5478904 bm!404331) bm!404330))

(declare-fun m!6494994 () Bool)

(assert (=> bm!404329 m!6494994))

(declare-fun m!6494996 () Bool)

(assert (=> bm!404330 m!6494996))

(declare-fun m!6494998 () Bool)

(assert (=> b!5478902 m!6494998))

(assert (=> d!1740179 d!1740591))

(declare-fun bs!1266056 () Bool)

(declare-fun d!1740593 () Bool)

(assert (= bs!1266056 (and d!1740593 d!1740403)))

(declare-fun lambda!292222 () Int)

(assert (=> bs!1266056 (= lambda!292222 lambda!292205)))

(declare-fun bs!1266057 () Bool)

(assert (= bs!1266057 (and d!1740593 d!1740211)))

(assert (=> bs!1266057 (= lambda!292222 lambda!292145)))

(declare-fun bs!1266058 () Bool)

(assert (= bs!1266058 (and d!1740593 b!5477487)))

(assert (=> bs!1266058 (= lambda!292222 lambda!292088)))

(declare-fun bs!1266059 () Bool)

(assert (= bs!1266059 (and d!1740593 d!1740181)))

(assert (=> bs!1266059 (= lambda!292222 lambda!292126)))

(declare-fun bs!1266060 () Bool)

(assert (= bs!1266060 (and d!1740593 d!1740493)))

(assert (=> bs!1266060 (= lambda!292222 lambda!292212)))

(declare-fun bs!1266061 () Bool)

(assert (= bs!1266061 (and d!1740593 d!1740401)))

(assert (=> bs!1266061 (= lambda!292222 lambda!292204)))

(declare-fun bs!1266062 () Bool)

(assert (= bs!1266062 (and d!1740593 d!1740395)))

(assert (=> bs!1266062 (= lambda!292222 lambda!292203)))

(declare-fun bs!1266063 () Bool)

(assert (= bs!1266063 (and d!1740593 d!1740189)))

(assert (=> bs!1266063 (= lambda!292222 lambda!292129)))

(declare-fun bs!1266064 () Bool)

(assert (= bs!1266064 (and d!1740593 d!1740573)))

(assert (=> bs!1266064 (= lambda!292222 lambda!292220)))

(declare-fun bs!1266065 () Bool)

(assert (= bs!1266065 (and d!1740593 d!1740391)))

(assert (=> bs!1266065 (= lambda!292222 lambda!292199)))

(declare-fun bs!1266066 () Bool)

(assert (= bs!1266066 (and d!1740593 d!1740565)))

(assert (=> bs!1266066 (= lambda!292222 lambda!292219)))

(declare-fun bs!1266067 () Bool)

(assert (= bs!1266067 (and d!1740593 d!1740209)))

(assert (=> bs!1266067 (= lambda!292222 lambda!292142)))

(declare-fun bs!1266068 () Bool)

(assert (= bs!1266068 (and d!1740593 d!1740261)))

(assert (=> bs!1266068 (= lambda!292222 lambda!292164)))

(declare-fun bs!1266069 () Bool)

(assert (= bs!1266069 (and d!1740593 d!1740191)))

(assert (=> bs!1266069 (= lambda!292222 lambda!292130)))

(declare-fun bs!1266070 () Bool)

(assert (= bs!1266070 (and d!1740593 d!1740389)))

(assert (=> bs!1266070 (= lambda!292222 lambda!292198)))

(declare-fun b!5478907 () Bool)

(declare-fun e!3391082 () Regex!15358)

(assert (=> b!5478907 (= e!3391082 (Union!15358 (h!68698 (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251))) (generalisedUnion!1287 (t!375603 (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251))))))))

(declare-fun b!5478908 () Bool)

(declare-fun e!3391084 () Bool)

(declare-fun lt!2237687 () Regex!15358)

(assert (=> b!5478908 (= e!3391084 (= lt!2237687 (head!11736 (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251)))))))

(declare-fun b!5478909 () Bool)

(declare-fun e!3391081 () Regex!15358)

(assert (=> b!5478909 (= e!3391081 e!3391082)))

(declare-fun c!957333 () Bool)

(assert (=> b!5478909 (= c!957333 (is-Cons!62250 (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251))))))

(declare-fun b!5478910 () Bool)

(declare-fun e!3391080 () Bool)

(assert (=> b!5478910 (= e!3391080 (isEmptyLang!1050 lt!2237687))))

(declare-fun b!5478911 () Bool)

(assert (=> b!5478911 (= e!3391080 e!3391084)))

(declare-fun c!957331 () Bool)

(assert (=> b!5478911 (= c!957331 (isEmpty!34208 (tail!10833 (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251)))))))

(declare-fun b!5478912 () Bool)

(assert (=> b!5478912 (= e!3391084 (isUnion!482 lt!2237687))))

(declare-fun e!3391083 () Bool)

(assert (=> d!1740593 e!3391083))

(declare-fun res!2335573 () Bool)

(assert (=> d!1740593 (=> (not res!2335573) (not e!3391083))))

(assert (=> d!1740593 (= res!2335573 (validRegex!7094 lt!2237687))))

(assert (=> d!1740593 (= lt!2237687 e!3391081)))

(declare-fun c!957332 () Bool)

(declare-fun e!3391085 () Bool)

(assert (=> d!1740593 (= c!957332 e!3391085)))

(declare-fun res!2335574 () Bool)

(assert (=> d!1740593 (=> (not res!2335574) (not e!3391085))))

(assert (=> d!1740593 (= res!2335574 (is-Cons!62250 (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251))))))

(assert (=> d!1740593 (forall!14615 (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251)) lambda!292222)))

(assert (=> d!1740593 (= (generalisedUnion!1287 (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251))) lt!2237687)))

(declare-fun b!5478913 () Bool)

(assert (=> b!5478913 (= e!3391083 e!3391080)))

(declare-fun c!957330 () Bool)

(assert (=> b!5478913 (= c!957330 (isEmpty!34208 (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251))))))

(declare-fun b!5478914 () Bool)

(assert (=> b!5478914 (= e!3391085 (isEmpty!34208 (t!375603 (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251)))))))

(declare-fun b!5478915 () Bool)

(assert (=> b!5478915 (= e!3391082 EmptyLang!15358)))

(declare-fun b!5478916 () Bool)

(assert (=> b!5478916 (= e!3391081 (h!68698 (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251))))))

(assert (= (and d!1740593 res!2335574) b!5478914))

(assert (= (and d!1740593 c!957332) b!5478916))

(assert (= (and d!1740593 (not c!957332)) b!5478909))

(assert (= (and b!5478909 c!957333) b!5478907))

(assert (= (and b!5478909 (not c!957333)) b!5478915))

(assert (= (and d!1740593 res!2335573) b!5478913))

(assert (= (and b!5478913 c!957330) b!5478910))

(assert (= (and b!5478913 (not c!957330)) b!5478911))

(assert (= (and b!5478911 c!957331) b!5478908))

(assert (= (and b!5478911 (not c!957331)) b!5478912))

(declare-fun m!6495000 () Bool)

(assert (=> b!5478907 m!6495000))

(declare-fun m!6495002 () Bool)

(assert (=> b!5478914 m!6495002))

(assert (=> b!5478908 m!6494012))

(declare-fun m!6495004 () Bool)

(assert (=> b!5478908 m!6495004))

(declare-fun m!6495006 () Bool)

(assert (=> b!5478910 m!6495006))

(assert (=> b!5478911 m!6494012))

(declare-fun m!6495008 () Bool)

(assert (=> b!5478911 m!6495008))

(assert (=> b!5478911 m!6495008))

(declare-fun m!6495010 () Bool)

(assert (=> b!5478911 m!6495010))

(assert (=> b!5478913 m!6494012))

(declare-fun m!6495012 () Bool)

(assert (=> b!5478913 m!6495012))

(declare-fun m!6495014 () Bool)

(assert (=> d!1740593 m!6495014))

(assert (=> d!1740593 m!6494012))

(declare-fun m!6495016 () Bool)

(assert (=> d!1740593 m!6495016))

(declare-fun m!6495018 () Bool)

(assert (=> b!5478912 m!6495018))

(assert (=> d!1740179 d!1740593))

(declare-fun bs!1266071 () Bool)

(declare-fun d!1740595 () Bool)

(assert (= bs!1266071 (and d!1740595 d!1740403)))

(declare-fun lambda!292223 () Int)

(assert (=> bs!1266071 (= lambda!292223 lambda!292205)))

(declare-fun bs!1266072 () Bool)

(assert (= bs!1266072 (and d!1740595 d!1740211)))

(assert (=> bs!1266072 (= lambda!292223 lambda!292145)))

(declare-fun bs!1266073 () Bool)

(assert (= bs!1266073 (and d!1740595 b!5477487)))

(assert (=> bs!1266073 (= lambda!292223 lambda!292088)))

(declare-fun bs!1266074 () Bool)

(assert (= bs!1266074 (and d!1740595 d!1740181)))

(assert (=> bs!1266074 (= lambda!292223 lambda!292126)))

(declare-fun bs!1266075 () Bool)

(assert (= bs!1266075 (and d!1740595 d!1740493)))

(assert (=> bs!1266075 (= lambda!292223 lambda!292212)))

(declare-fun bs!1266076 () Bool)

(assert (= bs!1266076 (and d!1740595 d!1740401)))

(assert (=> bs!1266076 (= lambda!292223 lambda!292204)))

(declare-fun bs!1266077 () Bool)

(assert (= bs!1266077 (and d!1740595 d!1740395)))

(assert (=> bs!1266077 (= lambda!292223 lambda!292203)))

(declare-fun bs!1266078 () Bool)

(assert (= bs!1266078 (and d!1740595 d!1740189)))

(assert (=> bs!1266078 (= lambda!292223 lambda!292129)))

(declare-fun bs!1266079 () Bool)

(assert (= bs!1266079 (and d!1740595 d!1740573)))

(assert (=> bs!1266079 (= lambda!292223 lambda!292220)))

(declare-fun bs!1266080 () Bool)

(assert (= bs!1266080 (and d!1740595 d!1740593)))

(assert (=> bs!1266080 (= lambda!292223 lambda!292222)))

(declare-fun bs!1266081 () Bool)

(assert (= bs!1266081 (and d!1740595 d!1740391)))

(assert (=> bs!1266081 (= lambda!292223 lambda!292199)))

(declare-fun bs!1266082 () Bool)

(assert (= bs!1266082 (and d!1740595 d!1740565)))

(assert (=> bs!1266082 (= lambda!292223 lambda!292219)))

(declare-fun bs!1266083 () Bool)

(assert (= bs!1266083 (and d!1740595 d!1740209)))

(assert (=> bs!1266083 (= lambda!292223 lambda!292142)))

(declare-fun bs!1266084 () Bool)

(assert (= bs!1266084 (and d!1740595 d!1740261)))

(assert (=> bs!1266084 (= lambda!292223 lambda!292164)))

(declare-fun bs!1266085 () Bool)

(assert (= bs!1266085 (and d!1740595 d!1740191)))

(assert (=> bs!1266085 (= lambda!292223 lambda!292130)))

(declare-fun bs!1266086 () Bool)

(assert (= bs!1266086 (and d!1740595 d!1740389)))

(assert (=> bs!1266086 (= lambda!292223 lambda!292198)))

(declare-fun lt!2237688 () List!62374)

(assert (=> d!1740595 (forall!14615 lt!2237688 lambda!292223)))

(declare-fun e!3391086 () List!62374)

(assert (=> d!1740595 (= lt!2237688 e!3391086)))

(declare-fun c!957334 () Bool)

(assert (=> d!1740595 (= c!957334 (is-Cons!62251 (Cons!62251 lt!2237457 Nil!62251)))))

(assert (=> d!1740595 (= (unfocusZipperList!800 (Cons!62251 lt!2237457 Nil!62251)) lt!2237688)))

(declare-fun b!5478917 () Bool)

(assert (=> b!5478917 (= e!3391086 (Cons!62250 (generalisedConcat!1027 (exprs!5242 (h!68699 (Cons!62251 lt!2237457 Nil!62251)))) (unfocusZipperList!800 (t!375604 (Cons!62251 lt!2237457 Nil!62251)))))))

(declare-fun b!5478918 () Bool)

(assert (=> b!5478918 (= e!3391086 Nil!62250)))

(assert (= (and d!1740595 c!957334) b!5478917))

(assert (= (and d!1740595 (not c!957334)) b!5478918))

(declare-fun m!6495020 () Bool)

(assert (=> d!1740595 m!6495020))

(declare-fun m!6495022 () Bool)

(assert (=> b!5478917 m!6495022))

(declare-fun m!6495024 () Bool)

(assert (=> b!5478917 m!6495024))

(assert (=> d!1740179 d!1740595))

(declare-fun d!1740597 () Bool)

(assert (=> d!1740597 (= (Exists!2537 lambda!292156) (choose!41679 lambda!292156))))

(declare-fun bs!1266087 () Bool)

(assert (= bs!1266087 d!1740597))

(declare-fun m!6495026 () Bool)

(assert (=> bs!1266087 m!6495026))

(assert (=> d!1740225 d!1740597))

(declare-fun d!1740599 () Bool)

(assert (=> d!1740599 (= (Exists!2537 lambda!292157) (choose!41679 lambda!292157))))

(declare-fun bs!1266088 () Bool)

(assert (= bs!1266088 d!1740599))

(declare-fun m!6495028 () Bool)

(assert (=> bs!1266088 m!6495028))

(assert (=> d!1740225 d!1740599))

(declare-fun bs!1266089 () Bool)

(declare-fun d!1740601 () Bool)

(assert (= bs!1266089 (and d!1740601 b!5478592)))

(declare-fun lambda!292228 () Int)

(assert (=> bs!1266089 (not (= lambda!292228 lambda!292210))))

(declare-fun bs!1266090 () Bool)

(assert (= bs!1266090 (and d!1740601 d!1740225)))

(assert (=> bs!1266090 (= lambda!292228 lambda!292156)))

(declare-fun bs!1266091 () Bool)

(assert (= bs!1266091 (and d!1740601 b!5477508)))

(assert (=> bs!1266091 (not (= lambda!292228 lambda!292085))))

(declare-fun bs!1266092 () Bool)

(assert (= bs!1266092 (and d!1740601 b!5477861)))

(assert (=> bs!1266092 (not (= lambda!292228 lambda!292131))))

(assert (=> bs!1266091 (not (= lambda!292228 lambda!292086))))

(declare-fun bs!1266093 () Bool)

(assert (= bs!1266093 (and d!1740601 b!5478709)))

(assert (=> bs!1266093 (not (= lambda!292228 lambda!292214))))

(declare-fun bs!1266094 () Bool)

(assert (= bs!1266094 (and d!1740601 b!5478566)))

(assert (=> bs!1266094 (not (= lambda!292228 lambda!292208))))

(declare-fun bs!1266095 () Bool)

(assert (= bs!1266095 (and d!1740601 b!5477853)))

(assert (=> bs!1266095 (not (= lambda!292228 lambda!292133))))

(assert (=> bs!1266091 (= (= (Star!15358 (reg!15687 r!7292)) r!7292) (= lambda!292228 lambda!292084))))

(declare-fun bs!1266096 () Bool)

(assert (= bs!1266096 (and d!1740601 d!1740223)))

(assert (=> bs!1266096 (not (= lambda!292228 lambda!292151))))

(assert (=> bs!1266090 (not (= lambda!292228 lambda!292157))))

(declare-fun bs!1266097 () Bool)

(assert (= bs!1266097 (and d!1740601 b!5478717)))

(assert (=> bs!1266097 (not (= lambda!292228 lambda!292213))))

(declare-fun bs!1266098 () Bool)

(assert (= bs!1266098 (and d!1740601 b!5478600)))

(assert (=> bs!1266098 (not (= lambda!292228 lambda!292209))))

(declare-fun bs!1266099 () Bool)

(assert (= bs!1266099 (and d!1740601 b!5478574)))

(assert (=> bs!1266099 (not (= lambda!292228 lambda!292207))))

(declare-fun bs!1266100 () Bool)

(assert (= bs!1266100 (and d!1740601 b!5477718)))

(assert (=> bs!1266100 (not (= lambda!292228 lambda!292123))))

(assert (=> bs!1266096 (= (= (Star!15358 (reg!15687 r!7292)) r!7292) (= lambda!292228 lambda!292150))))

(declare-fun bs!1266101 () Bool)

(assert (= bs!1266101 (and d!1740601 b!5477726)))

(assert (=> bs!1266101 (not (= lambda!292228 lambda!292122))))

(declare-fun bs!1266102 () Bool)

(assert (= bs!1266102 (and d!1740601 d!1740241)))

(assert (=> bs!1266102 (= (= (Star!15358 (reg!15687 r!7292)) r!7292) (= lambda!292228 lambda!292163))))

(declare-fun bs!1266103 () Bool)

(assert (= bs!1266103 (and d!1740601 d!1740537)))

(assert (=> bs!1266103 (= (= (Star!15358 (reg!15687 r!7292)) r!7292) (= lambda!292228 lambda!292217))))

(assert (=> d!1740601 true))

(assert (=> d!1740601 true))

(declare-fun lambda!292229 () Int)

(assert (=> bs!1266089 (not (= lambda!292229 lambda!292210))))

(assert (=> bs!1266090 (not (= lambda!292229 lambda!292156))))

(assert (=> bs!1266091 (= (= (Star!15358 (reg!15687 r!7292)) r!7292) (= lambda!292229 lambda!292085))))

(assert (=> bs!1266092 (= (and (= (reg!15687 r!7292) (reg!15687 lt!2237470)) (= (Star!15358 (reg!15687 r!7292)) lt!2237470)) (= lambda!292229 lambda!292131))))

(assert (=> bs!1266091 (not (= lambda!292229 lambda!292086))))

(assert (=> bs!1266093 (not (= lambda!292229 lambda!292214))))

(assert (=> bs!1266094 (not (= lambda!292229 lambda!292208))))

(assert (=> bs!1266091 (not (= lambda!292229 lambda!292084))))

(assert (=> bs!1266096 (not (= lambda!292229 lambda!292151))))

(assert (=> bs!1266090 (= lambda!292229 lambda!292157)))

(assert (=> bs!1266097 (= (and (= (reg!15687 r!7292) (reg!15687 (regTwo!31229 lt!2237470))) (= (Star!15358 (reg!15687 r!7292)) (regTwo!31229 lt!2237470))) (= lambda!292229 lambda!292213))))

(assert (=> bs!1266098 (= (and (= (reg!15687 r!7292) (reg!15687 (regTwo!31229 r!7292))) (= (Star!15358 (reg!15687 r!7292)) (regTwo!31229 r!7292))) (= lambda!292229 lambda!292209))))

(assert (=> bs!1266099 (= (and (= (reg!15687 r!7292) (reg!15687 (regOne!31229 r!7292))) (= (Star!15358 (reg!15687 r!7292)) (regOne!31229 r!7292))) (= lambda!292229 lambda!292207))))

(assert (=> bs!1266100 (not (= lambda!292229 lambda!292123))))

(assert (=> bs!1266096 (not (= lambda!292229 lambda!292150))))

(assert (=> bs!1266101 (= (= (Star!15358 (reg!15687 r!7292)) r!7292) (= lambda!292229 lambda!292122))))

(declare-fun bs!1266104 () Bool)

(assert (= bs!1266104 d!1740601))

(assert (=> bs!1266104 (not (= lambda!292229 lambda!292228))))

(assert (=> bs!1266095 (not (= lambda!292229 lambda!292133))))

(assert (=> bs!1266102 (not (= lambda!292229 lambda!292163))))

(assert (=> bs!1266103 (not (= lambda!292229 lambda!292217))))

(assert (=> d!1740601 true))

(assert (=> d!1740601 true))

(assert (=> d!1740601 (= (Exists!2537 lambda!292228) (Exists!2537 lambda!292229))))

(assert (=> d!1740601 true))

(declare-fun _$91!509 () Unit!155166)

(assert (=> d!1740601 (= (choose!41681 (reg!15687 r!7292) s!2326) _$91!509)))

(declare-fun m!6495030 () Bool)

(assert (=> bs!1266104 m!6495030))

(declare-fun m!6495032 () Bool)

(assert (=> bs!1266104 m!6495032))

(assert (=> d!1740225 d!1740601))

(assert (=> d!1740225 d!1740539))

(declare-fun d!1740603 () Bool)

(assert (=> d!1740603 (= (isDefined!12170 lt!2237612) (not (isEmpty!34209 lt!2237612)))))

(declare-fun bs!1266105 () Bool)

(assert (= bs!1266105 d!1740603))

(declare-fun m!6495034 () Bool)

(assert (=> bs!1266105 m!6495034))

(assert (=> d!1740235 d!1740603))

(declare-fun b!5478929 () Bool)

(declare-fun e!3391093 () Bool)

(assert (=> b!5478929 (= e!3391093 (= (head!11735 Nil!62249) (c!956963 (reg!15687 r!7292))))))

(declare-fun b!5478930 () Bool)

(declare-fun res!2335589 () Bool)

(declare-fun e!3391097 () Bool)

(assert (=> b!5478930 (=> res!2335589 e!3391097)))

(assert (=> b!5478930 (= res!2335589 e!3391093)))

(declare-fun res!2335585 () Bool)

(assert (=> b!5478930 (=> (not res!2335585) (not e!3391093))))

(declare-fun lt!2237689 () Bool)

(assert (=> b!5478930 (= res!2335585 lt!2237689)))

(declare-fun b!5478931 () Bool)

(declare-fun res!2335587 () Bool)

(assert (=> b!5478931 (=> (not res!2335587) (not e!3391093))))

(declare-fun call!404337 () Bool)

(assert (=> b!5478931 (= res!2335587 (not call!404337))))

(declare-fun b!5478932 () Bool)

(declare-fun e!3391094 () Bool)

(assert (=> b!5478932 (= e!3391094 (matchR!7543 (derivativeStep!4330 (reg!15687 r!7292) (head!11735 Nil!62249)) (tail!10832 Nil!62249)))))

(declare-fun b!5478933 () Bool)

(declare-fun res!2335592 () Bool)

(assert (=> b!5478933 (=> res!2335592 e!3391097)))

(assert (=> b!5478933 (= res!2335592 (not (is-ElementMatch!15358 (reg!15687 r!7292))))))

(declare-fun e!3391096 () Bool)

(assert (=> b!5478933 (= e!3391096 e!3391097)))

(declare-fun b!5478934 () Bool)

(declare-fun res!2335586 () Bool)

(declare-fun e!3391095 () Bool)

(assert (=> b!5478934 (=> res!2335586 e!3391095)))

(assert (=> b!5478934 (= res!2335586 (not (isEmpty!34205 (tail!10832 Nil!62249))))))

(declare-fun bm!404332 () Bool)

(assert (=> bm!404332 (= call!404337 (isEmpty!34205 Nil!62249))))

(declare-fun b!5478936 () Bool)

(assert (=> b!5478936 (= e!3391096 (not lt!2237689))))

(declare-fun b!5478937 () Bool)

(assert (=> b!5478937 (= e!3391095 (not (= (head!11735 Nil!62249) (c!956963 (reg!15687 r!7292)))))))

(declare-fun b!5478938 () Bool)

(declare-fun e!3391091 () Bool)

(assert (=> b!5478938 (= e!3391091 (= lt!2237689 call!404337))))

(declare-fun b!5478939 () Bool)

(assert (=> b!5478939 (= e!3391091 e!3391096)))

(declare-fun c!957335 () Bool)

(assert (=> b!5478939 (= c!957335 (is-EmptyLang!15358 (reg!15687 r!7292)))))

(declare-fun b!5478940 () Bool)

(declare-fun e!3391092 () Bool)

(assert (=> b!5478940 (= e!3391097 e!3391092)))

(declare-fun res!2335588 () Bool)

(assert (=> b!5478940 (=> (not res!2335588) (not e!3391092))))

(assert (=> b!5478940 (= res!2335588 (not lt!2237689))))

(declare-fun b!5478935 () Bool)

(declare-fun res!2335590 () Bool)

(assert (=> b!5478935 (=> (not res!2335590) (not e!3391093))))

(assert (=> b!5478935 (= res!2335590 (isEmpty!34205 (tail!10832 Nil!62249)))))

(declare-fun d!1740605 () Bool)

(assert (=> d!1740605 e!3391091))

(declare-fun c!957337 () Bool)

(assert (=> d!1740605 (= c!957337 (is-EmptyExpr!15358 (reg!15687 r!7292)))))

(assert (=> d!1740605 (= lt!2237689 e!3391094)))

(declare-fun c!957336 () Bool)

(assert (=> d!1740605 (= c!957336 (isEmpty!34205 Nil!62249))))

(assert (=> d!1740605 (validRegex!7094 (reg!15687 r!7292))))

(assert (=> d!1740605 (= (matchR!7543 (reg!15687 r!7292) Nil!62249) lt!2237689)))

(declare-fun b!5478941 () Bool)

(assert (=> b!5478941 (= e!3391092 e!3391095)))

(declare-fun res!2335591 () Bool)

(assert (=> b!5478941 (=> res!2335591 e!3391095)))

(assert (=> b!5478941 (= res!2335591 call!404337)))

(declare-fun b!5478942 () Bool)

(assert (=> b!5478942 (= e!3391094 (nullable!5485 (reg!15687 r!7292)))))

(assert (= (and d!1740605 c!957336) b!5478942))

(assert (= (and d!1740605 (not c!957336)) b!5478932))

(assert (= (and d!1740605 c!957337) b!5478938))

(assert (= (and d!1740605 (not c!957337)) b!5478939))

(assert (= (and b!5478939 c!957335) b!5478936))

(assert (= (and b!5478939 (not c!957335)) b!5478933))

(assert (= (and b!5478933 (not res!2335592)) b!5478930))

(assert (= (and b!5478930 res!2335585) b!5478931))

(assert (= (and b!5478931 res!2335587) b!5478935))

(assert (= (and b!5478935 res!2335590) b!5478929))

(assert (= (and b!5478930 (not res!2335589)) b!5478940))

(assert (= (and b!5478940 res!2335588) b!5478941))

(assert (= (and b!5478941 (not res!2335591)) b!5478934))

(assert (= (and b!5478934 (not res!2335586)) b!5478937))

(assert (= (or b!5478938 b!5478931 b!5478941) bm!404332))

(assert (=> b!5478942 m!6494046))

(declare-fun m!6495036 () Bool)

(assert (=> d!1740605 m!6495036))

(assert (=> d!1740605 m!6494140))

(declare-fun m!6495038 () Bool)

(assert (=> b!5478935 m!6495038))

(assert (=> b!5478935 m!6495038))

(declare-fun m!6495040 () Bool)

(assert (=> b!5478935 m!6495040))

(assert (=> b!5478934 m!6495038))

(assert (=> b!5478934 m!6495038))

(assert (=> b!5478934 m!6495040))

(declare-fun m!6495042 () Bool)

(assert (=> b!5478929 m!6495042))

(assert (=> bm!404332 m!6495036))

(assert (=> b!5478937 m!6495042))

(assert (=> b!5478932 m!6495042))

(assert (=> b!5478932 m!6495042))

(declare-fun m!6495044 () Bool)

(assert (=> b!5478932 m!6495044))

(assert (=> b!5478932 m!6495038))

(assert (=> b!5478932 m!6495044))

(assert (=> b!5478932 m!6495038))

(declare-fun m!6495046 () Bool)

(assert (=> b!5478932 m!6495046))

(assert (=> d!1740235 d!1740605))

(assert (=> d!1740235 d!1740539))

(assert (=> b!5477875 d!1740381))

(assert (=> b!5477875 d!1740383))

(declare-fun bm!404333 () Bool)

(declare-fun call!404339 () (Set Context!9484))

(declare-fun call!404341 () (Set Context!9484))

(assert (=> bm!404333 (= call!404339 call!404341)))

(declare-fun call!404342 () List!62374)

(declare-fun c!957341 () Bool)

(declare-fun bm!404334 () Bool)

(declare-fun call!404340 () (Set Context!9484))

(assert (=> bm!404334 (= call!404340 (derivationStepZipperDown!784 (ite c!957341 (regTwo!31229 (h!68698 (exprs!5242 lt!2237476))) (regOne!31228 (h!68698 (exprs!5242 lt!2237476)))) (ite c!957341 (Context!9485 (t!375603 (exprs!5242 lt!2237476))) (Context!9485 call!404342)) (h!68697 s!2326)))))

(declare-fun d!1740607 () Bool)

(declare-fun c!957339 () Bool)

(assert (=> d!1740607 (= c!957339 (and (is-ElementMatch!15358 (h!68698 (exprs!5242 lt!2237476))) (= (c!956963 (h!68698 (exprs!5242 lt!2237476))) (h!68697 s!2326))))))

(declare-fun e!3391098 () (Set Context!9484))

(assert (=> d!1740607 (= (derivationStepZipperDown!784 (h!68698 (exprs!5242 lt!2237476)) (Context!9485 (t!375603 (exprs!5242 lt!2237476))) (h!68697 s!2326)) e!3391098)))

(declare-fun b!5478943 () Bool)

(declare-fun c!957338 () Bool)

(declare-fun e!3391102 () Bool)

(assert (=> b!5478943 (= c!957338 e!3391102)))

(declare-fun res!2335593 () Bool)

(assert (=> b!5478943 (=> (not res!2335593) (not e!3391102))))

(assert (=> b!5478943 (= res!2335593 (is-Concat!24203 (h!68698 (exprs!5242 lt!2237476))))))

(declare-fun e!3391100 () (Set Context!9484))

(declare-fun e!3391101 () (Set Context!9484))

(assert (=> b!5478943 (= e!3391100 e!3391101)))

(declare-fun bm!404335 () Bool)

(declare-fun call!404343 () List!62374)

(assert (=> bm!404335 (= call!404343 call!404342)))

(declare-fun b!5478944 () Bool)

(assert (=> b!5478944 (= e!3391102 (nullable!5485 (regOne!31228 (h!68698 (exprs!5242 lt!2237476)))))))

(declare-fun b!5478945 () Bool)

(declare-fun e!3391099 () (Set Context!9484))

(declare-fun call!404338 () (Set Context!9484))

(assert (=> b!5478945 (= e!3391099 call!404338)))

(declare-fun c!957340 () Bool)

(declare-fun bm!404336 () Bool)

(assert (=> bm!404336 (= call!404341 (derivationStepZipperDown!784 (ite c!957341 (regOne!31229 (h!68698 (exprs!5242 lt!2237476))) (ite c!957338 (regTwo!31228 (h!68698 (exprs!5242 lt!2237476))) (ite c!957340 (regOne!31228 (h!68698 (exprs!5242 lt!2237476))) (reg!15687 (h!68698 (exprs!5242 lt!2237476)))))) (ite (or c!957341 c!957338) (Context!9485 (t!375603 (exprs!5242 lt!2237476))) (Context!9485 call!404343)) (h!68697 s!2326)))))

(declare-fun b!5478946 () Bool)

(assert (=> b!5478946 (= e!3391101 (set.union call!404340 call!404339))))

(declare-fun bm!404337 () Bool)

(assert (=> bm!404337 (= call!404338 call!404339)))

(declare-fun b!5478947 () Bool)

(assert (=> b!5478947 (= e!3391100 (set.union call!404341 call!404340))))

(declare-fun b!5478948 () Bool)

(declare-fun e!3391103 () (Set Context!9484))

(assert (=> b!5478948 (= e!3391103 call!404338)))

(declare-fun b!5478949 () Bool)

(assert (=> b!5478949 (= e!3391098 e!3391100)))

(assert (=> b!5478949 (= c!957341 (is-Union!15358 (h!68698 (exprs!5242 lt!2237476))))))

(declare-fun b!5478950 () Bool)

(assert (=> b!5478950 (= e!3391103 (as set.empty (Set Context!9484)))))

(declare-fun bm!404338 () Bool)

(assert (=> bm!404338 (= call!404342 ($colon$colon!1555 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237476)))) (ite (or c!957338 c!957340) (regTwo!31228 (h!68698 (exprs!5242 lt!2237476))) (h!68698 (exprs!5242 lt!2237476)))))))

(declare-fun b!5478951 () Bool)

(declare-fun c!957342 () Bool)

(assert (=> b!5478951 (= c!957342 (is-Star!15358 (h!68698 (exprs!5242 lt!2237476))))))

(assert (=> b!5478951 (= e!3391099 e!3391103)))

(declare-fun b!5478952 () Bool)

(assert (=> b!5478952 (= e!3391101 e!3391099)))

(assert (=> b!5478952 (= c!957340 (is-Concat!24203 (h!68698 (exprs!5242 lt!2237476))))))

(declare-fun b!5478953 () Bool)

(assert (=> b!5478953 (= e!3391098 (set.insert (Context!9485 (t!375603 (exprs!5242 lt!2237476))) (as set.empty (Set Context!9484))))))

(assert (= (and d!1740607 c!957339) b!5478953))

(assert (= (and d!1740607 (not c!957339)) b!5478949))

(assert (= (and b!5478949 c!957341) b!5478947))

(assert (= (and b!5478949 (not c!957341)) b!5478943))

(assert (= (and b!5478943 res!2335593) b!5478944))

(assert (= (and b!5478943 c!957338) b!5478946))

(assert (= (and b!5478943 (not c!957338)) b!5478952))

(assert (= (and b!5478952 c!957340) b!5478945))

(assert (= (and b!5478952 (not c!957340)) b!5478951))

(assert (= (and b!5478951 c!957342) b!5478948))

(assert (= (and b!5478951 (not c!957342)) b!5478950))

(assert (= (or b!5478945 b!5478948) bm!404335))

(assert (= (or b!5478945 b!5478948) bm!404337))

(assert (= (or b!5478946 bm!404335) bm!404338))

(assert (= (or b!5478946 bm!404337) bm!404333))

(assert (= (or b!5478947 b!5478946) bm!404334))

(assert (= (or b!5478947 bm!404333) bm!404336))

(declare-fun m!6495048 () Bool)

(assert (=> b!5478944 m!6495048))

(declare-fun m!6495050 () Bool)

(assert (=> b!5478953 m!6495050))

(declare-fun m!6495052 () Bool)

(assert (=> bm!404336 m!6495052))

(declare-fun m!6495054 () Bool)

(assert (=> bm!404338 m!6495054))

(declare-fun m!6495056 () Bool)

(assert (=> bm!404334 m!6495056))

(assert (=> bm!404190 d!1740607))

(declare-fun bs!1266106 () Bool)

(declare-fun b!5478963 () Bool)

(assert (= bs!1266106 (and b!5478963 d!1740225)))

(declare-fun lambda!292230 () Int)

(assert (=> bs!1266106 (not (= lambda!292230 lambda!292156))))

(declare-fun bs!1266107 () Bool)

(assert (= bs!1266107 (and b!5478963 b!5477508)))

(assert (=> bs!1266107 (= (and (= (reg!15687 (regOne!31229 lt!2237470)) (reg!15687 r!7292)) (= (regOne!31229 lt!2237470) r!7292)) (= lambda!292230 lambda!292085))))

(declare-fun bs!1266108 () Bool)

(assert (= bs!1266108 (and b!5478963 b!5477861)))

(assert (=> bs!1266108 (= (and (= (reg!15687 (regOne!31229 lt!2237470)) (reg!15687 lt!2237470)) (= (regOne!31229 lt!2237470) lt!2237470)) (= lambda!292230 lambda!292131))))

(assert (=> bs!1266107 (not (= lambda!292230 lambda!292086))))

(declare-fun bs!1266109 () Bool)

(assert (= bs!1266109 (and b!5478963 b!5478709)))

(assert (=> bs!1266109 (not (= lambda!292230 lambda!292214))))

(declare-fun bs!1266110 () Bool)

(assert (= bs!1266110 (and b!5478963 b!5478566)))

(assert (=> bs!1266110 (not (= lambda!292230 lambda!292208))))

(assert (=> bs!1266107 (not (= lambda!292230 lambda!292084))))

(declare-fun bs!1266111 () Bool)

(assert (= bs!1266111 (and b!5478963 d!1740223)))

(assert (=> bs!1266111 (not (= lambda!292230 lambda!292151))))

(assert (=> bs!1266106 (= (and (= (reg!15687 (regOne!31229 lt!2237470)) (reg!15687 r!7292)) (= (regOne!31229 lt!2237470) (Star!15358 (reg!15687 r!7292)))) (= lambda!292230 lambda!292157))))

(declare-fun bs!1266112 () Bool)

(assert (= bs!1266112 (and b!5478963 b!5478717)))

(assert (=> bs!1266112 (= (and (= (reg!15687 (regOne!31229 lt!2237470)) (reg!15687 (regTwo!31229 lt!2237470))) (= (regOne!31229 lt!2237470) (regTwo!31229 lt!2237470))) (= lambda!292230 lambda!292213))))

(declare-fun bs!1266113 () Bool)

(assert (= bs!1266113 (and b!5478963 b!5478600)))

(assert (=> bs!1266113 (= (and (= (reg!15687 (regOne!31229 lt!2237470)) (reg!15687 (regTwo!31229 r!7292))) (= (regOne!31229 lt!2237470) (regTwo!31229 r!7292))) (= lambda!292230 lambda!292209))))

(declare-fun bs!1266114 () Bool)

(assert (= bs!1266114 (and b!5478963 b!5478592)))

(assert (=> bs!1266114 (not (= lambda!292230 lambda!292210))))

(declare-fun bs!1266115 () Bool)

(assert (= bs!1266115 (and b!5478963 d!1740601)))

(assert (=> bs!1266115 (= (and (= (reg!15687 (regOne!31229 lt!2237470)) (reg!15687 r!7292)) (= (regOne!31229 lt!2237470) (Star!15358 (reg!15687 r!7292)))) (= lambda!292230 lambda!292229))))

(declare-fun bs!1266116 () Bool)

(assert (= bs!1266116 (and b!5478963 b!5478574)))

(assert (=> bs!1266116 (= (and (= (reg!15687 (regOne!31229 lt!2237470)) (reg!15687 (regOne!31229 r!7292))) (= (regOne!31229 lt!2237470) (regOne!31229 r!7292))) (= lambda!292230 lambda!292207))))

(declare-fun bs!1266117 () Bool)

(assert (= bs!1266117 (and b!5478963 b!5477718)))

(assert (=> bs!1266117 (not (= lambda!292230 lambda!292123))))

(assert (=> bs!1266111 (not (= lambda!292230 lambda!292150))))

(declare-fun bs!1266118 () Bool)

(assert (= bs!1266118 (and b!5478963 b!5477726)))

(assert (=> bs!1266118 (= (and (= (reg!15687 (regOne!31229 lt!2237470)) (reg!15687 r!7292)) (= (regOne!31229 lt!2237470) r!7292)) (= lambda!292230 lambda!292122))))

(assert (=> bs!1266115 (not (= lambda!292230 lambda!292228))))

(declare-fun bs!1266119 () Bool)

(assert (= bs!1266119 (and b!5478963 b!5477853)))

(assert (=> bs!1266119 (not (= lambda!292230 lambda!292133))))

(declare-fun bs!1266120 () Bool)

(assert (= bs!1266120 (and b!5478963 d!1740241)))

(assert (=> bs!1266120 (not (= lambda!292230 lambda!292163))))

(declare-fun bs!1266121 () Bool)

(assert (= bs!1266121 (and b!5478963 d!1740537)))

(assert (=> bs!1266121 (not (= lambda!292230 lambda!292217))))

(assert (=> b!5478963 true))

(assert (=> b!5478963 true))

(declare-fun bs!1266122 () Bool)

(declare-fun b!5478955 () Bool)

(assert (= bs!1266122 (and b!5478955 d!1740225)))

(declare-fun lambda!292231 () Int)

(assert (=> bs!1266122 (not (= lambda!292231 lambda!292156))))

(declare-fun bs!1266123 () Bool)

(assert (= bs!1266123 (and b!5478955 b!5477508)))

(assert (=> bs!1266123 (not (= lambda!292231 lambda!292085))))

(declare-fun bs!1266124 () Bool)

(assert (= bs!1266124 (and b!5478955 b!5477861)))

(assert (=> bs!1266124 (not (= lambda!292231 lambda!292131))))

(assert (=> bs!1266123 (= (and (= (regOne!31228 (regOne!31229 lt!2237470)) (reg!15687 r!7292)) (= (regTwo!31228 (regOne!31229 lt!2237470)) r!7292)) (= lambda!292231 lambda!292086))))

(declare-fun bs!1266125 () Bool)

(assert (= bs!1266125 (and b!5478955 b!5478709)))

(assert (=> bs!1266125 (= (and (= (regOne!31228 (regOne!31229 lt!2237470)) (regOne!31228 (regTwo!31229 lt!2237470))) (= (regTwo!31228 (regOne!31229 lt!2237470)) (regTwo!31228 (regTwo!31229 lt!2237470)))) (= lambda!292231 lambda!292214))))

(declare-fun bs!1266126 () Bool)

(assert (= bs!1266126 (and b!5478955 b!5478566)))

(assert (=> bs!1266126 (= (and (= (regOne!31228 (regOne!31229 lt!2237470)) (regOne!31228 (regOne!31229 r!7292))) (= (regTwo!31228 (regOne!31229 lt!2237470)) (regTwo!31228 (regOne!31229 r!7292)))) (= lambda!292231 lambda!292208))))

(assert (=> bs!1266123 (not (= lambda!292231 lambda!292084))))

(declare-fun bs!1266127 () Bool)

(assert (= bs!1266127 (and b!5478955 d!1740223)))

(assert (=> bs!1266127 (= (and (= (regOne!31228 (regOne!31229 lt!2237470)) (reg!15687 r!7292)) (= (regTwo!31228 (regOne!31229 lt!2237470)) r!7292)) (= lambda!292231 lambda!292151))))

(assert (=> bs!1266122 (not (= lambda!292231 lambda!292157))))

(declare-fun bs!1266128 () Bool)

(assert (= bs!1266128 (and b!5478955 b!5478600)))

(assert (=> bs!1266128 (not (= lambda!292231 lambda!292209))))

(declare-fun bs!1266129 () Bool)

(assert (= bs!1266129 (and b!5478955 b!5478592)))

(assert (=> bs!1266129 (= (and (= (regOne!31228 (regOne!31229 lt!2237470)) (regOne!31228 (regTwo!31229 r!7292))) (= (regTwo!31228 (regOne!31229 lt!2237470)) (regTwo!31228 (regTwo!31229 r!7292)))) (= lambda!292231 lambda!292210))))

(declare-fun bs!1266130 () Bool)

(assert (= bs!1266130 (and b!5478955 d!1740601)))

(assert (=> bs!1266130 (not (= lambda!292231 lambda!292229))))

(declare-fun bs!1266131 () Bool)

(assert (= bs!1266131 (and b!5478955 b!5478574)))

(assert (=> bs!1266131 (not (= lambda!292231 lambda!292207))))

(declare-fun bs!1266132 () Bool)

(assert (= bs!1266132 (and b!5478955 b!5477718)))

(assert (=> bs!1266132 (= (and (= (regOne!31228 (regOne!31229 lt!2237470)) (regOne!31228 r!7292)) (= (regTwo!31228 (regOne!31229 lt!2237470)) (regTwo!31228 r!7292))) (= lambda!292231 lambda!292123))))

(assert (=> bs!1266127 (not (= lambda!292231 lambda!292150))))

(declare-fun bs!1266133 () Bool)

(assert (= bs!1266133 (and b!5478955 b!5477726)))

(assert (=> bs!1266133 (not (= lambda!292231 lambda!292122))))

(assert (=> bs!1266130 (not (= lambda!292231 lambda!292228))))

(declare-fun bs!1266134 () Bool)

(assert (= bs!1266134 (and b!5478955 b!5477853)))

(assert (=> bs!1266134 (= (and (= (regOne!31228 (regOne!31229 lt!2237470)) (regOne!31228 lt!2237470)) (= (regTwo!31228 (regOne!31229 lt!2237470)) (regTwo!31228 lt!2237470))) (= lambda!292231 lambda!292133))))

(declare-fun bs!1266135 () Bool)

(assert (= bs!1266135 (and b!5478955 d!1740241)))

(assert (=> bs!1266135 (not (= lambda!292231 lambda!292163))))

(declare-fun bs!1266136 () Bool)

(assert (= bs!1266136 (and b!5478955 d!1740537)))

(assert (=> bs!1266136 (not (= lambda!292231 lambda!292217))))

(declare-fun bs!1266137 () Bool)

(assert (= bs!1266137 (and b!5478955 b!5478963)))

(assert (=> bs!1266137 (not (= lambda!292231 lambda!292230))))

(declare-fun bs!1266138 () Bool)

(assert (= bs!1266138 (and b!5478955 b!5478717)))

(assert (=> bs!1266138 (not (= lambda!292231 lambda!292213))))

(assert (=> b!5478955 true))

(assert (=> b!5478955 true))

(declare-fun b!5478954 () Bool)

(declare-fun c!957344 () Bool)

(assert (=> b!5478954 (= c!957344 (is-ElementMatch!15358 (regOne!31229 lt!2237470)))))

(declare-fun e!3391106 () Bool)

(declare-fun e!3391105 () Bool)

(assert (=> b!5478954 (= e!3391106 e!3391105)))

(declare-fun e!3391108 () Bool)

(declare-fun call!404344 () Bool)

(assert (=> b!5478955 (= e!3391108 call!404344)))

(declare-fun b!5478956 () Bool)

(declare-fun e!3391107 () Bool)

(assert (=> b!5478956 (= e!3391107 (matchRSpec!2461 (regTwo!31229 (regOne!31229 lt!2237470)) s!2326))))

(declare-fun b!5478957 () Bool)

(declare-fun c!957343 () Bool)

(assert (=> b!5478957 (= c!957343 (is-Union!15358 (regOne!31229 lt!2237470)))))

(declare-fun e!3391104 () Bool)

(assert (=> b!5478957 (= e!3391105 e!3391104)))

(declare-fun b!5478958 () Bool)

(declare-fun e!3391110 () Bool)

(assert (=> b!5478958 (= e!3391110 e!3391106)))

(declare-fun res!2335595 () Bool)

(assert (=> b!5478958 (= res!2335595 (not (is-EmptyLang!15358 (regOne!31229 lt!2237470))))))

(assert (=> b!5478958 (=> (not res!2335595) (not e!3391106))))

(declare-fun b!5478959 () Bool)

(declare-fun res!2335596 () Bool)

(declare-fun e!3391109 () Bool)

(assert (=> b!5478959 (=> res!2335596 e!3391109)))

(declare-fun call!404345 () Bool)

(assert (=> b!5478959 (= res!2335596 call!404345)))

(assert (=> b!5478959 (= e!3391108 e!3391109)))

(declare-fun b!5478960 () Bool)

(assert (=> b!5478960 (= e!3391110 call!404345)))

(declare-fun bm!404339 () Bool)

(assert (=> bm!404339 (= call!404345 (isEmpty!34205 s!2326))))

(declare-fun b!5478961 () Bool)

(assert (=> b!5478961 (= e!3391105 (= s!2326 (Cons!62249 (c!956963 (regOne!31229 lt!2237470)) Nil!62249)))))

(declare-fun c!957345 () Bool)

(declare-fun bm!404340 () Bool)

(assert (=> bm!404340 (= call!404344 (Exists!2537 (ite c!957345 lambda!292230 lambda!292231)))))

(declare-fun d!1740609 () Bool)

(declare-fun c!957346 () Bool)

(assert (=> d!1740609 (= c!957346 (is-EmptyExpr!15358 (regOne!31229 lt!2237470)))))

(assert (=> d!1740609 (= (matchRSpec!2461 (regOne!31229 lt!2237470) s!2326) e!3391110)))

(declare-fun b!5478962 () Bool)

(assert (=> b!5478962 (= e!3391104 e!3391108)))

(assert (=> b!5478962 (= c!957345 (is-Star!15358 (regOne!31229 lt!2237470)))))

(assert (=> b!5478963 (= e!3391109 call!404344)))

(declare-fun b!5478964 () Bool)

(assert (=> b!5478964 (= e!3391104 e!3391107)))

(declare-fun res!2335594 () Bool)

(assert (=> b!5478964 (= res!2335594 (matchRSpec!2461 (regOne!31229 (regOne!31229 lt!2237470)) s!2326))))

(assert (=> b!5478964 (=> res!2335594 e!3391107)))

(assert (= (and d!1740609 c!957346) b!5478960))

(assert (= (and d!1740609 (not c!957346)) b!5478958))

(assert (= (and b!5478958 res!2335595) b!5478954))

(assert (= (and b!5478954 c!957344) b!5478961))

(assert (= (and b!5478954 (not c!957344)) b!5478957))

(assert (= (and b!5478957 c!957343) b!5478964))

(assert (= (and b!5478957 (not c!957343)) b!5478962))

(assert (= (and b!5478964 (not res!2335594)) b!5478956))

(assert (= (and b!5478962 c!957345) b!5478959))

(assert (= (and b!5478962 (not c!957345)) b!5478955))

(assert (= (and b!5478959 (not res!2335596)) b!5478963))

(assert (= (or b!5478963 b!5478955) bm!404340))

(assert (= (or b!5478960 b!5478959) bm!404339))

(declare-fun m!6495058 () Bool)

(assert (=> b!5478956 m!6495058))

(assert (=> bm!404339 m!6493794))

(declare-fun m!6495060 () Bool)

(assert (=> bm!404340 m!6495060))

(declare-fun m!6495062 () Bool)

(assert (=> b!5478964 m!6495062))

(assert (=> b!5477862 d!1740609))

(declare-fun d!1740611 () Bool)

(declare-fun res!2335598 () Bool)

(declare-fun e!3391117 () Bool)

(assert (=> d!1740611 (=> res!2335598 e!3391117)))

(assert (=> d!1740611 (= res!2335598 (is-ElementMatch!15358 lt!2237587))))

(assert (=> d!1740611 (= (validRegex!7094 lt!2237587) e!3391117)))

(declare-fun bm!404341 () Bool)

(declare-fun call!404347 () Bool)

(declare-fun c!957348 () Bool)

(assert (=> bm!404341 (= call!404347 (validRegex!7094 (ite c!957348 (regTwo!31229 lt!2237587) (regTwo!31228 lt!2237587))))))

(declare-fun b!5478965 () Bool)

(declare-fun e!3391114 () Bool)

(assert (=> b!5478965 (= e!3391114 call!404347)))

(declare-fun b!5478966 () Bool)

(declare-fun e!3391115 () Bool)

(declare-fun e!3391111 () Bool)

(assert (=> b!5478966 (= e!3391115 e!3391111)))

(assert (=> b!5478966 (= c!957348 (is-Union!15358 lt!2237587))))

(declare-fun call!404346 () Bool)

(declare-fun bm!404342 () Bool)

(declare-fun c!957347 () Bool)

(assert (=> bm!404342 (= call!404346 (validRegex!7094 (ite c!957347 (reg!15687 lt!2237587) (ite c!957348 (regOne!31229 lt!2237587) (regOne!31228 lt!2237587)))))))

(declare-fun b!5478967 () Bool)

(declare-fun e!3391113 () Bool)

(assert (=> b!5478967 (= e!3391113 e!3391114)))

(declare-fun res!2335600 () Bool)

(assert (=> b!5478967 (=> (not res!2335600) (not e!3391114))))

(declare-fun call!404348 () Bool)

(assert (=> b!5478967 (= res!2335600 call!404348)))

(declare-fun b!5478968 () Bool)

(declare-fun e!3391116 () Bool)

(assert (=> b!5478968 (= e!3391116 call!404347)))

(declare-fun b!5478969 () Bool)

(declare-fun e!3391112 () Bool)

(assert (=> b!5478969 (= e!3391115 e!3391112)))

(declare-fun res!2335597 () Bool)

(assert (=> b!5478969 (= res!2335597 (not (nullable!5485 (reg!15687 lt!2237587))))))

(assert (=> b!5478969 (=> (not res!2335597) (not e!3391112))))

(declare-fun b!5478970 () Bool)

(declare-fun res!2335601 () Bool)

(assert (=> b!5478970 (=> res!2335601 e!3391113)))

(assert (=> b!5478970 (= res!2335601 (not (is-Concat!24203 lt!2237587)))))

(assert (=> b!5478970 (= e!3391111 e!3391113)))

(declare-fun bm!404343 () Bool)

(assert (=> bm!404343 (= call!404348 call!404346)))

(declare-fun b!5478971 () Bool)

(assert (=> b!5478971 (= e!3391112 call!404346)))

(declare-fun b!5478972 () Bool)

(assert (=> b!5478972 (= e!3391117 e!3391115)))

(assert (=> b!5478972 (= c!957347 (is-Star!15358 lt!2237587))))

(declare-fun b!5478973 () Bool)

(declare-fun res!2335599 () Bool)

(assert (=> b!5478973 (=> (not res!2335599) (not e!3391116))))

(assert (=> b!5478973 (= res!2335599 call!404348)))

(assert (=> b!5478973 (= e!3391111 e!3391116)))

(assert (= (and d!1740611 (not res!2335598)) b!5478972))

(assert (= (and b!5478972 c!957347) b!5478969))

(assert (= (and b!5478972 (not c!957347)) b!5478966))

(assert (= (and b!5478969 res!2335597) b!5478971))

(assert (= (and b!5478966 c!957348) b!5478973))

(assert (= (and b!5478966 (not c!957348)) b!5478970))

(assert (= (and b!5478973 res!2335599) b!5478968))

(assert (= (and b!5478970 (not res!2335601)) b!5478967))

(assert (= (and b!5478967 res!2335600) b!5478965))

(assert (= (or b!5478968 b!5478965) bm!404341))

(assert (= (or b!5478973 b!5478967) bm!404343))

(assert (= (or b!5478971 bm!404343) bm!404342))

(declare-fun m!6495064 () Bool)

(assert (=> bm!404341 m!6495064))

(declare-fun m!6495066 () Bool)

(assert (=> bm!404342 m!6495066))

(declare-fun m!6495068 () Bool)

(assert (=> b!5478969 m!6495068))

(assert (=> d!1740209 d!1740611))

(declare-fun d!1740613 () Bool)

(declare-fun res!2335602 () Bool)

(declare-fun e!3391118 () Bool)

(assert (=> d!1740613 (=> res!2335602 e!3391118)))

(assert (=> d!1740613 (= res!2335602 (is-Nil!62250 (unfocusZipperList!800 zl!343)))))

(assert (=> d!1740613 (= (forall!14615 (unfocusZipperList!800 zl!343) lambda!292142) e!3391118)))

(declare-fun b!5478974 () Bool)

(declare-fun e!3391119 () Bool)

(assert (=> b!5478974 (= e!3391118 e!3391119)))

(declare-fun res!2335603 () Bool)

(assert (=> b!5478974 (=> (not res!2335603) (not e!3391119))))

(assert (=> b!5478974 (= res!2335603 (dynLambda!24435 lambda!292142 (h!68698 (unfocusZipperList!800 zl!343))))))

(declare-fun b!5478975 () Bool)

(assert (=> b!5478975 (= e!3391119 (forall!14615 (t!375603 (unfocusZipperList!800 zl!343)) lambda!292142))))

(assert (= (and d!1740613 (not res!2335602)) b!5478974))

(assert (= (and b!5478974 res!2335603) b!5478975))

(declare-fun b_lambda!208183 () Bool)

(assert (=> (not b_lambda!208183) (not b!5478974)))

(declare-fun m!6495070 () Bool)

(assert (=> b!5478974 m!6495070))

(declare-fun m!6495072 () Bool)

(assert (=> b!5478975 m!6495072))

(assert (=> d!1740209 d!1740613))

(declare-fun d!1740615 () Bool)

(assert (=> d!1740615 (= (isEmpty!34208 (tail!10833 (unfocusZipperList!800 zl!343))) (is-Nil!62250 (tail!10833 (unfocusZipperList!800 zl!343))))))

(assert (=> b!5477960 d!1740615))

(declare-fun d!1740617 () Bool)

(assert (=> d!1740617 (= (tail!10833 (unfocusZipperList!800 zl!343)) (t!375603 (unfocusZipperList!800 zl!343)))))

(assert (=> b!5477960 d!1740617))

(declare-fun d!1740619 () Bool)

(assert (=> d!1740619 (= (Exists!2537 lambda!292150) (choose!41679 lambda!292150))))

(declare-fun bs!1266139 () Bool)

(assert (= bs!1266139 d!1740619))

(declare-fun m!6495074 () Bool)

(assert (=> bs!1266139 m!6495074))

(assert (=> d!1740223 d!1740619))

(declare-fun d!1740621 () Bool)

(assert (=> d!1740621 (= (Exists!2537 lambda!292151) (choose!41679 lambda!292151))))

(declare-fun bs!1266140 () Bool)

(assert (= bs!1266140 d!1740621))

(declare-fun m!6495076 () Bool)

(assert (=> bs!1266140 m!6495076))

(assert (=> d!1740223 d!1740621))

(declare-fun bs!1266141 () Bool)

(declare-fun d!1740623 () Bool)

(assert (= bs!1266141 (and d!1740623 d!1740225)))

(declare-fun lambda!292236 () Int)

(assert (=> bs!1266141 (= (= r!7292 (Star!15358 (reg!15687 r!7292))) (= lambda!292236 lambda!292156))))

(declare-fun bs!1266142 () Bool)

(assert (= bs!1266142 (and d!1740623 b!5477508)))

(assert (=> bs!1266142 (not (= lambda!292236 lambda!292085))))

(declare-fun bs!1266143 () Bool)

(assert (= bs!1266143 (and d!1740623 b!5477861)))

(assert (=> bs!1266143 (not (= lambda!292236 lambda!292131))))

(assert (=> bs!1266142 (not (= lambda!292236 lambda!292086))))

(declare-fun bs!1266144 () Bool)

(assert (= bs!1266144 (and d!1740623 b!5478709)))

(assert (=> bs!1266144 (not (= lambda!292236 lambda!292214))))

(declare-fun bs!1266145 () Bool)

(assert (= bs!1266145 (and d!1740623 b!5478566)))

(assert (=> bs!1266145 (not (= lambda!292236 lambda!292208))))

(assert (=> bs!1266142 (= lambda!292236 lambda!292084)))

(declare-fun bs!1266146 () Bool)

(assert (= bs!1266146 (and d!1740623 d!1740223)))

(assert (=> bs!1266146 (not (= lambda!292236 lambda!292151))))

(assert (=> bs!1266141 (not (= lambda!292236 lambda!292157))))

(declare-fun bs!1266147 () Bool)

(assert (= bs!1266147 (and d!1740623 b!5478600)))

(assert (=> bs!1266147 (not (= lambda!292236 lambda!292209))))

(declare-fun bs!1266148 () Bool)

(assert (= bs!1266148 (and d!1740623 b!5478592)))

(assert (=> bs!1266148 (not (= lambda!292236 lambda!292210))))

(declare-fun bs!1266149 () Bool)

(assert (= bs!1266149 (and d!1740623 d!1740601)))

(assert (=> bs!1266149 (not (= lambda!292236 lambda!292229))))

(declare-fun bs!1266150 () Bool)

(assert (= bs!1266150 (and d!1740623 b!5478574)))

(assert (=> bs!1266150 (not (= lambda!292236 lambda!292207))))

(declare-fun bs!1266151 () Bool)

(assert (= bs!1266151 (and d!1740623 b!5477718)))

(assert (=> bs!1266151 (not (= lambda!292236 lambda!292123))))

(declare-fun bs!1266152 () Bool)

(assert (= bs!1266152 (and d!1740623 b!5478955)))

(assert (=> bs!1266152 (not (= lambda!292236 lambda!292231))))

(assert (=> bs!1266146 (= lambda!292236 lambda!292150)))

(declare-fun bs!1266153 () Bool)

(assert (= bs!1266153 (and d!1740623 b!5477726)))

(assert (=> bs!1266153 (not (= lambda!292236 lambda!292122))))

(assert (=> bs!1266149 (= (= r!7292 (Star!15358 (reg!15687 r!7292))) (= lambda!292236 lambda!292228))))

(declare-fun bs!1266154 () Bool)

(assert (= bs!1266154 (and d!1740623 b!5477853)))

(assert (=> bs!1266154 (not (= lambda!292236 lambda!292133))))

(declare-fun bs!1266155 () Bool)

(assert (= bs!1266155 (and d!1740623 d!1740241)))

(assert (=> bs!1266155 (= lambda!292236 lambda!292163)))

(declare-fun bs!1266156 () Bool)

(assert (= bs!1266156 (and d!1740623 d!1740537)))

(assert (=> bs!1266156 (= lambda!292236 lambda!292217)))

(declare-fun bs!1266157 () Bool)

(assert (= bs!1266157 (and d!1740623 b!5478963)))

(assert (=> bs!1266157 (not (= lambda!292236 lambda!292230))))

(declare-fun bs!1266158 () Bool)

(assert (= bs!1266158 (and d!1740623 b!5478717)))

(assert (=> bs!1266158 (not (= lambda!292236 lambda!292213))))

(assert (=> d!1740623 true))

(assert (=> d!1740623 true))

(assert (=> d!1740623 true))

(declare-fun lambda!292237 () Int)

(assert (=> bs!1266141 (not (= lambda!292237 lambda!292156))))

(assert (=> bs!1266142 (not (= lambda!292237 lambda!292085))))

(assert (=> bs!1266143 (not (= lambda!292237 lambda!292131))))

(assert (=> bs!1266142 (= lambda!292237 lambda!292086)))

(assert (=> bs!1266144 (= (and (= (reg!15687 r!7292) (regOne!31228 (regTwo!31229 lt!2237470))) (= r!7292 (regTwo!31228 (regTwo!31229 lt!2237470)))) (= lambda!292237 lambda!292214))))

(assert (=> bs!1266142 (not (= lambda!292237 lambda!292084))))

(assert (=> bs!1266146 (= lambda!292237 lambda!292151)))

(assert (=> bs!1266141 (not (= lambda!292237 lambda!292157))))

(assert (=> bs!1266147 (not (= lambda!292237 lambda!292209))))

(assert (=> bs!1266148 (= (and (= (reg!15687 r!7292) (regOne!31228 (regTwo!31229 r!7292))) (= r!7292 (regTwo!31228 (regTwo!31229 r!7292)))) (= lambda!292237 lambda!292210))))

(assert (=> bs!1266149 (not (= lambda!292237 lambda!292229))))

(assert (=> bs!1266150 (not (= lambda!292237 lambda!292207))))

(assert (=> bs!1266151 (= (and (= (reg!15687 r!7292) (regOne!31228 r!7292)) (= r!7292 (regTwo!31228 r!7292))) (= lambda!292237 lambda!292123))))

(assert (=> bs!1266152 (= (and (= (reg!15687 r!7292) (regOne!31228 (regOne!31229 lt!2237470))) (= r!7292 (regTwo!31228 (regOne!31229 lt!2237470)))) (= lambda!292237 lambda!292231))))

(assert (=> bs!1266145 (= (and (= (reg!15687 r!7292) (regOne!31228 (regOne!31229 r!7292))) (= r!7292 (regTwo!31228 (regOne!31229 r!7292)))) (= lambda!292237 lambda!292208))))

(declare-fun bs!1266159 () Bool)

(assert (= bs!1266159 d!1740623))

(assert (=> bs!1266159 (not (= lambda!292237 lambda!292236))))

(assert (=> bs!1266146 (not (= lambda!292237 lambda!292150))))

(assert (=> bs!1266153 (not (= lambda!292237 lambda!292122))))

(assert (=> bs!1266149 (not (= lambda!292237 lambda!292228))))

(assert (=> bs!1266154 (= (and (= (reg!15687 r!7292) (regOne!31228 lt!2237470)) (= r!7292 (regTwo!31228 lt!2237470))) (= lambda!292237 lambda!292133))))

(assert (=> bs!1266155 (not (= lambda!292237 lambda!292163))))

(assert (=> bs!1266156 (not (= lambda!292237 lambda!292217))))

(assert (=> bs!1266157 (not (= lambda!292237 lambda!292230))))

(assert (=> bs!1266158 (not (= lambda!292237 lambda!292213))))

(assert (=> d!1740623 true))

(assert (=> d!1740623 true))

(assert (=> d!1740623 true))

(assert (=> d!1740623 (= (Exists!2537 lambda!292236) (Exists!2537 lambda!292237))))

(assert (=> d!1740623 true))

(declare-fun _$90!1205 () Unit!155166)

(assert (=> d!1740623 (= (choose!41680 (reg!15687 r!7292) r!7292 s!2326) _$90!1205)))

(declare-fun m!6495078 () Bool)

(assert (=> bs!1266159 m!6495078))

(declare-fun m!6495080 () Bool)

(assert (=> bs!1266159 m!6495080))

(assert (=> d!1740223 d!1740623))

(assert (=> d!1740223 d!1740539))

(declare-fun d!1740625 () Bool)

(declare-fun c!957349 () Bool)

(declare-fun e!3391126 () Bool)

(assert (=> d!1740625 (= c!957349 e!3391126)))

(declare-fun res!2335612 () Bool)

(assert (=> d!1740625 (=> (not res!2335612) (not e!3391126))))

(assert (=> d!1740625 (= res!2335612 (is-Cons!62250 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237457))))))))

(declare-fun e!3391125 () (Set Context!9484))

(assert (=> d!1740625 (= (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 lt!2237457))) (h!68697 s!2326)) e!3391125)))

(declare-fun b!5478984 () Bool)

(declare-fun e!3391124 () (Set Context!9484))

(assert (=> b!5478984 (= e!3391124 (as set.empty (Set Context!9484)))))

(declare-fun b!5478985 () Bool)

(declare-fun call!404349 () (Set Context!9484))

(assert (=> b!5478985 (= e!3391124 call!404349)))

(declare-fun b!5478986 () Bool)

(assert (=> b!5478986 (= e!3391126 (nullable!5485 (h!68698 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237457)))))))))

(declare-fun b!5478987 () Bool)

(assert (=> b!5478987 (= e!3391125 (set.union call!404349 (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237457)))))) (h!68697 s!2326))))))

(declare-fun b!5478988 () Bool)

(assert (=> b!5478988 (= e!3391125 e!3391124)))

(declare-fun c!957350 () Bool)

(assert (=> b!5478988 (= c!957350 (is-Cons!62250 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237457))))))))

(declare-fun bm!404344 () Bool)

(assert (=> bm!404344 (= call!404349 (derivationStepZipperDown!784 (h!68698 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237457))))) (Context!9485 (t!375603 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237457)))))) (h!68697 s!2326)))))

(assert (= (and d!1740625 res!2335612) b!5478986))

(assert (= (and d!1740625 c!957349) b!5478987))

(assert (= (and d!1740625 (not c!957349)) b!5478988))

(assert (= (and b!5478988 c!957350) b!5478985))

(assert (= (and b!5478988 (not c!957350)) b!5478984))

(assert (= (or b!5478987 b!5478985) bm!404344))

(declare-fun m!6495082 () Bool)

(assert (=> b!5478986 m!6495082))

(declare-fun m!6495084 () Bool)

(assert (=> b!5478987 m!6495084))

(declare-fun m!6495086 () Bool)

(assert (=> bm!404344 m!6495086))

(assert (=> b!5477677 d!1740625))

(declare-fun d!1740627 () Bool)

(assert (=> d!1740627 (= (isEmpty!34208 (exprs!5242 (h!68699 zl!343))) (is-Nil!62250 (exprs!5242 (h!68699 zl!343))))))

(assert (=> b!5477799 d!1740627))

(assert (=> bs!1265766 d!1740161))

(declare-fun d!1740629 () Bool)

(declare-fun c!957351 () Bool)

(declare-fun e!3391129 () Bool)

(assert (=> d!1740629 (= c!957351 e!3391129)))

(declare-fun res!2335613 () Bool)

(assert (=> d!1740629 (=> (not res!2335613) (not e!3391129))))

(assert (=> d!1740629 (= res!2335613 (is-Cons!62250 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237455))))))))

(declare-fun e!3391128 () (Set Context!9484))

(assert (=> d!1740629 (= (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 lt!2237455))) (h!68697 s!2326)) e!3391128)))

(declare-fun b!5478989 () Bool)

(declare-fun e!3391127 () (Set Context!9484))

(assert (=> b!5478989 (= e!3391127 (as set.empty (Set Context!9484)))))

(declare-fun b!5478990 () Bool)

(declare-fun call!404350 () (Set Context!9484))

(assert (=> b!5478990 (= e!3391127 call!404350)))

(declare-fun b!5478991 () Bool)

(assert (=> b!5478991 (= e!3391129 (nullable!5485 (h!68698 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237455)))))))))

(declare-fun b!5478992 () Bool)

(assert (=> b!5478992 (= e!3391128 (set.union call!404350 (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237455)))))) (h!68697 s!2326))))))

(declare-fun b!5478993 () Bool)

(assert (=> b!5478993 (= e!3391128 e!3391127)))

(declare-fun c!957352 () Bool)

(assert (=> b!5478993 (= c!957352 (is-Cons!62250 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237455))))))))

(declare-fun bm!404345 () Bool)

(assert (=> bm!404345 (= call!404350 (derivationStepZipperDown!784 (h!68698 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237455))))) (Context!9485 (t!375603 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 lt!2237455)))))) (h!68697 s!2326)))))

(assert (= (and d!1740629 res!2335613) b!5478991))

(assert (= (and d!1740629 c!957351) b!5478992))

(assert (= (and d!1740629 (not c!957351)) b!5478993))

(assert (= (and b!5478993 c!957352) b!5478990))

(assert (= (and b!5478993 (not c!957352)) b!5478989))

(assert (= (or b!5478992 b!5478990) bm!404345))

(declare-fun m!6495088 () Bool)

(assert (=> b!5478991 m!6495088))

(declare-fun m!6495090 () Bool)

(assert (=> b!5478992 m!6495090))

(declare-fun m!6495092 () Bool)

(assert (=> bm!404345 m!6495092))

(assert (=> b!5477672 d!1740629))

(declare-fun bs!1266160 () Bool)

(declare-fun d!1740631 () Bool)

(assert (= bs!1266160 (and d!1740631 d!1740403)))

(declare-fun lambda!292238 () Int)

(assert (=> bs!1266160 (= lambda!292238 lambda!292205)))

(declare-fun bs!1266161 () Bool)

(assert (= bs!1266161 (and d!1740631 d!1740211)))

(assert (=> bs!1266161 (= lambda!292238 lambda!292145)))

(declare-fun bs!1266162 () Bool)

(assert (= bs!1266162 (and d!1740631 b!5477487)))

(assert (=> bs!1266162 (= lambda!292238 lambda!292088)))

(declare-fun bs!1266163 () Bool)

(assert (= bs!1266163 (and d!1740631 d!1740181)))

(assert (=> bs!1266163 (= lambda!292238 lambda!292126)))

(declare-fun bs!1266164 () Bool)

(assert (= bs!1266164 (and d!1740631 d!1740493)))

(assert (=> bs!1266164 (= lambda!292238 lambda!292212)))

(declare-fun bs!1266165 () Bool)

(assert (= bs!1266165 (and d!1740631 d!1740401)))

(assert (=> bs!1266165 (= lambda!292238 lambda!292204)))

(declare-fun bs!1266166 () Bool)

(assert (= bs!1266166 (and d!1740631 d!1740395)))

(assert (=> bs!1266166 (= lambda!292238 lambda!292203)))

(declare-fun bs!1266167 () Bool)

(assert (= bs!1266167 (and d!1740631 d!1740573)))

(assert (=> bs!1266167 (= lambda!292238 lambda!292220)))

(declare-fun bs!1266168 () Bool)

(assert (= bs!1266168 (and d!1740631 d!1740593)))

(assert (=> bs!1266168 (= lambda!292238 lambda!292222)))

(declare-fun bs!1266169 () Bool)

(assert (= bs!1266169 (and d!1740631 d!1740391)))

(assert (=> bs!1266169 (= lambda!292238 lambda!292199)))

(declare-fun bs!1266170 () Bool)

(assert (= bs!1266170 (and d!1740631 d!1740565)))

(assert (=> bs!1266170 (= lambda!292238 lambda!292219)))

(declare-fun bs!1266171 () Bool)

(assert (= bs!1266171 (and d!1740631 d!1740209)))

(assert (=> bs!1266171 (= lambda!292238 lambda!292142)))

(declare-fun bs!1266172 () Bool)

(assert (= bs!1266172 (and d!1740631 d!1740261)))

(assert (=> bs!1266172 (= lambda!292238 lambda!292164)))

(declare-fun bs!1266173 () Bool)

(assert (= bs!1266173 (and d!1740631 d!1740189)))

(assert (=> bs!1266173 (= lambda!292238 lambda!292129)))

(declare-fun bs!1266174 () Bool)

(assert (= bs!1266174 (and d!1740631 d!1740595)))

(assert (=> bs!1266174 (= lambda!292238 lambda!292223)))

(declare-fun bs!1266175 () Bool)

(assert (= bs!1266175 (and d!1740631 d!1740191)))

(assert (=> bs!1266175 (= lambda!292238 lambda!292130)))

(declare-fun bs!1266176 () Bool)

(assert (= bs!1266176 (and d!1740631 d!1740389)))

(assert (=> bs!1266176 (= lambda!292238 lambda!292198)))

(declare-fun b!5478994 () Bool)

(declare-fun e!3391132 () Regex!15358)

(assert (=> b!5478994 (= e!3391132 (Union!15358 (h!68698 (t!375603 (unfocusZipperList!800 zl!343))) (generalisedUnion!1287 (t!375603 (t!375603 (unfocusZipperList!800 zl!343))))))))

(declare-fun b!5478995 () Bool)

(declare-fun e!3391134 () Bool)

(declare-fun lt!2237690 () Regex!15358)

(assert (=> b!5478995 (= e!3391134 (= lt!2237690 (head!11736 (t!375603 (unfocusZipperList!800 zl!343)))))))

(declare-fun b!5478996 () Bool)

(declare-fun e!3391131 () Regex!15358)

(assert (=> b!5478996 (= e!3391131 e!3391132)))

(declare-fun c!957356 () Bool)

(assert (=> b!5478996 (= c!957356 (is-Cons!62250 (t!375603 (unfocusZipperList!800 zl!343))))))

(declare-fun b!5478997 () Bool)

(declare-fun e!3391130 () Bool)

(assert (=> b!5478997 (= e!3391130 (isEmptyLang!1050 lt!2237690))))

(declare-fun b!5478998 () Bool)

(assert (=> b!5478998 (= e!3391130 e!3391134)))

(declare-fun c!957354 () Bool)

(assert (=> b!5478998 (= c!957354 (isEmpty!34208 (tail!10833 (t!375603 (unfocusZipperList!800 zl!343)))))))

(declare-fun b!5478999 () Bool)

(assert (=> b!5478999 (= e!3391134 (isUnion!482 lt!2237690))))

(declare-fun e!3391133 () Bool)

(assert (=> d!1740631 e!3391133))

(declare-fun res!2335614 () Bool)

(assert (=> d!1740631 (=> (not res!2335614) (not e!3391133))))

(assert (=> d!1740631 (= res!2335614 (validRegex!7094 lt!2237690))))

(assert (=> d!1740631 (= lt!2237690 e!3391131)))

(declare-fun c!957355 () Bool)

(declare-fun e!3391135 () Bool)

(assert (=> d!1740631 (= c!957355 e!3391135)))

(declare-fun res!2335615 () Bool)

(assert (=> d!1740631 (=> (not res!2335615) (not e!3391135))))

(assert (=> d!1740631 (= res!2335615 (is-Cons!62250 (t!375603 (unfocusZipperList!800 zl!343))))))

(assert (=> d!1740631 (forall!14615 (t!375603 (unfocusZipperList!800 zl!343)) lambda!292238)))

(assert (=> d!1740631 (= (generalisedUnion!1287 (t!375603 (unfocusZipperList!800 zl!343))) lt!2237690)))

(declare-fun b!5479000 () Bool)

(assert (=> b!5479000 (= e!3391133 e!3391130)))

(declare-fun c!957353 () Bool)

(assert (=> b!5479000 (= c!957353 (isEmpty!34208 (t!375603 (unfocusZipperList!800 zl!343))))))

(declare-fun b!5479001 () Bool)

(assert (=> b!5479001 (= e!3391135 (isEmpty!34208 (t!375603 (t!375603 (unfocusZipperList!800 zl!343)))))))

(declare-fun b!5479002 () Bool)

(assert (=> b!5479002 (= e!3391132 EmptyLang!15358)))

(declare-fun b!5479003 () Bool)

(assert (=> b!5479003 (= e!3391131 (h!68698 (t!375603 (unfocusZipperList!800 zl!343))))))

(assert (= (and d!1740631 res!2335615) b!5479001))

(assert (= (and d!1740631 c!957355) b!5479003))

(assert (= (and d!1740631 (not c!957355)) b!5478996))

(assert (= (and b!5478996 c!957356) b!5478994))

(assert (= (and b!5478996 (not c!957356)) b!5479002))

(assert (= (and d!1740631 res!2335614) b!5479000))

(assert (= (and b!5479000 c!957353) b!5478997))

(assert (= (and b!5479000 (not c!957353)) b!5478998))

(assert (= (and b!5478998 c!957354) b!5478995))

(assert (= (and b!5478998 (not c!957354)) b!5478999))

(declare-fun m!6495094 () Bool)

(assert (=> b!5478994 m!6495094))

(declare-fun m!6495096 () Bool)

(assert (=> b!5479001 m!6495096))

(declare-fun m!6495098 () Bool)

(assert (=> b!5478995 m!6495098))

(declare-fun m!6495100 () Bool)

(assert (=> b!5478997 m!6495100))

(declare-fun m!6495102 () Bool)

(assert (=> b!5478998 m!6495102))

(assert (=> b!5478998 m!6495102))

(declare-fun m!6495104 () Bool)

(assert (=> b!5478998 m!6495104))

(assert (=> b!5479000 m!6494096))

(declare-fun m!6495106 () Bool)

(assert (=> d!1740631 m!6495106))

(declare-fun m!6495108 () Bool)

(assert (=> d!1740631 m!6495108))

(declare-fun m!6495110 () Bool)

(assert (=> b!5478999 m!6495110))

(assert (=> b!5477956 d!1740631))

(declare-fun bs!1266177 () Bool)

(declare-fun d!1740633 () Bool)

(assert (= bs!1266177 (and d!1740633 d!1740393)))

(declare-fun lambda!292239 () Int)

(assert (=> bs!1266177 (= lambda!292239 lambda!292202)))

(declare-fun bs!1266178 () Bool)

(assert (= bs!1266178 (and d!1740633 d!1740467)))

(assert (=> bs!1266178 (= lambda!292239 lambda!292211)))

(assert (=> d!1740633 (= (nullableZipper!1506 z!1189) (exists!2028 z!1189 lambda!292239))))

(declare-fun bs!1266179 () Bool)

(assert (= bs!1266179 d!1740633))

(declare-fun m!6495112 () Bool)

(assert (=> bs!1266179 m!6495112))

(assert (=> b!5478108 d!1740633))

(assert (=> b!5478054 d!1740603))

(declare-fun d!1740635 () Bool)

(declare-fun res!2335616 () Bool)

(declare-fun e!3391136 () Bool)

(assert (=> d!1740635 (=> res!2335616 e!3391136)))

(assert (=> d!1740635 (= res!2335616 (is-Nil!62250 (t!375603 (exprs!5242 c!332))))))

(assert (=> d!1740635 (= (forall!14615 (t!375603 (exprs!5242 c!332)) lambda!292088) e!3391136)))

(declare-fun b!5479004 () Bool)

(declare-fun e!3391137 () Bool)

(assert (=> b!5479004 (= e!3391136 e!3391137)))

(declare-fun res!2335617 () Bool)

(assert (=> b!5479004 (=> (not res!2335617) (not e!3391137))))

(assert (=> b!5479004 (= res!2335617 (dynLambda!24435 lambda!292088 (h!68698 (t!375603 (exprs!5242 c!332)))))))

(declare-fun b!5479005 () Bool)

(assert (=> b!5479005 (= e!3391137 (forall!14615 (t!375603 (t!375603 (exprs!5242 c!332))) lambda!292088))))

(assert (= (and d!1740635 (not res!2335616)) b!5479004))

(assert (= (and b!5479004 res!2335617) b!5479005))

(declare-fun b_lambda!208185 () Bool)

(assert (=> (not b_lambda!208185) (not b!5479004)))

(declare-fun m!6495114 () Bool)

(assert (=> b!5479004 m!6495114))

(declare-fun m!6495116 () Bool)

(assert (=> b!5479005 m!6495116))

(assert (=> b!5478086 d!1740635))

(declare-fun d!1740637 () Bool)

(assert (=> d!1740637 (= (flatMap!1061 lt!2237468 lambda!292116) (choose!41676 lt!2237468 lambda!292116))))

(declare-fun bs!1266180 () Bool)

(assert (= bs!1266180 d!1740637))

(declare-fun m!6495118 () Bool)

(assert (=> bs!1266180 m!6495118))

(assert (=> d!1740155 d!1740637))

(declare-fun d!1740639 () Bool)

(assert (=> d!1740639 (= (Exists!2537 (ite c!956998 lambda!292122 lambda!292123)) (choose!41679 (ite c!956998 lambda!292122 lambda!292123)))))

(declare-fun bs!1266181 () Bool)

(assert (= bs!1266181 d!1740639))

(declare-fun m!6495120 () Bool)

(assert (=> bs!1266181 m!6495120))

(assert (=> bm!404128 d!1740639))

(assert (=> bm!404131 d!1740229))

(assert (=> d!1740151 d!1740229))

(declare-fun d!1740641 () Bool)

(declare-fun c!957357 () Bool)

(declare-fun e!3391140 () Bool)

(assert (=> d!1740641 (= c!957357 e!3391140)))

(declare-fun res!2335618 () Bool)

(assert (=> d!1740641 (=> (not res!2335618) (not e!3391140))))

(assert (=> d!1740641 (= res!2335618 (is-Cons!62250 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343)))))))))

(declare-fun e!3391139 () (Set Context!9484))

(assert (=> d!1740641 (= (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343)))) (h!68697 s!2326)) e!3391139)))

(declare-fun b!5479006 () Bool)

(declare-fun e!3391138 () (Set Context!9484))

(assert (=> b!5479006 (= e!3391138 (as set.empty (Set Context!9484)))))

(declare-fun b!5479007 () Bool)

(declare-fun call!404351 () (Set Context!9484))

(assert (=> b!5479007 (= e!3391138 call!404351)))

(declare-fun b!5479008 () Bool)

(assert (=> b!5479008 (= e!3391140 (nullable!5485 (h!68698 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343))))))))))

(declare-fun b!5479009 () Bool)

(assert (=> b!5479009 (= e!3391139 (set.union call!404351 (derivationStepZipperUp!710 (Context!9485 (t!375603 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343))))))) (h!68697 s!2326))))))

(declare-fun b!5479010 () Bool)

(assert (=> b!5479010 (= e!3391139 e!3391138)))

(declare-fun c!957358 () Bool)

(assert (=> b!5479010 (= c!957358 (is-Cons!62250 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343)))))))))

(declare-fun bm!404346 () Bool)

(assert (=> bm!404346 (= call!404351 (derivationStepZipperDown!784 (h!68698 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343)))))) (Context!9485 (t!375603 (exprs!5242 (Context!9485 (t!375603 (exprs!5242 (h!68699 zl!343))))))) (h!68697 s!2326)))))

(assert (= (and d!1740641 res!2335618) b!5479008))

(assert (= (and d!1740641 c!957357) b!5479009))

(assert (= (and d!1740641 (not c!957357)) b!5479010))

(assert (= (and b!5479010 c!957358) b!5479007))

(assert (= (and b!5479010 (not c!957358)) b!5479006))

(assert (= (or b!5479009 b!5479007) bm!404346))

(declare-fun m!6495122 () Bool)

(assert (=> b!5479008 m!6495122))

(declare-fun m!6495124 () Bool)

(assert (=> b!5479009 m!6495124))

(declare-fun m!6495126 () Bool)

(assert (=> bm!404346 m!6495126))

(assert (=> b!5478106 d!1740641))

(assert (=> b!5478050 d!1740175))

(declare-fun d!1740643 () Bool)

(assert (=> d!1740643 (= (isEmpty!34209 (findConcatSeparation!1881 (reg!15687 r!7292) r!7292 Nil!62249 s!2326 s!2326)) (not (is-Some!15466 (findConcatSeparation!1881 (reg!15687 r!7292) r!7292 Nil!62249 s!2326 s!2326))))))

(assert (=> d!1740221 d!1740643))

(declare-fun d!1740645 () Bool)

(assert (=> d!1740645 (= (nullable!5485 (regOne!31228 r!7292)) (nullableFct!1640 (regOne!31228 r!7292)))))

(declare-fun bs!1266182 () Bool)

(assert (= bs!1266182 d!1740645))

(declare-fun m!6495128 () Bool)

(assert (=> bs!1266182 m!6495128))

(assert (=> b!5477910 d!1740645))

(declare-fun b!5479011 () Bool)

(declare-fun e!3391141 () Bool)

(assert (=> b!5479011 (= e!3391141 tp_is_empty!39969)))

(declare-fun b!5479012 () Bool)

(declare-fun tp!1505708 () Bool)

(declare-fun tp!1505709 () Bool)

(assert (=> b!5479012 (= e!3391141 (and tp!1505708 tp!1505709))))

(declare-fun b!5479014 () Bool)

(declare-fun tp!1505711 () Bool)

(declare-fun tp!1505712 () Bool)

(assert (=> b!5479014 (= e!3391141 (and tp!1505711 tp!1505712))))

(assert (=> b!5478137 (= tp!1505587 e!3391141)))

(declare-fun b!5479013 () Bool)

(declare-fun tp!1505710 () Bool)

(assert (=> b!5479013 (= e!3391141 tp!1505710)))

(assert (= (and b!5478137 (is-ElementMatch!15358 (reg!15687 (regTwo!31229 r!7292)))) b!5479011))

(assert (= (and b!5478137 (is-Concat!24203 (reg!15687 (regTwo!31229 r!7292)))) b!5479012))

(assert (= (and b!5478137 (is-Star!15358 (reg!15687 (regTwo!31229 r!7292)))) b!5479013))

(assert (= (and b!5478137 (is-Union!15358 (reg!15687 (regTwo!31229 r!7292)))) b!5479014))

(declare-fun b!5479015 () Bool)

(declare-fun e!3391142 () Bool)

(assert (=> b!5479015 (= e!3391142 tp_is_empty!39969)))

(declare-fun b!5479016 () Bool)

(declare-fun tp!1505713 () Bool)

(declare-fun tp!1505714 () Bool)

(assert (=> b!5479016 (= e!3391142 (and tp!1505713 tp!1505714))))

(declare-fun b!5479018 () Bool)

(declare-fun tp!1505716 () Bool)

(declare-fun tp!1505717 () Bool)

(assert (=> b!5479018 (= e!3391142 (and tp!1505716 tp!1505717))))

(assert (=> b!5478136 (= tp!1505585 e!3391142)))

(declare-fun b!5479017 () Bool)

(declare-fun tp!1505715 () Bool)

(assert (=> b!5479017 (= e!3391142 tp!1505715)))

(assert (= (and b!5478136 (is-ElementMatch!15358 (regOne!31228 (regTwo!31229 r!7292)))) b!5479015))

(assert (= (and b!5478136 (is-Concat!24203 (regOne!31228 (regTwo!31229 r!7292)))) b!5479016))

(assert (= (and b!5478136 (is-Star!15358 (regOne!31228 (regTwo!31229 r!7292)))) b!5479017))

(assert (= (and b!5478136 (is-Union!15358 (regOne!31228 (regTwo!31229 r!7292)))) b!5479018))

(declare-fun b!5479019 () Bool)

(declare-fun e!3391143 () Bool)

(assert (=> b!5479019 (= e!3391143 tp_is_empty!39969)))

(declare-fun b!5479020 () Bool)

(declare-fun tp!1505718 () Bool)

(declare-fun tp!1505719 () Bool)

(assert (=> b!5479020 (= e!3391143 (and tp!1505718 tp!1505719))))

(declare-fun b!5479022 () Bool)

(declare-fun tp!1505721 () Bool)

(declare-fun tp!1505722 () Bool)

(assert (=> b!5479022 (= e!3391143 (and tp!1505721 tp!1505722))))

(assert (=> b!5478136 (= tp!1505586 e!3391143)))

(declare-fun b!5479021 () Bool)

(declare-fun tp!1505720 () Bool)

(assert (=> b!5479021 (= e!3391143 tp!1505720)))

(assert (= (and b!5478136 (is-ElementMatch!15358 (regTwo!31228 (regTwo!31229 r!7292)))) b!5479019))

(assert (= (and b!5478136 (is-Concat!24203 (regTwo!31228 (regTwo!31229 r!7292)))) b!5479020))

(assert (= (and b!5478136 (is-Star!15358 (regTwo!31228 (regTwo!31229 r!7292)))) b!5479021))

(assert (= (and b!5478136 (is-Union!15358 (regTwo!31228 (regTwo!31229 r!7292)))) b!5479022))

(declare-fun b!5479023 () Bool)

(declare-fun e!3391144 () Bool)

(assert (=> b!5479023 (= e!3391144 tp_is_empty!39969)))

(declare-fun b!5479024 () Bool)

(declare-fun tp!1505723 () Bool)

(declare-fun tp!1505724 () Bool)

(assert (=> b!5479024 (= e!3391144 (and tp!1505723 tp!1505724))))

(declare-fun b!5479026 () Bool)

(declare-fun tp!1505726 () Bool)

(declare-fun tp!1505727 () Bool)

(assert (=> b!5479026 (= e!3391144 (and tp!1505726 tp!1505727))))

(assert (=> b!5478138 (= tp!1505588 e!3391144)))

(declare-fun b!5479025 () Bool)

(declare-fun tp!1505725 () Bool)

(assert (=> b!5479025 (= e!3391144 tp!1505725)))

(assert (= (and b!5478138 (is-ElementMatch!15358 (regOne!31229 (regTwo!31229 r!7292)))) b!5479023))

(assert (= (and b!5478138 (is-Concat!24203 (regOne!31229 (regTwo!31229 r!7292)))) b!5479024))

(assert (= (and b!5478138 (is-Star!15358 (regOne!31229 (regTwo!31229 r!7292)))) b!5479025))

(assert (= (and b!5478138 (is-Union!15358 (regOne!31229 (regTwo!31229 r!7292)))) b!5479026))

(declare-fun b!5479027 () Bool)

(declare-fun e!3391145 () Bool)

(assert (=> b!5479027 (= e!3391145 tp_is_empty!39969)))

(declare-fun b!5479028 () Bool)

(declare-fun tp!1505728 () Bool)

(declare-fun tp!1505729 () Bool)

(assert (=> b!5479028 (= e!3391145 (and tp!1505728 tp!1505729))))

(declare-fun b!5479030 () Bool)

(declare-fun tp!1505731 () Bool)

(declare-fun tp!1505732 () Bool)

(assert (=> b!5479030 (= e!3391145 (and tp!1505731 tp!1505732))))

(assert (=> b!5478138 (= tp!1505589 e!3391145)))

(declare-fun b!5479029 () Bool)

(declare-fun tp!1505730 () Bool)

(assert (=> b!5479029 (= e!3391145 tp!1505730)))

(assert (= (and b!5478138 (is-ElementMatch!15358 (regTwo!31229 (regTwo!31229 r!7292)))) b!5479027))

(assert (= (and b!5478138 (is-Concat!24203 (regTwo!31229 (regTwo!31229 r!7292)))) b!5479028))

(assert (= (and b!5478138 (is-Star!15358 (regTwo!31229 (regTwo!31229 r!7292)))) b!5479029))

(assert (= (and b!5478138 (is-Union!15358 (regTwo!31229 (regTwo!31229 r!7292)))) b!5479030))

(declare-fun b!5479031 () Bool)

(declare-fun e!3391146 () Bool)

(assert (=> b!5479031 (= e!3391146 tp_is_empty!39969)))

(declare-fun b!5479032 () Bool)

(declare-fun tp!1505733 () Bool)

(declare-fun tp!1505734 () Bool)

(assert (=> b!5479032 (= e!3391146 (and tp!1505733 tp!1505734))))

(declare-fun b!5479034 () Bool)

(declare-fun tp!1505736 () Bool)

(declare-fun tp!1505737 () Bool)

(assert (=> b!5479034 (= e!3391146 (and tp!1505736 tp!1505737))))

(assert (=> b!5478147 (= tp!1505599 e!3391146)))

(declare-fun b!5479033 () Bool)

(declare-fun tp!1505735 () Bool)

(assert (=> b!5479033 (= e!3391146 tp!1505735)))

(assert (= (and b!5478147 (is-ElementMatch!15358 (regOne!31229 (regOne!31228 r!7292)))) b!5479031))

(assert (= (and b!5478147 (is-Concat!24203 (regOne!31229 (regOne!31228 r!7292)))) b!5479032))

(assert (= (and b!5478147 (is-Star!15358 (regOne!31229 (regOne!31228 r!7292)))) b!5479033))

(assert (= (and b!5478147 (is-Union!15358 (regOne!31229 (regOne!31228 r!7292)))) b!5479034))

(declare-fun b!5479035 () Bool)

(declare-fun e!3391147 () Bool)

(assert (=> b!5479035 (= e!3391147 tp_is_empty!39969)))

(declare-fun b!5479036 () Bool)

(declare-fun tp!1505738 () Bool)

(declare-fun tp!1505739 () Bool)

(assert (=> b!5479036 (= e!3391147 (and tp!1505738 tp!1505739))))

(declare-fun b!5479038 () Bool)

(declare-fun tp!1505741 () Bool)

(declare-fun tp!1505742 () Bool)

(assert (=> b!5479038 (= e!3391147 (and tp!1505741 tp!1505742))))

(assert (=> b!5478147 (= tp!1505600 e!3391147)))

(declare-fun b!5479037 () Bool)

(declare-fun tp!1505740 () Bool)

(assert (=> b!5479037 (= e!3391147 tp!1505740)))

(assert (= (and b!5478147 (is-ElementMatch!15358 (regTwo!31229 (regOne!31228 r!7292)))) b!5479035))

(assert (= (and b!5478147 (is-Concat!24203 (regTwo!31229 (regOne!31228 r!7292)))) b!5479036))

(assert (= (and b!5478147 (is-Star!15358 (regTwo!31229 (regOne!31228 r!7292)))) b!5479037))

(assert (= (and b!5478147 (is-Union!15358 (regTwo!31229 (regOne!31228 r!7292)))) b!5479038))

(declare-fun b!5479040 () Bool)

(declare-fun e!3391149 () Bool)

(declare-fun tp!1505743 () Bool)

(assert (=> b!5479040 (= e!3391149 tp!1505743)))

(declare-fun b!5479039 () Bool)

(declare-fun tp!1505744 () Bool)

(declare-fun e!3391148 () Bool)

(assert (=> b!5479039 (= e!3391148 (and (inv!81643 (h!68699 (t!375604 (t!375604 zl!343)))) e!3391149 tp!1505744))))

(assert (=> b!5478159 (= tp!1505613 e!3391148)))

(assert (= b!5479039 b!5479040))

(assert (= (and b!5478159 (is-Cons!62251 (t!375604 (t!375604 zl!343)))) b!5479039))

(declare-fun m!6495130 () Bool)

(assert (=> b!5479039 m!6495130))

(declare-fun b!5479041 () Bool)

(declare-fun e!3391150 () Bool)

(assert (=> b!5479041 (= e!3391150 tp_is_empty!39969)))

(declare-fun b!5479042 () Bool)

(declare-fun tp!1505745 () Bool)

(declare-fun tp!1505746 () Bool)

(assert (=> b!5479042 (= e!3391150 (and tp!1505745 tp!1505746))))

(declare-fun b!5479044 () Bool)

(declare-fun tp!1505748 () Bool)

(declare-fun tp!1505749 () Bool)

(assert (=> b!5479044 (= e!3391150 (and tp!1505748 tp!1505749))))

(assert (=> b!5478145 (= tp!1505596 e!3391150)))

(declare-fun b!5479043 () Bool)

(declare-fun tp!1505747 () Bool)

(assert (=> b!5479043 (= e!3391150 tp!1505747)))

(assert (= (and b!5478145 (is-ElementMatch!15358 (regOne!31228 (regOne!31228 r!7292)))) b!5479041))

(assert (= (and b!5478145 (is-Concat!24203 (regOne!31228 (regOne!31228 r!7292)))) b!5479042))

(assert (= (and b!5478145 (is-Star!15358 (regOne!31228 (regOne!31228 r!7292)))) b!5479043))

(assert (= (and b!5478145 (is-Union!15358 (regOne!31228 (regOne!31228 r!7292)))) b!5479044))

(declare-fun b!5479045 () Bool)

(declare-fun e!3391151 () Bool)

(assert (=> b!5479045 (= e!3391151 tp_is_empty!39969)))

(declare-fun b!5479046 () Bool)

(declare-fun tp!1505750 () Bool)

(declare-fun tp!1505751 () Bool)

(assert (=> b!5479046 (= e!3391151 (and tp!1505750 tp!1505751))))

(declare-fun b!5479048 () Bool)

(declare-fun tp!1505753 () Bool)

(declare-fun tp!1505754 () Bool)

(assert (=> b!5479048 (= e!3391151 (and tp!1505753 tp!1505754))))

(assert (=> b!5478145 (= tp!1505597 e!3391151)))

(declare-fun b!5479047 () Bool)

(declare-fun tp!1505752 () Bool)

(assert (=> b!5479047 (= e!3391151 tp!1505752)))

(assert (= (and b!5478145 (is-ElementMatch!15358 (regTwo!31228 (regOne!31228 r!7292)))) b!5479045))

(assert (= (and b!5478145 (is-Concat!24203 (regTwo!31228 (regOne!31228 r!7292)))) b!5479046))

(assert (= (and b!5478145 (is-Star!15358 (regTwo!31228 (regOne!31228 r!7292)))) b!5479047))

(assert (= (and b!5478145 (is-Union!15358 (regTwo!31228 (regOne!31228 r!7292)))) b!5479048))

(declare-fun b!5479049 () Bool)

(declare-fun e!3391152 () Bool)

(declare-fun tp!1505755 () Bool)

(declare-fun tp!1505756 () Bool)

(assert (=> b!5479049 (= e!3391152 (and tp!1505755 tp!1505756))))

(assert (=> b!5478160 (= tp!1505612 e!3391152)))

(assert (= (and b!5478160 (is-Cons!62250 (exprs!5242 (h!68699 (t!375604 zl!343))))) b!5479049))

(declare-fun b!5479050 () Bool)

(declare-fun e!3391153 () Bool)

(assert (=> b!5479050 (= e!3391153 tp_is_empty!39969)))

(declare-fun b!5479051 () Bool)

(declare-fun tp!1505757 () Bool)

(declare-fun tp!1505758 () Bool)

(assert (=> b!5479051 (= e!3391153 (and tp!1505757 tp!1505758))))

(declare-fun b!5479053 () Bool)

(declare-fun tp!1505760 () Bool)

(declare-fun tp!1505761 () Bool)

(assert (=> b!5479053 (= e!3391153 (and tp!1505760 tp!1505761))))

(assert (=> b!5478146 (= tp!1505598 e!3391153)))

(declare-fun b!5479052 () Bool)

(declare-fun tp!1505759 () Bool)

(assert (=> b!5479052 (= e!3391153 tp!1505759)))

(assert (= (and b!5478146 (is-ElementMatch!15358 (reg!15687 (regOne!31228 r!7292)))) b!5479050))

(assert (= (and b!5478146 (is-Concat!24203 (reg!15687 (regOne!31228 r!7292)))) b!5479051))

(assert (= (and b!5478146 (is-Star!15358 (reg!15687 (regOne!31228 r!7292)))) b!5479052))

(assert (= (and b!5478146 (is-Union!15358 (reg!15687 (regOne!31228 r!7292)))) b!5479053))

(declare-fun b!5479054 () Bool)

(declare-fun e!3391154 () Bool)

(assert (=> b!5479054 (= e!3391154 tp_is_empty!39969)))

(declare-fun b!5479055 () Bool)

(declare-fun tp!1505762 () Bool)

(declare-fun tp!1505763 () Bool)

(assert (=> b!5479055 (= e!3391154 (and tp!1505762 tp!1505763))))

(declare-fun b!5479057 () Bool)

(declare-fun tp!1505765 () Bool)

(declare-fun tp!1505766 () Bool)

(assert (=> b!5479057 (= e!3391154 (and tp!1505765 tp!1505766))))

(assert (=> b!5478164 (= tp!1505617 e!3391154)))

(declare-fun b!5479056 () Bool)

(declare-fun tp!1505764 () Bool)

(assert (=> b!5479056 (= e!3391154 tp!1505764)))

(assert (= (and b!5478164 (is-ElementMatch!15358 (regOne!31229 (reg!15687 r!7292)))) b!5479054))

(assert (= (and b!5478164 (is-Concat!24203 (regOne!31229 (reg!15687 r!7292)))) b!5479055))

(assert (= (and b!5478164 (is-Star!15358 (regOne!31229 (reg!15687 r!7292)))) b!5479056))

(assert (= (and b!5478164 (is-Union!15358 (regOne!31229 (reg!15687 r!7292)))) b!5479057))

(declare-fun b!5479058 () Bool)

(declare-fun e!3391155 () Bool)

(assert (=> b!5479058 (= e!3391155 tp_is_empty!39969)))

(declare-fun b!5479059 () Bool)

(declare-fun tp!1505767 () Bool)

(declare-fun tp!1505768 () Bool)

(assert (=> b!5479059 (= e!3391155 (and tp!1505767 tp!1505768))))

(declare-fun b!5479061 () Bool)

(declare-fun tp!1505770 () Bool)

(declare-fun tp!1505771 () Bool)

(assert (=> b!5479061 (= e!3391155 (and tp!1505770 tp!1505771))))

(assert (=> b!5478164 (= tp!1505618 e!3391155)))

(declare-fun b!5479060 () Bool)

(declare-fun tp!1505769 () Bool)

(assert (=> b!5479060 (= e!3391155 tp!1505769)))

(assert (= (and b!5478164 (is-ElementMatch!15358 (regTwo!31229 (reg!15687 r!7292)))) b!5479058))

(assert (= (and b!5478164 (is-Concat!24203 (regTwo!31229 (reg!15687 r!7292)))) b!5479059))

(assert (= (and b!5478164 (is-Star!15358 (regTwo!31229 (reg!15687 r!7292)))) b!5479060))

(assert (= (and b!5478164 (is-Union!15358 (regTwo!31229 (reg!15687 r!7292)))) b!5479061))

(declare-fun b!5479062 () Bool)

(declare-fun e!3391156 () Bool)

(assert (=> b!5479062 (= e!3391156 tp_is_empty!39969)))

(declare-fun b!5479063 () Bool)

(declare-fun tp!1505772 () Bool)

(declare-fun tp!1505773 () Bool)

(assert (=> b!5479063 (= e!3391156 (and tp!1505772 tp!1505773))))

(declare-fun b!5479065 () Bool)

(declare-fun tp!1505775 () Bool)

(declare-fun tp!1505776 () Bool)

(assert (=> b!5479065 (= e!3391156 (and tp!1505775 tp!1505776))))

(assert (=> b!5478134 (= tp!1505583 e!3391156)))

(declare-fun b!5479064 () Bool)

(declare-fun tp!1505774 () Bool)

(assert (=> b!5479064 (= e!3391156 tp!1505774)))

(assert (= (and b!5478134 (is-ElementMatch!15358 (regOne!31229 (regOne!31229 r!7292)))) b!5479062))

(assert (= (and b!5478134 (is-Concat!24203 (regOne!31229 (regOne!31229 r!7292)))) b!5479063))

(assert (= (and b!5478134 (is-Star!15358 (regOne!31229 (regOne!31229 r!7292)))) b!5479064))

(assert (= (and b!5478134 (is-Union!15358 (regOne!31229 (regOne!31229 r!7292)))) b!5479065))

(declare-fun b!5479066 () Bool)

(declare-fun e!3391157 () Bool)

(assert (=> b!5479066 (= e!3391157 tp_is_empty!39969)))

(declare-fun b!5479067 () Bool)

(declare-fun tp!1505777 () Bool)

(declare-fun tp!1505778 () Bool)

(assert (=> b!5479067 (= e!3391157 (and tp!1505777 tp!1505778))))

(declare-fun b!5479069 () Bool)

(declare-fun tp!1505780 () Bool)

(declare-fun tp!1505781 () Bool)

(assert (=> b!5479069 (= e!3391157 (and tp!1505780 tp!1505781))))

(assert (=> b!5478134 (= tp!1505584 e!3391157)))

(declare-fun b!5479068 () Bool)

(declare-fun tp!1505779 () Bool)

(assert (=> b!5479068 (= e!3391157 tp!1505779)))

(assert (= (and b!5478134 (is-ElementMatch!15358 (regTwo!31229 (regOne!31229 r!7292)))) b!5479066))

(assert (= (and b!5478134 (is-Concat!24203 (regTwo!31229 (regOne!31229 r!7292)))) b!5479067))

(assert (= (and b!5478134 (is-Star!15358 (regTwo!31229 (regOne!31229 r!7292)))) b!5479068))

(assert (= (and b!5478134 (is-Union!15358 (regTwo!31229 (regOne!31229 r!7292)))) b!5479069))

(declare-fun b!5479070 () Bool)

(declare-fun e!3391158 () Bool)

(assert (=> b!5479070 (= e!3391158 tp_is_empty!39969)))

(declare-fun b!5479071 () Bool)

(declare-fun tp!1505782 () Bool)

(declare-fun tp!1505783 () Bool)

(assert (=> b!5479071 (= e!3391158 (and tp!1505782 tp!1505783))))

(declare-fun b!5479073 () Bool)

(declare-fun tp!1505785 () Bool)

(declare-fun tp!1505786 () Bool)

(assert (=> b!5479073 (= e!3391158 (and tp!1505785 tp!1505786))))

(assert (=> b!5478162 (= tp!1505614 e!3391158)))

(declare-fun b!5479072 () Bool)

(declare-fun tp!1505784 () Bool)

(assert (=> b!5479072 (= e!3391158 tp!1505784)))

(assert (= (and b!5478162 (is-ElementMatch!15358 (regOne!31228 (reg!15687 r!7292)))) b!5479070))

(assert (= (and b!5478162 (is-Concat!24203 (regOne!31228 (reg!15687 r!7292)))) b!5479071))

(assert (= (and b!5478162 (is-Star!15358 (regOne!31228 (reg!15687 r!7292)))) b!5479072))

(assert (= (and b!5478162 (is-Union!15358 (regOne!31228 (reg!15687 r!7292)))) b!5479073))

(declare-fun b!5479074 () Bool)

(declare-fun e!3391159 () Bool)

(assert (=> b!5479074 (= e!3391159 tp_is_empty!39969)))

(declare-fun b!5479075 () Bool)

(declare-fun tp!1505787 () Bool)

(declare-fun tp!1505788 () Bool)

(assert (=> b!5479075 (= e!3391159 (and tp!1505787 tp!1505788))))

(declare-fun b!5479077 () Bool)

(declare-fun tp!1505790 () Bool)

(declare-fun tp!1505791 () Bool)

(assert (=> b!5479077 (= e!3391159 (and tp!1505790 tp!1505791))))

(assert (=> b!5478162 (= tp!1505615 e!3391159)))

(declare-fun b!5479076 () Bool)

(declare-fun tp!1505789 () Bool)

(assert (=> b!5479076 (= e!3391159 tp!1505789)))

(assert (= (and b!5478162 (is-ElementMatch!15358 (regTwo!31228 (reg!15687 r!7292)))) b!5479074))

(assert (= (and b!5478162 (is-Concat!24203 (regTwo!31228 (reg!15687 r!7292)))) b!5479075))

(assert (= (and b!5478162 (is-Star!15358 (regTwo!31228 (reg!15687 r!7292)))) b!5479076))

(assert (= (and b!5478162 (is-Union!15358 (regTwo!31228 (reg!15687 r!7292)))) b!5479077))

(declare-fun b!5479078 () Bool)

(declare-fun e!3391160 () Bool)

(assert (=> b!5479078 (= e!3391160 tp_is_empty!39969)))

(declare-fun b!5479079 () Bool)

(declare-fun tp!1505792 () Bool)

(declare-fun tp!1505793 () Bool)

(assert (=> b!5479079 (= e!3391160 (and tp!1505792 tp!1505793))))

(declare-fun b!5479081 () Bool)

(declare-fun tp!1505795 () Bool)

(declare-fun tp!1505796 () Bool)

(assert (=> b!5479081 (= e!3391160 (and tp!1505795 tp!1505796))))

(assert (=> b!5478132 (= tp!1505580 e!3391160)))

(declare-fun b!5479080 () Bool)

(declare-fun tp!1505794 () Bool)

(assert (=> b!5479080 (= e!3391160 tp!1505794)))

(assert (= (and b!5478132 (is-ElementMatch!15358 (regOne!31228 (regOne!31229 r!7292)))) b!5479078))

(assert (= (and b!5478132 (is-Concat!24203 (regOne!31228 (regOne!31229 r!7292)))) b!5479079))

(assert (= (and b!5478132 (is-Star!15358 (regOne!31228 (regOne!31229 r!7292)))) b!5479080))

(assert (= (and b!5478132 (is-Union!15358 (regOne!31228 (regOne!31229 r!7292)))) b!5479081))

(declare-fun b!5479082 () Bool)

(declare-fun e!3391161 () Bool)

(assert (=> b!5479082 (= e!3391161 tp_is_empty!39969)))

(declare-fun b!5479083 () Bool)

(declare-fun tp!1505797 () Bool)

(declare-fun tp!1505798 () Bool)

(assert (=> b!5479083 (= e!3391161 (and tp!1505797 tp!1505798))))

(declare-fun b!5479085 () Bool)

(declare-fun tp!1505800 () Bool)

(declare-fun tp!1505801 () Bool)

(assert (=> b!5479085 (= e!3391161 (and tp!1505800 tp!1505801))))

(assert (=> b!5478132 (= tp!1505581 e!3391161)))

(declare-fun b!5479084 () Bool)

(declare-fun tp!1505799 () Bool)

(assert (=> b!5479084 (= e!3391161 tp!1505799)))

(assert (= (and b!5478132 (is-ElementMatch!15358 (regTwo!31228 (regOne!31229 r!7292)))) b!5479082))

(assert (= (and b!5478132 (is-Concat!24203 (regTwo!31228 (regOne!31229 r!7292)))) b!5479083))

(assert (= (and b!5478132 (is-Star!15358 (regTwo!31228 (regOne!31229 r!7292)))) b!5479084))

(assert (= (and b!5478132 (is-Union!15358 (regTwo!31228 (regOne!31229 r!7292)))) b!5479085))

(declare-fun b!5479086 () Bool)

(declare-fun e!3391162 () Bool)

(assert (=> b!5479086 (= e!3391162 tp_is_empty!39969)))

(declare-fun b!5479087 () Bool)

(declare-fun tp!1505802 () Bool)

(declare-fun tp!1505803 () Bool)

(assert (=> b!5479087 (= e!3391162 (and tp!1505802 tp!1505803))))

(declare-fun b!5479089 () Bool)

(declare-fun tp!1505805 () Bool)

(declare-fun tp!1505806 () Bool)

(assert (=> b!5479089 (= e!3391162 (and tp!1505805 tp!1505806))))

(assert (=> b!5478152 (= tp!1505606 e!3391162)))

(declare-fun b!5479088 () Bool)

(declare-fun tp!1505804 () Bool)

(assert (=> b!5479088 (= e!3391162 tp!1505804)))

(assert (= (and b!5478152 (is-ElementMatch!15358 (h!68698 (exprs!5242 setElem!35998)))) b!5479086))

(assert (= (and b!5478152 (is-Concat!24203 (h!68698 (exprs!5242 setElem!35998)))) b!5479087))

(assert (= (and b!5478152 (is-Star!15358 (h!68698 (exprs!5242 setElem!35998)))) b!5479088))

(assert (= (and b!5478152 (is-Union!15358 (h!68698 (exprs!5242 setElem!35998)))) b!5479089))

(declare-fun b!5479090 () Bool)

(declare-fun e!3391163 () Bool)

(declare-fun tp!1505807 () Bool)

(declare-fun tp!1505808 () Bool)

(assert (=> b!5479090 (= e!3391163 (and tp!1505807 tp!1505808))))

(assert (=> b!5478152 (= tp!1505607 e!3391163)))

(assert (= (and b!5478152 (is-Cons!62250 (t!375603 (exprs!5242 setElem!35998)))) b!5479090))

(declare-fun b!5479091 () Bool)

(declare-fun e!3391164 () Bool)

(assert (=> b!5479091 (= e!3391164 tp_is_empty!39969)))

(declare-fun b!5479092 () Bool)

(declare-fun tp!1505809 () Bool)

(declare-fun tp!1505810 () Bool)

(assert (=> b!5479092 (= e!3391164 (and tp!1505809 tp!1505810))))

(declare-fun b!5479094 () Bool)

(declare-fun tp!1505812 () Bool)

(declare-fun tp!1505813 () Bool)

(assert (=> b!5479094 (= e!3391164 (and tp!1505812 tp!1505813))))

(assert (=> b!5478163 (= tp!1505616 e!3391164)))

(declare-fun b!5479093 () Bool)

(declare-fun tp!1505811 () Bool)

(assert (=> b!5479093 (= e!3391164 tp!1505811)))

(assert (= (and b!5478163 (is-ElementMatch!15358 (reg!15687 (reg!15687 r!7292)))) b!5479091))

(assert (= (and b!5478163 (is-Concat!24203 (reg!15687 (reg!15687 r!7292)))) b!5479092))

(assert (= (and b!5478163 (is-Star!15358 (reg!15687 (reg!15687 r!7292)))) b!5479093))

(assert (= (and b!5478163 (is-Union!15358 (reg!15687 (reg!15687 r!7292)))) b!5479094))

(declare-fun b!5479095 () Bool)

(declare-fun e!3391165 () Bool)

(assert (=> b!5479095 (= e!3391165 tp_is_empty!39969)))

(declare-fun b!5479096 () Bool)

(declare-fun tp!1505814 () Bool)

(declare-fun tp!1505815 () Bool)

(assert (=> b!5479096 (= e!3391165 (and tp!1505814 tp!1505815))))

(declare-fun b!5479098 () Bool)

(declare-fun tp!1505817 () Bool)

(declare-fun tp!1505818 () Bool)

(assert (=> b!5479098 (= e!3391165 (and tp!1505817 tp!1505818))))

(assert (=> b!5478133 (= tp!1505582 e!3391165)))

(declare-fun b!5479097 () Bool)

(declare-fun tp!1505816 () Bool)

(assert (=> b!5479097 (= e!3391165 tp!1505816)))

(assert (= (and b!5478133 (is-ElementMatch!15358 (reg!15687 (regOne!31229 r!7292)))) b!5479095))

(assert (= (and b!5478133 (is-Concat!24203 (reg!15687 (regOne!31229 r!7292)))) b!5479096))

(assert (= (and b!5478133 (is-Star!15358 (reg!15687 (regOne!31229 r!7292)))) b!5479097))

(assert (= (and b!5478133 (is-Union!15358 (reg!15687 (regOne!31229 r!7292)))) b!5479098))

(declare-fun b!5479099 () Bool)

(declare-fun e!3391166 () Bool)

(assert (=> b!5479099 (= e!3391166 tp_is_empty!39969)))

(declare-fun b!5479100 () Bool)

(declare-fun tp!1505819 () Bool)

(declare-fun tp!1505820 () Bool)

(assert (=> b!5479100 (= e!3391166 (and tp!1505819 tp!1505820))))

(declare-fun b!5479102 () Bool)

(declare-fun tp!1505822 () Bool)

(declare-fun tp!1505823 () Bool)

(assert (=> b!5479102 (= e!3391166 (and tp!1505822 tp!1505823))))

(assert (=> b!5478150 (= tp!1505603 e!3391166)))

(declare-fun b!5479101 () Bool)

(declare-fun tp!1505821 () Bool)

(assert (=> b!5479101 (= e!3391166 tp!1505821)))

(assert (= (and b!5478150 (is-ElementMatch!15358 (reg!15687 (regTwo!31228 r!7292)))) b!5479099))

(assert (= (and b!5478150 (is-Concat!24203 (reg!15687 (regTwo!31228 r!7292)))) b!5479100))

(assert (= (and b!5478150 (is-Star!15358 (reg!15687 (regTwo!31228 r!7292)))) b!5479101))

(assert (= (and b!5478150 (is-Union!15358 (reg!15687 (regTwo!31228 r!7292)))) b!5479102))

(declare-fun condSetEmpty!36014 () Bool)

(assert (=> setNonEmpty!36004 (= condSetEmpty!36014 (= setRest!36004 (as set.empty (Set Context!9484))))))

(declare-fun setRes!36014 () Bool)

(assert (=> setNonEmpty!36004 (= tp!1505623 setRes!36014)))

(declare-fun setIsEmpty!36014 () Bool)

(assert (=> setIsEmpty!36014 setRes!36014))

(declare-fun e!3391167 () Bool)

(declare-fun setElem!36014 () Context!9484)

(declare-fun tp!1505824 () Bool)

(declare-fun setNonEmpty!36014 () Bool)

(assert (=> setNonEmpty!36014 (= setRes!36014 (and tp!1505824 (inv!81643 setElem!36014) e!3391167))))

(declare-fun setRest!36014 () (Set Context!9484))

(assert (=> setNonEmpty!36014 (= setRest!36004 (set.union (set.insert setElem!36014 (as set.empty (Set Context!9484))) setRest!36014))))

(declare-fun b!5479103 () Bool)

(declare-fun tp!1505825 () Bool)

(assert (=> b!5479103 (= e!3391167 tp!1505825)))

(assert (= (and setNonEmpty!36004 condSetEmpty!36014) setIsEmpty!36014))

(assert (= (and setNonEmpty!36004 (not condSetEmpty!36014)) setNonEmpty!36014))

(assert (= setNonEmpty!36014 b!5479103))

(declare-fun m!6495132 () Bool)

(assert (=> setNonEmpty!36014 m!6495132))

(declare-fun b!5479104 () Bool)

(declare-fun e!3391168 () Bool)

(assert (=> b!5479104 (= e!3391168 tp_is_empty!39969)))

(declare-fun b!5479105 () Bool)

(declare-fun tp!1505826 () Bool)

(declare-fun tp!1505827 () Bool)

(assert (=> b!5479105 (= e!3391168 (and tp!1505826 tp!1505827))))

(declare-fun b!5479107 () Bool)

(declare-fun tp!1505829 () Bool)

(declare-fun tp!1505830 () Bool)

(assert (=> b!5479107 (= e!3391168 (and tp!1505829 tp!1505830))))

(assert (=> b!5478149 (= tp!1505601 e!3391168)))

(declare-fun b!5479106 () Bool)

(declare-fun tp!1505828 () Bool)

(assert (=> b!5479106 (= e!3391168 tp!1505828)))

(assert (= (and b!5478149 (is-ElementMatch!15358 (regOne!31228 (regTwo!31228 r!7292)))) b!5479104))

(assert (= (and b!5478149 (is-Concat!24203 (regOne!31228 (regTwo!31228 r!7292)))) b!5479105))

(assert (= (and b!5478149 (is-Star!15358 (regOne!31228 (regTwo!31228 r!7292)))) b!5479106))

(assert (= (and b!5478149 (is-Union!15358 (regOne!31228 (regTwo!31228 r!7292)))) b!5479107))

(declare-fun b!5479108 () Bool)

(declare-fun e!3391169 () Bool)

(assert (=> b!5479108 (= e!3391169 tp_is_empty!39969)))

(declare-fun b!5479109 () Bool)

(declare-fun tp!1505831 () Bool)

(declare-fun tp!1505832 () Bool)

(assert (=> b!5479109 (= e!3391169 (and tp!1505831 tp!1505832))))

(declare-fun b!5479111 () Bool)

(declare-fun tp!1505834 () Bool)

(declare-fun tp!1505835 () Bool)

(assert (=> b!5479111 (= e!3391169 (and tp!1505834 tp!1505835))))

(assert (=> b!5478149 (= tp!1505602 e!3391169)))

(declare-fun b!5479110 () Bool)

(declare-fun tp!1505833 () Bool)

(assert (=> b!5479110 (= e!3391169 tp!1505833)))

(assert (= (and b!5478149 (is-ElementMatch!15358 (regTwo!31228 (regTwo!31228 r!7292)))) b!5479108))

(assert (= (and b!5478149 (is-Concat!24203 (regTwo!31228 (regTwo!31228 r!7292)))) b!5479109))

(assert (= (and b!5478149 (is-Star!15358 (regTwo!31228 (regTwo!31228 r!7292)))) b!5479110))

(assert (= (and b!5478149 (is-Union!15358 (regTwo!31228 (regTwo!31228 r!7292)))) b!5479111))

(declare-fun b!5479112 () Bool)

(declare-fun e!3391170 () Bool)

(assert (=> b!5479112 (= e!3391170 tp_is_empty!39969)))

(declare-fun b!5479113 () Bool)

(declare-fun tp!1505836 () Bool)

(declare-fun tp!1505837 () Bool)

(assert (=> b!5479113 (= e!3391170 (and tp!1505836 tp!1505837))))

(declare-fun b!5479115 () Bool)

(declare-fun tp!1505839 () Bool)

(declare-fun tp!1505840 () Bool)

(assert (=> b!5479115 (= e!3391170 (and tp!1505839 tp!1505840))))

(assert (=> b!5478151 (= tp!1505604 e!3391170)))

(declare-fun b!5479114 () Bool)

(declare-fun tp!1505838 () Bool)

(assert (=> b!5479114 (= e!3391170 tp!1505838)))

(assert (= (and b!5478151 (is-ElementMatch!15358 (regOne!31229 (regTwo!31228 r!7292)))) b!5479112))

(assert (= (and b!5478151 (is-Concat!24203 (regOne!31229 (regTwo!31228 r!7292)))) b!5479113))

(assert (= (and b!5478151 (is-Star!15358 (regOne!31229 (regTwo!31228 r!7292)))) b!5479114))

(assert (= (and b!5478151 (is-Union!15358 (regOne!31229 (regTwo!31228 r!7292)))) b!5479115))

(declare-fun b!5479116 () Bool)

(declare-fun e!3391171 () Bool)

(assert (=> b!5479116 (= e!3391171 tp_is_empty!39969)))

(declare-fun b!5479117 () Bool)

(declare-fun tp!1505841 () Bool)

(declare-fun tp!1505842 () Bool)

(assert (=> b!5479117 (= e!3391171 (and tp!1505841 tp!1505842))))

(declare-fun b!5479119 () Bool)

(declare-fun tp!1505844 () Bool)

(declare-fun tp!1505845 () Bool)

(assert (=> b!5479119 (= e!3391171 (and tp!1505844 tp!1505845))))

(assert (=> b!5478151 (= tp!1505605 e!3391171)))

(declare-fun b!5479118 () Bool)

(declare-fun tp!1505843 () Bool)

(assert (=> b!5479118 (= e!3391171 tp!1505843)))

(assert (= (and b!5478151 (is-ElementMatch!15358 (regTwo!31229 (regTwo!31228 r!7292)))) b!5479116))

(assert (= (and b!5478151 (is-Concat!24203 (regTwo!31229 (regTwo!31228 r!7292)))) b!5479117))

(assert (= (and b!5478151 (is-Star!15358 (regTwo!31229 (regTwo!31228 r!7292)))) b!5479118))

(assert (= (and b!5478151 (is-Union!15358 (regTwo!31229 (regTwo!31228 r!7292)))) b!5479119))

(declare-fun b!5479120 () Bool)

(declare-fun e!3391172 () Bool)

(declare-fun tp!1505846 () Bool)

(declare-fun tp!1505847 () Bool)

(assert (=> b!5479120 (= e!3391172 (and tp!1505846 tp!1505847))))

(assert (=> b!5478169 (= tp!1505624 e!3391172)))

(assert (= (and b!5478169 (is-Cons!62250 (exprs!5242 setElem!36004))) b!5479120))

(declare-fun b!5479121 () Bool)

(declare-fun e!3391173 () Bool)

(assert (=> b!5479121 (= e!3391173 tp_is_empty!39969)))

(declare-fun b!5479122 () Bool)

(declare-fun tp!1505848 () Bool)

(declare-fun tp!1505849 () Bool)

(assert (=> b!5479122 (= e!3391173 (and tp!1505848 tp!1505849))))

(declare-fun b!5479124 () Bool)

(declare-fun tp!1505851 () Bool)

(declare-fun tp!1505852 () Bool)

(assert (=> b!5479124 (= e!3391173 (and tp!1505851 tp!1505852))))

(assert (=> b!5478175 (= tp!1505628 e!3391173)))

(declare-fun b!5479123 () Bool)

(declare-fun tp!1505850 () Bool)

(assert (=> b!5479123 (= e!3391173 tp!1505850)))

(assert (= (and b!5478175 (is-ElementMatch!15358 (h!68698 (exprs!5242 (h!68699 zl!343))))) b!5479121))

(assert (= (and b!5478175 (is-Concat!24203 (h!68698 (exprs!5242 (h!68699 zl!343))))) b!5479122))

(assert (= (and b!5478175 (is-Star!15358 (h!68698 (exprs!5242 (h!68699 zl!343))))) b!5479123))

(assert (= (and b!5478175 (is-Union!15358 (h!68698 (exprs!5242 (h!68699 zl!343))))) b!5479124))

(declare-fun b!5479125 () Bool)

(declare-fun e!3391174 () Bool)

(declare-fun tp!1505853 () Bool)

(declare-fun tp!1505854 () Bool)

(assert (=> b!5479125 (= e!3391174 (and tp!1505853 tp!1505854))))

(assert (=> b!5478175 (= tp!1505629 e!3391174)))

(assert (= (and b!5478175 (is-Cons!62250 (t!375603 (exprs!5242 (h!68699 zl!343))))) b!5479125))

(declare-fun b!5479126 () Bool)

(declare-fun e!3391175 () Bool)

(declare-fun tp!1505855 () Bool)

(assert (=> b!5479126 (= e!3391175 (and tp_is_empty!39969 tp!1505855))))

(assert (=> b!5478174 (= tp!1505627 e!3391175)))

(assert (= (and b!5478174 (is-Cons!62249 (t!375602 (t!375602 s!2326)))) b!5479126))

(declare-fun b!5479127 () Bool)

(declare-fun e!3391176 () Bool)

(assert (=> b!5479127 (= e!3391176 tp_is_empty!39969)))

(declare-fun b!5479128 () Bool)

(declare-fun tp!1505856 () Bool)

(declare-fun tp!1505857 () Bool)

(assert (=> b!5479128 (= e!3391176 (and tp!1505856 tp!1505857))))

(declare-fun b!5479130 () Bool)

(declare-fun tp!1505859 () Bool)

(declare-fun tp!1505860 () Bool)

(assert (=> b!5479130 (= e!3391176 (and tp!1505859 tp!1505860))))

(assert (=> b!5478143 (= tp!1505594 e!3391176)))

(declare-fun b!5479129 () Bool)

(declare-fun tp!1505858 () Bool)

(assert (=> b!5479129 (= e!3391176 tp!1505858)))

(assert (= (and b!5478143 (is-ElementMatch!15358 (h!68698 (exprs!5242 c!332)))) b!5479127))

(assert (= (and b!5478143 (is-Concat!24203 (h!68698 (exprs!5242 c!332)))) b!5479128))

(assert (= (and b!5478143 (is-Star!15358 (h!68698 (exprs!5242 c!332)))) b!5479129))

(assert (= (and b!5478143 (is-Union!15358 (h!68698 (exprs!5242 c!332)))) b!5479130))

(declare-fun b!5479131 () Bool)

(declare-fun e!3391177 () Bool)

(declare-fun tp!1505861 () Bool)

(declare-fun tp!1505862 () Bool)

(assert (=> b!5479131 (= e!3391177 (and tp!1505861 tp!1505862))))

(assert (=> b!5478143 (= tp!1505595 e!3391177)))

(assert (= (and b!5478143 (is-Cons!62250 (t!375603 (exprs!5242 c!332)))) b!5479131))

(declare-fun b_lambda!208187 () Bool)

(assert (= b_lambda!208167 (or b!5477507 b_lambda!208187)))

(assert (=> d!1740457 d!1740271))

(declare-fun b_lambda!208189 () Bool)

(assert (= b_lambda!208163 (or d!1740211 b_lambda!208189)))

(declare-fun bs!1266183 () Bool)

(declare-fun d!1740647 () Bool)

(assert (= bs!1266183 (and d!1740647 d!1740211)))

(assert (=> bs!1266183 (= (dynLambda!24435 lambda!292145 (h!68698 lt!2237590)) (validRegex!7094 (h!68698 lt!2237590)))))

(declare-fun m!6495134 () Bool)

(assert (=> bs!1266183 m!6495134))

(assert (=> b!5478467 d!1740647))

(declare-fun b_lambda!208191 () Bool)

(assert (= b_lambda!208181 (or b!5477507 b_lambda!208191)))

(assert (=> d!1740577 d!1740273))

(declare-fun b_lambda!208193 () Bool)

(assert (= b_lambda!208175 (or d!1740191 b_lambda!208193)))

(declare-fun bs!1266184 () Bool)

(declare-fun d!1740649 () Bool)

(assert (= bs!1266184 (and d!1740649 d!1740191)))

(assert (=> bs!1266184 (= (dynLambda!24435 lambda!292130 (h!68698 (exprs!5242 (h!68699 zl!343)))) (validRegex!7094 (h!68698 (exprs!5242 (h!68699 zl!343)))))))

(declare-fun m!6495136 () Bool)

(assert (=> bs!1266184 m!6495136))

(assert (=> b!5478651 d!1740649))

(declare-fun b_lambda!208195 () Bool)

(assert (= b_lambda!208169 (or d!1740189 b_lambda!208195)))

(declare-fun bs!1266185 () Bool)

(declare-fun d!1740651 () Bool)

(assert (= bs!1266185 (and d!1740651 d!1740189)))

(assert (=> bs!1266185 (= (dynLambda!24435 lambda!292129 (h!68698 (exprs!5242 c!332))) (validRegex!7094 (h!68698 (exprs!5242 c!332))))))

(assert (=> bs!1266185 m!6494254))

(assert (=> b!5478613 d!1740651))

(declare-fun b_lambda!208197 () Bool)

(assert (= b_lambda!208173 (or d!1740181 b_lambda!208197)))

(declare-fun bs!1266186 () Bool)

(declare-fun d!1740653 () Bool)

(assert (= bs!1266186 (and d!1740653 d!1740181)))

(assert (=> bs!1266186 (= (dynLambda!24435 lambda!292126 (h!68698 (exprs!5242 (h!68699 zl!343)))) (validRegex!7094 (h!68698 (exprs!5242 (h!68699 zl!343)))))))

(assert (=> bs!1266186 m!6495136))

(assert (=> b!5478629 d!1740653))

(declare-fun b_lambda!208199 () Bool)

(assert (= b_lambda!208177 (or d!1740261 b_lambda!208199)))

(declare-fun bs!1266187 () Bool)

(declare-fun d!1740655 () Bool)

(assert (= bs!1266187 (and d!1740655 d!1740261)))

(assert (=> bs!1266187 (= (dynLambda!24435 lambda!292164 (h!68698 (exprs!5242 setElem!35998))) (validRegex!7094 (h!68698 (exprs!5242 setElem!35998))))))

(declare-fun m!6495138 () Bool)

(assert (=> bs!1266187 m!6495138))

(assert (=> b!5478792 d!1740655))

(declare-fun b_lambda!208201 () Bool)

(assert (= b_lambda!208185 (or b!5477487 b_lambda!208201)))

(declare-fun bs!1266188 () Bool)

(declare-fun d!1740657 () Bool)

(assert (= bs!1266188 (and d!1740657 b!5477487)))

(assert (=> bs!1266188 (= (dynLambda!24435 lambda!292088 (h!68698 (t!375603 (exprs!5242 c!332)))) (validRegex!7094 (h!68698 (t!375603 (exprs!5242 c!332)))))))

(declare-fun m!6495140 () Bool)

(assert (=> bs!1266188 m!6495140))

(assert (=> b!5479004 d!1740657))

(declare-fun b_lambda!208203 () Bool)

(assert (= b_lambda!208179 (or b!5477507 b_lambda!208203)))

(assert (=> d!1740561 d!1740269))

(declare-fun b_lambda!208205 () Bool)

(assert (= b_lambda!208171 (or b!5477507 b_lambda!208205)))

(assert (=> d!1740465 d!1740275))

(declare-fun b_lambda!208207 () Bool)

(assert (= b_lambda!208165 (or b!5477487 b_lambda!208207)))

(declare-fun bs!1266189 () Bool)

(declare-fun d!1740659 () Bool)

(assert (= bs!1266189 (and d!1740659 b!5477487)))

(assert (=> bs!1266189 (= (dynLambda!24435 lambda!292088 (h!68698 (t!375603 lt!2237465))) (validRegex!7094 (h!68698 (t!375603 lt!2237465))))))

(declare-fun m!6495142 () Bool)

(assert (=> bs!1266189 m!6495142))

(assert (=> b!5478589 d!1740659))

(declare-fun b_lambda!208209 () Bool)

(assert (= b_lambda!208183 (or d!1740209 b_lambda!208209)))

(declare-fun bs!1266190 () Bool)

(declare-fun d!1740661 () Bool)

(assert (= bs!1266190 (and d!1740661 d!1740209)))

(assert (=> bs!1266190 (= (dynLambda!24435 lambda!292142 (h!68698 (unfocusZipperList!800 zl!343))) (validRegex!7094 (h!68698 (unfocusZipperList!800 zl!343))))))

(declare-fun m!6495144 () Bool)

(assert (=> bs!1266190 m!6495144))

(assert (=> b!5478974 d!1740661))

(push 1)

(assert (not bm!404330))

(assert (not b!5479124))

(assert (not b!5478720))

(assert (not b!5478964))

(assert (not d!1740601))

(assert (not b!5478624))

(assert (not b!5478601))

(assert (not bm!404253))

(assert (not b!5479016))

(assert (not b!5479024))

(assert (not b!5478491))

(assert (not b!5478872))

(assert (not b!5479063))

(assert (not b!5478514))

(assert (not d!1740493))

(assert (not setNonEmpty!36012))

(assert (not bm!404339))

(assert (not b!5479067))

(assert (not b!5478494))

(assert (not bm!404257))

(assert (not d!1740577))

(assert (not bm!404235))

(assert (not bm!404345))

(assert (not b!5479033))

(assert (not b!5478641))

(assert (not d!1740537))

(assert (not d!1740623))

(assert (not b!5478523))

(assert (not b!5478564))

(assert (not d!1740391))

(assert (not b!5478739))

(assert (not bm!404303))

(assert (not b!5479059))

(assert (not setNonEmpty!36011))

(assert (not b_lambda!208133))

(assert (not b!5478869))

(assert (not bs!1266186))

(assert (not b!5478662))

(assert (not b!5478473))

(assert (not b!5479022))

(assert (not b!5478937))

(assert (not b!5479114))

(assert (not b!5479083))

(assert (not b!5478487))

(assert (not b!5479039))

(assert (not d!1740581))

(assert (not bm!404246))

(assert (not bm!404242))

(assert (not b_lambda!208203))

(assert (not d!1740467))

(assert (not b!5478492))

(assert (not d!1740443))

(assert (not b!5479119))

(assert (not b!5478910))

(assert (not b!5478526))

(assert (not b!5479126))

(assert (not b!5479077))

(assert (not b!5479073))

(assert (not b!5479047))

(assert (not b!5478798))

(assert (not d!1740605))

(assert (not b!5478536))

(assert (not b_lambda!208209))

(assert (not b!5479043))

(assert (not b!5478986))

(assert (not b!5479092))

(assert (not bm!404233))

(assert (not bm!404278))

(assert (not d!1740463))

(assert (not d!1740441))

(assert tp_is_empty!39969)

(assert (not b!5478593))

(assert (not b!5478513))

(assert (not d!1740465))

(assert (not b!5478575))

(assert (not bm!404336))

(assert (not b!5478787))

(assert (not b!5479032))

(assert (not d!1740573))

(assert (not bm!404283))

(assert (not d!1740393))

(assert (not b!5479120))

(assert (not bm!404263))

(assert (not b!5478508))

(assert (not bm!404240))

(assert (not b!5478493))

(assert (not b!5478658))

(assert (not d!1740549))

(assert (not b!5479102))

(assert (not b!5478908))

(assert (not b_lambda!208189))

(assert (not d!1740389))

(assert (not d!1740517))

(assert (not bs!1266183))

(assert (not bm!404229))

(assert (not b!5478689))

(assert (not b!5478710))

(assert (not b!5478818))

(assert (not d!1740637))

(assert (not bm!404268))

(assert (not b!5478590))

(assert (not b!5479100))

(assert (not bm!404318))

(assert (not d!1740395))

(assert (not b!5479094))

(assert (not b!5478703))

(assert (not b!5479029))

(assert (not bm!404265))

(assert (not b!5478935))

(assert (not d!1740431))

(assert (not b_lambda!208207))

(assert (not bm!404274))

(assert (not b!5479090))

(assert (not b!5478652))

(assert (not d!1740401))

(assert (not b!5479097))

(assert (not b!5478744))

(assert (not b!5478934))

(assert (not b!5479060))

(assert (not b!5478555))

(assert (not b!5479123))

(assert (not bm!404227))

(assert (not bm!404286))

(assert (not b!5478614))

(assert (not d!1740593))

(assert (not b!5478567))

(assert (not b!5478932))

(assert (not b!5478863))

(assert (not b!5479000))

(assert (not b!5478994))

(assert (not b!5478562))

(assert (not d!1740631))

(assert (not d!1740487))

(assert (not b!5479115))

(assert (not b!5479130))

(assert (not b!5478718))

(assert (not b!5478497))

(assert (not b!5479057))

(assert (not d!1740579))

(assert (not d!1740595))

(assert (not b!5478518))

(assert (not b!5478817))

(assert (not b!5479103))

(assert (not b!5479048))

(assert (not b!5478793))

(assert (not b!5478488))

(assert (not d!1740561))

(assert (not bm!404254))

(assert (not b!5478586))

(assert (not b!5478587))

(assert (not b!5479040))

(assert (not bm!404341))

(assert (not bm!404326))

(assert (not b!5479021))

(assert (not d!1740409))

(assert (not bm!404320))

(assert (not b!5479106))

(assert (not b_lambda!208193))

(assert (not b!5478917))

(assert (not b!5478539))

(assert (not bm!404332))

(assert (not b!5478683))

(assert (not bm!404270))

(assert (not b!5478864))

(assert (not b!5478503))

(assert (not b!5479018))

(assert (not d!1740519))

(assert (not b!5478821))

(assert (not bm!404322))

(assert (not bm!404275))

(assert (not bm!404285))

(assert (not b!5478654))

(assert (not b!5479113))

(assert (not b!5478603))

(assert (not b!5479110))

(assert (not bm!404342))

(assert (not d!1740485))

(assert (not bm!404281))

(assert (not b!5479061))

(assert (not b_lambda!208195))

(assert (not b!5479051))

(assert (not b!5478969))

(assert (not b!5478852))

(assert (not b!5478490))

(assert (not bm!404344))

(assert (not bm!404287))

(assert (not b!5478659))

(assert (not b!5479026))

(assert (not b!5479107))

(assert (not d!1740633))

(assert (not b!5479122))

(assert (not b!5479052))

(assert (not d!1740543))

(assert (not b!5479013))

(assert (not b!5478509))

(assert (not b!5478912))

(assert (not b!5479084))

(assert (not b!5479087))

(assert (not b!5479055))

(assert (not bm!404223))

(assert (not bm!404309))

(assert (not b!5478842))

(assert (not d!1740541))

(assert (not d!1740565))

(assert (not b!5479085))

(assert (not b!5478734))

(assert (not bm!404302))

(assert (not b!5478873))

(assert (not bm!404239))

(assert (not bm!404261))

(assert (not b!5478991))

(assert (not b_lambda!208201))

(assert (not b!5478995))

(assert (not d!1740449))

(assert (not b!5478512))

(assert (not b!5479036))

(assert (not bm!404329))

(assert (not bm!404299))

(assert (not b!5478826))

(assert (not b!5479020))

(assert (not b!5478515))

(assert (not b_lambda!208131))

(assert (not d!1740553))

(assert (not bs!1266188))

(assert (not b!5479049))

(assert (not bm!404313))

(assert (not bs!1266190))

(assert (not b!5479028))

(assert (not b_lambda!208129))

(assert (not d!1740447))

(assert (not b!5478848))

(assert (not b!5478576))

(assert (not b!5478482))

(assert (not bs!1266185))

(assert (not b_lambda!208199))

(assert (not b!5478742))

(assert (not b!5478664))

(assert (not b_lambda!208187))

(assert (not b_lambda!208137))

(assert (not b!5479025))

(assert (not b!5478831))

(assert (not b!5478956))

(assert (not b!5479046))

(assert (not d!1740483))

(assert (not b!5478811))

(assert (not b!5478998))

(assert (not bm!404279))

(assert (not b!5478999))

(assert (not b!5479118))

(assert (not b!5478875))

(assert (not bm!404306))

(assert (not bs!1266187))

(assert (not b!5479008))

(assert (not b!5478549))

(assert (not b_lambda!208205))

(assert (not d!1740583))

(assert (not b!5479093))

(assert (not d!1740569))

(assert (not b!5479038))

(assert (not b!5478617))

(assert (not b!5479080))

(assert (not b!5479042))

(assert (not b!5478944))

(assert (not b!5479075))

(assert (not d!1740407))

(assert (not b!5478665))

(assert (not b_lambda!208197))

(assert (not d!1740557))

(assert (not bm!404267))

(assert (not d!1740481))

(assert (not b!5478997))

(assert (not bm!404272))

(assert (not d!1740597))

(assert (not d!1740645))

(assert (not b_lambda!208127))

(assert (not bm!404237))

(assert (not b!5478992))

(assert (not d!1740619))

(assert (not b!5478544))

(assert (not bm!404328))

(assert (not b!5479071))

(assert (not b!5479017))

(assert (not b!5478684))

(assert (not setNonEmpty!36010))

(assert (not d!1740445))

(assert (not bm!404248))

(assert (not b!5478745))

(assert (not b!5479069))

(assert (not bm!404314))

(assert (not b!5478834))

(assert (not d!1740403))

(assert (not b!5479109))

(assert (not b!5478668))

(assert (not b!5479044))

(assert (not b!5478823))

(assert (not b!5479065))

(assert (not b!5478877))

(assert (not b!5479001))

(assert (not b!5478686))

(assert (not b!5479081))

(assert (not b!5479053))

(assert (not b!5479096))

(assert (not b!5478542))

(assert (not b!5478862))

(assert (not bm!404338))

(assert (not b!5479009))

(assert (not b!5478855))

(assert (not b!5479056))

(assert (not b!5479012))

(assert (not b!5479105))

(assert (not d!1740531))

(assert (not b!5478667))

(assert (not setNonEmpty!36014))

(assert (not bm!404244))

(assert (not b!5478511))

(assert (not b!5478913))

(assert (not b!5479030))

(assert (not b!5478541))

(assert (not bm!404226))

(assert (not b!5478987))

(assert (not b!5478824))

(assert (not b!5479076))

(assert (not b!5479101))

(assert (not bm!404251))

(assert (not bm!404249))

(assert (not b!5478911))

(assert (not b!5479064))

(assert (not bm!404334))

(assert (not b!5478775))

(assert (not d!1740571))

(assert (not b!5478468))

(assert (not b!5478888))

(assert (not d!1740457))

(assert (not bm!404289))

(assert (not b!5479014))

(assert (not bm!404238))

(assert (not b!5478874))

(assert (not b_lambda!208191))

(assert (not b!5479079))

(assert (not d!1740521))

(assert (not bm!404308))

(assert (not bm!404230))

(assert (not bm!404311))

(assert (not b!5478866))

(assert (not b!5478524))

(assert (not bs!1266189))

(assert (not b!5478563))

(assert (not b!5479098))

(assert (not setNonEmpty!36013))

(assert (not bm!404276))

(assert (not b!5478752))

(assert (not b!5478854))

(assert (not bm!404300))

(assert (not b!5479072))

(assert (not d!1740535))

(assert (not b!5479088))

(assert (not b!5478857))

(assert (not d!1740639))

(assert (not b!5478870))

(assert (not b!5479005))

(assert (not b_lambda!208135))

(assert (not b!5478661))

(assert (not d!1740555))

(assert (not b!5478929))

(assert (not b!5478907))

(assert (not b!5478816))

(assert (not bm!404316))

(assert (not b!5478849))

(assert (not b!5478975))

(assert (not b!5479089))

(assert (not b!5479125))

(assert (not bm!404340))

(assert (not bm!404346))

(assert (not b!5478914))

(assert (not d!1740551))

(assert (not bs!1266184))

(assert (not b!5479034))

(assert (not b!5479111))

(assert (not b!5479129))

(assert (not d!1740603))

(assert (not bm!404305))

(assert (not b!5478554))

(assert (not d!1740621))

(assert (not b!5478747))

(assert (not bm!404259))

(assert (not bm!404224))

(assert (not b!5479128))

(assert (not b!5478942))

(assert (not b!5478630))

(assert (not b!5478635))

(assert (not b!5478655))

(assert (not b!5478871))

(assert (not d!1740419))

(assert (not bm!404250))

(assert (not b!5478902))

(assert (not b!5479068))

(assert (not bm!404241))

(assert (not d!1740425))

(assert (not d!1740575))

(assert (not b!5478671))

(assert (not bm!404324))

(assert (not b!5479037))

(assert (not b!5478618))

(assert (not b!5479117))

(assert (not b!5479131))

(assert (not b!5478522))

(assert (not d!1740599))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

