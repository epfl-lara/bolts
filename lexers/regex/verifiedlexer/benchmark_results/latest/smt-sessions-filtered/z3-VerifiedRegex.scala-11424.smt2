; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!614474 () Bool)

(assert start!614474)

(declare-fun b!6151532 () Bool)

(assert (=> b!6151532 true))

(assert (=> b!6151532 true))

(declare-fun lambda!335496 () Int)

(declare-fun lambda!335495 () Int)

(assert (=> b!6151532 (not (= lambda!335496 lambda!335495))))

(assert (=> b!6151532 true))

(assert (=> b!6151532 true))

(declare-fun b!6151542 () Bool)

(assert (=> b!6151542 true))

(declare-fun b!6151530 () Bool)

(declare-fun res!2548084 () Bool)

(declare-fun e!3748369 () Bool)

(assert (=> b!6151530 (=> res!2548084 e!3748369)))

(declare-datatypes ((C!32460 0))(
  ( (C!32461 (val!25932 Int)) )
))
(declare-datatypes ((Regex!16095 0))(
  ( (ElementMatch!16095 (c!1107191 C!32460)) (Concat!24940 (regOne!32702 Regex!16095) (regTwo!32702 Regex!16095)) (EmptyExpr!16095) (Star!16095 (reg!16424 Regex!16095)) (EmptyLang!16095) (Union!16095 (regOne!32703 Regex!16095) (regTwo!32703 Regex!16095)) )
))
(declare-datatypes ((List!64584 0))(
  ( (Nil!64460) (Cons!64460 (h!70908 Regex!16095) (t!378073 List!64584)) )
))
(declare-datatypes ((Context!10958 0))(
  ( (Context!10959 (exprs!5979 List!64584)) )
))
(declare-datatypes ((List!64585 0))(
  ( (Nil!64461) (Cons!64461 (h!70909 Context!10958) (t!378074 List!64585)) )
))
(declare-fun zl!343 () List!64585)

(declare-fun isEmpty!36420 (List!64584) Bool)

(assert (=> b!6151530 (= res!2548084 (isEmpty!36420 (t!378073 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6151531 () Bool)

(declare-fun e!3748356 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2334524 () (InoxSet Context!10958))

(declare-datatypes ((List!64586 0))(
  ( (Nil!64462) (Cons!64462 (h!70910 C!32460) (t!378075 List!64586)) )
))
(declare-fun s!2326 () List!64586)

(declare-fun matchZipper!2107 ((InoxSet Context!10958) List!64586) Bool)

(assert (=> b!6151531 (= e!3748356 (not (matchZipper!2107 lt!2334524 (t!378075 s!2326))))))

(declare-fun res!2548085 () Bool)

(declare-fun e!3748357 () Bool)

(assert (=> start!614474 (=> (not res!2548085) (not e!3748357))))

(declare-fun r!7292 () Regex!16095)

(declare-fun validRegex!7831 (Regex!16095) Bool)

(assert (=> start!614474 (= res!2548085 (validRegex!7831 r!7292))))

(assert (=> start!614474 e!3748357))

(declare-fun e!3748368 () Bool)

(assert (=> start!614474 e!3748368))

(declare-fun condSetEmpty!41652 () Bool)

(declare-fun z!1189 () (InoxSet Context!10958))

(assert (=> start!614474 (= condSetEmpty!41652 (= z!1189 ((as const (Array Context!10958 Bool)) false)))))

(declare-fun setRes!41652 () Bool)

(assert (=> start!614474 setRes!41652))

(declare-fun e!3748362 () Bool)

(assert (=> start!614474 e!3748362))

(declare-fun e!3748354 () Bool)

(assert (=> start!614474 e!3748354))

(declare-fun e!3748365 () Bool)

(assert (=> b!6151532 (= e!3748365 e!3748369)))

(declare-fun res!2548071 () Bool)

(assert (=> b!6151532 (=> res!2548071 e!3748369)))

(declare-fun lt!2334548 () Bool)

(declare-fun lt!2334536 () Bool)

(get-info :version)

(assert (=> b!6151532 (= res!2548071 (or (not (= lt!2334536 lt!2334548)) ((_ is Nil!64462) s!2326)))))

(declare-fun Exists!3165 (Int) Bool)

(assert (=> b!6151532 (= (Exists!3165 lambda!335495) (Exists!3165 lambda!335496))))

(declare-datatypes ((Unit!157549 0))(
  ( (Unit!157550) )
))
(declare-fun lt!2334528 () Unit!157549)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1702 (Regex!16095 Regex!16095 List!64586) Unit!157549)

(assert (=> b!6151532 (= lt!2334528 (lemmaExistCutMatchRandMatchRSpecEquivalent!1702 (regOne!32702 r!7292) (regTwo!32702 r!7292) s!2326))))

(assert (=> b!6151532 (= lt!2334548 (Exists!3165 lambda!335495))))

(declare-datatypes ((tuple2!66148 0))(
  ( (tuple2!66149 (_1!36377 List!64586) (_2!36377 List!64586)) )
))
(declare-datatypes ((Option!15986 0))(
  ( (None!15985) (Some!15985 (v!52124 tuple2!66148)) )
))
(declare-fun isDefined!12689 (Option!15986) Bool)

(declare-fun findConcatSeparation!2400 (Regex!16095 Regex!16095 List!64586 List!64586 List!64586) Option!15986)

(assert (=> b!6151532 (= lt!2334548 (isDefined!12689 (findConcatSeparation!2400 (regOne!32702 r!7292) (regTwo!32702 r!7292) Nil!64462 s!2326 s!2326)))))

(declare-fun lt!2334549 () Unit!157549)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2164 (Regex!16095 Regex!16095 List!64586) Unit!157549)

(assert (=> b!6151532 (= lt!2334549 (lemmaFindConcatSeparationEquivalentToExists!2164 (regOne!32702 r!7292) (regTwo!32702 r!7292) s!2326))))

(declare-fun b!6151533 () Bool)

(declare-fun e!3748363 () Unit!157549)

(declare-fun Unit!157551 () Unit!157549)

(assert (=> b!6151533 (= e!3748363 Unit!157551)))

(declare-fun setIsEmpty!41652 () Bool)

(assert (=> setIsEmpty!41652 setRes!41652))

(declare-fun b!6151534 () Bool)

(declare-fun e!3748366 () Bool)

(declare-fun lt!2334539 () (InoxSet Context!10958))

(assert (=> b!6151534 (= e!3748366 (matchZipper!2107 lt!2334539 (t!378075 s!2326)))))

(declare-fun b!6151535 () Bool)

(declare-fun res!2548087 () Bool)

(declare-fun e!3748353 () Bool)

(assert (=> b!6151535 (=> res!2548087 e!3748353)))

(declare-fun lt!2334550 () (InoxSet Context!10958))

(assert (=> b!6151535 (= res!2548087 (not (= lt!2334550 ((_ map or) lt!2334524 lt!2334539))))))

(declare-fun b!6151536 () Bool)

(assert (=> b!6151536 (= e!3748357 (not e!3748365))))

(declare-fun res!2548075 () Bool)

(assert (=> b!6151536 (=> res!2548075 e!3748365)))

(assert (=> b!6151536 (= res!2548075 (not ((_ is Cons!64461) zl!343)))))

(declare-fun matchRSpec!3196 (Regex!16095 List!64586) Bool)

(assert (=> b!6151536 (= lt!2334536 (matchRSpec!3196 r!7292 s!2326))))

(declare-fun matchR!8278 (Regex!16095 List!64586) Bool)

(assert (=> b!6151536 (= lt!2334536 (matchR!8278 r!7292 s!2326))))

(declare-fun lt!2334525 () Unit!157549)

(declare-fun mainMatchTheorem!3196 (Regex!16095 List!64586) Unit!157549)

(assert (=> b!6151536 (= lt!2334525 (mainMatchTheorem!3196 r!7292 s!2326))))

(declare-fun b!6151537 () Bool)

(declare-fun res!2548081 () Bool)

(assert (=> b!6151537 (=> res!2548081 e!3748365)))

(declare-fun isEmpty!36421 (List!64585) Bool)

(assert (=> b!6151537 (= res!2548081 (not (isEmpty!36421 (t!378074 zl!343))))))

(declare-fun b!6151538 () Bool)

(declare-fun tp!1718241 () Bool)

(declare-fun tp!1718240 () Bool)

(assert (=> b!6151538 (= e!3748368 (and tp!1718241 tp!1718240))))

(declare-fun b!6151539 () Bool)

(declare-fun lt!2334543 () Context!10958)

(declare-fun inv!83484 (Context!10958) Bool)

(assert (=> b!6151539 (= e!3748353 (inv!83484 lt!2334543))))

(declare-fun b!6151540 () Bool)

(declare-fun e!3748360 () Bool)

(assert (=> b!6151540 (= e!3748360 (matchZipper!2107 lt!2334539 (t!378075 s!2326)))))

(declare-fun b!6151541 () Bool)

(declare-fun Unit!157552 () Unit!157549)

(assert (=> b!6151541 (= e!3748363 Unit!157552)))

(declare-fun lt!2334546 () (InoxSet Context!10958))

(declare-fun lt!2334544 () Unit!157549)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!926 ((InoxSet Context!10958) (InoxSet Context!10958) List!64586) Unit!157549)

(assert (=> b!6151541 (= lt!2334544 (lemmaZipperConcatMatchesSameAsBothZippers!926 lt!2334546 lt!2334539 (t!378075 s!2326)))))

(declare-fun res!2548083 () Bool)

(declare-fun lt!2334531 () Bool)

(assert (=> b!6151541 (= res!2548083 lt!2334531)))

(assert (=> b!6151541 (=> res!2548083 e!3748366)))

(assert (=> b!6151541 (= (matchZipper!2107 ((_ map or) lt!2334546 lt!2334539) (t!378075 s!2326)) e!3748366)))

(declare-fun e!3748358 () Bool)

(assert (=> b!6151542 (= e!3748369 e!3748358)))

(declare-fun res!2548070 () Bool)

(assert (=> b!6151542 (=> res!2548070 e!3748358)))

(assert (=> b!6151542 (= res!2548070 (or (and ((_ is ElementMatch!16095) (regOne!32702 r!7292)) (= (c!1107191 (regOne!32702 r!7292)) (h!70910 s!2326))) (not ((_ is Union!16095) (regOne!32702 r!7292)))))))

(declare-fun lt!2334540 () Unit!157549)

(declare-fun e!3748367 () Unit!157549)

(assert (=> b!6151542 (= lt!2334540 e!3748367)))

(declare-fun c!1107189 () Bool)

(declare-fun nullable!6088 (Regex!16095) Bool)

(assert (=> b!6151542 (= c!1107189 (nullable!6088 (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun lambda!335497 () Int)

(declare-fun flatMap!1600 ((InoxSet Context!10958) Int) (InoxSet Context!10958))

(declare-fun derivationStepZipperUp!1269 (Context!10958 C!32460) (InoxSet Context!10958))

(assert (=> b!6151542 (= (flatMap!1600 z!1189 lambda!335497) (derivationStepZipperUp!1269 (h!70909 zl!343) (h!70910 s!2326)))))

(declare-fun lt!2334530 () Unit!157549)

(declare-fun lemmaFlatMapOnSingletonSet!1126 ((InoxSet Context!10958) Context!10958 Int) Unit!157549)

(assert (=> b!6151542 (= lt!2334530 (lemmaFlatMapOnSingletonSet!1126 z!1189 (h!70909 zl!343) lambda!335497))))

(assert (=> b!6151542 (= lt!2334539 (derivationStepZipperUp!1269 lt!2334543 (h!70910 s!2326)))))

(declare-fun lt!2334537 () (InoxSet Context!10958))

(declare-fun derivationStepZipperDown!1343 (Regex!16095 Context!10958 C!32460) (InoxSet Context!10958))

(assert (=> b!6151542 (= lt!2334537 (derivationStepZipperDown!1343 (h!70908 (exprs!5979 (h!70909 zl!343))) lt!2334543 (h!70910 s!2326)))))

(assert (=> b!6151542 (= lt!2334543 (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun lt!2334541 () (InoxSet Context!10958))

(assert (=> b!6151542 (= lt!2334541 (derivationStepZipperUp!1269 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))) (h!70910 s!2326)))))

(declare-fun b!6151543 () Bool)

(declare-fun res!2548074 () Bool)

(assert (=> b!6151543 (=> res!2548074 e!3748365)))

(assert (=> b!6151543 (= res!2548074 (or ((_ is EmptyExpr!16095) r!7292) ((_ is EmptyLang!16095) r!7292) ((_ is ElementMatch!16095) r!7292) ((_ is Union!16095) r!7292) (not ((_ is Concat!24940) r!7292))))))

(declare-fun b!6151544 () Bool)

(declare-fun e!3748359 () Bool)

(assert (=> b!6151544 (= e!3748359 e!3748353)))

(declare-fun res!2548079 () Bool)

(assert (=> b!6151544 (=> res!2548079 e!3748353)))

(assert (=> b!6151544 (= res!2548079 (not (nullable!6088 (regTwo!32703 (regOne!32702 r!7292)))))))

(declare-fun lt!2334527 () Context!10958)

(declare-fun lt!2334538 () (InoxSet Context!10958))

(assert (=> b!6151544 (= (flatMap!1600 lt!2334538 lambda!335497) (derivationStepZipperUp!1269 lt!2334527 (h!70910 s!2326)))))

(declare-fun lt!2334533 () Unit!157549)

(assert (=> b!6151544 (= lt!2334533 (lemmaFlatMapOnSingletonSet!1126 lt!2334538 lt!2334527 lambda!335497))))

(assert (=> b!6151544 (= lt!2334550 (derivationStepZipperUp!1269 lt!2334527 (h!70910 s!2326)))))

(declare-fun lt!2334534 () Unit!157549)

(assert (=> b!6151544 (= lt!2334534 e!3748363)))

(declare-fun c!1107190 () Bool)

(assert (=> b!6151544 (= c!1107190 (nullable!6088 (regOne!32703 (regOne!32702 r!7292))))))

(declare-fun lt!2334535 () Context!10958)

(declare-fun lt!2334526 () (InoxSet Context!10958))

(assert (=> b!6151544 (= (flatMap!1600 lt!2334526 lambda!335497) (derivationStepZipperUp!1269 lt!2334535 (h!70910 s!2326)))))

(declare-fun lt!2334529 () Unit!157549)

(assert (=> b!6151544 (= lt!2334529 (lemmaFlatMapOnSingletonSet!1126 lt!2334526 lt!2334535 lambda!335497))))

(declare-fun lt!2334547 () (InoxSet Context!10958))

(assert (=> b!6151544 (= lt!2334547 (derivationStepZipperUp!1269 lt!2334535 (h!70910 s!2326)))))

(assert (=> b!6151544 (= lt!2334538 (store ((as const (Array Context!10958 Bool)) false) lt!2334527 true))))

(assert (=> b!6151544 (= lt!2334527 (Context!10959 (Cons!64460 (regTwo!32703 (regOne!32702 r!7292)) (t!378073 (exprs!5979 (h!70909 zl!343))))))))

(assert (=> b!6151544 (= lt!2334526 (store ((as const (Array Context!10958 Bool)) false) lt!2334535 true))))

(assert (=> b!6151544 (= lt!2334535 (Context!10959 (Cons!64460 (regOne!32703 (regOne!32702 r!7292)) (t!378073 (exprs!5979 (h!70909 zl!343))))))))

(declare-fun b!6151545 () Bool)

(declare-fun res!2548069 () Bool)

(assert (=> b!6151545 (=> (not res!2548069) (not e!3748357))))

(declare-fun toList!9879 ((InoxSet Context!10958)) List!64585)

(assert (=> b!6151545 (= res!2548069 (= (toList!9879 z!1189) zl!343))))

(declare-fun b!6151546 () Bool)

(declare-fun res!2548073 () Bool)

(assert (=> b!6151546 (=> res!2548073 e!3748365)))

(declare-fun generalisedConcat!1692 (List!64584) Regex!16095)

(assert (=> b!6151546 (= res!2548073 (not (= r!7292 (generalisedConcat!1692 (exprs!5979 (h!70909 zl!343))))))))

(declare-fun b!6151547 () Bool)

(declare-fun res!2548078 () Bool)

(assert (=> b!6151547 (=> res!2548078 e!3748365)))

(declare-fun generalisedUnion!1939 (List!64584) Regex!16095)

(declare-fun unfocusZipperList!1516 (List!64585) List!64584)

(assert (=> b!6151547 (= res!2548078 (not (= r!7292 (generalisedUnion!1939 (unfocusZipperList!1516 zl!343)))))))

(declare-fun b!6151548 () Bool)

(declare-fun e!3748355 () Bool)

(assert (=> b!6151548 (= e!3748358 e!3748355)))

(declare-fun res!2548082 () Bool)

(assert (=> b!6151548 (=> res!2548082 e!3748355)))

(declare-fun lt!2334542 () (InoxSet Context!10958))

(assert (=> b!6151548 (= res!2548082 (not (= lt!2334537 lt!2334542)))))

(assert (=> b!6151548 (= lt!2334542 ((_ map or) lt!2334546 lt!2334524))))

(assert (=> b!6151548 (= lt!2334524 (derivationStepZipperDown!1343 (regTwo!32703 (regOne!32702 r!7292)) lt!2334543 (h!70910 s!2326)))))

(assert (=> b!6151548 (= lt!2334546 (derivationStepZipperDown!1343 (regOne!32703 (regOne!32702 r!7292)) lt!2334543 (h!70910 s!2326)))))

(declare-fun b!6151549 () Bool)

(declare-fun e!3748352 () Bool)

(declare-fun tp!1718242 () Bool)

(assert (=> b!6151549 (= e!3748352 tp!1718242)))

(declare-fun b!6151550 () Bool)

(declare-fun tp!1718233 () Bool)

(assert (=> b!6151550 (= e!3748368 tp!1718233)))

(declare-fun b!6151551 () Bool)

(declare-fun res!2548072 () Bool)

(assert (=> b!6151551 (=> res!2548072 e!3748365)))

(assert (=> b!6151551 (= res!2548072 (not ((_ is Cons!64460) (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6151552 () Bool)

(assert (=> b!6151552 (= e!3748355 e!3748359)))

(declare-fun res!2548086 () Bool)

(assert (=> b!6151552 (=> res!2548086 e!3748359)))

(assert (=> b!6151552 (= res!2548086 e!3748356)))

(declare-fun res!2548077 () Bool)

(assert (=> b!6151552 (=> (not res!2548077) (not e!3748356))))

(assert (=> b!6151552 (= res!2548077 (not (= (matchZipper!2107 lt!2334537 (t!378075 s!2326)) lt!2334531)))))

(declare-fun e!3748361 () Bool)

(assert (=> b!6151552 (= (matchZipper!2107 lt!2334542 (t!378075 s!2326)) e!3748361)))

(declare-fun res!2548076 () Bool)

(assert (=> b!6151552 (=> res!2548076 e!3748361)))

(assert (=> b!6151552 (= res!2548076 lt!2334531)))

(assert (=> b!6151552 (= lt!2334531 (matchZipper!2107 lt!2334546 (t!378075 s!2326)))))

(declare-fun lt!2334532 () Unit!157549)

(assert (=> b!6151552 (= lt!2334532 (lemmaZipperConcatMatchesSameAsBothZippers!926 lt!2334546 lt!2334524 (t!378075 s!2326)))))

(declare-fun tp!1718239 () Bool)

(declare-fun setElem!41652 () Context!10958)

(declare-fun setNonEmpty!41652 () Bool)

(assert (=> setNonEmpty!41652 (= setRes!41652 (and tp!1718239 (inv!83484 setElem!41652) e!3748352))))

(declare-fun setRest!41652 () (InoxSet Context!10958))

(assert (=> setNonEmpty!41652 (= z!1189 ((_ map or) (store ((as const (Array Context!10958 Bool)) false) setElem!41652 true) setRest!41652))))

(declare-fun b!6151553 () Bool)

(declare-fun Unit!157553 () Unit!157549)

(assert (=> b!6151553 (= e!3748367 Unit!157553)))

(declare-fun b!6151554 () Bool)

(declare-fun tp_is_empty!41443 () Bool)

(assert (=> b!6151554 (= e!3748368 tp_is_empty!41443)))

(declare-fun b!6151555 () Bool)

(declare-fun e!3748364 () Bool)

(declare-fun tp!1718235 () Bool)

(assert (=> b!6151555 (= e!3748364 tp!1718235)))

(declare-fun tp!1718234 () Bool)

(declare-fun b!6151556 () Bool)

(assert (=> b!6151556 (= e!3748362 (and (inv!83484 (h!70909 zl!343)) e!3748364 tp!1718234))))

(declare-fun b!6151557 () Bool)

(declare-fun tp!1718236 () Bool)

(assert (=> b!6151557 (= e!3748354 (and tp_is_empty!41443 tp!1718236))))

(declare-fun b!6151558 () Bool)

(assert (=> b!6151558 (= e!3748361 (matchZipper!2107 lt!2334524 (t!378075 s!2326)))))

(declare-fun b!6151559 () Bool)

(declare-fun res!2548080 () Bool)

(assert (=> b!6151559 (=> (not res!2548080) (not e!3748357))))

(declare-fun unfocusZipper!1837 (List!64585) Regex!16095)

(assert (=> b!6151559 (= res!2548080 (= r!7292 (unfocusZipper!1837 zl!343)))))

(declare-fun b!6151560 () Bool)

(declare-fun tp!1718238 () Bool)

(declare-fun tp!1718237 () Bool)

(assert (=> b!6151560 (= e!3748368 (and tp!1718238 tp!1718237))))

(declare-fun b!6151561 () Bool)

(declare-fun Unit!157554 () Unit!157549)

(assert (=> b!6151561 (= e!3748367 Unit!157554)))

(declare-fun lt!2334545 () Unit!157549)

(assert (=> b!6151561 (= lt!2334545 (lemmaZipperConcatMatchesSameAsBothZippers!926 lt!2334537 lt!2334539 (t!378075 s!2326)))))

(declare-fun res!2548068 () Bool)

(assert (=> b!6151561 (= res!2548068 (matchZipper!2107 lt!2334537 (t!378075 s!2326)))))

(assert (=> b!6151561 (=> res!2548068 e!3748360)))

(assert (=> b!6151561 (= (matchZipper!2107 ((_ map or) lt!2334537 lt!2334539) (t!378075 s!2326)) e!3748360)))

(assert (= (and start!614474 res!2548085) b!6151545))

(assert (= (and b!6151545 res!2548069) b!6151559))

(assert (= (and b!6151559 res!2548080) b!6151536))

(assert (= (and b!6151536 (not res!2548075)) b!6151537))

(assert (= (and b!6151537 (not res!2548081)) b!6151546))

(assert (= (and b!6151546 (not res!2548073)) b!6151551))

(assert (= (and b!6151551 (not res!2548072)) b!6151547))

(assert (= (and b!6151547 (not res!2548078)) b!6151543))

(assert (= (and b!6151543 (not res!2548074)) b!6151532))

(assert (= (and b!6151532 (not res!2548071)) b!6151530))

(assert (= (and b!6151530 (not res!2548084)) b!6151542))

(assert (= (and b!6151542 c!1107189) b!6151561))

(assert (= (and b!6151542 (not c!1107189)) b!6151553))

(assert (= (and b!6151561 (not res!2548068)) b!6151540))

(assert (= (and b!6151542 (not res!2548070)) b!6151548))

(assert (= (and b!6151548 (not res!2548082)) b!6151552))

(assert (= (and b!6151552 (not res!2548076)) b!6151558))

(assert (= (and b!6151552 res!2548077) b!6151531))

(assert (= (and b!6151552 (not res!2548086)) b!6151544))

(assert (= (and b!6151544 c!1107190) b!6151541))

(assert (= (and b!6151544 (not c!1107190)) b!6151533))

(assert (= (and b!6151541 (not res!2548083)) b!6151534))

(assert (= (and b!6151544 (not res!2548079)) b!6151535))

(assert (= (and b!6151535 (not res!2548087)) b!6151539))

(assert (= (and start!614474 ((_ is ElementMatch!16095) r!7292)) b!6151554))

(assert (= (and start!614474 ((_ is Concat!24940) r!7292)) b!6151538))

(assert (= (and start!614474 ((_ is Star!16095) r!7292)) b!6151550))

(assert (= (and start!614474 ((_ is Union!16095) r!7292)) b!6151560))

(assert (= (and start!614474 condSetEmpty!41652) setIsEmpty!41652))

(assert (= (and start!614474 (not condSetEmpty!41652)) setNonEmpty!41652))

(assert (= setNonEmpty!41652 b!6151549))

(assert (= b!6151556 b!6151555))

(assert (= (and start!614474 ((_ is Cons!64461) zl!343)) b!6151556))

(assert (= (and start!614474 ((_ is Cons!64462) s!2326)) b!6151557))

(declare-fun m!6991014 () Bool)

(assert (=> b!6151541 m!6991014))

(declare-fun m!6991016 () Bool)

(assert (=> b!6151541 m!6991016))

(declare-fun m!6991018 () Bool)

(assert (=> b!6151547 m!6991018))

(assert (=> b!6151547 m!6991018))

(declare-fun m!6991020 () Bool)

(assert (=> b!6151547 m!6991020))

(declare-fun m!6991022 () Bool)

(assert (=> b!6151561 m!6991022))

(declare-fun m!6991024 () Bool)

(assert (=> b!6151561 m!6991024))

(declare-fun m!6991026 () Bool)

(assert (=> b!6151561 m!6991026))

(declare-fun m!6991028 () Bool)

(assert (=> b!6151548 m!6991028))

(declare-fun m!6991030 () Bool)

(assert (=> b!6151548 m!6991030))

(declare-fun m!6991032 () Bool)

(assert (=> b!6151537 m!6991032))

(declare-fun m!6991034 () Bool)

(assert (=> b!6151530 m!6991034))

(declare-fun m!6991036 () Bool)

(assert (=> start!614474 m!6991036))

(declare-fun m!6991038 () Bool)

(assert (=> b!6151559 m!6991038))

(declare-fun m!6991040 () Bool)

(assert (=> b!6151542 m!6991040))

(declare-fun m!6991042 () Bool)

(assert (=> b!6151542 m!6991042))

(declare-fun m!6991044 () Bool)

(assert (=> b!6151542 m!6991044))

(declare-fun m!6991046 () Bool)

(assert (=> b!6151542 m!6991046))

(declare-fun m!6991048 () Bool)

(assert (=> b!6151542 m!6991048))

(declare-fun m!6991050 () Bool)

(assert (=> b!6151542 m!6991050))

(declare-fun m!6991052 () Bool)

(assert (=> b!6151542 m!6991052))

(declare-fun m!6991054 () Bool)

(assert (=> b!6151536 m!6991054))

(declare-fun m!6991056 () Bool)

(assert (=> b!6151536 m!6991056))

(declare-fun m!6991058 () Bool)

(assert (=> b!6151536 m!6991058))

(declare-fun m!6991060 () Bool)

(assert (=> b!6151544 m!6991060))

(declare-fun m!6991062 () Bool)

(assert (=> b!6151544 m!6991062))

(declare-fun m!6991064 () Bool)

(assert (=> b!6151544 m!6991064))

(declare-fun m!6991066 () Bool)

(assert (=> b!6151544 m!6991066))

(declare-fun m!6991068 () Bool)

(assert (=> b!6151544 m!6991068))

(declare-fun m!6991070 () Bool)

(assert (=> b!6151544 m!6991070))

(declare-fun m!6991072 () Bool)

(assert (=> b!6151544 m!6991072))

(declare-fun m!6991074 () Bool)

(assert (=> b!6151544 m!6991074))

(declare-fun m!6991076 () Bool)

(assert (=> b!6151544 m!6991076))

(declare-fun m!6991078 () Bool)

(assert (=> b!6151544 m!6991078))

(declare-fun m!6991080 () Bool)

(assert (=> b!6151545 m!6991080))

(declare-fun m!6991082 () Bool)

(assert (=> b!6151540 m!6991082))

(declare-fun m!6991084 () Bool)

(assert (=> b!6151539 m!6991084))

(declare-fun m!6991086 () Bool)

(assert (=> setNonEmpty!41652 m!6991086))

(declare-fun m!6991088 () Bool)

(assert (=> b!6151531 m!6991088))

(assert (=> b!6151534 m!6991082))

(declare-fun m!6991090 () Bool)

(assert (=> b!6151532 m!6991090))

(declare-fun m!6991092 () Bool)

(assert (=> b!6151532 m!6991092))

(declare-fun m!6991094 () Bool)

(assert (=> b!6151532 m!6991094))

(declare-fun m!6991096 () Bool)

(assert (=> b!6151532 m!6991096))

(assert (=> b!6151532 m!6991094))

(declare-fun m!6991098 () Bool)

(assert (=> b!6151532 m!6991098))

(assert (=> b!6151532 m!6991090))

(declare-fun m!6991100 () Bool)

(assert (=> b!6151532 m!6991100))

(declare-fun m!6991102 () Bool)

(assert (=> b!6151556 m!6991102))

(declare-fun m!6991104 () Bool)

(assert (=> b!6151546 m!6991104))

(assert (=> b!6151552 m!6991024))

(declare-fun m!6991106 () Bool)

(assert (=> b!6151552 m!6991106))

(declare-fun m!6991108 () Bool)

(assert (=> b!6151552 m!6991108))

(declare-fun m!6991110 () Bool)

(assert (=> b!6151552 m!6991110))

(assert (=> b!6151558 m!6991088))

(check-sat (not b!6151556) (not b!6151548) (not b!6151530) (not b!6151532) (not b!6151541) (not b!6151550) (not start!614474) (not b!6151561) (not b!6151559) (not b!6151537) (not b!6151547) (not b!6151544) (not b!6151560) (not b!6151531) (not b!6151555) (not b!6151545) (not b!6151540) (not b!6151538) (not b!6151542) (not b!6151558) (not b!6151534) tp_is_empty!41443 (not b!6151536) (not b!6151539) (not setNonEmpty!41652) (not b!6151557) (not b!6151549) (not b!6151546) (not b!6151552))
(check-sat)
(get-model)

(declare-fun d!1927473 () Bool)

(declare-fun c!1107256 () Bool)

(declare-fun isEmpty!36424 (List!64586) Bool)

(assert (=> d!1927473 (= c!1107256 (isEmpty!36424 (t!378075 s!2326)))))

(declare-fun e!3748504 () Bool)

(assert (=> d!1927473 (= (matchZipper!2107 lt!2334537 (t!378075 s!2326)) e!3748504)))

(declare-fun b!6151796 () Bool)

(declare-fun nullableZipper!1876 ((InoxSet Context!10958)) Bool)

(assert (=> b!6151796 (= e!3748504 (nullableZipper!1876 lt!2334537))))

(declare-fun b!6151797 () Bool)

(declare-fun derivationStepZipper!2068 ((InoxSet Context!10958) C!32460) (InoxSet Context!10958))

(declare-fun head!12711 (List!64586) C!32460)

(declare-fun tail!11796 (List!64586) List!64586)

(assert (=> b!6151797 (= e!3748504 (matchZipper!2107 (derivationStepZipper!2068 lt!2334537 (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))))))

(assert (= (and d!1927473 c!1107256) b!6151796))

(assert (= (and d!1927473 (not c!1107256)) b!6151797))

(declare-fun m!6991252 () Bool)

(assert (=> d!1927473 m!6991252))

(declare-fun m!6991254 () Bool)

(assert (=> b!6151796 m!6991254))

(declare-fun m!6991256 () Bool)

(assert (=> b!6151797 m!6991256))

(assert (=> b!6151797 m!6991256))

(declare-fun m!6991258 () Bool)

(assert (=> b!6151797 m!6991258))

(declare-fun m!6991260 () Bool)

(assert (=> b!6151797 m!6991260))

(assert (=> b!6151797 m!6991258))

(assert (=> b!6151797 m!6991260))

(declare-fun m!6991262 () Bool)

(assert (=> b!6151797 m!6991262))

(assert (=> b!6151552 d!1927473))

(declare-fun d!1927477 () Bool)

(declare-fun c!1107257 () Bool)

(assert (=> d!1927477 (= c!1107257 (isEmpty!36424 (t!378075 s!2326)))))

(declare-fun e!3748505 () Bool)

(assert (=> d!1927477 (= (matchZipper!2107 lt!2334542 (t!378075 s!2326)) e!3748505)))

(declare-fun b!6151798 () Bool)

(assert (=> b!6151798 (= e!3748505 (nullableZipper!1876 lt!2334542))))

(declare-fun b!6151799 () Bool)

(assert (=> b!6151799 (= e!3748505 (matchZipper!2107 (derivationStepZipper!2068 lt!2334542 (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))))))

(assert (= (and d!1927477 c!1107257) b!6151798))

(assert (= (and d!1927477 (not c!1107257)) b!6151799))

(assert (=> d!1927477 m!6991252))

(declare-fun m!6991264 () Bool)

(assert (=> b!6151798 m!6991264))

(assert (=> b!6151799 m!6991256))

(assert (=> b!6151799 m!6991256))

(declare-fun m!6991266 () Bool)

(assert (=> b!6151799 m!6991266))

(assert (=> b!6151799 m!6991260))

(assert (=> b!6151799 m!6991266))

(assert (=> b!6151799 m!6991260))

(declare-fun m!6991268 () Bool)

(assert (=> b!6151799 m!6991268))

(assert (=> b!6151552 d!1927477))

(declare-fun d!1927479 () Bool)

(declare-fun c!1107258 () Bool)

(assert (=> d!1927479 (= c!1107258 (isEmpty!36424 (t!378075 s!2326)))))

(declare-fun e!3748506 () Bool)

(assert (=> d!1927479 (= (matchZipper!2107 lt!2334546 (t!378075 s!2326)) e!3748506)))

(declare-fun b!6151800 () Bool)

(assert (=> b!6151800 (= e!3748506 (nullableZipper!1876 lt!2334546))))

(declare-fun b!6151801 () Bool)

(assert (=> b!6151801 (= e!3748506 (matchZipper!2107 (derivationStepZipper!2068 lt!2334546 (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))))))

(assert (= (and d!1927479 c!1107258) b!6151800))

(assert (= (and d!1927479 (not c!1107258)) b!6151801))

(assert (=> d!1927479 m!6991252))

(declare-fun m!6991270 () Bool)

(assert (=> b!6151800 m!6991270))

(assert (=> b!6151801 m!6991256))

(assert (=> b!6151801 m!6991256))

(declare-fun m!6991272 () Bool)

(assert (=> b!6151801 m!6991272))

(assert (=> b!6151801 m!6991260))

(assert (=> b!6151801 m!6991272))

(assert (=> b!6151801 m!6991260))

(declare-fun m!6991274 () Bool)

(assert (=> b!6151801 m!6991274))

(assert (=> b!6151552 d!1927479))

(declare-fun d!1927481 () Bool)

(declare-fun e!3748521 () Bool)

(assert (=> d!1927481 (= (matchZipper!2107 ((_ map or) lt!2334546 lt!2334524) (t!378075 s!2326)) e!3748521)))

(declare-fun res!2548192 () Bool)

(assert (=> d!1927481 (=> res!2548192 e!3748521)))

(assert (=> d!1927481 (= res!2548192 (matchZipper!2107 lt!2334546 (t!378075 s!2326)))))

(declare-fun lt!2334587 () Unit!157549)

(declare-fun choose!45730 ((InoxSet Context!10958) (InoxSet Context!10958) List!64586) Unit!157549)

(assert (=> d!1927481 (= lt!2334587 (choose!45730 lt!2334546 lt!2334524 (t!378075 s!2326)))))

(assert (=> d!1927481 (= (lemmaZipperConcatMatchesSameAsBothZippers!926 lt!2334546 lt!2334524 (t!378075 s!2326)) lt!2334587)))

(declare-fun b!6151826 () Bool)

(assert (=> b!6151826 (= e!3748521 (matchZipper!2107 lt!2334524 (t!378075 s!2326)))))

(assert (= (and d!1927481 (not res!2548192)) b!6151826))

(declare-fun m!6991294 () Bool)

(assert (=> d!1927481 m!6991294))

(assert (=> d!1927481 m!6991108))

(declare-fun m!6991296 () Bool)

(assert (=> d!1927481 m!6991296))

(assert (=> b!6151826 m!6991088))

(assert (=> b!6151552 d!1927481))

(declare-fun b!6151930 () Bool)

(declare-fun e!3748586 () Option!15986)

(assert (=> b!6151930 (= e!3748586 (Some!15985 (tuple2!66149 Nil!64462 s!2326)))))

(declare-fun b!6151931 () Bool)

(declare-fun res!2548222 () Bool)

(declare-fun e!3748583 () Bool)

(assert (=> b!6151931 (=> (not res!2548222) (not e!3748583))))

(declare-fun lt!2334607 () Option!15986)

(declare-fun get!22244 (Option!15986) tuple2!66148)

(assert (=> b!6151931 (= res!2548222 (matchR!8278 (regTwo!32702 r!7292) (_2!36377 (get!22244 lt!2334607))))))

(declare-fun b!6151932 () Bool)

(declare-fun e!3748584 () Option!15986)

(assert (=> b!6151932 (= e!3748584 None!15985)))

(declare-fun b!6151933 () Bool)

(declare-fun ++!14181 (List!64586 List!64586) List!64586)

(assert (=> b!6151933 (= e!3748583 (= (++!14181 (_1!36377 (get!22244 lt!2334607)) (_2!36377 (get!22244 lt!2334607))) s!2326))))

(declare-fun d!1927487 () Bool)

(declare-fun e!3748582 () Bool)

(assert (=> d!1927487 e!3748582))

(declare-fun res!2548221 () Bool)

(assert (=> d!1927487 (=> res!2548221 e!3748582)))

(assert (=> d!1927487 (= res!2548221 e!3748583)))

(declare-fun res!2548220 () Bool)

(assert (=> d!1927487 (=> (not res!2548220) (not e!3748583))))

(assert (=> d!1927487 (= res!2548220 (isDefined!12689 lt!2334607))))

(assert (=> d!1927487 (= lt!2334607 e!3748586)))

(declare-fun c!1107309 () Bool)

(declare-fun e!3748585 () Bool)

(assert (=> d!1927487 (= c!1107309 e!3748585)))

(declare-fun res!2548219 () Bool)

(assert (=> d!1927487 (=> (not res!2548219) (not e!3748585))))

(assert (=> d!1927487 (= res!2548219 (matchR!8278 (regOne!32702 r!7292) Nil!64462))))

(assert (=> d!1927487 (validRegex!7831 (regOne!32702 r!7292))))

(assert (=> d!1927487 (= (findConcatSeparation!2400 (regOne!32702 r!7292) (regTwo!32702 r!7292) Nil!64462 s!2326 s!2326) lt!2334607)))

(declare-fun b!6151934 () Bool)

(assert (=> b!6151934 (= e!3748582 (not (isDefined!12689 lt!2334607)))))

(declare-fun b!6151935 () Bool)

(declare-fun res!2548218 () Bool)

(assert (=> b!6151935 (=> (not res!2548218) (not e!3748583))))

(assert (=> b!6151935 (= res!2548218 (matchR!8278 (regOne!32702 r!7292) (_1!36377 (get!22244 lt!2334607))))))

(declare-fun b!6151936 () Bool)

(declare-fun lt!2334605 () Unit!157549)

(declare-fun lt!2334606 () Unit!157549)

(assert (=> b!6151936 (= lt!2334605 lt!2334606)))

(assert (=> b!6151936 (= (++!14181 (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462)) (t!378075 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2276 (List!64586 C!32460 List!64586 List!64586) Unit!157549)

(assert (=> b!6151936 (= lt!2334606 (lemmaMoveElementToOtherListKeepsConcatEq!2276 Nil!64462 (h!70910 s!2326) (t!378075 s!2326) s!2326))))

(assert (=> b!6151936 (= e!3748584 (findConcatSeparation!2400 (regOne!32702 r!7292) (regTwo!32702 r!7292) (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462)) (t!378075 s!2326) s!2326))))

(declare-fun b!6151937 () Bool)

(assert (=> b!6151937 (= e!3748585 (matchR!8278 (regTwo!32702 r!7292) s!2326))))

(declare-fun b!6151938 () Bool)

(assert (=> b!6151938 (= e!3748586 e!3748584)))

(declare-fun c!1107308 () Bool)

(assert (=> b!6151938 (= c!1107308 ((_ is Nil!64462) s!2326))))

(assert (= (and d!1927487 res!2548219) b!6151937))

(assert (= (and d!1927487 c!1107309) b!6151930))

(assert (= (and d!1927487 (not c!1107309)) b!6151938))

(assert (= (and b!6151938 c!1107308) b!6151932))

(assert (= (and b!6151938 (not c!1107308)) b!6151936))

(assert (= (and d!1927487 res!2548220) b!6151935))

(assert (= (and b!6151935 res!2548218) b!6151931))

(assert (= (and b!6151931 res!2548222) b!6151933))

(assert (= (and d!1927487 (not res!2548221)) b!6151934))

(declare-fun m!6991400 () Bool)

(assert (=> b!6151937 m!6991400))

(declare-fun m!6991402 () Bool)

(assert (=> b!6151935 m!6991402))

(declare-fun m!6991404 () Bool)

(assert (=> b!6151935 m!6991404))

(declare-fun m!6991406 () Bool)

(assert (=> b!6151936 m!6991406))

(assert (=> b!6151936 m!6991406))

(declare-fun m!6991408 () Bool)

(assert (=> b!6151936 m!6991408))

(declare-fun m!6991410 () Bool)

(assert (=> b!6151936 m!6991410))

(assert (=> b!6151936 m!6991406))

(declare-fun m!6991412 () Bool)

(assert (=> b!6151936 m!6991412))

(declare-fun m!6991414 () Bool)

(assert (=> b!6151934 m!6991414))

(assert (=> b!6151931 m!6991402))

(declare-fun m!6991416 () Bool)

(assert (=> b!6151931 m!6991416))

(assert (=> b!6151933 m!6991402))

(declare-fun m!6991418 () Bool)

(assert (=> b!6151933 m!6991418))

(assert (=> d!1927487 m!6991414))

(declare-fun m!6991420 () Bool)

(assert (=> d!1927487 m!6991420))

(declare-fun m!6991422 () Bool)

(assert (=> d!1927487 m!6991422))

(assert (=> b!6151532 d!1927487))

(declare-fun d!1927531 () Bool)

(declare-fun choose!45731 (Int) Bool)

(assert (=> d!1927531 (= (Exists!3165 lambda!335496) (choose!45731 lambda!335496))))

(declare-fun bs!1524975 () Bool)

(assert (= bs!1524975 d!1927531))

(declare-fun m!6991424 () Bool)

(assert (=> bs!1524975 m!6991424))

(assert (=> b!6151532 d!1927531))

(declare-fun d!1927533 () Bool)

(assert (=> d!1927533 (= (Exists!3165 lambda!335495) (choose!45731 lambda!335495))))

(declare-fun bs!1524976 () Bool)

(assert (= bs!1524976 d!1927533))

(declare-fun m!6991426 () Bool)

(assert (=> bs!1524976 m!6991426))

(assert (=> b!6151532 d!1927533))

(declare-fun bs!1524980 () Bool)

(declare-fun d!1927535 () Bool)

(assert (= bs!1524980 (and d!1927535 b!6151532)))

(declare-fun lambda!335529 () Int)

(assert (=> bs!1524980 (= lambda!335529 lambda!335495)))

(assert (=> bs!1524980 (not (= lambda!335529 lambda!335496))))

(assert (=> d!1927535 true))

(assert (=> d!1927535 true))

(assert (=> d!1927535 true))

(assert (=> d!1927535 (= (isDefined!12689 (findConcatSeparation!2400 (regOne!32702 r!7292) (regTwo!32702 r!7292) Nil!64462 s!2326 s!2326)) (Exists!3165 lambda!335529))))

(declare-fun lt!2334611 () Unit!157549)

(declare-fun choose!45732 (Regex!16095 Regex!16095 List!64586) Unit!157549)

(assert (=> d!1927535 (= lt!2334611 (choose!45732 (regOne!32702 r!7292) (regTwo!32702 r!7292) s!2326))))

(assert (=> d!1927535 (validRegex!7831 (regOne!32702 r!7292))))

(assert (=> d!1927535 (= (lemmaFindConcatSeparationEquivalentToExists!2164 (regOne!32702 r!7292) (regTwo!32702 r!7292) s!2326) lt!2334611)))

(declare-fun bs!1524981 () Bool)

(assert (= bs!1524981 d!1927535))

(assert (=> bs!1524981 m!6991090))

(declare-fun m!6991432 () Bool)

(assert (=> bs!1524981 m!6991432))

(assert (=> bs!1524981 m!6991422))

(assert (=> bs!1524981 m!6991090))

(assert (=> bs!1524981 m!6991092))

(declare-fun m!6991434 () Bool)

(assert (=> bs!1524981 m!6991434))

(assert (=> b!6151532 d!1927535))

(declare-fun bs!1524982 () Bool)

(declare-fun d!1927543 () Bool)

(assert (= bs!1524982 (and d!1927543 b!6151532)))

(declare-fun lambda!335534 () Int)

(assert (=> bs!1524982 (= lambda!335534 lambda!335495)))

(assert (=> bs!1524982 (not (= lambda!335534 lambda!335496))))

(declare-fun bs!1524983 () Bool)

(assert (= bs!1524983 (and d!1927543 d!1927535)))

(assert (=> bs!1524983 (= lambda!335534 lambda!335529)))

(assert (=> d!1927543 true))

(assert (=> d!1927543 true))

(assert (=> d!1927543 true))

(declare-fun lambda!335535 () Int)

(assert (=> bs!1524982 (not (= lambda!335535 lambda!335495))))

(assert (=> bs!1524982 (= lambda!335535 lambda!335496)))

(assert (=> bs!1524983 (not (= lambda!335535 lambda!335529))))

(declare-fun bs!1524984 () Bool)

(assert (= bs!1524984 d!1927543))

(assert (=> bs!1524984 (not (= lambda!335535 lambda!335534))))

(assert (=> d!1927543 true))

(assert (=> d!1927543 true))

(assert (=> d!1927543 true))

(assert (=> d!1927543 (= (Exists!3165 lambda!335534) (Exists!3165 lambda!335535))))

(declare-fun lt!2334614 () Unit!157549)

(declare-fun choose!45733 (Regex!16095 Regex!16095 List!64586) Unit!157549)

(assert (=> d!1927543 (= lt!2334614 (choose!45733 (regOne!32702 r!7292) (regTwo!32702 r!7292) s!2326))))

(assert (=> d!1927543 (validRegex!7831 (regOne!32702 r!7292))))

(assert (=> d!1927543 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1702 (regOne!32702 r!7292) (regTwo!32702 r!7292) s!2326) lt!2334614)))

(declare-fun m!6991436 () Bool)

(assert (=> bs!1524984 m!6991436))

(declare-fun m!6991438 () Bool)

(assert (=> bs!1524984 m!6991438))

(declare-fun m!6991440 () Bool)

(assert (=> bs!1524984 m!6991440))

(assert (=> bs!1524984 m!6991422))

(assert (=> b!6151532 d!1927543))

(declare-fun d!1927545 () Bool)

(declare-fun isEmpty!36425 (Option!15986) Bool)

(assert (=> d!1927545 (= (isDefined!12689 (findConcatSeparation!2400 (regOne!32702 r!7292) (regTwo!32702 r!7292) Nil!64462 s!2326 s!2326)) (not (isEmpty!36425 (findConcatSeparation!2400 (regOne!32702 r!7292) (regTwo!32702 r!7292) Nil!64462 s!2326 s!2326))))))

(declare-fun bs!1524985 () Bool)

(assert (= bs!1524985 d!1927545))

(assert (=> bs!1524985 m!6991090))

(declare-fun m!6991442 () Bool)

(assert (=> bs!1524985 m!6991442))

(assert (=> b!6151532 d!1927545))

(declare-fun e!3748617 () Bool)

(declare-fun d!1927547 () Bool)

(assert (=> d!1927547 (= (matchZipper!2107 ((_ map or) lt!2334537 lt!2334539) (t!378075 s!2326)) e!3748617)))

(declare-fun res!2548235 () Bool)

(assert (=> d!1927547 (=> res!2548235 e!3748617)))

(assert (=> d!1927547 (= res!2548235 (matchZipper!2107 lt!2334537 (t!378075 s!2326)))))

(declare-fun lt!2334615 () Unit!157549)

(assert (=> d!1927547 (= lt!2334615 (choose!45730 lt!2334537 lt!2334539 (t!378075 s!2326)))))

(assert (=> d!1927547 (= (lemmaZipperConcatMatchesSameAsBothZippers!926 lt!2334537 lt!2334539 (t!378075 s!2326)) lt!2334615)))

(declare-fun b!6152007 () Bool)

(assert (=> b!6152007 (= e!3748617 (matchZipper!2107 lt!2334539 (t!378075 s!2326)))))

(assert (= (and d!1927547 (not res!2548235)) b!6152007))

(assert (=> d!1927547 m!6991026))

(assert (=> d!1927547 m!6991024))

(declare-fun m!6991444 () Bool)

(assert (=> d!1927547 m!6991444))

(assert (=> b!6152007 m!6991082))

(assert (=> b!6151561 d!1927547))

(assert (=> b!6151561 d!1927473))

(declare-fun d!1927549 () Bool)

(declare-fun c!1107311 () Bool)

(assert (=> d!1927549 (= c!1107311 (isEmpty!36424 (t!378075 s!2326)))))

(declare-fun e!3748618 () Bool)

(assert (=> d!1927549 (= (matchZipper!2107 ((_ map or) lt!2334537 lt!2334539) (t!378075 s!2326)) e!3748618)))

(declare-fun b!6152008 () Bool)

(assert (=> b!6152008 (= e!3748618 (nullableZipper!1876 ((_ map or) lt!2334537 lt!2334539)))))

(declare-fun b!6152009 () Bool)

(assert (=> b!6152009 (= e!3748618 (matchZipper!2107 (derivationStepZipper!2068 ((_ map or) lt!2334537 lt!2334539) (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))))))

(assert (= (and d!1927549 c!1107311) b!6152008))

(assert (= (and d!1927549 (not c!1107311)) b!6152009))

(assert (=> d!1927549 m!6991252))

(declare-fun m!6991446 () Bool)

(assert (=> b!6152008 m!6991446))

(assert (=> b!6152009 m!6991256))

(assert (=> b!6152009 m!6991256))

(declare-fun m!6991448 () Bool)

(assert (=> b!6152009 m!6991448))

(assert (=> b!6152009 m!6991260))

(assert (=> b!6152009 m!6991448))

(assert (=> b!6152009 m!6991260))

(declare-fun m!6991450 () Bool)

(assert (=> b!6152009 m!6991450))

(assert (=> b!6151561 d!1927549))

(declare-fun d!1927551 () Bool)

(declare-fun c!1107312 () Bool)

(assert (=> d!1927551 (= c!1107312 (isEmpty!36424 (t!378075 s!2326)))))

(declare-fun e!3748619 () Bool)

(assert (=> d!1927551 (= (matchZipper!2107 lt!2334524 (t!378075 s!2326)) e!3748619)))

(declare-fun b!6152010 () Bool)

(assert (=> b!6152010 (= e!3748619 (nullableZipper!1876 lt!2334524))))

(declare-fun b!6152011 () Bool)

(assert (=> b!6152011 (= e!3748619 (matchZipper!2107 (derivationStepZipper!2068 lt!2334524 (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))))))

(assert (= (and d!1927551 c!1107312) b!6152010))

(assert (= (and d!1927551 (not c!1107312)) b!6152011))

(assert (=> d!1927551 m!6991252))

(declare-fun m!6991452 () Bool)

(assert (=> b!6152010 m!6991452))

(assert (=> b!6152011 m!6991256))

(assert (=> b!6152011 m!6991256))

(declare-fun m!6991454 () Bool)

(assert (=> b!6152011 m!6991454))

(assert (=> b!6152011 m!6991260))

(assert (=> b!6152011 m!6991454))

(assert (=> b!6152011 m!6991260))

(declare-fun m!6991456 () Bool)

(assert (=> b!6152011 m!6991456))

(assert (=> b!6151531 d!1927551))

(declare-fun e!3748620 () Bool)

(declare-fun d!1927553 () Bool)

(assert (=> d!1927553 (= (matchZipper!2107 ((_ map or) lt!2334546 lt!2334539) (t!378075 s!2326)) e!3748620)))

(declare-fun res!2548236 () Bool)

(assert (=> d!1927553 (=> res!2548236 e!3748620)))

(assert (=> d!1927553 (= res!2548236 (matchZipper!2107 lt!2334546 (t!378075 s!2326)))))

(declare-fun lt!2334616 () Unit!157549)

(assert (=> d!1927553 (= lt!2334616 (choose!45730 lt!2334546 lt!2334539 (t!378075 s!2326)))))

(assert (=> d!1927553 (= (lemmaZipperConcatMatchesSameAsBothZippers!926 lt!2334546 lt!2334539 (t!378075 s!2326)) lt!2334616)))

(declare-fun b!6152012 () Bool)

(assert (=> b!6152012 (= e!3748620 (matchZipper!2107 lt!2334539 (t!378075 s!2326)))))

(assert (= (and d!1927553 (not res!2548236)) b!6152012))

(assert (=> d!1927553 m!6991016))

(assert (=> d!1927553 m!6991108))

(declare-fun m!6991458 () Bool)

(assert (=> d!1927553 m!6991458))

(assert (=> b!6152012 m!6991082))

(assert (=> b!6151541 d!1927553))

(declare-fun d!1927555 () Bool)

(declare-fun c!1107313 () Bool)

(assert (=> d!1927555 (= c!1107313 (isEmpty!36424 (t!378075 s!2326)))))

(declare-fun e!3748621 () Bool)

(assert (=> d!1927555 (= (matchZipper!2107 ((_ map or) lt!2334546 lt!2334539) (t!378075 s!2326)) e!3748621)))

(declare-fun b!6152013 () Bool)

(assert (=> b!6152013 (= e!3748621 (nullableZipper!1876 ((_ map or) lt!2334546 lt!2334539)))))

(declare-fun b!6152014 () Bool)

(assert (=> b!6152014 (= e!3748621 (matchZipper!2107 (derivationStepZipper!2068 ((_ map or) lt!2334546 lt!2334539) (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))))))

(assert (= (and d!1927555 c!1107313) b!6152013))

(assert (= (and d!1927555 (not c!1107313)) b!6152014))

(assert (=> d!1927555 m!6991252))

(declare-fun m!6991460 () Bool)

(assert (=> b!6152013 m!6991460))

(assert (=> b!6152014 m!6991256))

(assert (=> b!6152014 m!6991256))

(declare-fun m!6991462 () Bool)

(assert (=> b!6152014 m!6991462))

(assert (=> b!6152014 m!6991260))

(assert (=> b!6152014 m!6991462))

(assert (=> b!6152014 m!6991260))

(declare-fun m!6991464 () Bool)

(assert (=> b!6152014 m!6991464))

(assert (=> b!6151541 d!1927555))

(declare-fun b!6152025 () Bool)

(declare-fun e!3748629 () Bool)

(assert (=> b!6152025 (= e!3748629 (nullable!6088 (h!70908 (exprs!5979 lt!2334543))))))

(declare-fun b!6152026 () Bool)

(declare-fun e!3748628 () (InoxSet Context!10958))

(declare-fun e!3748630 () (InoxSet Context!10958))

(assert (=> b!6152026 (= e!3748628 e!3748630)))

(declare-fun c!1107318 () Bool)

(assert (=> b!6152026 (= c!1107318 ((_ is Cons!64460) (exprs!5979 lt!2334543)))))

(declare-fun call!511706 () (InoxSet Context!10958))

(declare-fun b!6152027 () Bool)

(assert (=> b!6152027 (= e!3748628 ((_ map or) call!511706 (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 lt!2334543))) (h!70910 s!2326))))))

(declare-fun b!6152028 () Bool)

(assert (=> b!6152028 (= e!3748630 call!511706)))

(declare-fun d!1927557 () Bool)

(declare-fun c!1107319 () Bool)

(assert (=> d!1927557 (= c!1107319 e!3748629)))

(declare-fun res!2548239 () Bool)

(assert (=> d!1927557 (=> (not res!2548239) (not e!3748629))))

(assert (=> d!1927557 (= res!2548239 ((_ is Cons!64460) (exprs!5979 lt!2334543)))))

(assert (=> d!1927557 (= (derivationStepZipperUp!1269 lt!2334543 (h!70910 s!2326)) e!3748628)))

(declare-fun b!6152029 () Bool)

(assert (=> b!6152029 (= e!3748630 ((as const (Array Context!10958 Bool)) false))))

(declare-fun bm!511701 () Bool)

(assert (=> bm!511701 (= call!511706 (derivationStepZipperDown!1343 (h!70908 (exprs!5979 lt!2334543)) (Context!10959 (t!378073 (exprs!5979 lt!2334543))) (h!70910 s!2326)))))

(assert (= (and d!1927557 res!2548239) b!6152025))

(assert (= (and d!1927557 c!1107319) b!6152027))

(assert (= (and d!1927557 (not c!1107319)) b!6152026))

(assert (= (and b!6152026 c!1107318) b!6152028))

(assert (= (and b!6152026 (not c!1107318)) b!6152029))

(assert (= (or b!6152027 b!6152028) bm!511701))

(declare-fun m!6991466 () Bool)

(assert (=> b!6152025 m!6991466))

(declare-fun m!6991468 () Bool)

(assert (=> b!6152027 m!6991468))

(declare-fun m!6991470 () Bool)

(assert (=> bm!511701 m!6991470))

(assert (=> b!6151542 d!1927557))

(declare-fun d!1927559 () Bool)

(declare-fun choose!45734 ((InoxSet Context!10958) Int) (InoxSet Context!10958))

(assert (=> d!1927559 (= (flatMap!1600 z!1189 lambda!335497) (choose!45734 z!1189 lambda!335497))))

(declare-fun bs!1524986 () Bool)

(assert (= bs!1524986 d!1927559))

(declare-fun m!6991472 () Bool)

(assert (=> bs!1524986 m!6991472))

(assert (=> b!6151542 d!1927559))

(declare-fun bm!511714 () Bool)

(declare-fun call!511723 () (InoxSet Context!10958))

(declare-fun call!511724 () (InoxSet Context!10958))

(assert (=> bm!511714 (= call!511723 call!511724)))

(declare-fun b!6152052 () Bool)

(declare-fun e!3748646 () (InoxSet Context!10958))

(declare-fun e!3748643 () (InoxSet Context!10958))

(assert (=> b!6152052 (= e!3748646 e!3748643)))

(declare-fun c!1107331 () Bool)

(assert (=> b!6152052 (= c!1107331 ((_ is Union!16095) (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6152053 () Bool)

(declare-fun call!511722 () (InoxSet Context!10958))

(declare-fun call!511721 () (InoxSet Context!10958))

(assert (=> b!6152053 (= e!3748643 ((_ map or) call!511722 call!511721))))

(declare-fun b!6152054 () Bool)

(declare-fun e!3748645 () (InoxSet Context!10958))

(declare-fun e!3748648 () (InoxSet Context!10958))

(assert (=> b!6152054 (= e!3748645 e!3748648)))

(declare-fun c!1107333 () Bool)

(assert (=> b!6152054 (= c!1107333 ((_ is Concat!24940) (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun bm!511715 () Bool)

(declare-fun call!511720 () List!64584)

(declare-fun call!511719 () List!64584)

(assert (=> bm!511715 (= call!511720 call!511719)))

(declare-fun d!1927561 () Bool)

(declare-fun c!1107332 () Bool)

(assert (=> d!1927561 (= c!1107332 (and ((_ is ElementMatch!16095) (h!70908 (exprs!5979 (h!70909 zl!343)))) (= (c!1107191 (h!70908 (exprs!5979 (h!70909 zl!343)))) (h!70910 s!2326))))))

(assert (=> d!1927561 (= (derivationStepZipperDown!1343 (h!70908 (exprs!5979 (h!70909 zl!343))) lt!2334543 (h!70910 s!2326)) e!3748646)))

(declare-fun bm!511716 () Bool)

(assert (=> bm!511716 (= call!511724 call!511721)))

(declare-fun b!6152055 () Bool)

(assert (=> b!6152055 (= e!3748648 call!511723)))

(declare-fun b!6152056 () Bool)

(declare-fun e!3748644 () (InoxSet Context!10958))

(assert (=> b!6152056 (= e!3748644 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6152057 () Bool)

(declare-fun c!1107334 () Bool)

(assert (=> b!6152057 (= c!1107334 ((_ is Star!16095) (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(assert (=> b!6152057 (= e!3748648 e!3748644)))

(declare-fun b!6152058 () Bool)

(assert (=> b!6152058 (= e!3748645 ((_ map or) call!511722 call!511724))))

(declare-fun bm!511717 () Bool)

(declare-fun c!1107330 () Bool)

(assert (=> bm!511717 (= call!511721 (derivationStepZipperDown!1343 (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343))))))) (ite (or c!1107331 c!1107330) lt!2334543 (Context!10959 call!511720)) (h!70910 s!2326)))))

(declare-fun b!6152059 () Bool)

(assert (=> b!6152059 (= e!3748644 call!511723)))

(declare-fun bm!511718 () Bool)

(declare-fun $colon$colon!1972 (List!64584 Regex!16095) List!64584)

(assert (=> bm!511718 (= call!511719 ($colon$colon!1972 (exprs!5979 lt!2334543) (ite (or c!1107330 c!1107333) (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (h!70908 (exprs!5979 (h!70909 zl!343))))))))

(declare-fun b!6152060 () Bool)

(declare-fun e!3748647 () Bool)

(assert (=> b!6152060 (= c!1107330 e!3748647)))

(declare-fun res!2548242 () Bool)

(assert (=> b!6152060 (=> (not res!2548242) (not e!3748647))))

(assert (=> b!6152060 (= res!2548242 ((_ is Concat!24940) (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(assert (=> b!6152060 (= e!3748643 e!3748645)))

(declare-fun b!6152061 () Bool)

(assert (=> b!6152061 (= e!3748646 (store ((as const (Array Context!10958 Bool)) false) lt!2334543 true))))

(declare-fun bm!511719 () Bool)

(assert (=> bm!511719 (= call!511722 (derivationStepZipperDown!1343 (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343))))) (ite c!1107331 lt!2334543 (Context!10959 call!511719)) (h!70910 s!2326)))))

(declare-fun b!6152062 () Bool)

(assert (=> b!6152062 (= e!3748647 (nullable!6088 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343))))))))

(assert (= (and d!1927561 c!1107332) b!6152061))

(assert (= (and d!1927561 (not c!1107332)) b!6152052))

(assert (= (and b!6152052 c!1107331) b!6152053))

(assert (= (and b!6152052 (not c!1107331)) b!6152060))

(assert (= (and b!6152060 res!2548242) b!6152062))

(assert (= (and b!6152060 c!1107330) b!6152058))

(assert (= (and b!6152060 (not c!1107330)) b!6152054))

(assert (= (and b!6152054 c!1107333) b!6152055))

(assert (= (and b!6152054 (not c!1107333)) b!6152057))

(assert (= (and b!6152057 c!1107334) b!6152059))

(assert (= (and b!6152057 (not c!1107334)) b!6152056))

(assert (= (or b!6152055 b!6152059) bm!511715))

(assert (= (or b!6152055 b!6152059) bm!511714))

(assert (= (or b!6152058 bm!511715) bm!511718))

(assert (= (or b!6152058 bm!511714) bm!511716))

(assert (= (or b!6152053 bm!511716) bm!511717))

(assert (= (or b!6152053 b!6152058) bm!511719))

(declare-fun m!6991474 () Bool)

(assert (=> b!6152062 m!6991474))

(declare-fun m!6991476 () Bool)

(assert (=> b!6152061 m!6991476))

(declare-fun m!6991478 () Bool)

(assert (=> bm!511717 m!6991478))

(declare-fun m!6991480 () Bool)

(assert (=> bm!511718 m!6991480))

(declare-fun m!6991482 () Bool)

(assert (=> bm!511719 m!6991482))

(assert (=> b!6151542 d!1927561))

(declare-fun b!6152063 () Bool)

(declare-fun e!3748650 () Bool)

(assert (=> b!6152063 (= e!3748650 (nullable!6088 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))))))

(declare-fun b!6152064 () Bool)

(declare-fun e!3748649 () (InoxSet Context!10958))

(declare-fun e!3748651 () (InoxSet Context!10958))

(assert (=> b!6152064 (= e!3748649 e!3748651)))

(declare-fun c!1107335 () Bool)

(assert (=> b!6152064 (= c!1107335 ((_ is Cons!64460) (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))))))

(declare-fun call!511725 () (InoxSet Context!10958))

(declare-fun b!6152065 () Bool)

(assert (=> b!6152065 (= e!3748649 ((_ map or) call!511725 (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (h!70910 s!2326))))))

(declare-fun b!6152066 () Bool)

(assert (=> b!6152066 (= e!3748651 call!511725)))

(declare-fun d!1927563 () Bool)

(declare-fun c!1107336 () Bool)

(assert (=> d!1927563 (= c!1107336 e!3748650)))

(declare-fun res!2548243 () Bool)

(assert (=> d!1927563 (=> (not res!2548243) (not e!3748650))))

(assert (=> d!1927563 (= res!2548243 ((_ is Cons!64460) (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))))))

(assert (=> d!1927563 (= (derivationStepZipperUp!1269 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))) (h!70910 s!2326)) e!3748649)))

(declare-fun b!6152067 () Bool)

(assert (=> b!6152067 (= e!3748651 ((as const (Array Context!10958 Bool)) false))))

(declare-fun bm!511720 () Bool)

(assert (=> bm!511720 (= call!511725 (derivationStepZipperDown!1343 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))) (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (h!70910 s!2326)))))

(assert (= (and d!1927563 res!2548243) b!6152063))

(assert (= (and d!1927563 c!1107336) b!6152065))

(assert (= (and d!1927563 (not c!1107336)) b!6152064))

(assert (= (and b!6152064 c!1107335) b!6152066))

(assert (= (and b!6152064 (not c!1107335)) b!6152067))

(assert (= (or b!6152065 b!6152066) bm!511720))

(declare-fun m!6991484 () Bool)

(assert (=> b!6152063 m!6991484))

(declare-fun m!6991486 () Bool)

(assert (=> b!6152065 m!6991486))

(declare-fun m!6991488 () Bool)

(assert (=> bm!511720 m!6991488))

(assert (=> b!6151542 d!1927563))

(declare-fun b!6152068 () Bool)

(declare-fun e!3748653 () Bool)

(assert (=> b!6152068 (= e!3748653 (nullable!6088 (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6152069 () Bool)

(declare-fun e!3748652 () (InoxSet Context!10958))

(declare-fun e!3748654 () (InoxSet Context!10958))

(assert (=> b!6152069 (= e!3748652 e!3748654)))

(declare-fun c!1107337 () Bool)

(assert (=> b!6152069 (= c!1107337 ((_ is Cons!64460) (exprs!5979 (h!70909 zl!343))))))

(declare-fun call!511726 () (InoxSet Context!10958))

(declare-fun b!6152070 () Bool)

(assert (=> b!6152070 (= e!3748652 ((_ map or) call!511726 (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343)))) (h!70910 s!2326))))))

(declare-fun b!6152071 () Bool)

(assert (=> b!6152071 (= e!3748654 call!511726)))

(declare-fun d!1927565 () Bool)

(declare-fun c!1107338 () Bool)

(assert (=> d!1927565 (= c!1107338 e!3748653)))

(declare-fun res!2548244 () Bool)

(assert (=> d!1927565 (=> (not res!2548244) (not e!3748653))))

(assert (=> d!1927565 (= res!2548244 ((_ is Cons!64460) (exprs!5979 (h!70909 zl!343))))))

(assert (=> d!1927565 (= (derivationStepZipperUp!1269 (h!70909 zl!343) (h!70910 s!2326)) e!3748652)))

(declare-fun b!6152072 () Bool)

(assert (=> b!6152072 (= e!3748654 ((as const (Array Context!10958 Bool)) false))))

(declare-fun bm!511721 () Bool)

(assert (=> bm!511721 (= call!511726 (derivationStepZipperDown!1343 (h!70908 (exprs!5979 (h!70909 zl!343))) (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343)))) (h!70910 s!2326)))))

(assert (= (and d!1927565 res!2548244) b!6152068))

(assert (= (and d!1927565 c!1107338) b!6152070))

(assert (= (and d!1927565 (not c!1107338)) b!6152069))

(assert (= (and b!6152069 c!1107337) b!6152071))

(assert (= (and b!6152069 (not c!1107337)) b!6152072))

(assert (= (or b!6152070 b!6152071) bm!511721))

(assert (=> b!6152068 m!6991048))

(declare-fun m!6991490 () Bool)

(assert (=> b!6152070 m!6991490))

(declare-fun m!6991492 () Bool)

(assert (=> bm!511721 m!6991492))

(assert (=> b!6151542 d!1927565))

(declare-fun d!1927567 () Bool)

(declare-fun nullableFct!2052 (Regex!16095) Bool)

(assert (=> d!1927567 (= (nullable!6088 (h!70908 (exprs!5979 (h!70909 zl!343)))) (nullableFct!2052 (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun bs!1524987 () Bool)

(assert (= bs!1524987 d!1927567))

(declare-fun m!6991494 () Bool)

(assert (=> bs!1524987 m!6991494))

(assert (=> b!6151542 d!1927567))

(declare-fun d!1927569 () Bool)

(declare-fun dynLambda!25410 (Int Context!10958) (InoxSet Context!10958))

(assert (=> d!1927569 (= (flatMap!1600 z!1189 lambda!335497) (dynLambda!25410 lambda!335497 (h!70909 zl!343)))))

(declare-fun lt!2334619 () Unit!157549)

(declare-fun choose!45735 ((InoxSet Context!10958) Context!10958 Int) Unit!157549)

(assert (=> d!1927569 (= lt!2334619 (choose!45735 z!1189 (h!70909 zl!343) lambda!335497))))

(assert (=> d!1927569 (= z!1189 (store ((as const (Array Context!10958 Bool)) false) (h!70909 zl!343) true))))

(assert (=> d!1927569 (= (lemmaFlatMapOnSingletonSet!1126 z!1189 (h!70909 zl!343) lambda!335497) lt!2334619)))

(declare-fun b_lambda!234157 () Bool)

(assert (=> (not b_lambda!234157) (not d!1927569)))

(declare-fun bs!1524988 () Bool)

(assert (= bs!1524988 d!1927569))

(assert (=> bs!1524988 m!6991052))

(declare-fun m!6991496 () Bool)

(assert (=> bs!1524988 m!6991496))

(declare-fun m!6991498 () Bool)

(assert (=> bs!1524988 m!6991498))

(declare-fun m!6991500 () Bool)

(assert (=> bs!1524988 m!6991500))

(assert (=> b!6151542 d!1927569))

(declare-fun d!1927571 () Bool)

(declare-fun lambda!335538 () Int)

(declare-fun forall!15216 (List!64584 Int) Bool)

(assert (=> d!1927571 (= (inv!83484 setElem!41652) (forall!15216 (exprs!5979 setElem!41652) lambda!335538))))

(declare-fun bs!1524989 () Bool)

(assert (= bs!1524989 d!1927571))

(declare-fun m!6991502 () Bool)

(assert (=> bs!1524989 m!6991502))

(assert (=> setNonEmpty!41652 d!1927571))

(declare-fun d!1927573 () Bool)

(assert (=> d!1927573 (= (flatMap!1600 lt!2334538 lambda!335497) (choose!45734 lt!2334538 lambda!335497))))

(declare-fun bs!1524990 () Bool)

(assert (= bs!1524990 d!1927573))

(declare-fun m!6991504 () Bool)

(assert (=> bs!1524990 m!6991504))

(assert (=> b!6151544 d!1927573))

(declare-fun b!6152073 () Bool)

(declare-fun e!3748656 () Bool)

(assert (=> b!6152073 (= e!3748656 (nullable!6088 (h!70908 (exprs!5979 lt!2334535))))))

(declare-fun b!6152074 () Bool)

(declare-fun e!3748655 () (InoxSet Context!10958))

(declare-fun e!3748657 () (InoxSet Context!10958))

(assert (=> b!6152074 (= e!3748655 e!3748657)))

(declare-fun c!1107339 () Bool)

(assert (=> b!6152074 (= c!1107339 ((_ is Cons!64460) (exprs!5979 lt!2334535)))))

(declare-fun b!6152075 () Bool)

(declare-fun call!511727 () (InoxSet Context!10958))

(assert (=> b!6152075 (= e!3748655 ((_ map or) call!511727 (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 lt!2334535))) (h!70910 s!2326))))))

(declare-fun b!6152076 () Bool)

(assert (=> b!6152076 (= e!3748657 call!511727)))

(declare-fun d!1927575 () Bool)

(declare-fun c!1107340 () Bool)

(assert (=> d!1927575 (= c!1107340 e!3748656)))

(declare-fun res!2548245 () Bool)

(assert (=> d!1927575 (=> (not res!2548245) (not e!3748656))))

(assert (=> d!1927575 (= res!2548245 ((_ is Cons!64460) (exprs!5979 lt!2334535)))))

(assert (=> d!1927575 (= (derivationStepZipperUp!1269 lt!2334535 (h!70910 s!2326)) e!3748655)))

(declare-fun b!6152077 () Bool)

(assert (=> b!6152077 (= e!3748657 ((as const (Array Context!10958 Bool)) false))))

(declare-fun bm!511722 () Bool)

(assert (=> bm!511722 (= call!511727 (derivationStepZipperDown!1343 (h!70908 (exprs!5979 lt!2334535)) (Context!10959 (t!378073 (exprs!5979 lt!2334535))) (h!70910 s!2326)))))

(assert (= (and d!1927575 res!2548245) b!6152073))

(assert (= (and d!1927575 c!1107340) b!6152075))

(assert (= (and d!1927575 (not c!1107340)) b!6152074))

(assert (= (and b!6152074 c!1107339) b!6152076))

(assert (= (and b!6152074 (not c!1107339)) b!6152077))

(assert (= (or b!6152075 b!6152076) bm!511722))

(declare-fun m!6991506 () Bool)

(assert (=> b!6152073 m!6991506))

(declare-fun m!6991508 () Bool)

(assert (=> b!6152075 m!6991508))

(declare-fun m!6991510 () Bool)

(assert (=> bm!511722 m!6991510))

(assert (=> b!6151544 d!1927575))

(declare-fun d!1927577 () Bool)

(assert (=> d!1927577 (= (flatMap!1600 lt!2334526 lambda!335497) (choose!45734 lt!2334526 lambda!335497))))

(declare-fun bs!1524991 () Bool)

(assert (= bs!1524991 d!1927577))

(declare-fun m!6991512 () Bool)

(assert (=> bs!1524991 m!6991512))

(assert (=> b!6151544 d!1927577))

(declare-fun d!1927579 () Bool)

(assert (=> d!1927579 (= (nullable!6088 (regOne!32703 (regOne!32702 r!7292))) (nullableFct!2052 (regOne!32703 (regOne!32702 r!7292))))))

(declare-fun bs!1524992 () Bool)

(assert (= bs!1524992 d!1927579))

(declare-fun m!6991514 () Bool)

(assert (=> bs!1524992 m!6991514))

(assert (=> b!6151544 d!1927579))

(declare-fun d!1927581 () Bool)

(assert (=> d!1927581 (= (flatMap!1600 lt!2334538 lambda!335497) (dynLambda!25410 lambda!335497 lt!2334527))))

(declare-fun lt!2334620 () Unit!157549)

(assert (=> d!1927581 (= lt!2334620 (choose!45735 lt!2334538 lt!2334527 lambda!335497))))

(assert (=> d!1927581 (= lt!2334538 (store ((as const (Array Context!10958 Bool)) false) lt!2334527 true))))

(assert (=> d!1927581 (= (lemmaFlatMapOnSingletonSet!1126 lt!2334538 lt!2334527 lambda!335497) lt!2334620)))

(declare-fun b_lambda!234159 () Bool)

(assert (=> (not b_lambda!234159) (not d!1927581)))

(declare-fun bs!1524993 () Bool)

(assert (= bs!1524993 d!1927581))

(assert (=> bs!1524993 m!6991076))

(declare-fun m!6991516 () Bool)

(assert (=> bs!1524993 m!6991516))

(declare-fun m!6991518 () Bool)

(assert (=> bs!1524993 m!6991518))

(assert (=> bs!1524993 m!6991070))

(assert (=> b!6151544 d!1927581))

(declare-fun d!1927583 () Bool)

(assert (=> d!1927583 (= (flatMap!1600 lt!2334526 lambda!335497) (dynLambda!25410 lambda!335497 lt!2334535))))

(declare-fun lt!2334621 () Unit!157549)

(assert (=> d!1927583 (= lt!2334621 (choose!45735 lt!2334526 lt!2334535 lambda!335497))))

(assert (=> d!1927583 (= lt!2334526 (store ((as const (Array Context!10958 Bool)) false) lt!2334535 true))))

(assert (=> d!1927583 (= (lemmaFlatMapOnSingletonSet!1126 lt!2334526 lt!2334535 lambda!335497) lt!2334621)))

(declare-fun b_lambda!234161 () Bool)

(assert (=> (not b_lambda!234161) (not d!1927583)))

(declare-fun bs!1524994 () Bool)

(assert (= bs!1524994 d!1927583))

(assert (=> bs!1524994 m!6991072))

(declare-fun m!6991520 () Bool)

(assert (=> bs!1524994 m!6991520))

(declare-fun m!6991522 () Bool)

(assert (=> bs!1524994 m!6991522))

(assert (=> bs!1524994 m!6991074))

(assert (=> b!6151544 d!1927583))

(declare-fun b!6152078 () Bool)

(declare-fun e!3748659 () Bool)

(assert (=> b!6152078 (= e!3748659 (nullable!6088 (h!70908 (exprs!5979 lt!2334527))))))

(declare-fun b!6152079 () Bool)

(declare-fun e!3748658 () (InoxSet Context!10958))

(declare-fun e!3748660 () (InoxSet Context!10958))

(assert (=> b!6152079 (= e!3748658 e!3748660)))

(declare-fun c!1107341 () Bool)

(assert (=> b!6152079 (= c!1107341 ((_ is Cons!64460) (exprs!5979 lt!2334527)))))

(declare-fun b!6152080 () Bool)

(declare-fun call!511728 () (InoxSet Context!10958))

(assert (=> b!6152080 (= e!3748658 ((_ map or) call!511728 (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 lt!2334527))) (h!70910 s!2326))))))

(declare-fun b!6152081 () Bool)

(assert (=> b!6152081 (= e!3748660 call!511728)))

(declare-fun d!1927585 () Bool)

(declare-fun c!1107342 () Bool)

(assert (=> d!1927585 (= c!1107342 e!3748659)))

(declare-fun res!2548246 () Bool)

(assert (=> d!1927585 (=> (not res!2548246) (not e!3748659))))

(assert (=> d!1927585 (= res!2548246 ((_ is Cons!64460) (exprs!5979 lt!2334527)))))

(assert (=> d!1927585 (= (derivationStepZipperUp!1269 lt!2334527 (h!70910 s!2326)) e!3748658)))

(declare-fun b!6152082 () Bool)

(assert (=> b!6152082 (= e!3748660 ((as const (Array Context!10958 Bool)) false))))

(declare-fun bm!511723 () Bool)

(assert (=> bm!511723 (= call!511728 (derivationStepZipperDown!1343 (h!70908 (exprs!5979 lt!2334527)) (Context!10959 (t!378073 (exprs!5979 lt!2334527))) (h!70910 s!2326)))))

(assert (= (and d!1927585 res!2548246) b!6152078))

(assert (= (and d!1927585 c!1107342) b!6152080))

(assert (= (and d!1927585 (not c!1107342)) b!6152079))

(assert (= (and b!6152079 c!1107341) b!6152081))

(assert (= (and b!6152079 (not c!1107341)) b!6152082))

(assert (= (or b!6152080 b!6152081) bm!511723))

(declare-fun m!6991524 () Bool)

(assert (=> b!6152078 m!6991524))

(declare-fun m!6991526 () Bool)

(assert (=> b!6152080 m!6991526))

(declare-fun m!6991528 () Bool)

(assert (=> bm!511723 m!6991528))

(assert (=> b!6151544 d!1927585))

(declare-fun d!1927587 () Bool)

(assert (=> d!1927587 (= (nullable!6088 (regTwo!32703 (regOne!32702 r!7292))) (nullableFct!2052 (regTwo!32703 (regOne!32702 r!7292))))))

(declare-fun bs!1524995 () Bool)

(assert (= bs!1524995 d!1927587))

(declare-fun m!6991530 () Bool)

(assert (=> bs!1524995 m!6991530))

(assert (=> b!6151544 d!1927587))

(declare-fun bm!511730 () Bool)

(declare-fun call!511736 () Bool)

(declare-fun call!511735 () Bool)

(assert (=> bm!511730 (= call!511736 call!511735)))

(declare-fun b!6152101 () Bool)

(declare-fun e!3748675 () Bool)

(declare-fun e!3748677 () Bool)

(assert (=> b!6152101 (= e!3748675 e!3748677)))

(declare-fun c!1107348 () Bool)

(assert (=> b!6152101 (= c!1107348 ((_ is Union!16095) r!7292))))

(declare-fun b!6152102 () Bool)

(declare-fun e!3748676 () Bool)

(assert (=> b!6152102 (= e!3748676 call!511735)))

(declare-fun b!6152103 () Bool)

(assert (=> b!6152103 (= e!3748675 e!3748676)))

(declare-fun res!2548259 () Bool)

(assert (=> b!6152103 (= res!2548259 (not (nullable!6088 (reg!16424 r!7292))))))

(assert (=> b!6152103 (=> (not res!2548259) (not e!3748676))))

(declare-fun b!6152104 () Bool)

(declare-fun e!3748679 () Bool)

(assert (=> b!6152104 (= e!3748679 call!511736)))

(declare-fun b!6152105 () Bool)

(declare-fun e!3748678 () Bool)

(assert (=> b!6152105 (= e!3748678 e!3748679)))

(declare-fun res!2548257 () Bool)

(assert (=> b!6152105 (=> (not res!2548257) (not e!3748679))))

(declare-fun call!511737 () Bool)

(assert (=> b!6152105 (= res!2548257 call!511737)))

(declare-fun b!6152106 () Bool)

(declare-fun res!2548261 () Bool)

(assert (=> b!6152106 (=> res!2548261 e!3748678)))

(assert (=> b!6152106 (= res!2548261 (not ((_ is Concat!24940) r!7292)))))

(assert (=> b!6152106 (= e!3748677 e!3748678)))

(declare-fun d!1927589 () Bool)

(declare-fun res!2548258 () Bool)

(declare-fun e!3748680 () Bool)

(assert (=> d!1927589 (=> res!2548258 e!3748680)))

(assert (=> d!1927589 (= res!2548258 ((_ is ElementMatch!16095) r!7292))))

(assert (=> d!1927589 (= (validRegex!7831 r!7292) e!3748680)))

(declare-fun b!6152107 () Bool)

(assert (=> b!6152107 (= e!3748680 e!3748675)))

(declare-fun c!1107347 () Bool)

(assert (=> b!6152107 (= c!1107347 ((_ is Star!16095) r!7292))))

(declare-fun b!6152108 () Bool)

(declare-fun e!3748681 () Bool)

(assert (=> b!6152108 (= e!3748681 call!511736)))

(declare-fun bm!511731 () Bool)

(assert (=> bm!511731 (= call!511735 (validRegex!7831 (ite c!1107347 (reg!16424 r!7292) (ite c!1107348 (regTwo!32703 r!7292) (regTwo!32702 r!7292)))))))

(declare-fun b!6152109 () Bool)

(declare-fun res!2548260 () Bool)

(assert (=> b!6152109 (=> (not res!2548260) (not e!3748681))))

(assert (=> b!6152109 (= res!2548260 call!511737)))

(assert (=> b!6152109 (= e!3748677 e!3748681)))

(declare-fun bm!511732 () Bool)

(assert (=> bm!511732 (= call!511737 (validRegex!7831 (ite c!1107348 (regOne!32703 r!7292) (regOne!32702 r!7292))))))

(assert (= (and d!1927589 (not res!2548258)) b!6152107))

(assert (= (and b!6152107 c!1107347) b!6152103))

(assert (= (and b!6152107 (not c!1107347)) b!6152101))

(assert (= (and b!6152103 res!2548259) b!6152102))

(assert (= (and b!6152101 c!1107348) b!6152109))

(assert (= (and b!6152101 (not c!1107348)) b!6152106))

(assert (= (and b!6152109 res!2548260) b!6152108))

(assert (= (and b!6152106 (not res!2548261)) b!6152105))

(assert (= (and b!6152105 res!2548257) b!6152104))

(assert (= (or b!6152108 b!6152104) bm!511730))

(assert (= (or b!6152109 b!6152105) bm!511732))

(assert (= (or b!6152102 bm!511730) bm!511731))

(declare-fun m!6991532 () Bool)

(assert (=> b!6152103 m!6991532))

(declare-fun m!6991534 () Bool)

(assert (=> bm!511731 m!6991534))

(declare-fun m!6991536 () Bool)

(assert (=> bm!511732 m!6991536))

(assert (=> start!614474 d!1927589))

(declare-fun d!1927591 () Bool)

(declare-fun c!1107349 () Bool)

(assert (=> d!1927591 (= c!1107349 (isEmpty!36424 (t!378075 s!2326)))))

(declare-fun e!3748682 () Bool)

(assert (=> d!1927591 (= (matchZipper!2107 lt!2334539 (t!378075 s!2326)) e!3748682)))

(declare-fun b!6152110 () Bool)

(assert (=> b!6152110 (= e!3748682 (nullableZipper!1876 lt!2334539))))

(declare-fun b!6152111 () Bool)

(assert (=> b!6152111 (= e!3748682 (matchZipper!2107 (derivationStepZipper!2068 lt!2334539 (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))))))

(assert (= (and d!1927591 c!1107349) b!6152110))

(assert (= (and d!1927591 (not c!1107349)) b!6152111))

(assert (=> d!1927591 m!6991252))

(declare-fun m!6991538 () Bool)

(assert (=> b!6152110 m!6991538))

(assert (=> b!6152111 m!6991256))

(assert (=> b!6152111 m!6991256))

(declare-fun m!6991540 () Bool)

(assert (=> b!6152111 m!6991540))

(assert (=> b!6152111 m!6991260))

(assert (=> b!6152111 m!6991540))

(assert (=> b!6152111 m!6991260))

(declare-fun m!6991542 () Bool)

(assert (=> b!6152111 m!6991542))

(assert (=> b!6151534 d!1927591))

(declare-fun d!1927593 () Bool)

(declare-fun e!3748685 () Bool)

(assert (=> d!1927593 e!3748685))

(declare-fun res!2548264 () Bool)

(assert (=> d!1927593 (=> (not res!2548264) (not e!3748685))))

(declare-fun lt!2334624 () List!64585)

(declare-fun noDuplicate!1942 (List!64585) Bool)

(assert (=> d!1927593 (= res!2548264 (noDuplicate!1942 lt!2334624))))

(declare-fun choose!45736 ((InoxSet Context!10958)) List!64585)

(assert (=> d!1927593 (= lt!2334624 (choose!45736 z!1189))))

(assert (=> d!1927593 (= (toList!9879 z!1189) lt!2334624)))

(declare-fun b!6152114 () Bool)

(declare-fun content!12012 (List!64585) (InoxSet Context!10958))

(assert (=> b!6152114 (= e!3748685 (= (content!12012 lt!2334624) z!1189))))

(assert (= (and d!1927593 res!2548264) b!6152114))

(declare-fun m!6991544 () Bool)

(assert (=> d!1927593 m!6991544))

(declare-fun m!6991546 () Bool)

(assert (=> d!1927593 m!6991546))

(declare-fun m!6991548 () Bool)

(assert (=> b!6152114 m!6991548))

(assert (=> b!6151545 d!1927593))

(declare-fun bs!1524996 () Bool)

(declare-fun b!6152150 () Bool)

(assert (= bs!1524996 (and b!6152150 d!1927543)))

(declare-fun lambda!335543 () Int)

(assert (=> bs!1524996 (not (= lambda!335543 lambda!335534))))

(declare-fun bs!1524997 () Bool)

(assert (= bs!1524997 (and b!6152150 b!6151532)))

(assert (=> bs!1524997 (not (= lambda!335543 lambda!335495))))

(assert (=> bs!1524996 (not (= lambda!335543 lambda!335535))))

(assert (=> bs!1524997 (not (= lambda!335543 lambda!335496))))

(declare-fun bs!1524998 () Bool)

(assert (= bs!1524998 (and b!6152150 d!1927535)))

(assert (=> bs!1524998 (not (= lambda!335543 lambda!335529))))

(assert (=> b!6152150 true))

(assert (=> b!6152150 true))

(declare-fun bs!1524999 () Bool)

(declare-fun b!6152155 () Bool)

(assert (= bs!1524999 (and b!6152155 d!1927543)))

(declare-fun lambda!335544 () Int)

(assert (=> bs!1524999 (not (= lambda!335544 lambda!335534))))

(declare-fun bs!1525000 () Bool)

(assert (= bs!1525000 (and b!6152155 b!6151532)))

(assert (=> bs!1525000 (not (= lambda!335544 lambda!335495))))

(declare-fun bs!1525001 () Bool)

(assert (= bs!1525001 (and b!6152155 b!6152150)))

(assert (=> bs!1525001 (not (= lambda!335544 lambda!335543))))

(assert (=> bs!1524999 (= lambda!335544 lambda!335535)))

(assert (=> bs!1525000 (= lambda!335544 lambda!335496)))

(declare-fun bs!1525002 () Bool)

(assert (= bs!1525002 (and b!6152155 d!1927535)))

(assert (=> bs!1525002 (not (= lambda!335544 lambda!335529))))

(assert (=> b!6152155 true))

(assert (=> b!6152155 true))

(declare-fun b!6152147 () Bool)

(declare-fun e!3748705 () Bool)

(assert (=> b!6152147 (= e!3748705 (matchRSpec!3196 (regTwo!32703 r!7292) s!2326))))

(declare-fun bm!511737 () Bool)

(declare-fun call!511742 () Bool)

(declare-fun c!1107361 () Bool)

(assert (=> bm!511737 (= call!511742 (Exists!3165 (ite c!1107361 lambda!335543 lambda!335544)))))

(declare-fun b!6152148 () Bool)

(declare-fun c!1107360 () Bool)

(assert (=> b!6152148 (= c!1107360 ((_ is Union!16095) r!7292))))

(declare-fun e!3748708 () Bool)

(declare-fun e!3748707 () Bool)

(assert (=> b!6152148 (= e!3748708 e!3748707)))

(declare-fun bm!511738 () Bool)

(declare-fun call!511743 () Bool)

(assert (=> bm!511738 (= call!511743 (isEmpty!36424 s!2326))))

(declare-fun d!1927595 () Bool)

(declare-fun c!1107359 () Bool)

(assert (=> d!1927595 (= c!1107359 ((_ is EmptyExpr!16095) r!7292))))

(declare-fun e!3748709 () Bool)

(assert (=> d!1927595 (= (matchRSpec!3196 r!7292 s!2326) e!3748709)))

(declare-fun b!6152149 () Bool)

(declare-fun c!1107358 () Bool)

(assert (=> b!6152149 (= c!1107358 ((_ is ElementMatch!16095) r!7292))))

(declare-fun e!3748710 () Bool)

(assert (=> b!6152149 (= e!3748710 e!3748708)))

(declare-fun e!3748706 () Bool)

(assert (=> b!6152150 (= e!3748706 call!511742)))

(declare-fun b!6152151 () Bool)

(declare-fun res!2548283 () Bool)

(assert (=> b!6152151 (=> res!2548283 e!3748706)))

(assert (=> b!6152151 (= res!2548283 call!511743)))

(declare-fun e!3748704 () Bool)

(assert (=> b!6152151 (= e!3748704 e!3748706)))

(declare-fun b!6152152 () Bool)

(assert (=> b!6152152 (= e!3748709 call!511743)))

(declare-fun b!6152153 () Bool)

(assert (=> b!6152153 (= e!3748709 e!3748710)))

(declare-fun res!2548281 () Bool)

(assert (=> b!6152153 (= res!2548281 (not ((_ is EmptyLang!16095) r!7292)))))

(assert (=> b!6152153 (=> (not res!2548281) (not e!3748710))))

(declare-fun b!6152154 () Bool)

(assert (=> b!6152154 (= e!3748707 e!3748705)))

(declare-fun res!2548282 () Bool)

(assert (=> b!6152154 (= res!2548282 (matchRSpec!3196 (regOne!32703 r!7292) s!2326))))

(assert (=> b!6152154 (=> res!2548282 e!3748705)))

(assert (=> b!6152155 (= e!3748704 call!511742)))

(declare-fun b!6152156 () Bool)

(assert (=> b!6152156 (= e!3748707 e!3748704)))

(assert (=> b!6152156 (= c!1107361 ((_ is Star!16095) r!7292))))

(declare-fun b!6152157 () Bool)

(assert (=> b!6152157 (= e!3748708 (= s!2326 (Cons!64462 (c!1107191 r!7292) Nil!64462)))))

(assert (= (and d!1927595 c!1107359) b!6152152))

(assert (= (and d!1927595 (not c!1107359)) b!6152153))

(assert (= (and b!6152153 res!2548281) b!6152149))

(assert (= (and b!6152149 c!1107358) b!6152157))

(assert (= (and b!6152149 (not c!1107358)) b!6152148))

(assert (= (and b!6152148 c!1107360) b!6152154))

(assert (= (and b!6152148 (not c!1107360)) b!6152156))

(assert (= (and b!6152154 (not res!2548282)) b!6152147))

(assert (= (and b!6152156 c!1107361) b!6152151))

(assert (= (and b!6152156 (not c!1107361)) b!6152155))

(assert (= (and b!6152151 (not res!2548283)) b!6152150))

(assert (= (or b!6152150 b!6152155) bm!511737))

(assert (= (or b!6152152 b!6152151) bm!511738))

(declare-fun m!6991550 () Bool)

(assert (=> b!6152147 m!6991550))

(declare-fun m!6991552 () Bool)

(assert (=> bm!511737 m!6991552))

(declare-fun m!6991554 () Bool)

(assert (=> bm!511738 m!6991554))

(declare-fun m!6991556 () Bool)

(assert (=> b!6152154 m!6991556))

(assert (=> b!6151536 d!1927595))

(declare-fun b!6152187 () Bool)

(declare-fun e!3748731 () Bool)

(declare-fun e!3748729 () Bool)

(assert (=> b!6152187 (= e!3748731 e!3748729)))

(declare-fun res!2548305 () Bool)

(assert (=> b!6152187 (=> (not res!2548305) (not e!3748729))))

(declare-fun lt!2334627 () Bool)

(assert (=> b!6152187 (= res!2548305 (not lt!2334627))))

(declare-fun bm!511741 () Bool)

(declare-fun call!511746 () Bool)

(assert (=> bm!511741 (= call!511746 (isEmpty!36424 s!2326))))

(declare-fun b!6152188 () Bool)

(declare-fun res!2548304 () Bool)

(declare-fun e!3748725 () Bool)

(assert (=> b!6152188 (=> res!2548304 e!3748725)))

(assert (=> b!6152188 (= res!2548304 (not (isEmpty!36424 (tail!11796 s!2326))))))

(declare-fun b!6152189 () Bool)

(declare-fun e!3748730 () Bool)

(assert (=> b!6152189 (= e!3748730 (not lt!2334627))))

(declare-fun b!6152190 () Bool)

(declare-fun res!2548301 () Bool)

(assert (=> b!6152190 (=> res!2548301 e!3748731)))

(declare-fun e!3748727 () Bool)

(assert (=> b!6152190 (= res!2548301 e!3748727)))

(declare-fun res!2548307 () Bool)

(assert (=> b!6152190 (=> (not res!2548307) (not e!3748727))))

(assert (=> b!6152190 (= res!2548307 lt!2334627)))

(declare-fun b!6152191 () Bool)

(assert (=> b!6152191 (= e!3748727 (= (head!12711 s!2326) (c!1107191 r!7292)))))

(declare-fun b!6152192 () Bool)

(declare-fun e!3748728 () Bool)

(assert (=> b!6152192 (= e!3748728 e!3748730)))

(declare-fun c!1107368 () Bool)

(assert (=> b!6152192 (= c!1107368 ((_ is EmptyLang!16095) r!7292))))

(declare-fun b!6152193 () Bool)

(assert (=> b!6152193 (= e!3748725 (not (= (head!12711 s!2326) (c!1107191 r!7292))))))

(declare-fun b!6152186 () Bool)

(declare-fun res!2548306 () Bool)

(assert (=> b!6152186 (=> (not res!2548306) (not e!3748727))))

(assert (=> b!6152186 (= res!2548306 (isEmpty!36424 (tail!11796 s!2326)))))

(declare-fun d!1927597 () Bool)

(assert (=> d!1927597 e!3748728))

(declare-fun c!1107369 () Bool)

(assert (=> d!1927597 (= c!1107369 ((_ is EmptyExpr!16095) r!7292))))

(declare-fun e!3748726 () Bool)

(assert (=> d!1927597 (= lt!2334627 e!3748726)))

(declare-fun c!1107370 () Bool)

(assert (=> d!1927597 (= c!1107370 (isEmpty!36424 s!2326))))

(assert (=> d!1927597 (validRegex!7831 r!7292)))

(assert (=> d!1927597 (= (matchR!8278 r!7292 s!2326) lt!2334627)))

(declare-fun b!6152194 () Bool)

(assert (=> b!6152194 (= e!3748726 (nullable!6088 r!7292))))

(declare-fun b!6152195 () Bool)

(declare-fun res!2548303 () Bool)

(assert (=> b!6152195 (=> res!2548303 e!3748731)))

(assert (=> b!6152195 (= res!2548303 (not ((_ is ElementMatch!16095) r!7292)))))

(assert (=> b!6152195 (= e!3748730 e!3748731)))

(declare-fun b!6152196 () Bool)

(declare-fun res!2548300 () Bool)

(assert (=> b!6152196 (=> (not res!2548300) (not e!3748727))))

(assert (=> b!6152196 (= res!2548300 (not call!511746))))

(declare-fun b!6152197 () Bool)

(assert (=> b!6152197 (= e!3748728 (= lt!2334627 call!511746))))

(declare-fun b!6152198 () Bool)

(declare-fun derivativeStep!4815 (Regex!16095 C!32460) Regex!16095)

(assert (=> b!6152198 (= e!3748726 (matchR!8278 (derivativeStep!4815 r!7292 (head!12711 s!2326)) (tail!11796 s!2326)))))

(declare-fun b!6152199 () Bool)

(assert (=> b!6152199 (= e!3748729 e!3748725)))

(declare-fun res!2548302 () Bool)

(assert (=> b!6152199 (=> res!2548302 e!3748725)))

(assert (=> b!6152199 (= res!2548302 call!511746)))

(assert (= (and d!1927597 c!1107370) b!6152194))

(assert (= (and d!1927597 (not c!1107370)) b!6152198))

(assert (= (and d!1927597 c!1107369) b!6152197))

(assert (= (and d!1927597 (not c!1107369)) b!6152192))

(assert (= (and b!6152192 c!1107368) b!6152189))

(assert (= (and b!6152192 (not c!1107368)) b!6152195))

(assert (= (and b!6152195 (not res!2548303)) b!6152190))

(assert (= (and b!6152190 res!2548307) b!6152196))

(assert (= (and b!6152196 res!2548300) b!6152186))

(assert (= (and b!6152186 res!2548306) b!6152191))

(assert (= (and b!6152190 (not res!2548301)) b!6152187))

(assert (= (and b!6152187 res!2548305) b!6152199))

(assert (= (and b!6152199 (not res!2548302)) b!6152188))

(assert (= (and b!6152188 (not res!2548304)) b!6152193))

(assert (= (or b!6152197 b!6152196 b!6152199) bm!511741))

(assert (=> bm!511741 m!6991554))

(declare-fun m!6991558 () Bool)

(assert (=> b!6152186 m!6991558))

(assert (=> b!6152186 m!6991558))

(declare-fun m!6991560 () Bool)

(assert (=> b!6152186 m!6991560))

(assert (=> b!6152188 m!6991558))

(assert (=> b!6152188 m!6991558))

(assert (=> b!6152188 m!6991560))

(declare-fun m!6991562 () Bool)

(assert (=> b!6152198 m!6991562))

(assert (=> b!6152198 m!6991562))

(declare-fun m!6991564 () Bool)

(assert (=> b!6152198 m!6991564))

(assert (=> b!6152198 m!6991558))

(assert (=> b!6152198 m!6991564))

(assert (=> b!6152198 m!6991558))

(declare-fun m!6991566 () Bool)

(assert (=> b!6152198 m!6991566))

(assert (=> b!6152193 m!6991562))

(declare-fun m!6991568 () Bool)

(assert (=> b!6152194 m!6991568))

(assert (=> d!1927597 m!6991554))

(assert (=> d!1927597 m!6991036))

(assert (=> b!6152191 m!6991562))

(assert (=> b!6151536 d!1927597))

(declare-fun d!1927599 () Bool)

(assert (=> d!1927599 (= (matchR!8278 r!7292 s!2326) (matchRSpec!3196 r!7292 s!2326))))

(declare-fun lt!2334630 () Unit!157549)

(declare-fun choose!45737 (Regex!16095 List!64586) Unit!157549)

(assert (=> d!1927599 (= lt!2334630 (choose!45737 r!7292 s!2326))))

(assert (=> d!1927599 (validRegex!7831 r!7292)))

(assert (=> d!1927599 (= (mainMatchTheorem!3196 r!7292 s!2326) lt!2334630)))

(declare-fun bs!1525003 () Bool)

(assert (= bs!1525003 d!1927599))

(assert (=> bs!1525003 m!6991056))

(assert (=> bs!1525003 m!6991054))

(declare-fun m!6991570 () Bool)

(assert (=> bs!1525003 m!6991570))

(assert (=> bs!1525003 m!6991036))

(assert (=> b!6151536 d!1927599))

(declare-fun bs!1525004 () Bool)

(declare-fun d!1927601 () Bool)

(assert (= bs!1525004 (and d!1927601 d!1927571)))

(declare-fun lambda!335547 () Int)

(assert (=> bs!1525004 (= lambda!335547 lambda!335538)))

(declare-fun b!6152220 () Bool)

(declare-fun e!3748745 () Bool)

(declare-fun lt!2334633 () Regex!16095)

(declare-fun head!12712 (List!64584) Regex!16095)

(assert (=> b!6152220 (= e!3748745 (= lt!2334633 (head!12712 (unfocusZipperList!1516 zl!343))))))

(declare-fun b!6152221 () Bool)

(declare-fun e!3748748 () Regex!16095)

(declare-fun e!3748749 () Regex!16095)

(assert (=> b!6152221 (= e!3748748 e!3748749)))

(declare-fun c!1107379 () Bool)

(assert (=> b!6152221 (= c!1107379 ((_ is Cons!64460) (unfocusZipperList!1516 zl!343)))))

(declare-fun b!6152222 () Bool)

(assert (=> b!6152222 (= e!3748749 (Union!16095 (h!70908 (unfocusZipperList!1516 zl!343)) (generalisedUnion!1939 (t!378073 (unfocusZipperList!1516 zl!343)))))))

(declare-fun b!6152223 () Bool)

(declare-fun e!3748747 () Bool)

(assert (=> b!6152223 (= e!3748747 (isEmpty!36420 (t!378073 (unfocusZipperList!1516 zl!343))))))

(declare-fun b!6152224 () Bool)

(declare-fun isUnion!952 (Regex!16095) Bool)

(assert (=> b!6152224 (= e!3748745 (isUnion!952 lt!2334633))))

(declare-fun b!6152225 () Bool)

(declare-fun e!3748746 () Bool)

(declare-fun isEmptyLang!1522 (Regex!16095) Bool)

(assert (=> b!6152225 (= e!3748746 (isEmptyLang!1522 lt!2334633))))

(declare-fun b!6152226 () Bool)

(assert (=> b!6152226 (= e!3748746 e!3748745)))

(declare-fun c!1107382 () Bool)

(declare-fun tail!11797 (List!64584) List!64584)

(assert (=> b!6152226 (= c!1107382 (isEmpty!36420 (tail!11797 (unfocusZipperList!1516 zl!343))))))

(declare-fun e!3748744 () Bool)

(assert (=> d!1927601 e!3748744))

(declare-fun res!2548313 () Bool)

(assert (=> d!1927601 (=> (not res!2548313) (not e!3748744))))

(assert (=> d!1927601 (= res!2548313 (validRegex!7831 lt!2334633))))

(assert (=> d!1927601 (= lt!2334633 e!3748748)))

(declare-fun c!1107381 () Bool)

(assert (=> d!1927601 (= c!1107381 e!3748747)))

(declare-fun res!2548312 () Bool)

(assert (=> d!1927601 (=> (not res!2548312) (not e!3748747))))

(assert (=> d!1927601 (= res!2548312 ((_ is Cons!64460) (unfocusZipperList!1516 zl!343)))))

(assert (=> d!1927601 (forall!15216 (unfocusZipperList!1516 zl!343) lambda!335547)))

(assert (=> d!1927601 (= (generalisedUnion!1939 (unfocusZipperList!1516 zl!343)) lt!2334633)))

(declare-fun b!6152227 () Bool)

(assert (=> b!6152227 (= e!3748744 e!3748746)))

(declare-fun c!1107380 () Bool)

(assert (=> b!6152227 (= c!1107380 (isEmpty!36420 (unfocusZipperList!1516 zl!343)))))

(declare-fun b!6152228 () Bool)

(assert (=> b!6152228 (= e!3748749 EmptyLang!16095)))

(declare-fun b!6152229 () Bool)

(assert (=> b!6152229 (= e!3748748 (h!70908 (unfocusZipperList!1516 zl!343)))))

(assert (= (and d!1927601 res!2548312) b!6152223))

(assert (= (and d!1927601 c!1107381) b!6152229))

(assert (= (and d!1927601 (not c!1107381)) b!6152221))

(assert (= (and b!6152221 c!1107379) b!6152222))

(assert (= (and b!6152221 (not c!1107379)) b!6152228))

(assert (= (and d!1927601 res!2548313) b!6152227))

(assert (= (and b!6152227 c!1107380) b!6152225))

(assert (= (and b!6152227 (not c!1107380)) b!6152226))

(assert (= (and b!6152226 c!1107382) b!6152220))

(assert (= (and b!6152226 (not c!1107382)) b!6152224))

(declare-fun m!6991572 () Bool)

(assert (=> b!6152224 m!6991572))

(assert (=> b!6152220 m!6991018))

(declare-fun m!6991574 () Bool)

(assert (=> b!6152220 m!6991574))

(declare-fun m!6991576 () Bool)

(assert (=> b!6152222 m!6991576))

(declare-fun m!6991578 () Bool)

(assert (=> b!6152225 m!6991578))

(assert (=> b!6152227 m!6991018))

(declare-fun m!6991580 () Bool)

(assert (=> b!6152227 m!6991580))

(assert (=> b!6152226 m!6991018))

(declare-fun m!6991582 () Bool)

(assert (=> b!6152226 m!6991582))

(assert (=> b!6152226 m!6991582))

(declare-fun m!6991584 () Bool)

(assert (=> b!6152226 m!6991584))

(declare-fun m!6991586 () Bool)

(assert (=> b!6152223 m!6991586))

(declare-fun m!6991588 () Bool)

(assert (=> d!1927601 m!6991588))

(assert (=> d!1927601 m!6991018))

(declare-fun m!6991590 () Bool)

(assert (=> d!1927601 m!6991590))

(assert (=> b!6151547 d!1927601))

(declare-fun bs!1525005 () Bool)

(declare-fun d!1927603 () Bool)

(assert (= bs!1525005 (and d!1927603 d!1927571)))

(declare-fun lambda!335550 () Int)

(assert (=> bs!1525005 (= lambda!335550 lambda!335538)))

(declare-fun bs!1525006 () Bool)

(assert (= bs!1525006 (and d!1927603 d!1927601)))

(assert (=> bs!1525006 (= lambda!335550 lambda!335547)))

(declare-fun lt!2334636 () List!64584)

(assert (=> d!1927603 (forall!15216 lt!2334636 lambda!335550)))

(declare-fun e!3748752 () List!64584)

(assert (=> d!1927603 (= lt!2334636 e!3748752)))

(declare-fun c!1107385 () Bool)

(assert (=> d!1927603 (= c!1107385 ((_ is Cons!64461) zl!343))))

(assert (=> d!1927603 (= (unfocusZipperList!1516 zl!343) lt!2334636)))

(declare-fun b!6152234 () Bool)

(assert (=> b!6152234 (= e!3748752 (Cons!64460 (generalisedConcat!1692 (exprs!5979 (h!70909 zl!343))) (unfocusZipperList!1516 (t!378074 zl!343))))))

(declare-fun b!6152235 () Bool)

(assert (=> b!6152235 (= e!3748752 Nil!64460)))

(assert (= (and d!1927603 c!1107385) b!6152234))

(assert (= (and d!1927603 (not c!1107385)) b!6152235))

(declare-fun m!6991592 () Bool)

(assert (=> d!1927603 m!6991592))

(assert (=> b!6152234 m!6991104))

(declare-fun m!6991594 () Bool)

(assert (=> b!6152234 m!6991594))

(assert (=> b!6151547 d!1927603))

(declare-fun bs!1525007 () Bool)

(declare-fun d!1927605 () Bool)

(assert (= bs!1525007 (and d!1927605 d!1927571)))

(declare-fun lambda!335553 () Int)

(assert (=> bs!1525007 (= lambda!335553 lambda!335538)))

(declare-fun bs!1525008 () Bool)

(assert (= bs!1525008 (and d!1927605 d!1927601)))

(assert (=> bs!1525008 (= lambda!335553 lambda!335547)))

(declare-fun bs!1525009 () Bool)

(assert (= bs!1525009 (and d!1927605 d!1927603)))

(assert (=> bs!1525009 (= lambda!335553 lambda!335550)))

(declare-fun b!6152256 () Bool)

(declare-fun e!3748765 () Bool)

(assert (=> b!6152256 (= e!3748765 (isEmpty!36420 (t!378073 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6152257 () Bool)

(declare-fun e!3748766 () Regex!16095)

(assert (=> b!6152257 (= e!3748766 EmptyExpr!16095)))

(declare-fun b!6152258 () Bool)

(declare-fun e!3748767 () Regex!16095)

(assert (=> b!6152258 (= e!3748767 e!3748766)))

(declare-fun c!1107394 () Bool)

(assert (=> b!6152258 (= c!1107394 ((_ is Cons!64460) (exprs!5979 (h!70909 zl!343))))))

(declare-fun b!6152259 () Bool)

(declare-fun e!3748770 () Bool)

(declare-fun e!3748769 () Bool)

(assert (=> b!6152259 (= e!3748770 e!3748769)))

(declare-fun c!1107395 () Bool)

(assert (=> b!6152259 (= c!1107395 (isEmpty!36420 (exprs!5979 (h!70909 zl!343))))))

(declare-fun b!6152260 () Bool)

(assert (=> b!6152260 (= e!3748767 (h!70908 (exprs!5979 (h!70909 zl!343))))))

(declare-fun b!6152261 () Bool)

(declare-fun lt!2334639 () Regex!16095)

(declare-fun isEmptyExpr!1512 (Regex!16095) Bool)

(assert (=> b!6152261 (= e!3748769 (isEmptyExpr!1512 lt!2334639))))

(declare-fun b!6152262 () Bool)

(declare-fun e!3748768 () Bool)

(declare-fun isConcat!1035 (Regex!16095) Bool)

(assert (=> b!6152262 (= e!3748768 (isConcat!1035 lt!2334639))))

(declare-fun b!6152264 () Bool)

(assert (=> b!6152264 (= e!3748766 (Concat!24940 (h!70908 (exprs!5979 (h!70909 zl!343))) (generalisedConcat!1692 (t!378073 (exprs!5979 (h!70909 zl!343))))))))

(declare-fun b!6152265 () Bool)

(assert (=> b!6152265 (= e!3748769 e!3748768)))

(declare-fun c!1107396 () Bool)

(assert (=> b!6152265 (= c!1107396 (isEmpty!36420 (tail!11797 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6152263 () Bool)

(assert (=> b!6152263 (= e!3748768 (= lt!2334639 (head!12712 (exprs!5979 (h!70909 zl!343)))))))

(assert (=> d!1927605 e!3748770))

(declare-fun res!2548318 () Bool)

(assert (=> d!1927605 (=> (not res!2548318) (not e!3748770))))

(assert (=> d!1927605 (= res!2548318 (validRegex!7831 lt!2334639))))

(assert (=> d!1927605 (= lt!2334639 e!3748767)))

(declare-fun c!1107397 () Bool)

(assert (=> d!1927605 (= c!1107397 e!3748765)))

(declare-fun res!2548319 () Bool)

(assert (=> d!1927605 (=> (not res!2548319) (not e!3748765))))

(assert (=> d!1927605 (= res!2548319 ((_ is Cons!64460) (exprs!5979 (h!70909 zl!343))))))

(assert (=> d!1927605 (forall!15216 (exprs!5979 (h!70909 zl!343)) lambda!335553)))

(assert (=> d!1927605 (= (generalisedConcat!1692 (exprs!5979 (h!70909 zl!343))) lt!2334639)))

(assert (= (and d!1927605 res!2548319) b!6152256))

(assert (= (and d!1927605 c!1107397) b!6152260))

(assert (= (and d!1927605 (not c!1107397)) b!6152258))

(assert (= (and b!6152258 c!1107394) b!6152264))

(assert (= (and b!6152258 (not c!1107394)) b!6152257))

(assert (= (and d!1927605 res!2548318) b!6152259))

(assert (= (and b!6152259 c!1107395) b!6152261))

(assert (= (and b!6152259 (not c!1107395)) b!6152265))

(assert (= (and b!6152265 c!1107396) b!6152263))

(assert (= (and b!6152265 (not c!1107396)) b!6152262))

(declare-fun m!6991596 () Bool)

(assert (=> b!6152265 m!6991596))

(assert (=> b!6152265 m!6991596))

(declare-fun m!6991598 () Bool)

(assert (=> b!6152265 m!6991598))

(declare-fun m!6991600 () Bool)

(assert (=> b!6152263 m!6991600))

(assert (=> b!6152256 m!6991034))

(declare-fun m!6991602 () Bool)

(assert (=> b!6152264 m!6991602))

(declare-fun m!6991604 () Bool)

(assert (=> b!6152262 m!6991604))

(declare-fun m!6991606 () Bool)

(assert (=> b!6152259 m!6991606))

(declare-fun m!6991608 () Bool)

(assert (=> b!6152261 m!6991608))

(declare-fun m!6991610 () Bool)

(assert (=> d!1927605 m!6991610))

(declare-fun m!6991612 () Bool)

(assert (=> d!1927605 m!6991612))

(assert (=> b!6151546 d!1927605))

(declare-fun bs!1525010 () Bool)

(declare-fun d!1927607 () Bool)

(assert (= bs!1525010 (and d!1927607 d!1927571)))

(declare-fun lambda!335554 () Int)

(assert (=> bs!1525010 (= lambda!335554 lambda!335538)))

(declare-fun bs!1525011 () Bool)

(assert (= bs!1525011 (and d!1927607 d!1927601)))

(assert (=> bs!1525011 (= lambda!335554 lambda!335547)))

(declare-fun bs!1525012 () Bool)

(assert (= bs!1525012 (and d!1927607 d!1927603)))

(assert (=> bs!1525012 (= lambda!335554 lambda!335550)))

(declare-fun bs!1525013 () Bool)

(assert (= bs!1525013 (and d!1927607 d!1927605)))

(assert (=> bs!1525013 (= lambda!335554 lambda!335553)))

(assert (=> d!1927607 (= (inv!83484 (h!70909 zl!343)) (forall!15216 (exprs!5979 (h!70909 zl!343)) lambda!335554))))

(declare-fun bs!1525014 () Bool)

(assert (= bs!1525014 d!1927607))

(declare-fun m!6991614 () Bool)

(assert (=> bs!1525014 m!6991614))

(assert (=> b!6151556 d!1927607))

(declare-fun bm!511742 () Bool)

(declare-fun call!511751 () (InoxSet Context!10958))

(declare-fun call!511752 () (InoxSet Context!10958))

(assert (=> bm!511742 (= call!511751 call!511752)))

(declare-fun b!6152266 () Bool)

(declare-fun e!3748774 () (InoxSet Context!10958))

(declare-fun e!3748771 () (InoxSet Context!10958))

(assert (=> b!6152266 (= e!3748774 e!3748771)))

(declare-fun c!1107399 () Bool)

(assert (=> b!6152266 (= c!1107399 ((_ is Union!16095) (regTwo!32703 (regOne!32702 r!7292))))))

(declare-fun b!6152267 () Bool)

(declare-fun call!511750 () (InoxSet Context!10958))

(declare-fun call!511749 () (InoxSet Context!10958))

(assert (=> b!6152267 (= e!3748771 ((_ map or) call!511750 call!511749))))

(declare-fun b!6152268 () Bool)

(declare-fun e!3748773 () (InoxSet Context!10958))

(declare-fun e!3748776 () (InoxSet Context!10958))

(assert (=> b!6152268 (= e!3748773 e!3748776)))

(declare-fun c!1107401 () Bool)

(assert (=> b!6152268 (= c!1107401 ((_ is Concat!24940) (regTwo!32703 (regOne!32702 r!7292))))))

(declare-fun bm!511743 () Bool)

(declare-fun call!511748 () List!64584)

(declare-fun call!511747 () List!64584)

(assert (=> bm!511743 (= call!511748 call!511747)))

(declare-fun d!1927609 () Bool)

(declare-fun c!1107400 () Bool)

(assert (=> d!1927609 (= c!1107400 (and ((_ is ElementMatch!16095) (regTwo!32703 (regOne!32702 r!7292))) (= (c!1107191 (regTwo!32703 (regOne!32702 r!7292))) (h!70910 s!2326))))))

(assert (=> d!1927609 (= (derivationStepZipperDown!1343 (regTwo!32703 (regOne!32702 r!7292)) lt!2334543 (h!70910 s!2326)) e!3748774)))

(declare-fun bm!511744 () Bool)

(assert (=> bm!511744 (= call!511752 call!511749)))

(declare-fun b!6152269 () Bool)

(assert (=> b!6152269 (= e!3748776 call!511751)))

(declare-fun b!6152270 () Bool)

(declare-fun e!3748772 () (InoxSet Context!10958))

(assert (=> b!6152270 (= e!3748772 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6152271 () Bool)

(declare-fun c!1107402 () Bool)

(assert (=> b!6152271 (= c!1107402 ((_ is Star!16095) (regTwo!32703 (regOne!32702 r!7292))))))

(assert (=> b!6152271 (= e!3748776 e!3748772)))

(declare-fun b!6152272 () Bool)

(assert (=> b!6152272 (= e!3748773 ((_ map or) call!511750 call!511752))))

(declare-fun c!1107398 () Bool)

(declare-fun bm!511745 () Bool)

(assert (=> bm!511745 (= call!511749 (derivationStepZipperDown!1343 (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292)))))) (ite (or c!1107399 c!1107398) lt!2334543 (Context!10959 call!511748)) (h!70910 s!2326)))))

(declare-fun b!6152273 () Bool)

(assert (=> b!6152273 (= e!3748772 call!511751)))

(declare-fun bm!511746 () Bool)

(assert (=> bm!511746 (= call!511747 ($colon$colon!1972 (exprs!5979 lt!2334543) (ite (or c!1107398 c!1107401) (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (regTwo!32703 (regOne!32702 r!7292)))))))

(declare-fun b!6152274 () Bool)

(declare-fun e!3748775 () Bool)

(assert (=> b!6152274 (= c!1107398 e!3748775)))

(declare-fun res!2548320 () Bool)

(assert (=> b!6152274 (=> (not res!2548320) (not e!3748775))))

(assert (=> b!6152274 (= res!2548320 ((_ is Concat!24940) (regTwo!32703 (regOne!32702 r!7292))))))

(assert (=> b!6152274 (= e!3748771 e!3748773)))

(declare-fun b!6152275 () Bool)

(assert (=> b!6152275 (= e!3748774 (store ((as const (Array Context!10958 Bool)) false) lt!2334543 true))))

(declare-fun bm!511747 () Bool)

(assert (=> bm!511747 (= call!511750 (derivationStepZipperDown!1343 (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292)))) (ite c!1107399 lt!2334543 (Context!10959 call!511747)) (h!70910 s!2326)))))

(declare-fun b!6152276 () Bool)

(assert (=> b!6152276 (= e!3748775 (nullable!6088 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292)))))))

(assert (= (and d!1927609 c!1107400) b!6152275))

(assert (= (and d!1927609 (not c!1107400)) b!6152266))

(assert (= (and b!6152266 c!1107399) b!6152267))

(assert (= (and b!6152266 (not c!1107399)) b!6152274))

(assert (= (and b!6152274 res!2548320) b!6152276))

(assert (= (and b!6152274 c!1107398) b!6152272))

(assert (= (and b!6152274 (not c!1107398)) b!6152268))

(assert (= (and b!6152268 c!1107401) b!6152269))

(assert (= (and b!6152268 (not c!1107401)) b!6152271))

(assert (= (and b!6152271 c!1107402) b!6152273))

(assert (= (and b!6152271 (not c!1107402)) b!6152270))

(assert (= (or b!6152269 b!6152273) bm!511743))

(assert (= (or b!6152269 b!6152273) bm!511742))

(assert (= (or b!6152272 bm!511743) bm!511746))

(assert (= (or b!6152272 bm!511742) bm!511744))

(assert (= (or b!6152267 bm!511744) bm!511745))

(assert (= (or b!6152267 b!6152272) bm!511747))

(declare-fun m!6991616 () Bool)

(assert (=> b!6152276 m!6991616))

(assert (=> b!6152275 m!6991476))

(declare-fun m!6991618 () Bool)

(assert (=> bm!511745 m!6991618))

(declare-fun m!6991620 () Bool)

(assert (=> bm!511746 m!6991620))

(declare-fun m!6991622 () Bool)

(assert (=> bm!511747 m!6991622))

(assert (=> b!6151548 d!1927609))

(declare-fun bm!511748 () Bool)

(declare-fun call!511757 () (InoxSet Context!10958))

(declare-fun call!511758 () (InoxSet Context!10958))

(assert (=> bm!511748 (= call!511757 call!511758)))

(declare-fun b!6152277 () Bool)

(declare-fun e!3748780 () (InoxSet Context!10958))

(declare-fun e!3748777 () (InoxSet Context!10958))

(assert (=> b!6152277 (= e!3748780 e!3748777)))

(declare-fun c!1107404 () Bool)

(assert (=> b!6152277 (= c!1107404 ((_ is Union!16095) (regOne!32703 (regOne!32702 r!7292))))))

(declare-fun b!6152278 () Bool)

(declare-fun call!511756 () (InoxSet Context!10958))

(declare-fun call!511755 () (InoxSet Context!10958))

(assert (=> b!6152278 (= e!3748777 ((_ map or) call!511756 call!511755))))

(declare-fun b!6152279 () Bool)

(declare-fun e!3748779 () (InoxSet Context!10958))

(declare-fun e!3748782 () (InoxSet Context!10958))

(assert (=> b!6152279 (= e!3748779 e!3748782)))

(declare-fun c!1107406 () Bool)

(assert (=> b!6152279 (= c!1107406 ((_ is Concat!24940) (regOne!32703 (regOne!32702 r!7292))))))

(declare-fun bm!511749 () Bool)

(declare-fun call!511754 () List!64584)

(declare-fun call!511753 () List!64584)

(assert (=> bm!511749 (= call!511754 call!511753)))

(declare-fun d!1927611 () Bool)

(declare-fun c!1107405 () Bool)

(assert (=> d!1927611 (= c!1107405 (and ((_ is ElementMatch!16095) (regOne!32703 (regOne!32702 r!7292))) (= (c!1107191 (regOne!32703 (regOne!32702 r!7292))) (h!70910 s!2326))))))

(assert (=> d!1927611 (= (derivationStepZipperDown!1343 (regOne!32703 (regOne!32702 r!7292)) lt!2334543 (h!70910 s!2326)) e!3748780)))

(declare-fun bm!511750 () Bool)

(assert (=> bm!511750 (= call!511758 call!511755)))

(declare-fun b!6152280 () Bool)

(assert (=> b!6152280 (= e!3748782 call!511757)))

(declare-fun b!6152281 () Bool)

(declare-fun e!3748778 () (InoxSet Context!10958))

(assert (=> b!6152281 (= e!3748778 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6152282 () Bool)

(declare-fun c!1107407 () Bool)

(assert (=> b!6152282 (= c!1107407 ((_ is Star!16095) (regOne!32703 (regOne!32702 r!7292))))))

(assert (=> b!6152282 (= e!3748782 e!3748778)))

(declare-fun b!6152283 () Bool)

(assert (=> b!6152283 (= e!3748779 ((_ map or) call!511756 call!511758))))

(declare-fun bm!511751 () Bool)

(declare-fun c!1107403 () Bool)

(assert (=> bm!511751 (= call!511755 (derivationStepZipperDown!1343 (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292)))))) (ite (or c!1107404 c!1107403) lt!2334543 (Context!10959 call!511754)) (h!70910 s!2326)))))

(declare-fun b!6152284 () Bool)

(assert (=> b!6152284 (= e!3748778 call!511757)))

(declare-fun bm!511752 () Bool)

(assert (=> bm!511752 (= call!511753 ($colon$colon!1972 (exprs!5979 lt!2334543) (ite (or c!1107403 c!1107406) (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (regOne!32703 (regOne!32702 r!7292)))))))

(declare-fun b!6152285 () Bool)

(declare-fun e!3748781 () Bool)

(assert (=> b!6152285 (= c!1107403 e!3748781)))

(declare-fun res!2548321 () Bool)

(assert (=> b!6152285 (=> (not res!2548321) (not e!3748781))))

(assert (=> b!6152285 (= res!2548321 ((_ is Concat!24940) (regOne!32703 (regOne!32702 r!7292))))))

(assert (=> b!6152285 (= e!3748777 e!3748779)))

(declare-fun b!6152286 () Bool)

(assert (=> b!6152286 (= e!3748780 (store ((as const (Array Context!10958 Bool)) false) lt!2334543 true))))

(declare-fun bm!511753 () Bool)

(assert (=> bm!511753 (= call!511756 (derivationStepZipperDown!1343 (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292)))) (ite c!1107404 lt!2334543 (Context!10959 call!511753)) (h!70910 s!2326)))))

(declare-fun b!6152287 () Bool)

(assert (=> b!6152287 (= e!3748781 (nullable!6088 (regOne!32702 (regOne!32703 (regOne!32702 r!7292)))))))

(assert (= (and d!1927611 c!1107405) b!6152286))

(assert (= (and d!1927611 (not c!1107405)) b!6152277))

(assert (= (and b!6152277 c!1107404) b!6152278))

(assert (= (and b!6152277 (not c!1107404)) b!6152285))

(assert (= (and b!6152285 res!2548321) b!6152287))

(assert (= (and b!6152285 c!1107403) b!6152283))

(assert (= (and b!6152285 (not c!1107403)) b!6152279))

(assert (= (and b!6152279 c!1107406) b!6152280))

(assert (= (and b!6152279 (not c!1107406)) b!6152282))

(assert (= (and b!6152282 c!1107407) b!6152284))

(assert (= (and b!6152282 (not c!1107407)) b!6152281))

(assert (= (or b!6152280 b!6152284) bm!511749))

(assert (= (or b!6152280 b!6152284) bm!511748))

(assert (= (or b!6152283 bm!511749) bm!511752))

(assert (= (or b!6152283 bm!511748) bm!511750))

(assert (= (or b!6152278 bm!511750) bm!511751))

(assert (= (or b!6152278 b!6152283) bm!511753))

(declare-fun m!6991624 () Bool)

(assert (=> b!6152287 m!6991624))

(assert (=> b!6152286 m!6991476))

(declare-fun m!6991626 () Bool)

(assert (=> bm!511751 m!6991626))

(declare-fun m!6991628 () Bool)

(assert (=> bm!511752 m!6991628))

(declare-fun m!6991630 () Bool)

(assert (=> bm!511753 m!6991630))

(assert (=> b!6151548 d!1927611))

(assert (=> b!6151558 d!1927551))

(declare-fun d!1927613 () Bool)

(assert (=> d!1927613 (= (isEmpty!36421 (t!378074 zl!343)) ((_ is Nil!64461) (t!378074 zl!343)))))

(assert (=> b!6151537 d!1927613))

(declare-fun d!1927615 () Bool)

(declare-fun lt!2334642 () Regex!16095)

(assert (=> d!1927615 (validRegex!7831 lt!2334642)))

(assert (=> d!1927615 (= lt!2334642 (generalisedUnion!1939 (unfocusZipperList!1516 zl!343)))))

(assert (=> d!1927615 (= (unfocusZipper!1837 zl!343) lt!2334642)))

(declare-fun bs!1525015 () Bool)

(assert (= bs!1525015 d!1927615))

(declare-fun m!6991632 () Bool)

(assert (=> bs!1525015 m!6991632))

(assert (=> bs!1525015 m!6991018))

(assert (=> bs!1525015 m!6991018))

(assert (=> bs!1525015 m!6991020))

(assert (=> b!6151559 d!1927615))

(declare-fun bs!1525016 () Bool)

(declare-fun d!1927617 () Bool)

(assert (= bs!1525016 (and d!1927617 d!1927601)))

(declare-fun lambda!335555 () Int)

(assert (=> bs!1525016 (= lambda!335555 lambda!335547)))

(declare-fun bs!1525017 () Bool)

(assert (= bs!1525017 (and d!1927617 d!1927571)))

(assert (=> bs!1525017 (= lambda!335555 lambda!335538)))

(declare-fun bs!1525018 () Bool)

(assert (= bs!1525018 (and d!1927617 d!1927605)))

(assert (=> bs!1525018 (= lambda!335555 lambda!335553)))

(declare-fun bs!1525019 () Bool)

(assert (= bs!1525019 (and d!1927617 d!1927607)))

(assert (=> bs!1525019 (= lambda!335555 lambda!335554)))

(declare-fun bs!1525020 () Bool)

(assert (= bs!1525020 (and d!1927617 d!1927603)))

(assert (=> bs!1525020 (= lambda!335555 lambda!335550)))

(assert (=> d!1927617 (= (inv!83484 lt!2334543) (forall!15216 (exprs!5979 lt!2334543) lambda!335555))))

(declare-fun bs!1525021 () Bool)

(assert (= bs!1525021 d!1927617))

(declare-fun m!6991634 () Bool)

(assert (=> bs!1525021 m!6991634))

(assert (=> b!6151539 d!1927617))

(assert (=> b!6151540 d!1927591))

(declare-fun d!1927619 () Bool)

(assert (=> d!1927619 (= (isEmpty!36420 (t!378073 (exprs!5979 (h!70909 zl!343)))) ((_ is Nil!64460) (t!378073 (exprs!5979 (h!70909 zl!343)))))))

(assert (=> b!6151530 d!1927619))

(declare-fun b!6152295 () Bool)

(declare-fun e!3748788 () Bool)

(declare-fun tp!1718305 () Bool)

(assert (=> b!6152295 (= e!3748788 tp!1718305)))

(declare-fun b!6152294 () Bool)

(declare-fun tp!1718306 () Bool)

(declare-fun e!3748787 () Bool)

(assert (=> b!6152294 (= e!3748787 (and (inv!83484 (h!70909 (t!378074 zl!343))) e!3748788 tp!1718306))))

(assert (=> b!6151556 (= tp!1718234 e!3748787)))

(assert (= b!6152294 b!6152295))

(assert (= (and b!6151556 ((_ is Cons!64461) (t!378074 zl!343))) b!6152294))

(declare-fun m!6991636 () Bool)

(assert (=> b!6152294 m!6991636))

(declare-fun b!6152300 () Bool)

(declare-fun e!3748791 () Bool)

(declare-fun tp!1718309 () Bool)

(assert (=> b!6152300 (= e!3748791 (and tp_is_empty!41443 tp!1718309))))

(assert (=> b!6151557 (= tp!1718236 e!3748791)))

(assert (= (and b!6151557 ((_ is Cons!64462) (t!378075 s!2326))) b!6152300))

(declare-fun condSetEmpty!41658 () Bool)

(assert (=> setNonEmpty!41652 (= condSetEmpty!41658 (= setRest!41652 ((as const (Array Context!10958 Bool)) false)))))

(declare-fun setRes!41658 () Bool)

(assert (=> setNonEmpty!41652 (= tp!1718239 setRes!41658)))

(declare-fun setIsEmpty!41658 () Bool)

(assert (=> setIsEmpty!41658 setRes!41658))

(declare-fun setNonEmpty!41658 () Bool)

(declare-fun setElem!41658 () Context!10958)

(declare-fun e!3748794 () Bool)

(declare-fun tp!1718315 () Bool)

(assert (=> setNonEmpty!41658 (= setRes!41658 (and tp!1718315 (inv!83484 setElem!41658) e!3748794))))

(declare-fun setRest!41658 () (InoxSet Context!10958))

(assert (=> setNonEmpty!41658 (= setRest!41652 ((_ map or) (store ((as const (Array Context!10958 Bool)) false) setElem!41658 true) setRest!41658))))

(declare-fun b!6152305 () Bool)

(declare-fun tp!1718314 () Bool)

(assert (=> b!6152305 (= e!3748794 tp!1718314)))

(assert (= (and setNonEmpty!41652 condSetEmpty!41658) setIsEmpty!41658))

(assert (= (and setNonEmpty!41652 (not condSetEmpty!41658)) setNonEmpty!41658))

(assert (= setNonEmpty!41658 b!6152305))

(declare-fun m!6991638 () Bool)

(assert (=> setNonEmpty!41658 m!6991638))

(declare-fun b!6152319 () Bool)

(declare-fun e!3748797 () Bool)

(declare-fun tp!1718329 () Bool)

(declare-fun tp!1718326 () Bool)

(assert (=> b!6152319 (= e!3748797 (and tp!1718329 tp!1718326))))

(declare-fun b!6152318 () Bool)

(declare-fun tp!1718330 () Bool)

(assert (=> b!6152318 (= e!3748797 tp!1718330)))

(declare-fun b!6152317 () Bool)

(declare-fun tp!1718328 () Bool)

(declare-fun tp!1718327 () Bool)

(assert (=> b!6152317 (= e!3748797 (and tp!1718328 tp!1718327))))

(assert (=> b!6151538 (= tp!1718241 e!3748797)))

(declare-fun b!6152316 () Bool)

(assert (=> b!6152316 (= e!3748797 tp_is_empty!41443)))

(assert (= (and b!6151538 ((_ is ElementMatch!16095) (regOne!32702 r!7292))) b!6152316))

(assert (= (and b!6151538 ((_ is Concat!24940) (regOne!32702 r!7292))) b!6152317))

(assert (= (and b!6151538 ((_ is Star!16095) (regOne!32702 r!7292))) b!6152318))

(assert (= (and b!6151538 ((_ is Union!16095) (regOne!32702 r!7292))) b!6152319))

(declare-fun b!6152323 () Bool)

(declare-fun e!3748798 () Bool)

(declare-fun tp!1718334 () Bool)

(declare-fun tp!1718331 () Bool)

(assert (=> b!6152323 (= e!3748798 (and tp!1718334 tp!1718331))))

(declare-fun b!6152322 () Bool)

(declare-fun tp!1718335 () Bool)

(assert (=> b!6152322 (= e!3748798 tp!1718335)))

(declare-fun b!6152321 () Bool)

(declare-fun tp!1718333 () Bool)

(declare-fun tp!1718332 () Bool)

(assert (=> b!6152321 (= e!3748798 (and tp!1718333 tp!1718332))))

(assert (=> b!6151538 (= tp!1718240 e!3748798)))

(declare-fun b!6152320 () Bool)

(assert (=> b!6152320 (= e!3748798 tp_is_empty!41443)))

(assert (= (and b!6151538 ((_ is ElementMatch!16095) (regTwo!32702 r!7292))) b!6152320))

(assert (= (and b!6151538 ((_ is Concat!24940) (regTwo!32702 r!7292))) b!6152321))

(assert (= (and b!6151538 ((_ is Star!16095) (regTwo!32702 r!7292))) b!6152322))

(assert (= (and b!6151538 ((_ is Union!16095) (regTwo!32702 r!7292))) b!6152323))

(declare-fun b!6152328 () Bool)

(declare-fun e!3748801 () Bool)

(declare-fun tp!1718340 () Bool)

(declare-fun tp!1718341 () Bool)

(assert (=> b!6152328 (= e!3748801 (and tp!1718340 tp!1718341))))

(assert (=> b!6151549 (= tp!1718242 e!3748801)))

(assert (= (and b!6151549 ((_ is Cons!64460) (exprs!5979 setElem!41652))) b!6152328))

(declare-fun b!6152329 () Bool)

(declare-fun e!3748802 () Bool)

(declare-fun tp!1718342 () Bool)

(declare-fun tp!1718343 () Bool)

(assert (=> b!6152329 (= e!3748802 (and tp!1718342 tp!1718343))))

(assert (=> b!6151555 (= tp!1718235 e!3748802)))

(assert (= (and b!6151555 ((_ is Cons!64460) (exprs!5979 (h!70909 zl!343)))) b!6152329))

(declare-fun b!6152333 () Bool)

(declare-fun e!3748803 () Bool)

(declare-fun tp!1718347 () Bool)

(declare-fun tp!1718344 () Bool)

(assert (=> b!6152333 (= e!3748803 (and tp!1718347 tp!1718344))))

(declare-fun b!6152332 () Bool)

(declare-fun tp!1718348 () Bool)

(assert (=> b!6152332 (= e!3748803 tp!1718348)))

(declare-fun b!6152331 () Bool)

(declare-fun tp!1718346 () Bool)

(declare-fun tp!1718345 () Bool)

(assert (=> b!6152331 (= e!3748803 (and tp!1718346 tp!1718345))))

(assert (=> b!6151550 (= tp!1718233 e!3748803)))

(declare-fun b!6152330 () Bool)

(assert (=> b!6152330 (= e!3748803 tp_is_empty!41443)))

(assert (= (and b!6151550 ((_ is ElementMatch!16095) (reg!16424 r!7292))) b!6152330))

(assert (= (and b!6151550 ((_ is Concat!24940) (reg!16424 r!7292))) b!6152331))

(assert (= (and b!6151550 ((_ is Star!16095) (reg!16424 r!7292))) b!6152332))

(assert (= (and b!6151550 ((_ is Union!16095) (reg!16424 r!7292))) b!6152333))

(declare-fun b!6152337 () Bool)

(declare-fun e!3748804 () Bool)

(declare-fun tp!1718352 () Bool)

(declare-fun tp!1718349 () Bool)

(assert (=> b!6152337 (= e!3748804 (and tp!1718352 tp!1718349))))

(declare-fun b!6152336 () Bool)

(declare-fun tp!1718353 () Bool)

(assert (=> b!6152336 (= e!3748804 tp!1718353)))

(declare-fun b!6152335 () Bool)

(declare-fun tp!1718351 () Bool)

(declare-fun tp!1718350 () Bool)

(assert (=> b!6152335 (= e!3748804 (and tp!1718351 tp!1718350))))

(assert (=> b!6151560 (= tp!1718238 e!3748804)))

(declare-fun b!6152334 () Bool)

(assert (=> b!6152334 (= e!3748804 tp_is_empty!41443)))

(assert (= (and b!6151560 ((_ is ElementMatch!16095) (regOne!32703 r!7292))) b!6152334))

(assert (= (and b!6151560 ((_ is Concat!24940) (regOne!32703 r!7292))) b!6152335))

(assert (= (and b!6151560 ((_ is Star!16095) (regOne!32703 r!7292))) b!6152336))

(assert (= (and b!6151560 ((_ is Union!16095) (regOne!32703 r!7292))) b!6152337))

(declare-fun b!6152341 () Bool)

(declare-fun e!3748805 () Bool)

(declare-fun tp!1718357 () Bool)

(declare-fun tp!1718354 () Bool)

(assert (=> b!6152341 (= e!3748805 (and tp!1718357 tp!1718354))))

(declare-fun b!6152340 () Bool)

(declare-fun tp!1718358 () Bool)

(assert (=> b!6152340 (= e!3748805 tp!1718358)))

(declare-fun b!6152339 () Bool)

(declare-fun tp!1718356 () Bool)

(declare-fun tp!1718355 () Bool)

(assert (=> b!6152339 (= e!3748805 (and tp!1718356 tp!1718355))))

(assert (=> b!6151560 (= tp!1718237 e!3748805)))

(declare-fun b!6152338 () Bool)

(assert (=> b!6152338 (= e!3748805 tp_is_empty!41443)))

(assert (= (and b!6151560 ((_ is ElementMatch!16095) (regTwo!32703 r!7292))) b!6152338))

(assert (= (and b!6151560 ((_ is Concat!24940) (regTwo!32703 r!7292))) b!6152339))

(assert (= (and b!6151560 ((_ is Star!16095) (regTwo!32703 r!7292))) b!6152340))

(assert (= (and b!6151560 ((_ is Union!16095) (regTwo!32703 r!7292))) b!6152341))

(declare-fun b_lambda!234163 () Bool)

(assert (= b_lambda!234159 (or b!6151542 b_lambda!234163)))

(declare-fun bs!1525022 () Bool)

(declare-fun d!1927621 () Bool)

(assert (= bs!1525022 (and d!1927621 b!6151542)))

(assert (=> bs!1525022 (= (dynLambda!25410 lambda!335497 lt!2334527) (derivationStepZipperUp!1269 lt!2334527 (h!70910 s!2326)))))

(assert (=> bs!1525022 m!6991060))

(assert (=> d!1927581 d!1927621))

(declare-fun b_lambda!234165 () Bool)

(assert (= b_lambda!234161 (or b!6151542 b_lambda!234165)))

(declare-fun bs!1525023 () Bool)

(declare-fun d!1927623 () Bool)

(assert (= bs!1525023 (and d!1927623 b!6151542)))

(assert (=> bs!1525023 (= (dynLambda!25410 lambda!335497 lt!2334535) (derivationStepZipperUp!1269 lt!2334535 (h!70910 s!2326)))))

(assert (=> bs!1525023 m!6991062))

(assert (=> d!1927583 d!1927623))

(declare-fun b_lambda!234167 () Bool)

(assert (= b_lambda!234157 (or b!6151542 b_lambda!234167)))

(declare-fun bs!1525024 () Bool)

(declare-fun d!1927625 () Bool)

(assert (= bs!1525024 (and d!1927625 b!6151542)))

(assert (=> bs!1525024 (= (dynLambda!25410 lambda!335497 (h!70909 zl!343)) (derivationStepZipperUp!1269 (h!70909 zl!343) (h!70910 s!2326)))))

(assert (=> bs!1525024 m!6991044))

(assert (=> d!1927569 d!1927625))

(check-sat (not b!6152276) (not b!6152321) (not b!6151799) (not b!6152264) (not b!6152011) (not b!6152259) (not bm!511753) (not b!6152065) (not b!6152223) (not b!6152110) (not b!6152335) (not b!6152226) (not d!1927551) (not bm!511752) (not d!1927545) (not b!6152227) (not b!6151798) (not d!1927559) (not b!6151800) (not bm!511746) (not b!6152220) (not bm!511719) (not b!6151933) (not d!1927547) (not d!1927567) (not b!6152294) (not b!6152305) (not b!6152154) (not d!1927573) (not d!1927479) (not b!6152010) (not b!6152198) (not d!1927477) (not b!6152111) (not d!1927593) (not b!6152147) (not b!6152337) (not b!6152263) (not b!6152103) (not d!1927569) (not bm!511737) (not b!6152287) (not bm!511738) (not d!1927581) (not b!6152027) (not b!6152329) (not bm!511720) (not b!6152014) (not b!6152341) (not b!6152025) (not b!6152234) (not b!6152300) (not b!6152073) (not b!6152078) (not d!1927543) (not b!6152114) (not bs!1525023) (not b!6152070) (not b!6152194) (not b!6152256) (not d!1927615) (not setNonEmpty!41658) (not b_lambda!234165) (not bm!511745) (not b!6152331) (not b!6152322) (not b!6151937) (not b!6151796) (not b!6152009) (not b!6151797) (not bm!511741) (not b!6152008) (not b!6152333) (not b!6152222) (not d!1927607) (not bm!511723) (not bm!511721) (not d!1927535) (not b!6152336) (not b!6152295) (not b!6151936) (not d!1927571) (not b!6151801) (not d!1927481) (not b!6152193) (not b!6152062) (not d!1927601) (not d!1927487) (not b!6152262) (not d!1927533) (not b!6151934) (not bm!511701) (not b!6152188) (not b!6152080) (not bm!511718) (not d!1927591) (not b!6152075) (not d!1927531) (not b!6152007) (not d!1927555) tp_is_empty!41443 (not b!6151935) (not d!1927599) (not bs!1525024) (not b!6152332) (not bm!511751) (not b!6152012) (not b!6152186) (not b_lambda!234163) (not b!6152068) (not bm!511717) (not b!6152063) (not bm!511732) (not d!1927583) (not b!6151931) (not b!6152224) (not b!6152319) (not b!6152340) (not b!6152328) (not d!1927579) (not d!1927587) (not b_lambda!234167) (not d!1927603) (not d!1927577) (not bm!511731) (not bm!511747) (not d!1927473) (not bm!511722) (not b!6152261) (not b!6152339) (not bs!1525022) (not b!6152318) (not d!1927549) (not b!6152265) (not d!1927605) (not b!6152323) (not d!1927617) (not b!6152191) (not d!1927553) (not b!6151826) (not b!6152225) (not b!6152317) (not b!6152013) (not d!1927597))
(check-sat)
(get-model)

(declare-fun d!1927893 () Bool)

(assert (=> d!1927893 (= (nullable!6088 r!7292) (nullableFct!2052 r!7292))))

(declare-fun bs!1525202 () Bool)

(assert (= bs!1525202 d!1927893))

(declare-fun m!6992192 () Bool)

(assert (=> bs!1525202 m!6992192))

(assert (=> b!6152194 d!1927893))

(declare-fun d!1927895 () Bool)

(assert (=> d!1927895 (= ($colon$colon!1972 (exprs!5979 lt!2334543) (ite (or c!1107330 c!1107333) (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (h!70908 (exprs!5979 (h!70909 zl!343))))) (Cons!64460 (ite (or c!1107330 c!1107333) (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (h!70908 (exprs!5979 (h!70909 zl!343)))) (exprs!5979 lt!2334543)))))

(assert (=> bm!511718 d!1927895))

(declare-fun d!1927897 () Bool)

(assert (=> d!1927897 (= (isEmpty!36420 (unfocusZipperList!1516 zl!343)) ((_ is Nil!64460) (unfocusZipperList!1516 zl!343)))))

(assert (=> b!6152227 d!1927897))

(declare-fun d!1927899 () Bool)

(declare-fun res!2548516 () Bool)

(declare-fun e!3749148 () Bool)

(assert (=> d!1927899 (=> res!2548516 e!3749148)))

(assert (=> d!1927899 (= res!2548516 ((_ is Nil!64460) (exprs!5979 lt!2334543)))))

(assert (=> d!1927899 (= (forall!15216 (exprs!5979 lt!2334543) lambda!335555) e!3749148)))

(declare-fun b!6152947 () Bool)

(declare-fun e!3749149 () Bool)

(assert (=> b!6152947 (= e!3749148 e!3749149)))

(declare-fun res!2548517 () Bool)

(assert (=> b!6152947 (=> (not res!2548517) (not e!3749149))))

(declare-fun dynLambda!25412 (Int Regex!16095) Bool)

(assert (=> b!6152947 (= res!2548517 (dynLambda!25412 lambda!335555 (h!70908 (exprs!5979 lt!2334543))))))

(declare-fun b!6152948 () Bool)

(assert (=> b!6152948 (= e!3749149 (forall!15216 (t!378073 (exprs!5979 lt!2334543)) lambda!335555))))

(assert (= (and d!1927899 (not res!2548516)) b!6152947))

(assert (= (and b!6152947 res!2548517) b!6152948))

(declare-fun b_lambda!234205 () Bool)

(assert (=> (not b_lambda!234205) (not b!6152947)))

(declare-fun m!6992194 () Bool)

(assert (=> b!6152947 m!6992194))

(declare-fun m!6992196 () Bool)

(assert (=> b!6152948 m!6992196))

(assert (=> d!1927617 d!1927899))

(declare-fun b!6152949 () Bool)

(declare-fun e!3749151 () Bool)

(assert (=> b!6152949 (= e!3749151 (nullable!6088 (h!70908 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334543)))))))))

(declare-fun b!6152950 () Bool)

(declare-fun e!3749150 () (InoxSet Context!10958))

(declare-fun e!3749152 () (InoxSet Context!10958))

(assert (=> b!6152950 (= e!3749150 e!3749152)))

(declare-fun c!1107559 () Bool)

(assert (=> b!6152950 (= c!1107559 ((_ is Cons!64460) (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334543))))))))

(declare-fun b!6152951 () Bool)

(declare-fun call!511879 () (InoxSet Context!10958))

(assert (=> b!6152951 (= e!3749150 ((_ map or) call!511879 (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334543)))))) (h!70910 s!2326))))))

(declare-fun b!6152952 () Bool)

(assert (=> b!6152952 (= e!3749152 call!511879)))

(declare-fun d!1927901 () Bool)

(declare-fun c!1107560 () Bool)

(assert (=> d!1927901 (= c!1107560 e!3749151)))

(declare-fun res!2548518 () Bool)

(assert (=> d!1927901 (=> (not res!2548518) (not e!3749151))))

(assert (=> d!1927901 (= res!2548518 ((_ is Cons!64460) (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334543))))))))

(assert (=> d!1927901 (= (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 lt!2334543))) (h!70910 s!2326)) e!3749150)))

(declare-fun b!6152953 () Bool)

(assert (=> b!6152953 (= e!3749152 ((as const (Array Context!10958 Bool)) false))))

(declare-fun bm!511874 () Bool)

(assert (=> bm!511874 (= call!511879 (derivationStepZipperDown!1343 (h!70908 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334543))))) (Context!10959 (t!378073 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334543)))))) (h!70910 s!2326)))))

(assert (= (and d!1927901 res!2548518) b!6152949))

(assert (= (and d!1927901 c!1107560) b!6152951))

(assert (= (and d!1927901 (not c!1107560)) b!6152950))

(assert (= (and b!6152950 c!1107559) b!6152952))

(assert (= (and b!6152950 (not c!1107559)) b!6152953))

(assert (= (or b!6152951 b!6152952) bm!511874))

(declare-fun m!6992198 () Bool)

(assert (=> b!6152949 m!6992198))

(declare-fun m!6992200 () Bool)

(assert (=> b!6152951 m!6992200))

(declare-fun m!6992202 () Bool)

(assert (=> bm!511874 m!6992202))

(assert (=> b!6152027 d!1927901))

(declare-fun d!1927903 () Bool)

(assert (=> d!1927903 (= (isEmpty!36425 (findConcatSeparation!2400 (regOne!32702 r!7292) (regTwo!32702 r!7292) Nil!64462 s!2326 s!2326)) (not ((_ is Some!15985) (findConcatSeparation!2400 (regOne!32702 r!7292) (regTwo!32702 r!7292) Nil!64462 s!2326 s!2326))))))

(assert (=> d!1927545 d!1927903))

(declare-fun d!1927905 () Bool)

(assert (=> d!1927905 (= (nullable!6088 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343))))) (nullableFct!2052 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343))))))))

(declare-fun bs!1525203 () Bool)

(assert (= bs!1525203 d!1927905))

(declare-fun m!6992204 () Bool)

(assert (=> bs!1525203 m!6992204))

(assert (=> b!6152062 d!1927905))

(declare-fun d!1927907 () Bool)

(assert (=> d!1927907 (= (isEmpty!36420 (t!378073 (unfocusZipperList!1516 zl!343))) ((_ is Nil!64460) (t!378073 (unfocusZipperList!1516 zl!343))))))

(assert (=> b!6152223 d!1927907))

(declare-fun d!1927909 () Bool)

(assert (=> d!1927909 (= (Exists!3165 (ite c!1107361 lambda!335543 lambda!335544)) (choose!45731 (ite c!1107361 lambda!335543 lambda!335544)))))

(declare-fun bs!1525204 () Bool)

(assert (= bs!1525204 d!1927909))

(declare-fun m!6992206 () Bool)

(assert (=> bs!1525204 m!6992206))

(assert (=> bm!511737 d!1927909))

(declare-fun bm!511875 () Bool)

(declare-fun call!511884 () (InoxSet Context!10958))

(declare-fun call!511885 () (InoxSet Context!10958))

(assert (=> bm!511875 (= call!511884 call!511885)))

(declare-fun b!6152954 () Bool)

(declare-fun e!3749156 () (InoxSet Context!10958))

(declare-fun e!3749153 () (InoxSet Context!10958))

(assert (=> b!6152954 (= e!3749156 e!3749153)))

(declare-fun c!1107562 () Bool)

(assert (=> b!6152954 (= c!1107562 ((_ is Union!16095) (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6152955 () Bool)

(declare-fun call!511883 () (InoxSet Context!10958))

(declare-fun call!511882 () (InoxSet Context!10958))

(assert (=> b!6152955 (= e!3749153 ((_ map or) call!511883 call!511882))))

(declare-fun b!6152956 () Bool)

(declare-fun e!3749155 () (InoxSet Context!10958))

(declare-fun e!3749158 () (InoxSet Context!10958))

(assert (=> b!6152956 (= e!3749155 e!3749158)))

(declare-fun c!1107564 () Bool)

(assert (=> b!6152956 (= c!1107564 ((_ is Concat!24940) (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun bm!511876 () Bool)

(declare-fun call!511881 () List!64584)

(declare-fun call!511880 () List!64584)

(assert (=> bm!511876 (= call!511881 call!511880)))

(declare-fun d!1927911 () Bool)

(declare-fun c!1107563 () Bool)

(assert (=> d!1927911 (= c!1107563 (and ((_ is ElementMatch!16095) (h!70908 (exprs!5979 (h!70909 zl!343)))) (= (c!1107191 (h!70908 (exprs!5979 (h!70909 zl!343)))) (h!70910 s!2326))))))

(assert (=> d!1927911 (= (derivationStepZipperDown!1343 (h!70908 (exprs!5979 (h!70909 zl!343))) (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343)))) (h!70910 s!2326)) e!3749156)))

(declare-fun bm!511877 () Bool)

(assert (=> bm!511877 (= call!511885 call!511882)))

(declare-fun b!6152957 () Bool)

(assert (=> b!6152957 (= e!3749158 call!511884)))

(declare-fun b!6152958 () Bool)

(declare-fun e!3749154 () (InoxSet Context!10958))

(assert (=> b!6152958 (= e!3749154 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6152959 () Bool)

(declare-fun c!1107565 () Bool)

(assert (=> b!6152959 (= c!1107565 ((_ is Star!16095) (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(assert (=> b!6152959 (= e!3749158 e!3749154)))

(declare-fun b!6152960 () Bool)

(assert (=> b!6152960 (= e!3749155 ((_ map or) call!511883 call!511885))))

(declare-fun bm!511878 () Bool)

(declare-fun c!1107561 () Bool)

(assert (=> bm!511878 (= call!511882 (derivationStepZipperDown!1343 (ite c!1107562 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107561 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107564 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343))))))) (ite (or c!1107562 c!1107561) (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343)))) (Context!10959 call!511881)) (h!70910 s!2326)))))

(declare-fun b!6152961 () Bool)

(assert (=> b!6152961 (= e!3749154 call!511884)))

(declare-fun bm!511879 () Bool)

(assert (=> bm!511879 (= call!511880 ($colon$colon!1972 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343))))) (ite (or c!1107561 c!1107564) (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (h!70908 (exprs!5979 (h!70909 zl!343))))))))

(declare-fun b!6152962 () Bool)

(declare-fun e!3749157 () Bool)

(assert (=> b!6152962 (= c!1107561 e!3749157)))

(declare-fun res!2548519 () Bool)

(assert (=> b!6152962 (=> (not res!2548519) (not e!3749157))))

(assert (=> b!6152962 (= res!2548519 ((_ is Concat!24940) (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(assert (=> b!6152962 (= e!3749153 e!3749155)))

(declare-fun b!6152963 () Bool)

(assert (=> b!6152963 (= e!3749156 (store ((as const (Array Context!10958 Bool)) false) (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343)))) true))))

(declare-fun bm!511880 () Bool)

(assert (=> bm!511880 (= call!511883 (derivationStepZipperDown!1343 (ite c!1107562 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343))))) (ite c!1107562 (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343)))) (Context!10959 call!511880)) (h!70910 s!2326)))))

(declare-fun b!6152964 () Bool)

(assert (=> b!6152964 (= e!3749157 (nullable!6088 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343))))))))

(assert (= (and d!1927911 c!1107563) b!6152963))

(assert (= (and d!1927911 (not c!1107563)) b!6152954))

(assert (= (and b!6152954 c!1107562) b!6152955))

(assert (= (and b!6152954 (not c!1107562)) b!6152962))

(assert (= (and b!6152962 res!2548519) b!6152964))

(assert (= (and b!6152962 c!1107561) b!6152960))

(assert (= (and b!6152962 (not c!1107561)) b!6152956))

(assert (= (and b!6152956 c!1107564) b!6152957))

(assert (= (and b!6152956 (not c!1107564)) b!6152959))

(assert (= (and b!6152959 c!1107565) b!6152961))

(assert (= (and b!6152959 (not c!1107565)) b!6152958))

(assert (= (or b!6152957 b!6152961) bm!511876))

(assert (= (or b!6152957 b!6152961) bm!511875))

(assert (= (or b!6152960 bm!511876) bm!511879))

(assert (= (or b!6152960 bm!511875) bm!511877))

(assert (= (or b!6152955 bm!511877) bm!511878))

(assert (= (or b!6152955 b!6152960) bm!511880))

(assert (=> b!6152964 m!6991474))

(declare-fun m!6992208 () Bool)

(assert (=> b!6152963 m!6992208))

(declare-fun m!6992210 () Bool)

(assert (=> bm!511878 m!6992210))

(declare-fun m!6992212 () Bool)

(assert (=> bm!511879 m!6992212))

(declare-fun m!6992214 () Bool)

(assert (=> bm!511880 m!6992214))

(assert (=> bm!511721 d!1927911))

(declare-fun bm!511881 () Bool)

(declare-fun call!511890 () (InoxSet Context!10958))

(declare-fun call!511891 () (InoxSet Context!10958))

(assert (=> bm!511881 (= call!511890 call!511891)))

(declare-fun b!6152965 () Bool)

(declare-fun e!3749162 () (InoxSet Context!10958))

(declare-fun e!3749159 () (InoxSet Context!10958))

(assert (=> b!6152965 (= e!3749162 e!3749159)))

(declare-fun c!1107567 () Bool)

(assert (=> b!6152965 (= c!1107567 ((_ is Union!16095) (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))))))

(declare-fun b!6152966 () Bool)

(declare-fun call!511889 () (InoxSet Context!10958))

(declare-fun call!511888 () (InoxSet Context!10958))

(assert (=> b!6152966 (= e!3749159 ((_ map or) call!511889 call!511888))))

(declare-fun b!6152967 () Bool)

(declare-fun e!3749161 () (InoxSet Context!10958))

(declare-fun e!3749164 () (InoxSet Context!10958))

(assert (=> b!6152967 (= e!3749161 e!3749164)))

(declare-fun c!1107569 () Bool)

(assert (=> b!6152967 (= c!1107569 ((_ is Concat!24940) (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))))))

(declare-fun bm!511882 () Bool)

(declare-fun call!511887 () List!64584)

(declare-fun call!511886 () List!64584)

(assert (=> bm!511882 (= call!511887 call!511886)))

(declare-fun d!1927913 () Bool)

(declare-fun c!1107568 () Bool)

(assert (=> d!1927913 (= c!1107568 (and ((_ is ElementMatch!16095) (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (= (c!1107191 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (h!70910 s!2326))))))

(assert (=> d!1927913 (= (derivationStepZipperDown!1343 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))) (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (h!70910 s!2326)) e!3749162)))

(declare-fun bm!511883 () Bool)

(assert (=> bm!511883 (= call!511891 call!511888)))

(declare-fun b!6152968 () Bool)

(assert (=> b!6152968 (= e!3749164 call!511890)))

(declare-fun b!6152969 () Bool)

(declare-fun e!3749160 () (InoxSet Context!10958))

(assert (=> b!6152969 (= e!3749160 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6152970 () Bool)

(declare-fun c!1107570 () Bool)

(assert (=> b!6152970 (= c!1107570 ((_ is Star!16095) (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))))))

(assert (=> b!6152970 (= e!3749164 e!3749160)))

(declare-fun b!6152971 () Bool)

(assert (=> b!6152971 (= e!3749161 ((_ map or) call!511889 call!511891))))

(declare-fun c!1107566 () Bool)

(declare-fun bm!511884 () Bool)

(assert (=> bm!511884 (= call!511888 (derivationStepZipperDown!1343 (ite c!1107567 (regTwo!32703 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (ite c!1107566 (regTwo!32702 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (ite c!1107569 (regOne!32702 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (reg!16424 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))))))) (ite (or c!1107567 c!1107566) (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (Context!10959 call!511887)) (h!70910 s!2326)))))

(declare-fun b!6152972 () Bool)

(assert (=> b!6152972 (= e!3749160 call!511890)))

(declare-fun bm!511885 () Bool)

(assert (=> bm!511885 (= call!511886 ($colon$colon!1972 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))))) (ite (or c!1107566 c!1107569) (regTwo!32702 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))))))))

(declare-fun b!6152973 () Bool)

(declare-fun e!3749163 () Bool)

(assert (=> b!6152973 (= c!1107566 e!3749163)))

(declare-fun res!2548520 () Bool)

(assert (=> b!6152973 (=> (not res!2548520) (not e!3749163))))

(assert (=> b!6152973 (= res!2548520 ((_ is Concat!24940) (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))))))

(assert (=> b!6152973 (= e!3749159 e!3749161)))

(declare-fun b!6152974 () Bool)

(assert (=> b!6152974 (= e!3749162 (store ((as const (Array Context!10958 Bool)) false) (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) true))))

(declare-fun bm!511886 () Bool)

(assert (=> bm!511886 (= call!511889 (derivationStepZipperDown!1343 (ite c!1107567 (regOne!32703 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (regOne!32702 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))))) (ite c!1107567 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (Context!10959 call!511886)) (h!70910 s!2326)))))

(declare-fun b!6152975 () Bool)

(assert (=> b!6152975 (= e!3749163 (nullable!6088 (regOne!32702 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))))))))

(assert (= (and d!1927913 c!1107568) b!6152974))

(assert (= (and d!1927913 (not c!1107568)) b!6152965))

(assert (= (and b!6152965 c!1107567) b!6152966))

(assert (= (and b!6152965 (not c!1107567)) b!6152973))

(assert (= (and b!6152973 res!2548520) b!6152975))

(assert (= (and b!6152973 c!1107566) b!6152971))

(assert (= (and b!6152973 (not c!1107566)) b!6152967))

(assert (= (and b!6152967 c!1107569) b!6152968))

(assert (= (and b!6152967 (not c!1107569)) b!6152970))

(assert (= (and b!6152970 c!1107570) b!6152972))

(assert (= (and b!6152970 (not c!1107570)) b!6152969))

(assert (= (or b!6152968 b!6152972) bm!511882))

(assert (= (or b!6152968 b!6152972) bm!511881))

(assert (= (or b!6152971 bm!511882) bm!511885))

(assert (= (or b!6152971 bm!511881) bm!511883))

(assert (= (or b!6152966 bm!511883) bm!511884))

(assert (= (or b!6152966 b!6152971) bm!511886))

(declare-fun m!6992216 () Bool)

(assert (=> b!6152975 m!6992216))

(declare-fun m!6992218 () Bool)

(assert (=> b!6152974 m!6992218))

(declare-fun m!6992220 () Bool)

(assert (=> bm!511884 m!6992220))

(declare-fun m!6992222 () Bool)

(assert (=> bm!511885 m!6992222))

(declare-fun m!6992224 () Bool)

(assert (=> bm!511886 m!6992224))

(assert (=> bm!511720 d!1927913))

(assert (=> bs!1525024 d!1927565))

(declare-fun d!1927915 () Bool)

(assert (=> d!1927915 (= ($colon$colon!1972 (exprs!5979 lt!2334543) (ite (or c!1107403 c!1107406) (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (regOne!32703 (regOne!32702 r!7292)))) (Cons!64460 (ite (or c!1107403 c!1107406) (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (regOne!32703 (regOne!32702 r!7292))) (exprs!5979 lt!2334543)))))

(assert (=> bm!511752 d!1927915))

(declare-fun d!1927917 () Bool)

(declare-fun lambda!335594 () Int)

(declare-fun exists!2441 ((InoxSet Context!10958) Int) Bool)

(assert (=> d!1927917 (= (nullableZipper!1876 ((_ map or) lt!2334546 lt!2334539)) (exists!2441 ((_ map or) lt!2334546 lt!2334539) lambda!335594))))

(declare-fun bs!1525205 () Bool)

(assert (= bs!1525205 d!1927917))

(declare-fun m!6992226 () Bool)

(assert (=> bs!1525205 m!6992226))

(assert (=> b!6152013 d!1927917))

(declare-fun d!1927919 () Bool)

(declare-fun res!2548521 () Bool)

(declare-fun e!3749165 () Bool)

(assert (=> d!1927919 (=> res!2548521 e!3749165)))

(assert (=> d!1927919 (= res!2548521 ((_ is Nil!64460) (exprs!5979 (h!70909 zl!343))))))

(assert (=> d!1927919 (= (forall!15216 (exprs!5979 (h!70909 zl!343)) lambda!335554) e!3749165)))

(declare-fun b!6152976 () Bool)

(declare-fun e!3749166 () Bool)

(assert (=> b!6152976 (= e!3749165 e!3749166)))

(declare-fun res!2548522 () Bool)

(assert (=> b!6152976 (=> (not res!2548522) (not e!3749166))))

(assert (=> b!6152976 (= res!2548522 (dynLambda!25412 lambda!335554 (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6152977 () Bool)

(assert (=> b!6152977 (= e!3749166 (forall!15216 (t!378073 (exprs!5979 (h!70909 zl!343))) lambda!335554))))

(assert (= (and d!1927919 (not res!2548521)) b!6152976))

(assert (= (and b!6152976 res!2548522) b!6152977))

(declare-fun b_lambda!234207 () Bool)

(assert (=> (not b_lambda!234207) (not b!6152976)))

(declare-fun m!6992228 () Bool)

(assert (=> b!6152976 m!6992228))

(declare-fun m!6992230 () Bool)

(assert (=> b!6152977 m!6992230))

(assert (=> d!1927607 d!1927919))

(declare-fun d!1927921 () Bool)

(assert (=> d!1927921 (= ($colon$colon!1972 (exprs!5979 lt!2334543) (ite (or c!1107398 c!1107401) (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (regTwo!32703 (regOne!32702 r!7292)))) (Cons!64460 (ite (or c!1107398 c!1107401) (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (regTwo!32703 (regOne!32702 r!7292))) (exprs!5979 lt!2334543)))))

(assert (=> bm!511746 d!1927921))

(declare-fun d!1927923 () Bool)

(assert (=> d!1927923 (= (isDefined!12689 lt!2334607) (not (isEmpty!36425 lt!2334607)))))

(declare-fun bs!1525206 () Bool)

(assert (= bs!1525206 d!1927923))

(declare-fun m!6992232 () Bool)

(assert (=> bs!1525206 m!6992232))

(assert (=> d!1927487 d!1927923))

(declare-fun b!6152979 () Bool)

(declare-fun e!3749173 () Bool)

(declare-fun e!3749171 () Bool)

(assert (=> b!6152979 (= e!3749173 e!3749171)))

(declare-fun res!2548528 () Bool)

(assert (=> b!6152979 (=> (not res!2548528) (not e!3749171))))

(declare-fun lt!2334665 () Bool)

(assert (=> b!6152979 (= res!2548528 (not lt!2334665))))

(declare-fun bm!511887 () Bool)

(declare-fun call!511892 () Bool)

(assert (=> bm!511887 (= call!511892 (isEmpty!36424 Nil!64462))))

(declare-fun b!6152980 () Bool)

(declare-fun res!2548527 () Bool)

(declare-fun e!3749167 () Bool)

(assert (=> b!6152980 (=> res!2548527 e!3749167)))

(assert (=> b!6152980 (= res!2548527 (not (isEmpty!36424 (tail!11796 Nil!64462))))))

(declare-fun b!6152981 () Bool)

(declare-fun e!3749172 () Bool)

(assert (=> b!6152981 (= e!3749172 (not lt!2334665))))

(declare-fun b!6152982 () Bool)

(declare-fun res!2548524 () Bool)

(assert (=> b!6152982 (=> res!2548524 e!3749173)))

(declare-fun e!3749169 () Bool)

(assert (=> b!6152982 (= res!2548524 e!3749169)))

(declare-fun res!2548530 () Bool)

(assert (=> b!6152982 (=> (not res!2548530) (not e!3749169))))

(assert (=> b!6152982 (= res!2548530 lt!2334665)))

(declare-fun b!6152983 () Bool)

(assert (=> b!6152983 (= e!3749169 (= (head!12711 Nil!64462) (c!1107191 (regOne!32702 r!7292))))))

(declare-fun b!6152984 () Bool)

(declare-fun e!3749170 () Bool)

(assert (=> b!6152984 (= e!3749170 e!3749172)))

(declare-fun c!1107573 () Bool)

(assert (=> b!6152984 (= c!1107573 ((_ is EmptyLang!16095) (regOne!32702 r!7292)))))

(declare-fun b!6152985 () Bool)

(assert (=> b!6152985 (= e!3749167 (not (= (head!12711 Nil!64462) (c!1107191 (regOne!32702 r!7292)))))))

(declare-fun b!6152978 () Bool)

(declare-fun res!2548529 () Bool)

(assert (=> b!6152978 (=> (not res!2548529) (not e!3749169))))

(assert (=> b!6152978 (= res!2548529 (isEmpty!36424 (tail!11796 Nil!64462)))))

(declare-fun d!1927925 () Bool)

(assert (=> d!1927925 e!3749170))

(declare-fun c!1107574 () Bool)

(assert (=> d!1927925 (= c!1107574 ((_ is EmptyExpr!16095) (regOne!32702 r!7292)))))

(declare-fun e!3749168 () Bool)

(assert (=> d!1927925 (= lt!2334665 e!3749168)))

(declare-fun c!1107575 () Bool)

(assert (=> d!1927925 (= c!1107575 (isEmpty!36424 Nil!64462))))

(assert (=> d!1927925 (validRegex!7831 (regOne!32702 r!7292))))

(assert (=> d!1927925 (= (matchR!8278 (regOne!32702 r!7292) Nil!64462) lt!2334665)))

(declare-fun b!6152986 () Bool)

(assert (=> b!6152986 (= e!3749168 (nullable!6088 (regOne!32702 r!7292)))))

(declare-fun b!6152987 () Bool)

(declare-fun res!2548526 () Bool)

(assert (=> b!6152987 (=> res!2548526 e!3749173)))

(assert (=> b!6152987 (= res!2548526 (not ((_ is ElementMatch!16095) (regOne!32702 r!7292))))))

(assert (=> b!6152987 (= e!3749172 e!3749173)))

(declare-fun b!6152988 () Bool)

(declare-fun res!2548523 () Bool)

(assert (=> b!6152988 (=> (not res!2548523) (not e!3749169))))

(assert (=> b!6152988 (= res!2548523 (not call!511892))))

(declare-fun b!6152989 () Bool)

(assert (=> b!6152989 (= e!3749170 (= lt!2334665 call!511892))))

(declare-fun b!6152990 () Bool)

(assert (=> b!6152990 (= e!3749168 (matchR!8278 (derivativeStep!4815 (regOne!32702 r!7292) (head!12711 Nil!64462)) (tail!11796 Nil!64462)))))

(declare-fun b!6152991 () Bool)

(assert (=> b!6152991 (= e!3749171 e!3749167)))

(declare-fun res!2548525 () Bool)

(assert (=> b!6152991 (=> res!2548525 e!3749167)))

(assert (=> b!6152991 (= res!2548525 call!511892)))

(assert (= (and d!1927925 c!1107575) b!6152986))

(assert (= (and d!1927925 (not c!1107575)) b!6152990))

(assert (= (and d!1927925 c!1107574) b!6152989))

(assert (= (and d!1927925 (not c!1107574)) b!6152984))

(assert (= (and b!6152984 c!1107573) b!6152981))

(assert (= (and b!6152984 (not c!1107573)) b!6152987))

(assert (= (and b!6152987 (not res!2548526)) b!6152982))

(assert (= (and b!6152982 res!2548530) b!6152988))

(assert (= (and b!6152988 res!2548523) b!6152978))

(assert (= (and b!6152978 res!2548529) b!6152983))

(assert (= (and b!6152982 (not res!2548524)) b!6152979))

(assert (= (and b!6152979 res!2548528) b!6152991))

(assert (= (and b!6152991 (not res!2548525)) b!6152980))

(assert (= (and b!6152980 (not res!2548527)) b!6152985))

(assert (= (or b!6152989 b!6152988 b!6152991) bm!511887))

(declare-fun m!6992234 () Bool)

(assert (=> bm!511887 m!6992234))

(declare-fun m!6992236 () Bool)

(assert (=> b!6152978 m!6992236))

(assert (=> b!6152978 m!6992236))

(declare-fun m!6992238 () Bool)

(assert (=> b!6152978 m!6992238))

(assert (=> b!6152980 m!6992236))

(assert (=> b!6152980 m!6992236))

(assert (=> b!6152980 m!6992238))

(declare-fun m!6992240 () Bool)

(assert (=> b!6152990 m!6992240))

(assert (=> b!6152990 m!6992240))

(declare-fun m!6992242 () Bool)

(assert (=> b!6152990 m!6992242))

(assert (=> b!6152990 m!6992236))

(assert (=> b!6152990 m!6992242))

(assert (=> b!6152990 m!6992236))

(declare-fun m!6992244 () Bool)

(assert (=> b!6152990 m!6992244))

(assert (=> b!6152985 m!6992240))

(declare-fun m!6992246 () Bool)

(assert (=> b!6152986 m!6992246))

(assert (=> d!1927925 m!6992234))

(assert (=> d!1927925 m!6991422))

(assert (=> b!6152983 m!6992240))

(assert (=> d!1927487 d!1927925))

(declare-fun bm!511888 () Bool)

(declare-fun call!511894 () Bool)

(declare-fun call!511893 () Bool)

(assert (=> bm!511888 (= call!511894 call!511893)))

(declare-fun b!6152992 () Bool)

(declare-fun e!3749174 () Bool)

(declare-fun e!3749176 () Bool)

(assert (=> b!6152992 (= e!3749174 e!3749176)))

(declare-fun c!1107577 () Bool)

(assert (=> b!6152992 (= c!1107577 ((_ is Union!16095) (regOne!32702 r!7292)))))

(declare-fun b!6152993 () Bool)

(declare-fun e!3749175 () Bool)

(assert (=> b!6152993 (= e!3749175 call!511893)))

(declare-fun b!6152994 () Bool)

(assert (=> b!6152994 (= e!3749174 e!3749175)))

(declare-fun res!2548533 () Bool)

(assert (=> b!6152994 (= res!2548533 (not (nullable!6088 (reg!16424 (regOne!32702 r!7292)))))))

(assert (=> b!6152994 (=> (not res!2548533) (not e!3749175))))

(declare-fun b!6152995 () Bool)

(declare-fun e!3749178 () Bool)

(assert (=> b!6152995 (= e!3749178 call!511894)))

(declare-fun b!6152996 () Bool)

(declare-fun e!3749177 () Bool)

(assert (=> b!6152996 (= e!3749177 e!3749178)))

(declare-fun res!2548531 () Bool)

(assert (=> b!6152996 (=> (not res!2548531) (not e!3749178))))

(declare-fun call!511895 () Bool)

(assert (=> b!6152996 (= res!2548531 call!511895)))

(declare-fun b!6152997 () Bool)

(declare-fun res!2548535 () Bool)

(assert (=> b!6152997 (=> res!2548535 e!3749177)))

(assert (=> b!6152997 (= res!2548535 (not ((_ is Concat!24940) (regOne!32702 r!7292))))))

(assert (=> b!6152997 (= e!3749176 e!3749177)))

(declare-fun d!1927927 () Bool)

(declare-fun res!2548532 () Bool)

(declare-fun e!3749179 () Bool)

(assert (=> d!1927927 (=> res!2548532 e!3749179)))

(assert (=> d!1927927 (= res!2548532 ((_ is ElementMatch!16095) (regOne!32702 r!7292)))))

(assert (=> d!1927927 (= (validRegex!7831 (regOne!32702 r!7292)) e!3749179)))

(declare-fun b!6152998 () Bool)

(assert (=> b!6152998 (= e!3749179 e!3749174)))

(declare-fun c!1107576 () Bool)

(assert (=> b!6152998 (= c!1107576 ((_ is Star!16095) (regOne!32702 r!7292)))))

(declare-fun b!6152999 () Bool)

(declare-fun e!3749180 () Bool)

(assert (=> b!6152999 (= e!3749180 call!511894)))

(declare-fun bm!511889 () Bool)

(assert (=> bm!511889 (= call!511893 (validRegex!7831 (ite c!1107576 (reg!16424 (regOne!32702 r!7292)) (ite c!1107577 (regTwo!32703 (regOne!32702 r!7292)) (regTwo!32702 (regOne!32702 r!7292))))))))

(declare-fun b!6153000 () Bool)

(declare-fun res!2548534 () Bool)

(assert (=> b!6153000 (=> (not res!2548534) (not e!3749180))))

(assert (=> b!6153000 (= res!2548534 call!511895)))

(assert (=> b!6153000 (= e!3749176 e!3749180)))

(declare-fun bm!511890 () Bool)

(assert (=> bm!511890 (= call!511895 (validRegex!7831 (ite c!1107577 (regOne!32703 (regOne!32702 r!7292)) (regOne!32702 (regOne!32702 r!7292)))))))

(assert (= (and d!1927927 (not res!2548532)) b!6152998))

(assert (= (and b!6152998 c!1107576) b!6152994))

(assert (= (and b!6152998 (not c!1107576)) b!6152992))

(assert (= (and b!6152994 res!2548533) b!6152993))

(assert (= (and b!6152992 c!1107577) b!6153000))

(assert (= (and b!6152992 (not c!1107577)) b!6152997))

(assert (= (and b!6153000 res!2548534) b!6152999))

(assert (= (and b!6152997 (not res!2548535)) b!6152996))

(assert (= (and b!6152996 res!2548531) b!6152995))

(assert (= (or b!6152999 b!6152995) bm!511888))

(assert (= (or b!6153000 b!6152996) bm!511890))

(assert (= (or b!6152993 bm!511888) bm!511889))

(declare-fun m!6992248 () Bool)

(assert (=> b!6152994 m!6992248))

(declare-fun m!6992250 () Bool)

(assert (=> bm!511889 m!6992250))

(declare-fun m!6992252 () Bool)

(assert (=> bm!511890 m!6992252))

(assert (=> d!1927487 d!1927927))

(declare-fun d!1927929 () Bool)

(assert (=> d!1927929 true))

(declare-fun setRes!41667 () Bool)

(assert (=> d!1927929 setRes!41667))

(declare-fun condSetEmpty!41667 () Bool)

(declare-fun res!2548538 () (InoxSet Context!10958))

(assert (=> d!1927929 (= condSetEmpty!41667 (= res!2548538 ((as const (Array Context!10958 Bool)) false)))))

(assert (=> d!1927929 (= (choose!45734 lt!2334538 lambda!335497) res!2548538)))

(declare-fun setIsEmpty!41667 () Bool)

(assert (=> setIsEmpty!41667 setRes!41667))

(declare-fun setNonEmpty!41667 () Bool)

(declare-fun tp!1718527 () Bool)

(declare-fun setElem!41667 () Context!10958)

(declare-fun e!3749183 () Bool)

(assert (=> setNonEmpty!41667 (= setRes!41667 (and tp!1718527 (inv!83484 setElem!41667) e!3749183))))

(declare-fun setRest!41667 () (InoxSet Context!10958))

(assert (=> setNonEmpty!41667 (= res!2548538 ((_ map or) (store ((as const (Array Context!10958 Bool)) false) setElem!41667 true) setRest!41667))))

(declare-fun b!6153003 () Bool)

(declare-fun tp!1718528 () Bool)

(assert (=> b!6153003 (= e!3749183 tp!1718528)))

(assert (= (and d!1927929 condSetEmpty!41667) setIsEmpty!41667))

(assert (= (and d!1927929 (not condSetEmpty!41667)) setNonEmpty!41667))

(assert (= setNonEmpty!41667 b!6153003))

(declare-fun m!6992254 () Bool)

(assert (=> setNonEmpty!41667 m!6992254))

(assert (=> d!1927573 d!1927929))

(declare-fun d!1927931 () Bool)

(assert (=> d!1927931 (= (isEmpty!36424 (t!378075 s!2326)) ((_ is Nil!64462) (t!378075 s!2326)))))

(assert (=> d!1927477 d!1927931))

(declare-fun d!1927933 () Bool)

(assert (=> d!1927933 (= (isEmpty!36420 (tail!11797 (exprs!5979 (h!70909 zl!343)))) ((_ is Nil!64460) (tail!11797 (exprs!5979 (h!70909 zl!343)))))))

(assert (=> b!6152265 d!1927933))

(declare-fun d!1927935 () Bool)

(assert (=> d!1927935 (= (tail!11797 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))

(assert (=> b!6152265 d!1927935))

(declare-fun b!6153005 () Bool)

(declare-fun e!3749190 () Bool)

(declare-fun e!3749188 () Bool)

(assert (=> b!6153005 (= e!3749190 e!3749188)))

(declare-fun res!2548544 () Bool)

(assert (=> b!6153005 (=> (not res!2548544) (not e!3749188))))

(declare-fun lt!2334666 () Bool)

(assert (=> b!6153005 (= res!2548544 (not lt!2334666))))

(declare-fun bm!511891 () Bool)

(declare-fun call!511896 () Bool)

(assert (=> bm!511891 (= call!511896 (isEmpty!36424 (tail!11796 s!2326)))))

(declare-fun b!6153006 () Bool)

(declare-fun res!2548543 () Bool)

(declare-fun e!3749184 () Bool)

(assert (=> b!6153006 (=> res!2548543 e!3749184)))

(assert (=> b!6153006 (= res!2548543 (not (isEmpty!36424 (tail!11796 (tail!11796 s!2326)))))))

(declare-fun b!6153007 () Bool)

(declare-fun e!3749189 () Bool)

(assert (=> b!6153007 (= e!3749189 (not lt!2334666))))

(declare-fun b!6153008 () Bool)

(declare-fun res!2548540 () Bool)

(assert (=> b!6153008 (=> res!2548540 e!3749190)))

(declare-fun e!3749186 () Bool)

(assert (=> b!6153008 (= res!2548540 e!3749186)))

(declare-fun res!2548546 () Bool)

(assert (=> b!6153008 (=> (not res!2548546) (not e!3749186))))

(assert (=> b!6153008 (= res!2548546 lt!2334666)))

(declare-fun b!6153009 () Bool)

(assert (=> b!6153009 (= e!3749186 (= (head!12711 (tail!11796 s!2326)) (c!1107191 (derivativeStep!4815 r!7292 (head!12711 s!2326)))))))

(declare-fun b!6153010 () Bool)

(declare-fun e!3749187 () Bool)

(assert (=> b!6153010 (= e!3749187 e!3749189)))

(declare-fun c!1107578 () Bool)

(assert (=> b!6153010 (= c!1107578 ((_ is EmptyLang!16095) (derivativeStep!4815 r!7292 (head!12711 s!2326))))))

(declare-fun b!6153011 () Bool)

(assert (=> b!6153011 (= e!3749184 (not (= (head!12711 (tail!11796 s!2326)) (c!1107191 (derivativeStep!4815 r!7292 (head!12711 s!2326))))))))

(declare-fun b!6153004 () Bool)

(declare-fun res!2548545 () Bool)

(assert (=> b!6153004 (=> (not res!2548545) (not e!3749186))))

(assert (=> b!6153004 (= res!2548545 (isEmpty!36424 (tail!11796 (tail!11796 s!2326))))))

(declare-fun d!1927937 () Bool)

(assert (=> d!1927937 e!3749187))

(declare-fun c!1107579 () Bool)

(assert (=> d!1927937 (= c!1107579 ((_ is EmptyExpr!16095) (derivativeStep!4815 r!7292 (head!12711 s!2326))))))

(declare-fun e!3749185 () Bool)

(assert (=> d!1927937 (= lt!2334666 e!3749185)))

(declare-fun c!1107580 () Bool)

(assert (=> d!1927937 (= c!1107580 (isEmpty!36424 (tail!11796 s!2326)))))

(assert (=> d!1927937 (validRegex!7831 (derivativeStep!4815 r!7292 (head!12711 s!2326)))))

(assert (=> d!1927937 (= (matchR!8278 (derivativeStep!4815 r!7292 (head!12711 s!2326)) (tail!11796 s!2326)) lt!2334666)))

(declare-fun b!6153012 () Bool)

(assert (=> b!6153012 (= e!3749185 (nullable!6088 (derivativeStep!4815 r!7292 (head!12711 s!2326))))))

(declare-fun b!6153013 () Bool)

(declare-fun res!2548542 () Bool)

(assert (=> b!6153013 (=> res!2548542 e!3749190)))

(assert (=> b!6153013 (= res!2548542 (not ((_ is ElementMatch!16095) (derivativeStep!4815 r!7292 (head!12711 s!2326)))))))

(assert (=> b!6153013 (= e!3749189 e!3749190)))

(declare-fun b!6153014 () Bool)

(declare-fun res!2548539 () Bool)

(assert (=> b!6153014 (=> (not res!2548539) (not e!3749186))))

(assert (=> b!6153014 (= res!2548539 (not call!511896))))

(declare-fun b!6153015 () Bool)

(assert (=> b!6153015 (= e!3749187 (= lt!2334666 call!511896))))

(declare-fun b!6153016 () Bool)

(assert (=> b!6153016 (= e!3749185 (matchR!8278 (derivativeStep!4815 (derivativeStep!4815 r!7292 (head!12711 s!2326)) (head!12711 (tail!11796 s!2326))) (tail!11796 (tail!11796 s!2326))))))

(declare-fun b!6153017 () Bool)

(assert (=> b!6153017 (= e!3749188 e!3749184)))

(declare-fun res!2548541 () Bool)

(assert (=> b!6153017 (=> res!2548541 e!3749184)))

(assert (=> b!6153017 (= res!2548541 call!511896)))

(assert (= (and d!1927937 c!1107580) b!6153012))

(assert (= (and d!1927937 (not c!1107580)) b!6153016))

(assert (= (and d!1927937 c!1107579) b!6153015))

(assert (= (and d!1927937 (not c!1107579)) b!6153010))

(assert (= (and b!6153010 c!1107578) b!6153007))

(assert (= (and b!6153010 (not c!1107578)) b!6153013))

(assert (= (and b!6153013 (not res!2548542)) b!6153008))

(assert (= (and b!6153008 res!2548546) b!6153014))

(assert (= (and b!6153014 res!2548539) b!6153004))

(assert (= (and b!6153004 res!2548545) b!6153009))

(assert (= (and b!6153008 (not res!2548540)) b!6153005))

(assert (= (and b!6153005 res!2548544) b!6153017))

(assert (= (and b!6153017 (not res!2548541)) b!6153006))

(assert (= (and b!6153006 (not res!2548543)) b!6153011))

(assert (= (or b!6153015 b!6153014 b!6153017) bm!511891))

(assert (=> bm!511891 m!6991558))

(assert (=> bm!511891 m!6991560))

(assert (=> b!6153004 m!6991558))

(declare-fun m!6992256 () Bool)

(assert (=> b!6153004 m!6992256))

(assert (=> b!6153004 m!6992256))

(declare-fun m!6992258 () Bool)

(assert (=> b!6153004 m!6992258))

(assert (=> b!6153006 m!6991558))

(assert (=> b!6153006 m!6992256))

(assert (=> b!6153006 m!6992256))

(assert (=> b!6153006 m!6992258))

(assert (=> b!6153016 m!6991558))

(declare-fun m!6992260 () Bool)

(assert (=> b!6153016 m!6992260))

(assert (=> b!6153016 m!6991564))

(assert (=> b!6153016 m!6992260))

(declare-fun m!6992262 () Bool)

(assert (=> b!6153016 m!6992262))

(assert (=> b!6153016 m!6991558))

(assert (=> b!6153016 m!6992256))

(assert (=> b!6153016 m!6992262))

(assert (=> b!6153016 m!6992256))

(declare-fun m!6992264 () Bool)

(assert (=> b!6153016 m!6992264))

(assert (=> b!6153011 m!6991558))

(assert (=> b!6153011 m!6992260))

(assert (=> b!6153012 m!6991564))

(declare-fun m!6992266 () Bool)

(assert (=> b!6153012 m!6992266))

(assert (=> d!1927937 m!6991558))

(assert (=> d!1927937 m!6991560))

(assert (=> d!1927937 m!6991564))

(declare-fun m!6992268 () Bool)

(assert (=> d!1927937 m!6992268))

(assert (=> b!6153009 m!6991558))

(assert (=> b!6153009 m!6992260))

(assert (=> b!6152198 d!1927937))

(declare-fun bm!511900 () Bool)

(declare-fun call!511908 () Regex!16095)

(declare-fun call!511907 () Regex!16095)

(assert (=> bm!511900 (= call!511908 call!511907)))

(declare-fun b!6153038 () Bool)

(declare-fun e!3749202 () Regex!16095)

(declare-fun call!511905 () Regex!16095)

(declare-fun call!511906 () Regex!16095)

(assert (=> b!6153038 (= e!3749202 (Union!16095 call!511905 call!511906))))

(declare-fun bm!511901 () Bool)

(assert (=> bm!511901 (= call!511907 call!511905)))

(declare-fun b!6153039 () Bool)

(declare-fun e!3749203 () Regex!16095)

(assert (=> b!6153039 (= e!3749203 EmptyLang!16095)))

(declare-fun c!1107595 () Bool)

(declare-fun bm!511902 () Bool)

(assert (=> bm!511902 (= call!511906 (derivativeStep!4815 (ite c!1107595 (regTwo!32703 r!7292) (regOne!32702 r!7292)) (head!12711 s!2326)))))

(declare-fun b!6153040 () Bool)

(declare-fun e!3749205 () Regex!16095)

(assert (=> b!6153040 (= e!3749205 (Union!16095 (Concat!24940 call!511906 (regTwo!32702 r!7292)) call!511908))))

(declare-fun b!6153041 () Bool)

(declare-fun c!1107593 () Bool)

(assert (=> b!6153041 (= c!1107593 (nullable!6088 (regOne!32702 r!7292)))))

(declare-fun e!3749204 () Regex!16095)

(assert (=> b!6153041 (= e!3749204 e!3749205)))

(declare-fun d!1927939 () Bool)

(declare-fun lt!2334669 () Regex!16095)

(assert (=> d!1927939 (validRegex!7831 lt!2334669)))

(assert (=> d!1927939 (= lt!2334669 e!3749203)))

(declare-fun c!1107594 () Bool)

(assert (=> d!1927939 (= c!1107594 (or ((_ is EmptyExpr!16095) r!7292) ((_ is EmptyLang!16095) r!7292)))))

(assert (=> d!1927939 (validRegex!7831 r!7292)))

(assert (=> d!1927939 (= (derivativeStep!4815 r!7292 (head!12711 s!2326)) lt!2334669)))

(declare-fun c!1107591 () Bool)

(declare-fun bm!511903 () Bool)

(assert (=> bm!511903 (= call!511905 (derivativeStep!4815 (ite c!1107595 (regOne!32703 r!7292) (ite c!1107591 (reg!16424 r!7292) (ite c!1107593 (regTwo!32702 r!7292) (regOne!32702 r!7292)))) (head!12711 s!2326)))))

(declare-fun b!6153042 () Bool)

(assert (=> b!6153042 (= e!3749204 (Concat!24940 call!511907 r!7292))))

(declare-fun b!6153043 () Bool)

(declare-fun e!3749201 () Regex!16095)

(assert (=> b!6153043 (= e!3749203 e!3749201)))

(declare-fun c!1107592 () Bool)

(assert (=> b!6153043 (= c!1107592 ((_ is ElementMatch!16095) r!7292))))

(declare-fun b!6153044 () Bool)

(assert (=> b!6153044 (= e!3749205 (Union!16095 (Concat!24940 call!511908 (regTwo!32702 r!7292)) EmptyLang!16095))))

(declare-fun b!6153045 () Bool)

(assert (=> b!6153045 (= c!1107595 ((_ is Union!16095) r!7292))))

(assert (=> b!6153045 (= e!3749201 e!3749202)))

(declare-fun b!6153046 () Bool)

(assert (=> b!6153046 (= e!3749201 (ite (= (head!12711 s!2326) (c!1107191 r!7292)) EmptyExpr!16095 EmptyLang!16095))))

(declare-fun b!6153047 () Bool)

(assert (=> b!6153047 (= e!3749202 e!3749204)))

(assert (=> b!6153047 (= c!1107591 ((_ is Star!16095) r!7292))))

(assert (= (and d!1927939 c!1107594) b!6153039))

(assert (= (and d!1927939 (not c!1107594)) b!6153043))

(assert (= (and b!6153043 c!1107592) b!6153046))

(assert (= (and b!6153043 (not c!1107592)) b!6153045))

(assert (= (and b!6153045 c!1107595) b!6153038))

(assert (= (and b!6153045 (not c!1107595)) b!6153047))

(assert (= (and b!6153047 c!1107591) b!6153042))

(assert (= (and b!6153047 (not c!1107591)) b!6153041))

(assert (= (and b!6153041 c!1107593) b!6153040))

(assert (= (and b!6153041 (not c!1107593)) b!6153044))

(assert (= (or b!6153040 b!6153044) bm!511900))

(assert (= (or b!6153042 bm!511900) bm!511901))

(assert (= (or b!6153038 b!6153040) bm!511902))

(assert (= (or b!6153038 bm!511901) bm!511903))

(assert (=> bm!511902 m!6991562))

(declare-fun m!6992270 () Bool)

(assert (=> bm!511902 m!6992270))

(assert (=> b!6153041 m!6992246))

(declare-fun m!6992272 () Bool)

(assert (=> d!1927939 m!6992272))

(assert (=> d!1927939 m!6991036))

(assert (=> bm!511903 m!6991562))

(declare-fun m!6992274 () Bool)

(assert (=> bm!511903 m!6992274))

(assert (=> b!6152198 d!1927939))

(declare-fun d!1927941 () Bool)

(assert (=> d!1927941 (= (head!12711 s!2326) (h!70910 s!2326))))

(assert (=> b!6152198 d!1927941))

(declare-fun d!1927943 () Bool)

(assert (=> d!1927943 (= (tail!11796 s!2326) (t!378075 s!2326))))

(assert (=> b!6152198 d!1927943))

(declare-fun bm!511904 () Bool)

(declare-fun call!511910 () Bool)

(declare-fun call!511909 () Bool)

(assert (=> bm!511904 (= call!511910 call!511909)))

(declare-fun b!6153048 () Bool)

(declare-fun e!3749206 () Bool)

(declare-fun e!3749208 () Bool)

(assert (=> b!6153048 (= e!3749206 e!3749208)))

(declare-fun c!1107597 () Bool)

(assert (=> b!6153048 (= c!1107597 ((_ is Union!16095) (ite c!1107347 (reg!16424 r!7292) (ite c!1107348 (regTwo!32703 r!7292) (regTwo!32702 r!7292)))))))

(declare-fun b!6153049 () Bool)

(declare-fun e!3749207 () Bool)

(assert (=> b!6153049 (= e!3749207 call!511909)))

(declare-fun b!6153050 () Bool)

(assert (=> b!6153050 (= e!3749206 e!3749207)))

(declare-fun res!2548549 () Bool)

(assert (=> b!6153050 (= res!2548549 (not (nullable!6088 (reg!16424 (ite c!1107347 (reg!16424 r!7292) (ite c!1107348 (regTwo!32703 r!7292) (regTwo!32702 r!7292)))))))))

(assert (=> b!6153050 (=> (not res!2548549) (not e!3749207))))

(declare-fun b!6153051 () Bool)

(declare-fun e!3749210 () Bool)

(assert (=> b!6153051 (= e!3749210 call!511910)))

(declare-fun b!6153052 () Bool)

(declare-fun e!3749209 () Bool)

(assert (=> b!6153052 (= e!3749209 e!3749210)))

(declare-fun res!2548547 () Bool)

(assert (=> b!6153052 (=> (not res!2548547) (not e!3749210))))

(declare-fun call!511911 () Bool)

(assert (=> b!6153052 (= res!2548547 call!511911)))

(declare-fun b!6153053 () Bool)

(declare-fun res!2548551 () Bool)

(assert (=> b!6153053 (=> res!2548551 e!3749209)))

(assert (=> b!6153053 (= res!2548551 (not ((_ is Concat!24940) (ite c!1107347 (reg!16424 r!7292) (ite c!1107348 (regTwo!32703 r!7292) (regTwo!32702 r!7292))))))))

(assert (=> b!6153053 (= e!3749208 e!3749209)))

(declare-fun d!1927945 () Bool)

(declare-fun res!2548548 () Bool)

(declare-fun e!3749211 () Bool)

(assert (=> d!1927945 (=> res!2548548 e!3749211)))

(assert (=> d!1927945 (= res!2548548 ((_ is ElementMatch!16095) (ite c!1107347 (reg!16424 r!7292) (ite c!1107348 (regTwo!32703 r!7292) (regTwo!32702 r!7292)))))))

(assert (=> d!1927945 (= (validRegex!7831 (ite c!1107347 (reg!16424 r!7292) (ite c!1107348 (regTwo!32703 r!7292) (regTwo!32702 r!7292)))) e!3749211)))

(declare-fun b!6153054 () Bool)

(assert (=> b!6153054 (= e!3749211 e!3749206)))

(declare-fun c!1107596 () Bool)

(assert (=> b!6153054 (= c!1107596 ((_ is Star!16095) (ite c!1107347 (reg!16424 r!7292) (ite c!1107348 (regTwo!32703 r!7292) (regTwo!32702 r!7292)))))))

(declare-fun b!6153055 () Bool)

(declare-fun e!3749212 () Bool)

(assert (=> b!6153055 (= e!3749212 call!511910)))

(declare-fun bm!511905 () Bool)

(assert (=> bm!511905 (= call!511909 (validRegex!7831 (ite c!1107596 (reg!16424 (ite c!1107347 (reg!16424 r!7292) (ite c!1107348 (regTwo!32703 r!7292) (regTwo!32702 r!7292)))) (ite c!1107597 (regTwo!32703 (ite c!1107347 (reg!16424 r!7292) (ite c!1107348 (regTwo!32703 r!7292) (regTwo!32702 r!7292)))) (regTwo!32702 (ite c!1107347 (reg!16424 r!7292) (ite c!1107348 (regTwo!32703 r!7292) (regTwo!32702 r!7292))))))))))

(declare-fun b!6153056 () Bool)

(declare-fun res!2548550 () Bool)

(assert (=> b!6153056 (=> (not res!2548550) (not e!3749212))))

(assert (=> b!6153056 (= res!2548550 call!511911)))

(assert (=> b!6153056 (= e!3749208 e!3749212)))

(declare-fun bm!511906 () Bool)

(assert (=> bm!511906 (= call!511911 (validRegex!7831 (ite c!1107597 (regOne!32703 (ite c!1107347 (reg!16424 r!7292) (ite c!1107348 (regTwo!32703 r!7292) (regTwo!32702 r!7292)))) (regOne!32702 (ite c!1107347 (reg!16424 r!7292) (ite c!1107348 (regTwo!32703 r!7292) (regTwo!32702 r!7292)))))))))

(assert (= (and d!1927945 (not res!2548548)) b!6153054))

(assert (= (and b!6153054 c!1107596) b!6153050))

(assert (= (and b!6153054 (not c!1107596)) b!6153048))

(assert (= (and b!6153050 res!2548549) b!6153049))

(assert (= (and b!6153048 c!1107597) b!6153056))

(assert (= (and b!6153048 (not c!1107597)) b!6153053))

(assert (= (and b!6153056 res!2548550) b!6153055))

(assert (= (and b!6153053 (not res!2548551)) b!6153052))

(assert (= (and b!6153052 res!2548547) b!6153051))

(assert (= (or b!6153055 b!6153051) bm!511904))

(assert (= (or b!6153056 b!6153052) bm!511906))

(assert (= (or b!6153049 bm!511904) bm!511905))

(declare-fun m!6992276 () Bool)

(assert (=> b!6153050 m!6992276))

(declare-fun m!6992278 () Bool)

(assert (=> bm!511905 m!6992278))

(declare-fun m!6992280 () Bool)

(assert (=> bm!511906 m!6992280))

(assert (=> bm!511731 d!1927945))

(declare-fun b!6153065 () Bool)

(declare-fun e!3749218 () List!64586)

(assert (=> b!6153065 (= e!3749218 (t!378075 s!2326))))

(declare-fun b!6153066 () Bool)

(assert (=> b!6153066 (= e!3749218 (Cons!64462 (h!70910 (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462))) (++!14181 (t!378075 (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462))) (t!378075 s!2326))))))

(declare-fun b!6153068 () Bool)

(declare-fun e!3749217 () Bool)

(declare-fun lt!2334672 () List!64586)

(assert (=> b!6153068 (= e!3749217 (or (not (= (t!378075 s!2326) Nil!64462)) (= lt!2334672 (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462)))))))

(declare-fun d!1927947 () Bool)

(assert (=> d!1927947 e!3749217))

(declare-fun res!2548557 () Bool)

(assert (=> d!1927947 (=> (not res!2548557) (not e!3749217))))

(declare-fun content!12013 (List!64586) (InoxSet C!32460))

(assert (=> d!1927947 (= res!2548557 (= (content!12013 lt!2334672) ((_ map or) (content!12013 (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462))) (content!12013 (t!378075 s!2326)))))))

(assert (=> d!1927947 (= lt!2334672 e!3749218)))

(declare-fun c!1107600 () Bool)

(assert (=> d!1927947 (= c!1107600 ((_ is Nil!64462) (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462))))))

(assert (=> d!1927947 (= (++!14181 (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462)) (t!378075 s!2326)) lt!2334672)))

(declare-fun b!6153067 () Bool)

(declare-fun res!2548556 () Bool)

(assert (=> b!6153067 (=> (not res!2548556) (not e!3749217))))

(declare-fun size!40236 (List!64586) Int)

(assert (=> b!6153067 (= res!2548556 (= (size!40236 lt!2334672) (+ (size!40236 (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462))) (size!40236 (t!378075 s!2326)))))))

(assert (= (and d!1927947 c!1107600) b!6153065))

(assert (= (and d!1927947 (not c!1107600)) b!6153066))

(assert (= (and d!1927947 res!2548557) b!6153067))

(assert (= (and b!6153067 res!2548556) b!6153068))

(declare-fun m!6992282 () Bool)

(assert (=> b!6153066 m!6992282))

(declare-fun m!6992284 () Bool)

(assert (=> d!1927947 m!6992284))

(assert (=> d!1927947 m!6991406))

(declare-fun m!6992286 () Bool)

(assert (=> d!1927947 m!6992286))

(declare-fun m!6992288 () Bool)

(assert (=> d!1927947 m!6992288))

(declare-fun m!6992290 () Bool)

(assert (=> b!6153067 m!6992290))

(assert (=> b!6153067 m!6991406))

(declare-fun m!6992292 () Bool)

(assert (=> b!6153067 m!6992292))

(declare-fun m!6992294 () Bool)

(assert (=> b!6153067 m!6992294))

(assert (=> b!6151936 d!1927947))

(declare-fun b!6153069 () Bool)

(declare-fun e!3749220 () List!64586)

(assert (=> b!6153069 (= e!3749220 (Cons!64462 (h!70910 s!2326) Nil!64462))))

(declare-fun b!6153070 () Bool)

(assert (=> b!6153070 (= e!3749220 (Cons!64462 (h!70910 Nil!64462) (++!14181 (t!378075 Nil!64462) (Cons!64462 (h!70910 s!2326) Nil!64462))))))

(declare-fun b!6153072 () Bool)

(declare-fun e!3749219 () Bool)

(declare-fun lt!2334673 () List!64586)

(assert (=> b!6153072 (= e!3749219 (or (not (= (Cons!64462 (h!70910 s!2326) Nil!64462) Nil!64462)) (= lt!2334673 Nil!64462)))))

(declare-fun d!1927949 () Bool)

(assert (=> d!1927949 e!3749219))

(declare-fun res!2548559 () Bool)

(assert (=> d!1927949 (=> (not res!2548559) (not e!3749219))))

(assert (=> d!1927949 (= res!2548559 (= (content!12013 lt!2334673) ((_ map or) (content!12013 Nil!64462) (content!12013 (Cons!64462 (h!70910 s!2326) Nil!64462)))))))

(assert (=> d!1927949 (= lt!2334673 e!3749220)))

(declare-fun c!1107601 () Bool)

(assert (=> d!1927949 (= c!1107601 ((_ is Nil!64462) Nil!64462))))

(assert (=> d!1927949 (= (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462)) lt!2334673)))

(declare-fun b!6153071 () Bool)

(declare-fun res!2548558 () Bool)

(assert (=> b!6153071 (=> (not res!2548558) (not e!3749219))))

(assert (=> b!6153071 (= res!2548558 (= (size!40236 lt!2334673) (+ (size!40236 Nil!64462) (size!40236 (Cons!64462 (h!70910 s!2326) Nil!64462)))))))

(assert (= (and d!1927949 c!1107601) b!6153069))

(assert (= (and d!1927949 (not c!1107601)) b!6153070))

(assert (= (and d!1927949 res!2548559) b!6153071))

(assert (= (and b!6153071 res!2548558) b!6153072))

(declare-fun m!6992296 () Bool)

(assert (=> b!6153070 m!6992296))

(declare-fun m!6992298 () Bool)

(assert (=> d!1927949 m!6992298))

(declare-fun m!6992300 () Bool)

(assert (=> d!1927949 m!6992300))

(declare-fun m!6992302 () Bool)

(assert (=> d!1927949 m!6992302))

(declare-fun m!6992304 () Bool)

(assert (=> b!6153071 m!6992304))

(declare-fun m!6992306 () Bool)

(assert (=> b!6153071 m!6992306))

(declare-fun m!6992308 () Bool)

(assert (=> b!6153071 m!6992308))

(assert (=> b!6151936 d!1927949))

(declare-fun d!1927951 () Bool)

(assert (=> d!1927951 (= (++!14181 (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462)) (t!378075 s!2326)) s!2326)))

(declare-fun lt!2334676 () Unit!157549)

(declare-fun choose!45738 (List!64586 C!32460 List!64586 List!64586) Unit!157549)

(assert (=> d!1927951 (= lt!2334676 (choose!45738 Nil!64462 (h!70910 s!2326) (t!378075 s!2326) s!2326))))

(assert (=> d!1927951 (= (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) (t!378075 s!2326))) s!2326)))

(assert (=> d!1927951 (= (lemmaMoveElementToOtherListKeepsConcatEq!2276 Nil!64462 (h!70910 s!2326) (t!378075 s!2326) s!2326) lt!2334676)))

(declare-fun bs!1525207 () Bool)

(assert (= bs!1525207 d!1927951))

(assert (=> bs!1525207 m!6991406))

(assert (=> bs!1525207 m!6991406))

(assert (=> bs!1525207 m!6991408))

(declare-fun m!6992310 () Bool)

(assert (=> bs!1525207 m!6992310))

(declare-fun m!6992312 () Bool)

(assert (=> bs!1525207 m!6992312))

(assert (=> b!6151936 d!1927951))

(declare-fun b!6153073 () Bool)

(declare-fun e!3749225 () Option!15986)

(assert (=> b!6153073 (= e!3749225 (Some!15985 (tuple2!66149 (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462)) (t!378075 s!2326))))))

(declare-fun b!6153074 () Bool)

(declare-fun res!2548564 () Bool)

(declare-fun e!3749222 () Bool)

(assert (=> b!6153074 (=> (not res!2548564) (not e!3749222))))

(declare-fun lt!2334679 () Option!15986)

(assert (=> b!6153074 (= res!2548564 (matchR!8278 (regTwo!32702 r!7292) (_2!36377 (get!22244 lt!2334679))))))

(declare-fun b!6153075 () Bool)

(declare-fun e!3749223 () Option!15986)

(assert (=> b!6153075 (= e!3749223 None!15985)))

(declare-fun b!6153076 () Bool)

(assert (=> b!6153076 (= e!3749222 (= (++!14181 (_1!36377 (get!22244 lt!2334679)) (_2!36377 (get!22244 lt!2334679))) s!2326))))

(declare-fun d!1927953 () Bool)

(declare-fun e!3749221 () Bool)

(assert (=> d!1927953 e!3749221))

(declare-fun res!2548563 () Bool)

(assert (=> d!1927953 (=> res!2548563 e!3749221)))

(assert (=> d!1927953 (= res!2548563 e!3749222)))

(declare-fun res!2548562 () Bool)

(assert (=> d!1927953 (=> (not res!2548562) (not e!3749222))))

(assert (=> d!1927953 (= res!2548562 (isDefined!12689 lt!2334679))))

(assert (=> d!1927953 (= lt!2334679 e!3749225)))

(declare-fun c!1107603 () Bool)

(declare-fun e!3749224 () Bool)

(assert (=> d!1927953 (= c!1107603 e!3749224)))

(declare-fun res!2548561 () Bool)

(assert (=> d!1927953 (=> (not res!2548561) (not e!3749224))))

(assert (=> d!1927953 (= res!2548561 (matchR!8278 (regOne!32702 r!7292) (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462))))))

(assert (=> d!1927953 (validRegex!7831 (regOne!32702 r!7292))))

(assert (=> d!1927953 (= (findConcatSeparation!2400 (regOne!32702 r!7292) (regTwo!32702 r!7292) (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462)) (t!378075 s!2326) s!2326) lt!2334679)))

(declare-fun b!6153077 () Bool)

(assert (=> b!6153077 (= e!3749221 (not (isDefined!12689 lt!2334679)))))

(declare-fun b!6153078 () Bool)

(declare-fun res!2548560 () Bool)

(assert (=> b!6153078 (=> (not res!2548560) (not e!3749222))))

(assert (=> b!6153078 (= res!2548560 (matchR!8278 (regOne!32702 r!7292) (_1!36377 (get!22244 lt!2334679))))))

(declare-fun b!6153079 () Bool)

(declare-fun lt!2334677 () Unit!157549)

(declare-fun lt!2334678 () Unit!157549)

(assert (=> b!6153079 (= lt!2334677 lt!2334678)))

(assert (=> b!6153079 (= (++!14181 (++!14181 (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462)) (Cons!64462 (h!70910 (t!378075 s!2326)) Nil!64462)) (t!378075 (t!378075 s!2326))) s!2326)))

(assert (=> b!6153079 (= lt!2334678 (lemmaMoveElementToOtherListKeepsConcatEq!2276 (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462)) (h!70910 (t!378075 s!2326)) (t!378075 (t!378075 s!2326)) s!2326))))

(assert (=> b!6153079 (= e!3749223 (findConcatSeparation!2400 (regOne!32702 r!7292) (regTwo!32702 r!7292) (++!14181 (++!14181 Nil!64462 (Cons!64462 (h!70910 s!2326) Nil!64462)) (Cons!64462 (h!70910 (t!378075 s!2326)) Nil!64462)) (t!378075 (t!378075 s!2326)) s!2326))))

(declare-fun b!6153080 () Bool)

(assert (=> b!6153080 (= e!3749224 (matchR!8278 (regTwo!32702 r!7292) (t!378075 s!2326)))))

(declare-fun b!6153081 () Bool)

(assert (=> b!6153081 (= e!3749225 e!3749223)))

(declare-fun c!1107602 () Bool)

(assert (=> b!6153081 (= c!1107602 ((_ is Nil!64462) (t!378075 s!2326)))))

(assert (= (and d!1927953 res!2548561) b!6153080))

(assert (= (and d!1927953 c!1107603) b!6153073))

(assert (= (and d!1927953 (not c!1107603)) b!6153081))

(assert (= (and b!6153081 c!1107602) b!6153075))

(assert (= (and b!6153081 (not c!1107602)) b!6153079))

(assert (= (and d!1927953 res!2548562) b!6153078))

(assert (= (and b!6153078 res!2548560) b!6153074))

(assert (= (and b!6153074 res!2548564) b!6153076))

(assert (= (and d!1927953 (not res!2548563)) b!6153077))

(declare-fun m!6992314 () Bool)

(assert (=> b!6153080 m!6992314))

(declare-fun m!6992316 () Bool)

(assert (=> b!6153078 m!6992316))

(declare-fun m!6992318 () Bool)

(assert (=> b!6153078 m!6992318))

(assert (=> b!6153079 m!6991406))

(declare-fun m!6992320 () Bool)

(assert (=> b!6153079 m!6992320))

(assert (=> b!6153079 m!6992320))

(declare-fun m!6992322 () Bool)

(assert (=> b!6153079 m!6992322))

(assert (=> b!6153079 m!6991406))

(declare-fun m!6992324 () Bool)

(assert (=> b!6153079 m!6992324))

(assert (=> b!6153079 m!6992320))

(declare-fun m!6992326 () Bool)

(assert (=> b!6153079 m!6992326))

(declare-fun m!6992328 () Bool)

(assert (=> b!6153077 m!6992328))

(assert (=> b!6153074 m!6992316))

(declare-fun m!6992330 () Bool)

(assert (=> b!6153074 m!6992330))

(assert (=> b!6153076 m!6992316))

(declare-fun m!6992332 () Bool)

(assert (=> b!6153076 m!6992332))

(assert (=> d!1927953 m!6992328))

(assert (=> d!1927953 m!6991406))

(declare-fun m!6992334 () Bool)

(assert (=> d!1927953 m!6992334))

(assert (=> d!1927953 m!6991422))

(assert (=> b!6151936 d!1927953))

(declare-fun b!6153082 () Bool)

(declare-fun e!3749227 () Bool)

(assert (=> b!6153082 (= e!3749227 (nullable!6088 (h!70908 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334527)))))))))

(declare-fun b!6153083 () Bool)

(declare-fun e!3749226 () (InoxSet Context!10958))

(declare-fun e!3749228 () (InoxSet Context!10958))

(assert (=> b!6153083 (= e!3749226 e!3749228)))

(declare-fun c!1107604 () Bool)

(assert (=> b!6153083 (= c!1107604 ((_ is Cons!64460) (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334527))))))))

(declare-fun b!6153084 () Bool)

(declare-fun call!511912 () (InoxSet Context!10958))

(assert (=> b!6153084 (= e!3749226 ((_ map or) call!511912 (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334527)))))) (h!70910 s!2326))))))

(declare-fun b!6153085 () Bool)

(assert (=> b!6153085 (= e!3749228 call!511912)))

(declare-fun d!1927955 () Bool)

(declare-fun c!1107605 () Bool)

(assert (=> d!1927955 (= c!1107605 e!3749227)))

(declare-fun res!2548565 () Bool)

(assert (=> d!1927955 (=> (not res!2548565) (not e!3749227))))

(assert (=> d!1927955 (= res!2548565 ((_ is Cons!64460) (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334527))))))))

(assert (=> d!1927955 (= (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 lt!2334527))) (h!70910 s!2326)) e!3749226)))

(declare-fun b!6153086 () Bool)

(assert (=> b!6153086 (= e!3749228 ((as const (Array Context!10958 Bool)) false))))

(declare-fun bm!511907 () Bool)

(assert (=> bm!511907 (= call!511912 (derivationStepZipperDown!1343 (h!70908 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334527))))) (Context!10959 (t!378073 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334527)))))) (h!70910 s!2326)))))

(assert (= (and d!1927955 res!2548565) b!6153082))

(assert (= (and d!1927955 c!1107605) b!6153084))

(assert (= (and d!1927955 (not c!1107605)) b!6153083))

(assert (= (and b!6153083 c!1107604) b!6153085))

(assert (= (and b!6153083 (not c!1107604)) b!6153086))

(assert (= (or b!6153084 b!6153085) bm!511907))

(declare-fun m!6992336 () Bool)

(assert (=> b!6153082 m!6992336))

(declare-fun m!6992338 () Bool)

(assert (=> b!6153084 m!6992338))

(declare-fun m!6992340 () Bool)

(assert (=> bm!511907 m!6992340))

(assert (=> b!6152080 d!1927955))

(declare-fun bs!1525208 () Bool)

(declare-fun b!6153090 () Bool)

(assert (= bs!1525208 (and b!6153090 b!6152155)))

(declare-fun lambda!335595 () Int)

(assert (=> bs!1525208 (not (= lambda!335595 lambda!335544))))

(declare-fun bs!1525209 () Bool)

(assert (= bs!1525209 (and b!6153090 d!1927543)))

(assert (=> bs!1525209 (not (= lambda!335595 lambda!335534))))

(declare-fun bs!1525210 () Bool)

(assert (= bs!1525210 (and b!6153090 b!6151532)))

(assert (=> bs!1525210 (not (= lambda!335595 lambda!335495))))

(declare-fun bs!1525211 () Bool)

(assert (= bs!1525211 (and b!6153090 b!6152150)))

(assert (=> bs!1525211 (= (and (= (reg!16424 (regOne!32703 r!7292)) (reg!16424 r!7292)) (= (regOne!32703 r!7292) r!7292)) (= lambda!335595 lambda!335543))))

(assert (=> bs!1525209 (not (= lambda!335595 lambda!335535))))

(assert (=> bs!1525210 (not (= lambda!335595 lambda!335496))))

(declare-fun bs!1525212 () Bool)

(assert (= bs!1525212 (and b!6153090 d!1927535)))

(assert (=> bs!1525212 (not (= lambda!335595 lambda!335529))))

(assert (=> b!6153090 true))

(assert (=> b!6153090 true))

(declare-fun bs!1525213 () Bool)

(declare-fun b!6153095 () Bool)

(assert (= bs!1525213 (and b!6153095 b!6152155)))

(declare-fun lambda!335596 () Int)

(assert (=> bs!1525213 (= (and (= (regOne!32702 (regOne!32703 r!7292)) (regOne!32702 r!7292)) (= (regTwo!32702 (regOne!32703 r!7292)) (regTwo!32702 r!7292))) (= lambda!335596 lambda!335544))))

(declare-fun bs!1525214 () Bool)

(assert (= bs!1525214 (and b!6153095 d!1927543)))

(assert (=> bs!1525214 (not (= lambda!335596 lambda!335534))))

(declare-fun bs!1525215 () Bool)

(assert (= bs!1525215 (and b!6153095 b!6151532)))

(assert (=> bs!1525215 (not (= lambda!335596 lambda!335495))))

(declare-fun bs!1525216 () Bool)

(assert (= bs!1525216 (and b!6153095 b!6152150)))

(assert (=> bs!1525216 (not (= lambda!335596 lambda!335543))))

(assert (=> bs!1525214 (= (and (= (regOne!32702 (regOne!32703 r!7292)) (regOne!32702 r!7292)) (= (regTwo!32702 (regOne!32703 r!7292)) (regTwo!32702 r!7292))) (= lambda!335596 lambda!335535))))

(declare-fun bs!1525217 () Bool)

(assert (= bs!1525217 (and b!6153095 b!6153090)))

(assert (=> bs!1525217 (not (= lambda!335596 lambda!335595))))

(assert (=> bs!1525215 (= (and (= (regOne!32702 (regOne!32703 r!7292)) (regOne!32702 r!7292)) (= (regTwo!32702 (regOne!32703 r!7292)) (regTwo!32702 r!7292))) (= lambda!335596 lambda!335496))))

(declare-fun bs!1525218 () Bool)

(assert (= bs!1525218 (and b!6153095 d!1927535)))

(assert (=> bs!1525218 (not (= lambda!335596 lambda!335529))))

(assert (=> b!6153095 true))

(assert (=> b!6153095 true))

(declare-fun b!6153087 () Bool)

(declare-fun e!3749230 () Bool)

(assert (=> b!6153087 (= e!3749230 (matchRSpec!3196 (regTwo!32703 (regOne!32703 r!7292)) s!2326))))

(declare-fun call!511913 () Bool)

(declare-fun bm!511908 () Bool)

(declare-fun c!1107609 () Bool)

(assert (=> bm!511908 (= call!511913 (Exists!3165 (ite c!1107609 lambda!335595 lambda!335596)))))

(declare-fun b!6153088 () Bool)

(declare-fun c!1107608 () Bool)

(assert (=> b!6153088 (= c!1107608 ((_ is Union!16095) (regOne!32703 r!7292)))))

(declare-fun e!3749233 () Bool)

(declare-fun e!3749232 () Bool)

(assert (=> b!6153088 (= e!3749233 e!3749232)))

(declare-fun bm!511909 () Bool)

(declare-fun call!511914 () Bool)

(assert (=> bm!511909 (= call!511914 (isEmpty!36424 s!2326))))

(declare-fun d!1927957 () Bool)

(declare-fun c!1107607 () Bool)

(assert (=> d!1927957 (= c!1107607 ((_ is EmptyExpr!16095) (regOne!32703 r!7292)))))

(declare-fun e!3749234 () Bool)

(assert (=> d!1927957 (= (matchRSpec!3196 (regOne!32703 r!7292) s!2326) e!3749234)))

(declare-fun b!6153089 () Bool)

(declare-fun c!1107606 () Bool)

(assert (=> b!6153089 (= c!1107606 ((_ is ElementMatch!16095) (regOne!32703 r!7292)))))

(declare-fun e!3749235 () Bool)

(assert (=> b!6153089 (= e!3749235 e!3749233)))

(declare-fun e!3749231 () Bool)

(assert (=> b!6153090 (= e!3749231 call!511913)))

(declare-fun b!6153091 () Bool)

(declare-fun res!2548568 () Bool)

(assert (=> b!6153091 (=> res!2548568 e!3749231)))

(assert (=> b!6153091 (= res!2548568 call!511914)))

(declare-fun e!3749229 () Bool)

(assert (=> b!6153091 (= e!3749229 e!3749231)))

(declare-fun b!6153092 () Bool)

(assert (=> b!6153092 (= e!3749234 call!511914)))

(declare-fun b!6153093 () Bool)

(assert (=> b!6153093 (= e!3749234 e!3749235)))

(declare-fun res!2548566 () Bool)

(assert (=> b!6153093 (= res!2548566 (not ((_ is EmptyLang!16095) (regOne!32703 r!7292))))))

(assert (=> b!6153093 (=> (not res!2548566) (not e!3749235))))

(declare-fun b!6153094 () Bool)

(assert (=> b!6153094 (= e!3749232 e!3749230)))

(declare-fun res!2548567 () Bool)

(assert (=> b!6153094 (= res!2548567 (matchRSpec!3196 (regOne!32703 (regOne!32703 r!7292)) s!2326))))

(assert (=> b!6153094 (=> res!2548567 e!3749230)))

(assert (=> b!6153095 (= e!3749229 call!511913)))

(declare-fun b!6153096 () Bool)

(assert (=> b!6153096 (= e!3749232 e!3749229)))

(assert (=> b!6153096 (= c!1107609 ((_ is Star!16095) (regOne!32703 r!7292)))))

(declare-fun b!6153097 () Bool)

(assert (=> b!6153097 (= e!3749233 (= s!2326 (Cons!64462 (c!1107191 (regOne!32703 r!7292)) Nil!64462)))))

(assert (= (and d!1927957 c!1107607) b!6153092))

(assert (= (and d!1927957 (not c!1107607)) b!6153093))

(assert (= (and b!6153093 res!2548566) b!6153089))

(assert (= (and b!6153089 c!1107606) b!6153097))

(assert (= (and b!6153089 (not c!1107606)) b!6153088))

(assert (= (and b!6153088 c!1107608) b!6153094))

(assert (= (and b!6153088 (not c!1107608)) b!6153096))

(assert (= (and b!6153094 (not res!2548567)) b!6153087))

(assert (= (and b!6153096 c!1107609) b!6153091))

(assert (= (and b!6153096 (not c!1107609)) b!6153095))

(assert (= (and b!6153091 (not res!2548568)) b!6153090))

(assert (= (or b!6153090 b!6153095) bm!511908))

(assert (= (or b!6153092 b!6153091) bm!511909))

(declare-fun m!6992342 () Bool)

(assert (=> b!6153087 m!6992342))

(declare-fun m!6992344 () Bool)

(assert (=> bm!511908 m!6992344))

(assert (=> bm!511909 m!6991554))

(declare-fun m!6992346 () Bool)

(assert (=> b!6153094 m!6992346))

(assert (=> b!6152154 d!1927957))

(declare-fun d!1927959 () Bool)

(declare-fun c!1107610 () Bool)

(assert (=> d!1927959 (= c!1107610 (isEmpty!36424 (tail!11796 (t!378075 s!2326))))))

(declare-fun e!3749236 () Bool)

(assert (=> d!1927959 (= (matchZipper!2107 (derivationStepZipper!2068 lt!2334542 (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))) e!3749236)))

(declare-fun b!6153098 () Bool)

(assert (=> b!6153098 (= e!3749236 (nullableZipper!1876 (derivationStepZipper!2068 lt!2334542 (head!12711 (t!378075 s!2326)))))))

(declare-fun b!6153099 () Bool)

(assert (=> b!6153099 (= e!3749236 (matchZipper!2107 (derivationStepZipper!2068 (derivationStepZipper!2068 lt!2334542 (head!12711 (t!378075 s!2326))) (head!12711 (tail!11796 (t!378075 s!2326)))) (tail!11796 (tail!11796 (t!378075 s!2326)))))))

(assert (= (and d!1927959 c!1107610) b!6153098))

(assert (= (and d!1927959 (not c!1107610)) b!6153099))

(assert (=> d!1927959 m!6991260))

(declare-fun m!6992348 () Bool)

(assert (=> d!1927959 m!6992348))

(assert (=> b!6153098 m!6991266))

(declare-fun m!6992350 () Bool)

(assert (=> b!6153098 m!6992350))

(assert (=> b!6153099 m!6991260))

(declare-fun m!6992352 () Bool)

(assert (=> b!6153099 m!6992352))

(assert (=> b!6153099 m!6991266))

(assert (=> b!6153099 m!6992352))

(declare-fun m!6992354 () Bool)

(assert (=> b!6153099 m!6992354))

(assert (=> b!6153099 m!6991260))

(declare-fun m!6992356 () Bool)

(assert (=> b!6153099 m!6992356))

(assert (=> b!6153099 m!6992354))

(assert (=> b!6153099 m!6992356))

(declare-fun m!6992358 () Bool)

(assert (=> b!6153099 m!6992358))

(assert (=> b!6151799 d!1927959))

(declare-fun bs!1525219 () Bool)

(declare-fun d!1927961 () Bool)

(assert (= bs!1525219 (and d!1927961 b!6151542)))

(declare-fun lambda!335599 () Int)

(assert (=> bs!1525219 (= (= (head!12711 (t!378075 s!2326)) (h!70910 s!2326)) (= lambda!335599 lambda!335497))))

(assert (=> d!1927961 true))

(assert (=> d!1927961 (= (derivationStepZipper!2068 lt!2334542 (head!12711 (t!378075 s!2326))) (flatMap!1600 lt!2334542 lambda!335599))))

(declare-fun bs!1525220 () Bool)

(assert (= bs!1525220 d!1927961))

(declare-fun m!6992360 () Bool)

(assert (=> bs!1525220 m!6992360))

(assert (=> b!6151799 d!1927961))

(declare-fun d!1927963 () Bool)

(assert (=> d!1927963 (= (head!12711 (t!378075 s!2326)) (h!70910 (t!378075 s!2326)))))

(assert (=> b!6151799 d!1927963))

(declare-fun d!1927965 () Bool)

(assert (=> d!1927965 (= (tail!11796 (t!378075 s!2326)) (t!378075 (t!378075 s!2326)))))

(assert (=> b!6151799 d!1927965))

(declare-fun d!1927967 () Bool)

(declare-fun res!2548569 () Bool)

(declare-fun e!3749237 () Bool)

(assert (=> d!1927967 (=> res!2548569 e!3749237)))

(assert (=> d!1927967 (= res!2548569 ((_ is Nil!64460) (exprs!5979 setElem!41652)))))

(assert (=> d!1927967 (= (forall!15216 (exprs!5979 setElem!41652) lambda!335538) e!3749237)))

(declare-fun b!6153102 () Bool)

(declare-fun e!3749238 () Bool)

(assert (=> b!6153102 (= e!3749237 e!3749238)))

(declare-fun res!2548570 () Bool)

(assert (=> b!6153102 (=> (not res!2548570) (not e!3749238))))

(assert (=> b!6153102 (= res!2548570 (dynLambda!25412 lambda!335538 (h!70908 (exprs!5979 setElem!41652))))))

(declare-fun b!6153103 () Bool)

(assert (=> b!6153103 (= e!3749238 (forall!15216 (t!378073 (exprs!5979 setElem!41652)) lambda!335538))))

(assert (= (and d!1927967 (not res!2548569)) b!6153102))

(assert (= (and b!6153102 res!2548570) b!6153103))

(declare-fun b_lambda!234209 () Bool)

(assert (=> (not b_lambda!234209) (not b!6153102)))

(declare-fun m!6992362 () Bool)

(assert (=> b!6153102 m!6992362))

(declare-fun m!6992364 () Bool)

(assert (=> b!6153103 m!6992364))

(assert (=> d!1927571 d!1927967))

(declare-fun d!1927969 () Bool)

(assert (=> d!1927969 (= (isEmptyExpr!1512 lt!2334639) ((_ is EmptyExpr!16095) lt!2334639))))

(assert (=> b!6152261 d!1927969))

(assert (=> d!1927569 d!1927559))

(declare-fun d!1927971 () Bool)

(assert (=> d!1927971 (= (flatMap!1600 z!1189 lambda!335497) (dynLambda!25410 lambda!335497 (h!70909 zl!343)))))

(assert (=> d!1927971 true))

(declare-fun _$13!3077 () Unit!157549)

(assert (=> d!1927971 (= (choose!45735 z!1189 (h!70909 zl!343) lambda!335497) _$13!3077)))

(declare-fun b_lambda!234211 () Bool)

(assert (=> (not b_lambda!234211) (not d!1927971)))

(declare-fun bs!1525221 () Bool)

(assert (= bs!1525221 d!1927971))

(assert (=> bs!1525221 m!6991052))

(assert (=> bs!1525221 m!6991496))

(assert (=> d!1927569 d!1927971))

(assert (=> b!6152191 d!1927941))

(declare-fun d!1927973 () Bool)

(assert (=> d!1927973 true))

(assert (=> d!1927973 true))

(declare-fun res!2548573 () Bool)

(assert (=> d!1927973 (= (choose!45731 lambda!335495) res!2548573)))

(assert (=> d!1927533 d!1927973))

(declare-fun d!1927975 () Bool)

(assert (=> d!1927975 (= (isUnion!952 lt!2334633) ((_ is Union!16095) lt!2334633))))

(assert (=> b!6152224 d!1927975))

(declare-fun b!6153104 () Bool)

(declare-fun e!3749240 () Bool)

(assert (=> b!6153104 (= e!3749240 (nullable!6088 (h!70908 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343))))))))))

(declare-fun b!6153105 () Bool)

(declare-fun e!3749239 () (InoxSet Context!10958))

(declare-fun e!3749241 () (InoxSet Context!10958))

(assert (=> b!6153105 (= e!3749239 e!3749241)))

(declare-fun c!1107613 () Bool)

(assert (=> b!6153105 (= c!1107613 ((_ is Cons!64460) (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343)))))))))

(declare-fun b!6153106 () Bool)

(declare-fun call!511915 () (InoxSet Context!10958))

(assert (=> b!6153106 (= e!3749239 ((_ map or) call!511915 (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343))))))) (h!70910 s!2326))))))

(declare-fun b!6153107 () Bool)

(assert (=> b!6153107 (= e!3749241 call!511915)))

(declare-fun d!1927977 () Bool)

(declare-fun c!1107614 () Bool)

(assert (=> d!1927977 (= c!1107614 e!3749240)))

(declare-fun res!2548574 () Bool)

(assert (=> d!1927977 (=> (not res!2548574) (not e!3749240))))

(assert (=> d!1927977 (= res!2548574 ((_ is Cons!64460) (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343)))))))))

(assert (=> d!1927977 (= (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343)))) (h!70910 s!2326)) e!3749239)))

(declare-fun b!6153108 () Bool)

(assert (=> b!6153108 (= e!3749241 ((as const (Array Context!10958 Bool)) false))))

(declare-fun bm!511910 () Bool)

(assert (=> bm!511910 (= call!511915 (derivationStepZipperDown!1343 (h!70908 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343)))))) (Context!10959 (t!378073 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (h!70909 zl!343))))))) (h!70910 s!2326)))))

(assert (= (and d!1927977 res!2548574) b!6153104))

(assert (= (and d!1927977 c!1107614) b!6153106))

(assert (= (and d!1927977 (not c!1107614)) b!6153105))

(assert (= (and b!6153105 c!1107613) b!6153107))

(assert (= (and b!6153105 (not c!1107613)) b!6153108))

(assert (= (or b!6153106 b!6153107) bm!511910))

(declare-fun m!6992366 () Bool)

(assert (=> b!6153104 m!6992366))

(declare-fun m!6992368 () Bool)

(assert (=> b!6153106 m!6992368))

(declare-fun m!6992370 () Bool)

(assert (=> bm!511910 m!6992370))

(assert (=> b!6152070 d!1927977))

(declare-fun b!6153109 () Bool)

(declare-fun e!3749243 () Bool)

(assert (=> b!6153109 (= e!3749243 (nullable!6088 (h!70908 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))))))))))

(declare-fun b!6153110 () Bool)

(declare-fun e!3749242 () (InoxSet Context!10958))

(declare-fun e!3749244 () (InoxSet Context!10958))

(assert (=> b!6153110 (= e!3749242 e!3749244)))

(declare-fun c!1107615 () Bool)

(assert (=> b!6153110 (= c!1107615 ((_ is Cons!64460) (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))))))))

(declare-fun call!511916 () (InoxSet Context!10958))

(declare-fun b!6153111 () Bool)

(assert (=> b!6153111 (= e!3749242 ((_ map or) call!511916 (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))))))) (h!70910 s!2326))))))

(declare-fun b!6153112 () Bool)

(assert (=> b!6153112 (= e!3749244 call!511916)))

(declare-fun d!1927979 () Bool)

(declare-fun c!1107616 () Bool)

(assert (=> d!1927979 (= c!1107616 e!3749243)))

(declare-fun res!2548575 () Bool)

(assert (=> d!1927979 (=> (not res!2548575) (not e!3749243))))

(assert (=> d!1927979 (= res!2548575 ((_ is Cons!64460) (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))))))))

(assert (=> d!1927979 (= (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (h!70910 s!2326)) e!3749242)))

(declare-fun b!6153113 () Bool)

(assert (=> b!6153113 (= e!3749244 ((as const (Array Context!10958 Bool)) false))))

(declare-fun bm!511911 () Bool)

(assert (=> bm!511911 (= call!511916 (derivationStepZipperDown!1343 (h!70908 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))))) (Context!10959 (t!378073 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343))))))))))) (h!70910 s!2326)))))

(assert (= (and d!1927979 res!2548575) b!6153109))

(assert (= (and d!1927979 c!1107616) b!6153111))

(assert (= (and d!1927979 (not c!1107616)) b!6153110))

(assert (= (and b!6153110 c!1107615) b!6153112))

(assert (= (and b!6153110 (not c!1107615)) b!6153113))

(assert (= (or b!6153111 b!6153112) bm!511911))

(declare-fun m!6992372 () Bool)

(assert (=> b!6153109 m!6992372))

(declare-fun m!6992374 () Bool)

(assert (=> b!6153111 m!6992374))

(declare-fun m!6992376 () Bool)

(assert (=> bm!511911 m!6992376))

(assert (=> b!6152065 d!1927979))

(declare-fun d!1927981 () Bool)

(assert (=> d!1927981 (= (isEmpty!36424 s!2326) ((_ is Nil!64462) s!2326))))

(assert (=> bm!511741 d!1927981))

(declare-fun d!1927983 () Bool)

(assert (=> d!1927983 (= (nullable!6088 (h!70908 (exprs!5979 lt!2334535))) (nullableFct!2052 (h!70908 (exprs!5979 lt!2334535))))))

(declare-fun bs!1525222 () Bool)

(assert (= bs!1525222 d!1927983))

(declare-fun m!6992378 () Bool)

(assert (=> bs!1525222 m!6992378))

(assert (=> b!6152073 d!1927983))

(declare-fun d!1927985 () Bool)

(assert (=> d!1927985 (= (head!12712 (unfocusZipperList!1516 zl!343)) (h!70908 (unfocusZipperList!1516 zl!343)))))

(assert (=> b!6152220 d!1927985))

(declare-fun bs!1525223 () Bool)

(declare-fun d!1927987 () Bool)

(assert (= bs!1525223 (and d!1927987 d!1927917)))

(declare-fun lambda!335600 () Int)

(assert (=> bs!1525223 (= lambda!335600 lambda!335594)))

(assert (=> d!1927987 (= (nullableZipper!1876 lt!2334539) (exists!2441 lt!2334539 lambda!335600))))

(declare-fun bs!1525224 () Bool)

(assert (= bs!1525224 d!1927987))

(declare-fun m!6992380 () Bool)

(assert (=> bs!1525224 m!6992380))

(assert (=> b!6152110 d!1927987))

(declare-fun bm!511912 () Bool)

(declare-fun call!511921 () (InoxSet Context!10958))

(declare-fun call!511922 () (InoxSet Context!10958))

(assert (=> bm!511912 (= call!511921 call!511922)))

(declare-fun b!6153114 () Bool)

(declare-fun e!3749248 () (InoxSet Context!10958))

(declare-fun e!3749245 () (InoxSet Context!10958))

(assert (=> b!6153114 (= e!3749248 e!3749245)))

(declare-fun c!1107618 () Bool)

(assert (=> b!6153114 (= c!1107618 ((_ is Union!16095) (h!70908 (exprs!5979 lt!2334535))))))

(declare-fun b!6153115 () Bool)

(declare-fun call!511920 () (InoxSet Context!10958))

(declare-fun call!511919 () (InoxSet Context!10958))

(assert (=> b!6153115 (= e!3749245 ((_ map or) call!511920 call!511919))))

(declare-fun b!6153116 () Bool)

(declare-fun e!3749247 () (InoxSet Context!10958))

(declare-fun e!3749250 () (InoxSet Context!10958))

(assert (=> b!6153116 (= e!3749247 e!3749250)))

(declare-fun c!1107620 () Bool)

(assert (=> b!6153116 (= c!1107620 ((_ is Concat!24940) (h!70908 (exprs!5979 lt!2334535))))))

(declare-fun bm!511913 () Bool)

(declare-fun call!511918 () List!64584)

(declare-fun call!511917 () List!64584)

(assert (=> bm!511913 (= call!511918 call!511917)))

(declare-fun d!1927989 () Bool)

(declare-fun c!1107619 () Bool)

(assert (=> d!1927989 (= c!1107619 (and ((_ is ElementMatch!16095) (h!70908 (exprs!5979 lt!2334535))) (= (c!1107191 (h!70908 (exprs!5979 lt!2334535))) (h!70910 s!2326))))))

(assert (=> d!1927989 (= (derivationStepZipperDown!1343 (h!70908 (exprs!5979 lt!2334535)) (Context!10959 (t!378073 (exprs!5979 lt!2334535))) (h!70910 s!2326)) e!3749248)))

(declare-fun bm!511914 () Bool)

(assert (=> bm!511914 (= call!511922 call!511919)))

(declare-fun b!6153117 () Bool)

(assert (=> b!6153117 (= e!3749250 call!511921)))

(declare-fun b!6153118 () Bool)

(declare-fun e!3749246 () (InoxSet Context!10958))

(assert (=> b!6153118 (= e!3749246 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6153119 () Bool)

(declare-fun c!1107621 () Bool)

(assert (=> b!6153119 (= c!1107621 ((_ is Star!16095) (h!70908 (exprs!5979 lt!2334535))))))

(assert (=> b!6153119 (= e!3749250 e!3749246)))

(declare-fun b!6153120 () Bool)

(assert (=> b!6153120 (= e!3749247 ((_ map or) call!511920 call!511922))))

(declare-fun bm!511915 () Bool)

(declare-fun c!1107617 () Bool)

(assert (=> bm!511915 (= call!511919 (derivationStepZipperDown!1343 (ite c!1107618 (regTwo!32703 (h!70908 (exprs!5979 lt!2334535))) (ite c!1107617 (regTwo!32702 (h!70908 (exprs!5979 lt!2334535))) (ite c!1107620 (regOne!32702 (h!70908 (exprs!5979 lt!2334535))) (reg!16424 (h!70908 (exprs!5979 lt!2334535)))))) (ite (or c!1107618 c!1107617) (Context!10959 (t!378073 (exprs!5979 lt!2334535))) (Context!10959 call!511918)) (h!70910 s!2326)))))

(declare-fun b!6153121 () Bool)

(assert (=> b!6153121 (= e!3749246 call!511921)))

(declare-fun bm!511916 () Bool)

(assert (=> bm!511916 (= call!511917 ($colon$colon!1972 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334535)))) (ite (or c!1107617 c!1107620) (regTwo!32702 (h!70908 (exprs!5979 lt!2334535))) (h!70908 (exprs!5979 lt!2334535)))))))

(declare-fun b!6153122 () Bool)

(declare-fun e!3749249 () Bool)

(assert (=> b!6153122 (= c!1107617 e!3749249)))

(declare-fun res!2548576 () Bool)

(assert (=> b!6153122 (=> (not res!2548576) (not e!3749249))))

(assert (=> b!6153122 (= res!2548576 ((_ is Concat!24940) (h!70908 (exprs!5979 lt!2334535))))))

(assert (=> b!6153122 (= e!3749245 e!3749247)))

(declare-fun b!6153123 () Bool)

(assert (=> b!6153123 (= e!3749248 (store ((as const (Array Context!10958 Bool)) false) (Context!10959 (t!378073 (exprs!5979 lt!2334535))) true))))

(declare-fun bm!511917 () Bool)

(assert (=> bm!511917 (= call!511920 (derivationStepZipperDown!1343 (ite c!1107618 (regOne!32703 (h!70908 (exprs!5979 lt!2334535))) (regOne!32702 (h!70908 (exprs!5979 lt!2334535)))) (ite c!1107618 (Context!10959 (t!378073 (exprs!5979 lt!2334535))) (Context!10959 call!511917)) (h!70910 s!2326)))))

(declare-fun b!6153124 () Bool)

(assert (=> b!6153124 (= e!3749249 (nullable!6088 (regOne!32702 (h!70908 (exprs!5979 lt!2334535)))))))

(assert (= (and d!1927989 c!1107619) b!6153123))

(assert (= (and d!1927989 (not c!1107619)) b!6153114))

(assert (= (and b!6153114 c!1107618) b!6153115))

(assert (= (and b!6153114 (not c!1107618)) b!6153122))

(assert (= (and b!6153122 res!2548576) b!6153124))

(assert (= (and b!6153122 c!1107617) b!6153120))

(assert (= (and b!6153122 (not c!1107617)) b!6153116))

(assert (= (and b!6153116 c!1107620) b!6153117))

(assert (= (and b!6153116 (not c!1107620)) b!6153119))

(assert (= (and b!6153119 c!1107621) b!6153121))

(assert (= (and b!6153119 (not c!1107621)) b!6153118))

(assert (= (or b!6153117 b!6153121) bm!511913))

(assert (= (or b!6153117 b!6153121) bm!511912))

(assert (= (or b!6153120 bm!511913) bm!511916))

(assert (= (or b!6153120 bm!511912) bm!511914))

(assert (= (or b!6153115 bm!511914) bm!511915))

(assert (= (or b!6153115 b!6153120) bm!511917))

(declare-fun m!6992382 () Bool)

(assert (=> b!6153124 m!6992382))

(declare-fun m!6992384 () Bool)

(assert (=> b!6153123 m!6992384))

(declare-fun m!6992386 () Bool)

(assert (=> bm!511915 m!6992386))

(declare-fun m!6992388 () Bool)

(assert (=> bm!511916 m!6992388))

(declare-fun m!6992390 () Bool)

(assert (=> bm!511917 m!6992390))

(assert (=> bm!511722 d!1927989))

(declare-fun d!1927991 () Bool)

(declare-fun c!1107622 () Bool)

(assert (=> d!1927991 (= c!1107622 (isEmpty!36424 (tail!11796 (t!378075 s!2326))))))

(declare-fun e!3749251 () Bool)

(assert (=> d!1927991 (= (matchZipper!2107 (derivationStepZipper!2068 ((_ map or) lt!2334546 lt!2334539) (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))) e!3749251)))

(declare-fun b!6153125 () Bool)

(assert (=> b!6153125 (= e!3749251 (nullableZipper!1876 (derivationStepZipper!2068 ((_ map or) lt!2334546 lt!2334539) (head!12711 (t!378075 s!2326)))))))

(declare-fun b!6153126 () Bool)

(assert (=> b!6153126 (= e!3749251 (matchZipper!2107 (derivationStepZipper!2068 (derivationStepZipper!2068 ((_ map or) lt!2334546 lt!2334539) (head!12711 (t!378075 s!2326))) (head!12711 (tail!11796 (t!378075 s!2326)))) (tail!11796 (tail!11796 (t!378075 s!2326)))))))

(assert (= (and d!1927991 c!1107622) b!6153125))

(assert (= (and d!1927991 (not c!1107622)) b!6153126))

(assert (=> d!1927991 m!6991260))

(assert (=> d!1927991 m!6992348))

(assert (=> b!6153125 m!6991462))

(declare-fun m!6992392 () Bool)

(assert (=> b!6153125 m!6992392))

(assert (=> b!6153126 m!6991260))

(assert (=> b!6153126 m!6992352))

(assert (=> b!6153126 m!6991462))

(assert (=> b!6153126 m!6992352))

(declare-fun m!6992394 () Bool)

(assert (=> b!6153126 m!6992394))

(assert (=> b!6153126 m!6991260))

(assert (=> b!6153126 m!6992356))

(assert (=> b!6153126 m!6992394))

(assert (=> b!6153126 m!6992356))

(declare-fun m!6992396 () Bool)

(assert (=> b!6153126 m!6992396))

(assert (=> b!6152014 d!1927991))

(declare-fun bs!1525225 () Bool)

(declare-fun d!1927993 () Bool)

(assert (= bs!1525225 (and d!1927993 b!6151542)))

(declare-fun lambda!335601 () Int)

(assert (=> bs!1525225 (= (= (head!12711 (t!378075 s!2326)) (h!70910 s!2326)) (= lambda!335601 lambda!335497))))

(declare-fun bs!1525226 () Bool)

(assert (= bs!1525226 (and d!1927993 d!1927961)))

(assert (=> bs!1525226 (= lambda!335601 lambda!335599)))

(assert (=> d!1927993 true))

(assert (=> d!1927993 (= (derivationStepZipper!2068 ((_ map or) lt!2334546 lt!2334539) (head!12711 (t!378075 s!2326))) (flatMap!1600 ((_ map or) lt!2334546 lt!2334539) lambda!335601))))

(declare-fun bs!1525227 () Bool)

(assert (= bs!1525227 d!1927993))

(declare-fun m!6992398 () Bool)

(assert (=> bs!1525227 m!6992398))

(assert (=> b!6152014 d!1927993))

(assert (=> b!6152014 d!1927963))

(assert (=> b!6152014 d!1927965))

(declare-fun bs!1525228 () Bool)

(declare-fun d!1927995 () Bool)

(assert (= bs!1525228 (and d!1927995 d!1927917)))

(declare-fun lambda!335602 () Int)

(assert (=> bs!1525228 (= lambda!335602 lambda!335594)))

(declare-fun bs!1525229 () Bool)

(assert (= bs!1525229 (and d!1927995 d!1927987)))

(assert (=> bs!1525229 (= lambda!335602 lambda!335600)))

(assert (=> d!1927995 (= (nullableZipper!1876 lt!2334524) (exists!2441 lt!2334524 lambda!335602))))

(declare-fun bs!1525230 () Bool)

(assert (= bs!1525230 d!1927995))

(declare-fun m!6992400 () Bool)

(assert (=> bs!1525230 m!6992400))

(assert (=> b!6152010 d!1927995))

(declare-fun d!1927997 () Bool)

(declare-fun res!2548589 () Bool)

(declare-fun e!3749268 () Bool)

(assert (=> d!1927997 (=> res!2548589 e!3749268)))

(assert (=> d!1927997 (= res!2548589 ((_ is EmptyExpr!16095) (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(assert (=> d!1927997 (= (nullableFct!2052 (h!70908 (exprs!5979 (h!70909 zl!343)))) e!3749268)))

(declare-fun b!6153141 () Bool)

(declare-fun e!3749267 () Bool)

(declare-fun call!511928 () Bool)

(assert (=> b!6153141 (= e!3749267 call!511928)))

(declare-fun b!6153142 () Bool)

(declare-fun e!3749269 () Bool)

(assert (=> b!6153142 (= e!3749268 e!3749269)))

(declare-fun res!2548587 () Bool)

(assert (=> b!6153142 (=> (not res!2548587) (not e!3749269))))

(assert (=> b!6153142 (= res!2548587 (and (not ((_ is EmptyLang!16095) (h!70908 (exprs!5979 (h!70909 zl!343))))) (not ((_ is ElementMatch!16095) (h!70908 (exprs!5979 (h!70909 zl!343)))))))))

(declare-fun b!6153143 () Bool)

(declare-fun e!3749266 () Bool)

(assert (=> b!6153143 (= e!3749266 call!511928)))

(declare-fun b!6153144 () Bool)

(declare-fun e!3749265 () Bool)

(declare-fun e!3749264 () Bool)

(assert (=> b!6153144 (= e!3749265 e!3749264)))

(declare-fun c!1107625 () Bool)

(assert (=> b!6153144 (= c!1107625 ((_ is Union!16095) (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6153145 () Bool)

(assert (=> b!6153145 (= e!3749264 e!3749267)))

(declare-fun res!2548590 () Bool)

(declare-fun call!511927 () Bool)

(assert (=> b!6153145 (= res!2548590 call!511927)))

(assert (=> b!6153145 (=> res!2548590 e!3749267)))

(declare-fun b!6153146 () Bool)

(assert (=> b!6153146 (= e!3749269 e!3749265)))

(declare-fun res!2548591 () Bool)

(assert (=> b!6153146 (=> res!2548591 e!3749265)))

(assert (=> b!6153146 (= res!2548591 ((_ is Star!16095) (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun bm!511922 () Bool)

(assert (=> bm!511922 (= call!511928 (nullable!6088 (ite c!1107625 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))))))

(declare-fun bm!511923 () Bool)

(assert (=> bm!511923 (= call!511927 (nullable!6088 (ite c!1107625 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))))))

(declare-fun b!6153147 () Bool)

(assert (=> b!6153147 (= e!3749264 e!3749266)))

(declare-fun res!2548588 () Bool)

(assert (=> b!6153147 (= res!2548588 call!511927)))

(assert (=> b!6153147 (=> (not res!2548588) (not e!3749266))))

(assert (= (and d!1927997 (not res!2548589)) b!6153142))

(assert (= (and b!6153142 res!2548587) b!6153146))

(assert (= (and b!6153146 (not res!2548591)) b!6153144))

(assert (= (and b!6153144 c!1107625) b!6153145))

(assert (= (and b!6153144 (not c!1107625)) b!6153147))

(assert (= (and b!6153145 (not res!2548590)) b!6153141))

(assert (= (and b!6153147 res!2548588) b!6153143))

(assert (= (or b!6153141 b!6153143) bm!511922))

(assert (= (or b!6153145 b!6153147) bm!511923))

(declare-fun m!6992402 () Bool)

(assert (=> bm!511922 m!6992402))

(declare-fun m!6992404 () Bool)

(assert (=> bm!511923 m!6992404))

(assert (=> d!1927567 d!1927997))

(declare-fun b!6153148 () Bool)

(declare-fun e!3749271 () List!64586)

(assert (=> b!6153148 (= e!3749271 (_2!36377 (get!22244 lt!2334607)))))

(declare-fun b!6153149 () Bool)

(assert (=> b!6153149 (= e!3749271 (Cons!64462 (h!70910 (_1!36377 (get!22244 lt!2334607))) (++!14181 (t!378075 (_1!36377 (get!22244 lt!2334607))) (_2!36377 (get!22244 lt!2334607)))))))

(declare-fun b!6153151 () Bool)

(declare-fun e!3749270 () Bool)

(declare-fun lt!2334680 () List!64586)

(assert (=> b!6153151 (= e!3749270 (or (not (= (_2!36377 (get!22244 lt!2334607)) Nil!64462)) (= lt!2334680 (_1!36377 (get!22244 lt!2334607)))))))

(declare-fun d!1927999 () Bool)

(assert (=> d!1927999 e!3749270))

(declare-fun res!2548593 () Bool)

(assert (=> d!1927999 (=> (not res!2548593) (not e!3749270))))

(assert (=> d!1927999 (= res!2548593 (= (content!12013 lt!2334680) ((_ map or) (content!12013 (_1!36377 (get!22244 lt!2334607))) (content!12013 (_2!36377 (get!22244 lt!2334607))))))))

(assert (=> d!1927999 (= lt!2334680 e!3749271)))

(declare-fun c!1107626 () Bool)

(assert (=> d!1927999 (= c!1107626 ((_ is Nil!64462) (_1!36377 (get!22244 lt!2334607))))))

(assert (=> d!1927999 (= (++!14181 (_1!36377 (get!22244 lt!2334607)) (_2!36377 (get!22244 lt!2334607))) lt!2334680)))

(declare-fun b!6153150 () Bool)

(declare-fun res!2548592 () Bool)

(assert (=> b!6153150 (=> (not res!2548592) (not e!3749270))))

(assert (=> b!6153150 (= res!2548592 (= (size!40236 lt!2334680) (+ (size!40236 (_1!36377 (get!22244 lt!2334607))) (size!40236 (_2!36377 (get!22244 lt!2334607))))))))

(assert (= (and d!1927999 c!1107626) b!6153148))

(assert (= (and d!1927999 (not c!1107626)) b!6153149))

(assert (= (and d!1927999 res!2548593) b!6153150))

(assert (= (and b!6153150 res!2548592) b!6153151))

(declare-fun m!6992406 () Bool)

(assert (=> b!6153149 m!6992406))

(declare-fun m!6992408 () Bool)

(assert (=> d!1927999 m!6992408))

(declare-fun m!6992410 () Bool)

(assert (=> d!1927999 m!6992410))

(declare-fun m!6992412 () Bool)

(assert (=> d!1927999 m!6992412))

(declare-fun m!6992414 () Bool)

(assert (=> b!6153150 m!6992414))

(declare-fun m!6992416 () Bool)

(assert (=> b!6153150 m!6992416))

(declare-fun m!6992418 () Bool)

(assert (=> b!6153150 m!6992418))

(assert (=> b!6151933 d!1927999))

(declare-fun d!1928001 () Bool)

(assert (=> d!1928001 (= (get!22244 lt!2334607) (v!52124 lt!2334607))))

(assert (=> b!6151933 d!1928001))

(declare-fun d!1928003 () Bool)

(declare-fun res!2548598 () Bool)

(declare-fun e!3749276 () Bool)

(assert (=> d!1928003 (=> res!2548598 e!3749276)))

(assert (=> d!1928003 (= res!2548598 ((_ is Nil!64461) lt!2334624))))

(assert (=> d!1928003 (= (noDuplicate!1942 lt!2334624) e!3749276)))

(declare-fun b!6153156 () Bool)

(declare-fun e!3749277 () Bool)

(assert (=> b!6153156 (= e!3749276 e!3749277)))

(declare-fun res!2548599 () Bool)

(assert (=> b!6153156 (=> (not res!2548599) (not e!3749277))))

(declare-fun contains!20054 (List!64585 Context!10958) Bool)

(assert (=> b!6153156 (= res!2548599 (not (contains!20054 (t!378074 lt!2334624) (h!70909 lt!2334624))))))

(declare-fun b!6153157 () Bool)

(assert (=> b!6153157 (= e!3749277 (noDuplicate!1942 (t!378074 lt!2334624)))))

(assert (= (and d!1928003 (not res!2548598)) b!6153156))

(assert (= (and b!6153156 res!2548599) b!6153157))

(declare-fun m!6992420 () Bool)

(assert (=> b!6153156 m!6992420))

(declare-fun m!6992422 () Bool)

(assert (=> b!6153157 m!6992422))

(assert (=> d!1927593 d!1928003))

(declare-fun d!1928005 () Bool)

(declare-fun e!3749286 () Bool)

(assert (=> d!1928005 e!3749286))

(declare-fun res!2548605 () Bool)

(assert (=> d!1928005 (=> (not res!2548605) (not e!3749286))))

(declare-fun res!2548604 () List!64585)

(assert (=> d!1928005 (= res!2548605 (noDuplicate!1942 res!2548604))))

(declare-fun e!3749284 () Bool)

(assert (=> d!1928005 e!3749284))

(assert (=> d!1928005 (= (choose!45736 z!1189) res!2548604)))

(declare-fun b!6153165 () Bool)

(declare-fun e!3749285 () Bool)

(declare-fun tp!1718534 () Bool)

(assert (=> b!6153165 (= e!3749285 tp!1718534)))

(declare-fun b!6153164 () Bool)

(declare-fun tp!1718533 () Bool)

(assert (=> b!6153164 (= e!3749284 (and (inv!83484 (h!70909 res!2548604)) e!3749285 tp!1718533))))

(declare-fun b!6153166 () Bool)

(assert (=> b!6153166 (= e!3749286 (= (content!12012 res!2548604) z!1189))))

(assert (= b!6153164 b!6153165))

(assert (= (and d!1928005 ((_ is Cons!64461) res!2548604)) b!6153164))

(assert (= (and d!1928005 res!2548605) b!6153166))

(declare-fun m!6992424 () Bool)

(assert (=> d!1928005 m!6992424))

(declare-fun m!6992426 () Bool)

(assert (=> b!6153164 m!6992426))

(declare-fun m!6992428 () Bool)

(assert (=> b!6153166 m!6992428))

(assert (=> d!1927593 d!1928005))

(declare-fun d!1928007 () Bool)

(declare-fun res!2548606 () Bool)

(declare-fun e!3749287 () Bool)

(assert (=> d!1928007 (=> res!2548606 e!3749287)))

(assert (=> d!1928007 (= res!2548606 ((_ is Nil!64460) lt!2334636))))

(assert (=> d!1928007 (= (forall!15216 lt!2334636 lambda!335550) e!3749287)))

(declare-fun b!6153167 () Bool)

(declare-fun e!3749288 () Bool)

(assert (=> b!6153167 (= e!3749287 e!3749288)))

(declare-fun res!2548607 () Bool)

(assert (=> b!6153167 (=> (not res!2548607) (not e!3749288))))

(assert (=> b!6153167 (= res!2548607 (dynLambda!25412 lambda!335550 (h!70908 lt!2334636)))))

(declare-fun b!6153168 () Bool)

(assert (=> b!6153168 (= e!3749288 (forall!15216 (t!378073 lt!2334636) lambda!335550))))

(assert (= (and d!1928007 (not res!2548606)) b!6153167))

(assert (= (and b!6153167 res!2548607) b!6153168))

(declare-fun b_lambda!234213 () Bool)

(assert (=> (not b_lambda!234213) (not b!6153167)))

(declare-fun m!6992430 () Bool)

(assert (=> b!6153167 m!6992430))

(declare-fun m!6992432 () Bool)

(assert (=> b!6153168 m!6992432))

(assert (=> d!1927603 d!1928007))

(assert (=> b!6152234 d!1927605))

(declare-fun bs!1525231 () Bool)

(declare-fun d!1928009 () Bool)

(assert (= bs!1525231 (and d!1928009 d!1927601)))

(declare-fun lambda!335603 () Int)

(assert (=> bs!1525231 (= lambda!335603 lambda!335547)))

(declare-fun bs!1525232 () Bool)

(assert (= bs!1525232 (and d!1928009 d!1927571)))

(assert (=> bs!1525232 (= lambda!335603 lambda!335538)))

(declare-fun bs!1525233 () Bool)

(assert (= bs!1525233 (and d!1928009 d!1927605)))

(assert (=> bs!1525233 (= lambda!335603 lambda!335553)))

(declare-fun bs!1525234 () Bool)

(assert (= bs!1525234 (and d!1928009 d!1927607)))

(assert (=> bs!1525234 (= lambda!335603 lambda!335554)))

(declare-fun bs!1525235 () Bool)

(assert (= bs!1525235 (and d!1928009 d!1927617)))

(assert (=> bs!1525235 (= lambda!335603 lambda!335555)))

(declare-fun bs!1525236 () Bool)

(assert (= bs!1525236 (and d!1928009 d!1927603)))

(assert (=> bs!1525236 (= lambda!335603 lambda!335550)))

(declare-fun lt!2334681 () List!64584)

(assert (=> d!1928009 (forall!15216 lt!2334681 lambda!335603)))

(declare-fun e!3749289 () List!64584)

(assert (=> d!1928009 (= lt!2334681 e!3749289)))

(declare-fun c!1107627 () Bool)

(assert (=> d!1928009 (= c!1107627 ((_ is Cons!64461) (t!378074 zl!343)))))

(assert (=> d!1928009 (= (unfocusZipperList!1516 (t!378074 zl!343)) lt!2334681)))

(declare-fun b!6153169 () Bool)

(assert (=> b!6153169 (= e!3749289 (Cons!64460 (generalisedConcat!1692 (exprs!5979 (h!70909 (t!378074 zl!343)))) (unfocusZipperList!1516 (t!378074 (t!378074 zl!343)))))))

(declare-fun b!6153170 () Bool)

(assert (=> b!6153170 (= e!3749289 Nil!64460)))

(assert (= (and d!1928009 c!1107627) b!6153169))

(assert (= (and d!1928009 (not c!1107627)) b!6153170))

(declare-fun m!6992434 () Bool)

(assert (=> d!1928009 m!6992434))

(declare-fun m!6992436 () Bool)

(assert (=> b!6153169 m!6992436))

(declare-fun m!6992438 () Bool)

(assert (=> b!6153169 m!6992438))

(assert (=> b!6152234 d!1928009))

(assert (=> d!1927597 d!1927981))

(assert (=> d!1927597 d!1927589))

(declare-fun b!6153172 () Bool)

(declare-fun e!3749296 () Bool)

(declare-fun e!3749294 () Bool)

(assert (=> b!6153172 (= e!3749296 e!3749294)))

(declare-fun res!2548613 () Bool)

(assert (=> b!6153172 (=> (not res!2548613) (not e!3749294))))

(declare-fun lt!2334682 () Bool)

(assert (=> b!6153172 (= res!2548613 (not lt!2334682))))

(declare-fun bm!511924 () Bool)

(declare-fun call!511929 () Bool)

(assert (=> bm!511924 (= call!511929 (isEmpty!36424 s!2326))))

(declare-fun b!6153173 () Bool)

(declare-fun res!2548612 () Bool)

(declare-fun e!3749290 () Bool)

(assert (=> b!6153173 (=> res!2548612 e!3749290)))

(assert (=> b!6153173 (= res!2548612 (not (isEmpty!36424 (tail!11796 s!2326))))))

(declare-fun b!6153174 () Bool)

(declare-fun e!3749295 () Bool)

(assert (=> b!6153174 (= e!3749295 (not lt!2334682))))

(declare-fun b!6153175 () Bool)

(declare-fun res!2548609 () Bool)

(assert (=> b!6153175 (=> res!2548609 e!3749296)))

(declare-fun e!3749292 () Bool)

(assert (=> b!6153175 (= res!2548609 e!3749292)))

(declare-fun res!2548615 () Bool)

(assert (=> b!6153175 (=> (not res!2548615) (not e!3749292))))

(assert (=> b!6153175 (= res!2548615 lt!2334682)))

(declare-fun b!6153176 () Bool)

(assert (=> b!6153176 (= e!3749292 (= (head!12711 s!2326) (c!1107191 (regTwo!32702 r!7292))))))

(declare-fun b!6153177 () Bool)

(declare-fun e!3749293 () Bool)

(assert (=> b!6153177 (= e!3749293 e!3749295)))

(declare-fun c!1107628 () Bool)

(assert (=> b!6153177 (= c!1107628 ((_ is EmptyLang!16095) (regTwo!32702 r!7292)))))

(declare-fun b!6153178 () Bool)

(assert (=> b!6153178 (= e!3749290 (not (= (head!12711 s!2326) (c!1107191 (regTwo!32702 r!7292)))))))

(declare-fun b!6153171 () Bool)

(declare-fun res!2548614 () Bool)

(assert (=> b!6153171 (=> (not res!2548614) (not e!3749292))))

(assert (=> b!6153171 (= res!2548614 (isEmpty!36424 (tail!11796 s!2326)))))

(declare-fun d!1928011 () Bool)

(assert (=> d!1928011 e!3749293))

(declare-fun c!1107629 () Bool)

(assert (=> d!1928011 (= c!1107629 ((_ is EmptyExpr!16095) (regTwo!32702 r!7292)))))

(declare-fun e!3749291 () Bool)

(assert (=> d!1928011 (= lt!2334682 e!3749291)))

(declare-fun c!1107630 () Bool)

(assert (=> d!1928011 (= c!1107630 (isEmpty!36424 s!2326))))

(assert (=> d!1928011 (validRegex!7831 (regTwo!32702 r!7292))))

(assert (=> d!1928011 (= (matchR!8278 (regTwo!32702 r!7292) s!2326) lt!2334682)))

(declare-fun b!6153179 () Bool)

(assert (=> b!6153179 (= e!3749291 (nullable!6088 (regTwo!32702 r!7292)))))

(declare-fun b!6153180 () Bool)

(declare-fun res!2548611 () Bool)

(assert (=> b!6153180 (=> res!2548611 e!3749296)))

(assert (=> b!6153180 (= res!2548611 (not ((_ is ElementMatch!16095) (regTwo!32702 r!7292))))))

(assert (=> b!6153180 (= e!3749295 e!3749296)))

(declare-fun b!6153181 () Bool)

(declare-fun res!2548608 () Bool)

(assert (=> b!6153181 (=> (not res!2548608) (not e!3749292))))

(assert (=> b!6153181 (= res!2548608 (not call!511929))))

(declare-fun b!6153182 () Bool)

(assert (=> b!6153182 (= e!3749293 (= lt!2334682 call!511929))))

(declare-fun b!6153183 () Bool)

(assert (=> b!6153183 (= e!3749291 (matchR!8278 (derivativeStep!4815 (regTwo!32702 r!7292) (head!12711 s!2326)) (tail!11796 s!2326)))))

(declare-fun b!6153184 () Bool)

(assert (=> b!6153184 (= e!3749294 e!3749290)))

(declare-fun res!2548610 () Bool)

(assert (=> b!6153184 (=> res!2548610 e!3749290)))

(assert (=> b!6153184 (= res!2548610 call!511929)))

(assert (= (and d!1928011 c!1107630) b!6153179))

(assert (= (and d!1928011 (not c!1107630)) b!6153183))

(assert (= (and d!1928011 c!1107629) b!6153182))

(assert (= (and d!1928011 (not c!1107629)) b!6153177))

(assert (= (and b!6153177 c!1107628) b!6153174))

(assert (= (and b!6153177 (not c!1107628)) b!6153180))

(assert (= (and b!6153180 (not res!2548611)) b!6153175))

(assert (= (and b!6153175 res!2548615) b!6153181))

(assert (= (and b!6153181 res!2548608) b!6153171))

(assert (= (and b!6153171 res!2548614) b!6153176))

(assert (= (and b!6153175 (not res!2548609)) b!6153172))

(assert (= (and b!6153172 res!2548613) b!6153184))

(assert (= (and b!6153184 (not res!2548610)) b!6153173))

(assert (= (and b!6153173 (not res!2548612)) b!6153178))

(assert (= (or b!6153182 b!6153181 b!6153184) bm!511924))

(assert (=> bm!511924 m!6991554))

(assert (=> b!6153171 m!6991558))

(assert (=> b!6153171 m!6991558))

(assert (=> b!6153171 m!6991560))

(assert (=> b!6153173 m!6991558))

(assert (=> b!6153173 m!6991558))

(assert (=> b!6153173 m!6991560))

(assert (=> b!6153183 m!6991562))

(assert (=> b!6153183 m!6991562))

(declare-fun m!6992440 () Bool)

(assert (=> b!6153183 m!6992440))

(assert (=> b!6153183 m!6991558))

(assert (=> b!6153183 m!6992440))

(assert (=> b!6153183 m!6991558))

(declare-fun m!6992442 () Bool)

(assert (=> b!6153183 m!6992442))

(assert (=> b!6153178 m!6991562))

(declare-fun m!6992444 () Bool)

(assert (=> b!6153179 m!6992444))

(assert (=> d!1928011 m!6991554))

(declare-fun m!6992446 () Bool)

(assert (=> d!1928011 m!6992446))

(assert (=> b!6153176 m!6991562))

(assert (=> b!6151937 d!1928011))

(declare-fun d!1928013 () Bool)

(assert (=> d!1928013 (= (isConcat!1035 lt!2334639) ((_ is Concat!24940) lt!2334639))))

(assert (=> b!6152262 d!1928013))

(assert (=> d!1927583 d!1927577))

(declare-fun d!1928015 () Bool)

(assert (=> d!1928015 (= (flatMap!1600 lt!2334526 lambda!335497) (dynLambda!25410 lambda!335497 lt!2334535))))

(assert (=> d!1928015 true))

(declare-fun _$13!3078 () Unit!157549)

(assert (=> d!1928015 (= (choose!45735 lt!2334526 lt!2334535 lambda!335497) _$13!3078)))

(declare-fun b_lambda!234215 () Bool)

(assert (=> (not b_lambda!234215) (not d!1928015)))

(declare-fun bs!1525237 () Bool)

(assert (= bs!1525237 d!1928015))

(assert (=> bs!1525237 m!6991072))

(assert (=> bs!1525237 m!6991520))

(assert (=> d!1927583 d!1928015))

(declare-fun d!1928017 () Bool)

(assert (=> d!1928017 true))

(declare-fun setRes!41668 () Bool)

(assert (=> d!1928017 setRes!41668))

(declare-fun condSetEmpty!41668 () Bool)

(declare-fun res!2548616 () (InoxSet Context!10958))

(assert (=> d!1928017 (= condSetEmpty!41668 (= res!2548616 ((as const (Array Context!10958 Bool)) false)))))

(assert (=> d!1928017 (= (choose!45734 lt!2334526 lambda!335497) res!2548616)))

(declare-fun setIsEmpty!41668 () Bool)

(assert (=> setIsEmpty!41668 setRes!41668))

(declare-fun setElem!41668 () Context!10958)

(declare-fun setNonEmpty!41668 () Bool)

(declare-fun e!3749297 () Bool)

(declare-fun tp!1718535 () Bool)

(assert (=> setNonEmpty!41668 (= setRes!41668 (and tp!1718535 (inv!83484 setElem!41668) e!3749297))))

(declare-fun setRest!41668 () (InoxSet Context!10958))

(assert (=> setNonEmpty!41668 (= res!2548616 ((_ map or) (store ((as const (Array Context!10958 Bool)) false) setElem!41668 true) setRest!41668))))

(declare-fun b!6153185 () Bool)

(declare-fun tp!1718536 () Bool)

(assert (=> b!6153185 (= e!3749297 tp!1718536)))

(assert (= (and d!1928017 condSetEmpty!41668) setIsEmpty!41668))

(assert (= (and d!1928017 (not condSetEmpty!41668)) setNonEmpty!41668))

(assert (= setNonEmpty!41668 b!6153185))

(declare-fun m!6992448 () Bool)

(assert (=> setNonEmpty!41668 m!6992448))

(assert (=> d!1927577 d!1928017))

(declare-fun d!1928019 () Bool)

(assert (=> d!1928019 (= (nullable!6088 (h!70908 (exprs!5979 lt!2334543))) (nullableFct!2052 (h!70908 (exprs!5979 lt!2334543))))))

(declare-fun bs!1525238 () Bool)

(assert (= bs!1525238 d!1928019))

(declare-fun m!6992450 () Bool)

(assert (=> bs!1525238 m!6992450))

(assert (=> b!6152025 d!1928019))

(assert (=> d!1927553 d!1927555))

(assert (=> d!1927553 d!1927479))

(declare-fun d!1928021 () Bool)

(declare-fun e!3749300 () Bool)

(assert (=> d!1928021 (= (matchZipper!2107 ((_ map or) lt!2334546 lt!2334539) (t!378075 s!2326)) e!3749300)))

(declare-fun res!2548619 () Bool)

(assert (=> d!1928021 (=> res!2548619 e!3749300)))

(assert (=> d!1928021 (= res!2548619 (matchZipper!2107 lt!2334546 (t!378075 s!2326)))))

(assert (=> d!1928021 true))

(declare-fun _$48!1699 () Unit!157549)

(assert (=> d!1928021 (= (choose!45730 lt!2334546 lt!2334539 (t!378075 s!2326)) _$48!1699)))

(declare-fun b!6153188 () Bool)

(assert (=> b!6153188 (= e!3749300 (matchZipper!2107 lt!2334539 (t!378075 s!2326)))))

(assert (= (and d!1928021 (not res!2548619)) b!6153188))

(assert (=> d!1928021 m!6991016))

(assert (=> d!1928021 m!6991108))

(assert (=> b!6153188 m!6991082))

(assert (=> d!1927553 d!1928021))

(declare-fun d!1928023 () Bool)

(assert (=> d!1928023 (= (isEmpty!36420 (exprs!5979 (h!70909 zl!343))) ((_ is Nil!64460) (exprs!5979 (h!70909 zl!343))))))

(assert (=> b!6152259 d!1928023))

(declare-fun bs!1525239 () Bool)

(declare-fun d!1928025 () Bool)

(assert (= bs!1525239 (and d!1928025 d!1927917)))

(declare-fun lambda!335604 () Int)

(assert (=> bs!1525239 (= lambda!335604 lambda!335594)))

(declare-fun bs!1525240 () Bool)

(assert (= bs!1525240 (and d!1928025 d!1927987)))

(assert (=> bs!1525240 (= lambda!335604 lambda!335600)))

(declare-fun bs!1525241 () Bool)

(assert (= bs!1525241 (and d!1928025 d!1927995)))

(assert (=> bs!1525241 (= lambda!335604 lambda!335602)))

(assert (=> d!1928025 (= (nullableZipper!1876 ((_ map or) lt!2334537 lt!2334539)) (exists!2441 ((_ map or) lt!2334537 lt!2334539) lambda!335604))))

(declare-fun bs!1525242 () Bool)

(assert (= bs!1525242 d!1928025))

(declare-fun m!6992452 () Bool)

(assert (=> bs!1525242 m!6992452))

(assert (=> b!6152008 d!1928025))

(assert (=> d!1927599 d!1927597))

(assert (=> d!1927599 d!1927595))

(declare-fun d!1928027 () Bool)

(assert (=> d!1928027 (= (matchR!8278 r!7292 s!2326) (matchRSpec!3196 r!7292 s!2326))))

(assert (=> d!1928027 true))

(declare-fun _$88!4704 () Unit!157549)

(assert (=> d!1928027 (= (choose!45737 r!7292 s!2326) _$88!4704)))

(declare-fun bs!1525243 () Bool)

(assert (= bs!1525243 d!1928027))

(assert (=> bs!1525243 m!6991056))

(assert (=> bs!1525243 m!6991054))

(assert (=> d!1927599 d!1928027))

(assert (=> d!1927599 d!1927589))

(declare-fun d!1928029 () Bool)

(assert (=> d!1928029 true))

(assert (=> d!1928029 true))

(declare-fun res!2548620 () Bool)

(assert (=> d!1928029 (= (choose!45731 lambda!335496) res!2548620)))

(assert (=> d!1927531 d!1928029))

(declare-fun d!1928031 () Bool)

(assert (=> d!1928031 (= (isEmptyLang!1522 lt!2334633) ((_ is EmptyLang!16095) lt!2334633))))

(assert (=> b!6152225 d!1928031))

(assert (=> bm!511738 d!1927981))

(declare-fun d!1928033 () Bool)

(declare-fun res!2548623 () Bool)

(declare-fun e!3749305 () Bool)

(assert (=> d!1928033 (=> res!2548623 e!3749305)))

(assert (=> d!1928033 (= res!2548623 ((_ is EmptyExpr!16095) (regOne!32703 (regOne!32702 r!7292))))))

(assert (=> d!1928033 (= (nullableFct!2052 (regOne!32703 (regOne!32702 r!7292))) e!3749305)))

(declare-fun b!6153189 () Bool)

(declare-fun e!3749304 () Bool)

(declare-fun call!511931 () Bool)

(assert (=> b!6153189 (= e!3749304 call!511931)))

(declare-fun b!6153190 () Bool)

(declare-fun e!3749306 () Bool)

(assert (=> b!6153190 (= e!3749305 e!3749306)))

(declare-fun res!2548621 () Bool)

(assert (=> b!6153190 (=> (not res!2548621) (not e!3749306))))

(assert (=> b!6153190 (= res!2548621 (and (not ((_ is EmptyLang!16095) (regOne!32703 (regOne!32702 r!7292)))) (not ((_ is ElementMatch!16095) (regOne!32703 (regOne!32702 r!7292))))))))

(declare-fun b!6153191 () Bool)

(declare-fun e!3749303 () Bool)

(assert (=> b!6153191 (= e!3749303 call!511931)))

(declare-fun b!6153192 () Bool)

(declare-fun e!3749302 () Bool)

(declare-fun e!3749301 () Bool)

(assert (=> b!6153192 (= e!3749302 e!3749301)))

(declare-fun c!1107631 () Bool)

(assert (=> b!6153192 (= c!1107631 ((_ is Union!16095) (regOne!32703 (regOne!32702 r!7292))))))

(declare-fun b!6153193 () Bool)

(assert (=> b!6153193 (= e!3749301 e!3749304)))

(declare-fun res!2548624 () Bool)

(declare-fun call!511930 () Bool)

(assert (=> b!6153193 (= res!2548624 call!511930)))

(assert (=> b!6153193 (=> res!2548624 e!3749304)))

(declare-fun b!6153194 () Bool)

(assert (=> b!6153194 (= e!3749306 e!3749302)))

(declare-fun res!2548625 () Bool)

(assert (=> b!6153194 (=> res!2548625 e!3749302)))

(assert (=> b!6153194 (= res!2548625 ((_ is Star!16095) (regOne!32703 (regOne!32702 r!7292))))))

(declare-fun bm!511925 () Bool)

(assert (=> bm!511925 (= call!511931 (nullable!6088 (ite c!1107631 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))))))))

(declare-fun bm!511926 () Bool)

(assert (=> bm!511926 (= call!511930 (nullable!6088 (ite c!1107631 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292))))))))

(declare-fun b!6153195 () Bool)

(assert (=> b!6153195 (= e!3749301 e!3749303)))

(declare-fun res!2548622 () Bool)

(assert (=> b!6153195 (= res!2548622 call!511930)))

(assert (=> b!6153195 (=> (not res!2548622) (not e!3749303))))

(assert (= (and d!1928033 (not res!2548623)) b!6153190))

(assert (= (and b!6153190 res!2548621) b!6153194))

(assert (= (and b!6153194 (not res!2548625)) b!6153192))

(assert (= (and b!6153192 c!1107631) b!6153193))

(assert (= (and b!6153192 (not c!1107631)) b!6153195))

(assert (= (and b!6153193 (not res!2548624)) b!6153189))

(assert (= (and b!6153195 res!2548622) b!6153191))

(assert (= (or b!6153189 b!6153191) bm!511925))

(assert (= (or b!6153193 b!6153195) bm!511926))

(declare-fun m!6992454 () Bool)

(assert (=> bm!511925 m!6992454))

(declare-fun m!6992456 () Bool)

(assert (=> bm!511926 m!6992456))

(assert (=> d!1927579 d!1928033))

(assert (=> b!6152012 d!1927591))

(declare-fun d!1928035 () Bool)

(assert (=> d!1928035 (= (isEmpty!36424 (tail!11796 s!2326)) ((_ is Nil!64462) (tail!11796 s!2326)))))

(assert (=> b!6152188 d!1928035))

(assert (=> b!6152188 d!1927943))

(assert (=> d!1927591 d!1927931))

(declare-fun bm!511927 () Bool)

(declare-fun call!511936 () (InoxSet Context!10958))

(declare-fun call!511937 () (InoxSet Context!10958))

(assert (=> bm!511927 (= call!511936 call!511937)))

(declare-fun b!6153196 () Bool)

(declare-fun e!3749310 () (InoxSet Context!10958))

(declare-fun e!3749307 () (InoxSet Context!10958))

(assert (=> b!6153196 (= e!3749310 e!3749307)))

(declare-fun c!1107633 () Bool)

(assert (=> b!6153196 (= c!1107633 ((_ is Union!16095) (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292))))))))

(declare-fun b!6153197 () Bool)

(declare-fun call!511935 () (InoxSet Context!10958))

(declare-fun call!511934 () (InoxSet Context!10958))

(assert (=> b!6153197 (= e!3749307 ((_ map or) call!511935 call!511934))))

(declare-fun b!6153198 () Bool)

(declare-fun e!3749309 () (InoxSet Context!10958))

(declare-fun e!3749312 () (InoxSet Context!10958))

(assert (=> b!6153198 (= e!3749309 e!3749312)))

(declare-fun c!1107635 () Bool)

(assert (=> b!6153198 (= c!1107635 ((_ is Concat!24940) (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292))))))))

(declare-fun bm!511928 () Bool)

(declare-fun call!511933 () List!64584)

(declare-fun call!511932 () List!64584)

(assert (=> bm!511928 (= call!511933 call!511932)))

(declare-fun c!1107634 () Bool)

(declare-fun d!1928037 () Bool)

(assert (=> d!1928037 (= c!1107634 (and ((_ is ElementMatch!16095) (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292))))) (= (c!1107191 (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292))))) (h!70910 s!2326))))))

(assert (=> d!1928037 (= (derivationStepZipperDown!1343 (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292)))) (ite c!1107404 lt!2334543 (Context!10959 call!511753)) (h!70910 s!2326)) e!3749310)))

(declare-fun bm!511929 () Bool)

(assert (=> bm!511929 (= call!511937 call!511934)))

(declare-fun b!6153199 () Bool)

(assert (=> b!6153199 (= e!3749312 call!511936)))

(declare-fun b!6153200 () Bool)

(declare-fun e!3749308 () (InoxSet Context!10958))

(assert (=> b!6153200 (= e!3749308 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6153201 () Bool)

(declare-fun c!1107636 () Bool)

(assert (=> b!6153201 (= c!1107636 ((_ is Star!16095) (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292))))))))

(assert (=> b!6153201 (= e!3749312 e!3749308)))

(declare-fun b!6153202 () Bool)

(assert (=> b!6153202 (= e!3749309 ((_ map or) call!511935 call!511937))))

(declare-fun c!1107632 () Bool)

(declare-fun bm!511930 () Bool)

(assert (=> bm!511930 (= call!511934 (derivationStepZipperDown!1343 (ite c!1107633 (regTwo!32703 (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292))))) (ite c!1107632 (regTwo!32702 (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292))))) (ite c!1107635 (regOne!32702 (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292))))) (reg!16424 (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292)))))))) (ite (or c!1107633 c!1107632) (ite c!1107404 lt!2334543 (Context!10959 call!511753)) (Context!10959 call!511933)) (h!70910 s!2326)))))

(declare-fun b!6153203 () Bool)

(assert (=> b!6153203 (= e!3749308 call!511936)))

(declare-fun bm!511931 () Bool)

(assert (=> bm!511931 (= call!511932 ($colon$colon!1972 (exprs!5979 (ite c!1107404 lt!2334543 (Context!10959 call!511753))) (ite (or c!1107632 c!1107635) (regTwo!32702 (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292))))) (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292)))))))))

(declare-fun b!6153204 () Bool)

(declare-fun e!3749311 () Bool)

(assert (=> b!6153204 (= c!1107632 e!3749311)))

(declare-fun res!2548626 () Bool)

(assert (=> b!6153204 (=> (not res!2548626) (not e!3749311))))

(assert (=> b!6153204 (= res!2548626 ((_ is Concat!24940) (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292))))))))

(assert (=> b!6153204 (= e!3749307 e!3749309)))

(declare-fun b!6153205 () Bool)

(assert (=> b!6153205 (= e!3749310 (store ((as const (Array Context!10958 Bool)) false) (ite c!1107404 lt!2334543 (Context!10959 call!511753)) true))))

(declare-fun bm!511932 () Bool)

(assert (=> bm!511932 (= call!511935 (derivationStepZipperDown!1343 (ite c!1107633 (regOne!32703 (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292))))) (regOne!32702 (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292)))))) (ite c!1107633 (ite c!1107404 lt!2334543 (Context!10959 call!511753)) (Context!10959 call!511932)) (h!70910 s!2326)))))

(declare-fun b!6153206 () Bool)

(assert (=> b!6153206 (= e!3749311 (nullable!6088 (regOne!32702 (ite c!1107404 (regOne!32703 (regOne!32703 (regOne!32702 r!7292))) (regOne!32702 (regOne!32703 (regOne!32702 r!7292)))))))))

(assert (= (and d!1928037 c!1107634) b!6153205))

(assert (= (and d!1928037 (not c!1107634)) b!6153196))

(assert (= (and b!6153196 c!1107633) b!6153197))

(assert (= (and b!6153196 (not c!1107633)) b!6153204))

(assert (= (and b!6153204 res!2548626) b!6153206))

(assert (= (and b!6153204 c!1107632) b!6153202))

(assert (= (and b!6153204 (not c!1107632)) b!6153198))

(assert (= (and b!6153198 c!1107635) b!6153199))

(assert (= (and b!6153198 (not c!1107635)) b!6153201))

(assert (= (and b!6153201 c!1107636) b!6153203))

(assert (= (and b!6153201 (not c!1107636)) b!6153200))

(assert (= (or b!6153199 b!6153203) bm!511928))

(assert (= (or b!6153199 b!6153203) bm!511927))

(assert (= (or b!6153202 bm!511928) bm!511931))

(assert (= (or b!6153202 bm!511927) bm!511929))

(assert (= (or b!6153197 bm!511929) bm!511930))

(assert (= (or b!6153197 b!6153202) bm!511932))

(declare-fun m!6992458 () Bool)

(assert (=> b!6153206 m!6992458))

(declare-fun m!6992460 () Bool)

(assert (=> b!6153205 m!6992460))

(declare-fun m!6992462 () Bool)

(assert (=> bm!511930 m!6992462))

(declare-fun m!6992464 () Bool)

(assert (=> bm!511931 m!6992464))

(declare-fun m!6992466 () Bool)

(assert (=> bm!511932 m!6992466))

(assert (=> bm!511753 d!1928037))

(declare-fun bm!511933 () Bool)

(declare-fun call!511939 () Bool)

(declare-fun call!511938 () Bool)

(assert (=> bm!511933 (= call!511939 call!511938)))

(declare-fun b!6153207 () Bool)

(declare-fun e!3749313 () Bool)

(declare-fun e!3749315 () Bool)

(assert (=> b!6153207 (= e!3749313 e!3749315)))

(declare-fun c!1107638 () Bool)

(assert (=> b!6153207 (= c!1107638 ((_ is Union!16095) lt!2334639))))

(declare-fun b!6153208 () Bool)

(declare-fun e!3749314 () Bool)

(assert (=> b!6153208 (= e!3749314 call!511938)))

(declare-fun b!6153209 () Bool)

(assert (=> b!6153209 (= e!3749313 e!3749314)))

(declare-fun res!2548629 () Bool)

(assert (=> b!6153209 (= res!2548629 (not (nullable!6088 (reg!16424 lt!2334639))))))

(assert (=> b!6153209 (=> (not res!2548629) (not e!3749314))))

(declare-fun b!6153210 () Bool)

(declare-fun e!3749317 () Bool)

(assert (=> b!6153210 (= e!3749317 call!511939)))

(declare-fun b!6153211 () Bool)

(declare-fun e!3749316 () Bool)

(assert (=> b!6153211 (= e!3749316 e!3749317)))

(declare-fun res!2548627 () Bool)

(assert (=> b!6153211 (=> (not res!2548627) (not e!3749317))))

(declare-fun call!511940 () Bool)

(assert (=> b!6153211 (= res!2548627 call!511940)))

(declare-fun b!6153212 () Bool)

(declare-fun res!2548631 () Bool)

(assert (=> b!6153212 (=> res!2548631 e!3749316)))

(assert (=> b!6153212 (= res!2548631 (not ((_ is Concat!24940) lt!2334639)))))

(assert (=> b!6153212 (= e!3749315 e!3749316)))

(declare-fun d!1928039 () Bool)

(declare-fun res!2548628 () Bool)

(declare-fun e!3749318 () Bool)

(assert (=> d!1928039 (=> res!2548628 e!3749318)))

(assert (=> d!1928039 (= res!2548628 ((_ is ElementMatch!16095) lt!2334639))))

(assert (=> d!1928039 (= (validRegex!7831 lt!2334639) e!3749318)))

(declare-fun b!6153213 () Bool)

(assert (=> b!6153213 (= e!3749318 e!3749313)))

(declare-fun c!1107637 () Bool)

(assert (=> b!6153213 (= c!1107637 ((_ is Star!16095) lt!2334639))))

(declare-fun b!6153214 () Bool)

(declare-fun e!3749319 () Bool)

(assert (=> b!6153214 (= e!3749319 call!511939)))

(declare-fun bm!511934 () Bool)

(assert (=> bm!511934 (= call!511938 (validRegex!7831 (ite c!1107637 (reg!16424 lt!2334639) (ite c!1107638 (regTwo!32703 lt!2334639) (regTwo!32702 lt!2334639)))))))

(declare-fun b!6153215 () Bool)

(declare-fun res!2548630 () Bool)

(assert (=> b!6153215 (=> (not res!2548630) (not e!3749319))))

(assert (=> b!6153215 (= res!2548630 call!511940)))

(assert (=> b!6153215 (= e!3749315 e!3749319)))

(declare-fun bm!511935 () Bool)

(assert (=> bm!511935 (= call!511940 (validRegex!7831 (ite c!1107638 (regOne!32703 lt!2334639) (regOne!32702 lt!2334639))))))

(assert (= (and d!1928039 (not res!2548628)) b!6153213))

(assert (= (and b!6153213 c!1107637) b!6153209))

(assert (= (and b!6153213 (not c!1107637)) b!6153207))

(assert (= (and b!6153209 res!2548629) b!6153208))

(assert (= (and b!6153207 c!1107638) b!6153215))

(assert (= (and b!6153207 (not c!1107638)) b!6153212))

(assert (= (and b!6153215 res!2548630) b!6153214))

(assert (= (and b!6153212 (not res!2548631)) b!6153211))

(assert (= (and b!6153211 res!2548627) b!6153210))

(assert (= (or b!6153214 b!6153210) bm!511933))

(assert (= (or b!6153215 b!6153211) bm!511935))

(assert (= (or b!6153208 bm!511933) bm!511934))

(declare-fun m!6992468 () Bool)

(assert (=> b!6153209 m!6992468))

(declare-fun m!6992470 () Bool)

(assert (=> bm!511934 m!6992470))

(declare-fun m!6992472 () Bool)

(assert (=> bm!511935 m!6992472))

(assert (=> d!1927605 d!1928039))

(declare-fun d!1928041 () Bool)

(declare-fun res!2548632 () Bool)

(declare-fun e!3749320 () Bool)

(assert (=> d!1928041 (=> res!2548632 e!3749320)))

(assert (=> d!1928041 (= res!2548632 ((_ is Nil!64460) (exprs!5979 (h!70909 zl!343))))))

(assert (=> d!1928041 (= (forall!15216 (exprs!5979 (h!70909 zl!343)) lambda!335553) e!3749320)))

(declare-fun b!6153216 () Bool)

(declare-fun e!3749321 () Bool)

(assert (=> b!6153216 (= e!3749320 e!3749321)))

(declare-fun res!2548633 () Bool)

(assert (=> b!6153216 (=> (not res!2548633) (not e!3749321))))

(assert (=> b!6153216 (= res!2548633 (dynLambda!25412 lambda!335553 (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6153217 () Bool)

(assert (=> b!6153217 (= e!3749321 (forall!15216 (t!378073 (exprs!5979 (h!70909 zl!343))) lambda!335553))))

(assert (= (and d!1928041 (not res!2548632)) b!6153216))

(assert (= (and b!6153216 res!2548633) b!6153217))

(declare-fun b_lambda!234217 () Bool)

(assert (=> (not b_lambda!234217) (not b!6153216)))

(declare-fun m!6992474 () Bool)

(assert (=> b!6153216 m!6992474))

(declare-fun m!6992476 () Bool)

(assert (=> b!6153217 m!6992476))

(assert (=> d!1927605 d!1928041))

(assert (=> d!1927555 d!1927931))

(declare-fun d!1928043 () Bool)

(declare-fun c!1107639 () Bool)

(assert (=> d!1928043 (= c!1107639 (isEmpty!36424 (tail!11796 (t!378075 s!2326))))))

(declare-fun e!3749322 () Bool)

(assert (=> d!1928043 (= (matchZipper!2107 (derivationStepZipper!2068 lt!2334539 (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))) e!3749322)))

(declare-fun b!6153218 () Bool)

(assert (=> b!6153218 (= e!3749322 (nullableZipper!1876 (derivationStepZipper!2068 lt!2334539 (head!12711 (t!378075 s!2326)))))))

(declare-fun b!6153219 () Bool)

(assert (=> b!6153219 (= e!3749322 (matchZipper!2107 (derivationStepZipper!2068 (derivationStepZipper!2068 lt!2334539 (head!12711 (t!378075 s!2326))) (head!12711 (tail!11796 (t!378075 s!2326)))) (tail!11796 (tail!11796 (t!378075 s!2326)))))))

(assert (= (and d!1928043 c!1107639) b!6153218))

(assert (= (and d!1928043 (not c!1107639)) b!6153219))

(assert (=> d!1928043 m!6991260))

(assert (=> d!1928043 m!6992348))

(assert (=> b!6153218 m!6991540))

(declare-fun m!6992478 () Bool)

(assert (=> b!6153218 m!6992478))

(assert (=> b!6153219 m!6991260))

(assert (=> b!6153219 m!6992352))

(assert (=> b!6153219 m!6991540))

(assert (=> b!6153219 m!6992352))

(declare-fun m!6992480 () Bool)

(assert (=> b!6153219 m!6992480))

(assert (=> b!6153219 m!6991260))

(assert (=> b!6153219 m!6992356))

(assert (=> b!6153219 m!6992480))

(assert (=> b!6153219 m!6992356))

(declare-fun m!6992482 () Bool)

(assert (=> b!6153219 m!6992482))

(assert (=> b!6152111 d!1928043))

(declare-fun bs!1525244 () Bool)

(declare-fun d!1928045 () Bool)

(assert (= bs!1525244 (and d!1928045 b!6151542)))

(declare-fun lambda!335605 () Int)

(assert (=> bs!1525244 (= (= (head!12711 (t!378075 s!2326)) (h!70910 s!2326)) (= lambda!335605 lambda!335497))))

(declare-fun bs!1525245 () Bool)

(assert (= bs!1525245 (and d!1928045 d!1927961)))

(assert (=> bs!1525245 (= lambda!335605 lambda!335599)))

(declare-fun bs!1525246 () Bool)

(assert (= bs!1525246 (and d!1928045 d!1927993)))

(assert (=> bs!1525246 (= lambda!335605 lambda!335601)))

(assert (=> d!1928045 true))

(assert (=> d!1928045 (= (derivationStepZipper!2068 lt!2334539 (head!12711 (t!378075 s!2326))) (flatMap!1600 lt!2334539 lambda!335605))))

(declare-fun bs!1525247 () Bool)

(assert (= bs!1525247 d!1928045))

(declare-fun m!6992484 () Bool)

(assert (=> bs!1525247 m!6992484))

(assert (=> b!6152111 d!1928045))

(assert (=> b!6152111 d!1927963))

(assert (=> b!6152111 d!1927965))

(assert (=> d!1927551 d!1927931))

(declare-fun d!1928047 () Bool)

(assert (=> d!1928047 (= (nullable!6088 (reg!16424 r!7292)) (nullableFct!2052 (reg!16424 r!7292)))))

(declare-fun bs!1525248 () Bool)

(assert (= bs!1525248 d!1928047))

(declare-fun m!6992486 () Bool)

(assert (=> bs!1525248 m!6992486))

(assert (=> b!6152103 d!1928047))

(declare-fun bm!511936 () Bool)

(declare-fun call!511942 () Bool)

(declare-fun call!511941 () Bool)

(assert (=> bm!511936 (= call!511942 call!511941)))

(declare-fun b!6153220 () Bool)

(declare-fun e!3749323 () Bool)

(declare-fun e!3749325 () Bool)

(assert (=> b!6153220 (= e!3749323 e!3749325)))

(declare-fun c!1107641 () Bool)

(assert (=> b!6153220 (= c!1107641 ((_ is Union!16095) lt!2334633))))

(declare-fun b!6153221 () Bool)

(declare-fun e!3749324 () Bool)

(assert (=> b!6153221 (= e!3749324 call!511941)))

(declare-fun b!6153222 () Bool)

(assert (=> b!6153222 (= e!3749323 e!3749324)))

(declare-fun res!2548636 () Bool)

(assert (=> b!6153222 (= res!2548636 (not (nullable!6088 (reg!16424 lt!2334633))))))

(assert (=> b!6153222 (=> (not res!2548636) (not e!3749324))))

(declare-fun b!6153223 () Bool)

(declare-fun e!3749327 () Bool)

(assert (=> b!6153223 (= e!3749327 call!511942)))

(declare-fun b!6153224 () Bool)

(declare-fun e!3749326 () Bool)

(assert (=> b!6153224 (= e!3749326 e!3749327)))

(declare-fun res!2548634 () Bool)

(assert (=> b!6153224 (=> (not res!2548634) (not e!3749327))))

(declare-fun call!511943 () Bool)

(assert (=> b!6153224 (= res!2548634 call!511943)))

(declare-fun b!6153225 () Bool)

(declare-fun res!2548638 () Bool)

(assert (=> b!6153225 (=> res!2548638 e!3749326)))

(assert (=> b!6153225 (= res!2548638 (not ((_ is Concat!24940) lt!2334633)))))

(assert (=> b!6153225 (= e!3749325 e!3749326)))

(declare-fun d!1928049 () Bool)

(declare-fun res!2548635 () Bool)

(declare-fun e!3749328 () Bool)

(assert (=> d!1928049 (=> res!2548635 e!3749328)))

(assert (=> d!1928049 (= res!2548635 ((_ is ElementMatch!16095) lt!2334633))))

(assert (=> d!1928049 (= (validRegex!7831 lt!2334633) e!3749328)))

(declare-fun b!6153226 () Bool)

(assert (=> b!6153226 (= e!3749328 e!3749323)))

(declare-fun c!1107640 () Bool)

(assert (=> b!6153226 (= c!1107640 ((_ is Star!16095) lt!2334633))))

(declare-fun b!6153227 () Bool)

(declare-fun e!3749329 () Bool)

(assert (=> b!6153227 (= e!3749329 call!511942)))

(declare-fun bm!511937 () Bool)

(assert (=> bm!511937 (= call!511941 (validRegex!7831 (ite c!1107640 (reg!16424 lt!2334633) (ite c!1107641 (regTwo!32703 lt!2334633) (regTwo!32702 lt!2334633)))))))

(declare-fun b!6153228 () Bool)

(declare-fun res!2548637 () Bool)

(assert (=> b!6153228 (=> (not res!2548637) (not e!3749329))))

(assert (=> b!6153228 (= res!2548637 call!511943)))

(assert (=> b!6153228 (= e!3749325 e!3749329)))

(declare-fun bm!511938 () Bool)

(assert (=> bm!511938 (= call!511943 (validRegex!7831 (ite c!1107641 (regOne!32703 lt!2334633) (regOne!32702 lt!2334633))))))

(assert (= (and d!1928049 (not res!2548635)) b!6153226))

(assert (= (and b!6153226 c!1107640) b!6153222))

(assert (= (and b!6153226 (not c!1107640)) b!6153220))

(assert (= (and b!6153222 res!2548636) b!6153221))

(assert (= (and b!6153220 c!1107641) b!6153228))

(assert (= (and b!6153220 (not c!1107641)) b!6153225))

(assert (= (and b!6153228 res!2548637) b!6153227))

(assert (= (and b!6153225 (not res!2548638)) b!6153224))

(assert (= (and b!6153224 res!2548634) b!6153223))

(assert (= (or b!6153227 b!6153223) bm!511936))

(assert (= (or b!6153228 b!6153224) bm!511938))

(assert (= (or b!6153221 bm!511936) bm!511937))

(declare-fun m!6992488 () Bool)

(assert (=> b!6153222 m!6992488))

(declare-fun m!6992490 () Bool)

(assert (=> bm!511937 m!6992490))

(declare-fun m!6992492 () Bool)

(assert (=> bm!511938 m!6992492))

(assert (=> d!1927601 d!1928049))

(declare-fun d!1928051 () Bool)

(declare-fun res!2548639 () Bool)

(declare-fun e!3749330 () Bool)

(assert (=> d!1928051 (=> res!2548639 e!3749330)))

(assert (=> d!1928051 (= res!2548639 ((_ is Nil!64460) (unfocusZipperList!1516 zl!343)))))

(assert (=> d!1928051 (= (forall!15216 (unfocusZipperList!1516 zl!343) lambda!335547) e!3749330)))

(declare-fun b!6153229 () Bool)

(declare-fun e!3749331 () Bool)

(assert (=> b!6153229 (= e!3749330 e!3749331)))

(declare-fun res!2548640 () Bool)

(assert (=> b!6153229 (=> (not res!2548640) (not e!3749331))))

(assert (=> b!6153229 (= res!2548640 (dynLambda!25412 lambda!335547 (h!70908 (unfocusZipperList!1516 zl!343))))))

(declare-fun b!6153230 () Bool)

(assert (=> b!6153230 (= e!3749331 (forall!15216 (t!378073 (unfocusZipperList!1516 zl!343)) lambda!335547))))

(assert (= (and d!1928051 (not res!2548639)) b!6153229))

(assert (= (and b!6153229 res!2548640) b!6153230))

(declare-fun b_lambda!234219 () Bool)

(assert (=> (not b_lambda!234219) (not b!6153229)))

(declare-fun m!6992494 () Bool)

(assert (=> b!6153229 m!6992494))

(declare-fun m!6992496 () Bool)

(assert (=> b!6153230 m!6992496))

(assert (=> d!1927601 d!1928051))

(assert (=> bs!1525023 d!1927575))

(declare-fun bm!511939 () Bool)

(declare-fun call!511948 () (InoxSet Context!10958))

(declare-fun call!511949 () (InoxSet Context!10958))

(assert (=> bm!511939 (= call!511948 call!511949)))

(declare-fun b!6153231 () Bool)

(declare-fun e!3749335 () (InoxSet Context!10958))

(declare-fun e!3749332 () (InoxSet Context!10958))

(assert (=> b!6153231 (= e!3749335 e!3749332)))

(declare-fun c!1107643 () Bool)

(assert (=> b!6153231 (= c!1107643 ((_ is Union!16095) (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292))))))))))

(declare-fun b!6153232 () Bool)

(declare-fun call!511947 () (InoxSet Context!10958))

(declare-fun call!511946 () (InoxSet Context!10958))

(assert (=> b!6153232 (= e!3749332 ((_ map or) call!511947 call!511946))))

(declare-fun b!6153233 () Bool)

(declare-fun e!3749334 () (InoxSet Context!10958))

(declare-fun e!3749337 () (InoxSet Context!10958))

(assert (=> b!6153233 (= e!3749334 e!3749337)))

(declare-fun c!1107645 () Bool)

(assert (=> b!6153233 (= c!1107645 ((_ is Concat!24940) (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292))))))))))

(declare-fun bm!511940 () Bool)

(declare-fun call!511945 () List!64584)

(declare-fun call!511944 () List!64584)

(assert (=> bm!511940 (= call!511945 call!511944)))

(declare-fun d!1928053 () Bool)

(declare-fun c!1107644 () Bool)

(assert (=> d!1928053 (= c!1107644 (and ((_ is ElementMatch!16095) (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292))))))) (= (c!1107191 (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292))))))) (h!70910 s!2326))))))

(assert (=> d!1928053 (= (derivationStepZipperDown!1343 (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292)))))) (ite (or c!1107404 c!1107403) lt!2334543 (Context!10959 call!511754)) (h!70910 s!2326)) e!3749335)))

(declare-fun bm!511941 () Bool)

(assert (=> bm!511941 (= call!511949 call!511946)))

(declare-fun b!6153234 () Bool)

(assert (=> b!6153234 (= e!3749337 call!511948)))

(declare-fun b!6153235 () Bool)

(declare-fun e!3749333 () (InoxSet Context!10958))

(assert (=> b!6153235 (= e!3749333 ((as const (Array Context!10958 Bool)) false))))

(declare-fun c!1107646 () Bool)

(declare-fun b!6153236 () Bool)

(assert (=> b!6153236 (= c!1107646 ((_ is Star!16095) (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292))))))))))

(assert (=> b!6153236 (= e!3749337 e!3749333)))

(declare-fun b!6153237 () Bool)

(assert (=> b!6153237 (= e!3749334 ((_ map or) call!511947 call!511949))))

(declare-fun c!1107642 () Bool)

(declare-fun bm!511942 () Bool)

(assert (=> bm!511942 (= call!511946 (derivationStepZipperDown!1343 (ite c!1107643 (regTwo!32703 (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292))))))) (ite c!1107642 (regTwo!32702 (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292))))))) (ite c!1107645 (regOne!32702 (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292))))))) (reg!16424 (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292)))))))))) (ite (or c!1107643 c!1107642) (ite (or c!1107404 c!1107403) lt!2334543 (Context!10959 call!511754)) (Context!10959 call!511945)) (h!70910 s!2326)))))

(declare-fun b!6153238 () Bool)

(assert (=> b!6153238 (= e!3749333 call!511948)))

(declare-fun bm!511943 () Bool)

(assert (=> bm!511943 (= call!511944 ($colon$colon!1972 (exprs!5979 (ite (or c!1107404 c!1107403) lt!2334543 (Context!10959 call!511754))) (ite (or c!1107642 c!1107645) (regTwo!32702 (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292))))))) (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292)))))))))))

(declare-fun b!6153239 () Bool)

(declare-fun e!3749336 () Bool)

(assert (=> b!6153239 (= c!1107642 e!3749336)))

(declare-fun res!2548641 () Bool)

(assert (=> b!6153239 (=> (not res!2548641) (not e!3749336))))

(assert (=> b!6153239 (= res!2548641 ((_ is Concat!24940) (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292))))))))))

(assert (=> b!6153239 (= e!3749332 e!3749334)))

(declare-fun b!6153240 () Bool)

(assert (=> b!6153240 (= e!3749335 (store ((as const (Array Context!10958 Bool)) false) (ite (or c!1107404 c!1107403) lt!2334543 (Context!10959 call!511754)) true))))

(declare-fun bm!511944 () Bool)

(assert (=> bm!511944 (= call!511947 (derivationStepZipperDown!1343 (ite c!1107643 (regOne!32703 (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292))))))) (regOne!32702 (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292)))))))) (ite c!1107643 (ite (or c!1107404 c!1107403) lt!2334543 (Context!10959 call!511754)) (Context!10959 call!511944)) (h!70910 s!2326)))))

(declare-fun b!6153241 () Bool)

(assert (=> b!6153241 (= e!3749336 (nullable!6088 (regOne!32702 (ite c!1107404 (regTwo!32703 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107403 (regTwo!32702 (regOne!32703 (regOne!32702 r!7292))) (ite c!1107406 (regOne!32702 (regOne!32703 (regOne!32702 r!7292))) (reg!16424 (regOne!32703 (regOne!32702 r!7292)))))))))))

(assert (= (and d!1928053 c!1107644) b!6153240))

(assert (= (and d!1928053 (not c!1107644)) b!6153231))

(assert (= (and b!6153231 c!1107643) b!6153232))

(assert (= (and b!6153231 (not c!1107643)) b!6153239))

(assert (= (and b!6153239 res!2548641) b!6153241))

(assert (= (and b!6153239 c!1107642) b!6153237))

(assert (= (and b!6153239 (not c!1107642)) b!6153233))

(assert (= (and b!6153233 c!1107645) b!6153234))

(assert (= (and b!6153233 (not c!1107645)) b!6153236))

(assert (= (and b!6153236 c!1107646) b!6153238))

(assert (= (and b!6153236 (not c!1107646)) b!6153235))

(assert (= (or b!6153234 b!6153238) bm!511940))

(assert (= (or b!6153234 b!6153238) bm!511939))

(assert (= (or b!6153237 bm!511940) bm!511943))

(assert (= (or b!6153237 bm!511939) bm!511941))

(assert (= (or b!6153232 bm!511941) bm!511942))

(assert (= (or b!6153232 b!6153237) bm!511944))

(declare-fun m!6992498 () Bool)

(assert (=> b!6153241 m!6992498))

(declare-fun m!6992500 () Bool)

(assert (=> b!6153240 m!6992500))

(declare-fun m!6992502 () Bool)

(assert (=> bm!511942 m!6992502))

(declare-fun m!6992504 () Bool)

(assert (=> bm!511943 m!6992504))

(declare-fun m!6992506 () Bool)

(assert (=> bm!511944 m!6992506))

(assert (=> bm!511751 d!1928053))

(declare-fun bm!511945 () Bool)

(declare-fun call!511951 () Bool)

(declare-fun call!511950 () Bool)

(assert (=> bm!511945 (= call!511951 call!511950)))

(declare-fun b!6153242 () Bool)

(declare-fun e!3749338 () Bool)

(declare-fun e!3749340 () Bool)

(assert (=> b!6153242 (= e!3749338 e!3749340)))

(declare-fun c!1107648 () Bool)

(assert (=> b!6153242 (= c!1107648 ((_ is Union!16095) lt!2334642))))

(declare-fun b!6153243 () Bool)

(declare-fun e!3749339 () Bool)

(assert (=> b!6153243 (= e!3749339 call!511950)))

(declare-fun b!6153244 () Bool)

(assert (=> b!6153244 (= e!3749338 e!3749339)))

(declare-fun res!2548644 () Bool)

(assert (=> b!6153244 (= res!2548644 (not (nullable!6088 (reg!16424 lt!2334642))))))

(assert (=> b!6153244 (=> (not res!2548644) (not e!3749339))))

(declare-fun b!6153245 () Bool)

(declare-fun e!3749342 () Bool)

(assert (=> b!6153245 (= e!3749342 call!511951)))

(declare-fun b!6153246 () Bool)

(declare-fun e!3749341 () Bool)

(assert (=> b!6153246 (= e!3749341 e!3749342)))

(declare-fun res!2548642 () Bool)

(assert (=> b!6153246 (=> (not res!2548642) (not e!3749342))))

(declare-fun call!511952 () Bool)

(assert (=> b!6153246 (= res!2548642 call!511952)))

(declare-fun b!6153247 () Bool)

(declare-fun res!2548646 () Bool)

(assert (=> b!6153247 (=> res!2548646 e!3749341)))

(assert (=> b!6153247 (= res!2548646 (not ((_ is Concat!24940) lt!2334642)))))

(assert (=> b!6153247 (= e!3749340 e!3749341)))

(declare-fun d!1928055 () Bool)

(declare-fun res!2548643 () Bool)

(declare-fun e!3749343 () Bool)

(assert (=> d!1928055 (=> res!2548643 e!3749343)))

(assert (=> d!1928055 (= res!2548643 ((_ is ElementMatch!16095) lt!2334642))))

(assert (=> d!1928055 (= (validRegex!7831 lt!2334642) e!3749343)))

(declare-fun b!6153248 () Bool)

(assert (=> b!6153248 (= e!3749343 e!3749338)))

(declare-fun c!1107647 () Bool)

(assert (=> b!6153248 (= c!1107647 ((_ is Star!16095) lt!2334642))))

(declare-fun b!6153249 () Bool)

(declare-fun e!3749344 () Bool)

(assert (=> b!6153249 (= e!3749344 call!511951)))

(declare-fun bm!511946 () Bool)

(assert (=> bm!511946 (= call!511950 (validRegex!7831 (ite c!1107647 (reg!16424 lt!2334642) (ite c!1107648 (regTwo!32703 lt!2334642) (regTwo!32702 lt!2334642)))))))

(declare-fun b!6153250 () Bool)

(declare-fun res!2548645 () Bool)

(assert (=> b!6153250 (=> (not res!2548645) (not e!3749344))))

(assert (=> b!6153250 (= res!2548645 call!511952)))

(assert (=> b!6153250 (= e!3749340 e!3749344)))

(declare-fun bm!511947 () Bool)

(assert (=> bm!511947 (= call!511952 (validRegex!7831 (ite c!1107648 (regOne!32703 lt!2334642) (regOne!32702 lt!2334642))))))

(assert (= (and d!1928055 (not res!2548643)) b!6153248))

(assert (= (and b!6153248 c!1107647) b!6153244))

(assert (= (and b!6153248 (not c!1107647)) b!6153242))

(assert (= (and b!6153244 res!2548644) b!6153243))

(assert (= (and b!6153242 c!1107648) b!6153250))

(assert (= (and b!6153242 (not c!1107648)) b!6153247))

(assert (= (and b!6153250 res!2548645) b!6153249))

(assert (= (and b!6153247 (not res!2548646)) b!6153246))

(assert (= (and b!6153246 res!2548642) b!6153245))

(assert (= (or b!6153249 b!6153245) bm!511945))

(assert (= (or b!6153250 b!6153246) bm!511947))

(assert (= (or b!6153243 bm!511945) bm!511946))

(declare-fun m!6992508 () Bool)

(assert (=> b!6153244 m!6992508))

(declare-fun m!6992510 () Bool)

(assert (=> bm!511946 m!6992510))

(declare-fun m!6992512 () Bool)

(assert (=> bm!511947 m!6992512))

(assert (=> d!1927615 d!1928055))

(assert (=> d!1927615 d!1927601))

(assert (=> d!1927615 d!1927603))

(declare-fun d!1928057 () Bool)

(assert (=> d!1928057 true))

(declare-fun setRes!41669 () Bool)

(assert (=> d!1928057 setRes!41669))

(declare-fun condSetEmpty!41669 () Bool)

(declare-fun res!2548647 () (InoxSet Context!10958))

(assert (=> d!1928057 (= condSetEmpty!41669 (= res!2548647 ((as const (Array Context!10958 Bool)) false)))))

(assert (=> d!1928057 (= (choose!45734 z!1189 lambda!335497) res!2548647)))

(declare-fun setIsEmpty!41669 () Bool)

(assert (=> setIsEmpty!41669 setRes!41669))

(declare-fun tp!1718537 () Bool)

(declare-fun e!3749345 () Bool)

(declare-fun setNonEmpty!41669 () Bool)

(declare-fun setElem!41669 () Context!10958)

(assert (=> setNonEmpty!41669 (= setRes!41669 (and tp!1718537 (inv!83484 setElem!41669) e!3749345))))

(declare-fun setRest!41669 () (InoxSet Context!10958))

(assert (=> setNonEmpty!41669 (= res!2548647 ((_ map or) (store ((as const (Array Context!10958 Bool)) false) setElem!41669 true) setRest!41669))))

(declare-fun b!6153251 () Bool)

(declare-fun tp!1718538 () Bool)

(assert (=> b!6153251 (= e!3749345 tp!1718538)))

(assert (= (and d!1928057 condSetEmpty!41669) setIsEmpty!41669))

(assert (= (and d!1928057 (not condSetEmpty!41669)) setNonEmpty!41669))

(assert (= setNonEmpty!41669 b!6153251))

(declare-fun m!6992514 () Bool)

(assert (=> setNonEmpty!41669 m!6992514))

(assert (=> d!1927559 d!1928057))

(declare-fun bs!1525249 () Bool)

(declare-fun d!1928059 () Bool)

(assert (= bs!1525249 (and d!1928059 d!1927917)))

(declare-fun lambda!335606 () Int)

(assert (=> bs!1525249 (= lambda!335606 lambda!335594)))

(declare-fun bs!1525250 () Bool)

(assert (= bs!1525250 (and d!1928059 d!1927987)))

(assert (=> bs!1525250 (= lambda!335606 lambda!335600)))

(declare-fun bs!1525251 () Bool)

(assert (= bs!1525251 (and d!1928059 d!1927995)))

(assert (=> bs!1525251 (= lambda!335606 lambda!335602)))

(declare-fun bs!1525252 () Bool)

(assert (= bs!1525252 (and d!1928059 d!1928025)))

(assert (=> bs!1525252 (= lambda!335606 lambda!335604)))

(assert (=> d!1928059 (= (nullableZipper!1876 lt!2334546) (exists!2441 lt!2334546 lambda!335606))))

(declare-fun bs!1525253 () Bool)

(assert (= bs!1525253 d!1928059))

(declare-fun m!6992516 () Bool)

(assert (=> bs!1525253 m!6992516))

(assert (=> b!6151800 d!1928059))

(declare-fun d!1928061 () Bool)

(declare-fun c!1107649 () Bool)

(assert (=> d!1928061 (= c!1107649 (isEmpty!36424 (tail!11796 (t!378075 s!2326))))))

(declare-fun e!3749346 () Bool)

(assert (=> d!1928061 (= (matchZipper!2107 (derivationStepZipper!2068 lt!2334524 (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))) e!3749346)))

(declare-fun b!6153252 () Bool)

(assert (=> b!6153252 (= e!3749346 (nullableZipper!1876 (derivationStepZipper!2068 lt!2334524 (head!12711 (t!378075 s!2326)))))))

(declare-fun b!6153253 () Bool)

(assert (=> b!6153253 (= e!3749346 (matchZipper!2107 (derivationStepZipper!2068 (derivationStepZipper!2068 lt!2334524 (head!12711 (t!378075 s!2326))) (head!12711 (tail!11796 (t!378075 s!2326)))) (tail!11796 (tail!11796 (t!378075 s!2326)))))))

(assert (= (and d!1928061 c!1107649) b!6153252))

(assert (= (and d!1928061 (not c!1107649)) b!6153253))

(assert (=> d!1928061 m!6991260))

(assert (=> d!1928061 m!6992348))

(assert (=> b!6153252 m!6991454))

(declare-fun m!6992518 () Bool)

(assert (=> b!6153252 m!6992518))

(assert (=> b!6153253 m!6991260))

(assert (=> b!6153253 m!6992352))

(assert (=> b!6153253 m!6991454))

(assert (=> b!6153253 m!6992352))

(declare-fun m!6992520 () Bool)

(assert (=> b!6153253 m!6992520))

(assert (=> b!6153253 m!6991260))

(assert (=> b!6153253 m!6992356))

(assert (=> b!6153253 m!6992520))

(assert (=> b!6153253 m!6992356))

(declare-fun m!6992522 () Bool)

(assert (=> b!6153253 m!6992522))

(assert (=> b!6152011 d!1928061))

(declare-fun bs!1525254 () Bool)

(declare-fun d!1928063 () Bool)

(assert (= bs!1525254 (and d!1928063 b!6151542)))

(declare-fun lambda!335607 () Int)

(assert (=> bs!1525254 (= (= (head!12711 (t!378075 s!2326)) (h!70910 s!2326)) (= lambda!335607 lambda!335497))))

(declare-fun bs!1525255 () Bool)

(assert (= bs!1525255 (and d!1928063 d!1927961)))

(assert (=> bs!1525255 (= lambda!335607 lambda!335599)))

(declare-fun bs!1525256 () Bool)

(assert (= bs!1525256 (and d!1928063 d!1927993)))

(assert (=> bs!1525256 (= lambda!335607 lambda!335601)))

(declare-fun bs!1525257 () Bool)

(assert (= bs!1525257 (and d!1928063 d!1928045)))

(assert (=> bs!1525257 (= lambda!335607 lambda!335605)))

(assert (=> d!1928063 true))

(assert (=> d!1928063 (= (derivationStepZipper!2068 lt!2334524 (head!12711 (t!378075 s!2326))) (flatMap!1600 lt!2334524 lambda!335607))))

(declare-fun bs!1525258 () Bool)

(assert (= bs!1525258 d!1928063))

(declare-fun m!6992524 () Bool)

(assert (=> bs!1525258 m!6992524))

(assert (=> b!6152011 d!1928063))

(assert (=> b!6152011 d!1927963))

(assert (=> b!6152011 d!1927965))

(declare-fun bs!1525259 () Bool)

(declare-fun d!1928065 () Bool)

(assert (= bs!1525259 (and d!1928065 d!1927987)))

(declare-fun lambda!335608 () Int)

(assert (=> bs!1525259 (= lambda!335608 lambda!335600)))

(declare-fun bs!1525260 () Bool)

(assert (= bs!1525260 (and d!1928065 d!1928059)))

(assert (=> bs!1525260 (= lambda!335608 lambda!335606)))

(declare-fun bs!1525261 () Bool)

(assert (= bs!1525261 (and d!1928065 d!1927995)))

(assert (=> bs!1525261 (= lambda!335608 lambda!335602)))

(declare-fun bs!1525262 () Bool)

(assert (= bs!1525262 (and d!1928065 d!1927917)))

(assert (=> bs!1525262 (= lambda!335608 lambda!335594)))

(declare-fun bs!1525263 () Bool)

(assert (= bs!1525263 (and d!1928065 d!1928025)))

(assert (=> bs!1525263 (= lambda!335608 lambda!335604)))

(assert (=> d!1928065 (= (nullableZipper!1876 lt!2334537) (exists!2441 lt!2334537 lambda!335608))))

(declare-fun bs!1525264 () Bool)

(assert (= bs!1525264 d!1928065))

(declare-fun m!6992526 () Bool)

(assert (=> bs!1525264 m!6992526))

(assert (=> b!6151796 d!1928065))

(declare-fun bm!511948 () Bool)

(declare-fun call!511957 () (InoxSet Context!10958))

(declare-fun call!511958 () (InoxSet Context!10958))

(assert (=> bm!511948 (= call!511957 call!511958)))

(declare-fun b!6153254 () Bool)

(declare-fun e!3749350 () (InoxSet Context!10958))

(declare-fun e!3749347 () (InoxSet Context!10958))

(assert (=> b!6153254 (= e!3749350 e!3749347)))

(declare-fun c!1107651 () Bool)

(assert (=> b!6153254 (= c!1107651 ((_ is Union!16095) (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292))))))))))

(declare-fun b!6153255 () Bool)

(declare-fun call!511956 () (InoxSet Context!10958))

(declare-fun call!511955 () (InoxSet Context!10958))

(assert (=> b!6153255 (= e!3749347 ((_ map or) call!511956 call!511955))))

(declare-fun b!6153256 () Bool)

(declare-fun e!3749349 () (InoxSet Context!10958))

(declare-fun e!3749352 () (InoxSet Context!10958))

(assert (=> b!6153256 (= e!3749349 e!3749352)))

(declare-fun c!1107653 () Bool)

(assert (=> b!6153256 (= c!1107653 ((_ is Concat!24940) (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292))))))))))

(declare-fun bm!511949 () Bool)

(declare-fun call!511954 () List!64584)

(declare-fun call!511953 () List!64584)

(assert (=> bm!511949 (= call!511954 call!511953)))

(declare-fun d!1928067 () Bool)

(declare-fun c!1107652 () Bool)

(assert (=> d!1928067 (= c!1107652 (and ((_ is ElementMatch!16095) (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292))))))) (= (c!1107191 (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292))))))) (h!70910 s!2326))))))

(assert (=> d!1928067 (= (derivationStepZipperDown!1343 (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292)))))) (ite (or c!1107399 c!1107398) lt!2334543 (Context!10959 call!511748)) (h!70910 s!2326)) e!3749350)))

(declare-fun bm!511950 () Bool)

(assert (=> bm!511950 (= call!511958 call!511955)))

(declare-fun b!6153257 () Bool)

(assert (=> b!6153257 (= e!3749352 call!511957)))

(declare-fun b!6153258 () Bool)

(declare-fun e!3749348 () (InoxSet Context!10958))

(assert (=> b!6153258 (= e!3749348 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6153259 () Bool)

(declare-fun c!1107654 () Bool)

(assert (=> b!6153259 (= c!1107654 ((_ is Star!16095) (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292))))))))))

(assert (=> b!6153259 (= e!3749352 e!3749348)))

(declare-fun b!6153260 () Bool)

(assert (=> b!6153260 (= e!3749349 ((_ map or) call!511956 call!511958))))

(declare-fun bm!511951 () Bool)

(declare-fun c!1107650 () Bool)

(assert (=> bm!511951 (= call!511955 (derivationStepZipperDown!1343 (ite c!1107651 (regTwo!32703 (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292))))))) (ite c!1107650 (regTwo!32702 (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292))))))) (ite c!1107653 (regOne!32702 (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292))))))) (reg!16424 (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292)))))))))) (ite (or c!1107651 c!1107650) (ite (or c!1107399 c!1107398) lt!2334543 (Context!10959 call!511748)) (Context!10959 call!511954)) (h!70910 s!2326)))))

(declare-fun b!6153261 () Bool)

(assert (=> b!6153261 (= e!3749348 call!511957)))

(declare-fun bm!511952 () Bool)

(assert (=> bm!511952 (= call!511953 ($colon$colon!1972 (exprs!5979 (ite (or c!1107399 c!1107398) lt!2334543 (Context!10959 call!511748))) (ite (or c!1107650 c!1107653) (regTwo!32702 (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292))))))) (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292)))))))))))

(declare-fun b!6153262 () Bool)

(declare-fun e!3749351 () Bool)

(assert (=> b!6153262 (= c!1107650 e!3749351)))

(declare-fun res!2548648 () Bool)

(assert (=> b!6153262 (=> (not res!2548648) (not e!3749351))))

(assert (=> b!6153262 (= res!2548648 ((_ is Concat!24940) (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292))))))))))

(assert (=> b!6153262 (= e!3749347 e!3749349)))

(declare-fun b!6153263 () Bool)

(assert (=> b!6153263 (= e!3749350 (store ((as const (Array Context!10958 Bool)) false) (ite (or c!1107399 c!1107398) lt!2334543 (Context!10959 call!511748)) true))))

(declare-fun bm!511953 () Bool)

(assert (=> bm!511953 (= call!511956 (derivationStepZipperDown!1343 (ite c!1107651 (regOne!32703 (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292))))))) (regOne!32702 (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292)))))))) (ite c!1107651 (ite (or c!1107399 c!1107398) lt!2334543 (Context!10959 call!511748)) (Context!10959 call!511953)) (h!70910 s!2326)))))

(declare-fun b!6153264 () Bool)

(assert (=> b!6153264 (= e!3749351 (nullable!6088 (regOne!32702 (ite c!1107399 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107398 (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))) (ite c!1107401 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))) (reg!16424 (regTwo!32703 (regOne!32702 r!7292)))))))))))

(assert (= (and d!1928067 c!1107652) b!6153263))

(assert (= (and d!1928067 (not c!1107652)) b!6153254))

(assert (= (and b!6153254 c!1107651) b!6153255))

(assert (= (and b!6153254 (not c!1107651)) b!6153262))

(assert (= (and b!6153262 res!2548648) b!6153264))

(assert (= (and b!6153262 c!1107650) b!6153260))

(assert (= (and b!6153262 (not c!1107650)) b!6153256))

(assert (= (and b!6153256 c!1107653) b!6153257))

(assert (= (and b!6153256 (not c!1107653)) b!6153259))

(assert (= (and b!6153259 c!1107654) b!6153261))

(assert (= (and b!6153259 (not c!1107654)) b!6153258))

(assert (= (or b!6153257 b!6153261) bm!511949))

(assert (= (or b!6153257 b!6153261) bm!511948))

(assert (= (or b!6153260 bm!511949) bm!511952))

(assert (= (or b!6153260 bm!511948) bm!511950))

(assert (= (or b!6153255 bm!511950) bm!511951))

(assert (= (or b!6153255 b!6153260) bm!511953))

(declare-fun m!6992528 () Bool)

(assert (=> b!6153264 m!6992528))

(declare-fun m!6992530 () Bool)

(assert (=> b!6153263 m!6992530))

(declare-fun m!6992532 () Bool)

(assert (=> bm!511951 m!6992532))

(declare-fun m!6992534 () Bool)

(assert (=> bm!511952 m!6992534))

(declare-fun m!6992536 () Bool)

(assert (=> bm!511953 m!6992536))

(assert (=> bm!511745 d!1928067))

(assert (=> b!6151934 d!1927923))

(declare-fun d!1928069 () Bool)

(assert (=> d!1928069 (= (nullable!6088 (h!70908 (exprs!5979 lt!2334527))) (nullableFct!2052 (h!70908 (exprs!5979 lt!2334527))))))

(declare-fun bs!1525265 () Bool)

(assert (= bs!1525265 d!1928069))

(declare-fun m!6992538 () Bool)

(assert (=> bs!1525265 m!6992538))

(assert (=> b!6152078 d!1928069))

(declare-fun bs!1525266 () Bool)

(declare-fun d!1928071 () Bool)

(assert (= bs!1525266 (and d!1928071 d!1927601)))

(declare-fun lambda!335609 () Int)

(assert (=> bs!1525266 (= lambda!335609 lambda!335547)))

(declare-fun bs!1525267 () Bool)

(assert (= bs!1525267 (and d!1928071 d!1927571)))

(assert (=> bs!1525267 (= lambda!335609 lambda!335538)))

(declare-fun bs!1525268 () Bool)

(assert (= bs!1525268 (and d!1928071 d!1927605)))

(assert (=> bs!1525268 (= lambda!335609 lambda!335553)))

(declare-fun bs!1525269 () Bool)

(assert (= bs!1525269 (and d!1928071 d!1928009)))

(assert (=> bs!1525269 (= lambda!335609 lambda!335603)))

(declare-fun bs!1525270 () Bool)

(assert (= bs!1525270 (and d!1928071 d!1927607)))

(assert (=> bs!1525270 (= lambda!335609 lambda!335554)))

(declare-fun bs!1525271 () Bool)

(assert (= bs!1525271 (and d!1928071 d!1927617)))

(assert (=> bs!1525271 (= lambda!335609 lambda!335555)))

(declare-fun bs!1525272 () Bool)

(assert (= bs!1525272 (and d!1928071 d!1927603)))

(assert (=> bs!1525272 (= lambda!335609 lambda!335550)))

(assert (=> d!1928071 (= (inv!83484 setElem!41658) (forall!15216 (exprs!5979 setElem!41658) lambda!335609))))

(declare-fun bs!1525273 () Bool)

(assert (= bs!1525273 d!1928071))

(declare-fun m!6992540 () Bool)

(assert (=> bs!1525273 m!6992540))

(assert (=> setNonEmpty!41658 d!1928071))

(declare-fun d!1928073 () Bool)

(assert (=> d!1928073 (= (head!12712 (exprs!5979 (h!70909 zl!343))) (h!70908 (exprs!5979 (h!70909 zl!343))))))

(assert (=> b!6152263 d!1928073))

(declare-fun bm!511954 () Bool)

(declare-fun call!511960 () Bool)

(declare-fun call!511959 () Bool)

(assert (=> bm!511954 (= call!511960 call!511959)))

(declare-fun b!6153265 () Bool)

(declare-fun e!3749353 () Bool)

(declare-fun e!3749355 () Bool)

(assert (=> b!6153265 (= e!3749353 e!3749355)))

(declare-fun c!1107656 () Bool)

(assert (=> b!6153265 (= c!1107656 ((_ is Union!16095) (ite c!1107348 (regOne!32703 r!7292) (regOne!32702 r!7292))))))

(declare-fun b!6153266 () Bool)

(declare-fun e!3749354 () Bool)

(assert (=> b!6153266 (= e!3749354 call!511959)))

(declare-fun b!6153267 () Bool)

(assert (=> b!6153267 (= e!3749353 e!3749354)))

(declare-fun res!2548651 () Bool)

(assert (=> b!6153267 (= res!2548651 (not (nullable!6088 (reg!16424 (ite c!1107348 (regOne!32703 r!7292) (regOne!32702 r!7292))))))))

(assert (=> b!6153267 (=> (not res!2548651) (not e!3749354))))

(declare-fun b!6153268 () Bool)

(declare-fun e!3749357 () Bool)

(assert (=> b!6153268 (= e!3749357 call!511960)))

(declare-fun b!6153269 () Bool)

(declare-fun e!3749356 () Bool)

(assert (=> b!6153269 (= e!3749356 e!3749357)))

(declare-fun res!2548649 () Bool)

(assert (=> b!6153269 (=> (not res!2548649) (not e!3749357))))

(declare-fun call!511961 () Bool)

(assert (=> b!6153269 (= res!2548649 call!511961)))

(declare-fun b!6153270 () Bool)

(declare-fun res!2548653 () Bool)

(assert (=> b!6153270 (=> res!2548653 e!3749356)))

(assert (=> b!6153270 (= res!2548653 (not ((_ is Concat!24940) (ite c!1107348 (regOne!32703 r!7292) (regOne!32702 r!7292)))))))

(assert (=> b!6153270 (= e!3749355 e!3749356)))

(declare-fun d!1928075 () Bool)

(declare-fun res!2548650 () Bool)

(declare-fun e!3749358 () Bool)

(assert (=> d!1928075 (=> res!2548650 e!3749358)))

(assert (=> d!1928075 (= res!2548650 ((_ is ElementMatch!16095) (ite c!1107348 (regOne!32703 r!7292) (regOne!32702 r!7292))))))

(assert (=> d!1928075 (= (validRegex!7831 (ite c!1107348 (regOne!32703 r!7292) (regOne!32702 r!7292))) e!3749358)))

(declare-fun b!6153271 () Bool)

(assert (=> b!6153271 (= e!3749358 e!3749353)))

(declare-fun c!1107655 () Bool)

(assert (=> b!6153271 (= c!1107655 ((_ is Star!16095) (ite c!1107348 (regOne!32703 r!7292) (regOne!32702 r!7292))))))

(declare-fun b!6153272 () Bool)

(declare-fun e!3749359 () Bool)

(assert (=> b!6153272 (= e!3749359 call!511960)))

(declare-fun bm!511955 () Bool)

(assert (=> bm!511955 (= call!511959 (validRegex!7831 (ite c!1107655 (reg!16424 (ite c!1107348 (regOne!32703 r!7292) (regOne!32702 r!7292))) (ite c!1107656 (regTwo!32703 (ite c!1107348 (regOne!32703 r!7292) (regOne!32702 r!7292))) (regTwo!32702 (ite c!1107348 (regOne!32703 r!7292) (regOne!32702 r!7292)))))))))

(declare-fun b!6153273 () Bool)

(declare-fun res!2548652 () Bool)

(assert (=> b!6153273 (=> (not res!2548652) (not e!3749359))))

(assert (=> b!6153273 (= res!2548652 call!511961)))

(assert (=> b!6153273 (= e!3749355 e!3749359)))

(declare-fun bm!511956 () Bool)

(assert (=> bm!511956 (= call!511961 (validRegex!7831 (ite c!1107656 (regOne!32703 (ite c!1107348 (regOne!32703 r!7292) (regOne!32702 r!7292))) (regOne!32702 (ite c!1107348 (regOne!32703 r!7292) (regOne!32702 r!7292))))))))

(assert (= (and d!1928075 (not res!2548650)) b!6153271))

(assert (= (and b!6153271 c!1107655) b!6153267))

(assert (= (and b!6153271 (not c!1107655)) b!6153265))

(assert (= (and b!6153267 res!2548651) b!6153266))

(assert (= (and b!6153265 c!1107656) b!6153273))

(assert (= (and b!6153265 (not c!1107656)) b!6153270))

(assert (= (and b!6153273 res!2548652) b!6153272))

(assert (= (and b!6153270 (not res!2548653)) b!6153269))

(assert (= (and b!6153269 res!2548649) b!6153268))

(assert (= (or b!6153272 b!6153268) bm!511954))

(assert (= (or b!6153273 b!6153269) bm!511956))

(assert (= (or b!6153266 bm!511954) bm!511955))

(declare-fun m!6992542 () Bool)

(assert (=> b!6153267 m!6992542))

(declare-fun m!6992544 () Bool)

(assert (=> bm!511955 m!6992544))

(declare-fun m!6992546 () Bool)

(assert (=> bm!511956 m!6992546))

(assert (=> bm!511732 d!1928075))

(declare-fun bm!511957 () Bool)

(declare-fun call!511966 () (InoxSet Context!10958))

(declare-fun call!511967 () (InoxSet Context!10958))

(assert (=> bm!511957 (= call!511966 call!511967)))

(declare-fun b!6153274 () Bool)

(declare-fun e!3749363 () (InoxSet Context!10958))

(declare-fun e!3749360 () (InoxSet Context!10958))

(assert (=> b!6153274 (= e!3749363 e!3749360)))

(declare-fun c!1107658 () Bool)

(assert (=> b!6153274 (= c!1107658 ((_ is Union!16095) (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343)))))))))))

(declare-fun b!6153275 () Bool)

(declare-fun call!511965 () (InoxSet Context!10958))

(declare-fun call!511964 () (InoxSet Context!10958))

(assert (=> b!6153275 (= e!3749360 ((_ map or) call!511965 call!511964))))

(declare-fun b!6153276 () Bool)

(declare-fun e!3749362 () (InoxSet Context!10958))

(declare-fun e!3749365 () (InoxSet Context!10958))

(assert (=> b!6153276 (= e!3749362 e!3749365)))

(declare-fun c!1107660 () Bool)

(assert (=> b!6153276 (= c!1107660 ((_ is Concat!24940) (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343)))))))))))

(declare-fun bm!511958 () Bool)

(declare-fun call!511963 () List!64584)

(declare-fun call!511962 () List!64584)

(assert (=> bm!511958 (= call!511963 call!511962)))

(declare-fun c!1107659 () Bool)

(declare-fun d!1928077 () Bool)

(assert (=> d!1928077 (= c!1107659 (and ((_ is ElementMatch!16095) (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343)))))))) (= (c!1107191 (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343)))))))) (h!70910 s!2326))))))

(assert (=> d!1928077 (= (derivationStepZipperDown!1343 (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343))))))) (ite (or c!1107331 c!1107330) lt!2334543 (Context!10959 call!511720)) (h!70910 s!2326)) e!3749363)))

(declare-fun bm!511959 () Bool)

(assert (=> bm!511959 (= call!511967 call!511964)))

(declare-fun b!6153277 () Bool)

(assert (=> b!6153277 (= e!3749365 call!511966)))

(declare-fun b!6153278 () Bool)

(declare-fun e!3749361 () (InoxSet Context!10958))

(assert (=> b!6153278 (= e!3749361 ((as const (Array Context!10958 Bool)) false))))

(declare-fun c!1107661 () Bool)

(declare-fun b!6153279 () Bool)

(assert (=> b!6153279 (= c!1107661 ((_ is Star!16095) (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343)))))))))))

(assert (=> b!6153279 (= e!3749365 e!3749361)))

(declare-fun b!6153280 () Bool)

(assert (=> b!6153280 (= e!3749362 ((_ map or) call!511965 call!511967))))

(declare-fun c!1107657 () Bool)

(declare-fun bm!511960 () Bool)

(assert (=> bm!511960 (= call!511964 (derivationStepZipperDown!1343 (ite c!1107658 (regTwo!32703 (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343)))))))) (ite c!1107657 (regTwo!32702 (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343)))))))) (ite c!1107660 (regOne!32702 (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343)))))))) (reg!16424 (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343))))))))))) (ite (or c!1107658 c!1107657) (ite (or c!1107331 c!1107330) lt!2334543 (Context!10959 call!511720)) (Context!10959 call!511963)) (h!70910 s!2326)))))

(declare-fun b!6153281 () Bool)

(assert (=> b!6153281 (= e!3749361 call!511966)))

(declare-fun bm!511961 () Bool)

(assert (=> bm!511961 (= call!511962 ($colon$colon!1972 (exprs!5979 (ite (or c!1107331 c!1107330) lt!2334543 (Context!10959 call!511720))) (ite (or c!1107657 c!1107660) (regTwo!32702 (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343)))))))) (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343))))))))))))

(declare-fun b!6153282 () Bool)

(declare-fun e!3749364 () Bool)

(assert (=> b!6153282 (= c!1107657 e!3749364)))

(declare-fun res!2548654 () Bool)

(assert (=> b!6153282 (=> (not res!2548654) (not e!3749364))))

(assert (=> b!6153282 (= res!2548654 ((_ is Concat!24940) (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343)))))))))))

(assert (=> b!6153282 (= e!3749360 e!3749362)))

(declare-fun b!6153283 () Bool)

(assert (=> b!6153283 (= e!3749363 (store ((as const (Array Context!10958 Bool)) false) (ite (or c!1107331 c!1107330) lt!2334543 (Context!10959 call!511720)) true))))

(declare-fun bm!511962 () Bool)

(assert (=> bm!511962 (= call!511965 (derivationStepZipperDown!1343 (ite c!1107658 (regOne!32703 (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343)))))))) (regOne!32702 (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343))))))))) (ite c!1107658 (ite (or c!1107331 c!1107330) lt!2334543 (Context!10959 call!511720)) (Context!10959 call!511962)) (h!70910 s!2326)))))

(declare-fun b!6153284 () Bool)

(assert (=> b!6153284 (= e!3749364 (nullable!6088 (regOne!32702 (ite c!1107331 (regTwo!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107330 (regTwo!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (ite c!1107333 (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))) (reg!16424 (h!70908 (exprs!5979 (h!70909 zl!343))))))))))))

(assert (= (and d!1928077 c!1107659) b!6153283))

(assert (= (and d!1928077 (not c!1107659)) b!6153274))

(assert (= (and b!6153274 c!1107658) b!6153275))

(assert (= (and b!6153274 (not c!1107658)) b!6153282))

(assert (= (and b!6153282 res!2548654) b!6153284))

(assert (= (and b!6153282 c!1107657) b!6153280))

(assert (= (and b!6153282 (not c!1107657)) b!6153276))

(assert (= (and b!6153276 c!1107660) b!6153277))

(assert (= (and b!6153276 (not c!1107660)) b!6153279))

(assert (= (and b!6153279 c!1107661) b!6153281))

(assert (= (and b!6153279 (not c!1107661)) b!6153278))

(assert (= (or b!6153277 b!6153281) bm!511958))

(assert (= (or b!6153277 b!6153281) bm!511957))

(assert (= (or b!6153280 bm!511958) bm!511961))

(assert (= (or b!6153280 bm!511957) bm!511959))

(assert (= (or b!6153275 bm!511959) bm!511960))

(assert (= (or b!6153275 b!6153280) bm!511962))

(declare-fun m!6992548 () Bool)

(assert (=> b!6153284 m!6992548))

(declare-fun m!6992550 () Bool)

(assert (=> b!6153283 m!6992550))

(declare-fun m!6992552 () Bool)

(assert (=> bm!511960 m!6992552))

(declare-fun m!6992554 () Bool)

(assert (=> bm!511961 m!6992554))

(declare-fun m!6992556 () Bool)

(assert (=> bm!511962 m!6992556))

(assert (=> bm!511717 d!1928077))

(assert (=> d!1927473 d!1927931))

(declare-fun bm!511963 () Bool)

(declare-fun call!511972 () (InoxSet Context!10958))

(declare-fun call!511973 () (InoxSet Context!10958))

(assert (=> bm!511963 (= call!511972 call!511973)))

(declare-fun b!6153285 () Bool)

(declare-fun e!3749369 () (InoxSet Context!10958))

(declare-fun e!3749366 () (InoxSet Context!10958))

(assert (=> b!6153285 (= e!3749369 e!3749366)))

(declare-fun c!1107663 () Bool)

(assert (=> b!6153285 (= c!1107663 ((_ is Union!16095) (h!70908 (exprs!5979 lt!2334527))))))

(declare-fun b!6153286 () Bool)

(declare-fun call!511971 () (InoxSet Context!10958))

(declare-fun call!511970 () (InoxSet Context!10958))

(assert (=> b!6153286 (= e!3749366 ((_ map or) call!511971 call!511970))))

(declare-fun b!6153287 () Bool)

(declare-fun e!3749368 () (InoxSet Context!10958))

(declare-fun e!3749371 () (InoxSet Context!10958))

(assert (=> b!6153287 (= e!3749368 e!3749371)))

(declare-fun c!1107665 () Bool)

(assert (=> b!6153287 (= c!1107665 ((_ is Concat!24940) (h!70908 (exprs!5979 lt!2334527))))))

(declare-fun bm!511964 () Bool)

(declare-fun call!511969 () List!64584)

(declare-fun call!511968 () List!64584)

(assert (=> bm!511964 (= call!511969 call!511968)))

(declare-fun d!1928079 () Bool)

(declare-fun c!1107664 () Bool)

(assert (=> d!1928079 (= c!1107664 (and ((_ is ElementMatch!16095) (h!70908 (exprs!5979 lt!2334527))) (= (c!1107191 (h!70908 (exprs!5979 lt!2334527))) (h!70910 s!2326))))))

(assert (=> d!1928079 (= (derivationStepZipperDown!1343 (h!70908 (exprs!5979 lt!2334527)) (Context!10959 (t!378073 (exprs!5979 lt!2334527))) (h!70910 s!2326)) e!3749369)))

(declare-fun bm!511965 () Bool)

(assert (=> bm!511965 (= call!511973 call!511970)))

(declare-fun b!6153288 () Bool)

(assert (=> b!6153288 (= e!3749371 call!511972)))

(declare-fun b!6153289 () Bool)

(declare-fun e!3749367 () (InoxSet Context!10958))

(assert (=> b!6153289 (= e!3749367 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6153290 () Bool)

(declare-fun c!1107666 () Bool)

(assert (=> b!6153290 (= c!1107666 ((_ is Star!16095) (h!70908 (exprs!5979 lt!2334527))))))

(assert (=> b!6153290 (= e!3749371 e!3749367)))

(declare-fun b!6153291 () Bool)

(assert (=> b!6153291 (= e!3749368 ((_ map or) call!511971 call!511973))))

(declare-fun bm!511966 () Bool)

(declare-fun c!1107662 () Bool)

(assert (=> bm!511966 (= call!511970 (derivationStepZipperDown!1343 (ite c!1107663 (regTwo!32703 (h!70908 (exprs!5979 lt!2334527))) (ite c!1107662 (regTwo!32702 (h!70908 (exprs!5979 lt!2334527))) (ite c!1107665 (regOne!32702 (h!70908 (exprs!5979 lt!2334527))) (reg!16424 (h!70908 (exprs!5979 lt!2334527)))))) (ite (or c!1107663 c!1107662) (Context!10959 (t!378073 (exprs!5979 lt!2334527))) (Context!10959 call!511969)) (h!70910 s!2326)))))

(declare-fun b!6153292 () Bool)

(assert (=> b!6153292 (= e!3749367 call!511972)))

(declare-fun bm!511967 () Bool)

(assert (=> bm!511967 (= call!511968 ($colon$colon!1972 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334527)))) (ite (or c!1107662 c!1107665) (regTwo!32702 (h!70908 (exprs!5979 lt!2334527))) (h!70908 (exprs!5979 lt!2334527)))))))

(declare-fun b!6153293 () Bool)

(declare-fun e!3749370 () Bool)

(assert (=> b!6153293 (= c!1107662 e!3749370)))

(declare-fun res!2548655 () Bool)

(assert (=> b!6153293 (=> (not res!2548655) (not e!3749370))))

(assert (=> b!6153293 (= res!2548655 ((_ is Concat!24940) (h!70908 (exprs!5979 lt!2334527))))))

(assert (=> b!6153293 (= e!3749366 e!3749368)))

(declare-fun b!6153294 () Bool)

(assert (=> b!6153294 (= e!3749369 (store ((as const (Array Context!10958 Bool)) false) (Context!10959 (t!378073 (exprs!5979 lt!2334527))) true))))

(declare-fun bm!511968 () Bool)

(assert (=> bm!511968 (= call!511971 (derivationStepZipperDown!1343 (ite c!1107663 (regOne!32703 (h!70908 (exprs!5979 lt!2334527))) (regOne!32702 (h!70908 (exprs!5979 lt!2334527)))) (ite c!1107663 (Context!10959 (t!378073 (exprs!5979 lt!2334527))) (Context!10959 call!511968)) (h!70910 s!2326)))))

(declare-fun b!6153295 () Bool)

(assert (=> b!6153295 (= e!3749370 (nullable!6088 (regOne!32702 (h!70908 (exprs!5979 lt!2334527)))))))

(assert (= (and d!1928079 c!1107664) b!6153294))

(assert (= (and d!1928079 (not c!1107664)) b!6153285))

(assert (= (and b!6153285 c!1107663) b!6153286))

(assert (= (and b!6153285 (not c!1107663)) b!6153293))

(assert (= (and b!6153293 res!2548655) b!6153295))

(assert (= (and b!6153293 c!1107662) b!6153291))

(assert (= (and b!6153293 (not c!1107662)) b!6153287))

(assert (= (and b!6153287 c!1107665) b!6153288))

(assert (= (and b!6153287 (not c!1107665)) b!6153290))

(assert (= (and b!6153290 c!1107666) b!6153292))

(assert (= (and b!6153290 (not c!1107666)) b!6153289))

(assert (= (or b!6153288 b!6153292) bm!511964))

(assert (= (or b!6153288 b!6153292) bm!511963))

(assert (= (or b!6153291 bm!511964) bm!511967))

(assert (= (or b!6153291 bm!511963) bm!511965))

(assert (= (or b!6153286 bm!511965) bm!511966))

(assert (= (or b!6153286 b!6153291) bm!511968))

(declare-fun m!6992558 () Bool)

(assert (=> b!6153295 m!6992558))

(declare-fun m!6992560 () Bool)

(assert (=> b!6153294 m!6992560))

(declare-fun m!6992562 () Bool)

(assert (=> bm!511966 m!6992562))

(declare-fun m!6992564 () Bool)

(assert (=> bm!511967 m!6992564))

(declare-fun m!6992566 () Bool)

(assert (=> bm!511968 m!6992566))

(assert (=> bm!511723 d!1928079))

(assert (=> b!6152193 d!1927941))

(declare-fun d!1928081 () Bool)

(assert (=> d!1928081 (= (isEmpty!36420 (tail!11797 (unfocusZipperList!1516 zl!343))) ((_ is Nil!64460) (tail!11797 (unfocusZipperList!1516 zl!343))))))

(assert (=> b!6152226 d!1928081))

(declare-fun d!1928083 () Bool)

(assert (=> d!1928083 (= (tail!11797 (unfocusZipperList!1516 zl!343)) (t!378073 (unfocusZipperList!1516 zl!343)))))

(assert (=> b!6152226 d!1928083))

(declare-fun d!1928085 () Bool)

(declare-fun c!1107667 () Bool)

(assert (=> d!1928085 (= c!1107667 (isEmpty!36424 (tail!11796 (t!378075 s!2326))))))

(declare-fun e!3749372 () Bool)

(assert (=> d!1928085 (= (matchZipper!2107 (derivationStepZipper!2068 ((_ map or) lt!2334537 lt!2334539) (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))) e!3749372)))

(declare-fun b!6153296 () Bool)

(assert (=> b!6153296 (= e!3749372 (nullableZipper!1876 (derivationStepZipper!2068 ((_ map or) lt!2334537 lt!2334539) (head!12711 (t!378075 s!2326)))))))

(declare-fun b!6153297 () Bool)

(assert (=> b!6153297 (= e!3749372 (matchZipper!2107 (derivationStepZipper!2068 (derivationStepZipper!2068 ((_ map or) lt!2334537 lt!2334539) (head!12711 (t!378075 s!2326))) (head!12711 (tail!11796 (t!378075 s!2326)))) (tail!11796 (tail!11796 (t!378075 s!2326)))))))

(assert (= (and d!1928085 c!1107667) b!6153296))

(assert (= (and d!1928085 (not c!1107667)) b!6153297))

(assert (=> d!1928085 m!6991260))

(assert (=> d!1928085 m!6992348))

(assert (=> b!6153296 m!6991448))

(declare-fun m!6992568 () Bool)

(assert (=> b!6153296 m!6992568))

(assert (=> b!6153297 m!6991260))

(assert (=> b!6153297 m!6992352))

(assert (=> b!6153297 m!6991448))

(assert (=> b!6153297 m!6992352))

(declare-fun m!6992570 () Bool)

(assert (=> b!6153297 m!6992570))

(assert (=> b!6153297 m!6991260))

(assert (=> b!6153297 m!6992356))

(assert (=> b!6153297 m!6992570))

(assert (=> b!6153297 m!6992356))

(declare-fun m!6992572 () Bool)

(assert (=> b!6153297 m!6992572))

(assert (=> b!6152009 d!1928085))

(declare-fun bs!1525274 () Bool)

(declare-fun d!1928087 () Bool)

(assert (= bs!1525274 (and d!1928087 d!1927961)))

(declare-fun lambda!335610 () Int)

(assert (=> bs!1525274 (= lambda!335610 lambda!335599)))

(declare-fun bs!1525275 () Bool)

(assert (= bs!1525275 (and d!1928087 d!1928045)))

(assert (=> bs!1525275 (= lambda!335610 lambda!335605)))

(declare-fun bs!1525276 () Bool)

(assert (= bs!1525276 (and d!1928087 d!1928063)))

(assert (=> bs!1525276 (= lambda!335610 lambda!335607)))

(declare-fun bs!1525277 () Bool)

(assert (= bs!1525277 (and d!1928087 b!6151542)))

(assert (=> bs!1525277 (= (= (head!12711 (t!378075 s!2326)) (h!70910 s!2326)) (= lambda!335610 lambda!335497))))

(declare-fun bs!1525278 () Bool)

(assert (= bs!1525278 (and d!1928087 d!1927993)))

(assert (=> bs!1525278 (= lambda!335610 lambda!335601)))

(assert (=> d!1928087 true))

(assert (=> d!1928087 (= (derivationStepZipper!2068 ((_ map or) lt!2334537 lt!2334539) (head!12711 (t!378075 s!2326))) (flatMap!1600 ((_ map or) lt!2334537 lt!2334539) lambda!335610))))

(declare-fun bs!1525279 () Bool)

(assert (= bs!1525279 d!1928087))

(declare-fun m!6992574 () Bool)

(assert (=> bs!1525279 m!6992574))

(assert (=> b!6152009 d!1928087))

(assert (=> b!6152009 d!1927963))

(assert (=> b!6152009 d!1927965))

(assert (=> b!6152068 d!1927567))

(declare-fun d!1928089 () Bool)

(assert (=> d!1928089 (= (nullable!6088 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))) (nullableFct!2052 (h!70908 (exprs!5979 (Context!10959 (Cons!64460 (h!70908 (exprs!5979 (h!70909 zl!343))) (t!378073 (exprs!5979 (h!70909 zl!343)))))))))))

(declare-fun bs!1525280 () Bool)

(assert (= bs!1525280 d!1928089))

(declare-fun m!6992576 () Bool)

(assert (=> bs!1525280 m!6992576))

(assert (=> b!6152063 d!1928089))

(declare-fun bm!511969 () Bool)

(declare-fun call!511978 () (InoxSet Context!10958))

(declare-fun call!511979 () (InoxSet Context!10958))

(assert (=> bm!511969 (= call!511978 call!511979)))

(declare-fun b!6153298 () Bool)

(declare-fun e!3749376 () (InoxSet Context!10958))

(declare-fun e!3749373 () (InoxSet Context!10958))

(assert (=> b!6153298 (= e!3749376 e!3749373)))

(declare-fun c!1107669 () Bool)

(assert (=> b!6153298 (= c!1107669 ((_ is Union!16095) (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))))))

(declare-fun b!6153299 () Bool)

(declare-fun call!511977 () (InoxSet Context!10958))

(declare-fun call!511976 () (InoxSet Context!10958))

(assert (=> b!6153299 (= e!3749373 ((_ map or) call!511977 call!511976))))

(declare-fun b!6153300 () Bool)

(declare-fun e!3749375 () (InoxSet Context!10958))

(declare-fun e!3749378 () (InoxSet Context!10958))

(assert (=> b!6153300 (= e!3749375 e!3749378)))

(declare-fun c!1107671 () Bool)

(assert (=> b!6153300 (= c!1107671 ((_ is Concat!24940) (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))))))

(declare-fun bm!511970 () Bool)

(declare-fun call!511975 () List!64584)

(declare-fun call!511974 () List!64584)

(assert (=> bm!511970 (= call!511975 call!511974)))

(declare-fun d!1928091 () Bool)

(declare-fun c!1107670 () Bool)

(assert (=> d!1928091 (= c!1107670 (and ((_ is ElementMatch!16095) (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))) (= (c!1107191 (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))) (h!70910 s!2326))))))

(assert (=> d!1928091 (= (derivationStepZipperDown!1343 (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343))))) (ite c!1107331 lt!2334543 (Context!10959 call!511719)) (h!70910 s!2326)) e!3749376)))

(declare-fun bm!511971 () Bool)

(assert (=> bm!511971 (= call!511979 call!511976)))

(declare-fun b!6153301 () Bool)

(assert (=> b!6153301 (= e!3749378 call!511978)))

(declare-fun b!6153302 () Bool)

(declare-fun e!3749374 () (InoxSet Context!10958))

(assert (=> b!6153302 (= e!3749374 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6153303 () Bool)

(declare-fun c!1107672 () Bool)

(assert (=> b!6153303 (= c!1107672 ((_ is Star!16095) (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))))))

(assert (=> b!6153303 (= e!3749378 e!3749374)))

(declare-fun b!6153304 () Bool)

(assert (=> b!6153304 (= e!3749375 ((_ map or) call!511977 call!511979))))

(declare-fun c!1107668 () Bool)

(declare-fun bm!511972 () Bool)

(assert (=> bm!511972 (= call!511976 (derivationStepZipperDown!1343 (ite c!1107669 (regTwo!32703 (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))) (ite c!1107668 (regTwo!32702 (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))) (ite c!1107671 (regOne!32702 (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))) (reg!16424 (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343))))))))) (ite (or c!1107669 c!1107668) (ite c!1107331 lt!2334543 (Context!10959 call!511719)) (Context!10959 call!511975)) (h!70910 s!2326)))))

(declare-fun b!6153305 () Bool)

(assert (=> b!6153305 (= e!3749374 call!511978)))

(declare-fun bm!511973 () Bool)

(assert (=> bm!511973 (= call!511974 ($colon$colon!1972 (exprs!5979 (ite c!1107331 lt!2334543 (Context!10959 call!511719))) (ite (or c!1107668 c!1107671) (regTwo!32702 (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))) (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343))))))))))

(declare-fun b!6153306 () Bool)

(declare-fun e!3749377 () Bool)

(assert (=> b!6153306 (= c!1107668 e!3749377)))

(declare-fun res!2548656 () Bool)

(assert (=> b!6153306 (=> (not res!2548656) (not e!3749377))))

(assert (=> b!6153306 (= res!2548656 ((_ is Concat!24940) (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))))))

(assert (=> b!6153306 (= e!3749373 e!3749375)))

(declare-fun b!6153307 () Bool)

(assert (=> b!6153307 (= e!3749376 (store ((as const (Array Context!10958 Bool)) false) (ite c!1107331 lt!2334543 (Context!10959 call!511719)) true))))

(declare-fun bm!511974 () Bool)

(assert (=> bm!511974 (= call!511977 (derivationStepZipperDown!1343 (ite c!1107669 (regOne!32703 (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343)))))) (regOne!32702 (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343))))))) (ite c!1107669 (ite c!1107331 lt!2334543 (Context!10959 call!511719)) (Context!10959 call!511974)) (h!70910 s!2326)))))

(declare-fun b!6153308 () Bool)

(assert (=> b!6153308 (= e!3749377 (nullable!6088 (regOne!32702 (ite c!1107331 (regOne!32703 (h!70908 (exprs!5979 (h!70909 zl!343)))) (regOne!32702 (h!70908 (exprs!5979 (h!70909 zl!343))))))))))

(assert (= (and d!1928091 c!1107670) b!6153307))

(assert (= (and d!1928091 (not c!1107670)) b!6153298))

(assert (= (and b!6153298 c!1107669) b!6153299))

(assert (= (and b!6153298 (not c!1107669)) b!6153306))

(assert (= (and b!6153306 res!2548656) b!6153308))

(assert (= (and b!6153306 c!1107668) b!6153304))

(assert (= (and b!6153306 (not c!1107668)) b!6153300))

(assert (= (and b!6153300 c!1107671) b!6153301))

(assert (= (and b!6153300 (not c!1107671)) b!6153303))

(assert (= (and b!6153303 c!1107672) b!6153305))

(assert (= (and b!6153303 (not c!1107672)) b!6153302))

(assert (= (or b!6153301 b!6153305) bm!511970))

(assert (= (or b!6153301 b!6153305) bm!511969))

(assert (= (or b!6153304 bm!511970) bm!511973))

(assert (= (or b!6153304 bm!511969) bm!511971))

(assert (= (or b!6153299 bm!511971) bm!511972))

(assert (= (or b!6153299 b!6153304) bm!511974))

(declare-fun m!6992578 () Bool)

(assert (=> b!6153308 m!6992578))

(declare-fun m!6992580 () Bool)

(assert (=> b!6153307 m!6992580))

(declare-fun m!6992582 () Bool)

(assert (=> bm!511972 m!6992582))

(declare-fun m!6992584 () Bool)

(assert (=> bm!511973 m!6992584))

(declare-fun m!6992586 () Bool)

(assert (=> bm!511974 m!6992586))

(assert (=> bm!511719 d!1928091))

(assert (=> b!6152256 d!1927619))

(declare-fun bm!511975 () Bool)

(declare-fun call!511984 () (InoxSet Context!10958))

(declare-fun call!511985 () (InoxSet Context!10958))

(assert (=> bm!511975 (= call!511984 call!511985)))

(declare-fun b!6153309 () Bool)

(declare-fun e!3749382 () (InoxSet Context!10958))

(declare-fun e!3749379 () (InoxSet Context!10958))

(assert (=> b!6153309 (= e!3749382 e!3749379)))

(declare-fun c!1107674 () Bool)

(assert (=> b!6153309 (= c!1107674 ((_ is Union!16095) (h!70908 (exprs!5979 lt!2334543))))))

(declare-fun b!6153310 () Bool)

(declare-fun call!511983 () (InoxSet Context!10958))

(declare-fun call!511982 () (InoxSet Context!10958))

(assert (=> b!6153310 (= e!3749379 ((_ map or) call!511983 call!511982))))

(declare-fun b!6153311 () Bool)

(declare-fun e!3749381 () (InoxSet Context!10958))

(declare-fun e!3749384 () (InoxSet Context!10958))

(assert (=> b!6153311 (= e!3749381 e!3749384)))

(declare-fun c!1107676 () Bool)

(assert (=> b!6153311 (= c!1107676 ((_ is Concat!24940) (h!70908 (exprs!5979 lt!2334543))))))

(declare-fun bm!511976 () Bool)

(declare-fun call!511981 () List!64584)

(declare-fun call!511980 () List!64584)

(assert (=> bm!511976 (= call!511981 call!511980)))

(declare-fun d!1928093 () Bool)

(declare-fun c!1107675 () Bool)

(assert (=> d!1928093 (= c!1107675 (and ((_ is ElementMatch!16095) (h!70908 (exprs!5979 lt!2334543))) (= (c!1107191 (h!70908 (exprs!5979 lt!2334543))) (h!70910 s!2326))))))

(assert (=> d!1928093 (= (derivationStepZipperDown!1343 (h!70908 (exprs!5979 lt!2334543)) (Context!10959 (t!378073 (exprs!5979 lt!2334543))) (h!70910 s!2326)) e!3749382)))

(declare-fun bm!511977 () Bool)

(assert (=> bm!511977 (= call!511985 call!511982)))

(declare-fun b!6153312 () Bool)

(assert (=> b!6153312 (= e!3749384 call!511984)))

(declare-fun b!6153313 () Bool)

(declare-fun e!3749380 () (InoxSet Context!10958))

(assert (=> b!6153313 (= e!3749380 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6153314 () Bool)

(declare-fun c!1107677 () Bool)

(assert (=> b!6153314 (= c!1107677 ((_ is Star!16095) (h!70908 (exprs!5979 lt!2334543))))))

(assert (=> b!6153314 (= e!3749384 e!3749380)))

(declare-fun b!6153315 () Bool)

(assert (=> b!6153315 (= e!3749381 ((_ map or) call!511983 call!511985))))

(declare-fun c!1107673 () Bool)

(declare-fun bm!511978 () Bool)

(assert (=> bm!511978 (= call!511982 (derivationStepZipperDown!1343 (ite c!1107674 (regTwo!32703 (h!70908 (exprs!5979 lt!2334543))) (ite c!1107673 (regTwo!32702 (h!70908 (exprs!5979 lt!2334543))) (ite c!1107676 (regOne!32702 (h!70908 (exprs!5979 lt!2334543))) (reg!16424 (h!70908 (exprs!5979 lt!2334543)))))) (ite (or c!1107674 c!1107673) (Context!10959 (t!378073 (exprs!5979 lt!2334543))) (Context!10959 call!511981)) (h!70910 s!2326)))))

(declare-fun b!6153316 () Bool)

(assert (=> b!6153316 (= e!3749380 call!511984)))

(declare-fun bm!511979 () Bool)

(assert (=> bm!511979 (= call!511980 ($colon$colon!1972 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334543)))) (ite (or c!1107673 c!1107676) (regTwo!32702 (h!70908 (exprs!5979 lt!2334543))) (h!70908 (exprs!5979 lt!2334543)))))))

(declare-fun b!6153317 () Bool)

(declare-fun e!3749383 () Bool)

(assert (=> b!6153317 (= c!1107673 e!3749383)))

(declare-fun res!2548657 () Bool)

(assert (=> b!6153317 (=> (not res!2548657) (not e!3749383))))

(assert (=> b!6153317 (= res!2548657 ((_ is Concat!24940) (h!70908 (exprs!5979 lt!2334543))))))

(assert (=> b!6153317 (= e!3749379 e!3749381)))

(declare-fun b!6153318 () Bool)

(assert (=> b!6153318 (= e!3749382 (store ((as const (Array Context!10958 Bool)) false) (Context!10959 (t!378073 (exprs!5979 lt!2334543))) true))))

(declare-fun bm!511980 () Bool)

(assert (=> bm!511980 (= call!511983 (derivationStepZipperDown!1343 (ite c!1107674 (regOne!32703 (h!70908 (exprs!5979 lt!2334543))) (regOne!32702 (h!70908 (exprs!5979 lt!2334543)))) (ite c!1107674 (Context!10959 (t!378073 (exprs!5979 lt!2334543))) (Context!10959 call!511980)) (h!70910 s!2326)))))

(declare-fun b!6153319 () Bool)

(assert (=> b!6153319 (= e!3749383 (nullable!6088 (regOne!32702 (h!70908 (exprs!5979 lt!2334543)))))))

(assert (= (and d!1928093 c!1107675) b!6153318))

(assert (= (and d!1928093 (not c!1107675)) b!6153309))

(assert (= (and b!6153309 c!1107674) b!6153310))

(assert (= (and b!6153309 (not c!1107674)) b!6153317))

(assert (= (and b!6153317 res!2548657) b!6153319))

(assert (= (and b!6153317 c!1107673) b!6153315))

(assert (= (and b!6153317 (not c!1107673)) b!6153311))

(assert (= (and b!6153311 c!1107676) b!6153312))

(assert (= (and b!6153311 (not c!1107676)) b!6153314))

(assert (= (and b!6153314 c!1107677) b!6153316))

(assert (= (and b!6153314 (not c!1107677)) b!6153313))

(assert (= (or b!6153312 b!6153316) bm!511976))

(assert (= (or b!6153312 b!6153316) bm!511975))

(assert (= (or b!6153315 bm!511976) bm!511979))

(assert (= (or b!6153315 bm!511975) bm!511977))

(assert (= (or b!6153310 bm!511977) bm!511978))

(assert (= (or b!6153310 b!6153315) bm!511980))

(declare-fun m!6992588 () Bool)

(assert (=> b!6153319 m!6992588))

(declare-fun m!6992590 () Bool)

(assert (=> b!6153318 m!6992590))

(declare-fun m!6992592 () Bool)

(assert (=> bm!511978 m!6992592))

(declare-fun m!6992594 () Bool)

(assert (=> bm!511979 m!6992594))

(declare-fun m!6992596 () Bool)

(assert (=> bm!511980 m!6992596))

(assert (=> bm!511701 d!1928093))

(declare-fun d!1928095 () Bool)

(declare-fun c!1107678 () Bool)

(assert (=> d!1928095 (= c!1107678 (isEmpty!36424 (t!378075 s!2326)))))

(declare-fun e!3749385 () Bool)

(assert (=> d!1928095 (= (matchZipper!2107 ((_ map or) lt!2334546 lt!2334524) (t!378075 s!2326)) e!3749385)))

(declare-fun b!6153320 () Bool)

(assert (=> b!6153320 (= e!3749385 (nullableZipper!1876 ((_ map or) lt!2334546 lt!2334524)))))

(declare-fun b!6153321 () Bool)

(assert (=> b!6153321 (= e!3749385 (matchZipper!2107 (derivationStepZipper!2068 ((_ map or) lt!2334546 lt!2334524) (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))))))

(assert (= (and d!1928095 c!1107678) b!6153320))

(assert (= (and d!1928095 (not c!1107678)) b!6153321))

(assert (=> d!1928095 m!6991252))

(declare-fun m!6992598 () Bool)

(assert (=> b!6153320 m!6992598))

(assert (=> b!6153321 m!6991256))

(assert (=> b!6153321 m!6991256))

(declare-fun m!6992600 () Bool)

(assert (=> b!6153321 m!6992600))

(assert (=> b!6153321 m!6991260))

(assert (=> b!6153321 m!6992600))

(assert (=> b!6153321 m!6991260))

(declare-fun m!6992602 () Bool)

(assert (=> b!6153321 m!6992602))

(assert (=> d!1927481 d!1928095))

(assert (=> d!1927481 d!1927479))

(declare-fun e!3749386 () Bool)

(declare-fun d!1928097 () Bool)

(assert (=> d!1928097 (= (matchZipper!2107 ((_ map or) lt!2334546 lt!2334524) (t!378075 s!2326)) e!3749386)))

(declare-fun res!2548658 () Bool)

(assert (=> d!1928097 (=> res!2548658 e!3749386)))

(assert (=> d!1928097 (= res!2548658 (matchZipper!2107 lt!2334546 (t!378075 s!2326)))))

(assert (=> d!1928097 true))

(declare-fun _$48!1700 () Unit!157549)

(assert (=> d!1928097 (= (choose!45730 lt!2334546 lt!2334524 (t!378075 s!2326)) _$48!1700)))

(declare-fun b!6153322 () Bool)

(assert (=> b!6153322 (= e!3749386 (matchZipper!2107 lt!2334524 (t!378075 s!2326)))))

(assert (= (and d!1928097 (not res!2548658)) b!6153322))

(assert (=> d!1928097 m!6991294))

(assert (=> d!1928097 m!6991108))

(assert (=> b!6153322 m!6991088))

(assert (=> d!1927481 d!1928097))

(declare-fun bs!1525281 () Bool)

(declare-fun d!1928099 () Bool)

(assert (= bs!1525281 (and d!1928099 d!1927601)))

(declare-fun lambda!335611 () Int)

(assert (=> bs!1525281 (= lambda!335611 lambda!335547)))

(declare-fun bs!1525282 () Bool)

(assert (= bs!1525282 (and d!1928099 d!1927571)))

(assert (=> bs!1525282 (= lambda!335611 lambda!335538)))

(declare-fun bs!1525283 () Bool)

(assert (= bs!1525283 (and d!1928099 d!1927605)))

(assert (=> bs!1525283 (= lambda!335611 lambda!335553)))

(declare-fun bs!1525284 () Bool)

(assert (= bs!1525284 (and d!1928099 d!1928009)))

(assert (=> bs!1525284 (= lambda!335611 lambda!335603)))

(declare-fun bs!1525285 () Bool)

(assert (= bs!1525285 (and d!1928099 d!1927607)))

(assert (=> bs!1525285 (= lambda!335611 lambda!335554)))

(declare-fun bs!1525286 () Bool)

(assert (= bs!1525286 (and d!1928099 d!1927617)))

(assert (=> bs!1525286 (= lambda!335611 lambda!335555)))

(declare-fun bs!1525287 () Bool)

(assert (= bs!1525287 (and d!1928099 d!1928071)))

(assert (=> bs!1525287 (= lambda!335611 lambda!335609)))

(declare-fun bs!1525288 () Bool)

(assert (= bs!1525288 (and d!1928099 d!1927603)))

(assert (=> bs!1525288 (= lambda!335611 lambda!335550)))

(declare-fun b!6153323 () Bool)

(declare-fun e!3749388 () Bool)

(declare-fun lt!2334683 () Regex!16095)

(assert (=> b!6153323 (= e!3749388 (= lt!2334683 (head!12712 (t!378073 (unfocusZipperList!1516 zl!343)))))))

(declare-fun b!6153324 () Bool)

(declare-fun e!3749391 () Regex!16095)

(declare-fun e!3749392 () Regex!16095)

(assert (=> b!6153324 (= e!3749391 e!3749392)))

(declare-fun c!1107679 () Bool)

(assert (=> b!6153324 (= c!1107679 ((_ is Cons!64460) (t!378073 (unfocusZipperList!1516 zl!343))))))

(declare-fun b!6153325 () Bool)

(assert (=> b!6153325 (= e!3749392 (Union!16095 (h!70908 (t!378073 (unfocusZipperList!1516 zl!343))) (generalisedUnion!1939 (t!378073 (t!378073 (unfocusZipperList!1516 zl!343))))))))

(declare-fun b!6153326 () Bool)

(declare-fun e!3749390 () Bool)

(assert (=> b!6153326 (= e!3749390 (isEmpty!36420 (t!378073 (t!378073 (unfocusZipperList!1516 zl!343)))))))

(declare-fun b!6153327 () Bool)

(assert (=> b!6153327 (= e!3749388 (isUnion!952 lt!2334683))))

(declare-fun b!6153328 () Bool)

(declare-fun e!3749389 () Bool)

(assert (=> b!6153328 (= e!3749389 (isEmptyLang!1522 lt!2334683))))

(declare-fun b!6153329 () Bool)

(assert (=> b!6153329 (= e!3749389 e!3749388)))

(declare-fun c!1107682 () Bool)

(assert (=> b!6153329 (= c!1107682 (isEmpty!36420 (tail!11797 (t!378073 (unfocusZipperList!1516 zl!343)))))))

(declare-fun e!3749387 () Bool)

(assert (=> d!1928099 e!3749387))

(declare-fun res!2548660 () Bool)

(assert (=> d!1928099 (=> (not res!2548660) (not e!3749387))))

(assert (=> d!1928099 (= res!2548660 (validRegex!7831 lt!2334683))))

(assert (=> d!1928099 (= lt!2334683 e!3749391)))

(declare-fun c!1107681 () Bool)

(assert (=> d!1928099 (= c!1107681 e!3749390)))

(declare-fun res!2548659 () Bool)

(assert (=> d!1928099 (=> (not res!2548659) (not e!3749390))))

(assert (=> d!1928099 (= res!2548659 ((_ is Cons!64460) (t!378073 (unfocusZipperList!1516 zl!343))))))

(assert (=> d!1928099 (forall!15216 (t!378073 (unfocusZipperList!1516 zl!343)) lambda!335611)))

(assert (=> d!1928099 (= (generalisedUnion!1939 (t!378073 (unfocusZipperList!1516 zl!343))) lt!2334683)))

(declare-fun b!6153330 () Bool)

(assert (=> b!6153330 (= e!3749387 e!3749389)))

(declare-fun c!1107680 () Bool)

(assert (=> b!6153330 (= c!1107680 (isEmpty!36420 (t!378073 (unfocusZipperList!1516 zl!343))))))

(declare-fun b!6153331 () Bool)

(assert (=> b!6153331 (= e!3749392 EmptyLang!16095)))

(declare-fun b!6153332 () Bool)

(assert (=> b!6153332 (= e!3749391 (h!70908 (t!378073 (unfocusZipperList!1516 zl!343))))))

(assert (= (and d!1928099 res!2548659) b!6153326))

(assert (= (and d!1928099 c!1107681) b!6153332))

(assert (= (and d!1928099 (not c!1107681)) b!6153324))

(assert (= (and b!6153324 c!1107679) b!6153325))

(assert (= (and b!6153324 (not c!1107679)) b!6153331))

(assert (= (and d!1928099 res!2548660) b!6153330))

(assert (= (and b!6153330 c!1107680) b!6153328))

(assert (= (and b!6153330 (not c!1107680)) b!6153329))

(assert (= (and b!6153329 c!1107682) b!6153323))

(assert (= (and b!6153329 (not c!1107682)) b!6153327))

(declare-fun m!6992604 () Bool)

(assert (=> b!6153327 m!6992604))

(declare-fun m!6992606 () Bool)

(assert (=> b!6153323 m!6992606))

(declare-fun m!6992608 () Bool)

(assert (=> b!6153325 m!6992608))

(declare-fun m!6992610 () Bool)

(assert (=> b!6153328 m!6992610))

(assert (=> b!6153330 m!6991586))

(declare-fun m!6992612 () Bool)

(assert (=> b!6153329 m!6992612))

(assert (=> b!6153329 m!6992612))

(declare-fun m!6992614 () Bool)

(assert (=> b!6153329 m!6992614))

(declare-fun m!6992616 () Bool)

(assert (=> b!6153326 m!6992616))

(declare-fun m!6992618 () Bool)

(assert (=> d!1928099 m!6992618))

(declare-fun m!6992620 () Bool)

(assert (=> d!1928099 m!6992620))

(assert (=> b!6152222 d!1928099))

(declare-fun d!1928101 () Bool)

(assert (=> d!1928101 (= (nullable!6088 (regOne!32702 (regOne!32703 (regOne!32702 r!7292)))) (nullableFct!2052 (regOne!32702 (regOne!32703 (regOne!32702 r!7292)))))))

(declare-fun bs!1525289 () Bool)

(assert (= bs!1525289 d!1928101))

(declare-fun m!6992622 () Bool)

(assert (=> bs!1525289 m!6992622))

(assert (=> b!6152287 d!1928101))

(declare-fun bs!1525290 () Bool)

(declare-fun b!6153336 () Bool)

(assert (= bs!1525290 (and b!6153336 b!6152155)))

(declare-fun lambda!335612 () Int)

(assert (=> bs!1525290 (not (= lambda!335612 lambda!335544))))

(declare-fun bs!1525291 () Bool)

(assert (= bs!1525291 (and b!6153336 b!6153095)))

(assert (=> bs!1525291 (not (= lambda!335612 lambda!335596))))

(declare-fun bs!1525292 () Bool)

(assert (= bs!1525292 (and b!6153336 d!1927543)))

(assert (=> bs!1525292 (not (= lambda!335612 lambda!335534))))

(declare-fun bs!1525293 () Bool)

(assert (= bs!1525293 (and b!6153336 b!6151532)))

(assert (=> bs!1525293 (not (= lambda!335612 lambda!335495))))

(declare-fun bs!1525294 () Bool)

(assert (= bs!1525294 (and b!6153336 b!6152150)))

(assert (=> bs!1525294 (= (and (= (reg!16424 (regTwo!32703 r!7292)) (reg!16424 r!7292)) (= (regTwo!32703 r!7292) r!7292)) (= lambda!335612 lambda!335543))))

(assert (=> bs!1525292 (not (= lambda!335612 lambda!335535))))

(declare-fun bs!1525295 () Bool)

(assert (= bs!1525295 (and b!6153336 b!6153090)))

(assert (=> bs!1525295 (= (and (= (reg!16424 (regTwo!32703 r!7292)) (reg!16424 (regOne!32703 r!7292))) (= (regTwo!32703 r!7292) (regOne!32703 r!7292))) (= lambda!335612 lambda!335595))))

(assert (=> bs!1525293 (not (= lambda!335612 lambda!335496))))

(declare-fun bs!1525296 () Bool)

(assert (= bs!1525296 (and b!6153336 d!1927535)))

(assert (=> bs!1525296 (not (= lambda!335612 lambda!335529))))

(assert (=> b!6153336 true))

(assert (=> b!6153336 true))

(declare-fun bs!1525297 () Bool)

(declare-fun b!6153341 () Bool)

(assert (= bs!1525297 (and b!6153341 b!6152155)))

(declare-fun lambda!335613 () Int)

(assert (=> bs!1525297 (= (and (= (regOne!32702 (regTwo!32703 r!7292)) (regOne!32702 r!7292)) (= (regTwo!32702 (regTwo!32703 r!7292)) (regTwo!32702 r!7292))) (= lambda!335613 lambda!335544))))

(declare-fun bs!1525298 () Bool)

(assert (= bs!1525298 (and b!6153341 b!6153095)))

(assert (=> bs!1525298 (= (and (= (regOne!32702 (regTwo!32703 r!7292)) (regOne!32702 (regOne!32703 r!7292))) (= (regTwo!32702 (regTwo!32703 r!7292)) (regTwo!32702 (regOne!32703 r!7292)))) (= lambda!335613 lambda!335596))))

(declare-fun bs!1525299 () Bool)

(assert (= bs!1525299 (and b!6153341 d!1927543)))

(assert (=> bs!1525299 (not (= lambda!335613 lambda!335534))))

(declare-fun bs!1525300 () Bool)

(assert (= bs!1525300 (and b!6153341 b!6151532)))

(assert (=> bs!1525300 (not (= lambda!335613 lambda!335495))))

(declare-fun bs!1525301 () Bool)

(assert (= bs!1525301 (and b!6153341 b!6153336)))

(assert (=> bs!1525301 (not (= lambda!335613 lambda!335612))))

(declare-fun bs!1525302 () Bool)

(assert (= bs!1525302 (and b!6153341 b!6152150)))

(assert (=> bs!1525302 (not (= lambda!335613 lambda!335543))))

(assert (=> bs!1525299 (= (and (= (regOne!32702 (regTwo!32703 r!7292)) (regOne!32702 r!7292)) (= (regTwo!32702 (regTwo!32703 r!7292)) (regTwo!32702 r!7292))) (= lambda!335613 lambda!335535))))

(declare-fun bs!1525303 () Bool)

(assert (= bs!1525303 (and b!6153341 b!6153090)))

(assert (=> bs!1525303 (not (= lambda!335613 lambda!335595))))

(assert (=> bs!1525300 (= (and (= (regOne!32702 (regTwo!32703 r!7292)) (regOne!32702 r!7292)) (= (regTwo!32702 (regTwo!32703 r!7292)) (regTwo!32702 r!7292))) (= lambda!335613 lambda!335496))))

(declare-fun bs!1525304 () Bool)

(assert (= bs!1525304 (and b!6153341 d!1927535)))

(assert (=> bs!1525304 (not (= lambda!335613 lambda!335529))))

(assert (=> b!6153341 true))

(assert (=> b!6153341 true))

(declare-fun b!6153333 () Bool)

(declare-fun e!3749394 () Bool)

(assert (=> b!6153333 (= e!3749394 (matchRSpec!3196 (regTwo!32703 (regTwo!32703 r!7292)) s!2326))))

(declare-fun c!1107686 () Bool)

(declare-fun call!511986 () Bool)

(declare-fun bm!511981 () Bool)

(assert (=> bm!511981 (= call!511986 (Exists!3165 (ite c!1107686 lambda!335612 lambda!335613)))))

(declare-fun b!6153334 () Bool)

(declare-fun c!1107685 () Bool)

(assert (=> b!6153334 (= c!1107685 ((_ is Union!16095) (regTwo!32703 r!7292)))))

(declare-fun e!3749397 () Bool)

(declare-fun e!3749396 () Bool)

(assert (=> b!6153334 (= e!3749397 e!3749396)))

(declare-fun bm!511982 () Bool)

(declare-fun call!511987 () Bool)

(assert (=> bm!511982 (= call!511987 (isEmpty!36424 s!2326))))

(declare-fun d!1928103 () Bool)

(declare-fun c!1107684 () Bool)

(assert (=> d!1928103 (= c!1107684 ((_ is EmptyExpr!16095) (regTwo!32703 r!7292)))))

(declare-fun e!3749398 () Bool)

(assert (=> d!1928103 (= (matchRSpec!3196 (regTwo!32703 r!7292) s!2326) e!3749398)))

(declare-fun b!6153335 () Bool)

(declare-fun c!1107683 () Bool)

(assert (=> b!6153335 (= c!1107683 ((_ is ElementMatch!16095) (regTwo!32703 r!7292)))))

(declare-fun e!3749399 () Bool)

(assert (=> b!6153335 (= e!3749399 e!3749397)))

(declare-fun e!3749395 () Bool)

(assert (=> b!6153336 (= e!3749395 call!511986)))

(declare-fun b!6153337 () Bool)

(declare-fun res!2548663 () Bool)

(assert (=> b!6153337 (=> res!2548663 e!3749395)))

(assert (=> b!6153337 (= res!2548663 call!511987)))

(declare-fun e!3749393 () Bool)

(assert (=> b!6153337 (= e!3749393 e!3749395)))

(declare-fun b!6153338 () Bool)

(assert (=> b!6153338 (= e!3749398 call!511987)))

(declare-fun b!6153339 () Bool)

(assert (=> b!6153339 (= e!3749398 e!3749399)))

(declare-fun res!2548661 () Bool)

(assert (=> b!6153339 (= res!2548661 (not ((_ is EmptyLang!16095) (regTwo!32703 r!7292))))))

(assert (=> b!6153339 (=> (not res!2548661) (not e!3749399))))

(declare-fun b!6153340 () Bool)

(assert (=> b!6153340 (= e!3749396 e!3749394)))

(declare-fun res!2548662 () Bool)

(assert (=> b!6153340 (= res!2548662 (matchRSpec!3196 (regOne!32703 (regTwo!32703 r!7292)) s!2326))))

(assert (=> b!6153340 (=> res!2548662 e!3749394)))

(assert (=> b!6153341 (= e!3749393 call!511986)))

(declare-fun b!6153342 () Bool)

(assert (=> b!6153342 (= e!3749396 e!3749393)))

(assert (=> b!6153342 (= c!1107686 ((_ is Star!16095) (regTwo!32703 r!7292)))))

(declare-fun b!6153343 () Bool)

(assert (=> b!6153343 (= e!3749397 (= s!2326 (Cons!64462 (c!1107191 (regTwo!32703 r!7292)) Nil!64462)))))

(assert (= (and d!1928103 c!1107684) b!6153338))

(assert (= (and d!1928103 (not c!1107684)) b!6153339))

(assert (= (and b!6153339 res!2548661) b!6153335))

(assert (= (and b!6153335 c!1107683) b!6153343))

(assert (= (and b!6153335 (not c!1107683)) b!6153334))

(assert (= (and b!6153334 c!1107685) b!6153340))

(assert (= (and b!6153334 (not c!1107685)) b!6153342))

(assert (= (and b!6153340 (not res!2548662)) b!6153333))

(assert (= (and b!6153342 c!1107686) b!6153337))

(assert (= (and b!6153342 (not c!1107686)) b!6153341))

(assert (= (and b!6153337 (not res!2548663)) b!6153336))

(assert (= (or b!6153336 b!6153341) bm!511981))

(assert (= (or b!6153338 b!6153337) bm!511982))

(declare-fun m!6992624 () Bool)

(assert (=> b!6153333 m!6992624))

(declare-fun m!6992626 () Bool)

(assert (=> bm!511981 m!6992626))

(assert (=> bm!511982 m!6991554))

(declare-fun m!6992628 () Bool)

(assert (=> b!6153340 m!6992628))

(assert (=> b!6152147 d!1928103))

(declare-fun bs!1525305 () Bool)

(declare-fun d!1928105 () Bool)

(assert (= bs!1525305 (and d!1928105 d!1927601)))

(declare-fun lambda!335614 () Int)

(assert (=> bs!1525305 (= lambda!335614 lambda!335547)))

(declare-fun bs!1525306 () Bool)

(assert (= bs!1525306 (and d!1928105 d!1927571)))

(assert (=> bs!1525306 (= lambda!335614 lambda!335538)))

(declare-fun bs!1525307 () Bool)

(assert (= bs!1525307 (and d!1928105 d!1927605)))

(assert (=> bs!1525307 (= lambda!335614 lambda!335553)))

(declare-fun bs!1525308 () Bool)

(assert (= bs!1525308 (and d!1928105 d!1928009)))

(assert (=> bs!1525308 (= lambda!335614 lambda!335603)))

(declare-fun bs!1525309 () Bool)

(assert (= bs!1525309 (and d!1928105 d!1928099)))

(assert (=> bs!1525309 (= lambda!335614 lambda!335611)))

(declare-fun bs!1525310 () Bool)

(assert (= bs!1525310 (and d!1928105 d!1927607)))

(assert (=> bs!1525310 (= lambda!335614 lambda!335554)))

(declare-fun bs!1525311 () Bool)

(assert (= bs!1525311 (and d!1928105 d!1927617)))

(assert (=> bs!1525311 (= lambda!335614 lambda!335555)))

(declare-fun bs!1525312 () Bool)

(assert (= bs!1525312 (and d!1928105 d!1928071)))

(assert (=> bs!1525312 (= lambda!335614 lambda!335609)))

(declare-fun bs!1525313 () Bool)

(assert (= bs!1525313 (and d!1928105 d!1927603)))

(assert (=> bs!1525313 (= lambda!335614 lambda!335550)))

(assert (=> d!1928105 (= (inv!83484 (h!70909 (t!378074 zl!343))) (forall!15216 (exprs!5979 (h!70909 (t!378074 zl!343))) lambda!335614))))

(declare-fun bs!1525314 () Bool)

(assert (= bs!1525314 d!1928105))

(declare-fun m!6992630 () Bool)

(assert (=> bs!1525314 m!6992630))

(assert (=> b!6152294 d!1928105))

(declare-fun d!1928107 () Bool)

(assert (=> d!1928107 (= (Exists!3165 lambda!335534) (choose!45731 lambda!335534))))

(declare-fun bs!1525315 () Bool)

(assert (= bs!1525315 d!1928107))

(declare-fun m!6992632 () Bool)

(assert (=> bs!1525315 m!6992632))

(assert (=> d!1927543 d!1928107))

(declare-fun d!1928109 () Bool)

(assert (=> d!1928109 (= (Exists!3165 lambda!335535) (choose!45731 lambda!335535))))

(declare-fun bs!1525316 () Bool)

(assert (= bs!1525316 d!1928109))

(declare-fun m!6992634 () Bool)

(assert (=> bs!1525316 m!6992634))

(assert (=> d!1927543 d!1928109))

(declare-fun bs!1525317 () Bool)

(declare-fun d!1928111 () Bool)

(assert (= bs!1525317 (and d!1928111 b!6152155)))

(declare-fun lambda!335619 () Int)

(assert (=> bs!1525317 (not (= lambda!335619 lambda!335544))))

(declare-fun bs!1525318 () Bool)

(assert (= bs!1525318 (and d!1928111 d!1927543)))

(assert (=> bs!1525318 (= lambda!335619 lambda!335534)))

(declare-fun bs!1525319 () Bool)

(assert (= bs!1525319 (and d!1928111 b!6151532)))

(assert (=> bs!1525319 (= lambda!335619 lambda!335495)))

(declare-fun bs!1525320 () Bool)

(assert (= bs!1525320 (and d!1928111 b!6153336)))

(assert (=> bs!1525320 (not (= lambda!335619 lambda!335612))))

(declare-fun bs!1525321 () Bool)

(assert (= bs!1525321 (and d!1928111 b!6152150)))

(assert (=> bs!1525321 (not (= lambda!335619 lambda!335543))))

(assert (=> bs!1525318 (not (= lambda!335619 lambda!335535))))

(declare-fun bs!1525322 () Bool)

(assert (= bs!1525322 (and d!1928111 b!6153090)))

(assert (=> bs!1525322 (not (= lambda!335619 lambda!335595))))

(assert (=> bs!1525319 (not (= lambda!335619 lambda!335496))))

(declare-fun bs!1525323 () Bool)

(assert (= bs!1525323 (and d!1928111 d!1927535)))

(assert (=> bs!1525323 (= lambda!335619 lambda!335529)))

(declare-fun bs!1525324 () Bool)

(assert (= bs!1525324 (and d!1928111 b!6153341)))

(assert (=> bs!1525324 (not (= lambda!335619 lambda!335613))))

(declare-fun bs!1525325 () Bool)

(assert (= bs!1525325 (and d!1928111 b!6153095)))

(assert (=> bs!1525325 (not (= lambda!335619 lambda!335596))))

(assert (=> d!1928111 true))

(assert (=> d!1928111 true))

(assert (=> d!1928111 true))

(declare-fun lambda!335620 () Int)

(assert (=> bs!1525317 (= lambda!335620 lambda!335544)))

(assert (=> bs!1525318 (not (= lambda!335620 lambda!335534))))

(declare-fun bs!1525326 () Bool)

(assert (= bs!1525326 d!1928111))

(assert (=> bs!1525326 (not (= lambda!335620 lambda!335619))))

(assert (=> bs!1525319 (not (= lambda!335620 lambda!335495))))

(assert (=> bs!1525320 (not (= lambda!335620 lambda!335612))))

(assert (=> bs!1525321 (not (= lambda!335620 lambda!335543))))

(assert (=> bs!1525318 (= lambda!335620 lambda!335535)))

(assert (=> bs!1525322 (not (= lambda!335620 lambda!335595))))

(assert (=> bs!1525319 (= lambda!335620 lambda!335496)))

(assert (=> bs!1525323 (not (= lambda!335620 lambda!335529))))

(assert (=> bs!1525324 (= (and (= (regOne!32702 r!7292) (regOne!32702 (regTwo!32703 r!7292))) (= (regTwo!32702 r!7292) (regTwo!32702 (regTwo!32703 r!7292)))) (= lambda!335620 lambda!335613))))

(assert (=> bs!1525325 (= (and (= (regOne!32702 r!7292) (regOne!32702 (regOne!32703 r!7292))) (= (regTwo!32702 r!7292) (regTwo!32702 (regOne!32703 r!7292)))) (= lambda!335620 lambda!335596))))

(assert (=> d!1928111 true))

(assert (=> d!1928111 true))

(assert (=> d!1928111 true))

(assert (=> d!1928111 (= (Exists!3165 lambda!335619) (Exists!3165 lambda!335620))))

(assert (=> d!1928111 true))

(declare-fun _$90!1890 () Unit!157549)

(assert (=> d!1928111 (= (choose!45733 (regOne!32702 r!7292) (regTwo!32702 r!7292) s!2326) _$90!1890)))

(declare-fun m!6992636 () Bool)

(assert (=> bs!1525326 m!6992636))

(declare-fun m!6992638 () Bool)

(assert (=> bs!1525326 m!6992638))

(assert (=> d!1927543 d!1928111))

(assert (=> d!1927543 d!1927927))

(assert (=> b!6151826 d!1927551))

(declare-fun d!1928113 () Bool)

(declare-fun res!2548674 () Bool)

(declare-fun e!3749408 () Bool)

(assert (=> d!1928113 (=> res!2548674 e!3749408)))

(assert (=> d!1928113 (= res!2548674 ((_ is EmptyExpr!16095) (regTwo!32703 (regOne!32702 r!7292))))))

(assert (=> d!1928113 (= (nullableFct!2052 (regTwo!32703 (regOne!32702 r!7292))) e!3749408)))

(declare-fun b!6153352 () Bool)

(declare-fun e!3749407 () Bool)

(declare-fun call!511989 () Bool)

(assert (=> b!6153352 (= e!3749407 call!511989)))

(declare-fun b!6153353 () Bool)

(declare-fun e!3749409 () Bool)

(assert (=> b!6153353 (= e!3749408 e!3749409)))

(declare-fun res!2548672 () Bool)

(assert (=> b!6153353 (=> (not res!2548672) (not e!3749409))))

(assert (=> b!6153353 (= res!2548672 (and (not ((_ is EmptyLang!16095) (regTwo!32703 (regOne!32702 r!7292)))) (not ((_ is ElementMatch!16095) (regTwo!32703 (regOne!32702 r!7292))))))))

(declare-fun b!6153354 () Bool)

(declare-fun e!3749406 () Bool)

(assert (=> b!6153354 (= e!3749406 call!511989)))

(declare-fun b!6153355 () Bool)

(declare-fun e!3749405 () Bool)

(declare-fun e!3749404 () Bool)

(assert (=> b!6153355 (= e!3749405 e!3749404)))

(declare-fun c!1107687 () Bool)

(assert (=> b!6153355 (= c!1107687 ((_ is Union!16095) (regTwo!32703 (regOne!32702 r!7292))))))

(declare-fun b!6153356 () Bool)

(assert (=> b!6153356 (= e!3749404 e!3749407)))

(declare-fun res!2548675 () Bool)

(declare-fun call!511988 () Bool)

(assert (=> b!6153356 (= res!2548675 call!511988)))

(assert (=> b!6153356 (=> res!2548675 e!3749407)))

(declare-fun b!6153357 () Bool)

(assert (=> b!6153357 (= e!3749409 e!3749405)))

(declare-fun res!2548676 () Bool)

(assert (=> b!6153357 (=> res!2548676 e!3749405)))

(assert (=> b!6153357 (= res!2548676 ((_ is Star!16095) (regTwo!32703 (regOne!32702 r!7292))))))

(declare-fun bm!511983 () Bool)

(assert (=> bm!511983 (= call!511989 (nullable!6088 (ite c!1107687 (regTwo!32703 (regTwo!32703 (regOne!32702 r!7292))) (regTwo!32702 (regTwo!32703 (regOne!32702 r!7292))))))))

(declare-fun bm!511984 () Bool)

(assert (=> bm!511984 (= call!511988 (nullable!6088 (ite c!1107687 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))))))))

(declare-fun b!6153358 () Bool)

(assert (=> b!6153358 (= e!3749404 e!3749406)))

(declare-fun res!2548673 () Bool)

(assert (=> b!6153358 (= res!2548673 call!511988)))

(assert (=> b!6153358 (=> (not res!2548673) (not e!3749406))))

(assert (= (and d!1928113 (not res!2548674)) b!6153353))

(assert (= (and b!6153353 res!2548672) b!6153357))

(assert (= (and b!6153357 (not res!2548676)) b!6153355))

(assert (= (and b!6153355 c!1107687) b!6153356))

(assert (= (and b!6153355 (not c!1107687)) b!6153358))

(assert (= (and b!6153356 (not res!2548675)) b!6153352))

(assert (= (and b!6153358 res!2548673) b!6153354))

(assert (= (or b!6153352 b!6153354) bm!511983))

(assert (= (or b!6153356 b!6153358) bm!511984))

(declare-fun m!6992640 () Bool)

(assert (=> bm!511983 m!6992640))

(declare-fun m!6992642 () Bool)

(assert (=> bm!511984 m!6992642))

(assert (=> d!1927587 d!1928113))

(assert (=> b!6152186 d!1928035))

(assert (=> b!6152186 d!1927943))

(assert (=> d!1927581 d!1927573))

(declare-fun d!1928115 () Bool)

(assert (=> d!1928115 (= (flatMap!1600 lt!2334538 lambda!335497) (dynLambda!25410 lambda!335497 lt!2334527))))

(assert (=> d!1928115 true))

(declare-fun _$13!3079 () Unit!157549)

(assert (=> d!1928115 (= (choose!45735 lt!2334538 lt!2334527 lambda!335497) _$13!3079)))

(declare-fun b_lambda!234221 () Bool)

(assert (=> (not b_lambda!234221) (not d!1928115)))

(declare-fun bs!1525327 () Bool)

(assert (= bs!1525327 d!1928115))

(assert (=> bs!1525327 m!6991076))

(assert (=> bs!1525327 m!6991516))

(assert (=> d!1927581 d!1928115))

(declare-fun b!6153359 () Bool)

(declare-fun e!3749411 () Bool)

(assert (=> b!6153359 (= e!3749411 (nullable!6088 (h!70908 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334535)))))))))

(declare-fun b!6153360 () Bool)

(declare-fun e!3749410 () (InoxSet Context!10958))

(declare-fun e!3749412 () (InoxSet Context!10958))

(assert (=> b!6153360 (= e!3749410 e!3749412)))

(declare-fun c!1107688 () Bool)

(assert (=> b!6153360 (= c!1107688 ((_ is Cons!64460) (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334535))))))))

(declare-fun b!6153361 () Bool)

(declare-fun call!511990 () (InoxSet Context!10958))

(assert (=> b!6153361 (= e!3749410 ((_ map or) call!511990 (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334535)))))) (h!70910 s!2326))))))

(declare-fun b!6153362 () Bool)

(assert (=> b!6153362 (= e!3749412 call!511990)))

(declare-fun d!1928117 () Bool)

(declare-fun c!1107689 () Bool)

(assert (=> d!1928117 (= c!1107689 e!3749411)))

(declare-fun res!2548677 () Bool)

(assert (=> d!1928117 (=> (not res!2548677) (not e!3749411))))

(assert (=> d!1928117 (= res!2548677 ((_ is Cons!64460) (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334535))))))))

(assert (=> d!1928117 (= (derivationStepZipperUp!1269 (Context!10959 (t!378073 (exprs!5979 lt!2334535))) (h!70910 s!2326)) e!3749410)))

(declare-fun b!6153363 () Bool)

(assert (=> b!6153363 (= e!3749412 ((as const (Array Context!10958 Bool)) false))))

(declare-fun bm!511985 () Bool)

(assert (=> bm!511985 (= call!511990 (derivationStepZipperDown!1343 (h!70908 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334535))))) (Context!10959 (t!378073 (exprs!5979 (Context!10959 (t!378073 (exprs!5979 lt!2334535)))))) (h!70910 s!2326)))))

(assert (= (and d!1928117 res!2548677) b!6153359))

(assert (= (and d!1928117 c!1107689) b!6153361))

(assert (= (and d!1928117 (not c!1107689)) b!6153360))

(assert (= (and b!6153360 c!1107688) b!6153362))

(assert (= (and b!6153360 (not c!1107688)) b!6153363))

(assert (= (or b!6153361 b!6153362) bm!511985))

(declare-fun m!6992644 () Bool)

(assert (=> b!6153359 m!6992644))

(declare-fun m!6992646 () Bool)

(assert (=> b!6153361 m!6992646))

(declare-fun m!6992648 () Bool)

(assert (=> bm!511985 m!6992648))

(assert (=> b!6152075 d!1928117))

(declare-fun d!1928119 () Bool)

(assert (=> d!1928119 (= (nullable!6088 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292)))) (nullableFct!2052 (regOne!32702 (regTwo!32703 (regOne!32702 r!7292)))))))

(declare-fun bs!1525328 () Bool)

(assert (= bs!1525328 d!1928119))

(declare-fun m!6992650 () Bool)

(assert (=> bs!1525328 m!6992650))

(assert (=> b!6152276 d!1928119))

(declare-fun bm!511986 () Bool)

(declare-fun call!511995 () (InoxSet Context!10958))

(declare-fun call!511996 () (InoxSet Context!10958))

(assert (=> bm!511986 (= call!511995 call!511996)))

(declare-fun b!6153364 () Bool)

(declare-fun e!3749416 () (InoxSet Context!10958))

(declare-fun e!3749413 () (InoxSet Context!10958))

(assert (=> b!6153364 (= e!3749416 e!3749413)))

(declare-fun c!1107691 () Bool)

(assert (=> b!6153364 (= c!1107691 ((_ is Union!16095) (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))))))))

(declare-fun b!6153365 () Bool)

(declare-fun call!511994 () (InoxSet Context!10958))

(declare-fun call!511993 () (InoxSet Context!10958))

(assert (=> b!6153365 (= e!3749413 ((_ map or) call!511994 call!511993))))

(declare-fun b!6153366 () Bool)

(declare-fun e!3749415 () (InoxSet Context!10958))

(declare-fun e!3749418 () (InoxSet Context!10958))

(assert (=> b!6153366 (= e!3749415 e!3749418)))

(declare-fun c!1107693 () Bool)

(assert (=> b!6153366 (= c!1107693 ((_ is Concat!24940) (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))))))))

(declare-fun bm!511987 () Bool)

(declare-fun call!511992 () List!64584)

(declare-fun call!511991 () List!64584)

(assert (=> bm!511987 (= call!511992 call!511991)))

(declare-fun c!1107692 () Bool)

(declare-fun d!1928121 () Bool)

(assert (=> d!1928121 (= c!1107692 (and ((_ is ElementMatch!16095) (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))))) (= (c!1107191 (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))))) (h!70910 s!2326))))))

(assert (=> d!1928121 (= (derivationStepZipperDown!1343 (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292)))) (ite c!1107399 lt!2334543 (Context!10959 call!511747)) (h!70910 s!2326)) e!3749416)))

(declare-fun bm!511988 () Bool)

(assert (=> bm!511988 (= call!511996 call!511993)))

(declare-fun b!6153367 () Bool)

(assert (=> b!6153367 (= e!3749418 call!511995)))

(declare-fun b!6153368 () Bool)

(declare-fun e!3749414 () (InoxSet Context!10958))

(assert (=> b!6153368 (= e!3749414 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6153369 () Bool)

(declare-fun c!1107694 () Bool)

(assert (=> b!6153369 (= c!1107694 ((_ is Star!16095) (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))))))))

(assert (=> b!6153369 (= e!3749418 e!3749414)))

(declare-fun b!6153370 () Bool)

(assert (=> b!6153370 (= e!3749415 ((_ map or) call!511994 call!511996))))

(declare-fun bm!511989 () Bool)

(declare-fun c!1107690 () Bool)

(assert (=> bm!511989 (= call!511993 (derivationStepZipperDown!1343 (ite c!1107691 (regTwo!32703 (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))))) (ite c!1107690 (regTwo!32702 (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))))) (ite c!1107693 (regOne!32702 (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))))) (reg!16424 (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292)))))))) (ite (or c!1107691 c!1107690) (ite c!1107399 lt!2334543 (Context!10959 call!511747)) (Context!10959 call!511992)) (h!70910 s!2326)))))

(declare-fun b!6153371 () Bool)

(assert (=> b!6153371 (= e!3749414 call!511995)))

(declare-fun bm!511990 () Bool)

(assert (=> bm!511990 (= call!511991 ($colon$colon!1972 (exprs!5979 (ite c!1107399 lt!2334543 (Context!10959 call!511747))) (ite (or c!1107690 c!1107693) (regTwo!32702 (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))))) (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292)))))))))

(declare-fun b!6153372 () Bool)

(declare-fun e!3749417 () Bool)

(assert (=> b!6153372 (= c!1107690 e!3749417)))

(declare-fun res!2548678 () Bool)

(assert (=> b!6153372 (=> (not res!2548678) (not e!3749417))))

(assert (=> b!6153372 (= res!2548678 ((_ is Concat!24940) (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))))))))

(assert (=> b!6153372 (= e!3749413 e!3749415)))

(declare-fun b!6153373 () Bool)

(assert (=> b!6153373 (= e!3749416 (store ((as const (Array Context!10958 Bool)) false) (ite c!1107399 lt!2334543 (Context!10959 call!511747)) true))))

(declare-fun bm!511991 () Bool)

(assert (=> bm!511991 (= call!511994 (derivationStepZipperDown!1343 (ite c!1107691 (regOne!32703 (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292))))) (regOne!32702 (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292)))))) (ite c!1107691 (ite c!1107399 lt!2334543 (Context!10959 call!511747)) (Context!10959 call!511991)) (h!70910 s!2326)))))

(declare-fun b!6153374 () Bool)

(assert (=> b!6153374 (= e!3749417 (nullable!6088 (regOne!32702 (ite c!1107399 (regOne!32703 (regTwo!32703 (regOne!32702 r!7292))) (regOne!32702 (regTwo!32703 (regOne!32702 r!7292)))))))))

(assert (= (and d!1928121 c!1107692) b!6153373))

(assert (= (and d!1928121 (not c!1107692)) b!6153364))

(assert (= (and b!6153364 c!1107691) b!6153365))

(assert (= (and b!6153364 (not c!1107691)) b!6153372))

(assert (= (and b!6153372 res!2548678) b!6153374))

(assert (= (and b!6153372 c!1107690) b!6153370))

(assert (= (and b!6153372 (not c!1107690)) b!6153366))

(assert (= (and b!6153366 c!1107693) b!6153367))

(assert (= (and b!6153366 (not c!1107693)) b!6153369))

(assert (= (and b!6153369 c!1107694) b!6153371))

(assert (= (and b!6153369 (not c!1107694)) b!6153368))

(assert (= (or b!6153367 b!6153371) bm!511987))

(assert (= (or b!6153367 b!6153371) bm!511986))

(assert (= (or b!6153370 bm!511987) bm!511990))

(assert (= (or b!6153370 bm!511986) bm!511988))

(assert (= (or b!6153365 bm!511988) bm!511989))

(assert (= (or b!6153365 b!6153370) bm!511991))

(declare-fun m!6992652 () Bool)

(assert (=> b!6153374 m!6992652))

(declare-fun m!6992654 () Bool)

(assert (=> b!6153373 m!6992654))

(declare-fun m!6992656 () Bool)

(assert (=> bm!511989 m!6992656))

(declare-fun m!6992658 () Bool)

(assert (=> bm!511990 m!6992658))

(declare-fun m!6992660 () Bool)

(assert (=> bm!511991 m!6992660))

(assert (=> bm!511747 d!1928121))

(assert (=> d!1927479 d!1927931))

(declare-fun d!1928123 () Bool)

(declare-fun c!1107697 () Bool)

(assert (=> d!1928123 (= c!1107697 ((_ is Nil!64461) lt!2334624))))

(declare-fun e!3749421 () (InoxSet Context!10958))

(assert (=> d!1928123 (= (content!12012 lt!2334624) e!3749421)))

(declare-fun b!6153379 () Bool)

(assert (=> b!6153379 (= e!3749421 ((as const (Array Context!10958 Bool)) false))))

(declare-fun b!6153380 () Bool)

(assert (=> b!6153380 (= e!3749421 ((_ map or) (store ((as const (Array Context!10958 Bool)) false) (h!70909 lt!2334624) true) (content!12012 (t!378074 lt!2334624))))))

(assert (= (and d!1928123 c!1107697) b!6153379))

(assert (= (and d!1928123 (not c!1107697)) b!6153380))

(declare-fun m!6992662 () Bool)

(assert (=> b!6153380 m!6992662))

(declare-fun m!6992664 () Bool)

(assert (=> b!6153380 m!6992664))

(assert (=> b!6152114 d!1928123))

(assert (=> d!1927547 d!1927549))

(assert (=> d!1927547 d!1927473))

(declare-fun d!1928125 () Bool)

(declare-fun e!3749422 () Bool)

(assert (=> d!1928125 (= (matchZipper!2107 ((_ map or) lt!2334537 lt!2334539) (t!378075 s!2326)) e!3749422)))

(declare-fun res!2548679 () Bool)

(assert (=> d!1928125 (=> res!2548679 e!3749422)))

(assert (=> d!1928125 (= res!2548679 (matchZipper!2107 lt!2334537 (t!378075 s!2326)))))

(assert (=> d!1928125 true))

(declare-fun _$48!1701 () Unit!157549)

(assert (=> d!1928125 (= (choose!45730 lt!2334537 lt!2334539 (t!378075 s!2326)) _$48!1701)))

(declare-fun b!6153381 () Bool)

(assert (=> b!6153381 (= e!3749422 (matchZipper!2107 lt!2334539 (t!378075 s!2326)))))

(assert (= (and d!1928125 (not res!2548679)) b!6153381))

(assert (=> d!1928125 m!6991026))

(assert (=> d!1928125 m!6991024))

(assert (=> b!6153381 m!6991082))

(assert (=> d!1927547 d!1928125))

(declare-fun b!6153383 () Bool)

(declare-fun e!3749429 () Bool)

(declare-fun e!3749427 () Bool)

(assert (=> b!6153383 (= e!3749429 e!3749427)))

(declare-fun res!2548685 () Bool)

(assert (=> b!6153383 (=> (not res!2548685) (not e!3749427))))

(declare-fun lt!2334684 () Bool)

(assert (=> b!6153383 (= res!2548685 (not lt!2334684))))

(declare-fun bm!511992 () Bool)

(declare-fun call!511997 () Bool)

(assert (=> bm!511992 (= call!511997 (isEmpty!36424 (_2!36377 (get!22244 lt!2334607))))))

(declare-fun b!6153384 () Bool)

(declare-fun res!2548684 () Bool)

(declare-fun e!3749423 () Bool)

(assert (=> b!6153384 (=> res!2548684 e!3749423)))

(assert (=> b!6153384 (= res!2548684 (not (isEmpty!36424 (tail!11796 (_2!36377 (get!22244 lt!2334607))))))))

(declare-fun b!6153385 () Bool)

(declare-fun e!3749428 () Bool)

(assert (=> b!6153385 (= e!3749428 (not lt!2334684))))

(declare-fun b!6153386 () Bool)

(declare-fun res!2548681 () Bool)

(assert (=> b!6153386 (=> res!2548681 e!3749429)))

(declare-fun e!3749425 () Bool)

(assert (=> b!6153386 (= res!2548681 e!3749425)))

(declare-fun res!2548687 () Bool)

(assert (=> b!6153386 (=> (not res!2548687) (not e!3749425))))

(assert (=> b!6153386 (= res!2548687 lt!2334684)))

(declare-fun b!6153387 () Bool)

(assert (=> b!6153387 (= e!3749425 (= (head!12711 (_2!36377 (get!22244 lt!2334607))) (c!1107191 (regTwo!32702 r!7292))))))

(declare-fun b!6153388 () Bool)

(declare-fun e!3749426 () Bool)

(assert (=> b!6153388 (= e!3749426 e!3749428)))

(declare-fun c!1107698 () Bool)

(assert (=> b!6153388 (= c!1107698 ((_ is EmptyLang!16095) (regTwo!32702 r!7292)))))

(declare-fun b!6153389 () Bool)

(assert (=> b!6153389 (= e!3749423 (not (= (head!12711 (_2!36377 (get!22244 lt!2334607))) (c!1107191 (regTwo!32702 r!7292)))))))

(declare-fun b!6153382 () Bool)

(declare-fun res!2548686 () Bool)

(assert (=> b!6153382 (=> (not res!2548686) (not e!3749425))))

(assert (=> b!6153382 (= res!2548686 (isEmpty!36424 (tail!11796 (_2!36377 (get!22244 lt!2334607)))))))

(declare-fun d!1928127 () Bool)

(assert (=> d!1928127 e!3749426))

(declare-fun c!1107699 () Bool)

(assert (=> d!1928127 (= c!1107699 ((_ is EmptyExpr!16095) (regTwo!32702 r!7292)))))

(declare-fun e!3749424 () Bool)

(assert (=> d!1928127 (= lt!2334684 e!3749424)))

(declare-fun c!1107700 () Bool)

(assert (=> d!1928127 (= c!1107700 (isEmpty!36424 (_2!36377 (get!22244 lt!2334607))))))

(assert (=> d!1928127 (validRegex!7831 (regTwo!32702 r!7292))))

(assert (=> d!1928127 (= (matchR!8278 (regTwo!32702 r!7292) (_2!36377 (get!22244 lt!2334607))) lt!2334684)))

(declare-fun b!6153390 () Bool)

(assert (=> b!6153390 (= e!3749424 (nullable!6088 (regTwo!32702 r!7292)))))

(declare-fun b!6153391 () Bool)

(declare-fun res!2548683 () Bool)

(assert (=> b!6153391 (=> res!2548683 e!3749429)))

(assert (=> b!6153391 (= res!2548683 (not ((_ is ElementMatch!16095) (regTwo!32702 r!7292))))))

(assert (=> b!6153391 (= e!3749428 e!3749429)))

(declare-fun b!6153392 () Bool)

(declare-fun res!2548680 () Bool)

(assert (=> b!6153392 (=> (not res!2548680) (not e!3749425))))

(assert (=> b!6153392 (= res!2548680 (not call!511997))))

(declare-fun b!6153393 () Bool)

(assert (=> b!6153393 (= e!3749426 (= lt!2334684 call!511997))))

(declare-fun b!6153394 () Bool)

(assert (=> b!6153394 (= e!3749424 (matchR!8278 (derivativeStep!4815 (regTwo!32702 r!7292) (head!12711 (_2!36377 (get!22244 lt!2334607)))) (tail!11796 (_2!36377 (get!22244 lt!2334607)))))))

(declare-fun b!6153395 () Bool)

(assert (=> b!6153395 (= e!3749427 e!3749423)))

(declare-fun res!2548682 () Bool)

(assert (=> b!6153395 (=> res!2548682 e!3749423)))

(assert (=> b!6153395 (= res!2548682 call!511997)))

(assert (= (and d!1928127 c!1107700) b!6153390))

(assert (= (and d!1928127 (not c!1107700)) b!6153394))

(assert (= (and d!1928127 c!1107699) b!6153393))

(assert (= (and d!1928127 (not c!1107699)) b!6153388))

(assert (= (and b!6153388 c!1107698) b!6153385))

(assert (= (and b!6153388 (not c!1107698)) b!6153391))

(assert (= (and b!6153391 (not res!2548683)) b!6153386))

(assert (= (and b!6153386 res!2548687) b!6153392))

(assert (= (and b!6153392 res!2548680) b!6153382))

(assert (= (and b!6153382 res!2548686) b!6153387))

(assert (= (and b!6153386 (not res!2548681)) b!6153383))

(assert (= (and b!6153383 res!2548685) b!6153395))

(assert (= (and b!6153395 (not res!2548682)) b!6153384))

(assert (= (and b!6153384 (not res!2548684)) b!6153389))

(assert (= (or b!6153393 b!6153392 b!6153395) bm!511992))

(declare-fun m!6992666 () Bool)

(assert (=> bm!511992 m!6992666))

(declare-fun m!6992668 () Bool)

(assert (=> b!6153382 m!6992668))

(assert (=> b!6153382 m!6992668))

(declare-fun m!6992670 () Bool)

(assert (=> b!6153382 m!6992670))

(assert (=> b!6153384 m!6992668))

(assert (=> b!6153384 m!6992668))

(assert (=> b!6153384 m!6992670))

(declare-fun m!6992672 () Bool)

(assert (=> b!6153394 m!6992672))

(assert (=> b!6153394 m!6992672))

(declare-fun m!6992674 () Bool)

(assert (=> b!6153394 m!6992674))

(assert (=> b!6153394 m!6992668))

(assert (=> b!6153394 m!6992674))

(assert (=> b!6153394 m!6992668))

(declare-fun m!6992676 () Bool)

(assert (=> b!6153394 m!6992676))

(assert (=> b!6153389 m!6992672))

(assert (=> b!6153390 m!6992444))

(assert (=> d!1928127 m!6992666))

(assert (=> d!1928127 m!6992446))

(assert (=> b!6153387 m!6992672))

(assert (=> b!6151931 d!1928127))

(assert (=> b!6151931 d!1928001))

(declare-fun d!1928129 () Bool)

(declare-fun c!1107701 () Bool)

(assert (=> d!1928129 (= c!1107701 (isEmpty!36424 (tail!11796 (t!378075 s!2326))))))

(declare-fun e!3749430 () Bool)

(assert (=> d!1928129 (= (matchZipper!2107 (derivationStepZipper!2068 lt!2334546 (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))) e!3749430)))

(declare-fun b!6153396 () Bool)

(assert (=> b!6153396 (= e!3749430 (nullableZipper!1876 (derivationStepZipper!2068 lt!2334546 (head!12711 (t!378075 s!2326)))))))

(declare-fun b!6153397 () Bool)

(assert (=> b!6153397 (= e!3749430 (matchZipper!2107 (derivationStepZipper!2068 (derivationStepZipper!2068 lt!2334546 (head!12711 (t!378075 s!2326))) (head!12711 (tail!11796 (t!378075 s!2326)))) (tail!11796 (tail!11796 (t!378075 s!2326)))))))

(assert (= (and d!1928129 c!1107701) b!6153396))

(assert (= (and d!1928129 (not c!1107701)) b!6153397))

(assert (=> d!1928129 m!6991260))

(assert (=> d!1928129 m!6992348))

(assert (=> b!6153396 m!6991272))

(declare-fun m!6992678 () Bool)

(assert (=> b!6153396 m!6992678))

(assert (=> b!6153397 m!6991260))

(assert (=> b!6153397 m!6992352))

(assert (=> b!6153397 m!6991272))

(assert (=> b!6153397 m!6992352))

(declare-fun m!6992680 () Bool)

(assert (=> b!6153397 m!6992680))

(assert (=> b!6153397 m!6991260))

(assert (=> b!6153397 m!6992356))

(assert (=> b!6153397 m!6992680))

(assert (=> b!6153397 m!6992356))

(declare-fun m!6992682 () Bool)

(assert (=> b!6153397 m!6992682))

(assert (=> b!6151801 d!1928129))

(declare-fun bs!1525329 () Bool)

(declare-fun d!1928131 () Bool)

(assert (= bs!1525329 (and d!1928131 d!1927961)))

(declare-fun lambda!335621 () Int)

(assert (=> bs!1525329 (= lambda!335621 lambda!335599)))

(declare-fun bs!1525330 () Bool)

(assert (= bs!1525330 (and d!1928131 d!1928087)))

(assert (=> bs!1525330 (= lambda!335621 lambda!335610)))

(declare-fun bs!1525331 () Bool)

(assert (= bs!1525331 (and d!1928131 d!1928045)))

(assert (=> bs!1525331 (= lambda!335621 lambda!335605)))

(declare-fun bs!1525332 () Bool)

(assert (= bs!1525332 (and d!1928131 d!1928063)))

(assert (=> bs!1525332 (= lambda!335621 lambda!335607)))

(declare-fun bs!1525333 () Bool)

(assert (= bs!1525333 (and d!1928131 b!6151542)))

(assert (=> bs!1525333 (= (= (head!12711 (t!378075 s!2326)) (h!70910 s!2326)) (= lambda!335621 lambda!335497))))

(declare-fun bs!1525334 () Bool)

(assert (= bs!1525334 (and d!1928131 d!1927993)))

(assert (=> bs!1525334 (= lambda!335621 lambda!335601)))

(assert (=> d!1928131 true))

(assert (=> d!1928131 (= (derivationStepZipper!2068 lt!2334546 (head!12711 (t!378075 s!2326))) (flatMap!1600 lt!2334546 lambda!335621))))

(declare-fun bs!1525335 () Bool)

(assert (= bs!1525335 d!1928131))

(declare-fun m!6992684 () Bool)

(assert (=> bs!1525335 m!6992684))

(assert (=> b!6151801 d!1928131))

(assert (=> b!6151801 d!1927963))

(assert (=> b!6151801 d!1927965))

(assert (=> bs!1525022 d!1927585))

(assert (=> d!1927535 d!1927487))

(assert (=> d!1927535 d!1927927))

(assert (=> d!1927535 d!1927545))

(declare-fun d!1928133 () Bool)

(assert (=> d!1928133 (= (Exists!3165 lambda!335529) (choose!45731 lambda!335529))))

(declare-fun bs!1525336 () Bool)

(assert (= bs!1525336 d!1928133))

(declare-fun m!6992686 () Bool)

(assert (=> bs!1525336 m!6992686))

(assert (=> d!1927535 d!1928133))

(declare-fun bs!1525337 () Bool)

(declare-fun d!1928135 () Bool)

(assert (= bs!1525337 (and d!1928135 d!1928111)))

(declare-fun lambda!335624 () Int)

(assert (=> bs!1525337 (not (= lambda!335624 lambda!335620))))

(declare-fun bs!1525338 () Bool)

(assert (= bs!1525338 (and d!1928135 b!6152155)))

(assert (=> bs!1525338 (not (= lambda!335624 lambda!335544))))

(declare-fun bs!1525339 () Bool)

(assert (= bs!1525339 (and d!1928135 d!1927543)))

(assert (=> bs!1525339 (= lambda!335624 lambda!335534)))

(assert (=> bs!1525337 (= lambda!335624 lambda!335619)))

(declare-fun bs!1525340 () Bool)

(assert (= bs!1525340 (and d!1928135 b!6151532)))

(assert (=> bs!1525340 (= lambda!335624 lambda!335495)))

(declare-fun bs!1525341 () Bool)

(assert (= bs!1525341 (and d!1928135 b!6153336)))

(assert (=> bs!1525341 (not (= lambda!335624 lambda!335612))))

(declare-fun bs!1525342 () Bool)

(assert (= bs!1525342 (and d!1928135 b!6152150)))

(assert (=> bs!1525342 (not (= lambda!335624 lambda!335543))))

(assert (=> bs!1525339 (not (= lambda!335624 lambda!335535))))

(declare-fun bs!1525343 () Bool)

(assert (= bs!1525343 (and d!1928135 b!6153090)))

(assert (=> bs!1525343 (not (= lambda!335624 lambda!335595))))

(assert (=> bs!1525340 (not (= lambda!335624 lambda!335496))))

(declare-fun bs!1525344 () Bool)

(assert (= bs!1525344 (and d!1928135 d!1927535)))

(assert (=> bs!1525344 (= lambda!335624 lambda!335529)))

(declare-fun bs!1525345 () Bool)

(assert (= bs!1525345 (and d!1928135 b!6153341)))

(assert (=> bs!1525345 (not (= lambda!335624 lambda!335613))))

(declare-fun bs!1525346 () Bool)

(assert (= bs!1525346 (and d!1928135 b!6153095)))

(assert (=> bs!1525346 (not (= lambda!335624 lambda!335596))))

(assert (=> d!1928135 true))

(assert (=> d!1928135 true))

(assert (=> d!1928135 true))

(assert (=> d!1928135 (= (isDefined!12689 (findConcatSeparation!2400 (regOne!32702 r!7292) (regTwo!32702 r!7292) Nil!64462 s!2326 s!2326)) (Exists!3165 lambda!335624))))

(assert (=> d!1928135 true))

(declare-fun _$89!2266 () Unit!157549)

(assert (=> d!1928135 (= (choose!45732 (regOne!32702 r!7292) (regTwo!32702 r!7292) s!2326) _$89!2266)))

(declare-fun bs!1525347 () Bool)

(assert (= bs!1525347 d!1928135))

(assert (=> bs!1525347 m!6991090))

(assert (=> bs!1525347 m!6991090))

(assert (=> bs!1525347 m!6991092))

(declare-fun m!6992688 () Bool)

(assert (=> bs!1525347 m!6992688))

(assert (=> d!1927535 d!1928135))

(declare-fun d!1928137 () Bool)

(declare-fun c!1107702 () Bool)

(assert (=> d!1928137 (= c!1107702 (isEmpty!36424 (tail!11796 (t!378075 s!2326))))))

(declare-fun e!3749433 () Bool)

(assert (=> d!1928137 (= (matchZipper!2107 (derivationStepZipper!2068 lt!2334537 (head!12711 (t!378075 s!2326))) (tail!11796 (t!378075 s!2326))) e!3749433)))

(declare-fun b!6153402 () Bool)

(assert (=> b!6153402 (= e!3749433 (nullableZipper!1876 (derivationStepZipper!2068 lt!2334537 (head!12711 (t!378075 s!2326)))))))

(declare-fun b!6153403 () Bool)

(assert (=> b!6153403 (= e!3749433 (matchZipper!2107 (derivationStepZipper!2068 (derivationStepZipper!2068 lt!2334537 (head!12711 (t!378075 s!2326))) (head!12711 (tail!11796 (t!378075 s!2326)))) (tail!11796 (tail!11796 (t!378075 s!2326)))))))

(assert (= (and d!1928137 c!1107702) b!6153402))

(assert (= (and d!1928137 (not c!1107702)) b!6153403))

(assert (=> d!1928137 m!6991260))

(assert (=> d!1928137 m!6992348))

(assert (=> b!6153402 m!6991258))

(declare-fun m!6992690 () Bool)

(assert (=> b!6153402 m!6992690))

(assert (=> b!6153403 m!6991260))

(assert (=> b!6153403 m!6992352))

(assert (=> b!6153403 m!6991258))

(assert (=> b!6153403 m!6992352))

(declare-fun m!6992692 () Bool)

(assert (=> b!6153403 m!6992692))

(assert (=> b!6153403 m!6991260))

(assert (=> b!6153403 m!6992356))

(assert (=> b!6153403 m!6992692))

(assert (=> b!6153403 m!6992356))

(declare-fun m!6992694 () Bool)

(assert (=> b!6153403 m!6992694))

(assert (=> b!6151797 d!1928137))

(declare-fun bs!1525348 () Bool)

(declare-fun d!1928139 () Bool)

(assert (= bs!1525348 (and d!1928139 d!1928131)))

(declare-fun lambda!335625 () Int)

(assert (=> bs!1525348 (= lambda!335625 lambda!335621)))

(declare-fun bs!1525349 () Bool)

(assert (= bs!1525349 (and d!1928139 d!1927961)))

(assert (=> bs!1525349 (= lambda!335625 lambda!335599)))

(declare-fun bs!1525350 () Bool)

(assert (= bs!1525350 (and d!1928139 d!1928087)))

(assert (=> bs!1525350 (= lambda!335625 lambda!335610)))

(declare-fun bs!1525351 () Bool)

(assert (= bs!1525351 (and d!1928139 d!1928045)))

(assert (=> bs!1525351 (= lambda!335625 lambda!335605)))

(declare-fun bs!1525352 () Bool)

(assert (= bs!1525352 (and d!1928139 d!1928063)))

(assert (=> bs!1525352 (= lambda!335625 lambda!335607)))

(declare-fun bs!1525353 () Bool)

(assert (= bs!1525353 (and d!1928139 b!6151542)))

(assert (=> bs!1525353 (= (= (head!12711 (t!378075 s!2326)) (h!70910 s!2326)) (= lambda!335625 lambda!335497))))

(declare-fun bs!1525354 () Bool)

(assert (= bs!1525354 (and d!1928139 d!1927993)))

(assert (=> bs!1525354 (= lambda!335625 lambda!335601)))

(assert (=> d!1928139 true))

(assert (=> d!1928139 (= (derivationStepZipper!2068 lt!2334537 (head!12711 (t!378075 s!2326))) (flatMap!1600 lt!2334537 lambda!335625))))

(declare-fun bs!1525355 () Bool)

(assert (= bs!1525355 d!1928139))

(declare-fun m!6992696 () Bool)

(assert (=> bs!1525355 m!6992696))

(assert (=> b!6151797 d!1928139))

(assert (=> b!6151797 d!1927963))

(assert (=> b!6151797 d!1927965))

(assert (=> b!6152007 d!1927591))

(declare-fun b!6153405 () Bool)

(declare-fun e!3749440 () Bool)

(declare-fun e!3749438 () Bool)

(assert (=> b!6153405 (= e!3749440 e!3749438)))

(declare-fun res!2548697 () Bool)

(assert (=> b!6153405 (=> (not res!2548697) (not e!3749438))))

(declare-fun lt!2334685 () Bool)

(assert (=> b!6153405 (= res!2548697 (not lt!2334685))))

(declare-fun bm!511993 () Bool)

(declare-fun call!511998 () Bool)

(assert (=> bm!511993 (= call!511998 (isEmpty!36424 (_1!36377 (get!22244 lt!2334607))))))

(declare-fun b!6153406 () Bool)

(declare-fun res!2548696 () Bool)

(declare-fun e!3749434 () Bool)

(assert (=> b!6153406 (=> res!2548696 e!3749434)))

(assert (=> b!6153406 (= res!2548696 (not (isEmpty!36424 (tail!11796 (_1!36377 (get!22244 lt!2334607))))))))

(declare-fun b!6153407 () Bool)

(declare-fun e!3749439 () Bool)

(assert (=> b!6153407 (= e!3749439 (not lt!2334685))))

(declare-fun b!6153408 () Bool)

(declare-fun res!2548693 () Bool)

(assert (=> b!6153408 (=> res!2548693 e!3749440)))

(declare-fun e!3749436 () Bool)

(assert (=> b!6153408 (= res!2548693 e!3749436)))

(declare-fun res!2548699 () Bool)

(assert (=> b!6153408 (=> (not res!2548699) (not e!3749436))))

(assert (=> b!6153408 (= res!2548699 lt!2334685)))

(declare-fun b!6153409 () Bool)

(assert (=> b!6153409 (= e!3749436 (= (head!12711 (_1!36377 (get!22244 lt!2334607))) (c!1107191 (regOne!32702 r!7292))))))

(declare-fun b!6153410 () Bool)

(declare-fun e!3749437 () Bool)

(assert (=> b!6153410 (= e!3749437 e!3749439)))

(declare-fun c!1107703 () Bool)

(assert (=> b!6153410 (= c!1107703 ((_ is EmptyLang!16095) (regOne!32702 r!7292)))))

(declare-fun b!6153411 () Bool)

(assert (=> b!6153411 (= e!3749434 (not (= (head!12711 (_1!36377 (get!22244 lt!2334607))) (c!1107191 (regOne!32702 r!7292)))))))

(declare-fun b!6153404 () Bool)

(declare-fun res!2548698 () Bool)

(assert (=> b!6153404 (=> (not res!2548698) (not e!3749436))))

(assert (=> b!6153404 (= res!2548698 (isEmpty!36424 (tail!11796 (_1!36377 (get!22244 lt!2334607)))))))

(declare-fun d!1928141 () Bool)

(assert (=> d!1928141 e!3749437))

(declare-fun c!1107704 () Bool)

(assert (=> d!1928141 (= c!1107704 ((_ is EmptyExpr!16095) (regOne!32702 r!7292)))))

(declare-fun e!3749435 () Bool)

(assert (=> d!1928141 (= lt!2334685 e!3749435)))

(declare-fun c!1107705 () Bool)

(assert (=> d!1928141 (= c!1107705 (isEmpty!36424 (_1!36377 (get!22244 lt!2334607))))))

(assert (=> d!1928141 (validRegex!7831 (regOne!32702 r!7292))))

(assert (=> d!1928141 (= (matchR!8278 (regOne!32702 r!7292) (_1!36377 (get!22244 lt!2334607))) lt!2334685)))

(declare-fun b!6153412 () Bool)

(assert (=> b!6153412 (= e!3749435 (nullable!6088 (regOne!32702 r!7292)))))

(declare-fun b!6153413 () Bool)

(declare-fun res!2548695 () Bool)

(assert (=> b!6153413 (=> res!2548695 e!3749440)))

(assert (=> b!6153413 (= res!2548695 (not ((_ is ElementMatch!16095) (regOne!32702 r!7292))))))

(assert (=> b!6153413 (= e!3749439 e!3749440)))

(declare-fun b!6153414 () Bool)

(declare-fun res!2548692 () Bool)

(assert (=> b!6153414 (=> (not res!2548692) (not e!3749436))))

(assert (=> b!6153414 (= res!2548692 (not call!511998))))

(declare-fun b!6153415 () Bool)

(assert (=> b!6153415 (= e!3749437 (= lt!2334685 call!511998))))

(declare-fun b!6153416 () Bool)

(assert (=> b!6153416 (= e!3749435 (matchR!8278 (derivativeStep!4815 (regOne!32702 r!7292) (head!12711 (_1!36377 (get!22244 lt!2334607)))) (tail!11796 (_1!36377 (get!22244 lt!2334607)))))))

(declare-fun b!6153417 () Bool)

(assert (=> b!6153417 (= e!3749438 e!3749434)))

(declare-fun res!2548694 () Bool)

(assert (=> b!6153417 (=> res!2548694 e!3749434)))

(assert (=> b!6153417 (= res!2548694 call!511998)))

(assert (= (and d!1928141 c!1107705) b!6153412))

(assert (= (and d!1928141 (not c!1107705)) b!6153416))

(assert (= (and d!1928141 c!1107704) b!6153415))

(assert (= (and d!1928141 (not c!1107704)) b!6153410))

(assert (= (and b!6153410 c!1107703) b!6153407))

(assert (= (and b!6153410 (not c!1107703)) b!6153413))

(assert (= (and b!6153413 (not res!2548695)) b!6153408))

(assert (= (and b!6153408 res!2548699) b!6153414))

(assert (= (and b!6153414 res!2548692) b!6153404))

(assert (= (and b!6153404 res!2548698) b!6153409))

(assert (= (and b!6153408 (not res!2548693)) b!6153405))

(assert (= (and b!6153405 res!2548697) b!6153417))

(assert (= (and b!6153417 (not res!2548694)) b!6153406))

(assert (= (and b!6153406 (not res!2548696)) b!6153411))

(assert (= (or b!6153415 b!6153414 b!6153417) bm!511993))

(declare-fun m!6992698 () Bool)

(assert (=> bm!511993 m!6992698))

(declare-fun m!6992700 () Bool)

(assert (=> b!6153404 m!6992700))

(assert (=> b!6153404 m!6992700))

(declare-fun m!6992702 () Bool)

(assert (=> b!6153404 m!6992702))

(assert (=> b!6153406 m!6992700))

(assert (=> b!6153406 m!6992700))

(assert (=> b!6153406 m!6992702))

(declare-fun m!6992704 () Bool)

(assert (=> b!6153416 m!6992704))

(assert (=> b!6153416 m!6992704))

(declare-fun m!6992706 () Bool)

(assert (=> b!6153416 m!6992706))

(assert (=> b!6153416 m!6992700))

(assert (=> b!6153416 m!6992706))

(assert (=> b!6153416 m!6992700))

(declare-fun m!6992708 () Bool)

(assert (=> b!6153416 m!6992708))

(assert (=> b!6153411 m!6992704))

(assert (=> b!6153412 m!6992246))

(assert (=> d!1928141 m!6992698))

(assert (=> d!1928141 m!6991422))

(assert (=> b!6153409 m!6992704))

(assert (=> b!6151935 d!1928141))

(assert (=> b!6151935 d!1928001))

(declare-fun bs!1525356 () Bool)

(declare-fun d!1928143 () Bool)

(assert (= bs!1525356 (and d!1928143 d!1927601)))

(declare-fun lambda!335626 () Int)

(assert (=> bs!1525356 (= lambda!335626 lambda!335547)))

(declare-fun bs!1525357 () Bool)

(assert (= bs!1525357 (and d!1928143 d!1927571)))

(assert (=> bs!1525357 (= lambda!335626 lambda!335538)))

(declare-fun bs!1525358 () Bool)

(assert (= bs!1525358 (and d!1928143 d!1927605)))

(assert (=> bs!1525358 (= lambda!335626 lambda!335553)))

(declare-fun bs!1525359 () Bool)

(assert (= bs!1525359 (and d!1928143 d!1928009)))

(assert (=> bs!1525359 (= lambda!335626 lambda!335603)))

(declare-fun bs!1525360 () Bool)

(assert (= bs!1525360 (and d!1928143 d!1928099)))

(assert (=> bs!1525360 (= lambda!335626 lambda!335611)))

(declare-fun bs!1525361 () Bool)

(assert (= bs!1525361 (and d!1928143 d!1928105)))

(assert (=> bs!1525361 (= lambda!335626 lambda!335614)))

(declare-fun bs!1525362 () Bool)

(assert (= bs!1525362 (and d!1928143 d!1927607)))

(assert (=> bs!1525362 (= lambda!335626 lambda!335554)))

(declare-fun bs!1525363 () Bool)

(assert (= bs!1525363 (and d!1928143 d!1927617)))

(assert (=> bs!1525363 (= lambda!335626 lambda!335555)))

(declare-fun bs!1525364 () Bool)

(assert (= bs!1525364 (and d!1928143 d!1928071)))

(assert (=> bs!1525364 (= lambda!335626 lambda!335609)))

(declare-fun bs!1525365 () Bool)

(assert (= bs!1525365 (and d!1928143 d!1927603)))

(assert (=> bs!1525365 (= lambda!335626 lambda!335550)))

(declare-fun b!6153418 () Bool)

(declare-fun e!3749441 () Bool)

(assert (=> b!6153418 (= e!3749441 (isEmpty!36420 (t!378073 (t!378073 (exprs!5979 (h!70909 zl!343))))))))

(declare-fun b!6153419 () Bool)

(declare-fun e!3749442 () Regex!16095)

(assert (=> b!6153419 (= e!3749442 EmptyExpr!16095)))

(declare-fun b!6153420 () Bool)

(declare-fun e!3749443 () Regex!16095)

(assert (=> b!6153420 (= e!3749443 e!3749442)))

(declare-fun c!1107706 () Bool)

(assert (=> b!6153420 (= c!1107706 ((_ is Cons!64460) (t!378073 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6153421 () Bool)

(declare-fun e!3749446 () Bool)

(declare-fun e!3749445 () Bool)

(assert (=> b!6153421 (= e!3749446 e!3749445)))

(declare-fun c!1107707 () Bool)

(assert (=> b!6153421 (= c!1107707 (isEmpty!36420 (t!378073 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6153422 () Bool)

(assert (=> b!6153422 (= e!3749443 (h!70908 (t!378073 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun b!6153423 () Bool)

(declare-fun lt!2334686 () Regex!16095)

(assert (=> b!6153423 (= e!3749445 (isEmptyExpr!1512 lt!2334686))))

(declare-fun b!6153424 () Bool)

(declare-fun e!3749444 () Bool)

(assert (=> b!6153424 (= e!3749444 (isConcat!1035 lt!2334686))))

(declare-fun b!6153426 () Bool)

(assert (=> b!6153426 (= e!3749442 (Concat!24940 (h!70908 (t!378073 (exprs!5979 (h!70909 zl!343)))) (generalisedConcat!1692 (t!378073 (t!378073 (exprs!5979 (h!70909 zl!343)))))))))

(declare-fun b!6153427 () Bool)

(assert (=> b!6153427 (= e!3749445 e!3749444)))

(declare-fun c!1107708 () Bool)

(assert (=> b!6153427 (= c!1107708 (isEmpty!36420 (tail!11797 (t!378073 (exprs!5979 (h!70909 zl!343))))))))

(declare-fun b!6153425 () Bool)

(assert (=> b!6153425 (= e!3749444 (= lt!2334686 (head!12712 (t!378073 (exprs!5979 (h!70909 zl!343))))))))

(assert (=> d!1928143 e!3749446))

(declare-fun res!2548700 () Bool)

(assert (=> d!1928143 (=> (not res!2548700) (not e!3749446))))

(assert (=> d!1928143 (= res!2548700 (validRegex!7831 lt!2334686))))

(assert (=> d!1928143 (= lt!2334686 e!3749443)))

(declare-fun c!1107709 () Bool)

(assert (=> d!1928143 (= c!1107709 e!3749441)))

(declare-fun res!2548701 () Bool)

(assert (=> d!1928143 (=> (not res!2548701) (not e!3749441))))

(assert (=> d!1928143 (= res!2548701 ((_ is Cons!64460) (t!378073 (exprs!5979 (h!70909 zl!343)))))))

(assert (=> d!1928143 (forall!15216 (t!378073 (exprs!5979 (h!70909 zl!343))) lambda!335626)))

(assert (=> d!1928143 (= (generalisedConcat!1692 (t!378073 (exprs!5979 (h!70909 zl!343)))) lt!2334686)))

(assert (= (and d!1928143 res!2548701) b!6153418))

(assert (= (and d!1928143 c!1107709) b!6153422))

(assert (= (and d!1928143 (not c!1107709)) b!6153420))

(assert (= (and b!6153420 c!1107706) b!6153426))

(assert (= (and b!6153420 (not c!1107706)) b!6153419))

(assert (= (and d!1928143 res!2548700) b!6153421))

(assert (= (and b!6153421 c!1107707) b!6153423))

(assert (= (and b!6153421 (not c!1107707)) b!6153427))

(assert (= (and b!6153427 c!1107708) b!6153425))

(assert (= (and b!6153427 (not c!1107708)) b!6153424))

(declare-fun m!6992710 () Bool)

(assert (=> b!6153427 m!6992710))

(assert (=> b!6153427 m!6992710))

(declare-fun m!6992712 () Bool)

(assert (=> b!6153427 m!6992712))

(declare-fun m!6992714 () Bool)

(assert (=> b!6153425 m!6992714))

(declare-fun m!6992716 () Bool)

(assert (=> b!6153418 m!6992716))

(declare-fun m!6992718 () Bool)

(assert (=> b!6153426 m!6992718))

(declare-fun m!6992720 () Bool)

(assert (=> b!6153424 m!6992720))

(assert (=> b!6153421 m!6991034))

(declare-fun m!6992722 () Bool)

(assert (=> b!6153423 m!6992722))

(declare-fun m!6992724 () Bool)

(assert (=> d!1928143 m!6992724))

(declare-fun m!6992726 () Bool)

(assert (=> d!1928143 m!6992726))

(assert (=> b!6152264 d!1928143))

(declare-fun bs!1525366 () Bool)

(declare-fun d!1928145 () Bool)

(assert (= bs!1525366 (and d!1928145 d!1927987)))

(declare-fun lambda!335627 () Int)

(assert (=> bs!1525366 (= lambda!335627 lambda!335600)))

(declare-fun bs!1525367 () Bool)

(assert (= bs!1525367 (and d!1928145 d!1928059)))

(assert (=> bs!1525367 (= lambda!335627 lambda!335606)))

(declare-fun bs!1525368 () Bool)

(assert (= bs!1525368 (and d!1928145 d!1927995)))

(assert (=> bs!1525368 (= lambda!335627 lambda!335602)))

(declare-fun bs!1525369 () Bool)

(assert (= bs!1525369 (and d!1928145 d!1927917)))

(assert (=> bs!1525369 (= lambda!335627 lambda!335594)))

(declare-fun bs!1525370 () Bool)

(assert (= bs!1525370 (and d!1928145 d!1928065)))

(assert (=> bs!1525370 (= lambda!335627 lambda!335608)))

(declare-fun bs!1525371 () Bool)

(assert (= bs!1525371 (and d!1928145 d!1928025)))

(assert (=> bs!1525371 (= lambda!335627 lambda!335604)))

(assert (=> d!1928145 (= (nullableZipper!1876 lt!2334542) (exists!2441 lt!2334542 lambda!335627))))

(declare-fun bs!1525372 () Bool)

(assert (= bs!1525372 d!1928145))

(declare-fun m!6992728 () Bool)

(assert (=> bs!1525372 m!6992728))

(assert (=> b!6151798 d!1928145))

(assert (=> d!1927549 d!1927931))

(declare-fun b!6153431 () Bool)

(declare-fun e!3749447 () Bool)

(declare-fun tp!1718542 () Bool)

(declare-fun tp!1718539 () Bool)

(assert (=> b!6153431 (= e!3749447 (and tp!1718542 tp!1718539))))

(declare-fun b!6153430 () Bool)

(declare-fun tp!1718543 () Bool)

(assert (=> b!6153430 (= e!3749447 tp!1718543)))

(declare-fun b!6153429 () Bool)

(declare-fun tp!1718541 () Bool)

(declare-fun tp!1718540 () Bool)

(assert (=> b!6153429 (= e!3749447 (and tp!1718541 tp!1718540))))

(assert (=> b!6152319 (= tp!1718329 e!3749447)))

(declare-fun b!6153428 () Bool)

(assert (=> b!6153428 (= e!3749447 tp_is_empty!41443)))

(assert (= (and b!6152319 ((_ is ElementMatch!16095) (regOne!32703 (regOne!32702 r!7292)))) b!6153428))

(assert (= (and b!6152319 ((_ is Concat!24940) (regOne!32703 (regOne!32702 r!7292)))) b!6153429))

(assert (= (and b!6152319 ((_ is Star!16095) (regOne!32703 (regOne!32702 r!7292)))) b!6153430))

(assert (= (and b!6152319 ((_ is Union!16095) (regOne!32703 (regOne!32702 r!7292)))) b!6153431))

(declare-fun b!6153435 () Bool)

(declare-fun e!3749448 () Bool)

(declare-fun tp!1718547 () Bool)

(declare-fun tp!1718544 () Bool)

(assert (=> b!6153435 (= e!3749448 (and tp!1718547 tp!1718544))))

(declare-fun b!6153434 () Bool)

(declare-fun tp!1718548 () Bool)

(assert (=> b!6153434 (= e!3749448 tp!1718548)))

(declare-fun b!6153433 () Bool)

(declare-fun tp!1718546 () Bool)

(declare-fun tp!1718545 () Bool)

(assert (=> b!6153433 (= e!3749448 (and tp!1718546 tp!1718545))))

(assert (=> b!6152319 (= tp!1718326 e!3749448)))

(declare-fun b!6153432 () Bool)

(assert (=> b!6153432 (= e!3749448 tp_is_empty!41443)))

(assert (= (and b!6152319 ((_ is ElementMatch!16095) (regTwo!32703 (regOne!32702 r!7292)))) b!6153432))

(assert (= (and b!6152319 ((_ is Concat!24940) (regTwo!32703 (regOne!32702 r!7292)))) b!6153433))

(assert (= (and b!6152319 ((_ is Star!16095) (regTwo!32703 (regOne!32702 r!7292)))) b!6153434))

(assert (= (and b!6152319 ((_ is Union!16095) (regTwo!32703 (regOne!32702 r!7292)))) b!6153435))

(declare-fun b!6153439 () Bool)

(declare-fun e!3749449 () Bool)

(declare-fun tp!1718552 () Bool)

(declare-fun tp!1718549 () Bool)

(assert (=> b!6153439 (= e!3749449 (and tp!1718552 tp!1718549))))

(declare-fun b!6153438 () Bool)

(declare-fun tp!1718553 () Bool)

(assert (=> b!6153438 (= e!3749449 tp!1718553)))

(declare-fun b!6153437 () Bool)

(declare-fun tp!1718551 () Bool)

(declare-fun tp!1718550 () Bool)

(assert (=> b!6153437 (= e!3749449 (and tp!1718551 tp!1718550))))

(assert (=> b!6152333 (= tp!1718347 e!3749449)))

(declare-fun b!6153436 () Bool)

(assert (=> b!6153436 (= e!3749449 tp_is_empty!41443)))

(assert (= (and b!6152333 ((_ is ElementMatch!16095) (regOne!32703 (reg!16424 r!7292)))) b!6153436))

(assert (= (and b!6152333 ((_ is Concat!24940) (regOne!32703 (reg!16424 r!7292)))) b!6153437))

(assert (= (and b!6152333 ((_ is Star!16095) (regOne!32703 (reg!16424 r!7292)))) b!6153438))

(assert (= (and b!6152333 ((_ is Union!16095) (regOne!32703 (reg!16424 r!7292)))) b!6153439))

(declare-fun b!6153443 () Bool)

(declare-fun e!3749450 () Bool)

(declare-fun tp!1718557 () Bool)

(declare-fun tp!1718554 () Bool)

(assert (=> b!6153443 (= e!3749450 (and tp!1718557 tp!1718554))))

(declare-fun b!6153442 () Bool)

(declare-fun tp!1718558 () Bool)

(assert (=> b!6153442 (= e!3749450 tp!1718558)))

(declare-fun b!6153441 () Bool)

(declare-fun tp!1718556 () Bool)

(declare-fun tp!1718555 () Bool)

(assert (=> b!6153441 (= e!3749450 (and tp!1718556 tp!1718555))))

(assert (=> b!6152333 (= tp!1718344 e!3749450)))

(declare-fun b!6153440 () Bool)

(assert (=> b!6153440 (= e!3749450 tp_is_empty!41443)))

(assert (= (and b!6152333 ((_ is ElementMatch!16095) (regTwo!32703 (reg!16424 r!7292)))) b!6153440))

(assert (= (and b!6152333 ((_ is Concat!24940) (regTwo!32703 (reg!16424 r!7292)))) b!6153441))

(assert (= (and b!6152333 ((_ is Star!16095) (regTwo!32703 (reg!16424 r!7292)))) b!6153442))

(assert (= (and b!6152333 ((_ is Union!16095) (regTwo!32703 (reg!16424 r!7292)))) b!6153443))

(declare-fun b!6153447 () Bool)

(declare-fun e!3749451 () Bool)

(declare-fun tp!1718562 () Bool)

(declare-fun tp!1718559 () Bool)

(assert (=> b!6153447 (= e!3749451 (and tp!1718562 tp!1718559))))

(declare-fun b!6153446 () Bool)

(declare-fun tp!1718563 () Bool)

(assert (=> b!6153446 (= e!3749451 tp!1718563)))

(declare-fun b!6153445 () Bool)

(declare-fun tp!1718561 () Bool)

(declare-fun tp!1718560 () Bool)

(assert (=> b!6153445 (= e!3749451 (and tp!1718561 tp!1718560))))

(assert (=> b!6152318 (= tp!1718330 e!3749451)))

(declare-fun b!6153444 () Bool)

(assert (=> b!6153444 (= e!3749451 tp_is_empty!41443)))

(assert (= (and b!6152318 ((_ is ElementMatch!16095) (reg!16424 (regOne!32702 r!7292)))) b!6153444))

(assert (= (and b!6152318 ((_ is Concat!24940) (reg!16424 (regOne!32702 r!7292)))) b!6153445))

(assert (= (and b!6152318 ((_ is Star!16095) (reg!16424 (regOne!32702 r!7292)))) b!6153446))

(assert (= (and b!6152318 ((_ is Union!16095) (reg!16424 (regOne!32702 r!7292)))) b!6153447))

(declare-fun b!6153451 () Bool)

(declare-fun e!3749452 () Bool)

(declare-fun tp!1718567 () Bool)

(declare-fun tp!1718564 () Bool)

(assert (=> b!6153451 (= e!3749452 (and tp!1718567 tp!1718564))))

(declare-fun b!6153450 () Bool)

(declare-fun tp!1718568 () Bool)

(assert (=> b!6153450 (= e!3749452 tp!1718568)))

(declare-fun b!6153449 () Bool)

(declare-fun tp!1718566 () Bool)

(declare-fun tp!1718565 () Bool)

(assert (=> b!6153449 (= e!3749452 (and tp!1718566 tp!1718565))))

(assert (=> b!6152332 (= tp!1718348 e!3749452)))

(declare-fun b!6153448 () Bool)

(assert (=> b!6153448 (= e!3749452 tp_is_empty!41443)))

(assert (= (and b!6152332 ((_ is ElementMatch!16095) (reg!16424 (reg!16424 r!7292)))) b!6153448))

(assert (= (and b!6152332 ((_ is Concat!24940) (reg!16424 (reg!16424 r!7292)))) b!6153449))

(assert (= (and b!6152332 ((_ is Star!16095) (reg!16424 (reg!16424 r!7292)))) b!6153450))

(assert (= (and b!6152332 ((_ is Union!16095) (reg!16424 (reg!16424 r!7292)))) b!6153451))

(declare-fun b!6153455 () Bool)

(declare-fun e!3749453 () Bool)

(declare-fun tp!1718572 () Bool)

(declare-fun tp!1718569 () Bool)

(assert (=> b!6153455 (= e!3749453 (and tp!1718572 tp!1718569))))

(declare-fun b!6153454 () Bool)

(declare-fun tp!1718573 () Bool)

(assert (=> b!6153454 (= e!3749453 tp!1718573)))

(declare-fun b!6153453 () Bool)

(declare-fun tp!1718571 () Bool)

(declare-fun tp!1718570 () Bool)

(assert (=> b!6153453 (= e!3749453 (and tp!1718571 tp!1718570))))

(assert (=> b!6152341 (= tp!1718357 e!3749453)))

(declare-fun b!6153452 () Bool)

(assert (=> b!6153452 (= e!3749453 tp_is_empty!41443)))

(assert (= (and b!6152341 ((_ is ElementMatch!16095) (regOne!32703 (regTwo!32703 r!7292)))) b!6153452))

(assert (= (and b!6152341 ((_ is Concat!24940) (regOne!32703 (regTwo!32703 r!7292)))) b!6153453))

(assert (= (and b!6152341 ((_ is Star!16095) (regOne!32703 (regTwo!32703 r!7292)))) b!6153454))

(assert (= (and b!6152341 ((_ is Union!16095) (regOne!32703 (regTwo!32703 r!7292)))) b!6153455))

(declare-fun b!6153459 () Bool)

(declare-fun e!3749454 () Bool)

(declare-fun tp!1718577 () Bool)

(declare-fun tp!1718574 () Bool)

(assert (=> b!6153459 (= e!3749454 (and tp!1718577 tp!1718574))))

(declare-fun b!6153458 () Bool)

(declare-fun tp!1718578 () Bool)

(assert (=> b!6153458 (= e!3749454 tp!1718578)))

(declare-fun b!6153457 () Bool)

(declare-fun tp!1718576 () Bool)

(declare-fun tp!1718575 () Bool)

(assert (=> b!6153457 (= e!3749454 (and tp!1718576 tp!1718575))))

(assert (=> b!6152341 (= tp!1718354 e!3749454)))

(declare-fun b!6153456 () Bool)

(assert (=> b!6153456 (= e!3749454 tp_is_empty!41443)))

(assert (= (and b!6152341 ((_ is ElementMatch!16095) (regTwo!32703 (regTwo!32703 r!7292)))) b!6153456))

(assert (= (and b!6152341 ((_ is Concat!24940) (regTwo!32703 (regTwo!32703 r!7292)))) b!6153457))

(assert (= (and b!6152341 ((_ is Star!16095) (regTwo!32703 (regTwo!32703 r!7292)))) b!6153458))

(assert (= (and b!6152341 ((_ is Union!16095) (regTwo!32703 (regTwo!32703 r!7292)))) b!6153459))

(declare-fun b!6153463 () Bool)

(declare-fun e!3749455 () Bool)

(declare-fun tp!1718582 () Bool)

(declare-fun tp!1718579 () Bool)

(assert (=> b!6153463 (= e!3749455 (and tp!1718582 tp!1718579))))

(declare-fun b!6153462 () Bool)

(declare-fun tp!1718583 () Bool)

(assert (=> b!6153462 (= e!3749455 tp!1718583)))

(declare-fun b!6153461 () Bool)

(declare-fun tp!1718581 () Bool)

(declare-fun tp!1718580 () Bool)

(assert (=> b!6153461 (= e!3749455 (and tp!1718581 tp!1718580))))

(assert (=> b!6152317 (= tp!1718328 e!3749455)))

(declare-fun b!6153460 () Bool)

(assert (=> b!6153460 (= e!3749455 tp_is_empty!41443)))

(assert (= (and b!6152317 ((_ is ElementMatch!16095) (regOne!32702 (regOne!32702 r!7292)))) b!6153460))

(assert (= (and b!6152317 ((_ is Concat!24940) (regOne!32702 (regOne!32702 r!7292)))) b!6153461))

(assert (= (and b!6152317 ((_ is Star!16095) (regOne!32702 (regOne!32702 r!7292)))) b!6153462))

(assert (= (and b!6152317 ((_ is Union!16095) (regOne!32702 (regOne!32702 r!7292)))) b!6153463))

(declare-fun b!6153467 () Bool)

(declare-fun e!3749456 () Bool)

(declare-fun tp!1718587 () Bool)

(declare-fun tp!1718584 () Bool)

(assert (=> b!6153467 (= e!3749456 (and tp!1718587 tp!1718584))))

(declare-fun b!6153466 () Bool)

(declare-fun tp!1718588 () Bool)

(assert (=> b!6153466 (= e!3749456 tp!1718588)))

(declare-fun b!6153465 () Bool)

(declare-fun tp!1718586 () Bool)

(declare-fun tp!1718585 () Bool)

(assert (=> b!6153465 (= e!3749456 (and tp!1718586 tp!1718585))))

(assert (=> b!6152317 (= tp!1718327 e!3749456)))

(declare-fun b!6153464 () Bool)

(assert (=> b!6153464 (= e!3749456 tp_is_empty!41443)))

(assert (= (and b!6152317 ((_ is ElementMatch!16095) (regTwo!32702 (regOne!32702 r!7292)))) b!6153464))

(assert (= (and b!6152317 ((_ is Concat!24940) (regTwo!32702 (regOne!32702 r!7292)))) b!6153465))

(assert (= (and b!6152317 ((_ is Star!16095) (regTwo!32702 (regOne!32702 r!7292)))) b!6153466))

(assert (= (and b!6152317 ((_ is Union!16095) (regTwo!32702 (regOne!32702 r!7292)))) b!6153467))

(declare-fun b!6153471 () Bool)

(declare-fun e!3749457 () Bool)

(declare-fun tp!1718592 () Bool)

(declare-fun tp!1718589 () Bool)

(assert (=> b!6153471 (= e!3749457 (and tp!1718592 tp!1718589))))

(declare-fun b!6153470 () Bool)

(declare-fun tp!1718593 () Bool)

(assert (=> b!6153470 (= e!3749457 tp!1718593)))

(declare-fun b!6153469 () Bool)

(declare-fun tp!1718591 () Bool)

(declare-fun tp!1718590 () Bool)

(assert (=> b!6153469 (= e!3749457 (and tp!1718591 tp!1718590))))

(assert (=> b!6152331 (= tp!1718346 e!3749457)))

(declare-fun b!6153468 () Bool)

(assert (=> b!6153468 (= e!3749457 tp_is_empty!41443)))

(assert (= (and b!6152331 ((_ is ElementMatch!16095) (regOne!32702 (reg!16424 r!7292)))) b!6153468))

(assert (= (and b!6152331 ((_ is Concat!24940) (regOne!32702 (reg!16424 r!7292)))) b!6153469))

(assert (= (and b!6152331 ((_ is Star!16095) (regOne!32702 (reg!16424 r!7292)))) b!6153470))

(assert (= (and b!6152331 ((_ is Union!16095) (regOne!32702 (reg!16424 r!7292)))) b!6153471))

(declare-fun b!6153475 () Bool)

(declare-fun e!3749458 () Bool)

(declare-fun tp!1718597 () Bool)

(declare-fun tp!1718594 () Bool)

(assert (=> b!6153475 (= e!3749458 (and tp!1718597 tp!1718594))))

(declare-fun b!6153474 () Bool)

(declare-fun tp!1718598 () Bool)

(assert (=> b!6153474 (= e!3749458 tp!1718598)))

(declare-fun b!6153473 () Bool)

(declare-fun tp!1718596 () Bool)

(declare-fun tp!1718595 () Bool)

(assert (=> b!6153473 (= e!3749458 (and tp!1718596 tp!1718595))))

(assert (=> b!6152331 (= tp!1718345 e!3749458)))

(declare-fun b!6153472 () Bool)

(assert (=> b!6153472 (= e!3749458 tp_is_empty!41443)))

(assert (= (and b!6152331 ((_ is ElementMatch!16095) (regTwo!32702 (reg!16424 r!7292)))) b!6153472))

(assert (= (and b!6152331 ((_ is Concat!24940) (regTwo!32702 (reg!16424 r!7292)))) b!6153473))

(assert (= (and b!6152331 ((_ is Star!16095) (regTwo!32702 (reg!16424 r!7292)))) b!6153474))

(assert (= (and b!6152331 ((_ is Union!16095) (regTwo!32702 (reg!16424 r!7292)))) b!6153475))

(declare-fun b!6153479 () Bool)

(declare-fun e!3749459 () Bool)

(declare-fun tp!1718602 () Bool)

(declare-fun tp!1718599 () Bool)

(assert (=> b!6153479 (= e!3749459 (and tp!1718602 tp!1718599))))

(declare-fun b!6153478 () Bool)

(declare-fun tp!1718603 () Bool)

(assert (=> b!6153478 (= e!3749459 tp!1718603)))

(declare-fun b!6153477 () Bool)

(declare-fun tp!1718601 () Bool)

(declare-fun tp!1718600 () Bool)

(assert (=> b!6153477 (= e!3749459 (and tp!1718601 tp!1718600))))

(assert (=> b!6152340 (= tp!1718358 e!3749459)))

(declare-fun b!6153476 () Bool)

(assert (=> b!6153476 (= e!3749459 tp_is_empty!41443)))

(assert (= (and b!6152340 ((_ is ElementMatch!16095) (reg!16424 (regTwo!32703 r!7292)))) b!6153476))

(assert (= (and b!6152340 ((_ is Concat!24940) (reg!16424 (regTwo!32703 r!7292)))) b!6153477))

(assert (= (and b!6152340 ((_ is Star!16095) (reg!16424 (regTwo!32703 r!7292)))) b!6153478))

(assert (= (and b!6152340 ((_ is Union!16095) (reg!16424 (regTwo!32703 r!7292)))) b!6153479))

(declare-fun b!6153483 () Bool)

(declare-fun e!3749460 () Bool)

(declare-fun tp!1718607 () Bool)

(declare-fun tp!1718604 () Bool)

(assert (=> b!6153483 (= e!3749460 (and tp!1718607 tp!1718604))))

(declare-fun b!6153482 () Bool)

(declare-fun tp!1718608 () Bool)

(assert (=> b!6153482 (= e!3749460 tp!1718608)))

(declare-fun b!6153481 () Bool)

(declare-fun tp!1718606 () Bool)

(declare-fun tp!1718605 () Bool)

(assert (=> b!6153481 (= e!3749460 (and tp!1718606 tp!1718605))))

(assert (=> b!6152339 (= tp!1718356 e!3749460)))

(declare-fun b!6153480 () Bool)

(assert (=> b!6153480 (= e!3749460 tp_is_empty!41443)))

(assert (= (and b!6152339 ((_ is ElementMatch!16095) (regOne!32702 (regTwo!32703 r!7292)))) b!6153480))

(assert (= (and b!6152339 ((_ is Concat!24940) (regOne!32702 (regTwo!32703 r!7292)))) b!6153481))

(assert (= (and b!6152339 ((_ is Star!16095) (regOne!32702 (regTwo!32703 r!7292)))) b!6153482))

(assert (= (and b!6152339 ((_ is Union!16095) (regOne!32702 (regTwo!32703 r!7292)))) b!6153483))

(declare-fun b!6153487 () Bool)

(declare-fun e!3749461 () Bool)

(declare-fun tp!1718612 () Bool)

(declare-fun tp!1718609 () Bool)

(assert (=> b!6153487 (= e!3749461 (and tp!1718612 tp!1718609))))

(declare-fun b!6153486 () Bool)

(declare-fun tp!1718613 () Bool)

(assert (=> b!6153486 (= e!3749461 tp!1718613)))

(declare-fun b!6153485 () Bool)

(declare-fun tp!1718611 () Bool)

(declare-fun tp!1718610 () Bool)

(assert (=> b!6153485 (= e!3749461 (and tp!1718611 tp!1718610))))

(assert (=> b!6152339 (= tp!1718355 e!3749461)))

(declare-fun b!6153484 () Bool)

(assert (=> b!6153484 (= e!3749461 tp_is_empty!41443)))

(assert (= (and b!6152339 ((_ is ElementMatch!16095) (regTwo!32702 (regTwo!32703 r!7292)))) b!6153484))

(assert (= (and b!6152339 ((_ is Concat!24940) (regTwo!32702 (regTwo!32703 r!7292)))) b!6153485))

(assert (= (and b!6152339 ((_ is Star!16095) (regTwo!32702 (regTwo!32703 r!7292)))) b!6153486))

(assert (= (and b!6152339 ((_ is Union!16095) (regTwo!32702 (regTwo!32703 r!7292)))) b!6153487))

(declare-fun b!6153488 () Bool)

(declare-fun e!3749462 () Bool)

(declare-fun tp!1718614 () Bool)

(declare-fun tp!1718615 () Bool)

(assert (=> b!6153488 (= e!3749462 (and tp!1718614 tp!1718615))))

(assert (=> b!6152295 (= tp!1718305 e!3749462)))

(assert (= (and b!6152295 ((_ is Cons!64460) (exprs!5979 (h!70909 (t!378074 zl!343))))) b!6153488))

(declare-fun b!6153490 () Bool)

(declare-fun e!3749464 () Bool)

(declare-fun tp!1718616 () Bool)

(assert (=> b!6153490 (= e!3749464 tp!1718616)))

(declare-fun b!6153489 () Bool)

(declare-fun e!3749463 () Bool)

(declare-fun tp!1718617 () Bool)

(assert (=> b!6153489 (= e!3749463 (and (inv!83484 (h!70909 (t!378074 (t!378074 zl!343)))) e!3749464 tp!1718617))))

(assert (=> b!6152294 (= tp!1718306 e!3749463)))

(assert (= b!6153489 b!6153490))

(assert (= (and b!6152294 ((_ is Cons!64461) (t!378074 (t!378074 zl!343)))) b!6153489))

(declare-fun m!6992730 () Bool)

(assert (=> b!6153489 m!6992730))

(declare-fun b!6153491 () Bool)

(declare-fun e!3749465 () Bool)

(declare-fun tp!1718618 () Bool)

(assert (=> b!6153491 (= e!3749465 (and tp_is_empty!41443 tp!1718618))))

(assert (=> b!6152300 (= tp!1718309 e!3749465)))

(assert (= (and b!6152300 ((_ is Cons!64462) (t!378075 (t!378075 s!2326)))) b!6153491))

(declare-fun b!6153495 () Bool)

(declare-fun e!3749466 () Bool)

(declare-fun tp!1718622 () Bool)

(declare-fun tp!1718619 () Bool)

(assert (=> b!6153495 (= e!3749466 (and tp!1718622 tp!1718619))))

(declare-fun b!6153494 () Bool)

(declare-fun tp!1718623 () Bool)

(assert (=> b!6153494 (= e!3749466 tp!1718623)))

(declare-fun b!6153493 () Bool)

(declare-fun tp!1718621 () Bool)

(declare-fun tp!1718620 () Bool)

(assert (=> b!6153493 (= e!3749466 (and tp!1718621 tp!1718620))))

(assert (=> b!6152329 (= tp!1718342 e!3749466)))

(declare-fun b!6153492 () Bool)

(assert (=> b!6153492 (= e!3749466 tp_is_empty!41443)))

(assert (= (and b!6152329 ((_ is ElementMatch!16095) (h!70908 (exprs!5979 (h!70909 zl!343))))) b!6153492))

(assert (= (and b!6152329 ((_ is Concat!24940) (h!70908 (exprs!5979 (h!70909 zl!343))))) b!6153493))

(assert (= (and b!6152329 ((_ is Star!16095) (h!70908 (exprs!5979 (h!70909 zl!343))))) b!6153494))

(assert (= (and b!6152329 ((_ is Union!16095) (h!70908 (exprs!5979 (h!70909 zl!343))))) b!6153495))

(declare-fun b!6153496 () Bool)

(declare-fun e!3749467 () Bool)

(declare-fun tp!1718624 () Bool)

(declare-fun tp!1718625 () Bool)

(assert (=> b!6153496 (= e!3749467 (and tp!1718624 tp!1718625))))

(assert (=> b!6152329 (= tp!1718343 e!3749467)))

(assert (= (and b!6152329 ((_ is Cons!64460) (t!378073 (exprs!5979 (h!70909 zl!343))))) b!6153496))

(declare-fun b!6153500 () Bool)

(declare-fun e!3749468 () Bool)

(declare-fun tp!1718629 () Bool)

(declare-fun tp!1718626 () Bool)

(assert (=> b!6153500 (= e!3749468 (and tp!1718629 tp!1718626))))

(declare-fun b!6153499 () Bool)

(declare-fun tp!1718630 () Bool)

(assert (=> b!6153499 (= e!3749468 tp!1718630)))

(declare-fun b!6153498 () Bool)

(declare-fun tp!1718628 () Bool)

(declare-fun tp!1718627 () Bool)

(assert (=> b!6153498 (= e!3749468 (and tp!1718628 tp!1718627))))

(assert (=> b!6152323 (= tp!1718334 e!3749468)))

(declare-fun b!6153497 () Bool)

(assert (=> b!6153497 (= e!3749468 tp_is_empty!41443)))

(assert (= (and b!6152323 ((_ is ElementMatch!16095) (regOne!32703 (regTwo!32702 r!7292)))) b!6153497))

(assert (= (and b!6152323 ((_ is Concat!24940) (regOne!32703 (regTwo!32702 r!7292)))) b!6153498))

(assert (= (and b!6152323 ((_ is Star!16095) (regOne!32703 (regTwo!32702 r!7292)))) b!6153499))

(assert (= (and b!6152323 ((_ is Union!16095) (regOne!32703 (regTwo!32702 r!7292)))) b!6153500))

(declare-fun b!6153504 () Bool)

(declare-fun e!3749469 () Bool)

(declare-fun tp!1718634 () Bool)

(declare-fun tp!1718631 () Bool)

(assert (=> b!6153504 (= e!3749469 (and tp!1718634 tp!1718631))))

(declare-fun b!6153503 () Bool)

(declare-fun tp!1718635 () Bool)

(assert (=> b!6153503 (= e!3749469 tp!1718635)))

(declare-fun b!6153502 () Bool)

(declare-fun tp!1718633 () Bool)

(declare-fun tp!1718632 () Bool)

(assert (=> b!6153502 (= e!3749469 (and tp!1718633 tp!1718632))))

(assert (=> b!6152323 (= tp!1718331 e!3749469)))

(declare-fun b!6153501 () Bool)

(assert (=> b!6153501 (= e!3749469 tp_is_empty!41443)))

(assert (= (and b!6152323 ((_ is ElementMatch!16095) (regTwo!32703 (regTwo!32702 r!7292)))) b!6153501))

(assert (= (and b!6152323 ((_ is Concat!24940) (regTwo!32703 (regTwo!32702 r!7292)))) b!6153502))

(assert (= (and b!6152323 ((_ is Star!16095) (regTwo!32703 (regTwo!32702 r!7292)))) b!6153503))

(assert (= (and b!6152323 ((_ is Union!16095) (regTwo!32703 (regTwo!32702 r!7292)))) b!6153504))

(declare-fun b!6153508 () Bool)

(declare-fun e!3749470 () Bool)

(declare-fun tp!1718639 () Bool)

(declare-fun tp!1718636 () Bool)

(assert (=> b!6153508 (= e!3749470 (and tp!1718639 tp!1718636))))

(declare-fun b!6153507 () Bool)

(declare-fun tp!1718640 () Bool)

(assert (=> b!6153507 (= e!3749470 tp!1718640)))

(declare-fun b!6153506 () Bool)

(declare-fun tp!1718638 () Bool)

(declare-fun tp!1718637 () Bool)

(assert (=> b!6153506 (= e!3749470 (and tp!1718638 tp!1718637))))

(assert (=> b!6152337 (= tp!1718352 e!3749470)))

(declare-fun b!6153505 () Bool)

(assert (=> b!6153505 (= e!3749470 tp_is_empty!41443)))

(assert (= (and b!6152337 ((_ is ElementMatch!16095) (regOne!32703 (regOne!32703 r!7292)))) b!6153505))

(assert (= (and b!6152337 ((_ is Concat!24940) (regOne!32703 (regOne!32703 r!7292)))) b!6153506))

(assert (= (and b!6152337 ((_ is Star!16095) (regOne!32703 (regOne!32703 r!7292)))) b!6153507))

(assert (= (and b!6152337 ((_ is Union!16095) (regOne!32703 (regOne!32703 r!7292)))) b!6153508))

(declare-fun b!6153512 () Bool)

(declare-fun e!3749471 () Bool)

(declare-fun tp!1718644 () Bool)

(declare-fun tp!1718641 () Bool)

(assert (=> b!6153512 (= e!3749471 (and tp!1718644 tp!1718641))))

(declare-fun b!6153511 () Bool)

(declare-fun tp!1718645 () Bool)

(assert (=> b!6153511 (= e!3749471 tp!1718645)))

(declare-fun b!6153510 () Bool)

(declare-fun tp!1718643 () Bool)

(declare-fun tp!1718642 () Bool)

(assert (=> b!6153510 (= e!3749471 (and tp!1718643 tp!1718642))))

(assert (=> b!6152337 (= tp!1718349 e!3749471)))

(declare-fun b!6153509 () Bool)

(assert (=> b!6153509 (= e!3749471 tp_is_empty!41443)))

(assert (= (and b!6152337 ((_ is ElementMatch!16095) (regTwo!32703 (regOne!32703 r!7292)))) b!6153509))

(assert (= (and b!6152337 ((_ is Concat!24940) (regTwo!32703 (regOne!32703 r!7292)))) b!6153510))

(assert (= (and b!6152337 ((_ is Star!16095) (regTwo!32703 (regOne!32703 r!7292)))) b!6153511))

(assert (= (and b!6152337 ((_ is Union!16095) (regTwo!32703 (regOne!32703 r!7292)))) b!6153512))

(declare-fun b!6153516 () Bool)

(declare-fun e!3749472 () Bool)

(declare-fun tp!1718649 () Bool)

(declare-fun tp!1718646 () Bool)

(assert (=> b!6153516 (= e!3749472 (and tp!1718649 tp!1718646))))

(declare-fun b!6153515 () Bool)

(declare-fun tp!1718650 () Bool)

(assert (=> b!6153515 (= e!3749472 tp!1718650)))

(declare-fun b!6153514 () Bool)

(declare-fun tp!1718648 () Bool)

(declare-fun tp!1718647 () Bool)

(assert (=> b!6153514 (= e!3749472 (and tp!1718648 tp!1718647))))

(assert (=> b!6152322 (= tp!1718335 e!3749472)))

(declare-fun b!6153513 () Bool)

(assert (=> b!6153513 (= e!3749472 tp_is_empty!41443)))

(assert (= (and b!6152322 ((_ is ElementMatch!16095) (reg!16424 (regTwo!32702 r!7292)))) b!6153513))

(assert (= (and b!6152322 ((_ is Concat!24940) (reg!16424 (regTwo!32702 r!7292)))) b!6153514))

(assert (= (and b!6152322 ((_ is Star!16095) (reg!16424 (regTwo!32702 r!7292)))) b!6153515))

(assert (= (and b!6152322 ((_ is Union!16095) (reg!16424 (regTwo!32702 r!7292)))) b!6153516))

(declare-fun b!6153520 () Bool)

(declare-fun e!3749473 () Bool)

(declare-fun tp!1718654 () Bool)

(declare-fun tp!1718651 () Bool)

(assert (=> b!6153520 (= e!3749473 (and tp!1718654 tp!1718651))))

(declare-fun b!6153519 () Bool)

(declare-fun tp!1718655 () Bool)

(assert (=> b!6153519 (= e!3749473 tp!1718655)))

(declare-fun b!6153518 () Bool)

(declare-fun tp!1718653 () Bool)

(declare-fun tp!1718652 () Bool)

(assert (=> b!6153518 (= e!3749473 (and tp!1718653 tp!1718652))))

(assert (=> b!6152336 (= tp!1718353 e!3749473)))

(declare-fun b!6153517 () Bool)

(assert (=> b!6153517 (= e!3749473 tp_is_empty!41443)))

(assert (= (and b!6152336 ((_ is ElementMatch!16095) (reg!16424 (regOne!32703 r!7292)))) b!6153517))

(assert (= (and b!6152336 ((_ is Concat!24940) (reg!16424 (regOne!32703 r!7292)))) b!6153518))

(assert (= (and b!6152336 ((_ is Star!16095) (reg!16424 (regOne!32703 r!7292)))) b!6153519))

(assert (= (and b!6152336 ((_ is Union!16095) (reg!16424 (regOne!32703 r!7292)))) b!6153520))

(declare-fun b!6153524 () Bool)

(declare-fun e!3749474 () Bool)

(declare-fun tp!1718659 () Bool)

(declare-fun tp!1718656 () Bool)

(assert (=> b!6153524 (= e!3749474 (and tp!1718659 tp!1718656))))

(declare-fun b!6153523 () Bool)

(declare-fun tp!1718660 () Bool)

(assert (=> b!6153523 (= e!3749474 tp!1718660)))

(declare-fun b!6153522 () Bool)

(declare-fun tp!1718658 () Bool)

(declare-fun tp!1718657 () Bool)

(assert (=> b!6153522 (= e!3749474 (and tp!1718658 tp!1718657))))

(assert (=> b!6152321 (= tp!1718333 e!3749474)))

(declare-fun b!6153521 () Bool)

(assert (=> b!6153521 (= e!3749474 tp_is_empty!41443)))

(assert (= (and b!6152321 ((_ is ElementMatch!16095) (regOne!32702 (regTwo!32702 r!7292)))) b!6153521))

(assert (= (and b!6152321 ((_ is Concat!24940) (regOne!32702 (regTwo!32702 r!7292)))) b!6153522))

(assert (= (and b!6152321 ((_ is Star!16095) (regOne!32702 (regTwo!32702 r!7292)))) b!6153523))

(assert (= (and b!6152321 ((_ is Union!16095) (regOne!32702 (regTwo!32702 r!7292)))) b!6153524))

(declare-fun b!6153528 () Bool)

(declare-fun e!3749475 () Bool)

(declare-fun tp!1718664 () Bool)

(declare-fun tp!1718661 () Bool)

(assert (=> b!6153528 (= e!3749475 (and tp!1718664 tp!1718661))))

(declare-fun b!6153527 () Bool)

(declare-fun tp!1718665 () Bool)

(assert (=> b!6153527 (= e!3749475 tp!1718665)))

(declare-fun b!6153526 () Bool)

(declare-fun tp!1718663 () Bool)

(declare-fun tp!1718662 () Bool)

(assert (=> b!6153526 (= e!3749475 (and tp!1718663 tp!1718662))))

(assert (=> b!6152321 (= tp!1718332 e!3749475)))

(declare-fun b!6153525 () Bool)

(assert (=> b!6153525 (= e!3749475 tp_is_empty!41443)))

(assert (= (and b!6152321 ((_ is ElementMatch!16095) (regTwo!32702 (regTwo!32702 r!7292)))) b!6153525))

(assert (= (and b!6152321 ((_ is Concat!24940) (regTwo!32702 (regTwo!32702 r!7292)))) b!6153526))

(assert (= (and b!6152321 ((_ is Star!16095) (regTwo!32702 (regTwo!32702 r!7292)))) b!6153527))

(assert (= (and b!6152321 ((_ is Union!16095) (regTwo!32702 (regTwo!32702 r!7292)))) b!6153528))

(declare-fun b!6153532 () Bool)

(declare-fun e!3749476 () Bool)

(declare-fun tp!1718669 () Bool)

(declare-fun tp!1718666 () Bool)

(assert (=> b!6153532 (= e!3749476 (and tp!1718669 tp!1718666))))

(declare-fun b!6153531 () Bool)

(declare-fun tp!1718670 () Bool)

(assert (=> b!6153531 (= e!3749476 tp!1718670)))

(declare-fun b!6153530 () Bool)

(declare-fun tp!1718668 () Bool)

(declare-fun tp!1718667 () Bool)

(assert (=> b!6153530 (= e!3749476 (and tp!1718668 tp!1718667))))

(assert (=> b!6152335 (= tp!1718351 e!3749476)))

(declare-fun b!6153529 () Bool)

(assert (=> b!6153529 (= e!3749476 tp_is_empty!41443)))

(assert (= (and b!6152335 ((_ is ElementMatch!16095) (regOne!32702 (regOne!32703 r!7292)))) b!6153529))

(assert (= (and b!6152335 ((_ is Concat!24940) (regOne!32702 (regOne!32703 r!7292)))) b!6153530))

(assert (= (and b!6152335 ((_ is Star!16095) (regOne!32702 (regOne!32703 r!7292)))) b!6153531))

(assert (= (and b!6152335 ((_ is Union!16095) (regOne!32702 (regOne!32703 r!7292)))) b!6153532))

(declare-fun b!6153536 () Bool)

(declare-fun e!3749477 () Bool)

(declare-fun tp!1718674 () Bool)

(declare-fun tp!1718671 () Bool)

(assert (=> b!6153536 (= e!3749477 (and tp!1718674 tp!1718671))))

(declare-fun b!6153535 () Bool)

(declare-fun tp!1718675 () Bool)

(assert (=> b!6153535 (= e!3749477 tp!1718675)))

(declare-fun b!6153534 () Bool)

(declare-fun tp!1718673 () Bool)

(declare-fun tp!1718672 () Bool)

(assert (=> b!6153534 (= e!3749477 (and tp!1718673 tp!1718672))))

(assert (=> b!6152335 (= tp!1718350 e!3749477)))

(declare-fun b!6153533 () Bool)

(assert (=> b!6153533 (= e!3749477 tp_is_empty!41443)))

(assert (= (and b!6152335 ((_ is ElementMatch!16095) (regTwo!32702 (regOne!32703 r!7292)))) b!6153533))

(assert (= (and b!6152335 ((_ is Concat!24940) (regTwo!32702 (regOne!32703 r!7292)))) b!6153534))

(assert (= (and b!6152335 ((_ is Star!16095) (regTwo!32702 (regOne!32703 r!7292)))) b!6153535))

(assert (= (and b!6152335 ((_ is Union!16095) (regTwo!32702 (regOne!32703 r!7292)))) b!6153536))

(declare-fun b!6153540 () Bool)

(declare-fun e!3749478 () Bool)

(declare-fun tp!1718679 () Bool)

(declare-fun tp!1718676 () Bool)

(assert (=> b!6153540 (= e!3749478 (and tp!1718679 tp!1718676))))

(declare-fun b!6153539 () Bool)

(declare-fun tp!1718680 () Bool)

(assert (=> b!6153539 (= e!3749478 tp!1718680)))

(declare-fun b!6153538 () Bool)

(declare-fun tp!1718678 () Bool)

(declare-fun tp!1718677 () Bool)

(assert (=> b!6153538 (= e!3749478 (and tp!1718678 tp!1718677))))

(assert (=> b!6152328 (= tp!1718340 e!3749478)))

(declare-fun b!6153537 () Bool)

(assert (=> b!6153537 (= e!3749478 tp_is_empty!41443)))

(assert (= (and b!6152328 ((_ is ElementMatch!16095) (h!70908 (exprs!5979 setElem!41652)))) b!6153537))

(assert (= (and b!6152328 ((_ is Concat!24940) (h!70908 (exprs!5979 setElem!41652)))) b!6153538))

(assert (= (and b!6152328 ((_ is Star!16095) (h!70908 (exprs!5979 setElem!41652)))) b!6153539))

(assert (= (and b!6152328 ((_ is Union!16095) (h!70908 (exprs!5979 setElem!41652)))) b!6153540))

(declare-fun b!6153541 () Bool)

(declare-fun e!3749479 () Bool)

(declare-fun tp!1718681 () Bool)

(declare-fun tp!1718682 () Bool)

(assert (=> b!6153541 (= e!3749479 (and tp!1718681 tp!1718682))))

(assert (=> b!6152328 (= tp!1718341 e!3749479)))

(assert (= (and b!6152328 ((_ is Cons!64460) (t!378073 (exprs!5979 setElem!41652)))) b!6153541))

(declare-fun b!6153542 () Bool)

(declare-fun e!3749480 () Bool)

(declare-fun tp!1718683 () Bool)

(declare-fun tp!1718684 () Bool)

(assert (=> b!6153542 (= e!3749480 (and tp!1718683 tp!1718684))))

(assert (=> b!6152305 (= tp!1718314 e!3749480)))

(assert (= (and b!6152305 ((_ is Cons!64460) (exprs!5979 setElem!41658))) b!6153542))

(declare-fun condSetEmpty!41670 () Bool)

(assert (=> setNonEmpty!41658 (= condSetEmpty!41670 (= setRest!41658 ((as const (Array Context!10958 Bool)) false)))))

(declare-fun setRes!41670 () Bool)

(assert (=> setNonEmpty!41658 (= tp!1718315 setRes!41670)))

(declare-fun setIsEmpty!41670 () Bool)

(assert (=> setIsEmpty!41670 setRes!41670))

(declare-fun tp!1718686 () Bool)

(declare-fun setNonEmpty!41670 () Bool)

(declare-fun setElem!41670 () Context!10958)

(declare-fun e!3749481 () Bool)

(assert (=> setNonEmpty!41670 (= setRes!41670 (and tp!1718686 (inv!83484 setElem!41670) e!3749481))))

(declare-fun setRest!41670 () (InoxSet Context!10958))

(assert (=> setNonEmpty!41670 (= setRest!41658 ((_ map or) (store ((as const (Array Context!10958 Bool)) false) setElem!41670 true) setRest!41670))))

(declare-fun b!6153543 () Bool)

(declare-fun tp!1718685 () Bool)

(assert (=> b!6153543 (= e!3749481 tp!1718685)))

(assert (= (and setNonEmpty!41658 condSetEmpty!41670) setIsEmpty!41670))

(assert (= (and setNonEmpty!41658 (not condSetEmpty!41670)) setNonEmpty!41670))

(assert (= setNonEmpty!41670 b!6153543))

(declare-fun m!6992732 () Bool)

(assert (=> setNonEmpty!41670 m!6992732))

(declare-fun b_lambda!234223 () Bool)

(assert (= b_lambda!234211 (or b!6151542 b_lambda!234223)))

(assert (=> d!1927971 d!1927625))

(declare-fun b_lambda!234225 () Bool)

(assert (= b_lambda!234219 (or d!1927601 b_lambda!234225)))

(declare-fun bs!1525373 () Bool)

(declare-fun d!1928147 () Bool)

(assert (= bs!1525373 (and d!1928147 d!1927601)))

(assert (=> bs!1525373 (= (dynLambda!25412 lambda!335547 (h!70908 (unfocusZipperList!1516 zl!343))) (validRegex!7831 (h!70908 (unfocusZipperList!1516 zl!343))))))

(declare-fun m!6992734 () Bool)

(assert (=> bs!1525373 m!6992734))

(assert (=> b!6153229 d!1928147))

(declare-fun b_lambda!234227 () Bool)

(assert (= b_lambda!234213 (or d!1927603 b_lambda!234227)))

(declare-fun bs!1525374 () Bool)

(declare-fun d!1928149 () Bool)

(assert (= bs!1525374 (and d!1928149 d!1927603)))

(assert (=> bs!1525374 (= (dynLambda!25412 lambda!335550 (h!70908 lt!2334636)) (validRegex!7831 (h!70908 lt!2334636)))))

(declare-fun m!6992736 () Bool)

(assert (=> bs!1525374 m!6992736))

(assert (=> b!6153167 d!1928149))

(declare-fun b_lambda!234229 () Bool)

(assert (= b_lambda!234209 (or d!1927571 b_lambda!234229)))

(declare-fun bs!1525375 () Bool)

(declare-fun d!1928151 () Bool)

(assert (= bs!1525375 (and d!1928151 d!1927571)))

(assert (=> bs!1525375 (= (dynLambda!25412 lambda!335538 (h!70908 (exprs!5979 setElem!41652))) (validRegex!7831 (h!70908 (exprs!5979 setElem!41652))))))

(declare-fun m!6992738 () Bool)

(assert (=> bs!1525375 m!6992738))

(assert (=> b!6153102 d!1928151))

(declare-fun b_lambda!234231 () Bool)

(assert (= b_lambda!234217 (or d!1927605 b_lambda!234231)))

(declare-fun bs!1525376 () Bool)

(declare-fun d!1928153 () Bool)

(assert (= bs!1525376 (and d!1928153 d!1927605)))

(assert (=> bs!1525376 (= (dynLambda!25412 lambda!335553 (h!70908 (exprs!5979 (h!70909 zl!343)))) (validRegex!7831 (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(declare-fun m!6992740 () Bool)

(assert (=> bs!1525376 m!6992740))

(assert (=> b!6153216 d!1928153))

(declare-fun b_lambda!234233 () Bool)

(assert (= b_lambda!234205 (or d!1927617 b_lambda!234233)))

(declare-fun bs!1525377 () Bool)

(declare-fun d!1928155 () Bool)

(assert (= bs!1525377 (and d!1928155 d!1927617)))

(assert (=> bs!1525377 (= (dynLambda!25412 lambda!335555 (h!70908 (exprs!5979 lt!2334543))) (validRegex!7831 (h!70908 (exprs!5979 lt!2334543))))))

(declare-fun m!6992742 () Bool)

(assert (=> bs!1525377 m!6992742))

(assert (=> b!6152947 d!1928155))

(declare-fun b_lambda!234235 () Bool)

(assert (= b_lambda!234207 (or d!1927607 b_lambda!234235)))

(declare-fun bs!1525378 () Bool)

(declare-fun d!1928157 () Bool)

(assert (= bs!1525378 (and d!1928157 d!1927607)))

(assert (=> bs!1525378 (= (dynLambda!25412 lambda!335554 (h!70908 (exprs!5979 (h!70909 zl!343)))) (validRegex!7831 (h!70908 (exprs!5979 (h!70909 zl!343)))))))

(assert (=> bs!1525378 m!6992740))

(assert (=> b!6152976 d!1928157))

(declare-fun b_lambda!234237 () Bool)

(assert (= b_lambda!234221 (or b!6151542 b_lambda!234237)))

(assert (=> d!1928115 d!1927621))

(declare-fun b_lambda!234239 () Bool)

(assert (= b_lambda!234215 (or b!6151542 b_lambda!234239)))

(assert (=> d!1928015 d!1927623))

(check-sat (not b!6153526) (not b!6153323) (not bm!511931) (not b!6153463) (not b_lambda!234223) (not b!6153173) (not b!6153078) (not b!6153267) (not b!6153074) (not b!6153126) (not b!6153104) (not d!1928085) (not b!6153454) (not b!6153461) (not d!1927925) (not b!6153179) (not bm!511991) (not b!6153071) (not b!6153530) (not b!6153320) (not b!6153004) (not b!6153328) (not b!6153387) (not b!6152986) (not b!6153485) (not bm!511968) (not bm!511915) (not b!6153168) (not d!1928005) (not bm!511905) (not b!6153183) (not b!6153443) (not b!6153340) (not bm!511890) (not bm!511937) (not d!1927999) (not d!1927961) (not b!6153465) (not b!6153077) (not b!6153519) (not d!1927993) (not setNonEmpty!41669) (not bm!511889) (not b!6153527) (not d!1928143) (not b!6153150) (not b!6153219) (not b_lambda!234225) (not b!6153481) (not b!6152977) (not b!6153536) (not d!1927987) (not b!6153251) (not b_lambda!234239) (not d!1928027) (not d!1928089) (not b!6153296) (not b!6153474) (not b!6153469) (not b!6153041) (not bm!511990) (not b!6153166) (not d!1927949) (not d!1928099) (not b!6153402) (not bm!511973) (not bs!1525376) (not b!6153523) (not b!6153434) (not b!6153156) (not bm!511983) (not bm!511966) (not b!6153450) (not bm!511979) (not b!6153478) (not b!6153534) (not b!6153541) (not b!6153384) (not bs!1525373) (not bm!511944) (not b!6153106) (not b!6153169) (not b!6153493) (not b!6153178) (not bm!511978) (not bm!511984) (not b!6153499) (not b!6153535) (not b!6153330) (not b!6153080) (not b!6153543) (not b!6153483) (not bm!511926) (not b!6153451) (not bm!511917) (not b!6153109) (not d!1928107) (not b!6153050) (not d!1928065) (not bm!511934) (not bm!511923) (not d!1928025) (not b!6153070) (not bm!511902) (not b_lambda!234231) (not b!6153490) (not d!1928047) (not b!6153520) (not b!6153230) (not b!6153441) (not b!6153411) (not bm!511891) (not b!6153510) (not b!6153111) (not b!6153487) (not b!6152964) (not b!6153381) (not bm!511942) (not d!1927971) (not d!1928095) (not d!1928139) (not bm!511938) (not bm!511953) (not b!6153319) (not b!6152985) (not b!6153394) (not b!6153503) (not bm!511947) (not bm!511992) (not bm!511909) (not d!1927995) (not b!6153498) (not b!6153124) (not b!6153516) (not b!6153507) (not b!6153449) (not bm!511960) (not bm!511943) (not b!6153467) (not b!6153099) (not d!1928011) (not bm!511961) (not b!6153164) (not b!6153308) (not d!1928119) (not bm!511884) (not d!1928129) (not b!6153087) (not b!6153446) (not b!6153524) (not b!6153477) (not b!6153006) (not b!6153482) (not b!6153539) (not d!1927951) (not b!6153295) (not b!6153389) (not b!6153011) (not d!1928045) (not b!6153522) (not b!6152994) (not b!6153445) (not d!1928043) (not b!6153333) (not b!6153437) (not b!6153125) (not b!6153185) (not d!1928133) (not b!6153418) (not b!6153471) (not d!1927923) (not bm!511911) (not b!6153475) (not b!6153297) (not b!6153327) (not bm!511982) (not b!6153486) (not b!6153538) (not b!6153455) (not b!6153431) (not b_lambda!234165) (not bm!511989) (not b!6153442) (not d!1928137) (not b!6153423) (not b!6153329) (not bm!511874) (not b!6153531) (not b!6153380) (not bm!511886) (not b!6153009) (not b_lambda!234235) (not b!6153427) (not b!6153325) (not b!6153082) (not b!6153218) (not b!6153165) (not b!6153495) (not b!6153209) (not b!6153494) (not b!6153542) (not b!6153098) (not b!6153284) (not setNonEmpty!41667) (not bm!511887) (not b!6153412) (not bm!511903) (not bm!511972) (not b!6153016) (not bm!511878) (not b!6153374) (not b!6153512) (not b!6153506) (not bm!511879) (not d!1927905) (not b!6153217) (not b!6153003) (not b!6153252) (not b!6153326) (not b!6153084) (not b!6153532) (not b!6153457) (not b!6153435) (not b!6153462) (not bm!511967) (not d!1927939) (not bs!1525377) (not b_lambda!234233) (not b!6152990) (not d!1927983) (not b!6152975) (not d!1927959) (not b!6153206) (not b!6153222) (not bm!511935) (not b!6153396) (not b!6153502) (not b!6153361) (not b!6153067) (not b!6153470) (not b!6152980) (not bm!511993) (not b!6153500) (not bs!1525375) (not bm!511946) (not d!1927917) (not d!1928145) (not d!1928071) (not bm!511930) (not d!1928111) (not bm!511951) (not b!6153518) (not b!6153514) (not b!6153382) (not bm!511907) (not setNonEmpty!41668) (not b!6153479) (not b!6153390) (not d!1928061) (not b!6153403) (not bm!511962) (not bm!511974) (not b!6152949) (not d!1928115) (not d!1927991) (not b!6153171) (not b!6153447) (not bm!511922) (not b!6153176) (not b!6153515) (not d!1928101) tp_is_empty!41443 (not b!6153491) (not b!6152978) (not b!6153241) (not b!6152983) (not d!1927953) (not b!6153244) (not b!6153439) (not d!1927893) (not bm!511956) (not d!1928019) (not b!6153425) (not bm!511916) (not bm!511952) (not bm!511885) (not b!6153453) (not b!6153188) (not d!1928109) (not d!1928059) (not b!6153322) (not b!6153424) (not b!6153149) (not bm!511880) (not bs!1525378) (not b!6153496) (not b_lambda!234163) (not b!6152948) (not b!6153429) (not d!1928097) (not b!6153466) (not b!6153416) (not bs!1525374) (not d!1928063) (not b!6153504) (not b!6153459) (not d!1928127) (not d!1928015) (not b!6153321) (not d!1928131) (not b_lambda!234229) (not b!6153438) (not bm!511955) (not b_lambda!234167) (not b!6153404) (not b!6152951) (not b!6153397) (not b!6153430) (not b!6153094) (not b!6153103) (not bm!511906) (not d!1928021) (not b!6153066) (not b!6153012) (not b!6153359) (not d!1928105) (not d!1928135) (not d!1928141) (not d!1927909) (not b!6153489) (not setNonEmpty!41670) (not b!6153409) (not b!6153264) (not bm!511932) (not d!1927947) (not b!6153508) (not bm!511981) (not b!6153426) (not b!6153528) (not b!6153488) (not bm!511910) (not b!6153458) (not b!6153406) (not bm!511924) (not b!6153076) (not b!6153157) (not d!1928125) (not b!6153421) (not b_lambda!234237) (not b!6153473) (not bm!511985) (not b!6153253) (not d!1928069) (not d!1928009) (not d!1927937) (not bm!511925) (not bm!511908) (not b_lambda!234227) (not bm!511980) (not b!6153433) (not b!6153511) (not b!6153079) (not b!6153540) (not d!1928087))
(check-sat)
