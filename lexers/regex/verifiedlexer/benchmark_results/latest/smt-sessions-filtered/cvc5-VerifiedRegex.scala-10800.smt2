; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!554240 () Bool)

(assert start!554240)

(declare-fun b!5243550 () Bool)

(assert (=> b!5243550 true))

(assert (=> b!5243550 true))

(declare-fun lambda!263813 () Int)

(declare-fun lambda!263812 () Int)

(assert (=> b!5243550 (not (= lambda!263813 lambda!263812))))

(assert (=> b!5243550 true))

(assert (=> b!5243550 true))

(declare-fun b!5243551 () Bool)

(assert (=> b!5243551 true))

(declare-fun b!5243538 () Bool)

(declare-fun e!3262543 () Bool)

(declare-fun tp!1467931 () Bool)

(assert (=> b!5243538 (= e!3262543 tp!1467931)))

(declare-fun b!5243539 () Bool)

(declare-fun res!2225420 () Bool)

(declare-fun e!3262544 () Bool)

(assert (=> b!5243539 (=> res!2225420 e!3262544)))

(declare-datatypes ((C!29962 0))(
  ( (C!29963 (val!24683 Int)) )
))
(declare-datatypes ((Regex!14846 0))(
  ( (ElementMatch!14846 (c!906500 C!29962)) (Concat!23691 (regOne!30204 Regex!14846) (regTwo!30204 Regex!14846)) (EmptyExpr!14846) (Star!14846 (reg!15175 Regex!14846)) (EmptyLang!14846) (Union!14846 (regOne!30205 Regex!14846) (regTwo!30205 Regex!14846)) )
))
(declare-fun r!7292 () Regex!14846)

(declare-fun lt!2149378 () Regex!14846)

(declare-datatypes ((List!60837 0))(
  ( (Nil!60713) (Cons!60713 (h!67161 Regex!14846) (t!374018 List!60837)) )
))
(declare-datatypes ((Context!8460 0))(
  ( (Context!8461 (exprs!4730 List!60837)) )
))
(declare-datatypes ((List!60838 0))(
  ( (Nil!60714) (Cons!60714 (h!67162 Context!8460) (t!374019 List!60838)) )
))
(declare-fun zl!343 () List!60838)

(assert (=> b!5243539 (= res!2225420 (or (not (= lt!2149378 r!7292)) (not (= (exprs!4730 (h!67162 zl!343)) (Cons!60713 (regOne!30204 r!7292) (t!374018 (exprs!4730 (h!67162 zl!343))))))))))

(declare-fun b!5243540 () Bool)

(declare-fun res!2225415 () Bool)

(declare-fun e!3262530 () Bool)

(assert (=> b!5243540 (=> res!2225415 e!3262530)))

(declare-fun isEmpty!32649 (List!60838) Bool)

(assert (=> b!5243540 (= res!2225415 (not (isEmpty!32649 (t!374019 zl!343))))))

(declare-fun b!5243541 () Bool)

(declare-fun res!2225399 () Bool)

(assert (=> b!5243541 (=> res!2225399 e!3262530)))

(declare-fun generalisedUnion!775 (List!60837) Regex!14846)

(declare-fun unfocusZipperList!288 (List!60838) List!60837)

(assert (=> b!5243541 (= res!2225399 (not (= r!7292 (generalisedUnion!775 (unfocusZipperList!288 zl!343)))))))

(declare-fun setRes!33452 () Bool)

(declare-fun tp!1467924 () Bool)

(declare-fun e!3262541 () Bool)

(declare-fun setNonEmpty!33452 () Bool)

(declare-fun setElem!33452 () Context!8460)

(declare-fun inv!80363 (Context!8460) Bool)

(assert (=> setNonEmpty!33452 (= setRes!33452 (and tp!1467924 (inv!80363 setElem!33452) e!3262541))))

(declare-fun z!1189 () (Set Context!8460))

(declare-fun setRest!33452 () (Set Context!8460))

(assert (=> setNonEmpty!33452 (= z!1189 (set.union (set.insert setElem!33452 (as set.empty (Set Context!8460))) setRest!33452))))

(declare-fun b!5243542 () Bool)

(declare-fun tp!1467929 () Bool)

(declare-fun tp!1467922 () Bool)

(assert (=> b!5243542 (= e!3262543 (and tp!1467929 tp!1467922))))

(declare-fun b!5243543 () Bool)

(declare-fun e!3262539 () Bool)

(declare-fun tp_is_empty!38945 () Bool)

(declare-fun tp!1467923 () Bool)

(assert (=> b!5243543 (= e!3262539 (and tp_is_empty!38945 tp!1467923))))

(declare-fun b!5243544 () Bool)

(declare-fun e!3262528 () Bool)

(declare-fun lt!2149384 () (Set Context!8460))

(declare-datatypes ((List!60839 0))(
  ( (Nil!60715) (Cons!60715 (h!67163 C!29962) (t!374020 List!60839)) )
))
(declare-fun s!2326 () List!60839)

(declare-fun matchZipper!1090 ((Set Context!8460) List!60839) Bool)

(assert (=> b!5243544 (= e!3262528 (matchZipper!1090 lt!2149384 (t!374020 s!2326)))))

(declare-fun b!5243545 () Bool)

(declare-datatypes ((Unit!152782 0))(
  ( (Unit!152783) )
))
(declare-fun e!3262537 () Unit!152782)

(declare-fun Unit!152784 () Unit!152782)

(assert (=> b!5243545 (= e!3262537 Unit!152784)))

(declare-fun b!5243546 () Bool)

(declare-fun tp!1467928 () Bool)

(assert (=> b!5243546 (= e!3262541 tp!1467928)))

(declare-fun b!5243548 () Bool)

(declare-fun res!2225401 () Bool)

(declare-fun e!3262547 () Bool)

(assert (=> b!5243548 (=> res!2225401 e!3262547)))

(declare-fun isEmpty!32650 (List!60837) Bool)

(assert (=> b!5243548 (= res!2225401 (isEmpty!32650 (t!374018 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun setIsEmpty!33452 () Bool)

(assert (=> setIsEmpty!33452 setRes!33452))

(declare-fun b!5243549 () Bool)

(declare-fun e!3262524 () Bool)

(assert (=> b!5243549 (= e!3262544 e!3262524)))

(declare-fun res!2225404 () Bool)

(assert (=> b!5243549 (=> res!2225404 e!3262524)))

(declare-fun lt!2149369 () Int)

(declare-fun lt!2149360 () Int)

(assert (=> b!5243549 (= res!2225404 (>= lt!2149369 lt!2149360))))

(declare-fun zipperDepthTotal!27 (List!60838) Int)

(assert (=> b!5243549 (= lt!2149360 (zipperDepthTotal!27 zl!343))))

(declare-fun lt!2149348 () List!60838)

(assert (=> b!5243549 (= lt!2149369 (zipperDepthTotal!27 lt!2149348))))

(declare-fun lt!2149386 () Context!8460)

(assert (=> b!5243549 (= lt!2149348 (Cons!60714 lt!2149386 Nil!60714))))

(assert (=> b!5243550 (= e!3262530 e!3262547)))

(declare-fun res!2225407 () Bool)

(assert (=> b!5243550 (=> res!2225407 e!3262547)))

(declare-fun lt!2149368 () Bool)

(declare-fun lt!2149373 () Bool)

(assert (=> b!5243550 (= res!2225407 (or (not (= lt!2149373 lt!2149368)) (is-Nil!60715 s!2326)))))

(declare-fun Exists!2027 (Int) Bool)

(assert (=> b!5243550 (= (Exists!2027 lambda!263812) (Exists!2027 lambda!263813))))

(declare-fun lt!2149382 () Unit!152782)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!681 (Regex!14846 Regex!14846 List!60839) Unit!152782)

(assert (=> b!5243550 (= lt!2149382 (lemmaExistCutMatchRandMatchRSpecEquivalent!681 (regOne!30204 r!7292) (regTwo!30204 r!7292) s!2326))))

(assert (=> b!5243550 (= lt!2149368 (Exists!2027 lambda!263812))))

(declare-datatypes ((tuple2!64090 0))(
  ( (tuple2!64091 (_1!35348 List!60839) (_2!35348 List!60839)) )
))
(declare-datatypes ((Option!14957 0))(
  ( (None!14956) (Some!14956 (v!50985 tuple2!64090)) )
))
(declare-fun isDefined!11660 (Option!14957) Bool)

(declare-fun findConcatSeparation!1371 (Regex!14846 Regex!14846 List!60839 List!60839 List!60839) Option!14957)

(assert (=> b!5243550 (= lt!2149368 (isDefined!11660 (findConcatSeparation!1371 (regOne!30204 r!7292) (regTwo!30204 r!7292) Nil!60715 s!2326 s!2326)))))

(declare-fun lt!2149377 () Unit!152782)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1135 (Regex!14846 Regex!14846 List!60839) Unit!152782)

(assert (=> b!5243550 (= lt!2149377 (lemmaFindConcatSeparationEquivalentToExists!1135 (regOne!30204 r!7292) (regTwo!30204 r!7292) s!2326))))

(declare-fun e!3262531 () Bool)

(assert (=> b!5243551 (= e!3262547 e!3262531)))

(declare-fun res!2225409 () Bool)

(assert (=> b!5243551 (=> res!2225409 e!3262531)))

(assert (=> b!5243551 (= res!2225409 (or (and (is-ElementMatch!14846 (regOne!30204 r!7292)) (= (c!906500 (regOne!30204 r!7292)) (h!67163 s!2326))) (not (is-Union!14846 (regOne!30204 r!7292)))))))

(declare-fun lt!2149379 () Unit!152782)

(declare-fun e!3262546 () Unit!152782)

(assert (=> b!5243551 (= lt!2149379 e!3262546)))

(declare-fun c!906499 () Bool)

(declare-fun nullable!5015 (Regex!14846) Bool)

(assert (=> b!5243551 (= c!906499 (nullable!5015 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun lambda!263814 () Int)

(declare-fun flatMap!573 ((Set Context!8460) Int) (Set Context!8460))

(declare-fun derivationStepZipperUp!218 (Context!8460 C!29962) (Set Context!8460))

(assert (=> b!5243551 (= (flatMap!573 z!1189 lambda!263814) (derivationStepZipperUp!218 (h!67162 zl!343) (h!67163 s!2326)))))

(declare-fun lt!2149370 () Unit!152782)

(declare-fun lemmaFlatMapOnSingletonSet!105 ((Set Context!8460) Context!8460 Int) Unit!152782)

(assert (=> b!5243551 (= lt!2149370 (lemmaFlatMapOnSingletonSet!105 z!1189 (h!67162 zl!343) lambda!263814))))

(declare-fun lt!2149380 () (Set Context!8460))

(declare-fun lt!2149388 () Context!8460)

(assert (=> b!5243551 (= lt!2149380 (derivationStepZipperUp!218 lt!2149388 (h!67163 s!2326)))))

(declare-fun lt!2149391 () (Set Context!8460))

(declare-fun derivationStepZipperDown!294 (Regex!14846 Context!8460 C!29962) (Set Context!8460))

(assert (=> b!5243551 (= lt!2149391 (derivationStepZipperDown!294 (h!67161 (exprs!4730 (h!67162 zl!343))) lt!2149388 (h!67163 s!2326)))))

(assert (=> b!5243551 (= lt!2149388 (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun lt!2149375 () (Set Context!8460))

(assert (=> b!5243551 (= lt!2149375 (derivationStepZipperUp!218 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))) (h!67163 s!2326)))))

(declare-fun b!5243552 () Bool)

(declare-fun e!3262545 () Bool)

(assert (=> b!5243552 (= e!3262545 (matchZipper!1090 lt!2149380 (t!374020 s!2326)))))

(declare-fun b!5243553 () Bool)

(declare-fun e!3262535 () Bool)

(assert (=> b!5243553 (= e!3262531 e!3262535)))

(declare-fun res!2225418 () Bool)

(assert (=> b!5243553 (=> res!2225418 e!3262535)))

(declare-fun lt!2149367 () (Set Context!8460))

(assert (=> b!5243553 (= res!2225418 (not (= lt!2149391 lt!2149367)))))

(declare-fun lt!2149359 () (Set Context!8460))

(assert (=> b!5243553 (= lt!2149367 (set.union lt!2149359 lt!2149384))))

(assert (=> b!5243553 (= lt!2149384 (derivationStepZipperDown!294 (regTwo!30205 (regOne!30204 r!7292)) lt!2149388 (h!67163 s!2326)))))

(assert (=> b!5243553 (= lt!2149359 (derivationStepZipperDown!294 (regOne!30205 (regOne!30204 r!7292)) lt!2149388 (h!67163 s!2326)))))

(declare-fun b!5243554 () Bool)

(declare-fun e!3262525 () Bool)

(assert (=> b!5243554 (= e!3262525 (matchZipper!1090 lt!2149380 (t!374020 s!2326)))))

(declare-fun b!5243555 () Bool)

(declare-fun e!3262540 () Unit!152782)

(declare-fun Unit!152785 () Unit!152782)

(assert (=> b!5243555 (= e!3262540 Unit!152785)))

(declare-fun lt!2149361 () Unit!152782)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!83 ((Set Context!8460) (Set Context!8460) List!60839) Unit!152782)

(assert (=> b!5243555 (= lt!2149361 (lemmaZipperConcatMatchesSameAsBothZippers!83 lt!2149384 lt!2149380 (t!374020 s!2326)))))

(declare-fun res!2225408 () Bool)

(assert (=> b!5243555 (= res!2225408 (matchZipper!1090 lt!2149384 (t!374020 s!2326)))))

(declare-fun e!3262538 () Bool)

(assert (=> b!5243555 (=> res!2225408 e!3262538)))

(assert (=> b!5243555 (= (matchZipper!1090 (set.union lt!2149384 lt!2149380) (t!374020 s!2326)) e!3262538)))

(declare-fun b!5243556 () Bool)

(declare-fun e!3262532 () Bool)

(declare-fun e!3262526 () Bool)

(assert (=> b!5243556 (= e!3262532 e!3262526)))

(declare-fun res!2225412 () Bool)

(assert (=> b!5243556 (=> res!2225412 e!3262526)))

(declare-fun lt!2149374 () Bool)

(declare-fun lt!2149358 () Bool)

(declare-fun lt!2149390 () Bool)

(assert (=> b!5243556 (= res!2225412 (or (and (not (= lt!2149358 lt!2149374)) (not lt!2149390)) (not (= r!7292 (Concat!23691 (Union!14846 (regOne!30205 (regOne!30204 r!7292)) (regTwo!30205 (regOne!30204 r!7292))) (regTwo!30204 r!7292))))))))

(declare-fun lt!2149350 () Regex!14846)

(declare-fun matchRSpec!1949 (Regex!14846 List!60839) Bool)

(assert (=> b!5243556 (= lt!2149390 (matchRSpec!1949 lt!2149350 s!2326))))

(declare-fun lt!2149366 () Unit!152782)

(declare-fun mainMatchTheorem!1949 (Regex!14846 List!60839) Unit!152782)

(assert (=> b!5243556 (= lt!2149366 (mainMatchTheorem!1949 lt!2149350 s!2326))))

(declare-fun lt!2149381 () Regex!14846)

(assert (=> b!5243556 (= lt!2149374 (matchRSpec!1949 lt!2149381 s!2326))))

(declare-fun lt!2149372 () Unit!152782)

(assert (=> b!5243556 (= lt!2149372 (mainMatchTheorem!1949 lt!2149381 s!2326))))

(declare-fun lt!2149355 () (Set Context!8460))

(assert (=> b!5243556 (= lt!2149390 (matchZipper!1090 lt!2149355 s!2326))))

(declare-fun matchR!7031 (Regex!14846 List!60839) Bool)

(assert (=> b!5243556 (= lt!2149390 (matchR!7031 lt!2149350 s!2326))))

(declare-fun lt!2149354 () List!60838)

(declare-fun lt!2149351 () Unit!152782)

(declare-fun theoremZipperRegexEquiv!280 ((Set Context!8460) List!60838 Regex!14846 List!60839) Unit!152782)

(assert (=> b!5243556 (= lt!2149351 (theoremZipperRegexEquiv!280 lt!2149355 lt!2149354 lt!2149350 s!2326))))

(declare-fun lt!2149365 () List!60837)

(declare-fun generalisedConcat!515 (List!60837) Regex!14846)

(assert (=> b!5243556 (= lt!2149350 (generalisedConcat!515 lt!2149365))))

(declare-fun lt!2149353 () Bool)

(assert (=> b!5243556 (= lt!2149374 lt!2149353)))

(assert (=> b!5243556 (= lt!2149374 (matchR!7031 lt!2149381 s!2326))))

(declare-fun lt!2149347 () (Set Context!8460))

(declare-fun lt!2149392 () Unit!152782)

(assert (=> b!5243556 (= lt!2149392 (theoremZipperRegexEquiv!280 lt!2149347 lt!2149348 lt!2149381 s!2326))))

(declare-fun lt!2149356 () List!60837)

(assert (=> b!5243556 (= lt!2149381 (generalisedConcat!515 lt!2149356))))

(declare-fun b!5243557 () Bool)

(declare-fun e!3262533 () Bool)

(assert (=> b!5243557 (= e!3262533 (matchZipper!1090 lt!2149355 s!2326))))

(declare-fun b!5243558 () Bool)

(assert (=> b!5243558 (= e!3262543 tp_is_empty!38945)))

(declare-fun b!5243559 () Bool)

(declare-fun Unit!152786 () Unit!152782)

(assert (=> b!5243559 (= e!3262537 Unit!152786)))

(declare-fun lt!2149387 () Unit!152782)

(assert (=> b!5243559 (= lt!2149387 (lemmaZipperConcatMatchesSameAsBothZippers!83 lt!2149359 lt!2149380 (t!374020 s!2326)))))

(declare-fun res!2225413 () Bool)

(declare-fun lt!2149371 () Bool)

(assert (=> b!5243559 (= res!2225413 lt!2149371)))

(assert (=> b!5243559 (=> res!2225413 e!3262525)))

(assert (=> b!5243559 (= (matchZipper!1090 (set.union lt!2149359 lt!2149380) (t!374020 s!2326)) e!3262525)))

(declare-fun b!5243560 () Bool)

(declare-fun res!2225416 () Bool)

(assert (=> b!5243560 (=> res!2225416 e!3262530)))

(assert (=> b!5243560 (= res!2225416 (not (is-Cons!60713 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun b!5243561 () Bool)

(declare-fun lambda!263815 () Int)

(declare-fun forall!14270 (List!60837 Int) Bool)

(assert (=> b!5243561 (= e!3262526 (forall!14270 (t!374018 (exprs!4730 (h!67162 zl!343))) lambda!263815))))

(declare-fun b!5243562 () Bool)

(declare-fun e!3262534 () Bool)

(assert (=> b!5243562 (= e!3262534 e!3262544)))

(declare-fun res!2225400 () Bool)

(assert (=> b!5243562 (=> res!2225400 e!3262544)))

(assert (=> b!5243562 (= res!2225400 (not (= lt!2149358 e!3262533)))))

(declare-fun res!2225417 () Bool)

(assert (=> b!5243562 (=> res!2225417 e!3262533)))

(assert (=> b!5243562 (= res!2225417 lt!2149353)))

(assert (=> b!5243562 (= lt!2149358 (matchZipper!1090 z!1189 s!2326))))

(assert (=> b!5243562 (= lt!2149353 (matchZipper!1090 lt!2149347 s!2326))))

(declare-fun lt!2149376 () Unit!152782)

(assert (=> b!5243562 (= lt!2149376 e!3262540)))

(declare-fun c!906498 () Bool)

(assert (=> b!5243562 (= c!906498 (nullable!5015 (regTwo!30205 (regOne!30204 r!7292))))))

(declare-fun lt!2149349 () Context!8460)

(assert (=> b!5243562 (= (flatMap!573 lt!2149355 lambda!263814) (derivationStepZipperUp!218 lt!2149349 (h!67163 s!2326)))))

(declare-fun lt!2149362 () Unit!152782)

(assert (=> b!5243562 (= lt!2149362 (lemmaFlatMapOnSingletonSet!105 lt!2149355 lt!2149349 lambda!263814))))

(declare-fun lt!2149383 () (Set Context!8460))

(assert (=> b!5243562 (= lt!2149383 (derivationStepZipperUp!218 lt!2149349 (h!67163 s!2326)))))

(declare-fun lt!2149363 () Unit!152782)

(assert (=> b!5243562 (= lt!2149363 e!3262537)))

(declare-fun c!906497 () Bool)

(assert (=> b!5243562 (= c!906497 (nullable!5015 (regOne!30205 (regOne!30204 r!7292))))))

(assert (=> b!5243562 (= (flatMap!573 lt!2149347 lambda!263814) (derivationStepZipperUp!218 lt!2149386 (h!67163 s!2326)))))

(declare-fun lt!2149357 () Unit!152782)

(assert (=> b!5243562 (= lt!2149357 (lemmaFlatMapOnSingletonSet!105 lt!2149347 lt!2149386 lambda!263814))))

(declare-fun lt!2149352 () (Set Context!8460))

(assert (=> b!5243562 (= lt!2149352 (derivationStepZipperUp!218 lt!2149386 (h!67163 s!2326)))))

(assert (=> b!5243562 (= lt!2149355 (set.insert lt!2149349 (as set.empty (Set Context!8460))))))

(assert (=> b!5243562 (= lt!2149349 (Context!8461 lt!2149365))))

(assert (=> b!5243562 (= lt!2149365 (Cons!60713 (regTwo!30205 (regOne!30204 r!7292)) (t!374018 (exprs!4730 (h!67162 zl!343)))))))

(assert (=> b!5243562 (= lt!2149347 (set.insert lt!2149386 (as set.empty (Set Context!8460))))))

(assert (=> b!5243562 (= lt!2149386 (Context!8461 lt!2149356))))

(assert (=> b!5243562 (= lt!2149356 (Cons!60713 (regOne!30205 (regOne!30204 r!7292)) (t!374018 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun b!5243563 () Bool)

(declare-fun e!3262542 () Bool)

(declare-fun tp!1467930 () Bool)

(assert (=> b!5243563 (= e!3262542 tp!1467930)))

(declare-fun b!5243564 () Bool)

(assert (=> b!5243564 (= e!3262535 e!3262534)))

(declare-fun res!2225422 () Bool)

(assert (=> b!5243564 (=> res!2225422 e!3262534)))

(declare-fun e!3262523 () Bool)

(assert (=> b!5243564 (= res!2225422 e!3262523)))

(declare-fun res!2225406 () Bool)

(assert (=> b!5243564 (=> (not res!2225406) (not e!3262523))))

(assert (=> b!5243564 (= res!2225406 (not (= (matchZipper!1090 lt!2149391 (t!374020 s!2326)) lt!2149371)))))

(assert (=> b!5243564 (= (matchZipper!1090 lt!2149367 (t!374020 s!2326)) e!3262528)))

(declare-fun res!2225402 () Bool)

(assert (=> b!5243564 (=> res!2225402 e!3262528)))

(assert (=> b!5243564 (= res!2225402 lt!2149371)))

(assert (=> b!5243564 (= lt!2149371 (matchZipper!1090 lt!2149359 (t!374020 s!2326)))))

(declare-fun lt!2149385 () Unit!152782)

(assert (=> b!5243564 (= lt!2149385 (lemmaZipperConcatMatchesSameAsBothZippers!83 lt!2149359 lt!2149384 (t!374020 s!2326)))))

(declare-fun b!5243565 () Bool)

(declare-fun Unit!152787 () Unit!152782)

(assert (=> b!5243565 (= e!3262540 Unit!152787)))

(declare-fun b!5243566 () Bool)

(declare-fun e!3262529 () Bool)

(declare-fun e!3262536 () Bool)

(assert (=> b!5243566 (= e!3262529 e!3262536)))

(declare-fun res!2225405 () Bool)

(assert (=> b!5243566 (=> (not res!2225405) (not e!3262536))))

(assert (=> b!5243566 (= res!2225405 (= r!7292 lt!2149378))))

(declare-fun unfocusZipper!588 (List!60838) Regex!14846)

(assert (=> b!5243566 (= lt!2149378 (unfocusZipper!588 zl!343))))

(declare-fun b!5243567 () Bool)

(declare-fun res!2225421 () Bool)

(assert (=> b!5243567 (=> res!2225421 e!3262530)))

(assert (=> b!5243567 (= res!2225421 (or (is-EmptyExpr!14846 r!7292) (is-EmptyLang!14846 r!7292) (is-ElementMatch!14846 r!7292) (is-Union!14846 r!7292) (not (is-Concat!23691 r!7292))))))

(declare-fun b!5243568 () Bool)

(assert (=> b!5243568 (= e!3262538 (matchZipper!1090 lt!2149380 (t!374020 s!2326)))))

(declare-fun b!5243569 () Bool)

(declare-fun res!2225398 () Bool)

(assert (=> b!5243569 (=> (not res!2225398) (not e!3262529))))

(declare-fun toList!8630 ((Set Context!8460)) List!60838)

(assert (=> b!5243569 (= res!2225398 (= (toList!8630 z!1189) zl!343))))

(declare-fun b!5243570 () Bool)

(assert (=> b!5243570 (= e!3262524 e!3262532)))

(declare-fun res!2225419 () Bool)

(assert (=> b!5243570 (=> res!2225419 e!3262532)))

(assert (=> b!5243570 (= res!2225419 (>= (zipperDepthTotal!27 lt!2149354) lt!2149360))))

(assert (=> b!5243570 (= lt!2149354 (Cons!60714 lt!2149349 Nil!60714))))

(declare-fun b!5243571 () Bool)

(assert (=> b!5243571 (= e!3262523 (not (matchZipper!1090 lt!2149384 (t!374020 s!2326))))))

(declare-fun b!5243572 () Bool)

(assert (=> b!5243572 (= e!3262536 (not e!3262530))))

(declare-fun res!2225414 () Bool)

(assert (=> b!5243572 (=> res!2225414 e!3262530)))

(assert (=> b!5243572 (= res!2225414 (not (is-Cons!60714 zl!343)))))

(assert (=> b!5243572 (= lt!2149373 (matchRSpec!1949 r!7292 s!2326))))

(assert (=> b!5243572 (= lt!2149373 (matchR!7031 r!7292 s!2326))))

(declare-fun lt!2149364 () Unit!152782)

(assert (=> b!5243572 (= lt!2149364 (mainMatchTheorem!1949 r!7292 s!2326))))

(declare-fun b!5243573 () Bool)

(declare-fun e!3262527 () Bool)

(declare-fun tp!1467925 () Bool)

(assert (=> b!5243573 (= e!3262527 (and (inv!80363 (h!67162 zl!343)) e!3262542 tp!1467925))))

(declare-fun b!5243574 () Bool)

(declare-fun res!2225410 () Bool)

(assert (=> b!5243574 (=> res!2225410 e!3262530)))

(assert (=> b!5243574 (= res!2225410 (not (= r!7292 (generalisedConcat!515 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun b!5243575 () Bool)

(declare-fun Unit!152788 () Unit!152782)

(assert (=> b!5243575 (= e!3262546 Unit!152788)))

(declare-fun lt!2149389 () Unit!152782)

(assert (=> b!5243575 (= lt!2149389 (lemmaZipperConcatMatchesSameAsBothZippers!83 lt!2149391 lt!2149380 (t!374020 s!2326)))))

(declare-fun res!2225411 () Bool)

(assert (=> b!5243575 (= res!2225411 (matchZipper!1090 lt!2149391 (t!374020 s!2326)))))

(assert (=> b!5243575 (=> res!2225411 e!3262545)))

(assert (=> b!5243575 (= (matchZipper!1090 (set.union lt!2149391 lt!2149380) (t!374020 s!2326)) e!3262545)))

(declare-fun b!5243576 () Bool)

(declare-fun tp!1467927 () Bool)

(declare-fun tp!1467926 () Bool)

(assert (=> b!5243576 (= e!3262543 (and tp!1467927 tp!1467926))))

(declare-fun res!2225403 () Bool)

(assert (=> start!554240 (=> (not res!2225403) (not e!3262529))))

(declare-fun validRegex!6582 (Regex!14846) Bool)

(assert (=> start!554240 (= res!2225403 (validRegex!6582 r!7292))))

(assert (=> start!554240 e!3262529))

(assert (=> start!554240 e!3262543))

(declare-fun condSetEmpty!33452 () Bool)

(assert (=> start!554240 (= condSetEmpty!33452 (= z!1189 (as set.empty (Set Context!8460))))))

(assert (=> start!554240 setRes!33452))

(assert (=> start!554240 e!3262527))

(assert (=> start!554240 e!3262539))

(declare-fun b!5243547 () Bool)

(declare-fun Unit!152789 () Unit!152782)

(assert (=> b!5243547 (= e!3262546 Unit!152789)))

(assert (= (and start!554240 res!2225403) b!5243569))

(assert (= (and b!5243569 res!2225398) b!5243566))

(assert (= (and b!5243566 res!2225405) b!5243572))

(assert (= (and b!5243572 (not res!2225414)) b!5243540))

(assert (= (and b!5243540 (not res!2225415)) b!5243574))

(assert (= (and b!5243574 (not res!2225410)) b!5243560))

(assert (= (and b!5243560 (not res!2225416)) b!5243541))

(assert (= (and b!5243541 (not res!2225399)) b!5243567))

(assert (= (and b!5243567 (not res!2225421)) b!5243550))

(assert (= (and b!5243550 (not res!2225407)) b!5243548))

(assert (= (and b!5243548 (not res!2225401)) b!5243551))

(assert (= (and b!5243551 c!906499) b!5243575))

(assert (= (and b!5243551 (not c!906499)) b!5243547))

(assert (= (and b!5243575 (not res!2225411)) b!5243552))

(assert (= (and b!5243551 (not res!2225409)) b!5243553))

(assert (= (and b!5243553 (not res!2225418)) b!5243564))

(assert (= (and b!5243564 (not res!2225402)) b!5243544))

(assert (= (and b!5243564 res!2225406) b!5243571))

(assert (= (and b!5243564 (not res!2225422)) b!5243562))

(assert (= (and b!5243562 c!906497) b!5243559))

(assert (= (and b!5243562 (not c!906497)) b!5243545))

(assert (= (and b!5243559 (not res!2225413)) b!5243554))

(assert (= (and b!5243562 c!906498) b!5243555))

(assert (= (and b!5243562 (not c!906498)) b!5243565))

(assert (= (and b!5243555 (not res!2225408)) b!5243568))

(assert (= (and b!5243562 (not res!2225417)) b!5243557))

(assert (= (and b!5243562 (not res!2225400)) b!5243539))

(assert (= (and b!5243539 (not res!2225420)) b!5243549))

(assert (= (and b!5243549 (not res!2225404)) b!5243570))

(assert (= (and b!5243570 (not res!2225419)) b!5243556))

(assert (= (and b!5243556 (not res!2225412)) b!5243561))

(assert (= (and start!554240 (is-ElementMatch!14846 r!7292)) b!5243558))

(assert (= (and start!554240 (is-Concat!23691 r!7292)) b!5243542))

(assert (= (and start!554240 (is-Star!14846 r!7292)) b!5243538))

(assert (= (and start!554240 (is-Union!14846 r!7292)) b!5243576))

(assert (= (and start!554240 condSetEmpty!33452) setIsEmpty!33452))

(assert (= (and start!554240 (not condSetEmpty!33452)) setNonEmpty!33452))

(assert (= setNonEmpty!33452 b!5243546))

(assert (= b!5243573 b!5243563))

(assert (= (and start!554240 (is-Cons!60714 zl!343)) b!5243573))

(assert (= (and start!554240 (is-Cons!60715 s!2326)) b!5243543))

(declare-fun m!6287568 () Bool)

(assert (=> setNonEmpty!33452 m!6287568))

(declare-fun m!6287570 () Bool)

(assert (=> b!5243566 m!6287570))

(declare-fun m!6287572 () Bool)

(assert (=> b!5243540 m!6287572))

(declare-fun m!6287574 () Bool)

(assert (=> b!5243552 m!6287574))

(declare-fun m!6287576 () Bool)

(assert (=> b!5243561 m!6287576))

(declare-fun m!6287578 () Bool)

(assert (=> b!5243548 m!6287578))

(declare-fun m!6287580 () Bool)

(assert (=> start!554240 m!6287580))

(declare-fun m!6287582 () Bool)

(assert (=> b!5243553 m!6287582))

(declare-fun m!6287584 () Bool)

(assert (=> b!5243553 m!6287584))

(declare-fun m!6287586 () Bool)

(assert (=> b!5243551 m!6287586))

(declare-fun m!6287588 () Bool)

(assert (=> b!5243551 m!6287588))

(declare-fun m!6287590 () Bool)

(assert (=> b!5243551 m!6287590))

(declare-fun m!6287592 () Bool)

(assert (=> b!5243551 m!6287592))

(declare-fun m!6287594 () Bool)

(assert (=> b!5243551 m!6287594))

(declare-fun m!6287596 () Bool)

(assert (=> b!5243551 m!6287596))

(declare-fun m!6287598 () Bool)

(assert (=> b!5243551 m!6287598))

(declare-fun m!6287600 () Bool)

(assert (=> b!5243570 m!6287600))

(declare-fun m!6287602 () Bool)

(assert (=> b!5243562 m!6287602))

(declare-fun m!6287604 () Bool)

(assert (=> b!5243562 m!6287604))

(declare-fun m!6287606 () Bool)

(assert (=> b!5243562 m!6287606))

(declare-fun m!6287608 () Bool)

(assert (=> b!5243562 m!6287608))

(declare-fun m!6287610 () Bool)

(assert (=> b!5243562 m!6287610))

(declare-fun m!6287612 () Bool)

(assert (=> b!5243562 m!6287612))

(declare-fun m!6287614 () Bool)

(assert (=> b!5243562 m!6287614))

(declare-fun m!6287616 () Bool)

(assert (=> b!5243562 m!6287616))

(declare-fun m!6287618 () Bool)

(assert (=> b!5243562 m!6287618))

(declare-fun m!6287620 () Bool)

(assert (=> b!5243562 m!6287620))

(declare-fun m!6287622 () Bool)

(assert (=> b!5243562 m!6287622))

(declare-fun m!6287624 () Bool)

(assert (=> b!5243562 m!6287624))

(declare-fun m!6287626 () Bool)

(assert (=> b!5243541 m!6287626))

(assert (=> b!5243541 m!6287626))

(declare-fun m!6287628 () Bool)

(assert (=> b!5243541 m!6287628))

(declare-fun m!6287630 () Bool)

(assert (=> b!5243550 m!6287630))

(declare-fun m!6287632 () Bool)

(assert (=> b!5243550 m!6287632))

(declare-fun m!6287634 () Bool)

(assert (=> b!5243550 m!6287634))

(declare-fun m!6287636 () Bool)

(assert (=> b!5243550 m!6287636))

(assert (=> b!5243550 m!6287630))

(declare-fun m!6287638 () Bool)

(assert (=> b!5243550 m!6287638))

(assert (=> b!5243550 m!6287632))

(declare-fun m!6287640 () Bool)

(assert (=> b!5243550 m!6287640))

(declare-fun m!6287642 () Bool)

(assert (=> b!5243564 m!6287642))

(declare-fun m!6287644 () Bool)

(assert (=> b!5243564 m!6287644))

(declare-fun m!6287646 () Bool)

(assert (=> b!5243564 m!6287646))

(declare-fun m!6287648 () Bool)

(assert (=> b!5243564 m!6287648))

(declare-fun m!6287650 () Bool)

(assert (=> b!5243544 m!6287650))

(declare-fun m!6287652 () Bool)

(assert (=> b!5243559 m!6287652))

(declare-fun m!6287654 () Bool)

(assert (=> b!5243559 m!6287654))

(declare-fun m!6287656 () Bool)

(assert (=> b!5243569 m!6287656))

(assert (=> b!5243554 m!6287574))

(assert (=> b!5243571 m!6287650))

(declare-fun m!6287658 () Bool)

(assert (=> b!5243574 m!6287658))

(assert (=> b!5243568 m!6287574))

(declare-fun m!6287660 () Bool)

(assert (=> b!5243573 m!6287660))

(declare-fun m!6287662 () Bool)

(assert (=> b!5243549 m!6287662))

(declare-fun m!6287664 () Bool)

(assert (=> b!5243549 m!6287664))

(declare-fun m!6287666 () Bool)

(assert (=> b!5243555 m!6287666))

(assert (=> b!5243555 m!6287650))

(declare-fun m!6287668 () Bool)

(assert (=> b!5243555 m!6287668))

(declare-fun m!6287670 () Bool)

(assert (=> b!5243557 m!6287670))

(declare-fun m!6287672 () Bool)

(assert (=> b!5243556 m!6287672))

(declare-fun m!6287674 () Bool)

(assert (=> b!5243556 m!6287674))

(assert (=> b!5243556 m!6287670))

(declare-fun m!6287676 () Bool)

(assert (=> b!5243556 m!6287676))

(declare-fun m!6287678 () Bool)

(assert (=> b!5243556 m!6287678))

(declare-fun m!6287680 () Bool)

(assert (=> b!5243556 m!6287680))

(declare-fun m!6287682 () Bool)

(assert (=> b!5243556 m!6287682))

(declare-fun m!6287684 () Bool)

(assert (=> b!5243556 m!6287684))

(declare-fun m!6287686 () Bool)

(assert (=> b!5243556 m!6287686))

(declare-fun m!6287688 () Bool)

(assert (=> b!5243556 m!6287688))

(declare-fun m!6287690 () Bool)

(assert (=> b!5243556 m!6287690))

(declare-fun m!6287692 () Bool)

(assert (=> b!5243572 m!6287692))

(declare-fun m!6287694 () Bool)

(assert (=> b!5243572 m!6287694))

(declare-fun m!6287696 () Bool)

(assert (=> b!5243572 m!6287696))

(declare-fun m!6287698 () Bool)

(assert (=> b!5243575 m!6287698))

(assert (=> b!5243575 m!6287642))

(declare-fun m!6287700 () Bool)

(assert (=> b!5243575 m!6287700))

(push 1)

(assert (not b!5243568))

(assert (not b!5243557))

(assert (not b!5243564))

(assert (not b!5243553))

(assert (not b!5243554))

(assert (not b!5243549))

(assert (not b!5243566))

(assert (not b!5243576))

(assert (not b!5243544))

(assert (not b!5243540))

(assert (not b!5243561))

(assert (not b!5243562))

(assert (not b!5243548))

(assert (not b!5243538))

(assert tp_is_empty!38945)

(assert (not b!5243569))

(assert (not b!5243543))

(assert (not b!5243552))

(assert (not b!5243559))

(assert (not b!5243541))

(assert (not b!5243551))

(assert (not b!5243546))

(assert (not b!5243572))

(assert (not b!5243570))

(assert (not b!5243563))

(assert (not start!554240))

(assert (not b!5243571))

(assert (not b!5243542))

(assert (not b!5243550))

(assert (not b!5243556))

(assert (not b!5243555))

(assert (not setNonEmpty!33452))

(assert (not b!5243573))

(assert (not b!5243574))

(assert (not b!5243575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1689395 () Bool)

(declare-fun c!906520 () Bool)

(declare-fun isEmpty!32653 (List!60839) Bool)

(assert (=> d!1689395 (= c!906520 (isEmpty!32653 (t!374020 s!2326)))))

(declare-fun e!3262631 () Bool)

(assert (=> d!1689395 (= (matchZipper!1090 lt!2149380 (t!374020 s!2326)) e!3262631)))

(declare-fun b!5243722 () Bool)

(declare-fun nullableZipper!1261 ((Set Context!8460)) Bool)

(assert (=> b!5243722 (= e!3262631 (nullableZipper!1261 lt!2149380))))

(declare-fun b!5243723 () Bool)

(declare-fun derivationStepZipper!1105 ((Set Context!8460) C!29962) (Set Context!8460))

(declare-fun head!11240 (List!60839) C!29962)

(declare-fun tail!10337 (List!60839) List!60839)

(assert (=> b!5243723 (= e!3262631 (matchZipper!1090 (derivationStepZipper!1105 lt!2149380 (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))))))

(assert (= (and d!1689395 c!906520) b!5243722))

(assert (= (and d!1689395 (not c!906520)) b!5243723))

(declare-fun m!6287836 () Bool)

(assert (=> d!1689395 m!6287836))

(declare-fun m!6287838 () Bool)

(assert (=> b!5243722 m!6287838))

(declare-fun m!6287840 () Bool)

(assert (=> b!5243723 m!6287840))

(assert (=> b!5243723 m!6287840))

(declare-fun m!6287842 () Bool)

(assert (=> b!5243723 m!6287842))

(declare-fun m!6287844 () Bool)

(assert (=> b!5243723 m!6287844))

(assert (=> b!5243723 m!6287842))

(assert (=> b!5243723 m!6287844))

(declare-fun m!6287846 () Bool)

(assert (=> b!5243723 m!6287846))

(assert (=> b!5243554 d!1689395))

(declare-fun d!1689397 () Bool)

(declare-fun e!3262634 () Bool)

(assert (=> d!1689397 (= (matchZipper!1090 (set.union lt!2149384 lt!2149380) (t!374020 s!2326)) e!3262634)))

(declare-fun res!2225512 () Bool)

(assert (=> d!1689397 (=> res!2225512 e!3262634)))

(assert (=> d!1689397 (= res!2225512 (matchZipper!1090 lt!2149384 (t!374020 s!2326)))))

(declare-fun lt!2149533 () Unit!152782)

(declare-fun choose!39049 ((Set Context!8460) (Set Context!8460) List!60839) Unit!152782)

(assert (=> d!1689397 (= lt!2149533 (choose!39049 lt!2149384 lt!2149380 (t!374020 s!2326)))))

(assert (=> d!1689397 (= (lemmaZipperConcatMatchesSameAsBothZippers!83 lt!2149384 lt!2149380 (t!374020 s!2326)) lt!2149533)))

(declare-fun b!5243726 () Bool)

(assert (=> b!5243726 (= e!3262634 (matchZipper!1090 lt!2149380 (t!374020 s!2326)))))

(assert (= (and d!1689397 (not res!2225512)) b!5243726))

(assert (=> d!1689397 m!6287668))

(assert (=> d!1689397 m!6287650))

(declare-fun m!6287848 () Bool)

(assert (=> d!1689397 m!6287848))

(assert (=> b!5243726 m!6287574))

(assert (=> b!5243555 d!1689397))

(declare-fun d!1689399 () Bool)

(declare-fun c!906521 () Bool)

(assert (=> d!1689399 (= c!906521 (isEmpty!32653 (t!374020 s!2326)))))

(declare-fun e!3262635 () Bool)

(assert (=> d!1689399 (= (matchZipper!1090 lt!2149384 (t!374020 s!2326)) e!3262635)))

(declare-fun b!5243727 () Bool)

(assert (=> b!5243727 (= e!3262635 (nullableZipper!1261 lt!2149384))))

(declare-fun b!5243728 () Bool)

(assert (=> b!5243728 (= e!3262635 (matchZipper!1090 (derivationStepZipper!1105 lt!2149384 (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))))))

(assert (= (and d!1689399 c!906521) b!5243727))

(assert (= (and d!1689399 (not c!906521)) b!5243728))

(assert (=> d!1689399 m!6287836))

(declare-fun m!6287850 () Bool)

(assert (=> b!5243727 m!6287850))

(assert (=> b!5243728 m!6287840))

(assert (=> b!5243728 m!6287840))

(declare-fun m!6287852 () Bool)

(assert (=> b!5243728 m!6287852))

(assert (=> b!5243728 m!6287844))

(assert (=> b!5243728 m!6287852))

(assert (=> b!5243728 m!6287844))

(declare-fun m!6287854 () Bool)

(assert (=> b!5243728 m!6287854))

(assert (=> b!5243555 d!1689399))

(declare-fun d!1689401 () Bool)

(declare-fun c!906522 () Bool)

(assert (=> d!1689401 (= c!906522 (isEmpty!32653 (t!374020 s!2326)))))

(declare-fun e!3262636 () Bool)

(assert (=> d!1689401 (= (matchZipper!1090 (set.union lt!2149384 lt!2149380) (t!374020 s!2326)) e!3262636)))

(declare-fun b!5243729 () Bool)

(assert (=> b!5243729 (= e!3262636 (nullableZipper!1261 (set.union lt!2149384 lt!2149380)))))

(declare-fun b!5243730 () Bool)

(assert (=> b!5243730 (= e!3262636 (matchZipper!1090 (derivationStepZipper!1105 (set.union lt!2149384 lt!2149380) (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))))))

(assert (= (and d!1689401 c!906522) b!5243729))

(assert (= (and d!1689401 (not c!906522)) b!5243730))

(assert (=> d!1689401 m!6287836))

(declare-fun m!6287856 () Bool)

(assert (=> b!5243729 m!6287856))

(assert (=> b!5243730 m!6287840))

(assert (=> b!5243730 m!6287840))

(declare-fun m!6287858 () Bool)

(assert (=> b!5243730 m!6287858))

(assert (=> b!5243730 m!6287844))

(assert (=> b!5243730 m!6287858))

(assert (=> b!5243730 m!6287844))

(declare-fun m!6287860 () Bool)

(assert (=> b!5243730 m!6287860))

(assert (=> b!5243555 d!1689401))

(declare-fun bs!1216347 () Bool)

(declare-fun d!1689403 () Bool)

(assert (= bs!1216347 (and d!1689403 b!5243561)))

(declare-fun lambda!263836 () Int)

(assert (=> bs!1216347 (= lambda!263836 lambda!263815)))

(declare-fun e!3262649 () Bool)

(assert (=> d!1689403 e!3262649))

(declare-fun res!2225518 () Bool)

(assert (=> d!1689403 (=> (not res!2225518) (not e!3262649))))

(declare-fun lt!2149536 () Regex!14846)

(assert (=> d!1689403 (= res!2225518 (validRegex!6582 lt!2149536))))

(declare-fun e!3262653 () Regex!14846)

(assert (=> d!1689403 (= lt!2149536 e!3262653)))

(declare-fun c!906532 () Bool)

(declare-fun e!3262650 () Bool)

(assert (=> d!1689403 (= c!906532 e!3262650)))

(declare-fun res!2225517 () Bool)

(assert (=> d!1689403 (=> (not res!2225517) (not e!3262650))))

(assert (=> d!1689403 (= res!2225517 (is-Cons!60713 (exprs!4730 (h!67162 zl!343))))))

(assert (=> d!1689403 (forall!14270 (exprs!4730 (h!67162 zl!343)) lambda!263836)))

(assert (=> d!1689403 (= (generalisedConcat!515 (exprs!4730 (h!67162 zl!343))) lt!2149536)))

(declare-fun b!5243751 () Bool)

(declare-fun e!3262651 () Bool)

(assert (=> b!5243751 (= e!3262649 e!3262651)))

(declare-fun c!906534 () Bool)

(assert (=> b!5243751 (= c!906534 (isEmpty!32650 (exprs!4730 (h!67162 zl!343))))))

(declare-fun b!5243752 () Bool)

(assert (=> b!5243752 (= e!3262653 (h!67161 (exprs!4730 (h!67162 zl!343))))))

(declare-fun b!5243753 () Bool)

(declare-fun e!3262654 () Regex!14846)

(assert (=> b!5243753 (= e!3262654 (Concat!23691 (h!67161 (exprs!4730 (h!67162 zl!343))) (generalisedConcat!515 (t!374018 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun b!5243754 () Bool)

(assert (=> b!5243754 (= e!3262650 (isEmpty!32650 (t!374018 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun b!5243755 () Bool)

(declare-fun e!3262652 () Bool)

(declare-fun isConcat!319 (Regex!14846) Bool)

(assert (=> b!5243755 (= e!3262652 (isConcat!319 lt!2149536))))

(declare-fun b!5243756 () Bool)

(assert (=> b!5243756 (= e!3262651 e!3262652)))

(declare-fun c!906531 () Bool)

(declare-fun tail!10338 (List!60837) List!60837)

(assert (=> b!5243756 (= c!906531 (isEmpty!32650 (tail!10338 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun b!5243757 () Bool)

(assert (=> b!5243757 (= e!3262654 EmptyExpr!14846)))

(declare-fun b!5243758 () Bool)

(declare-fun head!11241 (List!60837) Regex!14846)

(assert (=> b!5243758 (= e!3262652 (= lt!2149536 (head!11241 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun b!5243759 () Bool)

(declare-fun isEmptyExpr!796 (Regex!14846) Bool)

(assert (=> b!5243759 (= e!3262651 (isEmptyExpr!796 lt!2149536))))

(declare-fun b!5243760 () Bool)

(assert (=> b!5243760 (= e!3262653 e!3262654)))

(declare-fun c!906533 () Bool)

(assert (=> b!5243760 (= c!906533 (is-Cons!60713 (exprs!4730 (h!67162 zl!343))))))

(assert (= (and d!1689403 res!2225517) b!5243754))

(assert (= (and d!1689403 c!906532) b!5243752))

(assert (= (and d!1689403 (not c!906532)) b!5243760))

(assert (= (and b!5243760 c!906533) b!5243753))

(assert (= (and b!5243760 (not c!906533)) b!5243757))

(assert (= (and d!1689403 res!2225518) b!5243751))

(assert (= (and b!5243751 c!906534) b!5243759))

(assert (= (and b!5243751 (not c!906534)) b!5243756))

(assert (= (and b!5243756 c!906531) b!5243758))

(assert (= (and b!5243756 (not c!906531)) b!5243755))

(declare-fun m!6287862 () Bool)

(assert (=> b!5243756 m!6287862))

(assert (=> b!5243756 m!6287862))

(declare-fun m!6287864 () Bool)

(assert (=> b!5243756 m!6287864))

(declare-fun m!6287866 () Bool)

(assert (=> d!1689403 m!6287866))

(declare-fun m!6287868 () Bool)

(assert (=> d!1689403 m!6287868))

(declare-fun m!6287870 () Bool)

(assert (=> b!5243759 m!6287870))

(declare-fun m!6287872 () Bool)

(assert (=> b!5243753 m!6287872))

(declare-fun m!6287874 () Bool)

(assert (=> b!5243751 m!6287874))

(declare-fun m!6287876 () Bool)

(assert (=> b!5243755 m!6287876))

(declare-fun m!6287878 () Bool)

(assert (=> b!5243758 m!6287878))

(assert (=> b!5243754 m!6287578))

(assert (=> b!5243574 d!1689403))

(declare-fun b!5243815 () Bool)

(declare-fun c!906557 () Bool)

(declare-fun e!3262689 () Bool)

(assert (=> b!5243815 (= c!906557 e!3262689)))

(declare-fun res!2225537 () Bool)

(assert (=> b!5243815 (=> (not res!2225537) (not e!3262689))))

(assert (=> b!5243815 (= res!2225537 (is-Concat!23691 (regTwo!30205 (regOne!30204 r!7292))))))

(declare-fun e!3262685 () (Set Context!8460))

(declare-fun e!3262690 () (Set Context!8460))

(assert (=> b!5243815 (= e!3262685 e!3262690)))

(declare-fun b!5243816 () Bool)

(declare-fun e!3262688 () (Set Context!8460))

(declare-fun call!371273 () (Set Context!8460))

(assert (=> b!5243816 (= e!3262688 call!371273)))

(declare-fun bm!371264 () Bool)

(declare-fun call!371274 () (Set Context!8460))

(declare-fun call!371272 () (Set Context!8460))

(assert (=> bm!371264 (= call!371274 call!371272)))

(declare-fun b!5243817 () Bool)

(declare-fun call!371269 () (Set Context!8460))

(assert (=> b!5243817 (= e!3262690 (set.union call!371269 call!371274))))

(declare-fun b!5243818 () Bool)

(assert (=> b!5243818 (= e!3262688 (as set.empty (Set Context!8460)))))

(declare-fun c!906554 () Bool)

(declare-fun c!906553 () Bool)

(declare-fun bm!371265 () Bool)

(declare-fun call!371271 () List!60837)

(assert (=> bm!371265 (= call!371272 (derivationStepZipperDown!294 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292)))))) (ite (or c!906553 c!906557) lt!2149388 (Context!8461 call!371271)) (h!67163 s!2326)))))

(declare-fun b!5243819 () Bool)

(assert (=> b!5243819 (= e!3262685 (set.union call!371272 call!371269))))

(declare-fun b!5243820 () Bool)

(declare-fun e!3262686 () (Set Context!8460))

(assert (=> b!5243820 (= e!3262686 call!371273)))

(declare-fun d!1689407 () Bool)

(declare-fun c!906556 () Bool)

(assert (=> d!1689407 (= c!906556 (and (is-ElementMatch!14846 (regTwo!30205 (regOne!30204 r!7292))) (= (c!906500 (regTwo!30205 (regOne!30204 r!7292))) (h!67163 s!2326))))))

(declare-fun e!3262687 () (Set Context!8460))

(assert (=> d!1689407 (= (derivationStepZipperDown!294 (regTwo!30205 (regOne!30204 r!7292)) lt!2149388 (h!67163 s!2326)) e!3262687)))

(declare-fun b!5243821 () Bool)

(declare-fun c!906555 () Bool)

(assert (=> b!5243821 (= c!906555 (is-Star!14846 (regTwo!30205 (regOne!30204 r!7292))))))

(assert (=> b!5243821 (= e!3262686 e!3262688)))

(declare-fun bm!371266 () Bool)

(declare-fun call!371270 () List!60837)

(declare-fun $colon$colon!1311 (List!60837 Regex!14846) List!60837)

(assert (=> bm!371266 (= call!371270 ($colon$colon!1311 (exprs!4730 lt!2149388) (ite (or c!906557 c!906554) (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (regTwo!30205 (regOne!30204 r!7292)))))))

(declare-fun b!5243822 () Bool)

(assert (=> b!5243822 (= e!3262687 e!3262685)))

(assert (=> b!5243822 (= c!906553 (is-Union!14846 (regTwo!30205 (regOne!30204 r!7292))))))

(declare-fun bm!371267 () Bool)

(assert (=> bm!371267 (= call!371273 call!371274)))

(declare-fun bm!371268 () Bool)

(assert (=> bm!371268 (= call!371269 (derivationStepZipperDown!294 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292)))) (ite c!906553 lt!2149388 (Context!8461 call!371270)) (h!67163 s!2326)))))

(declare-fun b!5243823 () Bool)

(assert (=> b!5243823 (= e!3262687 (set.insert lt!2149388 (as set.empty (Set Context!8460))))))

(declare-fun b!5243824 () Bool)

(assert (=> b!5243824 (= e!3262689 (nullable!5015 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292)))))))

(declare-fun b!5243825 () Bool)

(assert (=> b!5243825 (= e!3262690 e!3262686)))

(assert (=> b!5243825 (= c!906554 (is-Concat!23691 (regTwo!30205 (regOne!30204 r!7292))))))

(declare-fun bm!371269 () Bool)

(assert (=> bm!371269 (= call!371271 call!371270)))

(assert (= (and d!1689407 c!906556) b!5243823))

(assert (= (and d!1689407 (not c!906556)) b!5243822))

(assert (= (and b!5243822 c!906553) b!5243819))

(assert (= (and b!5243822 (not c!906553)) b!5243815))

(assert (= (and b!5243815 res!2225537) b!5243824))

(assert (= (and b!5243815 c!906557) b!5243817))

(assert (= (and b!5243815 (not c!906557)) b!5243825))

(assert (= (and b!5243825 c!906554) b!5243820))

(assert (= (and b!5243825 (not c!906554)) b!5243821))

(assert (= (and b!5243821 c!906555) b!5243816))

(assert (= (and b!5243821 (not c!906555)) b!5243818))

(assert (= (or b!5243820 b!5243816) bm!371269))

(assert (= (or b!5243820 b!5243816) bm!371267))

(assert (= (or b!5243817 bm!371269) bm!371266))

(assert (= (or b!5243817 bm!371267) bm!371264))

(assert (= (or b!5243819 b!5243817) bm!371268))

(assert (= (or b!5243819 bm!371264) bm!371265))

(declare-fun m!6287880 () Bool)

(assert (=> bm!371265 m!6287880))

(declare-fun m!6287882 () Bool)

(assert (=> bm!371268 m!6287882))

(declare-fun m!6287884 () Bool)

(assert (=> b!5243823 m!6287884))

(declare-fun m!6287886 () Bool)

(assert (=> bm!371266 m!6287886))

(declare-fun m!6287888 () Bool)

(assert (=> b!5243824 m!6287888))

(assert (=> b!5243553 d!1689407))

(declare-fun b!5243826 () Bool)

(declare-fun c!906562 () Bool)

(declare-fun e!3262695 () Bool)

(assert (=> b!5243826 (= c!906562 e!3262695)))

(declare-fun res!2225538 () Bool)

(assert (=> b!5243826 (=> (not res!2225538) (not e!3262695))))

(assert (=> b!5243826 (= res!2225538 (is-Concat!23691 (regOne!30205 (regOne!30204 r!7292))))))

(declare-fun e!3262691 () (Set Context!8460))

(declare-fun e!3262696 () (Set Context!8460))

(assert (=> b!5243826 (= e!3262691 e!3262696)))

(declare-fun b!5243827 () Bool)

(declare-fun e!3262694 () (Set Context!8460))

(declare-fun call!371279 () (Set Context!8460))

(assert (=> b!5243827 (= e!3262694 call!371279)))

(declare-fun bm!371270 () Bool)

(declare-fun call!371280 () (Set Context!8460))

(declare-fun call!371278 () (Set Context!8460))

(assert (=> bm!371270 (= call!371280 call!371278)))

(declare-fun b!5243828 () Bool)

(declare-fun call!371275 () (Set Context!8460))

(assert (=> b!5243828 (= e!3262696 (set.union call!371275 call!371280))))

(declare-fun b!5243829 () Bool)

(assert (=> b!5243829 (= e!3262694 (as set.empty (Set Context!8460)))))

(declare-fun c!906558 () Bool)

(declare-fun c!906559 () Bool)

(declare-fun bm!371271 () Bool)

(declare-fun call!371277 () List!60837)

(assert (=> bm!371271 (= call!371278 (derivationStepZipperDown!294 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292)))))) (ite (or c!906558 c!906562) lt!2149388 (Context!8461 call!371277)) (h!67163 s!2326)))))

(declare-fun b!5243830 () Bool)

(assert (=> b!5243830 (= e!3262691 (set.union call!371278 call!371275))))

(declare-fun b!5243831 () Bool)

(declare-fun e!3262692 () (Set Context!8460))

(assert (=> b!5243831 (= e!3262692 call!371279)))

(declare-fun d!1689409 () Bool)

(declare-fun c!906561 () Bool)

(assert (=> d!1689409 (= c!906561 (and (is-ElementMatch!14846 (regOne!30205 (regOne!30204 r!7292))) (= (c!906500 (regOne!30205 (regOne!30204 r!7292))) (h!67163 s!2326))))))

(declare-fun e!3262693 () (Set Context!8460))

(assert (=> d!1689409 (= (derivationStepZipperDown!294 (regOne!30205 (regOne!30204 r!7292)) lt!2149388 (h!67163 s!2326)) e!3262693)))

(declare-fun b!5243832 () Bool)

(declare-fun c!906560 () Bool)

(assert (=> b!5243832 (= c!906560 (is-Star!14846 (regOne!30205 (regOne!30204 r!7292))))))

(assert (=> b!5243832 (= e!3262692 e!3262694)))

(declare-fun call!371276 () List!60837)

(declare-fun bm!371272 () Bool)

(assert (=> bm!371272 (= call!371276 ($colon$colon!1311 (exprs!4730 lt!2149388) (ite (or c!906562 c!906559) (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (regOne!30205 (regOne!30204 r!7292)))))))

(declare-fun b!5243833 () Bool)

(assert (=> b!5243833 (= e!3262693 e!3262691)))

(assert (=> b!5243833 (= c!906558 (is-Union!14846 (regOne!30205 (regOne!30204 r!7292))))))

(declare-fun bm!371273 () Bool)

(assert (=> bm!371273 (= call!371279 call!371280)))

(declare-fun bm!371274 () Bool)

(assert (=> bm!371274 (= call!371275 (derivationStepZipperDown!294 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292)))) (ite c!906558 lt!2149388 (Context!8461 call!371276)) (h!67163 s!2326)))))

(declare-fun b!5243834 () Bool)

(assert (=> b!5243834 (= e!3262693 (set.insert lt!2149388 (as set.empty (Set Context!8460))))))

(declare-fun b!5243835 () Bool)

(assert (=> b!5243835 (= e!3262695 (nullable!5015 (regOne!30204 (regOne!30205 (regOne!30204 r!7292)))))))

(declare-fun b!5243836 () Bool)

(assert (=> b!5243836 (= e!3262696 e!3262692)))

(assert (=> b!5243836 (= c!906559 (is-Concat!23691 (regOne!30205 (regOne!30204 r!7292))))))

(declare-fun bm!371275 () Bool)

(assert (=> bm!371275 (= call!371277 call!371276)))

(assert (= (and d!1689409 c!906561) b!5243834))

(assert (= (and d!1689409 (not c!906561)) b!5243833))

(assert (= (and b!5243833 c!906558) b!5243830))

(assert (= (and b!5243833 (not c!906558)) b!5243826))

(assert (= (and b!5243826 res!2225538) b!5243835))

(assert (= (and b!5243826 c!906562) b!5243828))

(assert (= (and b!5243826 (not c!906562)) b!5243836))

(assert (= (and b!5243836 c!906559) b!5243831))

(assert (= (and b!5243836 (not c!906559)) b!5243832))

(assert (= (and b!5243832 c!906560) b!5243827))

(assert (= (and b!5243832 (not c!906560)) b!5243829))

(assert (= (or b!5243831 b!5243827) bm!371275))

(assert (= (or b!5243831 b!5243827) bm!371273))

(assert (= (or b!5243828 bm!371275) bm!371272))

(assert (= (or b!5243828 bm!371273) bm!371270))

(assert (= (or b!5243830 b!5243828) bm!371274))

(assert (= (or b!5243830 bm!371270) bm!371271))

(declare-fun m!6287890 () Bool)

(assert (=> bm!371271 m!6287890))

(declare-fun m!6287892 () Bool)

(assert (=> bm!371274 m!6287892))

(assert (=> b!5243834 m!6287884))

(declare-fun m!6287894 () Bool)

(assert (=> bm!371272 m!6287894))

(declare-fun m!6287896 () Bool)

(assert (=> b!5243835 m!6287896))

(assert (=> b!5243553 d!1689409))

(declare-fun e!3262704 () Bool)

(declare-fun d!1689411 () Bool)

(assert (=> d!1689411 (= (matchZipper!1090 (set.union lt!2149391 lt!2149380) (t!374020 s!2326)) e!3262704)))

(declare-fun res!2225542 () Bool)

(assert (=> d!1689411 (=> res!2225542 e!3262704)))

(assert (=> d!1689411 (= res!2225542 (matchZipper!1090 lt!2149391 (t!374020 s!2326)))))

(declare-fun lt!2149537 () Unit!152782)

(assert (=> d!1689411 (= lt!2149537 (choose!39049 lt!2149391 lt!2149380 (t!374020 s!2326)))))

(assert (=> d!1689411 (= (lemmaZipperConcatMatchesSameAsBothZippers!83 lt!2149391 lt!2149380 (t!374020 s!2326)) lt!2149537)))

(declare-fun b!5243848 () Bool)

(assert (=> b!5243848 (= e!3262704 (matchZipper!1090 lt!2149380 (t!374020 s!2326)))))

(assert (= (and d!1689411 (not res!2225542)) b!5243848))

(assert (=> d!1689411 m!6287700))

(assert (=> d!1689411 m!6287642))

(declare-fun m!6287898 () Bool)

(assert (=> d!1689411 m!6287898))

(assert (=> b!5243848 m!6287574))

(assert (=> b!5243575 d!1689411))

(declare-fun d!1689413 () Bool)

(declare-fun c!906567 () Bool)

(assert (=> d!1689413 (= c!906567 (isEmpty!32653 (t!374020 s!2326)))))

(declare-fun e!3262705 () Bool)

(assert (=> d!1689413 (= (matchZipper!1090 lt!2149391 (t!374020 s!2326)) e!3262705)))

(declare-fun b!5243849 () Bool)

(assert (=> b!5243849 (= e!3262705 (nullableZipper!1261 lt!2149391))))

(declare-fun b!5243850 () Bool)

(assert (=> b!5243850 (= e!3262705 (matchZipper!1090 (derivationStepZipper!1105 lt!2149391 (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))))))

(assert (= (and d!1689413 c!906567) b!5243849))

(assert (= (and d!1689413 (not c!906567)) b!5243850))

(assert (=> d!1689413 m!6287836))

(declare-fun m!6287900 () Bool)

(assert (=> b!5243849 m!6287900))

(assert (=> b!5243850 m!6287840))

(assert (=> b!5243850 m!6287840))

(declare-fun m!6287902 () Bool)

(assert (=> b!5243850 m!6287902))

(assert (=> b!5243850 m!6287844))

(assert (=> b!5243850 m!6287902))

(assert (=> b!5243850 m!6287844))

(declare-fun m!6287904 () Bool)

(assert (=> b!5243850 m!6287904))

(assert (=> b!5243575 d!1689413))

(declare-fun d!1689415 () Bool)

(declare-fun c!906568 () Bool)

(assert (=> d!1689415 (= c!906568 (isEmpty!32653 (t!374020 s!2326)))))

(declare-fun e!3262706 () Bool)

(assert (=> d!1689415 (= (matchZipper!1090 (set.union lt!2149391 lt!2149380) (t!374020 s!2326)) e!3262706)))

(declare-fun b!5243851 () Bool)

(assert (=> b!5243851 (= e!3262706 (nullableZipper!1261 (set.union lt!2149391 lt!2149380)))))

(declare-fun b!5243852 () Bool)

(assert (=> b!5243852 (= e!3262706 (matchZipper!1090 (derivationStepZipper!1105 (set.union lt!2149391 lt!2149380) (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))))))

(assert (= (and d!1689415 c!906568) b!5243851))

(assert (= (and d!1689415 (not c!906568)) b!5243852))

(assert (=> d!1689415 m!6287836))

(declare-fun m!6287906 () Bool)

(assert (=> b!5243851 m!6287906))

(assert (=> b!5243852 m!6287840))

(assert (=> b!5243852 m!6287840))

(declare-fun m!6287908 () Bool)

(assert (=> b!5243852 m!6287908))

(assert (=> b!5243852 m!6287844))

(assert (=> b!5243852 m!6287908))

(assert (=> b!5243852 m!6287844))

(declare-fun m!6287910 () Bool)

(assert (=> b!5243852 m!6287910))

(assert (=> b!5243575 d!1689415))

(declare-fun bs!1216351 () Bool)

(declare-fun d!1689417 () Bool)

(assert (= bs!1216351 (and d!1689417 b!5243561)))

(declare-fun lambda!263845 () Int)

(assert (=> bs!1216351 (= lambda!263845 lambda!263815)))

(declare-fun bs!1216352 () Bool)

(assert (= bs!1216352 (and d!1689417 d!1689403)))

(assert (=> bs!1216352 (= lambda!263845 lambda!263836)))

(assert (=> d!1689417 (= (inv!80363 (h!67162 zl!343)) (forall!14270 (exprs!4730 (h!67162 zl!343)) lambda!263845))))

(declare-fun bs!1216353 () Bool)

(assert (= bs!1216353 d!1689417))

(declare-fun m!6287920 () Bool)

(assert (=> bs!1216353 m!6287920))

(assert (=> b!5243573 d!1689417))

(assert (=> b!5243552 d!1689395))

(declare-fun b!5243913 () Bool)

(declare-fun e!3262740 () Option!14957)

(assert (=> b!5243913 (= e!3262740 (Some!14956 (tuple2!64091 Nil!60715 s!2326)))))

(declare-fun b!5243914 () Bool)

(declare-fun res!2225579 () Bool)

(declare-fun e!3262742 () Bool)

(assert (=> b!5243914 (=> (not res!2225579) (not e!3262742))))

(declare-fun lt!2149550 () Option!14957)

(declare-fun get!20870 (Option!14957) tuple2!64090)

(assert (=> b!5243914 (= res!2225579 (matchR!7031 (regTwo!30204 r!7292) (_2!35348 (get!20870 lt!2149550))))))

(declare-fun b!5243915 () Bool)

(declare-fun ++!13241 (List!60839 List!60839) List!60839)

(assert (=> b!5243915 (= e!3262742 (= (++!13241 (_1!35348 (get!20870 lt!2149550)) (_2!35348 (get!20870 lt!2149550))) s!2326))))

(declare-fun b!5243916 () Bool)

(declare-fun res!2225577 () Bool)

(assert (=> b!5243916 (=> (not res!2225577) (not e!3262742))))

(assert (=> b!5243916 (= res!2225577 (matchR!7031 (regOne!30204 r!7292) (_1!35348 (get!20870 lt!2149550))))))

(declare-fun b!5243917 () Bool)

(declare-fun lt!2149552 () Unit!152782)

(declare-fun lt!2149551 () Unit!152782)

(assert (=> b!5243917 (= lt!2149552 lt!2149551)))

(assert (=> b!5243917 (= (++!13241 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715)) (t!374020 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1656 (List!60839 C!29962 List!60839 List!60839) Unit!152782)

(assert (=> b!5243917 (= lt!2149551 (lemmaMoveElementToOtherListKeepsConcatEq!1656 Nil!60715 (h!67163 s!2326) (t!374020 s!2326) s!2326))))

(declare-fun e!3262738 () Option!14957)

(assert (=> b!5243917 (= e!3262738 (findConcatSeparation!1371 (regOne!30204 r!7292) (regTwo!30204 r!7292) (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715)) (t!374020 s!2326) s!2326))))

(declare-fun d!1689421 () Bool)

(declare-fun e!3262741 () Bool)

(assert (=> d!1689421 e!3262741))

(declare-fun res!2225578 () Bool)

(assert (=> d!1689421 (=> res!2225578 e!3262741)))

(assert (=> d!1689421 (= res!2225578 e!3262742)))

(declare-fun res!2225581 () Bool)

(assert (=> d!1689421 (=> (not res!2225581) (not e!3262742))))

(assert (=> d!1689421 (= res!2225581 (isDefined!11660 lt!2149550))))

(assert (=> d!1689421 (= lt!2149550 e!3262740)))

(declare-fun c!906583 () Bool)

(declare-fun e!3262739 () Bool)

(assert (=> d!1689421 (= c!906583 e!3262739)))

(declare-fun res!2225580 () Bool)

(assert (=> d!1689421 (=> (not res!2225580) (not e!3262739))))

(assert (=> d!1689421 (= res!2225580 (matchR!7031 (regOne!30204 r!7292) Nil!60715))))

(assert (=> d!1689421 (validRegex!6582 (regOne!30204 r!7292))))

(assert (=> d!1689421 (= (findConcatSeparation!1371 (regOne!30204 r!7292) (regTwo!30204 r!7292) Nil!60715 s!2326 s!2326) lt!2149550)))

(declare-fun b!5243918 () Bool)

(assert (=> b!5243918 (= e!3262739 (matchR!7031 (regTwo!30204 r!7292) s!2326))))

(declare-fun b!5243919 () Bool)

(assert (=> b!5243919 (= e!3262738 None!14956)))

(declare-fun b!5243920 () Bool)

(assert (=> b!5243920 (= e!3262741 (not (isDefined!11660 lt!2149550)))))

(declare-fun b!5243921 () Bool)

(assert (=> b!5243921 (= e!3262740 e!3262738)))

(declare-fun c!906582 () Bool)

(assert (=> b!5243921 (= c!906582 (is-Nil!60715 s!2326))))

(assert (= (and d!1689421 res!2225580) b!5243918))

(assert (= (and d!1689421 c!906583) b!5243913))

(assert (= (and d!1689421 (not c!906583)) b!5243921))

(assert (= (and b!5243921 c!906582) b!5243919))

(assert (= (and b!5243921 (not c!906582)) b!5243917))

(assert (= (and d!1689421 res!2225581) b!5243916))

(assert (= (and b!5243916 res!2225577) b!5243914))

(assert (= (and b!5243914 res!2225579) b!5243915))

(assert (= (and d!1689421 (not res!2225578)) b!5243920))

(declare-fun m!6287936 () Bool)

(assert (=> b!5243914 m!6287936))

(declare-fun m!6287938 () Bool)

(assert (=> b!5243914 m!6287938))

(declare-fun m!6287940 () Bool)

(assert (=> b!5243920 m!6287940))

(assert (=> b!5243916 m!6287936))

(declare-fun m!6287942 () Bool)

(assert (=> b!5243916 m!6287942))

(assert (=> b!5243915 m!6287936))

(declare-fun m!6287944 () Bool)

(assert (=> b!5243915 m!6287944))

(assert (=> d!1689421 m!6287940))

(declare-fun m!6287946 () Bool)

(assert (=> d!1689421 m!6287946))

(declare-fun m!6287948 () Bool)

(assert (=> d!1689421 m!6287948))

(declare-fun m!6287950 () Bool)

(assert (=> b!5243917 m!6287950))

(assert (=> b!5243917 m!6287950))

(declare-fun m!6287952 () Bool)

(assert (=> b!5243917 m!6287952))

(declare-fun m!6287954 () Bool)

(assert (=> b!5243917 m!6287954))

(assert (=> b!5243917 m!6287950))

(declare-fun m!6287956 () Bool)

(assert (=> b!5243917 m!6287956))

(declare-fun m!6287958 () Bool)

(assert (=> b!5243918 m!6287958))

(assert (=> b!5243550 d!1689421))

(declare-fun d!1689427 () Bool)

(declare-fun choose!39052 (Int) Bool)

(assert (=> d!1689427 (= (Exists!2027 lambda!263812) (choose!39052 lambda!263812))))

(declare-fun bs!1216355 () Bool)

(assert (= bs!1216355 d!1689427))

(declare-fun m!6287960 () Bool)

(assert (=> bs!1216355 m!6287960))

(assert (=> b!5243550 d!1689427))

(declare-fun d!1689429 () Bool)

(assert (=> d!1689429 (= (Exists!2027 lambda!263813) (choose!39052 lambda!263813))))

(declare-fun bs!1216356 () Bool)

(assert (= bs!1216356 d!1689429))

(declare-fun m!6287962 () Bool)

(assert (=> bs!1216356 m!6287962))

(assert (=> b!5243550 d!1689429))

(declare-fun bs!1216359 () Bool)

(declare-fun d!1689431 () Bool)

(assert (= bs!1216359 (and d!1689431 b!5243550)))

(declare-fun lambda!263851 () Int)

(assert (=> bs!1216359 (= lambda!263851 lambda!263812)))

(assert (=> bs!1216359 (not (= lambda!263851 lambda!263813))))

(assert (=> d!1689431 true))

(assert (=> d!1689431 true))

(assert (=> d!1689431 true))

(assert (=> d!1689431 (= (isDefined!11660 (findConcatSeparation!1371 (regOne!30204 r!7292) (regTwo!30204 r!7292) Nil!60715 s!2326 s!2326)) (Exists!2027 lambda!263851))))

(declare-fun lt!2149558 () Unit!152782)

(declare-fun choose!39053 (Regex!14846 Regex!14846 List!60839) Unit!152782)

(assert (=> d!1689431 (= lt!2149558 (choose!39053 (regOne!30204 r!7292) (regTwo!30204 r!7292) s!2326))))

(assert (=> d!1689431 (validRegex!6582 (regOne!30204 r!7292))))

(assert (=> d!1689431 (= (lemmaFindConcatSeparationEquivalentToExists!1135 (regOne!30204 r!7292) (regTwo!30204 r!7292) s!2326) lt!2149558)))

(declare-fun bs!1216360 () Bool)

(assert (= bs!1216360 d!1689431))

(assert (=> bs!1216360 m!6287632))

(assert (=> bs!1216360 m!6287948))

(declare-fun m!6287990 () Bool)

(assert (=> bs!1216360 m!6287990))

(declare-fun m!6287992 () Bool)

(assert (=> bs!1216360 m!6287992))

(assert (=> bs!1216360 m!6287632))

(assert (=> bs!1216360 m!6287634))

(assert (=> b!5243550 d!1689431))

(declare-fun bs!1216361 () Bool)

(declare-fun d!1689441 () Bool)

(assert (= bs!1216361 (and d!1689441 b!5243550)))

(declare-fun lambda!263856 () Int)

(assert (=> bs!1216361 (= lambda!263856 lambda!263812)))

(assert (=> bs!1216361 (not (= lambda!263856 lambda!263813))))

(declare-fun bs!1216362 () Bool)

(assert (= bs!1216362 (and d!1689441 d!1689431)))

(assert (=> bs!1216362 (= lambda!263856 lambda!263851)))

(assert (=> d!1689441 true))

(assert (=> d!1689441 true))

(assert (=> d!1689441 true))

(declare-fun lambda!263857 () Int)

(assert (=> bs!1216361 (not (= lambda!263857 lambda!263812))))

(assert (=> bs!1216361 (= lambda!263857 lambda!263813)))

(assert (=> bs!1216362 (not (= lambda!263857 lambda!263851))))

(declare-fun bs!1216363 () Bool)

(assert (= bs!1216363 d!1689441))

(assert (=> bs!1216363 (not (= lambda!263857 lambda!263856))))

(assert (=> d!1689441 true))

(assert (=> d!1689441 true))

(assert (=> d!1689441 true))

(assert (=> d!1689441 (= (Exists!2027 lambda!263856) (Exists!2027 lambda!263857))))

(declare-fun lt!2149561 () Unit!152782)

(declare-fun choose!39054 (Regex!14846 Regex!14846 List!60839) Unit!152782)

(assert (=> d!1689441 (= lt!2149561 (choose!39054 (regOne!30204 r!7292) (regTwo!30204 r!7292) s!2326))))

(assert (=> d!1689441 (validRegex!6582 (regOne!30204 r!7292))))

(assert (=> d!1689441 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!681 (regOne!30204 r!7292) (regTwo!30204 r!7292) s!2326) lt!2149561)))

(declare-fun m!6288012 () Bool)

(assert (=> bs!1216363 m!6288012))

(declare-fun m!6288014 () Bool)

(assert (=> bs!1216363 m!6288014))

(declare-fun m!6288016 () Bool)

(assert (=> bs!1216363 m!6288016))

(assert (=> bs!1216363 m!6287948))

(assert (=> b!5243550 d!1689441))

(declare-fun d!1689447 () Bool)

(declare-fun isEmpty!32655 (Option!14957) Bool)

(assert (=> d!1689447 (= (isDefined!11660 (findConcatSeparation!1371 (regOne!30204 r!7292) (regTwo!30204 r!7292) Nil!60715 s!2326 s!2326)) (not (isEmpty!32655 (findConcatSeparation!1371 (regOne!30204 r!7292) (regTwo!30204 r!7292) Nil!60715 s!2326 s!2326))))))

(declare-fun bs!1216364 () Bool)

(assert (= bs!1216364 d!1689447))

(assert (=> bs!1216364 m!6287632))

(declare-fun m!6288018 () Bool)

(assert (=> bs!1216364 m!6288018))

(assert (=> b!5243550 d!1689447))

(declare-fun bs!1216366 () Bool)

(declare-fun b!5244075 () Bool)

(assert (= bs!1216366 (and b!5244075 d!1689441)))

(declare-fun lambda!263862 () Int)

(assert (=> bs!1216366 (not (= lambda!263862 lambda!263856))))

(declare-fun bs!1216367 () Bool)

(assert (= bs!1216367 (and b!5244075 b!5243550)))

(assert (=> bs!1216367 (not (= lambda!263862 lambda!263813))))

(assert (=> bs!1216367 (not (= lambda!263862 lambda!263812))))

(declare-fun bs!1216368 () Bool)

(assert (= bs!1216368 (and b!5244075 d!1689431)))

(assert (=> bs!1216368 (not (= lambda!263862 lambda!263851))))

(assert (=> bs!1216366 (not (= lambda!263862 lambda!263857))))

(assert (=> b!5244075 true))

(assert (=> b!5244075 true))

(declare-fun bs!1216369 () Bool)

(declare-fun b!5244065 () Bool)

(assert (= bs!1216369 (and b!5244065 b!5244075)))

(declare-fun lambda!263863 () Int)

(assert (=> bs!1216369 (not (= lambda!263863 lambda!263862))))

(declare-fun bs!1216370 () Bool)

(assert (= bs!1216370 (and b!5244065 d!1689441)))

(assert (=> bs!1216370 (not (= lambda!263863 lambda!263856))))

(declare-fun bs!1216371 () Bool)

(assert (= bs!1216371 (and b!5244065 b!5243550)))

(assert (=> bs!1216371 (= lambda!263863 lambda!263813)))

(assert (=> bs!1216371 (not (= lambda!263863 lambda!263812))))

(declare-fun bs!1216372 () Bool)

(assert (= bs!1216372 (and b!5244065 d!1689431)))

(assert (=> bs!1216372 (not (= lambda!263863 lambda!263851))))

(assert (=> bs!1216370 (= lambda!263863 lambda!263857)))

(assert (=> b!5244065 true))

(assert (=> b!5244065 true))

(declare-fun e!3262832 () Bool)

(declare-fun call!371323 () Bool)

(assert (=> b!5244065 (= e!3262832 call!371323)))

(declare-fun b!5244066 () Bool)

(declare-fun e!3262834 () Bool)

(declare-fun e!3262830 () Bool)

(assert (=> b!5244066 (= e!3262834 e!3262830)))

(declare-fun res!2225636 () Bool)

(assert (=> b!5244066 (= res!2225636 (matchRSpec!1949 (regOne!30205 r!7292) s!2326))))

(assert (=> b!5244066 (=> res!2225636 e!3262830)))

(declare-fun b!5244067 () Bool)

(declare-fun e!3262835 () Bool)

(declare-fun e!3262831 () Bool)

(assert (=> b!5244067 (= e!3262835 e!3262831)))

(declare-fun res!2225635 () Bool)

(assert (=> b!5244067 (= res!2225635 (not (is-EmptyLang!14846 r!7292)))))

(assert (=> b!5244067 (=> (not res!2225635) (not e!3262831))))

(declare-fun bm!371318 () Bool)

(declare-fun call!371324 () Bool)

(assert (=> bm!371318 (= call!371324 (isEmpty!32653 s!2326))))

(declare-fun bm!371319 () Bool)

(declare-fun c!906629 () Bool)

(assert (=> bm!371319 (= call!371323 (Exists!2027 (ite c!906629 lambda!263862 lambda!263863)))))

(declare-fun b!5244068 () Bool)

(declare-fun res!2225637 () Bool)

(declare-fun e!3262829 () Bool)

(assert (=> b!5244068 (=> res!2225637 e!3262829)))

(assert (=> b!5244068 (= res!2225637 call!371324)))

(assert (=> b!5244068 (= e!3262832 e!3262829)))

(declare-fun b!5244069 () Bool)

(assert (=> b!5244069 (= e!3262835 call!371324)))

(declare-fun d!1689449 () Bool)

(declare-fun c!906630 () Bool)

(assert (=> d!1689449 (= c!906630 (is-EmptyExpr!14846 r!7292))))

(assert (=> d!1689449 (= (matchRSpec!1949 r!7292 s!2326) e!3262835)))

(declare-fun b!5244070 () Bool)

(declare-fun c!906631 () Bool)

(assert (=> b!5244070 (= c!906631 (is-ElementMatch!14846 r!7292))))

(declare-fun e!3262833 () Bool)

(assert (=> b!5244070 (= e!3262831 e!3262833)))

(declare-fun b!5244071 () Bool)

(assert (=> b!5244071 (= e!3262833 (= s!2326 (Cons!60715 (c!906500 r!7292) Nil!60715)))))

(declare-fun b!5244072 () Bool)

(assert (=> b!5244072 (= e!3262834 e!3262832)))

(assert (=> b!5244072 (= c!906629 (is-Star!14846 r!7292))))

(declare-fun b!5244073 () Bool)

(declare-fun c!906632 () Bool)

(assert (=> b!5244073 (= c!906632 (is-Union!14846 r!7292))))

(assert (=> b!5244073 (= e!3262833 e!3262834)))

(declare-fun b!5244074 () Bool)

(assert (=> b!5244074 (= e!3262830 (matchRSpec!1949 (regTwo!30205 r!7292) s!2326))))

(assert (=> b!5244075 (= e!3262829 call!371323)))

(assert (= (and d!1689449 c!906630) b!5244069))

(assert (= (and d!1689449 (not c!906630)) b!5244067))

(assert (= (and b!5244067 res!2225635) b!5244070))

(assert (= (and b!5244070 c!906631) b!5244071))

(assert (= (and b!5244070 (not c!906631)) b!5244073))

(assert (= (and b!5244073 c!906632) b!5244066))

(assert (= (and b!5244073 (not c!906632)) b!5244072))

(assert (= (and b!5244066 (not res!2225636)) b!5244074))

(assert (= (and b!5244072 c!906629) b!5244068))

(assert (= (and b!5244072 (not c!906629)) b!5244065))

(assert (= (and b!5244068 (not res!2225637)) b!5244075))

(assert (= (or b!5244075 b!5244065) bm!371319))

(assert (= (or b!5244069 b!5244068) bm!371318))

(declare-fun m!6288056 () Bool)

(assert (=> b!5244066 m!6288056))

(declare-fun m!6288058 () Bool)

(assert (=> bm!371318 m!6288058))

(declare-fun m!6288060 () Bool)

(assert (=> bm!371319 m!6288060))

(declare-fun m!6288062 () Bool)

(assert (=> b!5244074 m!6288062))

(assert (=> b!5243572 d!1689449))

(declare-fun b!5244124 () Bool)

(declare-fun res!2225658 () Bool)

(declare-fun e!3262863 () Bool)

(assert (=> b!5244124 (=> res!2225658 e!3262863)))

(declare-fun e!3262865 () Bool)

(assert (=> b!5244124 (= res!2225658 e!3262865)))

(declare-fun res!2225662 () Bool)

(assert (=> b!5244124 (=> (not res!2225662) (not e!3262865))))

(declare-fun lt!2149578 () Bool)

(assert (=> b!5244124 (= res!2225662 lt!2149578)))

(declare-fun b!5244125 () Bool)

(declare-fun e!3262866 () Bool)

(assert (=> b!5244125 (= e!3262866 (not lt!2149578))))

(declare-fun b!5244126 () Bool)

(declare-fun e!3262867 () Bool)

(assert (=> b!5244126 (= e!3262863 e!3262867)))

(declare-fun res!2225665 () Bool)

(assert (=> b!5244126 (=> (not res!2225665) (not e!3262867))))

(assert (=> b!5244126 (= res!2225665 (not lt!2149578))))

(declare-fun b!5244127 () Bool)

(declare-fun e!3262862 () Bool)

(assert (=> b!5244127 (= e!3262862 (not (= (head!11240 s!2326) (c!906500 r!7292))))))

(declare-fun b!5244128 () Bool)

(declare-fun res!2225659 () Bool)

(assert (=> b!5244128 (=> (not res!2225659) (not e!3262865))))

(assert (=> b!5244128 (= res!2225659 (isEmpty!32653 (tail!10337 s!2326)))))

(declare-fun b!5244129 () Bool)

(declare-fun res!2225664 () Bool)

(assert (=> b!5244129 (=> res!2225664 e!3262862)))

(assert (=> b!5244129 (= res!2225664 (not (isEmpty!32653 (tail!10337 s!2326))))))

(declare-fun b!5244130 () Bool)

(assert (=> b!5244130 (= e!3262867 e!3262862)))

(declare-fun res!2225660 () Bool)

(assert (=> b!5244130 (=> res!2225660 e!3262862)))

(declare-fun call!371331 () Bool)

(assert (=> b!5244130 (= res!2225660 call!371331)))

(declare-fun b!5244131 () Bool)

(declare-fun e!3262864 () Bool)

(assert (=> b!5244131 (= e!3262864 e!3262866)))

(declare-fun c!906647 () Bool)

(assert (=> b!5244131 (= c!906647 (is-EmptyLang!14846 r!7292))))

(declare-fun b!5244132 () Bool)

(assert (=> b!5244132 (= e!3262864 (= lt!2149578 call!371331))))

(declare-fun b!5244133 () Bool)

(declare-fun e!3262868 () Bool)

(assert (=> b!5244133 (= e!3262868 (nullable!5015 r!7292))))

(declare-fun b!5244134 () Bool)

(declare-fun derivativeStep!4083 (Regex!14846 C!29962) Regex!14846)

(assert (=> b!5244134 (= e!3262868 (matchR!7031 (derivativeStep!4083 r!7292 (head!11240 s!2326)) (tail!10337 s!2326)))))

(declare-fun d!1689467 () Bool)

(assert (=> d!1689467 e!3262864))

(declare-fun c!906649 () Bool)

(assert (=> d!1689467 (= c!906649 (is-EmptyExpr!14846 r!7292))))

(assert (=> d!1689467 (= lt!2149578 e!3262868)))

(declare-fun c!906648 () Bool)

(assert (=> d!1689467 (= c!906648 (isEmpty!32653 s!2326))))

(assert (=> d!1689467 (validRegex!6582 r!7292)))

(assert (=> d!1689467 (= (matchR!7031 r!7292 s!2326) lt!2149578)))

(declare-fun b!5244135 () Bool)

(assert (=> b!5244135 (= e!3262865 (= (head!11240 s!2326) (c!906500 r!7292)))))

(declare-fun b!5244136 () Bool)

(declare-fun res!2225663 () Bool)

(assert (=> b!5244136 (=> res!2225663 e!3262863)))

(assert (=> b!5244136 (= res!2225663 (not (is-ElementMatch!14846 r!7292)))))

(assert (=> b!5244136 (= e!3262866 e!3262863)))

(declare-fun b!5244137 () Bool)

(declare-fun res!2225661 () Bool)

(assert (=> b!5244137 (=> (not res!2225661) (not e!3262865))))

(assert (=> b!5244137 (= res!2225661 (not call!371331))))

(declare-fun bm!371326 () Bool)

(assert (=> bm!371326 (= call!371331 (isEmpty!32653 s!2326))))

(assert (= (and d!1689467 c!906648) b!5244133))

(assert (= (and d!1689467 (not c!906648)) b!5244134))

(assert (= (and d!1689467 c!906649) b!5244132))

(assert (= (and d!1689467 (not c!906649)) b!5244131))

(assert (= (and b!5244131 c!906647) b!5244125))

(assert (= (and b!5244131 (not c!906647)) b!5244136))

(assert (= (and b!5244136 (not res!2225663)) b!5244124))

(assert (= (and b!5244124 res!2225662) b!5244137))

(assert (= (and b!5244137 res!2225661) b!5244128))

(assert (= (and b!5244128 res!2225659) b!5244135))

(assert (= (and b!5244124 (not res!2225658)) b!5244126))

(assert (= (and b!5244126 res!2225665) b!5244130))

(assert (= (and b!5244130 (not res!2225660)) b!5244129))

(assert (= (and b!5244129 (not res!2225664)) b!5244127))

(assert (= (or b!5244132 b!5244137 b!5244130) bm!371326))

(declare-fun m!6288092 () Bool)

(assert (=> b!5244129 m!6288092))

(assert (=> b!5244129 m!6288092))

(declare-fun m!6288094 () Bool)

(assert (=> b!5244129 m!6288094))

(assert (=> b!5244128 m!6288092))

(assert (=> b!5244128 m!6288092))

(assert (=> b!5244128 m!6288094))

(declare-fun m!6288096 () Bool)

(assert (=> b!5244134 m!6288096))

(assert (=> b!5244134 m!6288096))

(declare-fun m!6288098 () Bool)

(assert (=> b!5244134 m!6288098))

(assert (=> b!5244134 m!6288092))

(assert (=> b!5244134 m!6288098))

(assert (=> b!5244134 m!6288092))

(declare-fun m!6288100 () Bool)

(assert (=> b!5244134 m!6288100))

(assert (=> b!5244127 m!6288096))

(assert (=> d!1689467 m!6288058))

(assert (=> d!1689467 m!6287580))

(assert (=> b!5244135 m!6288096))

(assert (=> bm!371326 m!6288058))

(declare-fun m!6288102 () Bool)

(assert (=> b!5244133 m!6288102))

(assert (=> b!5243572 d!1689467))

(declare-fun d!1689487 () Bool)

(assert (=> d!1689487 (= (matchR!7031 r!7292 s!2326) (matchRSpec!1949 r!7292 s!2326))))

(declare-fun lt!2149583 () Unit!152782)

(declare-fun choose!39057 (Regex!14846 List!60839) Unit!152782)

(assert (=> d!1689487 (= lt!2149583 (choose!39057 r!7292 s!2326))))

(assert (=> d!1689487 (validRegex!6582 r!7292)))

(assert (=> d!1689487 (= (mainMatchTheorem!1949 r!7292 s!2326) lt!2149583)))

(declare-fun bs!1216379 () Bool)

(assert (= bs!1216379 d!1689487))

(assert (=> bs!1216379 m!6287694))

(assert (=> bs!1216379 m!6287692))

(declare-fun m!6288104 () Bool)

(assert (=> bs!1216379 m!6288104))

(assert (=> bs!1216379 m!6287580))

(assert (=> b!5243572 d!1689487))

(declare-fun d!1689489 () Bool)

(declare-fun choose!39058 ((Set Context!8460) Int) (Set Context!8460))

(assert (=> d!1689489 (= (flatMap!573 z!1189 lambda!263814) (choose!39058 z!1189 lambda!263814))))

(declare-fun bs!1216380 () Bool)

(assert (= bs!1216380 d!1689489))

(declare-fun m!6288106 () Bool)

(assert (=> bs!1216380 m!6288106))

(assert (=> b!5243551 d!1689489))

(declare-fun d!1689491 () Bool)

(declare-fun nullableFct!1413 (Regex!14846) Bool)

(assert (=> d!1689491 (= (nullable!5015 (h!67161 (exprs!4730 (h!67162 zl!343)))) (nullableFct!1413 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun bs!1216381 () Bool)

(assert (= bs!1216381 d!1689491))

(declare-fun m!6288108 () Bool)

(assert (=> bs!1216381 m!6288108))

(assert (=> b!5243551 d!1689491))

(declare-fun call!371336 () (Set Context!8460))

(declare-fun e!3262903 () (Set Context!8460))

(declare-fun b!5244191 () Bool)

(assert (=> b!5244191 (= e!3262903 (set.union call!371336 (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (h!67163 s!2326))))))

(declare-fun b!5244192 () Bool)

(declare-fun e!3262902 () Bool)

(assert (=> b!5244192 (= e!3262902 (nullable!5015 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))))))

(declare-fun d!1689493 () Bool)

(declare-fun c!906671 () Bool)

(assert (=> d!1689493 (= c!906671 e!3262902)))

(declare-fun res!2225677 () Bool)

(assert (=> d!1689493 (=> (not res!2225677) (not e!3262902))))

(assert (=> d!1689493 (= res!2225677 (is-Cons!60713 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))))))

(assert (=> d!1689493 (= (derivationStepZipperUp!218 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))) (h!67163 s!2326)) e!3262903)))

(declare-fun b!5244193 () Bool)

(declare-fun e!3262901 () (Set Context!8460))

(assert (=> b!5244193 (= e!3262903 e!3262901)))

(declare-fun c!906672 () Bool)

(assert (=> b!5244193 (= c!906672 (is-Cons!60713 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))))))

(declare-fun b!5244194 () Bool)

(assert (=> b!5244194 (= e!3262901 call!371336)))

(declare-fun bm!371331 () Bool)

(assert (=> bm!371331 (= call!371336 (derivationStepZipperDown!294 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))) (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (h!67163 s!2326)))))

(declare-fun b!5244195 () Bool)

(assert (=> b!5244195 (= e!3262901 (as set.empty (Set Context!8460)))))

(assert (= (and d!1689493 res!2225677) b!5244192))

(assert (= (and d!1689493 c!906671) b!5244191))

(assert (= (and d!1689493 (not c!906671)) b!5244193))

(assert (= (and b!5244193 c!906672) b!5244194))

(assert (= (and b!5244193 (not c!906672)) b!5244195))

(assert (= (or b!5244191 b!5244194) bm!371331))

(declare-fun m!6288138 () Bool)

(assert (=> b!5244191 m!6288138))

(declare-fun m!6288140 () Bool)

(assert (=> b!5244192 m!6288140))

(declare-fun m!6288146 () Bool)

(assert (=> bm!371331 m!6288146))

(assert (=> b!5243551 d!1689493))

(declare-fun call!371337 () (Set Context!8460))

(declare-fun e!3262909 () (Set Context!8460))

(declare-fun b!5244196 () Bool)

(assert (=> b!5244196 (= e!3262909 (set.union call!371337 (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343)))) (h!67163 s!2326))))))

(declare-fun b!5244197 () Bool)

(declare-fun e!3262908 () Bool)

(assert (=> b!5244197 (= e!3262908 (nullable!5015 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun d!1689501 () Bool)

(declare-fun c!906674 () Bool)

(assert (=> d!1689501 (= c!906674 e!3262908)))

(declare-fun res!2225680 () Bool)

(assert (=> d!1689501 (=> (not res!2225680) (not e!3262908))))

(assert (=> d!1689501 (= res!2225680 (is-Cons!60713 (exprs!4730 (h!67162 zl!343))))))

(assert (=> d!1689501 (= (derivationStepZipperUp!218 (h!67162 zl!343) (h!67163 s!2326)) e!3262909)))

(declare-fun b!5244198 () Bool)

(declare-fun e!3262907 () (Set Context!8460))

(assert (=> b!5244198 (= e!3262909 e!3262907)))

(declare-fun c!906676 () Bool)

(assert (=> b!5244198 (= c!906676 (is-Cons!60713 (exprs!4730 (h!67162 zl!343))))))

(declare-fun b!5244200 () Bool)

(assert (=> b!5244200 (= e!3262907 call!371337)))

(declare-fun bm!371332 () Bool)

(assert (=> bm!371332 (= call!371337 (derivationStepZipperDown!294 (h!67161 (exprs!4730 (h!67162 zl!343))) (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343)))) (h!67163 s!2326)))))

(declare-fun b!5244203 () Bool)

(assert (=> b!5244203 (= e!3262907 (as set.empty (Set Context!8460)))))

(assert (= (and d!1689501 res!2225680) b!5244197))

(assert (= (and d!1689501 c!906674) b!5244196))

(assert (= (and d!1689501 (not c!906674)) b!5244198))

(assert (= (and b!5244198 c!906676) b!5244200))

(assert (= (and b!5244198 (not c!906676)) b!5244203))

(assert (= (or b!5244196 b!5244200) bm!371332))

(declare-fun m!6288150 () Bool)

(assert (=> b!5244196 m!6288150))

(assert (=> b!5244197 m!6287596))

(declare-fun m!6288152 () Bool)

(assert (=> bm!371332 m!6288152))

(assert (=> b!5243551 d!1689501))

(declare-fun d!1689505 () Bool)

(declare-fun dynLambda!23993 (Int Context!8460) (Set Context!8460))

(assert (=> d!1689505 (= (flatMap!573 z!1189 lambda!263814) (dynLambda!23993 lambda!263814 (h!67162 zl!343)))))

(declare-fun lt!2149589 () Unit!152782)

(declare-fun choose!39060 ((Set Context!8460) Context!8460 Int) Unit!152782)

(assert (=> d!1689505 (= lt!2149589 (choose!39060 z!1189 (h!67162 zl!343) lambda!263814))))

(assert (=> d!1689505 (= z!1189 (set.insert (h!67162 zl!343) (as set.empty (Set Context!8460))))))

(assert (=> d!1689505 (= (lemmaFlatMapOnSingletonSet!105 z!1189 (h!67162 zl!343) lambda!263814) lt!2149589)))

(declare-fun b_lambda!202601 () Bool)

(assert (=> (not b_lambda!202601) (not d!1689505)))

(declare-fun bs!1216395 () Bool)

(assert (= bs!1216395 d!1689505))

(assert (=> bs!1216395 m!6287598))

(declare-fun m!6288174 () Bool)

(assert (=> bs!1216395 m!6288174))

(declare-fun m!6288176 () Bool)

(assert (=> bs!1216395 m!6288176))

(declare-fun m!6288178 () Bool)

(assert (=> bs!1216395 m!6288178))

(assert (=> b!5243551 d!1689505))

(declare-fun call!371338 () (Set Context!8460))

(declare-fun e!3262915 () (Set Context!8460))

(declare-fun b!5244211 () Bool)

(assert (=> b!5244211 (= e!3262915 (set.union call!371338 (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 lt!2149388))) (h!67163 s!2326))))))

(declare-fun b!5244212 () Bool)

(declare-fun e!3262914 () Bool)

(assert (=> b!5244212 (= e!3262914 (nullable!5015 (h!67161 (exprs!4730 lt!2149388))))))

(declare-fun d!1689509 () Bool)

(declare-fun c!906679 () Bool)

(assert (=> d!1689509 (= c!906679 e!3262914)))

(declare-fun res!2225681 () Bool)

(assert (=> d!1689509 (=> (not res!2225681) (not e!3262914))))

(assert (=> d!1689509 (= res!2225681 (is-Cons!60713 (exprs!4730 lt!2149388)))))

(assert (=> d!1689509 (= (derivationStepZipperUp!218 lt!2149388 (h!67163 s!2326)) e!3262915)))

(declare-fun b!5244213 () Bool)

(declare-fun e!3262913 () (Set Context!8460))

(assert (=> b!5244213 (= e!3262915 e!3262913)))

(declare-fun c!906680 () Bool)

(assert (=> b!5244213 (= c!906680 (is-Cons!60713 (exprs!4730 lt!2149388)))))

(declare-fun b!5244214 () Bool)

(assert (=> b!5244214 (= e!3262913 call!371338)))

(declare-fun bm!371333 () Bool)

(assert (=> bm!371333 (= call!371338 (derivationStepZipperDown!294 (h!67161 (exprs!4730 lt!2149388)) (Context!8461 (t!374018 (exprs!4730 lt!2149388))) (h!67163 s!2326)))))

(declare-fun b!5244215 () Bool)

(assert (=> b!5244215 (= e!3262913 (as set.empty (Set Context!8460)))))

(assert (= (and d!1689509 res!2225681) b!5244212))

(assert (= (and d!1689509 c!906679) b!5244211))

(assert (= (and d!1689509 (not c!906679)) b!5244213))

(assert (= (and b!5244213 c!906680) b!5244214))

(assert (= (and b!5244213 (not c!906680)) b!5244215))

(assert (= (or b!5244211 b!5244214) bm!371333))

(declare-fun m!6288180 () Bool)

(assert (=> b!5244211 m!6288180))

(declare-fun m!6288182 () Bool)

(assert (=> b!5244212 m!6288182))

(declare-fun m!6288184 () Bool)

(assert (=> bm!371333 m!6288184))

(assert (=> b!5243551 d!1689509))

(declare-fun b!5244216 () Bool)

(declare-fun c!906685 () Bool)

(declare-fun e!3262920 () Bool)

(assert (=> b!5244216 (= c!906685 e!3262920)))

(declare-fun res!2225682 () Bool)

(assert (=> b!5244216 (=> (not res!2225682) (not e!3262920))))

(assert (=> b!5244216 (= res!2225682 (is-Concat!23691 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun e!3262916 () (Set Context!8460))

(declare-fun e!3262921 () (Set Context!8460))

(assert (=> b!5244216 (= e!3262916 e!3262921)))

(declare-fun b!5244217 () Bool)

(declare-fun e!3262919 () (Set Context!8460))

(declare-fun call!371343 () (Set Context!8460))

(assert (=> b!5244217 (= e!3262919 call!371343)))

(declare-fun bm!371334 () Bool)

(declare-fun call!371344 () (Set Context!8460))

(declare-fun call!371342 () (Set Context!8460))

(assert (=> bm!371334 (= call!371344 call!371342)))

(declare-fun b!5244218 () Bool)

(declare-fun call!371339 () (Set Context!8460))

(assert (=> b!5244218 (= e!3262921 (set.union call!371339 call!371344))))

(declare-fun b!5244219 () Bool)

(assert (=> b!5244219 (= e!3262919 (as set.empty (Set Context!8460)))))

(declare-fun c!906681 () Bool)

(declare-fun call!371341 () List!60837)

(declare-fun c!906682 () Bool)

(declare-fun bm!371335 () Bool)

(assert (=> bm!371335 (= call!371342 (derivationStepZipperDown!294 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343))))))) (ite (or c!906681 c!906685) lt!2149388 (Context!8461 call!371341)) (h!67163 s!2326)))))

(declare-fun b!5244220 () Bool)

(assert (=> b!5244220 (= e!3262916 (set.union call!371342 call!371339))))

(declare-fun b!5244221 () Bool)

(declare-fun e!3262917 () (Set Context!8460))

(assert (=> b!5244221 (= e!3262917 call!371343)))

(declare-fun d!1689511 () Bool)

(declare-fun c!906684 () Bool)

(assert (=> d!1689511 (= c!906684 (and (is-ElementMatch!14846 (h!67161 (exprs!4730 (h!67162 zl!343)))) (= (c!906500 (h!67161 (exprs!4730 (h!67162 zl!343)))) (h!67163 s!2326))))))

(declare-fun e!3262918 () (Set Context!8460))

(assert (=> d!1689511 (= (derivationStepZipperDown!294 (h!67161 (exprs!4730 (h!67162 zl!343))) lt!2149388 (h!67163 s!2326)) e!3262918)))

(declare-fun b!5244222 () Bool)

(declare-fun c!906683 () Bool)

(assert (=> b!5244222 (= c!906683 (is-Star!14846 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(assert (=> b!5244222 (= e!3262917 e!3262919)))

(declare-fun call!371340 () List!60837)

(declare-fun bm!371336 () Bool)

(assert (=> bm!371336 (= call!371340 ($colon$colon!1311 (exprs!4730 lt!2149388) (ite (or c!906685 c!906682) (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (h!67161 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun b!5244223 () Bool)

(assert (=> b!5244223 (= e!3262918 e!3262916)))

(assert (=> b!5244223 (= c!906681 (is-Union!14846 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun bm!371337 () Bool)

(assert (=> bm!371337 (= call!371343 call!371344)))

(declare-fun bm!371338 () Bool)

(assert (=> bm!371338 (= call!371339 (derivationStepZipperDown!294 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343))))) (ite c!906681 lt!2149388 (Context!8461 call!371340)) (h!67163 s!2326)))))

(declare-fun b!5244224 () Bool)

(assert (=> b!5244224 (= e!3262918 (set.insert lt!2149388 (as set.empty (Set Context!8460))))))

(declare-fun b!5244225 () Bool)

(assert (=> b!5244225 (= e!3262920 (nullable!5015 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun b!5244226 () Bool)

(assert (=> b!5244226 (= e!3262921 e!3262917)))

(assert (=> b!5244226 (= c!906682 (is-Concat!23691 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun bm!371339 () Bool)

(assert (=> bm!371339 (= call!371341 call!371340)))

(assert (= (and d!1689511 c!906684) b!5244224))

(assert (= (and d!1689511 (not c!906684)) b!5244223))

(assert (= (and b!5244223 c!906681) b!5244220))

(assert (= (and b!5244223 (not c!906681)) b!5244216))

(assert (= (and b!5244216 res!2225682) b!5244225))

(assert (= (and b!5244216 c!906685) b!5244218))

(assert (= (and b!5244216 (not c!906685)) b!5244226))

(assert (= (and b!5244226 c!906682) b!5244221))

(assert (= (and b!5244226 (not c!906682)) b!5244222))

(assert (= (and b!5244222 c!906683) b!5244217))

(assert (= (and b!5244222 (not c!906683)) b!5244219))

(assert (= (or b!5244221 b!5244217) bm!371339))

(assert (= (or b!5244221 b!5244217) bm!371337))

(assert (= (or b!5244218 bm!371339) bm!371336))

(assert (= (or b!5244218 bm!371337) bm!371334))

(assert (= (or b!5244220 b!5244218) bm!371338))

(assert (= (or b!5244220 bm!371334) bm!371335))

(declare-fun m!6288186 () Bool)

(assert (=> bm!371335 m!6288186))

(declare-fun m!6288188 () Bool)

(assert (=> bm!371338 m!6288188))

(assert (=> b!5244224 m!6287884))

(declare-fun m!6288190 () Bool)

(assert (=> bm!371336 m!6288190))

(declare-fun m!6288192 () Bool)

(assert (=> b!5244225 m!6288192))

(assert (=> b!5243551 d!1689511))

(declare-fun d!1689513 () Bool)

(assert (=> d!1689513 (= (isEmpty!32649 (t!374019 zl!343)) (is-Nil!60714 (t!374019 zl!343)))))

(assert (=> b!5243540 d!1689513))

(declare-fun bs!1216414 () Bool)

(declare-fun d!1689515 () Bool)

(assert (= bs!1216414 (and d!1689515 b!5243561)))

(declare-fun lambda!263875 () Int)

(assert (=> bs!1216414 (= lambda!263875 lambda!263815)))

(declare-fun bs!1216415 () Bool)

(assert (= bs!1216415 (and d!1689515 d!1689403)))

(assert (=> bs!1216415 (= lambda!263875 lambda!263836)))

(declare-fun bs!1216416 () Bool)

(assert (= bs!1216416 (and d!1689515 d!1689417)))

(assert (=> bs!1216416 (= lambda!263875 lambda!263845)))

(declare-fun b!5244296 () Bool)

(declare-fun e!3262964 () Regex!14846)

(assert (=> b!5244296 (= e!3262964 (h!67161 (unfocusZipperList!288 zl!343)))))

(declare-fun b!5244297 () Bool)

(declare-fun e!3262966 () Bool)

(assert (=> b!5244297 (= e!3262966 (isEmpty!32650 (t!374018 (unfocusZipperList!288 zl!343))))))

(declare-fun b!5244298 () Bool)

(declare-fun e!3262962 () Regex!14846)

(assert (=> b!5244298 (= e!3262964 e!3262962)))

(declare-fun c!906709 () Bool)

(assert (=> b!5244298 (= c!906709 (is-Cons!60713 (unfocusZipperList!288 zl!343)))))

(declare-fun b!5244299 () Bool)

(declare-fun e!3262965 () Bool)

(declare-fun lt!2149600 () Regex!14846)

(declare-fun isUnion!237 (Regex!14846) Bool)

(assert (=> b!5244299 (= e!3262965 (isUnion!237 lt!2149600))))

(declare-fun b!5244300 () Bool)

(assert (=> b!5244300 (= e!3262965 (= lt!2149600 (head!11241 (unfocusZipperList!288 zl!343))))))

(declare-fun b!5244301 () Bool)

(declare-fun e!3262963 () Bool)

(declare-fun isEmptyLang!805 (Regex!14846) Bool)

(assert (=> b!5244301 (= e!3262963 (isEmptyLang!805 lt!2149600))))

(declare-fun b!5244302 () Bool)

(assert (=> b!5244302 (= e!3262963 e!3262965)))

(declare-fun c!906708 () Bool)

(assert (=> b!5244302 (= c!906708 (isEmpty!32650 (tail!10338 (unfocusZipperList!288 zl!343))))))

(declare-fun b!5244303 () Bool)

(assert (=> b!5244303 (= e!3262962 (Union!14846 (h!67161 (unfocusZipperList!288 zl!343)) (generalisedUnion!775 (t!374018 (unfocusZipperList!288 zl!343)))))))

(declare-fun e!3262961 () Bool)

(assert (=> d!1689515 e!3262961))

(declare-fun res!2225709 () Bool)

(assert (=> d!1689515 (=> (not res!2225709) (not e!3262961))))

(assert (=> d!1689515 (= res!2225709 (validRegex!6582 lt!2149600))))

(assert (=> d!1689515 (= lt!2149600 e!3262964)))

(declare-fun c!906711 () Bool)

(assert (=> d!1689515 (= c!906711 e!3262966)))

(declare-fun res!2225708 () Bool)

(assert (=> d!1689515 (=> (not res!2225708) (not e!3262966))))

(assert (=> d!1689515 (= res!2225708 (is-Cons!60713 (unfocusZipperList!288 zl!343)))))

(assert (=> d!1689515 (forall!14270 (unfocusZipperList!288 zl!343) lambda!263875)))

(assert (=> d!1689515 (= (generalisedUnion!775 (unfocusZipperList!288 zl!343)) lt!2149600)))

(declare-fun b!5244304 () Bool)

(assert (=> b!5244304 (= e!3262961 e!3262963)))

(declare-fun c!906710 () Bool)

(assert (=> b!5244304 (= c!906710 (isEmpty!32650 (unfocusZipperList!288 zl!343)))))

(declare-fun b!5244305 () Bool)

(assert (=> b!5244305 (= e!3262962 EmptyLang!14846)))

(assert (= (and d!1689515 res!2225708) b!5244297))

(assert (= (and d!1689515 c!906711) b!5244296))

(assert (= (and d!1689515 (not c!906711)) b!5244298))

(assert (= (and b!5244298 c!906709) b!5244303))

(assert (= (and b!5244298 (not c!906709)) b!5244305))

(assert (= (and d!1689515 res!2225709) b!5244304))

(assert (= (and b!5244304 c!906710) b!5244301))

(assert (= (and b!5244304 (not c!906710)) b!5244302))

(assert (= (and b!5244302 c!906708) b!5244300))

(assert (= (and b!5244302 (not c!906708)) b!5244299))

(declare-fun m!6288240 () Bool)

(assert (=> b!5244297 m!6288240))

(declare-fun m!6288242 () Bool)

(assert (=> b!5244303 m!6288242))

(assert (=> b!5244300 m!6287626))

(declare-fun m!6288244 () Bool)

(assert (=> b!5244300 m!6288244))

(assert (=> b!5244302 m!6287626))

(declare-fun m!6288246 () Bool)

(assert (=> b!5244302 m!6288246))

(assert (=> b!5244302 m!6288246))

(declare-fun m!6288248 () Bool)

(assert (=> b!5244302 m!6288248))

(declare-fun m!6288250 () Bool)

(assert (=> b!5244301 m!6288250))

(declare-fun m!6288252 () Bool)

(assert (=> d!1689515 m!6288252))

(assert (=> d!1689515 m!6287626))

(declare-fun m!6288254 () Bool)

(assert (=> d!1689515 m!6288254))

(assert (=> b!5244304 m!6287626))

(declare-fun m!6288256 () Bool)

(assert (=> b!5244304 m!6288256))

(declare-fun m!6288258 () Bool)

(assert (=> b!5244299 m!6288258))

(assert (=> b!5243541 d!1689515))

(declare-fun bs!1216417 () Bool)

(declare-fun d!1689531 () Bool)

(assert (= bs!1216417 (and d!1689531 b!5243561)))

(declare-fun lambda!263878 () Int)

(assert (=> bs!1216417 (= lambda!263878 lambda!263815)))

(declare-fun bs!1216418 () Bool)

(assert (= bs!1216418 (and d!1689531 d!1689403)))

(assert (=> bs!1216418 (= lambda!263878 lambda!263836)))

(declare-fun bs!1216419 () Bool)

(assert (= bs!1216419 (and d!1689531 d!1689417)))

(assert (=> bs!1216419 (= lambda!263878 lambda!263845)))

(declare-fun bs!1216420 () Bool)

(assert (= bs!1216420 (and d!1689531 d!1689515)))

(assert (=> bs!1216420 (= lambda!263878 lambda!263875)))

(declare-fun lt!2149603 () List!60837)

(assert (=> d!1689531 (forall!14270 lt!2149603 lambda!263878)))

(declare-fun e!3262969 () List!60837)

(assert (=> d!1689531 (= lt!2149603 e!3262969)))

(declare-fun c!906714 () Bool)

(assert (=> d!1689531 (= c!906714 (is-Cons!60714 zl!343))))

(assert (=> d!1689531 (= (unfocusZipperList!288 zl!343) lt!2149603)))

(declare-fun b!5244310 () Bool)

(assert (=> b!5244310 (= e!3262969 (Cons!60713 (generalisedConcat!515 (exprs!4730 (h!67162 zl!343))) (unfocusZipperList!288 (t!374019 zl!343))))))

(declare-fun b!5244311 () Bool)

(assert (=> b!5244311 (= e!3262969 Nil!60713)))

(assert (= (and d!1689531 c!906714) b!5244310))

(assert (= (and d!1689531 (not c!906714)) b!5244311))

(declare-fun m!6288260 () Bool)

(assert (=> d!1689531 m!6288260))

(assert (=> b!5244310 m!6287658))

(declare-fun m!6288262 () Bool)

(assert (=> b!5244310 m!6288262))

(assert (=> b!5243541 d!1689531))

(declare-fun e!3262970 () Bool)

(declare-fun d!1689533 () Bool)

(assert (=> d!1689533 (= (matchZipper!1090 (set.union lt!2149359 lt!2149380) (t!374020 s!2326)) e!3262970)))

(declare-fun res!2225710 () Bool)

(assert (=> d!1689533 (=> res!2225710 e!3262970)))

(assert (=> d!1689533 (= res!2225710 (matchZipper!1090 lt!2149359 (t!374020 s!2326)))))

(declare-fun lt!2149604 () Unit!152782)

(assert (=> d!1689533 (= lt!2149604 (choose!39049 lt!2149359 lt!2149380 (t!374020 s!2326)))))

(assert (=> d!1689533 (= (lemmaZipperConcatMatchesSameAsBothZippers!83 lt!2149359 lt!2149380 (t!374020 s!2326)) lt!2149604)))

(declare-fun b!5244312 () Bool)

(assert (=> b!5244312 (= e!3262970 (matchZipper!1090 lt!2149380 (t!374020 s!2326)))))

(assert (= (and d!1689533 (not res!2225710)) b!5244312))

(assert (=> d!1689533 m!6287654))

(assert (=> d!1689533 m!6287646))

(declare-fun m!6288264 () Bool)

(assert (=> d!1689533 m!6288264))

(assert (=> b!5244312 m!6287574))

(assert (=> b!5243559 d!1689533))

(declare-fun d!1689535 () Bool)

(declare-fun c!906715 () Bool)

(assert (=> d!1689535 (= c!906715 (isEmpty!32653 (t!374020 s!2326)))))

(declare-fun e!3262971 () Bool)

(assert (=> d!1689535 (= (matchZipper!1090 (set.union lt!2149359 lt!2149380) (t!374020 s!2326)) e!3262971)))

(declare-fun b!5244313 () Bool)

(assert (=> b!5244313 (= e!3262971 (nullableZipper!1261 (set.union lt!2149359 lt!2149380)))))

(declare-fun b!5244314 () Bool)

(assert (=> b!5244314 (= e!3262971 (matchZipper!1090 (derivationStepZipper!1105 (set.union lt!2149359 lt!2149380) (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))))))

(assert (= (and d!1689535 c!906715) b!5244313))

(assert (= (and d!1689535 (not c!906715)) b!5244314))

(assert (=> d!1689535 m!6287836))

(declare-fun m!6288266 () Bool)

(assert (=> b!5244313 m!6288266))

(assert (=> b!5244314 m!6287840))

(assert (=> b!5244314 m!6287840))

(declare-fun m!6288268 () Bool)

(assert (=> b!5244314 m!6288268))

(assert (=> b!5244314 m!6287844))

(assert (=> b!5244314 m!6288268))

(assert (=> b!5244314 m!6287844))

(declare-fun m!6288270 () Bool)

(assert (=> b!5244314 m!6288270))

(assert (=> b!5243559 d!1689535))

(declare-fun d!1689537 () Bool)

(declare-fun c!906716 () Bool)

(assert (=> d!1689537 (= c!906716 (isEmpty!32653 s!2326))))

(declare-fun e!3262972 () Bool)

(assert (=> d!1689537 (= (matchZipper!1090 lt!2149355 s!2326) e!3262972)))

(declare-fun b!5244315 () Bool)

(assert (=> b!5244315 (= e!3262972 (nullableZipper!1261 lt!2149355))))

(declare-fun b!5244316 () Bool)

(assert (=> b!5244316 (= e!3262972 (matchZipper!1090 (derivationStepZipper!1105 lt!2149355 (head!11240 s!2326)) (tail!10337 s!2326)))))

(assert (= (and d!1689537 c!906716) b!5244315))

(assert (= (and d!1689537 (not c!906716)) b!5244316))

(assert (=> d!1689537 m!6288058))

(declare-fun m!6288272 () Bool)

(assert (=> b!5244315 m!6288272))

(assert (=> b!5244316 m!6288096))

(assert (=> b!5244316 m!6288096))

(declare-fun m!6288274 () Bool)

(assert (=> b!5244316 m!6288274))

(assert (=> b!5244316 m!6288092))

(assert (=> b!5244316 m!6288274))

(assert (=> b!5244316 m!6288092))

(declare-fun m!6288276 () Bool)

(assert (=> b!5244316 m!6288276))

(assert (=> b!5243557 d!1689537))

(declare-fun bs!1216421 () Bool)

(declare-fun b!5244327 () Bool)

(assert (= bs!1216421 (and b!5244327 b!5244075)))

(declare-fun lambda!263879 () Int)

(assert (=> bs!1216421 (= (and (= (reg!15175 lt!2149381) (reg!15175 r!7292)) (= lt!2149381 r!7292)) (= lambda!263879 lambda!263862))))

(declare-fun bs!1216422 () Bool)

(assert (= bs!1216422 (and b!5244327 d!1689441)))

(assert (=> bs!1216422 (not (= lambda!263879 lambda!263856))))

(declare-fun bs!1216423 () Bool)

(assert (= bs!1216423 (and b!5244327 b!5243550)))

(assert (=> bs!1216423 (not (= lambda!263879 lambda!263813))))

(declare-fun bs!1216424 () Bool)

(assert (= bs!1216424 (and b!5244327 b!5244065)))

(assert (=> bs!1216424 (not (= lambda!263879 lambda!263863))))

(assert (=> bs!1216423 (not (= lambda!263879 lambda!263812))))

(declare-fun bs!1216425 () Bool)

(assert (= bs!1216425 (and b!5244327 d!1689431)))

(assert (=> bs!1216425 (not (= lambda!263879 lambda!263851))))

(assert (=> bs!1216422 (not (= lambda!263879 lambda!263857))))

(assert (=> b!5244327 true))

(assert (=> b!5244327 true))

(declare-fun bs!1216426 () Bool)

(declare-fun b!5244317 () Bool)

(assert (= bs!1216426 (and b!5244317 b!5244075)))

(declare-fun lambda!263880 () Int)

(assert (=> bs!1216426 (not (= lambda!263880 lambda!263862))))

(declare-fun bs!1216427 () Bool)

(assert (= bs!1216427 (and b!5244317 d!1689441)))

(assert (=> bs!1216427 (not (= lambda!263880 lambda!263856))))

(declare-fun bs!1216428 () Bool)

(assert (= bs!1216428 (and b!5244317 b!5244327)))

(assert (=> bs!1216428 (not (= lambda!263880 lambda!263879))))

(declare-fun bs!1216429 () Bool)

(assert (= bs!1216429 (and b!5244317 b!5243550)))

(assert (=> bs!1216429 (= (and (= (regOne!30204 lt!2149381) (regOne!30204 r!7292)) (= (regTwo!30204 lt!2149381) (regTwo!30204 r!7292))) (= lambda!263880 lambda!263813))))

(declare-fun bs!1216430 () Bool)

(assert (= bs!1216430 (and b!5244317 b!5244065)))

(assert (=> bs!1216430 (= (and (= (regOne!30204 lt!2149381) (regOne!30204 r!7292)) (= (regTwo!30204 lt!2149381) (regTwo!30204 r!7292))) (= lambda!263880 lambda!263863))))

(assert (=> bs!1216429 (not (= lambda!263880 lambda!263812))))

(declare-fun bs!1216431 () Bool)

(assert (= bs!1216431 (and b!5244317 d!1689431)))

(assert (=> bs!1216431 (not (= lambda!263880 lambda!263851))))

(assert (=> bs!1216427 (= (and (= (regOne!30204 lt!2149381) (regOne!30204 r!7292)) (= (regTwo!30204 lt!2149381) (regTwo!30204 r!7292))) (= lambda!263880 lambda!263857))))

(assert (=> b!5244317 true))

(assert (=> b!5244317 true))

(declare-fun e!3262976 () Bool)

(declare-fun call!371349 () Bool)

(assert (=> b!5244317 (= e!3262976 call!371349)))

(declare-fun b!5244318 () Bool)

(declare-fun e!3262978 () Bool)

(declare-fun e!3262974 () Bool)

(assert (=> b!5244318 (= e!3262978 e!3262974)))

(declare-fun res!2225712 () Bool)

(assert (=> b!5244318 (= res!2225712 (matchRSpec!1949 (regOne!30205 lt!2149381) s!2326))))

(assert (=> b!5244318 (=> res!2225712 e!3262974)))

(declare-fun b!5244319 () Bool)

(declare-fun e!3262979 () Bool)

(declare-fun e!3262975 () Bool)

(assert (=> b!5244319 (= e!3262979 e!3262975)))

(declare-fun res!2225711 () Bool)

(assert (=> b!5244319 (= res!2225711 (not (is-EmptyLang!14846 lt!2149381)))))

(assert (=> b!5244319 (=> (not res!2225711) (not e!3262975))))

(declare-fun bm!371344 () Bool)

(declare-fun call!371350 () Bool)

(assert (=> bm!371344 (= call!371350 (isEmpty!32653 s!2326))))

(declare-fun c!906717 () Bool)

(declare-fun bm!371345 () Bool)

(assert (=> bm!371345 (= call!371349 (Exists!2027 (ite c!906717 lambda!263879 lambda!263880)))))

(declare-fun b!5244320 () Bool)

(declare-fun res!2225713 () Bool)

(declare-fun e!3262973 () Bool)

(assert (=> b!5244320 (=> res!2225713 e!3262973)))

(assert (=> b!5244320 (= res!2225713 call!371350)))

(assert (=> b!5244320 (= e!3262976 e!3262973)))

(declare-fun b!5244321 () Bool)

(assert (=> b!5244321 (= e!3262979 call!371350)))

(declare-fun d!1689539 () Bool)

(declare-fun c!906718 () Bool)

(assert (=> d!1689539 (= c!906718 (is-EmptyExpr!14846 lt!2149381))))

(assert (=> d!1689539 (= (matchRSpec!1949 lt!2149381 s!2326) e!3262979)))

(declare-fun b!5244322 () Bool)

(declare-fun c!906719 () Bool)

(assert (=> b!5244322 (= c!906719 (is-ElementMatch!14846 lt!2149381))))

(declare-fun e!3262977 () Bool)

(assert (=> b!5244322 (= e!3262975 e!3262977)))

(declare-fun b!5244323 () Bool)

(assert (=> b!5244323 (= e!3262977 (= s!2326 (Cons!60715 (c!906500 lt!2149381) Nil!60715)))))

(declare-fun b!5244324 () Bool)

(assert (=> b!5244324 (= e!3262978 e!3262976)))

(assert (=> b!5244324 (= c!906717 (is-Star!14846 lt!2149381))))

(declare-fun b!5244325 () Bool)

(declare-fun c!906720 () Bool)

(assert (=> b!5244325 (= c!906720 (is-Union!14846 lt!2149381))))

(assert (=> b!5244325 (= e!3262977 e!3262978)))

(declare-fun b!5244326 () Bool)

(assert (=> b!5244326 (= e!3262974 (matchRSpec!1949 (regTwo!30205 lt!2149381) s!2326))))

(assert (=> b!5244327 (= e!3262973 call!371349)))

(assert (= (and d!1689539 c!906718) b!5244321))

(assert (= (and d!1689539 (not c!906718)) b!5244319))

(assert (= (and b!5244319 res!2225711) b!5244322))

(assert (= (and b!5244322 c!906719) b!5244323))

(assert (= (and b!5244322 (not c!906719)) b!5244325))

(assert (= (and b!5244325 c!906720) b!5244318))

(assert (= (and b!5244325 (not c!906720)) b!5244324))

(assert (= (and b!5244318 (not res!2225712)) b!5244326))

(assert (= (and b!5244324 c!906717) b!5244320))

(assert (= (and b!5244324 (not c!906717)) b!5244317))

(assert (= (and b!5244320 (not res!2225713)) b!5244327))

(assert (= (or b!5244327 b!5244317) bm!371345))

(assert (= (or b!5244321 b!5244320) bm!371344))

(declare-fun m!6288278 () Bool)

(assert (=> b!5244318 m!6288278))

(assert (=> bm!371344 m!6288058))

(declare-fun m!6288280 () Bool)

(assert (=> bm!371345 m!6288280))

(declare-fun m!6288282 () Bool)

(assert (=> b!5244326 m!6288282))

(assert (=> b!5243556 d!1689539))

(declare-fun b!5244342 () Bool)

(declare-fun res!2225722 () Bool)

(declare-fun e!3262991 () Bool)

(assert (=> b!5244342 (=> res!2225722 e!3262991)))

(declare-fun e!3262993 () Bool)

(assert (=> b!5244342 (= res!2225722 e!3262993)))

(declare-fun res!2225726 () Bool)

(assert (=> b!5244342 (=> (not res!2225726) (not e!3262993))))

(declare-fun lt!2149611 () Bool)

(assert (=> b!5244342 (= res!2225726 lt!2149611)))

(declare-fun b!5244343 () Bool)

(declare-fun e!3262994 () Bool)

(assert (=> b!5244343 (= e!3262994 (not lt!2149611))))

(declare-fun b!5244344 () Bool)

(declare-fun e!3262995 () Bool)

(assert (=> b!5244344 (= e!3262991 e!3262995)))

(declare-fun res!2225731 () Bool)

(assert (=> b!5244344 (=> (not res!2225731) (not e!3262995))))

(assert (=> b!5244344 (= res!2225731 (not lt!2149611))))

(declare-fun b!5244347 () Bool)

(declare-fun e!3262990 () Bool)

(assert (=> b!5244347 (= e!3262990 (not (= (head!11240 s!2326) (c!906500 lt!2149350))))))

(declare-fun b!5244348 () Bool)

(declare-fun res!2225723 () Bool)

(assert (=> b!5244348 (=> (not res!2225723) (not e!3262993))))

(assert (=> b!5244348 (= res!2225723 (isEmpty!32653 (tail!10337 s!2326)))))

(declare-fun b!5244349 () Bool)

(declare-fun res!2225730 () Bool)

(assert (=> b!5244349 (=> res!2225730 e!3262990)))

(assert (=> b!5244349 (= res!2225730 (not (isEmpty!32653 (tail!10337 s!2326))))))

(declare-fun b!5244350 () Bool)

(assert (=> b!5244350 (= e!3262995 e!3262990)))

(declare-fun res!2225724 () Bool)

(assert (=> b!5244350 (=> res!2225724 e!3262990)))

(declare-fun call!371351 () Bool)

(assert (=> b!5244350 (= res!2225724 call!371351)))

(declare-fun b!5244351 () Bool)

(declare-fun e!3262992 () Bool)

(assert (=> b!5244351 (= e!3262992 e!3262994)))

(declare-fun c!906725 () Bool)

(assert (=> b!5244351 (= c!906725 (is-EmptyLang!14846 lt!2149350))))

(declare-fun b!5244352 () Bool)

(assert (=> b!5244352 (= e!3262992 (= lt!2149611 call!371351))))

(declare-fun b!5244353 () Bool)

(declare-fun e!3262996 () Bool)

(assert (=> b!5244353 (= e!3262996 (nullable!5015 lt!2149350))))

(declare-fun b!5244354 () Bool)

(assert (=> b!5244354 (= e!3262996 (matchR!7031 (derivativeStep!4083 lt!2149350 (head!11240 s!2326)) (tail!10337 s!2326)))))

(declare-fun d!1689541 () Bool)

(assert (=> d!1689541 e!3262992))

(declare-fun c!906727 () Bool)

(assert (=> d!1689541 (= c!906727 (is-EmptyExpr!14846 lt!2149350))))

(assert (=> d!1689541 (= lt!2149611 e!3262996)))

(declare-fun c!906726 () Bool)

(assert (=> d!1689541 (= c!906726 (isEmpty!32653 s!2326))))

(assert (=> d!1689541 (validRegex!6582 lt!2149350)))

(assert (=> d!1689541 (= (matchR!7031 lt!2149350 s!2326) lt!2149611)))

(declare-fun b!5244355 () Bool)

(assert (=> b!5244355 (= e!3262993 (= (head!11240 s!2326) (c!906500 lt!2149350)))))

(declare-fun b!5244356 () Bool)

(declare-fun res!2225729 () Bool)

(assert (=> b!5244356 (=> res!2225729 e!3262991)))

(assert (=> b!5244356 (= res!2225729 (not (is-ElementMatch!14846 lt!2149350)))))

(assert (=> b!5244356 (= e!3262994 e!3262991)))

(declare-fun b!5244357 () Bool)

(declare-fun res!2225725 () Bool)

(assert (=> b!5244357 (=> (not res!2225725) (not e!3262993))))

(assert (=> b!5244357 (= res!2225725 (not call!371351))))

(declare-fun bm!371346 () Bool)

(assert (=> bm!371346 (= call!371351 (isEmpty!32653 s!2326))))

(assert (= (and d!1689541 c!906726) b!5244353))

(assert (= (and d!1689541 (not c!906726)) b!5244354))

(assert (= (and d!1689541 c!906727) b!5244352))

(assert (= (and d!1689541 (not c!906727)) b!5244351))

(assert (= (and b!5244351 c!906725) b!5244343))

(assert (= (and b!5244351 (not c!906725)) b!5244356))

(assert (= (and b!5244356 (not res!2225729)) b!5244342))

(assert (= (and b!5244342 res!2225726) b!5244357))

(assert (= (and b!5244357 res!2225725) b!5244348))

(assert (= (and b!5244348 res!2225723) b!5244355))

(assert (= (and b!5244342 (not res!2225722)) b!5244344))

(assert (= (and b!5244344 res!2225731) b!5244350))

(assert (= (and b!5244350 (not res!2225724)) b!5244349))

(assert (= (and b!5244349 (not res!2225730)) b!5244347))

(assert (= (or b!5244352 b!5244357 b!5244350) bm!371346))

(assert (=> b!5244349 m!6288092))

(assert (=> b!5244349 m!6288092))

(assert (=> b!5244349 m!6288094))

(assert (=> b!5244348 m!6288092))

(assert (=> b!5244348 m!6288092))

(assert (=> b!5244348 m!6288094))

(assert (=> b!5244354 m!6288096))

(assert (=> b!5244354 m!6288096))

(declare-fun m!6288284 () Bool)

(assert (=> b!5244354 m!6288284))

(assert (=> b!5244354 m!6288092))

(assert (=> b!5244354 m!6288284))

(assert (=> b!5244354 m!6288092))

(declare-fun m!6288286 () Bool)

(assert (=> b!5244354 m!6288286))

(assert (=> b!5244347 m!6288096))

(assert (=> d!1689541 m!6288058))

(declare-fun m!6288288 () Bool)

(assert (=> d!1689541 m!6288288))

(assert (=> b!5244355 m!6288096))

(assert (=> bm!371346 m!6288058))

(declare-fun m!6288290 () Bool)

(assert (=> b!5244353 m!6288290))

(assert (=> b!5243556 d!1689541))

(declare-fun bs!1216432 () Bool)

(declare-fun d!1689543 () Bool)

(assert (= bs!1216432 (and d!1689543 d!1689417)))

(declare-fun lambda!263881 () Int)

(assert (=> bs!1216432 (= lambda!263881 lambda!263845)))

(declare-fun bs!1216433 () Bool)

(assert (= bs!1216433 (and d!1689543 d!1689515)))

(assert (=> bs!1216433 (= lambda!263881 lambda!263875)))

(declare-fun bs!1216434 () Bool)

(assert (= bs!1216434 (and d!1689543 d!1689403)))

(assert (=> bs!1216434 (= lambda!263881 lambda!263836)))

(declare-fun bs!1216435 () Bool)

(assert (= bs!1216435 (and d!1689543 b!5243561)))

(assert (=> bs!1216435 (= lambda!263881 lambda!263815)))

(declare-fun bs!1216436 () Bool)

(assert (= bs!1216436 (and d!1689543 d!1689531)))

(assert (=> bs!1216436 (= lambda!263881 lambda!263878)))

(declare-fun e!3262997 () Bool)

(assert (=> d!1689543 e!3262997))

(declare-fun res!2225733 () Bool)

(assert (=> d!1689543 (=> (not res!2225733) (not e!3262997))))

(declare-fun lt!2149612 () Regex!14846)

(assert (=> d!1689543 (= res!2225733 (validRegex!6582 lt!2149612))))

(declare-fun e!3263001 () Regex!14846)

(assert (=> d!1689543 (= lt!2149612 e!3263001)))

(declare-fun c!906729 () Bool)

(declare-fun e!3262998 () Bool)

(assert (=> d!1689543 (= c!906729 e!3262998)))

(declare-fun res!2225732 () Bool)

(assert (=> d!1689543 (=> (not res!2225732) (not e!3262998))))

(assert (=> d!1689543 (= res!2225732 (is-Cons!60713 lt!2149356))))

(assert (=> d!1689543 (forall!14270 lt!2149356 lambda!263881)))

(assert (=> d!1689543 (= (generalisedConcat!515 lt!2149356) lt!2149612)))

(declare-fun b!5244360 () Bool)

(declare-fun e!3262999 () Bool)

(assert (=> b!5244360 (= e!3262997 e!3262999)))

(declare-fun c!906731 () Bool)

(assert (=> b!5244360 (= c!906731 (isEmpty!32650 lt!2149356))))

(declare-fun b!5244361 () Bool)

(assert (=> b!5244361 (= e!3263001 (h!67161 lt!2149356))))

(declare-fun b!5244362 () Bool)

(declare-fun e!3263002 () Regex!14846)

(assert (=> b!5244362 (= e!3263002 (Concat!23691 (h!67161 lt!2149356) (generalisedConcat!515 (t!374018 lt!2149356))))))

(declare-fun b!5244363 () Bool)

(assert (=> b!5244363 (= e!3262998 (isEmpty!32650 (t!374018 lt!2149356)))))

(declare-fun b!5244364 () Bool)

(declare-fun e!3263000 () Bool)

(assert (=> b!5244364 (= e!3263000 (isConcat!319 lt!2149612))))

(declare-fun b!5244365 () Bool)

(assert (=> b!5244365 (= e!3262999 e!3263000)))

(declare-fun c!906728 () Bool)

(assert (=> b!5244365 (= c!906728 (isEmpty!32650 (tail!10338 lt!2149356)))))

(declare-fun b!5244366 () Bool)

(assert (=> b!5244366 (= e!3263002 EmptyExpr!14846)))

(declare-fun b!5244367 () Bool)

(assert (=> b!5244367 (= e!3263000 (= lt!2149612 (head!11241 lt!2149356)))))

(declare-fun b!5244368 () Bool)

(assert (=> b!5244368 (= e!3262999 (isEmptyExpr!796 lt!2149612))))

(declare-fun b!5244369 () Bool)

(assert (=> b!5244369 (= e!3263001 e!3263002)))

(declare-fun c!906730 () Bool)

(assert (=> b!5244369 (= c!906730 (is-Cons!60713 lt!2149356))))

(assert (= (and d!1689543 res!2225732) b!5244363))

(assert (= (and d!1689543 c!906729) b!5244361))

(assert (= (and d!1689543 (not c!906729)) b!5244369))

(assert (= (and b!5244369 c!906730) b!5244362))

(assert (= (and b!5244369 (not c!906730)) b!5244366))

(assert (= (and d!1689543 res!2225733) b!5244360))

(assert (= (and b!5244360 c!906731) b!5244368))

(assert (= (and b!5244360 (not c!906731)) b!5244365))

(assert (= (and b!5244365 c!906728) b!5244367))

(assert (= (and b!5244365 (not c!906728)) b!5244364))

(declare-fun m!6288292 () Bool)

(assert (=> b!5244365 m!6288292))

(assert (=> b!5244365 m!6288292))

(declare-fun m!6288294 () Bool)

(assert (=> b!5244365 m!6288294))

(declare-fun m!6288296 () Bool)

(assert (=> d!1689543 m!6288296))

(declare-fun m!6288298 () Bool)

(assert (=> d!1689543 m!6288298))

(declare-fun m!6288300 () Bool)

(assert (=> b!5244368 m!6288300))

(declare-fun m!6288302 () Bool)

(assert (=> b!5244362 m!6288302))

(declare-fun m!6288304 () Bool)

(assert (=> b!5244360 m!6288304))

(declare-fun m!6288306 () Bool)

(assert (=> b!5244364 m!6288306))

(declare-fun m!6288308 () Bool)

(assert (=> b!5244367 m!6288308))

(declare-fun m!6288310 () Bool)

(assert (=> b!5244363 m!6288310))

(assert (=> b!5243556 d!1689543))

(declare-fun b!5244370 () Bool)

(declare-fun res!2225734 () Bool)

(declare-fun e!3263004 () Bool)

(assert (=> b!5244370 (=> res!2225734 e!3263004)))

(declare-fun e!3263006 () Bool)

(assert (=> b!5244370 (= res!2225734 e!3263006)))

(declare-fun res!2225738 () Bool)

(assert (=> b!5244370 (=> (not res!2225738) (not e!3263006))))

(declare-fun lt!2149613 () Bool)

(assert (=> b!5244370 (= res!2225738 lt!2149613)))

(declare-fun b!5244371 () Bool)

(declare-fun e!3263007 () Bool)

(assert (=> b!5244371 (= e!3263007 (not lt!2149613))))

(declare-fun b!5244372 () Bool)

(declare-fun e!3263008 () Bool)

(assert (=> b!5244372 (= e!3263004 e!3263008)))

(declare-fun res!2225741 () Bool)

(assert (=> b!5244372 (=> (not res!2225741) (not e!3263008))))

(assert (=> b!5244372 (= res!2225741 (not lt!2149613))))

(declare-fun b!5244373 () Bool)

(declare-fun e!3263003 () Bool)

(assert (=> b!5244373 (= e!3263003 (not (= (head!11240 s!2326) (c!906500 lt!2149381))))))

(declare-fun b!5244374 () Bool)

(declare-fun res!2225735 () Bool)

(assert (=> b!5244374 (=> (not res!2225735) (not e!3263006))))

(assert (=> b!5244374 (= res!2225735 (isEmpty!32653 (tail!10337 s!2326)))))

(declare-fun b!5244375 () Bool)

(declare-fun res!2225740 () Bool)

(assert (=> b!5244375 (=> res!2225740 e!3263003)))

(assert (=> b!5244375 (= res!2225740 (not (isEmpty!32653 (tail!10337 s!2326))))))

(declare-fun b!5244376 () Bool)

(assert (=> b!5244376 (= e!3263008 e!3263003)))

(declare-fun res!2225736 () Bool)

(assert (=> b!5244376 (=> res!2225736 e!3263003)))

(declare-fun call!371352 () Bool)

(assert (=> b!5244376 (= res!2225736 call!371352)))

(declare-fun b!5244377 () Bool)

(declare-fun e!3263005 () Bool)

(assert (=> b!5244377 (= e!3263005 e!3263007)))

(declare-fun c!906732 () Bool)

(assert (=> b!5244377 (= c!906732 (is-EmptyLang!14846 lt!2149381))))

(declare-fun b!5244378 () Bool)

(assert (=> b!5244378 (= e!3263005 (= lt!2149613 call!371352))))

(declare-fun b!5244379 () Bool)

(declare-fun e!3263009 () Bool)

(assert (=> b!5244379 (= e!3263009 (nullable!5015 lt!2149381))))

(declare-fun b!5244380 () Bool)

(assert (=> b!5244380 (= e!3263009 (matchR!7031 (derivativeStep!4083 lt!2149381 (head!11240 s!2326)) (tail!10337 s!2326)))))

(declare-fun d!1689545 () Bool)

(assert (=> d!1689545 e!3263005))

(declare-fun c!906734 () Bool)

(assert (=> d!1689545 (= c!906734 (is-EmptyExpr!14846 lt!2149381))))

(assert (=> d!1689545 (= lt!2149613 e!3263009)))

(declare-fun c!906733 () Bool)

(assert (=> d!1689545 (= c!906733 (isEmpty!32653 s!2326))))

(assert (=> d!1689545 (validRegex!6582 lt!2149381)))

(assert (=> d!1689545 (= (matchR!7031 lt!2149381 s!2326) lt!2149613)))

(declare-fun b!5244381 () Bool)

(assert (=> b!5244381 (= e!3263006 (= (head!11240 s!2326) (c!906500 lt!2149381)))))

(declare-fun b!5244382 () Bool)

(declare-fun res!2225739 () Bool)

(assert (=> b!5244382 (=> res!2225739 e!3263004)))

(assert (=> b!5244382 (= res!2225739 (not (is-ElementMatch!14846 lt!2149381)))))

(assert (=> b!5244382 (= e!3263007 e!3263004)))

(declare-fun b!5244383 () Bool)

(declare-fun res!2225737 () Bool)

(assert (=> b!5244383 (=> (not res!2225737) (not e!3263006))))

(assert (=> b!5244383 (= res!2225737 (not call!371352))))

(declare-fun bm!371347 () Bool)

(assert (=> bm!371347 (= call!371352 (isEmpty!32653 s!2326))))

(assert (= (and d!1689545 c!906733) b!5244379))

(assert (= (and d!1689545 (not c!906733)) b!5244380))

(assert (= (and d!1689545 c!906734) b!5244378))

(assert (= (and d!1689545 (not c!906734)) b!5244377))

(assert (= (and b!5244377 c!906732) b!5244371))

(assert (= (and b!5244377 (not c!906732)) b!5244382))

(assert (= (and b!5244382 (not res!2225739)) b!5244370))

(assert (= (and b!5244370 res!2225738) b!5244383))

(assert (= (and b!5244383 res!2225737) b!5244374))

(assert (= (and b!5244374 res!2225735) b!5244381))

(assert (= (and b!5244370 (not res!2225734)) b!5244372))

(assert (= (and b!5244372 res!2225741) b!5244376))

(assert (= (and b!5244376 (not res!2225736)) b!5244375))

(assert (= (and b!5244375 (not res!2225740)) b!5244373))

(assert (= (or b!5244378 b!5244383 b!5244376) bm!371347))

(assert (=> b!5244375 m!6288092))

(assert (=> b!5244375 m!6288092))

(assert (=> b!5244375 m!6288094))

(assert (=> b!5244374 m!6288092))

(assert (=> b!5244374 m!6288092))

(assert (=> b!5244374 m!6288094))

(assert (=> b!5244380 m!6288096))

(assert (=> b!5244380 m!6288096))

(declare-fun m!6288312 () Bool)

(assert (=> b!5244380 m!6288312))

(assert (=> b!5244380 m!6288092))

(assert (=> b!5244380 m!6288312))

(assert (=> b!5244380 m!6288092))

(declare-fun m!6288314 () Bool)

(assert (=> b!5244380 m!6288314))

(assert (=> b!5244373 m!6288096))

(assert (=> d!1689545 m!6288058))

(declare-fun m!6288316 () Bool)

(assert (=> d!1689545 m!6288316))

(assert (=> b!5244381 m!6288096))

(assert (=> bm!371347 m!6288058))

(declare-fun m!6288318 () Bool)

(assert (=> b!5244379 m!6288318))

(assert (=> b!5243556 d!1689545))

(declare-fun bs!1216437 () Bool)

(declare-fun d!1689547 () Bool)

(assert (= bs!1216437 (and d!1689547 d!1689417)))

(declare-fun lambda!263882 () Int)

(assert (=> bs!1216437 (= lambda!263882 lambda!263845)))

(declare-fun bs!1216438 () Bool)

(assert (= bs!1216438 (and d!1689547 d!1689403)))

(assert (=> bs!1216438 (= lambda!263882 lambda!263836)))

(declare-fun bs!1216439 () Bool)

(assert (= bs!1216439 (and d!1689547 b!5243561)))

(assert (=> bs!1216439 (= lambda!263882 lambda!263815)))

(declare-fun bs!1216440 () Bool)

(assert (= bs!1216440 (and d!1689547 d!1689531)))

(assert (=> bs!1216440 (= lambda!263882 lambda!263878)))

(declare-fun bs!1216441 () Bool)

(assert (= bs!1216441 (and d!1689547 d!1689543)))

(assert (=> bs!1216441 (= lambda!263882 lambda!263881)))

(declare-fun bs!1216442 () Bool)

(assert (= bs!1216442 (and d!1689547 d!1689515)))

(assert (=> bs!1216442 (= lambda!263882 lambda!263875)))

(declare-fun e!3263010 () Bool)

(assert (=> d!1689547 e!3263010))

(declare-fun res!2225743 () Bool)

(assert (=> d!1689547 (=> (not res!2225743) (not e!3263010))))

(declare-fun lt!2149614 () Regex!14846)

(assert (=> d!1689547 (= res!2225743 (validRegex!6582 lt!2149614))))

(declare-fun e!3263014 () Regex!14846)

(assert (=> d!1689547 (= lt!2149614 e!3263014)))

(declare-fun c!906736 () Bool)

(declare-fun e!3263011 () Bool)

(assert (=> d!1689547 (= c!906736 e!3263011)))

(declare-fun res!2225742 () Bool)

(assert (=> d!1689547 (=> (not res!2225742) (not e!3263011))))

(assert (=> d!1689547 (= res!2225742 (is-Cons!60713 lt!2149365))))

(assert (=> d!1689547 (forall!14270 lt!2149365 lambda!263882)))

(assert (=> d!1689547 (= (generalisedConcat!515 lt!2149365) lt!2149614)))

(declare-fun b!5244384 () Bool)

(declare-fun e!3263012 () Bool)

(assert (=> b!5244384 (= e!3263010 e!3263012)))

(declare-fun c!906738 () Bool)

(assert (=> b!5244384 (= c!906738 (isEmpty!32650 lt!2149365))))

(declare-fun b!5244385 () Bool)

(assert (=> b!5244385 (= e!3263014 (h!67161 lt!2149365))))

(declare-fun b!5244386 () Bool)

(declare-fun e!3263015 () Regex!14846)

(assert (=> b!5244386 (= e!3263015 (Concat!23691 (h!67161 lt!2149365) (generalisedConcat!515 (t!374018 lt!2149365))))))

(declare-fun b!5244387 () Bool)

(assert (=> b!5244387 (= e!3263011 (isEmpty!32650 (t!374018 lt!2149365)))))

(declare-fun b!5244388 () Bool)

(declare-fun e!3263013 () Bool)

(assert (=> b!5244388 (= e!3263013 (isConcat!319 lt!2149614))))

(declare-fun b!5244389 () Bool)

(assert (=> b!5244389 (= e!3263012 e!3263013)))

(declare-fun c!906735 () Bool)

(assert (=> b!5244389 (= c!906735 (isEmpty!32650 (tail!10338 lt!2149365)))))

(declare-fun b!5244390 () Bool)

(assert (=> b!5244390 (= e!3263015 EmptyExpr!14846)))

(declare-fun b!5244391 () Bool)

(assert (=> b!5244391 (= e!3263013 (= lt!2149614 (head!11241 lt!2149365)))))

(declare-fun b!5244392 () Bool)

(assert (=> b!5244392 (= e!3263012 (isEmptyExpr!796 lt!2149614))))

(declare-fun b!5244393 () Bool)

(assert (=> b!5244393 (= e!3263014 e!3263015)))

(declare-fun c!906737 () Bool)

(assert (=> b!5244393 (= c!906737 (is-Cons!60713 lt!2149365))))

(assert (= (and d!1689547 res!2225742) b!5244387))

(assert (= (and d!1689547 c!906736) b!5244385))

(assert (= (and d!1689547 (not c!906736)) b!5244393))

(assert (= (and b!5244393 c!906737) b!5244386))

(assert (= (and b!5244393 (not c!906737)) b!5244390))

(assert (= (and d!1689547 res!2225743) b!5244384))

(assert (= (and b!5244384 c!906738) b!5244392))

(assert (= (and b!5244384 (not c!906738)) b!5244389))

(assert (= (and b!5244389 c!906735) b!5244391))

(assert (= (and b!5244389 (not c!906735)) b!5244388))

(declare-fun m!6288320 () Bool)

(assert (=> b!5244389 m!6288320))

(assert (=> b!5244389 m!6288320))

(declare-fun m!6288324 () Bool)

(assert (=> b!5244389 m!6288324))

(declare-fun m!6288326 () Bool)

(assert (=> d!1689547 m!6288326))

(declare-fun m!6288330 () Bool)

(assert (=> d!1689547 m!6288330))

(declare-fun m!6288334 () Bool)

(assert (=> b!5244392 m!6288334))

(declare-fun m!6288336 () Bool)

(assert (=> b!5244386 m!6288336))

(declare-fun m!6288338 () Bool)

(assert (=> b!5244384 m!6288338))

(declare-fun m!6288340 () Bool)

(assert (=> b!5244388 m!6288340))

(declare-fun m!6288344 () Bool)

(assert (=> b!5244391 m!6288344))

(declare-fun m!6288346 () Bool)

(assert (=> b!5244387 m!6288346))

(assert (=> b!5243556 d!1689547))

(declare-fun d!1689549 () Bool)

(assert (=> d!1689549 (= (matchR!7031 lt!2149350 s!2326) (matchRSpec!1949 lt!2149350 s!2326))))

(declare-fun lt!2149618 () Unit!152782)

(assert (=> d!1689549 (= lt!2149618 (choose!39057 lt!2149350 s!2326))))

(assert (=> d!1689549 (validRegex!6582 lt!2149350)))

(assert (=> d!1689549 (= (mainMatchTheorem!1949 lt!2149350 s!2326) lt!2149618)))

(declare-fun bs!1216443 () Bool)

(assert (= bs!1216443 d!1689549))

(assert (=> bs!1216443 m!6287682))

(assert (=> bs!1216443 m!6287674))

(declare-fun m!6288360 () Bool)

(assert (=> bs!1216443 m!6288360))

(assert (=> bs!1216443 m!6288288))

(assert (=> b!5243556 d!1689549))

(declare-fun d!1689551 () Bool)

(assert (=> d!1689551 (= (matchR!7031 lt!2149350 s!2326) (matchZipper!1090 lt!2149355 s!2326))))

(declare-fun lt!2149621 () Unit!152782)

(declare-fun choose!39063 ((Set Context!8460) List!60838 Regex!14846 List!60839) Unit!152782)

(assert (=> d!1689551 (= lt!2149621 (choose!39063 lt!2149355 lt!2149354 lt!2149350 s!2326))))

(assert (=> d!1689551 (validRegex!6582 lt!2149350)))

(assert (=> d!1689551 (= (theoremZipperRegexEquiv!280 lt!2149355 lt!2149354 lt!2149350 s!2326) lt!2149621)))

(declare-fun bs!1216446 () Bool)

(assert (= bs!1216446 d!1689551))

(assert (=> bs!1216446 m!6287682))

(assert (=> bs!1216446 m!6287670))

(declare-fun m!6288370 () Bool)

(assert (=> bs!1216446 m!6288370))

(assert (=> bs!1216446 m!6288288))

(assert (=> b!5243556 d!1689551))

(declare-fun bs!1216447 () Bool)

(declare-fun b!5244413 () Bool)

(assert (= bs!1216447 (and b!5244413 b!5244075)))

(declare-fun lambda!263883 () Int)

(assert (=> bs!1216447 (= (and (= (reg!15175 lt!2149350) (reg!15175 r!7292)) (= lt!2149350 r!7292)) (= lambda!263883 lambda!263862))))

(declare-fun bs!1216448 () Bool)

(assert (= bs!1216448 (and b!5244413 b!5244317)))

(assert (=> bs!1216448 (not (= lambda!263883 lambda!263880))))

(declare-fun bs!1216449 () Bool)

(assert (= bs!1216449 (and b!5244413 d!1689441)))

(assert (=> bs!1216449 (not (= lambda!263883 lambda!263856))))

(declare-fun bs!1216450 () Bool)

(assert (= bs!1216450 (and b!5244413 b!5244327)))

(assert (=> bs!1216450 (= (and (= (reg!15175 lt!2149350) (reg!15175 lt!2149381)) (= lt!2149350 lt!2149381)) (= lambda!263883 lambda!263879))))

(declare-fun bs!1216451 () Bool)

(assert (= bs!1216451 (and b!5244413 b!5243550)))

(assert (=> bs!1216451 (not (= lambda!263883 lambda!263813))))

(declare-fun bs!1216452 () Bool)

(assert (= bs!1216452 (and b!5244413 b!5244065)))

(assert (=> bs!1216452 (not (= lambda!263883 lambda!263863))))

(assert (=> bs!1216451 (not (= lambda!263883 lambda!263812))))

(declare-fun bs!1216453 () Bool)

(assert (= bs!1216453 (and b!5244413 d!1689431)))

(assert (=> bs!1216453 (not (= lambda!263883 lambda!263851))))

(assert (=> bs!1216449 (not (= lambda!263883 lambda!263857))))

(assert (=> b!5244413 true))

(assert (=> b!5244413 true))

(declare-fun bs!1216454 () Bool)

(declare-fun b!5244403 () Bool)

(assert (= bs!1216454 (and b!5244403 b!5244075)))

(declare-fun lambda!263886 () Int)

(assert (=> bs!1216454 (not (= lambda!263886 lambda!263862))))

(declare-fun bs!1216455 () Bool)

(assert (= bs!1216455 (and b!5244403 b!5244317)))

(assert (=> bs!1216455 (= (and (= (regOne!30204 lt!2149350) (regOne!30204 lt!2149381)) (= (regTwo!30204 lt!2149350) (regTwo!30204 lt!2149381))) (= lambda!263886 lambda!263880))))

(declare-fun bs!1216456 () Bool)

(assert (= bs!1216456 (and b!5244403 d!1689441)))

(assert (=> bs!1216456 (not (= lambda!263886 lambda!263856))))

(declare-fun bs!1216457 () Bool)

(assert (= bs!1216457 (and b!5244403 b!5244327)))

(assert (=> bs!1216457 (not (= lambda!263886 lambda!263879))))

(declare-fun bs!1216458 () Bool)

(assert (= bs!1216458 (and b!5244403 b!5243550)))

(assert (=> bs!1216458 (= (and (= (regOne!30204 lt!2149350) (regOne!30204 r!7292)) (= (regTwo!30204 lt!2149350) (regTwo!30204 r!7292))) (= lambda!263886 lambda!263813))))

(declare-fun bs!1216459 () Bool)

(assert (= bs!1216459 (and b!5244403 b!5244065)))

(assert (=> bs!1216459 (= (and (= (regOne!30204 lt!2149350) (regOne!30204 r!7292)) (= (regTwo!30204 lt!2149350) (regTwo!30204 r!7292))) (= lambda!263886 lambda!263863))))

(declare-fun bs!1216460 () Bool)

(assert (= bs!1216460 (and b!5244403 d!1689431)))

(assert (=> bs!1216460 (not (= lambda!263886 lambda!263851))))

(assert (=> bs!1216456 (= (and (= (regOne!30204 lt!2149350) (regOne!30204 r!7292)) (= (regTwo!30204 lt!2149350) (regTwo!30204 r!7292))) (= lambda!263886 lambda!263857))))

(declare-fun bs!1216461 () Bool)

(assert (= bs!1216461 (and b!5244403 b!5244413)))

(assert (=> bs!1216461 (not (= lambda!263886 lambda!263883))))

(assert (=> bs!1216458 (not (= lambda!263886 lambda!263812))))

(assert (=> b!5244403 true))

(assert (=> b!5244403 true))

(declare-fun e!3263024 () Bool)

(declare-fun call!371353 () Bool)

(assert (=> b!5244403 (= e!3263024 call!371353)))

(declare-fun b!5244404 () Bool)

(declare-fun e!3263026 () Bool)

(declare-fun e!3263022 () Bool)

(assert (=> b!5244404 (= e!3263026 e!3263022)))

(declare-fun res!2225750 () Bool)

(assert (=> b!5244404 (= res!2225750 (matchRSpec!1949 (regOne!30205 lt!2149350) s!2326))))

(assert (=> b!5244404 (=> res!2225750 e!3263022)))

(declare-fun b!5244405 () Bool)

(declare-fun e!3263027 () Bool)

(declare-fun e!3263023 () Bool)

(assert (=> b!5244405 (= e!3263027 e!3263023)))

(declare-fun res!2225749 () Bool)

(assert (=> b!5244405 (= res!2225749 (not (is-EmptyLang!14846 lt!2149350)))))

(assert (=> b!5244405 (=> (not res!2225749) (not e!3263023))))

(declare-fun bm!371348 () Bool)

(declare-fun call!371354 () Bool)

(assert (=> bm!371348 (= call!371354 (isEmpty!32653 s!2326))))

(declare-fun bm!371349 () Bool)

(declare-fun c!906741 () Bool)

(assert (=> bm!371349 (= call!371353 (Exists!2027 (ite c!906741 lambda!263883 lambda!263886)))))

(declare-fun b!5244406 () Bool)

(declare-fun res!2225751 () Bool)

(declare-fun e!3263021 () Bool)

(assert (=> b!5244406 (=> res!2225751 e!3263021)))

(assert (=> b!5244406 (= res!2225751 call!371354)))

(assert (=> b!5244406 (= e!3263024 e!3263021)))

(declare-fun b!5244407 () Bool)

(assert (=> b!5244407 (= e!3263027 call!371354)))

(declare-fun d!1689559 () Bool)

(declare-fun c!906742 () Bool)

(assert (=> d!1689559 (= c!906742 (is-EmptyExpr!14846 lt!2149350))))

(assert (=> d!1689559 (= (matchRSpec!1949 lt!2149350 s!2326) e!3263027)))

(declare-fun b!5244408 () Bool)

(declare-fun c!906743 () Bool)

(assert (=> b!5244408 (= c!906743 (is-ElementMatch!14846 lt!2149350))))

(declare-fun e!3263025 () Bool)

(assert (=> b!5244408 (= e!3263023 e!3263025)))

(declare-fun b!5244409 () Bool)

(assert (=> b!5244409 (= e!3263025 (= s!2326 (Cons!60715 (c!906500 lt!2149350) Nil!60715)))))

(declare-fun b!5244410 () Bool)

(assert (=> b!5244410 (= e!3263026 e!3263024)))

(assert (=> b!5244410 (= c!906741 (is-Star!14846 lt!2149350))))

(declare-fun b!5244411 () Bool)

(declare-fun c!906744 () Bool)

(assert (=> b!5244411 (= c!906744 (is-Union!14846 lt!2149350))))

(assert (=> b!5244411 (= e!3263025 e!3263026)))

(declare-fun b!5244412 () Bool)

(assert (=> b!5244412 (= e!3263022 (matchRSpec!1949 (regTwo!30205 lt!2149350) s!2326))))

(assert (=> b!5244413 (= e!3263021 call!371353)))

(assert (= (and d!1689559 c!906742) b!5244407))

(assert (= (and d!1689559 (not c!906742)) b!5244405))

(assert (= (and b!5244405 res!2225749) b!5244408))

(assert (= (and b!5244408 c!906743) b!5244409))

(assert (= (and b!5244408 (not c!906743)) b!5244411))

(assert (= (and b!5244411 c!906744) b!5244404))

(assert (= (and b!5244411 (not c!906744)) b!5244410))

(assert (= (and b!5244404 (not res!2225750)) b!5244412))

(assert (= (and b!5244410 c!906741) b!5244406))

(assert (= (and b!5244410 (not c!906741)) b!5244403))

(assert (= (and b!5244406 (not res!2225751)) b!5244413))

(assert (= (or b!5244413 b!5244403) bm!371349))

(assert (= (or b!5244407 b!5244406) bm!371348))

(declare-fun m!6288372 () Bool)

(assert (=> b!5244404 m!6288372))

(assert (=> bm!371348 m!6288058))

(declare-fun m!6288374 () Bool)

(assert (=> bm!371349 m!6288374))

(declare-fun m!6288376 () Bool)

(assert (=> b!5244412 m!6288376))

(assert (=> b!5243556 d!1689559))

(assert (=> b!5243556 d!1689537))

(declare-fun d!1689561 () Bool)

(assert (=> d!1689561 (= (matchR!7031 lt!2149381 s!2326) (matchRSpec!1949 lt!2149381 s!2326))))

(declare-fun lt!2149625 () Unit!152782)

(assert (=> d!1689561 (= lt!2149625 (choose!39057 lt!2149381 s!2326))))

(assert (=> d!1689561 (validRegex!6582 lt!2149381)))

(assert (=> d!1689561 (= (mainMatchTheorem!1949 lt!2149381 s!2326) lt!2149625)))

(declare-fun bs!1216469 () Bool)

(assert (= bs!1216469 d!1689561))

(assert (=> bs!1216469 m!6287686))

(assert (=> bs!1216469 m!6287688))

(declare-fun m!6288378 () Bool)

(assert (=> bs!1216469 m!6288378))

(assert (=> bs!1216469 m!6288316))

(assert (=> b!5243556 d!1689561))

(declare-fun d!1689563 () Bool)

(assert (=> d!1689563 (= (matchR!7031 lt!2149381 s!2326) (matchZipper!1090 lt!2149347 s!2326))))

(declare-fun lt!2149626 () Unit!152782)

(assert (=> d!1689563 (= lt!2149626 (choose!39063 lt!2149347 lt!2149348 lt!2149381 s!2326))))

(assert (=> d!1689563 (validRegex!6582 lt!2149381)))

(assert (=> d!1689563 (= (theoremZipperRegexEquiv!280 lt!2149347 lt!2149348 lt!2149381 s!2326) lt!2149626)))

(declare-fun bs!1216470 () Bool)

(assert (= bs!1216470 d!1689563))

(assert (=> bs!1216470 m!6287686))

(assert (=> bs!1216470 m!6287614))

(declare-fun m!6288380 () Bool)

(assert (=> bs!1216470 m!6288380))

(assert (=> bs!1216470 m!6288316))

(assert (=> b!5243556 d!1689563))

(assert (=> b!5243564 d!1689413))

(declare-fun d!1689565 () Bool)

(declare-fun c!906745 () Bool)

(assert (=> d!1689565 (= c!906745 (isEmpty!32653 (t!374020 s!2326)))))

(declare-fun e!3263030 () Bool)

(assert (=> d!1689565 (= (matchZipper!1090 lt!2149367 (t!374020 s!2326)) e!3263030)))

(declare-fun b!5244418 () Bool)

(assert (=> b!5244418 (= e!3263030 (nullableZipper!1261 lt!2149367))))

(declare-fun b!5244419 () Bool)

(assert (=> b!5244419 (= e!3263030 (matchZipper!1090 (derivationStepZipper!1105 lt!2149367 (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))))))

(assert (= (and d!1689565 c!906745) b!5244418))

(assert (= (and d!1689565 (not c!906745)) b!5244419))

(assert (=> d!1689565 m!6287836))

(declare-fun m!6288386 () Bool)

(assert (=> b!5244418 m!6288386))

(assert (=> b!5244419 m!6287840))

(assert (=> b!5244419 m!6287840))

(declare-fun m!6288388 () Bool)

(assert (=> b!5244419 m!6288388))

(assert (=> b!5244419 m!6287844))

(assert (=> b!5244419 m!6288388))

(assert (=> b!5244419 m!6287844))

(declare-fun m!6288390 () Bool)

(assert (=> b!5244419 m!6288390))

(assert (=> b!5243564 d!1689565))

(declare-fun d!1689569 () Bool)

(declare-fun c!906746 () Bool)

(assert (=> d!1689569 (= c!906746 (isEmpty!32653 (t!374020 s!2326)))))

(declare-fun e!3263031 () Bool)

(assert (=> d!1689569 (= (matchZipper!1090 lt!2149359 (t!374020 s!2326)) e!3263031)))

(declare-fun b!5244420 () Bool)

(assert (=> b!5244420 (= e!3263031 (nullableZipper!1261 lt!2149359))))

(declare-fun b!5244421 () Bool)

(assert (=> b!5244421 (= e!3263031 (matchZipper!1090 (derivationStepZipper!1105 lt!2149359 (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))))))

(assert (= (and d!1689569 c!906746) b!5244420))

(assert (= (and d!1689569 (not c!906746)) b!5244421))

(assert (=> d!1689569 m!6287836))

(declare-fun m!6288392 () Bool)

(assert (=> b!5244420 m!6288392))

(assert (=> b!5244421 m!6287840))

(assert (=> b!5244421 m!6287840))

(declare-fun m!6288394 () Bool)

(assert (=> b!5244421 m!6288394))

(assert (=> b!5244421 m!6287844))

(assert (=> b!5244421 m!6288394))

(assert (=> b!5244421 m!6287844))

(declare-fun m!6288396 () Bool)

(assert (=> b!5244421 m!6288396))

(assert (=> b!5243564 d!1689569))

(declare-fun e!3263032 () Bool)

(declare-fun d!1689571 () Bool)

(assert (=> d!1689571 (= (matchZipper!1090 (set.union lt!2149359 lt!2149384) (t!374020 s!2326)) e!3263032)))

(declare-fun res!2225756 () Bool)

(assert (=> d!1689571 (=> res!2225756 e!3263032)))

(assert (=> d!1689571 (= res!2225756 (matchZipper!1090 lt!2149359 (t!374020 s!2326)))))

(declare-fun lt!2149627 () Unit!152782)

(assert (=> d!1689571 (= lt!2149627 (choose!39049 lt!2149359 lt!2149384 (t!374020 s!2326)))))

(assert (=> d!1689571 (= (lemmaZipperConcatMatchesSameAsBothZippers!83 lt!2149359 lt!2149384 (t!374020 s!2326)) lt!2149627)))

(declare-fun b!5244422 () Bool)

(assert (=> b!5244422 (= e!3263032 (matchZipper!1090 lt!2149384 (t!374020 s!2326)))))

(assert (= (and d!1689571 (not res!2225756)) b!5244422))

(declare-fun m!6288398 () Bool)

(assert (=> d!1689571 m!6288398))

(assert (=> d!1689571 m!6287646))

(declare-fun m!6288400 () Bool)

(assert (=> d!1689571 m!6288400))

(assert (=> b!5244422 m!6287650))

(assert (=> b!5243564 d!1689571))

(assert (=> b!5243544 d!1689399))

(declare-fun c!906751 () Bool)

(declare-fun c!906752 () Bool)

(declare-fun call!371363 () Bool)

(declare-fun bm!371356 () Bool)

(assert (=> bm!371356 (= call!371363 (validRegex!6582 (ite c!906752 (reg!15175 r!7292) (ite c!906751 (regOne!30205 r!7292) (regOne!30204 r!7292)))))))

(declare-fun b!5244445 () Bool)

(declare-fun e!3263052 () Bool)

(declare-fun e!3263054 () Bool)

(assert (=> b!5244445 (= e!3263052 e!3263054)))

(assert (=> b!5244445 (= c!906751 (is-Union!14846 r!7292))))

(declare-fun b!5244446 () Bool)

(declare-fun e!3263053 () Bool)

(assert (=> b!5244446 (= e!3263053 e!3263052)))

(assert (=> b!5244446 (= c!906752 (is-Star!14846 r!7292))))

(declare-fun b!5244447 () Bool)

(declare-fun res!2225773 () Bool)

(declare-fun e!3263055 () Bool)

(assert (=> b!5244447 (=> (not res!2225773) (not e!3263055))))

(declare-fun call!371361 () Bool)

(assert (=> b!5244447 (= res!2225773 call!371361)))

(assert (=> b!5244447 (= e!3263054 e!3263055)))

(declare-fun bm!371357 () Bool)

(declare-fun call!371362 () Bool)

(assert (=> bm!371357 (= call!371362 (validRegex!6582 (ite c!906751 (regTwo!30205 r!7292) (regTwo!30204 r!7292))))))

(declare-fun bm!371358 () Bool)

(assert (=> bm!371358 (= call!371361 call!371363)))

(declare-fun b!5244448 () Bool)

(declare-fun e!3263051 () Bool)

(assert (=> b!5244448 (= e!3263052 e!3263051)))

(declare-fun res!2225774 () Bool)

(assert (=> b!5244448 (= res!2225774 (not (nullable!5015 (reg!15175 r!7292))))))

(assert (=> b!5244448 (=> (not res!2225774) (not e!3263051))))

(declare-fun b!5244449 () Bool)

(declare-fun e!3263050 () Bool)

(assert (=> b!5244449 (= e!3263050 call!371362)))

(declare-fun b!5244450 () Bool)

(declare-fun res!2225772 () Bool)

(declare-fun e!3263049 () Bool)

(assert (=> b!5244450 (=> res!2225772 e!3263049)))

(assert (=> b!5244450 (= res!2225772 (not (is-Concat!23691 r!7292)))))

(assert (=> b!5244450 (= e!3263054 e!3263049)))

(declare-fun b!5244452 () Bool)

(assert (=> b!5244452 (= e!3263051 call!371363)))

(declare-fun b!5244453 () Bool)

(assert (=> b!5244453 (= e!3263055 call!371362)))

(declare-fun b!5244451 () Bool)

(assert (=> b!5244451 (= e!3263049 e!3263050)))

(declare-fun res!2225775 () Bool)

(assert (=> b!5244451 (=> (not res!2225775) (not e!3263050))))

(assert (=> b!5244451 (= res!2225775 call!371361)))

(declare-fun d!1689573 () Bool)

(declare-fun res!2225771 () Bool)

(assert (=> d!1689573 (=> res!2225771 e!3263053)))

(assert (=> d!1689573 (= res!2225771 (is-ElementMatch!14846 r!7292))))

(assert (=> d!1689573 (= (validRegex!6582 r!7292) e!3263053)))

(assert (= (and d!1689573 (not res!2225771)) b!5244446))

(assert (= (and b!5244446 c!906752) b!5244448))

(assert (= (and b!5244446 (not c!906752)) b!5244445))

(assert (= (and b!5244448 res!2225774) b!5244452))

(assert (= (and b!5244445 c!906751) b!5244447))

(assert (= (and b!5244445 (not c!906751)) b!5244450))

(assert (= (and b!5244447 res!2225773) b!5244453))

(assert (= (and b!5244450 (not res!2225772)) b!5244451))

(assert (= (and b!5244451 res!2225775) b!5244449))

(assert (= (or b!5244453 b!5244449) bm!371357))

(assert (= (or b!5244447 b!5244451) bm!371358))

(assert (= (or b!5244452 bm!371358) bm!371356))

(declare-fun m!6288402 () Bool)

(assert (=> bm!371356 m!6288402))

(declare-fun m!6288404 () Bool)

(assert (=> bm!371357 m!6288404))

(declare-fun m!6288406 () Bool)

(assert (=> b!5244448 m!6288406))

(assert (=> start!554240 d!1689573))

(declare-fun d!1689575 () Bool)

(assert (=> d!1689575 (= (flatMap!573 lt!2149355 lambda!263814) (choose!39058 lt!2149355 lambda!263814))))

(declare-fun bs!1216472 () Bool)

(assert (= bs!1216472 d!1689575))

(declare-fun m!6288408 () Bool)

(assert (=> bs!1216472 m!6288408))

(assert (=> b!5243562 d!1689575))

(declare-fun d!1689577 () Bool)

(assert (=> d!1689577 (= (nullable!5015 (regTwo!30205 (regOne!30204 r!7292))) (nullableFct!1413 (regTwo!30205 (regOne!30204 r!7292))))))

(declare-fun bs!1216473 () Bool)

(assert (= bs!1216473 d!1689577))

(declare-fun m!6288410 () Bool)

(assert (=> bs!1216473 m!6288410))

(assert (=> b!5243562 d!1689577))

(declare-fun d!1689579 () Bool)

(assert (=> d!1689579 (= (flatMap!573 lt!2149347 lambda!263814) (dynLambda!23993 lambda!263814 lt!2149386))))

(declare-fun lt!2149630 () Unit!152782)

(assert (=> d!1689579 (= lt!2149630 (choose!39060 lt!2149347 lt!2149386 lambda!263814))))

(assert (=> d!1689579 (= lt!2149347 (set.insert lt!2149386 (as set.empty (Set Context!8460))))))

(assert (=> d!1689579 (= (lemmaFlatMapOnSingletonSet!105 lt!2149347 lt!2149386 lambda!263814) lt!2149630)))

(declare-fun b_lambda!202603 () Bool)

(assert (=> (not b_lambda!202603) (not d!1689579)))

(declare-fun bs!1216474 () Bool)

(assert (= bs!1216474 d!1689579))

(assert (=> bs!1216474 m!6287608))

(declare-fun m!6288412 () Bool)

(assert (=> bs!1216474 m!6288412))

(declare-fun m!6288414 () Bool)

(assert (=> bs!1216474 m!6288414))

(assert (=> bs!1216474 m!6287624))

(assert (=> b!5243562 d!1689579))

(declare-fun d!1689581 () Bool)

(declare-fun c!906753 () Bool)

(assert (=> d!1689581 (= c!906753 (isEmpty!32653 s!2326))))

(declare-fun e!3263058 () Bool)

(assert (=> d!1689581 (= (matchZipper!1090 z!1189 s!2326) e!3263058)))

(declare-fun b!5244458 () Bool)

(assert (=> b!5244458 (= e!3263058 (nullableZipper!1261 z!1189))))

(declare-fun b!5244459 () Bool)

(assert (=> b!5244459 (= e!3263058 (matchZipper!1090 (derivationStepZipper!1105 z!1189 (head!11240 s!2326)) (tail!10337 s!2326)))))

(assert (= (and d!1689581 c!906753) b!5244458))

(assert (= (and d!1689581 (not c!906753)) b!5244459))

(assert (=> d!1689581 m!6288058))

(declare-fun m!6288416 () Bool)

(assert (=> b!5244458 m!6288416))

(assert (=> b!5244459 m!6288096))

(assert (=> b!5244459 m!6288096))

(declare-fun m!6288418 () Bool)

(assert (=> b!5244459 m!6288418))

(assert (=> b!5244459 m!6288092))

(assert (=> b!5244459 m!6288418))

(assert (=> b!5244459 m!6288092))

(declare-fun m!6288420 () Bool)

(assert (=> b!5244459 m!6288420))

(assert (=> b!5243562 d!1689581))

(declare-fun b!5244460 () Bool)

(declare-fun e!3263061 () (Set Context!8460))

(declare-fun call!371364 () (Set Context!8460))

(assert (=> b!5244460 (= e!3263061 (set.union call!371364 (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 lt!2149349))) (h!67163 s!2326))))))

(declare-fun b!5244461 () Bool)

(declare-fun e!3263060 () Bool)

(assert (=> b!5244461 (= e!3263060 (nullable!5015 (h!67161 (exprs!4730 lt!2149349))))))

(declare-fun d!1689583 () Bool)

(declare-fun c!906754 () Bool)

(assert (=> d!1689583 (= c!906754 e!3263060)))

(declare-fun res!2225780 () Bool)

(assert (=> d!1689583 (=> (not res!2225780) (not e!3263060))))

(assert (=> d!1689583 (= res!2225780 (is-Cons!60713 (exprs!4730 lt!2149349)))))

(assert (=> d!1689583 (= (derivationStepZipperUp!218 lt!2149349 (h!67163 s!2326)) e!3263061)))

(declare-fun b!5244462 () Bool)

(declare-fun e!3263059 () (Set Context!8460))

(assert (=> b!5244462 (= e!3263061 e!3263059)))

(declare-fun c!906755 () Bool)

(assert (=> b!5244462 (= c!906755 (is-Cons!60713 (exprs!4730 lt!2149349)))))

(declare-fun b!5244463 () Bool)

(assert (=> b!5244463 (= e!3263059 call!371364)))

(declare-fun bm!371359 () Bool)

(assert (=> bm!371359 (= call!371364 (derivationStepZipperDown!294 (h!67161 (exprs!4730 lt!2149349)) (Context!8461 (t!374018 (exprs!4730 lt!2149349))) (h!67163 s!2326)))))

(declare-fun b!5244464 () Bool)

(assert (=> b!5244464 (= e!3263059 (as set.empty (Set Context!8460)))))

(assert (= (and d!1689583 res!2225780) b!5244461))

(assert (= (and d!1689583 c!906754) b!5244460))

(assert (= (and d!1689583 (not c!906754)) b!5244462))

(assert (= (and b!5244462 c!906755) b!5244463))

(assert (= (and b!5244462 (not c!906755)) b!5244464))

(assert (= (or b!5244460 b!5244463) bm!371359))

(declare-fun m!6288422 () Bool)

(assert (=> b!5244460 m!6288422))

(declare-fun m!6288424 () Bool)

(assert (=> b!5244461 m!6288424))

(declare-fun m!6288426 () Bool)

(assert (=> bm!371359 m!6288426))

(assert (=> b!5243562 d!1689583))

(declare-fun d!1689585 () Bool)

(assert (=> d!1689585 (= (flatMap!573 lt!2149347 lambda!263814) (choose!39058 lt!2149347 lambda!263814))))

(declare-fun bs!1216475 () Bool)

(assert (= bs!1216475 d!1689585))

(declare-fun m!6288428 () Bool)

(assert (=> bs!1216475 m!6288428))

(assert (=> b!5243562 d!1689585))

(declare-fun d!1689587 () Bool)

(assert (=> d!1689587 (= (flatMap!573 lt!2149355 lambda!263814) (dynLambda!23993 lambda!263814 lt!2149349))))

(declare-fun lt!2149631 () Unit!152782)

(assert (=> d!1689587 (= lt!2149631 (choose!39060 lt!2149355 lt!2149349 lambda!263814))))

(assert (=> d!1689587 (= lt!2149355 (set.insert lt!2149349 (as set.empty (Set Context!8460))))))

(assert (=> d!1689587 (= (lemmaFlatMapOnSingletonSet!105 lt!2149355 lt!2149349 lambda!263814) lt!2149631)))

(declare-fun b_lambda!202605 () Bool)

(assert (=> (not b_lambda!202605) (not d!1689587)))

(declare-fun bs!1216476 () Bool)

(assert (= bs!1216476 d!1689587))

(assert (=> bs!1216476 m!6287602))

(declare-fun m!6288430 () Bool)

(assert (=> bs!1216476 m!6288430))

(declare-fun m!6288432 () Bool)

(assert (=> bs!1216476 m!6288432))

(assert (=> bs!1216476 m!6287612))

(assert (=> b!5243562 d!1689587))

(declare-fun d!1689589 () Bool)

(assert (=> d!1689589 (= (nullable!5015 (regOne!30205 (regOne!30204 r!7292))) (nullableFct!1413 (regOne!30205 (regOne!30204 r!7292))))))

(declare-fun bs!1216477 () Bool)

(assert (= bs!1216477 d!1689589))

(declare-fun m!6288434 () Bool)

(assert (=> bs!1216477 m!6288434))

(assert (=> b!5243562 d!1689589))

(declare-fun d!1689591 () Bool)

(declare-fun c!906756 () Bool)

(assert (=> d!1689591 (= c!906756 (isEmpty!32653 s!2326))))

(declare-fun e!3263062 () Bool)

(assert (=> d!1689591 (= (matchZipper!1090 lt!2149347 s!2326) e!3263062)))

(declare-fun b!5244465 () Bool)

(assert (=> b!5244465 (= e!3263062 (nullableZipper!1261 lt!2149347))))

(declare-fun b!5244466 () Bool)

(assert (=> b!5244466 (= e!3263062 (matchZipper!1090 (derivationStepZipper!1105 lt!2149347 (head!11240 s!2326)) (tail!10337 s!2326)))))

(assert (= (and d!1689591 c!906756) b!5244465))

(assert (= (and d!1689591 (not c!906756)) b!5244466))

(assert (=> d!1689591 m!6288058))

(declare-fun m!6288436 () Bool)

(assert (=> b!5244465 m!6288436))

(assert (=> b!5244466 m!6288096))

(assert (=> b!5244466 m!6288096))

(declare-fun m!6288438 () Bool)

(assert (=> b!5244466 m!6288438))

(assert (=> b!5244466 m!6288092))

(assert (=> b!5244466 m!6288438))

(assert (=> b!5244466 m!6288092))

(declare-fun m!6288440 () Bool)

(assert (=> b!5244466 m!6288440))

(assert (=> b!5243562 d!1689591))

(declare-fun e!3263065 () (Set Context!8460))

(declare-fun call!371365 () (Set Context!8460))

(declare-fun b!5244467 () Bool)

(assert (=> b!5244467 (= e!3263065 (set.union call!371365 (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 lt!2149386))) (h!67163 s!2326))))))

(declare-fun b!5244468 () Bool)

(declare-fun e!3263064 () Bool)

(assert (=> b!5244468 (= e!3263064 (nullable!5015 (h!67161 (exprs!4730 lt!2149386))))))

(declare-fun d!1689593 () Bool)

(declare-fun c!906757 () Bool)

(assert (=> d!1689593 (= c!906757 e!3263064)))

(declare-fun res!2225781 () Bool)

(assert (=> d!1689593 (=> (not res!2225781) (not e!3263064))))

(assert (=> d!1689593 (= res!2225781 (is-Cons!60713 (exprs!4730 lt!2149386)))))

(assert (=> d!1689593 (= (derivationStepZipperUp!218 lt!2149386 (h!67163 s!2326)) e!3263065)))

(declare-fun b!5244469 () Bool)

(declare-fun e!3263063 () (Set Context!8460))

(assert (=> b!5244469 (= e!3263065 e!3263063)))

(declare-fun c!906758 () Bool)

(assert (=> b!5244469 (= c!906758 (is-Cons!60713 (exprs!4730 lt!2149386)))))

(declare-fun b!5244470 () Bool)

(assert (=> b!5244470 (= e!3263063 call!371365)))

(declare-fun bm!371360 () Bool)

(assert (=> bm!371360 (= call!371365 (derivationStepZipperDown!294 (h!67161 (exprs!4730 lt!2149386)) (Context!8461 (t!374018 (exprs!4730 lt!2149386))) (h!67163 s!2326)))))

(declare-fun b!5244471 () Bool)

(assert (=> b!5244471 (= e!3263063 (as set.empty (Set Context!8460)))))

(assert (= (and d!1689593 res!2225781) b!5244468))

(assert (= (and d!1689593 c!906757) b!5244467))

(assert (= (and d!1689593 (not c!906757)) b!5244469))

(assert (= (and b!5244469 c!906758) b!5244470))

(assert (= (and b!5244469 (not c!906758)) b!5244471))

(assert (= (or b!5244467 b!5244470) bm!371360))

(declare-fun m!6288442 () Bool)

(assert (=> b!5244467 m!6288442))

(declare-fun m!6288444 () Bool)

(assert (=> b!5244468 m!6288444))

(declare-fun m!6288446 () Bool)

(assert (=> bm!371360 m!6288446))

(assert (=> b!5243562 d!1689593))

(declare-fun d!1689595 () Bool)

(declare-fun res!2225786 () Bool)

(declare-fun e!3263070 () Bool)

(assert (=> d!1689595 (=> res!2225786 e!3263070)))

(assert (=> d!1689595 (= res!2225786 (is-Nil!60713 (t!374018 (exprs!4730 (h!67162 zl!343)))))))

(assert (=> d!1689595 (= (forall!14270 (t!374018 (exprs!4730 (h!67162 zl!343))) lambda!263815) e!3263070)))

(declare-fun b!5244476 () Bool)

(declare-fun e!3263071 () Bool)

(assert (=> b!5244476 (= e!3263070 e!3263071)))

(declare-fun res!2225787 () Bool)

(assert (=> b!5244476 (=> (not res!2225787) (not e!3263071))))

(declare-fun dynLambda!23995 (Int Regex!14846) Bool)

(assert (=> b!5244476 (= res!2225787 (dynLambda!23995 lambda!263815 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun b!5244477 () Bool)

(assert (=> b!5244477 (= e!3263071 (forall!14270 (t!374018 (t!374018 (exprs!4730 (h!67162 zl!343)))) lambda!263815))))

(assert (= (and d!1689595 (not res!2225786)) b!5244476))

(assert (= (and b!5244476 res!2225787) b!5244477))

(declare-fun b_lambda!202607 () Bool)

(assert (=> (not b_lambda!202607) (not b!5244476)))

(declare-fun m!6288448 () Bool)

(assert (=> b!5244476 m!6288448))

(declare-fun m!6288450 () Bool)

(assert (=> b!5244477 m!6288450))

(assert (=> b!5243561 d!1689595))

(declare-fun bs!1216487 () Bool)

(declare-fun d!1689597 () Bool)

(assert (= bs!1216487 (and d!1689597 d!1689417)))

(declare-fun lambda!263894 () Int)

(assert (=> bs!1216487 (= lambda!263894 lambda!263845)))

(declare-fun bs!1216488 () Bool)

(assert (= bs!1216488 (and d!1689597 d!1689547)))

(assert (=> bs!1216488 (= lambda!263894 lambda!263882)))

(declare-fun bs!1216489 () Bool)

(assert (= bs!1216489 (and d!1689597 d!1689403)))

(assert (=> bs!1216489 (= lambda!263894 lambda!263836)))

(declare-fun bs!1216490 () Bool)

(assert (= bs!1216490 (and d!1689597 b!5243561)))

(assert (=> bs!1216490 (= lambda!263894 lambda!263815)))

(declare-fun bs!1216491 () Bool)

(assert (= bs!1216491 (and d!1689597 d!1689531)))

(assert (=> bs!1216491 (= lambda!263894 lambda!263878)))

(declare-fun bs!1216492 () Bool)

(assert (= bs!1216492 (and d!1689597 d!1689543)))

(assert (=> bs!1216492 (= lambda!263894 lambda!263881)))

(declare-fun bs!1216493 () Bool)

(assert (= bs!1216493 (and d!1689597 d!1689515)))

(assert (=> bs!1216493 (= lambda!263894 lambda!263875)))

(assert (=> d!1689597 (= (inv!80363 setElem!33452) (forall!14270 (exprs!4730 setElem!33452) lambda!263894))))

(declare-fun bs!1216494 () Bool)

(assert (= bs!1216494 d!1689597))

(declare-fun m!6288458 () Bool)

(assert (=> bs!1216494 m!6288458))

(assert (=> setNonEmpty!33452 d!1689597))

(declare-fun d!1689601 () Bool)

(declare-fun lt!2149635 () Int)

(assert (=> d!1689601 (>= lt!2149635 0)))

(declare-fun e!3263074 () Int)

(assert (=> d!1689601 (= lt!2149635 e!3263074)))

(declare-fun c!906761 () Bool)

(assert (=> d!1689601 (= c!906761 (is-Cons!60714 lt!2149354))))

(assert (=> d!1689601 (= (zipperDepthTotal!27 lt!2149354) lt!2149635)))

(declare-fun b!5244482 () Bool)

(declare-fun contextDepthTotal!20 (Context!8460) Int)

(assert (=> b!5244482 (= e!3263074 (+ (contextDepthTotal!20 (h!67162 lt!2149354)) (zipperDepthTotal!27 (t!374019 lt!2149354))))))

(declare-fun b!5244483 () Bool)

(assert (=> b!5244483 (= e!3263074 0)))

(assert (= (and d!1689601 c!906761) b!5244482))

(assert (= (and d!1689601 (not c!906761)) b!5244483))

(declare-fun m!6288462 () Bool)

(assert (=> b!5244482 m!6288462))

(declare-fun m!6288464 () Bool)

(assert (=> b!5244482 m!6288464))

(assert (=> b!5243570 d!1689601))

(declare-fun d!1689605 () Bool)

(declare-fun lt!2149636 () Int)

(assert (=> d!1689605 (>= lt!2149636 0)))

(declare-fun e!3263075 () Int)

(assert (=> d!1689605 (= lt!2149636 e!3263075)))

(declare-fun c!906762 () Bool)

(assert (=> d!1689605 (= c!906762 (is-Cons!60714 zl!343))))

(assert (=> d!1689605 (= (zipperDepthTotal!27 zl!343) lt!2149636)))

(declare-fun b!5244484 () Bool)

(assert (=> b!5244484 (= e!3263075 (+ (contextDepthTotal!20 (h!67162 zl!343)) (zipperDepthTotal!27 (t!374019 zl!343))))))

(declare-fun b!5244485 () Bool)

(assert (=> b!5244485 (= e!3263075 0)))

(assert (= (and d!1689605 c!906762) b!5244484))

(assert (= (and d!1689605 (not c!906762)) b!5244485))

(declare-fun m!6288466 () Bool)

(assert (=> b!5244484 m!6288466))

(declare-fun m!6288468 () Bool)

(assert (=> b!5244484 m!6288468))

(assert (=> b!5243549 d!1689605))

(declare-fun d!1689607 () Bool)

(declare-fun lt!2149637 () Int)

(assert (=> d!1689607 (>= lt!2149637 0)))

(declare-fun e!3263076 () Int)

(assert (=> d!1689607 (= lt!2149637 e!3263076)))

(declare-fun c!906763 () Bool)

(assert (=> d!1689607 (= c!906763 (is-Cons!60714 lt!2149348))))

(assert (=> d!1689607 (= (zipperDepthTotal!27 lt!2149348) lt!2149637)))

(declare-fun b!5244486 () Bool)

(assert (=> b!5244486 (= e!3263076 (+ (contextDepthTotal!20 (h!67162 lt!2149348)) (zipperDepthTotal!27 (t!374019 lt!2149348))))))

(declare-fun b!5244487 () Bool)

(assert (=> b!5244487 (= e!3263076 0)))

(assert (= (and d!1689607 c!906763) b!5244486))

(assert (= (and d!1689607 (not c!906763)) b!5244487))

(declare-fun m!6288470 () Bool)

(assert (=> b!5244486 m!6288470))

(declare-fun m!6288472 () Bool)

(assert (=> b!5244486 m!6288472))

(assert (=> b!5243549 d!1689607))

(assert (=> b!5243571 d!1689399))

(declare-fun d!1689609 () Bool)

(declare-fun e!3263079 () Bool)

(assert (=> d!1689609 e!3263079))

(declare-fun res!2225790 () Bool)

(assert (=> d!1689609 (=> (not res!2225790) (not e!3263079))))

(declare-fun lt!2149642 () List!60838)

(declare-fun noDuplicate!1218 (List!60838) Bool)

(assert (=> d!1689609 (= res!2225790 (noDuplicate!1218 lt!2149642))))

(declare-fun choose!39066 ((Set Context!8460)) List!60838)

(assert (=> d!1689609 (= lt!2149642 (choose!39066 z!1189))))

(assert (=> d!1689609 (= (toList!8630 z!1189) lt!2149642)))

(declare-fun b!5244492 () Bool)

(declare-fun content!10783 (List!60838) (Set Context!8460))

(assert (=> b!5244492 (= e!3263079 (= (content!10783 lt!2149642) z!1189))))

(assert (= (and d!1689609 res!2225790) b!5244492))

(declare-fun m!6288474 () Bool)

(assert (=> d!1689609 m!6288474))

(declare-fun m!6288476 () Bool)

(assert (=> d!1689609 m!6288476))

(declare-fun m!6288478 () Bool)

(assert (=> b!5244492 m!6288478))

(assert (=> b!5243569 d!1689609))

(assert (=> b!5243568 d!1689395))

(declare-fun d!1689611 () Bool)

(assert (=> d!1689611 (= (isEmpty!32650 (t!374018 (exprs!4730 (h!67162 zl!343)))) (is-Nil!60713 (t!374018 (exprs!4730 (h!67162 zl!343)))))))

(assert (=> b!5243548 d!1689611))

(declare-fun d!1689613 () Bool)

(declare-fun lt!2149645 () Regex!14846)

(assert (=> d!1689613 (validRegex!6582 lt!2149645)))

(assert (=> d!1689613 (= lt!2149645 (generalisedUnion!775 (unfocusZipperList!288 zl!343)))))

(assert (=> d!1689613 (= (unfocusZipper!588 zl!343) lt!2149645)))

(declare-fun bs!1216496 () Bool)

(assert (= bs!1216496 d!1689613))

(declare-fun m!6288480 () Bool)

(assert (=> bs!1216496 m!6288480))

(assert (=> bs!1216496 m!6287626))

(assert (=> bs!1216496 m!6287626))

(assert (=> bs!1216496 m!6287628))

(assert (=> b!5243566 d!1689613))

(declare-fun e!3263100 () Bool)

(assert (=> b!5243576 (= tp!1467927 e!3263100)))

(declare-fun b!5244531 () Bool)

(assert (=> b!5244531 (= e!3263100 tp_is_empty!38945)))

(declare-fun b!5244533 () Bool)

(declare-fun tp!1467974 () Bool)

(assert (=> b!5244533 (= e!3263100 tp!1467974)))

(declare-fun b!5244534 () Bool)

(declare-fun tp!1467972 () Bool)

(declare-fun tp!1467973 () Bool)

(assert (=> b!5244534 (= e!3263100 (and tp!1467972 tp!1467973))))

(declare-fun b!5244532 () Bool)

(declare-fun tp!1467976 () Bool)

(declare-fun tp!1467975 () Bool)

(assert (=> b!5244532 (= e!3263100 (and tp!1467976 tp!1467975))))

(assert (= (and b!5243576 (is-ElementMatch!14846 (regOne!30205 r!7292))) b!5244531))

(assert (= (and b!5243576 (is-Concat!23691 (regOne!30205 r!7292))) b!5244532))

(assert (= (and b!5243576 (is-Star!14846 (regOne!30205 r!7292))) b!5244533))

(assert (= (and b!5243576 (is-Union!14846 (regOne!30205 r!7292))) b!5244534))

(declare-fun e!3263101 () Bool)

(assert (=> b!5243576 (= tp!1467926 e!3263101)))

(declare-fun b!5244535 () Bool)

(assert (=> b!5244535 (= e!3263101 tp_is_empty!38945)))

(declare-fun b!5244537 () Bool)

(declare-fun tp!1467979 () Bool)

(assert (=> b!5244537 (= e!3263101 tp!1467979)))

(declare-fun b!5244538 () Bool)

(declare-fun tp!1467977 () Bool)

(declare-fun tp!1467978 () Bool)

(assert (=> b!5244538 (= e!3263101 (and tp!1467977 tp!1467978))))

(declare-fun b!5244536 () Bool)

(declare-fun tp!1467981 () Bool)

(declare-fun tp!1467980 () Bool)

(assert (=> b!5244536 (= e!3263101 (and tp!1467981 tp!1467980))))

(assert (= (and b!5243576 (is-ElementMatch!14846 (regTwo!30205 r!7292))) b!5244535))

(assert (= (and b!5243576 (is-Concat!23691 (regTwo!30205 r!7292))) b!5244536))

(assert (= (and b!5243576 (is-Star!14846 (regTwo!30205 r!7292))) b!5244537))

(assert (= (and b!5243576 (is-Union!14846 (regTwo!30205 r!7292))) b!5244538))

(declare-fun b!5244543 () Bool)

(declare-fun e!3263104 () Bool)

(declare-fun tp!1467984 () Bool)

(assert (=> b!5244543 (= e!3263104 (and tp_is_empty!38945 tp!1467984))))

(assert (=> b!5243543 (= tp!1467923 e!3263104)))

(assert (= (and b!5243543 (is-Cons!60715 (t!374020 s!2326))) b!5244543))

(declare-fun e!3263105 () Bool)

(assert (=> b!5243542 (= tp!1467929 e!3263105)))

(declare-fun b!5244544 () Bool)

(assert (=> b!5244544 (= e!3263105 tp_is_empty!38945)))

(declare-fun b!5244546 () Bool)

(declare-fun tp!1467987 () Bool)

(assert (=> b!5244546 (= e!3263105 tp!1467987)))

(declare-fun b!5244547 () Bool)

(declare-fun tp!1467985 () Bool)

(declare-fun tp!1467986 () Bool)

(assert (=> b!5244547 (= e!3263105 (and tp!1467985 tp!1467986))))

(declare-fun b!5244545 () Bool)

(declare-fun tp!1467989 () Bool)

(declare-fun tp!1467988 () Bool)

(assert (=> b!5244545 (= e!3263105 (and tp!1467989 tp!1467988))))

(assert (= (and b!5243542 (is-ElementMatch!14846 (regOne!30204 r!7292))) b!5244544))

(assert (= (and b!5243542 (is-Concat!23691 (regOne!30204 r!7292))) b!5244545))

(assert (= (and b!5243542 (is-Star!14846 (regOne!30204 r!7292))) b!5244546))

(assert (= (and b!5243542 (is-Union!14846 (regOne!30204 r!7292))) b!5244547))

(declare-fun e!3263106 () Bool)

(assert (=> b!5243542 (= tp!1467922 e!3263106)))

(declare-fun b!5244548 () Bool)

(assert (=> b!5244548 (= e!3263106 tp_is_empty!38945)))

(declare-fun b!5244550 () Bool)

(declare-fun tp!1467992 () Bool)

(assert (=> b!5244550 (= e!3263106 tp!1467992)))

(declare-fun b!5244551 () Bool)

(declare-fun tp!1467990 () Bool)

(declare-fun tp!1467991 () Bool)

(assert (=> b!5244551 (= e!3263106 (and tp!1467990 tp!1467991))))

(declare-fun b!5244549 () Bool)

(declare-fun tp!1467994 () Bool)

(declare-fun tp!1467993 () Bool)

(assert (=> b!5244549 (= e!3263106 (and tp!1467994 tp!1467993))))

(assert (= (and b!5243542 (is-ElementMatch!14846 (regTwo!30204 r!7292))) b!5244548))

(assert (= (and b!5243542 (is-Concat!23691 (regTwo!30204 r!7292))) b!5244549))

(assert (= (and b!5243542 (is-Star!14846 (regTwo!30204 r!7292))) b!5244550))

(assert (= (and b!5243542 (is-Union!14846 (regTwo!30204 r!7292))) b!5244551))

(declare-fun b!5244559 () Bool)

(declare-fun e!3263112 () Bool)

(declare-fun tp!1467999 () Bool)

(assert (=> b!5244559 (= e!3263112 tp!1467999)))

(declare-fun e!3263111 () Bool)

(declare-fun b!5244558 () Bool)

(declare-fun tp!1468000 () Bool)

(assert (=> b!5244558 (= e!3263111 (and (inv!80363 (h!67162 (t!374019 zl!343))) e!3263112 tp!1468000))))

(assert (=> b!5243573 (= tp!1467925 e!3263111)))

(assert (= b!5244558 b!5244559))

(assert (= (and b!5243573 (is-Cons!60714 (t!374019 zl!343))) b!5244558))

(declare-fun m!6288502 () Bool)

(assert (=> b!5244558 m!6288502))

(declare-fun e!3263113 () Bool)

(assert (=> b!5243538 (= tp!1467931 e!3263113)))

(declare-fun b!5244560 () Bool)

(assert (=> b!5244560 (= e!3263113 tp_is_empty!38945)))

(declare-fun b!5244562 () Bool)

(declare-fun tp!1468003 () Bool)

(assert (=> b!5244562 (= e!3263113 tp!1468003)))

(declare-fun b!5244563 () Bool)

(declare-fun tp!1468001 () Bool)

(declare-fun tp!1468002 () Bool)

(assert (=> b!5244563 (= e!3263113 (and tp!1468001 tp!1468002))))

(declare-fun b!5244561 () Bool)

(declare-fun tp!1468005 () Bool)

(declare-fun tp!1468004 () Bool)

(assert (=> b!5244561 (= e!3263113 (and tp!1468005 tp!1468004))))

(assert (= (and b!5243538 (is-ElementMatch!14846 (reg!15175 r!7292))) b!5244560))

(assert (= (and b!5243538 (is-Concat!23691 (reg!15175 r!7292))) b!5244561))

(assert (= (and b!5243538 (is-Star!14846 (reg!15175 r!7292))) b!5244562))

(assert (= (and b!5243538 (is-Union!14846 (reg!15175 r!7292))) b!5244563))

(declare-fun b!5244568 () Bool)

(declare-fun e!3263116 () Bool)

(declare-fun tp!1468010 () Bool)

(declare-fun tp!1468011 () Bool)

(assert (=> b!5244568 (= e!3263116 (and tp!1468010 tp!1468011))))

(assert (=> b!5243563 (= tp!1467930 e!3263116)))

(assert (= (and b!5243563 (is-Cons!60713 (exprs!4730 (h!67162 zl!343)))) b!5244568))

(declare-fun b!5244569 () Bool)

(declare-fun e!3263117 () Bool)

(declare-fun tp!1468012 () Bool)

(declare-fun tp!1468013 () Bool)

(assert (=> b!5244569 (= e!3263117 (and tp!1468012 tp!1468013))))

(assert (=> b!5243546 (= tp!1467928 e!3263117)))

(assert (= (and b!5243546 (is-Cons!60713 (exprs!4730 setElem!33452))) b!5244569))

(declare-fun condSetEmpty!33458 () Bool)

(assert (=> setNonEmpty!33452 (= condSetEmpty!33458 (= setRest!33452 (as set.empty (Set Context!8460))))))

(declare-fun setRes!33458 () Bool)

(assert (=> setNonEmpty!33452 (= tp!1467924 setRes!33458)))

(declare-fun setIsEmpty!33458 () Bool)

(assert (=> setIsEmpty!33458 setRes!33458))

(declare-fun tp!1468019 () Bool)

(declare-fun setElem!33458 () Context!8460)

(declare-fun setNonEmpty!33458 () Bool)

(declare-fun e!3263122 () Bool)

(assert (=> setNonEmpty!33458 (= setRes!33458 (and tp!1468019 (inv!80363 setElem!33458) e!3263122))))

(declare-fun setRest!33458 () (Set Context!8460))

(assert (=> setNonEmpty!33458 (= setRest!33452 (set.union (set.insert setElem!33458 (as set.empty (Set Context!8460))) setRest!33458))))

(declare-fun b!5244578 () Bool)

(declare-fun tp!1468018 () Bool)

(assert (=> b!5244578 (= e!3263122 tp!1468018)))

(assert (= (and setNonEmpty!33452 condSetEmpty!33458) setIsEmpty!33458))

(assert (= (and setNonEmpty!33452 (not condSetEmpty!33458)) setNonEmpty!33458))

(assert (= setNonEmpty!33458 b!5244578))

(declare-fun m!6288504 () Bool)

(assert (=> setNonEmpty!33458 m!6288504))

(declare-fun b_lambda!202609 () Bool)

(assert (= b_lambda!202603 (or b!5243551 b_lambda!202609)))

(declare-fun bs!1216502 () Bool)

(declare-fun d!1689617 () Bool)

(assert (= bs!1216502 (and d!1689617 b!5243551)))

(assert (=> bs!1216502 (= (dynLambda!23993 lambda!263814 lt!2149386) (derivationStepZipperUp!218 lt!2149386 (h!67163 s!2326)))))

(assert (=> bs!1216502 m!6287604))

(assert (=> d!1689579 d!1689617))

(declare-fun b_lambda!202611 () Bool)

(assert (= b_lambda!202605 (or b!5243551 b_lambda!202611)))

(declare-fun bs!1216503 () Bool)

(declare-fun d!1689619 () Bool)

(assert (= bs!1216503 (and d!1689619 b!5243551)))

(assert (=> bs!1216503 (= (dynLambda!23993 lambda!263814 lt!2149349) (derivationStepZipperUp!218 lt!2149349 (h!67163 s!2326)))))

(assert (=> bs!1216503 m!6287606))

(assert (=> d!1689587 d!1689619))

(declare-fun b_lambda!202613 () Bool)

(assert (= b_lambda!202601 (or b!5243551 b_lambda!202613)))

(declare-fun bs!1216504 () Bool)

(declare-fun d!1689621 () Bool)

(assert (= bs!1216504 (and d!1689621 b!5243551)))

(assert (=> bs!1216504 (= (dynLambda!23993 lambda!263814 (h!67162 zl!343)) (derivationStepZipperUp!218 (h!67162 zl!343) (h!67163 s!2326)))))

(assert (=> bs!1216504 m!6287594))

(assert (=> d!1689505 d!1689621))

(declare-fun b_lambda!202615 () Bool)

(assert (= b_lambda!202607 (or b!5243561 b_lambda!202615)))

(declare-fun bs!1216505 () Bool)

(declare-fun d!1689623 () Bool)

(assert (= bs!1216505 (and d!1689623 b!5243561)))

(assert (=> bs!1216505 (= (dynLambda!23995 lambda!263815 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343))))) (validRegex!6582 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun m!6288506 () Bool)

(assert (=> bs!1216505 m!6288506))

(assert (=> b!5244476 d!1689623))

(push 1)

(assert (not b!5244534))

(assert (not d!1689541))

(assert (not b!5243755))

(assert (not b!5244380))

(assert (not b!5244460))

(assert (not b!5244482))

(assert (not b!5244486))

(assert (not b!5243824))

(assert (not b!5244133))

(assert (not b!5244373))

(assert (not d!1689563))

(assert (not bm!371338))

(assert (not d!1689587))

(assert (not d!1689427))

(assert (not b!5244299))

(assert (not bm!371357))

(assert tp_is_empty!38945)

(assert (not b!5243728))

(assert (not d!1689411))

(assert (not d!1689571))

(assert (not d!1689467))

(assert (not d!1689441))

(assert (not b!5243729))

(assert (not b!5244347))

(assert (not d!1689515))

(assert (not d!1689489))

(assert (not bm!371271))

(assert (not bm!371335))

(assert (not b!5244392))

(assert (not b!5244192))

(assert (not b!5244135))

(assert (not d!1689569))

(assert (not d!1689561))

(assert (not b!5244365))

(assert (not d!1689589))

(assert (not b!5243753))

(assert (not b!5243850))

(assert (not b!5244318))

(assert (not b!5243920))

(assert (not d!1689585))

(assert (not b!5244316))

(assert (not b!5244379))

(assert (not b!5243848))

(assert (not d!1689491))

(assert (not b_lambda!202609))

(assert (not b!5244225))

(assert (not b!5243849))

(assert (not b!5244211))

(assert (not b!5244134))

(assert (not d!1689531))

(assert (not b!5244310))

(assert (not b!5244362))

(assert (not b!5244543))

(assert (not b!5244364))

(assert (not b!5243917))

(assert (not b!5244420))

(assert (not bs!1216503))

(assert (not b!5244547))

(assert (not d!1689403))

(assert (not d!1689577))

(assert (not b!5244386))

(assert (not b!5244313))

(assert (not b!5244212))

(assert (not b!5244066))

(assert (not b!5243723))

(assert (not b!5244412))

(assert (not bm!371326))

(assert (not b!5244468))

(assert (not d!1689487))

(assert (not b!5243730))

(assert (not d!1689565))

(assert (not b!5244348))

(assert (not b!5244558))

(assert (not bm!371268))

(assert (not d!1689505))

(assert (not bm!371331))

(assert (not b!5244127))

(assert (not b_lambda!202611))

(assert (not b!5244375))

(assert (not bm!371349))

(assert (not d!1689413))

(assert (not d!1689535))

(assert (not b!5244300))

(assert (not bm!371346))

(assert (not b!5244360))

(assert (not b!5244074))

(assert (not b!5243916))

(assert (not b!5243759))

(assert (not b!5244301))

(assert (not d!1689551))

(assert (not b!5244355))

(assert (not d!1689401))

(assert (not b!5244563))

(assert (not b!5244492))

(assert (not b!5244303))

(assert (not b!5244551))

(assert (not b!5244562))

(assert (not b!5244297))

(assert (not b!5244389))

(assert (not bm!371348))

(assert (not bm!371356))

(assert (not d!1689609))

(assert (not b!5244421))

(assert (not b!5243722))

(assert (not d!1689591))

(assert (not b!5244404))

(assert (not b_lambda!202613))

(assert (not b!5244549))

(assert (not bm!371272))

(assert (not b!5244326))

(assert (not b!5243754))

(assert (not b!5244536))

(assert (not d!1689579))

(assert (not bm!371360))

(assert (not b!5244381))

(assert (not bm!371319))

(assert (not bm!371359))

(assert (not d!1689431))

(assert (not b!5244546))

(assert (not d!1689545))

(assert (not b_lambda!202615))

(assert (not b!5244559))

(assert (not b!5244578))

(assert (not b!5243751))

(assert (not bm!371344))

(assert (not b!5244387))

(assert (not d!1689547))

(assert (not d!1689399))

(assert (not d!1689429))

(assert (not b!5244465))

(assert (not b!5244561))

(assert (not b!5243726))

(assert (not b!5244538))

(assert (not d!1689397))

(assert (not b!5244545))

(assert (not b!5244568))

(assert (not d!1689597))

(assert (not b!5243756))

(assert (not b!5243727))

(assert (not b!5243758))

(assert (not d!1689613))

(assert (not b!5244477))

(assert (not b!5244367))

(assert (not b!5244353))

(assert (not d!1689549))

(assert (not b!5244384))

(assert (not b!5244374))

(assert (not b!5243918))

(assert (not bm!371345))

(assert (not d!1689533))

(assert (not b!5244466))

(assert (not b!5243835))

(assert (not d!1689415))

(assert (not bm!371265))

(assert (not b!5243851))

(assert (not b!5244197))

(assert (not bs!1216502))

(assert (not b!5244314))

(assert (not b!5244459))

(assert (not d!1689421))

(assert (not b!5244312))

(assert (not b!5244128))

(assert (not b!5244418))

(assert (not b!5244458))

(assert (not b!5244129))

(assert (not bm!371333))

(assert (not b!5244191))

(assert (not b!5244388))

(assert (not b!5244368))

(assert (not setNonEmpty!33458))

(assert (not b!5244363))

(assert (not b!5244349))

(assert (not bm!371332))

(assert (not d!1689395))

(assert (not b!5244550))

(assert (not d!1689581))

(assert (not bm!371274))

(assert (not b!5244419))

(assert (not d!1689417))

(assert (not b!5244569))

(assert (not b!5244422))

(assert (not b!5244391))

(assert (not b!5244461))

(assert (not bm!371347))

(assert (not d!1689543))

(assert (not b!5244532))

(assert (not d!1689537))

(assert (not b!5244537))

(assert (not b!5244533))

(assert (not b!5244354))

(assert (not b!5244304))

(assert (not b!5244467))

(assert (not bs!1216505))

(assert (not b!5243915))

(assert (not b!5244484))

(assert (not bm!371266))

(assert (not bs!1216504))

(assert (not bm!371336))

(assert (not b!5243914))

(assert (not bm!371318))

(assert (not d!1689575))

(assert (not b!5244196))

(assert (not b!5243852))

(assert (not b!5244315))

(assert (not b!5244448))

(assert (not d!1689447))

(assert (not b!5244302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1689671 () Bool)

(assert (=> d!1689671 (= (isEmpty!32650 lt!2149356) (is-Nil!60713 lt!2149356))))

(assert (=> b!5244360 d!1689671))

(declare-fun bs!1216527 () Bool)

(declare-fun b!5244692 () Bool)

(assert (= bs!1216527 (and b!5244692 b!5244075)))

(declare-fun lambda!263902 () Int)

(assert (=> bs!1216527 (= (and (= (reg!15175 (regOne!30205 lt!2149350)) (reg!15175 r!7292)) (= (regOne!30205 lt!2149350) r!7292)) (= lambda!263902 lambda!263862))))

(declare-fun bs!1216528 () Bool)

(assert (= bs!1216528 (and b!5244692 b!5244403)))

(assert (=> bs!1216528 (not (= lambda!263902 lambda!263886))))

(declare-fun bs!1216529 () Bool)

(assert (= bs!1216529 (and b!5244692 b!5244317)))

(assert (=> bs!1216529 (not (= lambda!263902 lambda!263880))))

(declare-fun bs!1216530 () Bool)

(assert (= bs!1216530 (and b!5244692 d!1689441)))

(assert (=> bs!1216530 (not (= lambda!263902 lambda!263856))))

(declare-fun bs!1216531 () Bool)

(assert (= bs!1216531 (and b!5244692 b!5244327)))

(assert (=> bs!1216531 (= (and (= (reg!15175 (regOne!30205 lt!2149350)) (reg!15175 lt!2149381)) (= (regOne!30205 lt!2149350) lt!2149381)) (= lambda!263902 lambda!263879))))

(declare-fun bs!1216532 () Bool)

(assert (= bs!1216532 (and b!5244692 b!5243550)))

(assert (=> bs!1216532 (not (= lambda!263902 lambda!263813))))

(declare-fun bs!1216533 () Bool)

(assert (= bs!1216533 (and b!5244692 b!5244065)))

(assert (=> bs!1216533 (not (= lambda!263902 lambda!263863))))

(declare-fun bs!1216534 () Bool)

(assert (= bs!1216534 (and b!5244692 d!1689431)))

(assert (=> bs!1216534 (not (= lambda!263902 lambda!263851))))

(assert (=> bs!1216530 (not (= lambda!263902 lambda!263857))))

(declare-fun bs!1216535 () Bool)

(assert (= bs!1216535 (and b!5244692 b!5244413)))

(assert (=> bs!1216535 (= (and (= (reg!15175 (regOne!30205 lt!2149350)) (reg!15175 lt!2149350)) (= (regOne!30205 lt!2149350) lt!2149350)) (= lambda!263902 lambda!263883))))

(assert (=> bs!1216532 (not (= lambda!263902 lambda!263812))))

(assert (=> b!5244692 true))

(assert (=> b!5244692 true))

(declare-fun bs!1216536 () Bool)

(declare-fun b!5244682 () Bool)

(assert (= bs!1216536 (and b!5244682 b!5244075)))

(declare-fun lambda!263903 () Int)

(assert (=> bs!1216536 (not (= lambda!263903 lambda!263862))))

(declare-fun bs!1216537 () Bool)

(assert (= bs!1216537 (and b!5244682 b!5244403)))

(assert (=> bs!1216537 (= (and (= (regOne!30204 (regOne!30205 lt!2149350)) (regOne!30204 lt!2149350)) (= (regTwo!30204 (regOne!30205 lt!2149350)) (regTwo!30204 lt!2149350))) (= lambda!263903 lambda!263886))))

(declare-fun bs!1216538 () Bool)

(assert (= bs!1216538 (and b!5244682 b!5244317)))

(assert (=> bs!1216538 (= (and (= (regOne!30204 (regOne!30205 lt!2149350)) (regOne!30204 lt!2149381)) (= (regTwo!30204 (regOne!30205 lt!2149350)) (regTwo!30204 lt!2149381))) (= lambda!263903 lambda!263880))))

(declare-fun bs!1216539 () Bool)

(assert (= bs!1216539 (and b!5244682 d!1689441)))

(assert (=> bs!1216539 (not (= lambda!263903 lambda!263856))))

(declare-fun bs!1216540 () Bool)

(assert (= bs!1216540 (and b!5244682 b!5244327)))

(assert (=> bs!1216540 (not (= lambda!263903 lambda!263879))))

(declare-fun bs!1216541 () Bool)

(assert (= bs!1216541 (and b!5244682 b!5244692)))

(assert (=> bs!1216541 (not (= lambda!263903 lambda!263902))))

(declare-fun bs!1216542 () Bool)

(assert (= bs!1216542 (and b!5244682 b!5243550)))

(assert (=> bs!1216542 (= (and (= (regOne!30204 (regOne!30205 lt!2149350)) (regOne!30204 r!7292)) (= (regTwo!30204 (regOne!30205 lt!2149350)) (regTwo!30204 r!7292))) (= lambda!263903 lambda!263813))))

(declare-fun bs!1216543 () Bool)

(assert (= bs!1216543 (and b!5244682 b!5244065)))

(assert (=> bs!1216543 (= (and (= (regOne!30204 (regOne!30205 lt!2149350)) (regOne!30204 r!7292)) (= (regTwo!30204 (regOne!30205 lt!2149350)) (regTwo!30204 r!7292))) (= lambda!263903 lambda!263863))))

(declare-fun bs!1216544 () Bool)

(assert (= bs!1216544 (and b!5244682 d!1689431)))

(assert (=> bs!1216544 (not (= lambda!263903 lambda!263851))))

(assert (=> bs!1216539 (= (and (= (regOne!30204 (regOne!30205 lt!2149350)) (regOne!30204 r!7292)) (= (regTwo!30204 (regOne!30205 lt!2149350)) (regTwo!30204 r!7292))) (= lambda!263903 lambda!263857))))

(declare-fun bs!1216545 () Bool)

(assert (= bs!1216545 (and b!5244682 b!5244413)))

(assert (=> bs!1216545 (not (= lambda!263903 lambda!263883))))

(assert (=> bs!1216542 (not (= lambda!263903 lambda!263812))))

(assert (=> b!5244682 true))

(assert (=> b!5244682 true))

(declare-fun e!3263180 () Bool)

(declare-fun call!371375 () Bool)

(assert (=> b!5244682 (= e!3263180 call!371375)))

(declare-fun b!5244683 () Bool)

(declare-fun e!3263182 () Bool)

(declare-fun e!3263178 () Bool)

(assert (=> b!5244683 (= e!3263182 e!3263178)))

(declare-fun res!2225811 () Bool)

(assert (=> b!5244683 (= res!2225811 (matchRSpec!1949 (regOne!30205 (regOne!30205 lt!2149350)) s!2326))))

(assert (=> b!5244683 (=> res!2225811 e!3263178)))

(declare-fun b!5244684 () Bool)

(declare-fun e!3263183 () Bool)

(declare-fun e!3263179 () Bool)

(assert (=> b!5244684 (= e!3263183 e!3263179)))

(declare-fun res!2225810 () Bool)

(assert (=> b!5244684 (= res!2225810 (not (is-EmptyLang!14846 (regOne!30205 lt!2149350))))))

(assert (=> b!5244684 (=> (not res!2225810) (not e!3263179))))

(declare-fun bm!371370 () Bool)

(declare-fun call!371376 () Bool)

(assert (=> bm!371370 (= call!371376 (isEmpty!32653 s!2326))))

(declare-fun bm!371371 () Bool)

(declare-fun c!906796 () Bool)

(assert (=> bm!371371 (= call!371375 (Exists!2027 (ite c!906796 lambda!263902 lambda!263903)))))

(declare-fun b!5244685 () Bool)

(declare-fun res!2225812 () Bool)

(declare-fun e!3263177 () Bool)

(assert (=> b!5244685 (=> res!2225812 e!3263177)))

(assert (=> b!5244685 (= res!2225812 call!371376)))

(assert (=> b!5244685 (= e!3263180 e!3263177)))

(declare-fun b!5244686 () Bool)

(assert (=> b!5244686 (= e!3263183 call!371376)))

(declare-fun d!1689673 () Bool)

(declare-fun c!906797 () Bool)

(assert (=> d!1689673 (= c!906797 (is-EmptyExpr!14846 (regOne!30205 lt!2149350)))))

(assert (=> d!1689673 (= (matchRSpec!1949 (regOne!30205 lt!2149350) s!2326) e!3263183)))

(declare-fun b!5244687 () Bool)

(declare-fun c!906798 () Bool)

(assert (=> b!5244687 (= c!906798 (is-ElementMatch!14846 (regOne!30205 lt!2149350)))))

(declare-fun e!3263181 () Bool)

(assert (=> b!5244687 (= e!3263179 e!3263181)))

(declare-fun b!5244688 () Bool)

(assert (=> b!5244688 (= e!3263181 (= s!2326 (Cons!60715 (c!906500 (regOne!30205 lt!2149350)) Nil!60715)))))

(declare-fun b!5244689 () Bool)

(assert (=> b!5244689 (= e!3263182 e!3263180)))

(assert (=> b!5244689 (= c!906796 (is-Star!14846 (regOne!30205 lt!2149350)))))

(declare-fun b!5244690 () Bool)

(declare-fun c!906799 () Bool)

(assert (=> b!5244690 (= c!906799 (is-Union!14846 (regOne!30205 lt!2149350)))))

(assert (=> b!5244690 (= e!3263181 e!3263182)))

(declare-fun b!5244691 () Bool)

(assert (=> b!5244691 (= e!3263178 (matchRSpec!1949 (regTwo!30205 (regOne!30205 lt!2149350)) s!2326))))

(assert (=> b!5244692 (= e!3263177 call!371375)))

(assert (= (and d!1689673 c!906797) b!5244686))

(assert (= (and d!1689673 (not c!906797)) b!5244684))

(assert (= (and b!5244684 res!2225810) b!5244687))

(assert (= (and b!5244687 c!906798) b!5244688))

(assert (= (and b!5244687 (not c!906798)) b!5244690))

(assert (= (and b!5244690 c!906799) b!5244683))

(assert (= (and b!5244690 (not c!906799)) b!5244689))

(assert (= (and b!5244683 (not res!2225811)) b!5244691))

(assert (= (and b!5244689 c!906796) b!5244685))

(assert (= (and b!5244689 (not c!906796)) b!5244682))

(assert (= (and b!5244685 (not res!2225812)) b!5244692))

(assert (= (or b!5244692 b!5244682) bm!371371))

(assert (= (or b!5244686 b!5244685) bm!371370))

(declare-fun m!6288600 () Bool)

(assert (=> b!5244683 m!6288600))

(assert (=> bm!371370 m!6288058))

(declare-fun m!6288602 () Bool)

(assert (=> bm!371371 m!6288602))

(declare-fun m!6288604 () Bool)

(assert (=> b!5244691 m!6288604))

(assert (=> b!5244404 d!1689673))

(declare-fun d!1689675 () Bool)

(declare-fun lt!2149657 () Int)

(assert (=> d!1689675 (>= lt!2149657 0)))

(declare-fun e!3263186 () Int)

(assert (=> d!1689675 (= lt!2149657 e!3263186)))

(declare-fun c!906803 () Bool)

(assert (=> d!1689675 (= c!906803 (is-Cons!60713 (exprs!4730 (h!67162 zl!343))))))

(assert (=> d!1689675 (= (contextDepthTotal!20 (h!67162 zl!343)) lt!2149657)))

(declare-fun b!5244697 () Bool)

(declare-fun regexDepthTotal!5 (Regex!14846) Int)

(assert (=> b!5244697 (= e!3263186 (+ (regexDepthTotal!5 (h!67161 (exprs!4730 (h!67162 zl!343)))) (contextDepthTotal!20 (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343)))))))))

(declare-fun b!5244698 () Bool)

(assert (=> b!5244698 (= e!3263186 1)))

(assert (= (and d!1689675 c!906803) b!5244697))

(assert (= (and d!1689675 (not c!906803)) b!5244698))

(declare-fun m!6288606 () Bool)

(assert (=> b!5244697 m!6288606))

(declare-fun m!6288608 () Bool)

(assert (=> b!5244697 m!6288608))

(assert (=> b!5244484 d!1689675))

(declare-fun d!1689677 () Bool)

(declare-fun lt!2149658 () Int)

(assert (=> d!1689677 (>= lt!2149658 0)))

(declare-fun e!3263187 () Int)

(assert (=> d!1689677 (= lt!2149658 e!3263187)))

(declare-fun c!906804 () Bool)

(assert (=> d!1689677 (= c!906804 (is-Cons!60714 (t!374019 zl!343)))))

(assert (=> d!1689677 (= (zipperDepthTotal!27 (t!374019 zl!343)) lt!2149658)))

(declare-fun b!5244699 () Bool)

(assert (=> b!5244699 (= e!3263187 (+ (contextDepthTotal!20 (h!67162 (t!374019 zl!343))) (zipperDepthTotal!27 (t!374019 (t!374019 zl!343)))))))

(declare-fun b!5244700 () Bool)

(assert (=> b!5244700 (= e!3263187 0)))

(assert (= (and d!1689677 c!906804) b!5244699))

(assert (= (and d!1689677 (not c!906804)) b!5244700))

(declare-fun m!6288610 () Bool)

(assert (=> b!5244699 m!6288610))

(declare-fun m!6288612 () Bool)

(assert (=> b!5244699 m!6288612))

(assert (=> b!5244484 d!1689677))

(assert (=> d!1689549 d!1689541))

(assert (=> d!1689549 d!1689559))

(declare-fun d!1689679 () Bool)

(assert (=> d!1689679 (= (matchR!7031 lt!2149350 s!2326) (matchRSpec!1949 lt!2149350 s!2326))))

(assert (=> d!1689679 true))

(declare-fun _$88!3519 () Unit!152782)

(assert (=> d!1689679 (= (choose!39057 lt!2149350 s!2326) _$88!3519)))

(declare-fun bs!1216546 () Bool)

(assert (= bs!1216546 d!1689679))

(assert (=> bs!1216546 m!6287682))

(assert (=> bs!1216546 m!6287674))

(assert (=> d!1689549 d!1689679))

(declare-fun c!906806 () Bool)

(declare-fun bm!371372 () Bool)

(declare-fun c!906805 () Bool)

(declare-fun call!371379 () Bool)

(assert (=> bm!371372 (= call!371379 (validRegex!6582 (ite c!906806 (reg!15175 lt!2149350) (ite c!906805 (regOne!30205 lt!2149350) (regOne!30204 lt!2149350)))))))

(declare-fun b!5244701 () Bool)

(declare-fun e!3263191 () Bool)

(declare-fun e!3263193 () Bool)

(assert (=> b!5244701 (= e!3263191 e!3263193)))

(assert (=> b!5244701 (= c!906805 (is-Union!14846 lt!2149350))))

(declare-fun b!5244702 () Bool)

(declare-fun e!3263192 () Bool)

(assert (=> b!5244702 (= e!3263192 e!3263191)))

(assert (=> b!5244702 (= c!906806 (is-Star!14846 lt!2149350))))

(declare-fun b!5244703 () Bool)

(declare-fun res!2225815 () Bool)

(declare-fun e!3263194 () Bool)

(assert (=> b!5244703 (=> (not res!2225815) (not e!3263194))))

(declare-fun call!371377 () Bool)

(assert (=> b!5244703 (= res!2225815 call!371377)))

(assert (=> b!5244703 (= e!3263193 e!3263194)))

(declare-fun bm!371373 () Bool)

(declare-fun call!371378 () Bool)

(assert (=> bm!371373 (= call!371378 (validRegex!6582 (ite c!906805 (regTwo!30205 lt!2149350) (regTwo!30204 lt!2149350))))))

(declare-fun bm!371374 () Bool)

(assert (=> bm!371374 (= call!371377 call!371379)))

(declare-fun b!5244704 () Bool)

(declare-fun e!3263190 () Bool)

(assert (=> b!5244704 (= e!3263191 e!3263190)))

(declare-fun res!2225816 () Bool)

(assert (=> b!5244704 (= res!2225816 (not (nullable!5015 (reg!15175 lt!2149350))))))

(assert (=> b!5244704 (=> (not res!2225816) (not e!3263190))))

(declare-fun b!5244705 () Bool)

(declare-fun e!3263189 () Bool)

(assert (=> b!5244705 (= e!3263189 call!371378)))

(declare-fun b!5244706 () Bool)

(declare-fun res!2225814 () Bool)

(declare-fun e!3263188 () Bool)

(assert (=> b!5244706 (=> res!2225814 e!3263188)))

(assert (=> b!5244706 (= res!2225814 (not (is-Concat!23691 lt!2149350)))))

(assert (=> b!5244706 (= e!3263193 e!3263188)))

(declare-fun b!5244708 () Bool)

(assert (=> b!5244708 (= e!3263190 call!371379)))

(declare-fun b!5244709 () Bool)

(assert (=> b!5244709 (= e!3263194 call!371378)))

(declare-fun b!5244707 () Bool)

(assert (=> b!5244707 (= e!3263188 e!3263189)))

(declare-fun res!2225817 () Bool)

(assert (=> b!5244707 (=> (not res!2225817) (not e!3263189))))

(assert (=> b!5244707 (= res!2225817 call!371377)))

(declare-fun d!1689681 () Bool)

(declare-fun res!2225813 () Bool)

(assert (=> d!1689681 (=> res!2225813 e!3263192)))

(assert (=> d!1689681 (= res!2225813 (is-ElementMatch!14846 lt!2149350))))

(assert (=> d!1689681 (= (validRegex!6582 lt!2149350) e!3263192)))

(assert (= (and d!1689681 (not res!2225813)) b!5244702))

(assert (= (and b!5244702 c!906806) b!5244704))

(assert (= (and b!5244702 (not c!906806)) b!5244701))

(assert (= (and b!5244704 res!2225816) b!5244708))

(assert (= (and b!5244701 c!906805) b!5244703))

(assert (= (and b!5244701 (not c!906805)) b!5244706))

(assert (= (and b!5244703 res!2225815) b!5244709))

(assert (= (and b!5244706 (not res!2225814)) b!5244707))

(assert (= (and b!5244707 res!2225817) b!5244705))

(assert (= (or b!5244709 b!5244705) bm!371373))

(assert (= (or b!5244703 b!5244707) bm!371374))

(assert (= (or b!5244708 bm!371374) bm!371372))

(declare-fun m!6288614 () Bool)

(assert (=> bm!371372 m!6288614))

(declare-fun m!6288616 () Bool)

(assert (=> bm!371373 m!6288616))

(declare-fun m!6288618 () Bool)

(assert (=> b!5244704 m!6288618))

(assert (=> d!1689549 d!1689681))

(declare-fun e!3263197 () (Set Context!8460))

(declare-fun call!371380 () (Set Context!8460))

(declare-fun b!5244710 () Bool)

(assert (=> b!5244710 (= e!3263197 (set.union call!371380 (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343))))))) (h!67163 s!2326))))))

(declare-fun b!5244711 () Bool)

(declare-fun e!3263196 () Bool)

(assert (=> b!5244711 (= e!3263196 (nullable!5015 (h!67161 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343))))))))))

(declare-fun d!1689683 () Bool)

(declare-fun c!906807 () Bool)

(assert (=> d!1689683 (= c!906807 e!3263196)))

(declare-fun res!2225818 () Bool)

(assert (=> d!1689683 (=> (not res!2225818) (not e!3263196))))

(assert (=> d!1689683 (= res!2225818 (is-Cons!60713 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343)))))))))

(assert (=> d!1689683 (= (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343)))) (h!67163 s!2326)) e!3263197)))

(declare-fun b!5244712 () Bool)

(declare-fun e!3263195 () (Set Context!8460))

(assert (=> b!5244712 (= e!3263197 e!3263195)))

(declare-fun c!906808 () Bool)

(assert (=> b!5244712 (= c!906808 (is-Cons!60713 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343)))))))))

(declare-fun b!5244713 () Bool)

(assert (=> b!5244713 (= e!3263195 call!371380)))

(declare-fun bm!371375 () Bool)

(assert (=> bm!371375 (= call!371380 (derivationStepZipperDown!294 (h!67161 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343)))))) (Context!8461 (t!374018 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343))))))) (h!67163 s!2326)))))

(declare-fun b!5244714 () Bool)

(assert (=> b!5244714 (= e!3263195 (as set.empty (Set Context!8460)))))

(assert (= (and d!1689683 res!2225818) b!5244711))

(assert (= (and d!1689683 c!906807) b!5244710))

(assert (= (and d!1689683 (not c!906807)) b!5244712))

(assert (= (and b!5244712 c!906808) b!5244713))

(assert (= (and b!5244712 (not c!906808)) b!5244714))

(assert (= (or b!5244710 b!5244713) bm!371375))

(declare-fun m!6288620 () Bool)

(assert (=> b!5244710 m!6288620))

(declare-fun m!6288622 () Bool)

(assert (=> b!5244711 m!6288622))

(declare-fun m!6288624 () Bool)

(assert (=> bm!371375 m!6288624))

(assert (=> b!5244196 d!1689683))

(declare-fun d!1689685 () Bool)

(declare-fun c!906809 () Bool)

(assert (=> d!1689685 (= c!906809 (isEmpty!32653 (tail!10337 s!2326)))))

(declare-fun e!3263198 () Bool)

(assert (=> d!1689685 (= (matchZipper!1090 (derivationStepZipper!1105 lt!2149355 (head!11240 s!2326)) (tail!10337 s!2326)) e!3263198)))

(declare-fun b!5244715 () Bool)

(assert (=> b!5244715 (= e!3263198 (nullableZipper!1261 (derivationStepZipper!1105 lt!2149355 (head!11240 s!2326))))))

(declare-fun b!5244716 () Bool)

(assert (=> b!5244716 (= e!3263198 (matchZipper!1090 (derivationStepZipper!1105 (derivationStepZipper!1105 lt!2149355 (head!11240 s!2326)) (head!11240 (tail!10337 s!2326))) (tail!10337 (tail!10337 s!2326))))))

(assert (= (and d!1689685 c!906809) b!5244715))

(assert (= (and d!1689685 (not c!906809)) b!5244716))

(assert (=> d!1689685 m!6288092))

(assert (=> d!1689685 m!6288094))

(assert (=> b!5244715 m!6288274))

(declare-fun m!6288626 () Bool)

(assert (=> b!5244715 m!6288626))

(assert (=> b!5244716 m!6288092))

(declare-fun m!6288628 () Bool)

(assert (=> b!5244716 m!6288628))

(assert (=> b!5244716 m!6288274))

(assert (=> b!5244716 m!6288628))

(declare-fun m!6288630 () Bool)

(assert (=> b!5244716 m!6288630))

(assert (=> b!5244716 m!6288092))

(declare-fun m!6288632 () Bool)

(assert (=> b!5244716 m!6288632))

(assert (=> b!5244716 m!6288630))

(assert (=> b!5244716 m!6288632))

(declare-fun m!6288634 () Bool)

(assert (=> b!5244716 m!6288634))

(assert (=> b!5244316 d!1689685))

(declare-fun bs!1216547 () Bool)

(declare-fun d!1689687 () Bool)

(assert (= bs!1216547 (and d!1689687 b!5243551)))

(declare-fun lambda!263906 () Int)

(assert (=> bs!1216547 (= (= (head!11240 s!2326) (h!67163 s!2326)) (= lambda!263906 lambda!263814))))

(assert (=> d!1689687 true))

(assert (=> d!1689687 (= (derivationStepZipper!1105 lt!2149355 (head!11240 s!2326)) (flatMap!573 lt!2149355 lambda!263906))))

(declare-fun bs!1216548 () Bool)

(assert (= bs!1216548 d!1689687))

(declare-fun m!6288636 () Bool)

(assert (=> bs!1216548 m!6288636))

(assert (=> b!5244316 d!1689687))

(declare-fun d!1689689 () Bool)

(assert (=> d!1689689 (= (head!11240 s!2326) (h!67163 s!2326))))

(assert (=> b!5244316 d!1689689))

(declare-fun d!1689691 () Bool)

(assert (=> d!1689691 (= (tail!10337 s!2326) (t!374020 s!2326))))

(assert (=> b!5244316 d!1689691))

(declare-fun d!1689693 () Bool)

(assert (=> d!1689693 (= (isEmpty!32650 (tail!10338 lt!2149365)) (is-Nil!60713 (tail!10338 lt!2149365)))))

(assert (=> b!5244389 d!1689693))

(declare-fun d!1689695 () Bool)

(assert (=> d!1689695 (= (tail!10338 lt!2149365) (t!374018 lt!2149365))))

(assert (=> b!5244389 d!1689695))

(declare-fun b!5244719 () Bool)

(declare-fun c!906816 () Bool)

(declare-fun e!3263203 () Bool)

(assert (=> b!5244719 (= c!906816 e!3263203)))

(declare-fun res!2225819 () Bool)

(assert (=> b!5244719 (=> (not res!2225819) (not e!3263203))))

(assert (=> b!5244719 (= res!2225819 (is-Concat!23691 (h!67161 (exprs!4730 lt!2149386))))))

(declare-fun e!3263199 () (Set Context!8460))

(declare-fun e!3263204 () (Set Context!8460))

(assert (=> b!5244719 (= e!3263199 e!3263204)))

(declare-fun b!5244720 () Bool)

(declare-fun e!3263202 () (Set Context!8460))

(declare-fun call!371385 () (Set Context!8460))

(assert (=> b!5244720 (= e!3263202 call!371385)))

(declare-fun bm!371376 () Bool)

(declare-fun call!371386 () (Set Context!8460))

(declare-fun call!371384 () (Set Context!8460))

(assert (=> bm!371376 (= call!371386 call!371384)))

(declare-fun b!5244721 () Bool)

(declare-fun call!371381 () (Set Context!8460))

(assert (=> b!5244721 (= e!3263204 (set.union call!371381 call!371386))))

(declare-fun b!5244722 () Bool)

(assert (=> b!5244722 (= e!3263202 (as set.empty (Set Context!8460)))))

(declare-fun c!906813 () Bool)

(declare-fun c!906812 () Bool)

(declare-fun call!371383 () List!60837)

(declare-fun bm!371377 () Bool)

(assert (=> bm!371377 (= call!371384 (derivationStepZipperDown!294 (ite c!906812 (regOne!30205 (h!67161 (exprs!4730 lt!2149386))) (ite c!906816 (regTwo!30204 (h!67161 (exprs!4730 lt!2149386))) (ite c!906813 (regOne!30204 (h!67161 (exprs!4730 lt!2149386))) (reg!15175 (h!67161 (exprs!4730 lt!2149386)))))) (ite (or c!906812 c!906816) (Context!8461 (t!374018 (exprs!4730 lt!2149386))) (Context!8461 call!371383)) (h!67163 s!2326)))))

(declare-fun b!5244723 () Bool)

(assert (=> b!5244723 (= e!3263199 (set.union call!371384 call!371381))))

(declare-fun b!5244724 () Bool)

(declare-fun e!3263200 () (Set Context!8460))

(assert (=> b!5244724 (= e!3263200 call!371385)))

(declare-fun d!1689697 () Bool)

(declare-fun c!906815 () Bool)

(assert (=> d!1689697 (= c!906815 (and (is-ElementMatch!14846 (h!67161 (exprs!4730 lt!2149386))) (= (c!906500 (h!67161 (exprs!4730 lt!2149386))) (h!67163 s!2326))))))

(declare-fun e!3263201 () (Set Context!8460))

(assert (=> d!1689697 (= (derivationStepZipperDown!294 (h!67161 (exprs!4730 lt!2149386)) (Context!8461 (t!374018 (exprs!4730 lt!2149386))) (h!67163 s!2326)) e!3263201)))

(declare-fun b!5244725 () Bool)

(declare-fun c!906814 () Bool)

(assert (=> b!5244725 (= c!906814 (is-Star!14846 (h!67161 (exprs!4730 lt!2149386))))))

(assert (=> b!5244725 (= e!3263200 e!3263202)))

(declare-fun bm!371378 () Bool)

(declare-fun call!371382 () List!60837)

(assert (=> bm!371378 (= call!371382 ($colon$colon!1311 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149386)))) (ite (or c!906816 c!906813) (regTwo!30204 (h!67161 (exprs!4730 lt!2149386))) (h!67161 (exprs!4730 lt!2149386)))))))

(declare-fun b!5244726 () Bool)

(assert (=> b!5244726 (= e!3263201 e!3263199)))

(assert (=> b!5244726 (= c!906812 (is-Union!14846 (h!67161 (exprs!4730 lt!2149386))))))

(declare-fun bm!371379 () Bool)

(assert (=> bm!371379 (= call!371385 call!371386)))

(declare-fun bm!371380 () Bool)

(assert (=> bm!371380 (= call!371381 (derivationStepZipperDown!294 (ite c!906812 (regTwo!30205 (h!67161 (exprs!4730 lt!2149386))) (regOne!30204 (h!67161 (exprs!4730 lt!2149386)))) (ite c!906812 (Context!8461 (t!374018 (exprs!4730 lt!2149386))) (Context!8461 call!371382)) (h!67163 s!2326)))))

(declare-fun b!5244727 () Bool)

(assert (=> b!5244727 (= e!3263201 (set.insert (Context!8461 (t!374018 (exprs!4730 lt!2149386))) (as set.empty (Set Context!8460))))))

(declare-fun b!5244728 () Bool)

(assert (=> b!5244728 (= e!3263203 (nullable!5015 (regOne!30204 (h!67161 (exprs!4730 lt!2149386)))))))

(declare-fun b!5244729 () Bool)

(assert (=> b!5244729 (= e!3263204 e!3263200)))

(assert (=> b!5244729 (= c!906813 (is-Concat!23691 (h!67161 (exprs!4730 lt!2149386))))))

(declare-fun bm!371381 () Bool)

(assert (=> bm!371381 (= call!371383 call!371382)))

(assert (= (and d!1689697 c!906815) b!5244727))

(assert (= (and d!1689697 (not c!906815)) b!5244726))

(assert (= (and b!5244726 c!906812) b!5244723))

(assert (= (and b!5244726 (not c!906812)) b!5244719))

(assert (= (and b!5244719 res!2225819) b!5244728))

(assert (= (and b!5244719 c!906816) b!5244721))

(assert (= (and b!5244719 (not c!906816)) b!5244729))

(assert (= (and b!5244729 c!906813) b!5244724))

(assert (= (and b!5244729 (not c!906813)) b!5244725))

(assert (= (and b!5244725 c!906814) b!5244720))

(assert (= (and b!5244725 (not c!906814)) b!5244722))

(assert (= (or b!5244724 b!5244720) bm!371381))

(assert (= (or b!5244724 b!5244720) bm!371379))

(assert (= (or b!5244721 bm!371381) bm!371378))

(assert (= (or b!5244721 bm!371379) bm!371376))

(assert (= (or b!5244723 b!5244721) bm!371380))

(assert (= (or b!5244723 bm!371376) bm!371377))

(declare-fun m!6288638 () Bool)

(assert (=> bm!371377 m!6288638))

(declare-fun m!6288640 () Bool)

(assert (=> bm!371380 m!6288640))

(declare-fun m!6288642 () Bool)

(assert (=> b!5244727 m!6288642))

(declare-fun m!6288644 () Bool)

(assert (=> bm!371378 m!6288644))

(declare-fun m!6288646 () Bool)

(assert (=> b!5244728 m!6288646))

(assert (=> bm!371360 d!1689697))

(declare-fun d!1689699 () Bool)

(assert (=> d!1689699 (= (isEmpty!32653 (t!374020 s!2326)) (is-Nil!60715 (t!374020 s!2326)))))

(assert (=> d!1689565 d!1689699))

(assert (=> d!1689413 d!1689699))

(declare-fun d!1689701 () Bool)

(assert (=> d!1689701 (= (isEmpty!32653 (tail!10337 s!2326)) (is-Nil!60715 (tail!10337 s!2326)))))

(assert (=> b!5244375 d!1689701))

(assert (=> b!5244375 d!1689691))

(assert (=> d!1689587 d!1689575))

(declare-fun d!1689703 () Bool)

(assert (=> d!1689703 (= (flatMap!573 lt!2149355 lambda!263814) (dynLambda!23993 lambda!263814 lt!2149349))))

(assert (=> d!1689703 true))

(declare-fun _$13!1771 () Unit!152782)

(assert (=> d!1689703 (= (choose!39060 lt!2149355 lt!2149349 lambda!263814) _$13!1771)))

(declare-fun b_lambda!202629 () Bool)

(assert (=> (not b_lambda!202629) (not d!1689703)))

(declare-fun bs!1216549 () Bool)

(assert (= bs!1216549 d!1689703))

(assert (=> bs!1216549 m!6287602))

(assert (=> bs!1216549 m!6288430))

(assert (=> d!1689587 d!1689703))

(declare-fun b!5244730 () Bool)

(declare-fun c!906821 () Bool)

(declare-fun e!3263209 () Bool)

(assert (=> b!5244730 (= c!906821 e!3263209)))

(declare-fun res!2225820 () Bool)

(assert (=> b!5244730 (=> (not res!2225820) (not e!3263209))))

(assert (=> b!5244730 (= res!2225820 (is-Concat!23691 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343)))))))))))

(declare-fun e!3263205 () (Set Context!8460))

(declare-fun e!3263210 () (Set Context!8460))

(assert (=> b!5244730 (= e!3263205 e!3263210)))

(declare-fun b!5244731 () Bool)

(declare-fun e!3263208 () (Set Context!8460))

(declare-fun call!371391 () (Set Context!8460))

(assert (=> b!5244731 (= e!3263208 call!371391)))

(declare-fun bm!371382 () Bool)

(declare-fun call!371392 () (Set Context!8460))

(declare-fun call!371390 () (Set Context!8460))

(assert (=> bm!371382 (= call!371392 call!371390)))

(declare-fun b!5244732 () Bool)

(declare-fun call!371387 () (Set Context!8460))

(assert (=> b!5244732 (= e!3263210 (set.union call!371387 call!371392))))

(declare-fun b!5244733 () Bool)

(assert (=> b!5244733 (= e!3263208 (as set.empty (Set Context!8460)))))

(declare-fun call!371389 () List!60837)

(declare-fun bm!371383 () Bool)

(declare-fun c!906817 () Bool)

(declare-fun c!906818 () Bool)

(assert (=> bm!371383 (= call!371390 (derivationStepZipperDown!294 (ite c!906817 (regOne!30205 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343)))))))) (ite c!906821 (regTwo!30204 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343)))))))) (ite c!906818 (regOne!30204 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343)))))))) (reg!15175 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343))))))))))) (ite (or c!906817 c!906821) (ite (or c!906681 c!906685) lt!2149388 (Context!8461 call!371341)) (Context!8461 call!371389)) (h!67163 s!2326)))))

(declare-fun b!5244734 () Bool)

(assert (=> b!5244734 (= e!3263205 (set.union call!371390 call!371387))))

(declare-fun b!5244735 () Bool)

(declare-fun e!3263206 () (Set Context!8460))

(assert (=> b!5244735 (= e!3263206 call!371391)))

(declare-fun d!1689705 () Bool)

(declare-fun c!906820 () Bool)

(assert (=> d!1689705 (= c!906820 (and (is-ElementMatch!14846 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343)))))))) (= (c!906500 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343)))))))) (h!67163 s!2326))))))

(declare-fun e!3263207 () (Set Context!8460))

(assert (=> d!1689705 (= (derivationStepZipperDown!294 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343))))))) (ite (or c!906681 c!906685) lt!2149388 (Context!8461 call!371341)) (h!67163 s!2326)) e!3263207)))

(declare-fun c!906819 () Bool)

(declare-fun b!5244736 () Bool)

(assert (=> b!5244736 (= c!906819 (is-Star!14846 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343)))))))))))

(assert (=> b!5244736 (= e!3263206 e!3263208)))

(declare-fun bm!371384 () Bool)

(declare-fun call!371388 () List!60837)

(assert (=> bm!371384 (= call!371388 ($colon$colon!1311 (exprs!4730 (ite (or c!906681 c!906685) lt!2149388 (Context!8461 call!371341))) (ite (or c!906821 c!906818) (regTwo!30204 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343)))))))) (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343))))))))))))

(declare-fun b!5244737 () Bool)

(assert (=> b!5244737 (= e!3263207 e!3263205)))

(assert (=> b!5244737 (= c!906817 (is-Union!14846 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343)))))))))))

(declare-fun bm!371385 () Bool)

(assert (=> bm!371385 (= call!371391 call!371392)))

(declare-fun bm!371386 () Bool)

(assert (=> bm!371386 (= call!371387 (derivationStepZipperDown!294 (ite c!906817 (regTwo!30205 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343)))))))) (regOne!30204 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343))))))))) (ite c!906817 (ite (or c!906681 c!906685) lt!2149388 (Context!8461 call!371341)) (Context!8461 call!371388)) (h!67163 s!2326)))))

(declare-fun b!5244738 () Bool)

(assert (=> b!5244738 (= e!3263207 (set.insert (ite (or c!906681 c!906685) lt!2149388 (Context!8461 call!371341)) (as set.empty (Set Context!8460))))))

(declare-fun b!5244739 () Bool)

(assert (=> b!5244739 (= e!3263209 (nullable!5015 (regOne!30204 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343))))))))))))

(declare-fun b!5244740 () Bool)

(assert (=> b!5244740 (= e!3263210 e!3263206)))

(assert (=> b!5244740 (= c!906818 (is-Concat!23691 (ite c!906681 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906685 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906682 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343)))))))))))

(declare-fun bm!371387 () Bool)

(assert (=> bm!371387 (= call!371389 call!371388)))

(assert (= (and d!1689705 c!906820) b!5244738))

(assert (= (and d!1689705 (not c!906820)) b!5244737))

(assert (= (and b!5244737 c!906817) b!5244734))

(assert (= (and b!5244737 (not c!906817)) b!5244730))

(assert (= (and b!5244730 res!2225820) b!5244739))

(assert (= (and b!5244730 c!906821) b!5244732))

(assert (= (and b!5244730 (not c!906821)) b!5244740))

(assert (= (and b!5244740 c!906818) b!5244735))

(assert (= (and b!5244740 (not c!906818)) b!5244736))

(assert (= (and b!5244736 c!906819) b!5244731))

(assert (= (and b!5244736 (not c!906819)) b!5244733))

(assert (= (or b!5244735 b!5244731) bm!371387))

(assert (= (or b!5244735 b!5244731) bm!371385))

(assert (= (or b!5244732 bm!371387) bm!371384))

(assert (= (or b!5244732 bm!371385) bm!371382))

(assert (= (or b!5244734 b!5244732) bm!371386))

(assert (= (or b!5244734 bm!371382) bm!371383))

(declare-fun m!6288648 () Bool)

(assert (=> bm!371383 m!6288648))

(declare-fun m!6288650 () Bool)

(assert (=> bm!371386 m!6288650))

(declare-fun m!6288652 () Bool)

(assert (=> b!5244738 m!6288652))

(declare-fun m!6288654 () Bool)

(assert (=> bm!371384 m!6288654))

(declare-fun m!6288656 () Bool)

(assert (=> b!5244739 m!6288656))

(assert (=> bm!371335 d!1689705))

(declare-fun b!5244741 () Bool)

(declare-fun c!906826 () Bool)

(declare-fun e!3263215 () Bool)

(assert (=> b!5244741 (= c!906826 e!3263215)))

(declare-fun res!2225821 () Bool)

(assert (=> b!5244741 (=> (not res!2225821) (not e!3263215))))

(assert (=> b!5244741 (= res!2225821 (is-Concat!23691 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun e!3263211 () (Set Context!8460))

(declare-fun e!3263216 () (Set Context!8460))

(assert (=> b!5244741 (= e!3263211 e!3263216)))

(declare-fun b!5244742 () Bool)

(declare-fun e!3263214 () (Set Context!8460))

(declare-fun call!371397 () (Set Context!8460))

(assert (=> b!5244742 (= e!3263214 call!371397)))

(declare-fun bm!371388 () Bool)

(declare-fun call!371398 () (Set Context!8460))

(declare-fun call!371396 () (Set Context!8460))

(assert (=> bm!371388 (= call!371398 call!371396)))

(declare-fun b!5244743 () Bool)

(declare-fun call!371393 () (Set Context!8460))

(assert (=> b!5244743 (= e!3263216 (set.union call!371393 call!371398))))

(declare-fun b!5244744 () Bool)

(assert (=> b!5244744 (= e!3263214 (as set.empty (Set Context!8460)))))

(declare-fun call!371395 () List!60837)

(declare-fun bm!371389 () Bool)

(declare-fun c!906822 () Bool)

(declare-fun c!906823 () Bool)

(assert (=> bm!371389 (= call!371396 (derivationStepZipperDown!294 (ite c!906822 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906826 (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (ite c!906823 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (reg!15175 (h!67161 (exprs!4730 (h!67162 zl!343))))))) (ite (or c!906822 c!906826) (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343)))) (Context!8461 call!371395)) (h!67163 s!2326)))))

(declare-fun b!5244745 () Bool)

(assert (=> b!5244745 (= e!3263211 (set.union call!371396 call!371393))))

(declare-fun b!5244746 () Bool)

(declare-fun e!3263212 () (Set Context!8460))

(assert (=> b!5244746 (= e!3263212 call!371397)))

(declare-fun d!1689707 () Bool)

(declare-fun c!906825 () Bool)

(assert (=> d!1689707 (= c!906825 (and (is-ElementMatch!14846 (h!67161 (exprs!4730 (h!67162 zl!343)))) (= (c!906500 (h!67161 (exprs!4730 (h!67162 zl!343)))) (h!67163 s!2326))))))

(declare-fun e!3263213 () (Set Context!8460))

(assert (=> d!1689707 (= (derivationStepZipperDown!294 (h!67161 (exprs!4730 (h!67162 zl!343))) (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343)))) (h!67163 s!2326)) e!3263213)))

(declare-fun b!5244747 () Bool)

(declare-fun c!906824 () Bool)

(assert (=> b!5244747 (= c!906824 (is-Star!14846 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(assert (=> b!5244747 (= e!3263212 e!3263214)))

(declare-fun call!371394 () List!60837)

(declare-fun bm!371390 () Bool)

(assert (=> bm!371390 (= call!371394 ($colon$colon!1311 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343))))) (ite (or c!906826 c!906823) (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (h!67161 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun b!5244748 () Bool)

(assert (=> b!5244748 (= e!3263213 e!3263211)))

(assert (=> b!5244748 (= c!906822 (is-Union!14846 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun bm!371391 () Bool)

(assert (=> bm!371391 (= call!371397 call!371398)))

(declare-fun bm!371392 () Bool)

(assert (=> bm!371392 (= call!371393 (derivationStepZipperDown!294 (ite c!906822 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343))))) (ite c!906822 (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343)))) (Context!8461 call!371394)) (h!67163 s!2326)))))

(declare-fun b!5244749 () Bool)

(assert (=> b!5244749 (= e!3263213 (set.insert (Context!8461 (t!374018 (exprs!4730 (h!67162 zl!343)))) (as set.empty (Set Context!8460))))))

(declare-fun b!5244750 () Bool)

(assert (=> b!5244750 (= e!3263215 (nullable!5015 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun b!5244751 () Bool)

(assert (=> b!5244751 (= e!3263216 e!3263212)))

(assert (=> b!5244751 (= c!906823 (is-Concat!23691 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun bm!371393 () Bool)

(assert (=> bm!371393 (= call!371395 call!371394)))

(assert (= (and d!1689707 c!906825) b!5244749))

(assert (= (and d!1689707 (not c!906825)) b!5244748))

(assert (= (and b!5244748 c!906822) b!5244745))

(assert (= (and b!5244748 (not c!906822)) b!5244741))

(assert (= (and b!5244741 res!2225821) b!5244750))

(assert (= (and b!5244741 c!906826) b!5244743))

(assert (= (and b!5244741 (not c!906826)) b!5244751))

(assert (= (and b!5244751 c!906823) b!5244746))

(assert (= (and b!5244751 (not c!906823)) b!5244747))

(assert (= (and b!5244747 c!906824) b!5244742))

(assert (= (and b!5244747 (not c!906824)) b!5244744))

(assert (= (or b!5244746 b!5244742) bm!371393))

(assert (= (or b!5244746 b!5244742) bm!371391))

(assert (= (or b!5244743 bm!371393) bm!371390))

(assert (= (or b!5244743 bm!371391) bm!371388))

(assert (= (or b!5244745 b!5244743) bm!371392))

(assert (= (or b!5244745 bm!371388) bm!371389))

(declare-fun m!6288658 () Bool)

(assert (=> bm!371389 m!6288658))

(declare-fun m!6288660 () Bool)

(assert (=> bm!371392 m!6288660))

(declare-fun m!6288662 () Bool)

(assert (=> b!5244749 m!6288662))

(declare-fun m!6288664 () Bool)

(assert (=> bm!371390 m!6288664))

(assert (=> b!5244750 m!6288192))

(assert (=> bm!371332 d!1689707))

(declare-fun d!1689709 () Bool)

(assert (=> d!1689709 (= (Exists!2027 (ite c!906717 lambda!263879 lambda!263880)) (choose!39052 (ite c!906717 lambda!263879 lambda!263880)))))

(declare-fun bs!1216550 () Bool)

(assert (= bs!1216550 d!1689709))

(declare-fun m!6288666 () Bool)

(assert (=> bs!1216550 m!6288666))

(assert (=> bm!371345 d!1689709))

(declare-fun d!1689711 () Bool)

(declare-fun lambda!263909 () Int)

(declare-fun exists!1980 ((Set Context!8460) Int) Bool)

(assert (=> d!1689711 (= (nullableZipper!1261 (set.union lt!2149359 lt!2149380)) (exists!1980 (set.union lt!2149359 lt!2149380) lambda!263909))))

(declare-fun bs!1216551 () Bool)

(assert (= bs!1216551 d!1689711))

(declare-fun m!6288668 () Bool)

(assert (=> bs!1216551 m!6288668))

(assert (=> b!5244313 d!1689711))

(declare-fun c!906830 () Bool)

(declare-fun c!906829 () Bool)

(declare-fun bm!371394 () Bool)

(declare-fun call!371401 () Bool)

(assert (=> bm!371394 (= call!371401 (validRegex!6582 (ite c!906830 (reg!15175 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343))))) (ite c!906829 (regOne!30205 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343))))) (regOne!30204 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343)))))))))))

(declare-fun b!5244752 () Bool)

(declare-fun e!3263220 () Bool)

(declare-fun e!3263222 () Bool)

(assert (=> b!5244752 (= e!3263220 e!3263222)))

(assert (=> b!5244752 (= c!906829 (is-Union!14846 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun b!5244753 () Bool)

(declare-fun e!3263221 () Bool)

(assert (=> b!5244753 (= e!3263221 e!3263220)))

(assert (=> b!5244753 (= c!906830 (is-Star!14846 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun b!5244754 () Bool)

(declare-fun res!2225824 () Bool)

(declare-fun e!3263223 () Bool)

(assert (=> b!5244754 (=> (not res!2225824) (not e!3263223))))

(declare-fun call!371399 () Bool)

(assert (=> b!5244754 (= res!2225824 call!371399)))

(assert (=> b!5244754 (= e!3263222 e!3263223)))

(declare-fun bm!371395 () Bool)

(declare-fun call!371400 () Bool)

(assert (=> bm!371395 (= call!371400 (validRegex!6582 (ite c!906829 (regTwo!30205 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343))))) (regTwo!30204 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343))))))))))

(declare-fun bm!371396 () Bool)

(assert (=> bm!371396 (= call!371399 call!371401)))

(declare-fun b!5244755 () Bool)

(declare-fun e!3263219 () Bool)

(assert (=> b!5244755 (= e!3263220 e!3263219)))

(declare-fun res!2225825 () Bool)

(assert (=> b!5244755 (= res!2225825 (not (nullable!5015 (reg!15175 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343))))))))))

(assert (=> b!5244755 (=> (not res!2225825) (not e!3263219))))

(declare-fun b!5244756 () Bool)

(declare-fun e!3263218 () Bool)

(assert (=> b!5244756 (= e!3263218 call!371400)))

(declare-fun b!5244757 () Bool)

(declare-fun res!2225823 () Bool)

(declare-fun e!3263217 () Bool)

(assert (=> b!5244757 (=> res!2225823 e!3263217)))

(assert (=> b!5244757 (= res!2225823 (not (is-Concat!23691 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343)))))))))

(assert (=> b!5244757 (= e!3263222 e!3263217)))

(declare-fun b!5244759 () Bool)

(assert (=> b!5244759 (= e!3263219 call!371401)))

(declare-fun b!5244760 () Bool)

(assert (=> b!5244760 (= e!3263223 call!371400)))

(declare-fun b!5244758 () Bool)

(assert (=> b!5244758 (= e!3263217 e!3263218)))

(declare-fun res!2225826 () Bool)

(assert (=> b!5244758 (=> (not res!2225826) (not e!3263218))))

(assert (=> b!5244758 (= res!2225826 call!371399)))

(declare-fun d!1689713 () Bool)

(declare-fun res!2225822 () Bool)

(assert (=> d!1689713 (=> res!2225822 e!3263221)))

(assert (=> d!1689713 (= res!2225822 (is-ElementMatch!14846 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343))))))))

(assert (=> d!1689713 (= (validRegex!6582 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343))))) e!3263221)))

(assert (= (and d!1689713 (not res!2225822)) b!5244753))

(assert (= (and b!5244753 c!906830) b!5244755))

(assert (= (and b!5244753 (not c!906830)) b!5244752))

(assert (= (and b!5244755 res!2225825) b!5244759))

(assert (= (and b!5244752 c!906829) b!5244754))

(assert (= (and b!5244752 (not c!906829)) b!5244757))

(assert (= (and b!5244754 res!2225824) b!5244760))

(assert (= (and b!5244757 (not res!2225823)) b!5244758))

(assert (= (and b!5244758 res!2225826) b!5244756))

(assert (= (or b!5244760 b!5244756) bm!371395))

(assert (= (or b!5244754 b!5244758) bm!371396))

(assert (= (or b!5244759 bm!371396) bm!371394))

(declare-fun m!6288670 () Bool)

(assert (=> bm!371394 m!6288670))

(declare-fun m!6288672 () Bool)

(assert (=> bm!371395 m!6288672))

(declare-fun m!6288674 () Bool)

(assert (=> b!5244755 m!6288674))

(assert (=> bs!1216505 d!1689713))

(declare-fun d!1689715 () Bool)

(assert (=> d!1689715 (= (head!11241 lt!2149365) (h!67161 lt!2149365))))

(assert (=> b!5244391 d!1689715))

(declare-fun bs!1216552 () Bool)

(declare-fun b!5244771 () Bool)

(assert (= bs!1216552 (and b!5244771 b!5244075)))

(declare-fun lambda!263910 () Int)

(assert (=> bs!1216552 (= (and (= (reg!15175 (regOne!30205 r!7292)) (reg!15175 r!7292)) (= (regOne!30205 r!7292) r!7292)) (= lambda!263910 lambda!263862))))

(declare-fun bs!1216553 () Bool)

(assert (= bs!1216553 (and b!5244771 b!5244682)))

(assert (=> bs!1216553 (not (= lambda!263910 lambda!263903))))

(declare-fun bs!1216554 () Bool)

(assert (= bs!1216554 (and b!5244771 b!5244403)))

(assert (=> bs!1216554 (not (= lambda!263910 lambda!263886))))

(declare-fun bs!1216555 () Bool)

(assert (= bs!1216555 (and b!5244771 b!5244317)))

(assert (=> bs!1216555 (not (= lambda!263910 lambda!263880))))

(declare-fun bs!1216556 () Bool)

(assert (= bs!1216556 (and b!5244771 d!1689441)))

(assert (=> bs!1216556 (not (= lambda!263910 lambda!263856))))

(declare-fun bs!1216557 () Bool)

(assert (= bs!1216557 (and b!5244771 b!5244327)))

(assert (=> bs!1216557 (= (and (= (reg!15175 (regOne!30205 r!7292)) (reg!15175 lt!2149381)) (= (regOne!30205 r!7292) lt!2149381)) (= lambda!263910 lambda!263879))))

(declare-fun bs!1216558 () Bool)

(assert (= bs!1216558 (and b!5244771 b!5244692)))

(assert (=> bs!1216558 (= (and (= (reg!15175 (regOne!30205 r!7292)) (reg!15175 (regOne!30205 lt!2149350))) (= (regOne!30205 r!7292) (regOne!30205 lt!2149350))) (= lambda!263910 lambda!263902))))

(declare-fun bs!1216559 () Bool)

(assert (= bs!1216559 (and b!5244771 b!5243550)))

(assert (=> bs!1216559 (not (= lambda!263910 lambda!263813))))

(declare-fun bs!1216560 () Bool)

(assert (= bs!1216560 (and b!5244771 b!5244065)))

(assert (=> bs!1216560 (not (= lambda!263910 lambda!263863))))

(declare-fun bs!1216561 () Bool)

(assert (= bs!1216561 (and b!5244771 d!1689431)))

(assert (=> bs!1216561 (not (= lambda!263910 lambda!263851))))

(assert (=> bs!1216556 (not (= lambda!263910 lambda!263857))))

(declare-fun bs!1216562 () Bool)

(assert (= bs!1216562 (and b!5244771 b!5244413)))

(assert (=> bs!1216562 (= (and (= (reg!15175 (regOne!30205 r!7292)) (reg!15175 lt!2149350)) (= (regOne!30205 r!7292) lt!2149350)) (= lambda!263910 lambda!263883))))

(assert (=> bs!1216559 (not (= lambda!263910 lambda!263812))))

(assert (=> b!5244771 true))

(assert (=> b!5244771 true))

(declare-fun bs!1216563 () Bool)

(declare-fun b!5244761 () Bool)

(assert (= bs!1216563 (and b!5244761 b!5244075)))

(declare-fun lambda!263911 () Int)

(assert (=> bs!1216563 (not (= lambda!263911 lambda!263862))))

(declare-fun bs!1216564 () Bool)

(assert (= bs!1216564 (and b!5244761 b!5244682)))

(assert (=> bs!1216564 (= (and (= (regOne!30204 (regOne!30205 r!7292)) (regOne!30204 (regOne!30205 lt!2149350))) (= (regTwo!30204 (regOne!30205 r!7292)) (regTwo!30204 (regOne!30205 lt!2149350)))) (= lambda!263911 lambda!263903))))

(declare-fun bs!1216565 () Bool)

(assert (= bs!1216565 (and b!5244761 b!5244403)))

(assert (=> bs!1216565 (= (and (= (regOne!30204 (regOne!30205 r!7292)) (regOne!30204 lt!2149350)) (= (regTwo!30204 (regOne!30205 r!7292)) (regTwo!30204 lt!2149350))) (= lambda!263911 lambda!263886))))

(declare-fun bs!1216566 () Bool)

(assert (= bs!1216566 (and b!5244761 b!5244317)))

(assert (=> bs!1216566 (= (and (= (regOne!30204 (regOne!30205 r!7292)) (regOne!30204 lt!2149381)) (= (regTwo!30204 (regOne!30205 r!7292)) (regTwo!30204 lt!2149381))) (= lambda!263911 lambda!263880))))

(declare-fun bs!1216567 () Bool)

(assert (= bs!1216567 (and b!5244761 d!1689441)))

(assert (=> bs!1216567 (not (= lambda!263911 lambda!263856))))

(declare-fun bs!1216568 () Bool)

(assert (= bs!1216568 (and b!5244761 b!5244327)))

(assert (=> bs!1216568 (not (= lambda!263911 lambda!263879))))

(declare-fun bs!1216569 () Bool)

(assert (= bs!1216569 (and b!5244761 b!5244692)))

(assert (=> bs!1216569 (not (= lambda!263911 lambda!263902))))

(declare-fun bs!1216570 () Bool)

(assert (= bs!1216570 (and b!5244761 b!5243550)))

(assert (=> bs!1216570 (= (and (= (regOne!30204 (regOne!30205 r!7292)) (regOne!30204 r!7292)) (= (regTwo!30204 (regOne!30205 r!7292)) (regTwo!30204 r!7292))) (= lambda!263911 lambda!263813))))

(declare-fun bs!1216571 () Bool)

(assert (= bs!1216571 (and b!5244761 b!5244065)))

(assert (=> bs!1216571 (= (and (= (regOne!30204 (regOne!30205 r!7292)) (regOne!30204 r!7292)) (= (regTwo!30204 (regOne!30205 r!7292)) (regTwo!30204 r!7292))) (= lambda!263911 lambda!263863))))

(declare-fun bs!1216572 () Bool)

(assert (= bs!1216572 (and b!5244761 d!1689431)))

(assert (=> bs!1216572 (not (= lambda!263911 lambda!263851))))

(assert (=> bs!1216567 (= (and (= (regOne!30204 (regOne!30205 r!7292)) (regOne!30204 r!7292)) (= (regTwo!30204 (regOne!30205 r!7292)) (regTwo!30204 r!7292))) (= lambda!263911 lambda!263857))))

(declare-fun bs!1216573 () Bool)

(assert (= bs!1216573 (and b!5244761 b!5244413)))

(assert (=> bs!1216573 (not (= lambda!263911 lambda!263883))))

(assert (=> bs!1216570 (not (= lambda!263911 lambda!263812))))

(declare-fun bs!1216574 () Bool)

(assert (= bs!1216574 (and b!5244761 b!5244771)))

(assert (=> bs!1216574 (not (= lambda!263911 lambda!263910))))

(assert (=> b!5244761 true))

(assert (=> b!5244761 true))

(declare-fun e!3263227 () Bool)

(declare-fun call!371402 () Bool)

(assert (=> b!5244761 (= e!3263227 call!371402)))

(declare-fun b!5244762 () Bool)

(declare-fun e!3263229 () Bool)

(declare-fun e!3263225 () Bool)

(assert (=> b!5244762 (= e!3263229 e!3263225)))

(declare-fun res!2225828 () Bool)

(assert (=> b!5244762 (= res!2225828 (matchRSpec!1949 (regOne!30205 (regOne!30205 r!7292)) s!2326))))

(assert (=> b!5244762 (=> res!2225828 e!3263225)))

(declare-fun b!5244763 () Bool)

(declare-fun e!3263230 () Bool)

(declare-fun e!3263226 () Bool)

(assert (=> b!5244763 (= e!3263230 e!3263226)))

(declare-fun res!2225827 () Bool)

(assert (=> b!5244763 (= res!2225827 (not (is-EmptyLang!14846 (regOne!30205 r!7292))))))

(assert (=> b!5244763 (=> (not res!2225827) (not e!3263226))))

(declare-fun bm!371397 () Bool)

(declare-fun call!371403 () Bool)

(assert (=> bm!371397 (= call!371403 (isEmpty!32653 s!2326))))

(declare-fun c!906831 () Bool)

(declare-fun bm!371398 () Bool)

(assert (=> bm!371398 (= call!371402 (Exists!2027 (ite c!906831 lambda!263910 lambda!263911)))))

(declare-fun b!5244764 () Bool)

(declare-fun res!2225829 () Bool)

(declare-fun e!3263224 () Bool)

(assert (=> b!5244764 (=> res!2225829 e!3263224)))

(assert (=> b!5244764 (= res!2225829 call!371403)))

(assert (=> b!5244764 (= e!3263227 e!3263224)))

(declare-fun b!5244765 () Bool)

(assert (=> b!5244765 (= e!3263230 call!371403)))

(declare-fun d!1689717 () Bool)

(declare-fun c!906832 () Bool)

(assert (=> d!1689717 (= c!906832 (is-EmptyExpr!14846 (regOne!30205 r!7292)))))

(assert (=> d!1689717 (= (matchRSpec!1949 (regOne!30205 r!7292) s!2326) e!3263230)))

(declare-fun b!5244766 () Bool)

(declare-fun c!906833 () Bool)

(assert (=> b!5244766 (= c!906833 (is-ElementMatch!14846 (regOne!30205 r!7292)))))

(declare-fun e!3263228 () Bool)

(assert (=> b!5244766 (= e!3263226 e!3263228)))

(declare-fun b!5244767 () Bool)

(assert (=> b!5244767 (= e!3263228 (= s!2326 (Cons!60715 (c!906500 (regOne!30205 r!7292)) Nil!60715)))))

(declare-fun b!5244768 () Bool)

(assert (=> b!5244768 (= e!3263229 e!3263227)))

(assert (=> b!5244768 (= c!906831 (is-Star!14846 (regOne!30205 r!7292)))))

(declare-fun b!5244769 () Bool)

(declare-fun c!906834 () Bool)

(assert (=> b!5244769 (= c!906834 (is-Union!14846 (regOne!30205 r!7292)))))

(assert (=> b!5244769 (= e!3263228 e!3263229)))

(declare-fun b!5244770 () Bool)

(assert (=> b!5244770 (= e!3263225 (matchRSpec!1949 (regTwo!30205 (regOne!30205 r!7292)) s!2326))))

(assert (=> b!5244771 (= e!3263224 call!371402)))

(assert (= (and d!1689717 c!906832) b!5244765))

(assert (= (and d!1689717 (not c!906832)) b!5244763))

(assert (= (and b!5244763 res!2225827) b!5244766))

(assert (= (and b!5244766 c!906833) b!5244767))

(assert (= (and b!5244766 (not c!906833)) b!5244769))

(assert (= (and b!5244769 c!906834) b!5244762))

(assert (= (and b!5244769 (not c!906834)) b!5244768))

(assert (= (and b!5244762 (not res!2225828)) b!5244770))

(assert (= (and b!5244768 c!906831) b!5244764))

(assert (= (and b!5244768 (not c!906831)) b!5244761))

(assert (= (and b!5244764 (not res!2225829)) b!5244771))

(assert (= (or b!5244771 b!5244761) bm!371398))

(assert (= (or b!5244765 b!5244764) bm!371397))

(declare-fun m!6288676 () Bool)

(assert (=> b!5244762 m!6288676))

(assert (=> bm!371397 m!6288058))

(declare-fun m!6288678 () Bool)

(assert (=> bm!371398 m!6288678))

(declare-fun m!6288680 () Bool)

(assert (=> b!5244770 m!6288680))

(assert (=> b!5244066 d!1689717))

(declare-fun b!5244781 () Bool)

(declare-fun e!3263235 () List!60839)

(assert (=> b!5244781 (= e!3263235 (Cons!60715 (h!67163 (_1!35348 (get!20870 lt!2149550))) (++!13241 (t!374020 (_1!35348 (get!20870 lt!2149550))) (_2!35348 (get!20870 lt!2149550)))))))

(declare-fun b!5244783 () Bool)

(declare-fun e!3263236 () Bool)

(declare-fun lt!2149661 () List!60839)

(assert (=> b!5244783 (= e!3263236 (or (not (= (_2!35348 (get!20870 lt!2149550)) Nil!60715)) (= lt!2149661 (_1!35348 (get!20870 lt!2149550)))))))

(declare-fun d!1689719 () Bool)

(assert (=> d!1689719 e!3263236))

(declare-fun res!2225834 () Bool)

(assert (=> d!1689719 (=> (not res!2225834) (not e!3263236))))

(declare-fun content!10784 (List!60839) (Set C!29962))

(assert (=> d!1689719 (= res!2225834 (= (content!10784 lt!2149661) (set.union (content!10784 (_1!35348 (get!20870 lt!2149550))) (content!10784 (_2!35348 (get!20870 lt!2149550))))))))

(assert (=> d!1689719 (= lt!2149661 e!3263235)))

(declare-fun c!906837 () Bool)

(assert (=> d!1689719 (= c!906837 (is-Nil!60715 (_1!35348 (get!20870 lt!2149550))))))

(assert (=> d!1689719 (= (++!13241 (_1!35348 (get!20870 lt!2149550)) (_2!35348 (get!20870 lt!2149550))) lt!2149661)))

(declare-fun b!5244782 () Bool)

(declare-fun res!2225835 () Bool)

(assert (=> b!5244782 (=> (not res!2225835) (not e!3263236))))

(declare-fun size!39735 (List!60839) Int)

(assert (=> b!5244782 (= res!2225835 (= (size!39735 lt!2149661) (+ (size!39735 (_1!35348 (get!20870 lt!2149550))) (size!39735 (_2!35348 (get!20870 lt!2149550))))))))

(declare-fun b!5244780 () Bool)

(assert (=> b!5244780 (= e!3263235 (_2!35348 (get!20870 lt!2149550)))))

(assert (= (and d!1689719 c!906837) b!5244780))

(assert (= (and d!1689719 (not c!906837)) b!5244781))

(assert (= (and d!1689719 res!2225834) b!5244782))

(assert (= (and b!5244782 res!2225835) b!5244783))

(declare-fun m!6288682 () Bool)

(assert (=> b!5244781 m!6288682))

(declare-fun m!6288684 () Bool)

(assert (=> d!1689719 m!6288684))

(declare-fun m!6288686 () Bool)

(assert (=> d!1689719 m!6288686))

(declare-fun m!6288688 () Bool)

(assert (=> d!1689719 m!6288688))

(declare-fun m!6288690 () Bool)

(assert (=> b!5244782 m!6288690))

(declare-fun m!6288692 () Bool)

(assert (=> b!5244782 m!6288692))

(declare-fun m!6288694 () Bool)

(assert (=> b!5244782 m!6288694))

(assert (=> b!5243915 d!1689719))

(declare-fun d!1689721 () Bool)

(assert (=> d!1689721 (= (get!20870 lt!2149550) (v!50985 lt!2149550))))

(assert (=> b!5243915 d!1689721))

(declare-fun d!1689723 () Bool)

(declare-fun c!906838 () Bool)

(assert (=> d!1689723 (= c!906838 (isEmpty!32653 (tail!10337 (t!374020 s!2326))))))

(declare-fun e!3263237 () Bool)

(assert (=> d!1689723 (= (matchZipper!1090 (derivationStepZipper!1105 lt!2149367 (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))) e!3263237)))

(declare-fun b!5244784 () Bool)

(assert (=> b!5244784 (= e!3263237 (nullableZipper!1261 (derivationStepZipper!1105 lt!2149367 (head!11240 (t!374020 s!2326)))))))

(declare-fun b!5244785 () Bool)

(assert (=> b!5244785 (= e!3263237 (matchZipper!1090 (derivationStepZipper!1105 (derivationStepZipper!1105 lt!2149367 (head!11240 (t!374020 s!2326))) (head!11240 (tail!10337 (t!374020 s!2326)))) (tail!10337 (tail!10337 (t!374020 s!2326)))))))

(assert (= (and d!1689723 c!906838) b!5244784))

(assert (= (and d!1689723 (not c!906838)) b!5244785))

(assert (=> d!1689723 m!6287844))

(declare-fun m!6288696 () Bool)

(assert (=> d!1689723 m!6288696))

(assert (=> b!5244784 m!6288388))

(declare-fun m!6288698 () Bool)

(assert (=> b!5244784 m!6288698))

(assert (=> b!5244785 m!6287844))

(declare-fun m!6288700 () Bool)

(assert (=> b!5244785 m!6288700))

(assert (=> b!5244785 m!6288388))

(assert (=> b!5244785 m!6288700))

(declare-fun m!6288702 () Bool)

(assert (=> b!5244785 m!6288702))

(assert (=> b!5244785 m!6287844))

(declare-fun m!6288704 () Bool)

(assert (=> b!5244785 m!6288704))

(assert (=> b!5244785 m!6288702))

(assert (=> b!5244785 m!6288704))

(declare-fun m!6288706 () Bool)

(assert (=> b!5244785 m!6288706))

(assert (=> b!5244419 d!1689723))

(declare-fun bs!1216575 () Bool)

(declare-fun d!1689725 () Bool)

(assert (= bs!1216575 (and d!1689725 b!5243551)))

(declare-fun lambda!263912 () Int)

(assert (=> bs!1216575 (= (= (head!11240 (t!374020 s!2326)) (h!67163 s!2326)) (= lambda!263912 lambda!263814))))

(declare-fun bs!1216576 () Bool)

(assert (= bs!1216576 (and d!1689725 d!1689687)))

(assert (=> bs!1216576 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263912 lambda!263906))))

(assert (=> d!1689725 true))

(assert (=> d!1689725 (= (derivationStepZipper!1105 lt!2149367 (head!11240 (t!374020 s!2326))) (flatMap!573 lt!2149367 lambda!263912))))

(declare-fun bs!1216577 () Bool)

(assert (= bs!1216577 d!1689725))

(declare-fun m!6288708 () Bool)

(assert (=> bs!1216577 m!6288708))

(assert (=> b!5244419 d!1689725))

(declare-fun d!1689727 () Bool)

(assert (=> d!1689727 (= (head!11240 (t!374020 s!2326)) (h!67163 (t!374020 s!2326)))))

(assert (=> b!5244419 d!1689727))

(declare-fun d!1689729 () Bool)

(assert (=> d!1689729 (= (tail!10337 (t!374020 s!2326)) (t!374020 (t!374020 s!2326)))))

(assert (=> b!5244419 d!1689729))

(declare-fun d!1689731 () Bool)

(declare-fun c!906839 () Bool)

(assert (=> d!1689731 (= c!906839 (isEmpty!32653 (tail!10337 (t!374020 s!2326))))))

(declare-fun e!3263238 () Bool)

(assert (=> d!1689731 (= (matchZipper!1090 (derivationStepZipper!1105 lt!2149391 (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))) e!3263238)))

(declare-fun b!5244786 () Bool)

(assert (=> b!5244786 (= e!3263238 (nullableZipper!1261 (derivationStepZipper!1105 lt!2149391 (head!11240 (t!374020 s!2326)))))))

(declare-fun b!5244787 () Bool)

(assert (=> b!5244787 (= e!3263238 (matchZipper!1090 (derivationStepZipper!1105 (derivationStepZipper!1105 lt!2149391 (head!11240 (t!374020 s!2326))) (head!11240 (tail!10337 (t!374020 s!2326)))) (tail!10337 (tail!10337 (t!374020 s!2326)))))))

(assert (= (and d!1689731 c!906839) b!5244786))

(assert (= (and d!1689731 (not c!906839)) b!5244787))

(assert (=> d!1689731 m!6287844))

(assert (=> d!1689731 m!6288696))

(assert (=> b!5244786 m!6287902))

(declare-fun m!6288710 () Bool)

(assert (=> b!5244786 m!6288710))

(assert (=> b!5244787 m!6287844))

(assert (=> b!5244787 m!6288700))

(assert (=> b!5244787 m!6287902))

(assert (=> b!5244787 m!6288700))

(declare-fun m!6288712 () Bool)

(assert (=> b!5244787 m!6288712))

(assert (=> b!5244787 m!6287844))

(assert (=> b!5244787 m!6288704))

(assert (=> b!5244787 m!6288712))

(assert (=> b!5244787 m!6288704))

(declare-fun m!6288714 () Bool)

(assert (=> b!5244787 m!6288714))

(assert (=> b!5243850 d!1689731))

(declare-fun bs!1216578 () Bool)

(declare-fun d!1689733 () Bool)

(assert (= bs!1216578 (and d!1689733 b!5243551)))

(declare-fun lambda!263913 () Int)

(assert (=> bs!1216578 (= (= (head!11240 (t!374020 s!2326)) (h!67163 s!2326)) (= lambda!263913 lambda!263814))))

(declare-fun bs!1216579 () Bool)

(assert (= bs!1216579 (and d!1689733 d!1689687)))

(assert (=> bs!1216579 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263913 lambda!263906))))

(declare-fun bs!1216580 () Bool)

(assert (= bs!1216580 (and d!1689733 d!1689725)))

(assert (=> bs!1216580 (= lambda!263913 lambda!263912)))

(assert (=> d!1689733 true))

(assert (=> d!1689733 (= (derivationStepZipper!1105 lt!2149391 (head!11240 (t!374020 s!2326))) (flatMap!573 lt!2149391 lambda!263913))))

(declare-fun bs!1216581 () Bool)

(assert (= bs!1216581 d!1689733))

(declare-fun m!6288716 () Bool)

(assert (=> bs!1216581 m!6288716))

(assert (=> b!5243850 d!1689733))

(assert (=> b!5243850 d!1689727))

(assert (=> b!5243850 d!1689729))

(declare-fun d!1689735 () Bool)

(assert (=> d!1689735 (= (nullable!5015 lt!2149381) (nullableFct!1413 lt!2149381))))

(declare-fun bs!1216582 () Bool)

(assert (= bs!1216582 d!1689735))

(declare-fun m!6288718 () Bool)

(assert (=> bs!1216582 m!6288718))

(assert (=> b!5244379 d!1689735))

(declare-fun d!1689737 () Bool)

(assert (=> d!1689737 (= (isConcat!319 lt!2149612) (is-Concat!23691 lt!2149612))))

(assert (=> b!5244364 d!1689737))

(declare-fun d!1689739 () Bool)

(assert (=> d!1689739 (= (nullable!5015 (h!67161 (exprs!4730 lt!2149349))) (nullableFct!1413 (h!67161 (exprs!4730 lt!2149349))))))

(declare-fun bs!1216583 () Bool)

(assert (= bs!1216583 d!1689739))

(declare-fun m!6288720 () Bool)

(assert (=> bs!1216583 m!6288720))

(assert (=> b!5244461 d!1689739))

(declare-fun d!1689741 () Bool)

(assert (=> d!1689741 (= (isEmpty!32653 s!2326) (is-Nil!60715 s!2326))))

(assert (=> d!1689581 d!1689741))

(assert (=> d!1689579 d!1689585))

(declare-fun d!1689743 () Bool)

(assert (=> d!1689743 (= (flatMap!573 lt!2149347 lambda!263814) (dynLambda!23993 lambda!263814 lt!2149386))))

(assert (=> d!1689743 true))

(declare-fun _$13!1772 () Unit!152782)

(assert (=> d!1689743 (= (choose!39060 lt!2149347 lt!2149386 lambda!263814) _$13!1772)))

(declare-fun b_lambda!202631 () Bool)

(assert (=> (not b_lambda!202631) (not d!1689743)))

(declare-fun bs!1216584 () Bool)

(assert (= bs!1216584 d!1689743))

(assert (=> bs!1216584 m!6287608))

(assert (=> bs!1216584 m!6288412))

(assert (=> d!1689579 d!1689743))

(declare-fun d!1689745 () Bool)

(assert (=> d!1689745 (= (nullable!5015 (regOne!30204 (regOne!30205 (regOne!30204 r!7292)))) (nullableFct!1413 (regOne!30204 (regOne!30205 (regOne!30204 r!7292)))))))

(declare-fun bs!1216585 () Bool)

(assert (= bs!1216585 d!1689745))

(declare-fun m!6288722 () Bool)

(assert (=> bs!1216585 m!6288722))

(assert (=> b!5243835 d!1689745))

(assert (=> d!1689411 d!1689415))

(assert (=> d!1689411 d!1689413))

(declare-fun e!3263241 () Bool)

(declare-fun d!1689747 () Bool)

(assert (=> d!1689747 (= (matchZipper!1090 (set.union lt!2149391 lt!2149380) (t!374020 s!2326)) e!3263241)))

(declare-fun res!2225838 () Bool)

(assert (=> d!1689747 (=> res!2225838 e!3263241)))

(assert (=> d!1689747 (= res!2225838 (matchZipper!1090 lt!2149391 (t!374020 s!2326)))))

(assert (=> d!1689747 true))

(declare-fun _$48!881 () Unit!152782)

(assert (=> d!1689747 (= (choose!39049 lt!2149391 lt!2149380 (t!374020 s!2326)) _$48!881)))

(declare-fun b!5244790 () Bool)

(assert (=> b!5244790 (= e!3263241 (matchZipper!1090 lt!2149380 (t!374020 s!2326)))))

(assert (= (and d!1689747 (not res!2225838)) b!5244790))

(assert (=> d!1689747 m!6287700))

(assert (=> d!1689747 m!6287642))

(assert (=> b!5244790 m!6287574))

(assert (=> d!1689411 d!1689747))

(assert (=> d!1689415 d!1689699))

(assert (=> d!1689563 d!1689545))

(assert (=> d!1689563 d!1689591))

(declare-fun d!1689749 () Bool)

(assert (=> d!1689749 (= (matchR!7031 lt!2149381 s!2326) (matchZipper!1090 lt!2149347 s!2326))))

(assert (=> d!1689749 true))

(declare-fun _$44!1377 () Unit!152782)

(assert (=> d!1689749 (= (choose!39063 lt!2149347 lt!2149348 lt!2149381 s!2326) _$44!1377)))

(declare-fun bs!1216586 () Bool)

(assert (= bs!1216586 d!1689749))

(assert (=> bs!1216586 m!6287686))

(assert (=> bs!1216586 m!6287614))

(assert (=> d!1689563 d!1689749))

(declare-fun c!906840 () Bool)

(declare-fun c!906841 () Bool)

(declare-fun call!371406 () Bool)

(declare-fun bm!371399 () Bool)

(assert (=> bm!371399 (= call!371406 (validRegex!6582 (ite c!906841 (reg!15175 lt!2149381) (ite c!906840 (regOne!30205 lt!2149381) (regOne!30204 lt!2149381)))))))

(declare-fun b!5244791 () Bool)

(declare-fun e!3263245 () Bool)

(declare-fun e!3263247 () Bool)

(assert (=> b!5244791 (= e!3263245 e!3263247)))

(assert (=> b!5244791 (= c!906840 (is-Union!14846 lt!2149381))))

(declare-fun b!5244792 () Bool)

(declare-fun e!3263246 () Bool)

(assert (=> b!5244792 (= e!3263246 e!3263245)))

(assert (=> b!5244792 (= c!906841 (is-Star!14846 lt!2149381))))

(declare-fun b!5244793 () Bool)

(declare-fun res!2225841 () Bool)

(declare-fun e!3263248 () Bool)

(assert (=> b!5244793 (=> (not res!2225841) (not e!3263248))))

(declare-fun call!371404 () Bool)

(assert (=> b!5244793 (= res!2225841 call!371404)))

(assert (=> b!5244793 (= e!3263247 e!3263248)))

(declare-fun bm!371400 () Bool)

(declare-fun call!371405 () Bool)

(assert (=> bm!371400 (= call!371405 (validRegex!6582 (ite c!906840 (regTwo!30205 lt!2149381) (regTwo!30204 lt!2149381))))))

(declare-fun bm!371401 () Bool)

(assert (=> bm!371401 (= call!371404 call!371406)))

(declare-fun b!5244794 () Bool)

(declare-fun e!3263244 () Bool)

(assert (=> b!5244794 (= e!3263245 e!3263244)))

(declare-fun res!2225842 () Bool)

(assert (=> b!5244794 (= res!2225842 (not (nullable!5015 (reg!15175 lt!2149381))))))

(assert (=> b!5244794 (=> (not res!2225842) (not e!3263244))))

(declare-fun b!5244795 () Bool)

(declare-fun e!3263243 () Bool)

(assert (=> b!5244795 (= e!3263243 call!371405)))

(declare-fun b!5244796 () Bool)

(declare-fun res!2225840 () Bool)

(declare-fun e!3263242 () Bool)

(assert (=> b!5244796 (=> res!2225840 e!3263242)))

(assert (=> b!5244796 (= res!2225840 (not (is-Concat!23691 lt!2149381)))))

(assert (=> b!5244796 (= e!3263247 e!3263242)))

(declare-fun b!5244798 () Bool)

(assert (=> b!5244798 (= e!3263244 call!371406)))

(declare-fun b!5244799 () Bool)

(assert (=> b!5244799 (= e!3263248 call!371405)))

(declare-fun b!5244797 () Bool)

(assert (=> b!5244797 (= e!3263242 e!3263243)))

(declare-fun res!2225843 () Bool)

(assert (=> b!5244797 (=> (not res!2225843) (not e!3263243))))

(assert (=> b!5244797 (= res!2225843 call!371404)))

(declare-fun d!1689751 () Bool)

(declare-fun res!2225839 () Bool)

(assert (=> d!1689751 (=> res!2225839 e!3263246)))

(assert (=> d!1689751 (= res!2225839 (is-ElementMatch!14846 lt!2149381))))

(assert (=> d!1689751 (= (validRegex!6582 lt!2149381) e!3263246)))

(assert (= (and d!1689751 (not res!2225839)) b!5244792))

(assert (= (and b!5244792 c!906841) b!5244794))

(assert (= (and b!5244792 (not c!906841)) b!5244791))

(assert (= (and b!5244794 res!2225842) b!5244798))

(assert (= (and b!5244791 c!906840) b!5244793))

(assert (= (and b!5244791 (not c!906840)) b!5244796))

(assert (= (and b!5244793 res!2225841) b!5244799))

(assert (= (and b!5244796 (not res!2225840)) b!5244797))

(assert (= (and b!5244797 res!2225843) b!5244795))

(assert (= (or b!5244799 b!5244795) bm!371400))

(assert (= (or b!5244793 b!5244797) bm!371401))

(assert (= (or b!5244798 bm!371401) bm!371399))

(declare-fun m!6288724 () Bool)

(assert (=> bm!371399 m!6288724))

(declare-fun m!6288726 () Bool)

(assert (=> bm!371400 m!6288726))

(declare-fun m!6288728 () Bool)

(assert (=> b!5244794 m!6288728))

(assert (=> d!1689563 d!1689751))

(declare-fun b!5244800 () Bool)

(declare-fun res!2225844 () Bool)

(declare-fun e!3263250 () Bool)

(assert (=> b!5244800 (=> res!2225844 e!3263250)))

(declare-fun e!3263252 () Bool)

(assert (=> b!5244800 (= res!2225844 e!3263252)))

(declare-fun res!2225848 () Bool)

(assert (=> b!5244800 (=> (not res!2225848) (not e!3263252))))

(declare-fun lt!2149662 () Bool)

(assert (=> b!5244800 (= res!2225848 lt!2149662)))

(declare-fun b!5244801 () Bool)

(declare-fun e!3263253 () Bool)

(assert (=> b!5244801 (= e!3263253 (not lt!2149662))))

(declare-fun b!5244802 () Bool)

(declare-fun e!3263254 () Bool)

(assert (=> b!5244802 (= e!3263250 e!3263254)))

(declare-fun res!2225851 () Bool)

(assert (=> b!5244802 (=> (not res!2225851) (not e!3263254))))

(assert (=> b!5244802 (= res!2225851 (not lt!2149662))))

(declare-fun b!5244803 () Bool)

(declare-fun e!3263249 () Bool)

(assert (=> b!5244803 (= e!3263249 (not (= (head!11240 (tail!10337 s!2326)) (c!906500 (derivativeStep!4083 lt!2149350 (head!11240 s!2326))))))))

(declare-fun b!5244804 () Bool)

(declare-fun res!2225845 () Bool)

(assert (=> b!5244804 (=> (not res!2225845) (not e!3263252))))

(assert (=> b!5244804 (= res!2225845 (isEmpty!32653 (tail!10337 (tail!10337 s!2326))))))

(declare-fun b!5244805 () Bool)

(declare-fun res!2225850 () Bool)

(assert (=> b!5244805 (=> res!2225850 e!3263249)))

(assert (=> b!5244805 (= res!2225850 (not (isEmpty!32653 (tail!10337 (tail!10337 s!2326)))))))

(declare-fun b!5244806 () Bool)

(assert (=> b!5244806 (= e!3263254 e!3263249)))

(declare-fun res!2225846 () Bool)

(assert (=> b!5244806 (=> res!2225846 e!3263249)))

(declare-fun call!371407 () Bool)

(assert (=> b!5244806 (= res!2225846 call!371407)))

(declare-fun b!5244807 () Bool)

(declare-fun e!3263251 () Bool)

(assert (=> b!5244807 (= e!3263251 e!3263253)))

(declare-fun c!906842 () Bool)

(assert (=> b!5244807 (= c!906842 (is-EmptyLang!14846 (derivativeStep!4083 lt!2149350 (head!11240 s!2326))))))

(declare-fun b!5244808 () Bool)

(assert (=> b!5244808 (= e!3263251 (= lt!2149662 call!371407))))

(declare-fun b!5244809 () Bool)

(declare-fun e!3263255 () Bool)

(assert (=> b!5244809 (= e!3263255 (nullable!5015 (derivativeStep!4083 lt!2149350 (head!11240 s!2326))))))

(declare-fun b!5244810 () Bool)

(assert (=> b!5244810 (= e!3263255 (matchR!7031 (derivativeStep!4083 (derivativeStep!4083 lt!2149350 (head!11240 s!2326)) (head!11240 (tail!10337 s!2326))) (tail!10337 (tail!10337 s!2326))))))

(declare-fun d!1689753 () Bool)

(assert (=> d!1689753 e!3263251))

(declare-fun c!906844 () Bool)

(assert (=> d!1689753 (= c!906844 (is-EmptyExpr!14846 (derivativeStep!4083 lt!2149350 (head!11240 s!2326))))))

(assert (=> d!1689753 (= lt!2149662 e!3263255)))

(declare-fun c!906843 () Bool)

(assert (=> d!1689753 (= c!906843 (isEmpty!32653 (tail!10337 s!2326)))))

(assert (=> d!1689753 (validRegex!6582 (derivativeStep!4083 lt!2149350 (head!11240 s!2326)))))

(assert (=> d!1689753 (= (matchR!7031 (derivativeStep!4083 lt!2149350 (head!11240 s!2326)) (tail!10337 s!2326)) lt!2149662)))

(declare-fun b!5244811 () Bool)

(assert (=> b!5244811 (= e!3263252 (= (head!11240 (tail!10337 s!2326)) (c!906500 (derivativeStep!4083 lt!2149350 (head!11240 s!2326)))))))

(declare-fun b!5244812 () Bool)

(declare-fun res!2225849 () Bool)

(assert (=> b!5244812 (=> res!2225849 e!3263250)))

(assert (=> b!5244812 (= res!2225849 (not (is-ElementMatch!14846 (derivativeStep!4083 lt!2149350 (head!11240 s!2326)))))))

(assert (=> b!5244812 (= e!3263253 e!3263250)))

(declare-fun b!5244813 () Bool)

(declare-fun res!2225847 () Bool)

(assert (=> b!5244813 (=> (not res!2225847) (not e!3263252))))

(assert (=> b!5244813 (= res!2225847 (not call!371407))))

(declare-fun bm!371402 () Bool)

(assert (=> bm!371402 (= call!371407 (isEmpty!32653 (tail!10337 s!2326)))))

(assert (= (and d!1689753 c!906843) b!5244809))

(assert (= (and d!1689753 (not c!906843)) b!5244810))

(assert (= (and d!1689753 c!906844) b!5244808))

(assert (= (and d!1689753 (not c!906844)) b!5244807))

(assert (= (and b!5244807 c!906842) b!5244801))

(assert (= (and b!5244807 (not c!906842)) b!5244812))

(assert (= (and b!5244812 (not res!2225849)) b!5244800))

(assert (= (and b!5244800 res!2225848) b!5244813))

(assert (= (and b!5244813 res!2225847) b!5244804))

(assert (= (and b!5244804 res!2225845) b!5244811))

(assert (= (and b!5244800 (not res!2225844)) b!5244802))

(assert (= (and b!5244802 res!2225851) b!5244806))

(assert (= (and b!5244806 (not res!2225846)) b!5244805))

(assert (= (and b!5244805 (not res!2225850)) b!5244803))

(assert (= (or b!5244808 b!5244813 b!5244806) bm!371402))

(assert (=> b!5244805 m!6288092))

(assert (=> b!5244805 m!6288632))

(assert (=> b!5244805 m!6288632))

(declare-fun m!6288730 () Bool)

(assert (=> b!5244805 m!6288730))

(assert (=> b!5244804 m!6288092))

(assert (=> b!5244804 m!6288632))

(assert (=> b!5244804 m!6288632))

(assert (=> b!5244804 m!6288730))

(assert (=> b!5244810 m!6288092))

(assert (=> b!5244810 m!6288628))

(assert (=> b!5244810 m!6288284))

(assert (=> b!5244810 m!6288628))

(declare-fun m!6288732 () Bool)

(assert (=> b!5244810 m!6288732))

(assert (=> b!5244810 m!6288092))

(assert (=> b!5244810 m!6288632))

(assert (=> b!5244810 m!6288732))

(assert (=> b!5244810 m!6288632))

(declare-fun m!6288734 () Bool)

(assert (=> b!5244810 m!6288734))

(assert (=> b!5244803 m!6288092))

(assert (=> b!5244803 m!6288628))

(assert (=> d!1689753 m!6288092))

(assert (=> d!1689753 m!6288094))

(assert (=> d!1689753 m!6288284))

(declare-fun m!6288736 () Bool)

(assert (=> d!1689753 m!6288736))

(assert (=> b!5244811 m!6288092))

(assert (=> b!5244811 m!6288628))

(assert (=> bm!371402 m!6288092))

(assert (=> bm!371402 m!6288094))

(assert (=> b!5244809 m!6288284))

(declare-fun m!6288738 () Bool)

(assert (=> b!5244809 m!6288738))

(assert (=> b!5244354 d!1689753))

(declare-fun bm!371411 () Bool)

(declare-fun call!371419 () Regex!14846)

(declare-fun call!371416 () Regex!14846)

(assert (=> bm!371411 (= call!371419 call!371416)))

(declare-fun b!5244834 () Bool)

(declare-fun e!3263269 () Regex!14846)

(assert (=> b!5244834 (= e!3263269 (ite (= (head!11240 s!2326) (c!906500 lt!2149350)) EmptyExpr!14846 EmptyLang!14846))))

(declare-fun b!5244835 () Bool)

(declare-fun c!906856 () Bool)

(assert (=> b!5244835 (= c!906856 (is-Union!14846 lt!2149350))))

(declare-fun e!3263268 () Regex!14846)

(assert (=> b!5244835 (= e!3263269 e!3263268)))

(declare-fun b!5244836 () Bool)

(declare-fun e!3263267 () Regex!14846)

(assert (=> b!5244836 (= e!3263267 e!3263269)))

(declare-fun c!906855 () Bool)

(assert (=> b!5244836 (= c!906855 (is-ElementMatch!14846 lt!2149350))))

(declare-fun d!1689755 () Bool)

(declare-fun lt!2149665 () Regex!14846)

(assert (=> d!1689755 (validRegex!6582 lt!2149665)))

(assert (=> d!1689755 (= lt!2149665 e!3263267)))

(declare-fun c!906858 () Bool)

(assert (=> d!1689755 (= c!906858 (or (is-EmptyExpr!14846 lt!2149350) (is-EmptyLang!14846 lt!2149350)))))

(assert (=> d!1689755 (validRegex!6582 lt!2149350)))

(assert (=> d!1689755 (= (derivativeStep!4083 lt!2149350 (head!11240 s!2326)) lt!2149665)))

(declare-fun b!5244837 () Bool)

(declare-fun e!3263270 () Regex!14846)

(assert (=> b!5244837 (= e!3263270 (Concat!23691 call!371416 lt!2149350))))

(declare-fun b!5244838 () Bool)

(declare-fun c!906859 () Bool)

(assert (=> b!5244838 (= c!906859 (nullable!5015 (regOne!30204 lt!2149350)))))

(declare-fun e!3263266 () Regex!14846)

(assert (=> b!5244838 (= e!3263270 e!3263266)))

(declare-fun b!5244839 () Bool)

(assert (=> b!5244839 (= e!3263266 (Union!14846 (Concat!23691 call!371419 (regTwo!30204 lt!2149350)) EmptyLang!14846))))

(declare-fun b!5244840 () Bool)

(assert (=> b!5244840 (= e!3263268 e!3263270)))

(declare-fun c!906857 () Bool)

(assert (=> b!5244840 (= c!906857 (is-Star!14846 lt!2149350))))

(declare-fun bm!371412 () Bool)

(declare-fun call!371417 () Regex!14846)

(assert (=> bm!371412 (= call!371416 call!371417)))

(declare-fun b!5244841 () Bool)

(assert (=> b!5244841 (= e!3263267 EmptyLang!14846)))

(declare-fun b!5244842 () Bool)

(declare-fun call!371418 () Regex!14846)

(assert (=> b!5244842 (= e!3263268 (Union!14846 call!371418 call!371417))))

(declare-fun bm!371413 () Bool)

(assert (=> bm!371413 (= call!371418 (derivativeStep!4083 (ite c!906856 (regOne!30205 lt!2149350) (regOne!30204 lt!2149350)) (head!11240 s!2326)))))

(declare-fun bm!371414 () Bool)

(assert (=> bm!371414 (= call!371417 (derivativeStep!4083 (ite c!906856 (regTwo!30205 lt!2149350) (ite c!906857 (reg!15175 lt!2149350) (ite c!906859 (regTwo!30204 lt!2149350) (regOne!30204 lt!2149350)))) (head!11240 s!2326)))))

(declare-fun b!5244843 () Bool)

(assert (=> b!5244843 (= e!3263266 (Union!14846 (Concat!23691 call!371418 (regTwo!30204 lt!2149350)) call!371419))))

(assert (= (and d!1689755 c!906858) b!5244841))

(assert (= (and d!1689755 (not c!906858)) b!5244836))

(assert (= (and b!5244836 c!906855) b!5244834))

(assert (= (and b!5244836 (not c!906855)) b!5244835))

(assert (= (and b!5244835 c!906856) b!5244842))

(assert (= (and b!5244835 (not c!906856)) b!5244840))

(assert (= (and b!5244840 c!906857) b!5244837))

(assert (= (and b!5244840 (not c!906857)) b!5244838))

(assert (= (and b!5244838 c!906859) b!5244843))

(assert (= (and b!5244838 (not c!906859)) b!5244839))

(assert (= (or b!5244843 b!5244839) bm!371411))

(assert (= (or b!5244837 bm!371411) bm!371412))

(assert (= (or b!5244842 bm!371412) bm!371414))

(assert (= (or b!5244842 b!5244843) bm!371413))

(declare-fun m!6288740 () Bool)

(assert (=> d!1689755 m!6288740))

(assert (=> d!1689755 m!6288288))

(declare-fun m!6288742 () Bool)

(assert (=> b!5244838 m!6288742))

(assert (=> bm!371413 m!6288096))

(declare-fun m!6288744 () Bool)

(assert (=> bm!371413 m!6288744))

(assert (=> bm!371414 m!6288096))

(declare-fun m!6288746 () Bool)

(assert (=> bm!371414 m!6288746))

(assert (=> b!5244354 d!1689755))

(assert (=> b!5244354 d!1689689))

(assert (=> b!5244354 d!1689691))

(declare-fun bs!1216587 () Bool)

(declare-fun d!1689757 () Bool)

(assert (= bs!1216587 (and d!1689757 d!1689597)))

(declare-fun lambda!263914 () Int)

(assert (=> bs!1216587 (= lambda!263914 lambda!263894)))

(declare-fun bs!1216588 () Bool)

(assert (= bs!1216588 (and d!1689757 d!1689417)))

(assert (=> bs!1216588 (= lambda!263914 lambda!263845)))

(declare-fun bs!1216589 () Bool)

(assert (= bs!1216589 (and d!1689757 d!1689547)))

(assert (=> bs!1216589 (= lambda!263914 lambda!263882)))

(declare-fun bs!1216590 () Bool)

(assert (= bs!1216590 (and d!1689757 d!1689403)))

(assert (=> bs!1216590 (= lambda!263914 lambda!263836)))

(declare-fun bs!1216591 () Bool)

(assert (= bs!1216591 (and d!1689757 b!5243561)))

(assert (=> bs!1216591 (= lambda!263914 lambda!263815)))

(declare-fun bs!1216592 () Bool)

(assert (= bs!1216592 (and d!1689757 d!1689531)))

(assert (=> bs!1216592 (= lambda!263914 lambda!263878)))

(declare-fun bs!1216593 () Bool)

(assert (= bs!1216593 (and d!1689757 d!1689543)))

(assert (=> bs!1216593 (= lambda!263914 lambda!263881)))

(declare-fun bs!1216594 () Bool)

(assert (= bs!1216594 (and d!1689757 d!1689515)))

(assert (=> bs!1216594 (= lambda!263914 lambda!263875)))

(declare-fun b!5244844 () Bool)

(declare-fun e!3263274 () Regex!14846)

(assert (=> b!5244844 (= e!3263274 (h!67161 (t!374018 (unfocusZipperList!288 zl!343))))))

(declare-fun b!5244845 () Bool)

(declare-fun e!3263276 () Bool)

(assert (=> b!5244845 (= e!3263276 (isEmpty!32650 (t!374018 (t!374018 (unfocusZipperList!288 zl!343)))))))

(declare-fun b!5244846 () Bool)

(declare-fun e!3263272 () Regex!14846)

(assert (=> b!5244846 (= e!3263274 e!3263272)))

(declare-fun c!906861 () Bool)

(assert (=> b!5244846 (= c!906861 (is-Cons!60713 (t!374018 (unfocusZipperList!288 zl!343))))))

(declare-fun b!5244847 () Bool)

(declare-fun e!3263275 () Bool)

(declare-fun lt!2149666 () Regex!14846)

(assert (=> b!5244847 (= e!3263275 (isUnion!237 lt!2149666))))

(declare-fun b!5244848 () Bool)

(assert (=> b!5244848 (= e!3263275 (= lt!2149666 (head!11241 (t!374018 (unfocusZipperList!288 zl!343)))))))

(declare-fun b!5244849 () Bool)

(declare-fun e!3263273 () Bool)

(assert (=> b!5244849 (= e!3263273 (isEmptyLang!805 lt!2149666))))

(declare-fun b!5244850 () Bool)

(assert (=> b!5244850 (= e!3263273 e!3263275)))

(declare-fun c!906860 () Bool)

(assert (=> b!5244850 (= c!906860 (isEmpty!32650 (tail!10338 (t!374018 (unfocusZipperList!288 zl!343)))))))

(declare-fun b!5244851 () Bool)

(assert (=> b!5244851 (= e!3263272 (Union!14846 (h!67161 (t!374018 (unfocusZipperList!288 zl!343))) (generalisedUnion!775 (t!374018 (t!374018 (unfocusZipperList!288 zl!343))))))))

(declare-fun e!3263271 () Bool)

(assert (=> d!1689757 e!3263271))

(declare-fun res!2225853 () Bool)

(assert (=> d!1689757 (=> (not res!2225853) (not e!3263271))))

(assert (=> d!1689757 (= res!2225853 (validRegex!6582 lt!2149666))))

(assert (=> d!1689757 (= lt!2149666 e!3263274)))

(declare-fun c!906863 () Bool)

(assert (=> d!1689757 (= c!906863 e!3263276)))

(declare-fun res!2225852 () Bool)

(assert (=> d!1689757 (=> (not res!2225852) (not e!3263276))))

(assert (=> d!1689757 (= res!2225852 (is-Cons!60713 (t!374018 (unfocusZipperList!288 zl!343))))))

(assert (=> d!1689757 (forall!14270 (t!374018 (unfocusZipperList!288 zl!343)) lambda!263914)))

(assert (=> d!1689757 (= (generalisedUnion!775 (t!374018 (unfocusZipperList!288 zl!343))) lt!2149666)))

(declare-fun b!5244852 () Bool)

(assert (=> b!5244852 (= e!3263271 e!3263273)))

(declare-fun c!906862 () Bool)

(assert (=> b!5244852 (= c!906862 (isEmpty!32650 (t!374018 (unfocusZipperList!288 zl!343))))))

(declare-fun b!5244853 () Bool)

(assert (=> b!5244853 (= e!3263272 EmptyLang!14846)))

(assert (= (and d!1689757 res!2225852) b!5244845))

(assert (= (and d!1689757 c!906863) b!5244844))

(assert (= (and d!1689757 (not c!906863)) b!5244846))

(assert (= (and b!5244846 c!906861) b!5244851))

(assert (= (and b!5244846 (not c!906861)) b!5244853))

(assert (= (and d!1689757 res!2225853) b!5244852))

(assert (= (and b!5244852 c!906862) b!5244849))

(assert (= (and b!5244852 (not c!906862)) b!5244850))

(assert (= (and b!5244850 c!906860) b!5244848))

(assert (= (and b!5244850 (not c!906860)) b!5244847))

(declare-fun m!6288748 () Bool)

(assert (=> b!5244845 m!6288748))

(declare-fun m!6288750 () Bool)

(assert (=> b!5244851 m!6288750))

(declare-fun m!6288752 () Bool)

(assert (=> b!5244848 m!6288752))

(declare-fun m!6288754 () Bool)

(assert (=> b!5244850 m!6288754))

(assert (=> b!5244850 m!6288754))

(declare-fun m!6288756 () Bool)

(assert (=> b!5244850 m!6288756))

(declare-fun m!6288758 () Bool)

(assert (=> b!5244849 m!6288758))

(declare-fun m!6288760 () Bool)

(assert (=> d!1689757 m!6288760))

(declare-fun m!6288762 () Bool)

(assert (=> d!1689757 m!6288762))

(assert (=> b!5244852 m!6288240))

(declare-fun m!6288764 () Bool)

(assert (=> b!5244847 m!6288764))

(assert (=> b!5244303 d!1689757))

(declare-fun d!1689759 () Bool)

(assert (=> d!1689759 (= (isEmptyExpr!796 lt!2149612) (is-EmptyExpr!14846 lt!2149612))))

(assert (=> b!5244368 d!1689759))

(declare-fun d!1689761 () Bool)

(declare-fun c!906864 () Bool)

(assert (=> d!1689761 (= c!906864 (isEmpty!32653 (tail!10337 s!2326)))))

(declare-fun e!3263277 () Bool)

(assert (=> d!1689761 (= (matchZipper!1090 (derivationStepZipper!1105 z!1189 (head!11240 s!2326)) (tail!10337 s!2326)) e!3263277)))

(declare-fun b!5244854 () Bool)

(assert (=> b!5244854 (= e!3263277 (nullableZipper!1261 (derivationStepZipper!1105 z!1189 (head!11240 s!2326))))))

(declare-fun b!5244855 () Bool)

(assert (=> b!5244855 (= e!3263277 (matchZipper!1090 (derivationStepZipper!1105 (derivationStepZipper!1105 z!1189 (head!11240 s!2326)) (head!11240 (tail!10337 s!2326))) (tail!10337 (tail!10337 s!2326))))))

(assert (= (and d!1689761 c!906864) b!5244854))

(assert (= (and d!1689761 (not c!906864)) b!5244855))

(assert (=> d!1689761 m!6288092))

(assert (=> d!1689761 m!6288094))

(assert (=> b!5244854 m!6288418))

(declare-fun m!6288766 () Bool)

(assert (=> b!5244854 m!6288766))

(assert (=> b!5244855 m!6288092))

(assert (=> b!5244855 m!6288628))

(assert (=> b!5244855 m!6288418))

(assert (=> b!5244855 m!6288628))

(declare-fun m!6288768 () Bool)

(assert (=> b!5244855 m!6288768))

(assert (=> b!5244855 m!6288092))

(assert (=> b!5244855 m!6288632))

(assert (=> b!5244855 m!6288768))

(assert (=> b!5244855 m!6288632))

(declare-fun m!6288770 () Bool)

(assert (=> b!5244855 m!6288770))

(assert (=> b!5244459 d!1689761))

(declare-fun bs!1216595 () Bool)

(declare-fun d!1689763 () Bool)

(assert (= bs!1216595 (and d!1689763 b!5243551)))

(declare-fun lambda!263915 () Int)

(assert (=> bs!1216595 (= (= (head!11240 s!2326) (h!67163 s!2326)) (= lambda!263915 lambda!263814))))

(declare-fun bs!1216596 () Bool)

(assert (= bs!1216596 (and d!1689763 d!1689687)))

(assert (=> bs!1216596 (= lambda!263915 lambda!263906)))

(declare-fun bs!1216597 () Bool)

(assert (= bs!1216597 (and d!1689763 d!1689725)))

(assert (=> bs!1216597 (= (= (head!11240 s!2326) (head!11240 (t!374020 s!2326))) (= lambda!263915 lambda!263912))))

(declare-fun bs!1216598 () Bool)

(assert (= bs!1216598 (and d!1689763 d!1689733)))

(assert (=> bs!1216598 (= (= (head!11240 s!2326) (head!11240 (t!374020 s!2326))) (= lambda!263915 lambda!263913))))

(assert (=> d!1689763 true))

(assert (=> d!1689763 (= (derivationStepZipper!1105 z!1189 (head!11240 s!2326)) (flatMap!573 z!1189 lambda!263915))))

(declare-fun bs!1216599 () Bool)

(assert (= bs!1216599 d!1689763))

(declare-fun m!6288772 () Bool)

(assert (=> bs!1216599 m!6288772))

(assert (=> b!5244459 d!1689763))

(assert (=> b!5244459 d!1689689))

(assert (=> b!5244459 d!1689691))

(declare-fun d!1689765 () Bool)

(assert (=> d!1689765 (= (isEmpty!32650 (tail!10338 (exprs!4730 (h!67162 zl!343)))) (is-Nil!60713 (tail!10338 (exprs!4730 (h!67162 zl!343)))))))

(assert (=> b!5243756 d!1689765))

(declare-fun d!1689767 () Bool)

(assert (=> d!1689767 (= (tail!10338 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))

(assert (=> b!5243756 d!1689767))

(declare-fun d!1689769 () Bool)

(assert (=> d!1689769 (= (isUnion!237 lt!2149600) (is-Union!14846 lt!2149600))))

(assert (=> b!5244299 d!1689769))

(declare-fun d!1689771 () Bool)

(assert (=> d!1689771 (= ($colon$colon!1311 (exprs!4730 lt!2149388) (ite (or c!906685 c!906682) (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (h!67161 (exprs!4730 (h!67162 zl!343))))) (Cons!60713 (ite (or c!906685 c!906682) (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))) (h!67161 (exprs!4730 (h!67162 zl!343)))) (exprs!4730 lt!2149388)))))

(assert (=> bm!371336 d!1689771))

(declare-fun d!1689773 () Bool)

(assert (=> d!1689773 true))

(declare-fun setRes!33464 () Bool)

(assert (=> d!1689773 setRes!33464))

(declare-fun condSetEmpty!33464 () Bool)

(declare-fun res!2225856 () (Set Context!8460))

(assert (=> d!1689773 (= condSetEmpty!33464 (= res!2225856 (as set.empty (Set Context!8460))))))

(assert (=> d!1689773 (= (choose!39058 lt!2149347 lambda!263814) res!2225856)))

(declare-fun setIsEmpty!33464 () Bool)

(assert (=> setIsEmpty!33464 setRes!33464))

(declare-fun setElem!33464 () Context!8460)

(declare-fun e!3263280 () Bool)

(declare-fun tp!1468082 () Bool)

(declare-fun setNonEmpty!33464 () Bool)

(assert (=> setNonEmpty!33464 (= setRes!33464 (and tp!1468082 (inv!80363 setElem!33464) e!3263280))))

(declare-fun setRest!33464 () (Set Context!8460))

(assert (=> setNonEmpty!33464 (= res!2225856 (set.union (set.insert setElem!33464 (as set.empty (Set Context!8460))) setRest!33464))))

(declare-fun b!5244858 () Bool)

(declare-fun tp!1468083 () Bool)

(assert (=> b!5244858 (= e!3263280 tp!1468083)))

(assert (= (and d!1689773 condSetEmpty!33464) setIsEmpty!33464))

(assert (= (and d!1689773 (not condSetEmpty!33464)) setNonEmpty!33464))

(assert (= setNonEmpty!33464 b!5244858))

(declare-fun m!6288774 () Bool)

(assert (=> setNonEmpty!33464 m!6288774))

(assert (=> d!1689585 d!1689773))

(assert (=> d!1689545 d!1689741))

(assert (=> d!1689545 d!1689751))

(assert (=> bm!371346 d!1689741))

(assert (=> d!1689551 d!1689541))

(assert (=> d!1689551 d!1689537))

(declare-fun d!1689775 () Bool)

(assert (=> d!1689775 (= (matchR!7031 lt!2149350 s!2326) (matchZipper!1090 lt!2149355 s!2326))))

(assert (=> d!1689775 true))

(declare-fun _$44!1378 () Unit!152782)

(assert (=> d!1689775 (= (choose!39063 lt!2149355 lt!2149354 lt!2149350 s!2326) _$44!1378)))

(declare-fun bs!1216600 () Bool)

(assert (= bs!1216600 d!1689775))

(assert (=> bs!1216600 m!6287682))

(assert (=> bs!1216600 m!6287670))

(assert (=> d!1689551 d!1689775))

(assert (=> d!1689551 d!1689681))

(assert (=> b!5243848 d!1689395))

(declare-fun b!5244859 () Bool)

(declare-fun res!2225857 () Bool)

(declare-fun e!3263282 () Bool)

(assert (=> b!5244859 (=> res!2225857 e!3263282)))

(declare-fun e!3263284 () Bool)

(assert (=> b!5244859 (= res!2225857 e!3263284)))

(declare-fun res!2225861 () Bool)

(assert (=> b!5244859 (=> (not res!2225861) (not e!3263284))))

(declare-fun lt!2149667 () Bool)

(assert (=> b!5244859 (= res!2225861 lt!2149667)))

(declare-fun b!5244860 () Bool)

(declare-fun e!3263285 () Bool)

(assert (=> b!5244860 (= e!3263285 (not lt!2149667))))

(declare-fun b!5244861 () Bool)

(declare-fun e!3263286 () Bool)

(assert (=> b!5244861 (= e!3263282 e!3263286)))

(declare-fun res!2225864 () Bool)

(assert (=> b!5244861 (=> (not res!2225864) (not e!3263286))))

(assert (=> b!5244861 (= res!2225864 (not lt!2149667))))

(declare-fun b!5244862 () Bool)

(declare-fun e!3263281 () Bool)

(assert (=> b!5244862 (= e!3263281 (not (= (head!11240 (tail!10337 s!2326)) (c!906500 (derivativeStep!4083 r!7292 (head!11240 s!2326))))))))

(declare-fun b!5244863 () Bool)

(declare-fun res!2225858 () Bool)

(assert (=> b!5244863 (=> (not res!2225858) (not e!3263284))))

(assert (=> b!5244863 (= res!2225858 (isEmpty!32653 (tail!10337 (tail!10337 s!2326))))))

(declare-fun b!5244864 () Bool)

(declare-fun res!2225863 () Bool)

(assert (=> b!5244864 (=> res!2225863 e!3263281)))

(assert (=> b!5244864 (= res!2225863 (not (isEmpty!32653 (tail!10337 (tail!10337 s!2326)))))))

(declare-fun b!5244865 () Bool)

(assert (=> b!5244865 (= e!3263286 e!3263281)))

(declare-fun res!2225859 () Bool)

(assert (=> b!5244865 (=> res!2225859 e!3263281)))

(declare-fun call!371420 () Bool)

(assert (=> b!5244865 (= res!2225859 call!371420)))

(declare-fun b!5244866 () Bool)

(declare-fun e!3263283 () Bool)

(assert (=> b!5244866 (= e!3263283 e!3263285)))

(declare-fun c!906865 () Bool)

(assert (=> b!5244866 (= c!906865 (is-EmptyLang!14846 (derivativeStep!4083 r!7292 (head!11240 s!2326))))))

(declare-fun b!5244867 () Bool)

(assert (=> b!5244867 (= e!3263283 (= lt!2149667 call!371420))))

(declare-fun b!5244868 () Bool)

(declare-fun e!3263287 () Bool)

(assert (=> b!5244868 (= e!3263287 (nullable!5015 (derivativeStep!4083 r!7292 (head!11240 s!2326))))))

(declare-fun b!5244869 () Bool)

(assert (=> b!5244869 (= e!3263287 (matchR!7031 (derivativeStep!4083 (derivativeStep!4083 r!7292 (head!11240 s!2326)) (head!11240 (tail!10337 s!2326))) (tail!10337 (tail!10337 s!2326))))))

(declare-fun d!1689777 () Bool)

(assert (=> d!1689777 e!3263283))

(declare-fun c!906867 () Bool)

(assert (=> d!1689777 (= c!906867 (is-EmptyExpr!14846 (derivativeStep!4083 r!7292 (head!11240 s!2326))))))

(assert (=> d!1689777 (= lt!2149667 e!3263287)))

(declare-fun c!906866 () Bool)

(assert (=> d!1689777 (= c!906866 (isEmpty!32653 (tail!10337 s!2326)))))

(assert (=> d!1689777 (validRegex!6582 (derivativeStep!4083 r!7292 (head!11240 s!2326)))))

(assert (=> d!1689777 (= (matchR!7031 (derivativeStep!4083 r!7292 (head!11240 s!2326)) (tail!10337 s!2326)) lt!2149667)))

(declare-fun b!5244870 () Bool)

(assert (=> b!5244870 (= e!3263284 (= (head!11240 (tail!10337 s!2326)) (c!906500 (derivativeStep!4083 r!7292 (head!11240 s!2326)))))))

(declare-fun b!5244871 () Bool)

(declare-fun res!2225862 () Bool)

(assert (=> b!5244871 (=> res!2225862 e!3263282)))

(assert (=> b!5244871 (= res!2225862 (not (is-ElementMatch!14846 (derivativeStep!4083 r!7292 (head!11240 s!2326)))))))

(assert (=> b!5244871 (= e!3263285 e!3263282)))

(declare-fun b!5244872 () Bool)

(declare-fun res!2225860 () Bool)

(assert (=> b!5244872 (=> (not res!2225860) (not e!3263284))))

(assert (=> b!5244872 (= res!2225860 (not call!371420))))

(declare-fun bm!371415 () Bool)

(assert (=> bm!371415 (= call!371420 (isEmpty!32653 (tail!10337 s!2326)))))

(assert (= (and d!1689777 c!906866) b!5244868))

(assert (= (and d!1689777 (not c!906866)) b!5244869))

(assert (= (and d!1689777 c!906867) b!5244867))

(assert (= (and d!1689777 (not c!906867)) b!5244866))

(assert (= (and b!5244866 c!906865) b!5244860))

(assert (= (and b!5244866 (not c!906865)) b!5244871))

(assert (= (and b!5244871 (not res!2225862)) b!5244859))

(assert (= (and b!5244859 res!2225861) b!5244872))

(assert (= (and b!5244872 res!2225860) b!5244863))

(assert (= (and b!5244863 res!2225858) b!5244870))

(assert (= (and b!5244859 (not res!2225857)) b!5244861))

(assert (= (and b!5244861 res!2225864) b!5244865))

(assert (= (and b!5244865 (not res!2225859)) b!5244864))

(assert (= (and b!5244864 (not res!2225863)) b!5244862))

(assert (= (or b!5244867 b!5244872 b!5244865) bm!371415))

(assert (=> b!5244864 m!6288092))

(assert (=> b!5244864 m!6288632))

(assert (=> b!5244864 m!6288632))

(assert (=> b!5244864 m!6288730))

(assert (=> b!5244863 m!6288092))

(assert (=> b!5244863 m!6288632))

(assert (=> b!5244863 m!6288632))

(assert (=> b!5244863 m!6288730))

(assert (=> b!5244869 m!6288092))

(assert (=> b!5244869 m!6288628))

(assert (=> b!5244869 m!6288098))

(assert (=> b!5244869 m!6288628))

(declare-fun m!6288776 () Bool)

(assert (=> b!5244869 m!6288776))

(assert (=> b!5244869 m!6288092))

(assert (=> b!5244869 m!6288632))

(assert (=> b!5244869 m!6288776))

(assert (=> b!5244869 m!6288632))

(declare-fun m!6288778 () Bool)

(assert (=> b!5244869 m!6288778))

(assert (=> b!5244862 m!6288092))

(assert (=> b!5244862 m!6288628))

(assert (=> d!1689777 m!6288092))

(assert (=> d!1689777 m!6288094))

(assert (=> d!1689777 m!6288098))

(declare-fun m!6288780 () Bool)

(assert (=> d!1689777 m!6288780))

(assert (=> b!5244870 m!6288092))

(assert (=> b!5244870 m!6288628))

(assert (=> bm!371415 m!6288092))

(assert (=> bm!371415 m!6288094))

(assert (=> b!5244868 m!6288098))

(declare-fun m!6288782 () Bool)

(assert (=> b!5244868 m!6288782))

(assert (=> b!5244134 d!1689777))

(declare-fun bm!371416 () Bool)

(declare-fun call!371424 () Regex!14846)

(declare-fun call!371421 () Regex!14846)

(assert (=> bm!371416 (= call!371424 call!371421)))

(declare-fun b!5244873 () Bool)

(declare-fun e!3263291 () Regex!14846)

(assert (=> b!5244873 (= e!3263291 (ite (= (head!11240 s!2326) (c!906500 r!7292)) EmptyExpr!14846 EmptyLang!14846))))

(declare-fun b!5244874 () Bool)

(declare-fun c!906869 () Bool)

(assert (=> b!5244874 (= c!906869 (is-Union!14846 r!7292))))

(declare-fun e!3263290 () Regex!14846)

(assert (=> b!5244874 (= e!3263291 e!3263290)))

(declare-fun b!5244875 () Bool)

(declare-fun e!3263289 () Regex!14846)

(assert (=> b!5244875 (= e!3263289 e!3263291)))

(declare-fun c!906868 () Bool)

(assert (=> b!5244875 (= c!906868 (is-ElementMatch!14846 r!7292))))

(declare-fun d!1689779 () Bool)

(declare-fun lt!2149668 () Regex!14846)

(assert (=> d!1689779 (validRegex!6582 lt!2149668)))

(assert (=> d!1689779 (= lt!2149668 e!3263289)))

(declare-fun c!906871 () Bool)

(assert (=> d!1689779 (= c!906871 (or (is-EmptyExpr!14846 r!7292) (is-EmptyLang!14846 r!7292)))))

(assert (=> d!1689779 (validRegex!6582 r!7292)))

(assert (=> d!1689779 (= (derivativeStep!4083 r!7292 (head!11240 s!2326)) lt!2149668)))

(declare-fun b!5244876 () Bool)

(declare-fun e!3263292 () Regex!14846)

(assert (=> b!5244876 (= e!3263292 (Concat!23691 call!371421 r!7292))))

(declare-fun b!5244877 () Bool)

(declare-fun c!906872 () Bool)

(assert (=> b!5244877 (= c!906872 (nullable!5015 (regOne!30204 r!7292)))))

(declare-fun e!3263288 () Regex!14846)

(assert (=> b!5244877 (= e!3263292 e!3263288)))

(declare-fun b!5244878 () Bool)

(assert (=> b!5244878 (= e!3263288 (Union!14846 (Concat!23691 call!371424 (regTwo!30204 r!7292)) EmptyLang!14846))))

(declare-fun b!5244879 () Bool)

(assert (=> b!5244879 (= e!3263290 e!3263292)))

(declare-fun c!906870 () Bool)

(assert (=> b!5244879 (= c!906870 (is-Star!14846 r!7292))))

(declare-fun bm!371417 () Bool)

(declare-fun call!371422 () Regex!14846)

(assert (=> bm!371417 (= call!371421 call!371422)))

(declare-fun b!5244880 () Bool)

(assert (=> b!5244880 (= e!3263289 EmptyLang!14846)))

(declare-fun b!5244881 () Bool)

(declare-fun call!371423 () Regex!14846)

(assert (=> b!5244881 (= e!3263290 (Union!14846 call!371423 call!371422))))

(declare-fun bm!371418 () Bool)

(assert (=> bm!371418 (= call!371423 (derivativeStep!4083 (ite c!906869 (regOne!30205 r!7292) (regOne!30204 r!7292)) (head!11240 s!2326)))))

(declare-fun bm!371419 () Bool)

(assert (=> bm!371419 (= call!371422 (derivativeStep!4083 (ite c!906869 (regTwo!30205 r!7292) (ite c!906870 (reg!15175 r!7292) (ite c!906872 (regTwo!30204 r!7292) (regOne!30204 r!7292)))) (head!11240 s!2326)))))

(declare-fun b!5244882 () Bool)

(assert (=> b!5244882 (= e!3263288 (Union!14846 (Concat!23691 call!371423 (regTwo!30204 r!7292)) call!371424))))

(assert (= (and d!1689779 c!906871) b!5244880))

(assert (= (and d!1689779 (not c!906871)) b!5244875))

(assert (= (and b!5244875 c!906868) b!5244873))

(assert (= (and b!5244875 (not c!906868)) b!5244874))

(assert (= (and b!5244874 c!906869) b!5244881))

(assert (= (and b!5244874 (not c!906869)) b!5244879))

(assert (= (and b!5244879 c!906870) b!5244876))

(assert (= (and b!5244879 (not c!906870)) b!5244877))

(assert (= (and b!5244877 c!906872) b!5244882))

(assert (= (and b!5244877 (not c!906872)) b!5244878))

(assert (= (or b!5244882 b!5244878) bm!371416))

(assert (= (or b!5244876 bm!371416) bm!371417))

(assert (= (or b!5244881 bm!371417) bm!371419))

(assert (= (or b!5244881 b!5244882) bm!371418))

(declare-fun m!6288784 () Bool)

(assert (=> d!1689779 m!6288784))

(assert (=> d!1689779 m!6287580))

(declare-fun m!6288786 () Bool)

(assert (=> b!5244877 m!6288786))

(assert (=> bm!371418 m!6288096))

(declare-fun m!6288788 () Bool)

(assert (=> bm!371418 m!6288788))

(assert (=> bm!371419 m!6288096))

(declare-fun m!6288790 () Bool)

(assert (=> bm!371419 m!6288790))

(assert (=> b!5244134 d!1689779))

(assert (=> b!5244134 d!1689689))

(assert (=> b!5244134 d!1689691))

(assert (=> d!1689569 d!1689699))

(assert (=> d!1689591 d!1689741))

(assert (=> b!5244312 d!1689395))

(declare-fun bs!1216601 () Bool)

(declare-fun d!1689781 () Bool)

(assert (= bs!1216601 (and d!1689781 d!1689711)))

(declare-fun lambda!263916 () Int)

(assert (=> bs!1216601 (= lambda!263916 lambda!263909)))

(assert (=> d!1689781 (= (nullableZipper!1261 (set.union lt!2149384 lt!2149380)) (exists!1980 (set.union lt!2149384 lt!2149380) lambda!263916))))

(declare-fun bs!1216602 () Bool)

(assert (= bs!1216602 d!1689781))

(declare-fun m!6288792 () Bool)

(assert (=> bs!1216602 m!6288792))

(assert (=> b!5243729 d!1689781))

(assert (=> d!1689467 d!1689741))

(assert (=> d!1689467 d!1689573))

(declare-fun d!1689783 () Bool)

(assert (=> d!1689783 (= (isEmpty!32650 (tail!10338 lt!2149356)) (is-Nil!60713 (tail!10338 lt!2149356)))))

(assert (=> b!5244365 d!1689783))

(declare-fun d!1689785 () Bool)

(assert (=> d!1689785 (= (tail!10338 lt!2149356) (t!374018 lt!2149356))))

(assert (=> b!5244365 d!1689785))

(declare-fun b!5244883 () Bool)

(declare-fun c!906877 () Bool)

(declare-fun e!3263297 () Bool)

(assert (=> b!5244883 (= c!906877 e!3263297)))

(declare-fun res!2225865 () Bool)

(assert (=> b!5244883 (=> (not res!2225865) (not e!3263297))))

(assert (=> b!5244883 (= res!2225865 (is-Concat!23691 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))))))))

(declare-fun e!3263293 () (Set Context!8460))

(declare-fun e!3263298 () (Set Context!8460))

(assert (=> b!5244883 (= e!3263293 e!3263298)))

(declare-fun b!5244884 () Bool)

(declare-fun e!3263296 () (Set Context!8460))

(declare-fun call!371429 () (Set Context!8460))

(assert (=> b!5244884 (= e!3263296 call!371429)))

(declare-fun bm!371420 () Bool)

(declare-fun call!371430 () (Set Context!8460))

(declare-fun call!371428 () (Set Context!8460))

(assert (=> bm!371420 (= call!371430 call!371428)))

(declare-fun b!5244885 () Bool)

(declare-fun call!371425 () (Set Context!8460))

(assert (=> b!5244885 (= e!3263298 (set.union call!371425 call!371430))))

(declare-fun b!5244886 () Bool)

(assert (=> b!5244886 (= e!3263296 (as set.empty (Set Context!8460)))))

(declare-fun c!906874 () Bool)

(declare-fun bm!371421 () Bool)

(declare-fun call!371427 () List!60837)

(declare-fun c!906873 () Bool)

(assert (=> bm!371421 (= call!371428 (derivationStepZipperDown!294 (ite c!906873 (regOne!30205 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))))) (ite c!906877 (regTwo!30204 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))))) (ite c!906874 (regOne!30204 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))))) (reg!15175 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292)))))))) (ite (or c!906873 c!906877) (ite c!906553 lt!2149388 (Context!8461 call!371270)) (Context!8461 call!371427)) (h!67163 s!2326)))))

(declare-fun b!5244887 () Bool)

(assert (=> b!5244887 (= e!3263293 (set.union call!371428 call!371425))))

(declare-fun b!5244888 () Bool)

(declare-fun e!3263294 () (Set Context!8460))

(assert (=> b!5244888 (= e!3263294 call!371429)))

(declare-fun d!1689787 () Bool)

(declare-fun c!906876 () Bool)

(assert (=> d!1689787 (= c!906876 (and (is-ElementMatch!14846 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))))) (= (c!906500 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))))) (h!67163 s!2326))))))

(declare-fun e!3263295 () (Set Context!8460))

(assert (=> d!1689787 (= (derivationStepZipperDown!294 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292)))) (ite c!906553 lt!2149388 (Context!8461 call!371270)) (h!67163 s!2326)) e!3263295)))

(declare-fun b!5244889 () Bool)

(declare-fun c!906875 () Bool)

(assert (=> b!5244889 (= c!906875 (is-Star!14846 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))))))))

(assert (=> b!5244889 (= e!3263294 e!3263296)))

(declare-fun bm!371422 () Bool)

(declare-fun call!371426 () List!60837)

(assert (=> bm!371422 (= call!371426 ($colon$colon!1311 (exprs!4730 (ite c!906553 lt!2149388 (Context!8461 call!371270))) (ite (or c!906877 c!906874) (regTwo!30204 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))))) (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292)))))))))

(declare-fun b!5244890 () Bool)

(assert (=> b!5244890 (= e!3263295 e!3263293)))

(assert (=> b!5244890 (= c!906873 (is-Union!14846 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))))))))

(declare-fun bm!371423 () Bool)

(assert (=> bm!371423 (= call!371429 call!371430)))

(declare-fun bm!371424 () Bool)

(assert (=> bm!371424 (= call!371425 (derivationStepZipperDown!294 (ite c!906873 (regTwo!30205 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))))) (regOne!30204 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292)))))) (ite c!906873 (ite c!906553 lt!2149388 (Context!8461 call!371270)) (Context!8461 call!371426)) (h!67163 s!2326)))))

(declare-fun b!5244891 () Bool)

(assert (=> b!5244891 (= e!3263295 (set.insert (ite c!906553 lt!2149388 (Context!8461 call!371270)) (as set.empty (Set Context!8460))))))

(declare-fun b!5244892 () Bool)

(assert (=> b!5244892 (= e!3263297 (nullable!5015 (regOne!30204 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292)))))))))

(declare-fun b!5244893 () Bool)

(assert (=> b!5244893 (= e!3263298 e!3263294)))

(assert (=> b!5244893 (= c!906874 (is-Concat!23691 (ite c!906553 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))))))))

(declare-fun bm!371425 () Bool)

(assert (=> bm!371425 (= call!371427 call!371426)))

(assert (= (and d!1689787 c!906876) b!5244891))

(assert (= (and d!1689787 (not c!906876)) b!5244890))

(assert (= (and b!5244890 c!906873) b!5244887))

(assert (= (and b!5244890 (not c!906873)) b!5244883))

(assert (= (and b!5244883 res!2225865) b!5244892))

(assert (= (and b!5244883 c!906877) b!5244885))

(assert (= (and b!5244883 (not c!906877)) b!5244893))

(assert (= (and b!5244893 c!906874) b!5244888))

(assert (= (and b!5244893 (not c!906874)) b!5244889))

(assert (= (and b!5244889 c!906875) b!5244884))

(assert (= (and b!5244889 (not c!906875)) b!5244886))

(assert (= (or b!5244888 b!5244884) bm!371425))

(assert (= (or b!5244888 b!5244884) bm!371423))

(assert (= (or b!5244885 bm!371425) bm!371422))

(assert (= (or b!5244885 bm!371423) bm!371420))

(assert (= (or b!5244887 b!5244885) bm!371424))

(assert (= (or b!5244887 bm!371420) bm!371421))

(declare-fun m!6288794 () Bool)

(assert (=> bm!371421 m!6288794))

(declare-fun m!6288796 () Bool)

(assert (=> bm!371424 m!6288796))

(declare-fun m!6288798 () Bool)

(assert (=> b!5244891 m!6288798))

(declare-fun m!6288800 () Bool)

(assert (=> bm!371422 m!6288800))

(declare-fun m!6288802 () Bool)

(assert (=> b!5244892 m!6288802))

(assert (=> bm!371268 d!1689787))

(assert (=> b!5244347 d!1689689))

(declare-fun bs!1216603 () Bool)

(declare-fun d!1689789 () Bool)

(assert (= bs!1216603 (and d!1689789 d!1689711)))

(declare-fun lambda!263917 () Int)

(assert (=> bs!1216603 (= lambda!263917 lambda!263909)))

(declare-fun bs!1216604 () Bool)

(assert (= bs!1216604 (and d!1689789 d!1689781)))

(assert (=> bs!1216604 (= lambda!263917 lambda!263916)))

(assert (=> d!1689789 (= (nullableZipper!1261 lt!2149380) (exists!1980 lt!2149380 lambda!263917))))

(declare-fun bs!1216605 () Bool)

(assert (= bs!1216605 d!1689789))

(declare-fun m!6288804 () Bool)

(assert (=> bs!1216605 m!6288804))

(assert (=> b!5243722 d!1689789))

(declare-fun d!1689791 () Bool)

(assert (=> d!1689791 (= (isDefined!11660 lt!2149550) (not (isEmpty!32655 lt!2149550)))))

(declare-fun bs!1216606 () Bool)

(assert (= bs!1216606 d!1689791))

(declare-fun m!6288806 () Bool)

(assert (=> bs!1216606 m!6288806))

(assert (=> b!5243920 d!1689791))

(declare-fun d!1689793 () Bool)

(declare-fun res!2225866 () Bool)

(declare-fun e!3263299 () Bool)

(assert (=> d!1689793 (=> res!2225866 e!3263299)))

(assert (=> d!1689793 (= res!2225866 (is-Nil!60713 (exprs!4730 (h!67162 zl!343))))))

(assert (=> d!1689793 (= (forall!14270 (exprs!4730 (h!67162 zl!343)) lambda!263845) e!3263299)))

(declare-fun b!5244894 () Bool)

(declare-fun e!3263300 () Bool)

(assert (=> b!5244894 (= e!3263299 e!3263300)))

(declare-fun res!2225867 () Bool)

(assert (=> b!5244894 (=> (not res!2225867) (not e!3263300))))

(assert (=> b!5244894 (= res!2225867 (dynLambda!23995 lambda!263845 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun b!5244895 () Bool)

(assert (=> b!5244895 (= e!3263300 (forall!14270 (t!374018 (exprs!4730 (h!67162 zl!343))) lambda!263845))))

(assert (= (and d!1689793 (not res!2225866)) b!5244894))

(assert (= (and b!5244894 res!2225867) b!5244895))

(declare-fun b_lambda!202633 () Bool)

(assert (=> (not b_lambda!202633) (not b!5244894)))

(declare-fun m!6288808 () Bool)

(assert (=> b!5244894 m!6288808))

(declare-fun m!6288810 () Bool)

(assert (=> b!5244895 m!6288810))

(assert (=> d!1689417 d!1689793))

(declare-fun b!5244896 () Bool)

(declare-fun res!2225868 () Bool)

(declare-fun e!3263302 () Bool)

(assert (=> b!5244896 (=> res!2225868 e!3263302)))

(declare-fun e!3263304 () Bool)

(assert (=> b!5244896 (= res!2225868 e!3263304)))

(declare-fun res!2225872 () Bool)

(assert (=> b!5244896 (=> (not res!2225872) (not e!3263304))))

(declare-fun lt!2149669 () Bool)

(assert (=> b!5244896 (= res!2225872 lt!2149669)))

(declare-fun b!5244897 () Bool)

(declare-fun e!3263305 () Bool)

(assert (=> b!5244897 (= e!3263305 (not lt!2149669))))

(declare-fun b!5244898 () Bool)

(declare-fun e!3263306 () Bool)

(assert (=> b!5244898 (= e!3263302 e!3263306)))

(declare-fun res!2225875 () Bool)

(assert (=> b!5244898 (=> (not res!2225875) (not e!3263306))))

(assert (=> b!5244898 (= res!2225875 (not lt!2149669))))

(declare-fun b!5244899 () Bool)

(declare-fun e!3263301 () Bool)

(assert (=> b!5244899 (= e!3263301 (not (= (head!11240 (_1!35348 (get!20870 lt!2149550))) (c!906500 (regOne!30204 r!7292)))))))

(declare-fun b!5244900 () Bool)

(declare-fun res!2225869 () Bool)

(assert (=> b!5244900 (=> (not res!2225869) (not e!3263304))))

(assert (=> b!5244900 (= res!2225869 (isEmpty!32653 (tail!10337 (_1!35348 (get!20870 lt!2149550)))))))

(declare-fun b!5244901 () Bool)

(declare-fun res!2225874 () Bool)

(assert (=> b!5244901 (=> res!2225874 e!3263301)))

(assert (=> b!5244901 (= res!2225874 (not (isEmpty!32653 (tail!10337 (_1!35348 (get!20870 lt!2149550))))))))

(declare-fun b!5244902 () Bool)

(assert (=> b!5244902 (= e!3263306 e!3263301)))

(declare-fun res!2225870 () Bool)

(assert (=> b!5244902 (=> res!2225870 e!3263301)))

(declare-fun call!371431 () Bool)

(assert (=> b!5244902 (= res!2225870 call!371431)))

(declare-fun b!5244903 () Bool)

(declare-fun e!3263303 () Bool)

(assert (=> b!5244903 (= e!3263303 e!3263305)))

(declare-fun c!906878 () Bool)

(assert (=> b!5244903 (= c!906878 (is-EmptyLang!14846 (regOne!30204 r!7292)))))

(declare-fun b!5244904 () Bool)

(assert (=> b!5244904 (= e!3263303 (= lt!2149669 call!371431))))

(declare-fun b!5244905 () Bool)

(declare-fun e!3263307 () Bool)

(assert (=> b!5244905 (= e!3263307 (nullable!5015 (regOne!30204 r!7292)))))

(declare-fun b!5244906 () Bool)

(assert (=> b!5244906 (= e!3263307 (matchR!7031 (derivativeStep!4083 (regOne!30204 r!7292) (head!11240 (_1!35348 (get!20870 lt!2149550)))) (tail!10337 (_1!35348 (get!20870 lt!2149550)))))))

(declare-fun d!1689795 () Bool)

(assert (=> d!1689795 e!3263303))

(declare-fun c!906880 () Bool)

(assert (=> d!1689795 (= c!906880 (is-EmptyExpr!14846 (regOne!30204 r!7292)))))

(assert (=> d!1689795 (= lt!2149669 e!3263307)))

(declare-fun c!906879 () Bool)

(assert (=> d!1689795 (= c!906879 (isEmpty!32653 (_1!35348 (get!20870 lt!2149550))))))

(assert (=> d!1689795 (validRegex!6582 (regOne!30204 r!7292))))

(assert (=> d!1689795 (= (matchR!7031 (regOne!30204 r!7292) (_1!35348 (get!20870 lt!2149550))) lt!2149669)))

(declare-fun b!5244907 () Bool)

(assert (=> b!5244907 (= e!3263304 (= (head!11240 (_1!35348 (get!20870 lt!2149550))) (c!906500 (regOne!30204 r!7292))))))

(declare-fun b!5244908 () Bool)

(declare-fun res!2225873 () Bool)

(assert (=> b!5244908 (=> res!2225873 e!3263302)))

(assert (=> b!5244908 (= res!2225873 (not (is-ElementMatch!14846 (regOne!30204 r!7292))))))

(assert (=> b!5244908 (= e!3263305 e!3263302)))

(declare-fun b!5244909 () Bool)

(declare-fun res!2225871 () Bool)

(assert (=> b!5244909 (=> (not res!2225871) (not e!3263304))))

(assert (=> b!5244909 (= res!2225871 (not call!371431))))

(declare-fun bm!371426 () Bool)

(assert (=> bm!371426 (= call!371431 (isEmpty!32653 (_1!35348 (get!20870 lt!2149550))))))

(assert (= (and d!1689795 c!906879) b!5244905))

(assert (= (and d!1689795 (not c!906879)) b!5244906))

(assert (= (and d!1689795 c!906880) b!5244904))

(assert (= (and d!1689795 (not c!906880)) b!5244903))

(assert (= (and b!5244903 c!906878) b!5244897))

(assert (= (and b!5244903 (not c!906878)) b!5244908))

(assert (= (and b!5244908 (not res!2225873)) b!5244896))

(assert (= (and b!5244896 res!2225872) b!5244909))

(assert (= (and b!5244909 res!2225871) b!5244900))

(assert (= (and b!5244900 res!2225869) b!5244907))

(assert (= (and b!5244896 (not res!2225868)) b!5244898))

(assert (= (and b!5244898 res!2225875) b!5244902))

(assert (= (and b!5244902 (not res!2225870)) b!5244901))

(assert (= (and b!5244901 (not res!2225874)) b!5244899))

(assert (= (or b!5244904 b!5244909 b!5244902) bm!371426))

(declare-fun m!6288812 () Bool)

(assert (=> b!5244901 m!6288812))

(assert (=> b!5244901 m!6288812))

(declare-fun m!6288814 () Bool)

(assert (=> b!5244901 m!6288814))

(assert (=> b!5244900 m!6288812))

(assert (=> b!5244900 m!6288812))

(assert (=> b!5244900 m!6288814))

(declare-fun m!6288816 () Bool)

(assert (=> b!5244906 m!6288816))

(assert (=> b!5244906 m!6288816))

(declare-fun m!6288818 () Bool)

(assert (=> b!5244906 m!6288818))

(assert (=> b!5244906 m!6288812))

(assert (=> b!5244906 m!6288818))

(assert (=> b!5244906 m!6288812))

(declare-fun m!6288820 () Bool)

(assert (=> b!5244906 m!6288820))

(assert (=> b!5244899 m!6288816))

(declare-fun m!6288822 () Bool)

(assert (=> d!1689795 m!6288822))

(assert (=> d!1689795 m!6287948))

(assert (=> b!5244907 m!6288816))

(assert (=> bm!371426 m!6288822))

(assert (=> b!5244905 m!6288786))

(assert (=> b!5243916 d!1689795))

(assert (=> b!5243916 d!1689721))

(declare-fun bs!1216607 () Bool)

(declare-fun b!5244920 () Bool)

(assert (= bs!1216607 (and b!5244920 b!5244075)))

(declare-fun lambda!263918 () Int)

(assert (=> bs!1216607 (= (and (= (reg!15175 (regOne!30205 lt!2149381)) (reg!15175 r!7292)) (= (regOne!30205 lt!2149381) r!7292)) (= lambda!263918 lambda!263862))))

(declare-fun bs!1216608 () Bool)

(assert (= bs!1216608 (and b!5244920 b!5244682)))

(assert (=> bs!1216608 (not (= lambda!263918 lambda!263903))))

(declare-fun bs!1216609 () Bool)

(assert (= bs!1216609 (and b!5244920 b!5244403)))

(assert (=> bs!1216609 (not (= lambda!263918 lambda!263886))))

(declare-fun bs!1216610 () Bool)

(assert (= bs!1216610 (and b!5244920 b!5244317)))

(assert (=> bs!1216610 (not (= lambda!263918 lambda!263880))))

(declare-fun bs!1216611 () Bool)

(assert (= bs!1216611 (and b!5244920 d!1689441)))

(assert (=> bs!1216611 (not (= lambda!263918 lambda!263856))))

(declare-fun bs!1216612 () Bool)

(assert (= bs!1216612 (and b!5244920 b!5244327)))

(assert (=> bs!1216612 (= (and (= (reg!15175 (regOne!30205 lt!2149381)) (reg!15175 lt!2149381)) (= (regOne!30205 lt!2149381) lt!2149381)) (= lambda!263918 lambda!263879))))

(declare-fun bs!1216613 () Bool)

(assert (= bs!1216613 (and b!5244920 b!5244692)))

(assert (=> bs!1216613 (= (and (= (reg!15175 (regOne!30205 lt!2149381)) (reg!15175 (regOne!30205 lt!2149350))) (= (regOne!30205 lt!2149381) (regOne!30205 lt!2149350))) (= lambda!263918 lambda!263902))))

(declare-fun bs!1216614 () Bool)

(assert (= bs!1216614 (and b!5244920 b!5243550)))

(assert (=> bs!1216614 (not (= lambda!263918 lambda!263813))))

(declare-fun bs!1216615 () Bool)

(assert (= bs!1216615 (and b!5244920 b!5244065)))

(assert (=> bs!1216615 (not (= lambda!263918 lambda!263863))))

(declare-fun bs!1216616 () Bool)

(assert (= bs!1216616 (and b!5244920 b!5244761)))

(assert (=> bs!1216616 (not (= lambda!263918 lambda!263911))))

(declare-fun bs!1216617 () Bool)

(assert (= bs!1216617 (and b!5244920 d!1689431)))

(assert (=> bs!1216617 (not (= lambda!263918 lambda!263851))))

(assert (=> bs!1216611 (not (= lambda!263918 lambda!263857))))

(declare-fun bs!1216618 () Bool)

(assert (= bs!1216618 (and b!5244920 b!5244413)))

(assert (=> bs!1216618 (= (and (= (reg!15175 (regOne!30205 lt!2149381)) (reg!15175 lt!2149350)) (= (regOne!30205 lt!2149381) lt!2149350)) (= lambda!263918 lambda!263883))))

(assert (=> bs!1216614 (not (= lambda!263918 lambda!263812))))

(declare-fun bs!1216619 () Bool)

(assert (= bs!1216619 (and b!5244920 b!5244771)))

(assert (=> bs!1216619 (= (and (= (reg!15175 (regOne!30205 lt!2149381)) (reg!15175 (regOne!30205 r!7292))) (= (regOne!30205 lt!2149381) (regOne!30205 r!7292))) (= lambda!263918 lambda!263910))))

(assert (=> b!5244920 true))

(assert (=> b!5244920 true))

(declare-fun bs!1216620 () Bool)

(declare-fun b!5244910 () Bool)

(assert (= bs!1216620 (and b!5244910 b!5244075)))

(declare-fun lambda!263919 () Int)

(assert (=> bs!1216620 (not (= lambda!263919 lambda!263862))))

(declare-fun bs!1216621 () Bool)

(assert (= bs!1216621 (and b!5244910 b!5244682)))

(assert (=> bs!1216621 (= (and (= (regOne!30204 (regOne!30205 lt!2149381)) (regOne!30204 (regOne!30205 lt!2149350))) (= (regTwo!30204 (regOne!30205 lt!2149381)) (regTwo!30204 (regOne!30205 lt!2149350)))) (= lambda!263919 lambda!263903))))

(declare-fun bs!1216622 () Bool)

(assert (= bs!1216622 (and b!5244910 b!5244920)))

(assert (=> bs!1216622 (not (= lambda!263919 lambda!263918))))

(declare-fun bs!1216623 () Bool)

(assert (= bs!1216623 (and b!5244910 b!5244403)))

(assert (=> bs!1216623 (= (and (= (regOne!30204 (regOne!30205 lt!2149381)) (regOne!30204 lt!2149350)) (= (regTwo!30204 (regOne!30205 lt!2149381)) (regTwo!30204 lt!2149350))) (= lambda!263919 lambda!263886))))

(declare-fun bs!1216624 () Bool)

(assert (= bs!1216624 (and b!5244910 b!5244317)))

(assert (=> bs!1216624 (= (and (= (regOne!30204 (regOne!30205 lt!2149381)) (regOne!30204 lt!2149381)) (= (regTwo!30204 (regOne!30205 lt!2149381)) (regTwo!30204 lt!2149381))) (= lambda!263919 lambda!263880))))

(declare-fun bs!1216625 () Bool)

(assert (= bs!1216625 (and b!5244910 d!1689441)))

(assert (=> bs!1216625 (not (= lambda!263919 lambda!263856))))

(declare-fun bs!1216626 () Bool)

(assert (= bs!1216626 (and b!5244910 b!5244327)))

(assert (=> bs!1216626 (not (= lambda!263919 lambda!263879))))

(declare-fun bs!1216627 () Bool)

(assert (= bs!1216627 (and b!5244910 b!5244692)))

(assert (=> bs!1216627 (not (= lambda!263919 lambda!263902))))

(declare-fun bs!1216628 () Bool)

(assert (= bs!1216628 (and b!5244910 b!5243550)))

(assert (=> bs!1216628 (= (and (= (regOne!30204 (regOne!30205 lt!2149381)) (regOne!30204 r!7292)) (= (regTwo!30204 (regOne!30205 lt!2149381)) (regTwo!30204 r!7292))) (= lambda!263919 lambda!263813))))

(declare-fun bs!1216629 () Bool)

(assert (= bs!1216629 (and b!5244910 b!5244065)))

(assert (=> bs!1216629 (= (and (= (regOne!30204 (regOne!30205 lt!2149381)) (regOne!30204 r!7292)) (= (regTwo!30204 (regOne!30205 lt!2149381)) (regTwo!30204 r!7292))) (= lambda!263919 lambda!263863))))

(declare-fun bs!1216630 () Bool)

(assert (= bs!1216630 (and b!5244910 b!5244761)))

(assert (=> bs!1216630 (= (and (= (regOne!30204 (regOne!30205 lt!2149381)) (regOne!30204 (regOne!30205 r!7292))) (= (regTwo!30204 (regOne!30205 lt!2149381)) (regTwo!30204 (regOne!30205 r!7292)))) (= lambda!263919 lambda!263911))))

(declare-fun bs!1216631 () Bool)

(assert (= bs!1216631 (and b!5244910 d!1689431)))

(assert (=> bs!1216631 (not (= lambda!263919 lambda!263851))))

(assert (=> bs!1216625 (= (and (= (regOne!30204 (regOne!30205 lt!2149381)) (regOne!30204 r!7292)) (= (regTwo!30204 (regOne!30205 lt!2149381)) (regTwo!30204 r!7292))) (= lambda!263919 lambda!263857))))

(declare-fun bs!1216632 () Bool)

(assert (= bs!1216632 (and b!5244910 b!5244413)))

(assert (=> bs!1216632 (not (= lambda!263919 lambda!263883))))

(assert (=> bs!1216628 (not (= lambda!263919 lambda!263812))))

(declare-fun bs!1216633 () Bool)

(assert (= bs!1216633 (and b!5244910 b!5244771)))

(assert (=> bs!1216633 (not (= lambda!263919 lambda!263910))))

(assert (=> b!5244910 true))

(assert (=> b!5244910 true))

(declare-fun e!3263311 () Bool)

(declare-fun call!371432 () Bool)

(assert (=> b!5244910 (= e!3263311 call!371432)))

(declare-fun b!5244911 () Bool)

(declare-fun e!3263313 () Bool)

(declare-fun e!3263309 () Bool)

(assert (=> b!5244911 (= e!3263313 e!3263309)))

(declare-fun res!2225877 () Bool)

(assert (=> b!5244911 (= res!2225877 (matchRSpec!1949 (regOne!30205 (regOne!30205 lt!2149381)) s!2326))))

(assert (=> b!5244911 (=> res!2225877 e!3263309)))

(declare-fun b!5244912 () Bool)

(declare-fun e!3263314 () Bool)

(declare-fun e!3263310 () Bool)

(assert (=> b!5244912 (= e!3263314 e!3263310)))

(declare-fun res!2225876 () Bool)

(assert (=> b!5244912 (= res!2225876 (not (is-EmptyLang!14846 (regOne!30205 lt!2149381))))))

(assert (=> b!5244912 (=> (not res!2225876) (not e!3263310))))

(declare-fun bm!371427 () Bool)

(declare-fun call!371433 () Bool)

(assert (=> bm!371427 (= call!371433 (isEmpty!32653 s!2326))))

(declare-fun c!906881 () Bool)

(declare-fun bm!371428 () Bool)

(assert (=> bm!371428 (= call!371432 (Exists!2027 (ite c!906881 lambda!263918 lambda!263919)))))

(declare-fun b!5244913 () Bool)

(declare-fun res!2225878 () Bool)

(declare-fun e!3263308 () Bool)

(assert (=> b!5244913 (=> res!2225878 e!3263308)))

(assert (=> b!5244913 (= res!2225878 call!371433)))

(assert (=> b!5244913 (= e!3263311 e!3263308)))

(declare-fun b!5244914 () Bool)

(assert (=> b!5244914 (= e!3263314 call!371433)))

(declare-fun d!1689797 () Bool)

(declare-fun c!906882 () Bool)

(assert (=> d!1689797 (= c!906882 (is-EmptyExpr!14846 (regOne!30205 lt!2149381)))))

(assert (=> d!1689797 (= (matchRSpec!1949 (regOne!30205 lt!2149381) s!2326) e!3263314)))

(declare-fun b!5244915 () Bool)

(declare-fun c!906883 () Bool)

(assert (=> b!5244915 (= c!906883 (is-ElementMatch!14846 (regOne!30205 lt!2149381)))))

(declare-fun e!3263312 () Bool)

(assert (=> b!5244915 (= e!3263310 e!3263312)))

(declare-fun b!5244916 () Bool)

(assert (=> b!5244916 (= e!3263312 (= s!2326 (Cons!60715 (c!906500 (regOne!30205 lt!2149381)) Nil!60715)))))

(declare-fun b!5244917 () Bool)

(assert (=> b!5244917 (= e!3263313 e!3263311)))

(assert (=> b!5244917 (= c!906881 (is-Star!14846 (regOne!30205 lt!2149381)))))

(declare-fun b!5244918 () Bool)

(declare-fun c!906884 () Bool)

(assert (=> b!5244918 (= c!906884 (is-Union!14846 (regOne!30205 lt!2149381)))))

(assert (=> b!5244918 (= e!3263312 e!3263313)))

(declare-fun b!5244919 () Bool)

(assert (=> b!5244919 (= e!3263309 (matchRSpec!1949 (regTwo!30205 (regOne!30205 lt!2149381)) s!2326))))

(assert (=> b!5244920 (= e!3263308 call!371432)))

(assert (= (and d!1689797 c!906882) b!5244914))

(assert (= (and d!1689797 (not c!906882)) b!5244912))

(assert (= (and b!5244912 res!2225876) b!5244915))

(assert (= (and b!5244915 c!906883) b!5244916))

(assert (= (and b!5244915 (not c!906883)) b!5244918))

(assert (= (and b!5244918 c!906884) b!5244911))

(assert (= (and b!5244918 (not c!906884)) b!5244917))

(assert (= (and b!5244911 (not res!2225877)) b!5244919))

(assert (= (and b!5244917 c!906881) b!5244913))

(assert (= (and b!5244917 (not c!906881)) b!5244910))

(assert (= (and b!5244913 (not res!2225878)) b!5244920))

(assert (= (or b!5244920 b!5244910) bm!371428))

(assert (= (or b!5244914 b!5244913) bm!371427))

(declare-fun m!6288824 () Bool)

(assert (=> b!5244911 m!6288824))

(assert (=> bm!371427 m!6288058))

(declare-fun m!6288826 () Bool)

(assert (=> bm!371428 m!6288826))

(declare-fun m!6288828 () Bool)

(assert (=> b!5244919 m!6288828))

(assert (=> b!5244318 d!1689797))

(declare-fun bs!1216634 () Bool)

(declare-fun d!1689799 () Bool)

(assert (= bs!1216634 (and d!1689799 d!1689597)))

(declare-fun lambda!263920 () Int)

(assert (=> bs!1216634 (= lambda!263920 lambda!263894)))

(declare-fun bs!1216635 () Bool)

(assert (= bs!1216635 (and d!1689799 d!1689757)))

(assert (=> bs!1216635 (= lambda!263920 lambda!263914)))

(declare-fun bs!1216636 () Bool)

(assert (= bs!1216636 (and d!1689799 d!1689417)))

(assert (=> bs!1216636 (= lambda!263920 lambda!263845)))

(declare-fun bs!1216637 () Bool)

(assert (= bs!1216637 (and d!1689799 d!1689547)))

(assert (=> bs!1216637 (= lambda!263920 lambda!263882)))

(declare-fun bs!1216638 () Bool)

(assert (= bs!1216638 (and d!1689799 d!1689403)))

(assert (=> bs!1216638 (= lambda!263920 lambda!263836)))

(declare-fun bs!1216639 () Bool)

(assert (= bs!1216639 (and d!1689799 b!5243561)))

(assert (=> bs!1216639 (= lambda!263920 lambda!263815)))

(declare-fun bs!1216640 () Bool)

(assert (= bs!1216640 (and d!1689799 d!1689531)))

(assert (=> bs!1216640 (= lambda!263920 lambda!263878)))

(declare-fun bs!1216641 () Bool)

(assert (= bs!1216641 (and d!1689799 d!1689543)))

(assert (=> bs!1216641 (= lambda!263920 lambda!263881)))

(declare-fun bs!1216642 () Bool)

(assert (= bs!1216642 (and d!1689799 d!1689515)))

(assert (=> bs!1216642 (= lambda!263920 lambda!263875)))

(declare-fun e!3263315 () Bool)

(assert (=> d!1689799 e!3263315))

(declare-fun res!2225880 () Bool)

(assert (=> d!1689799 (=> (not res!2225880) (not e!3263315))))

(declare-fun lt!2149670 () Regex!14846)

(assert (=> d!1689799 (= res!2225880 (validRegex!6582 lt!2149670))))

(declare-fun e!3263319 () Regex!14846)

(assert (=> d!1689799 (= lt!2149670 e!3263319)))

(declare-fun c!906886 () Bool)

(declare-fun e!3263316 () Bool)

(assert (=> d!1689799 (= c!906886 e!3263316)))

(declare-fun res!2225879 () Bool)

(assert (=> d!1689799 (=> (not res!2225879) (not e!3263316))))

(assert (=> d!1689799 (= res!2225879 (is-Cons!60713 (t!374018 (exprs!4730 (h!67162 zl!343)))))))

(assert (=> d!1689799 (forall!14270 (t!374018 (exprs!4730 (h!67162 zl!343))) lambda!263920)))

(assert (=> d!1689799 (= (generalisedConcat!515 (t!374018 (exprs!4730 (h!67162 zl!343)))) lt!2149670)))

(declare-fun b!5244921 () Bool)

(declare-fun e!3263317 () Bool)

(assert (=> b!5244921 (= e!3263315 e!3263317)))

(declare-fun c!906888 () Bool)

(assert (=> b!5244921 (= c!906888 (isEmpty!32650 (t!374018 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun b!5244922 () Bool)

(assert (=> b!5244922 (= e!3263319 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun b!5244923 () Bool)

(declare-fun e!3263320 () Regex!14846)

(assert (=> b!5244923 (= e!3263320 (Concat!23691 (h!67161 (t!374018 (exprs!4730 (h!67162 zl!343)))) (generalisedConcat!515 (t!374018 (t!374018 (exprs!4730 (h!67162 zl!343)))))))))

(declare-fun b!5244924 () Bool)

(assert (=> b!5244924 (= e!3263316 (isEmpty!32650 (t!374018 (t!374018 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun b!5244925 () Bool)

(declare-fun e!3263318 () Bool)

(assert (=> b!5244925 (= e!3263318 (isConcat!319 lt!2149670))))

(declare-fun b!5244926 () Bool)

(assert (=> b!5244926 (= e!3263317 e!3263318)))

(declare-fun c!906885 () Bool)

(assert (=> b!5244926 (= c!906885 (isEmpty!32650 (tail!10338 (t!374018 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun b!5244927 () Bool)

(assert (=> b!5244927 (= e!3263320 EmptyExpr!14846)))

(declare-fun b!5244928 () Bool)

(assert (=> b!5244928 (= e!3263318 (= lt!2149670 (head!11241 (t!374018 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun b!5244929 () Bool)

(assert (=> b!5244929 (= e!3263317 (isEmptyExpr!796 lt!2149670))))

(declare-fun b!5244930 () Bool)

(assert (=> b!5244930 (= e!3263319 e!3263320)))

(declare-fun c!906887 () Bool)

(assert (=> b!5244930 (= c!906887 (is-Cons!60713 (t!374018 (exprs!4730 (h!67162 zl!343)))))))

(assert (= (and d!1689799 res!2225879) b!5244924))

(assert (= (and d!1689799 c!906886) b!5244922))

(assert (= (and d!1689799 (not c!906886)) b!5244930))

(assert (= (and b!5244930 c!906887) b!5244923))

(assert (= (and b!5244930 (not c!906887)) b!5244927))

(assert (= (and d!1689799 res!2225880) b!5244921))

(assert (= (and b!5244921 c!906888) b!5244929))

(assert (= (and b!5244921 (not c!906888)) b!5244926))

(assert (= (and b!5244926 c!906885) b!5244928))

(assert (= (and b!5244926 (not c!906885)) b!5244925))

(declare-fun m!6288830 () Bool)

(assert (=> b!5244926 m!6288830))

(assert (=> b!5244926 m!6288830))

(declare-fun m!6288832 () Bool)

(assert (=> b!5244926 m!6288832))

(declare-fun m!6288834 () Bool)

(assert (=> d!1689799 m!6288834))

(declare-fun m!6288836 () Bool)

(assert (=> d!1689799 m!6288836))

(declare-fun m!6288838 () Bool)

(assert (=> b!5244929 m!6288838))

(declare-fun m!6288840 () Bool)

(assert (=> b!5244923 m!6288840))

(assert (=> b!5244921 m!6287578))

(declare-fun m!6288842 () Bool)

(assert (=> b!5244925 m!6288842))

(declare-fun m!6288844 () Bool)

(assert (=> b!5244928 m!6288844))

(declare-fun m!6288846 () Bool)

(assert (=> b!5244924 m!6288846))

(assert (=> b!5243753 d!1689799))

(declare-fun b!5244931 () Bool)

(declare-fun res!2225881 () Bool)

(declare-fun e!3263322 () Bool)

(assert (=> b!5244931 (=> res!2225881 e!3263322)))

(declare-fun e!3263324 () Bool)

(assert (=> b!5244931 (= res!2225881 e!3263324)))

(declare-fun res!2225885 () Bool)

(assert (=> b!5244931 (=> (not res!2225885) (not e!3263324))))

(declare-fun lt!2149671 () Bool)

(assert (=> b!5244931 (= res!2225885 lt!2149671)))

(declare-fun b!5244932 () Bool)

(declare-fun e!3263325 () Bool)

(assert (=> b!5244932 (= e!3263325 (not lt!2149671))))

(declare-fun b!5244933 () Bool)

(declare-fun e!3263326 () Bool)

(assert (=> b!5244933 (= e!3263322 e!3263326)))

(declare-fun res!2225888 () Bool)

(assert (=> b!5244933 (=> (not res!2225888) (not e!3263326))))

(assert (=> b!5244933 (= res!2225888 (not lt!2149671))))

(declare-fun b!5244934 () Bool)

(declare-fun e!3263321 () Bool)

(assert (=> b!5244934 (= e!3263321 (not (= (head!11240 (tail!10337 s!2326)) (c!906500 (derivativeStep!4083 lt!2149381 (head!11240 s!2326))))))))

(declare-fun b!5244935 () Bool)

(declare-fun res!2225882 () Bool)

(assert (=> b!5244935 (=> (not res!2225882) (not e!3263324))))

(assert (=> b!5244935 (= res!2225882 (isEmpty!32653 (tail!10337 (tail!10337 s!2326))))))

(declare-fun b!5244936 () Bool)

(declare-fun res!2225887 () Bool)

(assert (=> b!5244936 (=> res!2225887 e!3263321)))

(assert (=> b!5244936 (= res!2225887 (not (isEmpty!32653 (tail!10337 (tail!10337 s!2326)))))))

(declare-fun b!5244937 () Bool)

(assert (=> b!5244937 (= e!3263326 e!3263321)))

(declare-fun res!2225883 () Bool)

(assert (=> b!5244937 (=> res!2225883 e!3263321)))

(declare-fun call!371434 () Bool)

(assert (=> b!5244937 (= res!2225883 call!371434)))

(declare-fun b!5244938 () Bool)

(declare-fun e!3263323 () Bool)

(assert (=> b!5244938 (= e!3263323 e!3263325)))

(declare-fun c!906889 () Bool)

(assert (=> b!5244938 (= c!906889 (is-EmptyLang!14846 (derivativeStep!4083 lt!2149381 (head!11240 s!2326))))))

(declare-fun b!5244939 () Bool)

(assert (=> b!5244939 (= e!3263323 (= lt!2149671 call!371434))))

(declare-fun b!5244940 () Bool)

(declare-fun e!3263327 () Bool)

(assert (=> b!5244940 (= e!3263327 (nullable!5015 (derivativeStep!4083 lt!2149381 (head!11240 s!2326))))))

(declare-fun b!5244941 () Bool)

(assert (=> b!5244941 (= e!3263327 (matchR!7031 (derivativeStep!4083 (derivativeStep!4083 lt!2149381 (head!11240 s!2326)) (head!11240 (tail!10337 s!2326))) (tail!10337 (tail!10337 s!2326))))))

(declare-fun d!1689801 () Bool)

(assert (=> d!1689801 e!3263323))

(declare-fun c!906891 () Bool)

(assert (=> d!1689801 (= c!906891 (is-EmptyExpr!14846 (derivativeStep!4083 lt!2149381 (head!11240 s!2326))))))

(assert (=> d!1689801 (= lt!2149671 e!3263327)))

(declare-fun c!906890 () Bool)

(assert (=> d!1689801 (= c!906890 (isEmpty!32653 (tail!10337 s!2326)))))

(assert (=> d!1689801 (validRegex!6582 (derivativeStep!4083 lt!2149381 (head!11240 s!2326)))))

(assert (=> d!1689801 (= (matchR!7031 (derivativeStep!4083 lt!2149381 (head!11240 s!2326)) (tail!10337 s!2326)) lt!2149671)))

(declare-fun b!5244942 () Bool)

(assert (=> b!5244942 (= e!3263324 (= (head!11240 (tail!10337 s!2326)) (c!906500 (derivativeStep!4083 lt!2149381 (head!11240 s!2326)))))))

(declare-fun b!5244943 () Bool)

(declare-fun res!2225886 () Bool)

(assert (=> b!5244943 (=> res!2225886 e!3263322)))

(assert (=> b!5244943 (= res!2225886 (not (is-ElementMatch!14846 (derivativeStep!4083 lt!2149381 (head!11240 s!2326)))))))

(assert (=> b!5244943 (= e!3263325 e!3263322)))

(declare-fun b!5244944 () Bool)

(declare-fun res!2225884 () Bool)

(assert (=> b!5244944 (=> (not res!2225884) (not e!3263324))))

(assert (=> b!5244944 (= res!2225884 (not call!371434))))

(declare-fun bm!371429 () Bool)

(assert (=> bm!371429 (= call!371434 (isEmpty!32653 (tail!10337 s!2326)))))

(assert (= (and d!1689801 c!906890) b!5244940))

(assert (= (and d!1689801 (not c!906890)) b!5244941))

(assert (= (and d!1689801 c!906891) b!5244939))

(assert (= (and d!1689801 (not c!906891)) b!5244938))

(assert (= (and b!5244938 c!906889) b!5244932))

(assert (= (and b!5244938 (not c!906889)) b!5244943))

(assert (= (and b!5244943 (not res!2225886)) b!5244931))

(assert (= (and b!5244931 res!2225885) b!5244944))

(assert (= (and b!5244944 res!2225884) b!5244935))

(assert (= (and b!5244935 res!2225882) b!5244942))

(assert (= (and b!5244931 (not res!2225881)) b!5244933))

(assert (= (and b!5244933 res!2225888) b!5244937))

(assert (= (and b!5244937 (not res!2225883)) b!5244936))

(assert (= (and b!5244936 (not res!2225887)) b!5244934))

(assert (= (or b!5244939 b!5244944 b!5244937) bm!371429))

(assert (=> b!5244936 m!6288092))

(assert (=> b!5244936 m!6288632))

(assert (=> b!5244936 m!6288632))

(assert (=> b!5244936 m!6288730))

(assert (=> b!5244935 m!6288092))

(assert (=> b!5244935 m!6288632))

(assert (=> b!5244935 m!6288632))

(assert (=> b!5244935 m!6288730))

(assert (=> b!5244941 m!6288092))

(assert (=> b!5244941 m!6288628))

(assert (=> b!5244941 m!6288312))

(assert (=> b!5244941 m!6288628))

(declare-fun m!6288848 () Bool)

(assert (=> b!5244941 m!6288848))

(assert (=> b!5244941 m!6288092))

(assert (=> b!5244941 m!6288632))

(assert (=> b!5244941 m!6288848))

(assert (=> b!5244941 m!6288632))

(declare-fun m!6288850 () Bool)

(assert (=> b!5244941 m!6288850))

(assert (=> b!5244934 m!6288092))

(assert (=> b!5244934 m!6288628))

(assert (=> d!1689801 m!6288092))

(assert (=> d!1689801 m!6288094))

(assert (=> d!1689801 m!6288312))

(declare-fun m!6288852 () Bool)

(assert (=> d!1689801 m!6288852))

(assert (=> b!5244942 m!6288092))

(assert (=> b!5244942 m!6288628))

(assert (=> bm!371429 m!6288092))

(assert (=> bm!371429 m!6288094))

(assert (=> b!5244940 m!6288312))

(declare-fun m!6288854 () Bool)

(assert (=> b!5244940 m!6288854))

(assert (=> b!5244380 d!1689801))

(declare-fun bm!371430 () Bool)

(declare-fun call!371438 () Regex!14846)

(declare-fun call!371435 () Regex!14846)

(assert (=> bm!371430 (= call!371438 call!371435)))

(declare-fun b!5244945 () Bool)

(declare-fun e!3263331 () Regex!14846)

(assert (=> b!5244945 (= e!3263331 (ite (= (head!11240 s!2326) (c!906500 lt!2149381)) EmptyExpr!14846 EmptyLang!14846))))

(declare-fun b!5244946 () Bool)

(declare-fun c!906893 () Bool)

(assert (=> b!5244946 (= c!906893 (is-Union!14846 lt!2149381))))

(declare-fun e!3263330 () Regex!14846)

(assert (=> b!5244946 (= e!3263331 e!3263330)))

(declare-fun b!5244947 () Bool)

(declare-fun e!3263329 () Regex!14846)

(assert (=> b!5244947 (= e!3263329 e!3263331)))

(declare-fun c!906892 () Bool)

(assert (=> b!5244947 (= c!906892 (is-ElementMatch!14846 lt!2149381))))

(declare-fun d!1689803 () Bool)

(declare-fun lt!2149672 () Regex!14846)

(assert (=> d!1689803 (validRegex!6582 lt!2149672)))

(assert (=> d!1689803 (= lt!2149672 e!3263329)))

(declare-fun c!906895 () Bool)

(assert (=> d!1689803 (= c!906895 (or (is-EmptyExpr!14846 lt!2149381) (is-EmptyLang!14846 lt!2149381)))))

(assert (=> d!1689803 (validRegex!6582 lt!2149381)))

(assert (=> d!1689803 (= (derivativeStep!4083 lt!2149381 (head!11240 s!2326)) lt!2149672)))

(declare-fun b!5244948 () Bool)

(declare-fun e!3263332 () Regex!14846)

(assert (=> b!5244948 (= e!3263332 (Concat!23691 call!371435 lt!2149381))))

(declare-fun b!5244949 () Bool)

(declare-fun c!906896 () Bool)

(assert (=> b!5244949 (= c!906896 (nullable!5015 (regOne!30204 lt!2149381)))))

(declare-fun e!3263328 () Regex!14846)

(assert (=> b!5244949 (= e!3263332 e!3263328)))

(declare-fun b!5244950 () Bool)

(assert (=> b!5244950 (= e!3263328 (Union!14846 (Concat!23691 call!371438 (regTwo!30204 lt!2149381)) EmptyLang!14846))))

(declare-fun b!5244951 () Bool)

(assert (=> b!5244951 (= e!3263330 e!3263332)))

(declare-fun c!906894 () Bool)

(assert (=> b!5244951 (= c!906894 (is-Star!14846 lt!2149381))))

(declare-fun bm!371431 () Bool)

(declare-fun call!371436 () Regex!14846)

(assert (=> bm!371431 (= call!371435 call!371436)))

(declare-fun b!5244952 () Bool)

(assert (=> b!5244952 (= e!3263329 EmptyLang!14846)))

(declare-fun b!5244953 () Bool)

(declare-fun call!371437 () Regex!14846)

(assert (=> b!5244953 (= e!3263330 (Union!14846 call!371437 call!371436))))

(declare-fun bm!371432 () Bool)

(assert (=> bm!371432 (= call!371437 (derivativeStep!4083 (ite c!906893 (regOne!30205 lt!2149381) (regOne!30204 lt!2149381)) (head!11240 s!2326)))))

(declare-fun bm!371433 () Bool)

(assert (=> bm!371433 (= call!371436 (derivativeStep!4083 (ite c!906893 (regTwo!30205 lt!2149381) (ite c!906894 (reg!15175 lt!2149381) (ite c!906896 (regTwo!30204 lt!2149381) (regOne!30204 lt!2149381)))) (head!11240 s!2326)))))

(declare-fun b!5244954 () Bool)

(assert (=> b!5244954 (= e!3263328 (Union!14846 (Concat!23691 call!371437 (regTwo!30204 lt!2149381)) call!371438))))

(assert (= (and d!1689803 c!906895) b!5244952))

(assert (= (and d!1689803 (not c!906895)) b!5244947))

(assert (= (and b!5244947 c!906892) b!5244945))

(assert (= (and b!5244947 (not c!906892)) b!5244946))

(assert (= (and b!5244946 c!906893) b!5244953))

(assert (= (and b!5244946 (not c!906893)) b!5244951))

(assert (= (and b!5244951 c!906894) b!5244948))

(assert (= (and b!5244951 (not c!906894)) b!5244949))

(assert (= (and b!5244949 c!906896) b!5244954))

(assert (= (and b!5244949 (not c!906896)) b!5244950))

(assert (= (or b!5244954 b!5244950) bm!371430))

(assert (= (or b!5244948 bm!371430) bm!371431))

(assert (= (or b!5244953 bm!371431) bm!371433))

(assert (= (or b!5244953 b!5244954) bm!371432))

(declare-fun m!6288856 () Bool)

(assert (=> d!1689803 m!6288856))

(assert (=> d!1689803 m!6288316))

(declare-fun m!6288858 () Bool)

(assert (=> b!5244949 m!6288858))

(assert (=> bm!371432 m!6288096))

(declare-fun m!6288860 () Bool)

(assert (=> bm!371432 m!6288860))

(assert (=> bm!371433 m!6288096))

(declare-fun m!6288862 () Bool)

(assert (=> bm!371433 m!6288862))

(assert (=> b!5244380 d!1689803))

(assert (=> b!5244380 d!1689689))

(assert (=> b!5244380 d!1689691))

(assert (=> d!1689535 d!1689699))

(assert (=> d!1689561 d!1689545))

(assert (=> d!1689561 d!1689539))

(declare-fun d!1689805 () Bool)

(assert (=> d!1689805 (= (matchR!7031 lt!2149381 s!2326) (matchRSpec!1949 lt!2149381 s!2326))))

(assert (=> d!1689805 true))

(declare-fun _$88!3520 () Unit!152782)

(assert (=> d!1689805 (= (choose!39057 lt!2149381 s!2326) _$88!3520)))

(declare-fun bs!1216643 () Bool)

(assert (= bs!1216643 d!1689805))

(assert (=> bs!1216643 m!6287686))

(assert (=> bs!1216643 m!6287688))

(assert (=> d!1689561 d!1689805))

(assert (=> d!1689561 d!1689751))

(assert (=> bs!1216504 d!1689501))

(declare-fun e!3263335 () (Set Context!8460))

(declare-fun b!5244955 () Bool)

(declare-fun call!371439 () (Set Context!8460))

(assert (=> b!5244955 (= e!3263335 (set.union call!371439 (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149388)))))) (h!67163 s!2326))))))

(declare-fun b!5244956 () Bool)

(declare-fun e!3263334 () Bool)

(assert (=> b!5244956 (= e!3263334 (nullable!5015 (h!67161 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149388)))))))))

(declare-fun d!1689807 () Bool)

(declare-fun c!906897 () Bool)

(assert (=> d!1689807 (= c!906897 e!3263334)))

(declare-fun res!2225889 () Bool)

(assert (=> d!1689807 (=> (not res!2225889) (not e!3263334))))

(assert (=> d!1689807 (= res!2225889 (is-Cons!60713 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149388))))))))

(assert (=> d!1689807 (= (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 lt!2149388))) (h!67163 s!2326)) e!3263335)))

(declare-fun b!5244957 () Bool)

(declare-fun e!3263333 () (Set Context!8460))

(assert (=> b!5244957 (= e!3263335 e!3263333)))

(declare-fun c!906898 () Bool)

(assert (=> b!5244957 (= c!906898 (is-Cons!60713 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149388))))))))

(declare-fun b!5244958 () Bool)

(assert (=> b!5244958 (= e!3263333 call!371439)))

(declare-fun bm!371434 () Bool)

(assert (=> bm!371434 (= call!371439 (derivationStepZipperDown!294 (h!67161 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149388))))) (Context!8461 (t!374018 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149388)))))) (h!67163 s!2326)))))

(declare-fun b!5244959 () Bool)

(assert (=> b!5244959 (= e!3263333 (as set.empty (Set Context!8460)))))

(assert (= (and d!1689807 res!2225889) b!5244956))

(assert (= (and d!1689807 c!906897) b!5244955))

(assert (= (and d!1689807 (not c!906897)) b!5244957))

(assert (= (and b!5244957 c!906898) b!5244958))

(assert (= (and b!5244957 (not c!906898)) b!5244959))

(assert (= (or b!5244955 b!5244958) bm!371434))

(declare-fun m!6288864 () Bool)

(assert (=> b!5244955 m!6288864))

(declare-fun m!6288866 () Bool)

(assert (=> b!5244956 m!6288866))

(declare-fun m!6288868 () Bool)

(assert (=> bm!371434 m!6288868))

(assert (=> b!5244211 d!1689807))

(assert (=> d!1689487 d!1689467))

(assert (=> d!1689487 d!1689449))

(declare-fun d!1689809 () Bool)

(assert (=> d!1689809 (= (matchR!7031 r!7292 s!2326) (matchRSpec!1949 r!7292 s!2326))))

(assert (=> d!1689809 true))

(declare-fun _$88!3521 () Unit!152782)

(assert (=> d!1689809 (= (choose!39057 r!7292 s!2326) _$88!3521)))

(declare-fun bs!1216644 () Bool)

(assert (= bs!1216644 d!1689809))

(assert (=> bs!1216644 m!6287694))

(assert (=> bs!1216644 m!6287692))

(assert (=> d!1689487 d!1689809))

(assert (=> d!1689487 d!1689573))

(declare-fun d!1689811 () Bool)

(assert (=> d!1689811 (= (isEmpty!32650 lt!2149365) (is-Nil!60713 lt!2149365))))

(assert (=> b!5244384 d!1689811))

(assert (=> b!5244127 d!1689689))

(assert (=> bm!371347 d!1689741))

(declare-fun d!1689813 () Bool)

(declare-fun c!906899 () Bool)

(assert (=> d!1689813 (= c!906899 (isEmpty!32653 (tail!10337 (t!374020 s!2326))))))

(declare-fun e!3263336 () Bool)

(assert (=> d!1689813 (= (matchZipper!1090 (derivationStepZipper!1105 (set.union lt!2149359 lt!2149380) (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))) e!3263336)))

(declare-fun b!5244960 () Bool)

(assert (=> b!5244960 (= e!3263336 (nullableZipper!1261 (derivationStepZipper!1105 (set.union lt!2149359 lt!2149380) (head!11240 (t!374020 s!2326)))))))

(declare-fun b!5244961 () Bool)

(assert (=> b!5244961 (= e!3263336 (matchZipper!1090 (derivationStepZipper!1105 (derivationStepZipper!1105 (set.union lt!2149359 lt!2149380) (head!11240 (t!374020 s!2326))) (head!11240 (tail!10337 (t!374020 s!2326)))) (tail!10337 (tail!10337 (t!374020 s!2326)))))))

(assert (= (and d!1689813 c!906899) b!5244960))

(assert (= (and d!1689813 (not c!906899)) b!5244961))

(assert (=> d!1689813 m!6287844))

(assert (=> d!1689813 m!6288696))

(assert (=> b!5244960 m!6288268))

(declare-fun m!6288870 () Bool)

(assert (=> b!5244960 m!6288870))

(assert (=> b!5244961 m!6287844))

(assert (=> b!5244961 m!6288700))

(assert (=> b!5244961 m!6288268))

(assert (=> b!5244961 m!6288700))

(declare-fun m!6288872 () Bool)

(assert (=> b!5244961 m!6288872))

(assert (=> b!5244961 m!6287844))

(assert (=> b!5244961 m!6288704))

(assert (=> b!5244961 m!6288872))

(assert (=> b!5244961 m!6288704))

(declare-fun m!6288874 () Bool)

(assert (=> b!5244961 m!6288874))

(assert (=> b!5244314 d!1689813))

(declare-fun bs!1216645 () Bool)

(declare-fun d!1689815 () Bool)

(assert (= bs!1216645 (and d!1689815 d!1689725)))

(declare-fun lambda!263921 () Int)

(assert (=> bs!1216645 (= lambda!263921 lambda!263912)))

(declare-fun bs!1216646 () Bool)

(assert (= bs!1216646 (and d!1689815 d!1689687)))

(assert (=> bs!1216646 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263921 lambda!263906))))

(declare-fun bs!1216647 () Bool)

(assert (= bs!1216647 (and d!1689815 b!5243551)))

(assert (=> bs!1216647 (= (= (head!11240 (t!374020 s!2326)) (h!67163 s!2326)) (= lambda!263921 lambda!263814))))

(declare-fun bs!1216648 () Bool)

(assert (= bs!1216648 (and d!1689815 d!1689763)))

(assert (=> bs!1216648 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263921 lambda!263915))))

(declare-fun bs!1216649 () Bool)

(assert (= bs!1216649 (and d!1689815 d!1689733)))

(assert (=> bs!1216649 (= lambda!263921 lambda!263913)))

(assert (=> d!1689815 true))

(assert (=> d!1689815 (= (derivationStepZipper!1105 (set.union lt!2149359 lt!2149380) (head!11240 (t!374020 s!2326))) (flatMap!573 (set.union lt!2149359 lt!2149380) lambda!263921))))

(declare-fun bs!1216650 () Bool)

(assert (= bs!1216650 d!1689815))

(declare-fun m!6288876 () Bool)

(assert (=> bs!1216650 m!6288876))

(assert (=> b!5244314 d!1689815))

(assert (=> b!5244314 d!1689727))

(assert (=> b!5244314 d!1689729))

(declare-fun d!1689817 () Bool)

(assert (=> d!1689817 (= (head!11241 (unfocusZipperList!288 zl!343)) (h!67161 (unfocusZipperList!288 zl!343)))))

(assert (=> b!5244300 d!1689817))

(assert (=> d!1689537 d!1689741))

(declare-fun d!1689819 () Bool)

(assert (=> d!1689819 (= (isEmpty!32650 (t!374018 lt!2149365)) (is-Nil!60713 (t!374018 lt!2149365)))))

(assert (=> b!5244387 d!1689819))

(declare-fun b!5244962 () Bool)

(declare-fun call!371440 () (Set Context!8460))

(declare-fun e!3263339 () (Set Context!8460))

(assert (=> b!5244962 (= e!3263339 (set.union call!371440 (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149386)))))) (h!67163 s!2326))))))

(declare-fun b!5244963 () Bool)

(declare-fun e!3263338 () Bool)

(assert (=> b!5244963 (= e!3263338 (nullable!5015 (h!67161 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149386)))))))))

(declare-fun d!1689821 () Bool)

(declare-fun c!906900 () Bool)

(assert (=> d!1689821 (= c!906900 e!3263338)))

(declare-fun res!2225890 () Bool)

(assert (=> d!1689821 (=> (not res!2225890) (not e!3263338))))

(assert (=> d!1689821 (= res!2225890 (is-Cons!60713 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149386))))))))

(assert (=> d!1689821 (= (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 lt!2149386))) (h!67163 s!2326)) e!3263339)))

(declare-fun b!5244964 () Bool)

(declare-fun e!3263337 () (Set Context!8460))

(assert (=> b!5244964 (= e!3263339 e!3263337)))

(declare-fun c!906901 () Bool)

(assert (=> b!5244964 (= c!906901 (is-Cons!60713 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149386))))))))

(declare-fun b!5244965 () Bool)

(assert (=> b!5244965 (= e!3263337 call!371440)))

(declare-fun bm!371435 () Bool)

(assert (=> bm!371435 (= call!371440 (derivationStepZipperDown!294 (h!67161 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149386))))) (Context!8461 (t!374018 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149386)))))) (h!67163 s!2326)))))

(declare-fun b!5244966 () Bool)

(assert (=> b!5244966 (= e!3263337 (as set.empty (Set Context!8460)))))

(assert (= (and d!1689821 res!2225890) b!5244963))

(assert (= (and d!1689821 c!906900) b!5244962))

(assert (= (and d!1689821 (not c!906900)) b!5244964))

(assert (= (and b!5244964 c!906901) b!5244965))

(assert (= (and b!5244964 (not c!906901)) b!5244966))

(assert (= (or b!5244962 b!5244965) bm!371435))

(declare-fun m!6288878 () Bool)

(assert (=> b!5244962 m!6288878))

(declare-fun m!6288880 () Bool)

(assert (=> b!5244963 m!6288880))

(declare-fun m!6288882 () Bool)

(assert (=> bm!371435 m!6288882))

(assert (=> b!5244467 d!1689821))

(assert (=> b!5244135 d!1689689))

(declare-fun d!1689823 () Bool)

(assert (=> d!1689823 (= (nullable!5015 (reg!15175 r!7292)) (nullableFct!1413 (reg!15175 r!7292)))))

(declare-fun bs!1216651 () Bool)

(assert (= bs!1216651 d!1689823))

(declare-fun m!6288884 () Bool)

(assert (=> bs!1216651 m!6288884))

(assert (=> b!5244448 d!1689823))

(declare-fun d!1689825 () Bool)

(assert (=> d!1689825 (= (isEmpty!32650 (unfocusZipperList!288 zl!343)) (is-Nil!60713 (unfocusZipperList!288 zl!343)))))

(assert (=> b!5244304 d!1689825))

(declare-fun d!1689827 () Bool)

(assert (=> d!1689827 (= (nullable!5015 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343))))) (nullableFct!1413 (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343))))))))

(declare-fun bs!1216652 () Bool)

(assert (= bs!1216652 d!1689827))

(declare-fun m!6288886 () Bool)

(assert (=> bs!1216652 m!6288886))

(assert (=> b!5244225 d!1689827))

(assert (=> b!5244355 d!1689689))

(declare-fun d!1689829 () Bool)

(declare-fun c!906902 () Bool)

(assert (=> d!1689829 (= c!906902 (isEmpty!32653 (tail!10337 (t!374020 s!2326))))))

(declare-fun e!3263340 () Bool)

(assert (=> d!1689829 (= (matchZipper!1090 (derivationStepZipper!1105 (set.union lt!2149391 lt!2149380) (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))) e!3263340)))

(declare-fun b!5244967 () Bool)

(assert (=> b!5244967 (= e!3263340 (nullableZipper!1261 (derivationStepZipper!1105 (set.union lt!2149391 lt!2149380) (head!11240 (t!374020 s!2326)))))))

(declare-fun b!5244968 () Bool)

(assert (=> b!5244968 (= e!3263340 (matchZipper!1090 (derivationStepZipper!1105 (derivationStepZipper!1105 (set.union lt!2149391 lt!2149380) (head!11240 (t!374020 s!2326))) (head!11240 (tail!10337 (t!374020 s!2326)))) (tail!10337 (tail!10337 (t!374020 s!2326)))))))

(assert (= (and d!1689829 c!906902) b!5244967))

(assert (= (and d!1689829 (not c!906902)) b!5244968))

(assert (=> d!1689829 m!6287844))

(assert (=> d!1689829 m!6288696))

(assert (=> b!5244967 m!6287908))

(declare-fun m!6288888 () Bool)

(assert (=> b!5244967 m!6288888))

(assert (=> b!5244968 m!6287844))

(assert (=> b!5244968 m!6288700))

(assert (=> b!5244968 m!6287908))

(assert (=> b!5244968 m!6288700))

(declare-fun m!6288890 () Bool)

(assert (=> b!5244968 m!6288890))

(assert (=> b!5244968 m!6287844))

(assert (=> b!5244968 m!6288704))

(assert (=> b!5244968 m!6288890))

(assert (=> b!5244968 m!6288704))

(declare-fun m!6288892 () Bool)

(assert (=> b!5244968 m!6288892))

(assert (=> b!5243852 d!1689829))

(declare-fun bs!1216653 () Bool)

(declare-fun d!1689831 () Bool)

(assert (= bs!1216653 (and d!1689831 d!1689725)))

(declare-fun lambda!263922 () Int)

(assert (=> bs!1216653 (= lambda!263922 lambda!263912)))

(declare-fun bs!1216654 () Bool)

(assert (= bs!1216654 (and d!1689831 d!1689687)))

(assert (=> bs!1216654 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263922 lambda!263906))))

(declare-fun bs!1216655 () Bool)

(assert (= bs!1216655 (and d!1689831 d!1689815)))

(assert (=> bs!1216655 (= lambda!263922 lambda!263921)))

(declare-fun bs!1216656 () Bool)

(assert (= bs!1216656 (and d!1689831 b!5243551)))

(assert (=> bs!1216656 (= (= (head!11240 (t!374020 s!2326)) (h!67163 s!2326)) (= lambda!263922 lambda!263814))))

(declare-fun bs!1216657 () Bool)

(assert (= bs!1216657 (and d!1689831 d!1689763)))

(assert (=> bs!1216657 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263922 lambda!263915))))

(declare-fun bs!1216658 () Bool)

(assert (= bs!1216658 (and d!1689831 d!1689733)))

(assert (=> bs!1216658 (= lambda!263922 lambda!263913)))

(assert (=> d!1689831 true))

(assert (=> d!1689831 (= (derivationStepZipper!1105 (set.union lt!2149391 lt!2149380) (head!11240 (t!374020 s!2326))) (flatMap!573 (set.union lt!2149391 lt!2149380) lambda!263922))))

(declare-fun bs!1216659 () Bool)

(assert (= bs!1216659 d!1689831))

(declare-fun m!6288894 () Bool)

(assert (=> bs!1216659 m!6288894))

(assert (=> b!5243852 d!1689831))

(assert (=> b!5243852 d!1689727))

(assert (=> b!5243852 d!1689729))

(declare-fun b!5244969 () Bool)

(declare-fun c!906907 () Bool)

(declare-fun e!3263345 () Bool)

(assert (=> b!5244969 (= c!906907 e!3263345)))

(declare-fun res!2225891 () Bool)

(assert (=> b!5244969 (=> (not res!2225891) (not e!3263345))))

(assert (=> b!5244969 (= res!2225891 (is-Concat!23691 (h!67161 (exprs!4730 lt!2149388))))))

(declare-fun e!3263341 () (Set Context!8460))

(declare-fun e!3263346 () (Set Context!8460))

(assert (=> b!5244969 (= e!3263341 e!3263346)))

(declare-fun b!5244970 () Bool)

(declare-fun e!3263344 () (Set Context!8460))

(declare-fun call!371445 () (Set Context!8460))

(assert (=> b!5244970 (= e!3263344 call!371445)))

(declare-fun bm!371436 () Bool)

(declare-fun call!371446 () (Set Context!8460))

(declare-fun call!371444 () (Set Context!8460))

(assert (=> bm!371436 (= call!371446 call!371444)))

(declare-fun b!5244971 () Bool)

(declare-fun call!371441 () (Set Context!8460))

(assert (=> b!5244971 (= e!3263346 (set.union call!371441 call!371446))))

(declare-fun b!5244972 () Bool)

(assert (=> b!5244972 (= e!3263344 (as set.empty (Set Context!8460)))))

(declare-fun bm!371437 () Bool)

(declare-fun call!371443 () List!60837)

(declare-fun c!906903 () Bool)

(declare-fun c!906904 () Bool)

(assert (=> bm!371437 (= call!371444 (derivationStepZipperDown!294 (ite c!906903 (regOne!30205 (h!67161 (exprs!4730 lt!2149388))) (ite c!906907 (regTwo!30204 (h!67161 (exprs!4730 lt!2149388))) (ite c!906904 (regOne!30204 (h!67161 (exprs!4730 lt!2149388))) (reg!15175 (h!67161 (exprs!4730 lt!2149388)))))) (ite (or c!906903 c!906907) (Context!8461 (t!374018 (exprs!4730 lt!2149388))) (Context!8461 call!371443)) (h!67163 s!2326)))))

(declare-fun b!5244973 () Bool)

(assert (=> b!5244973 (= e!3263341 (set.union call!371444 call!371441))))

(declare-fun b!5244974 () Bool)

(declare-fun e!3263342 () (Set Context!8460))

(assert (=> b!5244974 (= e!3263342 call!371445)))

(declare-fun d!1689833 () Bool)

(declare-fun c!906906 () Bool)

(assert (=> d!1689833 (= c!906906 (and (is-ElementMatch!14846 (h!67161 (exprs!4730 lt!2149388))) (= (c!906500 (h!67161 (exprs!4730 lt!2149388))) (h!67163 s!2326))))))

(declare-fun e!3263343 () (Set Context!8460))

(assert (=> d!1689833 (= (derivationStepZipperDown!294 (h!67161 (exprs!4730 lt!2149388)) (Context!8461 (t!374018 (exprs!4730 lt!2149388))) (h!67163 s!2326)) e!3263343)))

(declare-fun b!5244975 () Bool)

(declare-fun c!906905 () Bool)

(assert (=> b!5244975 (= c!906905 (is-Star!14846 (h!67161 (exprs!4730 lt!2149388))))))

(assert (=> b!5244975 (= e!3263342 e!3263344)))

(declare-fun bm!371438 () Bool)

(declare-fun call!371442 () List!60837)

(assert (=> bm!371438 (= call!371442 ($colon$colon!1311 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149388)))) (ite (or c!906907 c!906904) (regTwo!30204 (h!67161 (exprs!4730 lt!2149388))) (h!67161 (exprs!4730 lt!2149388)))))))

(declare-fun b!5244976 () Bool)

(assert (=> b!5244976 (= e!3263343 e!3263341)))

(assert (=> b!5244976 (= c!906903 (is-Union!14846 (h!67161 (exprs!4730 lt!2149388))))))

(declare-fun bm!371439 () Bool)

(assert (=> bm!371439 (= call!371445 call!371446)))

(declare-fun bm!371440 () Bool)

(assert (=> bm!371440 (= call!371441 (derivationStepZipperDown!294 (ite c!906903 (regTwo!30205 (h!67161 (exprs!4730 lt!2149388))) (regOne!30204 (h!67161 (exprs!4730 lt!2149388)))) (ite c!906903 (Context!8461 (t!374018 (exprs!4730 lt!2149388))) (Context!8461 call!371442)) (h!67163 s!2326)))))

(declare-fun b!5244977 () Bool)

(assert (=> b!5244977 (= e!3263343 (set.insert (Context!8461 (t!374018 (exprs!4730 lt!2149388))) (as set.empty (Set Context!8460))))))

(declare-fun b!5244978 () Bool)

(assert (=> b!5244978 (= e!3263345 (nullable!5015 (regOne!30204 (h!67161 (exprs!4730 lt!2149388)))))))

(declare-fun b!5244979 () Bool)

(assert (=> b!5244979 (= e!3263346 e!3263342)))

(assert (=> b!5244979 (= c!906904 (is-Concat!23691 (h!67161 (exprs!4730 lt!2149388))))))

(declare-fun bm!371441 () Bool)

(assert (=> bm!371441 (= call!371443 call!371442)))

(assert (= (and d!1689833 c!906906) b!5244977))

(assert (= (and d!1689833 (not c!906906)) b!5244976))

(assert (= (and b!5244976 c!906903) b!5244973))

(assert (= (and b!5244976 (not c!906903)) b!5244969))

(assert (= (and b!5244969 res!2225891) b!5244978))

(assert (= (and b!5244969 c!906907) b!5244971))

(assert (= (and b!5244969 (not c!906907)) b!5244979))

(assert (= (and b!5244979 c!906904) b!5244974))

(assert (= (and b!5244979 (not c!906904)) b!5244975))

(assert (= (and b!5244975 c!906905) b!5244970))

(assert (= (and b!5244975 (not c!906905)) b!5244972))

(assert (= (or b!5244974 b!5244970) bm!371441))

(assert (= (or b!5244974 b!5244970) bm!371439))

(assert (= (or b!5244971 bm!371441) bm!371438))

(assert (= (or b!5244971 bm!371439) bm!371436))

(assert (= (or b!5244973 b!5244971) bm!371440))

(assert (= (or b!5244973 bm!371436) bm!371437))

(declare-fun m!6288896 () Bool)

(assert (=> bm!371437 m!6288896))

(declare-fun m!6288898 () Bool)

(assert (=> bm!371440 m!6288898))

(declare-fun m!6288900 () Bool)

(assert (=> b!5244977 m!6288900))

(declare-fun m!6288902 () Bool)

(assert (=> bm!371438 m!6288902))

(declare-fun m!6288904 () Bool)

(assert (=> b!5244978 m!6288904))

(assert (=> bm!371333 d!1689833))

(assert (=> b!5244197 d!1689491))

(declare-fun d!1689835 () Bool)

(assert (=> d!1689835 (= ($colon$colon!1311 (exprs!4730 lt!2149388) (ite (or c!906557 c!906554) (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (regTwo!30205 (regOne!30204 r!7292)))) (Cons!60713 (ite (or c!906557 c!906554) (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (regTwo!30205 (regOne!30204 r!7292))) (exprs!4730 lt!2149388)))))

(assert (=> bm!371266 d!1689835))

(declare-fun call!371447 () (Set Context!8460))

(declare-fun b!5244980 () Bool)

(declare-fun e!3263349 () (Set Context!8460))

(assert (=> b!5244980 (= e!3263349 (set.union call!371447 (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))))))) (h!67163 s!2326))))))

(declare-fun b!5244981 () Bool)

(declare-fun e!3263348 () Bool)

(assert (=> b!5244981 (= e!3263348 (nullable!5015 (h!67161 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))))))))))

(declare-fun d!1689837 () Bool)

(declare-fun c!906908 () Bool)

(assert (=> d!1689837 (= c!906908 e!3263348)))

(declare-fun res!2225892 () Bool)

(assert (=> d!1689837 (=> (not res!2225892) (not e!3263348))))

(assert (=> d!1689837 (= res!2225892 (is-Cons!60713 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))))))))

(assert (=> d!1689837 (= (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (h!67163 s!2326)) e!3263349)))

(declare-fun b!5244982 () Bool)

(declare-fun e!3263347 () (Set Context!8460))

(assert (=> b!5244982 (= e!3263349 e!3263347)))

(declare-fun c!906909 () Bool)

(assert (=> b!5244982 (= c!906909 (is-Cons!60713 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))))))))

(declare-fun b!5244983 () Bool)

(assert (=> b!5244983 (= e!3263347 call!371447)))

(declare-fun bm!371442 () Bool)

(assert (=> bm!371442 (= call!371447 (derivationStepZipperDown!294 (h!67161 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))))) (Context!8461 (t!374018 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))))))) (h!67163 s!2326)))))

(declare-fun b!5244984 () Bool)

(assert (=> b!5244984 (= e!3263347 (as set.empty (Set Context!8460)))))

(assert (= (and d!1689837 res!2225892) b!5244981))

(assert (= (and d!1689837 c!906908) b!5244980))

(assert (= (and d!1689837 (not c!906908)) b!5244982))

(assert (= (and b!5244982 c!906909) b!5244983))

(assert (= (and b!5244982 (not c!906909)) b!5244984))

(assert (= (or b!5244980 b!5244983) bm!371442))

(declare-fun m!6288906 () Bool)

(assert (=> b!5244980 m!6288906))

(declare-fun m!6288908 () Bool)

(assert (=> b!5244981 m!6288908))

(declare-fun m!6288910 () Bool)

(assert (=> bm!371442 m!6288910))

(assert (=> b!5244191 d!1689837))

(assert (=> bs!1216503 d!1689583))

(declare-fun bs!1216660 () Bool)

(declare-fun d!1689839 () Bool)

(assert (= bs!1216660 (and d!1689839 d!1689597)))

(declare-fun lambda!263923 () Int)

(assert (=> bs!1216660 (= lambda!263923 lambda!263894)))

(declare-fun bs!1216661 () Bool)

(assert (= bs!1216661 (and d!1689839 d!1689417)))

(assert (=> bs!1216661 (= lambda!263923 lambda!263845)))

(declare-fun bs!1216662 () Bool)

(assert (= bs!1216662 (and d!1689839 d!1689547)))

(assert (=> bs!1216662 (= lambda!263923 lambda!263882)))

(declare-fun bs!1216663 () Bool)

(assert (= bs!1216663 (and d!1689839 d!1689403)))

(assert (=> bs!1216663 (= lambda!263923 lambda!263836)))

(declare-fun bs!1216664 () Bool)

(assert (= bs!1216664 (and d!1689839 b!5243561)))

(assert (=> bs!1216664 (= lambda!263923 lambda!263815)))

(declare-fun bs!1216665 () Bool)

(assert (= bs!1216665 (and d!1689839 d!1689531)))

(assert (=> bs!1216665 (= lambda!263923 lambda!263878)))

(declare-fun bs!1216666 () Bool)

(assert (= bs!1216666 (and d!1689839 d!1689799)))

(assert (=> bs!1216666 (= lambda!263923 lambda!263920)))

(declare-fun bs!1216667 () Bool)

(assert (= bs!1216667 (and d!1689839 d!1689757)))

(assert (=> bs!1216667 (= lambda!263923 lambda!263914)))

(declare-fun bs!1216668 () Bool)

(assert (= bs!1216668 (and d!1689839 d!1689543)))

(assert (=> bs!1216668 (= lambda!263923 lambda!263881)))

(declare-fun bs!1216669 () Bool)

(assert (= bs!1216669 (and d!1689839 d!1689515)))

(assert (=> bs!1216669 (= lambda!263923 lambda!263875)))

(declare-fun e!3263350 () Bool)

(assert (=> d!1689839 e!3263350))

(declare-fun res!2225894 () Bool)

(assert (=> d!1689839 (=> (not res!2225894) (not e!3263350))))

(declare-fun lt!2149673 () Regex!14846)

(assert (=> d!1689839 (= res!2225894 (validRegex!6582 lt!2149673))))

(declare-fun e!3263354 () Regex!14846)

(assert (=> d!1689839 (= lt!2149673 e!3263354)))

(declare-fun c!906911 () Bool)

(declare-fun e!3263351 () Bool)

(assert (=> d!1689839 (= c!906911 e!3263351)))

(declare-fun res!2225893 () Bool)

(assert (=> d!1689839 (=> (not res!2225893) (not e!3263351))))

(assert (=> d!1689839 (= res!2225893 (is-Cons!60713 (t!374018 lt!2149356)))))

(assert (=> d!1689839 (forall!14270 (t!374018 lt!2149356) lambda!263923)))

(assert (=> d!1689839 (= (generalisedConcat!515 (t!374018 lt!2149356)) lt!2149673)))

(declare-fun b!5244985 () Bool)

(declare-fun e!3263352 () Bool)

(assert (=> b!5244985 (= e!3263350 e!3263352)))

(declare-fun c!906913 () Bool)

(assert (=> b!5244985 (= c!906913 (isEmpty!32650 (t!374018 lt!2149356)))))

(declare-fun b!5244986 () Bool)

(assert (=> b!5244986 (= e!3263354 (h!67161 (t!374018 lt!2149356)))))

(declare-fun b!5244987 () Bool)

(declare-fun e!3263355 () Regex!14846)

(assert (=> b!5244987 (= e!3263355 (Concat!23691 (h!67161 (t!374018 lt!2149356)) (generalisedConcat!515 (t!374018 (t!374018 lt!2149356)))))))

(declare-fun b!5244988 () Bool)

(assert (=> b!5244988 (= e!3263351 (isEmpty!32650 (t!374018 (t!374018 lt!2149356))))))

(declare-fun b!5244989 () Bool)

(declare-fun e!3263353 () Bool)

(assert (=> b!5244989 (= e!3263353 (isConcat!319 lt!2149673))))

(declare-fun b!5244990 () Bool)

(assert (=> b!5244990 (= e!3263352 e!3263353)))

(declare-fun c!906910 () Bool)

(assert (=> b!5244990 (= c!906910 (isEmpty!32650 (tail!10338 (t!374018 lt!2149356))))))

(declare-fun b!5244991 () Bool)

(assert (=> b!5244991 (= e!3263355 EmptyExpr!14846)))

(declare-fun b!5244992 () Bool)

(assert (=> b!5244992 (= e!3263353 (= lt!2149673 (head!11241 (t!374018 lt!2149356))))))

(declare-fun b!5244993 () Bool)

(assert (=> b!5244993 (= e!3263352 (isEmptyExpr!796 lt!2149673))))

(declare-fun b!5244994 () Bool)

(assert (=> b!5244994 (= e!3263354 e!3263355)))

(declare-fun c!906912 () Bool)

(assert (=> b!5244994 (= c!906912 (is-Cons!60713 (t!374018 lt!2149356)))))

(assert (= (and d!1689839 res!2225893) b!5244988))

(assert (= (and d!1689839 c!906911) b!5244986))

(assert (= (and d!1689839 (not c!906911)) b!5244994))

(assert (= (and b!5244994 c!906912) b!5244987))

(assert (= (and b!5244994 (not c!906912)) b!5244991))

(assert (= (and d!1689839 res!2225894) b!5244985))

(assert (= (and b!5244985 c!906913) b!5244993))

(assert (= (and b!5244985 (not c!906913)) b!5244990))

(assert (= (and b!5244990 c!906910) b!5244992))

(assert (= (and b!5244990 (not c!906910)) b!5244989))

(declare-fun m!6288912 () Bool)

(assert (=> b!5244990 m!6288912))

(assert (=> b!5244990 m!6288912))

(declare-fun m!6288914 () Bool)

(assert (=> b!5244990 m!6288914))

(declare-fun m!6288916 () Bool)

(assert (=> d!1689839 m!6288916))

(declare-fun m!6288918 () Bool)

(assert (=> d!1689839 m!6288918))

(declare-fun m!6288920 () Bool)

(assert (=> b!5244993 m!6288920))

(declare-fun m!6288922 () Bool)

(assert (=> b!5244987 m!6288922))

(assert (=> b!5244985 m!6288310))

(declare-fun m!6288924 () Bool)

(assert (=> b!5244989 m!6288924))

(declare-fun m!6288926 () Bool)

(assert (=> b!5244992 m!6288926))

(declare-fun m!6288928 () Bool)

(assert (=> b!5244988 m!6288928))

(assert (=> b!5244362 d!1689839))

(declare-fun b!5244995 () Bool)

(declare-fun c!906918 () Bool)

(declare-fun e!3263360 () Bool)

(assert (=> b!5244995 (= c!906918 e!3263360)))

(declare-fun res!2225895 () Bool)

(assert (=> b!5244995 (=> (not res!2225895) (not e!3263360))))

(assert (=> b!5244995 (= res!2225895 (is-Concat!23691 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292))))))))))

(declare-fun e!3263356 () (Set Context!8460))

(declare-fun e!3263361 () (Set Context!8460))

(assert (=> b!5244995 (= e!3263356 e!3263361)))

(declare-fun b!5244996 () Bool)

(declare-fun e!3263359 () (Set Context!8460))

(declare-fun call!371452 () (Set Context!8460))

(assert (=> b!5244996 (= e!3263359 call!371452)))

(declare-fun bm!371443 () Bool)

(declare-fun call!371453 () (Set Context!8460))

(declare-fun call!371451 () (Set Context!8460))

(assert (=> bm!371443 (= call!371453 call!371451)))

(declare-fun b!5244997 () Bool)

(declare-fun call!371448 () (Set Context!8460))

(assert (=> b!5244997 (= e!3263361 (set.union call!371448 call!371453))))

(declare-fun b!5244998 () Bool)

(assert (=> b!5244998 (= e!3263359 (as set.empty (Set Context!8460)))))

(declare-fun bm!371444 () Bool)

(declare-fun c!906915 () Bool)

(declare-fun call!371450 () List!60837)

(declare-fun c!906914 () Bool)

(assert (=> bm!371444 (= call!371451 (derivationStepZipperDown!294 (ite c!906914 (regOne!30205 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292))))))) (ite c!906918 (regTwo!30204 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292))))))) (ite c!906915 (regOne!30204 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292))))))) (reg!15175 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292)))))))))) (ite (or c!906914 c!906918) (ite (or c!906553 c!906557) lt!2149388 (Context!8461 call!371271)) (Context!8461 call!371450)) (h!67163 s!2326)))))

(declare-fun b!5244999 () Bool)

(assert (=> b!5244999 (= e!3263356 (set.union call!371451 call!371448))))

(declare-fun b!5245000 () Bool)

(declare-fun e!3263357 () (Set Context!8460))

(assert (=> b!5245000 (= e!3263357 call!371452)))

(declare-fun d!1689841 () Bool)

(declare-fun c!906917 () Bool)

(assert (=> d!1689841 (= c!906917 (and (is-ElementMatch!14846 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292))))))) (= (c!906500 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292))))))) (h!67163 s!2326))))))

(declare-fun e!3263358 () (Set Context!8460))

(assert (=> d!1689841 (= (derivationStepZipperDown!294 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292)))))) (ite (or c!906553 c!906557) lt!2149388 (Context!8461 call!371271)) (h!67163 s!2326)) e!3263358)))

(declare-fun c!906916 () Bool)

(declare-fun b!5245001 () Bool)

(assert (=> b!5245001 (= c!906916 (is-Star!14846 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292))))))))))

(assert (=> b!5245001 (= e!3263357 e!3263359)))

(declare-fun call!371449 () List!60837)

(declare-fun bm!371445 () Bool)

(assert (=> bm!371445 (= call!371449 ($colon$colon!1311 (exprs!4730 (ite (or c!906553 c!906557) lt!2149388 (Context!8461 call!371271))) (ite (or c!906918 c!906915) (regTwo!30204 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292))))))) (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292)))))))))))

(declare-fun b!5245002 () Bool)

(assert (=> b!5245002 (= e!3263358 e!3263356)))

(assert (=> b!5245002 (= c!906914 (is-Union!14846 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292))))))))))

(declare-fun bm!371446 () Bool)

(assert (=> bm!371446 (= call!371452 call!371453)))

(declare-fun bm!371447 () Bool)

(assert (=> bm!371447 (= call!371448 (derivationStepZipperDown!294 (ite c!906914 (regTwo!30205 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292))))))) (regOne!30204 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292)))))))) (ite c!906914 (ite (or c!906553 c!906557) lt!2149388 (Context!8461 call!371271)) (Context!8461 call!371449)) (h!67163 s!2326)))))

(declare-fun b!5245003 () Bool)

(assert (=> b!5245003 (= e!3263358 (set.insert (ite (or c!906553 c!906557) lt!2149388 (Context!8461 call!371271)) (as set.empty (Set Context!8460))))))

(declare-fun b!5245004 () Bool)

(assert (=> b!5245004 (= e!3263360 (nullable!5015 (regOne!30204 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292)))))))))))

(declare-fun b!5245005 () Bool)

(assert (=> b!5245005 (= e!3263361 e!3263357)))

(assert (=> b!5245005 (= c!906915 (is-Concat!23691 (ite c!906553 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906557 (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))) (ite c!906554 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))) (reg!15175 (regTwo!30205 (regOne!30204 r!7292))))))))))

(declare-fun bm!371448 () Bool)

(assert (=> bm!371448 (= call!371450 call!371449)))

(assert (= (and d!1689841 c!906917) b!5245003))

(assert (= (and d!1689841 (not c!906917)) b!5245002))

(assert (= (and b!5245002 c!906914) b!5244999))

(assert (= (and b!5245002 (not c!906914)) b!5244995))

(assert (= (and b!5244995 res!2225895) b!5245004))

(assert (= (and b!5244995 c!906918) b!5244997))

(assert (= (and b!5244995 (not c!906918)) b!5245005))

(assert (= (and b!5245005 c!906915) b!5245000))

(assert (= (and b!5245005 (not c!906915)) b!5245001))

(assert (= (and b!5245001 c!906916) b!5244996))

(assert (= (and b!5245001 (not c!906916)) b!5244998))

(assert (= (or b!5245000 b!5244996) bm!371448))

(assert (= (or b!5245000 b!5244996) bm!371446))

(assert (= (or b!5244997 bm!371448) bm!371445))

(assert (= (or b!5244997 bm!371446) bm!371443))

(assert (= (or b!5244999 b!5244997) bm!371447))

(assert (= (or b!5244999 bm!371443) bm!371444))

(declare-fun m!6288930 () Bool)

(assert (=> bm!371444 m!6288930))

(declare-fun m!6288932 () Bool)

(assert (=> bm!371447 m!6288932))

(declare-fun m!6288934 () Bool)

(assert (=> b!5245003 m!6288934))

(declare-fun m!6288936 () Bool)

(assert (=> bm!371445 m!6288936))

(declare-fun m!6288938 () Bool)

(assert (=> b!5245004 m!6288938))

(assert (=> bm!371265 d!1689841))

(declare-fun bs!1216670 () Bool)

(declare-fun d!1689843 () Bool)

(assert (= bs!1216670 (and d!1689843 d!1689711)))

(declare-fun lambda!263924 () Int)

(assert (=> bs!1216670 (= lambda!263924 lambda!263909)))

(declare-fun bs!1216671 () Bool)

(assert (= bs!1216671 (and d!1689843 d!1689781)))

(assert (=> bs!1216671 (= lambda!263924 lambda!263916)))

(declare-fun bs!1216672 () Bool)

(assert (= bs!1216672 (and d!1689843 d!1689789)))

(assert (=> bs!1216672 (= lambda!263924 lambda!263917)))

(assert (=> d!1689843 (= (nullableZipper!1261 lt!2149347) (exists!1980 lt!2149347 lambda!263924))))

(declare-fun bs!1216673 () Bool)

(assert (= bs!1216673 d!1689843))

(declare-fun m!6288940 () Bool)

(assert (=> bs!1216673 m!6288940))

(assert (=> b!5244465 d!1689843))

(assert (=> b!5244373 d!1689689))

(declare-fun b!5245020 () Bool)

(declare-fun e!3263377 () Bool)

(declare-fun e!3263374 () Bool)

(assert (=> b!5245020 (= e!3263377 e!3263374)))

(declare-fun res!2225909 () Bool)

(assert (=> b!5245020 (=> (not res!2225909) (not e!3263374))))

(assert (=> b!5245020 (= res!2225909 (and (not (is-EmptyLang!14846 (regTwo!30205 (regOne!30204 r!7292)))) (not (is-ElementMatch!14846 (regTwo!30205 (regOne!30204 r!7292))))))))

(declare-fun b!5245021 () Bool)

(declare-fun e!3263375 () Bool)

(assert (=> b!5245021 (= e!3263374 e!3263375)))

(declare-fun res!2225906 () Bool)

(assert (=> b!5245021 (=> res!2225906 e!3263375)))

(assert (=> b!5245021 (= res!2225906 (is-Star!14846 (regTwo!30205 (regOne!30204 r!7292))))))

(declare-fun b!5245022 () Bool)

(declare-fun e!3263379 () Bool)

(declare-fun call!371459 () Bool)

(assert (=> b!5245022 (= e!3263379 call!371459)))

(declare-fun b!5245023 () Bool)

(declare-fun e!3263378 () Bool)

(declare-fun e!3263376 () Bool)

(assert (=> b!5245023 (= e!3263378 e!3263376)))

(declare-fun res!2225910 () Bool)

(declare-fun call!371458 () Bool)

(assert (=> b!5245023 (= res!2225910 call!371458)))

(assert (=> b!5245023 (=> res!2225910 e!3263376)))

(declare-fun b!5245024 () Bool)

(assert (=> b!5245024 (= e!3263375 e!3263378)))

(declare-fun c!906921 () Bool)

(assert (=> b!5245024 (= c!906921 (is-Union!14846 (regTwo!30205 (regOne!30204 r!7292))))))

(declare-fun bm!371453 () Bool)

(assert (=> bm!371453 (= call!371459 (nullable!5015 (ite c!906921 (regTwo!30205 (regTwo!30205 (regOne!30204 r!7292))) (regTwo!30204 (regTwo!30205 (regOne!30204 r!7292))))))))

(declare-fun b!5245025 () Bool)

(assert (=> b!5245025 (= e!3263378 e!3263379)))

(declare-fun res!2225908 () Bool)

(assert (=> b!5245025 (= res!2225908 call!371458)))

(assert (=> b!5245025 (=> (not res!2225908) (not e!3263379))))

(declare-fun bm!371454 () Bool)

(assert (=> bm!371454 (= call!371458 (nullable!5015 (ite c!906921 (regOne!30205 (regTwo!30205 (regOne!30204 r!7292))) (regOne!30204 (regTwo!30205 (regOne!30204 r!7292))))))))

(declare-fun b!5245026 () Bool)

(assert (=> b!5245026 (= e!3263376 call!371459)))

(declare-fun d!1689845 () Bool)

(declare-fun res!2225907 () Bool)

(assert (=> d!1689845 (=> res!2225907 e!3263377)))

(assert (=> d!1689845 (= res!2225907 (is-EmptyExpr!14846 (regTwo!30205 (regOne!30204 r!7292))))))

(assert (=> d!1689845 (= (nullableFct!1413 (regTwo!30205 (regOne!30204 r!7292))) e!3263377)))

(assert (= (and d!1689845 (not res!2225907)) b!5245020))

(assert (= (and b!5245020 res!2225909) b!5245021))

(assert (= (and b!5245021 (not res!2225906)) b!5245024))

(assert (= (and b!5245024 c!906921) b!5245023))

(assert (= (and b!5245024 (not c!906921)) b!5245025))

(assert (= (and b!5245023 (not res!2225910)) b!5245026))

(assert (= (and b!5245025 res!2225908) b!5245022))

(assert (= (or b!5245026 b!5245022) bm!371453))

(assert (= (or b!5245023 b!5245025) bm!371454))

(declare-fun m!6288942 () Bool)

(assert (=> bm!371453 m!6288942))

(declare-fun m!6288944 () Bool)

(assert (=> bm!371454 m!6288944))

(assert (=> d!1689577 d!1689845))

(declare-fun d!1689847 () Bool)

(declare-fun c!906924 () Bool)

(assert (=> d!1689847 (= c!906924 (is-Nil!60714 lt!2149642))))

(declare-fun e!3263382 () (Set Context!8460))

(assert (=> d!1689847 (= (content!10783 lt!2149642) e!3263382)))

(declare-fun b!5245031 () Bool)

(assert (=> b!5245031 (= e!3263382 (as set.empty (Set Context!8460)))))

(declare-fun b!5245032 () Bool)

(assert (=> b!5245032 (= e!3263382 (set.union (set.insert (h!67162 lt!2149642) (as set.empty (Set Context!8460))) (content!10783 (t!374019 lt!2149642))))))

(assert (= (and d!1689847 c!906924) b!5245031))

(assert (= (and d!1689847 (not c!906924)) b!5245032))

(declare-fun m!6288946 () Bool)

(assert (=> b!5245032 m!6288946))

(declare-fun m!6288948 () Bool)

(assert (=> b!5245032 m!6288948))

(assert (=> b!5244492 d!1689847))

(declare-fun d!1689849 () Bool)

(declare-fun c!906925 () Bool)

(assert (=> d!1689849 (= c!906925 (isEmpty!32653 (tail!10337 (t!374020 s!2326))))))

(declare-fun e!3263383 () Bool)

(assert (=> d!1689849 (= (matchZipper!1090 (derivationStepZipper!1105 (set.union lt!2149384 lt!2149380) (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))) e!3263383)))

(declare-fun b!5245033 () Bool)

(assert (=> b!5245033 (= e!3263383 (nullableZipper!1261 (derivationStepZipper!1105 (set.union lt!2149384 lt!2149380) (head!11240 (t!374020 s!2326)))))))

(declare-fun b!5245034 () Bool)

(assert (=> b!5245034 (= e!3263383 (matchZipper!1090 (derivationStepZipper!1105 (derivationStepZipper!1105 (set.union lt!2149384 lt!2149380) (head!11240 (t!374020 s!2326))) (head!11240 (tail!10337 (t!374020 s!2326)))) (tail!10337 (tail!10337 (t!374020 s!2326)))))))

(assert (= (and d!1689849 c!906925) b!5245033))

(assert (= (and d!1689849 (not c!906925)) b!5245034))

(assert (=> d!1689849 m!6287844))

(assert (=> d!1689849 m!6288696))

(assert (=> b!5245033 m!6287858))

(declare-fun m!6288950 () Bool)

(assert (=> b!5245033 m!6288950))

(assert (=> b!5245034 m!6287844))

(assert (=> b!5245034 m!6288700))

(assert (=> b!5245034 m!6287858))

(assert (=> b!5245034 m!6288700))

(declare-fun m!6288952 () Bool)

(assert (=> b!5245034 m!6288952))

(assert (=> b!5245034 m!6287844))

(assert (=> b!5245034 m!6288704))

(assert (=> b!5245034 m!6288952))

(assert (=> b!5245034 m!6288704))

(declare-fun m!6288954 () Bool)

(assert (=> b!5245034 m!6288954))

(assert (=> b!5243730 d!1689849))

(declare-fun bs!1216674 () Bool)

(declare-fun d!1689851 () Bool)

(assert (= bs!1216674 (and d!1689851 d!1689725)))

(declare-fun lambda!263925 () Int)

(assert (=> bs!1216674 (= lambda!263925 lambda!263912)))

(declare-fun bs!1216675 () Bool)

(assert (= bs!1216675 (and d!1689851 d!1689687)))

(assert (=> bs!1216675 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263925 lambda!263906))))

(declare-fun bs!1216676 () Bool)

(assert (= bs!1216676 (and d!1689851 d!1689831)))

(assert (=> bs!1216676 (= lambda!263925 lambda!263922)))

(declare-fun bs!1216677 () Bool)

(assert (= bs!1216677 (and d!1689851 d!1689815)))

(assert (=> bs!1216677 (= lambda!263925 lambda!263921)))

(declare-fun bs!1216678 () Bool)

(assert (= bs!1216678 (and d!1689851 b!5243551)))

(assert (=> bs!1216678 (= (= (head!11240 (t!374020 s!2326)) (h!67163 s!2326)) (= lambda!263925 lambda!263814))))

(declare-fun bs!1216679 () Bool)

(assert (= bs!1216679 (and d!1689851 d!1689763)))

(assert (=> bs!1216679 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263925 lambda!263915))))

(declare-fun bs!1216680 () Bool)

(assert (= bs!1216680 (and d!1689851 d!1689733)))

(assert (=> bs!1216680 (= lambda!263925 lambda!263913)))

(assert (=> d!1689851 true))

(assert (=> d!1689851 (= (derivationStepZipper!1105 (set.union lt!2149384 lt!2149380) (head!11240 (t!374020 s!2326))) (flatMap!573 (set.union lt!2149384 lt!2149380) lambda!263925))))

(declare-fun bs!1216681 () Bool)

(assert (= bs!1216681 d!1689851))

(declare-fun m!6288956 () Bool)

(assert (=> bs!1216681 m!6288956))

(assert (=> b!5243730 d!1689851))

(assert (=> b!5243730 d!1689727))

(assert (=> b!5243730 d!1689729))

(declare-fun d!1689853 () Bool)

(assert (=> d!1689853 (= (isEmpty!32655 (findConcatSeparation!1371 (regOne!30204 r!7292) (regTwo!30204 r!7292) Nil!60715 s!2326 s!2326)) (not (is-Some!14956 (findConcatSeparation!1371 (regOne!30204 r!7292) (regTwo!30204 r!7292) Nil!60715 s!2326 s!2326))))))

(assert (=> d!1689447 d!1689853))

(declare-fun b!5245035 () Bool)

(declare-fun c!906930 () Bool)

(declare-fun e!3263388 () Bool)

(assert (=> b!5245035 (= c!906930 e!3263388)))

(declare-fun res!2225911 () Bool)

(assert (=> b!5245035 (=> (not res!2225911) (not e!3263388))))

(assert (=> b!5245035 (= res!2225911 (is-Concat!23691 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))))))

(declare-fun e!3263384 () (Set Context!8460))

(declare-fun e!3263389 () (Set Context!8460))

(assert (=> b!5245035 (= e!3263384 e!3263389)))

(declare-fun b!5245036 () Bool)

(declare-fun e!3263387 () (Set Context!8460))

(declare-fun call!371464 () (Set Context!8460))

(assert (=> b!5245036 (= e!3263387 call!371464)))

(declare-fun bm!371455 () Bool)

(declare-fun call!371465 () (Set Context!8460))

(declare-fun call!371463 () (Set Context!8460))

(assert (=> bm!371455 (= call!371465 call!371463)))

(declare-fun b!5245037 () Bool)

(declare-fun call!371460 () (Set Context!8460))

(assert (=> b!5245037 (= e!3263389 (set.union call!371460 call!371465))))

(declare-fun b!5245038 () Bool)

(assert (=> b!5245038 (= e!3263387 (as set.empty (Set Context!8460)))))

(declare-fun c!906926 () Bool)

(declare-fun c!906927 () Bool)

(declare-fun bm!371456 () Bool)

(declare-fun call!371462 () List!60837)

(assert (=> bm!371456 (= call!371463 (derivationStepZipperDown!294 (ite c!906926 (regOne!30205 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (ite c!906930 (regTwo!30204 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (ite c!906927 (regOne!30204 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (reg!15175 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))))))) (ite (or c!906926 c!906930) (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (Context!8461 call!371462)) (h!67163 s!2326)))))

(declare-fun b!5245039 () Bool)

(assert (=> b!5245039 (= e!3263384 (set.union call!371463 call!371460))))

(declare-fun b!5245040 () Bool)

(declare-fun e!3263385 () (Set Context!8460))

(assert (=> b!5245040 (= e!3263385 call!371464)))

(declare-fun d!1689855 () Bool)

(declare-fun c!906929 () Bool)

(assert (=> d!1689855 (= c!906929 (and (is-ElementMatch!14846 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (= (c!906500 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (h!67163 s!2326))))))

(declare-fun e!3263386 () (Set Context!8460))

(assert (=> d!1689855 (= (derivationStepZipperDown!294 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))) (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (h!67163 s!2326)) e!3263386)))

(declare-fun b!5245041 () Bool)

(declare-fun c!906928 () Bool)

(assert (=> b!5245041 (= c!906928 (is-Star!14846 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))))))

(assert (=> b!5245041 (= e!3263385 e!3263387)))

(declare-fun bm!371457 () Bool)

(declare-fun call!371461 () List!60837)

(assert (=> bm!371457 (= call!371461 ($colon$colon!1311 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))))) (ite (or c!906930 c!906927) (regTwo!30204 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))))))))

(declare-fun b!5245042 () Bool)

(assert (=> b!5245042 (= e!3263386 e!3263384)))

(assert (=> b!5245042 (= c!906926 (is-Union!14846 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))))))

(declare-fun bm!371458 () Bool)

(assert (=> bm!371458 (= call!371464 call!371465)))

(declare-fun bm!371459 () Bool)

(assert (=> bm!371459 (= call!371460 (derivationStepZipperDown!294 (ite c!906926 (regTwo!30205 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (regOne!30204 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))))) (ite c!906926 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (Context!8461 call!371461)) (h!67163 s!2326)))))

(declare-fun b!5245043 () Bool)

(assert (=> b!5245043 (= e!3263386 (set.insert (Context!8461 (t!374018 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (as set.empty (Set Context!8460))))))

(declare-fun b!5245044 () Bool)

(assert (=> b!5245044 (= e!3263388 (nullable!5015 (regOne!30204 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343))))))))))))

(declare-fun b!5245045 () Bool)

(assert (=> b!5245045 (= e!3263389 e!3263385)))

(assert (=> b!5245045 (= c!906927 (is-Concat!23691 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))))))

(declare-fun bm!371460 () Bool)

(assert (=> bm!371460 (= call!371462 call!371461)))

(assert (= (and d!1689855 c!906929) b!5245043))

(assert (= (and d!1689855 (not c!906929)) b!5245042))

(assert (= (and b!5245042 c!906926) b!5245039))

(assert (= (and b!5245042 (not c!906926)) b!5245035))

(assert (= (and b!5245035 res!2225911) b!5245044))

(assert (= (and b!5245035 c!906930) b!5245037))

(assert (= (and b!5245035 (not c!906930)) b!5245045))

(assert (= (and b!5245045 c!906927) b!5245040))

(assert (= (and b!5245045 (not c!906927)) b!5245041))

(assert (= (and b!5245041 c!906928) b!5245036))

(assert (= (and b!5245041 (not c!906928)) b!5245038))

(assert (= (or b!5245040 b!5245036) bm!371460))

(assert (= (or b!5245040 b!5245036) bm!371458))

(assert (= (or b!5245037 bm!371460) bm!371457))

(assert (= (or b!5245037 bm!371458) bm!371455))

(assert (= (or b!5245039 b!5245037) bm!371459))

(assert (= (or b!5245039 bm!371455) bm!371456))

(declare-fun m!6288958 () Bool)

(assert (=> bm!371456 m!6288958))

(declare-fun m!6288960 () Bool)

(assert (=> bm!371459 m!6288960))

(declare-fun m!6288962 () Bool)

(assert (=> b!5245043 m!6288962))

(declare-fun m!6288964 () Bool)

(assert (=> bm!371457 m!6288964))

(declare-fun m!6288966 () Bool)

(assert (=> b!5245044 m!6288966))

(assert (=> bm!371331 d!1689855))

(assert (=> b!5244310 d!1689403))

(declare-fun bs!1216682 () Bool)

(declare-fun d!1689857 () Bool)

(assert (= bs!1216682 (and d!1689857 d!1689597)))

(declare-fun lambda!263926 () Int)

(assert (=> bs!1216682 (= lambda!263926 lambda!263894)))

(declare-fun bs!1216683 () Bool)

(assert (= bs!1216683 (and d!1689857 d!1689417)))

(assert (=> bs!1216683 (= lambda!263926 lambda!263845)))

(declare-fun bs!1216684 () Bool)

(assert (= bs!1216684 (and d!1689857 d!1689547)))

(assert (=> bs!1216684 (= lambda!263926 lambda!263882)))

(declare-fun bs!1216685 () Bool)

(assert (= bs!1216685 (and d!1689857 d!1689403)))

(assert (=> bs!1216685 (= lambda!263926 lambda!263836)))

(declare-fun bs!1216686 () Bool)

(assert (= bs!1216686 (and d!1689857 b!5243561)))

(assert (=> bs!1216686 (= lambda!263926 lambda!263815)))

(declare-fun bs!1216687 () Bool)

(assert (= bs!1216687 (and d!1689857 d!1689531)))

(assert (=> bs!1216687 (= lambda!263926 lambda!263878)))

(declare-fun bs!1216688 () Bool)

(assert (= bs!1216688 (and d!1689857 d!1689839)))

(assert (=> bs!1216688 (= lambda!263926 lambda!263923)))

(declare-fun bs!1216689 () Bool)

(assert (= bs!1216689 (and d!1689857 d!1689799)))

(assert (=> bs!1216689 (= lambda!263926 lambda!263920)))

(declare-fun bs!1216690 () Bool)

(assert (= bs!1216690 (and d!1689857 d!1689757)))

(assert (=> bs!1216690 (= lambda!263926 lambda!263914)))

(declare-fun bs!1216691 () Bool)

(assert (= bs!1216691 (and d!1689857 d!1689543)))

(assert (=> bs!1216691 (= lambda!263926 lambda!263881)))

(declare-fun bs!1216692 () Bool)

(assert (= bs!1216692 (and d!1689857 d!1689515)))

(assert (=> bs!1216692 (= lambda!263926 lambda!263875)))

(declare-fun lt!2149674 () List!60837)

(assert (=> d!1689857 (forall!14270 lt!2149674 lambda!263926)))

(declare-fun e!3263390 () List!60837)

(assert (=> d!1689857 (= lt!2149674 e!3263390)))

(declare-fun c!906931 () Bool)

(assert (=> d!1689857 (= c!906931 (is-Cons!60714 (t!374019 zl!343)))))

(assert (=> d!1689857 (= (unfocusZipperList!288 (t!374019 zl!343)) lt!2149674)))

(declare-fun b!5245046 () Bool)

(assert (=> b!5245046 (= e!3263390 (Cons!60713 (generalisedConcat!515 (exprs!4730 (h!67162 (t!374019 zl!343)))) (unfocusZipperList!288 (t!374019 (t!374019 zl!343)))))))

(declare-fun b!5245047 () Bool)

(assert (=> b!5245047 (= e!3263390 Nil!60713)))

(assert (= (and d!1689857 c!906931) b!5245046))

(assert (= (and d!1689857 (not c!906931)) b!5245047))

(declare-fun m!6288968 () Bool)

(assert (=> d!1689857 m!6288968))

(declare-fun m!6288970 () Bool)

(assert (=> b!5245046 m!6288970))

(declare-fun m!6288972 () Bool)

(assert (=> b!5245046 m!6288972))

(assert (=> b!5244310 d!1689857))

(assert (=> b!5243754 d!1689611))

(assert (=> b!5244381 d!1689689))

(declare-fun bs!1216693 () Bool)

(declare-fun d!1689859 () Bool)

(assert (= bs!1216693 (and d!1689859 d!1689597)))

(declare-fun lambda!263927 () Int)

(assert (=> bs!1216693 (= lambda!263927 lambda!263894)))

(declare-fun bs!1216694 () Bool)

(assert (= bs!1216694 (and d!1689859 d!1689857)))

(assert (=> bs!1216694 (= lambda!263927 lambda!263926)))

(declare-fun bs!1216695 () Bool)

(assert (= bs!1216695 (and d!1689859 d!1689417)))

(assert (=> bs!1216695 (= lambda!263927 lambda!263845)))

(declare-fun bs!1216696 () Bool)

(assert (= bs!1216696 (and d!1689859 d!1689547)))

(assert (=> bs!1216696 (= lambda!263927 lambda!263882)))

(declare-fun bs!1216697 () Bool)

(assert (= bs!1216697 (and d!1689859 d!1689403)))

(assert (=> bs!1216697 (= lambda!263927 lambda!263836)))

(declare-fun bs!1216698 () Bool)

(assert (= bs!1216698 (and d!1689859 b!5243561)))

(assert (=> bs!1216698 (= lambda!263927 lambda!263815)))

(declare-fun bs!1216699 () Bool)

(assert (= bs!1216699 (and d!1689859 d!1689531)))

(assert (=> bs!1216699 (= lambda!263927 lambda!263878)))

(declare-fun bs!1216700 () Bool)

(assert (= bs!1216700 (and d!1689859 d!1689839)))

(assert (=> bs!1216700 (= lambda!263927 lambda!263923)))

(declare-fun bs!1216701 () Bool)

(assert (= bs!1216701 (and d!1689859 d!1689799)))

(assert (=> bs!1216701 (= lambda!263927 lambda!263920)))

(declare-fun bs!1216702 () Bool)

(assert (= bs!1216702 (and d!1689859 d!1689757)))

(assert (=> bs!1216702 (= lambda!263927 lambda!263914)))

(declare-fun bs!1216703 () Bool)

(assert (= bs!1216703 (and d!1689859 d!1689543)))

(assert (=> bs!1216703 (= lambda!263927 lambda!263881)))

(declare-fun bs!1216704 () Bool)

(assert (= bs!1216704 (and d!1689859 d!1689515)))

(assert (=> bs!1216704 (= lambda!263927 lambda!263875)))

(assert (=> d!1689859 (= (inv!80363 setElem!33458) (forall!14270 (exprs!4730 setElem!33458) lambda!263927))))

(declare-fun bs!1216705 () Bool)

(assert (= bs!1216705 d!1689859))

(declare-fun m!6288974 () Bool)

(assert (=> bs!1216705 m!6288974))

(assert (=> setNonEmpty!33458 d!1689859))

(assert (=> bm!371318 d!1689741))

(declare-fun d!1689861 () Bool)

(declare-fun res!2225912 () Bool)

(declare-fun e!3263391 () Bool)

(assert (=> d!1689861 (=> res!2225912 e!3263391)))

(assert (=> d!1689861 (= res!2225912 (is-Nil!60713 lt!2149603))))

(assert (=> d!1689861 (= (forall!14270 lt!2149603 lambda!263878) e!3263391)))

(declare-fun b!5245048 () Bool)

(declare-fun e!3263392 () Bool)

(assert (=> b!5245048 (= e!3263391 e!3263392)))

(declare-fun res!2225913 () Bool)

(assert (=> b!5245048 (=> (not res!2225913) (not e!3263392))))

(assert (=> b!5245048 (= res!2225913 (dynLambda!23995 lambda!263878 (h!67161 lt!2149603)))))

(declare-fun b!5245049 () Bool)

(assert (=> b!5245049 (= e!3263392 (forall!14270 (t!374018 lt!2149603) lambda!263878))))

(assert (= (and d!1689861 (not res!2225912)) b!5245048))

(assert (= (and b!5245048 res!2225913) b!5245049))

(declare-fun b_lambda!202635 () Bool)

(assert (=> (not b_lambda!202635) (not b!5245048)))

(declare-fun m!6288976 () Bool)

(assert (=> b!5245048 m!6288976))

(declare-fun m!6288978 () Bool)

(assert (=> b!5245049 m!6288978))

(assert (=> d!1689531 d!1689861))

(declare-fun bs!1216706 () Bool)

(declare-fun d!1689863 () Bool)

(assert (= bs!1216706 (and d!1689863 d!1689711)))

(declare-fun lambda!263928 () Int)

(assert (=> bs!1216706 (= lambda!263928 lambda!263909)))

(declare-fun bs!1216707 () Bool)

(assert (= bs!1216707 (and d!1689863 d!1689781)))

(assert (=> bs!1216707 (= lambda!263928 lambda!263916)))

(declare-fun bs!1216708 () Bool)

(assert (= bs!1216708 (and d!1689863 d!1689789)))

(assert (=> bs!1216708 (= lambda!263928 lambda!263917)))

(declare-fun bs!1216709 () Bool)

(assert (= bs!1216709 (and d!1689863 d!1689843)))

(assert (=> bs!1216709 (= lambda!263928 lambda!263924)))

(assert (=> d!1689863 (= (nullableZipper!1261 lt!2149384) (exists!1980 lt!2149384 lambda!263928))))

(declare-fun bs!1216710 () Bool)

(assert (= bs!1216710 d!1689863))

(declare-fun m!6288980 () Bool)

(assert (=> bs!1216710 m!6288980))

(assert (=> b!5243727 d!1689863))

(assert (=> b!5244348 d!1689701))

(assert (=> b!5244348 d!1689691))

(declare-fun call!371468 () Bool)

(declare-fun bm!371461 () Bool)

(declare-fun c!906932 () Bool)

(declare-fun c!906933 () Bool)

(assert (=> bm!371461 (= call!371468 (validRegex!6582 (ite c!906933 (reg!15175 lt!2149536) (ite c!906932 (regOne!30205 lt!2149536) (regOne!30204 lt!2149536)))))))

(declare-fun b!5245050 () Bool)

(declare-fun e!3263396 () Bool)

(declare-fun e!3263398 () Bool)

(assert (=> b!5245050 (= e!3263396 e!3263398)))

(assert (=> b!5245050 (= c!906932 (is-Union!14846 lt!2149536))))

(declare-fun b!5245051 () Bool)

(declare-fun e!3263397 () Bool)

(assert (=> b!5245051 (= e!3263397 e!3263396)))

(assert (=> b!5245051 (= c!906933 (is-Star!14846 lt!2149536))))

(declare-fun b!5245052 () Bool)

(declare-fun res!2225916 () Bool)

(declare-fun e!3263399 () Bool)

(assert (=> b!5245052 (=> (not res!2225916) (not e!3263399))))

(declare-fun call!371466 () Bool)

(assert (=> b!5245052 (= res!2225916 call!371466)))

(assert (=> b!5245052 (= e!3263398 e!3263399)))

(declare-fun bm!371462 () Bool)

(declare-fun call!371467 () Bool)

(assert (=> bm!371462 (= call!371467 (validRegex!6582 (ite c!906932 (regTwo!30205 lt!2149536) (regTwo!30204 lt!2149536))))))

(declare-fun bm!371463 () Bool)

(assert (=> bm!371463 (= call!371466 call!371468)))

(declare-fun b!5245053 () Bool)

(declare-fun e!3263395 () Bool)

(assert (=> b!5245053 (= e!3263396 e!3263395)))

(declare-fun res!2225917 () Bool)

(assert (=> b!5245053 (= res!2225917 (not (nullable!5015 (reg!15175 lt!2149536))))))

(assert (=> b!5245053 (=> (not res!2225917) (not e!3263395))))

(declare-fun b!5245054 () Bool)

(declare-fun e!3263394 () Bool)

(assert (=> b!5245054 (= e!3263394 call!371467)))

(declare-fun b!5245055 () Bool)

(declare-fun res!2225915 () Bool)

(declare-fun e!3263393 () Bool)

(assert (=> b!5245055 (=> res!2225915 e!3263393)))

(assert (=> b!5245055 (= res!2225915 (not (is-Concat!23691 lt!2149536)))))

(assert (=> b!5245055 (= e!3263398 e!3263393)))

(declare-fun b!5245057 () Bool)

(assert (=> b!5245057 (= e!3263395 call!371468)))

(declare-fun b!5245058 () Bool)

(assert (=> b!5245058 (= e!3263399 call!371467)))

(declare-fun b!5245056 () Bool)

(assert (=> b!5245056 (= e!3263393 e!3263394)))

(declare-fun res!2225918 () Bool)

(assert (=> b!5245056 (=> (not res!2225918) (not e!3263394))))

(assert (=> b!5245056 (= res!2225918 call!371466)))

(declare-fun d!1689865 () Bool)

(declare-fun res!2225914 () Bool)

(assert (=> d!1689865 (=> res!2225914 e!3263397)))

(assert (=> d!1689865 (= res!2225914 (is-ElementMatch!14846 lt!2149536))))

(assert (=> d!1689865 (= (validRegex!6582 lt!2149536) e!3263397)))

(assert (= (and d!1689865 (not res!2225914)) b!5245051))

(assert (= (and b!5245051 c!906933) b!5245053))

(assert (= (and b!5245051 (not c!906933)) b!5245050))

(assert (= (and b!5245053 res!2225917) b!5245057))

(assert (= (and b!5245050 c!906932) b!5245052))

(assert (= (and b!5245050 (not c!906932)) b!5245055))

(assert (= (and b!5245052 res!2225916) b!5245058))

(assert (= (and b!5245055 (not res!2225915)) b!5245056))

(assert (= (and b!5245056 res!2225918) b!5245054))

(assert (= (or b!5245058 b!5245054) bm!371462))

(assert (= (or b!5245052 b!5245056) bm!371463))

(assert (= (or b!5245057 bm!371463) bm!371461))

(declare-fun m!6288982 () Bool)

(assert (=> bm!371461 m!6288982))

(declare-fun m!6288984 () Bool)

(assert (=> bm!371462 m!6288984))

(declare-fun m!6288986 () Bool)

(assert (=> b!5245053 m!6288986))

(assert (=> d!1689403 d!1689865))

(declare-fun d!1689867 () Bool)

(declare-fun res!2225919 () Bool)

(declare-fun e!3263400 () Bool)

(assert (=> d!1689867 (=> res!2225919 e!3263400)))

(assert (=> d!1689867 (= res!2225919 (is-Nil!60713 (exprs!4730 (h!67162 zl!343))))))

(assert (=> d!1689867 (= (forall!14270 (exprs!4730 (h!67162 zl!343)) lambda!263836) e!3263400)))

(declare-fun b!5245059 () Bool)

(declare-fun e!3263401 () Bool)

(assert (=> b!5245059 (= e!3263400 e!3263401)))

(declare-fun res!2225920 () Bool)

(assert (=> b!5245059 (=> (not res!2225920) (not e!3263401))))

(assert (=> b!5245059 (= res!2225920 (dynLambda!23995 lambda!263836 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun b!5245060 () Bool)

(assert (=> b!5245060 (= e!3263401 (forall!14270 (t!374018 (exprs!4730 (h!67162 zl!343))) lambda!263836))))

(assert (= (and d!1689867 (not res!2225919)) b!5245059))

(assert (= (and b!5245059 res!2225920) b!5245060))

(declare-fun b_lambda!202637 () Bool)

(assert (=> (not b_lambda!202637) (not b!5245059)))

(declare-fun m!6288988 () Bool)

(assert (=> b!5245059 m!6288988))

(declare-fun m!6288990 () Bool)

(assert (=> b!5245060 m!6288990))

(assert (=> d!1689403 d!1689867))

(declare-fun d!1689869 () Bool)

(assert (=> d!1689869 (= (isEmpty!32650 (t!374018 (unfocusZipperList!288 zl!343))) (is-Nil!60713 (t!374018 (unfocusZipperList!288 zl!343))))))

(assert (=> b!5244297 d!1689869))

(declare-fun d!1689871 () Bool)

(declare-fun lt!2149675 () Int)

(assert (=> d!1689871 (>= lt!2149675 0)))

(declare-fun e!3263402 () Int)

(assert (=> d!1689871 (= lt!2149675 e!3263402)))

(declare-fun c!906934 () Bool)

(assert (=> d!1689871 (= c!906934 (is-Cons!60713 (exprs!4730 (h!67162 lt!2149354))))))

(assert (=> d!1689871 (= (contextDepthTotal!20 (h!67162 lt!2149354)) lt!2149675)))

(declare-fun b!5245061 () Bool)

(assert (=> b!5245061 (= e!3263402 (+ (regexDepthTotal!5 (h!67161 (exprs!4730 (h!67162 lt!2149354)))) (contextDepthTotal!20 (Context!8461 (t!374018 (exprs!4730 (h!67162 lt!2149354)))))))))

(declare-fun b!5245062 () Bool)

(assert (=> b!5245062 (= e!3263402 1)))

(assert (= (and d!1689871 c!906934) b!5245061))

(assert (= (and d!1689871 (not c!906934)) b!5245062))

(declare-fun m!6288992 () Bool)

(assert (=> b!5245061 m!6288992))

(declare-fun m!6288994 () Bool)

(assert (=> b!5245061 m!6288994))

(assert (=> b!5244482 d!1689871))

(declare-fun d!1689873 () Bool)

(declare-fun lt!2149676 () Int)

(assert (=> d!1689873 (>= lt!2149676 0)))

(declare-fun e!3263403 () Int)

(assert (=> d!1689873 (= lt!2149676 e!3263403)))

(declare-fun c!906935 () Bool)

(assert (=> d!1689873 (= c!906935 (is-Cons!60714 (t!374019 lt!2149354)))))

(assert (=> d!1689873 (= (zipperDepthTotal!27 (t!374019 lt!2149354)) lt!2149676)))

(declare-fun b!5245063 () Bool)

(assert (=> b!5245063 (= e!3263403 (+ (contextDepthTotal!20 (h!67162 (t!374019 lt!2149354))) (zipperDepthTotal!27 (t!374019 (t!374019 lt!2149354)))))))

(declare-fun b!5245064 () Bool)

(assert (=> b!5245064 (= e!3263403 0)))

(assert (= (and d!1689873 c!906935) b!5245063))

(assert (= (and d!1689873 (not c!906935)) b!5245064))

(declare-fun m!6288996 () Bool)

(assert (=> b!5245063 m!6288996))

(declare-fun m!6288998 () Bool)

(assert (=> b!5245063 m!6288998))

(assert (=> b!5244482 d!1689873))

(assert (=> bm!371348 d!1689741))

(declare-fun b!5245066 () Bool)

(declare-fun e!3263404 () List!60839)

(assert (=> b!5245066 (= e!3263404 (Cons!60715 (h!67163 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715))) (++!13241 (t!374020 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715))) (t!374020 s!2326))))))

(declare-fun b!5245068 () Bool)

(declare-fun e!3263405 () Bool)

(declare-fun lt!2149677 () List!60839)

(assert (=> b!5245068 (= e!3263405 (or (not (= (t!374020 s!2326) Nil!60715)) (= lt!2149677 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715)))))))

(declare-fun d!1689875 () Bool)

(assert (=> d!1689875 e!3263405))

(declare-fun res!2225921 () Bool)

(assert (=> d!1689875 (=> (not res!2225921) (not e!3263405))))

(assert (=> d!1689875 (= res!2225921 (= (content!10784 lt!2149677) (set.union (content!10784 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715))) (content!10784 (t!374020 s!2326)))))))

(assert (=> d!1689875 (= lt!2149677 e!3263404)))

(declare-fun c!906936 () Bool)

(assert (=> d!1689875 (= c!906936 (is-Nil!60715 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715))))))

(assert (=> d!1689875 (= (++!13241 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715)) (t!374020 s!2326)) lt!2149677)))

(declare-fun b!5245067 () Bool)

(declare-fun res!2225922 () Bool)

(assert (=> b!5245067 (=> (not res!2225922) (not e!3263405))))

(assert (=> b!5245067 (= res!2225922 (= (size!39735 lt!2149677) (+ (size!39735 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715))) (size!39735 (t!374020 s!2326)))))))

(declare-fun b!5245065 () Bool)

(assert (=> b!5245065 (= e!3263404 (t!374020 s!2326))))

(assert (= (and d!1689875 c!906936) b!5245065))

(assert (= (and d!1689875 (not c!906936)) b!5245066))

(assert (= (and d!1689875 res!2225921) b!5245067))

(assert (= (and b!5245067 res!2225922) b!5245068))

(declare-fun m!6289000 () Bool)

(assert (=> b!5245066 m!6289000))

(declare-fun m!6289002 () Bool)

(assert (=> d!1689875 m!6289002))

(assert (=> d!1689875 m!6287950))

(declare-fun m!6289004 () Bool)

(assert (=> d!1689875 m!6289004))

(declare-fun m!6289006 () Bool)

(assert (=> d!1689875 m!6289006))

(declare-fun m!6289008 () Bool)

(assert (=> b!5245067 m!6289008))

(assert (=> b!5245067 m!6287950))

(declare-fun m!6289010 () Bool)

(assert (=> b!5245067 m!6289010))

(declare-fun m!6289012 () Bool)

(assert (=> b!5245067 m!6289012))

(assert (=> b!5243917 d!1689875))

(declare-fun b!5245070 () Bool)

(declare-fun e!3263406 () List!60839)

(assert (=> b!5245070 (= e!3263406 (Cons!60715 (h!67163 Nil!60715) (++!13241 (t!374020 Nil!60715) (Cons!60715 (h!67163 s!2326) Nil!60715))))))

(declare-fun b!5245072 () Bool)

(declare-fun e!3263407 () Bool)

(declare-fun lt!2149678 () List!60839)

(assert (=> b!5245072 (= e!3263407 (or (not (= (Cons!60715 (h!67163 s!2326) Nil!60715) Nil!60715)) (= lt!2149678 Nil!60715)))))

(declare-fun d!1689877 () Bool)

(assert (=> d!1689877 e!3263407))

(declare-fun res!2225923 () Bool)

(assert (=> d!1689877 (=> (not res!2225923) (not e!3263407))))

(assert (=> d!1689877 (= res!2225923 (= (content!10784 lt!2149678) (set.union (content!10784 Nil!60715) (content!10784 (Cons!60715 (h!67163 s!2326) Nil!60715)))))))

(assert (=> d!1689877 (= lt!2149678 e!3263406)))

(declare-fun c!906937 () Bool)

(assert (=> d!1689877 (= c!906937 (is-Nil!60715 Nil!60715))))

(assert (=> d!1689877 (= (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715)) lt!2149678)))

(declare-fun b!5245071 () Bool)

(declare-fun res!2225924 () Bool)

(assert (=> b!5245071 (=> (not res!2225924) (not e!3263407))))

(assert (=> b!5245071 (= res!2225924 (= (size!39735 lt!2149678) (+ (size!39735 Nil!60715) (size!39735 (Cons!60715 (h!67163 s!2326) Nil!60715)))))))

(declare-fun b!5245069 () Bool)

(assert (=> b!5245069 (= e!3263406 (Cons!60715 (h!67163 s!2326) Nil!60715))))

(assert (= (and d!1689877 c!906937) b!5245069))

(assert (= (and d!1689877 (not c!906937)) b!5245070))

(assert (= (and d!1689877 res!2225923) b!5245071))

(assert (= (and b!5245071 res!2225924) b!5245072))

(declare-fun m!6289014 () Bool)

(assert (=> b!5245070 m!6289014))

(declare-fun m!6289016 () Bool)

(assert (=> d!1689877 m!6289016))

(declare-fun m!6289018 () Bool)

(assert (=> d!1689877 m!6289018))

(declare-fun m!6289020 () Bool)

(assert (=> d!1689877 m!6289020))

(declare-fun m!6289022 () Bool)

(assert (=> b!5245071 m!6289022))

(declare-fun m!6289024 () Bool)

(assert (=> b!5245071 m!6289024))

(declare-fun m!6289026 () Bool)

(assert (=> b!5245071 m!6289026))

(assert (=> b!5243917 d!1689877))

(declare-fun d!1689879 () Bool)

(assert (=> d!1689879 (= (++!13241 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715)) (t!374020 s!2326)) s!2326)))

(declare-fun lt!2149681 () Unit!152782)

(declare-fun choose!39067 (List!60839 C!29962 List!60839 List!60839) Unit!152782)

(assert (=> d!1689879 (= lt!2149681 (choose!39067 Nil!60715 (h!67163 s!2326) (t!374020 s!2326) s!2326))))

(assert (=> d!1689879 (= (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) (t!374020 s!2326))) s!2326)))

(assert (=> d!1689879 (= (lemmaMoveElementToOtherListKeepsConcatEq!1656 Nil!60715 (h!67163 s!2326) (t!374020 s!2326) s!2326) lt!2149681)))

(declare-fun bs!1216711 () Bool)

(assert (= bs!1216711 d!1689879))

(assert (=> bs!1216711 m!6287950))

(assert (=> bs!1216711 m!6287950))

(assert (=> bs!1216711 m!6287952))

(declare-fun m!6289028 () Bool)

(assert (=> bs!1216711 m!6289028))

(declare-fun m!6289030 () Bool)

(assert (=> bs!1216711 m!6289030))

(assert (=> b!5243917 d!1689879))

(declare-fun b!5245073 () Bool)

(declare-fun e!3263410 () Option!14957)

(assert (=> b!5245073 (= e!3263410 (Some!14956 (tuple2!64091 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715)) (t!374020 s!2326))))))

(declare-fun b!5245074 () Bool)

(declare-fun res!2225927 () Bool)

(declare-fun e!3263412 () Bool)

(assert (=> b!5245074 (=> (not res!2225927) (not e!3263412))))

(declare-fun lt!2149682 () Option!14957)

(assert (=> b!5245074 (= res!2225927 (matchR!7031 (regTwo!30204 r!7292) (_2!35348 (get!20870 lt!2149682))))))

(declare-fun b!5245075 () Bool)

(assert (=> b!5245075 (= e!3263412 (= (++!13241 (_1!35348 (get!20870 lt!2149682)) (_2!35348 (get!20870 lt!2149682))) s!2326))))

(declare-fun b!5245076 () Bool)

(declare-fun res!2225925 () Bool)

(assert (=> b!5245076 (=> (not res!2225925) (not e!3263412))))

(assert (=> b!5245076 (= res!2225925 (matchR!7031 (regOne!30204 r!7292) (_1!35348 (get!20870 lt!2149682))))))

(declare-fun b!5245077 () Bool)

(declare-fun lt!2149684 () Unit!152782)

(declare-fun lt!2149683 () Unit!152782)

(assert (=> b!5245077 (= lt!2149684 lt!2149683)))

(assert (=> b!5245077 (= (++!13241 (++!13241 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715)) (Cons!60715 (h!67163 (t!374020 s!2326)) Nil!60715)) (t!374020 (t!374020 s!2326))) s!2326)))

(assert (=> b!5245077 (= lt!2149683 (lemmaMoveElementToOtherListKeepsConcatEq!1656 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715)) (h!67163 (t!374020 s!2326)) (t!374020 (t!374020 s!2326)) s!2326))))

(declare-fun e!3263408 () Option!14957)

(assert (=> b!5245077 (= e!3263408 (findConcatSeparation!1371 (regOne!30204 r!7292) (regTwo!30204 r!7292) (++!13241 (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715)) (Cons!60715 (h!67163 (t!374020 s!2326)) Nil!60715)) (t!374020 (t!374020 s!2326)) s!2326))))

(declare-fun d!1689881 () Bool)

(declare-fun e!3263411 () Bool)

(assert (=> d!1689881 e!3263411))

(declare-fun res!2225926 () Bool)

(assert (=> d!1689881 (=> res!2225926 e!3263411)))

(assert (=> d!1689881 (= res!2225926 e!3263412)))

(declare-fun res!2225929 () Bool)

(assert (=> d!1689881 (=> (not res!2225929) (not e!3263412))))

(assert (=> d!1689881 (= res!2225929 (isDefined!11660 lt!2149682))))

(assert (=> d!1689881 (= lt!2149682 e!3263410)))

(declare-fun c!906939 () Bool)

(declare-fun e!3263409 () Bool)

(assert (=> d!1689881 (= c!906939 e!3263409)))

(declare-fun res!2225928 () Bool)

(assert (=> d!1689881 (=> (not res!2225928) (not e!3263409))))

(assert (=> d!1689881 (= res!2225928 (matchR!7031 (regOne!30204 r!7292) (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715))))))

(assert (=> d!1689881 (validRegex!6582 (regOne!30204 r!7292))))

(assert (=> d!1689881 (= (findConcatSeparation!1371 (regOne!30204 r!7292) (regTwo!30204 r!7292) (++!13241 Nil!60715 (Cons!60715 (h!67163 s!2326) Nil!60715)) (t!374020 s!2326) s!2326) lt!2149682)))

(declare-fun b!5245078 () Bool)

(assert (=> b!5245078 (= e!3263409 (matchR!7031 (regTwo!30204 r!7292) (t!374020 s!2326)))))

(declare-fun b!5245079 () Bool)

(assert (=> b!5245079 (= e!3263408 None!14956)))

(declare-fun b!5245080 () Bool)

(assert (=> b!5245080 (= e!3263411 (not (isDefined!11660 lt!2149682)))))

(declare-fun b!5245081 () Bool)

(assert (=> b!5245081 (= e!3263410 e!3263408)))

(declare-fun c!906938 () Bool)

(assert (=> b!5245081 (= c!906938 (is-Nil!60715 (t!374020 s!2326)))))

(assert (= (and d!1689881 res!2225928) b!5245078))

(assert (= (and d!1689881 c!906939) b!5245073))

(assert (= (and d!1689881 (not c!906939)) b!5245081))

(assert (= (and b!5245081 c!906938) b!5245079))

(assert (= (and b!5245081 (not c!906938)) b!5245077))

(assert (= (and d!1689881 res!2225929) b!5245076))

(assert (= (and b!5245076 res!2225925) b!5245074))

(assert (= (and b!5245074 res!2225927) b!5245075))

(assert (= (and d!1689881 (not res!2225926)) b!5245080))

(declare-fun m!6289032 () Bool)

(assert (=> b!5245074 m!6289032))

(declare-fun m!6289034 () Bool)

(assert (=> b!5245074 m!6289034))

(declare-fun m!6289036 () Bool)

(assert (=> b!5245080 m!6289036))

(assert (=> b!5245076 m!6289032))

(declare-fun m!6289038 () Bool)

(assert (=> b!5245076 m!6289038))

(assert (=> b!5245075 m!6289032))

(declare-fun m!6289040 () Bool)

(assert (=> b!5245075 m!6289040))

(assert (=> d!1689881 m!6289036))

(assert (=> d!1689881 m!6287950))

(declare-fun m!6289042 () Bool)

(assert (=> d!1689881 m!6289042))

(assert (=> d!1689881 m!6287948))

(assert (=> b!5245077 m!6287950))

(declare-fun m!6289044 () Bool)

(assert (=> b!5245077 m!6289044))

(assert (=> b!5245077 m!6289044))

(declare-fun m!6289046 () Bool)

(assert (=> b!5245077 m!6289046))

(assert (=> b!5245077 m!6287950))

(declare-fun m!6289048 () Bool)

(assert (=> b!5245077 m!6289048))

(assert (=> b!5245077 m!6289044))

(declare-fun m!6289050 () Bool)

(assert (=> b!5245077 m!6289050))

(declare-fun m!6289052 () Bool)

(assert (=> b!5245078 m!6289052))

(assert (=> b!5243917 d!1689881))

(declare-fun d!1689883 () Bool)

(declare-fun res!2225930 () Bool)

(declare-fun e!3263413 () Bool)

(assert (=> d!1689883 (=> res!2225930 e!3263413)))

(assert (=> d!1689883 (= res!2225930 (is-Nil!60713 (exprs!4730 setElem!33452)))))

(assert (=> d!1689883 (= (forall!14270 (exprs!4730 setElem!33452) lambda!263894) e!3263413)))

(declare-fun b!5245082 () Bool)

(declare-fun e!3263414 () Bool)

(assert (=> b!5245082 (= e!3263413 e!3263414)))

(declare-fun res!2225931 () Bool)

(assert (=> b!5245082 (=> (not res!2225931) (not e!3263414))))

(assert (=> b!5245082 (= res!2225931 (dynLambda!23995 lambda!263894 (h!67161 (exprs!4730 setElem!33452))))))

(declare-fun b!5245083 () Bool)

(assert (=> b!5245083 (= e!3263414 (forall!14270 (t!374018 (exprs!4730 setElem!33452)) lambda!263894))))

(assert (= (and d!1689883 (not res!2225930)) b!5245082))

(assert (= (and b!5245082 res!2225931) b!5245083))

(declare-fun b_lambda!202639 () Bool)

(assert (=> (not b_lambda!202639) (not b!5245082)))

(declare-fun m!6289054 () Bool)

(assert (=> b!5245082 m!6289054))

(declare-fun m!6289056 () Bool)

(assert (=> b!5245083 m!6289056))

(assert (=> d!1689597 d!1689883))

(declare-fun d!1689885 () Bool)

(assert (=> d!1689885 (= (isEmptyExpr!796 lt!2149614) (is-EmptyExpr!14846 lt!2149614))))

(assert (=> b!5244392 d!1689885))

(assert (=> d!1689505 d!1689489))

(declare-fun d!1689887 () Bool)

(assert (=> d!1689887 (= (flatMap!573 z!1189 lambda!263814) (dynLambda!23993 lambda!263814 (h!67162 zl!343)))))

(assert (=> d!1689887 true))

(declare-fun _$13!1773 () Unit!152782)

(assert (=> d!1689887 (= (choose!39060 z!1189 (h!67162 zl!343) lambda!263814) _$13!1773)))

(declare-fun b_lambda!202641 () Bool)

(assert (=> (not b_lambda!202641) (not d!1689887)))

(declare-fun bs!1216712 () Bool)

(assert (= bs!1216712 d!1689887))

(assert (=> bs!1216712 m!6287598))

(assert (=> bs!1216712 m!6288174))

(assert (=> d!1689505 d!1689887))

(declare-fun bs!1216713 () Bool)

(declare-fun b!5245094 () Bool)

(assert (= bs!1216713 (and b!5245094 b!5244075)))

(declare-fun lambda!263929 () Int)

(assert (=> bs!1216713 (= (and (= (reg!15175 (regTwo!30205 lt!2149350)) (reg!15175 r!7292)) (= (regTwo!30205 lt!2149350) r!7292)) (= lambda!263929 lambda!263862))))

(declare-fun bs!1216714 () Bool)

(assert (= bs!1216714 (and b!5245094 b!5244910)))

(assert (=> bs!1216714 (not (= lambda!263929 lambda!263919))))

(declare-fun bs!1216715 () Bool)

(assert (= bs!1216715 (and b!5245094 b!5244682)))

(assert (=> bs!1216715 (not (= lambda!263929 lambda!263903))))

(declare-fun bs!1216716 () Bool)

(assert (= bs!1216716 (and b!5245094 b!5244920)))

(assert (=> bs!1216716 (= (and (= (reg!15175 (regTwo!30205 lt!2149350)) (reg!15175 (regOne!30205 lt!2149381))) (= (regTwo!30205 lt!2149350) (regOne!30205 lt!2149381))) (= lambda!263929 lambda!263918))))

(declare-fun bs!1216717 () Bool)

(assert (= bs!1216717 (and b!5245094 b!5244403)))

(assert (=> bs!1216717 (not (= lambda!263929 lambda!263886))))

(declare-fun bs!1216718 () Bool)

(assert (= bs!1216718 (and b!5245094 b!5244317)))

(assert (=> bs!1216718 (not (= lambda!263929 lambda!263880))))

(declare-fun bs!1216719 () Bool)

(assert (= bs!1216719 (and b!5245094 d!1689441)))

(assert (=> bs!1216719 (not (= lambda!263929 lambda!263856))))

(declare-fun bs!1216720 () Bool)

(assert (= bs!1216720 (and b!5245094 b!5244327)))

(assert (=> bs!1216720 (= (and (= (reg!15175 (regTwo!30205 lt!2149350)) (reg!15175 lt!2149381)) (= (regTwo!30205 lt!2149350) lt!2149381)) (= lambda!263929 lambda!263879))))

(declare-fun bs!1216721 () Bool)

(assert (= bs!1216721 (and b!5245094 b!5244692)))

(assert (=> bs!1216721 (= (and (= (reg!15175 (regTwo!30205 lt!2149350)) (reg!15175 (regOne!30205 lt!2149350))) (= (regTwo!30205 lt!2149350) (regOne!30205 lt!2149350))) (= lambda!263929 lambda!263902))))

(declare-fun bs!1216722 () Bool)

(assert (= bs!1216722 (and b!5245094 b!5243550)))

(assert (=> bs!1216722 (not (= lambda!263929 lambda!263813))))

(declare-fun bs!1216723 () Bool)

(assert (= bs!1216723 (and b!5245094 b!5244065)))

(assert (=> bs!1216723 (not (= lambda!263929 lambda!263863))))

(declare-fun bs!1216724 () Bool)

(assert (= bs!1216724 (and b!5245094 b!5244761)))

(assert (=> bs!1216724 (not (= lambda!263929 lambda!263911))))

(declare-fun bs!1216725 () Bool)

(assert (= bs!1216725 (and b!5245094 d!1689431)))

(assert (=> bs!1216725 (not (= lambda!263929 lambda!263851))))

(assert (=> bs!1216719 (not (= lambda!263929 lambda!263857))))

(declare-fun bs!1216726 () Bool)

(assert (= bs!1216726 (and b!5245094 b!5244413)))

(assert (=> bs!1216726 (= (and (= (reg!15175 (regTwo!30205 lt!2149350)) (reg!15175 lt!2149350)) (= (regTwo!30205 lt!2149350) lt!2149350)) (= lambda!263929 lambda!263883))))

(assert (=> bs!1216722 (not (= lambda!263929 lambda!263812))))

(declare-fun bs!1216727 () Bool)

(assert (= bs!1216727 (and b!5245094 b!5244771)))

(assert (=> bs!1216727 (= (and (= (reg!15175 (regTwo!30205 lt!2149350)) (reg!15175 (regOne!30205 r!7292))) (= (regTwo!30205 lt!2149350) (regOne!30205 r!7292))) (= lambda!263929 lambda!263910))))

(assert (=> b!5245094 true))

(assert (=> b!5245094 true))

(declare-fun bs!1216728 () Bool)

(declare-fun b!5245084 () Bool)

(assert (= bs!1216728 (and b!5245084 b!5244075)))

(declare-fun lambda!263930 () Int)

(assert (=> bs!1216728 (not (= lambda!263930 lambda!263862))))

(declare-fun bs!1216729 () Bool)

(assert (= bs!1216729 (and b!5245084 b!5245094)))

(assert (=> bs!1216729 (not (= lambda!263930 lambda!263929))))

(declare-fun bs!1216730 () Bool)

(assert (= bs!1216730 (and b!5245084 b!5244910)))

(assert (=> bs!1216730 (= (and (= (regOne!30204 (regTwo!30205 lt!2149350)) (regOne!30204 (regOne!30205 lt!2149381))) (= (regTwo!30204 (regTwo!30205 lt!2149350)) (regTwo!30204 (regOne!30205 lt!2149381)))) (= lambda!263930 lambda!263919))))

(declare-fun bs!1216731 () Bool)

(assert (= bs!1216731 (and b!5245084 b!5244682)))

(assert (=> bs!1216731 (= (and (= (regOne!30204 (regTwo!30205 lt!2149350)) (regOne!30204 (regOne!30205 lt!2149350))) (= (regTwo!30204 (regTwo!30205 lt!2149350)) (regTwo!30204 (regOne!30205 lt!2149350)))) (= lambda!263930 lambda!263903))))

(declare-fun bs!1216732 () Bool)

(assert (= bs!1216732 (and b!5245084 b!5244920)))

(assert (=> bs!1216732 (not (= lambda!263930 lambda!263918))))

(declare-fun bs!1216733 () Bool)

(assert (= bs!1216733 (and b!5245084 b!5244403)))

(assert (=> bs!1216733 (= (and (= (regOne!30204 (regTwo!30205 lt!2149350)) (regOne!30204 lt!2149350)) (= (regTwo!30204 (regTwo!30205 lt!2149350)) (regTwo!30204 lt!2149350))) (= lambda!263930 lambda!263886))))

(declare-fun bs!1216734 () Bool)

(assert (= bs!1216734 (and b!5245084 b!5244317)))

(assert (=> bs!1216734 (= (and (= (regOne!30204 (regTwo!30205 lt!2149350)) (regOne!30204 lt!2149381)) (= (regTwo!30204 (regTwo!30205 lt!2149350)) (regTwo!30204 lt!2149381))) (= lambda!263930 lambda!263880))))

(declare-fun bs!1216735 () Bool)

(assert (= bs!1216735 (and b!5245084 d!1689441)))

(assert (=> bs!1216735 (not (= lambda!263930 lambda!263856))))

(declare-fun bs!1216736 () Bool)

(assert (= bs!1216736 (and b!5245084 b!5244327)))

(assert (=> bs!1216736 (not (= lambda!263930 lambda!263879))))

(declare-fun bs!1216737 () Bool)

(assert (= bs!1216737 (and b!5245084 b!5244692)))

(assert (=> bs!1216737 (not (= lambda!263930 lambda!263902))))

(declare-fun bs!1216738 () Bool)

(assert (= bs!1216738 (and b!5245084 b!5243550)))

(assert (=> bs!1216738 (= (and (= (regOne!30204 (regTwo!30205 lt!2149350)) (regOne!30204 r!7292)) (= (regTwo!30204 (regTwo!30205 lt!2149350)) (regTwo!30204 r!7292))) (= lambda!263930 lambda!263813))))

(declare-fun bs!1216739 () Bool)

(assert (= bs!1216739 (and b!5245084 b!5244065)))

(assert (=> bs!1216739 (= (and (= (regOne!30204 (regTwo!30205 lt!2149350)) (regOne!30204 r!7292)) (= (regTwo!30204 (regTwo!30205 lt!2149350)) (regTwo!30204 r!7292))) (= lambda!263930 lambda!263863))))

(declare-fun bs!1216740 () Bool)

(assert (= bs!1216740 (and b!5245084 b!5244761)))

(assert (=> bs!1216740 (= (and (= (regOne!30204 (regTwo!30205 lt!2149350)) (regOne!30204 (regOne!30205 r!7292))) (= (regTwo!30204 (regTwo!30205 lt!2149350)) (regTwo!30204 (regOne!30205 r!7292)))) (= lambda!263930 lambda!263911))))

(declare-fun bs!1216741 () Bool)

(assert (= bs!1216741 (and b!5245084 d!1689431)))

(assert (=> bs!1216741 (not (= lambda!263930 lambda!263851))))

(assert (=> bs!1216735 (= (and (= (regOne!30204 (regTwo!30205 lt!2149350)) (regOne!30204 r!7292)) (= (regTwo!30204 (regTwo!30205 lt!2149350)) (regTwo!30204 r!7292))) (= lambda!263930 lambda!263857))))

(declare-fun bs!1216742 () Bool)

(assert (= bs!1216742 (and b!5245084 b!5244413)))

(assert (=> bs!1216742 (not (= lambda!263930 lambda!263883))))

(assert (=> bs!1216738 (not (= lambda!263930 lambda!263812))))

(declare-fun bs!1216743 () Bool)

(assert (= bs!1216743 (and b!5245084 b!5244771)))

(assert (=> bs!1216743 (not (= lambda!263930 lambda!263910))))

(assert (=> b!5245084 true))

(assert (=> b!5245084 true))

(declare-fun e!3263418 () Bool)

(declare-fun call!371469 () Bool)

(assert (=> b!5245084 (= e!3263418 call!371469)))

(declare-fun b!5245085 () Bool)

(declare-fun e!3263420 () Bool)

(declare-fun e!3263416 () Bool)

(assert (=> b!5245085 (= e!3263420 e!3263416)))

(declare-fun res!2225933 () Bool)

(assert (=> b!5245085 (= res!2225933 (matchRSpec!1949 (regOne!30205 (regTwo!30205 lt!2149350)) s!2326))))

(assert (=> b!5245085 (=> res!2225933 e!3263416)))

(declare-fun b!5245086 () Bool)

(declare-fun e!3263421 () Bool)

(declare-fun e!3263417 () Bool)

(assert (=> b!5245086 (= e!3263421 e!3263417)))

(declare-fun res!2225932 () Bool)

(assert (=> b!5245086 (= res!2225932 (not (is-EmptyLang!14846 (regTwo!30205 lt!2149350))))))

(assert (=> b!5245086 (=> (not res!2225932) (not e!3263417))))

(declare-fun bm!371464 () Bool)

(declare-fun call!371470 () Bool)

(assert (=> bm!371464 (= call!371470 (isEmpty!32653 s!2326))))

(declare-fun bm!371465 () Bool)

(declare-fun c!906940 () Bool)

(assert (=> bm!371465 (= call!371469 (Exists!2027 (ite c!906940 lambda!263929 lambda!263930)))))

(declare-fun b!5245087 () Bool)

(declare-fun res!2225934 () Bool)

(declare-fun e!3263415 () Bool)

(assert (=> b!5245087 (=> res!2225934 e!3263415)))

(assert (=> b!5245087 (= res!2225934 call!371470)))

(assert (=> b!5245087 (= e!3263418 e!3263415)))

(declare-fun b!5245088 () Bool)

(assert (=> b!5245088 (= e!3263421 call!371470)))

(declare-fun d!1689889 () Bool)

(declare-fun c!906941 () Bool)

(assert (=> d!1689889 (= c!906941 (is-EmptyExpr!14846 (regTwo!30205 lt!2149350)))))

(assert (=> d!1689889 (= (matchRSpec!1949 (regTwo!30205 lt!2149350) s!2326) e!3263421)))

(declare-fun b!5245089 () Bool)

(declare-fun c!906942 () Bool)

(assert (=> b!5245089 (= c!906942 (is-ElementMatch!14846 (regTwo!30205 lt!2149350)))))

(declare-fun e!3263419 () Bool)

(assert (=> b!5245089 (= e!3263417 e!3263419)))

(declare-fun b!5245090 () Bool)

(assert (=> b!5245090 (= e!3263419 (= s!2326 (Cons!60715 (c!906500 (regTwo!30205 lt!2149350)) Nil!60715)))))

(declare-fun b!5245091 () Bool)

(assert (=> b!5245091 (= e!3263420 e!3263418)))

(assert (=> b!5245091 (= c!906940 (is-Star!14846 (regTwo!30205 lt!2149350)))))

(declare-fun b!5245092 () Bool)

(declare-fun c!906943 () Bool)

(assert (=> b!5245092 (= c!906943 (is-Union!14846 (regTwo!30205 lt!2149350)))))

(assert (=> b!5245092 (= e!3263419 e!3263420)))

(declare-fun b!5245093 () Bool)

(assert (=> b!5245093 (= e!3263416 (matchRSpec!1949 (regTwo!30205 (regTwo!30205 lt!2149350)) s!2326))))

(assert (=> b!5245094 (= e!3263415 call!371469)))

(assert (= (and d!1689889 c!906941) b!5245088))

(assert (= (and d!1689889 (not c!906941)) b!5245086))

(assert (= (and b!5245086 res!2225932) b!5245089))

(assert (= (and b!5245089 c!906942) b!5245090))

(assert (= (and b!5245089 (not c!906942)) b!5245092))

(assert (= (and b!5245092 c!906943) b!5245085))

(assert (= (and b!5245092 (not c!906943)) b!5245091))

(assert (= (and b!5245085 (not res!2225933)) b!5245093))

(assert (= (and b!5245091 c!906940) b!5245087))

(assert (= (and b!5245091 (not c!906940)) b!5245084))

(assert (= (and b!5245087 (not res!2225934)) b!5245094))

(assert (= (or b!5245094 b!5245084) bm!371465))

(assert (= (or b!5245088 b!5245087) bm!371464))

(declare-fun m!6289058 () Bool)

(assert (=> b!5245085 m!6289058))

(assert (=> bm!371464 m!6288058))

(declare-fun m!6289060 () Bool)

(assert (=> bm!371465 m!6289060))

(declare-fun m!6289062 () Bool)

(assert (=> b!5245093 m!6289062))

(assert (=> b!5244412 d!1689889))

(declare-fun d!1689891 () Bool)

(assert (=> d!1689891 (= (isEmptyLang!805 lt!2149600) (is-EmptyLang!14846 lt!2149600))))

(assert (=> b!5244301 d!1689891))

(declare-fun d!1689893 () Bool)

(assert (=> d!1689893 (= (nullable!5015 (h!67161 (exprs!4730 lt!2149388))) (nullableFct!1413 (h!67161 (exprs!4730 lt!2149388))))))

(declare-fun bs!1216744 () Bool)

(assert (= bs!1216744 d!1689893))

(declare-fun m!6289064 () Bool)

(assert (=> bs!1216744 m!6289064))

(assert (=> b!5244212 d!1689893))

(declare-fun d!1689895 () Bool)

(assert (=> d!1689895 true))

(assert (=> d!1689895 true))

(declare-fun res!2225937 () Bool)

(assert (=> d!1689895 (= (choose!39052 lambda!263813) res!2225937)))

(assert (=> d!1689429 d!1689895))

(declare-fun d!1689897 () Bool)

(declare-fun c!906944 () Bool)

(assert (=> d!1689897 (= c!906944 (isEmpty!32653 (tail!10337 (t!374020 s!2326))))))

(declare-fun e!3263422 () Bool)

(assert (=> d!1689897 (= (matchZipper!1090 (derivationStepZipper!1105 lt!2149380 (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))) e!3263422)))

(declare-fun b!5245095 () Bool)

(assert (=> b!5245095 (= e!3263422 (nullableZipper!1261 (derivationStepZipper!1105 lt!2149380 (head!11240 (t!374020 s!2326)))))))

(declare-fun b!5245096 () Bool)

(assert (=> b!5245096 (= e!3263422 (matchZipper!1090 (derivationStepZipper!1105 (derivationStepZipper!1105 lt!2149380 (head!11240 (t!374020 s!2326))) (head!11240 (tail!10337 (t!374020 s!2326)))) (tail!10337 (tail!10337 (t!374020 s!2326)))))))

(assert (= (and d!1689897 c!906944) b!5245095))

(assert (= (and d!1689897 (not c!906944)) b!5245096))

(assert (=> d!1689897 m!6287844))

(assert (=> d!1689897 m!6288696))

(assert (=> b!5245095 m!6287842))

(declare-fun m!6289066 () Bool)

(assert (=> b!5245095 m!6289066))

(assert (=> b!5245096 m!6287844))

(assert (=> b!5245096 m!6288700))

(assert (=> b!5245096 m!6287842))

(assert (=> b!5245096 m!6288700))

(declare-fun m!6289068 () Bool)

(assert (=> b!5245096 m!6289068))

(assert (=> b!5245096 m!6287844))

(assert (=> b!5245096 m!6288704))

(assert (=> b!5245096 m!6289068))

(assert (=> b!5245096 m!6288704))

(declare-fun m!6289070 () Bool)

(assert (=> b!5245096 m!6289070))

(assert (=> b!5243723 d!1689897))

(declare-fun bs!1216745 () Bool)

(declare-fun d!1689899 () Bool)

(assert (= bs!1216745 (and d!1689899 d!1689725)))

(declare-fun lambda!263931 () Int)

(assert (=> bs!1216745 (= lambda!263931 lambda!263912)))

(declare-fun bs!1216746 () Bool)

(assert (= bs!1216746 (and d!1689899 d!1689687)))

(assert (=> bs!1216746 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263931 lambda!263906))))

(declare-fun bs!1216747 () Bool)

(assert (= bs!1216747 (and d!1689899 d!1689831)))

(assert (=> bs!1216747 (= lambda!263931 lambda!263922)))

(declare-fun bs!1216748 () Bool)

(assert (= bs!1216748 (and d!1689899 d!1689815)))

(assert (=> bs!1216748 (= lambda!263931 lambda!263921)))

(declare-fun bs!1216749 () Bool)

(assert (= bs!1216749 (and d!1689899 b!5243551)))

(assert (=> bs!1216749 (= (= (head!11240 (t!374020 s!2326)) (h!67163 s!2326)) (= lambda!263931 lambda!263814))))

(declare-fun bs!1216750 () Bool)

(assert (= bs!1216750 (and d!1689899 d!1689763)))

(assert (=> bs!1216750 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263931 lambda!263915))))

(declare-fun bs!1216751 () Bool)

(assert (= bs!1216751 (and d!1689899 d!1689733)))

(assert (=> bs!1216751 (= lambda!263931 lambda!263913)))

(declare-fun bs!1216752 () Bool)

(assert (= bs!1216752 (and d!1689899 d!1689851)))

(assert (=> bs!1216752 (= lambda!263931 lambda!263925)))

(assert (=> d!1689899 true))

(assert (=> d!1689899 (= (derivationStepZipper!1105 lt!2149380 (head!11240 (t!374020 s!2326))) (flatMap!573 lt!2149380 lambda!263931))))

(declare-fun bs!1216753 () Bool)

(assert (= bs!1216753 d!1689899))

(declare-fun m!6289072 () Bool)

(assert (=> bs!1216753 m!6289072))

(assert (=> b!5243723 d!1689899))

(assert (=> b!5243723 d!1689727))

(assert (=> b!5243723 d!1689729))

(assert (=> d!1689421 d!1689791))

(declare-fun b!5245097 () Bool)

(declare-fun res!2225938 () Bool)

(declare-fun e!3263424 () Bool)

(assert (=> b!5245097 (=> res!2225938 e!3263424)))

(declare-fun e!3263426 () Bool)

(assert (=> b!5245097 (= res!2225938 e!3263426)))

(declare-fun res!2225942 () Bool)

(assert (=> b!5245097 (=> (not res!2225942) (not e!3263426))))

(declare-fun lt!2149685 () Bool)

(assert (=> b!5245097 (= res!2225942 lt!2149685)))

(declare-fun b!5245098 () Bool)

(declare-fun e!3263427 () Bool)

(assert (=> b!5245098 (= e!3263427 (not lt!2149685))))

(declare-fun b!5245099 () Bool)

(declare-fun e!3263428 () Bool)

(assert (=> b!5245099 (= e!3263424 e!3263428)))

(declare-fun res!2225945 () Bool)

(assert (=> b!5245099 (=> (not res!2225945) (not e!3263428))))

(assert (=> b!5245099 (= res!2225945 (not lt!2149685))))

(declare-fun b!5245100 () Bool)

(declare-fun e!3263423 () Bool)

(assert (=> b!5245100 (= e!3263423 (not (= (head!11240 Nil!60715) (c!906500 (regOne!30204 r!7292)))))))

(declare-fun b!5245101 () Bool)

(declare-fun res!2225939 () Bool)

(assert (=> b!5245101 (=> (not res!2225939) (not e!3263426))))

(assert (=> b!5245101 (= res!2225939 (isEmpty!32653 (tail!10337 Nil!60715)))))

(declare-fun b!5245102 () Bool)

(declare-fun res!2225944 () Bool)

(assert (=> b!5245102 (=> res!2225944 e!3263423)))

(assert (=> b!5245102 (= res!2225944 (not (isEmpty!32653 (tail!10337 Nil!60715))))))

(declare-fun b!5245103 () Bool)

(assert (=> b!5245103 (= e!3263428 e!3263423)))

(declare-fun res!2225940 () Bool)

(assert (=> b!5245103 (=> res!2225940 e!3263423)))

(declare-fun call!371471 () Bool)

(assert (=> b!5245103 (= res!2225940 call!371471)))

(declare-fun b!5245104 () Bool)

(declare-fun e!3263425 () Bool)

(assert (=> b!5245104 (= e!3263425 e!3263427)))

(declare-fun c!906945 () Bool)

(assert (=> b!5245104 (= c!906945 (is-EmptyLang!14846 (regOne!30204 r!7292)))))

(declare-fun b!5245105 () Bool)

(assert (=> b!5245105 (= e!3263425 (= lt!2149685 call!371471))))

(declare-fun b!5245106 () Bool)

(declare-fun e!3263429 () Bool)

(assert (=> b!5245106 (= e!3263429 (nullable!5015 (regOne!30204 r!7292)))))

(declare-fun b!5245107 () Bool)

(assert (=> b!5245107 (= e!3263429 (matchR!7031 (derivativeStep!4083 (regOne!30204 r!7292) (head!11240 Nil!60715)) (tail!10337 Nil!60715)))))

(declare-fun d!1689901 () Bool)

(assert (=> d!1689901 e!3263425))

(declare-fun c!906947 () Bool)

(assert (=> d!1689901 (= c!906947 (is-EmptyExpr!14846 (regOne!30204 r!7292)))))

(assert (=> d!1689901 (= lt!2149685 e!3263429)))

(declare-fun c!906946 () Bool)

(assert (=> d!1689901 (= c!906946 (isEmpty!32653 Nil!60715))))

(assert (=> d!1689901 (validRegex!6582 (regOne!30204 r!7292))))

(assert (=> d!1689901 (= (matchR!7031 (regOne!30204 r!7292) Nil!60715) lt!2149685)))

(declare-fun b!5245108 () Bool)

(assert (=> b!5245108 (= e!3263426 (= (head!11240 Nil!60715) (c!906500 (regOne!30204 r!7292))))))

(declare-fun b!5245109 () Bool)

(declare-fun res!2225943 () Bool)

(assert (=> b!5245109 (=> res!2225943 e!3263424)))

(assert (=> b!5245109 (= res!2225943 (not (is-ElementMatch!14846 (regOne!30204 r!7292))))))

(assert (=> b!5245109 (= e!3263427 e!3263424)))

(declare-fun b!5245110 () Bool)

(declare-fun res!2225941 () Bool)

(assert (=> b!5245110 (=> (not res!2225941) (not e!3263426))))

(assert (=> b!5245110 (= res!2225941 (not call!371471))))

(declare-fun bm!371466 () Bool)

(assert (=> bm!371466 (= call!371471 (isEmpty!32653 Nil!60715))))

(assert (= (and d!1689901 c!906946) b!5245106))

(assert (= (and d!1689901 (not c!906946)) b!5245107))

(assert (= (and d!1689901 c!906947) b!5245105))

(assert (= (and d!1689901 (not c!906947)) b!5245104))

(assert (= (and b!5245104 c!906945) b!5245098))

(assert (= (and b!5245104 (not c!906945)) b!5245109))

(assert (= (and b!5245109 (not res!2225943)) b!5245097))

(assert (= (and b!5245097 res!2225942) b!5245110))

(assert (= (and b!5245110 res!2225941) b!5245101))

(assert (= (and b!5245101 res!2225939) b!5245108))

(assert (= (and b!5245097 (not res!2225938)) b!5245099))

(assert (= (and b!5245099 res!2225945) b!5245103))

(assert (= (and b!5245103 (not res!2225940)) b!5245102))

(assert (= (and b!5245102 (not res!2225944)) b!5245100))

(assert (= (or b!5245105 b!5245110 b!5245103) bm!371466))

(declare-fun m!6289074 () Bool)

(assert (=> b!5245102 m!6289074))

(assert (=> b!5245102 m!6289074))

(declare-fun m!6289076 () Bool)

(assert (=> b!5245102 m!6289076))

(assert (=> b!5245101 m!6289074))

(assert (=> b!5245101 m!6289074))

(assert (=> b!5245101 m!6289076))

(declare-fun m!6289078 () Bool)

(assert (=> b!5245107 m!6289078))

(assert (=> b!5245107 m!6289078))

(declare-fun m!6289080 () Bool)

(assert (=> b!5245107 m!6289080))

(assert (=> b!5245107 m!6289074))

(assert (=> b!5245107 m!6289080))

(assert (=> b!5245107 m!6289074))

(declare-fun m!6289082 () Bool)

(assert (=> b!5245107 m!6289082))

(assert (=> b!5245100 m!6289078))

(declare-fun m!6289084 () Bool)

(assert (=> d!1689901 m!6289084))

(assert (=> d!1689901 m!6287948))

(assert (=> b!5245108 m!6289078))

(assert (=> bm!371466 m!6289084))

(assert (=> b!5245106 m!6288786))

(assert (=> d!1689421 d!1689901))

(declare-fun c!906949 () Bool)

(declare-fun call!371474 () Bool)

(declare-fun bm!371467 () Bool)

(declare-fun c!906948 () Bool)

(assert (=> bm!371467 (= call!371474 (validRegex!6582 (ite c!906949 (reg!15175 (regOne!30204 r!7292)) (ite c!906948 (regOne!30205 (regOne!30204 r!7292)) (regOne!30204 (regOne!30204 r!7292))))))))

(declare-fun b!5245111 () Bool)

(declare-fun e!3263433 () Bool)

(declare-fun e!3263435 () Bool)

(assert (=> b!5245111 (= e!3263433 e!3263435)))

(assert (=> b!5245111 (= c!906948 (is-Union!14846 (regOne!30204 r!7292)))))

(declare-fun b!5245112 () Bool)

(declare-fun e!3263434 () Bool)

(assert (=> b!5245112 (= e!3263434 e!3263433)))

(assert (=> b!5245112 (= c!906949 (is-Star!14846 (regOne!30204 r!7292)))))

(declare-fun b!5245113 () Bool)

(declare-fun res!2225948 () Bool)

(declare-fun e!3263436 () Bool)

(assert (=> b!5245113 (=> (not res!2225948) (not e!3263436))))

(declare-fun call!371472 () Bool)

(assert (=> b!5245113 (= res!2225948 call!371472)))

(assert (=> b!5245113 (= e!3263435 e!3263436)))

(declare-fun bm!371468 () Bool)

(declare-fun call!371473 () Bool)

(assert (=> bm!371468 (= call!371473 (validRegex!6582 (ite c!906948 (regTwo!30205 (regOne!30204 r!7292)) (regTwo!30204 (regOne!30204 r!7292)))))))

(declare-fun bm!371469 () Bool)

(assert (=> bm!371469 (= call!371472 call!371474)))

(declare-fun b!5245114 () Bool)

(declare-fun e!3263432 () Bool)

(assert (=> b!5245114 (= e!3263433 e!3263432)))

(declare-fun res!2225949 () Bool)

(assert (=> b!5245114 (= res!2225949 (not (nullable!5015 (reg!15175 (regOne!30204 r!7292)))))))

(assert (=> b!5245114 (=> (not res!2225949) (not e!3263432))))

(declare-fun b!5245115 () Bool)

(declare-fun e!3263431 () Bool)

(assert (=> b!5245115 (= e!3263431 call!371473)))

(declare-fun b!5245116 () Bool)

(declare-fun res!2225947 () Bool)

(declare-fun e!3263430 () Bool)

(assert (=> b!5245116 (=> res!2225947 e!3263430)))

(assert (=> b!5245116 (= res!2225947 (not (is-Concat!23691 (regOne!30204 r!7292))))))

(assert (=> b!5245116 (= e!3263435 e!3263430)))

(declare-fun b!5245118 () Bool)

(assert (=> b!5245118 (= e!3263432 call!371474)))

(declare-fun b!5245119 () Bool)

(assert (=> b!5245119 (= e!3263436 call!371473)))

(declare-fun b!5245117 () Bool)

(assert (=> b!5245117 (= e!3263430 e!3263431)))

(declare-fun res!2225950 () Bool)

(assert (=> b!5245117 (=> (not res!2225950) (not e!3263431))))

(assert (=> b!5245117 (= res!2225950 call!371472)))

(declare-fun d!1689903 () Bool)

(declare-fun res!2225946 () Bool)

(assert (=> d!1689903 (=> res!2225946 e!3263434)))

(assert (=> d!1689903 (= res!2225946 (is-ElementMatch!14846 (regOne!30204 r!7292)))))

(assert (=> d!1689903 (= (validRegex!6582 (regOne!30204 r!7292)) e!3263434)))

(assert (= (and d!1689903 (not res!2225946)) b!5245112))

(assert (= (and b!5245112 c!906949) b!5245114))

(assert (= (and b!5245112 (not c!906949)) b!5245111))

(assert (= (and b!5245114 res!2225949) b!5245118))

(assert (= (and b!5245111 c!906948) b!5245113))

(assert (= (and b!5245111 (not c!906948)) b!5245116))

(assert (= (and b!5245113 res!2225948) b!5245119))

(assert (= (and b!5245116 (not res!2225947)) b!5245117))

(assert (= (and b!5245117 res!2225950) b!5245115))

(assert (= (or b!5245119 b!5245115) bm!371468))

(assert (= (or b!5245113 b!5245117) bm!371469))

(assert (= (or b!5245118 bm!371469) bm!371467))

(declare-fun m!6289086 () Bool)

(assert (=> bm!371467 m!6289086))

(declare-fun m!6289088 () Bool)

(assert (=> bm!371468 m!6289088))

(declare-fun m!6289090 () Bool)

(assert (=> b!5245114 m!6289090))

(assert (=> d!1689421 d!1689903))

(assert (=> b!5244128 d!1689701))

(assert (=> b!5244128 d!1689691))

(declare-fun d!1689905 () Bool)

(assert (=> d!1689905 (= (head!11241 (exprs!4730 (h!67162 zl!343))) (h!67161 (exprs!4730 (h!67162 zl!343))))))

(assert (=> b!5243758 d!1689905))

(declare-fun b!5245120 () Bool)

(declare-fun c!906954 () Bool)

(declare-fun e!3263441 () Bool)

(assert (=> b!5245120 (= c!906954 e!3263441)))

(declare-fun res!2225951 () Bool)

(assert (=> b!5245120 (=> (not res!2225951) (not e!3263441))))

(assert (=> b!5245120 (= res!2225951 (is-Concat!23691 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292))))))))

(declare-fun e!3263437 () (Set Context!8460))

(declare-fun e!3263442 () (Set Context!8460))

(assert (=> b!5245120 (= e!3263437 e!3263442)))

(declare-fun b!5245121 () Bool)

(declare-fun e!3263440 () (Set Context!8460))

(declare-fun call!371479 () (Set Context!8460))

(assert (=> b!5245121 (= e!3263440 call!371479)))

(declare-fun bm!371470 () Bool)

(declare-fun call!371480 () (Set Context!8460))

(declare-fun call!371478 () (Set Context!8460))

(assert (=> bm!371470 (= call!371480 call!371478)))

(declare-fun b!5245122 () Bool)

(declare-fun call!371475 () (Set Context!8460))

(assert (=> b!5245122 (= e!3263442 (set.union call!371475 call!371480))))

(declare-fun b!5245123 () Bool)

(assert (=> b!5245123 (= e!3263440 (as set.empty (Set Context!8460)))))

(declare-fun bm!371471 () Bool)

(declare-fun c!906950 () Bool)

(declare-fun c!906951 () Bool)

(declare-fun call!371477 () List!60837)

(assert (=> bm!371471 (= call!371478 (derivationStepZipperDown!294 (ite c!906950 (regOne!30205 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292))))) (ite c!906954 (regTwo!30204 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292))))) (ite c!906951 (regOne!30204 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292))))) (reg!15175 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292)))))))) (ite (or c!906950 c!906954) (ite c!906558 lt!2149388 (Context!8461 call!371276)) (Context!8461 call!371477)) (h!67163 s!2326)))))

(declare-fun b!5245124 () Bool)

(assert (=> b!5245124 (= e!3263437 (set.union call!371478 call!371475))))

(declare-fun b!5245125 () Bool)

(declare-fun e!3263438 () (Set Context!8460))

(assert (=> b!5245125 (= e!3263438 call!371479)))

(declare-fun c!906953 () Bool)

(declare-fun d!1689907 () Bool)

(assert (=> d!1689907 (= c!906953 (and (is-ElementMatch!14846 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292))))) (= (c!906500 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292))))) (h!67163 s!2326))))))

(declare-fun e!3263439 () (Set Context!8460))

(assert (=> d!1689907 (= (derivationStepZipperDown!294 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292)))) (ite c!906558 lt!2149388 (Context!8461 call!371276)) (h!67163 s!2326)) e!3263439)))

(declare-fun b!5245126 () Bool)

(declare-fun c!906952 () Bool)

(assert (=> b!5245126 (= c!906952 (is-Star!14846 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292))))))))

(assert (=> b!5245126 (= e!3263438 e!3263440)))

(declare-fun bm!371472 () Bool)

(declare-fun call!371476 () List!60837)

(assert (=> bm!371472 (= call!371476 ($colon$colon!1311 (exprs!4730 (ite c!906558 lt!2149388 (Context!8461 call!371276))) (ite (or c!906954 c!906951) (regTwo!30204 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292))))) (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292)))))))))

(declare-fun b!5245127 () Bool)

(assert (=> b!5245127 (= e!3263439 e!3263437)))

(assert (=> b!5245127 (= c!906950 (is-Union!14846 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292))))))))

(declare-fun bm!371473 () Bool)

(assert (=> bm!371473 (= call!371479 call!371480)))

(declare-fun bm!371474 () Bool)

(assert (=> bm!371474 (= call!371475 (derivationStepZipperDown!294 (ite c!906950 (regTwo!30205 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292))))) (regOne!30204 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292)))))) (ite c!906950 (ite c!906558 lt!2149388 (Context!8461 call!371276)) (Context!8461 call!371476)) (h!67163 s!2326)))))

(declare-fun b!5245128 () Bool)

(assert (=> b!5245128 (= e!3263439 (set.insert (ite c!906558 lt!2149388 (Context!8461 call!371276)) (as set.empty (Set Context!8460))))))

(declare-fun b!5245129 () Bool)

(assert (=> b!5245129 (= e!3263441 (nullable!5015 (regOne!30204 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292)))))))))

(declare-fun b!5245130 () Bool)

(assert (=> b!5245130 (= e!3263442 e!3263438)))

(assert (=> b!5245130 (= c!906951 (is-Concat!23691 (ite c!906558 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292))))))))

(declare-fun bm!371475 () Bool)

(assert (=> bm!371475 (= call!371477 call!371476)))

(assert (= (and d!1689907 c!906953) b!5245128))

(assert (= (and d!1689907 (not c!906953)) b!5245127))

(assert (= (and b!5245127 c!906950) b!5245124))

(assert (= (and b!5245127 (not c!906950)) b!5245120))

(assert (= (and b!5245120 res!2225951) b!5245129))

(assert (= (and b!5245120 c!906954) b!5245122))

(assert (= (and b!5245120 (not c!906954)) b!5245130))

(assert (= (and b!5245130 c!906951) b!5245125))

(assert (= (and b!5245130 (not c!906951)) b!5245126))

(assert (= (and b!5245126 c!906952) b!5245121))

(assert (= (and b!5245126 (not c!906952)) b!5245123))

(assert (= (or b!5245125 b!5245121) bm!371475))

(assert (= (or b!5245125 b!5245121) bm!371473))

(assert (= (or b!5245122 bm!371475) bm!371472))

(assert (= (or b!5245122 bm!371473) bm!371470))

(assert (= (or b!5245124 b!5245122) bm!371474))

(assert (= (or b!5245124 bm!371470) bm!371471))

(declare-fun m!6289092 () Bool)

(assert (=> bm!371471 m!6289092))

(declare-fun m!6289094 () Bool)

(assert (=> bm!371474 m!6289094))

(declare-fun m!6289096 () Bool)

(assert (=> b!5245128 m!6289096))

(declare-fun m!6289098 () Bool)

(assert (=> bm!371472 m!6289098))

(declare-fun m!6289100 () Bool)

(assert (=> b!5245129 m!6289100))

(assert (=> bm!371274 d!1689907))

(assert (=> d!1689533 d!1689535))

(assert (=> d!1689533 d!1689569))

(declare-fun d!1689909 () Bool)

(declare-fun e!3263443 () Bool)

(assert (=> d!1689909 (= (matchZipper!1090 (set.union lt!2149359 lt!2149380) (t!374020 s!2326)) e!3263443)))

(declare-fun res!2225952 () Bool)

(assert (=> d!1689909 (=> res!2225952 e!3263443)))

(assert (=> d!1689909 (= res!2225952 (matchZipper!1090 lt!2149359 (t!374020 s!2326)))))

(assert (=> d!1689909 true))

(declare-fun _$48!882 () Unit!152782)

(assert (=> d!1689909 (= (choose!39049 lt!2149359 lt!2149380 (t!374020 s!2326)) _$48!882)))

(declare-fun b!5245131 () Bool)

(assert (=> b!5245131 (= e!3263443 (matchZipper!1090 lt!2149380 (t!374020 s!2326)))))

(assert (= (and d!1689909 (not res!2225952)) b!5245131))

(assert (=> d!1689909 m!6287654))

(assert (=> d!1689909 m!6287646))

(assert (=> b!5245131 m!6287574))

(assert (=> d!1689533 d!1689909))

(declare-fun d!1689911 () Bool)

(assert (=> d!1689911 (= (nullable!5015 (h!67161 (exprs!4730 lt!2149386))) (nullableFct!1413 (h!67161 (exprs!4730 lt!2149386))))))

(declare-fun bs!1216754 () Bool)

(assert (= bs!1216754 d!1689911))

(declare-fun m!6289102 () Bool)

(assert (=> bs!1216754 m!6289102))

(assert (=> b!5244468 d!1689911))

(declare-fun bs!1216755 () Bool)

(declare-fun b!5245142 () Bool)

(assert (= bs!1216755 (and b!5245142 b!5244075)))

(declare-fun lambda!263932 () Int)

(assert (=> bs!1216755 (= (and (= (reg!15175 (regTwo!30205 r!7292)) (reg!15175 r!7292)) (= (regTwo!30205 r!7292) r!7292)) (= lambda!263932 lambda!263862))))

(declare-fun bs!1216756 () Bool)

(assert (= bs!1216756 (and b!5245142 b!5245094)))

(assert (=> bs!1216756 (= (and (= (reg!15175 (regTwo!30205 r!7292)) (reg!15175 (regTwo!30205 lt!2149350))) (= (regTwo!30205 r!7292) (regTwo!30205 lt!2149350))) (= lambda!263932 lambda!263929))))

(declare-fun bs!1216757 () Bool)

(assert (= bs!1216757 (and b!5245142 b!5244910)))

(assert (=> bs!1216757 (not (= lambda!263932 lambda!263919))))

(declare-fun bs!1216758 () Bool)

(assert (= bs!1216758 (and b!5245142 b!5244920)))

(assert (=> bs!1216758 (= (and (= (reg!15175 (regTwo!30205 r!7292)) (reg!15175 (regOne!30205 lt!2149381))) (= (regTwo!30205 r!7292) (regOne!30205 lt!2149381))) (= lambda!263932 lambda!263918))))

(declare-fun bs!1216759 () Bool)

(assert (= bs!1216759 (and b!5245142 b!5244403)))

(assert (=> bs!1216759 (not (= lambda!263932 lambda!263886))))

(declare-fun bs!1216760 () Bool)

(assert (= bs!1216760 (and b!5245142 b!5244317)))

(assert (=> bs!1216760 (not (= lambda!263932 lambda!263880))))

(declare-fun bs!1216761 () Bool)

(assert (= bs!1216761 (and b!5245142 d!1689441)))

(assert (=> bs!1216761 (not (= lambda!263932 lambda!263856))))

(declare-fun bs!1216762 () Bool)

(assert (= bs!1216762 (and b!5245142 b!5244327)))

(assert (=> bs!1216762 (= (and (= (reg!15175 (regTwo!30205 r!7292)) (reg!15175 lt!2149381)) (= (regTwo!30205 r!7292) lt!2149381)) (= lambda!263932 lambda!263879))))

(declare-fun bs!1216763 () Bool)

(assert (= bs!1216763 (and b!5245142 b!5244692)))

(assert (=> bs!1216763 (= (and (= (reg!15175 (regTwo!30205 r!7292)) (reg!15175 (regOne!30205 lt!2149350))) (= (regTwo!30205 r!7292) (regOne!30205 lt!2149350))) (= lambda!263932 lambda!263902))))

(declare-fun bs!1216764 () Bool)

(assert (= bs!1216764 (and b!5245142 b!5243550)))

(assert (=> bs!1216764 (not (= lambda!263932 lambda!263813))))

(declare-fun bs!1216765 () Bool)

(assert (= bs!1216765 (and b!5245142 b!5244065)))

(assert (=> bs!1216765 (not (= lambda!263932 lambda!263863))))

(declare-fun bs!1216766 () Bool)

(assert (= bs!1216766 (and b!5245142 b!5244761)))

(assert (=> bs!1216766 (not (= lambda!263932 lambda!263911))))

(declare-fun bs!1216767 () Bool)

(assert (= bs!1216767 (and b!5245142 d!1689431)))

(assert (=> bs!1216767 (not (= lambda!263932 lambda!263851))))

(assert (=> bs!1216761 (not (= lambda!263932 lambda!263857))))

(declare-fun bs!1216768 () Bool)

(assert (= bs!1216768 (and b!5245142 b!5244682)))

(assert (=> bs!1216768 (not (= lambda!263932 lambda!263903))))

(declare-fun bs!1216769 () Bool)

(assert (= bs!1216769 (and b!5245142 b!5245084)))

(assert (=> bs!1216769 (not (= lambda!263932 lambda!263930))))

(declare-fun bs!1216770 () Bool)

(assert (= bs!1216770 (and b!5245142 b!5244413)))

(assert (=> bs!1216770 (= (and (= (reg!15175 (regTwo!30205 r!7292)) (reg!15175 lt!2149350)) (= (regTwo!30205 r!7292) lt!2149350)) (= lambda!263932 lambda!263883))))

(assert (=> bs!1216764 (not (= lambda!263932 lambda!263812))))

(declare-fun bs!1216771 () Bool)

(assert (= bs!1216771 (and b!5245142 b!5244771)))

(assert (=> bs!1216771 (= (and (= (reg!15175 (regTwo!30205 r!7292)) (reg!15175 (regOne!30205 r!7292))) (= (regTwo!30205 r!7292) (regOne!30205 r!7292))) (= lambda!263932 lambda!263910))))

(assert (=> b!5245142 true))

(assert (=> b!5245142 true))

(declare-fun bs!1216772 () Bool)

(declare-fun b!5245132 () Bool)

(assert (= bs!1216772 (and b!5245132 b!5244075)))

(declare-fun lambda!263933 () Int)

(assert (=> bs!1216772 (not (= lambda!263933 lambda!263862))))

(declare-fun bs!1216773 () Bool)

(assert (= bs!1216773 (and b!5245132 b!5245094)))

(assert (=> bs!1216773 (not (= lambda!263933 lambda!263929))))

(declare-fun bs!1216774 () Bool)

(assert (= bs!1216774 (and b!5245132 b!5244910)))

(assert (=> bs!1216774 (= (and (= (regOne!30204 (regTwo!30205 r!7292)) (regOne!30204 (regOne!30205 lt!2149381))) (= (regTwo!30204 (regTwo!30205 r!7292)) (regTwo!30204 (regOne!30205 lt!2149381)))) (= lambda!263933 lambda!263919))))

(declare-fun bs!1216775 () Bool)

(assert (= bs!1216775 (and b!5245132 b!5244920)))

(assert (=> bs!1216775 (not (= lambda!263933 lambda!263918))))

(declare-fun bs!1216776 () Bool)

(assert (= bs!1216776 (and b!5245132 b!5244403)))

(assert (=> bs!1216776 (= (and (= (regOne!30204 (regTwo!30205 r!7292)) (regOne!30204 lt!2149350)) (= (regTwo!30204 (regTwo!30205 r!7292)) (regTwo!30204 lt!2149350))) (= lambda!263933 lambda!263886))))

(declare-fun bs!1216777 () Bool)

(assert (= bs!1216777 (and b!5245132 b!5244317)))

(assert (=> bs!1216777 (= (and (= (regOne!30204 (regTwo!30205 r!7292)) (regOne!30204 lt!2149381)) (= (regTwo!30204 (regTwo!30205 r!7292)) (regTwo!30204 lt!2149381))) (= lambda!263933 lambda!263880))))

(declare-fun bs!1216778 () Bool)

(assert (= bs!1216778 (and b!5245132 d!1689441)))

(assert (=> bs!1216778 (not (= lambda!263933 lambda!263856))))

(declare-fun bs!1216779 () Bool)

(assert (= bs!1216779 (and b!5245132 b!5244327)))

(assert (=> bs!1216779 (not (= lambda!263933 lambda!263879))))

(declare-fun bs!1216780 () Bool)

(assert (= bs!1216780 (and b!5245132 b!5244692)))

(assert (=> bs!1216780 (not (= lambda!263933 lambda!263902))))

(declare-fun bs!1216781 () Bool)

(assert (= bs!1216781 (and b!5245132 b!5243550)))

(assert (=> bs!1216781 (= (and (= (regOne!30204 (regTwo!30205 r!7292)) (regOne!30204 r!7292)) (= (regTwo!30204 (regTwo!30205 r!7292)) (regTwo!30204 r!7292))) (= lambda!263933 lambda!263813))))

(declare-fun bs!1216782 () Bool)

(assert (= bs!1216782 (and b!5245132 b!5244761)))

(assert (=> bs!1216782 (= (and (= (regOne!30204 (regTwo!30205 r!7292)) (regOne!30204 (regOne!30205 r!7292))) (= (regTwo!30204 (regTwo!30205 r!7292)) (regTwo!30204 (regOne!30205 r!7292)))) (= lambda!263933 lambda!263911))))

(declare-fun bs!1216783 () Bool)

(assert (= bs!1216783 (and b!5245132 d!1689431)))

(assert (=> bs!1216783 (not (= lambda!263933 lambda!263851))))

(assert (=> bs!1216778 (= (and (= (regOne!30204 (regTwo!30205 r!7292)) (regOne!30204 r!7292)) (= (regTwo!30204 (regTwo!30205 r!7292)) (regTwo!30204 r!7292))) (= lambda!263933 lambda!263857))))

(declare-fun bs!1216784 () Bool)

(assert (= bs!1216784 (and b!5245132 b!5244682)))

(assert (=> bs!1216784 (= (and (= (regOne!30204 (regTwo!30205 r!7292)) (regOne!30204 (regOne!30205 lt!2149350))) (= (regTwo!30204 (regTwo!30205 r!7292)) (regTwo!30204 (regOne!30205 lt!2149350)))) (= lambda!263933 lambda!263903))))

(declare-fun bs!1216785 () Bool)

(assert (= bs!1216785 (and b!5245132 b!5245084)))

(assert (=> bs!1216785 (= (and (= (regOne!30204 (regTwo!30205 r!7292)) (regOne!30204 (regTwo!30205 lt!2149350))) (= (regTwo!30204 (regTwo!30205 r!7292)) (regTwo!30204 (regTwo!30205 lt!2149350)))) (= lambda!263933 lambda!263930))))

(declare-fun bs!1216786 () Bool)

(assert (= bs!1216786 (and b!5245132 b!5244065)))

(assert (=> bs!1216786 (= (and (= (regOne!30204 (regTwo!30205 r!7292)) (regOne!30204 r!7292)) (= (regTwo!30204 (regTwo!30205 r!7292)) (regTwo!30204 r!7292))) (= lambda!263933 lambda!263863))))

(declare-fun bs!1216787 () Bool)

(assert (= bs!1216787 (and b!5245132 b!5245142)))

(assert (=> bs!1216787 (not (= lambda!263933 lambda!263932))))

(declare-fun bs!1216788 () Bool)

(assert (= bs!1216788 (and b!5245132 b!5244413)))

(assert (=> bs!1216788 (not (= lambda!263933 lambda!263883))))

(assert (=> bs!1216781 (not (= lambda!263933 lambda!263812))))

(declare-fun bs!1216789 () Bool)

(assert (= bs!1216789 (and b!5245132 b!5244771)))

(assert (=> bs!1216789 (not (= lambda!263933 lambda!263910))))

(assert (=> b!5245132 true))

(assert (=> b!5245132 true))

(declare-fun e!3263447 () Bool)

(declare-fun call!371481 () Bool)

(assert (=> b!5245132 (= e!3263447 call!371481)))

(declare-fun b!5245133 () Bool)

(declare-fun e!3263449 () Bool)

(declare-fun e!3263445 () Bool)

(assert (=> b!5245133 (= e!3263449 e!3263445)))

(declare-fun res!2225954 () Bool)

(assert (=> b!5245133 (= res!2225954 (matchRSpec!1949 (regOne!30205 (regTwo!30205 r!7292)) s!2326))))

(assert (=> b!5245133 (=> res!2225954 e!3263445)))

(declare-fun b!5245134 () Bool)

(declare-fun e!3263450 () Bool)

(declare-fun e!3263446 () Bool)

(assert (=> b!5245134 (= e!3263450 e!3263446)))

(declare-fun res!2225953 () Bool)

(assert (=> b!5245134 (= res!2225953 (not (is-EmptyLang!14846 (regTwo!30205 r!7292))))))

(assert (=> b!5245134 (=> (not res!2225953) (not e!3263446))))

(declare-fun bm!371476 () Bool)

(declare-fun call!371482 () Bool)

(assert (=> bm!371476 (= call!371482 (isEmpty!32653 s!2326))))

(declare-fun bm!371477 () Bool)

(declare-fun c!906955 () Bool)

(assert (=> bm!371477 (= call!371481 (Exists!2027 (ite c!906955 lambda!263932 lambda!263933)))))

(declare-fun b!5245135 () Bool)

(declare-fun res!2225955 () Bool)

(declare-fun e!3263444 () Bool)

(assert (=> b!5245135 (=> res!2225955 e!3263444)))

(assert (=> b!5245135 (= res!2225955 call!371482)))

(assert (=> b!5245135 (= e!3263447 e!3263444)))

(declare-fun b!5245136 () Bool)

(assert (=> b!5245136 (= e!3263450 call!371482)))

(declare-fun d!1689913 () Bool)

(declare-fun c!906956 () Bool)

(assert (=> d!1689913 (= c!906956 (is-EmptyExpr!14846 (regTwo!30205 r!7292)))))

(assert (=> d!1689913 (= (matchRSpec!1949 (regTwo!30205 r!7292) s!2326) e!3263450)))

(declare-fun b!5245137 () Bool)

(declare-fun c!906957 () Bool)

(assert (=> b!5245137 (= c!906957 (is-ElementMatch!14846 (regTwo!30205 r!7292)))))

(declare-fun e!3263448 () Bool)

(assert (=> b!5245137 (= e!3263446 e!3263448)))

(declare-fun b!5245138 () Bool)

(assert (=> b!5245138 (= e!3263448 (= s!2326 (Cons!60715 (c!906500 (regTwo!30205 r!7292)) Nil!60715)))))

(declare-fun b!5245139 () Bool)

(assert (=> b!5245139 (= e!3263449 e!3263447)))

(assert (=> b!5245139 (= c!906955 (is-Star!14846 (regTwo!30205 r!7292)))))

(declare-fun b!5245140 () Bool)

(declare-fun c!906958 () Bool)

(assert (=> b!5245140 (= c!906958 (is-Union!14846 (regTwo!30205 r!7292)))))

(assert (=> b!5245140 (= e!3263448 e!3263449)))

(declare-fun b!5245141 () Bool)

(assert (=> b!5245141 (= e!3263445 (matchRSpec!1949 (regTwo!30205 (regTwo!30205 r!7292)) s!2326))))

(assert (=> b!5245142 (= e!3263444 call!371481)))

(assert (= (and d!1689913 c!906956) b!5245136))

(assert (= (and d!1689913 (not c!906956)) b!5245134))

(assert (= (and b!5245134 res!2225953) b!5245137))

(assert (= (and b!5245137 c!906957) b!5245138))

(assert (= (and b!5245137 (not c!906957)) b!5245140))

(assert (= (and b!5245140 c!906958) b!5245133))

(assert (= (and b!5245140 (not c!906958)) b!5245139))

(assert (= (and b!5245133 (not res!2225954)) b!5245141))

(assert (= (and b!5245139 c!906955) b!5245135))

(assert (= (and b!5245139 (not c!906955)) b!5245132))

(assert (= (and b!5245135 (not res!2225955)) b!5245142))

(assert (= (or b!5245142 b!5245132) bm!371477))

(assert (= (or b!5245136 b!5245135) bm!371476))

(declare-fun m!6289104 () Bool)

(assert (=> b!5245133 m!6289104))

(assert (=> bm!371476 m!6288058))

(declare-fun m!6289106 () Bool)

(assert (=> bm!371477 m!6289106))

(declare-fun m!6289108 () Bool)

(assert (=> b!5245141 m!6289108))

(assert (=> b!5244074 d!1689913))

(declare-fun d!1689915 () Bool)

(declare-fun res!2225960 () Bool)

(declare-fun e!3263455 () Bool)

(assert (=> d!1689915 (=> res!2225960 e!3263455)))

(assert (=> d!1689915 (= res!2225960 (is-Nil!60714 lt!2149642))))

(assert (=> d!1689915 (= (noDuplicate!1218 lt!2149642) e!3263455)))

(declare-fun b!5245147 () Bool)

(declare-fun e!3263456 () Bool)

(assert (=> b!5245147 (= e!3263455 e!3263456)))

(declare-fun res!2225961 () Bool)

(assert (=> b!5245147 (=> (not res!2225961) (not e!3263456))))

(declare-fun contains!19682 (List!60838 Context!8460) Bool)

(assert (=> b!5245147 (= res!2225961 (not (contains!19682 (t!374019 lt!2149642) (h!67162 lt!2149642))))))

(declare-fun b!5245148 () Bool)

(assert (=> b!5245148 (= e!3263456 (noDuplicate!1218 (t!374019 lt!2149642)))))

(assert (= (and d!1689915 (not res!2225960)) b!5245147))

(assert (= (and b!5245147 res!2225961) b!5245148))

(declare-fun m!6289110 () Bool)

(assert (=> b!5245147 m!6289110))

(declare-fun m!6289112 () Bool)

(assert (=> b!5245148 m!6289112))

(assert (=> d!1689609 d!1689915))

(declare-fun d!1689917 () Bool)

(declare-fun e!3263464 () Bool)

(assert (=> d!1689917 e!3263464))

(declare-fun res!2225966 () Bool)

(assert (=> d!1689917 (=> (not res!2225966) (not e!3263464))))

(declare-fun res!2225967 () List!60838)

(assert (=> d!1689917 (= res!2225966 (noDuplicate!1218 res!2225967))))

(declare-fun e!3263465 () Bool)

(assert (=> d!1689917 e!3263465))

(assert (=> d!1689917 (= (choose!39066 z!1189) res!2225967)))

(declare-fun b!5245156 () Bool)

(declare-fun e!3263463 () Bool)

(declare-fun tp!1468088 () Bool)

(assert (=> b!5245156 (= e!3263463 tp!1468088)))

(declare-fun b!5245155 () Bool)

(declare-fun tp!1468089 () Bool)

(assert (=> b!5245155 (= e!3263465 (and (inv!80363 (h!67162 res!2225967)) e!3263463 tp!1468089))))

(declare-fun b!5245157 () Bool)

(assert (=> b!5245157 (= e!3263464 (= (content!10783 res!2225967) z!1189))))

(assert (= b!5245155 b!5245156))

(assert (= (and d!1689917 (is-Cons!60714 res!2225967)) b!5245155))

(assert (= (and d!1689917 res!2225966) b!5245157))

(declare-fun m!6289114 () Bool)

(assert (=> d!1689917 m!6289114))

(declare-fun m!6289116 () Bool)

(assert (=> b!5245155 m!6289116))

(declare-fun m!6289118 () Bool)

(assert (=> b!5245157 m!6289118))

(assert (=> d!1689609 d!1689917))

(assert (=> d!1689397 d!1689401))

(assert (=> d!1689397 d!1689399))

(declare-fun e!3263466 () Bool)

(declare-fun d!1689919 () Bool)

(assert (=> d!1689919 (= (matchZipper!1090 (set.union lt!2149384 lt!2149380) (t!374020 s!2326)) e!3263466)))

(declare-fun res!2225968 () Bool)

(assert (=> d!1689919 (=> res!2225968 e!3263466)))

(assert (=> d!1689919 (= res!2225968 (matchZipper!1090 lt!2149384 (t!374020 s!2326)))))

(assert (=> d!1689919 true))

(declare-fun _$48!883 () Unit!152782)

(assert (=> d!1689919 (= (choose!39049 lt!2149384 lt!2149380 (t!374020 s!2326)) _$48!883)))

(declare-fun b!5245158 () Bool)

(assert (=> b!5245158 (= e!3263466 (matchZipper!1090 lt!2149380 (t!374020 s!2326)))))

(assert (= (and d!1689919 (not res!2225968)) b!5245158))

(assert (=> d!1689919 m!6287668))

(assert (=> d!1689919 m!6287650))

(assert (=> b!5245158 m!6287574))

(assert (=> d!1689397 d!1689919))

(assert (=> b!5243726 d!1689395))

(declare-fun b!5245159 () Bool)

(declare-fun e!3263470 () Bool)

(declare-fun e!3263467 () Bool)

(assert (=> b!5245159 (= e!3263470 e!3263467)))

(declare-fun res!2225972 () Bool)

(assert (=> b!5245159 (=> (not res!2225972) (not e!3263467))))

(assert (=> b!5245159 (= res!2225972 (and (not (is-EmptyLang!14846 (h!67161 (exprs!4730 (h!67162 zl!343))))) (not (is-ElementMatch!14846 (h!67161 (exprs!4730 (h!67162 zl!343)))))))))

(declare-fun b!5245160 () Bool)

(declare-fun e!3263468 () Bool)

(assert (=> b!5245160 (= e!3263467 e!3263468)))

(declare-fun res!2225969 () Bool)

(assert (=> b!5245160 (=> res!2225969 e!3263468)))

(assert (=> b!5245160 (= res!2225969 (is-Star!14846 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun b!5245161 () Bool)

(declare-fun e!3263472 () Bool)

(declare-fun call!371484 () Bool)

(assert (=> b!5245161 (= e!3263472 call!371484)))

(declare-fun b!5245162 () Bool)

(declare-fun e!3263471 () Bool)

(declare-fun e!3263469 () Bool)

(assert (=> b!5245162 (= e!3263471 e!3263469)))

(declare-fun res!2225973 () Bool)

(declare-fun call!371483 () Bool)

(assert (=> b!5245162 (= res!2225973 call!371483)))

(assert (=> b!5245162 (=> res!2225973 e!3263469)))

(declare-fun b!5245163 () Bool)

(assert (=> b!5245163 (= e!3263468 e!3263471)))

(declare-fun c!906959 () Bool)

(assert (=> b!5245163 (= c!906959 (is-Union!14846 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun bm!371478 () Bool)

(assert (=> bm!371478 (= call!371484 (nullable!5015 (ite c!906959 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regTwo!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))))))

(declare-fun b!5245164 () Bool)

(assert (=> b!5245164 (= e!3263471 e!3263472)))

(declare-fun res!2225971 () Bool)

(assert (=> b!5245164 (= res!2225971 call!371483)))

(assert (=> b!5245164 (=> (not res!2225971) (not e!3263472))))

(declare-fun bm!371479 () Bool)

(assert (=> bm!371479 (= call!371483 (nullable!5015 (ite c!906959 (regOne!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))))))

(declare-fun b!5245165 () Bool)

(assert (=> b!5245165 (= e!3263469 call!371484)))

(declare-fun d!1689921 () Bool)

(declare-fun res!2225970 () Bool)

(assert (=> d!1689921 (=> res!2225970 e!3263470)))

(assert (=> d!1689921 (= res!2225970 (is-EmptyExpr!14846 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(assert (=> d!1689921 (= (nullableFct!1413 (h!67161 (exprs!4730 (h!67162 zl!343)))) e!3263470)))

(assert (= (and d!1689921 (not res!2225970)) b!5245159))

(assert (= (and b!5245159 res!2225972) b!5245160))

(assert (= (and b!5245160 (not res!2225969)) b!5245163))

(assert (= (and b!5245163 c!906959) b!5245162))

(assert (= (and b!5245163 (not c!906959)) b!5245164))

(assert (= (and b!5245162 (not res!2225973)) b!5245165))

(assert (= (and b!5245164 res!2225971) b!5245161))

(assert (= (or b!5245165 b!5245161) bm!371478))

(assert (= (or b!5245162 b!5245164) bm!371479))

(declare-fun m!6289120 () Bool)

(assert (=> bm!371478 m!6289120))

(declare-fun m!6289122 () Bool)

(assert (=> bm!371479 m!6289122))

(assert (=> d!1689491 d!1689921))

(declare-fun bs!1216790 () Bool)

(declare-fun d!1689923 () Bool)

(assert (= bs!1216790 (and d!1689923 d!1689863)))

(declare-fun lambda!263934 () Int)

(assert (=> bs!1216790 (= lambda!263934 lambda!263928)))

(declare-fun bs!1216791 () Bool)

(assert (= bs!1216791 (and d!1689923 d!1689781)))

(assert (=> bs!1216791 (= lambda!263934 lambda!263916)))

(declare-fun bs!1216792 () Bool)

(assert (= bs!1216792 (and d!1689923 d!1689711)))

(assert (=> bs!1216792 (= lambda!263934 lambda!263909)))

(declare-fun bs!1216793 () Bool)

(assert (= bs!1216793 (and d!1689923 d!1689789)))

(assert (=> bs!1216793 (= lambda!263934 lambda!263917)))

(declare-fun bs!1216794 () Bool)

(assert (= bs!1216794 (and d!1689923 d!1689843)))

(assert (=> bs!1216794 (= lambda!263934 lambda!263924)))

(assert (=> d!1689923 (= (nullableZipper!1261 lt!2149391) (exists!1980 lt!2149391 lambda!263934))))

(declare-fun bs!1216795 () Bool)

(assert (= bs!1216795 d!1689923))

(declare-fun m!6289124 () Bool)

(assert (=> bs!1216795 m!6289124))

(assert (=> b!5243849 d!1689923))

(declare-fun b!5245166 () Bool)

(declare-fun res!2225974 () Bool)

(declare-fun e!3263474 () Bool)

(assert (=> b!5245166 (=> res!2225974 e!3263474)))

(declare-fun e!3263476 () Bool)

(assert (=> b!5245166 (= res!2225974 e!3263476)))

(declare-fun res!2225978 () Bool)

(assert (=> b!5245166 (=> (not res!2225978) (not e!3263476))))

(declare-fun lt!2149686 () Bool)

(assert (=> b!5245166 (= res!2225978 lt!2149686)))

(declare-fun b!5245167 () Bool)

(declare-fun e!3263477 () Bool)

(assert (=> b!5245167 (= e!3263477 (not lt!2149686))))

(declare-fun b!5245168 () Bool)

(declare-fun e!3263478 () Bool)

(assert (=> b!5245168 (= e!3263474 e!3263478)))

(declare-fun res!2225981 () Bool)

(assert (=> b!5245168 (=> (not res!2225981) (not e!3263478))))

(assert (=> b!5245168 (= res!2225981 (not lt!2149686))))

(declare-fun b!5245169 () Bool)

(declare-fun e!3263473 () Bool)

(assert (=> b!5245169 (= e!3263473 (not (= (head!11240 (_2!35348 (get!20870 lt!2149550))) (c!906500 (regTwo!30204 r!7292)))))))

(declare-fun b!5245170 () Bool)

(declare-fun res!2225975 () Bool)

(assert (=> b!5245170 (=> (not res!2225975) (not e!3263476))))

(assert (=> b!5245170 (= res!2225975 (isEmpty!32653 (tail!10337 (_2!35348 (get!20870 lt!2149550)))))))

(declare-fun b!5245171 () Bool)

(declare-fun res!2225980 () Bool)

(assert (=> b!5245171 (=> res!2225980 e!3263473)))

(assert (=> b!5245171 (= res!2225980 (not (isEmpty!32653 (tail!10337 (_2!35348 (get!20870 lt!2149550))))))))

(declare-fun b!5245172 () Bool)

(assert (=> b!5245172 (= e!3263478 e!3263473)))

(declare-fun res!2225976 () Bool)

(assert (=> b!5245172 (=> res!2225976 e!3263473)))

(declare-fun call!371485 () Bool)

(assert (=> b!5245172 (= res!2225976 call!371485)))

(declare-fun b!5245173 () Bool)

(declare-fun e!3263475 () Bool)

(assert (=> b!5245173 (= e!3263475 e!3263477)))

(declare-fun c!906960 () Bool)

(assert (=> b!5245173 (= c!906960 (is-EmptyLang!14846 (regTwo!30204 r!7292)))))

(declare-fun b!5245174 () Bool)

(assert (=> b!5245174 (= e!3263475 (= lt!2149686 call!371485))))

(declare-fun b!5245175 () Bool)

(declare-fun e!3263479 () Bool)

(assert (=> b!5245175 (= e!3263479 (nullable!5015 (regTwo!30204 r!7292)))))

(declare-fun b!5245176 () Bool)

(assert (=> b!5245176 (= e!3263479 (matchR!7031 (derivativeStep!4083 (regTwo!30204 r!7292) (head!11240 (_2!35348 (get!20870 lt!2149550)))) (tail!10337 (_2!35348 (get!20870 lt!2149550)))))))

(declare-fun d!1689925 () Bool)

(assert (=> d!1689925 e!3263475))

(declare-fun c!906962 () Bool)

(assert (=> d!1689925 (= c!906962 (is-EmptyExpr!14846 (regTwo!30204 r!7292)))))

(assert (=> d!1689925 (= lt!2149686 e!3263479)))

(declare-fun c!906961 () Bool)

(assert (=> d!1689925 (= c!906961 (isEmpty!32653 (_2!35348 (get!20870 lt!2149550))))))

(assert (=> d!1689925 (validRegex!6582 (regTwo!30204 r!7292))))

(assert (=> d!1689925 (= (matchR!7031 (regTwo!30204 r!7292) (_2!35348 (get!20870 lt!2149550))) lt!2149686)))

(declare-fun b!5245177 () Bool)

(assert (=> b!5245177 (= e!3263476 (= (head!11240 (_2!35348 (get!20870 lt!2149550))) (c!906500 (regTwo!30204 r!7292))))))

(declare-fun b!5245178 () Bool)

(declare-fun res!2225979 () Bool)

(assert (=> b!5245178 (=> res!2225979 e!3263474)))

(assert (=> b!5245178 (= res!2225979 (not (is-ElementMatch!14846 (regTwo!30204 r!7292))))))

(assert (=> b!5245178 (= e!3263477 e!3263474)))

(declare-fun b!5245179 () Bool)

(declare-fun res!2225977 () Bool)

(assert (=> b!5245179 (=> (not res!2225977) (not e!3263476))))

(assert (=> b!5245179 (= res!2225977 (not call!371485))))

(declare-fun bm!371480 () Bool)

(assert (=> bm!371480 (= call!371485 (isEmpty!32653 (_2!35348 (get!20870 lt!2149550))))))

(assert (= (and d!1689925 c!906961) b!5245175))

(assert (= (and d!1689925 (not c!906961)) b!5245176))

(assert (= (and d!1689925 c!906962) b!5245174))

(assert (= (and d!1689925 (not c!906962)) b!5245173))

(assert (= (and b!5245173 c!906960) b!5245167))

(assert (= (and b!5245173 (not c!906960)) b!5245178))

(assert (= (and b!5245178 (not res!2225979)) b!5245166))

(assert (= (and b!5245166 res!2225978) b!5245179))

(assert (= (and b!5245179 res!2225977) b!5245170))

(assert (= (and b!5245170 res!2225975) b!5245177))

(assert (= (and b!5245166 (not res!2225974)) b!5245168))

(assert (= (and b!5245168 res!2225981) b!5245172))

(assert (= (and b!5245172 (not res!2225976)) b!5245171))

(assert (= (and b!5245171 (not res!2225980)) b!5245169))

(assert (= (or b!5245174 b!5245179 b!5245172) bm!371480))

(declare-fun m!6289126 () Bool)

(assert (=> b!5245171 m!6289126))

(assert (=> b!5245171 m!6289126))

(declare-fun m!6289128 () Bool)

(assert (=> b!5245171 m!6289128))

(assert (=> b!5245170 m!6289126))

(assert (=> b!5245170 m!6289126))

(assert (=> b!5245170 m!6289128))

(declare-fun m!6289130 () Bool)

(assert (=> b!5245176 m!6289130))

(assert (=> b!5245176 m!6289130))

(declare-fun m!6289132 () Bool)

(assert (=> b!5245176 m!6289132))

(assert (=> b!5245176 m!6289126))

(assert (=> b!5245176 m!6289132))

(assert (=> b!5245176 m!6289126))

(declare-fun m!6289134 () Bool)

(assert (=> b!5245176 m!6289134))

(assert (=> b!5245169 m!6289130))

(declare-fun m!6289136 () Bool)

(assert (=> d!1689925 m!6289136))

(declare-fun m!6289138 () Bool)

(assert (=> d!1689925 m!6289138))

(assert (=> b!5245177 m!6289130))

(assert (=> bm!371480 m!6289136))

(declare-fun m!6289140 () Bool)

(assert (=> b!5245175 m!6289140))

(assert (=> b!5243914 d!1689925))

(assert (=> b!5243914 d!1689721))

(declare-fun bs!1216796 () Bool)

(declare-fun d!1689927 () Bool)

(assert (= bs!1216796 (and d!1689927 d!1689863)))

(declare-fun lambda!263935 () Int)

(assert (=> bs!1216796 (= lambda!263935 lambda!263928)))

(declare-fun bs!1216797 () Bool)

(assert (= bs!1216797 (and d!1689927 d!1689781)))

(assert (=> bs!1216797 (= lambda!263935 lambda!263916)))

(declare-fun bs!1216798 () Bool)

(assert (= bs!1216798 (and d!1689927 d!1689711)))

(assert (=> bs!1216798 (= lambda!263935 lambda!263909)))

(declare-fun bs!1216799 () Bool)

(assert (= bs!1216799 (and d!1689927 d!1689923)))

(assert (=> bs!1216799 (= lambda!263935 lambda!263934)))

(declare-fun bs!1216800 () Bool)

(assert (= bs!1216800 (and d!1689927 d!1689789)))

(assert (=> bs!1216800 (= lambda!263935 lambda!263917)))

(declare-fun bs!1216801 () Bool)

(assert (= bs!1216801 (and d!1689927 d!1689843)))

(assert (=> bs!1216801 (= lambda!263935 lambda!263924)))

(assert (=> d!1689927 (= (nullableZipper!1261 lt!2149367) (exists!1980 lt!2149367 lambda!263935))))

(declare-fun bs!1216802 () Bool)

(assert (= bs!1216802 d!1689927))

(declare-fun m!6289142 () Bool)

(assert (=> bs!1216802 m!6289142))

(assert (=> b!5244418 d!1689927))

(assert (=> bm!371326 d!1689741))

(assert (=> b!5244374 d!1689701))

(assert (=> b!5244374 d!1689691))

(declare-fun d!1689929 () Bool)

(declare-fun c!906963 () Bool)

(assert (=> d!1689929 (= c!906963 (isEmpty!32653 (tail!10337 (t!374020 s!2326))))))

(declare-fun e!3263480 () Bool)

(assert (=> d!1689929 (= (matchZipper!1090 (derivationStepZipper!1105 lt!2149359 (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))) e!3263480)))

(declare-fun b!5245180 () Bool)

(assert (=> b!5245180 (= e!3263480 (nullableZipper!1261 (derivationStepZipper!1105 lt!2149359 (head!11240 (t!374020 s!2326)))))))

(declare-fun b!5245181 () Bool)

(assert (=> b!5245181 (= e!3263480 (matchZipper!1090 (derivationStepZipper!1105 (derivationStepZipper!1105 lt!2149359 (head!11240 (t!374020 s!2326))) (head!11240 (tail!10337 (t!374020 s!2326)))) (tail!10337 (tail!10337 (t!374020 s!2326)))))))

(assert (= (and d!1689929 c!906963) b!5245180))

(assert (= (and d!1689929 (not c!906963)) b!5245181))

(assert (=> d!1689929 m!6287844))

(assert (=> d!1689929 m!6288696))

(assert (=> b!5245180 m!6288394))

(declare-fun m!6289144 () Bool)

(assert (=> b!5245180 m!6289144))

(assert (=> b!5245181 m!6287844))

(assert (=> b!5245181 m!6288700))

(assert (=> b!5245181 m!6288394))

(assert (=> b!5245181 m!6288700))

(declare-fun m!6289146 () Bool)

(assert (=> b!5245181 m!6289146))

(assert (=> b!5245181 m!6287844))

(assert (=> b!5245181 m!6288704))

(assert (=> b!5245181 m!6289146))

(assert (=> b!5245181 m!6288704))

(declare-fun m!6289148 () Bool)

(assert (=> b!5245181 m!6289148))

(assert (=> b!5244421 d!1689929))

(declare-fun bs!1216803 () Bool)

(declare-fun d!1689931 () Bool)

(assert (= bs!1216803 (and d!1689931 d!1689725)))

(declare-fun lambda!263936 () Int)

(assert (=> bs!1216803 (= lambda!263936 lambda!263912)))

(declare-fun bs!1216804 () Bool)

(assert (= bs!1216804 (and d!1689931 d!1689687)))

(assert (=> bs!1216804 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263936 lambda!263906))))

(declare-fun bs!1216805 () Bool)

(assert (= bs!1216805 (and d!1689931 d!1689831)))

(assert (=> bs!1216805 (= lambda!263936 lambda!263922)))

(declare-fun bs!1216806 () Bool)

(assert (= bs!1216806 (and d!1689931 d!1689815)))

(assert (=> bs!1216806 (= lambda!263936 lambda!263921)))

(declare-fun bs!1216807 () Bool)

(assert (= bs!1216807 (and d!1689931 b!5243551)))

(assert (=> bs!1216807 (= (= (head!11240 (t!374020 s!2326)) (h!67163 s!2326)) (= lambda!263936 lambda!263814))))

(declare-fun bs!1216808 () Bool)

(assert (= bs!1216808 (and d!1689931 d!1689763)))

(assert (=> bs!1216808 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263936 lambda!263915))))

(declare-fun bs!1216809 () Bool)

(assert (= bs!1216809 (and d!1689931 d!1689899)))

(assert (=> bs!1216809 (= lambda!263936 lambda!263931)))

(declare-fun bs!1216810 () Bool)

(assert (= bs!1216810 (and d!1689931 d!1689733)))

(assert (=> bs!1216810 (= lambda!263936 lambda!263913)))

(declare-fun bs!1216811 () Bool)

(assert (= bs!1216811 (and d!1689931 d!1689851)))

(assert (=> bs!1216811 (= lambda!263936 lambda!263925)))

(assert (=> d!1689931 true))

(assert (=> d!1689931 (= (derivationStepZipper!1105 lt!2149359 (head!11240 (t!374020 s!2326))) (flatMap!573 lt!2149359 lambda!263936))))

(declare-fun bs!1216812 () Bool)

(assert (= bs!1216812 d!1689931))

(declare-fun m!6289150 () Bool)

(assert (=> bs!1216812 m!6289150))

(assert (=> b!5244421 d!1689931))

(assert (=> b!5244421 d!1689727))

(assert (=> b!5244421 d!1689729))

(declare-fun bs!1216813 () Bool)

(declare-fun d!1689933 () Bool)

(assert (= bs!1216813 (and d!1689933 d!1689863)))

(declare-fun lambda!263937 () Int)

(assert (=> bs!1216813 (= lambda!263937 lambda!263928)))

(declare-fun bs!1216814 () Bool)

(assert (= bs!1216814 (and d!1689933 d!1689781)))

(assert (=> bs!1216814 (= lambda!263937 lambda!263916)))

(declare-fun bs!1216815 () Bool)

(assert (= bs!1216815 (and d!1689933 d!1689711)))

(assert (=> bs!1216815 (= lambda!263937 lambda!263909)))

(declare-fun bs!1216816 () Bool)

(assert (= bs!1216816 (and d!1689933 d!1689927)))

(assert (=> bs!1216816 (= lambda!263937 lambda!263935)))

(declare-fun bs!1216817 () Bool)

(assert (= bs!1216817 (and d!1689933 d!1689923)))

(assert (=> bs!1216817 (= lambda!263937 lambda!263934)))

(declare-fun bs!1216818 () Bool)

(assert (= bs!1216818 (and d!1689933 d!1689789)))

(assert (=> bs!1216818 (= lambda!263937 lambda!263917)))

(declare-fun bs!1216819 () Bool)

(assert (= bs!1216819 (and d!1689933 d!1689843)))

(assert (=> bs!1216819 (= lambda!263937 lambda!263924)))

(assert (=> d!1689933 (= (nullableZipper!1261 lt!2149355) (exists!1980 lt!2149355 lambda!263937))))

(declare-fun bs!1216820 () Bool)

(assert (= bs!1216820 d!1689933))

(declare-fun m!6289152 () Bool)

(assert (=> bs!1216820 m!6289152))

(assert (=> b!5244315 d!1689933))

(declare-fun d!1689935 () Bool)

(declare-fun c!906964 () Bool)

(assert (=> d!1689935 (= c!906964 (isEmpty!32653 (tail!10337 s!2326)))))

(declare-fun e!3263481 () Bool)

(assert (=> d!1689935 (= (matchZipper!1090 (derivationStepZipper!1105 lt!2149347 (head!11240 s!2326)) (tail!10337 s!2326)) e!3263481)))

(declare-fun b!5245182 () Bool)

(assert (=> b!5245182 (= e!3263481 (nullableZipper!1261 (derivationStepZipper!1105 lt!2149347 (head!11240 s!2326))))))

(declare-fun b!5245183 () Bool)

(assert (=> b!5245183 (= e!3263481 (matchZipper!1090 (derivationStepZipper!1105 (derivationStepZipper!1105 lt!2149347 (head!11240 s!2326)) (head!11240 (tail!10337 s!2326))) (tail!10337 (tail!10337 s!2326))))))

(assert (= (and d!1689935 c!906964) b!5245182))

(assert (= (and d!1689935 (not c!906964)) b!5245183))

(assert (=> d!1689935 m!6288092))

(assert (=> d!1689935 m!6288094))

(assert (=> b!5245182 m!6288438))

(declare-fun m!6289154 () Bool)

(assert (=> b!5245182 m!6289154))

(assert (=> b!5245183 m!6288092))

(assert (=> b!5245183 m!6288628))

(assert (=> b!5245183 m!6288438))

(assert (=> b!5245183 m!6288628))

(declare-fun m!6289156 () Bool)

(assert (=> b!5245183 m!6289156))

(assert (=> b!5245183 m!6288092))

(assert (=> b!5245183 m!6288632))

(assert (=> b!5245183 m!6289156))

(assert (=> b!5245183 m!6288632))

(declare-fun m!6289158 () Bool)

(assert (=> b!5245183 m!6289158))

(assert (=> b!5244466 d!1689935))

(declare-fun bs!1216821 () Bool)

(declare-fun d!1689937 () Bool)

(assert (= bs!1216821 (and d!1689937 d!1689725)))

(declare-fun lambda!263938 () Int)

(assert (=> bs!1216821 (= (= (head!11240 s!2326) (head!11240 (t!374020 s!2326))) (= lambda!263938 lambda!263912))))

(declare-fun bs!1216822 () Bool)

(assert (= bs!1216822 (and d!1689937 d!1689687)))

(assert (=> bs!1216822 (= lambda!263938 lambda!263906)))

(declare-fun bs!1216823 () Bool)

(assert (= bs!1216823 (and d!1689937 d!1689931)))

(assert (=> bs!1216823 (= (= (head!11240 s!2326) (head!11240 (t!374020 s!2326))) (= lambda!263938 lambda!263936))))

(declare-fun bs!1216824 () Bool)

(assert (= bs!1216824 (and d!1689937 d!1689831)))

(assert (=> bs!1216824 (= (= (head!11240 s!2326) (head!11240 (t!374020 s!2326))) (= lambda!263938 lambda!263922))))

(declare-fun bs!1216825 () Bool)

(assert (= bs!1216825 (and d!1689937 d!1689815)))

(assert (=> bs!1216825 (= (= (head!11240 s!2326) (head!11240 (t!374020 s!2326))) (= lambda!263938 lambda!263921))))

(declare-fun bs!1216826 () Bool)

(assert (= bs!1216826 (and d!1689937 b!5243551)))

(assert (=> bs!1216826 (= (= (head!11240 s!2326) (h!67163 s!2326)) (= lambda!263938 lambda!263814))))

(declare-fun bs!1216827 () Bool)

(assert (= bs!1216827 (and d!1689937 d!1689763)))

(assert (=> bs!1216827 (= lambda!263938 lambda!263915)))

(declare-fun bs!1216828 () Bool)

(assert (= bs!1216828 (and d!1689937 d!1689899)))

(assert (=> bs!1216828 (= (= (head!11240 s!2326) (head!11240 (t!374020 s!2326))) (= lambda!263938 lambda!263931))))

(declare-fun bs!1216829 () Bool)

(assert (= bs!1216829 (and d!1689937 d!1689733)))

(assert (=> bs!1216829 (= (= (head!11240 s!2326) (head!11240 (t!374020 s!2326))) (= lambda!263938 lambda!263913))))

(declare-fun bs!1216830 () Bool)

(assert (= bs!1216830 (and d!1689937 d!1689851)))

(assert (=> bs!1216830 (= (= (head!11240 s!2326) (head!11240 (t!374020 s!2326))) (= lambda!263938 lambda!263925))))

(assert (=> d!1689937 true))

(assert (=> d!1689937 (= (derivationStepZipper!1105 lt!2149347 (head!11240 s!2326)) (flatMap!573 lt!2149347 lambda!263938))))

(declare-fun bs!1216831 () Bool)

(assert (= bs!1216831 d!1689937))

(declare-fun m!6289160 () Bool)

(assert (=> bs!1216831 m!6289160))

(assert (=> b!5244466 d!1689937))

(assert (=> b!5244466 d!1689689))

(assert (=> b!5244466 d!1689691))

(assert (=> bs!1216502 d!1689593))

(assert (=> bm!371344 d!1689741))

(declare-fun d!1689939 () Bool)

(declare-fun c!906965 () Bool)

(assert (=> d!1689939 (= c!906965 (isEmpty!32653 (t!374020 s!2326)))))

(declare-fun e!3263482 () Bool)

(assert (=> d!1689939 (= (matchZipper!1090 (set.union lt!2149359 lt!2149384) (t!374020 s!2326)) e!3263482)))

(declare-fun b!5245184 () Bool)

(assert (=> b!5245184 (= e!3263482 (nullableZipper!1261 (set.union lt!2149359 lt!2149384)))))

(declare-fun b!5245185 () Bool)

(assert (=> b!5245185 (= e!3263482 (matchZipper!1090 (derivationStepZipper!1105 (set.union lt!2149359 lt!2149384) (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))))))

(assert (= (and d!1689939 c!906965) b!5245184))

(assert (= (and d!1689939 (not c!906965)) b!5245185))

(assert (=> d!1689939 m!6287836))

(declare-fun m!6289162 () Bool)

(assert (=> b!5245184 m!6289162))

(assert (=> b!5245185 m!6287840))

(assert (=> b!5245185 m!6287840))

(declare-fun m!6289164 () Bool)

(assert (=> b!5245185 m!6289164))

(assert (=> b!5245185 m!6287844))

(assert (=> b!5245185 m!6289164))

(assert (=> b!5245185 m!6287844))

(declare-fun m!6289166 () Bool)

(assert (=> b!5245185 m!6289166))

(assert (=> d!1689571 d!1689939))

(assert (=> d!1689571 d!1689569))

(declare-fun d!1689941 () Bool)

(declare-fun e!3263483 () Bool)

(assert (=> d!1689941 (= (matchZipper!1090 (set.union lt!2149359 lt!2149384) (t!374020 s!2326)) e!3263483)))

(declare-fun res!2225982 () Bool)

(assert (=> d!1689941 (=> res!2225982 e!3263483)))

(assert (=> d!1689941 (= res!2225982 (matchZipper!1090 lt!2149359 (t!374020 s!2326)))))

(assert (=> d!1689941 true))

(declare-fun _$48!884 () Unit!152782)

(assert (=> d!1689941 (= (choose!39049 lt!2149359 lt!2149384 (t!374020 s!2326)) _$48!884)))

(declare-fun b!5245186 () Bool)

(assert (=> b!5245186 (= e!3263483 (matchZipper!1090 lt!2149384 (t!374020 s!2326)))))

(assert (= (and d!1689941 (not res!2225982)) b!5245186))

(assert (=> d!1689941 m!6288398))

(assert (=> d!1689941 m!6287646))

(assert (=> b!5245186 m!6287650))

(assert (=> d!1689571 d!1689941))

(declare-fun b!5245187 () Bool)

(declare-fun res!2225983 () Bool)

(declare-fun e!3263485 () Bool)

(assert (=> b!5245187 (=> res!2225983 e!3263485)))

(declare-fun e!3263487 () Bool)

(assert (=> b!5245187 (= res!2225983 e!3263487)))

(declare-fun res!2225987 () Bool)

(assert (=> b!5245187 (=> (not res!2225987) (not e!3263487))))

(declare-fun lt!2149687 () Bool)

(assert (=> b!5245187 (= res!2225987 lt!2149687)))

(declare-fun b!5245188 () Bool)

(declare-fun e!3263488 () Bool)

(assert (=> b!5245188 (= e!3263488 (not lt!2149687))))

(declare-fun b!5245189 () Bool)

(declare-fun e!3263489 () Bool)

(assert (=> b!5245189 (= e!3263485 e!3263489)))

(declare-fun res!2225990 () Bool)

(assert (=> b!5245189 (=> (not res!2225990) (not e!3263489))))

(assert (=> b!5245189 (= res!2225990 (not lt!2149687))))

(declare-fun b!5245190 () Bool)

(declare-fun e!3263484 () Bool)

(assert (=> b!5245190 (= e!3263484 (not (= (head!11240 s!2326) (c!906500 (regTwo!30204 r!7292)))))))

(declare-fun b!5245191 () Bool)

(declare-fun res!2225984 () Bool)

(assert (=> b!5245191 (=> (not res!2225984) (not e!3263487))))

(assert (=> b!5245191 (= res!2225984 (isEmpty!32653 (tail!10337 s!2326)))))

(declare-fun b!5245192 () Bool)

(declare-fun res!2225989 () Bool)

(assert (=> b!5245192 (=> res!2225989 e!3263484)))

(assert (=> b!5245192 (= res!2225989 (not (isEmpty!32653 (tail!10337 s!2326))))))

(declare-fun b!5245193 () Bool)

(assert (=> b!5245193 (= e!3263489 e!3263484)))

(declare-fun res!2225985 () Bool)

(assert (=> b!5245193 (=> res!2225985 e!3263484)))

(declare-fun call!371486 () Bool)

(assert (=> b!5245193 (= res!2225985 call!371486)))

(declare-fun b!5245194 () Bool)

(declare-fun e!3263486 () Bool)

(assert (=> b!5245194 (= e!3263486 e!3263488)))

(declare-fun c!906966 () Bool)

(assert (=> b!5245194 (= c!906966 (is-EmptyLang!14846 (regTwo!30204 r!7292)))))

(declare-fun b!5245195 () Bool)

(assert (=> b!5245195 (= e!3263486 (= lt!2149687 call!371486))))

(declare-fun b!5245196 () Bool)

(declare-fun e!3263490 () Bool)

(assert (=> b!5245196 (= e!3263490 (nullable!5015 (regTwo!30204 r!7292)))))

(declare-fun b!5245197 () Bool)

(assert (=> b!5245197 (= e!3263490 (matchR!7031 (derivativeStep!4083 (regTwo!30204 r!7292) (head!11240 s!2326)) (tail!10337 s!2326)))))

(declare-fun d!1689943 () Bool)

(assert (=> d!1689943 e!3263486))

(declare-fun c!906968 () Bool)

(assert (=> d!1689943 (= c!906968 (is-EmptyExpr!14846 (regTwo!30204 r!7292)))))

(assert (=> d!1689943 (= lt!2149687 e!3263490)))

(declare-fun c!906967 () Bool)

(assert (=> d!1689943 (= c!906967 (isEmpty!32653 s!2326))))

(assert (=> d!1689943 (validRegex!6582 (regTwo!30204 r!7292))))

(assert (=> d!1689943 (= (matchR!7031 (regTwo!30204 r!7292) s!2326) lt!2149687)))

(declare-fun b!5245198 () Bool)

(assert (=> b!5245198 (= e!3263487 (= (head!11240 s!2326) (c!906500 (regTwo!30204 r!7292))))))

(declare-fun b!5245199 () Bool)

(declare-fun res!2225988 () Bool)

(assert (=> b!5245199 (=> res!2225988 e!3263485)))

(assert (=> b!5245199 (= res!2225988 (not (is-ElementMatch!14846 (regTwo!30204 r!7292))))))

(assert (=> b!5245199 (= e!3263488 e!3263485)))

(declare-fun b!5245200 () Bool)

(declare-fun res!2225986 () Bool)

(assert (=> b!5245200 (=> (not res!2225986) (not e!3263487))))

(assert (=> b!5245200 (= res!2225986 (not call!371486))))

(declare-fun bm!371481 () Bool)

(assert (=> bm!371481 (= call!371486 (isEmpty!32653 s!2326))))

(assert (= (and d!1689943 c!906967) b!5245196))

(assert (= (and d!1689943 (not c!906967)) b!5245197))

(assert (= (and d!1689943 c!906968) b!5245195))

(assert (= (and d!1689943 (not c!906968)) b!5245194))

(assert (= (and b!5245194 c!906966) b!5245188))

(assert (= (and b!5245194 (not c!906966)) b!5245199))

(assert (= (and b!5245199 (not res!2225988)) b!5245187))

(assert (= (and b!5245187 res!2225987) b!5245200))

(assert (= (and b!5245200 res!2225986) b!5245191))

(assert (= (and b!5245191 res!2225984) b!5245198))

(assert (= (and b!5245187 (not res!2225983)) b!5245189))

(assert (= (and b!5245189 res!2225990) b!5245193))

(assert (= (and b!5245193 (not res!2225985)) b!5245192))

(assert (= (and b!5245192 (not res!2225989)) b!5245190))

(assert (= (or b!5245195 b!5245200 b!5245193) bm!371481))

(assert (=> b!5245192 m!6288092))

(assert (=> b!5245192 m!6288092))

(assert (=> b!5245192 m!6288094))

(assert (=> b!5245191 m!6288092))

(assert (=> b!5245191 m!6288092))

(assert (=> b!5245191 m!6288094))

(assert (=> b!5245197 m!6288096))

(assert (=> b!5245197 m!6288096))

(declare-fun m!6289168 () Bool)

(assert (=> b!5245197 m!6289168))

(assert (=> b!5245197 m!6288092))

(assert (=> b!5245197 m!6289168))

(assert (=> b!5245197 m!6288092))

(declare-fun m!6289170 () Bool)

(assert (=> b!5245197 m!6289170))

(assert (=> b!5245190 m!6288096))

(assert (=> d!1689943 m!6288058))

(assert (=> d!1689943 m!6289138))

(assert (=> b!5245198 m!6288096))

(assert (=> bm!371481 m!6288058))

(assert (=> b!5245196 m!6289140))

(assert (=> b!5243918 d!1689943))

(declare-fun d!1689945 () Bool)

(assert (=> d!1689945 (= (nullable!5015 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292)))) (nullableFct!1413 (regOne!30204 (regTwo!30205 (regOne!30204 r!7292)))))))

(declare-fun bs!1216832 () Bool)

(assert (= bs!1216832 d!1689945))

(declare-fun m!6289172 () Bool)

(assert (=> bs!1216832 m!6289172))

(assert (=> b!5243824 d!1689945))

(declare-fun b!5245201 () Bool)

(declare-fun c!906973 () Bool)

(declare-fun e!3263495 () Bool)

(assert (=> b!5245201 (= c!906973 e!3263495)))

(declare-fun res!2225991 () Bool)

(assert (=> b!5245201 (=> (not res!2225991) (not e!3263495))))

(assert (=> b!5245201 (= res!2225991 (is-Concat!23691 (h!67161 (exprs!4730 lt!2149349))))))

(declare-fun e!3263491 () (Set Context!8460))

(declare-fun e!3263496 () (Set Context!8460))

(assert (=> b!5245201 (= e!3263491 e!3263496)))

(declare-fun b!5245202 () Bool)

(declare-fun e!3263494 () (Set Context!8460))

(declare-fun call!371491 () (Set Context!8460))

(assert (=> b!5245202 (= e!3263494 call!371491)))

(declare-fun bm!371482 () Bool)

(declare-fun call!371492 () (Set Context!8460))

(declare-fun call!371490 () (Set Context!8460))

(assert (=> bm!371482 (= call!371492 call!371490)))

(declare-fun b!5245203 () Bool)

(declare-fun call!371487 () (Set Context!8460))

(assert (=> b!5245203 (= e!3263496 (set.union call!371487 call!371492))))

(declare-fun b!5245204 () Bool)

(assert (=> b!5245204 (= e!3263494 (as set.empty (Set Context!8460)))))

(declare-fun c!906970 () Bool)

(declare-fun call!371489 () List!60837)

(declare-fun bm!371483 () Bool)

(declare-fun c!906969 () Bool)

(assert (=> bm!371483 (= call!371490 (derivationStepZipperDown!294 (ite c!906969 (regOne!30205 (h!67161 (exprs!4730 lt!2149349))) (ite c!906973 (regTwo!30204 (h!67161 (exprs!4730 lt!2149349))) (ite c!906970 (regOne!30204 (h!67161 (exprs!4730 lt!2149349))) (reg!15175 (h!67161 (exprs!4730 lt!2149349)))))) (ite (or c!906969 c!906973) (Context!8461 (t!374018 (exprs!4730 lt!2149349))) (Context!8461 call!371489)) (h!67163 s!2326)))))

(declare-fun b!5245205 () Bool)

(assert (=> b!5245205 (= e!3263491 (set.union call!371490 call!371487))))

(declare-fun b!5245206 () Bool)

(declare-fun e!3263492 () (Set Context!8460))

(assert (=> b!5245206 (= e!3263492 call!371491)))

(declare-fun d!1689947 () Bool)

(declare-fun c!906972 () Bool)

(assert (=> d!1689947 (= c!906972 (and (is-ElementMatch!14846 (h!67161 (exprs!4730 lt!2149349))) (= (c!906500 (h!67161 (exprs!4730 lt!2149349))) (h!67163 s!2326))))))

(declare-fun e!3263493 () (Set Context!8460))

(assert (=> d!1689947 (= (derivationStepZipperDown!294 (h!67161 (exprs!4730 lt!2149349)) (Context!8461 (t!374018 (exprs!4730 lt!2149349))) (h!67163 s!2326)) e!3263493)))

(declare-fun b!5245207 () Bool)

(declare-fun c!906971 () Bool)

(assert (=> b!5245207 (= c!906971 (is-Star!14846 (h!67161 (exprs!4730 lt!2149349))))))

(assert (=> b!5245207 (= e!3263492 e!3263494)))

(declare-fun call!371488 () List!60837)

(declare-fun bm!371484 () Bool)

(assert (=> bm!371484 (= call!371488 ($colon$colon!1311 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149349)))) (ite (or c!906973 c!906970) (regTwo!30204 (h!67161 (exprs!4730 lt!2149349))) (h!67161 (exprs!4730 lt!2149349)))))))

(declare-fun b!5245208 () Bool)

(assert (=> b!5245208 (= e!3263493 e!3263491)))

(assert (=> b!5245208 (= c!906969 (is-Union!14846 (h!67161 (exprs!4730 lt!2149349))))))

(declare-fun bm!371485 () Bool)

(assert (=> bm!371485 (= call!371491 call!371492)))

(declare-fun bm!371486 () Bool)

(assert (=> bm!371486 (= call!371487 (derivationStepZipperDown!294 (ite c!906969 (regTwo!30205 (h!67161 (exprs!4730 lt!2149349))) (regOne!30204 (h!67161 (exprs!4730 lt!2149349)))) (ite c!906969 (Context!8461 (t!374018 (exprs!4730 lt!2149349))) (Context!8461 call!371488)) (h!67163 s!2326)))))

(declare-fun b!5245209 () Bool)

(assert (=> b!5245209 (= e!3263493 (set.insert (Context!8461 (t!374018 (exprs!4730 lt!2149349))) (as set.empty (Set Context!8460))))))

(declare-fun b!5245210 () Bool)

(assert (=> b!5245210 (= e!3263495 (nullable!5015 (regOne!30204 (h!67161 (exprs!4730 lt!2149349)))))))

(declare-fun b!5245211 () Bool)

(assert (=> b!5245211 (= e!3263496 e!3263492)))

(assert (=> b!5245211 (= c!906970 (is-Concat!23691 (h!67161 (exprs!4730 lt!2149349))))))

(declare-fun bm!371487 () Bool)

(assert (=> bm!371487 (= call!371489 call!371488)))

(assert (= (and d!1689947 c!906972) b!5245209))

(assert (= (and d!1689947 (not c!906972)) b!5245208))

(assert (= (and b!5245208 c!906969) b!5245205))

(assert (= (and b!5245208 (not c!906969)) b!5245201))

(assert (= (and b!5245201 res!2225991) b!5245210))

(assert (= (and b!5245201 c!906973) b!5245203))

(assert (= (and b!5245201 (not c!906973)) b!5245211))

(assert (= (and b!5245211 c!906970) b!5245206))

(assert (= (and b!5245211 (not c!906970)) b!5245207))

(assert (= (and b!5245207 c!906971) b!5245202))

(assert (= (and b!5245207 (not c!906971)) b!5245204))

(assert (= (or b!5245206 b!5245202) bm!371487))

(assert (= (or b!5245206 b!5245202) bm!371485))

(assert (= (or b!5245203 bm!371487) bm!371484))

(assert (= (or b!5245203 bm!371485) bm!371482))

(assert (= (or b!5245205 b!5245203) bm!371486))

(assert (= (or b!5245205 bm!371482) bm!371483))

(declare-fun m!6289174 () Bool)

(assert (=> bm!371483 m!6289174))

(declare-fun m!6289176 () Bool)

(assert (=> bm!371486 m!6289176))

(declare-fun m!6289178 () Bool)

(assert (=> b!5245209 m!6289178))

(declare-fun m!6289180 () Bool)

(assert (=> bm!371484 m!6289180))

(declare-fun m!6289182 () Bool)

(assert (=> b!5245210 m!6289182))

(assert (=> bm!371359 d!1689947))

(declare-fun d!1689949 () Bool)

(assert (=> d!1689949 (= (isConcat!319 lt!2149536) (is-Concat!23691 lt!2149536))))

(assert (=> b!5243755 d!1689949))

(declare-fun d!1689951 () Bool)

(assert (=> d!1689951 (= (Exists!2027 (ite c!906629 lambda!263862 lambda!263863)) (choose!39052 (ite c!906629 lambda!263862 lambda!263863)))))

(declare-fun bs!1216833 () Bool)

(assert (= bs!1216833 d!1689951))

(declare-fun m!6289184 () Bool)

(assert (=> bs!1216833 m!6289184))

(assert (=> bm!371319 d!1689951))

(declare-fun c!906975 () Bool)

(declare-fun bm!371488 () Bool)

(declare-fun c!906974 () Bool)

(declare-fun call!371495 () Bool)

(assert (=> bm!371488 (= call!371495 (validRegex!6582 (ite c!906975 (reg!15175 lt!2149612) (ite c!906974 (regOne!30205 lt!2149612) (regOne!30204 lt!2149612)))))))

(declare-fun b!5245212 () Bool)

(declare-fun e!3263500 () Bool)

(declare-fun e!3263502 () Bool)

(assert (=> b!5245212 (= e!3263500 e!3263502)))

(assert (=> b!5245212 (= c!906974 (is-Union!14846 lt!2149612))))

(declare-fun b!5245213 () Bool)

(declare-fun e!3263501 () Bool)

(assert (=> b!5245213 (= e!3263501 e!3263500)))

(assert (=> b!5245213 (= c!906975 (is-Star!14846 lt!2149612))))

(declare-fun b!5245214 () Bool)

(declare-fun res!2225994 () Bool)

(declare-fun e!3263503 () Bool)

(assert (=> b!5245214 (=> (not res!2225994) (not e!3263503))))

(declare-fun call!371493 () Bool)

(assert (=> b!5245214 (= res!2225994 call!371493)))

(assert (=> b!5245214 (= e!3263502 e!3263503)))

(declare-fun bm!371489 () Bool)

(declare-fun call!371494 () Bool)

(assert (=> bm!371489 (= call!371494 (validRegex!6582 (ite c!906974 (regTwo!30205 lt!2149612) (regTwo!30204 lt!2149612))))))

(declare-fun bm!371490 () Bool)

(assert (=> bm!371490 (= call!371493 call!371495)))

(declare-fun b!5245215 () Bool)

(declare-fun e!3263499 () Bool)

(assert (=> b!5245215 (= e!3263500 e!3263499)))

(declare-fun res!2225995 () Bool)

(assert (=> b!5245215 (= res!2225995 (not (nullable!5015 (reg!15175 lt!2149612))))))

(assert (=> b!5245215 (=> (not res!2225995) (not e!3263499))))

(declare-fun b!5245216 () Bool)

(declare-fun e!3263498 () Bool)

(assert (=> b!5245216 (= e!3263498 call!371494)))

(declare-fun b!5245217 () Bool)

(declare-fun res!2225993 () Bool)

(declare-fun e!3263497 () Bool)

(assert (=> b!5245217 (=> res!2225993 e!3263497)))

(assert (=> b!5245217 (= res!2225993 (not (is-Concat!23691 lt!2149612)))))

(assert (=> b!5245217 (= e!3263502 e!3263497)))

(declare-fun b!5245219 () Bool)

(assert (=> b!5245219 (= e!3263499 call!371495)))

(declare-fun b!5245220 () Bool)

(assert (=> b!5245220 (= e!3263503 call!371494)))

(declare-fun b!5245218 () Bool)

(assert (=> b!5245218 (= e!3263497 e!3263498)))

(declare-fun res!2225996 () Bool)

(assert (=> b!5245218 (=> (not res!2225996) (not e!3263498))))

(assert (=> b!5245218 (= res!2225996 call!371493)))

(declare-fun d!1689953 () Bool)

(declare-fun res!2225992 () Bool)

(assert (=> d!1689953 (=> res!2225992 e!3263501)))

(assert (=> d!1689953 (= res!2225992 (is-ElementMatch!14846 lt!2149612))))

(assert (=> d!1689953 (= (validRegex!6582 lt!2149612) e!3263501)))

(assert (= (and d!1689953 (not res!2225992)) b!5245213))

(assert (= (and b!5245213 c!906975) b!5245215))

(assert (= (and b!5245213 (not c!906975)) b!5245212))

(assert (= (and b!5245215 res!2225995) b!5245219))

(assert (= (and b!5245212 c!906974) b!5245214))

(assert (= (and b!5245212 (not c!906974)) b!5245217))

(assert (= (and b!5245214 res!2225994) b!5245220))

(assert (= (and b!5245217 (not res!2225993)) b!5245218))

(assert (= (and b!5245218 res!2225996) b!5245216))

(assert (= (or b!5245220 b!5245216) bm!371489))

(assert (= (or b!5245214 b!5245218) bm!371490))

(assert (= (or b!5245219 bm!371490) bm!371488))

(declare-fun m!6289186 () Bool)

(assert (=> bm!371488 m!6289186))

(declare-fun m!6289188 () Bool)

(assert (=> bm!371489 m!6289188))

(declare-fun m!6289190 () Bool)

(assert (=> b!5245215 m!6289190))

(assert (=> d!1689543 d!1689953))

(declare-fun d!1689955 () Bool)

(declare-fun res!2225997 () Bool)

(declare-fun e!3263504 () Bool)

(assert (=> d!1689955 (=> res!2225997 e!3263504)))

(assert (=> d!1689955 (= res!2225997 (is-Nil!60713 lt!2149356))))

(assert (=> d!1689955 (= (forall!14270 lt!2149356 lambda!263881) e!3263504)))

(declare-fun b!5245221 () Bool)

(declare-fun e!3263505 () Bool)

(assert (=> b!5245221 (= e!3263504 e!3263505)))

(declare-fun res!2225998 () Bool)

(assert (=> b!5245221 (=> (not res!2225998) (not e!3263505))))

(assert (=> b!5245221 (= res!2225998 (dynLambda!23995 lambda!263881 (h!67161 lt!2149356)))))

(declare-fun b!5245222 () Bool)

(assert (=> b!5245222 (= e!3263505 (forall!14270 (t!374018 lt!2149356) lambda!263881))))

(assert (= (and d!1689955 (not res!2225997)) b!5245221))

(assert (= (and b!5245221 res!2225998) b!5245222))

(declare-fun b_lambda!202643 () Bool)

(assert (=> (not b_lambda!202643) (not b!5245221)))

(declare-fun m!6289192 () Bool)

(assert (=> b!5245221 m!6289192))

(declare-fun m!6289194 () Bool)

(assert (=> b!5245222 m!6289194))

(assert (=> d!1689543 d!1689955))

(declare-fun bs!1216834 () Bool)

(declare-fun d!1689957 () Bool)

(assert (= bs!1216834 (and d!1689957 d!1689863)))

(declare-fun lambda!263939 () Int)

(assert (=> bs!1216834 (= lambda!263939 lambda!263928)))

(declare-fun bs!1216835 () Bool)

(assert (= bs!1216835 (and d!1689957 d!1689781)))

(assert (=> bs!1216835 (= lambda!263939 lambda!263916)))

(declare-fun bs!1216836 () Bool)

(assert (= bs!1216836 (and d!1689957 d!1689711)))

(assert (=> bs!1216836 (= lambda!263939 lambda!263909)))

(declare-fun bs!1216837 () Bool)

(assert (= bs!1216837 (and d!1689957 d!1689933)))

(assert (=> bs!1216837 (= lambda!263939 lambda!263937)))

(declare-fun bs!1216838 () Bool)

(assert (= bs!1216838 (and d!1689957 d!1689927)))

(assert (=> bs!1216838 (= lambda!263939 lambda!263935)))

(declare-fun bs!1216839 () Bool)

(assert (= bs!1216839 (and d!1689957 d!1689923)))

(assert (=> bs!1216839 (= lambda!263939 lambda!263934)))

(declare-fun bs!1216840 () Bool)

(assert (= bs!1216840 (and d!1689957 d!1689789)))

(assert (=> bs!1216840 (= lambda!263939 lambda!263917)))

(declare-fun bs!1216841 () Bool)

(assert (= bs!1216841 (and d!1689957 d!1689843)))

(assert (=> bs!1216841 (= lambda!263939 lambda!263924)))

(assert (=> d!1689957 (= (nullableZipper!1261 z!1189) (exists!1980 z!1189 lambda!263939))))

(declare-fun bs!1216842 () Bool)

(assert (= bs!1216842 d!1689957))

(declare-fun m!6289196 () Bool)

(assert (=> bs!1216842 m!6289196))

(assert (=> b!5244458 d!1689957))

(declare-fun d!1689959 () Bool)

(assert (=> d!1689959 (= ($colon$colon!1311 (exprs!4730 lt!2149388) (ite (or c!906562 c!906559) (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (regOne!30205 (regOne!30204 r!7292)))) (Cons!60713 (ite (or c!906562 c!906559) (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (regOne!30205 (regOne!30204 r!7292))) (exprs!4730 lt!2149388)))))

(assert (=> bm!371272 d!1689959))

(declare-fun d!1689961 () Bool)

(assert (=> d!1689961 (= (head!11241 lt!2149356) (h!67161 lt!2149356))))

(assert (=> b!5244367 d!1689961))

(declare-fun d!1689963 () Bool)

(assert (=> d!1689963 (= (nullable!5015 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))) (nullableFct!1413 (h!67161 (exprs!4730 (Context!8461 (Cons!60713 (h!67161 (exprs!4730 (h!67162 zl!343))) (t!374018 (exprs!4730 (h!67162 zl!343)))))))))))

(declare-fun bs!1216843 () Bool)

(assert (= bs!1216843 d!1689963))

(declare-fun m!6289198 () Bool)

(assert (=> bs!1216843 m!6289198))

(assert (=> b!5244192 d!1689963))

(declare-fun b!5245223 () Bool)

(declare-fun call!371496 () (Set Context!8460))

(declare-fun e!3263508 () (Set Context!8460))

(assert (=> b!5245223 (= e!3263508 (set.union call!371496 (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149349)))))) (h!67163 s!2326))))))

(declare-fun b!5245224 () Bool)

(declare-fun e!3263507 () Bool)

(assert (=> b!5245224 (= e!3263507 (nullable!5015 (h!67161 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149349)))))))))

(declare-fun d!1689965 () Bool)

(declare-fun c!906976 () Bool)

(assert (=> d!1689965 (= c!906976 e!3263507)))

(declare-fun res!2225999 () Bool)

(assert (=> d!1689965 (=> (not res!2225999) (not e!3263507))))

(assert (=> d!1689965 (= res!2225999 (is-Cons!60713 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149349))))))))

(assert (=> d!1689965 (= (derivationStepZipperUp!218 (Context!8461 (t!374018 (exprs!4730 lt!2149349))) (h!67163 s!2326)) e!3263508)))

(declare-fun b!5245225 () Bool)

(declare-fun e!3263506 () (Set Context!8460))

(assert (=> b!5245225 (= e!3263508 e!3263506)))

(declare-fun c!906977 () Bool)

(assert (=> b!5245225 (= c!906977 (is-Cons!60713 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149349))))))))

(declare-fun b!5245226 () Bool)

(assert (=> b!5245226 (= e!3263506 call!371496)))

(declare-fun bm!371491 () Bool)

(assert (=> bm!371491 (= call!371496 (derivationStepZipperDown!294 (h!67161 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149349))))) (Context!8461 (t!374018 (exprs!4730 (Context!8461 (t!374018 (exprs!4730 lt!2149349)))))) (h!67163 s!2326)))))

(declare-fun b!5245227 () Bool)

(assert (=> b!5245227 (= e!3263506 (as set.empty (Set Context!8460)))))

(assert (= (and d!1689965 res!2225999) b!5245224))

(assert (= (and d!1689965 c!906976) b!5245223))

(assert (= (and d!1689965 (not c!906976)) b!5245225))

(assert (= (and b!5245225 c!906977) b!5245226))

(assert (= (and b!5245225 (not c!906977)) b!5245227))

(assert (= (or b!5245223 b!5245226) bm!371491))

(declare-fun m!6289200 () Bool)

(assert (=> b!5245223 m!6289200))

(declare-fun m!6289202 () Bool)

(assert (=> b!5245224 m!6289202))

(declare-fun m!6289204 () Bool)

(assert (=> bm!371491 m!6289204))

(assert (=> b!5244460 d!1689965))

(declare-fun d!1689967 () Bool)

(assert (=> d!1689967 (= (isEmpty!32650 (exprs!4730 (h!67162 zl!343))) (is-Nil!60713 (exprs!4730 (h!67162 zl!343))))))

(assert (=> b!5243751 d!1689967))

(declare-fun b!5245228 () Bool)

(declare-fun c!906982 () Bool)

(declare-fun e!3263513 () Bool)

(assert (=> b!5245228 (= c!906982 e!3263513)))

(declare-fun res!2226000 () Bool)

(assert (=> b!5245228 (=> (not res!2226000) (not e!3263513))))

(assert (=> b!5245228 (= res!2226000 (is-Concat!23691 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292))))))))))

(declare-fun e!3263509 () (Set Context!8460))

(declare-fun e!3263514 () (Set Context!8460))

(assert (=> b!5245228 (= e!3263509 e!3263514)))

(declare-fun b!5245229 () Bool)

(declare-fun e!3263512 () (Set Context!8460))

(declare-fun call!371501 () (Set Context!8460))

(assert (=> b!5245229 (= e!3263512 call!371501)))

(declare-fun bm!371492 () Bool)

(declare-fun call!371502 () (Set Context!8460))

(declare-fun call!371500 () (Set Context!8460))

(assert (=> bm!371492 (= call!371502 call!371500)))

(declare-fun b!5245230 () Bool)

(declare-fun call!371497 () (Set Context!8460))

(assert (=> b!5245230 (= e!3263514 (set.union call!371497 call!371502))))

(declare-fun b!5245231 () Bool)

(assert (=> b!5245231 (= e!3263512 (as set.empty (Set Context!8460)))))

(declare-fun c!906978 () Bool)

(declare-fun call!371499 () List!60837)

(declare-fun c!906979 () Bool)

(declare-fun bm!371493 () Bool)

(assert (=> bm!371493 (= call!371500 (derivationStepZipperDown!294 (ite c!906978 (regOne!30205 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292))))))) (ite c!906982 (regTwo!30204 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292))))))) (ite c!906979 (regOne!30204 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292))))))) (reg!15175 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292)))))))))) (ite (or c!906978 c!906982) (ite (or c!906558 c!906562) lt!2149388 (Context!8461 call!371277)) (Context!8461 call!371499)) (h!67163 s!2326)))))

(declare-fun b!5245232 () Bool)

(assert (=> b!5245232 (= e!3263509 (set.union call!371500 call!371497))))

(declare-fun b!5245233 () Bool)

(declare-fun e!3263510 () (Set Context!8460))

(assert (=> b!5245233 (= e!3263510 call!371501)))

(declare-fun c!906981 () Bool)

(declare-fun d!1689969 () Bool)

(assert (=> d!1689969 (= c!906981 (and (is-ElementMatch!14846 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292))))))) (= (c!906500 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292))))))) (h!67163 s!2326))))))

(declare-fun e!3263511 () (Set Context!8460))

(assert (=> d!1689969 (= (derivationStepZipperDown!294 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292)))))) (ite (or c!906558 c!906562) lt!2149388 (Context!8461 call!371277)) (h!67163 s!2326)) e!3263511)))

(declare-fun c!906980 () Bool)

(declare-fun b!5245234 () Bool)

(assert (=> b!5245234 (= c!906980 (is-Star!14846 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292))))))))))

(assert (=> b!5245234 (= e!3263510 e!3263512)))

(declare-fun bm!371494 () Bool)

(declare-fun call!371498 () List!60837)

(assert (=> bm!371494 (= call!371498 ($colon$colon!1311 (exprs!4730 (ite (or c!906558 c!906562) lt!2149388 (Context!8461 call!371277))) (ite (or c!906982 c!906979) (regTwo!30204 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292))))))) (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292)))))))))))

(declare-fun b!5245235 () Bool)

(assert (=> b!5245235 (= e!3263511 e!3263509)))

(assert (=> b!5245235 (= c!906978 (is-Union!14846 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292))))))))))

(declare-fun bm!371495 () Bool)

(assert (=> bm!371495 (= call!371501 call!371502)))

(declare-fun bm!371496 () Bool)

(assert (=> bm!371496 (= call!371497 (derivationStepZipperDown!294 (ite c!906978 (regTwo!30205 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292))))))) (regOne!30204 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292)))))))) (ite c!906978 (ite (or c!906558 c!906562) lt!2149388 (Context!8461 call!371277)) (Context!8461 call!371498)) (h!67163 s!2326)))))

(declare-fun b!5245236 () Bool)

(assert (=> b!5245236 (= e!3263511 (set.insert (ite (or c!906558 c!906562) lt!2149388 (Context!8461 call!371277)) (as set.empty (Set Context!8460))))))

(declare-fun b!5245237 () Bool)

(assert (=> b!5245237 (= e!3263513 (nullable!5015 (regOne!30204 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292)))))))))))

(declare-fun b!5245238 () Bool)

(assert (=> b!5245238 (= e!3263514 e!3263510)))

(assert (=> b!5245238 (= c!906979 (is-Concat!23691 (ite c!906558 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (ite c!906562 (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))) (ite c!906559 (regOne!30204 (regOne!30205 (regOne!30204 r!7292))) (reg!15175 (regOne!30205 (regOne!30204 r!7292))))))))))

(declare-fun bm!371497 () Bool)

(assert (=> bm!371497 (= call!371499 call!371498)))

(assert (= (and d!1689969 c!906981) b!5245236))

(assert (= (and d!1689969 (not c!906981)) b!5245235))

(assert (= (and b!5245235 c!906978) b!5245232))

(assert (= (and b!5245235 (not c!906978)) b!5245228))

(assert (= (and b!5245228 res!2226000) b!5245237))

(assert (= (and b!5245228 c!906982) b!5245230))

(assert (= (and b!5245228 (not c!906982)) b!5245238))

(assert (= (and b!5245238 c!906979) b!5245233))

(assert (= (and b!5245238 (not c!906979)) b!5245234))

(assert (= (and b!5245234 c!906980) b!5245229))

(assert (= (and b!5245234 (not c!906980)) b!5245231))

(assert (= (or b!5245233 b!5245229) bm!371497))

(assert (= (or b!5245233 b!5245229) bm!371495))

(assert (= (or b!5245230 bm!371497) bm!371494))

(assert (= (or b!5245230 bm!371495) bm!371492))

(assert (= (or b!5245232 b!5245230) bm!371496))

(assert (= (or b!5245232 bm!371492) bm!371493))

(declare-fun m!6289206 () Bool)

(assert (=> bm!371493 m!6289206))

(declare-fun m!6289208 () Bool)

(assert (=> bm!371496 m!6289208))

(declare-fun m!6289210 () Bool)

(assert (=> b!5245236 m!6289210))

(declare-fun m!6289212 () Bool)

(assert (=> bm!371494 m!6289212))

(declare-fun m!6289214 () Bool)

(assert (=> b!5245237 m!6289214))

(assert (=> bm!371271 d!1689969))

(declare-fun d!1689971 () Bool)

(assert (=> d!1689971 (= (isEmpty!32650 (t!374018 lt!2149356)) (is-Nil!60713 (t!374018 lt!2149356)))))

(assert (=> b!5244363 d!1689971))

(declare-fun d!1689973 () Bool)

(assert (=> d!1689973 (= (Exists!2027 (ite c!906741 lambda!263883 lambda!263886)) (choose!39052 (ite c!906741 lambda!263883 lambda!263886)))))

(declare-fun bs!1216844 () Bool)

(assert (= bs!1216844 d!1689973))

(declare-fun m!6289216 () Bool)

(assert (=> bs!1216844 m!6289216))

(assert (=> bm!371349 d!1689973))

(assert (=> d!1689399 d!1689699))

(declare-fun bs!1216845 () Bool)

(declare-fun d!1689975 () Bool)

(assert (= bs!1216845 (and d!1689975 d!1689597)))

(declare-fun lambda!263940 () Int)

(assert (=> bs!1216845 (= lambda!263940 lambda!263894)))

(declare-fun bs!1216846 () Bool)

(assert (= bs!1216846 (and d!1689975 d!1689859)))

(assert (=> bs!1216846 (= lambda!263940 lambda!263927)))

(declare-fun bs!1216847 () Bool)

(assert (= bs!1216847 (and d!1689975 d!1689857)))

(assert (=> bs!1216847 (= lambda!263940 lambda!263926)))

(declare-fun bs!1216848 () Bool)

(assert (= bs!1216848 (and d!1689975 d!1689417)))

(assert (=> bs!1216848 (= lambda!263940 lambda!263845)))

(declare-fun bs!1216849 () Bool)

(assert (= bs!1216849 (and d!1689975 d!1689547)))

(assert (=> bs!1216849 (= lambda!263940 lambda!263882)))

(declare-fun bs!1216850 () Bool)

(assert (= bs!1216850 (and d!1689975 d!1689403)))

(assert (=> bs!1216850 (= lambda!263940 lambda!263836)))

(declare-fun bs!1216851 () Bool)

(assert (= bs!1216851 (and d!1689975 b!5243561)))

(assert (=> bs!1216851 (= lambda!263940 lambda!263815)))

(declare-fun bs!1216852 () Bool)

(assert (= bs!1216852 (and d!1689975 d!1689531)))

(assert (=> bs!1216852 (= lambda!263940 lambda!263878)))

(declare-fun bs!1216853 () Bool)

(assert (= bs!1216853 (and d!1689975 d!1689839)))

(assert (=> bs!1216853 (= lambda!263940 lambda!263923)))

(declare-fun bs!1216854 () Bool)

(assert (= bs!1216854 (and d!1689975 d!1689799)))

(assert (=> bs!1216854 (= lambda!263940 lambda!263920)))

(declare-fun bs!1216855 () Bool)

(assert (= bs!1216855 (and d!1689975 d!1689757)))

(assert (=> bs!1216855 (= lambda!263940 lambda!263914)))

(declare-fun bs!1216856 () Bool)

(assert (= bs!1216856 (and d!1689975 d!1689543)))

(assert (=> bs!1216856 (= lambda!263940 lambda!263881)))

(declare-fun bs!1216857 () Bool)

(assert (= bs!1216857 (and d!1689975 d!1689515)))

(assert (=> bs!1216857 (= lambda!263940 lambda!263875)))

(assert (=> d!1689975 (= (inv!80363 (h!67162 (t!374019 zl!343))) (forall!14270 (exprs!4730 (h!67162 (t!374019 zl!343))) lambda!263940))))

(declare-fun bs!1216858 () Bool)

(assert (= bs!1216858 d!1689975))

(declare-fun m!6289218 () Bool)

(assert (=> bs!1216858 m!6289218))

(assert (=> b!5244558 d!1689975))

(declare-fun d!1689977 () Bool)

(assert (=> d!1689977 (= (Exists!2027 lambda!263856) (choose!39052 lambda!263856))))

(declare-fun bs!1216859 () Bool)

(assert (= bs!1216859 d!1689977))

(declare-fun m!6289220 () Bool)

(assert (=> bs!1216859 m!6289220))

(assert (=> d!1689441 d!1689977))

(declare-fun d!1689979 () Bool)

(assert (=> d!1689979 (= (Exists!2027 lambda!263857) (choose!39052 lambda!263857))))

(declare-fun bs!1216860 () Bool)

(assert (= bs!1216860 d!1689979))

(declare-fun m!6289222 () Bool)

(assert (=> bs!1216860 m!6289222))

(assert (=> d!1689441 d!1689979))

(declare-fun bs!1216861 () Bool)

(declare-fun d!1689981 () Bool)

(assert (= bs!1216861 (and d!1689981 b!5245094)))

(declare-fun lambda!263945 () Int)

(assert (=> bs!1216861 (not (= lambda!263945 lambda!263929))))

(declare-fun bs!1216862 () Bool)

(assert (= bs!1216862 (and d!1689981 b!5244910)))

(assert (=> bs!1216862 (not (= lambda!263945 lambda!263919))))

(declare-fun bs!1216863 () Bool)

(assert (= bs!1216863 (and d!1689981 b!5244920)))

(assert (=> bs!1216863 (not (= lambda!263945 lambda!263918))))

(declare-fun bs!1216864 () Bool)

(assert (= bs!1216864 (and d!1689981 b!5244403)))

(assert (=> bs!1216864 (not (= lambda!263945 lambda!263886))))

(declare-fun bs!1216865 () Bool)

(assert (= bs!1216865 (and d!1689981 b!5244317)))

(assert (=> bs!1216865 (not (= lambda!263945 lambda!263880))))

(declare-fun bs!1216866 () Bool)

(assert (= bs!1216866 (and d!1689981 d!1689441)))

(assert (=> bs!1216866 (= lambda!263945 lambda!263856)))

(declare-fun bs!1216867 () Bool)

(assert (= bs!1216867 (and d!1689981 b!5244327)))

(assert (=> bs!1216867 (not (= lambda!263945 lambda!263879))))

(declare-fun bs!1216868 () Bool)

(assert (= bs!1216868 (and d!1689981 b!5244692)))

(assert (=> bs!1216868 (not (= lambda!263945 lambda!263902))))

(declare-fun bs!1216869 () Bool)

(assert (= bs!1216869 (and d!1689981 b!5243550)))

(assert (=> bs!1216869 (not (= lambda!263945 lambda!263813))))

(declare-fun bs!1216870 () Bool)

(assert (= bs!1216870 (and d!1689981 b!5244761)))

(assert (=> bs!1216870 (not (= lambda!263945 lambda!263911))))

(declare-fun bs!1216871 () Bool)

(assert (= bs!1216871 (and d!1689981 d!1689431)))

(assert (=> bs!1216871 (= lambda!263945 lambda!263851)))

(assert (=> bs!1216866 (not (= lambda!263945 lambda!263857))))

(declare-fun bs!1216872 () Bool)

(assert (= bs!1216872 (and d!1689981 b!5244075)))

(assert (=> bs!1216872 (not (= lambda!263945 lambda!263862))))

(declare-fun bs!1216873 () Bool)

(assert (= bs!1216873 (and d!1689981 b!5245132)))

(assert (=> bs!1216873 (not (= lambda!263945 lambda!263933))))

(declare-fun bs!1216874 () Bool)

(assert (= bs!1216874 (and d!1689981 b!5244682)))

(assert (=> bs!1216874 (not (= lambda!263945 lambda!263903))))

(declare-fun bs!1216875 () Bool)

(assert (= bs!1216875 (and d!1689981 b!5245084)))

(assert (=> bs!1216875 (not (= lambda!263945 lambda!263930))))

(declare-fun bs!1216876 () Bool)

(assert (= bs!1216876 (and d!1689981 b!5244065)))

(assert (=> bs!1216876 (not (= lambda!263945 lambda!263863))))

(declare-fun bs!1216877 () Bool)

(assert (= bs!1216877 (and d!1689981 b!5245142)))

(assert (=> bs!1216877 (not (= lambda!263945 lambda!263932))))

(declare-fun bs!1216878 () Bool)

(assert (= bs!1216878 (and d!1689981 b!5244413)))

(assert (=> bs!1216878 (not (= lambda!263945 lambda!263883))))

(assert (=> bs!1216869 (= lambda!263945 lambda!263812)))

(declare-fun bs!1216879 () Bool)

(assert (= bs!1216879 (and d!1689981 b!5244771)))

(assert (=> bs!1216879 (not (= lambda!263945 lambda!263910))))

(assert (=> d!1689981 true))

(assert (=> d!1689981 true))

(assert (=> d!1689981 true))

(declare-fun lambda!263946 () Int)

(assert (=> bs!1216861 (not (= lambda!263946 lambda!263929))))

(assert (=> bs!1216862 (= (and (= (regOne!30204 r!7292) (regOne!30204 (regOne!30205 lt!2149381))) (= (regTwo!30204 r!7292) (regTwo!30204 (regOne!30205 lt!2149381)))) (= lambda!263946 lambda!263919))))

(assert (=> bs!1216863 (not (= lambda!263946 lambda!263918))))

(assert (=> bs!1216864 (= (and (= (regOne!30204 r!7292) (regOne!30204 lt!2149350)) (= (regTwo!30204 r!7292) (regTwo!30204 lt!2149350))) (= lambda!263946 lambda!263886))))

(assert (=> bs!1216865 (= (and (= (regOne!30204 r!7292) (regOne!30204 lt!2149381)) (= (regTwo!30204 r!7292) (regTwo!30204 lt!2149381))) (= lambda!263946 lambda!263880))))

(assert (=> bs!1216866 (not (= lambda!263946 lambda!263856))))

(assert (=> bs!1216868 (not (= lambda!263946 lambda!263902))))

(assert (=> bs!1216869 (= lambda!263946 lambda!263813)))

(assert (=> bs!1216870 (= (and (= (regOne!30204 r!7292) (regOne!30204 (regOne!30205 r!7292))) (= (regTwo!30204 r!7292) (regTwo!30204 (regOne!30205 r!7292)))) (= lambda!263946 lambda!263911))))

(assert (=> bs!1216871 (not (= lambda!263946 lambda!263851))))

(assert (=> bs!1216866 (= lambda!263946 lambda!263857)))

(assert (=> bs!1216872 (not (= lambda!263946 lambda!263862))))

(assert (=> bs!1216873 (= (and (= (regOne!30204 r!7292) (regOne!30204 (regTwo!30205 r!7292))) (= (regTwo!30204 r!7292) (regTwo!30204 (regTwo!30205 r!7292)))) (= lambda!263946 lambda!263933))))

(assert (=> bs!1216874 (= (and (= (regOne!30204 r!7292) (regOne!30204 (regOne!30205 lt!2149350))) (= (regTwo!30204 r!7292) (regTwo!30204 (regOne!30205 lt!2149350)))) (= lambda!263946 lambda!263903))))

(assert (=> bs!1216875 (= (and (= (regOne!30204 r!7292) (regOne!30204 (regTwo!30205 lt!2149350))) (= (regTwo!30204 r!7292) (regTwo!30204 (regTwo!30205 lt!2149350)))) (= lambda!263946 lambda!263930))))

(assert (=> bs!1216867 (not (= lambda!263946 lambda!263879))))

(declare-fun bs!1216880 () Bool)

(assert (= bs!1216880 d!1689981))

(assert (=> bs!1216880 (not (= lambda!263946 lambda!263945))))

(assert (=> bs!1216876 (= lambda!263946 lambda!263863)))

(assert (=> bs!1216877 (not (= lambda!263946 lambda!263932))))

(assert (=> bs!1216878 (not (= lambda!263946 lambda!263883))))

(assert (=> bs!1216869 (not (= lambda!263946 lambda!263812))))

(assert (=> bs!1216879 (not (= lambda!263946 lambda!263910))))

(assert (=> d!1689981 true))

(assert (=> d!1689981 true))

(assert (=> d!1689981 true))

(assert (=> d!1689981 (= (Exists!2027 lambda!263945) (Exists!2027 lambda!263946))))

(assert (=> d!1689981 true))

(declare-fun _$90!1051 () Unit!152782)

(assert (=> d!1689981 (= (choose!39054 (regOne!30204 r!7292) (regTwo!30204 r!7292) s!2326) _$90!1051)))

(declare-fun m!6289224 () Bool)

(assert (=> bs!1216880 m!6289224))

(declare-fun m!6289226 () Bool)

(assert (=> bs!1216880 m!6289226))

(assert (=> d!1689441 d!1689981))

(assert (=> d!1689441 d!1689903))

(declare-fun b!5245247 () Bool)

(declare-fun e!3263522 () Bool)

(declare-fun e!3263519 () Bool)

(assert (=> b!5245247 (= e!3263522 e!3263519)))

(declare-fun res!2226012 () Bool)

(assert (=> b!5245247 (=> (not res!2226012) (not e!3263519))))

(assert (=> b!5245247 (= res!2226012 (and (not (is-EmptyLang!14846 (regOne!30205 (regOne!30204 r!7292)))) (not (is-ElementMatch!14846 (regOne!30205 (regOne!30204 r!7292))))))))

(declare-fun b!5245248 () Bool)

(declare-fun e!3263520 () Bool)

(assert (=> b!5245248 (= e!3263519 e!3263520)))

(declare-fun res!2226009 () Bool)

(assert (=> b!5245248 (=> res!2226009 e!3263520)))

(assert (=> b!5245248 (= res!2226009 (is-Star!14846 (regOne!30205 (regOne!30204 r!7292))))))

(declare-fun b!5245249 () Bool)

(declare-fun e!3263524 () Bool)

(declare-fun call!371504 () Bool)

(assert (=> b!5245249 (= e!3263524 call!371504)))

(declare-fun b!5245250 () Bool)

(declare-fun e!3263523 () Bool)

(declare-fun e!3263521 () Bool)

(assert (=> b!5245250 (= e!3263523 e!3263521)))

(declare-fun res!2226013 () Bool)

(declare-fun call!371503 () Bool)

(assert (=> b!5245250 (= res!2226013 call!371503)))

(assert (=> b!5245250 (=> res!2226013 e!3263521)))

(declare-fun b!5245251 () Bool)

(assert (=> b!5245251 (= e!3263520 e!3263523)))

(declare-fun c!906983 () Bool)

(assert (=> b!5245251 (= c!906983 (is-Union!14846 (regOne!30205 (regOne!30204 r!7292))))))

(declare-fun bm!371498 () Bool)

(assert (=> bm!371498 (= call!371504 (nullable!5015 (ite c!906983 (regTwo!30205 (regOne!30205 (regOne!30204 r!7292))) (regTwo!30204 (regOne!30205 (regOne!30204 r!7292))))))))

(declare-fun b!5245252 () Bool)

(assert (=> b!5245252 (= e!3263523 e!3263524)))

(declare-fun res!2226011 () Bool)

(assert (=> b!5245252 (= res!2226011 call!371503)))

(assert (=> b!5245252 (=> (not res!2226011) (not e!3263524))))

(declare-fun bm!371499 () Bool)

(assert (=> bm!371499 (= call!371503 (nullable!5015 (ite c!906983 (regOne!30205 (regOne!30205 (regOne!30204 r!7292))) (regOne!30204 (regOne!30205 (regOne!30204 r!7292))))))))

(declare-fun b!5245253 () Bool)

(assert (=> b!5245253 (= e!3263521 call!371504)))

(declare-fun d!1689983 () Bool)

(declare-fun res!2226010 () Bool)

(assert (=> d!1689983 (=> res!2226010 e!3263522)))

(assert (=> d!1689983 (= res!2226010 (is-EmptyExpr!14846 (regOne!30205 (regOne!30204 r!7292))))))

(assert (=> d!1689983 (= (nullableFct!1413 (regOne!30205 (regOne!30204 r!7292))) e!3263522)))

(assert (= (and d!1689983 (not res!2226010)) b!5245247))

(assert (= (and b!5245247 res!2226012) b!5245248))

(assert (= (and b!5245248 (not res!2226009)) b!5245251))

(assert (= (and b!5245251 c!906983) b!5245250))

(assert (= (and b!5245251 (not c!906983)) b!5245252))

(assert (= (and b!5245250 (not res!2226013)) b!5245253))

(assert (= (and b!5245252 res!2226011) b!5245249))

(assert (= (or b!5245253 b!5245249) bm!371498))

(assert (= (or b!5245250 b!5245252) bm!371499))

(declare-fun m!6289228 () Bool)

(assert (=> bm!371498 m!6289228))

(declare-fun m!6289230 () Bool)

(assert (=> bm!371499 m!6289230))

(assert (=> d!1689589 d!1689983))

(assert (=> b!5244129 d!1689701))

(assert (=> b!5244129 d!1689691))

(declare-fun c!906985 () Bool)

(declare-fun bm!371500 () Bool)

(declare-fun c!906984 () Bool)

(declare-fun call!371507 () Bool)

(assert (=> bm!371500 (= call!371507 (validRegex!6582 (ite c!906985 (reg!15175 lt!2149645) (ite c!906984 (regOne!30205 lt!2149645) (regOne!30204 lt!2149645)))))))

(declare-fun b!5245254 () Bool)

(declare-fun e!3263528 () Bool)

(declare-fun e!3263530 () Bool)

(assert (=> b!5245254 (= e!3263528 e!3263530)))

(assert (=> b!5245254 (= c!906984 (is-Union!14846 lt!2149645))))

(declare-fun b!5245255 () Bool)

(declare-fun e!3263529 () Bool)

(assert (=> b!5245255 (= e!3263529 e!3263528)))

(assert (=> b!5245255 (= c!906985 (is-Star!14846 lt!2149645))))

(declare-fun b!5245256 () Bool)

(declare-fun res!2226016 () Bool)

(declare-fun e!3263531 () Bool)

(assert (=> b!5245256 (=> (not res!2226016) (not e!3263531))))

(declare-fun call!371505 () Bool)

(assert (=> b!5245256 (= res!2226016 call!371505)))

(assert (=> b!5245256 (= e!3263530 e!3263531)))

(declare-fun bm!371501 () Bool)

(declare-fun call!371506 () Bool)

(assert (=> bm!371501 (= call!371506 (validRegex!6582 (ite c!906984 (regTwo!30205 lt!2149645) (regTwo!30204 lt!2149645))))))

(declare-fun bm!371502 () Bool)

(assert (=> bm!371502 (= call!371505 call!371507)))

(declare-fun b!5245257 () Bool)

(declare-fun e!3263527 () Bool)

(assert (=> b!5245257 (= e!3263528 e!3263527)))

(declare-fun res!2226017 () Bool)

(assert (=> b!5245257 (= res!2226017 (not (nullable!5015 (reg!15175 lt!2149645))))))

(assert (=> b!5245257 (=> (not res!2226017) (not e!3263527))))

(declare-fun b!5245258 () Bool)

(declare-fun e!3263526 () Bool)

(assert (=> b!5245258 (= e!3263526 call!371506)))

(declare-fun b!5245259 () Bool)

(declare-fun res!2226015 () Bool)

(declare-fun e!3263525 () Bool)

(assert (=> b!5245259 (=> res!2226015 e!3263525)))

(assert (=> b!5245259 (= res!2226015 (not (is-Concat!23691 lt!2149645)))))

(assert (=> b!5245259 (= e!3263530 e!3263525)))

(declare-fun b!5245261 () Bool)

(assert (=> b!5245261 (= e!3263527 call!371507)))

(declare-fun b!5245262 () Bool)

(assert (=> b!5245262 (= e!3263531 call!371506)))

(declare-fun b!5245260 () Bool)

(assert (=> b!5245260 (= e!3263525 e!3263526)))

(declare-fun res!2226018 () Bool)

(assert (=> b!5245260 (=> (not res!2226018) (not e!3263526))))

(assert (=> b!5245260 (= res!2226018 call!371505)))

(declare-fun d!1689985 () Bool)

(declare-fun res!2226014 () Bool)

(assert (=> d!1689985 (=> res!2226014 e!3263529)))

(assert (=> d!1689985 (= res!2226014 (is-ElementMatch!14846 lt!2149645))))

(assert (=> d!1689985 (= (validRegex!6582 lt!2149645) e!3263529)))

(assert (= (and d!1689985 (not res!2226014)) b!5245255))

(assert (= (and b!5245255 c!906985) b!5245257))

(assert (= (and b!5245255 (not c!906985)) b!5245254))

(assert (= (and b!5245257 res!2226017) b!5245261))

(assert (= (and b!5245254 c!906984) b!5245256))

(assert (= (and b!5245254 (not c!906984)) b!5245259))

(assert (= (and b!5245256 res!2226016) b!5245262))

(assert (= (and b!5245259 (not res!2226015)) b!5245260))

(assert (= (and b!5245260 res!2226018) b!5245258))

(assert (= (or b!5245262 b!5245258) bm!371501))

(assert (= (or b!5245256 b!5245260) bm!371502))

(assert (= (or b!5245261 bm!371502) bm!371500))

(declare-fun m!6289232 () Bool)

(assert (=> bm!371500 m!6289232))

(declare-fun m!6289234 () Bool)

(assert (=> bm!371501 m!6289234))

(declare-fun m!6289236 () Bool)

(assert (=> b!5245257 m!6289236))

(assert (=> d!1689613 d!1689985))

(assert (=> d!1689613 d!1689515))

(assert (=> d!1689613 d!1689531))

(declare-fun d!1689987 () Bool)

(assert (=> d!1689987 (= (isEmptyExpr!796 lt!2149536) (is-EmptyExpr!14846 lt!2149536))))

(assert (=> b!5243759 d!1689987))

(declare-fun d!1689989 () Bool)

(assert (=> d!1689989 (= (isEmpty!32650 (tail!10338 (unfocusZipperList!288 zl!343))) (is-Nil!60713 (tail!10338 (unfocusZipperList!288 zl!343))))))

(assert (=> b!5244302 d!1689989))

(declare-fun d!1689991 () Bool)

(assert (=> d!1689991 (= (tail!10338 (unfocusZipperList!288 zl!343)) (t!374018 (unfocusZipperList!288 zl!343)))))

(assert (=> b!5244302 d!1689991))

(declare-fun b!5245263 () Bool)

(declare-fun c!906990 () Bool)

(declare-fun e!3263536 () Bool)

(assert (=> b!5245263 (= c!906990 e!3263536)))

(declare-fun res!2226019 () Bool)

(assert (=> b!5245263 (=> (not res!2226019) (not e!3263536))))

(assert (=> b!5245263 (= res!2226019 (is-Concat!23691 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))))))

(declare-fun e!3263532 () (Set Context!8460))

(declare-fun e!3263537 () (Set Context!8460))

(assert (=> b!5245263 (= e!3263532 e!3263537)))

(declare-fun b!5245264 () Bool)

(declare-fun e!3263535 () (Set Context!8460))

(declare-fun call!371512 () (Set Context!8460))

(assert (=> b!5245264 (= e!3263535 call!371512)))

(declare-fun bm!371503 () Bool)

(declare-fun call!371513 () (Set Context!8460))

(declare-fun call!371511 () (Set Context!8460))

(assert (=> bm!371503 (= call!371513 call!371511)))

(declare-fun b!5245265 () Bool)

(declare-fun call!371508 () (Set Context!8460))

(assert (=> b!5245265 (= e!3263537 (set.union call!371508 call!371513))))

(declare-fun b!5245266 () Bool)

(assert (=> b!5245266 (= e!3263535 (as set.empty (Set Context!8460)))))

(declare-fun bm!371504 () Bool)

(declare-fun call!371510 () List!60837)

(declare-fun c!906987 () Bool)

(declare-fun c!906986 () Bool)

(assert (=> bm!371504 (= call!371511 (derivationStepZipperDown!294 (ite c!906986 (regOne!30205 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))) (ite c!906990 (regTwo!30204 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))) (ite c!906987 (regOne!30204 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))) (reg!15175 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343))))))))) (ite (or c!906986 c!906990) (ite c!906681 lt!2149388 (Context!8461 call!371340)) (Context!8461 call!371510)) (h!67163 s!2326)))))

(declare-fun b!5245267 () Bool)

(assert (=> b!5245267 (= e!3263532 (set.union call!371511 call!371508))))

(declare-fun b!5245268 () Bool)

(declare-fun e!3263533 () (Set Context!8460))

(assert (=> b!5245268 (= e!3263533 call!371512)))

(declare-fun c!906989 () Bool)

(declare-fun d!1689993 () Bool)

(assert (=> d!1689993 (= c!906989 (and (is-ElementMatch!14846 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))) (= (c!906500 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))) (h!67163 s!2326))))))

(declare-fun e!3263534 () (Set Context!8460))

(assert (=> d!1689993 (= (derivationStepZipperDown!294 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343))))) (ite c!906681 lt!2149388 (Context!8461 call!371340)) (h!67163 s!2326)) e!3263534)))

(declare-fun b!5245269 () Bool)

(declare-fun c!906988 () Bool)

(assert (=> b!5245269 (= c!906988 (is-Star!14846 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))))))

(assert (=> b!5245269 (= e!3263533 e!3263535)))

(declare-fun bm!371505 () Bool)

(declare-fun call!371509 () List!60837)

(assert (=> bm!371505 (= call!371509 ($colon$colon!1311 (exprs!4730 (ite c!906681 lt!2149388 (Context!8461 call!371340))) (ite (or c!906990 c!906987) (regTwo!30204 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))) (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343))))))))))

(declare-fun b!5245270 () Bool)

(assert (=> b!5245270 (= e!3263534 e!3263532)))

(assert (=> b!5245270 (= c!906986 (is-Union!14846 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))))))

(declare-fun bm!371506 () Bool)

(assert (=> bm!371506 (= call!371512 call!371513)))

(declare-fun bm!371507 () Bool)

(assert (=> bm!371507 (= call!371508 (derivationStepZipperDown!294 (ite c!906986 (regTwo!30205 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))) (regOne!30204 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343))))))) (ite c!906986 (ite c!906681 lt!2149388 (Context!8461 call!371340)) (Context!8461 call!371509)) (h!67163 s!2326)))))

(declare-fun b!5245271 () Bool)

(assert (=> b!5245271 (= e!3263534 (set.insert (ite c!906681 lt!2149388 (Context!8461 call!371340)) (as set.empty (Set Context!8460))))))

(declare-fun b!5245272 () Bool)

(assert (=> b!5245272 (= e!3263536 (nullable!5015 (regOne!30204 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343))))))))))

(declare-fun b!5245273 () Bool)

(assert (=> b!5245273 (= e!3263537 e!3263533)))

(assert (=> b!5245273 (= c!906987 (is-Concat!23691 (ite c!906681 (regTwo!30205 (h!67161 (exprs!4730 (h!67162 zl!343)))) (regOne!30204 (h!67161 (exprs!4730 (h!67162 zl!343)))))))))

(declare-fun bm!371508 () Bool)

(assert (=> bm!371508 (= call!371510 call!371509)))

(assert (= (and d!1689993 c!906989) b!5245271))

(assert (= (and d!1689993 (not c!906989)) b!5245270))

(assert (= (and b!5245270 c!906986) b!5245267))

(assert (= (and b!5245270 (not c!906986)) b!5245263))

(assert (= (and b!5245263 res!2226019) b!5245272))

(assert (= (and b!5245263 c!906990) b!5245265))

(assert (= (and b!5245263 (not c!906990)) b!5245273))

(assert (= (and b!5245273 c!906987) b!5245268))

(assert (= (and b!5245273 (not c!906987)) b!5245269))

(assert (= (and b!5245269 c!906988) b!5245264))

(assert (= (and b!5245269 (not c!906988)) b!5245266))

(assert (= (or b!5245268 b!5245264) bm!371508))

(assert (= (or b!5245268 b!5245264) bm!371506))

(assert (= (or b!5245265 bm!371508) bm!371505))

(assert (= (or b!5245265 bm!371506) bm!371503))

(assert (= (or b!5245267 b!5245265) bm!371507))

(assert (= (or b!5245267 bm!371503) bm!371504))

(declare-fun m!6289238 () Bool)

(assert (=> bm!371504 m!6289238))

(declare-fun m!6289240 () Bool)

(assert (=> bm!371507 m!6289240))

(declare-fun m!6289242 () Bool)

(assert (=> b!5245271 m!6289242))

(declare-fun m!6289244 () Bool)

(assert (=> bm!371505 m!6289244))

(declare-fun m!6289246 () Bool)

(assert (=> b!5245272 m!6289246))

(assert (=> bm!371338 d!1689993))

(declare-fun d!1689995 () Bool)

(assert (=> d!1689995 true))

(declare-fun setRes!33465 () Bool)

(assert (=> d!1689995 setRes!33465))

(declare-fun condSetEmpty!33465 () Bool)

(declare-fun res!2226020 () (Set Context!8460))

(assert (=> d!1689995 (= condSetEmpty!33465 (= res!2226020 (as set.empty (Set Context!8460))))))

(assert (=> d!1689995 (= (choose!39058 lt!2149355 lambda!263814) res!2226020)))

(declare-fun setIsEmpty!33465 () Bool)

(assert (=> setIsEmpty!33465 setRes!33465))

(declare-fun e!3263538 () Bool)

(declare-fun setNonEmpty!33465 () Bool)

(declare-fun setElem!33465 () Context!8460)

(declare-fun tp!1468090 () Bool)

(assert (=> setNonEmpty!33465 (= setRes!33465 (and tp!1468090 (inv!80363 setElem!33465) e!3263538))))

(declare-fun setRest!33465 () (Set Context!8460))

(assert (=> setNonEmpty!33465 (= res!2226020 (set.union (set.insert setElem!33465 (as set.empty (Set Context!8460))) setRest!33465))))

(declare-fun b!5245274 () Bool)

(declare-fun tp!1468091 () Bool)

(assert (=> b!5245274 (= e!3263538 tp!1468091)))

(assert (= (and d!1689995 condSetEmpty!33465) setIsEmpty!33465))

(assert (= (and d!1689995 (not condSetEmpty!33465)) setNonEmpty!33465))

(assert (= setNonEmpty!33465 b!5245274))

(declare-fun m!6289248 () Bool)

(assert (=> setNonEmpty!33465 m!6289248))

(assert (=> d!1689575 d!1689995))

(declare-fun d!1689997 () Bool)

(assert (=> d!1689997 (= (nullable!5015 lt!2149350) (nullableFct!1413 lt!2149350))))

(declare-fun bs!1216881 () Bool)

(assert (= bs!1216881 d!1689997))

(declare-fun m!6289250 () Bool)

(assert (=> bs!1216881 m!6289250))

(assert (=> b!5244353 d!1689997))

(declare-fun call!371516 () Bool)

(declare-fun bm!371509 () Bool)

(declare-fun c!906992 () Bool)

(declare-fun c!906991 () Bool)

(assert (=> bm!371509 (= call!371516 (validRegex!6582 (ite c!906992 (reg!15175 (ite c!906752 (reg!15175 r!7292) (ite c!906751 (regOne!30205 r!7292) (regOne!30204 r!7292)))) (ite c!906991 (regOne!30205 (ite c!906752 (reg!15175 r!7292) (ite c!906751 (regOne!30205 r!7292) (regOne!30204 r!7292)))) (regOne!30204 (ite c!906752 (reg!15175 r!7292) (ite c!906751 (regOne!30205 r!7292) (regOne!30204 r!7292))))))))))

(declare-fun b!5245275 () Bool)

(declare-fun e!3263542 () Bool)

(declare-fun e!3263544 () Bool)

(assert (=> b!5245275 (= e!3263542 e!3263544)))

(assert (=> b!5245275 (= c!906991 (is-Union!14846 (ite c!906752 (reg!15175 r!7292) (ite c!906751 (regOne!30205 r!7292) (regOne!30204 r!7292)))))))

(declare-fun b!5245276 () Bool)

(declare-fun e!3263543 () Bool)

(assert (=> b!5245276 (= e!3263543 e!3263542)))

(assert (=> b!5245276 (= c!906992 (is-Star!14846 (ite c!906752 (reg!15175 r!7292) (ite c!906751 (regOne!30205 r!7292) (regOne!30204 r!7292)))))))

(declare-fun b!5245277 () Bool)

(declare-fun res!2226023 () Bool)

(declare-fun e!3263545 () Bool)

(assert (=> b!5245277 (=> (not res!2226023) (not e!3263545))))

(declare-fun call!371514 () Bool)

(assert (=> b!5245277 (= res!2226023 call!371514)))

(assert (=> b!5245277 (= e!3263544 e!3263545)))

(declare-fun call!371515 () Bool)

(declare-fun bm!371510 () Bool)

(assert (=> bm!371510 (= call!371515 (validRegex!6582 (ite c!906991 (regTwo!30205 (ite c!906752 (reg!15175 r!7292) (ite c!906751 (regOne!30205 r!7292) (regOne!30204 r!7292)))) (regTwo!30204 (ite c!906752 (reg!15175 r!7292) (ite c!906751 (regOne!30205 r!7292) (regOne!30204 r!7292)))))))))

(declare-fun bm!371511 () Bool)

(assert (=> bm!371511 (= call!371514 call!371516)))

(declare-fun b!5245278 () Bool)

(declare-fun e!3263541 () Bool)

(assert (=> b!5245278 (= e!3263542 e!3263541)))

(declare-fun res!2226024 () Bool)

(assert (=> b!5245278 (= res!2226024 (not (nullable!5015 (reg!15175 (ite c!906752 (reg!15175 r!7292) (ite c!906751 (regOne!30205 r!7292) (regOne!30204 r!7292)))))))))

(assert (=> b!5245278 (=> (not res!2226024) (not e!3263541))))

(declare-fun b!5245279 () Bool)

(declare-fun e!3263540 () Bool)

(assert (=> b!5245279 (= e!3263540 call!371515)))

(declare-fun b!5245280 () Bool)

(declare-fun res!2226022 () Bool)

(declare-fun e!3263539 () Bool)

(assert (=> b!5245280 (=> res!2226022 e!3263539)))

(assert (=> b!5245280 (= res!2226022 (not (is-Concat!23691 (ite c!906752 (reg!15175 r!7292) (ite c!906751 (regOne!30205 r!7292) (regOne!30204 r!7292))))))))

(assert (=> b!5245280 (= e!3263544 e!3263539)))

(declare-fun b!5245282 () Bool)

(assert (=> b!5245282 (= e!3263541 call!371516)))

(declare-fun b!5245283 () Bool)

(assert (=> b!5245283 (= e!3263545 call!371515)))

(declare-fun b!5245281 () Bool)

(assert (=> b!5245281 (= e!3263539 e!3263540)))

(declare-fun res!2226025 () Bool)

(assert (=> b!5245281 (=> (not res!2226025) (not e!3263540))))

(assert (=> b!5245281 (= res!2226025 call!371514)))

(declare-fun d!1689999 () Bool)

(declare-fun res!2226021 () Bool)

(assert (=> d!1689999 (=> res!2226021 e!3263543)))

(assert (=> d!1689999 (= res!2226021 (is-ElementMatch!14846 (ite c!906752 (reg!15175 r!7292) (ite c!906751 (regOne!30205 r!7292) (regOne!30204 r!7292)))))))

(assert (=> d!1689999 (= (validRegex!6582 (ite c!906752 (reg!15175 r!7292) (ite c!906751 (regOne!30205 r!7292) (regOne!30204 r!7292)))) e!3263543)))

(assert (= (and d!1689999 (not res!2226021)) b!5245276))

(assert (= (and b!5245276 c!906992) b!5245278))

(assert (= (and b!5245276 (not c!906992)) b!5245275))

(assert (= (and b!5245278 res!2226024) b!5245282))

(assert (= (and b!5245275 c!906991) b!5245277))

(assert (= (and b!5245275 (not c!906991)) b!5245280))

(assert (= (and b!5245277 res!2226023) b!5245283))

(assert (= (and b!5245280 (not res!2226022)) b!5245281))

(assert (= (and b!5245281 res!2226025) b!5245279))

(assert (= (or b!5245283 b!5245279) bm!371510))

(assert (= (or b!5245277 b!5245281) bm!371511))

(assert (= (or b!5245282 bm!371511) bm!371509))

(declare-fun m!6289252 () Bool)

(assert (=> bm!371509 m!6289252))

(declare-fun m!6289254 () Bool)

(assert (=> bm!371510 m!6289254))

(declare-fun m!6289256 () Bool)

(assert (=> b!5245278 m!6289256))

(assert (=> bm!371356 d!1689999))

(declare-fun d!1690001 () Bool)

(declare-fun c!906993 () Bool)

(assert (=> d!1690001 (= c!906993 (isEmpty!32653 (tail!10337 (t!374020 s!2326))))))

(declare-fun e!3263546 () Bool)

(assert (=> d!1690001 (= (matchZipper!1090 (derivationStepZipper!1105 lt!2149384 (head!11240 (t!374020 s!2326))) (tail!10337 (t!374020 s!2326))) e!3263546)))

(declare-fun b!5245284 () Bool)

(assert (=> b!5245284 (= e!3263546 (nullableZipper!1261 (derivationStepZipper!1105 lt!2149384 (head!11240 (t!374020 s!2326)))))))

(declare-fun b!5245285 () Bool)

(assert (=> b!5245285 (= e!3263546 (matchZipper!1090 (derivationStepZipper!1105 (derivationStepZipper!1105 lt!2149384 (head!11240 (t!374020 s!2326))) (head!11240 (tail!10337 (t!374020 s!2326)))) (tail!10337 (tail!10337 (t!374020 s!2326)))))))

(assert (= (and d!1690001 c!906993) b!5245284))

(assert (= (and d!1690001 (not c!906993)) b!5245285))

(assert (=> d!1690001 m!6287844))

(assert (=> d!1690001 m!6288696))

(assert (=> b!5245284 m!6287852))

(declare-fun m!6289258 () Bool)

(assert (=> b!5245284 m!6289258))

(assert (=> b!5245285 m!6287844))

(assert (=> b!5245285 m!6288700))

(assert (=> b!5245285 m!6287852))

(assert (=> b!5245285 m!6288700))

(declare-fun m!6289260 () Bool)

(assert (=> b!5245285 m!6289260))

(assert (=> b!5245285 m!6287844))

(assert (=> b!5245285 m!6288704))

(assert (=> b!5245285 m!6289260))

(assert (=> b!5245285 m!6288704))

(declare-fun m!6289262 () Bool)

(assert (=> b!5245285 m!6289262))

(assert (=> b!5243728 d!1690001))

(declare-fun bs!1216882 () Bool)

(declare-fun d!1690003 () Bool)

(assert (= bs!1216882 (and d!1690003 d!1689725)))

(declare-fun lambda!263947 () Int)

(assert (=> bs!1216882 (= lambda!263947 lambda!263912)))

(declare-fun bs!1216883 () Bool)

(assert (= bs!1216883 (and d!1690003 d!1689687)))

(assert (=> bs!1216883 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263947 lambda!263906))))

(declare-fun bs!1216884 () Bool)

(assert (= bs!1216884 (and d!1690003 d!1689831)))

(assert (=> bs!1216884 (= lambda!263947 lambda!263922)))

(declare-fun bs!1216885 () Bool)

(assert (= bs!1216885 (and d!1690003 d!1689815)))

(assert (=> bs!1216885 (= lambda!263947 lambda!263921)))

(declare-fun bs!1216886 () Bool)

(assert (= bs!1216886 (and d!1690003 b!5243551)))

(assert (=> bs!1216886 (= (= (head!11240 (t!374020 s!2326)) (h!67163 s!2326)) (= lambda!263947 lambda!263814))))

(declare-fun bs!1216887 () Bool)

(assert (= bs!1216887 (and d!1690003 d!1689763)))

(assert (=> bs!1216887 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263947 lambda!263915))))

(declare-fun bs!1216888 () Bool)

(assert (= bs!1216888 (and d!1690003 d!1689899)))

(assert (=> bs!1216888 (= lambda!263947 lambda!263931)))

(declare-fun bs!1216889 () Bool)

(assert (= bs!1216889 (and d!1690003 d!1689931)))

(assert (=> bs!1216889 (= lambda!263947 lambda!263936)))

(declare-fun bs!1216890 () Bool)

(assert (= bs!1216890 (and d!1690003 d!1689937)))

(assert (=> bs!1216890 (= (= (head!11240 (t!374020 s!2326)) (head!11240 s!2326)) (= lambda!263947 lambda!263938))))

(declare-fun bs!1216891 () Bool)

(assert (= bs!1216891 (and d!1690003 d!1689733)))

(assert (=> bs!1216891 (= lambda!263947 lambda!263913)))

(declare-fun bs!1216892 () Bool)

(assert (= bs!1216892 (and d!1690003 d!1689851)))

(assert (=> bs!1216892 (= lambda!263947 lambda!263925)))

(assert (=> d!1690003 true))

(assert (=> d!1690003 (= (derivationStepZipper!1105 lt!2149384 (head!11240 (t!374020 s!2326))) (flatMap!573 lt!2149384 lambda!263947))))

(declare-fun bs!1216893 () Bool)

(assert (= bs!1216893 d!1690003))

(declare-fun m!6289264 () Bool)

(assert (=> bs!1216893 m!6289264))

(assert (=> b!5243728 d!1690003))

(assert (=> b!5243728 d!1689727))

(assert (=> b!5243728 d!1689729))

(assert (=> b!5244349 d!1689701))

(assert (=> b!5244349 d!1689691))

(declare-fun d!1690005 () Bool)

(declare-fun lt!2149688 () Int)

(assert (=> d!1690005 (>= lt!2149688 0)))

(declare-fun e!3263547 () Int)

(assert (=> d!1690005 (= lt!2149688 e!3263547)))

(declare-fun c!906994 () Bool)

(assert (=> d!1690005 (= c!906994 (is-Cons!60713 (exprs!4730 (h!67162 lt!2149348))))))

(assert (=> d!1690005 (= (contextDepthTotal!20 (h!67162 lt!2149348)) lt!2149688)))

(declare-fun b!5245286 () Bool)

(assert (=> b!5245286 (= e!3263547 (+ (regexDepthTotal!5 (h!67161 (exprs!4730 (h!67162 lt!2149348)))) (contextDepthTotal!20 (Context!8461 (t!374018 (exprs!4730 (h!67162 lt!2149348)))))))))

(declare-fun b!5245287 () Bool)

(assert (=> b!5245287 (= e!3263547 1)))

(assert (= (and d!1690005 c!906994) b!5245286))

(assert (= (and d!1690005 (not c!906994)) b!5245287))

(declare-fun m!6289266 () Bool)

(assert (=> b!5245286 m!6289266))

(declare-fun m!6289268 () Bool)

(assert (=> b!5245286 m!6289268))

(assert (=> b!5244486 d!1690005))

(declare-fun d!1690007 () Bool)

(declare-fun lt!2149689 () Int)

(assert (=> d!1690007 (>= lt!2149689 0)))

(declare-fun e!3263548 () Int)

(assert (=> d!1690007 (= lt!2149689 e!3263548)))

(declare-fun c!906995 () Bool)

(assert (=> d!1690007 (= c!906995 (is-Cons!60714 (t!374019 lt!2149348)))))

(assert (=> d!1690007 (= (zipperDepthTotal!27 (t!374019 lt!2149348)) lt!2149689)))

(declare-fun b!5245288 () Bool)

(assert (=> b!5245288 (= e!3263548 (+ (contextDepthTotal!20 (h!67162 (t!374019 lt!2149348))) (zipperDepthTotal!27 (t!374019 (t!374019 lt!2149348)))))))

(declare-fun b!5245289 () Bool)

(assert (=> b!5245289 (= e!3263548 0)))

(assert (= (and d!1690007 c!906995) b!5245288))

(assert (= (and d!1690007 (not c!906995)) b!5245289))

(declare-fun m!6289270 () Bool)

(assert (=> b!5245288 m!6289270))

(declare-fun m!6289272 () Bool)

(assert (=> b!5245288 m!6289272))

(assert (=> b!5244486 d!1690007))

(assert (=> d!1689395 d!1689699))

(assert (=> b!5244422 d!1689399))

(assert (=> d!1689401 d!1689699))

(assert (=> d!1689431 d!1689421))

(assert (=> d!1689431 d!1689903))

(assert (=> d!1689431 d!1689447))

(declare-fun d!1690009 () Bool)

(assert (=> d!1690009 (= (Exists!2027 lambda!263851) (choose!39052 lambda!263851))))

(declare-fun bs!1216894 () Bool)

(assert (= bs!1216894 d!1690009))

(declare-fun m!6289274 () Bool)

(assert (=> bs!1216894 m!6289274))

(assert (=> d!1689431 d!1690009))

(declare-fun bs!1216895 () Bool)

(declare-fun d!1690011 () Bool)

(assert (= bs!1216895 (and d!1690011 b!5245094)))

(declare-fun lambda!263950 () Int)

(assert (=> bs!1216895 (not (= lambda!263950 lambda!263929))))

(declare-fun bs!1216896 () Bool)

(assert (= bs!1216896 (and d!1690011 b!5244920)))

(assert (=> bs!1216896 (not (= lambda!263950 lambda!263918))))

(declare-fun bs!1216897 () Bool)

(assert (= bs!1216897 (and d!1690011 b!5244403)))

(assert (=> bs!1216897 (not (= lambda!263950 lambda!263886))))

(declare-fun bs!1216898 () Bool)

(assert (= bs!1216898 (and d!1690011 b!5244317)))

(assert (=> bs!1216898 (not (= lambda!263950 lambda!263880))))

(declare-fun bs!1216899 () Bool)

(assert (= bs!1216899 (and d!1690011 d!1689441)))

(assert (=> bs!1216899 (= lambda!263950 lambda!263856)))

(declare-fun bs!1216900 () Bool)

(assert (= bs!1216900 (and d!1690011 b!5244692)))

(assert (=> bs!1216900 (not (= lambda!263950 lambda!263902))))

(declare-fun bs!1216901 () Bool)

(assert (= bs!1216901 (and d!1690011 b!5243550)))

(assert (=> bs!1216901 (not (= lambda!263950 lambda!263813))))

(declare-fun bs!1216902 () Bool)

(assert (= bs!1216902 (and d!1690011 b!5244761)))

(assert (=> bs!1216902 (not (= lambda!263950 lambda!263911))))

(declare-fun bs!1216903 () Bool)

(assert (= bs!1216903 (and d!1690011 d!1689431)))

(assert (=> bs!1216903 (= lambda!263950 lambda!263851)))

(assert (=> bs!1216899 (not (= lambda!263950 lambda!263857))))

(declare-fun bs!1216904 () Bool)

(assert (= bs!1216904 (and d!1690011 b!5244075)))

(assert (=> bs!1216904 (not (= lambda!263950 lambda!263862))))

(declare-fun bs!1216905 () Bool)

(assert (= bs!1216905 (and d!1690011 b!5245132)))

(assert (=> bs!1216905 (not (= lambda!263950 lambda!263933))))

(declare-fun bs!1216906 () Bool)

(assert (= bs!1216906 (and d!1690011 b!5244910)))

(assert (=> bs!1216906 (not (= lambda!263950 lambda!263919))))

(declare-fun bs!1216907 () Bool)

(assert (= bs!1216907 (and d!1690011 d!1689981)))

(assert (=> bs!1216907 (not (= lambda!263950 lambda!263946))))

(declare-fun bs!1216908 () Bool)

(assert (= bs!1216908 (and d!1690011 b!5244682)))

(assert (=> bs!1216908 (not (= lambda!263950 lambda!263903))))

(declare-fun bs!1216909 () Bool)

(assert (= bs!1216909 (and d!1690011 b!5245084)))

(assert (=> bs!1216909 (not (= lambda!263950 lambda!263930))))

(declare-fun bs!1216910 () Bool)

(assert (= bs!1216910 (and d!1690011 b!5244327)))

(assert (=> bs!1216910 (not (= lambda!263950 lambda!263879))))

(assert (=> bs!1216907 (= lambda!263950 lambda!263945)))

(declare-fun bs!1216911 () Bool)

(assert (= bs!1216911 (and d!1690011 b!5244065)))

(assert (=> bs!1216911 (not (= lambda!263950 lambda!263863))))

(declare-fun bs!1216912 () Bool)

(assert (= bs!1216912 (and d!1690011 b!5245142)))

(assert (=> bs!1216912 (not (= lambda!263950 lambda!263932))))

(declare-fun bs!1216913 () Bool)

(assert (= bs!1216913 (and d!1690011 b!5244413)))

(assert (=> bs!1216913 (not (= lambda!263950 lambda!263883))))

(assert (=> bs!1216901 (= lambda!263950 lambda!263812)))

(declare-fun bs!1216914 () Bool)

(assert (= bs!1216914 (and d!1690011 b!5244771)))

(assert (=> bs!1216914 (not (= lambda!263950 lambda!263910))))

(assert (=> d!1690011 true))

(assert (=> d!1690011 true))

(assert (=> d!1690011 true))

(assert (=> d!1690011 (= (isDefined!11660 (findConcatSeparation!1371 (regOne!30204 r!7292) (regTwo!30204 r!7292) Nil!60715 s!2326 s!2326)) (Exists!2027 lambda!263950))))

(assert (=> d!1690011 true))

(declare-fun _$89!1427 () Unit!152782)

(assert (=> d!1690011 (= (choose!39053 (regOne!30204 r!7292) (regTwo!30204 r!7292) s!2326) _$89!1427)))

(declare-fun bs!1216915 () Bool)

(assert (= bs!1216915 d!1690011))

(assert (=> bs!1216915 m!6287632))

(assert (=> bs!1216915 m!6287632))

(assert (=> bs!1216915 m!6287634))

(declare-fun m!6289276 () Bool)

(assert (=> bs!1216915 m!6289276))

(assert (=> d!1689431 d!1690011))

(declare-fun c!906997 () Bool)

(declare-fun c!906996 () Bool)

(declare-fun bm!371512 () Bool)

(declare-fun call!371519 () Bool)

(assert (=> bm!371512 (= call!371519 (validRegex!6582 (ite c!906997 (reg!15175 lt!2149600) (ite c!906996 (regOne!30205 lt!2149600) (regOne!30204 lt!2149600)))))))

(declare-fun b!5245294 () Bool)

(declare-fun e!3263554 () Bool)

(declare-fun e!3263556 () Bool)

(assert (=> b!5245294 (= e!3263554 e!3263556)))

(assert (=> b!5245294 (= c!906996 (is-Union!14846 lt!2149600))))

(declare-fun b!5245295 () Bool)

(declare-fun e!3263555 () Bool)

(assert (=> b!5245295 (= e!3263555 e!3263554)))

(assert (=> b!5245295 (= c!906997 (is-Star!14846 lt!2149600))))

(declare-fun b!5245296 () Bool)

(declare-fun res!2226032 () Bool)

(declare-fun e!3263557 () Bool)

(assert (=> b!5245296 (=> (not res!2226032) (not e!3263557))))

(declare-fun call!371517 () Bool)

(assert (=> b!5245296 (= res!2226032 call!371517)))

(assert (=> b!5245296 (= e!3263556 e!3263557)))

(declare-fun bm!371513 () Bool)

(declare-fun call!371518 () Bool)

(assert (=> bm!371513 (= call!371518 (validRegex!6582 (ite c!906996 (regTwo!30205 lt!2149600) (regTwo!30204 lt!2149600))))))

(declare-fun bm!371514 () Bool)

(assert (=> bm!371514 (= call!371517 call!371519)))

(declare-fun b!5245297 () Bool)

(declare-fun e!3263553 () Bool)

(assert (=> b!5245297 (= e!3263554 e!3263553)))

(declare-fun res!2226033 () Bool)

(assert (=> b!5245297 (= res!2226033 (not (nullable!5015 (reg!15175 lt!2149600))))))

(assert (=> b!5245297 (=> (not res!2226033) (not e!3263553))))

(declare-fun b!5245298 () Bool)

(declare-fun e!3263552 () Bool)

(assert (=> b!5245298 (= e!3263552 call!371518)))

(declare-fun b!5245299 () Bool)

(declare-fun res!2226031 () Bool)

(declare-fun e!3263551 () Bool)

(assert (=> b!5245299 (=> res!2226031 e!3263551)))

(assert (=> b!5245299 (= res!2226031 (not (is-Concat!23691 lt!2149600)))))

(assert (=> b!5245299 (= e!3263556 e!3263551)))

(declare-fun b!5245301 () Bool)

(assert (=> b!5245301 (= e!3263553 call!371519)))

(declare-fun b!5245302 () Bool)

(assert (=> b!5245302 (= e!3263557 call!371518)))

(declare-fun b!5245300 () Bool)

(assert (=> b!5245300 (= e!3263551 e!3263552)))

(declare-fun res!2226034 () Bool)

(assert (=> b!5245300 (=> (not res!2226034) (not e!3263552))))

(assert (=> b!5245300 (= res!2226034 call!371517)))

(declare-fun d!1690013 () Bool)

(declare-fun res!2226030 () Bool)

(assert (=> d!1690013 (=> res!2226030 e!3263555)))

(assert (=> d!1690013 (= res!2226030 (is-ElementMatch!14846 lt!2149600))))

(assert (=> d!1690013 (= (validRegex!6582 lt!2149600) e!3263555)))

(assert (= (and d!1690013 (not res!2226030)) b!5245295))

(assert (= (and b!5245295 c!906997) b!5245297))

(assert (= (and b!5245295 (not c!906997)) b!5245294))

(assert (= (and b!5245297 res!2226033) b!5245301))

(assert (= (and b!5245294 c!906996) b!5245296))

(assert (= (and b!5245294 (not c!906996)) b!5245299))

(assert (= (and b!5245296 res!2226032) b!5245302))

(assert (= (and b!5245299 (not res!2226031)) b!5245300))

(assert (= (and b!5245300 res!2226034) b!5245298))

(assert (= (or b!5245302 b!5245298) bm!371513))

(assert (= (or b!5245296 b!5245300) bm!371514))

(assert (= (or b!5245301 bm!371514) bm!371512))

(declare-fun m!6289278 () Bool)

(assert (=> bm!371512 m!6289278))

(declare-fun m!6289280 () Bool)

(assert (=> bm!371513 m!6289280))

(declare-fun m!6289282 () Bool)

(assert (=> b!5245297 m!6289282))

(assert (=> d!1689515 d!1690013))

(declare-fun d!1690015 () Bool)

(declare-fun res!2226035 () Bool)

(declare-fun e!3263558 () Bool)

(assert (=> d!1690015 (=> res!2226035 e!3263558)))

(assert (=> d!1690015 (= res!2226035 (is-Nil!60713 (unfocusZipperList!288 zl!343)))))

(assert (=> d!1690015 (= (forall!14270 (unfocusZipperList!288 zl!343) lambda!263875) e!3263558)))

(declare-fun b!5245303 () Bool)

(declare-fun e!3263559 () Bool)

(assert (=> b!5245303 (= e!3263558 e!3263559)))

(declare-fun res!2226036 () Bool)

(assert (=> b!5245303 (=> (not res!2226036) (not e!3263559))))

(assert (=> b!5245303 (= res!2226036 (dynLambda!23995 lambda!263875 (h!67161 (unfocusZipperList!288 zl!343))))))

(declare-fun b!5245304 () Bool)

(assert (=> b!5245304 (= e!3263559 (forall!14270 (t!374018 (unfocusZipperList!288 zl!343)) lambda!263875))))

(assert (= (and d!1690015 (not res!2226035)) b!5245303))

(assert (= (and b!5245303 res!2226036) b!5245304))

(declare-fun b_lambda!202645 () Bool)

(assert (=> (not b_lambda!202645) (not b!5245303)))

(declare-fun m!6289284 () Bool)

(assert (=> b!5245303 m!6289284))

(declare-fun m!6289286 () Bool)

(assert (=> b!5245304 m!6289286))

(assert (=> d!1689515 d!1690015))

(declare-fun c!906999 () Bool)

(declare-fun c!906998 () Bool)

(declare-fun call!371522 () Bool)

(declare-fun bm!371515 () Bool)

(assert (=> bm!371515 (= call!371522 (validRegex!6582 (ite c!906999 (reg!15175 (ite c!906751 (regTwo!30205 r!7292) (regTwo!30204 r!7292))) (ite c!906998 (regOne!30205 (ite c!906751 (regTwo!30205 r!7292) (regTwo!30204 r!7292))) (regOne!30204 (ite c!906751 (regTwo!30205 r!7292) (regTwo!30204 r!7292)))))))))

(declare-fun b!5245305 () Bool)

(declare-fun e!3263563 () Bool)

(declare-fun e!3263565 () Bool)

(assert (=> b!5245305 (= e!3263563 e!3263565)))

(assert (=> b!5245305 (= c!906998 (is-Union!14846 (ite c!906751 (regTwo!30205 r!7292) (regTwo!30204 r!7292))))))

(declare-fun b!5245306 () Bool)

(declare-fun e!3263564 () Bool)

(assert (=> b!5245306 (= e!3263564 e!3263563)))

(assert (=> b!5245306 (= c!906999 (is-Star!14846 (ite c!906751 (regTwo!30205 r!7292) (regTwo!30204 r!7292))))))

(declare-fun b!5245307 () Bool)

(declare-fun res!2226039 () Bool)

(declare-fun e!3263566 () Bool)

(assert (=> b!5245307 (=> (not res!2226039) (not e!3263566))))

(declare-fun call!371520 () Bool)

(assert (=> b!5245307 (= res!2226039 call!371520)))

(assert (=> b!5245307 (= e!3263565 e!3263566)))

(declare-fun call!371521 () Bool)

(declare-fun bm!371516 () Bool)

(assert (=> bm!371516 (= call!371521 (validRegex!6582 (ite c!906998 (regTwo!30205 (ite c!906751 (regTwo!30205 r!7292) (regTwo!30204 r!7292))) (regTwo!30204 (ite c!906751 (regTwo!30205 r!7292) (regTwo!30204 r!7292))))))))

(declare-fun bm!371517 () Bool)

(assert (=> bm!371517 (= call!371520 call!371522)))

(declare-fun b!5245308 () Bool)

(declare-fun e!3263562 () Bool)

(assert (=> b!5245308 (= e!3263563 e!3263562)))

(declare-fun res!2226040 () Bool)

(assert (=> b!5245308 (= res!2226040 (not (nullable!5015 (reg!15175 (ite c!906751 (regTwo!30205 r!7292) (regTwo!30204 r!7292))))))))

(assert (=> b!5245308 (=> (not res!2226040) (not e!3263562))))

(declare-fun b!5245309 () Bool)

(declare-fun e!3263561 () Bool)

(assert (=> b!5245309 (= e!3263561 call!371521)))

(declare-fun b!5245310 () Bool)

(declare-fun res!2226038 () Bool)

(declare-fun e!3263560 () Bool)

(assert (=> b!5245310 (=> res!2226038 e!3263560)))

(assert (=> b!5245310 (= res!2226038 (not (is-Concat!23691 (ite c!906751 (regTwo!30205 r!7292) (regTwo!30204 r!7292)))))))

(assert (=> b!5245310 (= e!3263565 e!3263560)))

(declare-fun b!5245312 () Bool)

(assert (=> b!5245312 (= e!3263562 call!371522)))

(declare-fun b!5245313 () Bool)

(assert (=> b!5245313 (= e!3263566 call!371521)))

(declare-fun b!5245311 () Bool)

(assert (=> b!5245311 (= e!3263560 e!3263561)))

(declare-fun res!2226041 () Bool)

(assert (=> b!5245311 (=> (not res!2226041) (not e!3263561))))

(assert (=> b!5245311 (= res!2226041 call!371520)))

(declare-fun d!1690017 () Bool)

(declare-fun res!2226037 () Bool)

(assert (=> d!1690017 (=> res!2226037 e!3263564)))

(assert (=> d!1690017 (= res!2226037 (is-ElementMatch!14846 (ite c!906751 (regTwo!30205 r!7292) (regTwo!30204 r!7292))))))

(assert (=> d!1690017 (= (validRegex!6582 (ite c!906751 (regTwo!30205 r!7292) (regTwo!30204 r!7292))) e!3263564)))

(assert (= (and d!1690017 (not res!2226037)) b!5245306))

(assert (= (and b!5245306 c!906999) b!5245308))

(assert (= (and b!5245306 (not c!906999)) b!5245305))

(assert (= (and b!5245308 res!2226040) b!5245312))

(assert (= (and b!5245305 c!906998) b!5245307))

(assert (= (and b!5245305 (not c!906998)) b!5245310))

(assert (= (and b!5245307 res!2226039) b!5245313))

(assert (= (and b!5245310 (not res!2226038)) b!5245311))

(assert (= (and b!5245311 res!2226041) b!5245309))

(assert (= (or b!5245313 b!5245309) bm!371516))

(assert (= (or b!5245307 b!5245311) bm!371517))

(assert (= (or b!5245312 bm!371517) bm!371515))

(declare-fun m!6289288 () Bool)

(assert (=> bm!371515 m!6289288))

(declare-fun m!6289290 () Bool)

(assert (=> bm!371516 m!6289290))

(declare-fun m!6289292 () Bool)

(assert (=> b!5245308 m!6289292))

(assert (=> bm!371357 d!1690017))

(assert (=> d!1689541 d!1689741))

(assert (=> d!1689541 d!1689681))

(declare-fun d!1690019 () Bool)

(declare-fun res!2226042 () Bool)

(declare-fun e!3263567 () Bool)

(assert (=> d!1690019 (=> res!2226042 e!3263567)))

(assert (=> d!1690019 (= res!2226042 (is-Nil!60713 (t!374018 (t!374018 (exprs!4730 (h!67162 zl!343))))))))

(assert (=> d!1690019 (= (forall!14270 (t!374018 (t!374018 (exprs!4730 (h!67162 zl!343)))) lambda!263815) e!3263567)))

(declare-fun b!5245314 () Bool)

(declare-fun e!3263568 () Bool)

(assert (=> b!5245314 (= e!3263567 e!3263568)))

(declare-fun res!2226043 () Bool)

(assert (=> b!5245314 (=> (not res!2226043) (not e!3263568))))

(assert (=> b!5245314 (= res!2226043 (dynLambda!23995 lambda!263815 (h!67161 (t!374018 (t!374018 (exprs!4730 (h!67162 zl!343)))))))))

(declare-fun b!5245315 () Bool)

(assert (=> b!5245315 (= e!3263568 (forall!14270 (t!374018 (t!374018 (t!374018 (exprs!4730 (h!67162 zl!343))))) lambda!263815))))

(assert (= (and d!1690019 (not res!2226042)) b!5245314))

(assert (= (and b!5245314 res!2226043) b!5245315))

(declare-fun b_lambda!202647 () Bool)

(assert (=> (not b_lambda!202647) (not b!5245314)))

(declare-fun m!6289294 () Bool)

(assert (=> b!5245314 m!6289294))

(declare-fun m!6289296 () Bool)

(assert (=> b!5245315 m!6289296))

(assert (=> b!5244477 d!1690019))

(declare-fun c!907001 () Bool)

(declare-fun call!371525 () Bool)

(declare-fun bm!371518 () Bool)

(declare-fun c!907000 () Bool)

(assert (=> bm!371518 (= call!371525 (validRegex!6582 (ite c!907001 (reg!15175 lt!2149614) (ite c!907000 (regOne!30205 lt!2149614) (regOne!30204 lt!2149614)))))))

(declare-fun b!5245316 () Bool)

(declare-fun e!3263572 () Bool)

(declare-fun e!3263574 () Bool)

(assert (=> b!5245316 (= e!3263572 e!3263574)))

(assert (=> b!5245316 (= c!907000 (is-Union!14846 lt!2149614))))

(declare-fun b!5245317 () Bool)

(declare-fun e!3263573 () Bool)

(assert (=> b!5245317 (= e!3263573 e!3263572)))

(assert (=> b!5245317 (= c!907001 (is-Star!14846 lt!2149614))))

(declare-fun b!5245318 () Bool)

(declare-fun res!2226046 () Bool)

(declare-fun e!3263575 () Bool)

(assert (=> b!5245318 (=> (not res!2226046) (not e!3263575))))

(declare-fun call!371523 () Bool)

(assert (=> b!5245318 (= res!2226046 call!371523)))

(assert (=> b!5245318 (= e!3263574 e!3263575)))

(declare-fun bm!371519 () Bool)

(declare-fun call!371524 () Bool)

(assert (=> bm!371519 (= call!371524 (validRegex!6582 (ite c!907000 (regTwo!30205 lt!2149614) (regTwo!30204 lt!2149614))))))

(declare-fun bm!371520 () Bool)

(assert (=> bm!371520 (= call!371523 call!371525)))

(declare-fun b!5245319 () Bool)

(declare-fun e!3263571 () Bool)

(assert (=> b!5245319 (= e!3263572 e!3263571)))

(declare-fun res!2226047 () Bool)

(assert (=> b!5245319 (= res!2226047 (not (nullable!5015 (reg!15175 lt!2149614))))))

(assert (=> b!5245319 (=> (not res!2226047) (not e!3263571))))

(declare-fun b!5245320 () Bool)

(declare-fun e!3263570 () Bool)

(assert (=> b!5245320 (= e!3263570 call!371524)))

(declare-fun b!5245321 () Bool)

(declare-fun res!2226045 () Bool)

(declare-fun e!3263569 () Bool)

(assert (=> b!5245321 (=> res!2226045 e!3263569)))

(assert (=> b!5245321 (= res!2226045 (not (is-Concat!23691 lt!2149614)))))

(assert (=> b!5245321 (= e!3263574 e!3263569)))

(declare-fun b!5245323 () Bool)

(assert (=> b!5245323 (= e!3263571 call!371525)))

(declare-fun b!5245324 () Bool)

(assert (=> b!5245324 (= e!3263575 call!371524)))

(declare-fun b!5245322 () Bool)

(assert (=> b!5245322 (= e!3263569 e!3263570)))

(declare-fun res!2226048 () Bool)

(assert (=> b!5245322 (=> (not res!2226048) (not e!3263570))))

(assert (=> b!5245322 (= res!2226048 call!371523)))

(declare-fun d!1690021 () Bool)

(declare-fun res!2226044 () Bool)

(assert (=> d!1690021 (=> res!2226044 e!3263573)))

(assert (=> d!1690021 (= res!2226044 (is-ElementMatch!14846 lt!2149614))))

(assert (=> d!1690021 (= (validRegex!6582 lt!2149614) e!3263573)))

(assert (= (and d!1690021 (not res!2226044)) b!5245317))

(assert (= (and b!5245317 c!907001) b!5245319))

(assert (= (and b!5245317 (not c!907001)) b!5245316))

(assert (= (and b!5245319 res!2226047) b!5245323))

(assert (= (and b!5245316 c!907000) b!5245318))

(assert (= (and b!5245316 (not c!907000)) b!5245321))

(assert (= (and b!5245318 res!2226046) b!5245324))

(assert (= (and b!5245321 (not res!2226045)) b!5245322))

(assert (= (and b!5245322 res!2226048) b!5245320))

(assert (= (or b!5245324 b!5245320) bm!371519))

(assert (= (or b!5245318 b!5245322) bm!371520))

(assert (= (or b!5245323 bm!371520) bm!371518))

(declare-fun m!6289298 () Bool)

(assert (=> bm!371518 m!6289298))

(declare-fun m!6289300 () Bool)

(assert (=> bm!371519 m!6289300))

(declare-fun m!6289302 () Bool)

(assert (=> b!5245319 m!6289302))

(assert (=> d!1689547 d!1690021))

(declare-fun d!1690023 () Bool)

(declare-fun res!2226049 () Bool)

(declare-fun e!3263576 () Bool)

(assert (=> d!1690023 (=> res!2226049 e!3263576)))

(assert (=> d!1690023 (= res!2226049 (is-Nil!60713 lt!2149365))))

(assert (=> d!1690023 (= (forall!14270 lt!2149365 lambda!263882) e!3263576)))

(declare-fun b!5245325 () Bool)

(declare-fun e!3263577 () Bool)

(assert (=> b!5245325 (= e!3263576 e!3263577)))

(declare-fun res!2226050 () Bool)

(assert (=> b!5245325 (=> (not res!2226050) (not e!3263577))))

(assert (=> b!5245325 (= res!2226050 (dynLambda!23995 lambda!263882 (h!67161 lt!2149365)))))

(declare-fun b!5245326 () Bool)

(assert (=> b!5245326 (= e!3263577 (forall!14270 (t!374018 lt!2149365) lambda!263882))))

(assert (= (and d!1690023 (not res!2226049)) b!5245325))

(assert (= (and b!5245325 res!2226050) b!5245326))

(declare-fun b_lambda!202649 () Bool)

(assert (=> (not b_lambda!202649) (not b!5245325)))

(declare-fun m!6289304 () Bool)

(assert (=> b!5245325 m!6289304))

(declare-fun m!6289306 () Bool)

(assert (=> b!5245326 m!6289306))

(assert (=> d!1689547 d!1690023))

(declare-fun d!1690025 () Bool)

(assert (=> d!1690025 (= (isConcat!319 lt!2149614) (is-Concat!23691 lt!2149614))))

(assert (=> b!5244388 d!1690025))

(declare-fun bs!1216916 () Bool)

(declare-fun d!1690027 () Bool)

(assert (= bs!1216916 (and d!1690027 d!1689863)))

(declare-fun lambda!263951 () Int)

(assert (=> bs!1216916 (= lambda!263951 lambda!263928)))

(declare-fun bs!1216917 () Bool)

(assert (= bs!1216917 (and d!1690027 d!1689957)))

(assert (=> bs!1216917 (= lambda!263951 lambda!263939)))

(declare-fun bs!1216918 () Bool)

(assert (= bs!1216918 (and d!1690027 d!1689781)))

(assert (=> bs!1216918 (= lambda!263951 lambda!263916)))

(declare-fun bs!1216919 () Bool)

(assert (= bs!1216919 (and d!1690027 d!1689711)))

(assert (=> bs!1216919 (= lambda!263951 lambda!263909)))

(declare-fun bs!1216920 () Bool)

(assert (= bs!1216920 (and d!1690027 d!1689933)))

(assert (=> bs!1216920 (= lambda!263951 lambda!263937)))

(declare-fun bs!1216921 () Bool)

(assert (= bs!1216921 (and d!1690027 d!1689927)))

(assert (=> bs!1216921 (= lambda!263951 lambda!263935)))

(declare-fun bs!1216922 () Bool)

(assert (= bs!1216922 (and d!1690027 d!1689923)))

(assert (=> bs!1216922 (= lambda!263951 lambda!263934)))

(declare-fun bs!1216923 () Bool)

(assert (= bs!1216923 (and d!1690027 d!1689789)))

(assert (=> bs!1216923 (= lambda!263951 lambda!263917)))

(declare-fun bs!1216924 () Bool)

(assert (= bs!1216924 (and d!1690027 d!1689843)))

(assert (=> bs!1216924 (= lambda!263951 lambda!263924)))

(assert (=> d!1690027 (= (nullableZipper!1261 lt!2149359) (exists!1980 lt!2149359 lambda!263951))))

(declare-fun bs!1216925 () Bool)

(assert (= bs!1216925 d!1690027))

(declare-fun m!6289308 () Bool)

(assert (=> bs!1216925 m!6289308))

(assert (=> b!5244420 d!1690027))

(declare-fun bs!1216926 () Bool)

(declare-fun b!5245337 () Bool)

(assert (= bs!1216926 (and b!5245337 b!5245094)))

(declare-fun lambda!263952 () Int)

(assert (=> bs!1216926 (= (and (= (reg!15175 (regTwo!30205 lt!2149381)) (reg!15175 (regTwo!30205 lt!2149350))) (= (regTwo!30205 lt!2149381) (regTwo!30205 lt!2149350))) (= lambda!263952 lambda!263929))))

(declare-fun bs!1216927 () Bool)

(assert (= bs!1216927 (and b!5245337 b!5244920)))

(assert (=> bs!1216927 (= (and (= (reg!15175 (regTwo!30205 lt!2149381)) (reg!15175 (regOne!30205 lt!2149381))) (= (regTwo!30205 lt!2149381) (regOne!30205 lt!2149381))) (= lambda!263952 lambda!263918))))

(declare-fun bs!1216928 () Bool)

(assert (= bs!1216928 (and b!5245337 b!5244403)))

(assert (=> bs!1216928 (not (= lambda!263952 lambda!263886))))

(declare-fun bs!1216929 () Bool)

(assert (= bs!1216929 (and b!5245337 b!5244317)))

(assert (=> bs!1216929 (not (= lambda!263952 lambda!263880))))

(declare-fun bs!1216930 () Bool)

(assert (= bs!1216930 (and b!5245337 d!1689441)))

(assert (=> bs!1216930 (not (= lambda!263952 lambda!263856))))

(declare-fun bs!1216931 () Bool)

(assert (= bs!1216931 (and b!5245337 b!5244692)))

(assert (=> bs!1216931 (= (and (= (reg!15175 (regTwo!30205 lt!2149381)) (reg!15175 (regOne!30205 lt!2149350))) (= (regTwo!30205 lt!2149381) (regOne!30205 lt!2149350))) (= lambda!263952 lambda!263902))))

(declare-fun bs!1216932 () Bool)

(assert (= bs!1216932 (and b!5245337 b!5243550)))

(assert (=> bs!1216932 (not (= lambda!263952 lambda!263813))))

(declare-fun bs!1216933 () Bool)

(assert (= bs!1216933 (and b!5245337 d!1690011)))

(assert (=> bs!1216933 (not (= lambda!263952 lambda!263950))))

(declare-fun bs!1216934 () Bool)

(assert (= bs!1216934 (and b!5245337 b!5244761)))

(assert (=> bs!1216934 (not (= lambda!263952 lambda!263911))))

(declare-fun bs!1216935 () Bool)

(assert (= bs!1216935 (and b!5245337 d!1689431)))

(assert (=> bs!1216935 (not (= lambda!263952 lambda!263851))))

(assert (=> bs!1216930 (not (= lambda!263952 lambda!263857))))

(declare-fun bs!1216936 () Bool)

(assert (= bs!1216936 (and b!5245337 b!5244075)))

(assert (=> bs!1216936 (= (and (= (reg!15175 (regTwo!30205 lt!2149381)) (reg!15175 r!7292)) (= (regTwo!30205 lt!2149381) r!7292)) (= lambda!263952 lambda!263862))))

(declare-fun bs!1216937 () Bool)

(assert (= bs!1216937 (and b!5245337 b!5245132)))

(assert (=> bs!1216937 (not (= lambda!263952 lambda!263933))))

(declare-fun bs!1216938 () Bool)

(assert (= bs!1216938 (and b!5245337 b!5244910)))

(assert (=> bs!1216938 (not (= lambda!263952 lambda!263919))))

(declare-fun bs!1216939 () Bool)

(assert (= bs!1216939 (and b!5245337 d!1689981)))

(assert (=> bs!1216939 (not (= lambda!263952 lambda!263946))))

(declare-fun bs!1216940 () Bool)

(assert (= bs!1216940 (and b!5245337 b!5244682)))

(assert (=> bs!1216940 (not (= lambda!263952 lambda!263903))))

(declare-fun bs!1216941 () Bool)

(assert (= bs!1216941 (and b!5245337 b!5245084)))

(assert (=> bs!1216941 (not (= lambda!263952 lambda!263930))))

(declare-fun bs!1216942 () Bool)

(assert (= bs!1216942 (and b!5245337 b!5244327)))

(assert (=> bs!1216942 (= (and (= (reg!15175 (regTwo!30205 lt!2149381)) (reg!15175 lt!2149381)) (= (regTwo!30205 lt!2149381) lt!2149381)) (= lambda!263952 lambda!263879))))

(assert (=> bs!1216939 (not (= lambda!263952 lambda!263945))))

(declare-fun bs!1216943 () Bool)

(assert (= bs!1216943 (and b!5245337 b!5244065)))

(assert (=> bs!1216943 (not (= lambda!263952 lambda!263863))))

(declare-fun bs!1216944 () Bool)

(assert (= bs!1216944 (and b!5245337 b!5245142)))

(assert (=> bs!1216944 (= (and (= (reg!15175 (regTwo!30205 lt!2149381)) (reg!15175 (regTwo!30205 r!7292))) (= (regTwo!30205 lt!2149381) (regTwo!30205 r!7292))) (= lambda!263952 lambda!263932))))

(declare-fun bs!1216945 () Bool)

(assert (= bs!1216945 (and b!5245337 b!5244413)))

(assert (=> bs!1216945 (= (and (= (reg!15175 (regTwo!30205 lt!2149381)) (reg!15175 lt!2149350)) (= (regTwo!30205 lt!2149381) lt!2149350)) (= lambda!263952 lambda!263883))))

(assert (=> bs!1216932 (not (= lambda!263952 lambda!263812))))

(declare-fun bs!1216946 () Bool)

(assert (= bs!1216946 (and b!5245337 b!5244771)))

(assert (=> bs!1216946 (= (and (= (reg!15175 (regTwo!30205 lt!2149381)) (reg!15175 (regOne!30205 r!7292))) (= (regTwo!30205 lt!2149381) (regOne!30205 r!7292))) (= lambda!263952 lambda!263910))))

(assert (=> b!5245337 true))

(assert (=> b!5245337 true))

(declare-fun bs!1216947 () Bool)

(declare-fun b!5245327 () Bool)

(assert (= bs!1216947 (and b!5245327 b!5245094)))

(declare-fun lambda!263953 () Int)

(assert (=> bs!1216947 (not (= lambda!263953 lambda!263929))))

(declare-fun bs!1216948 () Bool)

(assert (= bs!1216948 (and b!5245327 b!5244920)))

(assert (=> bs!1216948 (not (= lambda!263953 lambda!263918))))

(declare-fun bs!1216949 () Bool)

(assert (= bs!1216949 (and b!5245327 b!5244403)))

(assert (=> bs!1216949 (= (and (= (regOne!30204 (regTwo!30205 lt!2149381)) (regOne!30204 lt!2149350)) (= (regTwo!30204 (regTwo!30205 lt!2149381)) (regTwo!30204 lt!2149350))) (= lambda!263953 lambda!263886))))

(declare-fun bs!1216950 () Bool)

(assert (= bs!1216950 (and b!5245327 b!5244317)))

(assert (=> bs!1216950 (= (and (= (regOne!30204 (regTwo!30205 lt!2149381)) (regOne!30204 lt!2149381)) (= (regTwo!30204 (regTwo!30205 lt!2149381)) (regTwo!30204 lt!2149381))) (= lambda!263953 lambda!263880))))

(declare-fun bs!1216951 () Bool)

(assert (= bs!1216951 (and b!5245327 d!1689441)))

(assert (=> bs!1216951 (not (= lambda!263953 lambda!263856))))

(declare-fun bs!1216952 () Bool)

(assert (= bs!1216952 (and b!5245327 b!5244692)))

(assert (=> bs!1216952 (not (= lambda!263953 lambda!263902))))

(declare-fun bs!1216953 () Bool)

(assert (= bs!1216953 (and b!5245327 b!5243550)))

(assert (=> bs!1216953 (= (and (= (regOne!30204 (regTwo!30205 lt!2149381)) (regOne!30204 r!7292)) (= (regTwo!30204 (regTwo!30205 lt!2149381)) (regTwo!30204 r!7292))) (= lambda!263953 lambda!263813))))

(declare-fun bs!1216954 () Bool)

(assert (= bs!1216954 (and b!5245327 d!1690011)))

(assert (=> bs!1216954 (not (= lambda!263953 lambda!263950))))

(declare-fun bs!1216955 () Bool)

(assert (= bs!1216955 (and b!5245327 b!5244761)))

(assert (=> bs!1216955 (= (and (= (regOne!30204 (regTwo!30205 lt!2149381)) (regOne!30204 (regOne!30205 r!7292))) (= (regTwo!30204 (regTwo!30205 lt!2149381)) (regTwo!30204 (regOne!30205 r!7292)))) (= lambda!263953 lambda!263911))))

(declare-fun bs!1216956 () Bool)

(assert (= bs!1216956 (and b!5245327 d!1689431)))

(assert (=> bs!1216956 (not (= lambda!263953 lambda!263851))))

(assert (=> bs!1216951 (= (and (= (regOne!30204 (regTwo!30205 lt!2149381)) (regOne!30204 r!7292)) (= (regTwo!30204 (regTwo!30205 lt!2149381)) (regTwo!30204 r!7292))) (= lambda!263953 lambda!263857))))

(declare-fun bs!1216957 () Bool)

(assert (= bs!1216957 (and b!5245327 b!5244075)))

(assert (=> bs!1216957 (not (= lambda!263953 lambda!263862))))

(declare-fun bs!1216958 () Bool)

(assert (= bs!1216958 (and b!5245327 b!5245132)))

(assert (=> bs!1216958 (= (and (= (regOne!30204 (regTwo!30205 lt!2149381)) (regOne!30204 (regTwo!30205 r!7292))) (= (regTwo!30204 (regTwo!30205 lt!2149381)) (regTwo!30204 (regTwo!30205 r!7292)))) (= lambda!263953 lambda!263933))))

(declare-fun bs!1216959 () Bool)

(assert (= bs!1216959 (and b!5245327 b!5244910)))

(assert (=> bs!1216959 (= (and (= (regOne!30204 (regTwo!30205 lt!2149381)) (regOne!30204 (regOne!30205 lt!2149381))) (= (regTwo!30204 (regTwo!30205 lt!2149381)) (regTwo!30204 (regOne!30205 lt!2149381)))) (= lambda!263953 lambda!263919))))

(declare-fun bs!1216960 () Bool)

(assert (= bs!1216960 (and b!5245327 d!1689981)))

(assert (=> bs!1216960 (= (and (= (regOne!30204 (regTwo!30205 lt!2149381)) (regOne!30204 r!7292)) (= (regTwo!30204 (regTwo!30205 lt!2149381)) (regTwo!30204 r!7292))) (= lambda!263953 lambda!263946))))

(declare-fun bs!1216961 () Bool)

(assert (= bs!1216961 (and b!5245327 b!5244682)))

(assert (=> bs!1216961 (= (and (= (regOne!30204 (regTwo!30205 lt!2149381)) (regOne!30204 (regOne!30205 lt!2149350))) (= (regTwo!30204 (regTwo!30205 lt!2149381)) (regTwo!30204 (regOne!30205 lt!2149350)))) (= lambda!263953 lambda!263903))))

(declare-fun bs!1216962 () Bool)

(assert (= bs!1216962 (and b!5245327 b!5245084)))

(assert (=> bs!1216962 (= (and (= (regOne!30204 (regTwo!30205 lt!2149381)) (regOne!30204 (regTwo!30205 lt!2149350))) (= (regTwo!30204 (regTwo!30205 lt!2149381)) (regTwo!30204 (regTwo!30205 lt!2149350)))) (= lambda!263953 lambda!263930))))

(declare-fun bs!1216963 () Bool)

(assert (= bs!1216963 (and b!5245327 b!5244327)))

(assert (=> bs!1216963 (not (= lambda!263953 lambda!263879))))

(assert (=> bs!1216960 (not (= lambda!263953 lambda!263945))))

(declare-fun bs!1216964 () Bool)

(assert (= bs!1216964 (and b!5245327 b!5244065)))

(assert (=> bs!1216964 (= (and (= (regOne!30204 (regTwo!30205 lt!2149381)) (regOne!30204 r!7292)) (= (regTwo!30204 (regTwo!30205 lt!2149381)) (regTwo!30204 r!7292))) (= lambda!263953 lambda!263863))))

(declare-fun bs!1216965 () Bool)

(assert (= bs!1216965 (and b!5245327 b!5245142)))

(assert (=> bs!1216965 (not (= lambda!263953 lambda!263932))))

(declare-fun bs!1216966 () Bool)

(assert (= bs!1216966 (and b!5245327 b!5244413)))

(assert (=> bs!1216966 (not (= lambda!263953 lambda!263883))))

(assert (=> bs!1216953 (not (= lambda!263953 lambda!263812))))

(declare-fun bs!1216967 () Bool)

(assert (= bs!1216967 (and b!5245327 b!5244771)))

(assert (=> bs!1216967 (not (= lambda!263953 lambda!263910))))

(declare-fun bs!1216968 () Bool)

(assert (= bs!1216968 (and b!5245327 b!5245337)))

(assert (=> bs!1216968 (not (= lambda!263953 lambda!263952))))

(assert (=> b!5245327 true))

(assert (=> b!5245327 true))

(declare-fun e!3263581 () Bool)

(declare-fun call!371526 () Bool)

(assert (=> b!5245327 (= e!3263581 call!371526)))

(declare-fun b!5245328 () Bool)

(declare-fun e!3263583 () Bool)

(declare-fun e!3263579 () Bool)

(assert (=> b!5245328 (= e!3263583 e!3263579)))

(declare-fun res!2226052 () Bool)

(assert (=> b!5245328 (= res!2226052 (matchRSpec!1949 (regOne!30205 (regTwo!30205 lt!2149381)) s!2326))))

(assert (=> b!5245328 (=> res!2226052 e!3263579)))

(declare-fun b!5245329 () Bool)

(declare-fun e!3263584 () Bool)

(declare-fun e!3263580 () Bool)

(assert (=> b!5245329 (= e!3263584 e!3263580)))

(declare-fun res!2226051 () Bool)

(assert (=> b!5245329 (= res!2226051 (not (is-EmptyLang!14846 (regTwo!30205 lt!2149381))))))

(assert (=> b!5245329 (=> (not res!2226051) (not e!3263580))))

(declare-fun bm!371521 () Bool)

(declare-fun call!371527 () Bool)

(assert (=> bm!371521 (= call!371527 (isEmpty!32653 s!2326))))

(declare-fun bm!371522 () Bool)

(declare-fun c!907002 () Bool)

(assert (=> bm!371522 (= call!371526 (Exists!2027 (ite c!907002 lambda!263952 lambda!263953)))))

(declare-fun b!5245330 () Bool)

(declare-fun res!2226053 () Bool)

(declare-fun e!3263578 () Bool)

(assert (=> b!5245330 (=> res!2226053 e!3263578)))

(assert (=> b!5245330 (= res!2226053 call!371527)))

(assert (=> b!5245330 (= e!3263581 e!3263578)))

(declare-fun b!5245331 () Bool)

(assert (=> b!5245331 (= e!3263584 call!371527)))

(declare-fun d!1690029 () Bool)

(declare-fun c!907003 () Bool)

(assert (=> d!1690029 (= c!907003 (is-EmptyExpr!14846 (regTwo!30205 lt!2149381)))))

(assert (=> d!1690029 (= (matchRSpec!1949 (regTwo!30205 lt!2149381) s!2326) e!3263584)))

(declare-fun b!5245332 () Bool)

(declare-fun c!907004 () Bool)

(assert (=> b!5245332 (= c!907004 (is-ElementMatch!14846 (regTwo!30205 lt!2149381)))))

(declare-fun e!3263582 () Bool)

(assert (=> b!5245332 (= e!3263580 e!3263582)))

(declare-fun b!5245333 () Bool)

(assert (=> b!5245333 (= e!3263582 (= s!2326 (Cons!60715 (c!906500 (regTwo!30205 lt!2149381)) Nil!60715)))))

(declare-fun b!5245334 () Bool)

(assert (=> b!5245334 (= e!3263583 e!3263581)))

(assert (=> b!5245334 (= c!907002 (is-Star!14846 (regTwo!30205 lt!2149381)))))

(declare-fun b!5245335 () Bool)

(declare-fun c!907005 () Bool)

(assert (=> b!5245335 (= c!907005 (is-Union!14846 (regTwo!30205 lt!2149381)))))

(assert (=> b!5245335 (= e!3263582 e!3263583)))

(declare-fun b!5245336 () Bool)

(assert (=> b!5245336 (= e!3263579 (matchRSpec!1949 (regTwo!30205 (regTwo!30205 lt!2149381)) s!2326))))

(assert (=> b!5245337 (= e!3263578 call!371526)))

(assert (= (and d!1690029 c!907003) b!5245331))

(assert (= (and d!1690029 (not c!907003)) b!5245329))

(assert (= (and b!5245329 res!2226051) b!5245332))

(assert (= (and b!5245332 c!907004) b!5245333))

(assert (= (and b!5245332 (not c!907004)) b!5245335))

(assert (= (and b!5245335 c!907005) b!5245328))

(assert (= (and b!5245335 (not c!907005)) b!5245334))

(assert (= (and b!5245328 (not res!2226052)) b!5245336))

(assert (= (and b!5245334 c!907002) b!5245330))

(assert (= (and b!5245334 (not c!907002)) b!5245327))

(assert (= (and b!5245330 (not res!2226053)) b!5245337))

(assert (= (or b!5245337 b!5245327) bm!371522))

(assert (= (or b!5245331 b!5245330) bm!371521))

(declare-fun m!6289310 () Bool)

(assert (=> b!5245328 m!6289310))

(assert (=> bm!371521 m!6288058))

(declare-fun m!6289312 () Bool)

(assert (=> bm!371522 m!6289312))

(declare-fun m!6289314 () Bool)

(assert (=> b!5245336 m!6289314))

(assert (=> b!5244326 d!1690029))

(declare-fun d!1690031 () Bool)

(assert (=> d!1690031 true))

(declare-fun setRes!33466 () Bool)

(assert (=> d!1690031 setRes!33466))

(declare-fun condSetEmpty!33466 () Bool)

(declare-fun res!2226054 () (Set Context!8460))

(assert (=> d!1690031 (= condSetEmpty!33466 (= res!2226054 (as set.empty (Set Context!8460))))))

(assert (=> d!1690031 (= (choose!39058 z!1189 lambda!263814) res!2226054)))

(declare-fun setIsEmpty!33466 () Bool)

(assert (=> setIsEmpty!33466 setRes!33466))

(declare-fun setNonEmpty!33466 () Bool)

(declare-fun setElem!33466 () Context!8460)

(declare-fun e!3263585 () Bool)

(declare-fun tp!1468092 () Bool)

(assert (=> setNonEmpty!33466 (= setRes!33466 (and tp!1468092 (inv!80363 setElem!33466) e!3263585))))

(declare-fun setRest!33466 () (Set Context!8460))

(assert (=> setNonEmpty!33466 (= res!2226054 (set.union (set.insert setElem!33466 (as set.empty (Set Context!8460))) setRest!33466))))

(declare-fun b!5245338 () Bool)

(declare-fun tp!1468093 () Bool)

(assert (=> b!5245338 (= e!3263585 tp!1468093)))

(assert (= (and d!1690031 condSetEmpty!33466) setIsEmpty!33466))

(assert (= (and d!1690031 (not condSetEmpty!33466)) setNonEmpty!33466))

(assert (= setNonEmpty!33466 b!5245338))

(declare-fun m!6289316 () Bool)

(assert (=> setNonEmpty!33466 m!6289316))

(assert (=> d!1689489 d!1690031))

(declare-fun bs!1216969 () Bool)

(declare-fun d!1690033 () Bool)

(assert (= bs!1216969 (and d!1690033 d!1689863)))

(declare-fun lambda!263954 () Int)

(assert (=> bs!1216969 (= lambda!263954 lambda!263928)))

(declare-fun bs!1216970 () Bool)

(assert (= bs!1216970 (and d!1690033 d!1689957)))

(assert (=> bs!1216970 (= lambda!263954 lambda!263939)))

(declare-fun bs!1216971 () Bool)

(assert (= bs!1216971 (and d!1690033 d!1689781)))

(assert (=> bs!1216971 (= lambda!263954 lambda!263916)))

(declare-fun bs!1216972 () Bool)

(assert (= bs!1216972 (and d!1690033 d!1689711)))

(assert (=> bs!1216972 (= lambda!263954 lambda!263909)))

(declare-fun bs!1216973 () Bool)

(assert (= bs!1216973 (and d!1690033 d!1689933)))

(assert (=> bs!1216973 (= lambda!263954 lambda!263937)))

(declare-fun bs!1216974 () Bool)

(assert (= bs!1216974 (and d!1690033 d!1689927)))

(assert (=> bs!1216974 (= lambda!263954 lambda!263935)))

(declare-fun bs!1216975 () Bool)

(assert (= bs!1216975 (and d!1690033 d!1689923)))

(assert (=> bs!1216975 (= lambda!263954 lambda!263934)))

(declare-fun bs!1216976 () Bool)

(assert (= bs!1216976 (and d!1690033 d!1690027)))

(assert (=> bs!1216976 (= lambda!263954 lambda!263951)))

(declare-fun bs!1216977 () Bool)

(assert (= bs!1216977 (and d!1690033 d!1689789)))

(assert (=> bs!1216977 (= lambda!263954 lambda!263917)))

(declare-fun bs!1216978 () Bool)

(assert (= bs!1216978 (and d!1690033 d!1689843)))

(assert (=> bs!1216978 (= lambda!263954 lambda!263924)))

(assert (=> d!1690033 (= (nullableZipper!1261 (set.union lt!2149391 lt!2149380)) (exists!1980 (set.union lt!2149391 lt!2149380) lambda!263954))))

(declare-fun bs!1216979 () Bool)

(assert (= bs!1216979 d!1690033))

(declare-fun m!6289318 () Bool)

(assert (=> bs!1216979 m!6289318))

(assert (=> b!5243851 d!1690033))

(declare-fun d!1690035 () Bool)

(assert (=> d!1690035 true))

(assert (=> d!1690035 true))

(declare-fun res!2226055 () Bool)

(assert (=> d!1690035 (= (choose!39052 lambda!263812) res!2226055)))

(assert (=> d!1689427 d!1690035))

(declare-fun bs!1216980 () Bool)

(declare-fun d!1690037 () Bool)

(assert (= bs!1216980 (and d!1690037 d!1689597)))

(declare-fun lambda!263955 () Int)

(assert (=> bs!1216980 (= lambda!263955 lambda!263894)))

(declare-fun bs!1216981 () Bool)

(assert (= bs!1216981 (and d!1690037 d!1689859)))

(assert (=> bs!1216981 (= lambda!263955 lambda!263927)))

(declare-fun bs!1216982 () Bool)

(assert (= bs!1216982 (and d!1690037 d!1689857)))

(assert (=> bs!1216982 (= lambda!263955 lambda!263926)))

(declare-fun bs!1216983 () Bool)

(assert (= bs!1216983 (and d!1690037 d!1689417)))

(assert (=> bs!1216983 (= lambda!263955 lambda!263845)))

(declare-fun bs!1216984 () Bool)

(assert (= bs!1216984 (and d!1690037 d!1689975)))

(assert (=> bs!1216984 (= lambda!263955 lambda!263940)))

(declare-fun bs!1216985 () Bool)

(assert (= bs!1216985 (and d!1690037 d!1689547)))

(assert (=> bs!1216985 (= lambda!263955 lambda!263882)))

(declare-fun bs!1216986 () Bool)

(assert (= bs!1216986 (and d!1690037 d!1689403)))

(assert (=> bs!1216986 (= lambda!263955 lambda!263836)))

(declare-fun bs!1216987 () Bool)

(assert (= bs!1216987 (and d!1690037 b!5243561)))

(assert (=> bs!1216987 (= lambda!263955 lambda!263815)))

(declare-fun bs!1216988 () Bool)

(assert (= bs!1216988 (and d!1690037 d!1689531)))

(assert (=> bs!1216988 (= lambda!263955 lambda!263878)))

(declare-fun bs!1216989 () Bool)

(assert (= bs!1216989 (and d!1690037 d!1689839)))

(assert (=> bs!1216989 (= lambda!263955 lambda!263923)))

(declare-fun bs!1216990 () Bool)

(assert (= bs!1216990 (and d!1690037 d!1689799)))

(assert (=> bs!1216990 (= lambda!263955 lambda!263920)))

(declare-fun bs!1216991 () Bool)

(assert (= bs!1216991 (and d!1690037 d!1689757)))

(assert (=> bs!1216991 (= lambda!263955 lambda!263914)))

(declare-fun bs!1216992 () Bool)

(assert (= bs!1216992 (and d!1690037 d!1689543)))

(assert (=> bs!1216992 (= lambda!263955 lambda!263881)))

(declare-fun bs!1216993 () Bool)

(assert (= bs!1216993 (and d!1690037 d!1689515)))

(assert (=> bs!1216993 (= lambda!263955 lambda!263875)))

(declare-fun e!3263586 () Bool)

(assert (=> d!1690037 e!3263586))

(declare-fun res!2226057 () Bool)

(assert (=> d!1690037 (=> (not res!2226057) (not e!3263586))))

(declare-fun lt!2149690 () Regex!14846)

(assert (=> d!1690037 (= res!2226057 (validRegex!6582 lt!2149690))))

(declare-fun e!3263590 () Regex!14846)

(assert (=> d!1690037 (= lt!2149690 e!3263590)))

(declare-fun c!907007 () Bool)

(declare-fun e!3263587 () Bool)

(assert (=> d!1690037 (= c!907007 e!3263587)))

(declare-fun res!2226056 () Bool)

(assert (=> d!1690037 (=> (not res!2226056) (not e!3263587))))

(assert (=> d!1690037 (= res!2226056 (is-Cons!60713 (t!374018 lt!2149365)))))

(assert (=> d!1690037 (forall!14270 (t!374018 lt!2149365) lambda!263955)))

(assert (=> d!1690037 (= (generalisedConcat!515 (t!374018 lt!2149365)) lt!2149690)))

(declare-fun b!5245339 () Bool)

(declare-fun e!3263588 () Bool)

(assert (=> b!5245339 (= e!3263586 e!3263588)))

(declare-fun c!907009 () Bool)

(assert (=> b!5245339 (= c!907009 (isEmpty!32650 (t!374018 lt!2149365)))))

(declare-fun b!5245340 () Bool)

(assert (=> b!5245340 (= e!3263590 (h!67161 (t!374018 lt!2149365)))))

(declare-fun b!5245341 () Bool)

(declare-fun e!3263591 () Regex!14846)

(assert (=> b!5245341 (= e!3263591 (Concat!23691 (h!67161 (t!374018 lt!2149365)) (generalisedConcat!515 (t!374018 (t!374018 lt!2149365)))))))

(declare-fun b!5245342 () Bool)

(assert (=> b!5245342 (= e!3263587 (isEmpty!32650 (t!374018 (t!374018 lt!2149365))))))

(declare-fun b!5245343 () Bool)

(declare-fun e!3263589 () Bool)

(assert (=> b!5245343 (= e!3263589 (isConcat!319 lt!2149690))))

(declare-fun b!5245344 () Bool)

(assert (=> b!5245344 (= e!3263588 e!3263589)))

(declare-fun c!907006 () Bool)

(assert (=> b!5245344 (= c!907006 (isEmpty!32650 (tail!10338 (t!374018 lt!2149365))))))

(declare-fun b!5245345 () Bool)

(assert (=> b!5245345 (= e!3263591 EmptyExpr!14846)))

(declare-fun b!5245346 () Bool)

(assert (=> b!5245346 (= e!3263589 (= lt!2149690 (head!11241 (t!374018 lt!2149365))))))

(declare-fun b!5245347 () Bool)

(assert (=> b!5245347 (= e!3263588 (isEmptyExpr!796 lt!2149690))))

(declare-fun b!5245348 () Bool)

(assert (=> b!5245348 (= e!3263590 e!3263591)))

(declare-fun c!907008 () Bool)

(assert (=> b!5245348 (= c!907008 (is-Cons!60713 (t!374018 lt!2149365)))))

(assert (= (and d!1690037 res!2226056) b!5245342))

(assert (= (and d!1690037 c!907007) b!5245340))

(assert (= (and d!1690037 (not c!907007)) b!5245348))

(assert (= (and b!5245348 c!907008) b!5245341))

(assert (= (and b!5245348 (not c!907008)) b!5245345))

(assert (= (and d!1690037 res!2226057) b!5245339))

(assert (= (and b!5245339 c!907009) b!5245347))

(assert (= (and b!5245339 (not c!907009)) b!5245344))

(assert (= (and b!5245344 c!907006) b!5245346))

(assert (= (and b!5245344 (not c!907006)) b!5245343))

(declare-fun m!6289320 () Bool)

(assert (=> b!5245344 m!6289320))

(assert (=> b!5245344 m!6289320))

(declare-fun m!6289322 () Bool)

(assert (=> b!5245344 m!6289322))

(declare-fun m!6289324 () Bool)

(assert (=> d!1690037 m!6289324))

(declare-fun m!6289326 () Bool)

(assert (=> d!1690037 m!6289326))

(declare-fun m!6289328 () Bool)

(assert (=> b!5245347 m!6289328))

(declare-fun m!6289330 () Bool)

(assert (=> b!5245341 m!6289330))

(assert (=> b!5245339 m!6288346))

(declare-fun m!6289332 () Bool)

(assert (=> b!5245343 m!6289332))

(declare-fun m!6289334 () Bool)

(assert (=> b!5245346 m!6289334))

(declare-fun m!6289336 () Bool)

(assert (=> b!5245342 m!6289336))

(assert (=> b!5244386 d!1690037))

(declare-fun d!1690039 () Bool)

(assert (=> d!1690039 (= (nullable!5015 r!7292) (nullableFct!1413 r!7292))))

(declare-fun bs!1216994 () Bool)

(assert (= bs!1216994 d!1690039))

(declare-fun m!6289338 () Bool)

(assert (=> bs!1216994 m!6289338))

(assert (=> b!5244133 d!1690039))

(declare-fun e!3263592 () Bool)

(assert (=> b!5244549 (= tp!1467994 e!3263592)))

(declare-fun b!5245349 () Bool)

(assert (=> b!5245349 (= e!3263592 tp_is_empty!38945)))

(declare-fun b!5245351 () Bool)

(declare-fun tp!1468096 () Bool)

(assert (=> b!5245351 (= e!3263592 tp!1468096)))

(declare-fun b!5245352 () Bool)

(declare-fun tp!1468094 () Bool)

(declare-fun tp!1468095 () Bool)

(assert (=> b!5245352 (= e!3263592 (and tp!1468094 tp!1468095))))

(declare-fun b!5245350 () Bool)

(declare-fun tp!1468098 () Bool)

(declare-fun tp!1468097 () Bool)

(assert (=> b!5245350 (= e!3263592 (and tp!1468098 tp!1468097))))

(assert (= (and b!5244549 (is-ElementMatch!14846 (regOne!30204 (regTwo!30204 r!7292)))) b!5245349))

(assert (= (and b!5244549 (is-Concat!23691 (regOne!30204 (regTwo!30204 r!7292)))) b!5245350))

(assert (= (and b!5244549 (is-Star!14846 (regOne!30204 (regTwo!30204 r!7292)))) b!5245351))

(assert (= (and b!5244549 (is-Union!14846 (regOne!30204 (regTwo!30204 r!7292)))) b!5245352))

(declare-fun e!3263593 () Bool)

(assert (=> b!5244549 (= tp!1467993 e!3263593)))

(declare-fun b!5245353 () Bool)

(assert (=> b!5245353 (= e!3263593 tp_is_empty!38945)))

(declare-fun b!5245355 () Bool)

(declare-fun tp!1468101 () Bool)

(assert (=> b!5245355 (= e!3263593 tp!1468101)))

(declare-fun b!5245356 () Bool)

(declare-fun tp!1468099 () Bool)

(declare-fun tp!1468100 () Bool)

(assert (=> b!5245356 (= e!3263593 (and tp!1468099 tp!1468100))))

(declare-fun b!5245354 () Bool)

(declare-fun tp!1468103 () Bool)

(declare-fun tp!1468102 () Bool)

(assert (=> b!5245354 (= e!3263593 (and tp!1468103 tp!1468102))))

(assert (= (and b!5244549 (is-ElementMatch!14846 (regTwo!30204 (regTwo!30204 r!7292)))) b!5245353))

(assert (= (and b!5244549 (is-Concat!23691 (regTwo!30204 (regTwo!30204 r!7292)))) b!5245354))

(assert (= (and b!5244549 (is-Star!14846 (regTwo!30204 (regTwo!30204 r!7292)))) b!5245355))

(assert (= (and b!5244549 (is-Union!14846 (regTwo!30204 (regTwo!30204 r!7292)))) b!5245356))

(declare-fun e!3263594 () Bool)

(assert (=> b!5244550 (= tp!1467992 e!3263594)))

(declare-fun b!5245357 () Bool)

(assert (=> b!5245357 (= e!3263594 tp_is_empty!38945)))

(declare-fun b!5245359 () Bool)

(declare-fun tp!1468106 () Bool)

(assert (=> b!5245359 (= e!3263594 tp!1468106)))

(declare-fun b!5245360 () Bool)

(declare-fun tp!1468104 () Bool)

(declare-fun tp!1468105 () Bool)

(assert (=> b!5245360 (= e!3263594 (and tp!1468104 tp!1468105))))

(declare-fun b!5245358 () Bool)

(declare-fun tp!1468108 () Bool)

(declare-fun tp!1468107 () Bool)

(assert (=> b!5245358 (= e!3263594 (and tp!1468108 tp!1468107))))

(assert (= (and b!5244550 (is-ElementMatch!14846 (reg!15175 (regTwo!30204 r!7292)))) b!5245357))

(assert (= (and b!5244550 (is-Concat!23691 (reg!15175 (regTwo!30204 r!7292)))) b!5245358))

(assert (= (and b!5244550 (is-Star!14846 (reg!15175 (regTwo!30204 r!7292)))) b!5245359))

(assert (= (and b!5244550 (is-Union!14846 (reg!15175 (regTwo!30204 r!7292)))) b!5245360))

(declare-fun e!3263595 () Bool)

(assert (=> b!5244532 (= tp!1467976 e!3263595)))

(declare-fun b!5245361 () Bool)

(assert (=> b!5245361 (= e!3263595 tp_is_empty!38945)))

(declare-fun b!5245363 () Bool)

(declare-fun tp!1468111 () Bool)

(assert (=> b!5245363 (= e!3263595 tp!1468111)))

(declare-fun b!5245364 () Bool)

(declare-fun tp!1468109 () Bool)

(declare-fun tp!1468110 () Bool)

(assert (=> b!5245364 (= e!3263595 (and tp!1468109 tp!1468110))))

(declare-fun b!5245362 () Bool)

(declare-fun tp!1468113 () Bool)

(declare-fun tp!1468112 () Bool)

(assert (=> b!5245362 (= e!3263595 (and tp!1468113 tp!1468112))))

(assert (= (and b!5244532 (is-ElementMatch!14846 (regOne!30204 (regOne!30205 r!7292)))) b!5245361))

(assert (= (and b!5244532 (is-Concat!23691 (regOne!30204 (regOne!30205 r!7292)))) b!5245362))

(assert (= (and b!5244532 (is-Star!14846 (regOne!30204 (regOne!30205 r!7292)))) b!5245363))

(assert (= (and b!5244532 (is-Union!14846 (regOne!30204 (regOne!30205 r!7292)))) b!5245364))

(declare-fun e!3263596 () Bool)

(assert (=> b!5244532 (= tp!1467975 e!3263596)))

(declare-fun b!5245365 () Bool)

(assert (=> b!5245365 (= e!3263596 tp_is_empty!38945)))

(declare-fun b!5245367 () Bool)

(declare-fun tp!1468116 () Bool)

(assert (=> b!5245367 (= e!3263596 tp!1468116)))

(declare-fun b!5245368 () Bool)

(declare-fun tp!1468114 () Bool)

(declare-fun tp!1468115 () Bool)

(assert (=> b!5245368 (= e!3263596 (and tp!1468114 tp!1468115))))

(declare-fun b!5245366 () Bool)

(declare-fun tp!1468118 () Bool)

(declare-fun tp!1468117 () Bool)

(assert (=> b!5245366 (= e!3263596 (and tp!1468118 tp!1468117))))

(assert (= (and b!5244532 (is-ElementMatch!14846 (regTwo!30204 (regOne!30205 r!7292)))) b!5245365))

(assert (= (and b!5244532 (is-Concat!23691 (regTwo!30204 (regOne!30205 r!7292)))) b!5245366))

(assert (= (and b!5244532 (is-Star!14846 (regTwo!30204 (regOne!30205 r!7292)))) b!5245367))

(assert (= (and b!5244532 (is-Union!14846 (regTwo!30204 (regOne!30205 r!7292)))) b!5245368))

(declare-fun e!3263597 () Bool)

(assert (=> b!5244533 (= tp!1467974 e!3263597)))

(declare-fun b!5245369 () Bool)

(assert (=> b!5245369 (= e!3263597 tp_is_empty!38945)))

(declare-fun b!5245371 () Bool)

(declare-fun tp!1468121 () Bool)

(assert (=> b!5245371 (= e!3263597 tp!1468121)))

(declare-fun b!5245372 () Bool)

(declare-fun tp!1468119 () Bool)

(declare-fun tp!1468120 () Bool)

(assert (=> b!5245372 (= e!3263597 (and tp!1468119 tp!1468120))))

(declare-fun b!5245370 () Bool)

(declare-fun tp!1468123 () Bool)

(declare-fun tp!1468122 () Bool)

(assert (=> b!5245370 (= e!3263597 (and tp!1468123 tp!1468122))))

(assert (= (and b!5244533 (is-ElementMatch!14846 (reg!15175 (regOne!30205 r!7292)))) b!5245369))

(assert (= (and b!5244533 (is-Concat!23691 (reg!15175 (regOne!30205 r!7292)))) b!5245370))

(assert (= (and b!5244533 (is-Star!14846 (reg!15175 (regOne!30205 r!7292)))) b!5245371))

(assert (= (and b!5244533 (is-Union!14846 (reg!15175 (regOne!30205 r!7292)))) b!5245372))

(declare-fun e!3263598 () Bool)

(assert (=> b!5244534 (= tp!1467972 e!3263598)))

(declare-fun b!5245373 () Bool)

(assert (=> b!5245373 (= e!3263598 tp_is_empty!38945)))

(declare-fun b!5245375 () Bool)

(declare-fun tp!1468126 () Bool)

(assert (=> b!5245375 (= e!3263598 tp!1468126)))

(declare-fun b!5245376 () Bool)

(declare-fun tp!1468124 () Bool)

(declare-fun tp!1468125 () Bool)

(assert (=> b!5245376 (= e!3263598 (and tp!1468124 tp!1468125))))

(declare-fun b!5245374 () Bool)

(declare-fun tp!1468128 () Bool)

(declare-fun tp!1468127 () Bool)

(assert (=> b!5245374 (= e!3263598 (and tp!1468128 tp!1468127))))

(assert (= (and b!5244534 (is-ElementMatch!14846 (regOne!30205 (regOne!30205 r!7292)))) b!5245373))

(assert (= (and b!5244534 (is-Concat!23691 (regOne!30205 (regOne!30205 r!7292)))) b!5245374))

(assert (= (and b!5244534 (is-Star!14846 (regOne!30205 (regOne!30205 r!7292)))) b!5245375))

(assert (= (and b!5244534 (is-Union!14846 (regOne!30205 (regOne!30205 r!7292)))) b!5245376))

(declare-fun e!3263599 () Bool)

(assert (=> b!5244534 (= tp!1467973 e!3263599)))

(declare-fun b!5245377 () Bool)

(assert (=> b!5245377 (= e!3263599 tp_is_empty!38945)))

(declare-fun b!5245379 () Bool)

(declare-fun tp!1468131 () Bool)

(assert (=> b!5245379 (= e!3263599 tp!1468131)))

(declare-fun b!5245380 () Bool)

(declare-fun tp!1468129 () Bool)

(declare-fun tp!1468130 () Bool)

(assert (=> b!5245380 (= e!3263599 (and tp!1468129 tp!1468130))))

(declare-fun b!5245378 () Bool)

(declare-fun tp!1468133 () Bool)

(declare-fun tp!1468132 () Bool)

(assert (=> b!5245378 (= e!3263599 (and tp!1468133 tp!1468132))))

(assert (= (and b!5244534 (is-ElementMatch!14846 (regTwo!30205 (regOne!30205 r!7292)))) b!5245377))

(assert (= (and b!5244534 (is-Concat!23691 (regTwo!30205 (regOne!30205 r!7292)))) b!5245378))

(assert (= (and b!5244534 (is-Star!14846 (regTwo!30205 (regOne!30205 r!7292)))) b!5245379))

(assert (= (and b!5244534 (is-Union!14846 (regTwo!30205 (regOne!30205 r!7292)))) b!5245380))

(declare-fun b!5245381 () Bool)

(declare-fun e!3263600 () Bool)

(declare-fun tp!1468134 () Bool)

(declare-fun tp!1468135 () Bool)

(assert (=> b!5245381 (= e!3263600 (and tp!1468134 tp!1468135))))

(assert (=> b!5244559 (= tp!1467999 e!3263600)))

(assert (= (and b!5244559 (is-Cons!60713 (exprs!4730 (h!67162 (t!374019 zl!343))))) b!5245381))

(declare-fun condSetEmpty!33467 () Bool)

(assert (=> setNonEmpty!33458 (= condSetEmpty!33467 (= setRest!33458 (as set.empty (Set Context!8460))))))

(declare-fun setRes!33467 () Bool)

(assert (=> setNonEmpty!33458 (= tp!1468019 setRes!33467)))

(declare-fun setIsEmpty!33467 () Bool)

(assert (=> setIsEmpty!33467 setRes!33467))

(declare-fun tp!1468137 () Bool)

(declare-fun setElem!33467 () Context!8460)

(declare-fun e!3263601 () Bool)

(declare-fun setNonEmpty!33467 () Bool)

(assert (=> setNonEmpty!33467 (= setRes!33467 (and tp!1468137 (inv!80363 setElem!33467) e!3263601))))

(declare-fun setRest!33467 () (Set Context!8460))

(assert (=> setNonEmpty!33467 (= setRest!33458 (set.union (set.insert setElem!33467 (as set.empty (Set Context!8460))) setRest!33467))))

(declare-fun b!5245382 () Bool)

(declare-fun tp!1468136 () Bool)

(assert (=> b!5245382 (= e!3263601 tp!1468136)))

(assert (= (and setNonEmpty!33458 condSetEmpty!33467) setIsEmpty!33467))

(assert (= (and setNonEmpty!33458 (not condSetEmpty!33467)) setNonEmpty!33467))

(assert (= setNonEmpty!33467 b!5245382))

(declare-fun m!6289340 () Bool)

(assert (=> setNonEmpty!33467 m!6289340))

(declare-fun e!3263602 () Bool)

(assert (=> b!5244547 (= tp!1467985 e!3263602)))

(declare-fun b!5245383 () Bool)

(assert (=> b!5245383 (= e!3263602 tp_is_empty!38945)))

(declare-fun b!5245385 () Bool)

(declare-fun tp!1468140 () Bool)

(assert (=> b!5245385 (= e!3263602 tp!1468140)))

(declare-fun b!5245386 () Bool)

(declare-fun tp!1468138 () Bool)

(declare-fun tp!1468139 () Bool)

(assert (=> b!5245386 (= e!3263602 (and tp!1468138 tp!1468139))))

(declare-fun b!5245384 () Bool)

(declare-fun tp!1468142 () Bool)

(declare-fun tp!1468141 () Bool)

(assert (=> b!5245384 (= e!3263602 (and tp!1468142 tp!1468141))))

(assert (= (and b!5244547 (is-ElementMatch!14846 (regOne!30205 (regOne!30204 r!7292)))) b!5245383))

(assert (= (and b!5244547 (is-Concat!23691 (regOne!30205 (regOne!30204 r!7292)))) b!5245384))

(assert (= (and b!5244547 (is-Star!14846 (regOne!30205 (regOne!30204 r!7292)))) b!5245385))

(assert (= (and b!5244547 (is-Union!14846 (regOne!30205 (regOne!30204 r!7292)))) b!5245386))

(declare-fun e!3263603 () Bool)

(assert (=> b!5244547 (= tp!1467986 e!3263603)))

(declare-fun b!5245387 () Bool)

(assert (=> b!5245387 (= e!3263603 tp_is_empty!38945)))

(declare-fun b!5245389 () Bool)

(declare-fun tp!1468145 () Bool)

(assert (=> b!5245389 (= e!3263603 tp!1468145)))

(declare-fun b!5245390 () Bool)

(declare-fun tp!1468143 () Bool)

(declare-fun tp!1468144 () Bool)

(assert (=> b!5245390 (= e!3263603 (and tp!1468143 tp!1468144))))

(declare-fun b!5245388 () Bool)

(declare-fun tp!1468147 () Bool)

(declare-fun tp!1468146 () Bool)

(assert (=> b!5245388 (= e!3263603 (and tp!1468147 tp!1468146))))

(assert (= (and b!5244547 (is-ElementMatch!14846 (regTwo!30205 (regOne!30204 r!7292)))) b!5245387))

(assert (= (and b!5244547 (is-Concat!23691 (regTwo!30205 (regOne!30204 r!7292)))) b!5245388))

(assert (= (and b!5244547 (is-Star!14846 (regTwo!30205 (regOne!30204 r!7292)))) b!5245389))

(assert (= (and b!5244547 (is-Union!14846 (regTwo!30205 (regOne!30204 r!7292)))) b!5245390))

(declare-fun b!5245391 () Bool)

(declare-fun e!3263604 () Bool)

(declare-fun tp!1468148 () Bool)

(declare-fun tp!1468149 () Bool)

(assert (=> b!5245391 (= e!3263604 (and tp!1468148 tp!1468149))))

(assert (=> b!5244578 (= tp!1468018 e!3263604)))

(assert (= (and b!5244578 (is-Cons!60713 (exprs!4730 setElem!33458))) b!5245391))

(declare-fun e!3263605 () Bool)

(assert (=> b!5244536 (= tp!1467981 e!3263605)))

(declare-fun b!5245392 () Bool)

(assert (=> b!5245392 (= e!3263605 tp_is_empty!38945)))

(declare-fun b!5245394 () Bool)

(declare-fun tp!1468152 () Bool)

(assert (=> b!5245394 (= e!3263605 tp!1468152)))

(declare-fun b!5245395 () Bool)

(declare-fun tp!1468150 () Bool)

(declare-fun tp!1468151 () Bool)

(assert (=> b!5245395 (= e!3263605 (and tp!1468150 tp!1468151))))

(declare-fun b!5245393 () Bool)

(declare-fun tp!1468154 () Bool)

(declare-fun tp!1468153 () Bool)

(assert (=> b!5245393 (= e!3263605 (and tp!1468154 tp!1468153))))

(assert (= (and b!5244536 (is-ElementMatch!14846 (regOne!30204 (regTwo!30205 r!7292)))) b!5245392))

(assert (= (and b!5244536 (is-Concat!23691 (regOne!30204 (regTwo!30205 r!7292)))) b!5245393))

(assert (= (and b!5244536 (is-Star!14846 (regOne!30204 (regTwo!30205 r!7292)))) b!5245394))

(assert (= (and b!5244536 (is-Union!14846 (regOne!30204 (regTwo!30205 r!7292)))) b!5245395))

(declare-fun e!3263606 () Bool)

(assert (=> b!5244536 (= tp!1467980 e!3263606)))

(declare-fun b!5245396 () Bool)

(assert (=> b!5245396 (= e!3263606 tp_is_empty!38945)))

(declare-fun b!5245398 () Bool)

(declare-fun tp!1468157 () Bool)

(assert (=> b!5245398 (= e!3263606 tp!1468157)))

(declare-fun b!5245399 () Bool)

(declare-fun tp!1468155 () Bool)

(declare-fun tp!1468156 () Bool)

(assert (=> b!5245399 (= e!3263606 (and tp!1468155 tp!1468156))))

(declare-fun b!5245397 () Bool)

(declare-fun tp!1468159 () Bool)

(declare-fun tp!1468158 () Bool)

(assert (=> b!5245397 (= e!3263606 (and tp!1468159 tp!1468158))))

(assert (= (and b!5244536 (is-ElementMatch!14846 (regTwo!30204 (regTwo!30205 r!7292)))) b!5245396))

(assert (= (and b!5244536 (is-Concat!23691 (regTwo!30204 (regTwo!30205 r!7292)))) b!5245397))

(assert (= (and b!5244536 (is-Star!14846 (regTwo!30204 (regTwo!30205 r!7292)))) b!5245398))

(assert (= (and b!5244536 (is-Union!14846 (regTwo!30204 (regTwo!30205 r!7292)))) b!5245399))

(declare-fun e!3263607 () Bool)

(assert (=> b!5244551 (= tp!1467990 e!3263607)))

(declare-fun b!5245400 () Bool)

(assert (=> b!5245400 (= e!3263607 tp_is_empty!38945)))

(declare-fun b!5245402 () Bool)

(declare-fun tp!1468162 () Bool)

(assert (=> b!5245402 (= e!3263607 tp!1468162)))

(declare-fun b!5245403 () Bool)

(declare-fun tp!1468160 () Bool)

(declare-fun tp!1468161 () Bool)

(assert (=> b!5245403 (= e!3263607 (and tp!1468160 tp!1468161))))

(declare-fun b!5245401 () Bool)

(declare-fun tp!1468164 () Bool)

(declare-fun tp!1468163 () Bool)

(assert (=> b!5245401 (= e!3263607 (and tp!1468164 tp!1468163))))

(assert (= (and b!5244551 (is-ElementMatch!14846 (regOne!30205 (regTwo!30204 r!7292)))) b!5245400))

(assert (= (and b!5244551 (is-Concat!23691 (regOne!30205 (regTwo!30204 r!7292)))) b!5245401))

(assert (= (and b!5244551 (is-Star!14846 (regOne!30205 (regTwo!30204 r!7292)))) b!5245402))

(assert (= (and b!5244551 (is-Union!14846 (regOne!30205 (regTwo!30204 r!7292)))) b!5245403))

(declare-fun e!3263608 () Bool)

(assert (=> b!5244551 (= tp!1467991 e!3263608)))

(declare-fun b!5245404 () Bool)

(assert (=> b!5245404 (= e!3263608 tp_is_empty!38945)))

(declare-fun b!5245406 () Bool)

(declare-fun tp!1468167 () Bool)

(assert (=> b!5245406 (= e!3263608 tp!1468167)))

(declare-fun b!5245407 () Bool)

(declare-fun tp!1468165 () Bool)

(declare-fun tp!1468166 () Bool)

(assert (=> b!5245407 (= e!3263608 (and tp!1468165 tp!1468166))))

(declare-fun b!5245405 () Bool)

(declare-fun tp!1468169 () Bool)

(declare-fun tp!1468168 () Bool)

(assert (=> b!5245405 (= e!3263608 (and tp!1468169 tp!1468168))))

(assert (= (and b!5244551 (is-ElementMatch!14846 (regTwo!30205 (regTwo!30204 r!7292)))) b!5245404))

(assert (= (and b!5244551 (is-Concat!23691 (regTwo!30205 (regTwo!30204 r!7292)))) b!5245405))

(assert (= (and b!5244551 (is-Star!14846 (regTwo!30205 (regTwo!30204 r!7292)))) b!5245406))

(assert (= (and b!5244551 (is-Union!14846 (regTwo!30205 (regTwo!30204 r!7292)))) b!5245407))

(declare-fun e!3263609 () Bool)

(assert (=> b!5244545 (= tp!1467989 e!3263609)))

(declare-fun b!5245408 () Bool)

(assert (=> b!5245408 (= e!3263609 tp_is_empty!38945)))

(declare-fun b!5245410 () Bool)

(declare-fun tp!1468172 () Bool)

(assert (=> b!5245410 (= e!3263609 tp!1468172)))

(declare-fun b!5245411 () Bool)

(declare-fun tp!1468170 () Bool)

(declare-fun tp!1468171 () Bool)

(assert (=> b!5245411 (= e!3263609 (and tp!1468170 tp!1468171))))

(declare-fun b!5245409 () Bool)

(declare-fun tp!1468174 () Bool)

(declare-fun tp!1468173 () Bool)

(assert (=> b!5245409 (= e!3263609 (and tp!1468174 tp!1468173))))

(assert (= (and b!5244545 (is-ElementMatch!14846 (regOne!30204 (regOne!30204 r!7292)))) b!5245408))

(assert (= (and b!5244545 (is-Concat!23691 (regOne!30204 (regOne!30204 r!7292)))) b!5245409))

(assert (= (and b!5244545 (is-Star!14846 (regOne!30204 (regOne!30204 r!7292)))) b!5245410))

(assert (= (and b!5244545 (is-Union!14846 (regOne!30204 (regOne!30204 r!7292)))) b!5245411))

(declare-fun e!3263610 () Bool)

(assert (=> b!5244545 (= tp!1467988 e!3263610)))

(declare-fun b!5245412 () Bool)

(assert (=> b!5245412 (= e!3263610 tp_is_empty!38945)))

(declare-fun b!5245414 () Bool)

(declare-fun tp!1468177 () Bool)

(assert (=> b!5245414 (= e!3263610 tp!1468177)))

(declare-fun b!5245415 () Bool)

(declare-fun tp!1468175 () Bool)

(declare-fun tp!1468176 () Bool)

(assert (=> b!5245415 (= e!3263610 (and tp!1468175 tp!1468176))))

(declare-fun b!5245413 () Bool)

(declare-fun tp!1468179 () Bool)

(declare-fun tp!1468178 () Bool)

(assert (=> b!5245413 (= e!3263610 (and tp!1468179 tp!1468178))))

(assert (= (and b!5244545 (is-ElementMatch!14846 (regTwo!30204 (regOne!30204 r!7292)))) b!5245412))

(assert (= (and b!5244545 (is-Concat!23691 (regTwo!30204 (regOne!30204 r!7292)))) b!5245413))

(assert (= (and b!5244545 (is-Star!14846 (regTwo!30204 (regOne!30204 r!7292)))) b!5245414))

(assert (= (and b!5244545 (is-Union!14846 (regTwo!30204 (regOne!30204 r!7292)))) b!5245415))

(declare-fun b!5245417 () Bool)

(declare-fun e!3263612 () Bool)

(declare-fun tp!1468180 () Bool)

(assert (=> b!5245417 (= e!3263612 tp!1468180)))

(declare-fun b!5245416 () Bool)

(declare-fun tp!1468181 () Bool)

(declare-fun e!3263611 () Bool)

(assert (=> b!5245416 (= e!3263611 (and (inv!80363 (h!67162 (t!374019 (t!374019 zl!343)))) e!3263612 tp!1468181))))

(assert (=> b!5244558 (= tp!1468000 e!3263611)))

(assert (= b!5245416 b!5245417))

(assert (= (and b!5244558 (is-Cons!60714 (t!374019 (t!374019 zl!343)))) b!5245416))

(declare-fun m!6289342 () Bool)

(assert (=> b!5245416 m!6289342))

(declare-fun e!3263613 () Bool)

(assert (=> b!5244546 (= tp!1467987 e!3263613)))

(declare-fun b!5245418 () Bool)

(assert (=> b!5245418 (= e!3263613 tp_is_empty!38945)))

(declare-fun b!5245420 () Bool)

(declare-fun tp!1468184 () Bool)

(assert (=> b!5245420 (= e!3263613 tp!1468184)))

(declare-fun b!5245421 () Bool)

(declare-fun tp!1468182 () Bool)

(declare-fun tp!1468183 () Bool)

(assert (=> b!5245421 (= e!3263613 (and tp!1468182 tp!1468183))))

(declare-fun b!5245419 () Bool)

(declare-fun tp!1468186 () Bool)

(declare-fun tp!1468185 () Bool)

(assert (=> b!5245419 (= e!3263613 (and tp!1468186 tp!1468185))))

(assert (= (and b!5244546 (is-ElementMatch!14846 (reg!15175 (regOne!30204 r!7292)))) b!5245418))

(assert (= (and b!5244546 (is-Concat!23691 (reg!15175 (regOne!30204 r!7292)))) b!5245419))

(assert (= (and b!5244546 (is-Star!14846 (reg!15175 (regOne!30204 r!7292)))) b!5245420))

(assert (= (and b!5244546 (is-Union!14846 (reg!15175 (regOne!30204 r!7292)))) b!5245421))

(declare-fun e!3263614 () Bool)

(assert (=> b!5244537 (= tp!1467979 e!3263614)))

(declare-fun b!5245422 () Bool)

(assert (=> b!5245422 (= e!3263614 tp_is_empty!38945)))

(declare-fun b!5245424 () Bool)

(declare-fun tp!1468189 () Bool)

(assert (=> b!5245424 (= e!3263614 tp!1468189)))

(declare-fun b!5245425 () Bool)

(declare-fun tp!1468187 () Bool)

(declare-fun tp!1468188 () Bool)

(assert (=> b!5245425 (= e!3263614 (and tp!1468187 tp!1468188))))

(declare-fun b!5245423 () Bool)

(declare-fun tp!1468191 () Bool)

(declare-fun tp!1468190 () Bool)

(assert (=> b!5245423 (= e!3263614 (and tp!1468191 tp!1468190))))

(assert (= (and b!5244537 (is-ElementMatch!14846 (reg!15175 (regTwo!30205 r!7292)))) b!5245422))

(assert (= (and b!5244537 (is-Concat!23691 (reg!15175 (regTwo!30205 r!7292)))) b!5245423))

(assert (= (and b!5244537 (is-Star!14846 (reg!15175 (regTwo!30205 r!7292)))) b!5245424))

(assert (= (and b!5244537 (is-Union!14846 (reg!15175 (regTwo!30205 r!7292)))) b!5245425))

(declare-fun b!5245426 () Bool)

(declare-fun e!3263615 () Bool)

(declare-fun tp!1468192 () Bool)

(assert (=> b!5245426 (= e!3263615 (and tp_is_empty!38945 tp!1468192))))

(assert (=> b!5244543 (= tp!1467984 e!3263615)))

(assert (= (and b!5244543 (is-Cons!60715 (t!374020 (t!374020 s!2326)))) b!5245426))

(declare-fun e!3263616 () Bool)

(assert (=> b!5244538 (= tp!1467977 e!3263616)))

(declare-fun b!5245427 () Bool)

(assert (=> b!5245427 (= e!3263616 tp_is_empty!38945)))

(declare-fun b!5245429 () Bool)

(declare-fun tp!1468195 () Bool)

(assert (=> b!5245429 (= e!3263616 tp!1468195)))

(declare-fun b!5245430 () Bool)

(declare-fun tp!1468193 () Bool)

(declare-fun tp!1468194 () Bool)

(assert (=> b!5245430 (= e!3263616 (and tp!1468193 tp!1468194))))

(declare-fun b!5245428 () Bool)

(declare-fun tp!1468197 () Bool)

(declare-fun tp!1468196 () Bool)

(assert (=> b!5245428 (= e!3263616 (and tp!1468197 tp!1468196))))

(assert (= (and b!5244538 (is-ElementMatch!14846 (regOne!30205 (regTwo!30205 r!7292)))) b!5245427))

(assert (= (and b!5244538 (is-Concat!23691 (regOne!30205 (regTwo!30205 r!7292)))) b!5245428))

(assert (= (and b!5244538 (is-Star!14846 (regOne!30205 (regTwo!30205 r!7292)))) b!5245429))

(assert (= (and b!5244538 (is-Union!14846 (regOne!30205 (regTwo!30205 r!7292)))) b!5245430))

(declare-fun e!3263617 () Bool)

(assert (=> b!5244538 (= tp!1467978 e!3263617)))

(declare-fun b!5245431 () Bool)

(assert (=> b!5245431 (= e!3263617 tp_is_empty!38945)))

(declare-fun b!5245433 () Bool)

(declare-fun tp!1468200 () Bool)

(assert (=> b!5245433 (= e!3263617 tp!1468200)))

(declare-fun b!5245434 () Bool)

(declare-fun tp!1468198 () Bool)

(declare-fun tp!1468199 () Bool)

(assert (=> b!5245434 (= e!3263617 (and tp!1468198 tp!1468199))))

(declare-fun b!5245432 () Bool)

(declare-fun tp!1468202 () Bool)

(declare-fun tp!1468201 () Bool)

(assert (=> b!5245432 (= e!3263617 (and tp!1468202 tp!1468201))))

(assert (= (and b!5244538 (is-ElementMatch!14846 (regTwo!30205 (regTwo!30205 r!7292)))) b!5245431))

(assert (= (and b!5244538 (is-Concat!23691 (regTwo!30205 (regTwo!30205 r!7292)))) b!5245432))

(assert (= (and b!5244538 (is-Star!14846 (regTwo!30205 (regTwo!30205 r!7292)))) b!5245433))

(assert (= (and b!5244538 (is-Union!14846 (regTwo!30205 (regTwo!30205 r!7292)))) b!5245434))

(declare-fun e!3263618 () Bool)

(assert (=> b!5244562 (= tp!1468003 e!3263618)))

(declare-fun b!5245435 () Bool)

(assert (=> b!5245435 (= e!3263618 tp_is_empty!38945)))

(declare-fun b!5245437 () Bool)

(declare-fun tp!1468205 () Bool)

(assert (=> b!5245437 (= e!3263618 tp!1468205)))

(declare-fun b!5245438 () Bool)

(declare-fun tp!1468203 () Bool)

(declare-fun tp!1468204 () Bool)

(assert (=> b!5245438 (= e!3263618 (and tp!1468203 tp!1468204))))

(declare-fun b!5245436 () Bool)

(declare-fun tp!1468207 () Bool)

(declare-fun tp!1468206 () Bool)

(assert (=> b!5245436 (= e!3263618 (and tp!1468207 tp!1468206))))

(assert (= (and b!5244562 (is-ElementMatch!14846 (reg!15175 (reg!15175 r!7292)))) b!5245435))

(assert (= (and b!5244562 (is-Concat!23691 (reg!15175 (reg!15175 r!7292)))) b!5245436))

(assert (= (and b!5244562 (is-Star!14846 (reg!15175 (reg!15175 r!7292)))) b!5245437))

(assert (= (and b!5244562 (is-Union!14846 (reg!15175 (reg!15175 r!7292)))) b!5245438))

(declare-fun e!3263619 () Bool)

(assert (=> b!5244563 (= tp!1468001 e!3263619)))

(declare-fun b!5245439 () Bool)

(assert (=> b!5245439 (= e!3263619 tp_is_empty!38945)))

(declare-fun b!5245441 () Bool)

(declare-fun tp!1468210 () Bool)

(assert (=> b!5245441 (= e!3263619 tp!1468210)))

(declare-fun b!5245442 () Bool)

(declare-fun tp!1468208 () Bool)

(declare-fun tp!1468209 () Bool)

(assert (=> b!5245442 (= e!3263619 (and tp!1468208 tp!1468209))))

(declare-fun b!5245440 () Bool)

(declare-fun tp!1468212 () Bool)

(declare-fun tp!1468211 () Bool)

(assert (=> b!5245440 (= e!3263619 (and tp!1468212 tp!1468211))))

(assert (= (and b!5244563 (is-ElementMatch!14846 (regOne!30205 (reg!15175 r!7292)))) b!5245439))

(assert (= (and b!5244563 (is-Concat!23691 (regOne!30205 (reg!15175 r!7292)))) b!5245440))

(assert (= (and b!5244563 (is-Star!14846 (regOne!30205 (reg!15175 r!7292)))) b!5245441))

(assert (= (and b!5244563 (is-Union!14846 (regOne!30205 (reg!15175 r!7292)))) b!5245442))

(declare-fun e!3263620 () Bool)

(assert (=> b!5244563 (= tp!1468002 e!3263620)))

(declare-fun b!5245443 () Bool)

(assert (=> b!5245443 (= e!3263620 tp_is_empty!38945)))

(declare-fun b!5245445 () Bool)

(declare-fun tp!1468215 () Bool)

(assert (=> b!5245445 (= e!3263620 tp!1468215)))

(declare-fun b!5245446 () Bool)

(declare-fun tp!1468213 () Bool)

(declare-fun tp!1468214 () Bool)

(assert (=> b!5245446 (= e!3263620 (and tp!1468213 tp!1468214))))

(declare-fun b!5245444 () Bool)

(declare-fun tp!1468217 () Bool)

(declare-fun tp!1468216 () Bool)

(assert (=> b!5245444 (= e!3263620 (and tp!1468217 tp!1468216))))

(assert (= (and b!5244563 (is-ElementMatch!14846 (regTwo!30205 (reg!15175 r!7292)))) b!5245443))

(assert (= (and b!5244563 (is-Concat!23691 (regTwo!30205 (reg!15175 r!7292)))) b!5245444))

(assert (= (and b!5244563 (is-Star!14846 (regTwo!30205 (reg!15175 r!7292)))) b!5245445))

(assert (= (and b!5244563 (is-Union!14846 (regTwo!30205 (reg!15175 r!7292)))) b!5245446))

(declare-fun e!3263621 () Bool)

(assert (=> b!5244569 (= tp!1468012 e!3263621)))

(declare-fun b!5245447 () Bool)

(assert (=> b!5245447 (= e!3263621 tp_is_empty!38945)))

(declare-fun b!5245449 () Bool)

(declare-fun tp!1468220 () Bool)

(assert (=> b!5245449 (= e!3263621 tp!1468220)))

(declare-fun b!5245450 () Bool)

(declare-fun tp!1468218 () Bool)

(declare-fun tp!1468219 () Bool)

(assert (=> b!5245450 (= e!3263621 (and tp!1468218 tp!1468219))))

(declare-fun b!5245448 () Bool)

(declare-fun tp!1468222 () Bool)

(declare-fun tp!1468221 () Bool)

(assert (=> b!5245448 (= e!3263621 (and tp!1468222 tp!1468221))))

(assert (= (and b!5244569 (is-ElementMatch!14846 (h!67161 (exprs!4730 setElem!33452)))) b!5245447))

(assert (= (and b!5244569 (is-Concat!23691 (h!67161 (exprs!4730 setElem!33452)))) b!5245448))

(assert (= (and b!5244569 (is-Star!14846 (h!67161 (exprs!4730 setElem!33452)))) b!5245449))

(assert (= (and b!5244569 (is-Union!14846 (h!67161 (exprs!4730 setElem!33452)))) b!5245450))

(declare-fun b!5245451 () Bool)

(declare-fun e!3263622 () Bool)

(declare-fun tp!1468223 () Bool)

(declare-fun tp!1468224 () Bool)

(assert (=> b!5245451 (= e!3263622 (and tp!1468223 tp!1468224))))

(assert (=> b!5244569 (= tp!1468013 e!3263622)))

(assert (= (and b!5244569 (is-Cons!60713 (t!374018 (exprs!4730 setElem!33452)))) b!5245451))

(declare-fun e!3263623 () Bool)

(assert (=> b!5244568 (= tp!1468010 e!3263623)))

(declare-fun b!5245452 () Bool)

(assert (=> b!5245452 (= e!3263623 tp_is_empty!38945)))

(declare-fun b!5245454 () Bool)

(declare-fun tp!1468227 () Bool)

(assert (=> b!5245454 (= e!3263623 tp!1468227)))

(declare-fun b!5245455 () Bool)

(declare-fun tp!1468225 () Bool)

(declare-fun tp!1468226 () Bool)

(assert (=> b!5245455 (= e!3263623 (and tp!1468225 tp!1468226))))

(declare-fun b!5245453 () Bool)

(declare-fun tp!1468229 () Bool)

(declare-fun tp!1468228 () Bool)

(assert (=> b!5245453 (= e!3263623 (and tp!1468229 tp!1468228))))

(assert (= (and b!5244568 (is-ElementMatch!14846 (h!67161 (exprs!4730 (h!67162 zl!343))))) b!5245452))

(assert (= (and b!5244568 (is-Concat!23691 (h!67161 (exprs!4730 (h!67162 zl!343))))) b!5245453))

(assert (= (and b!5244568 (is-Star!14846 (h!67161 (exprs!4730 (h!67162 zl!343))))) b!5245454))

(assert (= (and b!5244568 (is-Union!14846 (h!67161 (exprs!4730 (h!67162 zl!343))))) b!5245455))

(declare-fun b!5245456 () Bool)

(declare-fun e!3263624 () Bool)

(declare-fun tp!1468230 () Bool)

(declare-fun tp!1468231 () Bool)

(assert (=> b!5245456 (= e!3263624 (and tp!1468230 tp!1468231))))

(assert (=> b!5244568 (= tp!1468011 e!3263624)))

(assert (= (and b!5244568 (is-Cons!60713 (t!374018 (exprs!4730 (h!67162 zl!343))))) b!5245456))

(declare-fun e!3263625 () Bool)

(assert (=> b!5244561 (= tp!1468005 e!3263625)))

(declare-fun b!5245457 () Bool)

(assert (=> b!5245457 (= e!3263625 tp_is_empty!38945)))

(declare-fun b!5245459 () Bool)

(declare-fun tp!1468234 () Bool)

(assert (=> b!5245459 (= e!3263625 tp!1468234)))

(declare-fun b!5245460 () Bool)

(declare-fun tp!1468232 () Bool)

(declare-fun tp!1468233 () Bool)

(assert (=> b!5245460 (= e!3263625 (and tp!1468232 tp!1468233))))

(declare-fun b!5245458 () Bool)

(declare-fun tp!1468236 () Bool)

(declare-fun tp!1468235 () Bool)

(assert (=> b!5245458 (= e!3263625 (and tp!1468236 tp!1468235))))

(assert (= (and b!5244561 (is-ElementMatch!14846 (regOne!30204 (reg!15175 r!7292)))) b!5245457))

(assert (= (and b!5244561 (is-Concat!23691 (regOne!30204 (reg!15175 r!7292)))) b!5245458))

(assert (= (and b!5244561 (is-Star!14846 (regOne!30204 (reg!15175 r!7292)))) b!5245459))

(assert (= (and b!5244561 (is-Union!14846 (regOne!30204 (reg!15175 r!7292)))) b!5245460))

(declare-fun e!3263626 () Bool)

(assert (=> b!5244561 (= tp!1468004 e!3263626)))

(declare-fun b!5245461 () Bool)

(assert (=> b!5245461 (= e!3263626 tp_is_empty!38945)))

(declare-fun b!5245463 () Bool)

(declare-fun tp!1468239 () Bool)

(assert (=> b!5245463 (= e!3263626 tp!1468239)))

(declare-fun b!5245464 () Bool)

(declare-fun tp!1468237 () Bool)

(declare-fun tp!1468238 () Bool)

(assert (=> b!5245464 (= e!3263626 (and tp!1468237 tp!1468238))))

(declare-fun b!5245462 () Bool)

(declare-fun tp!1468241 () Bool)

(declare-fun tp!1468240 () Bool)

(assert (=> b!5245462 (= e!3263626 (and tp!1468241 tp!1468240))))

(assert (= (and b!5244561 (is-ElementMatch!14846 (regTwo!30204 (reg!15175 r!7292)))) b!5245461))

(assert (= (and b!5244561 (is-Concat!23691 (regTwo!30204 (reg!15175 r!7292)))) b!5245462))

(assert (= (and b!5244561 (is-Star!14846 (regTwo!30204 (reg!15175 r!7292)))) b!5245463))

(assert (= (and b!5244561 (is-Union!14846 (regTwo!30204 (reg!15175 r!7292)))) b!5245464))

(declare-fun b_lambda!202651 () Bool)

(assert (= b_lambda!202635 (or d!1689531 b_lambda!202651)))

(declare-fun bs!1216995 () Bool)

(declare-fun d!1690041 () Bool)

(assert (= bs!1216995 (and d!1690041 d!1689531)))

(assert (=> bs!1216995 (= (dynLambda!23995 lambda!263878 (h!67161 lt!2149603)) (validRegex!6582 (h!67161 lt!2149603)))))

(declare-fun m!6289344 () Bool)

(assert (=> bs!1216995 m!6289344))

(assert (=> b!5245048 d!1690041))

(declare-fun b_lambda!202653 () Bool)

(assert (= b_lambda!202633 (or d!1689417 b_lambda!202653)))

(declare-fun bs!1216996 () Bool)

(declare-fun d!1690043 () Bool)

(assert (= bs!1216996 (and d!1690043 d!1689417)))

(assert (=> bs!1216996 (= (dynLambda!23995 lambda!263845 (h!67161 (exprs!4730 (h!67162 zl!343)))) (validRegex!6582 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(declare-fun m!6289346 () Bool)

(assert (=> bs!1216996 m!6289346))

(assert (=> b!5244894 d!1690043))

(declare-fun b_lambda!202655 () Bool)

(assert (= b_lambda!202637 (or d!1689403 b_lambda!202655)))

(declare-fun bs!1216997 () Bool)

(declare-fun d!1690045 () Bool)

(assert (= bs!1216997 (and d!1690045 d!1689403)))

(assert (=> bs!1216997 (= (dynLambda!23995 lambda!263836 (h!67161 (exprs!4730 (h!67162 zl!343)))) (validRegex!6582 (h!67161 (exprs!4730 (h!67162 zl!343)))))))

(assert (=> bs!1216997 m!6289346))

(assert (=> b!5245059 d!1690045))

(declare-fun b_lambda!202657 () Bool)

(assert (= b_lambda!202629 (or b!5243551 b_lambda!202657)))

(assert (=> d!1689703 d!1689619))

(declare-fun b_lambda!202659 () Bool)

(assert (= b_lambda!202631 (or b!5243551 b_lambda!202659)))

(assert (=> d!1689743 d!1689617))

(declare-fun b_lambda!202661 () Bool)

(assert (= b_lambda!202639 (or d!1689597 b_lambda!202661)))

(declare-fun bs!1216998 () Bool)

(declare-fun d!1690047 () Bool)

(assert (= bs!1216998 (and d!1690047 d!1689597)))

(assert (=> bs!1216998 (= (dynLambda!23995 lambda!263894 (h!67161 (exprs!4730 setElem!33452))) (validRegex!6582 (h!67161 (exprs!4730 setElem!33452))))))

(declare-fun m!6289348 () Bool)

(assert (=> bs!1216998 m!6289348))

(assert (=> b!5245082 d!1690047))

(declare-fun b_lambda!202663 () Bool)

(assert (= b_lambda!202649 (or d!1689547 b_lambda!202663)))

(declare-fun bs!1216999 () Bool)

(declare-fun d!1690049 () Bool)

(assert (= bs!1216999 (and d!1690049 d!1689547)))

(assert (=> bs!1216999 (= (dynLambda!23995 lambda!263882 (h!67161 lt!2149365)) (validRegex!6582 (h!67161 lt!2149365)))))

(declare-fun m!6289350 () Bool)

(assert (=> bs!1216999 m!6289350))

(assert (=> b!5245325 d!1690049))

(declare-fun b_lambda!202665 () Bool)

(assert (= b_lambda!202643 (or d!1689543 b_lambda!202665)))

(declare-fun bs!1217000 () Bool)

(declare-fun d!1690051 () Bool)

(assert (= bs!1217000 (and d!1690051 d!1689543)))

(assert (=> bs!1217000 (= (dynLambda!23995 lambda!263881 (h!67161 lt!2149356)) (validRegex!6582 (h!67161 lt!2149356)))))

(declare-fun m!6289352 () Bool)

(assert (=> bs!1217000 m!6289352))

(assert (=> b!5245221 d!1690051))

(declare-fun b_lambda!202667 () Bool)

(assert (= b_lambda!202645 (or d!1689515 b_lambda!202667)))

(declare-fun bs!1217001 () Bool)

(declare-fun d!1690053 () Bool)

(assert (= bs!1217001 (and d!1690053 d!1689515)))

(assert (=> bs!1217001 (= (dynLambda!23995 lambda!263875 (h!67161 (unfocusZipperList!288 zl!343))) (validRegex!6582 (h!67161 (unfocusZipperList!288 zl!343))))))

(declare-fun m!6289354 () Bool)

(assert (=> bs!1217001 m!6289354))

(assert (=> b!5245303 d!1690053))

(declare-fun b_lambda!202669 () Bool)

(assert (= b_lambda!202641 (or b!5243551 b_lambda!202669)))

(assert (=> d!1689887 d!1689621))

(declare-fun b_lambda!202671 () Bool)

(assert (= b_lambda!202647 (or b!5243561 b_lambda!202671)))

(declare-fun bs!1217002 () Bool)

(declare-fun d!1690055 () Bool)

(assert (= bs!1217002 (and d!1690055 b!5243561)))

(assert (=> bs!1217002 (= (dynLambda!23995 lambda!263815 (h!67161 (t!374018 (t!374018 (exprs!4730 (h!67162 zl!343)))))) (validRegex!6582 (h!67161 (t!374018 (t!374018 (exprs!4730 (h!67162 zl!343)))))))))

(declare-fun m!6289356 () Bool)

(assert (=> bs!1217002 m!6289356))

(assert (=> b!5245314 d!1690055))

(push 1)

(assert (not d!1689951))

(assert (not b!5244877))

(assert (not b!5245106))

(assert (not bm!371510))

(assert (not setNonEmpty!33467))

(assert (not d!1689981))

(assert (not b!5244928))

(assert (not b_lambda!202651))

(assert (not b!5245177))

(assert (not b!5245288))

(assert (not b!5245285))

(assert (not b!5244864))

(assert (not b!5244862))

(assert (not b!5245360))

(assert (not b!5244848))

(assert (not b!5245458))

(assert (not b!5245061))

(assert (not bm!371499))

(assert (not b!5245371))

(assert (not b!5244786))

(assert (not d!1689997))

(assert (not d!1689711))

(assert (not b_lambda!202663))

(assert (not b_lambda!202661))

(assert (not b!5245222))

(assert (not b!5245080))

(assert (not d!1689723))

(assert (not b!5245393))

(assert (not d!1689911))

(assert (not b!5245102))

(assert (not b!5244870))

(assert (not d!1690037))

(assert (not bm!371494))

(assert (not b!5245399))

(assert (not b!5245417))

(assert (not b!5245034))

(assert (not b!5245078))

(assert (not d!1689893))

(assert (not b!5245397))

(assert (not b!5245131))

(assert (not b!5245359))

(assert (not d!1689831))

(assert (not b!5244782))

(assert (not bm!371426))

(assert (not d!1690001))

(assert (not b!5245083))

(assert (not bm!371505))

(assert (not b!5244942))

(assert tp_is_empty!38945)

(assert (not b!5244980))

(assert (not b!5244711))

(assert (not d!1689923))

(assert (not b!5245171))

(assert (not b!5245223))

(assert (not d!1689879))

(assert (not d!1689937))

(assert (not bm!371462))

(assert (not b!5244961))

(assert (not d!1689795))

(assert (not b!5245158))

(assert (not bm!371447))

(assert (not b!5245067))

(assert (not b!5245401))

(assert (not bs!1217002))

(assert (not b!5244785))

(assert (not bm!371419))

(assert (not d!1689945))

(assert (not d!1689779))

(assert (not b!5245386))

(assert (not b!5245411))

(assert (not bm!371421))

(assert (not bs!1216999))

(assert (not bs!1216997))

(assert (not b!5245070))

(assert (not b!5245191))

(assert (not b!5244925))

(assert (not bm!371370))

(assert (not b!5244981))

(assert (not bm!371438))

(assert (not b!5244934))

(assert (not d!1689963))

(assert (not d!1689733))

(assert (not b!5244699))

(assert (not d!1689929))

(assert (not bm!371427))

(assert (not bm!371493))

(assert (not bm!371500))

(assert (not b!5245148))

(assert (not bm!371489))

(assert (not b_lambda!202665))

(assert (not bm!371402))

(assert (not b!5244787))

(assert (not b!5244906))

(assert (not d!1689899))

(assert (not b!5245372))

(assert (not setNonEmpty!33466))

(assert (not b!5244955))

(assert (not bm!371513))

(assert (not b!5244850))

(assert (not b!5245196))

(assert (not d!1689979))

(assert (not d!1690039))

(assert (not b!5245032))

(assert (not b!5244739))

(assert (not d!1689739))

(assert (not d!1689731))

(assert (not b!5245156))

(assert (not b!5244847))

(assert (not bm!371445))

(assert (not bs!1217001))

(assert (not bm!371516))

(assert (not b!5244900))

(assert (not b_lambda!202609))

(assert (not b!5245423))

(assert (not d!1689687))

(assert (not b_lambda!202657))

(assert (not bm!371375))

(assert (not d!1689703))

(assert (not b!5244929))

(assert (not b!5245278))

(assert (not b!5245184))

(assert (not b!5245402))

(assert (not d!1689749))

(assert (not d!1689789))

(assert (not d!1689823))

(assert (not d!1690003))

(assert (not d!1689829))

(assert (not b!5245440))

(assert (not b!5244755))

(assert (not b!5245192))

(assert (not bm!371389))

(assert (not bm!371515))

(assert (not setNonEmpty!33465))

(assert (not b!5244716))

(assert (not b!5245197))

(assert (not b!5244989))

(assert (not bm!371464))

(assert (not b!5245454))

(assert (not b!5245406))

(assert (not b!5245210))

(assert (not d!1689851))

(assert (not d!1689799))

(assert (not b!5245066))

(assert (not b!5245185))

(assert (not b!5245434))

(assert (not b!5245395))

(assert (not b!5245370))

(assert (not b!5245183))

(assert (not d!1689877))

(assert (not b!5244794))

(assert (not b!5245459))

(assert (not b!5245108))

(assert (not d!1689909))

(assert (not b!5244811))

(assert (not bm!371372))

(assert (not b!5244990))

(assert (not bm!371521))

(assert (not b!5245382))

(assert (not b!5245379))

(assert (not b!5245374))

(assert (not bm!371522))

(assert (not b!5245053))

(assert (not b_lambda!202669))

(assert (not b!5245315))

(assert (not b!5245381))

(assert (not b!5245342))

(assert (not bm!371484))

(assert (not b!5245384))

(assert (not d!1689975))

(assert (not d!1689761))

(assert (not b!5245464))

(assert (not b!5244901))

(assert (not b!5245107))

(assert (not b!5245421))

(assert (not bm!371442))

(assert (not d!1689801))

(assert (not b!5245046))

(assert (not b!5245436))

(assert (not b_lambda!202611))

(assert (not b!5244988))

(assert (not b!5245338))

(assert (not d!1689805))

(assert (not d!1689735))

(assert (not d!1689813))

(assert (not b!5245347))

(assert (not b!5245060))

(assert (not bm!371466))

(assert (not d!1690009))

(assert (not d!1689803))

(assert (not b!5245328))

(assert (not d!1690033))

(assert (not b!5245186))

(assert (not b!5245398))

(assert (not b!5245433))

(assert (not b!5245390))

(assert (not bm!371496))

(assert (not bm!371383))

(assert (not b_lambda!202655))

(assert (not d!1689925))

(assert (not bm!371424))

(assert (not b!5244905))

(assert (not d!1689839))

(assert (not d!1689781))

(assert (not b!5244762))

(assert (not b!5244691))

(assert (not b!5245155))

(assert (not b!5245077))

(assert (not b!5245437))

(assert (not b!5244784))

(assert (not d!1689725))

(assert (not b!5245157))

(assert (not b!5245071))

(assert (not bm!371386))

(assert (not b!5245426))

(assert (not b!5244852))

(assert (not d!1689755))

(assert (not bm!371440))

(assert (not b!5245354))

(assert (not d!1689933))

(assert (not b!5244899))

(assert (not b!5245428))

(assert (not b!5245391))

(assert (not b!5245343))

(assert (not bm!371478))

(assert (not b_lambda!202613))

(assert (not b!5245438))

(assert (not b!5244956))

(assert (not d!1689957))

(assert (not b!5244985))

(assert (not b!5245449))

(assert (not d!1689747))

(assert (not b!5245100))

(assert (not b!5245364))

(assert (not b!5244803))

(assert (not d!1689973))

(assert (not bm!371453))

(assert (not b!5245170))

(assert (not b!5245308))

(assert (not b!5245420))

(assert (not b!5244919))

(assert (not b!5244728))

(assert (not b!5244854))

(assert (not b!5244921))

(assert (not b_lambda!202615))

(assert (not b!5245272))

(assert (not bm!371392))

(assert (not d!1689791))

(assert (not bm!371519))

(assert (not b!5245095))

(assert (not b!5245074))

(assert (not b!5245462))

(assert (not b!5245363))

(assert (not setNonEmpty!33464))

(assert (not b!5244923))

(assert (not d!1689901))

(assert (not bm!371400))

(assert (not d!1689745))

(assert (not b!5244683))

(assert (not b!5245346))

(assert (not b!5244810))

(assert (not b!5244960))

(assert (not b!5244941))

(assert (not b!5245450))

(assert (not bm!371454))

(assert (not b!5245416))

(assert (not d!1689935))

(assert (not bm!371483))

(assert (not b!5244895))

(assert (not b!5244851))

(assert (not bm!371501))

(assert (not b!5245358))

(assert (not b!5245063))

(assert (not bm!371459))

(assert (not bs!1216998))

(assert (not b!5245336))

(assert (not bm!371434))

(assert (not b!5245432))

(assert (not bm!371377))

(assert (not d!1689827))

(assert (not b!5245460))

(assert (not bm!371480))

(assert (not b!5245453))

(assert (not d!1689719))

(assert (not bm!371413))

(assert (not bm!371472))

(assert (not d!1689777))

(assert (not bm!371507))

(assert (not b!5245076))

(assert (not bm!371373))

(assert (not bm!371518))

(assert (not d!1689917))

(assert (not bm!371481))

(assert (not b!5245096))

(assert (not b!5245414))

(assert (not d!1689887))

(assert (not bm!371437))

(assert (not b!5245237))

(assert (not d!1689743))

(assert (not b!5244911))

(assert (not b!5244992))

(assert (not b!5245326))

(assert (not b_lambda!202667))

(assert (not d!1689881))

(assert (not bm!371509))

(assert (not b_lambda!202659))

(assert (not d!1689753))

(assert (not b!5245355))

(assert (not b!5245180))

(assert (not b!5245405))

(assert (not b!5245351))

(assert (not d!1689875))

(assert (not d!1689843))

(assert (not d!1689939))

(assert (not bm!371479))

(assert (not bm!371486))

(assert (not b!5245442))

(assert (not d!1689763))

(assert (not d!1689857))

(assert (not b!5245129))

(assert (not b!5245352))

(assert (not b!5245409))

(assert (not b!5244849))

(assert (not b!5245175))

(assert (not b!5245033))

(assert (not d!1689809))

(assert (not b!5245319))

(assert (not b!5245304))

(assert (not bm!371498))

(assert (not b!5245344))

(assert (not b!5245366))

(assert (not bm!371378))

(assert (not b!5245407))

(assert (not b!5244949))

(assert (not b!5245424))

(assert (not b!5245141))

(assert (not b!5244935))

(assert (not b!5245274))

(assert (not b!5245356))

(assert (not b!5244924))

(assert (not b!5244855))

(assert (not d!1689679))

(assert (not bm!371468))

(assert (not bm!371477))

(assert (not bm!371457))

(assert (not bm!371488))

(assert (not b!5245419))

(assert (not d!1689709))

(assert (not b!5245446))

(assert (not b!5245463))

(assert (not bm!371512))

(assert (not b!5245448))

(assert (not b!5244845))

(assert (not b!5245101))

(assert (not bm!371429))

(assert (not b!5244804))

(assert (not b!5245176))

(assert (not b!5245350))

(assert (not b!5244770))

(assert (not b!5245362))

(assert (not b!5245403))

(assert (not d!1690011))

(assert (not d!1689775))

(assert (not b!5244838))

(assert (not bm!371465))

(assert (not d!1689941))

(assert (not d!1689931))

(assert (not b!5244750))

(assert (not d!1689757))

(assert (not b!5245257))

(assert (not b!5244936))

(assert (not bm!371461))

(assert (not b!5245147))

(assert (not b!5245133))

(assert (not b!5245415))

(assert (not b!5245429))

(assert (not b!5244697))

(assert (not bm!371398))

(assert (not b!5245093))

(assert (not bm!371474))

(assert (not bm!371456))

(assert (not d!1690027))

(assert (not b!5244907))

(assert (not b!5244809))

(assert (not b_lambda!202653))

(assert (not b!5244967))

(assert (not b!5245441))

(assert (not bm!371415))

(assert (not b!5245455))

(assert (not bm!371418))

(assert (not bm!371428))

(assert (not b!5245389))

(assert (not d!1689977))

(assert (not b!5245378))

(assert (not b!5245297))

(assert (not bm!371504))

(assert (not bm!371414))

(assert (not bm!371422))

(assert (not b!5245385))

(assert (not b!5245215))

(assert (not b!5245444))

(assert (not bm!371467))

(assert (not b!5245286))

(assert (not b!5245394))

(assert (not b!5245182))

(assert (not bm!371432))

(assert (not bm!371371))

(assert (not bm!371433))

(assert (not b!5244781))

(assert (not b!5245445))

(assert (not bs!1217000))

(assert (not bm!371397))

(assert (not b!5245114))

(assert (not b!5245181))

(assert (not d!1689815))

(assert (not b!5245190))

(assert (not d!1689859))

(assert (not d!1689897))

(assert (not b!5244710))

(assert (not bm!371435))

(assert (not b!5244715))

(assert (not bm!371444))

(assert (not b!5244940))

(assert (not b!5244993))

(assert (not bm!371384))

(assert (not bm!371491))

(assert (not b!5244892))

(assert (not b!5245341))

(assert (not b!5244963))

(assert (not b!5245380))

(assert (not b!5244926))

(assert (not b!5245004))

(assert (not bm!371395))

(assert (not b!5245456))

(assert (not b!5245410))

(assert (not b!5245049))

(assert (not bs!1216996))

(assert (not bm!371394))

(assert (not b!5245367))

(assert (not b!5245198))

(assert (not b!5245044))

(assert (not b!5245430))

(assert (not b_lambda!202671))

(assert (not b!5244978))

(assert (not b!5244805))

(assert (not b!5244868))

(assert (not b!5245368))

(assert (not b!5245425))

(assert (not b!5244869))

(assert (not d!1689927))

(assert (not b!5245376))

(assert (not b!5245169))

(assert (not b!5245451))

(assert (not b!5244968))

(assert (not b!5244790))

(assert (not bm!371390))

(assert (not b!5245075))

(assert (not b!5245413))

(assert (not bm!371399))

(assert (not d!1689685))

(assert (not d!1689943))

(assert (not b!5245224))

(assert (not bm!371476))

(assert (not bm!371471))

(assert (not b!5245284))

(assert (not b!5245085))

(assert (not d!1689863))

(assert (not b!5244863))

(assert (not b!5244987))

(assert (not bs!1216995))

(assert (not b!5244858))

(assert (not b!5245388))

(assert (not d!1689919))

(assert (not b!5244704))

(assert (not b!5244962))

(assert (not bm!371380))

(assert (not b!5245375))

(assert (not b!5245339))

(assert (not d!1689849))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

