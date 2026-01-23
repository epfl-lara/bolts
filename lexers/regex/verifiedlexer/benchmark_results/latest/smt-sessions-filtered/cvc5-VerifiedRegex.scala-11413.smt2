; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!612096 () Bool)

(assert start!612096)

(declare-fun b!6128255 () Bool)

(assert (=> b!6128255 true))

(assert (=> b!6128255 true))

(declare-fun lambda!333807 () Int)

(declare-fun lambda!333806 () Int)

(assert (=> b!6128255 (not (= lambda!333807 lambda!333806))))

(assert (=> b!6128255 true))

(assert (=> b!6128255 true))

(declare-fun b!6128244 () Bool)

(assert (=> b!6128244 true))

(declare-fun b!6128242 () Bool)

(declare-fun e!3735440 () Bool)

(declare-fun e!3735444 () Bool)

(assert (=> b!6128242 (= e!3735440 (not e!3735444))))

(declare-fun res!2540078 () Bool)

(assert (=> b!6128242 (=> res!2540078 e!3735444)))

(declare-datatypes ((C!32414 0))(
  ( (C!32415 (val!25909 Int)) )
))
(declare-datatypes ((Regex!16072 0))(
  ( (ElementMatch!16072 (c!1101550 C!32414)) (Concat!24917 (regOne!32656 Regex!16072) (regTwo!32656 Regex!16072)) (EmptyExpr!16072) (Star!16072 (reg!16401 Regex!16072)) (EmptyLang!16072) (Union!16072 (regOne!32657 Regex!16072) (regTwo!32657 Regex!16072)) )
))
(declare-datatypes ((List!64515 0))(
  ( (Nil!64391) (Cons!64391 (h!70839 Regex!16072) (t!377982 List!64515)) )
))
(declare-datatypes ((Context!10912 0))(
  ( (Context!10913 (exprs!5956 List!64515)) )
))
(declare-datatypes ((List!64516 0))(
  ( (Nil!64392) (Cons!64392 (h!70840 Context!10912) (t!377983 List!64516)) )
))
(declare-fun zl!343 () List!64516)

(assert (=> b!6128242 (= res!2540078 (not (is-Cons!64392 zl!343)))))

(declare-fun lt!2331614 () Bool)

(declare-fun r!7292 () Regex!16072)

(declare-datatypes ((List!64517 0))(
  ( (Nil!64393) (Cons!64393 (h!70841 C!32414) (t!377984 List!64517)) )
))
(declare-fun s!2326 () List!64517)

(declare-fun matchRSpec!3173 (Regex!16072 List!64517) Bool)

(assert (=> b!6128242 (= lt!2331614 (matchRSpec!3173 r!7292 s!2326))))

(declare-fun matchR!8255 (Regex!16072 List!64517) Bool)

(assert (=> b!6128242 (= lt!2331614 (matchR!8255 r!7292 s!2326))))

(declare-datatypes ((Unit!157443 0))(
  ( (Unit!157444) )
))
(declare-fun lt!2331610 () Unit!157443)

(declare-fun mainMatchTheorem!3173 (Regex!16072 List!64517) Unit!157443)

(assert (=> b!6128242 (= lt!2331610 (mainMatchTheorem!3173 r!7292 s!2326))))

(declare-fun setIsEmpty!41413 () Bool)

(declare-fun setRes!41413 () Bool)

(assert (=> setIsEmpty!41413 setRes!41413))

(declare-fun e!3735443 () Bool)

(declare-fun e!3735436 () Bool)

(assert (=> b!6128244 (= e!3735443 e!3735436)))

(declare-fun res!2540079 () Bool)

(assert (=> b!6128244 (=> res!2540079 e!3735436)))

(assert (=> b!6128244 (= res!2540079 (or (and (is-ElementMatch!16072 (regOne!32656 r!7292)) (= (c!1101550 (regOne!32656 r!7292)) (h!70841 s!2326))) (not (is-Union!16072 (regOne!32656 r!7292)))))))

(declare-fun lt!2331609 () Unit!157443)

(declare-fun e!3735437 () Unit!157443)

(assert (=> b!6128244 (= lt!2331609 e!3735437)))

(declare-fun c!1101549 () Bool)

(declare-fun nullable!6065 (Regex!16072) Bool)

(assert (=> b!6128244 (= c!1101549 (nullable!6065 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun z!1189 () (Set Context!10912))

(declare-fun lambda!333808 () Int)

(declare-fun flatMap!1577 ((Set Context!10912) Int) (Set Context!10912))

(declare-fun derivationStepZipperUp!1246 (Context!10912 C!32414) (Set Context!10912))

(assert (=> b!6128244 (= (flatMap!1577 z!1189 lambda!333808) (derivationStepZipperUp!1246 (h!70840 zl!343) (h!70841 s!2326)))))

(declare-fun lt!2331617 () Unit!157443)

(declare-fun lemmaFlatMapOnSingletonSet!1103 ((Set Context!10912) Context!10912 Int) Unit!157443)

(assert (=> b!6128244 (= lt!2331617 (lemmaFlatMapOnSingletonSet!1103 z!1189 (h!70840 zl!343) lambda!333808))))

(declare-fun lt!2331615 () (Set Context!10912))

(declare-fun lt!2331616 () Context!10912)

(assert (=> b!6128244 (= lt!2331615 (derivationStepZipperUp!1246 lt!2331616 (h!70841 s!2326)))))

(declare-fun lt!2331618 () (Set Context!10912))

(declare-fun derivationStepZipperDown!1320 (Regex!16072 Context!10912 C!32414) (Set Context!10912))

(assert (=> b!6128244 (= lt!2331618 (derivationStepZipperDown!1320 (h!70839 (exprs!5956 (h!70840 zl!343))) lt!2331616 (h!70841 s!2326)))))

(assert (=> b!6128244 (= lt!2331616 (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun lt!2331613 () (Set Context!10912))

(assert (=> b!6128244 (= lt!2331613 (derivationStepZipperUp!1246 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))) (h!70841 s!2326)))))

(declare-fun b!6128245 () Bool)

(declare-fun res!2540080 () Bool)

(assert (=> b!6128245 (=> res!2540080 e!3735443)))

(declare-fun isEmpty!36330 (List!64515) Bool)

(assert (=> b!6128245 (= res!2540080 (isEmpty!36330 (t!377982 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun b!6128246 () Bool)

(declare-fun e!3735438 () Bool)

(declare-fun tp!1712720 () Bool)

(assert (=> b!6128246 (= e!3735438 tp!1712720)))

(declare-fun b!6128247 () Bool)

(declare-fun res!2540076 () Bool)

(assert (=> b!6128247 (=> (not res!2540076) (not e!3735440))))

(declare-fun toList!9856 ((Set Context!10912)) List!64516)

(assert (=> b!6128247 (= res!2540076 (= (toList!9856 z!1189) zl!343))))

(declare-fun b!6128248 () Bool)

(declare-fun res!2540074 () Bool)

(assert (=> b!6128248 (=> res!2540074 e!3735444)))

(declare-fun isEmpty!36331 (List!64516) Bool)

(assert (=> b!6128248 (= res!2540074 (not (isEmpty!36331 (t!377983 zl!343))))))

(declare-fun b!6128249 () Bool)

(declare-fun Unit!157445 () Unit!157443)

(assert (=> b!6128249 (= e!3735437 Unit!157445)))

(declare-fun lt!2331611 () Unit!157443)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!903 ((Set Context!10912) (Set Context!10912) List!64517) Unit!157443)

(assert (=> b!6128249 (= lt!2331611 (lemmaZipperConcatMatchesSameAsBothZippers!903 lt!2331618 lt!2331615 (t!377984 s!2326)))))

(declare-fun res!2540073 () Bool)

(declare-fun matchZipper!2084 ((Set Context!10912) List!64517) Bool)

(assert (=> b!6128249 (= res!2540073 (matchZipper!2084 lt!2331618 (t!377984 s!2326)))))

(declare-fun e!3735434 () Bool)

(assert (=> b!6128249 (=> res!2540073 e!3735434)))

(assert (=> b!6128249 (= (matchZipper!2084 (set.union lt!2331618 lt!2331615) (t!377984 s!2326)) e!3735434)))

(declare-fun b!6128250 () Bool)

(declare-fun res!2540084 () Bool)

(assert (=> b!6128250 (=> res!2540084 e!3735444)))

(assert (=> b!6128250 (= res!2540084 (or (is-EmptyExpr!16072 r!7292) (is-EmptyLang!16072 r!7292) (is-ElementMatch!16072 r!7292) (is-Union!16072 r!7292) (not (is-Concat!24917 r!7292))))))

(declare-fun b!6128251 () Bool)

(declare-fun e!3735442 () Bool)

(declare-fun tp_is_empty!41397 () Bool)

(declare-fun tp!1712719 () Bool)

(assert (=> b!6128251 (= e!3735442 (and tp_is_empty!41397 tp!1712719))))

(declare-fun b!6128252 () Bool)

(declare-fun res!2540083 () Bool)

(assert (=> b!6128252 (=> res!2540083 e!3735444)))

(declare-fun generalisedUnion!1916 (List!64515) Regex!16072)

(declare-fun unfocusZipperList!1493 (List!64516) List!64515)

(assert (=> b!6128252 (= res!2540083 (not (= r!7292 (generalisedUnion!1916 (unfocusZipperList!1493 zl!343)))))))

(declare-fun b!6128253 () Bool)

(declare-fun inv!83428 (Context!10912) Bool)

(assert (=> b!6128253 (= e!3735436 (inv!83428 lt!2331616))))

(declare-fun b!6128254 () Bool)

(declare-fun res!2540072 () Bool)

(assert (=> b!6128254 (=> (not res!2540072) (not e!3735440))))

(declare-fun unfocusZipper!1814 (List!64516) Regex!16072)

(assert (=> b!6128254 (= res!2540072 (= r!7292 (unfocusZipper!1814 zl!343)))))

(declare-fun tp!1712715 () Bool)

(declare-fun setElem!41413 () Context!10912)

(declare-fun setNonEmpty!41413 () Bool)

(declare-fun e!3735435 () Bool)

(assert (=> setNonEmpty!41413 (= setRes!41413 (and tp!1712715 (inv!83428 setElem!41413) e!3735435))))

(declare-fun setRest!41413 () (Set Context!10912))

(assert (=> setNonEmpty!41413 (= z!1189 (set.union (set.insert setElem!41413 (as set.empty (Set Context!10912))) setRest!41413))))

(assert (=> b!6128255 (= e!3735444 e!3735443)))

(declare-fun res!2540085 () Bool)

(assert (=> b!6128255 (=> res!2540085 e!3735443)))

(declare-fun lt!2331607 () Bool)

(assert (=> b!6128255 (= res!2540085 (or (not (= lt!2331614 lt!2331607)) (is-Nil!64393 s!2326)))))

(declare-fun Exists!3142 (Int) Bool)

(assert (=> b!6128255 (= (Exists!3142 lambda!333806) (Exists!3142 lambda!333807))))

(declare-fun lt!2331608 () Unit!157443)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1679 (Regex!16072 Regex!16072 List!64517) Unit!157443)

(assert (=> b!6128255 (= lt!2331608 (lemmaExistCutMatchRandMatchRSpecEquivalent!1679 (regOne!32656 r!7292) (regTwo!32656 r!7292) s!2326))))

(assert (=> b!6128255 (= lt!2331607 (Exists!3142 lambda!333806))))

(declare-datatypes ((tuple2!66102 0))(
  ( (tuple2!66103 (_1!36354 List!64517) (_2!36354 List!64517)) )
))
(declare-datatypes ((Option!15963 0))(
  ( (None!15962) (Some!15962 (v!52101 tuple2!66102)) )
))
(declare-fun isDefined!12666 (Option!15963) Bool)

(declare-fun findConcatSeparation!2377 (Regex!16072 Regex!16072 List!64517 List!64517 List!64517) Option!15963)

(assert (=> b!6128255 (= lt!2331607 (isDefined!12666 (findConcatSeparation!2377 (regOne!32656 r!7292) (regTwo!32656 r!7292) Nil!64393 s!2326 s!2326)))))

(declare-fun lt!2331612 () Unit!157443)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2141 (Regex!16072 Regex!16072 List!64517) Unit!157443)

(assert (=> b!6128255 (= lt!2331612 (lemmaFindConcatSeparationEquivalentToExists!2141 (regOne!32656 r!7292) (regTwo!32656 r!7292) s!2326))))

(declare-fun b!6128256 () Bool)

(declare-fun e!3735439 () Bool)

(declare-fun tp!1712718 () Bool)

(assert (=> b!6128256 (= e!3735439 tp!1712718)))

(declare-fun b!6128257 () Bool)

(assert (=> b!6128257 (= e!3735434 (matchZipper!2084 lt!2331615 (t!377984 s!2326)))))

(declare-fun res!2540081 () Bool)

(assert (=> start!612096 (=> (not res!2540081) (not e!3735440))))

(declare-fun validRegex!7808 (Regex!16072) Bool)

(assert (=> start!612096 (= res!2540081 (validRegex!7808 r!7292))))

(assert (=> start!612096 e!3735440))

(assert (=> start!612096 e!3735439))

(declare-fun condSetEmpty!41413 () Bool)

(assert (=> start!612096 (= condSetEmpty!41413 (= z!1189 (as set.empty (Set Context!10912))))))

(assert (=> start!612096 setRes!41413))

(declare-fun e!3735441 () Bool)

(assert (=> start!612096 e!3735441))

(assert (=> start!612096 e!3735442))

(declare-fun b!6128243 () Bool)

(declare-fun res!2540082 () Bool)

(assert (=> b!6128243 (=> res!2540082 e!3735436)))

(assert (=> b!6128243 (= res!2540082 (not (= lt!2331618 (set.union (derivationStepZipperDown!1320 (regOne!32657 (regOne!32656 r!7292)) lt!2331616 (h!70841 s!2326)) (derivationStepZipperDown!1320 (regTwo!32657 (regOne!32656 r!7292)) lt!2331616 (h!70841 s!2326))))))))

(declare-fun b!6128258 () Bool)

(declare-fun res!2540077 () Bool)

(assert (=> b!6128258 (=> res!2540077 e!3735444)))

(assert (=> b!6128258 (= res!2540077 (not (is-Cons!64391 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun b!6128259 () Bool)

(declare-fun tp!1712721 () Bool)

(declare-fun tp!1712716 () Bool)

(assert (=> b!6128259 (= e!3735439 (and tp!1712721 tp!1712716))))

(declare-fun b!6128260 () Bool)

(declare-fun tp!1712722 () Bool)

(declare-fun tp!1712723 () Bool)

(assert (=> b!6128260 (= e!3735439 (and tp!1712722 tp!1712723))))

(declare-fun b!6128261 () Bool)

(assert (=> b!6128261 (= e!3735439 tp_is_empty!41397)))

(declare-fun b!6128262 () Bool)

(declare-fun tp!1712724 () Bool)

(assert (=> b!6128262 (= e!3735435 tp!1712724)))

(declare-fun tp!1712717 () Bool)

(declare-fun b!6128263 () Bool)

(assert (=> b!6128263 (= e!3735441 (and (inv!83428 (h!70840 zl!343)) e!3735438 tp!1712717))))

(declare-fun b!6128264 () Bool)

(declare-fun res!2540075 () Bool)

(assert (=> b!6128264 (=> res!2540075 e!3735444)))

(declare-fun generalisedConcat!1669 (List!64515) Regex!16072)

(assert (=> b!6128264 (= res!2540075 (not (= r!7292 (generalisedConcat!1669 (exprs!5956 (h!70840 zl!343))))))))

(declare-fun b!6128265 () Bool)

(declare-fun Unit!157446 () Unit!157443)

(assert (=> b!6128265 (= e!3735437 Unit!157446)))

(assert (= (and start!612096 res!2540081) b!6128247))

(assert (= (and b!6128247 res!2540076) b!6128254))

(assert (= (and b!6128254 res!2540072) b!6128242))

(assert (= (and b!6128242 (not res!2540078)) b!6128248))

(assert (= (and b!6128248 (not res!2540074)) b!6128264))

(assert (= (and b!6128264 (not res!2540075)) b!6128258))

(assert (= (and b!6128258 (not res!2540077)) b!6128252))

(assert (= (and b!6128252 (not res!2540083)) b!6128250))

(assert (= (and b!6128250 (not res!2540084)) b!6128255))

(assert (= (and b!6128255 (not res!2540085)) b!6128245))

(assert (= (and b!6128245 (not res!2540080)) b!6128244))

(assert (= (and b!6128244 c!1101549) b!6128249))

(assert (= (and b!6128244 (not c!1101549)) b!6128265))

(assert (= (and b!6128249 (not res!2540073)) b!6128257))

(assert (= (and b!6128244 (not res!2540079)) b!6128243))

(assert (= (and b!6128243 (not res!2540082)) b!6128253))

(assert (= (and start!612096 (is-ElementMatch!16072 r!7292)) b!6128261))

(assert (= (and start!612096 (is-Concat!24917 r!7292)) b!6128259))

(assert (= (and start!612096 (is-Star!16072 r!7292)) b!6128256))

(assert (= (and start!612096 (is-Union!16072 r!7292)) b!6128260))

(assert (= (and start!612096 condSetEmpty!41413) setIsEmpty!41413))

(assert (= (and start!612096 (not condSetEmpty!41413)) setNonEmpty!41413))

(assert (= setNonEmpty!41413 b!6128262))

(assert (= b!6128263 b!6128246))

(assert (= (and start!612096 (is-Cons!64392 zl!343)) b!6128263))

(assert (= (and start!612096 (is-Cons!64393 s!2326)) b!6128251))

(declare-fun m!6972448 () Bool)

(assert (=> b!6128247 m!6972448))

(declare-fun m!6972450 () Bool)

(assert (=> start!612096 m!6972450))

(declare-fun m!6972452 () Bool)

(assert (=> b!6128244 m!6972452))

(declare-fun m!6972454 () Bool)

(assert (=> b!6128244 m!6972454))

(declare-fun m!6972456 () Bool)

(assert (=> b!6128244 m!6972456))

(declare-fun m!6972458 () Bool)

(assert (=> b!6128244 m!6972458))

(declare-fun m!6972460 () Bool)

(assert (=> b!6128244 m!6972460))

(declare-fun m!6972462 () Bool)

(assert (=> b!6128244 m!6972462))

(declare-fun m!6972464 () Bool)

(assert (=> b!6128244 m!6972464))

(declare-fun m!6972466 () Bool)

(assert (=> b!6128248 m!6972466))

(declare-fun m!6972468 () Bool)

(assert (=> b!6128254 m!6972468))

(declare-fun m!6972470 () Bool)

(assert (=> b!6128243 m!6972470))

(declare-fun m!6972472 () Bool)

(assert (=> b!6128243 m!6972472))

(declare-fun m!6972474 () Bool)

(assert (=> setNonEmpty!41413 m!6972474))

(declare-fun m!6972476 () Bool)

(assert (=> b!6128249 m!6972476))

(declare-fun m!6972478 () Bool)

(assert (=> b!6128249 m!6972478))

(declare-fun m!6972480 () Bool)

(assert (=> b!6128249 m!6972480))

(declare-fun m!6972482 () Bool)

(assert (=> b!6128257 m!6972482))

(declare-fun m!6972484 () Bool)

(assert (=> b!6128242 m!6972484))

(declare-fun m!6972486 () Bool)

(assert (=> b!6128242 m!6972486))

(declare-fun m!6972488 () Bool)

(assert (=> b!6128242 m!6972488))

(declare-fun m!6972490 () Bool)

(assert (=> b!6128245 m!6972490))

(declare-fun m!6972492 () Bool)

(assert (=> b!6128252 m!6972492))

(assert (=> b!6128252 m!6972492))

(declare-fun m!6972494 () Bool)

(assert (=> b!6128252 m!6972494))

(declare-fun m!6972496 () Bool)

(assert (=> b!6128263 m!6972496))

(declare-fun m!6972498 () Bool)

(assert (=> b!6128264 m!6972498))

(declare-fun m!6972500 () Bool)

(assert (=> b!6128255 m!6972500))

(declare-fun m!6972502 () Bool)

(assert (=> b!6128255 m!6972502))

(declare-fun m!6972504 () Bool)

(assert (=> b!6128255 m!6972504))

(declare-fun m!6972506 () Bool)

(assert (=> b!6128255 m!6972506))

(assert (=> b!6128255 m!6972500))

(declare-fun m!6972508 () Bool)

(assert (=> b!6128255 m!6972508))

(assert (=> b!6128255 m!6972502))

(declare-fun m!6972510 () Bool)

(assert (=> b!6128255 m!6972510))

(declare-fun m!6972512 () Bool)

(assert (=> b!6128253 m!6972512))

(push 1)

(assert (not setNonEmpty!41413))

(assert tp_is_empty!41397)

(assert (not b!6128246))

(assert (not b!6128249))

(assert (not b!6128247))

(assert (not start!612096))

(assert (not b!6128255))

(assert (not b!6128256))

(assert (not b!6128244))

(assert (not b!6128252))

(assert (not b!6128264))

(assert (not b!6128262))

(assert (not b!6128253))

(assert (not b!6128243))

(assert (not b!6128248))

(assert (not b!6128263))

(assert (not b!6128242))

(assert (not b!6128245))

(assert (not b!6128260))

(assert (not b!6128257))

(assert (not b!6128254))

(assert (not b!6128251))

(assert (not b!6128259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!3735486 () Bool)

(declare-fun d!1920160 () Bool)

(assert (=> d!1920160 (= (matchZipper!2084 (set.union lt!2331618 lt!2331615) (t!377984 s!2326)) e!3735486)))

(declare-fun res!2540142 () Bool)

(assert (=> d!1920160 (=> res!2540142 e!3735486)))

(assert (=> d!1920160 (= res!2540142 (matchZipper!2084 lt!2331618 (t!377984 s!2326)))))

(declare-fun lt!2331657 () Unit!157443)

(declare-fun choose!45525 ((Set Context!10912) (Set Context!10912) List!64517) Unit!157443)

(assert (=> d!1920160 (= lt!2331657 (choose!45525 lt!2331618 lt!2331615 (t!377984 s!2326)))))

(assert (=> d!1920160 (= (lemmaZipperConcatMatchesSameAsBothZippers!903 lt!2331618 lt!2331615 (t!377984 s!2326)) lt!2331657)))

(declare-fun b!6128364 () Bool)

(assert (=> b!6128364 (= e!3735486 (matchZipper!2084 lt!2331615 (t!377984 s!2326)))))

(assert (= (and d!1920160 (not res!2540142)) b!6128364))

(assert (=> d!1920160 m!6972480))

(assert (=> d!1920160 m!6972478))

(declare-fun m!6972580 () Bool)

(assert (=> d!1920160 m!6972580))

(assert (=> b!6128364 m!6972482))

(assert (=> b!6128249 d!1920160))

(declare-fun d!1920162 () Bool)

(declare-fun c!1101560 () Bool)

(declare-fun isEmpty!36334 (List!64517) Bool)

(assert (=> d!1920162 (= c!1101560 (isEmpty!36334 (t!377984 s!2326)))))

(declare-fun e!3735489 () Bool)

(assert (=> d!1920162 (= (matchZipper!2084 lt!2331618 (t!377984 s!2326)) e!3735489)))

(declare-fun b!6128369 () Bool)

(declare-fun nullableZipper!1853 ((Set Context!10912)) Bool)

(assert (=> b!6128369 (= e!3735489 (nullableZipper!1853 lt!2331618))))

(declare-fun b!6128370 () Bool)

(declare-fun derivationStepZipper!2045 ((Set Context!10912) C!32414) (Set Context!10912))

(declare-fun head!12665 (List!64517) C!32414)

(declare-fun tail!11750 (List!64517) List!64517)

(assert (=> b!6128370 (= e!3735489 (matchZipper!2084 (derivationStepZipper!2045 lt!2331618 (head!12665 (t!377984 s!2326))) (tail!11750 (t!377984 s!2326))))))

(assert (= (and d!1920162 c!1101560) b!6128369))

(assert (= (and d!1920162 (not c!1101560)) b!6128370))

(declare-fun m!6972582 () Bool)

(assert (=> d!1920162 m!6972582))

(declare-fun m!6972584 () Bool)

(assert (=> b!6128369 m!6972584))

(declare-fun m!6972586 () Bool)

(assert (=> b!6128370 m!6972586))

(assert (=> b!6128370 m!6972586))

(declare-fun m!6972588 () Bool)

(assert (=> b!6128370 m!6972588))

(declare-fun m!6972590 () Bool)

(assert (=> b!6128370 m!6972590))

(assert (=> b!6128370 m!6972588))

(assert (=> b!6128370 m!6972590))

(declare-fun m!6972592 () Bool)

(assert (=> b!6128370 m!6972592))

(assert (=> b!6128249 d!1920162))

(declare-fun d!1920164 () Bool)

(declare-fun c!1101561 () Bool)

(assert (=> d!1920164 (= c!1101561 (isEmpty!36334 (t!377984 s!2326)))))

(declare-fun e!3735490 () Bool)

(assert (=> d!1920164 (= (matchZipper!2084 (set.union lt!2331618 lt!2331615) (t!377984 s!2326)) e!3735490)))

(declare-fun b!6128371 () Bool)

(assert (=> b!6128371 (= e!3735490 (nullableZipper!1853 (set.union lt!2331618 lt!2331615)))))

(declare-fun b!6128372 () Bool)

(assert (=> b!6128372 (= e!3735490 (matchZipper!2084 (derivationStepZipper!2045 (set.union lt!2331618 lt!2331615) (head!12665 (t!377984 s!2326))) (tail!11750 (t!377984 s!2326))))))

(assert (= (and d!1920164 c!1101561) b!6128371))

(assert (= (and d!1920164 (not c!1101561)) b!6128372))

(assert (=> d!1920164 m!6972582))

(declare-fun m!6972594 () Bool)

(assert (=> b!6128371 m!6972594))

(assert (=> b!6128372 m!6972586))

(assert (=> b!6128372 m!6972586))

(declare-fun m!6972596 () Bool)

(assert (=> b!6128372 m!6972596))

(assert (=> b!6128372 m!6972590))

(assert (=> b!6128372 m!6972596))

(assert (=> b!6128372 m!6972590))

(declare-fun m!6972598 () Bool)

(assert (=> b!6128372 m!6972598))

(assert (=> b!6128249 d!1920164))

(declare-fun d!1920166 () Bool)

(declare-fun e!3735493 () Bool)

(assert (=> d!1920166 e!3735493))

(declare-fun res!2540145 () Bool)

(assert (=> d!1920166 (=> (not res!2540145) (not e!3735493))))

(declare-fun lt!2331660 () List!64516)

(declare-fun noDuplicate!1919 (List!64516) Bool)

(assert (=> d!1920166 (= res!2540145 (noDuplicate!1919 lt!2331660))))

(declare-fun choose!45526 ((Set Context!10912)) List!64516)

(assert (=> d!1920166 (= lt!2331660 (choose!45526 z!1189))))

(assert (=> d!1920166 (= (toList!9856 z!1189) lt!2331660)))

(declare-fun b!6128375 () Bool)

(declare-fun content!11968 (List!64516) (Set Context!10912))

(assert (=> b!6128375 (= e!3735493 (= (content!11968 lt!2331660) z!1189))))

(assert (= (and d!1920166 res!2540145) b!6128375))

(declare-fun m!6972600 () Bool)

(assert (=> d!1920166 m!6972600))

(declare-fun m!6972602 () Bool)

(assert (=> d!1920166 m!6972602))

(declare-fun m!6972604 () Bool)

(assert (=> b!6128375 m!6972604))

(assert (=> b!6128247 d!1920166))

(declare-fun d!1920168 () Bool)

(assert (=> d!1920168 (= (isEmpty!36331 (t!377983 zl!343)) (is-Nil!64392 (t!377983 zl!343)))))

(assert (=> b!6128248 d!1920168))

(declare-fun d!1920170 () Bool)

(declare-fun c!1101562 () Bool)

(assert (=> d!1920170 (= c!1101562 (isEmpty!36334 (t!377984 s!2326)))))

(declare-fun e!3735494 () Bool)

(assert (=> d!1920170 (= (matchZipper!2084 lt!2331615 (t!377984 s!2326)) e!3735494)))

(declare-fun b!6128376 () Bool)

(assert (=> b!6128376 (= e!3735494 (nullableZipper!1853 lt!2331615))))

(declare-fun b!6128377 () Bool)

(assert (=> b!6128377 (= e!3735494 (matchZipper!2084 (derivationStepZipper!2045 lt!2331615 (head!12665 (t!377984 s!2326))) (tail!11750 (t!377984 s!2326))))))

(assert (= (and d!1920170 c!1101562) b!6128376))

(assert (= (and d!1920170 (not c!1101562)) b!6128377))

(assert (=> d!1920170 m!6972582))

(declare-fun m!6972606 () Bool)

(assert (=> b!6128376 m!6972606))

(assert (=> b!6128377 m!6972586))

(assert (=> b!6128377 m!6972586))

(declare-fun m!6972608 () Bool)

(assert (=> b!6128377 m!6972608))

(assert (=> b!6128377 m!6972590))

(assert (=> b!6128377 m!6972608))

(assert (=> b!6128377 m!6972590))

(declare-fun m!6972610 () Bool)

(assert (=> b!6128377 m!6972610))

(assert (=> b!6128257 d!1920170))

(declare-fun d!1920172 () Bool)

(declare-fun lambda!333822 () Int)

(declare-fun forall!15193 (List!64515 Int) Bool)

(assert (=> d!1920172 (= (inv!83428 setElem!41413) (forall!15193 (exprs!5956 setElem!41413) lambda!333822))))

(declare-fun bs!1520365 () Bool)

(assert (= bs!1520365 d!1920172))

(declare-fun m!6972612 () Bool)

(assert (=> bs!1520365 m!6972612))

(assert (=> setNonEmpty!41413 d!1920172))

(declare-fun d!1920174 () Bool)

(declare-fun choose!45527 ((Set Context!10912) Int) (Set Context!10912))

(assert (=> d!1920174 (= (flatMap!1577 z!1189 lambda!333808) (choose!45527 z!1189 lambda!333808))))

(declare-fun bs!1520366 () Bool)

(assert (= bs!1520366 d!1920174))

(declare-fun m!6972614 () Bool)

(assert (=> bs!1520366 m!6972614))

(assert (=> b!6128244 d!1920174))

(declare-fun d!1920176 () Bool)

(declare-fun nullableFct!2029 (Regex!16072) Bool)

(assert (=> d!1920176 (= (nullable!6065 (h!70839 (exprs!5956 (h!70840 zl!343)))) (nullableFct!2029 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun bs!1520367 () Bool)

(assert (= bs!1520367 d!1920176))

(declare-fun m!6972616 () Bool)

(assert (=> bs!1520367 m!6972616))

(assert (=> b!6128244 d!1920176))

(declare-fun d!1920178 () Bool)

(declare-fun dynLambda!25365 (Int Context!10912) (Set Context!10912))

(assert (=> d!1920178 (= (flatMap!1577 z!1189 lambda!333808) (dynLambda!25365 lambda!333808 (h!70840 zl!343)))))

(declare-fun lt!2331663 () Unit!157443)

(declare-fun choose!45528 ((Set Context!10912) Context!10912 Int) Unit!157443)

(assert (=> d!1920178 (= lt!2331663 (choose!45528 z!1189 (h!70840 zl!343) lambda!333808))))

(assert (=> d!1920178 (= z!1189 (set.insert (h!70840 zl!343) (as set.empty (Set Context!10912))))))

(assert (=> d!1920178 (= (lemmaFlatMapOnSingletonSet!1103 z!1189 (h!70840 zl!343) lambda!333808) lt!2331663)))

(declare-fun b_lambda!233313 () Bool)

(assert (=> (not b_lambda!233313) (not d!1920178)))

(declare-fun bs!1520368 () Bool)

(assert (= bs!1520368 d!1920178))

(assert (=> bs!1520368 m!6972462))

(declare-fun m!6972618 () Bool)

(assert (=> bs!1520368 m!6972618))

(declare-fun m!6972620 () Bool)

(assert (=> bs!1520368 m!6972620))

(declare-fun m!6972622 () Bool)

(assert (=> bs!1520368 m!6972622))

(assert (=> b!6128244 d!1920178))

(declare-fun call!508049 () (Set Context!10912))

(declare-fun e!3735501 () (Set Context!10912))

(declare-fun b!6128388 () Bool)

(assert (=> b!6128388 (= e!3735501 (set.union call!508049 (derivationStepZipperUp!1246 (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343)))) (h!70841 s!2326))))))

(declare-fun b!6128389 () Bool)

(declare-fun e!3735502 () (Set Context!10912))

(assert (=> b!6128389 (= e!3735502 call!508049)))

(declare-fun b!6128390 () Bool)

(assert (=> b!6128390 (= e!3735502 (as set.empty (Set Context!10912)))))

(declare-fun bm!508044 () Bool)

(assert (=> bm!508044 (= call!508049 (derivationStepZipperDown!1320 (h!70839 (exprs!5956 (h!70840 zl!343))) (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343)))) (h!70841 s!2326)))))

(declare-fun b!6128391 () Bool)

(assert (=> b!6128391 (= e!3735501 e!3735502)))

(declare-fun c!1101568 () Bool)

(assert (=> b!6128391 (= c!1101568 (is-Cons!64391 (exprs!5956 (h!70840 zl!343))))))

(declare-fun d!1920180 () Bool)

(declare-fun c!1101567 () Bool)

(declare-fun e!3735503 () Bool)

(assert (=> d!1920180 (= c!1101567 e!3735503)))

(declare-fun res!2540148 () Bool)

(assert (=> d!1920180 (=> (not res!2540148) (not e!3735503))))

(assert (=> d!1920180 (= res!2540148 (is-Cons!64391 (exprs!5956 (h!70840 zl!343))))))

(assert (=> d!1920180 (= (derivationStepZipperUp!1246 (h!70840 zl!343) (h!70841 s!2326)) e!3735501)))

(declare-fun b!6128392 () Bool)

(assert (=> b!6128392 (= e!3735503 (nullable!6065 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(assert (= (and d!1920180 res!2540148) b!6128392))

(assert (= (and d!1920180 c!1101567) b!6128388))

(assert (= (and d!1920180 (not c!1101567)) b!6128391))

(assert (= (and b!6128391 c!1101568) b!6128389))

(assert (= (and b!6128391 (not c!1101568)) b!6128390))

(assert (= (or b!6128388 b!6128389) bm!508044))

(declare-fun m!6972624 () Bool)

(assert (=> b!6128388 m!6972624))

(declare-fun m!6972626 () Bool)

(assert (=> bm!508044 m!6972626))

(assert (=> b!6128392 m!6972460))

(assert (=> b!6128244 d!1920180))

(declare-fun bm!508057 () Bool)

(declare-fun call!508065 () (Set Context!10912))

(declare-fun call!508067 () (Set Context!10912))

(assert (=> bm!508057 (= call!508065 call!508067)))

(declare-fun c!1101582 () Bool)

(declare-fun call!508062 () List!64515)

(declare-fun c!1101580 () Bool)

(declare-fun bm!508058 () Bool)

(declare-fun $colon$colon!1949 (List!64515 Regex!16072) List!64515)

(assert (=> bm!508058 (= call!508062 ($colon$colon!1949 (exprs!5956 lt!2331616) (ite (or c!1101582 c!1101580) (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (h!70839 (exprs!5956 (h!70840 zl!343))))))))

(declare-fun b!6128415 () Bool)

(declare-fun e!3735520 () (Set Context!10912))

(declare-fun call!508063 () (Set Context!10912))

(assert (=> b!6128415 (= e!3735520 (set.union call!508063 call!508065))))

(declare-fun c!1101579 () Bool)

(declare-fun bm!508059 () Bool)

(assert (=> bm!508059 (= call!508063 (derivationStepZipperDown!1320 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343))))) (ite c!1101579 lt!2331616 (Context!10913 call!508062)) (h!70841 s!2326)))))

(declare-fun b!6128417 () Bool)

(declare-fun e!3735516 () (Set Context!10912))

(assert (=> b!6128417 (= e!3735516 (as set.empty (Set Context!10912)))))

(declare-fun call!508064 () List!64515)

(declare-fun bm!508060 () Bool)

(assert (=> bm!508060 (= call!508067 (derivationStepZipperDown!1320 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343))))))) (ite (or c!1101579 c!1101582) lt!2331616 (Context!10913 call!508064)) (h!70841 s!2326)))))

(declare-fun b!6128418 () Bool)

(declare-fun call!508066 () (Set Context!10912))

(assert (=> b!6128418 (= e!3735516 call!508066)))

(declare-fun bm!508061 () Bool)

(assert (=> bm!508061 (= call!508064 call!508062)))

(declare-fun b!6128419 () Bool)

(declare-fun e!3735517 () Bool)

(assert (=> b!6128419 (= c!1101582 e!3735517)))

(declare-fun res!2540151 () Bool)

(assert (=> b!6128419 (=> (not res!2540151) (not e!3735517))))

(assert (=> b!6128419 (= res!2540151 (is-Concat!24917 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun e!3735521 () (Set Context!10912))

(assert (=> b!6128419 (= e!3735521 e!3735520)))

(declare-fun b!6128420 () Bool)

(declare-fun e!3735519 () (Set Context!10912))

(assert (=> b!6128420 (= e!3735519 (set.insert lt!2331616 (as set.empty (Set Context!10912))))))

(declare-fun b!6128421 () Bool)

(declare-fun c!1101583 () Bool)

(assert (=> b!6128421 (= c!1101583 (is-Star!16072 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun e!3735518 () (Set Context!10912))

(assert (=> b!6128421 (= e!3735518 e!3735516)))

(declare-fun d!1920182 () Bool)

(declare-fun c!1101581 () Bool)

(assert (=> d!1920182 (= c!1101581 (and (is-ElementMatch!16072 (h!70839 (exprs!5956 (h!70840 zl!343)))) (= (c!1101550 (h!70839 (exprs!5956 (h!70840 zl!343)))) (h!70841 s!2326))))))

(assert (=> d!1920182 (= (derivationStepZipperDown!1320 (h!70839 (exprs!5956 (h!70840 zl!343))) lt!2331616 (h!70841 s!2326)) e!3735519)))

(declare-fun b!6128416 () Bool)

(assert (=> b!6128416 (= e!3735517 (nullable!6065 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343))))))))

(declare-fun b!6128422 () Bool)

(assert (=> b!6128422 (= e!3735520 e!3735518)))

(assert (=> b!6128422 (= c!1101580 (is-Concat!24917 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun b!6128423 () Bool)

(assert (=> b!6128423 (= e!3735518 call!508066)))

(declare-fun bm!508062 () Bool)

(assert (=> bm!508062 (= call!508066 call!508065)))

(declare-fun b!6128424 () Bool)

(assert (=> b!6128424 (= e!3735521 (set.union call!508063 call!508067))))

(declare-fun b!6128425 () Bool)

(assert (=> b!6128425 (= e!3735519 e!3735521)))

(assert (=> b!6128425 (= c!1101579 (is-Union!16072 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(assert (= (and d!1920182 c!1101581) b!6128420))

(assert (= (and d!1920182 (not c!1101581)) b!6128425))

(assert (= (and b!6128425 c!1101579) b!6128424))

(assert (= (and b!6128425 (not c!1101579)) b!6128419))

(assert (= (and b!6128419 res!2540151) b!6128416))

(assert (= (and b!6128419 c!1101582) b!6128415))

(assert (= (and b!6128419 (not c!1101582)) b!6128422))

(assert (= (and b!6128422 c!1101580) b!6128423))

(assert (= (and b!6128422 (not c!1101580)) b!6128421))

(assert (= (and b!6128421 c!1101583) b!6128418))

(assert (= (and b!6128421 (not c!1101583)) b!6128417))

(assert (= (or b!6128423 b!6128418) bm!508061))

(assert (= (or b!6128423 b!6128418) bm!508062))

(assert (= (or b!6128415 bm!508061) bm!508058))

(assert (= (or b!6128415 bm!508062) bm!508057))

(assert (= (or b!6128424 bm!508057) bm!508060))

(assert (= (or b!6128424 b!6128415) bm!508059))

(declare-fun m!6972628 () Bool)

(assert (=> bm!508058 m!6972628))

(declare-fun m!6972630 () Bool)

(assert (=> bm!508059 m!6972630))

(declare-fun m!6972632 () Bool)

(assert (=> b!6128420 m!6972632))

(declare-fun m!6972634 () Bool)

(assert (=> bm!508060 m!6972634))

(declare-fun m!6972636 () Bool)

(assert (=> b!6128416 m!6972636))

(assert (=> b!6128244 d!1920182))

(declare-fun b!6128426 () Bool)

(declare-fun call!508068 () (Set Context!10912))

(declare-fun e!3735522 () (Set Context!10912))

(assert (=> b!6128426 (= e!3735522 (set.union call!508068 (derivationStepZipperUp!1246 (Context!10913 (t!377982 (exprs!5956 lt!2331616))) (h!70841 s!2326))))))

(declare-fun b!6128427 () Bool)

(declare-fun e!3735523 () (Set Context!10912))

(assert (=> b!6128427 (= e!3735523 call!508068)))

(declare-fun b!6128428 () Bool)

(assert (=> b!6128428 (= e!3735523 (as set.empty (Set Context!10912)))))

(declare-fun bm!508063 () Bool)

(assert (=> bm!508063 (= call!508068 (derivationStepZipperDown!1320 (h!70839 (exprs!5956 lt!2331616)) (Context!10913 (t!377982 (exprs!5956 lt!2331616))) (h!70841 s!2326)))))

(declare-fun b!6128429 () Bool)

(assert (=> b!6128429 (= e!3735522 e!3735523)))

(declare-fun c!1101585 () Bool)

(assert (=> b!6128429 (= c!1101585 (is-Cons!64391 (exprs!5956 lt!2331616)))))

(declare-fun d!1920184 () Bool)

(declare-fun c!1101584 () Bool)

(declare-fun e!3735524 () Bool)

(assert (=> d!1920184 (= c!1101584 e!3735524)))

(declare-fun res!2540152 () Bool)

(assert (=> d!1920184 (=> (not res!2540152) (not e!3735524))))

(assert (=> d!1920184 (= res!2540152 (is-Cons!64391 (exprs!5956 lt!2331616)))))

(assert (=> d!1920184 (= (derivationStepZipperUp!1246 lt!2331616 (h!70841 s!2326)) e!3735522)))

(declare-fun b!6128430 () Bool)

(assert (=> b!6128430 (= e!3735524 (nullable!6065 (h!70839 (exprs!5956 lt!2331616))))))

(assert (= (and d!1920184 res!2540152) b!6128430))

(assert (= (and d!1920184 c!1101584) b!6128426))

(assert (= (and d!1920184 (not c!1101584)) b!6128429))

(assert (= (and b!6128429 c!1101585) b!6128427))

(assert (= (and b!6128429 (not c!1101585)) b!6128428))

(assert (= (or b!6128426 b!6128427) bm!508063))

(declare-fun m!6972638 () Bool)

(assert (=> b!6128426 m!6972638))

(declare-fun m!6972640 () Bool)

(assert (=> bm!508063 m!6972640))

(declare-fun m!6972642 () Bool)

(assert (=> b!6128430 m!6972642))

(assert (=> b!6128244 d!1920184))

(declare-fun e!3735525 () (Set Context!10912))

(declare-fun b!6128431 () Bool)

(declare-fun call!508069 () (Set Context!10912))

(assert (=> b!6128431 (= e!3735525 (set.union call!508069 (derivationStepZipperUp!1246 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (h!70841 s!2326))))))

(declare-fun b!6128432 () Bool)

(declare-fun e!3735526 () (Set Context!10912))

(assert (=> b!6128432 (= e!3735526 call!508069)))

(declare-fun b!6128433 () Bool)

(assert (=> b!6128433 (= e!3735526 (as set.empty (Set Context!10912)))))

(declare-fun bm!508064 () Bool)

(assert (=> bm!508064 (= call!508069 (derivationStepZipperDown!1320 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))) (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (h!70841 s!2326)))))

(declare-fun b!6128434 () Bool)

(assert (=> b!6128434 (= e!3735525 e!3735526)))

(declare-fun c!1101587 () Bool)

(assert (=> b!6128434 (= c!1101587 (is-Cons!64391 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))))))

(declare-fun d!1920186 () Bool)

(declare-fun c!1101586 () Bool)

(declare-fun e!3735527 () Bool)

(assert (=> d!1920186 (= c!1101586 e!3735527)))

(declare-fun res!2540153 () Bool)

(assert (=> d!1920186 (=> (not res!2540153) (not e!3735527))))

(assert (=> d!1920186 (= res!2540153 (is-Cons!64391 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))))))

(assert (=> d!1920186 (= (derivationStepZipperUp!1246 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))) (h!70841 s!2326)) e!3735525)))

(declare-fun b!6128435 () Bool)

(assert (=> b!6128435 (= e!3735527 (nullable!6065 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))))))

(assert (= (and d!1920186 res!2540153) b!6128435))

(assert (= (and d!1920186 c!1101586) b!6128431))

(assert (= (and d!1920186 (not c!1101586)) b!6128434))

(assert (= (and b!6128434 c!1101587) b!6128432))

(assert (= (and b!6128434 (not c!1101587)) b!6128433))

(assert (= (or b!6128431 b!6128432) bm!508064))

(declare-fun m!6972644 () Bool)

(assert (=> b!6128431 m!6972644))

(declare-fun m!6972646 () Bool)

(assert (=> bm!508064 m!6972646))

(declare-fun m!6972648 () Bool)

(assert (=> b!6128435 m!6972648))

(assert (=> b!6128244 d!1920186))

(declare-fun bs!1520369 () Bool)

(declare-fun d!1920188 () Bool)

(assert (= bs!1520369 (and d!1920188 d!1920172)))

(declare-fun lambda!333825 () Int)

(assert (=> bs!1520369 (= lambda!333825 lambda!333822)))

(declare-fun b!6128478 () Bool)

(declare-fun e!3735556 () Bool)

(assert (=> b!6128478 (= e!3735556 (isEmpty!36330 (t!377982 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun e!3735554 () Bool)

(assert (=> d!1920188 e!3735554))

(declare-fun res!2540160 () Bool)

(assert (=> d!1920188 (=> (not res!2540160) (not e!3735554))))

(declare-fun lt!2331666 () Regex!16072)

(assert (=> d!1920188 (= res!2540160 (validRegex!7808 lt!2331666))))

(declare-fun e!3735555 () Regex!16072)

(assert (=> d!1920188 (= lt!2331666 e!3735555)))

(declare-fun c!1101608 () Bool)

(assert (=> d!1920188 (= c!1101608 e!3735556)))

(declare-fun res!2540161 () Bool)

(assert (=> d!1920188 (=> (not res!2540161) (not e!3735556))))

(assert (=> d!1920188 (= res!2540161 (is-Cons!64391 (exprs!5956 (h!70840 zl!343))))))

(assert (=> d!1920188 (forall!15193 (exprs!5956 (h!70840 zl!343)) lambda!333825)))

(assert (=> d!1920188 (= (generalisedConcat!1669 (exprs!5956 (h!70840 zl!343))) lt!2331666)))

(declare-fun b!6128479 () Bool)

(declare-fun e!3735552 () Regex!16072)

(assert (=> b!6128479 (= e!3735552 (Concat!24917 (h!70839 (exprs!5956 (h!70840 zl!343))) (generalisedConcat!1669 (t!377982 (exprs!5956 (h!70840 zl!343))))))))

(declare-fun b!6128480 () Bool)

(assert (=> b!6128480 (= e!3735552 EmptyExpr!16072)))

(declare-fun b!6128481 () Bool)

(declare-fun e!3735553 () Bool)

(declare-fun head!12666 (List!64515) Regex!16072)

(assert (=> b!6128481 (= e!3735553 (= lt!2331666 (head!12666 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun b!6128482 () Bool)

(declare-fun isConcat!1012 (Regex!16072) Bool)

(assert (=> b!6128482 (= e!3735553 (isConcat!1012 lt!2331666))))

(declare-fun b!6128483 () Bool)

(declare-fun e!3735557 () Bool)

(assert (=> b!6128483 (= e!3735557 e!3735553)))

(declare-fun c!1101606 () Bool)

(declare-fun tail!11751 (List!64515) List!64515)

(assert (=> b!6128483 (= c!1101606 (isEmpty!36330 (tail!11751 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun b!6128484 () Bool)

(declare-fun isEmptyExpr!1489 (Regex!16072) Bool)

(assert (=> b!6128484 (= e!3735557 (isEmptyExpr!1489 lt!2331666))))

(declare-fun b!6128485 () Bool)

(assert (=> b!6128485 (= e!3735554 e!3735557)))

(declare-fun c!1101607 () Bool)

(assert (=> b!6128485 (= c!1101607 (isEmpty!36330 (exprs!5956 (h!70840 zl!343))))))

(declare-fun b!6128486 () Bool)

(assert (=> b!6128486 (= e!3735555 (h!70839 (exprs!5956 (h!70840 zl!343))))))

(declare-fun b!6128487 () Bool)

(assert (=> b!6128487 (= e!3735555 e!3735552)))

(declare-fun c!1101609 () Bool)

(assert (=> b!6128487 (= c!1101609 (is-Cons!64391 (exprs!5956 (h!70840 zl!343))))))

(assert (= (and d!1920188 res!2540161) b!6128478))

(assert (= (and d!1920188 c!1101608) b!6128486))

(assert (= (and d!1920188 (not c!1101608)) b!6128487))

(assert (= (and b!6128487 c!1101609) b!6128479))

(assert (= (and b!6128487 (not c!1101609)) b!6128480))

(assert (= (and d!1920188 res!2540160) b!6128485))

(assert (= (and b!6128485 c!1101607) b!6128484))

(assert (= (and b!6128485 (not c!1101607)) b!6128483))

(assert (= (and b!6128483 c!1101606) b!6128481))

(assert (= (and b!6128483 (not c!1101606)) b!6128482))

(declare-fun m!6972650 () Bool)

(assert (=> b!6128485 m!6972650))

(declare-fun m!6972652 () Bool)

(assert (=> b!6128484 m!6972652))

(declare-fun m!6972654 () Bool)

(assert (=> b!6128479 m!6972654))

(declare-fun m!6972656 () Bool)

(assert (=> b!6128482 m!6972656))

(assert (=> b!6128478 m!6972490))

(declare-fun m!6972658 () Bool)

(assert (=> b!6128483 m!6972658))

(assert (=> b!6128483 m!6972658))

(declare-fun m!6972660 () Bool)

(assert (=> b!6128483 m!6972660))

(declare-fun m!6972662 () Bool)

(assert (=> b!6128481 m!6972662))

(declare-fun m!6972664 () Bool)

(assert (=> d!1920188 m!6972664))

(declare-fun m!6972666 () Bool)

(assert (=> d!1920188 m!6972666))

(assert (=> b!6128264 d!1920188))

(declare-fun d!1920192 () Bool)

(declare-fun lt!2331669 () Regex!16072)

(assert (=> d!1920192 (validRegex!7808 lt!2331669)))

(assert (=> d!1920192 (= lt!2331669 (generalisedUnion!1916 (unfocusZipperList!1493 zl!343)))))

(assert (=> d!1920192 (= (unfocusZipper!1814 zl!343) lt!2331669)))

(declare-fun bs!1520370 () Bool)

(assert (= bs!1520370 d!1920192))

(declare-fun m!6972668 () Bool)

(assert (=> bs!1520370 m!6972668))

(assert (=> bs!1520370 m!6972492))

(assert (=> bs!1520370 m!6972492))

(assert (=> bs!1520370 m!6972494))

(assert (=> b!6128254 d!1920192))

(declare-fun b!6128534 () Bool)

(declare-fun res!2540177 () Bool)

(declare-fun e!3735583 () Bool)

(assert (=> b!6128534 (=> (not res!2540177) (not e!3735583))))

(declare-fun lt!2331679 () Option!15963)

(declare-fun get!22210 (Option!15963) tuple2!66102)

(assert (=> b!6128534 (= res!2540177 (matchR!8255 (regTwo!32656 r!7292) (_2!36354 (get!22210 lt!2331679))))))

(declare-fun b!6128535 () Bool)

(declare-fun e!3735585 () Bool)

(assert (=> b!6128535 (= e!3735585 (matchR!8255 (regTwo!32656 r!7292) s!2326))))

(declare-fun b!6128536 () Bool)

(declare-fun ++!14158 (List!64517 List!64517) List!64517)

(assert (=> b!6128536 (= e!3735583 (= (++!14158 (_1!36354 (get!22210 lt!2331679)) (_2!36354 (get!22210 lt!2331679))) s!2326))))

(declare-fun d!1920194 () Bool)

(declare-fun e!3735586 () Bool)

(assert (=> d!1920194 e!3735586))

(declare-fun res!2540175 () Bool)

(assert (=> d!1920194 (=> res!2540175 e!3735586)))

(assert (=> d!1920194 (= res!2540175 e!3735583)))

(declare-fun res!2540176 () Bool)

(assert (=> d!1920194 (=> (not res!2540176) (not e!3735583))))

(assert (=> d!1920194 (= res!2540176 (isDefined!12666 lt!2331679))))

(declare-fun e!3735587 () Option!15963)

(assert (=> d!1920194 (= lt!2331679 e!3735587)))

(declare-fun c!1101627 () Bool)

(assert (=> d!1920194 (= c!1101627 e!3735585)))

(declare-fun res!2540174 () Bool)

(assert (=> d!1920194 (=> (not res!2540174) (not e!3735585))))

(assert (=> d!1920194 (= res!2540174 (matchR!8255 (regOne!32656 r!7292) Nil!64393))))

(assert (=> d!1920194 (validRegex!7808 (regOne!32656 r!7292))))

(assert (=> d!1920194 (= (findConcatSeparation!2377 (regOne!32656 r!7292) (regTwo!32656 r!7292) Nil!64393 s!2326 s!2326) lt!2331679)))

(declare-fun b!6128537 () Bool)

(declare-fun lt!2331681 () Unit!157443)

(declare-fun lt!2331680 () Unit!157443)

(assert (=> b!6128537 (= lt!2331681 lt!2331680)))

(assert (=> b!6128537 (= (++!14158 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393)) (t!377984 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2253 (List!64517 C!32414 List!64517 List!64517) Unit!157443)

(assert (=> b!6128537 (= lt!2331680 (lemmaMoveElementToOtherListKeepsConcatEq!2253 Nil!64393 (h!70841 s!2326) (t!377984 s!2326) s!2326))))

(declare-fun e!3735584 () Option!15963)

(assert (=> b!6128537 (= e!3735584 (findConcatSeparation!2377 (regOne!32656 r!7292) (regTwo!32656 r!7292) (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393)) (t!377984 s!2326) s!2326))))

(declare-fun b!6128538 () Bool)

(declare-fun res!2540178 () Bool)

(assert (=> b!6128538 (=> (not res!2540178) (not e!3735583))))

(assert (=> b!6128538 (= res!2540178 (matchR!8255 (regOne!32656 r!7292) (_1!36354 (get!22210 lt!2331679))))))

(declare-fun b!6128539 () Bool)

(assert (=> b!6128539 (= e!3735584 None!15962)))

(declare-fun b!6128540 () Bool)

(assert (=> b!6128540 (= e!3735586 (not (isDefined!12666 lt!2331679)))))

(declare-fun b!6128541 () Bool)

(assert (=> b!6128541 (= e!3735587 e!3735584)))

(declare-fun c!1101628 () Bool)

(assert (=> b!6128541 (= c!1101628 (is-Nil!64393 s!2326))))

(declare-fun b!6128542 () Bool)

(assert (=> b!6128542 (= e!3735587 (Some!15962 (tuple2!66103 Nil!64393 s!2326)))))

(assert (= (and d!1920194 res!2540174) b!6128535))

(assert (= (and d!1920194 c!1101627) b!6128542))

(assert (= (and d!1920194 (not c!1101627)) b!6128541))

(assert (= (and b!6128541 c!1101628) b!6128539))

(assert (= (and b!6128541 (not c!1101628)) b!6128537))

(assert (= (and d!1920194 res!2540176) b!6128538))

(assert (= (and b!6128538 res!2540178) b!6128534))

(assert (= (and b!6128534 res!2540177) b!6128536))

(assert (= (and d!1920194 (not res!2540175)) b!6128540))

(declare-fun m!6972704 () Bool)

(assert (=> b!6128537 m!6972704))

(assert (=> b!6128537 m!6972704))

(declare-fun m!6972706 () Bool)

(assert (=> b!6128537 m!6972706))

(declare-fun m!6972708 () Bool)

(assert (=> b!6128537 m!6972708))

(assert (=> b!6128537 m!6972704))

(declare-fun m!6972710 () Bool)

(assert (=> b!6128537 m!6972710))

(declare-fun m!6972712 () Bool)

(assert (=> b!6128534 m!6972712))

(declare-fun m!6972714 () Bool)

(assert (=> b!6128534 m!6972714))

(assert (=> b!6128538 m!6972712))

(declare-fun m!6972716 () Bool)

(assert (=> b!6128538 m!6972716))

(declare-fun m!6972718 () Bool)

(assert (=> b!6128540 m!6972718))

(assert (=> d!1920194 m!6972718))

(declare-fun m!6972720 () Bool)

(assert (=> d!1920194 m!6972720))

(declare-fun m!6972722 () Bool)

(assert (=> d!1920194 m!6972722))

(declare-fun m!6972724 () Bool)

(assert (=> b!6128535 m!6972724))

(assert (=> b!6128536 m!6972712))

(declare-fun m!6972726 () Bool)

(assert (=> b!6128536 m!6972726))

(assert (=> b!6128255 d!1920194))

(declare-fun d!1920208 () Bool)

(declare-fun choose!45529 (Int) Bool)

(assert (=> d!1920208 (= (Exists!3142 lambda!333807) (choose!45529 lambda!333807))))

(declare-fun bs!1520373 () Bool)

(assert (= bs!1520373 d!1920208))

(declare-fun m!6972728 () Bool)

(assert (=> bs!1520373 m!6972728))

(assert (=> b!6128255 d!1920208))

(declare-fun d!1920210 () Bool)

(assert (=> d!1920210 (= (Exists!3142 lambda!333806) (choose!45529 lambda!333806))))

(declare-fun bs!1520374 () Bool)

(assert (= bs!1520374 d!1920210))

(declare-fun m!6972730 () Bool)

(assert (=> bs!1520374 m!6972730))

(assert (=> b!6128255 d!1920210))

(declare-fun bs!1520375 () Bool)

(declare-fun d!1920212 () Bool)

(assert (= bs!1520375 (and d!1920212 b!6128255)))

(declare-fun lambda!333831 () Int)

(assert (=> bs!1520375 (= lambda!333831 lambda!333806)))

(assert (=> bs!1520375 (not (= lambda!333831 lambda!333807))))

(assert (=> d!1920212 true))

(assert (=> d!1920212 true))

(assert (=> d!1920212 true))

(assert (=> d!1920212 (= (isDefined!12666 (findConcatSeparation!2377 (regOne!32656 r!7292) (regTwo!32656 r!7292) Nil!64393 s!2326 s!2326)) (Exists!3142 lambda!333831))))

(declare-fun lt!2331687 () Unit!157443)

(declare-fun choose!45530 (Regex!16072 Regex!16072 List!64517) Unit!157443)

(assert (=> d!1920212 (= lt!2331687 (choose!45530 (regOne!32656 r!7292) (regTwo!32656 r!7292) s!2326))))

(assert (=> d!1920212 (validRegex!7808 (regOne!32656 r!7292))))

(assert (=> d!1920212 (= (lemmaFindConcatSeparationEquivalentToExists!2141 (regOne!32656 r!7292) (regTwo!32656 r!7292) s!2326) lt!2331687)))

(declare-fun bs!1520376 () Bool)

(assert (= bs!1520376 d!1920212))

(declare-fun m!6972746 () Bool)

(assert (=> bs!1520376 m!6972746))

(assert (=> bs!1520376 m!6972502))

(assert (=> bs!1520376 m!6972504))

(assert (=> bs!1520376 m!6972722))

(declare-fun m!6972748 () Bool)

(assert (=> bs!1520376 m!6972748))

(assert (=> bs!1520376 m!6972502))

(assert (=> b!6128255 d!1920212))

(declare-fun bs!1520377 () Bool)

(declare-fun d!1920220 () Bool)

(assert (= bs!1520377 (and d!1920220 b!6128255)))

(declare-fun lambda!333836 () Int)

(assert (=> bs!1520377 (= lambda!333836 lambda!333806)))

(assert (=> bs!1520377 (not (= lambda!333836 lambda!333807))))

(declare-fun bs!1520378 () Bool)

(assert (= bs!1520378 (and d!1920220 d!1920212)))

(assert (=> bs!1520378 (= lambda!333836 lambda!333831)))

(assert (=> d!1920220 true))

(assert (=> d!1920220 true))

(assert (=> d!1920220 true))

(declare-fun lambda!333837 () Int)

(assert (=> bs!1520377 (not (= lambda!333837 lambda!333806))))

(assert (=> bs!1520377 (= lambda!333837 lambda!333807)))

(assert (=> bs!1520378 (not (= lambda!333837 lambda!333831))))

(declare-fun bs!1520379 () Bool)

(assert (= bs!1520379 d!1920220))

(assert (=> bs!1520379 (not (= lambda!333837 lambda!333836))))

(assert (=> d!1920220 true))

(assert (=> d!1920220 true))

(assert (=> d!1920220 true))

(assert (=> d!1920220 (= (Exists!3142 lambda!333836) (Exists!3142 lambda!333837))))

(declare-fun lt!2331699 () Unit!157443)

(declare-fun choose!45531 (Regex!16072 Regex!16072 List!64517) Unit!157443)

(assert (=> d!1920220 (= lt!2331699 (choose!45531 (regOne!32656 r!7292) (regTwo!32656 r!7292) s!2326))))

(assert (=> d!1920220 (validRegex!7808 (regOne!32656 r!7292))))

(assert (=> d!1920220 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1679 (regOne!32656 r!7292) (regTwo!32656 r!7292) s!2326) lt!2331699)))

(declare-fun m!6972774 () Bool)

(assert (=> bs!1520379 m!6972774))

(declare-fun m!6972776 () Bool)

(assert (=> bs!1520379 m!6972776))

(declare-fun m!6972778 () Bool)

(assert (=> bs!1520379 m!6972778))

(assert (=> bs!1520379 m!6972722))

(assert (=> b!6128255 d!1920220))

(declare-fun d!1920224 () Bool)

(declare-fun isEmpty!36335 (Option!15963) Bool)

(assert (=> d!1920224 (= (isDefined!12666 (findConcatSeparation!2377 (regOne!32656 r!7292) (regTwo!32656 r!7292) Nil!64393 s!2326 s!2326)) (not (isEmpty!36335 (findConcatSeparation!2377 (regOne!32656 r!7292) (regTwo!32656 r!7292) Nil!64393 s!2326 s!2326))))))

(declare-fun bs!1520380 () Bool)

(assert (= bs!1520380 d!1920224))

(assert (=> bs!1520380 m!6972502))

(declare-fun m!6972780 () Bool)

(assert (=> bs!1520380 m!6972780))

(assert (=> b!6128255 d!1920224))

(declare-fun d!1920226 () Bool)

(assert (=> d!1920226 (= (isEmpty!36330 (t!377982 (exprs!5956 (h!70840 zl!343)))) (is-Nil!64391 (t!377982 (exprs!5956 (h!70840 zl!343)))))))

(assert (=> b!6128245 d!1920226))

(declare-fun bs!1520385 () Bool)

(declare-fun d!1920228 () Bool)

(assert (= bs!1520385 (and d!1920228 d!1920172)))

(declare-fun lambda!333843 () Int)

(assert (=> bs!1520385 (= lambda!333843 lambda!333822)))

(declare-fun bs!1520386 () Bool)

(assert (= bs!1520386 (and d!1920228 d!1920188)))

(assert (=> bs!1520386 (= lambda!333843 lambda!333825)))

(declare-fun b!6128613 () Bool)

(declare-fun e!3735630 () Bool)

(declare-fun lt!2331705 () Regex!16072)

(declare-fun isEmptyLang!1499 (Regex!16072) Bool)

(assert (=> b!6128613 (= e!3735630 (isEmptyLang!1499 lt!2331705))))

(declare-fun b!6128614 () Bool)

(declare-fun e!3735631 () Bool)

(assert (=> b!6128614 (= e!3735630 e!3735631)))

(declare-fun c!1101648 () Bool)

(assert (=> b!6128614 (= c!1101648 (isEmpty!36330 (tail!11751 (unfocusZipperList!1493 zl!343))))))

(declare-fun b!6128615 () Bool)

(declare-fun e!3735632 () Bool)

(assert (=> b!6128615 (= e!3735632 e!3735630)))

(declare-fun c!1101645 () Bool)

(assert (=> b!6128615 (= c!1101645 (isEmpty!36330 (unfocusZipperList!1493 zl!343)))))

(declare-fun b!6128616 () Bool)

(declare-fun e!3735629 () Regex!16072)

(assert (=> b!6128616 (= e!3735629 (h!70839 (unfocusZipperList!1493 zl!343)))))

(assert (=> d!1920228 e!3735632))

(declare-fun res!2540218 () Bool)

(assert (=> d!1920228 (=> (not res!2540218) (not e!3735632))))

(assert (=> d!1920228 (= res!2540218 (validRegex!7808 lt!2331705))))

(assert (=> d!1920228 (= lt!2331705 e!3735629)))

(declare-fun c!1101646 () Bool)

(declare-fun e!3735628 () Bool)

(assert (=> d!1920228 (= c!1101646 e!3735628)))

(declare-fun res!2540217 () Bool)

(assert (=> d!1920228 (=> (not res!2540217) (not e!3735628))))

(assert (=> d!1920228 (= res!2540217 (is-Cons!64391 (unfocusZipperList!1493 zl!343)))))

(assert (=> d!1920228 (forall!15193 (unfocusZipperList!1493 zl!343) lambda!333843)))

(assert (=> d!1920228 (= (generalisedUnion!1916 (unfocusZipperList!1493 zl!343)) lt!2331705)))

(declare-fun b!6128617 () Bool)

(declare-fun e!3735633 () Regex!16072)

(assert (=> b!6128617 (= e!3735633 EmptyLang!16072)))

(declare-fun b!6128618 () Bool)

(assert (=> b!6128618 (= e!3735633 (Union!16072 (h!70839 (unfocusZipperList!1493 zl!343)) (generalisedUnion!1916 (t!377982 (unfocusZipperList!1493 zl!343)))))))

(declare-fun b!6128619 () Bool)

(assert (=> b!6128619 (= e!3735631 (= lt!2331705 (head!12666 (unfocusZipperList!1493 zl!343))))))

(declare-fun b!6128620 () Bool)

(assert (=> b!6128620 (= e!3735629 e!3735633)))

(declare-fun c!1101647 () Bool)

(assert (=> b!6128620 (= c!1101647 (is-Cons!64391 (unfocusZipperList!1493 zl!343)))))

(declare-fun b!6128621 () Bool)

(declare-fun isUnion!929 (Regex!16072) Bool)

(assert (=> b!6128621 (= e!3735631 (isUnion!929 lt!2331705))))

(declare-fun b!6128622 () Bool)

(assert (=> b!6128622 (= e!3735628 (isEmpty!36330 (t!377982 (unfocusZipperList!1493 zl!343))))))

(assert (= (and d!1920228 res!2540217) b!6128622))

(assert (= (and d!1920228 c!1101646) b!6128616))

(assert (= (and d!1920228 (not c!1101646)) b!6128620))

(assert (= (and b!6128620 c!1101647) b!6128618))

(assert (= (and b!6128620 (not c!1101647)) b!6128617))

(assert (= (and d!1920228 res!2540218) b!6128615))

(assert (= (and b!6128615 c!1101645) b!6128613))

(assert (= (and b!6128615 (not c!1101645)) b!6128614))

(assert (= (and b!6128614 c!1101648) b!6128619))

(assert (= (and b!6128614 (not c!1101648)) b!6128621))

(assert (=> b!6128619 m!6972492))

(declare-fun m!6972790 () Bool)

(assert (=> b!6128619 m!6972790))

(assert (=> b!6128614 m!6972492))

(declare-fun m!6972792 () Bool)

(assert (=> b!6128614 m!6972792))

(assert (=> b!6128614 m!6972792))

(declare-fun m!6972794 () Bool)

(assert (=> b!6128614 m!6972794))

(declare-fun m!6972796 () Bool)

(assert (=> b!6128621 m!6972796))

(declare-fun m!6972798 () Bool)

(assert (=> b!6128622 m!6972798))

(declare-fun m!6972800 () Bool)

(assert (=> d!1920228 m!6972800))

(assert (=> d!1920228 m!6972492))

(declare-fun m!6972802 () Bool)

(assert (=> d!1920228 m!6972802))

(declare-fun m!6972804 () Bool)

(assert (=> b!6128618 m!6972804))

(assert (=> b!6128615 m!6972492))

(declare-fun m!6972806 () Bool)

(assert (=> b!6128615 m!6972806))

(declare-fun m!6972808 () Bool)

(assert (=> b!6128613 m!6972808))

(assert (=> b!6128252 d!1920228))

(declare-fun bs!1520387 () Bool)

(declare-fun d!1920236 () Bool)

(assert (= bs!1520387 (and d!1920236 d!1920172)))

(declare-fun lambda!333848 () Int)

(assert (=> bs!1520387 (= lambda!333848 lambda!333822)))

(declare-fun bs!1520388 () Bool)

(assert (= bs!1520388 (and d!1920236 d!1920188)))

(assert (=> bs!1520388 (= lambda!333848 lambda!333825)))

(declare-fun bs!1520389 () Bool)

(assert (= bs!1520389 (and d!1920236 d!1920228)))

(assert (=> bs!1520389 (= lambda!333848 lambda!333843)))

(declare-fun lt!2331710 () List!64515)

(assert (=> d!1920236 (forall!15193 lt!2331710 lambda!333848)))

(declare-fun e!3735638 () List!64515)

(assert (=> d!1920236 (= lt!2331710 e!3735638)))

(declare-fun c!1101651 () Bool)

(assert (=> d!1920236 (= c!1101651 (is-Cons!64392 zl!343))))

(assert (=> d!1920236 (= (unfocusZipperList!1493 zl!343) lt!2331710)))

(declare-fun b!6128631 () Bool)

(assert (=> b!6128631 (= e!3735638 (Cons!64391 (generalisedConcat!1669 (exprs!5956 (h!70840 zl!343))) (unfocusZipperList!1493 (t!377983 zl!343))))))

(declare-fun b!6128632 () Bool)

(assert (=> b!6128632 (= e!3735638 Nil!64391)))

(assert (= (and d!1920236 c!1101651) b!6128631))

(assert (= (and d!1920236 (not c!1101651)) b!6128632))

(declare-fun m!6972810 () Bool)

(assert (=> d!1920236 m!6972810))

(assert (=> b!6128631 m!6972498))

(declare-fun m!6972812 () Bool)

(assert (=> b!6128631 m!6972812))

(assert (=> b!6128252 d!1920236))

(declare-fun bs!1520394 () Bool)

(declare-fun b!6128703 () Bool)

(assert (= bs!1520394 (and b!6128703 d!1920220)))

(declare-fun lambda!333857 () Int)

(assert (=> bs!1520394 (not (= lambda!333857 lambda!333836))))

(assert (=> bs!1520394 (not (= lambda!333857 lambda!333837))))

(declare-fun bs!1520395 () Bool)

(assert (= bs!1520395 (and b!6128703 d!1920212)))

(assert (=> bs!1520395 (not (= lambda!333857 lambda!333831))))

(declare-fun bs!1520396 () Bool)

(assert (= bs!1520396 (and b!6128703 b!6128255)))

(assert (=> bs!1520396 (not (= lambda!333857 lambda!333806))))

(assert (=> bs!1520396 (not (= lambda!333857 lambda!333807))))

(assert (=> b!6128703 true))

(assert (=> b!6128703 true))

(declare-fun bs!1520397 () Bool)

(declare-fun b!6128697 () Bool)

(assert (= bs!1520397 (and b!6128697 d!1920220)))

(declare-fun lambda!333858 () Int)

(assert (=> bs!1520397 (not (= lambda!333858 lambda!333836))))

(assert (=> bs!1520397 (= lambda!333858 lambda!333837)))

(declare-fun bs!1520398 () Bool)

(assert (= bs!1520398 (and b!6128697 d!1920212)))

(assert (=> bs!1520398 (not (= lambda!333858 lambda!333831))))

(declare-fun bs!1520399 () Bool)

(assert (= bs!1520399 (and b!6128697 b!6128255)))

(assert (=> bs!1520399 (not (= lambda!333858 lambda!333806))))

(assert (=> bs!1520399 (= lambda!333858 lambda!333807)))

(declare-fun bs!1520400 () Bool)

(assert (= bs!1520400 (and b!6128697 b!6128703)))

(assert (=> bs!1520400 (not (= lambda!333858 lambda!333857))))

(assert (=> b!6128697 true))

(assert (=> b!6128697 true))

(declare-fun b!6128696 () Bool)

(declare-fun res!2540259 () Bool)

(declare-fun e!3735680 () Bool)

(assert (=> b!6128696 (=> res!2540259 e!3735680)))

(declare-fun call!508108 () Bool)

(assert (=> b!6128696 (= res!2540259 call!508108)))

(declare-fun e!3735683 () Bool)

(assert (=> b!6128696 (= e!3735683 e!3735680)))

(declare-fun call!508107 () Bool)

(assert (=> b!6128697 (= e!3735683 call!508107)))

(declare-fun b!6128698 () Bool)

(declare-fun e!3735686 () Bool)

(declare-fun e!3735682 () Bool)

(assert (=> b!6128698 (= e!3735686 e!3735682)))

(declare-fun res!2540260 () Bool)

(assert (=> b!6128698 (= res!2540260 (matchRSpec!3173 (regOne!32657 r!7292) s!2326))))

(assert (=> b!6128698 (=> res!2540260 e!3735682)))

(declare-fun b!6128699 () Bool)

(declare-fun c!1101667 () Bool)

(assert (=> b!6128699 (= c!1101667 (is-ElementMatch!16072 r!7292))))

(declare-fun e!3735684 () Bool)

(declare-fun e!3735681 () Bool)

(assert (=> b!6128699 (= e!3735684 e!3735681)))

(declare-fun b!6128700 () Bool)

(assert (=> b!6128700 (= e!3735686 e!3735683)))

(declare-fun c!1101668 () Bool)

(assert (=> b!6128700 (= c!1101668 (is-Star!16072 r!7292))))

(declare-fun b!6128701 () Bool)

(declare-fun c!1101666 () Bool)

(assert (=> b!6128701 (= c!1101666 (is-Union!16072 r!7292))))

(assert (=> b!6128701 (= e!3735681 e!3735686)))

(declare-fun b!6128702 () Bool)

(declare-fun e!3735685 () Bool)

(assert (=> b!6128702 (= e!3735685 e!3735684)))

(declare-fun res!2540258 () Bool)

(assert (=> b!6128702 (= res!2540258 (not (is-EmptyLang!16072 r!7292)))))

(assert (=> b!6128702 (=> (not res!2540258) (not e!3735684))))

(assert (=> b!6128703 (= e!3735680 call!508107)))

(declare-fun bm!508102 () Bool)

(assert (=> bm!508102 (= call!508108 (isEmpty!36334 s!2326))))

(declare-fun b!6128704 () Bool)

(assert (=> b!6128704 (= e!3735682 (matchRSpec!3173 (regTwo!32657 r!7292) s!2326))))

(declare-fun b!6128705 () Bool)

(assert (=> b!6128705 (= e!3735681 (= s!2326 (Cons!64393 (c!1101550 r!7292) Nil!64393)))))

(declare-fun d!1920238 () Bool)

(declare-fun c!1101669 () Bool)

(assert (=> d!1920238 (= c!1101669 (is-EmptyExpr!16072 r!7292))))

(assert (=> d!1920238 (= (matchRSpec!3173 r!7292 s!2326) e!3735685)))

(declare-fun b!6128706 () Bool)

(assert (=> b!6128706 (= e!3735685 call!508108)))

(declare-fun bm!508103 () Bool)

(assert (=> bm!508103 (= call!508107 (Exists!3142 (ite c!1101668 lambda!333857 lambda!333858)))))

(assert (= (and d!1920238 c!1101669) b!6128706))

(assert (= (and d!1920238 (not c!1101669)) b!6128702))

(assert (= (and b!6128702 res!2540258) b!6128699))

(assert (= (and b!6128699 c!1101667) b!6128705))

(assert (= (and b!6128699 (not c!1101667)) b!6128701))

(assert (= (and b!6128701 c!1101666) b!6128698))

(assert (= (and b!6128701 (not c!1101666)) b!6128700))

(assert (= (and b!6128698 (not res!2540260)) b!6128704))

(assert (= (and b!6128700 c!1101668) b!6128696))

(assert (= (and b!6128700 (not c!1101668)) b!6128697))

(assert (= (and b!6128696 (not res!2540259)) b!6128703))

(assert (= (or b!6128703 b!6128697) bm!508103))

(assert (= (or b!6128706 b!6128696) bm!508102))

(declare-fun m!6972828 () Bool)

(assert (=> b!6128698 m!6972828))

(declare-fun m!6972830 () Bool)

(assert (=> bm!508102 m!6972830))

(declare-fun m!6972832 () Bool)

(assert (=> b!6128704 m!6972832))

(declare-fun m!6972834 () Bool)

(assert (=> bm!508103 m!6972834))

(assert (=> b!6128242 d!1920238))

(declare-fun b!6128778 () Bool)

(declare-fun res!2540299 () Bool)

(declare-fun e!3735726 () Bool)

(assert (=> b!6128778 (=> (not res!2540299) (not e!3735726))))

(assert (=> b!6128778 (= res!2540299 (isEmpty!36334 (tail!11750 s!2326)))))

(declare-fun bm!508112 () Bool)

(declare-fun call!508117 () Bool)

(assert (=> bm!508112 (= call!508117 (isEmpty!36334 s!2326))))

(declare-fun b!6128779 () Bool)

(declare-fun e!3735731 () Bool)

(declare-fun e!3735727 () Bool)

(assert (=> b!6128779 (= e!3735731 e!3735727)))

(declare-fun res!2540298 () Bool)

(assert (=> b!6128779 (=> (not res!2540298) (not e!3735727))))

(declare-fun lt!2331714 () Bool)

(assert (=> b!6128779 (= res!2540298 (not lt!2331714))))

(declare-fun b!6128780 () Bool)

(declare-fun e!3735730 () Bool)

(assert (=> b!6128780 (= e!3735730 (not (= (head!12665 s!2326) (c!1101550 r!7292))))))

(declare-fun b!6128781 () Bool)

(assert (=> b!6128781 (= e!3735727 e!3735730)))

(declare-fun res!2540303 () Bool)

(assert (=> b!6128781 (=> res!2540303 e!3735730)))

(assert (=> b!6128781 (= res!2540303 call!508117)))

(declare-fun b!6128782 () Bool)

(declare-fun e!3735729 () Bool)

(declare-fun e!3735732 () Bool)

(assert (=> b!6128782 (= e!3735729 e!3735732)))

(declare-fun c!1101690 () Bool)

(assert (=> b!6128782 (= c!1101690 (is-EmptyLang!16072 r!7292))))

(declare-fun b!6128783 () Bool)

(assert (=> b!6128783 (= e!3735726 (= (head!12665 s!2326) (c!1101550 r!7292)))))

(declare-fun b!6128784 () Bool)

(declare-fun res!2540296 () Bool)

(assert (=> b!6128784 (=> (not res!2540296) (not e!3735726))))

(assert (=> b!6128784 (= res!2540296 (not call!508117))))

(declare-fun b!6128785 () Bool)

(declare-fun res!2540300 () Bool)

(assert (=> b!6128785 (=> res!2540300 e!3735730)))

(assert (=> b!6128785 (= res!2540300 (not (isEmpty!36334 (tail!11750 s!2326))))))

(declare-fun b!6128786 () Bool)

(declare-fun res!2540302 () Bool)

(assert (=> b!6128786 (=> res!2540302 e!3735731)))

(assert (=> b!6128786 (= res!2540302 e!3735726)))

(declare-fun res!2540301 () Bool)

(assert (=> b!6128786 (=> (not res!2540301) (not e!3735726))))

(assert (=> b!6128786 (= res!2540301 lt!2331714)))

(declare-fun d!1920246 () Bool)

(assert (=> d!1920246 e!3735729))

(declare-fun c!1101688 () Bool)

(assert (=> d!1920246 (= c!1101688 (is-EmptyExpr!16072 r!7292))))

(declare-fun e!3735728 () Bool)

(assert (=> d!1920246 (= lt!2331714 e!3735728)))

(declare-fun c!1101689 () Bool)

(assert (=> d!1920246 (= c!1101689 (isEmpty!36334 s!2326))))

(assert (=> d!1920246 (validRegex!7808 r!7292)))

(assert (=> d!1920246 (= (matchR!8255 r!7292 s!2326) lt!2331714)))

(declare-fun b!6128787 () Bool)

(assert (=> b!6128787 (= e!3735732 (not lt!2331714))))

(declare-fun b!6128788 () Bool)

(declare-fun res!2540297 () Bool)

(assert (=> b!6128788 (=> res!2540297 e!3735731)))

(assert (=> b!6128788 (= res!2540297 (not (is-ElementMatch!16072 r!7292)))))

(assert (=> b!6128788 (= e!3735732 e!3735731)))

(declare-fun b!6128789 () Bool)

(assert (=> b!6128789 (= e!3735729 (= lt!2331714 call!508117))))

(declare-fun b!6128790 () Bool)

(assert (=> b!6128790 (= e!3735728 (nullable!6065 r!7292))))

(declare-fun b!6128791 () Bool)

(declare-fun derivativeStep!4792 (Regex!16072 C!32414) Regex!16072)

(assert (=> b!6128791 (= e!3735728 (matchR!8255 (derivativeStep!4792 r!7292 (head!12665 s!2326)) (tail!11750 s!2326)))))

(assert (= (and d!1920246 c!1101689) b!6128790))

(assert (= (and d!1920246 (not c!1101689)) b!6128791))

(assert (= (and d!1920246 c!1101688) b!6128789))

(assert (= (and d!1920246 (not c!1101688)) b!6128782))

(assert (= (and b!6128782 c!1101690) b!6128787))

(assert (= (and b!6128782 (not c!1101690)) b!6128788))

(assert (= (and b!6128788 (not res!2540297)) b!6128786))

(assert (= (and b!6128786 res!2540301) b!6128784))

(assert (= (and b!6128784 res!2540296) b!6128778))

(assert (= (and b!6128778 res!2540299) b!6128783))

(assert (= (and b!6128786 (not res!2540302)) b!6128779))

(assert (= (and b!6128779 res!2540298) b!6128781))

(assert (= (and b!6128781 (not res!2540303)) b!6128785))

(assert (= (and b!6128785 (not res!2540300)) b!6128780))

(assert (= (or b!6128789 b!6128781 b!6128784) bm!508112))

(assert (=> d!1920246 m!6972830))

(assert (=> d!1920246 m!6972450))

(assert (=> bm!508112 m!6972830))

(declare-fun m!6972836 () Bool)

(assert (=> b!6128785 m!6972836))

(assert (=> b!6128785 m!6972836))

(declare-fun m!6972838 () Bool)

(assert (=> b!6128785 m!6972838))

(declare-fun m!6972840 () Bool)

(assert (=> b!6128780 m!6972840))

(assert (=> b!6128783 m!6972840))

(declare-fun m!6972842 () Bool)

(assert (=> b!6128790 m!6972842))

(assert (=> b!6128791 m!6972840))

(assert (=> b!6128791 m!6972840))

(declare-fun m!6972844 () Bool)

(assert (=> b!6128791 m!6972844))

(assert (=> b!6128791 m!6972836))

(assert (=> b!6128791 m!6972844))

(assert (=> b!6128791 m!6972836))

(declare-fun m!6972850 () Bool)

(assert (=> b!6128791 m!6972850))

(assert (=> b!6128778 m!6972836))

(assert (=> b!6128778 m!6972836))

(assert (=> b!6128778 m!6972838))

(assert (=> b!6128242 d!1920246))

(declare-fun d!1920250 () Bool)

(assert (=> d!1920250 (= (matchR!8255 r!7292 s!2326) (matchRSpec!3173 r!7292 s!2326))))

(declare-fun lt!2331717 () Unit!157443)

(declare-fun choose!45535 (Regex!16072 List!64517) Unit!157443)

(assert (=> d!1920250 (= lt!2331717 (choose!45535 r!7292 s!2326))))

(assert (=> d!1920250 (validRegex!7808 r!7292)))

(assert (=> d!1920250 (= (mainMatchTheorem!3173 r!7292 s!2326) lt!2331717)))

(declare-fun bs!1520408 () Bool)

(assert (= bs!1520408 d!1920250))

(assert (=> bs!1520408 m!6972486))

(assert (=> bs!1520408 m!6972484))

(declare-fun m!6972856 () Bool)

(assert (=> bs!1520408 m!6972856))

(assert (=> bs!1520408 m!6972450))

(assert (=> b!6128242 d!1920250))

(declare-fun bm!508113 () Bool)

(declare-fun call!508121 () (Set Context!10912))

(declare-fun call!508123 () (Set Context!10912))

(assert (=> bm!508113 (= call!508121 call!508123)))

(declare-fun bm!508114 () Bool)

(declare-fun c!1101692 () Bool)

(declare-fun c!1101694 () Bool)

(declare-fun call!508118 () List!64515)

(assert (=> bm!508114 (= call!508118 ($colon$colon!1949 (exprs!5956 lt!2331616) (ite (or c!1101694 c!1101692) (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (regOne!32657 (regOne!32656 r!7292)))))))

(declare-fun b!6128792 () Bool)

(declare-fun e!3735737 () (Set Context!10912))

(declare-fun call!508119 () (Set Context!10912))

(assert (=> b!6128792 (= e!3735737 (set.union call!508119 call!508121))))

(declare-fun bm!508115 () Bool)

(declare-fun c!1101691 () Bool)

(assert (=> bm!508115 (= call!508119 (derivationStepZipperDown!1320 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292)))) (ite c!1101691 lt!2331616 (Context!10913 call!508118)) (h!70841 s!2326)))))

(declare-fun b!6128794 () Bool)

(declare-fun e!3735733 () (Set Context!10912))

(assert (=> b!6128794 (= e!3735733 (as set.empty (Set Context!10912)))))

(declare-fun bm!508116 () Bool)

(declare-fun call!508120 () List!64515)

(assert (=> bm!508116 (= call!508123 (derivationStepZipperDown!1320 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292)))))) (ite (or c!1101691 c!1101694) lt!2331616 (Context!10913 call!508120)) (h!70841 s!2326)))))

(declare-fun b!6128795 () Bool)

(declare-fun call!508122 () (Set Context!10912))

(assert (=> b!6128795 (= e!3735733 call!508122)))

(declare-fun bm!508117 () Bool)

(assert (=> bm!508117 (= call!508120 call!508118)))

(declare-fun b!6128796 () Bool)

(declare-fun e!3735734 () Bool)

(assert (=> b!6128796 (= c!1101694 e!3735734)))

(declare-fun res!2540304 () Bool)

(assert (=> b!6128796 (=> (not res!2540304) (not e!3735734))))

(assert (=> b!6128796 (= res!2540304 (is-Concat!24917 (regOne!32657 (regOne!32656 r!7292))))))

(declare-fun e!3735738 () (Set Context!10912))

(assert (=> b!6128796 (= e!3735738 e!3735737)))

(declare-fun b!6128797 () Bool)

(declare-fun e!3735736 () (Set Context!10912))

(assert (=> b!6128797 (= e!3735736 (set.insert lt!2331616 (as set.empty (Set Context!10912))))))

(declare-fun b!6128798 () Bool)

(declare-fun c!1101695 () Bool)

(assert (=> b!6128798 (= c!1101695 (is-Star!16072 (regOne!32657 (regOne!32656 r!7292))))))

(declare-fun e!3735735 () (Set Context!10912))

(assert (=> b!6128798 (= e!3735735 e!3735733)))

(declare-fun d!1920252 () Bool)

(declare-fun c!1101693 () Bool)

(assert (=> d!1920252 (= c!1101693 (and (is-ElementMatch!16072 (regOne!32657 (regOne!32656 r!7292))) (= (c!1101550 (regOne!32657 (regOne!32656 r!7292))) (h!70841 s!2326))))))

(assert (=> d!1920252 (= (derivationStepZipperDown!1320 (regOne!32657 (regOne!32656 r!7292)) lt!2331616 (h!70841 s!2326)) e!3735736)))

(declare-fun b!6128793 () Bool)

(assert (=> b!6128793 (= e!3735734 (nullable!6065 (regOne!32656 (regOne!32657 (regOne!32656 r!7292)))))))

(declare-fun b!6128799 () Bool)

(assert (=> b!6128799 (= e!3735737 e!3735735)))

(assert (=> b!6128799 (= c!1101692 (is-Concat!24917 (regOne!32657 (regOne!32656 r!7292))))))

(declare-fun b!6128800 () Bool)

(assert (=> b!6128800 (= e!3735735 call!508122)))

(declare-fun bm!508118 () Bool)

(assert (=> bm!508118 (= call!508122 call!508121)))

(declare-fun b!6128801 () Bool)

(assert (=> b!6128801 (= e!3735738 (set.union call!508119 call!508123))))

(declare-fun b!6128802 () Bool)

(assert (=> b!6128802 (= e!3735736 e!3735738)))

(assert (=> b!6128802 (= c!1101691 (is-Union!16072 (regOne!32657 (regOne!32656 r!7292))))))

(assert (= (and d!1920252 c!1101693) b!6128797))

(assert (= (and d!1920252 (not c!1101693)) b!6128802))

(assert (= (and b!6128802 c!1101691) b!6128801))

(assert (= (and b!6128802 (not c!1101691)) b!6128796))

(assert (= (and b!6128796 res!2540304) b!6128793))

(assert (= (and b!6128796 c!1101694) b!6128792))

(assert (= (and b!6128796 (not c!1101694)) b!6128799))

(assert (= (and b!6128799 c!1101692) b!6128800))

(assert (= (and b!6128799 (not c!1101692)) b!6128798))

(assert (= (and b!6128798 c!1101695) b!6128795))

(assert (= (and b!6128798 (not c!1101695)) b!6128794))

(assert (= (or b!6128800 b!6128795) bm!508117))

(assert (= (or b!6128800 b!6128795) bm!508118))

(assert (= (or b!6128792 bm!508117) bm!508114))

(assert (= (or b!6128792 bm!508118) bm!508113))

(assert (= (or b!6128801 bm!508113) bm!508116))

(assert (= (or b!6128801 b!6128792) bm!508115))

(declare-fun m!6972858 () Bool)

(assert (=> bm!508114 m!6972858))

(declare-fun m!6972860 () Bool)

(assert (=> bm!508115 m!6972860))

(assert (=> b!6128797 m!6972632))

(declare-fun m!6972862 () Bool)

(assert (=> bm!508116 m!6972862))

(declare-fun m!6972864 () Bool)

(assert (=> b!6128793 m!6972864))

(assert (=> b!6128243 d!1920252))

(declare-fun bm!508119 () Bool)

(declare-fun call!508127 () (Set Context!10912))

(declare-fun call!508129 () (Set Context!10912))

(assert (=> bm!508119 (= call!508127 call!508129)))

(declare-fun bm!508120 () Bool)

(declare-fun c!1101699 () Bool)

(declare-fun c!1101697 () Bool)

(declare-fun call!508124 () List!64515)

(assert (=> bm!508120 (= call!508124 ($colon$colon!1949 (exprs!5956 lt!2331616) (ite (or c!1101699 c!1101697) (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (regTwo!32657 (regOne!32656 r!7292)))))))

(declare-fun b!6128803 () Bool)

(declare-fun e!3735743 () (Set Context!10912))

(declare-fun call!508125 () (Set Context!10912))

(assert (=> b!6128803 (= e!3735743 (set.union call!508125 call!508127))))

(declare-fun c!1101696 () Bool)

(declare-fun bm!508121 () Bool)

(assert (=> bm!508121 (= call!508125 (derivationStepZipperDown!1320 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292)))) (ite c!1101696 lt!2331616 (Context!10913 call!508124)) (h!70841 s!2326)))))

(declare-fun b!6128805 () Bool)

(declare-fun e!3735739 () (Set Context!10912))

(assert (=> b!6128805 (= e!3735739 (as set.empty (Set Context!10912)))))

(declare-fun bm!508122 () Bool)

(declare-fun call!508126 () List!64515)

(assert (=> bm!508122 (= call!508129 (derivationStepZipperDown!1320 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292)))))) (ite (or c!1101696 c!1101699) lt!2331616 (Context!10913 call!508126)) (h!70841 s!2326)))))

(declare-fun b!6128806 () Bool)

(declare-fun call!508128 () (Set Context!10912))

(assert (=> b!6128806 (= e!3735739 call!508128)))

(declare-fun bm!508123 () Bool)

(assert (=> bm!508123 (= call!508126 call!508124)))

(declare-fun b!6128807 () Bool)

(declare-fun e!3735740 () Bool)

(assert (=> b!6128807 (= c!1101699 e!3735740)))

(declare-fun res!2540305 () Bool)

(assert (=> b!6128807 (=> (not res!2540305) (not e!3735740))))

(assert (=> b!6128807 (= res!2540305 (is-Concat!24917 (regTwo!32657 (regOne!32656 r!7292))))))

(declare-fun e!3735744 () (Set Context!10912))

(assert (=> b!6128807 (= e!3735744 e!3735743)))

(declare-fun b!6128808 () Bool)

(declare-fun e!3735742 () (Set Context!10912))

(assert (=> b!6128808 (= e!3735742 (set.insert lt!2331616 (as set.empty (Set Context!10912))))))

(declare-fun b!6128809 () Bool)

(declare-fun c!1101700 () Bool)

(assert (=> b!6128809 (= c!1101700 (is-Star!16072 (regTwo!32657 (regOne!32656 r!7292))))))

(declare-fun e!3735741 () (Set Context!10912))

(assert (=> b!6128809 (= e!3735741 e!3735739)))

(declare-fun d!1920254 () Bool)

(declare-fun c!1101698 () Bool)

(assert (=> d!1920254 (= c!1101698 (and (is-ElementMatch!16072 (regTwo!32657 (regOne!32656 r!7292))) (= (c!1101550 (regTwo!32657 (regOne!32656 r!7292))) (h!70841 s!2326))))))

(assert (=> d!1920254 (= (derivationStepZipperDown!1320 (regTwo!32657 (regOne!32656 r!7292)) lt!2331616 (h!70841 s!2326)) e!3735742)))

(declare-fun b!6128804 () Bool)

(assert (=> b!6128804 (= e!3735740 (nullable!6065 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292)))))))

(declare-fun b!6128810 () Bool)

(assert (=> b!6128810 (= e!3735743 e!3735741)))

(assert (=> b!6128810 (= c!1101697 (is-Concat!24917 (regTwo!32657 (regOne!32656 r!7292))))))

(declare-fun b!6128811 () Bool)

(assert (=> b!6128811 (= e!3735741 call!508128)))

(declare-fun bm!508124 () Bool)

(assert (=> bm!508124 (= call!508128 call!508127)))

(declare-fun b!6128812 () Bool)

(assert (=> b!6128812 (= e!3735744 (set.union call!508125 call!508129))))

(declare-fun b!6128813 () Bool)

(assert (=> b!6128813 (= e!3735742 e!3735744)))

(assert (=> b!6128813 (= c!1101696 (is-Union!16072 (regTwo!32657 (regOne!32656 r!7292))))))

(assert (= (and d!1920254 c!1101698) b!6128808))

(assert (= (and d!1920254 (not c!1101698)) b!6128813))

(assert (= (and b!6128813 c!1101696) b!6128812))

(assert (= (and b!6128813 (not c!1101696)) b!6128807))

(assert (= (and b!6128807 res!2540305) b!6128804))

(assert (= (and b!6128807 c!1101699) b!6128803))

(assert (= (and b!6128807 (not c!1101699)) b!6128810))

(assert (= (and b!6128810 c!1101697) b!6128811))

(assert (= (and b!6128810 (not c!1101697)) b!6128809))

(assert (= (and b!6128809 c!1101700) b!6128806))

(assert (= (and b!6128809 (not c!1101700)) b!6128805))

(assert (= (or b!6128811 b!6128806) bm!508123))

(assert (= (or b!6128811 b!6128806) bm!508124))

(assert (= (or b!6128803 bm!508123) bm!508120))

(assert (= (or b!6128803 bm!508124) bm!508119))

(assert (= (or b!6128812 bm!508119) bm!508122))

(assert (= (or b!6128812 b!6128803) bm!508121))

(declare-fun m!6972866 () Bool)

(assert (=> bm!508120 m!6972866))

(declare-fun m!6972868 () Bool)

(assert (=> bm!508121 m!6972868))

(assert (=> b!6128808 m!6972632))

(declare-fun m!6972870 () Bool)

(assert (=> bm!508122 m!6972870))

(declare-fun m!6972872 () Bool)

(assert (=> b!6128804 m!6972872))

(assert (=> b!6128243 d!1920254))

(declare-fun bs!1520409 () Bool)

(declare-fun d!1920256 () Bool)

(assert (= bs!1520409 (and d!1920256 d!1920172)))

(declare-fun lambda!333865 () Int)

(assert (=> bs!1520409 (= lambda!333865 lambda!333822)))

(declare-fun bs!1520410 () Bool)

(assert (= bs!1520410 (and d!1920256 d!1920188)))

(assert (=> bs!1520410 (= lambda!333865 lambda!333825)))

(declare-fun bs!1520411 () Bool)

(assert (= bs!1520411 (and d!1920256 d!1920228)))

(assert (=> bs!1520411 (= lambda!333865 lambda!333843)))

(declare-fun bs!1520412 () Bool)

(assert (= bs!1520412 (and d!1920256 d!1920236)))

(assert (=> bs!1520412 (= lambda!333865 lambda!333848)))

(assert (=> d!1920256 (= (inv!83428 (h!70840 zl!343)) (forall!15193 (exprs!5956 (h!70840 zl!343)) lambda!333865))))

(declare-fun bs!1520413 () Bool)

(assert (= bs!1520413 d!1920256))

(declare-fun m!6972874 () Bool)

(assert (=> bs!1520413 m!6972874))

(assert (=> b!6128263 d!1920256))

(declare-fun b!6128874 () Bool)

(declare-fun e!3735785 () Bool)

(declare-fun e!3735784 () Bool)

(assert (=> b!6128874 (= e!3735785 e!3735784)))

(declare-fun res!2540340 () Bool)

(assert (=> b!6128874 (=> (not res!2540340) (not e!3735784))))

(declare-fun call!508141 () Bool)

(assert (=> b!6128874 (= res!2540340 call!508141)))

(declare-fun b!6128875 () Bool)

(declare-fun e!3735781 () Bool)

(declare-fun call!508140 () Bool)

(assert (=> b!6128875 (= e!3735781 call!508140)))

(declare-fun b!6128876 () Bool)

(declare-fun call!508139 () Bool)

(assert (=> b!6128876 (= e!3735784 call!508139)))

(declare-fun bm!508134 () Bool)

(declare-fun c!1101715 () Bool)

(assert (=> bm!508134 (= call!508139 (validRegex!7808 (ite c!1101715 (regTwo!32657 r!7292) (regTwo!32656 r!7292))))))

(declare-fun bm!508135 () Bool)

(assert (=> bm!508135 (= call!508141 call!508140)))

(declare-fun b!6128878 () Bool)

(declare-fun e!3735783 () Bool)

(declare-fun e!3735782 () Bool)

(assert (=> b!6128878 (= e!3735783 e!3735782)))

(declare-fun c!1101714 () Bool)

(assert (=> b!6128878 (= c!1101714 (is-Star!16072 r!7292))))

(declare-fun b!6128879 () Bool)

(declare-fun e!3735786 () Bool)

(assert (=> b!6128879 (= e!3735786 call!508139)))

(declare-fun b!6128880 () Bool)

(declare-fun res!2540344 () Bool)

(assert (=> b!6128880 (=> res!2540344 e!3735785)))

(assert (=> b!6128880 (= res!2540344 (not (is-Concat!24917 r!7292)))))

(declare-fun e!3735780 () Bool)

(assert (=> b!6128880 (= e!3735780 e!3735785)))

(declare-fun b!6128881 () Bool)

(assert (=> b!6128881 (= e!3735782 e!3735780)))

(assert (=> b!6128881 (= c!1101715 (is-Union!16072 r!7292))))

(declare-fun b!6128882 () Bool)

(assert (=> b!6128882 (= e!3735782 e!3735781)))

(declare-fun res!2540341 () Bool)

(assert (=> b!6128882 (= res!2540341 (not (nullable!6065 (reg!16401 r!7292))))))

(assert (=> b!6128882 (=> (not res!2540341) (not e!3735781))))

(declare-fun bm!508136 () Bool)

(assert (=> bm!508136 (= call!508140 (validRegex!7808 (ite c!1101714 (reg!16401 r!7292) (ite c!1101715 (regOne!32657 r!7292) (regOne!32656 r!7292)))))))

(declare-fun b!6128877 () Bool)

(declare-fun res!2540343 () Bool)

(assert (=> b!6128877 (=> (not res!2540343) (not e!3735786))))

(assert (=> b!6128877 (= res!2540343 call!508141)))

(assert (=> b!6128877 (= e!3735780 e!3735786)))

(declare-fun d!1920258 () Bool)

(declare-fun res!2540342 () Bool)

(assert (=> d!1920258 (=> res!2540342 e!3735783)))

(assert (=> d!1920258 (= res!2540342 (is-ElementMatch!16072 r!7292))))

(assert (=> d!1920258 (= (validRegex!7808 r!7292) e!3735783)))

(assert (= (and d!1920258 (not res!2540342)) b!6128878))

(assert (= (and b!6128878 c!1101714) b!6128882))

(assert (= (and b!6128878 (not c!1101714)) b!6128881))

(assert (= (and b!6128882 res!2540341) b!6128875))

(assert (= (and b!6128881 c!1101715) b!6128877))

(assert (= (and b!6128881 (not c!1101715)) b!6128880))

(assert (= (and b!6128877 res!2540343) b!6128879))

(assert (= (and b!6128880 (not res!2540344)) b!6128874))

(assert (= (and b!6128874 res!2540340) b!6128876))

(assert (= (or b!6128879 b!6128876) bm!508134))

(assert (= (or b!6128877 b!6128874) bm!508135))

(assert (= (or b!6128875 bm!508135) bm!508136))

(declare-fun m!6972888 () Bool)

(assert (=> bm!508134 m!6972888))

(declare-fun m!6972890 () Bool)

(assert (=> b!6128882 m!6972890))

(declare-fun m!6972892 () Bool)

(assert (=> bm!508136 m!6972892))

(assert (=> start!612096 d!1920258))

(declare-fun bs!1520414 () Bool)

(declare-fun d!1920262 () Bool)

(assert (= bs!1520414 (and d!1920262 d!1920256)))

(declare-fun lambda!333866 () Int)

(assert (=> bs!1520414 (= lambda!333866 lambda!333865)))

(declare-fun bs!1520415 () Bool)

(assert (= bs!1520415 (and d!1920262 d!1920236)))

(assert (=> bs!1520415 (= lambda!333866 lambda!333848)))

(declare-fun bs!1520416 () Bool)

(assert (= bs!1520416 (and d!1920262 d!1920188)))

(assert (=> bs!1520416 (= lambda!333866 lambda!333825)))

(declare-fun bs!1520417 () Bool)

(assert (= bs!1520417 (and d!1920262 d!1920228)))

(assert (=> bs!1520417 (= lambda!333866 lambda!333843)))

(declare-fun bs!1520418 () Bool)

(assert (= bs!1520418 (and d!1920262 d!1920172)))

(assert (=> bs!1520418 (= lambda!333866 lambda!333822)))

(assert (=> d!1920262 (= (inv!83428 lt!2331616) (forall!15193 (exprs!5956 lt!2331616) lambda!333866))))

(declare-fun bs!1520419 () Bool)

(assert (= bs!1520419 d!1920262))

(declare-fun m!6972894 () Bool)

(assert (=> bs!1520419 m!6972894))

(assert (=> b!6128253 d!1920262))

(declare-fun condSetEmpty!41419 () Bool)

(assert (=> setNonEmpty!41413 (= condSetEmpty!41419 (= setRest!41413 (as set.empty (Set Context!10912))))))

(declare-fun setRes!41419 () Bool)

(assert (=> setNonEmpty!41413 (= tp!1712715 setRes!41419)))

(declare-fun setIsEmpty!41419 () Bool)

(assert (=> setIsEmpty!41419 setRes!41419))

(declare-fun setElem!41419 () Context!10912)

(declare-fun e!3735789 () Bool)

(declare-fun setNonEmpty!41419 () Bool)

(declare-fun tp!1712759 () Bool)

(assert (=> setNonEmpty!41419 (= setRes!41419 (and tp!1712759 (inv!83428 setElem!41419) e!3735789))))

(declare-fun setRest!41419 () (Set Context!10912))

(assert (=> setNonEmpty!41419 (= setRest!41413 (set.union (set.insert setElem!41419 (as set.empty (Set Context!10912))) setRest!41419))))

(declare-fun b!6128887 () Bool)

(declare-fun tp!1712760 () Bool)

(assert (=> b!6128887 (= e!3735789 tp!1712760)))

(assert (= (and setNonEmpty!41413 condSetEmpty!41419) setIsEmpty!41419))

(assert (= (and setNonEmpty!41413 (not condSetEmpty!41419)) setNonEmpty!41419))

(assert (= setNonEmpty!41419 b!6128887))

(declare-fun m!6972898 () Bool)

(assert (=> setNonEmpty!41419 m!6972898))

(declare-fun b!6128900 () Bool)

(declare-fun e!3735792 () Bool)

(declare-fun tp!1712774 () Bool)

(assert (=> b!6128900 (= e!3735792 tp!1712774)))

(declare-fun b!6128899 () Bool)

(declare-fun tp!1712772 () Bool)

(declare-fun tp!1712771 () Bool)

(assert (=> b!6128899 (= e!3735792 (and tp!1712772 tp!1712771))))

(assert (=> b!6128259 (= tp!1712721 e!3735792)))

(declare-fun b!6128901 () Bool)

(declare-fun tp!1712773 () Bool)

(declare-fun tp!1712775 () Bool)

(assert (=> b!6128901 (= e!3735792 (and tp!1712773 tp!1712775))))

(declare-fun b!6128898 () Bool)

(assert (=> b!6128898 (= e!3735792 tp_is_empty!41397)))

(assert (= (and b!6128259 (is-ElementMatch!16072 (regOne!32656 r!7292))) b!6128898))

(assert (= (and b!6128259 (is-Concat!24917 (regOne!32656 r!7292))) b!6128899))

(assert (= (and b!6128259 (is-Star!16072 (regOne!32656 r!7292))) b!6128900))

(assert (= (and b!6128259 (is-Union!16072 (regOne!32656 r!7292))) b!6128901))

(declare-fun b!6128904 () Bool)

(declare-fun e!3735793 () Bool)

(declare-fun tp!1712779 () Bool)

(assert (=> b!6128904 (= e!3735793 tp!1712779)))

(declare-fun b!6128903 () Bool)

(declare-fun tp!1712777 () Bool)

(declare-fun tp!1712776 () Bool)

(assert (=> b!6128903 (= e!3735793 (and tp!1712777 tp!1712776))))

(assert (=> b!6128259 (= tp!1712716 e!3735793)))

(declare-fun b!6128905 () Bool)

(declare-fun tp!1712778 () Bool)

(declare-fun tp!1712780 () Bool)

(assert (=> b!6128905 (= e!3735793 (and tp!1712778 tp!1712780))))

(declare-fun b!6128902 () Bool)

(assert (=> b!6128902 (= e!3735793 tp_is_empty!41397)))

(assert (= (and b!6128259 (is-ElementMatch!16072 (regTwo!32656 r!7292))) b!6128902))

(assert (= (and b!6128259 (is-Concat!24917 (regTwo!32656 r!7292))) b!6128903))

(assert (= (and b!6128259 (is-Star!16072 (regTwo!32656 r!7292))) b!6128904))

(assert (= (and b!6128259 (is-Union!16072 (regTwo!32656 r!7292))) b!6128905))

(declare-fun b!6128912 () Bool)

(declare-fun e!3735798 () Bool)

(declare-fun tp!1712783 () Bool)

(assert (=> b!6128912 (= e!3735798 (and tp_is_empty!41397 tp!1712783))))

(assert (=> b!6128251 (= tp!1712719 e!3735798)))

(assert (= (and b!6128251 (is-Cons!64393 (t!377984 s!2326))) b!6128912))

(declare-fun b!6128915 () Bool)

(declare-fun e!3735799 () Bool)

(declare-fun tp!1712787 () Bool)

(assert (=> b!6128915 (= e!3735799 tp!1712787)))

(declare-fun b!6128914 () Bool)

(declare-fun tp!1712785 () Bool)

(declare-fun tp!1712784 () Bool)

(assert (=> b!6128914 (= e!3735799 (and tp!1712785 tp!1712784))))

(assert (=> b!6128260 (= tp!1712722 e!3735799)))

(declare-fun b!6128916 () Bool)

(declare-fun tp!1712786 () Bool)

(declare-fun tp!1712788 () Bool)

(assert (=> b!6128916 (= e!3735799 (and tp!1712786 tp!1712788))))

(declare-fun b!6128913 () Bool)

(assert (=> b!6128913 (= e!3735799 tp_is_empty!41397)))

(assert (= (and b!6128260 (is-ElementMatch!16072 (regOne!32657 r!7292))) b!6128913))

(assert (= (and b!6128260 (is-Concat!24917 (regOne!32657 r!7292))) b!6128914))

(assert (= (and b!6128260 (is-Star!16072 (regOne!32657 r!7292))) b!6128915))

(assert (= (and b!6128260 (is-Union!16072 (regOne!32657 r!7292))) b!6128916))

(declare-fun b!6128920 () Bool)

(declare-fun e!3735801 () Bool)

(declare-fun tp!1712792 () Bool)

(assert (=> b!6128920 (= e!3735801 tp!1712792)))

(declare-fun b!6128919 () Bool)

(declare-fun tp!1712790 () Bool)

(declare-fun tp!1712789 () Bool)

(assert (=> b!6128919 (= e!3735801 (and tp!1712790 tp!1712789))))

(assert (=> b!6128260 (= tp!1712723 e!3735801)))

(declare-fun b!6128921 () Bool)

(declare-fun tp!1712791 () Bool)

(declare-fun tp!1712793 () Bool)

(assert (=> b!6128921 (= e!3735801 (and tp!1712791 tp!1712793))))

(declare-fun b!6128918 () Bool)

(assert (=> b!6128918 (= e!3735801 tp_is_empty!41397)))

(assert (= (and b!6128260 (is-ElementMatch!16072 (regTwo!32657 r!7292))) b!6128918))

(assert (= (and b!6128260 (is-Concat!24917 (regTwo!32657 r!7292))) b!6128919))

(assert (= (and b!6128260 (is-Star!16072 (regTwo!32657 r!7292))) b!6128920))

(assert (= (and b!6128260 (is-Union!16072 (regTwo!32657 r!7292))) b!6128921))

(declare-fun b!6128926 () Bool)

(declare-fun e!3735804 () Bool)

(declare-fun tp!1712798 () Bool)

(declare-fun tp!1712799 () Bool)

(assert (=> b!6128926 (= e!3735804 (and tp!1712798 tp!1712799))))

(assert (=> b!6128262 (= tp!1712724 e!3735804)))

(assert (= (and b!6128262 (is-Cons!64391 (exprs!5956 setElem!41413))) b!6128926))

(declare-fun b!6128929 () Bool)

(declare-fun e!3735805 () Bool)

(declare-fun tp!1712803 () Bool)

(assert (=> b!6128929 (= e!3735805 tp!1712803)))

(declare-fun b!6128928 () Bool)

(declare-fun tp!1712801 () Bool)

(declare-fun tp!1712800 () Bool)

(assert (=> b!6128928 (= e!3735805 (and tp!1712801 tp!1712800))))

(assert (=> b!6128256 (= tp!1712718 e!3735805)))

(declare-fun b!6128930 () Bool)

(declare-fun tp!1712802 () Bool)

(declare-fun tp!1712804 () Bool)

(assert (=> b!6128930 (= e!3735805 (and tp!1712802 tp!1712804))))

(declare-fun b!6128927 () Bool)

(assert (=> b!6128927 (= e!3735805 tp_is_empty!41397)))

(assert (= (and b!6128256 (is-ElementMatch!16072 (reg!16401 r!7292))) b!6128927))

(assert (= (and b!6128256 (is-Concat!24917 (reg!16401 r!7292))) b!6128928))

(assert (= (and b!6128256 (is-Star!16072 (reg!16401 r!7292))) b!6128929))

(assert (= (and b!6128256 (is-Union!16072 (reg!16401 r!7292))) b!6128930))

(declare-fun b!6128931 () Bool)

(declare-fun e!3735806 () Bool)

(declare-fun tp!1712805 () Bool)

(declare-fun tp!1712806 () Bool)

(assert (=> b!6128931 (= e!3735806 (and tp!1712805 tp!1712806))))

(assert (=> b!6128246 (= tp!1712720 e!3735806)))

(assert (= (and b!6128246 (is-Cons!64391 (exprs!5956 (h!70840 zl!343)))) b!6128931))

(declare-fun b!6128939 () Bool)

(declare-fun e!3735812 () Bool)

(declare-fun tp!1712811 () Bool)

(assert (=> b!6128939 (= e!3735812 tp!1712811)))

(declare-fun tp!1712812 () Bool)

(declare-fun b!6128938 () Bool)

(declare-fun e!3735811 () Bool)

(assert (=> b!6128938 (= e!3735811 (and (inv!83428 (h!70840 (t!377983 zl!343))) e!3735812 tp!1712812))))

(assert (=> b!6128263 (= tp!1712717 e!3735811)))

(assert (= b!6128938 b!6128939))

(assert (= (and b!6128263 (is-Cons!64392 (t!377983 zl!343))) b!6128938))

(declare-fun m!6972908 () Bool)

(assert (=> b!6128938 m!6972908))

(declare-fun b_lambda!233315 () Bool)

(assert (= b_lambda!233313 (or b!6128244 b_lambda!233315)))

(declare-fun bs!1520422 () Bool)

(declare-fun d!1920272 () Bool)

(assert (= bs!1520422 (and d!1920272 b!6128244)))

(assert (=> bs!1520422 (= (dynLambda!25365 lambda!333808 (h!70840 zl!343)) (derivationStepZipperUp!1246 (h!70840 zl!343) (h!70841 s!2326)))))

(assert (=> bs!1520422 m!6972456))

(assert (=> d!1920178 d!1920272))

(push 1)

(assert (not b!6128537))

(assert (not b!6128483))

(assert (not d!1920162))

(assert (not b!6128921))

(assert (not b!6128920))

(assert (not b!6128930))

(assert (not bm!508116))

(assert (not b!6128928))

(assert (not bm!508058))

(assert (not b!6128904))

(assert (not b!6128534))

(assert (not d!1920178))

(assert (not bm!508122))

(assert (not b!6128615))

(assert (not b!6128430))

(assert (not b!6128914))

(assert (not b!6128804))

(assert (not bm!508134))

(assert (not b!6128621))

(assert (not b!6128372))

(assert (not bm!508114))

(assert tp_is_empty!41397)

(assert (not bm!508103))

(assert (not d!1920172))

(assert (not b!6128388))

(assert (not b!6128619))

(assert (not b!6128482))

(assert (not b!6128778))

(assert (not b!6128698))

(assert (not b!6128919))

(assert (not b!6128915))

(assert (not b!6128369))

(assert (not bm!508136))

(assert (not d!1920250))

(assert (not b!6128929))

(assert (not b!6128431))

(assert (not b!6128704))

(assert (not b!6128614))

(assert (not b!6128926))

(assert (not b!6128790))

(assert (not b!6128478))

(assert (not b!6128903))

(assert (not bm!508120))

(assert (not b!6128939))

(assert (not b!6128371))

(assert (not b!6128905))

(assert (not b!6128435))

(assert (not b!6128791))

(assert (not bm!508060))

(assert (not bm!508121))

(assert (not b!6128392))

(assert (not b!6128485))

(assert (not d!1920236))

(assert (not b!6128783))

(assert (not d!1920262))

(assert (not b!6128938))

(assert (not d!1920176))

(assert (not b!6128780))

(assert (not d!1920208))

(assert (not d!1920170))

(assert (not bm!508063))

(assert (not d!1920220))

(assert (not b!6128484))

(assert (not d!1920212))

(assert (not b!6128377))

(assert (not d!1920194))

(assert (not d!1920164))

(assert (not b!6128912))

(assert (not b!6128536))

(assert (not b_lambda!233315))

(assert (not d!1920192))

(assert (not d!1920160))

(assert (not b!6128887))

(assert (not d!1920210))

(assert (not bm!508064))

(assert (not b!6128481))

(assert (not bs!1520422))

(assert (not b!6128618))

(assert (not b!6128364))

(assert (not bm!508112))

(assert (not d!1920256))

(assert (not bm!508115))

(assert (not d!1920228))

(assert (not bm!508059))

(assert (not b!6128370))

(assert (not d!1920224))

(assert (not b!6128376))

(assert (not b!6128899))

(assert (not b!6128535))

(assert (not d!1920188))

(assert (not b!6128375))

(assert (not d!1920246))

(assert (not b!6128882))

(assert (not b!6128538))

(assert (not b!6128622))

(assert (not bm!508102))

(assert (not b!6128785))

(assert (not bm!508044))

(assert (not b!6128901))

(assert (not b!6128916))

(assert (not d!1920166))

(assert (not b!6128900))

(assert (not b!6128540))

(assert (not b!6128931))

(assert (not b!6128631))

(assert (not setNonEmpty!41419))

(assert (not b!6128613))

(assert (not b!6128793))

(assert (not b!6128426))

(assert (not d!1920174))

(assert (not b!6128479))

(assert (not b!6128416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6129096 () Bool)

(declare-fun e!3735901 () Bool)

(declare-fun e!3735900 () Bool)

(assert (=> b!6129096 (= e!3735901 e!3735900)))

(declare-fun res!2540366 () Bool)

(assert (=> b!6129096 (=> (not res!2540366) (not e!3735900))))

(declare-fun call!508155 () Bool)

(assert (=> b!6129096 (= res!2540366 call!508155)))

(declare-fun b!6129097 () Bool)

(declare-fun e!3735897 () Bool)

(declare-fun call!508154 () Bool)

(assert (=> b!6129097 (= e!3735897 call!508154)))

(declare-fun b!6129098 () Bool)

(declare-fun call!508153 () Bool)

(assert (=> b!6129098 (= e!3735900 call!508153)))

(declare-fun bm!508148 () Bool)

(declare-fun c!1101759 () Bool)

(assert (=> bm!508148 (= call!508153 (validRegex!7808 (ite c!1101759 (regTwo!32657 lt!2331705) (regTwo!32656 lt!2331705))))))

(declare-fun bm!508149 () Bool)

(assert (=> bm!508149 (= call!508155 call!508154)))

(declare-fun b!6129100 () Bool)

(declare-fun e!3735899 () Bool)

(declare-fun e!3735898 () Bool)

(assert (=> b!6129100 (= e!3735899 e!3735898)))

(declare-fun c!1101758 () Bool)

(assert (=> b!6129100 (= c!1101758 (is-Star!16072 lt!2331705))))

(declare-fun b!6129101 () Bool)

(declare-fun e!3735902 () Bool)

(assert (=> b!6129101 (= e!3735902 call!508153)))

(declare-fun b!6129102 () Bool)

(declare-fun res!2540370 () Bool)

(assert (=> b!6129102 (=> res!2540370 e!3735901)))

(assert (=> b!6129102 (= res!2540370 (not (is-Concat!24917 lt!2331705)))))

(declare-fun e!3735896 () Bool)

(assert (=> b!6129102 (= e!3735896 e!3735901)))

(declare-fun b!6129103 () Bool)

(assert (=> b!6129103 (= e!3735898 e!3735896)))

(assert (=> b!6129103 (= c!1101759 (is-Union!16072 lt!2331705))))

(declare-fun b!6129104 () Bool)

(assert (=> b!6129104 (= e!3735898 e!3735897)))

(declare-fun res!2540367 () Bool)

(assert (=> b!6129104 (= res!2540367 (not (nullable!6065 (reg!16401 lt!2331705))))))

(assert (=> b!6129104 (=> (not res!2540367) (not e!3735897))))

(declare-fun bm!508150 () Bool)

(assert (=> bm!508150 (= call!508154 (validRegex!7808 (ite c!1101758 (reg!16401 lt!2331705) (ite c!1101759 (regOne!32657 lt!2331705) (regOne!32656 lt!2331705)))))))

(declare-fun b!6129099 () Bool)

(declare-fun res!2540369 () Bool)

(assert (=> b!6129099 (=> (not res!2540369) (not e!3735902))))

(assert (=> b!6129099 (= res!2540369 call!508155)))

(assert (=> b!6129099 (= e!3735896 e!3735902)))

(declare-fun d!1920296 () Bool)

(declare-fun res!2540368 () Bool)

(assert (=> d!1920296 (=> res!2540368 e!3735899)))

(assert (=> d!1920296 (= res!2540368 (is-ElementMatch!16072 lt!2331705))))

(assert (=> d!1920296 (= (validRegex!7808 lt!2331705) e!3735899)))

(assert (= (and d!1920296 (not res!2540368)) b!6129100))

(assert (= (and b!6129100 c!1101758) b!6129104))

(assert (= (and b!6129100 (not c!1101758)) b!6129103))

(assert (= (and b!6129104 res!2540367) b!6129097))

(assert (= (and b!6129103 c!1101759) b!6129099))

(assert (= (and b!6129103 (not c!1101759)) b!6129102))

(assert (= (and b!6129099 res!2540369) b!6129101))

(assert (= (and b!6129102 (not res!2540370)) b!6129096))

(assert (= (and b!6129096 res!2540366) b!6129098))

(assert (= (or b!6129101 b!6129098) bm!508148))

(assert (= (or b!6129099 b!6129096) bm!508149))

(assert (= (or b!6129097 bm!508149) bm!508150))

(declare-fun m!6972992 () Bool)

(assert (=> bm!508148 m!6972992))

(declare-fun m!6972994 () Bool)

(assert (=> b!6129104 m!6972994))

(declare-fun m!6972996 () Bool)

(assert (=> bm!508150 m!6972996))

(assert (=> d!1920228 d!1920296))

(declare-fun d!1920298 () Bool)

(declare-fun res!2540375 () Bool)

(declare-fun e!3735907 () Bool)

(assert (=> d!1920298 (=> res!2540375 e!3735907)))

(assert (=> d!1920298 (= res!2540375 (is-Nil!64391 (unfocusZipperList!1493 zl!343)))))

(assert (=> d!1920298 (= (forall!15193 (unfocusZipperList!1493 zl!343) lambda!333843) e!3735907)))

(declare-fun b!6129109 () Bool)

(declare-fun e!3735908 () Bool)

(assert (=> b!6129109 (= e!3735907 e!3735908)))

(declare-fun res!2540376 () Bool)

(assert (=> b!6129109 (=> (not res!2540376) (not e!3735908))))

(declare-fun dynLambda!25367 (Int Regex!16072) Bool)

(assert (=> b!6129109 (= res!2540376 (dynLambda!25367 lambda!333843 (h!70839 (unfocusZipperList!1493 zl!343))))))

(declare-fun b!6129110 () Bool)

(assert (=> b!6129110 (= e!3735908 (forall!15193 (t!377982 (unfocusZipperList!1493 zl!343)) lambda!333843))))

(assert (= (and d!1920298 (not res!2540375)) b!6129109))

(assert (= (and b!6129109 res!2540376) b!6129110))

(declare-fun b_lambda!233321 () Bool)

(assert (=> (not b_lambda!233321) (not b!6129109)))

(declare-fun m!6972998 () Bool)

(assert (=> b!6129109 m!6972998))

(declare-fun m!6973000 () Bool)

(assert (=> b!6129110 m!6973000))

(assert (=> d!1920228 d!1920298))

(declare-fun b!6129111 () Bool)

(declare-fun res!2540380 () Bool)

(declare-fun e!3735909 () Bool)

(assert (=> b!6129111 (=> (not res!2540380) (not e!3735909))))

(assert (=> b!6129111 (= res!2540380 (isEmpty!36334 (tail!11750 s!2326)))))

(declare-fun bm!508151 () Bool)

(declare-fun call!508156 () Bool)

(assert (=> bm!508151 (= call!508156 (isEmpty!36334 s!2326))))

(declare-fun b!6129112 () Bool)

(declare-fun e!3735914 () Bool)

(declare-fun e!3735910 () Bool)

(assert (=> b!6129112 (= e!3735914 e!3735910)))

(declare-fun res!2540379 () Bool)

(assert (=> b!6129112 (=> (not res!2540379) (not e!3735910))))

(declare-fun lt!2331739 () Bool)

(assert (=> b!6129112 (= res!2540379 (not lt!2331739))))

(declare-fun b!6129113 () Bool)

(declare-fun e!3735913 () Bool)

(assert (=> b!6129113 (= e!3735913 (not (= (head!12665 s!2326) (c!1101550 (regTwo!32656 r!7292)))))))

(declare-fun b!6129114 () Bool)

(assert (=> b!6129114 (= e!3735910 e!3735913)))

(declare-fun res!2540384 () Bool)

(assert (=> b!6129114 (=> res!2540384 e!3735913)))

(assert (=> b!6129114 (= res!2540384 call!508156)))

(declare-fun b!6129115 () Bool)

(declare-fun e!3735912 () Bool)

(declare-fun e!3735915 () Bool)

(assert (=> b!6129115 (= e!3735912 e!3735915)))

(declare-fun c!1101762 () Bool)

(assert (=> b!6129115 (= c!1101762 (is-EmptyLang!16072 (regTwo!32656 r!7292)))))

(declare-fun b!6129116 () Bool)

(assert (=> b!6129116 (= e!3735909 (= (head!12665 s!2326) (c!1101550 (regTwo!32656 r!7292))))))

(declare-fun b!6129117 () Bool)

(declare-fun res!2540377 () Bool)

(assert (=> b!6129117 (=> (not res!2540377) (not e!3735909))))

(assert (=> b!6129117 (= res!2540377 (not call!508156))))

(declare-fun b!6129118 () Bool)

(declare-fun res!2540381 () Bool)

(assert (=> b!6129118 (=> res!2540381 e!3735913)))

(assert (=> b!6129118 (= res!2540381 (not (isEmpty!36334 (tail!11750 s!2326))))))

(declare-fun b!6129119 () Bool)

(declare-fun res!2540383 () Bool)

(assert (=> b!6129119 (=> res!2540383 e!3735914)))

(assert (=> b!6129119 (= res!2540383 e!3735909)))

(declare-fun res!2540382 () Bool)

(assert (=> b!6129119 (=> (not res!2540382) (not e!3735909))))

(assert (=> b!6129119 (= res!2540382 lt!2331739)))

(declare-fun d!1920300 () Bool)

(assert (=> d!1920300 e!3735912))

(declare-fun c!1101760 () Bool)

(assert (=> d!1920300 (= c!1101760 (is-EmptyExpr!16072 (regTwo!32656 r!7292)))))

(declare-fun e!3735911 () Bool)

(assert (=> d!1920300 (= lt!2331739 e!3735911)))

(declare-fun c!1101761 () Bool)

(assert (=> d!1920300 (= c!1101761 (isEmpty!36334 s!2326))))

(assert (=> d!1920300 (validRegex!7808 (regTwo!32656 r!7292))))

(assert (=> d!1920300 (= (matchR!8255 (regTwo!32656 r!7292) s!2326) lt!2331739)))

(declare-fun b!6129120 () Bool)

(assert (=> b!6129120 (= e!3735915 (not lt!2331739))))

(declare-fun b!6129121 () Bool)

(declare-fun res!2540378 () Bool)

(assert (=> b!6129121 (=> res!2540378 e!3735914)))

(assert (=> b!6129121 (= res!2540378 (not (is-ElementMatch!16072 (regTwo!32656 r!7292))))))

(assert (=> b!6129121 (= e!3735915 e!3735914)))

(declare-fun b!6129122 () Bool)

(assert (=> b!6129122 (= e!3735912 (= lt!2331739 call!508156))))

(declare-fun b!6129123 () Bool)

(assert (=> b!6129123 (= e!3735911 (nullable!6065 (regTwo!32656 r!7292)))))

(declare-fun b!6129124 () Bool)

(assert (=> b!6129124 (= e!3735911 (matchR!8255 (derivativeStep!4792 (regTwo!32656 r!7292) (head!12665 s!2326)) (tail!11750 s!2326)))))

(assert (= (and d!1920300 c!1101761) b!6129123))

(assert (= (and d!1920300 (not c!1101761)) b!6129124))

(assert (= (and d!1920300 c!1101760) b!6129122))

(assert (= (and d!1920300 (not c!1101760)) b!6129115))

(assert (= (and b!6129115 c!1101762) b!6129120))

(assert (= (and b!6129115 (not c!1101762)) b!6129121))

(assert (= (and b!6129121 (not res!2540378)) b!6129119))

(assert (= (and b!6129119 res!2540382) b!6129117))

(assert (= (and b!6129117 res!2540377) b!6129111))

(assert (= (and b!6129111 res!2540380) b!6129116))

(assert (= (and b!6129119 (not res!2540383)) b!6129112))

(assert (= (and b!6129112 res!2540379) b!6129114))

(assert (= (and b!6129114 (not res!2540384)) b!6129118))

(assert (= (and b!6129118 (not res!2540381)) b!6129113))

(assert (= (or b!6129122 b!6129114 b!6129117) bm!508151))

(assert (=> d!1920300 m!6972830))

(declare-fun m!6973002 () Bool)

(assert (=> d!1920300 m!6973002))

(assert (=> bm!508151 m!6972830))

(assert (=> b!6129118 m!6972836))

(assert (=> b!6129118 m!6972836))

(assert (=> b!6129118 m!6972838))

(assert (=> b!6129113 m!6972840))

(assert (=> b!6129116 m!6972840))

(declare-fun m!6973004 () Bool)

(assert (=> b!6129123 m!6973004))

(assert (=> b!6129124 m!6972840))

(assert (=> b!6129124 m!6972840))

(declare-fun m!6973006 () Bool)

(assert (=> b!6129124 m!6973006))

(assert (=> b!6129124 m!6972836))

(assert (=> b!6129124 m!6973006))

(assert (=> b!6129124 m!6972836))

(declare-fun m!6973008 () Bool)

(assert (=> b!6129124 m!6973008))

(assert (=> b!6129111 m!6972836))

(assert (=> b!6129111 m!6972836))

(assert (=> b!6129111 m!6972838))

(assert (=> b!6128535 d!1920300))

(declare-fun d!1920302 () Bool)

(assert (=> d!1920302 (= (Exists!3142 (ite c!1101668 lambda!333857 lambda!333858)) (choose!45529 (ite c!1101668 lambda!333857 lambda!333858)))))

(declare-fun bs!1520443 () Bool)

(assert (= bs!1520443 d!1920302))

(declare-fun m!6973010 () Bool)

(assert (=> bs!1520443 m!6973010))

(assert (=> bm!508103 d!1920302))

(declare-fun d!1920304 () Bool)

(assert (=> d!1920304 (= (head!12665 s!2326) (h!70841 s!2326))))

(assert (=> b!6128783 d!1920304))

(declare-fun d!1920306 () Bool)

(declare-fun res!2540385 () Bool)

(declare-fun e!3735916 () Bool)

(assert (=> d!1920306 (=> res!2540385 e!3735916)))

(assert (=> d!1920306 (= res!2540385 (is-Nil!64391 (exprs!5956 setElem!41413)))))

(assert (=> d!1920306 (= (forall!15193 (exprs!5956 setElem!41413) lambda!333822) e!3735916)))

(declare-fun b!6129125 () Bool)

(declare-fun e!3735917 () Bool)

(assert (=> b!6129125 (= e!3735916 e!3735917)))

(declare-fun res!2540386 () Bool)

(assert (=> b!6129125 (=> (not res!2540386) (not e!3735917))))

(assert (=> b!6129125 (= res!2540386 (dynLambda!25367 lambda!333822 (h!70839 (exprs!5956 setElem!41413))))))

(declare-fun b!6129126 () Bool)

(assert (=> b!6129126 (= e!3735917 (forall!15193 (t!377982 (exprs!5956 setElem!41413)) lambda!333822))))

(assert (= (and d!1920306 (not res!2540385)) b!6129125))

(assert (= (and b!6129125 res!2540386) b!6129126))

(declare-fun b_lambda!233323 () Bool)

(assert (=> (not b_lambda!233323) (not b!6129125)))

(declare-fun m!6973012 () Bool)

(assert (=> b!6129125 m!6973012))

(declare-fun m!6973014 () Bool)

(assert (=> b!6129126 m!6973014))

(assert (=> d!1920172 d!1920306))

(assert (=> b!6128631 d!1920188))

(declare-fun bs!1520444 () Bool)

(declare-fun d!1920308 () Bool)

(assert (= bs!1520444 (and d!1920308 d!1920256)))

(declare-fun lambda!333878 () Int)

(assert (=> bs!1520444 (= lambda!333878 lambda!333865)))

(declare-fun bs!1520445 () Bool)

(assert (= bs!1520445 (and d!1920308 d!1920236)))

(assert (=> bs!1520445 (= lambda!333878 lambda!333848)))

(declare-fun bs!1520446 () Bool)

(assert (= bs!1520446 (and d!1920308 d!1920228)))

(assert (=> bs!1520446 (= lambda!333878 lambda!333843)))

(declare-fun bs!1520447 () Bool)

(assert (= bs!1520447 (and d!1920308 d!1920172)))

(assert (=> bs!1520447 (= lambda!333878 lambda!333822)))

(declare-fun bs!1520448 () Bool)

(assert (= bs!1520448 (and d!1920308 d!1920262)))

(assert (=> bs!1520448 (= lambda!333878 lambda!333866)))

(declare-fun bs!1520449 () Bool)

(assert (= bs!1520449 (and d!1920308 d!1920188)))

(assert (=> bs!1520449 (= lambda!333878 lambda!333825)))

(declare-fun lt!2331740 () List!64515)

(assert (=> d!1920308 (forall!15193 lt!2331740 lambda!333878)))

(declare-fun e!3735918 () List!64515)

(assert (=> d!1920308 (= lt!2331740 e!3735918)))

(declare-fun c!1101763 () Bool)

(assert (=> d!1920308 (= c!1101763 (is-Cons!64392 (t!377983 zl!343)))))

(assert (=> d!1920308 (= (unfocusZipperList!1493 (t!377983 zl!343)) lt!2331740)))

(declare-fun b!6129127 () Bool)

(assert (=> b!6129127 (= e!3735918 (Cons!64391 (generalisedConcat!1669 (exprs!5956 (h!70840 (t!377983 zl!343)))) (unfocusZipperList!1493 (t!377983 (t!377983 zl!343)))))))

(declare-fun b!6129128 () Bool)

(assert (=> b!6129128 (= e!3735918 Nil!64391)))

(assert (= (and d!1920308 c!1101763) b!6129127))

(assert (= (and d!1920308 (not c!1101763)) b!6129128))

(declare-fun m!6973016 () Bool)

(assert (=> d!1920308 m!6973016))

(declare-fun m!6973018 () Bool)

(assert (=> b!6129127 m!6973018))

(declare-fun m!6973020 () Bool)

(assert (=> b!6129127 m!6973020))

(assert (=> b!6128631 d!1920308))

(declare-fun bs!1520450 () Bool)

(declare-fun d!1920310 () Bool)

(assert (= bs!1520450 (and d!1920310 d!1920256)))

(declare-fun lambda!333879 () Int)

(assert (=> bs!1520450 (= lambda!333879 lambda!333865)))

(declare-fun bs!1520451 () Bool)

(assert (= bs!1520451 (and d!1920310 d!1920236)))

(assert (=> bs!1520451 (= lambda!333879 lambda!333848)))

(declare-fun bs!1520452 () Bool)

(assert (= bs!1520452 (and d!1920310 d!1920308)))

(assert (=> bs!1520452 (= lambda!333879 lambda!333878)))

(declare-fun bs!1520453 () Bool)

(assert (= bs!1520453 (and d!1920310 d!1920228)))

(assert (=> bs!1520453 (= lambda!333879 lambda!333843)))

(declare-fun bs!1520454 () Bool)

(assert (= bs!1520454 (and d!1920310 d!1920172)))

(assert (=> bs!1520454 (= lambda!333879 lambda!333822)))

(declare-fun bs!1520455 () Bool)

(assert (= bs!1520455 (and d!1920310 d!1920262)))

(assert (=> bs!1520455 (= lambda!333879 lambda!333866)))

(declare-fun bs!1520456 () Bool)

(assert (= bs!1520456 (and d!1920310 d!1920188)))

(assert (=> bs!1520456 (= lambda!333879 lambda!333825)))

(assert (=> d!1920310 (= (inv!83428 (h!70840 (t!377983 zl!343))) (forall!15193 (exprs!5956 (h!70840 (t!377983 zl!343))) lambda!333879))))

(declare-fun bs!1520457 () Bool)

(assert (= bs!1520457 d!1920310))

(declare-fun m!6973022 () Bool)

(assert (=> bs!1520457 m!6973022))

(assert (=> b!6128938 d!1920310))

(assert (=> b!6128364 d!1920170))

(declare-fun b!6129129 () Bool)

(declare-fun e!3735924 () Bool)

(declare-fun e!3735923 () Bool)

(assert (=> b!6129129 (= e!3735924 e!3735923)))

(declare-fun res!2540387 () Bool)

(assert (=> b!6129129 (=> (not res!2540387) (not e!3735923))))

(declare-fun call!508159 () Bool)

(assert (=> b!6129129 (= res!2540387 call!508159)))

(declare-fun b!6129130 () Bool)

(declare-fun e!3735920 () Bool)

(declare-fun call!508158 () Bool)

(assert (=> b!6129130 (= e!3735920 call!508158)))

(declare-fun b!6129131 () Bool)

(declare-fun call!508157 () Bool)

(assert (=> b!6129131 (= e!3735923 call!508157)))

(declare-fun c!1101765 () Bool)

(declare-fun bm!508152 () Bool)

(assert (=> bm!508152 (= call!508157 (validRegex!7808 (ite c!1101765 (regTwo!32657 (ite c!1101714 (reg!16401 r!7292) (ite c!1101715 (regOne!32657 r!7292) (regOne!32656 r!7292)))) (regTwo!32656 (ite c!1101714 (reg!16401 r!7292) (ite c!1101715 (regOne!32657 r!7292) (regOne!32656 r!7292)))))))))

(declare-fun bm!508153 () Bool)

(assert (=> bm!508153 (= call!508159 call!508158)))

(declare-fun b!6129133 () Bool)

(declare-fun e!3735922 () Bool)

(declare-fun e!3735921 () Bool)

(assert (=> b!6129133 (= e!3735922 e!3735921)))

(declare-fun c!1101764 () Bool)

(assert (=> b!6129133 (= c!1101764 (is-Star!16072 (ite c!1101714 (reg!16401 r!7292) (ite c!1101715 (regOne!32657 r!7292) (regOne!32656 r!7292)))))))

(declare-fun b!6129134 () Bool)

(declare-fun e!3735925 () Bool)

(assert (=> b!6129134 (= e!3735925 call!508157)))

(declare-fun b!6129135 () Bool)

(declare-fun res!2540391 () Bool)

(assert (=> b!6129135 (=> res!2540391 e!3735924)))

(assert (=> b!6129135 (= res!2540391 (not (is-Concat!24917 (ite c!1101714 (reg!16401 r!7292) (ite c!1101715 (regOne!32657 r!7292) (regOne!32656 r!7292))))))))

(declare-fun e!3735919 () Bool)

(assert (=> b!6129135 (= e!3735919 e!3735924)))

(declare-fun b!6129136 () Bool)

(assert (=> b!6129136 (= e!3735921 e!3735919)))

(assert (=> b!6129136 (= c!1101765 (is-Union!16072 (ite c!1101714 (reg!16401 r!7292) (ite c!1101715 (regOne!32657 r!7292) (regOne!32656 r!7292)))))))

(declare-fun b!6129137 () Bool)

(assert (=> b!6129137 (= e!3735921 e!3735920)))

(declare-fun res!2540388 () Bool)

(assert (=> b!6129137 (= res!2540388 (not (nullable!6065 (reg!16401 (ite c!1101714 (reg!16401 r!7292) (ite c!1101715 (regOne!32657 r!7292) (regOne!32656 r!7292)))))))))

(assert (=> b!6129137 (=> (not res!2540388) (not e!3735920))))

(declare-fun bm!508154 () Bool)

(assert (=> bm!508154 (= call!508158 (validRegex!7808 (ite c!1101764 (reg!16401 (ite c!1101714 (reg!16401 r!7292) (ite c!1101715 (regOne!32657 r!7292) (regOne!32656 r!7292)))) (ite c!1101765 (regOne!32657 (ite c!1101714 (reg!16401 r!7292) (ite c!1101715 (regOne!32657 r!7292) (regOne!32656 r!7292)))) (regOne!32656 (ite c!1101714 (reg!16401 r!7292) (ite c!1101715 (regOne!32657 r!7292) (regOne!32656 r!7292))))))))))

(declare-fun b!6129132 () Bool)

(declare-fun res!2540390 () Bool)

(assert (=> b!6129132 (=> (not res!2540390) (not e!3735925))))

(assert (=> b!6129132 (= res!2540390 call!508159)))

(assert (=> b!6129132 (= e!3735919 e!3735925)))

(declare-fun d!1920312 () Bool)

(declare-fun res!2540389 () Bool)

(assert (=> d!1920312 (=> res!2540389 e!3735922)))

(assert (=> d!1920312 (= res!2540389 (is-ElementMatch!16072 (ite c!1101714 (reg!16401 r!7292) (ite c!1101715 (regOne!32657 r!7292) (regOne!32656 r!7292)))))))

(assert (=> d!1920312 (= (validRegex!7808 (ite c!1101714 (reg!16401 r!7292) (ite c!1101715 (regOne!32657 r!7292) (regOne!32656 r!7292)))) e!3735922)))

(assert (= (and d!1920312 (not res!2540389)) b!6129133))

(assert (= (and b!6129133 c!1101764) b!6129137))

(assert (= (and b!6129133 (not c!1101764)) b!6129136))

(assert (= (and b!6129137 res!2540388) b!6129130))

(assert (= (and b!6129136 c!1101765) b!6129132))

(assert (= (and b!6129136 (not c!1101765)) b!6129135))

(assert (= (and b!6129132 res!2540390) b!6129134))

(assert (= (and b!6129135 (not res!2540391)) b!6129129))

(assert (= (and b!6129129 res!2540387) b!6129131))

(assert (= (or b!6129134 b!6129131) bm!508152))

(assert (= (or b!6129132 b!6129129) bm!508153))

(assert (= (or b!6129130 bm!508153) bm!508154))

(declare-fun m!6973024 () Bool)

(assert (=> bm!508152 m!6973024))

(declare-fun m!6973026 () Bool)

(assert (=> b!6129137 m!6973026))

(declare-fun m!6973028 () Bool)

(assert (=> bm!508154 m!6973028))

(assert (=> bm!508136 d!1920312))

(declare-fun d!1920314 () Bool)

(declare-fun c!1101768 () Bool)

(assert (=> d!1920314 (= c!1101768 (is-Nil!64392 lt!2331660))))

(declare-fun e!3735928 () (Set Context!10912))

(assert (=> d!1920314 (= (content!11968 lt!2331660) e!3735928)))

(declare-fun b!6129142 () Bool)

(assert (=> b!6129142 (= e!3735928 (as set.empty (Set Context!10912)))))

(declare-fun b!6129143 () Bool)

(assert (=> b!6129143 (= e!3735928 (set.union (set.insert (h!70840 lt!2331660) (as set.empty (Set Context!10912))) (content!11968 (t!377983 lt!2331660))))))

(assert (= (and d!1920314 c!1101768) b!6129142))

(assert (= (and d!1920314 (not c!1101768)) b!6129143))

(declare-fun m!6973030 () Bool)

(assert (=> b!6129143 m!6973030))

(declare-fun m!6973032 () Bool)

(assert (=> b!6129143 m!6973032))

(assert (=> b!6128375 d!1920314))

(declare-fun d!1920316 () Bool)

(assert (=> d!1920316 (= (isConcat!1012 lt!2331666) (is-Concat!24917 lt!2331666))))

(assert (=> b!6128482 d!1920316))

(declare-fun d!1920318 () Bool)

(assert (=> d!1920318 true))

(declare-fun setRes!41425 () Bool)

(assert (=> d!1920318 setRes!41425))

(declare-fun condSetEmpty!41425 () Bool)

(declare-fun res!2540394 () (Set Context!10912))

(assert (=> d!1920318 (= condSetEmpty!41425 (= res!2540394 (as set.empty (Set Context!10912))))))

(assert (=> d!1920318 (= (choose!45527 z!1189 lambda!333808) res!2540394)))

(declare-fun setIsEmpty!41425 () Bool)

(assert (=> setIsEmpty!41425 setRes!41425))

(declare-fun e!3735931 () Bool)

(declare-fun setElem!41425 () Context!10912)

(declare-fun tp!1712876 () Bool)

(declare-fun setNonEmpty!41425 () Bool)

(assert (=> setNonEmpty!41425 (= setRes!41425 (and tp!1712876 (inv!83428 setElem!41425) e!3735931))))

(declare-fun setRest!41425 () (Set Context!10912))

(assert (=> setNonEmpty!41425 (= res!2540394 (set.union (set.insert setElem!41425 (as set.empty (Set Context!10912))) setRest!41425))))

(declare-fun b!6129146 () Bool)

(declare-fun tp!1712875 () Bool)

(assert (=> b!6129146 (= e!3735931 tp!1712875)))

(assert (= (and d!1920318 condSetEmpty!41425) setIsEmpty!41425))

(assert (= (and d!1920318 (not condSetEmpty!41425)) setNonEmpty!41425))

(assert (= setNonEmpty!41425 b!6129146))

(declare-fun m!6973034 () Bool)

(assert (=> setNonEmpty!41425 m!6973034))

(assert (=> d!1920174 d!1920318))

(declare-fun d!1920320 () Bool)

(assert (=> d!1920320 (= (isEmptyExpr!1489 lt!2331666) (is-EmptyExpr!16072 lt!2331666))))

(assert (=> b!6128484 d!1920320))

(declare-fun d!1920322 () Bool)

(declare-fun lambda!333882 () Int)

(declare-fun exists!2419 ((Set Context!10912) Int) Bool)

(assert (=> d!1920322 (= (nullableZipper!1853 lt!2331618) (exists!2419 lt!2331618 lambda!333882))))

(declare-fun bs!1520458 () Bool)

(assert (= bs!1520458 d!1920322))

(declare-fun m!6973036 () Bool)

(assert (=> bs!1520458 m!6973036))

(assert (=> b!6128369 d!1920322))

(declare-fun d!1920324 () Bool)

(declare-fun res!2540395 () Bool)

(declare-fun e!3735932 () Bool)

(assert (=> d!1920324 (=> res!2540395 e!3735932)))

(assert (=> d!1920324 (= res!2540395 (is-Nil!64391 (exprs!5956 lt!2331616)))))

(assert (=> d!1920324 (= (forall!15193 (exprs!5956 lt!2331616) lambda!333866) e!3735932)))

(declare-fun b!6129147 () Bool)

(declare-fun e!3735933 () Bool)

(assert (=> b!6129147 (= e!3735932 e!3735933)))

(declare-fun res!2540396 () Bool)

(assert (=> b!6129147 (=> (not res!2540396) (not e!3735933))))

(assert (=> b!6129147 (= res!2540396 (dynLambda!25367 lambda!333866 (h!70839 (exprs!5956 lt!2331616))))))

(declare-fun b!6129148 () Bool)

(assert (=> b!6129148 (= e!3735933 (forall!15193 (t!377982 (exprs!5956 lt!2331616)) lambda!333866))))

(assert (= (and d!1920324 (not res!2540395)) b!6129147))

(assert (= (and b!6129147 res!2540396) b!6129148))

(declare-fun b_lambda!233325 () Bool)

(assert (=> (not b_lambda!233325) (not b!6129147)))

(declare-fun m!6973038 () Bool)

(assert (=> b!6129147 m!6973038))

(declare-fun m!6973040 () Bool)

(assert (=> b!6129148 m!6973040))

(assert (=> d!1920262 d!1920324))

(declare-fun d!1920326 () Bool)

(assert (=> d!1920326 (= ($colon$colon!1949 (exprs!5956 lt!2331616) (ite (or c!1101699 c!1101697) (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (regTwo!32657 (regOne!32656 r!7292)))) (Cons!64391 (ite (or c!1101699 c!1101697) (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (regTwo!32657 (regOne!32656 r!7292))) (exprs!5956 lt!2331616)))))

(assert (=> bm!508120 d!1920326))

(declare-fun d!1920328 () Bool)

(assert (=> d!1920328 (= (isEmpty!36334 (t!377984 s!2326)) (is-Nil!64393 (t!377984 s!2326)))))

(assert (=> d!1920162 d!1920328))

(declare-fun bm!508155 () Bool)

(declare-fun call!508163 () (Set Context!10912))

(declare-fun call!508165 () (Set Context!10912))

(assert (=> bm!508155 (= call!508163 call!508165)))

(declare-fun bm!508156 () Bool)

(declare-fun c!1101772 () Bool)

(declare-fun call!508160 () List!64515)

(declare-fun c!1101774 () Bool)

(assert (=> bm!508156 (= call!508160 ($colon$colon!1949 (exprs!5956 (ite c!1101691 lt!2331616 (Context!10913 call!508118))) (ite (or c!1101774 c!1101772) (regTwo!32656 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292))))) (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292)))))))))

(declare-fun b!6129149 () Bool)

(declare-fun e!3735938 () (Set Context!10912))

(declare-fun call!508161 () (Set Context!10912))

(assert (=> b!6129149 (= e!3735938 (set.union call!508161 call!508163))))

(declare-fun bm!508157 () Bool)

(declare-fun c!1101771 () Bool)

(assert (=> bm!508157 (= call!508161 (derivationStepZipperDown!1320 (ite c!1101771 (regOne!32657 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292))))) (regOne!32656 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292)))))) (ite c!1101771 (ite c!1101691 lt!2331616 (Context!10913 call!508118)) (Context!10913 call!508160)) (h!70841 s!2326)))))

(declare-fun b!6129151 () Bool)

(declare-fun e!3735934 () (Set Context!10912))

(assert (=> b!6129151 (= e!3735934 (as set.empty (Set Context!10912)))))

(declare-fun call!508162 () List!64515)

(declare-fun bm!508158 () Bool)

(assert (=> bm!508158 (= call!508165 (derivationStepZipperDown!1320 (ite c!1101771 (regTwo!32657 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292))))) (ite c!1101774 (regTwo!32656 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292))))) (ite c!1101772 (regOne!32656 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292))))) (reg!16401 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292)))))))) (ite (or c!1101771 c!1101774) (ite c!1101691 lt!2331616 (Context!10913 call!508118)) (Context!10913 call!508162)) (h!70841 s!2326)))))

(declare-fun b!6129152 () Bool)

(declare-fun call!508164 () (Set Context!10912))

(assert (=> b!6129152 (= e!3735934 call!508164)))

(declare-fun bm!508159 () Bool)

(assert (=> bm!508159 (= call!508162 call!508160)))

(declare-fun b!6129153 () Bool)

(declare-fun e!3735935 () Bool)

(assert (=> b!6129153 (= c!1101774 e!3735935)))

(declare-fun res!2540397 () Bool)

(assert (=> b!6129153 (=> (not res!2540397) (not e!3735935))))

(assert (=> b!6129153 (= res!2540397 (is-Concat!24917 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292))))))))

(declare-fun e!3735939 () (Set Context!10912))

(assert (=> b!6129153 (= e!3735939 e!3735938)))

(declare-fun b!6129154 () Bool)

(declare-fun e!3735937 () (Set Context!10912))

(assert (=> b!6129154 (= e!3735937 (set.insert (ite c!1101691 lt!2331616 (Context!10913 call!508118)) (as set.empty (Set Context!10912))))))

(declare-fun b!6129155 () Bool)

(declare-fun c!1101775 () Bool)

(assert (=> b!6129155 (= c!1101775 (is-Star!16072 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292))))))))

(declare-fun e!3735936 () (Set Context!10912))

(assert (=> b!6129155 (= e!3735936 e!3735934)))

(declare-fun c!1101773 () Bool)

(declare-fun d!1920330 () Bool)

(assert (=> d!1920330 (= c!1101773 (and (is-ElementMatch!16072 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292))))) (= (c!1101550 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292))))) (h!70841 s!2326))))))

(assert (=> d!1920330 (= (derivationStepZipperDown!1320 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292)))) (ite c!1101691 lt!2331616 (Context!10913 call!508118)) (h!70841 s!2326)) e!3735937)))

(declare-fun b!6129150 () Bool)

(assert (=> b!6129150 (= e!3735935 (nullable!6065 (regOne!32656 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292)))))))))

(declare-fun b!6129156 () Bool)

(assert (=> b!6129156 (= e!3735938 e!3735936)))

(assert (=> b!6129156 (= c!1101772 (is-Concat!24917 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292))))))))

(declare-fun b!6129157 () Bool)

(assert (=> b!6129157 (= e!3735936 call!508164)))

(declare-fun bm!508160 () Bool)

(assert (=> bm!508160 (= call!508164 call!508163)))

(declare-fun b!6129158 () Bool)

(assert (=> b!6129158 (= e!3735939 (set.union call!508161 call!508165))))

(declare-fun b!6129159 () Bool)

(assert (=> b!6129159 (= e!3735937 e!3735939)))

(assert (=> b!6129159 (= c!1101771 (is-Union!16072 (ite c!1101691 (regOne!32657 (regOne!32657 (regOne!32656 r!7292))) (regOne!32656 (regOne!32657 (regOne!32656 r!7292))))))))

(assert (= (and d!1920330 c!1101773) b!6129154))

(assert (= (and d!1920330 (not c!1101773)) b!6129159))

(assert (= (and b!6129159 c!1101771) b!6129158))

(assert (= (and b!6129159 (not c!1101771)) b!6129153))

(assert (= (and b!6129153 res!2540397) b!6129150))

(assert (= (and b!6129153 c!1101774) b!6129149))

(assert (= (and b!6129153 (not c!1101774)) b!6129156))

(assert (= (and b!6129156 c!1101772) b!6129157))

(assert (= (and b!6129156 (not c!1101772)) b!6129155))

(assert (= (and b!6129155 c!1101775) b!6129152))

(assert (= (and b!6129155 (not c!1101775)) b!6129151))

(assert (= (or b!6129157 b!6129152) bm!508159))

(assert (= (or b!6129157 b!6129152) bm!508160))

(assert (= (or b!6129149 bm!508159) bm!508156))

(assert (= (or b!6129149 bm!508160) bm!508155))

(assert (= (or b!6129158 bm!508155) bm!508158))

(assert (= (or b!6129158 b!6129149) bm!508157))

(declare-fun m!6973042 () Bool)

(assert (=> bm!508156 m!6973042))

(declare-fun m!6973044 () Bool)

(assert (=> bm!508157 m!6973044))

(declare-fun m!6973046 () Bool)

(assert (=> b!6129154 m!6973046))

(declare-fun m!6973048 () Bool)

(assert (=> bm!508158 m!6973048))

(declare-fun m!6973050 () Bool)

(assert (=> b!6129150 m!6973050))

(assert (=> bm!508115 d!1920330))

(assert (=> d!1920160 d!1920164))

(assert (=> d!1920160 d!1920162))

(declare-fun e!3735942 () Bool)

(declare-fun d!1920332 () Bool)

(assert (=> d!1920332 (= (matchZipper!2084 (set.union lt!2331618 lt!2331615) (t!377984 s!2326)) e!3735942)))

(declare-fun res!2540400 () Bool)

(assert (=> d!1920332 (=> res!2540400 e!3735942)))

(assert (=> d!1920332 (= res!2540400 (matchZipper!2084 lt!2331618 (t!377984 s!2326)))))

(assert (=> d!1920332 true))

(declare-fun _$48!1602 () Unit!157443)

(assert (=> d!1920332 (= (choose!45525 lt!2331618 lt!2331615 (t!377984 s!2326)) _$48!1602)))

(declare-fun b!6129162 () Bool)

(assert (=> b!6129162 (= e!3735942 (matchZipper!2084 lt!2331615 (t!377984 s!2326)))))

(assert (= (and d!1920332 (not res!2540400)) b!6129162))

(assert (=> d!1920332 m!6972480))

(assert (=> d!1920332 m!6972478))

(assert (=> b!6129162 m!6972482))

(assert (=> d!1920160 d!1920332))

(declare-fun bm!508161 () Bool)

(declare-fun call!508169 () (Set Context!10912))

(declare-fun call!508171 () (Set Context!10912))

(assert (=> bm!508161 (= call!508169 call!508171)))

(declare-fun call!508166 () List!64515)

(declare-fun c!1101779 () Bool)

(declare-fun c!1101777 () Bool)

(declare-fun bm!508162 () Bool)

(assert (=> bm!508162 (= call!508166 ($colon$colon!1949 (exprs!5956 (ite (or c!1101579 c!1101582) lt!2331616 (Context!10913 call!508064))) (ite (or c!1101779 c!1101777) (regTwo!32656 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343)))))))) (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343))))))))))))

(declare-fun b!6129163 () Bool)

(declare-fun e!3735947 () (Set Context!10912))

(declare-fun call!508167 () (Set Context!10912))

(assert (=> b!6129163 (= e!3735947 (set.union call!508167 call!508169))))

(declare-fun bm!508163 () Bool)

(declare-fun c!1101776 () Bool)

(assert (=> bm!508163 (= call!508167 (derivationStepZipperDown!1320 (ite c!1101776 (regOne!32657 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343)))))))) (regOne!32656 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343))))))))) (ite c!1101776 (ite (or c!1101579 c!1101582) lt!2331616 (Context!10913 call!508064)) (Context!10913 call!508166)) (h!70841 s!2326)))))

(declare-fun b!6129165 () Bool)

(declare-fun e!3735943 () (Set Context!10912))

(assert (=> b!6129165 (= e!3735943 (as set.empty (Set Context!10912)))))

(declare-fun call!508168 () List!64515)

(declare-fun bm!508164 () Bool)

(assert (=> bm!508164 (= call!508171 (derivationStepZipperDown!1320 (ite c!1101776 (regTwo!32657 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343)))))))) (ite c!1101779 (regTwo!32656 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343)))))))) (ite c!1101777 (regOne!32656 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343)))))))) (reg!16401 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343))))))))))) (ite (or c!1101776 c!1101779) (ite (or c!1101579 c!1101582) lt!2331616 (Context!10913 call!508064)) (Context!10913 call!508168)) (h!70841 s!2326)))))

(declare-fun b!6129166 () Bool)

(declare-fun call!508170 () (Set Context!10912))

(assert (=> b!6129166 (= e!3735943 call!508170)))

(declare-fun bm!508165 () Bool)

(assert (=> bm!508165 (= call!508168 call!508166)))

(declare-fun b!6129167 () Bool)

(declare-fun e!3735944 () Bool)

(assert (=> b!6129167 (= c!1101779 e!3735944)))

(declare-fun res!2540401 () Bool)

(assert (=> b!6129167 (=> (not res!2540401) (not e!3735944))))

(assert (=> b!6129167 (= res!2540401 (is-Concat!24917 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343)))))))))))

(declare-fun e!3735948 () (Set Context!10912))

(assert (=> b!6129167 (= e!3735948 e!3735947)))

(declare-fun b!6129168 () Bool)

(declare-fun e!3735946 () (Set Context!10912))

(assert (=> b!6129168 (= e!3735946 (set.insert (ite (or c!1101579 c!1101582) lt!2331616 (Context!10913 call!508064)) (as set.empty (Set Context!10912))))))

(declare-fun b!6129169 () Bool)

(declare-fun c!1101780 () Bool)

(assert (=> b!6129169 (= c!1101780 (is-Star!16072 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343)))))))))))

(declare-fun e!3735945 () (Set Context!10912))

(assert (=> b!6129169 (= e!3735945 e!3735943)))

(declare-fun d!1920334 () Bool)

(declare-fun c!1101778 () Bool)

(assert (=> d!1920334 (= c!1101778 (and (is-ElementMatch!16072 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343)))))))) (= (c!1101550 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343)))))))) (h!70841 s!2326))))))

(assert (=> d!1920334 (= (derivationStepZipperDown!1320 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343))))))) (ite (or c!1101579 c!1101582) lt!2331616 (Context!10913 call!508064)) (h!70841 s!2326)) e!3735946)))

(declare-fun b!6129164 () Bool)

(assert (=> b!6129164 (= e!3735944 (nullable!6065 (regOne!32656 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343))))))))))))

(declare-fun b!6129170 () Bool)

(assert (=> b!6129170 (= e!3735947 e!3735945)))

(assert (=> b!6129170 (= c!1101777 (is-Concat!24917 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343)))))))))))

(declare-fun b!6129171 () Bool)

(assert (=> b!6129171 (= e!3735945 call!508170)))

(declare-fun bm!508166 () Bool)

(assert (=> bm!508166 (= call!508170 call!508169)))

(declare-fun b!6129172 () Bool)

(assert (=> b!6129172 (= e!3735948 (set.union call!508167 call!508171))))

(declare-fun b!6129173 () Bool)

(assert (=> b!6129173 (= e!3735946 e!3735948)))

(assert (=> b!6129173 (= c!1101776 (is-Union!16072 (ite c!1101579 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101582 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101580 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343)))))))))))

(assert (= (and d!1920334 c!1101778) b!6129168))

(assert (= (and d!1920334 (not c!1101778)) b!6129173))

(assert (= (and b!6129173 c!1101776) b!6129172))

(assert (= (and b!6129173 (not c!1101776)) b!6129167))

(assert (= (and b!6129167 res!2540401) b!6129164))

(assert (= (and b!6129167 c!1101779) b!6129163))

(assert (= (and b!6129167 (not c!1101779)) b!6129170))

(assert (= (and b!6129170 c!1101777) b!6129171))

(assert (= (and b!6129170 (not c!1101777)) b!6129169))

(assert (= (and b!6129169 c!1101780) b!6129166))

(assert (= (and b!6129169 (not c!1101780)) b!6129165))

(assert (= (or b!6129171 b!6129166) bm!508165))

(assert (= (or b!6129171 b!6129166) bm!508166))

(assert (= (or b!6129163 bm!508165) bm!508162))

(assert (= (or b!6129163 bm!508166) bm!508161))

(assert (= (or b!6129172 bm!508161) bm!508164))

(assert (= (or b!6129172 b!6129163) bm!508163))

(declare-fun m!6973052 () Bool)

(assert (=> bm!508162 m!6973052))

(declare-fun m!6973054 () Bool)

(assert (=> bm!508163 m!6973054))

(declare-fun m!6973056 () Bool)

(assert (=> b!6129168 m!6973056))

(declare-fun m!6973058 () Bool)

(assert (=> bm!508164 m!6973058))

(declare-fun m!6973060 () Bool)

(assert (=> b!6129164 m!6973060))

(assert (=> bm!508060 d!1920334))

(declare-fun d!1920336 () Bool)

(assert (=> d!1920336 (= (nullable!6065 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292)))) (nullableFct!2029 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292)))))))

(declare-fun bs!1520459 () Bool)

(assert (= bs!1520459 d!1920336))

(declare-fun m!6973062 () Bool)

(assert (=> bs!1520459 m!6973062))

(assert (=> b!6128804 d!1920336))

(declare-fun b!6129183 () Bool)

(declare-fun e!3735953 () List!64517)

(assert (=> b!6129183 (= e!3735953 (Cons!64393 (h!70841 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393))) (++!14158 (t!377984 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393))) (t!377984 s!2326))))))

(declare-fun d!1920338 () Bool)

(declare-fun e!3735954 () Bool)

(assert (=> d!1920338 e!3735954))

(declare-fun res!2540407 () Bool)

(assert (=> d!1920338 (=> (not res!2540407) (not e!3735954))))

(declare-fun lt!2331743 () List!64517)

(declare-fun content!11970 (List!64517) (Set C!32414))

(assert (=> d!1920338 (= res!2540407 (= (content!11970 lt!2331743) (set.union (content!11970 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393))) (content!11970 (t!377984 s!2326)))))))

(assert (=> d!1920338 (= lt!2331743 e!3735953)))

(declare-fun c!1101783 () Bool)

(assert (=> d!1920338 (= c!1101783 (is-Nil!64393 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393))))))

(assert (=> d!1920338 (= (++!14158 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393)) (t!377984 s!2326)) lt!2331743)))

(declare-fun b!6129182 () Bool)

(assert (=> b!6129182 (= e!3735953 (t!377984 s!2326))))

(declare-fun b!6129185 () Bool)

(assert (=> b!6129185 (= e!3735954 (or (not (= (t!377984 s!2326) Nil!64393)) (= lt!2331743 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393)))))))

(declare-fun b!6129184 () Bool)

(declare-fun res!2540406 () Bool)

(assert (=> b!6129184 (=> (not res!2540406) (not e!3735954))))

(declare-fun size!40215 (List!64517) Int)

(assert (=> b!6129184 (= res!2540406 (= (size!40215 lt!2331743) (+ (size!40215 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393))) (size!40215 (t!377984 s!2326)))))))

(assert (= (and d!1920338 c!1101783) b!6129182))

(assert (= (and d!1920338 (not c!1101783)) b!6129183))

(assert (= (and d!1920338 res!2540407) b!6129184))

(assert (= (and b!6129184 res!2540406) b!6129185))

(declare-fun m!6973064 () Bool)

(assert (=> b!6129183 m!6973064))

(declare-fun m!6973066 () Bool)

(assert (=> d!1920338 m!6973066))

(assert (=> d!1920338 m!6972704))

(declare-fun m!6973068 () Bool)

(assert (=> d!1920338 m!6973068))

(declare-fun m!6973070 () Bool)

(assert (=> d!1920338 m!6973070))

(declare-fun m!6973072 () Bool)

(assert (=> b!6129184 m!6973072))

(assert (=> b!6129184 m!6972704))

(declare-fun m!6973074 () Bool)

(assert (=> b!6129184 m!6973074))

(declare-fun m!6973076 () Bool)

(assert (=> b!6129184 m!6973076))

(assert (=> b!6128537 d!1920338))

(declare-fun b!6129187 () Bool)

(declare-fun e!3735955 () List!64517)

(assert (=> b!6129187 (= e!3735955 (Cons!64393 (h!70841 Nil!64393) (++!14158 (t!377984 Nil!64393) (Cons!64393 (h!70841 s!2326) Nil!64393))))))

(declare-fun d!1920340 () Bool)

(declare-fun e!3735956 () Bool)

(assert (=> d!1920340 e!3735956))

(declare-fun res!2540409 () Bool)

(assert (=> d!1920340 (=> (not res!2540409) (not e!3735956))))

(declare-fun lt!2331744 () List!64517)

(assert (=> d!1920340 (= res!2540409 (= (content!11970 lt!2331744) (set.union (content!11970 Nil!64393) (content!11970 (Cons!64393 (h!70841 s!2326) Nil!64393)))))))

(assert (=> d!1920340 (= lt!2331744 e!3735955)))

(declare-fun c!1101784 () Bool)

(assert (=> d!1920340 (= c!1101784 (is-Nil!64393 Nil!64393))))

(assert (=> d!1920340 (= (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393)) lt!2331744)))

(declare-fun b!6129186 () Bool)

(assert (=> b!6129186 (= e!3735955 (Cons!64393 (h!70841 s!2326) Nil!64393))))

(declare-fun b!6129189 () Bool)

(assert (=> b!6129189 (= e!3735956 (or (not (= (Cons!64393 (h!70841 s!2326) Nil!64393) Nil!64393)) (= lt!2331744 Nil!64393)))))

(declare-fun b!6129188 () Bool)

(declare-fun res!2540408 () Bool)

(assert (=> b!6129188 (=> (not res!2540408) (not e!3735956))))

(assert (=> b!6129188 (= res!2540408 (= (size!40215 lt!2331744) (+ (size!40215 Nil!64393) (size!40215 (Cons!64393 (h!70841 s!2326) Nil!64393)))))))

(assert (= (and d!1920340 c!1101784) b!6129186))

(assert (= (and d!1920340 (not c!1101784)) b!6129187))

(assert (= (and d!1920340 res!2540409) b!6129188))

(assert (= (and b!6129188 res!2540408) b!6129189))

(declare-fun m!6973078 () Bool)

(assert (=> b!6129187 m!6973078))

(declare-fun m!6973080 () Bool)

(assert (=> d!1920340 m!6973080))

(declare-fun m!6973082 () Bool)

(assert (=> d!1920340 m!6973082))

(declare-fun m!6973084 () Bool)

(assert (=> d!1920340 m!6973084))

(declare-fun m!6973086 () Bool)

(assert (=> b!6129188 m!6973086))

(declare-fun m!6973088 () Bool)

(assert (=> b!6129188 m!6973088))

(declare-fun m!6973090 () Bool)

(assert (=> b!6129188 m!6973090))

(assert (=> b!6128537 d!1920340))

(declare-fun d!1920342 () Bool)

(assert (=> d!1920342 (= (++!14158 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393)) (t!377984 s!2326)) s!2326)))

(declare-fun lt!2331747 () Unit!157443)

(declare-fun choose!45541 (List!64517 C!32414 List!64517 List!64517) Unit!157443)

(assert (=> d!1920342 (= lt!2331747 (choose!45541 Nil!64393 (h!70841 s!2326) (t!377984 s!2326) s!2326))))

(assert (=> d!1920342 (= (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) (t!377984 s!2326))) s!2326)))

(assert (=> d!1920342 (= (lemmaMoveElementToOtherListKeepsConcatEq!2253 Nil!64393 (h!70841 s!2326) (t!377984 s!2326) s!2326) lt!2331747)))

(declare-fun bs!1520460 () Bool)

(assert (= bs!1520460 d!1920342))

(assert (=> bs!1520460 m!6972704))

(assert (=> bs!1520460 m!6972704))

(assert (=> bs!1520460 m!6972706))

(declare-fun m!6973092 () Bool)

(assert (=> bs!1520460 m!6973092))

(declare-fun m!6973094 () Bool)

(assert (=> bs!1520460 m!6973094))

(assert (=> b!6128537 d!1920342))

(declare-fun b!6129190 () Bool)

(declare-fun res!2540413 () Bool)

(declare-fun e!3735957 () Bool)

(assert (=> b!6129190 (=> (not res!2540413) (not e!3735957))))

(declare-fun lt!2331748 () Option!15963)

(assert (=> b!6129190 (= res!2540413 (matchR!8255 (regTwo!32656 r!7292) (_2!36354 (get!22210 lt!2331748))))))

(declare-fun b!6129191 () Bool)

(declare-fun e!3735959 () Bool)

(assert (=> b!6129191 (= e!3735959 (matchR!8255 (regTwo!32656 r!7292) (t!377984 s!2326)))))

(declare-fun b!6129192 () Bool)

(assert (=> b!6129192 (= e!3735957 (= (++!14158 (_1!36354 (get!22210 lt!2331748)) (_2!36354 (get!22210 lt!2331748))) s!2326))))

(declare-fun d!1920344 () Bool)

(declare-fun e!3735960 () Bool)

(assert (=> d!1920344 e!3735960))

(declare-fun res!2540411 () Bool)

(assert (=> d!1920344 (=> res!2540411 e!3735960)))

(assert (=> d!1920344 (= res!2540411 e!3735957)))

(declare-fun res!2540412 () Bool)

(assert (=> d!1920344 (=> (not res!2540412) (not e!3735957))))

(assert (=> d!1920344 (= res!2540412 (isDefined!12666 lt!2331748))))

(declare-fun e!3735961 () Option!15963)

(assert (=> d!1920344 (= lt!2331748 e!3735961)))

(declare-fun c!1101785 () Bool)

(assert (=> d!1920344 (= c!1101785 e!3735959)))

(declare-fun res!2540410 () Bool)

(assert (=> d!1920344 (=> (not res!2540410) (not e!3735959))))

(assert (=> d!1920344 (= res!2540410 (matchR!8255 (regOne!32656 r!7292) (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393))))))

(assert (=> d!1920344 (validRegex!7808 (regOne!32656 r!7292))))

(assert (=> d!1920344 (= (findConcatSeparation!2377 (regOne!32656 r!7292) (regTwo!32656 r!7292) (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393)) (t!377984 s!2326) s!2326) lt!2331748)))

(declare-fun b!6129193 () Bool)

(declare-fun lt!2331750 () Unit!157443)

(declare-fun lt!2331749 () Unit!157443)

(assert (=> b!6129193 (= lt!2331750 lt!2331749)))

(assert (=> b!6129193 (= (++!14158 (++!14158 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393)) (Cons!64393 (h!70841 (t!377984 s!2326)) Nil!64393)) (t!377984 (t!377984 s!2326))) s!2326)))

(assert (=> b!6129193 (= lt!2331749 (lemmaMoveElementToOtherListKeepsConcatEq!2253 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393)) (h!70841 (t!377984 s!2326)) (t!377984 (t!377984 s!2326)) s!2326))))

(declare-fun e!3735958 () Option!15963)

(assert (=> b!6129193 (= e!3735958 (findConcatSeparation!2377 (regOne!32656 r!7292) (regTwo!32656 r!7292) (++!14158 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393)) (Cons!64393 (h!70841 (t!377984 s!2326)) Nil!64393)) (t!377984 (t!377984 s!2326)) s!2326))))

(declare-fun b!6129194 () Bool)

(declare-fun res!2540414 () Bool)

(assert (=> b!6129194 (=> (not res!2540414) (not e!3735957))))

(assert (=> b!6129194 (= res!2540414 (matchR!8255 (regOne!32656 r!7292) (_1!36354 (get!22210 lt!2331748))))))

(declare-fun b!6129195 () Bool)

(assert (=> b!6129195 (= e!3735958 None!15962)))

(declare-fun b!6129196 () Bool)

(assert (=> b!6129196 (= e!3735960 (not (isDefined!12666 lt!2331748)))))

(declare-fun b!6129197 () Bool)

(assert (=> b!6129197 (= e!3735961 e!3735958)))

(declare-fun c!1101786 () Bool)

(assert (=> b!6129197 (= c!1101786 (is-Nil!64393 (t!377984 s!2326)))))

(declare-fun b!6129198 () Bool)

(assert (=> b!6129198 (= e!3735961 (Some!15962 (tuple2!66103 (++!14158 Nil!64393 (Cons!64393 (h!70841 s!2326) Nil!64393)) (t!377984 s!2326))))))

(assert (= (and d!1920344 res!2540410) b!6129191))

(assert (= (and d!1920344 c!1101785) b!6129198))

(assert (= (and d!1920344 (not c!1101785)) b!6129197))

(assert (= (and b!6129197 c!1101786) b!6129195))

(assert (= (and b!6129197 (not c!1101786)) b!6129193))

(assert (= (and d!1920344 res!2540412) b!6129194))

(assert (= (and b!6129194 res!2540414) b!6129190))

(assert (= (and b!6129190 res!2540413) b!6129192))

(assert (= (and d!1920344 (not res!2540411)) b!6129196))

(assert (=> b!6129193 m!6972704))

(declare-fun m!6973096 () Bool)

(assert (=> b!6129193 m!6973096))

(assert (=> b!6129193 m!6973096))

(declare-fun m!6973098 () Bool)

(assert (=> b!6129193 m!6973098))

(assert (=> b!6129193 m!6972704))

(declare-fun m!6973100 () Bool)

(assert (=> b!6129193 m!6973100))

(assert (=> b!6129193 m!6973096))

(declare-fun m!6973102 () Bool)

(assert (=> b!6129193 m!6973102))

(declare-fun m!6973104 () Bool)

(assert (=> b!6129190 m!6973104))

(declare-fun m!6973106 () Bool)

(assert (=> b!6129190 m!6973106))

(assert (=> b!6129194 m!6973104))

(declare-fun m!6973108 () Bool)

(assert (=> b!6129194 m!6973108))

(declare-fun m!6973110 () Bool)

(assert (=> b!6129196 m!6973110))

(assert (=> d!1920344 m!6973110))

(assert (=> d!1920344 m!6972704))

(declare-fun m!6973112 () Bool)

(assert (=> d!1920344 m!6973112))

(assert (=> d!1920344 m!6972722))

(declare-fun m!6973114 () Bool)

(assert (=> b!6129191 m!6973114))

(assert (=> b!6129192 m!6973104))

(declare-fun m!6973116 () Bool)

(assert (=> b!6129192 m!6973116))

(assert (=> b!6128537 d!1920344))

(declare-fun d!1920346 () Bool)

(assert (=> d!1920346 (= (isEmpty!36334 (tail!11750 s!2326)) (is-Nil!64393 (tail!11750 s!2326)))))

(assert (=> b!6128785 d!1920346))

(declare-fun d!1920348 () Bool)

(assert (=> d!1920348 (= (tail!11750 s!2326) (t!377984 s!2326))))

(assert (=> b!6128785 d!1920348))

(declare-fun d!1920350 () Bool)

(declare-fun res!2540419 () Bool)

(declare-fun e!3735966 () Bool)

(assert (=> d!1920350 (=> res!2540419 e!3735966)))

(assert (=> d!1920350 (= res!2540419 (is-Nil!64392 lt!2331660))))

(assert (=> d!1920350 (= (noDuplicate!1919 lt!2331660) e!3735966)))

(declare-fun b!6129203 () Bool)

(declare-fun e!3735967 () Bool)

(assert (=> b!6129203 (= e!3735966 e!3735967)))

(declare-fun res!2540420 () Bool)

(assert (=> b!6129203 (=> (not res!2540420) (not e!3735967))))

(declare-fun contains!20033 (List!64516 Context!10912) Bool)

(assert (=> b!6129203 (= res!2540420 (not (contains!20033 (t!377983 lt!2331660) (h!70840 lt!2331660))))))

(declare-fun b!6129204 () Bool)

(assert (=> b!6129204 (= e!3735967 (noDuplicate!1919 (t!377983 lt!2331660)))))

(assert (= (and d!1920350 (not res!2540419)) b!6129203))

(assert (= (and b!6129203 res!2540420) b!6129204))

(declare-fun m!6973118 () Bool)

(assert (=> b!6129203 m!6973118))

(declare-fun m!6973120 () Bool)

(assert (=> b!6129204 m!6973120))

(assert (=> d!1920166 d!1920350))

(declare-fun d!1920352 () Bool)

(declare-fun e!3735974 () Bool)

(assert (=> d!1920352 e!3735974))

(declare-fun res!2540426 () Bool)

(assert (=> d!1920352 (=> (not res!2540426) (not e!3735974))))

(declare-fun res!2540425 () List!64516)

(assert (=> d!1920352 (= res!2540426 (noDuplicate!1919 res!2540425))))

(declare-fun e!3735976 () Bool)

(assert (=> d!1920352 e!3735976))

(assert (=> d!1920352 (= (choose!45526 z!1189) res!2540425)))

(declare-fun b!6129212 () Bool)

(declare-fun e!3735975 () Bool)

(declare-fun tp!1712882 () Bool)

(assert (=> b!6129212 (= e!3735975 tp!1712882)))

(declare-fun b!6129211 () Bool)

(declare-fun tp!1712881 () Bool)

(assert (=> b!6129211 (= e!3735976 (and (inv!83428 (h!70840 res!2540425)) e!3735975 tp!1712881))))

(declare-fun b!6129213 () Bool)

(assert (=> b!6129213 (= e!3735974 (= (content!11968 res!2540425) z!1189))))

(assert (= b!6129211 b!6129212))

(assert (= (and d!1920352 (is-Cons!64392 res!2540425)) b!6129211))

(assert (= (and d!1920352 res!2540426) b!6129213))

(declare-fun m!6973122 () Bool)

(assert (=> d!1920352 m!6973122))

(declare-fun m!6973124 () Bool)

(assert (=> b!6129211 m!6973124))

(declare-fun m!6973126 () Bool)

(assert (=> b!6129213 m!6973126))

(assert (=> d!1920166 d!1920352))

(declare-fun bm!508167 () Bool)

(declare-fun call!508175 () (Set Context!10912))

(declare-fun call!508177 () (Set Context!10912))

(assert (=> bm!508167 (= call!508175 call!508177)))

(declare-fun call!508172 () List!64515)

(declare-fun c!1101790 () Bool)

(declare-fun c!1101788 () Bool)

(declare-fun bm!508168 () Bool)

(assert (=> bm!508168 (= call!508172 ($colon$colon!1949 (exprs!5956 (ite c!1101579 lt!2331616 (Context!10913 call!508062))) (ite (or c!1101790 c!1101788) (regTwo!32656 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))) (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343))))))))))

(declare-fun b!6129214 () Bool)

(declare-fun e!3735981 () (Set Context!10912))

(declare-fun call!508173 () (Set Context!10912))

(assert (=> b!6129214 (= e!3735981 (set.union call!508173 call!508175))))

(declare-fun c!1101787 () Bool)

(declare-fun bm!508169 () Bool)

(assert (=> bm!508169 (= call!508173 (derivationStepZipperDown!1320 (ite c!1101787 (regOne!32657 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))) (regOne!32656 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343))))))) (ite c!1101787 (ite c!1101579 lt!2331616 (Context!10913 call!508062)) (Context!10913 call!508172)) (h!70841 s!2326)))))

(declare-fun b!6129216 () Bool)

(declare-fun e!3735977 () (Set Context!10912))

(assert (=> b!6129216 (= e!3735977 (as set.empty (Set Context!10912)))))

(declare-fun call!508174 () List!64515)

(declare-fun bm!508170 () Bool)

(assert (=> bm!508170 (= call!508177 (derivationStepZipperDown!1320 (ite c!1101787 (regTwo!32657 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))) (ite c!1101790 (regTwo!32656 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))) (ite c!1101788 (regOne!32656 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))) (reg!16401 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343))))))))) (ite (or c!1101787 c!1101790) (ite c!1101579 lt!2331616 (Context!10913 call!508062)) (Context!10913 call!508174)) (h!70841 s!2326)))))

(declare-fun b!6129217 () Bool)

(declare-fun call!508176 () (Set Context!10912))

(assert (=> b!6129217 (= e!3735977 call!508176)))

(declare-fun bm!508171 () Bool)

(assert (=> bm!508171 (= call!508174 call!508172)))

(declare-fun b!6129218 () Bool)

(declare-fun e!3735978 () Bool)

(assert (=> b!6129218 (= c!1101790 e!3735978)))

(declare-fun res!2540427 () Bool)

(assert (=> b!6129218 (=> (not res!2540427) (not e!3735978))))

(assert (=> b!6129218 (= res!2540427 (is-Concat!24917 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))))))

(declare-fun e!3735982 () (Set Context!10912))

(assert (=> b!6129218 (= e!3735982 e!3735981)))

(declare-fun e!3735980 () (Set Context!10912))

(declare-fun b!6129219 () Bool)

(assert (=> b!6129219 (= e!3735980 (set.insert (ite c!1101579 lt!2331616 (Context!10913 call!508062)) (as set.empty (Set Context!10912))))))

(declare-fun b!6129220 () Bool)

(declare-fun c!1101791 () Bool)

(assert (=> b!6129220 (= c!1101791 (is-Star!16072 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))))))

(declare-fun e!3735979 () (Set Context!10912))

(assert (=> b!6129220 (= e!3735979 e!3735977)))

(declare-fun d!1920354 () Bool)

(declare-fun c!1101789 () Bool)

(assert (=> d!1920354 (= c!1101789 (and (is-ElementMatch!16072 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))) (= (c!1101550 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))) (h!70841 s!2326))))))

(assert (=> d!1920354 (= (derivationStepZipperDown!1320 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343))))) (ite c!1101579 lt!2331616 (Context!10913 call!508062)) (h!70841 s!2326)) e!3735980)))

(declare-fun b!6129215 () Bool)

(assert (=> b!6129215 (= e!3735978 (nullable!6065 (regOne!32656 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343))))))))))

(declare-fun b!6129221 () Bool)

(assert (=> b!6129221 (= e!3735981 e!3735979)))

(assert (=> b!6129221 (= c!1101788 (is-Concat!24917 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))))))

(declare-fun b!6129222 () Bool)

(assert (=> b!6129222 (= e!3735979 call!508176)))

(declare-fun bm!508172 () Bool)

(assert (=> bm!508172 (= call!508176 call!508175)))

(declare-fun b!6129223 () Bool)

(assert (=> b!6129223 (= e!3735982 (set.union call!508173 call!508177))))

(declare-fun b!6129224 () Bool)

(assert (=> b!6129224 (= e!3735980 e!3735982)))

(assert (=> b!6129224 (= c!1101787 (is-Union!16072 (ite c!1101579 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))))))

(assert (= (and d!1920354 c!1101789) b!6129219))

(assert (= (and d!1920354 (not c!1101789)) b!6129224))

(assert (= (and b!6129224 c!1101787) b!6129223))

(assert (= (and b!6129224 (not c!1101787)) b!6129218))

(assert (= (and b!6129218 res!2540427) b!6129215))

(assert (= (and b!6129218 c!1101790) b!6129214))

(assert (= (and b!6129218 (not c!1101790)) b!6129221))

(assert (= (and b!6129221 c!1101788) b!6129222))

(assert (= (and b!6129221 (not c!1101788)) b!6129220))

(assert (= (and b!6129220 c!1101791) b!6129217))

(assert (= (and b!6129220 (not c!1101791)) b!6129216))

(assert (= (or b!6129222 b!6129217) bm!508171))

(assert (= (or b!6129222 b!6129217) bm!508172))

(assert (= (or b!6129214 bm!508171) bm!508168))

(assert (= (or b!6129214 bm!508172) bm!508167))

(assert (= (or b!6129223 bm!508167) bm!508170))

(assert (= (or b!6129223 b!6129214) bm!508169))

(declare-fun m!6973128 () Bool)

(assert (=> bm!508168 m!6973128))

(declare-fun m!6973130 () Bool)

(assert (=> bm!508169 m!6973130))

(declare-fun m!6973132 () Bool)

(assert (=> b!6129219 m!6973132))

(declare-fun m!6973134 () Bool)

(assert (=> bm!508170 m!6973134))

(declare-fun m!6973136 () Bool)

(assert (=> b!6129215 m!6973136))

(assert (=> bm!508059 d!1920354))

(assert (=> d!1920212 d!1920194))

(declare-fun b!6129225 () Bool)

(declare-fun e!3735988 () Bool)

(declare-fun e!3735987 () Bool)

(assert (=> b!6129225 (= e!3735988 e!3735987)))

(declare-fun res!2540428 () Bool)

(assert (=> b!6129225 (=> (not res!2540428) (not e!3735987))))

(declare-fun call!508180 () Bool)

(assert (=> b!6129225 (= res!2540428 call!508180)))

(declare-fun b!6129226 () Bool)

(declare-fun e!3735984 () Bool)

(declare-fun call!508179 () Bool)

(assert (=> b!6129226 (= e!3735984 call!508179)))

(declare-fun b!6129227 () Bool)

(declare-fun call!508178 () Bool)

(assert (=> b!6129227 (= e!3735987 call!508178)))

(declare-fun bm!508173 () Bool)

(declare-fun c!1101793 () Bool)

(assert (=> bm!508173 (= call!508178 (validRegex!7808 (ite c!1101793 (regTwo!32657 (regOne!32656 r!7292)) (regTwo!32656 (regOne!32656 r!7292)))))))

(declare-fun bm!508174 () Bool)

(assert (=> bm!508174 (= call!508180 call!508179)))

(declare-fun b!6129229 () Bool)

(declare-fun e!3735986 () Bool)

(declare-fun e!3735985 () Bool)

(assert (=> b!6129229 (= e!3735986 e!3735985)))

(declare-fun c!1101792 () Bool)

(assert (=> b!6129229 (= c!1101792 (is-Star!16072 (regOne!32656 r!7292)))))

(declare-fun b!6129230 () Bool)

(declare-fun e!3735989 () Bool)

(assert (=> b!6129230 (= e!3735989 call!508178)))

(declare-fun b!6129231 () Bool)

(declare-fun res!2540432 () Bool)

(assert (=> b!6129231 (=> res!2540432 e!3735988)))

(assert (=> b!6129231 (= res!2540432 (not (is-Concat!24917 (regOne!32656 r!7292))))))

(declare-fun e!3735983 () Bool)

(assert (=> b!6129231 (= e!3735983 e!3735988)))

(declare-fun b!6129232 () Bool)

(assert (=> b!6129232 (= e!3735985 e!3735983)))

(assert (=> b!6129232 (= c!1101793 (is-Union!16072 (regOne!32656 r!7292)))))

(declare-fun b!6129233 () Bool)

(assert (=> b!6129233 (= e!3735985 e!3735984)))

(declare-fun res!2540429 () Bool)

(assert (=> b!6129233 (= res!2540429 (not (nullable!6065 (reg!16401 (regOne!32656 r!7292)))))))

(assert (=> b!6129233 (=> (not res!2540429) (not e!3735984))))

(declare-fun bm!508175 () Bool)

(assert (=> bm!508175 (= call!508179 (validRegex!7808 (ite c!1101792 (reg!16401 (regOne!32656 r!7292)) (ite c!1101793 (regOne!32657 (regOne!32656 r!7292)) (regOne!32656 (regOne!32656 r!7292))))))))

(declare-fun b!6129228 () Bool)

(declare-fun res!2540431 () Bool)

(assert (=> b!6129228 (=> (not res!2540431) (not e!3735989))))

(assert (=> b!6129228 (= res!2540431 call!508180)))

(assert (=> b!6129228 (= e!3735983 e!3735989)))

(declare-fun d!1920356 () Bool)

(declare-fun res!2540430 () Bool)

(assert (=> d!1920356 (=> res!2540430 e!3735986)))

(assert (=> d!1920356 (= res!2540430 (is-ElementMatch!16072 (regOne!32656 r!7292)))))

(assert (=> d!1920356 (= (validRegex!7808 (regOne!32656 r!7292)) e!3735986)))

(assert (= (and d!1920356 (not res!2540430)) b!6129229))

(assert (= (and b!6129229 c!1101792) b!6129233))

(assert (= (and b!6129229 (not c!1101792)) b!6129232))

(assert (= (and b!6129233 res!2540429) b!6129226))

(assert (= (and b!6129232 c!1101793) b!6129228))

(assert (= (and b!6129232 (not c!1101793)) b!6129231))

(assert (= (and b!6129228 res!2540431) b!6129230))

(assert (= (and b!6129231 (not res!2540432)) b!6129225))

(assert (= (and b!6129225 res!2540428) b!6129227))

(assert (= (or b!6129230 b!6129227) bm!508173))

(assert (= (or b!6129228 b!6129225) bm!508174))

(assert (= (or b!6129226 bm!508174) bm!508175))

(declare-fun m!6973138 () Bool)

(assert (=> bm!508173 m!6973138))

(declare-fun m!6973140 () Bool)

(assert (=> b!6129233 m!6973140))

(declare-fun m!6973142 () Bool)

(assert (=> bm!508175 m!6973142))

(assert (=> d!1920212 d!1920356))

(assert (=> d!1920212 d!1920224))

(declare-fun bs!1520461 () Bool)

(declare-fun d!1920358 () Bool)

(assert (= bs!1520461 (and d!1920358 d!1920220)))

(declare-fun lambda!333885 () Int)

(assert (=> bs!1520461 (= lambda!333885 lambda!333836)))

(assert (=> bs!1520461 (not (= lambda!333885 lambda!333837))))

(declare-fun bs!1520462 () Bool)

(assert (= bs!1520462 (and d!1920358 b!6128697)))

(assert (=> bs!1520462 (not (= lambda!333885 lambda!333858))))

(declare-fun bs!1520463 () Bool)

(assert (= bs!1520463 (and d!1920358 d!1920212)))

(assert (=> bs!1520463 (= lambda!333885 lambda!333831)))

(declare-fun bs!1520464 () Bool)

(assert (= bs!1520464 (and d!1920358 b!6128255)))

(assert (=> bs!1520464 (= lambda!333885 lambda!333806)))

(assert (=> bs!1520464 (not (= lambda!333885 lambda!333807))))

(declare-fun bs!1520465 () Bool)

(assert (= bs!1520465 (and d!1920358 b!6128703)))

(assert (=> bs!1520465 (not (= lambda!333885 lambda!333857))))

(assert (=> d!1920358 true))

(assert (=> d!1920358 true))

(assert (=> d!1920358 true))

(assert (=> d!1920358 (= (isDefined!12666 (findConcatSeparation!2377 (regOne!32656 r!7292) (regTwo!32656 r!7292) Nil!64393 s!2326 s!2326)) (Exists!3142 lambda!333885))))

(assert (=> d!1920358 true))

(declare-fun _$89!2197 () Unit!157443)

(assert (=> d!1920358 (= (choose!45530 (regOne!32656 r!7292) (regTwo!32656 r!7292) s!2326) _$89!2197)))

(declare-fun bs!1520466 () Bool)

(assert (= bs!1520466 d!1920358))

(assert (=> bs!1520466 m!6972502))

(assert (=> bs!1520466 m!6972502))

(assert (=> bs!1520466 m!6972504))

(declare-fun m!6973144 () Bool)

(assert (=> bs!1520466 m!6973144))

(assert (=> d!1920212 d!1920358))

(declare-fun d!1920360 () Bool)

(assert (=> d!1920360 (= (Exists!3142 lambda!333831) (choose!45529 lambda!333831))))

(declare-fun bs!1520467 () Bool)

(assert (= bs!1520467 d!1920360))

(declare-fun m!6973146 () Bool)

(assert (=> bs!1520467 m!6973146))

(assert (=> d!1920212 d!1920360))

(declare-fun b!6129238 () Bool)

(declare-fun e!3735997 () Bool)

(declare-fun e!3735996 () Bool)

(assert (=> b!6129238 (= e!3735997 e!3735996)))

(declare-fun res!2540437 () Bool)

(assert (=> b!6129238 (=> (not res!2540437) (not e!3735996))))

(declare-fun call!508183 () Bool)

(assert (=> b!6129238 (= res!2540437 call!508183)))

(declare-fun b!6129239 () Bool)

(declare-fun e!3735993 () Bool)

(declare-fun call!508182 () Bool)

(assert (=> b!6129239 (= e!3735993 call!508182)))

(declare-fun b!6129240 () Bool)

(declare-fun call!508181 () Bool)

(assert (=> b!6129240 (= e!3735996 call!508181)))

(declare-fun bm!508176 () Bool)

(declare-fun c!1101795 () Bool)

(assert (=> bm!508176 (= call!508181 (validRegex!7808 (ite c!1101795 (regTwo!32657 lt!2331669) (regTwo!32656 lt!2331669))))))

(declare-fun bm!508177 () Bool)

(assert (=> bm!508177 (= call!508183 call!508182)))

(declare-fun b!6129242 () Bool)

(declare-fun e!3735995 () Bool)

(declare-fun e!3735994 () Bool)

(assert (=> b!6129242 (= e!3735995 e!3735994)))

(declare-fun c!1101794 () Bool)

(assert (=> b!6129242 (= c!1101794 (is-Star!16072 lt!2331669))))

(declare-fun b!6129243 () Bool)

(declare-fun e!3735998 () Bool)

(assert (=> b!6129243 (= e!3735998 call!508181)))

(declare-fun b!6129244 () Bool)

(declare-fun res!2540441 () Bool)

(assert (=> b!6129244 (=> res!2540441 e!3735997)))

(assert (=> b!6129244 (= res!2540441 (not (is-Concat!24917 lt!2331669)))))

(declare-fun e!3735992 () Bool)

(assert (=> b!6129244 (= e!3735992 e!3735997)))

(declare-fun b!6129245 () Bool)

(assert (=> b!6129245 (= e!3735994 e!3735992)))

(assert (=> b!6129245 (= c!1101795 (is-Union!16072 lt!2331669))))

(declare-fun b!6129246 () Bool)

(assert (=> b!6129246 (= e!3735994 e!3735993)))

(declare-fun res!2540438 () Bool)

(assert (=> b!6129246 (= res!2540438 (not (nullable!6065 (reg!16401 lt!2331669))))))

(assert (=> b!6129246 (=> (not res!2540438) (not e!3735993))))

(declare-fun bm!508178 () Bool)

(assert (=> bm!508178 (= call!508182 (validRegex!7808 (ite c!1101794 (reg!16401 lt!2331669) (ite c!1101795 (regOne!32657 lt!2331669) (regOne!32656 lt!2331669)))))))

(declare-fun b!6129241 () Bool)

(declare-fun res!2540440 () Bool)

(assert (=> b!6129241 (=> (not res!2540440) (not e!3735998))))

(assert (=> b!6129241 (= res!2540440 call!508183)))

(assert (=> b!6129241 (= e!3735992 e!3735998)))

(declare-fun d!1920362 () Bool)

(declare-fun res!2540439 () Bool)

(assert (=> d!1920362 (=> res!2540439 e!3735995)))

(assert (=> d!1920362 (= res!2540439 (is-ElementMatch!16072 lt!2331669))))

(assert (=> d!1920362 (= (validRegex!7808 lt!2331669) e!3735995)))

(assert (= (and d!1920362 (not res!2540439)) b!6129242))

(assert (= (and b!6129242 c!1101794) b!6129246))

(assert (= (and b!6129242 (not c!1101794)) b!6129245))

(assert (= (and b!6129246 res!2540438) b!6129239))

(assert (= (and b!6129245 c!1101795) b!6129241))

(assert (= (and b!6129245 (not c!1101795)) b!6129244))

(assert (= (and b!6129241 res!2540440) b!6129243))

(assert (= (and b!6129244 (not res!2540441)) b!6129238))

(assert (= (and b!6129238 res!2540437) b!6129240))

(assert (= (or b!6129243 b!6129240) bm!508176))

(assert (= (or b!6129241 b!6129238) bm!508177))

(assert (= (or b!6129239 bm!508177) bm!508178))

(declare-fun m!6973148 () Bool)

(assert (=> bm!508176 m!6973148))

(declare-fun m!6973150 () Bool)

(assert (=> b!6129246 m!6973150))

(declare-fun m!6973152 () Bool)

(assert (=> bm!508178 m!6973152))

(assert (=> d!1920192 d!1920362))

(assert (=> d!1920192 d!1920228))

(assert (=> d!1920192 d!1920236))

(declare-fun d!1920364 () Bool)

(assert (=> d!1920364 (= (isEmpty!36334 s!2326) (is-Nil!64393 s!2326))))

(assert (=> d!1920246 d!1920364))

(assert (=> d!1920246 d!1920258))

(declare-fun bs!1520468 () Bool)

(declare-fun d!1920366 () Bool)

(assert (= bs!1520468 (and d!1920366 d!1920256)))

(declare-fun lambda!333886 () Int)

(assert (=> bs!1520468 (= lambda!333886 lambda!333865)))

(declare-fun bs!1520469 () Bool)

(assert (= bs!1520469 (and d!1920366 d!1920310)))

(assert (=> bs!1520469 (= lambda!333886 lambda!333879)))

(declare-fun bs!1520470 () Bool)

(assert (= bs!1520470 (and d!1920366 d!1920236)))

(assert (=> bs!1520470 (= lambda!333886 lambda!333848)))

(declare-fun bs!1520471 () Bool)

(assert (= bs!1520471 (and d!1920366 d!1920308)))

(assert (=> bs!1520471 (= lambda!333886 lambda!333878)))

(declare-fun bs!1520472 () Bool)

(assert (= bs!1520472 (and d!1920366 d!1920228)))

(assert (=> bs!1520472 (= lambda!333886 lambda!333843)))

(declare-fun bs!1520473 () Bool)

(assert (= bs!1520473 (and d!1920366 d!1920172)))

(assert (=> bs!1520473 (= lambda!333886 lambda!333822)))

(declare-fun bs!1520474 () Bool)

(assert (= bs!1520474 (and d!1920366 d!1920262)))

(assert (=> bs!1520474 (= lambda!333886 lambda!333866)))

(declare-fun bs!1520475 () Bool)

(assert (= bs!1520475 (and d!1920366 d!1920188)))

(assert (=> bs!1520475 (= lambda!333886 lambda!333825)))

(assert (=> d!1920366 (= (inv!83428 setElem!41419) (forall!15193 (exprs!5956 setElem!41419) lambda!333886))))

(declare-fun bs!1520476 () Bool)

(assert (= bs!1520476 d!1920366))

(declare-fun m!6973154 () Bool)

(assert (=> bs!1520476 m!6973154))

(assert (=> setNonEmpty!41419 d!1920366))

(declare-fun bs!1520477 () Bool)

(declare-fun d!1920368 () Bool)

(assert (= bs!1520477 (and d!1920368 d!1920256)))

(declare-fun lambda!333887 () Int)

(assert (=> bs!1520477 (= lambda!333887 lambda!333865)))

(declare-fun bs!1520478 () Bool)

(assert (= bs!1520478 (and d!1920368 d!1920310)))

(assert (=> bs!1520478 (= lambda!333887 lambda!333879)))

(declare-fun bs!1520479 () Bool)

(assert (= bs!1520479 (and d!1920368 d!1920236)))

(assert (=> bs!1520479 (= lambda!333887 lambda!333848)))

(declare-fun bs!1520480 () Bool)

(assert (= bs!1520480 (and d!1920368 d!1920308)))

(assert (=> bs!1520480 (= lambda!333887 lambda!333878)))

(declare-fun bs!1520481 () Bool)

(assert (= bs!1520481 (and d!1920368 d!1920228)))

(assert (=> bs!1520481 (= lambda!333887 lambda!333843)))

(declare-fun bs!1520482 () Bool)

(assert (= bs!1520482 (and d!1920368 d!1920172)))

(assert (=> bs!1520482 (= lambda!333887 lambda!333822)))

(declare-fun bs!1520483 () Bool)

(assert (= bs!1520483 (and d!1920368 d!1920366)))

(assert (=> bs!1520483 (= lambda!333887 lambda!333886)))

(declare-fun bs!1520484 () Bool)

(assert (= bs!1520484 (and d!1920368 d!1920262)))

(assert (=> bs!1520484 (= lambda!333887 lambda!333866)))

(declare-fun bs!1520485 () Bool)

(assert (= bs!1520485 (and d!1920368 d!1920188)))

(assert (=> bs!1520485 (= lambda!333887 lambda!333825)))

(declare-fun b!6129247 () Bool)

(declare-fun e!3736001 () Bool)

(declare-fun lt!2331751 () Regex!16072)

(assert (=> b!6129247 (= e!3736001 (isEmptyLang!1499 lt!2331751))))

(declare-fun b!6129248 () Bool)

(declare-fun e!3736002 () Bool)

(assert (=> b!6129248 (= e!3736001 e!3736002)))

(declare-fun c!1101799 () Bool)

(assert (=> b!6129248 (= c!1101799 (isEmpty!36330 (tail!11751 (t!377982 (unfocusZipperList!1493 zl!343)))))))

(declare-fun b!6129249 () Bool)

(declare-fun e!3736003 () Bool)

(assert (=> b!6129249 (= e!3736003 e!3736001)))

(declare-fun c!1101796 () Bool)

(assert (=> b!6129249 (= c!1101796 (isEmpty!36330 (t!377982 (unfocusZipperList!1493 zl!343))))))

(declare-fun b!6129250 () Bool)

(declare-fun e!3736000 () Regex!16072)

(assert (=> b!6129250 (= e!3736000 (h!70839 (t!377982 (unfocusZipperList!1493 zl!343))))))

(assert (=> d!1920368 e!3736003))

(declare-fun res!2540443 () Bool)

(assert (=> d!1920368 (=> (not res!2540443) (not e!3736003))))

(assert (=> d!1920368 (= res!2540443 (validRegex!7808 lt!2331751))))

(assert (=> d!1920368 (= lt!2331751 e!3736000)))

(declare-fun c!1101797 () Bool)

(declare-fun e!3735999 () Bool)

(assert (=> d!1920368 (= c!1101797 e!3735999)))

(declare-fun res!2540442 () Bool)

(assert (=> d!1920368 (=> (not res!2540442) (not e!3735999))))

(assert (=> d!1920368 (= res!2540442 (is-Cons!64391 (t!377982 (unfocusZipperList!1493 zl!343))))))

(assert (=> d!1920368 (forall!15193 (t!377982 (unfocusZipperList!1493 zl!343)) lambda!333887)))

(assert (=> d!1920368 (= (generalisedUnion!1916 (t!377982 (unfocusZipperList!1493 zl!343))) lt!2331751)))

(declare-fun b!6129251 () Bool)

(declare-fun e!3736004 () Regex!16072)

(assert (=> b!6129251 (= e!3736004 EmptyLang!16072)))

(declare-fun b!6129252 () Bool)

(assert (=> b!6129252 (= e!3736004 (Union!16072 (h!70839 (t!377982 (unfocusZipperList!1493 zl!343))) (generalisedUnion!1916 (t!377982 (t!377982 (unfocusZipperList!1493 zl!343))))))))

(declare-fun b!6129253 () Bool)

(assert (=> b!6129253 (= e!3736002 (= lt!2331751 (head!12666 (t!377982 (unfocusZipperList!1493 zl!343)))))))

(declare-fun b!6129254 () Bool)

(assert (=> b!6129254 (= e!3736000 e!3736004)))

(declare-fun c!1101798 () Bool)

(assert (=> b!6129254 (= c!1101798 (is-Cons!64391 (t!377982 (unfocusZipperList!1493 zl!343))))))

(declare-fun b!6129255 () Bool)

(assert (=> b!6129255 (= e!3736002 (isUnion!929 lt!2331751))))

(declare-fun b!6129256 () Bool)

(assert (=> b!6129256 (= e!3735999 (isEmpty!36330 (t!377982 (t!377982 (unfocusZipperList!1493 zl!343)))))))

(assert (= (and d!1920368 res!2540442) b!6129256))

(assert (= (and d!1920368 c!1101797) b!6129250))

(assert (= (and d!1920368 (not c!1101797)) b!6129254))

(assert (= (and b!6129254 c!1101798) b!6129252))

(assert (= (and b!6129254 (not c!1101798)) b!6129251))

(assert (= (and d!1920368 res!2540443) b!6129249))

(assert (= (and b!6129249 c!1101796) b!6129247))

(assert (= (and b!6129249 (not c!1101796)) b!6129248))

(assert (= (and b!6129248 c!1101799) b!6129253))

(assert (= (and b!6129248 (not c!1101799)) b!6129255))

(declare-fun m!6973156 () Bool)

(assert (=> b!6129253 m!6973156))

(declare-fun m!6973158 () Bool)

(assert (=> b!6129248 m!6973158))

(assert (=> b!6129248 m!6973158))

(declare-fun m!6973160 () Bool)

(assert (=> b!6129248 m!6973160))

(declare-fun m!6973162 () Bool)

(assert (=> b!6129255 m!6973162))

(declare-fun m!6973164 () Bool)

(assert (=> b!6129256 m!6973164))

(declare-fun m!6973166 () Bool)

(assert (=> d!1920368 m!6973166))

(declare-fun m!6973168 () Bool)

(assert (=> d!1920368 m!6973168))

(declare-fun m!6973170 () Bool)

(assert (=> b!6129252 m!6973170))

(assert (=> b!6129249 m!6972798))

(declare-fun m!6973172 () Bool)

(assert (=> b!6129247 m!6973172))

(assert (=> b!6128618 d!1920368))

(declare-fun d!1920370 () Bool)

(assert (=> d!1920370 true))

(assert (=> d!1920370 true))

(declare-fun res!2540446 () Bool)

(assert (=> d!1920370 (= (choose!45529 lambda!333807) res!2540446)))

(assert (=> d!1920208 d!1920370))

(declare-fun d!1920372 () Bool)

(assert (=> d!1920372 (= (isDefined!12666 lt!2331679) (not (isEmpty!36335 lt!2331679)))))

(declare-fun bs!1520486 () Bool)

(assert (= bs!1520486 d!1920372))

(declare-fun m!6973174 () Bool)

(assert (=> bs!1520486 m!6973174))

(assert (=> d!1920194 d!1920372))

(declare-fun b!6129257 () Bool)

(declare-fun res!2540450 () Bool)

(declare-fun e!3736005 () Bool)

(assert (=> b!6129257 (=> (not res!2540450) (not e!3736005))))

(assert (=> b!6129257 (= res!2540450 (isEmpty!36334 (tail!11750 Nil!64393)))))

(declare-fun bm!508179 () Bool)

(declare-fun call!508184 () Bool)

(assert (=> bm!508179 (= call!508184 (isEmpty!36334 Nil!64393))))

(declare-fun b!6129258 () Bool)

(declare-fun e!3736010 () Bool)

(declare-fun e!3736006 () Bool)

(assert (=> b!6129258 (= e!3736010 e!3736006)))

(declare-fun res!2540449 () Bool)

(assert (=> b!6129258 (=> (not res!2540449) (not e!3736006))))

(declare-fun lt!2331752 () Bool)

(assert (=> b!6129258 (= res!2540449 (not lt!2331752))))

(declare-fun b!6129259 () Bool)

(declare-fun e!3736009 () Bool)

(assert (=> b!6129259 (= e!3736009 (not (= (head!12665 Nil!64393) (c!1101550 (regOne!32656 r!7292)))))))

(declare-fun b!6129260 () Bool)

(assert (=> b!6129260 (= e!3736006 e!3736009)))

(declare-fun res!2540454 () Bool)

(assert (=> b!6129260 (=> res!2540454 e!3736009)))

(assert (=> b!6129260 (= res!2540454 call!508184)))

(declare-fun b!6129261 () Bool)

(declare-fun e!3736008 () Bool)

(declare-fun e!3736011 () Bool)

(assert (=> b!6129261 (= e!3736008 e!3736011)))

(declare-fun c!1101802 () Bool)

(assert (=> b!6129261 (= c!1101802 (is-EmptyLang!16072 (regOne!32656 r!7292)))))

(declare-fun b!6129262 () Bool)

(assert (=> b!6129262 (= e!3736005 (= (head!12665 Nil!64393) (c!1101550 (regOne!32656 r!7292))))))

(declare-fun b!6129263 () Bool)

(declare-fun res!2540447 () Bool)

(assert (=> b!6129263 (=> (not res!2540447) (not e!3736005))))

(assert (=> b!6129263 (= res!2540447 (not call!508184))))

(declare-fun b!6129264 () Bool)

(declare-fun res!2540451 () Bool)

(assert (=> b!6129264 (=> res!2540451 e!3736009)))

(assert (=> b!6129264 (= res!2540451 (not (isEmpty!36334 (tail!11750 Nil!64393))))))

(declare-fun b!6129265 () Bool)

(declare-fun res!2540453 () Bool)

(assert (=> b!6129265 (=> res!2540453 e!3736010)))

(assert (=> b!6129265 (= res!2540453 e!3736005)))

(declare-fun res!2540452 () Bool)

(assert (=> b!6129265 (=> (not res!2540452) (not e!3736005))))

(assert (=> b!6129265 (= res!2540452 lt!2331752)))

(declare-fun d!1920374 () Bool)

(assert (=> d!1920374 e!3736008))

(declare-fun c!1101800 () Bool)

(assert (=> d!1920374 (= c!1101800 (is-EmptyExpr!16072 (regOne!32656 r!7292)))))

(declare-fun e!3736007 () Bool)

(assert (=> d!1920374 (= lt!2331752 e!3736007)))

(declare-fun c!1101801 () Bool)

(assert (=> d!1920374 (= c!1101801 (isEmpty!36334 Nil!64393))))

(assert (=> d!1920374 (validRegex!7808 (regOne!32656 r!7292))))

(assert (=> d!1920374 (= (matchR!8255 (regOne!32656 r!7292) Nil!64393) lt!2331752)))

(declare-fun b!6129266 () Bool)

(assert (=> b!6129266 (= e!3736011 (not lt!2331752))))

(declare-fun b!6129267 () Bool)

(declare-fun res!2540448 () Bool)

(assert (=> b!6129267 (=> res!2540448 e!3736010)))

(assert (=> b!6129267 (= res!2540448 (not (is-ElementMatch!16072 (regOne!32656 r!7292))))))

(assert (=> b!6129267 (= e!3736011 e!3736010)))

(declare-fun b!6129268 () Bool)

(assert (=> b!6129268 (= e!3736008 (= lt!2331752 call!508184))))

(declare-fun b!6129269 () Bool)

(assert (=> b!6129269 (= e!3736007 (nullable!6065 (regOne!32656 r!7292)))))

(declare-fun b!6129270 () Bool)

(assert (=> b!6129270 (= e!3736007 (matchR!8255 (derivativeStep!4792 (regOne!32656 r!7292) (head!12665 Nil!64393)) (tail!11750 Nil!64393)))))

(assert (= (and d!1920374 c!1101801) b!6129269))

(assert (= (and d!1920374 (not c!1101801)) b!6129270))

(assert (= (and d!1920374 c!1101800) b!6129268))

(assert (= (and d!1920374 (not c!1101800)) b!6129261))

(assert (= (and b!6129261 c!1101802) b!6129266))

(assert (= (and b!6129261 (not c!1101802)) b!6129267))

(assert (= (and b!6129267 (not res!2540448)) b!6129265))

(assert (= (and b!6129265 res!2540452) b!6129263))

(assert (= (and b!6129263 res!2540447) b!6129257))

(assert (= (and b!6129257 res!2540450) b!6129262))

(assert (= (and b!6129265 (not res!2540453)) b!6129258))

(assert (= (and b!6129258 res!2540449) b!6129260))

(assert (= (and b!6129260 (not res!2540454)) b!6129264))

(assert (= (and b!6129264 (not res!2540451)) b!6129259))

(assert (= (or b!6129268 b!6129260 b!6129263) bm!508179))

(declare-fun m!6973176 () Bool)

(assert (=> d!1920374 m!6973176))

(assert (=> d!1920374 m!6972722))

(assert (=> bm!508179 m!6973176))

(declare-fun m!6973178 () Bool)

(assert (=> b!6129264 m!6973178))

(assert (=> b!6129264 m!6973178))

(declare-fun m!6973180 () Bool)

(assert (=> b!6129264 m!6973180))

(declare-fun m!6973182 () Bool)

(assert (=> b!6129259 m!6973182))

(assert (=> b!6129262 m!6973182))

(declare-fun m!6973184 () Bool)

(assert (=> b!6129269 m!6973184))

(assert (=> b!6129270 m!6973182))

(assert (=> b!6129270 m!6973182))

(declare-fun m!6973186 () Bool)

(assert (=> b!6129270 m!6973186))

(assert (=> b!6129270 m!6973178))

(assert (=> b!6129270 m!6973186))

(assert (=> b!6129270 m!6973178))

(declare-fun m!6973188 () Bool)

(assert (=> b!6129270 m!6973188))

(assert (=> b!6129257 m!6973178))

(assert (=> b!6129257 m!6973178))

(assert (=> b!6129257 m!6973180))

(assert (=> d!1920194 d!1920374))

(assert (=> d!1920194 d!1920356))

(declare-fun bm!508180 () Bool)

(declare-fun call!508188 () (Set Context!10912))

(declare-fun call!508190 () (Set Context!10912))

(assert (=> bm!508180 (= call!508188 call!508190)))

(declare-fun c!1101804 () Bool)

(declare-fun bm!508181 () Bool)

(declare-fun call!508185 () List!64515)

(declare-fun c!1101806 () Bool)

(assert (=> bm!508181 (= call!508185 ($colon$colon!1949 (exprs!5956 (ite (or c!1101691 c!1101694) lt!2331616 (Context!10913 call!508120))) (ite (or c!1101806 c!1101804) (regTwo!32656 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292))))))) (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292)))))))))))

(declare-fun b!6129271 () Bool)

(declare-fun e!3736016 () (Set Context!10912))

(declare-fun call!508186 () (Set Context!10912))

(assert (=> b!6129271 (= e!3736016 (set.union call!508186 call!508188))))

(declare-fun c!1101803 () Bool)

(declare-fun bm!508182 () Bool)

(assert (=> bm!508182 (= call!508186 (derivationStepZipperDown!1320 (ite c!1101803 (regOne!32657 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292))))))) (regOne!32656 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292)))))))) (ite c!1101803 (ite (or c!1101691 c!1101694) lt!2331616 (Context!10913 call!508120)) (Context!10913 call!508185)) (h!70841 s!2326)))))

(declare-fun b!6129273 () Bool)

(declare-fun e!3736012 () (Set Context!10912))

(assert (=> b!6129273 (= e!3736012 (as set.empty (Set Context!10912)))))

(declare-fun call!508187 () List!64515)

(declare-fun bm!508183 () Bool)

(assert (=> bm!508183 (= call!508190 (derivationStepZipperDown!1320 (ite c!1101803 (regTwo!32657 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292))))))) (ite c!1101806 (regTwo!32656 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292))))))) (ite c!1101804 (regOne!32656 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292))))))) (reg!16401 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292)))))))))) (ite (or c!1101803 c!1101806) (ite (or c!1101691 c!1101694) lt!2331616 (Context!10913 call!508120)) (Context!10913 call!508187)) (h!70841 s!2326)))))

(declare-fun b!6129274 () Bool)

(declare-fun call!508189 () (Set Context!10912))

(assert (=> b!6129274 (= e!3736012 call!508189)))

(declare-fun bm!508184 () Bool)

(assert (=> bm!508184 (= call!508187 call!508185)))

(declare-fun b!6129275 () Bool)

(declare-fun e!3736013 () Bool)

(assert (=> b!6129275 (= c!1101806 e!3736013)))

(declare-fun res!2540455 () Bool)

(assert (=> b!6129275 (=> (not res!2540455) (not e!3736013))))

(assert (=> b!6129275 (= res!2540455 (is-Concat!24917 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292))))))))))

(declare-fun e!3736017 () (Set Context!10912))

(assert (=> b!6129275 (= e!3736017 e!3736016)))

(declare-fun b!6129276 () Bool)

(declare-fun e!3736015 () (Set Context!10912))

(assert (=> b!6129276 (= e!3736015 (set.insert (ite (or c!1101691 c!1101694) lt!2331616 (Context!10913 call!508120)) (as set.empty (Set Context!10912))))))

(declare-fun b!6129277 () Bool)

(declare-fun c!1101807 () Bool)

(assert (=> b!6129277 (= c!1101807 (is-Star!16072 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292))))))))))

(declare-fun e!3736014 () (Set Context!10912))

(assert (=> b!6129277 (= e!3736014 e!3736012)))

(declare-fun d!1920376 () Bool)

(declare-fun c!1101805 () Bool)

(assert (=> d!1920376 (= c!1101805 (and (is-ElementMatch!16072 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292))))))) (= (c!1101550 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292))))))) (h!70841 s!2326))))))

(assert (=> d!1920376 (= (derivationStepZipperDown!1320 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292)))))) (ite (or c!1101691 c!1101694) lt!2331616 (Context!10913 call!508120)) (h!70841 s!2326)) e!3736015)))

(declare-fun b!6129272 () Bool)

(assert (=> b!6129272 (= e!3736013 (nullable!6065 (regOne!32656 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292)))))))))))

(declare-fun b!6129278 () Bool)

(assert (=> b!6129278 (= e!3736016 e!3736014)))

(assert (=> b!6129278 (= c!1101804 (is-Concat!24917 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292))))))))))

(declare-fun b!6129279 () Bool)

(assert (=> b!6129279 (= e!3736014 call!508189)))

(declare-fun bm!508185 () Bool)

(assert (=> bm!508185 (= call!508189 call!508188)))

(declare-fun b!6129280 () Bool)

(assert (=> b!6129280 (= e!3736017 (set.union call!508186 call!508190))))

(declare-fun b!6129281 () Bool)

(assert (=> b!6129281 (= e!3736015 e!3736017)))

(assert (=> b!6129281 (= c!1101803 (is-Union!16072 (ite c!1101691 (regTwo!32657 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101694 (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (ite c!1101692 (regOne!32656 (regOne!32657 (regOne!32656 r!7292))) (reg!16401 (regOne!32657 (regOne!32656 r!7292))))))))))

(assert (= (and d!1920376 c!1101805) b!6129276))

(assert (= (and d!1920376 (not c!1101805)) b!6129281))

(assert (= (and b!6129281 c!1101803) b!6129280))

(assert (= (and b!6129281 (not c!1101803)) b!6129275))

(assert (= (and b!6129275 res!2540455) b!6129272))

(assert (= (and b!6129275 c!1101806) b!6129271))

(assert (= (and b!6129275 (not c!1101806)) b!6129278))

(assert (= (and b!6129278 c!1101804) b!6129279))

(assert (= (and b!6129278 (not c!1101804)) b!6129277))

(assert (= (and b!6129277 c!1101807) b!6129274))

(assert (= (and b!6129277 (not c!1101807)) b!6129273))

(assert (= (or b!6129279 b!6129274) bm!508184))

(assert (= (or b!6129279 b!6129274) bm!508185))

(assert (= (or b!6129271 bm!508184) bm!508181))

(assert (= (or b!6129271 bm!508185) bm!508180))

(assert (= (or b!6129280 bm!508180) bm!508183))

(assert (= (or b!6129280 b!6129271) bm!508182))

(declare-fun m!6973190 () Bool)

(assert (=> bm!508181 m!6973190))

(declare-fun m!6973192 () Bool)

(assert (=> bm!508182 m!6973192))

(declare-fun m!6973194 () Bool)

(assert (=> b!6129276 m!6973194))

(declare-fun m!6973196 () Bool)

(assert (=> bm!508183 m!6973196))

(declare-fun m!6973198 () Bool)

(assert (=> b!6129272 m!6973198))

(assert (=> bm!508116 d!1920376))

(declare-fun d!1920378 () Bool)

(assert (=> d!1920378 (= (isEmpty!36330 (tail!11751 (unfocusZipperList!1493 zl!343))) (is-Nil!64391 (tail!11751 (unfocusZipperList!1493 zl!343))))))

(assert (=> b!6128614 d!1920378))

(declare-fun d!1920380 () Bool)

(assert (=> d!1920380 (= (tail!11751 (unfocusZipperList!1493 zl!343)) (t!377982 (unfocusZipperList!1493 zl!343)))))

(assert (=> b!6128614 d!1920380))

(declare-fun d!1920382 () Bool)

(assert (=> d!1920382 (= (isEmpty!36335 (findConcatSeparation!2377 (regOne!32656 r!7292) (regTwo!32656 r!7292) Nil!64393 s!2326 s!2326)) (not (is-Some!15962 (findConcatSeparation!2377 (regOne!32656 r!7292) (regTwo!32656 r!7292) Nil!64393 s!2326 s!2326))))))

(assert (=> d!1920224 d!1920382))

(declare-fun b!6129282 () Bool)

(declare-fun res!2540459 () Bool)

(declare-fun e!3736018 () Bool)

(assert (=> b!6129282 (=> (not res!2540459) (not e!3736018))))

(assert (=> b!6129282 (= res!2540459 (isEmpty!36334 (tail!11750 (tail!11750 s!2326))))))

(declare-fun bm!508186 () Bool)

(declare-fun call!508191 () Bool)

(assert (=> bm!508186 (= call!508191 (isEmpty!36334 (tail!11750 s!2326)))))

(declare-fun b!6129283 () Bool)

(declare-fun e!3736023 () Bool)

(declare-fun e!3736019 () Bool)

(assert (=> b!6129283 (= e!3736023 e!3736019)))

(declare-fun res!2540458 () Bool)

(assert (=> b!6129283 (=> (not res!2540458) (not e!3736019))))

(declare-fun lt!2331753 () Bool)

(assert (=> b!6129283 (= res!2540458 (not lt!2331753))))

(declare-fun b!6129284 () Bool)

(declare-fun e!3736022 () Bool)

(assert (=> b!6129284 (= e!3736022 (not (= (head!12665 (tail!11750 s!2326)) (c!1101550 (derivativeStep!4792 r!7292 (head!12665 s!2326))))))))

(declare-fun b!6129285 () Bool)

(assert (=> b!6129285 (= e!3736019 e!3736022)))

(declare-fun res!2540463 () Bool)

(assert (=> b!6129285 (=> res!2540463 e!3736022)))

(assert (=> b!6129285 (= res!2540463 call!508191)))

(declare-fun b!6129286 () Bool)

(declare-fun e!3736021 () Bool)

(declare-fun e!3736024 () Bool)

(assert (=> b!6129286 (= e!3736021 e!3736024)))

(declare-fun c!1101810 () Bool)

(assert (=> b!6129286 (= c!1101810 (is-EmptyLang!16072 (derivativeStep!4792 r!7292 (head!12665 s!2326))))))

(declare-fun b!6129287 () Bool)

(assert (=> b!6129287 (= e!3736018 (= (head!12665 (tail!11750 s!2326)) (c!1101550 (derivativeStep!4792 r!7292 (head!12665 s!2326)))))))

(declare-fun b!6129288 () Bool)

(declare-fun res!2540456 () Bool)

(assert (=> b!6129288 (=> (not res!2540456) (not e!3736018))))

(assert (=> b!6129288 (= res!2540456 (not call!508191))))

(declare-fun b!6129289 () Bool)

(declare-fun res!2540460 () Bool)

(assert (=> b!6129289 (=> res!2540460 e!3736022)))

(assert (=> b!6129289 (= res!2540460 (not (isEmpty!36334 (tail!11750 (tail!11750 s!2326)))))))

(declare-fun b!6129290 () Bool)

(declare-fun res!2540462 () Bool)

(assert (=> b!6129290 (=> res!2540462 e!3736023)))

(assert (=> b!6129290 (= res!2540462 e!3736018)))

(declare-fun res!2540461 () Bool)

(assert (=> b!6129290 (=> (not res!2540461) (not e!3736018))))

(assert (=> b!6129290 (= res!2540461 lt!2331753)))

(declare-fun d!1920384 () Bool)

(assert (=> d!1920384 e!3736021))

(declare-fun c!1101808 () Bool)

(assert (=> d!1920384 (= c!1101808 (is-EmptyExpr!16072 (derivativeStep!4792 r!7292 (head!12665 s!2326))))))

(declare-fun e!3736020 () Bool)

(assert (=> d!1920384 (= lt!2331753 e!3736020)))

(declare-fun c!1101809 () Bool)

(assert (=> d!1920384 (= c!1101809 (isEmpty!36334 (tail!11750 s!2326)))))

(assert (=> d!1920384 (validRegex!7808 (derivativeStep!4792 r!7292 (head!12665 s!2326)))))

(assert (=> d!1920384 (= (matchR!8255 (derivativeStep!4792 r!7292 (head!12665 s!2326)) (tail!11750 s!2326)) lt!2331753)))

(declare-fun b!6129291 () Bool)

(assert (=> b!6129291 (= e!3736024 (not lt!2331753))))

(declare-fun b!6129292 () Bool)

(declare-fun res!2540457 () Bool)

(assert (=> b!6129292 (=> res!2540457 e!3736023)))

(assert (=> b!6129292 (= res!2540457 (not (is-ElementMatch!16072 (derivativeStep!4792 r!7292 (head!12665 s!2326)))))))

(assert (=> b!6129292 (= e!3736024 e!3736023)))

(declare-fun b!6129293 () Bool)

(assert (=> b!6129293 (= e!3736021 (= lt!2331753 call!508191))))

(declare-fun b!6129294 () Bool)

(assert (=> b!6129294 (= e!3736020 (nullable!6065 (derivativeStep!4792 r!7292 (head!12665 s!2326))))))

(declare-fun b!6129295 () Bool)

(assert (=> b!6129295 (= e!3736020 (matchR!8255 (derivativeStep!4792 (derivativeStep!4792 r!7292 (head!12665 s!2326)) (head!12665 (tail!11750 s!2326))) (tail!11750 (tail!11750 s!2326))))))

(assert (= (and d!1920384 c!1101809) b!6129294))

(assert (= (and d!1920384 (not c!1101809)) b!6129295))

(assert (= (and d!1920384 c!1101808) b!6129293))

(assert (= (and d!1920384 (not c!1101808)) b!6129286))

(assert (= (and b!6129286 c!1101810) b!6129291))

(assert (= (and b!6129286 (not c!1101810)) b!6129292))

(assert (= (and b!6129292 (not res!2540457)) b!6129290))

(assert (= (and b!6129290 res!2540461) b!6129288))

(assert (= (and b!6129288 res!2540456) b!6129282))

(assert (= (and b!6129282 res!2540459) b!6129287))

(assert (= (and b!6129290 (not res!2540462)) b!6129283))

(assert (= (and b!6129283 res!2540458) b!6129285))

(assert (= (and b!6129285 (not res!2540463)) b!6129289))

(assert (= (and b!6129289 (not res!2540460)) b!6129284))

(assert (= (or b!6129293 b!6129285 b!6129288) bm!508186))

(assert (=> d!1920384 m!6972836))

(assert (=> d!1920384 m!6972838))

(assert (=> d!1920384 m!6972844))

(declare-fun m!6973200 () Bool)

(assert (=> d!1920384 m!6973200))

(assert (=> bm!508186 m!6972836))

(assert (=> bm!508186 m!6972838))

(assert (=> b!6129289 m!6972836))

(declare-fun m!6973202 () Bool)

(assert (=> b!6129289 m!6973202))

(assert (=> b!6129289 m!6973202))

(declare-fun m!6973204 () Bool)

(assert (=> b!6129289 m!6973204))

(assert (=> b!6129284 m!6972836))

(declare-fun m!6973206 () Bool)

(assert (=> b!6129284 m!6973206))

(assert (=> b!6129287 m!6972836))

(assert (=> b!6129287 m!6973206))

(assert (=> b!6129294 m!6972844))

(declare-fun m!6973208 () Bool)

(assert (=> b!6129294 m!6973208))

(assert (=> b!6129295 m!6972836))

(assert (=> b!6129295 m!6973206))

(assert (=> b!6129295 m!6972844))

(assert (=> b!6129295 m!6973206))

(declare-fun m!6973210 () Bool)

(assert (=> b!6129295 m!6973210))

(assert (=> b!6129295 m!6972836))

(assert (=> b!6129295 m!6973202))

(assert (=> b!6129295 m!6973210))

(assert (=> b!6129295 m!6973202))

(declare-fun m!6973212 () Bool)

(assert (=> b!6129295 m!6973212))

(assert (=> b!6129282 m!6972836))

(assert (=> b!6129282 m!6973202))

(assert (=> b!6129282 m!6973202))

(assert (=> b!6129282 m!6973204))

(assert (=> b!6128791 d!1920384))

(declare-fun b!6129316 () Bool)

(declare-fun c!1101825 () Bool)

(assert (=> b!6129316 (= c!1101825 (nullable!6065 (regOne!32656 r!7292)))))

(declare-fun e!3736037 () Regex!16072)

(declare-fun e!3736036 () Regex!16072)

(assert (=> b!6129316 (= e!3736037 e!3736036)))

(declare-fun b!6129317 () Bool)

(declare-fun e!3736038 () Regex!16072)

(declare-fun call!508200 () Regex!16072)

(declare-fun call!508203 () Regex!16072)

(assert (=> b!6129317 (= e!3736038 (Union!16072 call!508200 call!508203))))

(declare-fun b!6129318 () Bool)

(assert (=> b!6129318 (= e!3736038 e!3736037)))

(declare-fun c!1101824 () Bool)

(assert (=> b!6129318 (= c!1101824 (is-Star!16072 r!7292))))

(declare-fun b!6129319 () Bool)

(declare-fun e!3736039 () Regex!16072)

(declare-fun e!3736035 () Regex!16072)

(assert (=> b!6129319 (= e!3736039 e!3736035)))

(declare-fun c!1101821 () Bool)

(assert (=> b!6129319 (= c!1101821 (is-ElementMatch!16072 r!7292))))

(declare-fun b!6129320 () Bool)

(assert (=> b!6129320 (= e!3736035 (ite (= (head!12665 s!2326) (c!1101550 r!7292)) EmptyExpr!16072 EmptyLang!16072))))

(declare-fun b!6129321 () Bool)

(assert (=> b!6129321 (= e!3736039 EmptyLang!16072)))

(declare-fun c!1101822 () Bool)

(declare-fun bm!508196 () Bool)

(assert (=> bm!508196 (= call!508203 (derivativeStep!4792 (ite c!1101822 (regTwo!32657 r!7292) (ite c!1101824 (reg!16401 r!7292) (ite c!1101825 (regTwo!32656 r!7292) (regOne!32656 r!7292)))) (head!12665 s!2326)))))

(declare-fun bm!508197 () Bool)

(assert (=> bm!508197 (= call!508200 (derivativeStep!4792 (ite c!1101822 (regOne!32657 r!7292) (regOne!32656 r!7292)) (head!12665 s!2326)))))

(declare-fun b!6129322 () Bool)

(declare-fun call!508201 () Regex!16072)

(assert (=> b!6129322 (= e!3736036 (Union!16072 (Concat!24917 call!508200 (regTwo!32656 r!7292)) call!508201))))

(declare-fun d!1920386 () Bool)

(declare-fun lt!2331756 () Regex!16072)

(assert (=> d!1920386 (validRegex!7808 lt!2331756)))

(assert (=> d!1920386 (= lt!2331756 e!3736039)))

(declare-fun c!1101823 () Bool)

(assert (=> d!1920386 (= c!1101823 (or (is-EmptyExpr!16072 r!7292) (is-EmptyLang!16072 r!7292)))))

(assert (=> d!1920386 (validRegex!7808 r!7292)))

(assert (=> d!1920386 (= (derivativeStep!4792 r!7292 (head!12665 s!2326)) lt!2331756)))

(declare-fun bm!508195 () Bool)

(declare-fun call!508202 () Regex!16072)

(assert (=> bm!508195 (= call!508202 call!508203)))

(declare-fun bm!508198 () Bool)

(assert (=> bm!508198 (= call!508201 call!508202)))

(declare-fun b!6129323 () Bool)

(assert (=> b!6129323 (= e!3736036 (Union!16072 (Concat!24917 call!508201 (regTwo!32656 r!7292)) EmptyLang!16072))))

(declare-fun b!6129324 () Bool)

(assert (=> b!6129324 (= e!3736037 (Concat!24917 call!508202 r!7292))))

(declare-fun b!6129325 () Bool)

(assert (=> b!6129325 (= c!1101822 (is-Union!16072 r!7292))))

(assert (=> b!6129325 (= e!3736035 e!3736038)))

(assert (= (and d!1920386 c!1101823) b!6129321))

(assert (= (and d!1920386 (not c!1101823)) b!6129319))

(assert (= (and b!6129319 c!1101821) b!6129320))

(assert (= (and b!6129319 (not c!1101821)) b!6129325))

(assert (= (and b!6129325 c!1101822) b!6129317))

(assert (= (and b!6129325 (not c!1101822)) b!6129318))

(assert (= (and b!6129318 c!1101824) b!6129324))

(assert (= (and b!6129318 (not c!1101824)) b!6129316))

(assert (= (and b!6129316 c!1101825) b!6129322))

(assert (= (and b!6129316 (not c!1101825)) b!6129323))

(assert (= (or b!6129322 b!6129323) bm!508198))

(assert (= (or b!6129324 bm!508198) bm!508195))

(assert (= (or b!6129317 bm!508195) bm!508196))

(assert (= (or b!6129317 b!6129322) bm!508197))

(assert (=> b!6129316 m!6973184))

(assert (=> bm!508196 m!6972840))

(declare-fun m!6973214 () Bool)

(assert (=> bm!508196 m!6973214))

(assert (=> bm!508197 m!6972840))

(declare-fun m!6973216 () Bool)

(assert (=> bm!508197 m!6973216))

(declare-fun m!6973218 () Bool)

(assert (=> d!1920386 m!6973218))

(assert (=> d!1920386 m!6972450))

(assert (=> b!6128791 d!1920386))

(assert (=> b!6128791 d!1920304))

(assert (=> b!6128791 d!1920348))

(assert (=> bs!1520422 d!1920180))

(assert (=> b!6128392 d!1920176))

(declare-fun bs!1520487 () Bool)

(declare-fun d!1920388 () Bool)

(assert (= bs!1520487 (and d!1920388 d!1920322)))

(declare-fun lambda!333888 () Int)

(assert (=> bs!1520487 (= lambda!333888 lambda!333882)))

(assert (=> d!1920388 (= (nullableZipper!1853 (set.union lt!2331618 lt!2331615)) (exists!2419 (set.union lt!2331618 lt!2331615) lambda!333888))))

(declare-fun bs!1520488 () Bool)

(assert (= bs!1520488 d!1920388))

(declare-fun m!6973220 () Bool)

(assert (=> bs!1520488 m!6973220))

(assert (=> b!6128371 d!1920388))

(declare-fun d!1920390 () Bool)

(assert (=> d!1920390 (= (isEmpty!36330 (t!377982 (unfocusZipperList!1493 zl!343))) (is-Nil!64391 (t!377982 (unfocusZipperList!1493 zl!343))))))

(assert (=> b!6128622 d!1920390))

(assert (=> bm!508112 d!1920364))

(declare-fun bm!508199 () Bool)

(declare-fun call!508207 () (Set Context!10912))

(declare-fun call!508209 () (Set Context!10912))

(assert (=> bm!508199 (= call!508207 call!508209)))

(declare-fun bm!508200 () Bool)

(declare-fun call!508204 () List!64515)

(declare-fun c!1101829 () Bool)

(declare-fun c!1101827 () Bool)

(assert (=> bm!508200 (= call!508204 ($colon$colon!1949 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 lt!2331616)))) (ite (or c!1101829 c!1101827) (regTwo!32656 (h!70839 (exprs!5956 lt!2331616))) (h!70839 (exprs!5956 lt!2331616)))))))

(declare-fun b!6129326 () Bool)

(declare-fun e!3736044 () (Set Context!10912))

(declare-fun call!508205 () (Set Context!10912))

(assert (=> b!6129326 (= e!3736044 (set.union call!508205 call!508207))))

(declare-fun c!1101826 () Bool)

(declare-fun bm!508201 () Bool)

(assert (=> bm!508201 (= call!508205 (derivationStepZipperDown!1320 (ite c!1101826 (regOne!32657 (h!70839 (exprs!5956 lt!2331616))) (regOne!32656 (h!70839 (exprs!5956 lt!2331616)))) (ite c!1101826 (Context!10913 (t!377982 (exprs!5956 lt!2331616))) (Context!10913 call!508204)) (h!70841 s!2326)))))

(declare-fun b!6129328 () Bool)

(declare-fun e!3736040 () (Set Context!10912))

(assert (=> b!6129328 (= e!3736040 (as set.empty (Set Context!10912)))))

(declare-fun bm!508202 () Bool)

(declare-fun call!508206 () List!64515)

(assert (=> bm!508202 (= call!508209 (derivationStepZipperDown!1320 (ite c!1101826 (regTwo!32657 (h!70839 (exprs!5956 lt!2331616))) (ite c!1101829 (regTwo!32656 (h!70839 (exprs!5956 lt!2331616))) (ite c!1101827 (regOne!32656 (h!70839 (exprs!5956 lt!2331616))) (reg!16401 (h!70839 (exprs!5956 lt!2331616)))))) (ite (or c!1101826 c!1101829) (Context!10913 (t!377982 (exprs!5956 lt!2331616))) (Context!10913 call!508206)) (h!70841 s!2326)))))

(declare-fun b!6129329 () Bool)

(declare-fun call!508208 () (Set Context!10912))

(assert (=> b!6129329 (= e!3736040 call!508208)))

(declare-fun bm!508203 () Bool)

(assert (=> bm!508203 (= call!508206 call!508204)))

(declare-fun b!6129330 () Bool)

(declare-fun e!3736041 () Bool)

(assert (=> b!6129330 (= c!1101829 e!3736041)))

(declare-fun res!2540464 () Bool)

(assert (=> b!6129330 (=> (not res!2540464) (not e!3736041))))

(assert (=> b!6129330 (= res!2540464 (is-Concat!24917 (h!70839 (exprs!5956 lt!2331616))))))

(declare-fun e!3736045 () (Set Context!10912))

(assert (=> b!6129330 (= e!3736045 e!3736044)))

(declare-fun b!6129331 () Bool)

(declare-fun e!3736043 () (Set Context!10912))

(assert (=> b!6129331 (= e!3736043 (set.insert (Context!10913 (t!377982 (exprs!5956 lt!2331616))) (as set.empty (Set Context!10912))))))

(declare-fun b!6129332 () Bool)

(declare-fun c!1101830 () Bool)

(assert (=> b!6129332 (= c!1101830 (is-Star!16072 (h!70839 (exprs!5956 lt!2331616))))))

(declare-fun e!3736042 () (Set Context!10912))

(assert (=> b!6129332 (= e!3736042 e!3736040)))

(declare-fun d!1920392 () Bool)

(declare-fun c!1101828 () Bool)

(assert (=> d!1920392 (= c!1101828 (and (is-ElementMatch!16072 (h!70839 (exprs!5956 lt!2331616))) (= (c!1101550 (h!70839 (exprs!5956 lt!2331616))) (h!70841 s!2326))))))

(assert (=> d!1920392 (= (derivationStepZipperDown!1320 (h!70839 (exprs!5956 lt!2331616)) (Context!10913 (t!377982 (exprs!5956 lt!2331616))) (h!70841 s!2326)) e!3736043)))

(declare-fun b!6129327 () Bool)

(assert (=> b!6129327 (= e!3736041 (nullable!6065 (regOne!32656 (h!70839 (exprs!5956 lt!2331616)))))))

(declare-fun b!6129333 () Bool)

(assert (=> b!6129333 (= e!3736044 e!3736042)))

(assert (=> b!6129333 (= c!1101827 (is-Concat!24917 (h!70839 (exprs!5956 lt!2331616))))))

(declare-fun b!6129334 () Bool)

(assert (=> b!6129334 (= e!3736042 call!508208)))

(declare-fun bm!508204 () Bool)

(assert (=> bm!508204 (= call!508208 call!508207)))

(declare-fun b!6129335 () Bool)

(assert (=> b!6129335 (= e!3736045 (set.union call!508205 call!508209))))

(declare-fun b!6129336 () Bool)

(assert (=> b!6129336 (= e!3736043 e!3736045)))

(assert (=> b!6129336 (= c!1101826 (is-Union!16072 (h!70839 (exprs!5956 lt!2331616))))))

(assert (= (and d!1920392 c!1101828) b!6129331))

(assert (= (and d!1920392 (not c!1101828)) b!6129336))

(assert (= (and b!6129336 c!1101826) b!6129335))

(assert (= (and b!6129336 (not c!1101826)) b!6129330))

(assert (= (and b!6129330 res!2540464) b!6129327))

(assert (= (and b!6129330 c!1101829) b!6129326))

(assert (= (and b!6129330 (not c!1101829)) b!6129333))

(assert (= (and b!6129333 c!1101827) b!6129334))

(assert (= (and b!6129333 (not c!1101827)) b!6129332))

(assert (= (and b!6129332 c!1101830) b!6129329))

(assert (= (and b!6129332 (not c!1101830)) b!6129328))

(assert (= (or b!6129334 b!6129329) bm!508203))

(assert (= (or b!6129334 b!6129329) bm!508204))

(assert (= (or b!6129326 bm!508203) bm!508200))

(assert (= (or b!6129326 bm!508204) bm!508199))

(assert (= (or b!6129335 bm!508199) bm!508202))

(assert (= (or b!6129335 b!6129326) bm!508201))

(declare-fun m!6973222 () Bool)

(assert (=> bm!508200 m!6973222))

(declare-fun m!6973224 () Bool)

(assert (=> bm!508201 m!6973224))

(declare-fun m!6973226 () Bool)

(assert (=> b!6129331 m!6973226))

(declare-fun m!6973228 () Bool)

(assert (=> bm!508202 m!6973228))

(declare-fun m!6973230 () Bool)

(assert (=> b!6129327 m!6973230))

(assert (=> bm!508063 d!1920392))

(declare-fun d!1920394 () Bool)

(assert (=> d!1920394 (= (nullable!6065 (reg!16401 r!7292)) (nullableFct!2029 (reg!16401 r!7292)))))

(declare-fun bs!1520489 () Bool)

(assert (= bs!1520489 d!1920394))

(declare-fun m!6973232 () Bool)

(assert (=> bs!1520489 m!6973232))

(assert (=> b!6128882 d!1920394))

(declare-fun d!1920396 () Bool)

(assert (=> d!1920396 (= (head!12666 (exprs!5956 (h!70840 zl!343))) (h!70839 (exprs!5956 (h!70840 zl!343))))))

(assert (=> b!6128481 d!1920396))

(declare-fun bs!1520490 () Bool)

(declare-fun d!1920398 () Bool)

(assert (= bs!1520490 (and d!1920398 d!1920322)))

(declare-fun lambda!333889 () Int)

(assert (=> bs!1520490 (= lambda!333889 lambda!333882)))

(declare-fun bs!1520491 () Bool)

(assert (= bs!1520491 (and d!1920398 d!1920388)))

(assert (=> bs!1520491 (= lambda!333889 lambda!333888)))

(assert (=> d!1920398 (= (nullableZipper!1853 lt!2331615) (exists!2419 lt!2331615 lambda!333889))))

(declare-fun bs!1520492 () Bool)

(assert (= bs!1520492 d!1920398))

(declare-fun m!6973234 () Bool)

(assert (=> bs!1520492 m!6973234))

(assert (=> b!6128376 d!1920398))

(declare-fun bs!1520493 () Bool)

(declare-fun d!1920400 () Bool)

(assert (= bs!1520493 (and d!1920400 d!1920256)))

(declare-fun lambda!333890 () Int)

(assert (=> bs!1520493 (= lambda!333890 lambda!333865)))

(declare-fun bs!1520494 () Bool)

(assert (= bs!1520494 (and d!1920400 d!1920310)))

(assert (=> bs!1520494 (= lambda!333890 lambda!333879)))

(declare-fun bs!1520495 () Bool)

(assert (= bs!1520495 (and d!1920400 d!1920236)))

(assert (=> bs!1520495 (= lambda!333890 lambda!333848)))

(declare-fun bs!1520496 () Bool)

(assert (= bs!1520496 (and d!1920400 d!1920368)))

(assert (=> bs!1520496 (= lambda!333890 lambda!333887)))

(declare-fun bs!1520497 () Bool)

(assert (= bs!1520497 (and d!1920400 d!1920308)))

(assert (=> bs!1520497 (= lambda!333890 lambda!333878)))

(declare-fun bs!1520498 () Bool)

(assert (= bs!1520498 (and d!1920400 d!1920228)))

(assert (=> bs!1520498 (= lambda!333890 lambda!333843)))

(declare-fun bs!1520499 () Bool)

(assert (= bs!1520499 (and d!1920400 d!1920172)))

(assert (=> bs!1520499 (= lambda!333890 lambda!333822)))

(declare-fun bs!1520500 () Bool)

(assert (= bs!1520500 (and d!1920400 d!1920366)))

(assert (=> bs!1520500 (= lambda!333890 lambda!333886)))

(declare-fun bs!1520501 () Bool)

(assert (= bs!1520501 (and d!1920400 d!1920262)))

(assert (=> bs!1520501 (= lambda!333890 lambda!333866)))

(declare-fun bs!1520502 () Bool)

(assert (= bs!1520502 (and d!1920400 d!1920188)))

(assert (=> bs!1520502 (= lambda!333890 lambda!333825)))

(declare-fun b!6129337 () Bool)

(declare-fun e!3736050 () Bool)

(assert (=> b!6129337 (= e!3736050 (isEmpty!36330 (t!377982 (t!377982 (exprs!5956 (h!70840 zl!343))))))))

(declare-fun e!3736048 () Bool)

(assert (=> d!1920400 e!3736048))

(declare-fun res!2540465 () Bool)

(assert (=> d!1920400 (=> (not res!2540465) (not e!3736048))))

(declare-fun lt!2331757 () Regex!16072)

(assert (=> d!1920400 (= res!2540465 (validRegex!7808 lt!2331757))))

(declare-fun e!3736049 () Regex!16072)

(assert (=> d!1920400 (= lt!2331757 e!3736049)))

(declare-fun c!1101833 () Bool)

(assert (=> d!1920400 (= c!1101833 e!3736050)))

(declare-fun res!2540466 () Bool)

(assert (=> d!1920400 (=> (not res!2540466) (not e!3736050))))

(assert (=> d!1920400 (= res!2540466 (is-Cons!64391 (t!377982 (exprs!5956 (h!70840 zl!343)))))))

(assert (=> d!1920400 (forall!15193 (t!377982 (exprs!5956 (h!70840 zl!343))) lambda!333890)))

(assert (=> d!1920400 (= (generalisedConcat!1669 (t!377982 (exprs!5956 (h!70840 zl!343)))) lt!2331757)))

(declare-fun b!6129338 () Bool)

(declare-fun e!3736046 () Regex!16072)

(assert (=> b!6129338 (= e!3736046 (Concat!24917 (h!70839 (t!377982 (exprs!5956 (h!70840 zl!343)))) (generalisedConcat!1669 (t!377982 (t!377982 (exprs!5956 (h!70840 zl!343)))))))))

(declare-fun b!6129339 () Bool)

(assert (=> b!6129339 (= e!3736046 EmptyExpr!16072)))

(declare-fun b!6129340 () Bool)

(declare-fun e!3736047 () Bool)

(assert (=> b!6129340 (= e!3736047 (= lt!2331757 (head!12666 (t!377982 (exprs!5956 (h!70840 zl!343))))))))

(declare-fun b!6129341 () Bool)

(assert (=> b!6129341 (= e!3736047 (isConcat!1012 lt!2331757))))

(declare-fun b!6129342 () Bool)

(declare-fun e!3736051 () Bool)

(assert (=> b!6129342 (= e!3736051 e!3736047)))

(declare-fun c!1101831 () Bool)

(assert (=> b!6129342 (= c!1101831 (isEmpty!36330 (tail!11751 (t!377982 (exprs!5956 (h!70840 zl!343))))))))

(declare-fun b!6129343 () Bool)

(assert (=> b!6129343 (= e!3736051 (isEmptyExpr!1489 lt!2331757))))

(declare-fun b!6129344 () Bool)

(assert (=> b!6129344 (= e!3736048 e!3736051)))

(declare-fun c!1101832 () Bool)

(assert (=> b!6129344 (= c!1101832 (isEmpty!36330 (t!377982 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun b!6129345 () Bool)

(assert (=> b!6129345 (= e!3736049 (h!70839 (t!377982 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun b!6129346 () Bool)

(assert (=> b!6129346 (= e!3736049 e!3736046)))

(declare-fun c!1101834 () Bool)

(assert (=> b!6129346 (= c!1101834 (is-Cons!64391 (t!377982 (exprs!5956 (h!70840 zl!343)))))))

(assert (= (and d!1920400 res!2540466) b!6129337))

(assert (= (and d!1920400 c!1101833) b!6129345))

(assert (= (and d!1920400 (not c!1101833)) b!6129346))

(assert (= (and b!6129346 c!1101834) b!6129338))

(assert (= (and b!6129346 (not c!1101834)) b!6129339))

(assert (= (and d!1920400 res!2540465) b!6129344))

(assert (= (and b!6129344 c!1101832) b!6129343))

(assert (= (and b!6129344 (not c!1101832)) b!6129342))

(assert (= (and b!6129342 c!1101831) b!6129340))

(assert (= (and b!6129342 (not c!1101831)) b!6129341))

(assert (=> b!6129344 m!6972490))

(declare-fun m!6973236 () Bool)

(assert (=> b!6129343 m!6973236))

(declare-fun m!6973238 () Bool)

(assert (=> b!6129338 m!6973238))

(declare-fun m!6973240 () Bool)

(assert (=> b!6129341 m!6973240))

(declare-fun m!6973242 () Bool)

(assert (=> b!6129337 m!6973242))

(declare-fun m!6973244 () Bool)

(assert (=> b!6129342 m!6973244))

(assert (=> b!6129342 m!6973244))

(declare-fun m!6973246 () Bool)

(assert (=> b!6129342 m!6973246))

(declare-fun m!6973248 () Bool)

(assert (=> b!6129340 m!6973248))

(declare-fun m!6973250 () Bool)

(assert (=> d!1920400 m!6973250))

(declare-fun m!6973252 () Bool)

(assert (=> d!1920400 m!6973252))

(assert (=> b!6128479 d!1920400))

(declare-fun bm!508205 () Bool)

(declare-fun call!508213 () (Set Context!10912))

(declare-fun call!508215 () (Set Context!10912))

(assert (=> bm!508205 (= call!508213 call!508215)))

(declare-fun bm!508206 () Bool)

(declare-fun c!1101836 () Bool)

(declare-fun call!508210 () List!64515)

(declare-fun c!1101838 () Bool)

(assert (=> bm!508206 (= call!508210 ($colon$colon!1949 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343))))) (ite (or c!1101838 c!1101836) (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (h!70839 (exprs!5956 (h!70840 zl!343))))))))

(declare-fun b!6129347 () Bool)

(declare-fun e!3736056 () (Set Context!10912))

(declare-fun call!508211 () (Set Context!10912))

(assert (=> b!6129347 (= e!3736056 (set.union call!508211 call!508213))))

(declare-fun c!1101835 () Bool)

(declare-fun bm!508207 () Bool)

(assert (=> bm!508207 (= call!508211 (derivationStepZipperDown!1320 (ite c!1101835 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343))))) (ite c!1101835 (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343)))) (Context!10913 call!508210)) (h!70841 s!2326)))))

(declare-fun b!6129349 () Bool)

(declare-fun e!3736052 () (Set Context!10912))

(assert (=> b!6129349 (= e!3736052 (as set.empty (Set Context!10912)))))

(declare-fun call!508212 () List!64515)

(declare-fun bm!508208 () Bool)

(assert (=> bm!508208 (= call!508215 (derivationStepZipperDown!1320 (ite c!1101835 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101838 (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (ite c!1101836 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (reg!16401 (h!70839 (exprs!5956 (h!70840 zl!343))))))) (ite (or c!1101835 c!1101838) (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343)))) (Context!10913 call!508212)) (h!70841 s!2326)))))

(declare-fun b!6129350 () Bool)

(declare-fun call!508214 () (Set Context!10912))

(assert (=> b!6129350 (= e!3736052 call!508214)))

(declare-fun bm!508209 () Bool)

(assert (=> bm!508209 (= call!508212 call!508210)))

(declare-fun b!6129351 () Bool)

(declare-fun e!3736053 () Bool)

(assert (=> b!6129351 (= c!1101838 e!3736053)))

(declare-fun res!2540467 () Bool)

(assert (=> b!6129351 (=> (not res!2540467) (not e!3736053))))

(assert (=> b!6129351 (= res!2540467 (is-Concat!24917 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun e!3736057 () (Set Context!10912))

(assert (=> b!6129351 (= e!3736057 e!3736056)))

(declare-fun b!6129352 () Bool)

(declare-fun e!3736055 () (Set Context!10912))

(assert (=> b!6129352 (= e!3736055 (set.insert (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343)))) (as set.empty (Set Context!10912))))))

(declare-fun b!6129353 () Bool)

(declare-fun c!1101839 () Bool)

(assert (=> b!6129353 (= c!1101839 (is-Star!16072 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun e!3736054 () (Set Context!10912))

(assert (=> b!6129353 (= e!3736054 e!3736052)))

(declare-fun d!1920402 () Bool)

(declare-fun c!1101837 () Bool)

(assert (=> d!1920402 (= c!1101837 (and (is-ElementMatch!16072 (h!70839 (exprs!5956 (h!70840 zl!343)))) (= (c!1101550 (h!70839 (exprs!5956 (h!70840 zl!343)))) (h!70841 s!2326))))))

(assert (=> d!1920402 (= (derivationStepZipperDown!1320 (h!70839 (exprs!5956 (h!70840 zl!343))) (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343)))) (h!70841 s!2326)) e!3736055)))

(declare-fun b!6129348 () Bool)

(assert (=> b!6129348 (= e!3736053 (nullable!6065 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343))))))))

(declare-fun b!6129354 () Bool)

(assert (=> b!6129354 (= e!3736056 e!3736054)))

(assert (=> b!6129354 (= c!1101836 (is-Concat!24917 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun b!6129355 () Bool)

(assert (=> b!6129355 (= e!3736054 call!508214)))

(declare-fun bm!508210 () Bool)

(assert (=> bm!508210 (= call!508214 call!508213)))

(declare-fun b!6129356 () Bool)

(assert (=> b!6129356 (= e!3736057 (set.union call!508211 call!508215))))

(declare-fun b!6129357 () Bool)

(assert (=> b!6129357 (= e!3736055 e!3736057)))

(assert (=> b!6129357 (= c!1101835 (is-Union!16072 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(assert (= (and d!1920402 c!1101837) b!6129352))

(assert (= (and d!1920402 (not c!1101837)) b!6129357))

(assert (= (and b!6129357 c!1101835) b!6129356))

(assert (= (and b!6129357 (not c!1101835)) b!6129351))

(assert (= (and b!6129351 res!2540467) b!6129348))

(assert (= (and b!6129351 c!1101838) b!6129347))

(assert (= (and b!6129351 (not c!1101838)) b!6129354))

(assert (= (and b!6129354 c!1101836) b!6129355))

(assert (= (and b!6129354 (not c!1101836)) b!6129353))

(assert (= (and b!6129353 c!1101839) b!6129350))

(assert (= (and b!6129353 (not c!1101839)) b!6129349))

(assert (= (or b!6129355 b!6129350) bm!508209))

(assert (= (or b!6129355 b!6129350) bm!508210))

(assert (= (or b!6129347 bm!508209) bm!508206))

(assert (= (or b!6129347 bm!508210) bm!508205))

(assert (= (or b!6129356 bm!508205) bm!508208))

(assert (= (or b!6129356 b!6129347) bm!508207))

(declare-fun m!6973254 () Bool)

(assert (=> bm!508206 m!6973254))

(declare-fun m!6973256 () Bool)

(assert (=> bm!508207 m!6973256))

(declare-fun m!6973258 () Bool)

(assert (=> b!6129352 m!6973258))

(declare-fun m!6973260 () Bool)

(assert (=> bm!508208 m!6973260))

(assert (=> b!6129348 m!6972636))

(assert (=> bm!508044 d!1920402))

(declare-fun d!1920404 () Bool)

(assert (=> d!1920404 (= (nullable!6065 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (nullableFct!2029 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))))))

(declare-fun bs!1520503 () Bool)

(assert (= bs!1520503 d!1920404))

(declare-fun m!6973262 () Bool)

(assert (=> bs!1520503 m!6973262))

(assert (=> b!6128435 d!1920404))

(declare-fun b!6129358 () Bool)

(declare-fun res!2540471 () Bool)

(declare-fun e!3736058 () Bool)

(assert (=> b!6129358 (=> (not res!2540471) (not e!3736058))))

(assert (=> b!6129358 (= res!2540471 (isEmpty!36334 (tail!11750 (_2!36354 (get!22210 lt!2331679)))))))

(declare-fun bm!508211 () Bool)

(declare-fun call!508216 () Bool)

(assert (=> bm!508211 (= call!508216 (isEmpty!36334 (_2!36354 (get!22210 lt!2331679))))))

(declare-fun b!6129359 () Bool)

(declare-fun e!3736063 () Bool)

(declare-fun e!3736059 () Bool)

(assert (=> b!6129359 (= e!3736063 e!3736059)))

(declare-fun res!2540470 () Bool)

(assert (=> b!6129359 (=> (not res!2540470) (not e!3736059))))

(declare-fun lt!2331758 () Bool)

(assert (=> b!6129359 (= res!2540470 (not lt!2331758))))

(declare-fun b!6129360 () Bool)

(declare-fun e!3736062 () Bool)

(assert (=> b!6129360 (= e!3736062 (not (= (head!12665 (_2!36354 (get!22210 lt!2331679))) (c!1101550 (regTwo!32656 r!7292)))))))

(declare-fun b!6129361 () Bool)

(assert (=> b!6129361 (= e!3736059 e!3736062)))

(declare-fun res!2540475 () Bool)

(assert (=> b!6129361 (=> res!2540475 e!3736062)))

(assert (=> b!6129361 (= res!2540475 call!508216)))

(declare-fun b!6129362 () Bool)

(declare-fun e!3736061 () Bool)

(declare-fun e!3736064 () Bool)

(assert (=> b!6129362 (= e!3736061 e!3736064)))

(declare-fun c!1101842 () Bool)

(assert (=> b!6129362 (= c!1101842 (is-EmptyLang!16072 (regTwo!32656 r!7292)))))

(declare-fun b!6129363 () Bool)

(assert (=> b!6129363 (= e!3736058 (= (head!12665 (_2!36354 (get!22210 lt!2331679))) (c!1101550 (regTwo!32656 r!7292))))))

(declare-fun b!6129364 () Bool)

(declare-fun res!2540468 () Bool)

(assert (=> b!6129364 (=> (not res!2540468) (not e!3736058))))

(assert (=> b!6129364 (= res!2540468 (not call!508216))))

(declare-fun b!6129365 () Bool)

(declare-fun res!2540472 () Bool)

(assert (=> b!6129365 (=> res!2540472 e!3736062)))

(assert (=> b!6129365 (= res!2540472 (not (isEmpty!36334 (tail!11750 (_2!36354 (get!22210 lt!2331679))))))))

(declare-fun b!6129366 () Bool)

(declare-fun res!2540474 () Bool)

(assert (=> b!6129366 (=> res!2540474 e!3736063)))

(assert (=> b!6129366 (= res!2540474 e!3736058)))

(declare-fun res!2540473 () Bool)

(assert (=> b!6129366 (=> (not res!2540473) (not e!3736058))))

(assert (=> b!6129366 (= res!2540473 lt!2331758)))

(declare-fun d!1920406 () Bool)

(assert (=> d!1920406 e!3736061))

(declare-fun c!1101840 () Bool)

(assert (=> d!1920406 (= c!1101840 (is-EmptyExpr!16072 (regTwo!32656 r!7292)))))

(declare-fun e!3736060 () Bool)

(assert (=> d!1920406 (= lt!2331758 e!3736060)))

(declare-fun c!1101841 () Bool)

(assert (=> d!1920406 (= c!1101841 (isEmpty!36334 (_2!36354 (get!22210 lt!2331679))))))

(assert (=> d!1920406 (validRegex!7808 (regTwo!32656 r!7292))))

(assert (=> d!1920406 (= (matchR!8255 (regTwo!32656 r!7292) (_2!36354 (get!22210 lt!2331679))) lt!2331758)))

(declare-fun b!6129367 () Bool)

(assert (=> b!6129367 (= e!3736064 (not lt!2331758))))

(declare-fun b!6129368 () Bool)

(declare-fun res!2540469 () Bool)

(assert (=> b!6129368 (=> res!2540469 e!3736063)))

(assert (=> b!6129368 (= res!2540469 (not (is-ElementMatch!16072 (regTwo!32656 r!7292))))))

(assert (=> b!6129368 (= e!3736064 e!3736063)))

(declare-fun b!6129369 () Bool)

(assert (=> b!6129369 (= e!3736061 (= lt!2331758 call!508216))))

(declare-fun b!6129370 () Bool)

(assert (=> b!6129370 (= e!3736060 (nullable!6065 (regTwo!32656 r!7292)))))

(declare-fun b!6129371 () Bool)

(assert (=> b!6129371 (= e!3736060 (matchR!8255 (derivativeStep!4792 (regTwo!32656 r!7292) (head!12665 (_2!36354 (get!22210 lt!2331679)))) (tail!11750 (_2!36354 (get!22210 lt!2331679)))))))

(assert (= (and d!1920406 c!1101841) b!6129370))

(assert (= (and d!1920406 (not c!1101841)) b!6129371))

(assert (= (and d!1920406 c!1101840) b!6129369))

(assert (= (and d!1920406 (not c!1101840)) b!6129362))

(assert (= (and b!6129362 c!1101842) b!6129367))

(assert (= (and b!6129362 (not c!1101842)) b!6129368))

(assert (= (and b!6129368 (not res!2540469)) b!6129366))

(assert (= (and b!6129366 res!2540473) b!6129364))

(assert (= (and b!6129364 res!2540468) b!6129358))

(assert (= (and b!6129358 res!2540471) b!6129363))

(assert (= (and b!6129366 (not res!2540474)) b!6129359))

(assert (= (and b!6129359 res!2540470) b!6129361))

(assert (= (and b!6129361 (not res!2540475)) b!6129365))

(assert (= (and b!6129365 (not res!2540472)) b!6129360))

(assert (= (or b!6129369 b!6129361 b!6129364) bm!508211))

(declare-fun m!6973264 () Bool)

(assert (=> d!1920406 m!6973264))

(assert (=> d!1920406 m!6973002))

(assert (=> bm!508211 m!6973264))

(declare-fun m!6973266 () Bool)

(assert (=> b!6129365 m!6973266))

(assert (=> b!6129365 m!6973266))

(declare-fun m!6973268 () Bool)

(assert (=> b!6129365 m!6973268))

(declare-fun m!6973270 () Bool)

(assert (=> b!6129360 m!6973270))

(assert (=> b!6129363 m!6973270))

(assert (=> b!6129370 m!6973004))

(assert (=> b!6129371 m!6973270))

(assert (=> b!6129371 m!6973270))

(declare-fun m!6973272 () Bool)

(assert (=> b!6129371 m!6973272))

(assert (=> b!6129371 m!6973266))

(assert (=> b!6129371 m!6973272))

(assert (=> b!6129371 m!6973266))

(declare-fun m!6973274 () Bool)

(assert (=> b!6129371 m!6973274))

(assert (=> b!6129358 m!6973266))

(assert (=> b!6129358 m!6973266))

(assert (=> b!6129358 m!6973268))

(assert (=> b!6128534 d!1920406))

(declare-fun d!1920408 () Bool)

(assert (=> d!1920408 (= (get!22210 lt!2331679) (v!52101 lt!2331679))))

(assert (=> b!6128534 d!1920408))

(declare-fun d!1920410 () Bool)

(declare-fun c!1101843 () Bool)

(assert (=> d!1920410 (= c!1101843 (isEmpty!36334 (tail!11750 (t!377984 s!2326))))))

(declare-fun e!3736065 () Bool)

(assert (=> d!1920410 (= (matchZipper!2084 (derivationStepZipper!2045 lt!2331618 (head!12665 (t!377984 s!2326))) (tail!11750 (t!377984 s!2326))) e!3736065)))

(declare-fun b!6129372 () Bool)

(assert (=> b!6129372 (= e!3736065 (nullableZipper!1853 (derivationStepZipper!2045 lt!2331618 (head!12665 (t!377984 s!2326)))))))

(declare-fun b!6129373 () Bool)

(assert (=> b!6129373 (= e!3736065 (matchZipper!2084 (derivationStepZipper!2045 (derivationStepZipper!2045 lt!2331618 (head!12665 (t!377984 s!2326))) (head!12665 (tail!11750 (t!377984 s!2326)))) (tail!11750 (tail!11750 (t!377984 s!2326)))))))

(assert (= (and d!1920410 c!1101843) b!6129372))

(assert (= (and d!1920410 (not c!1101843)) b!6129373))

(assert (=> d!1920410 m!6972590))

(declare-fun m!6973276 () Bool)

(assert (=> d!1920410 m!6973276))

(assert (=> b!6129372 m!6972588))

(declare-fun m!6973278 () Bool)

(assert (=> b!6129372 m!6973278))

(assert (=> b!6129373 m!6972590))

(declare-fun m!6973280 () Bool)

(assert (=> b!6129373 m!6973280))

(assert (=> b!6129373 m!6972588))

(assert (=> b!6129373 m!6973280))

(declare-fun m!6973282 () Bool)

(assert (=> b!6129373 m!6973282))

(assert (=> b!6129373 m!6972590))

(declare-fun m!6973284 () Bool)

(assert (=> b!6129373 m!6973284))

(assert (=> b!6129373 m!6973282))

(assert (=> b!6129373 m!6973284))

(declare-fun m!6973286 () Bool)

(assert (=> b!6129373 m!6973286))

(assert (=> b!6128370 d!1920410))

(declare-fun bs!1520504 () Bool)

(declare-fun d!1920412 () Bool)

(assert (= bs!1520504 (and d!1920412 b!6128244)))

(declare-fun lambda!333893 () Int)

(assert (=> bs!1520504 (= (= (head!12665 (t!377984 s!2326)) (h!70841 s!2326)) (= lambda!333893 lambda!333808))))

(assert (=> d!1920412 true))

(assert (=> d!1920412 (= (derivationStepZipper!2045 lt!2331618 (head!12665 (t!377984 s!2326))) (flatMap!1577 lt!2331618 lambda!333893))))

(declare-fun bs!1520505 () Bool)

(assert (= bs!1520505 d!1920412))

(declare-fun m!6973288 () Bool)

(assert (=> bs!1520505 m!6973288))

(assert (=> b!6128370 d!1920412))

(declare-fun d!1920414 () Bool)

(assert (=> d!1920414 (= (head!12665 (t!377984 s!2326)) (h!70841 (t!377984 s!2326)))))

(assert (=> b!6128370 d!1920414))

(declare-fun d!1920416 () Bool)

(assert (=> d!1920416 (= (tail!11750 (t!377984 s!2326)) (t!377984 (t!377984 s!2326)))))

(assert (=> b!6128370 d!1920416))

(declare-fun d!1920418 () Bool)

(assert (=> d!1920418 (= (isEmpty!36330 (exprs!5956 (h!70840 zl!343))) (is-Nil!64391 (exprs!5956 (h!70840 zl!343))))))

(assert (=> b!6128485 d!1920418))

(declare-fun d!1920420 () Bool)

(assert (=> d!1920420 (= ($colon$colon!1949 (exprs!5956 lt!2331616) (ite (or c!1101582 c!1101580) (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (h!70839 (exprs!5956 (h!70840 zl!343))))) (Cons!64391 (ite (or c!1101582 c!1101580) (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))) (h!70839 (exprs!5956 (h!70840 zl!343)))) (exprs!5956 lt!2331616)))))

(assert (=> bm!508058 d!1920420))

(declare-fun b!6129377 () Bool)

(declare-fun e!3736066 () List!64517)

(assert (=> b!6129377 (= e!3736066 (Cons!64393 (h!70841 (_1!36354 (get!22210 lt!2331679))) (++!14158 (t!377984 (_1!36354 (get!22210 lt!2331679))) (_2!36354 (get!22210 lt!2331679)))))))

(declare-fun d!1920422 () Bool)

(declare-fun e!3736067 () Bool)

(assert (=> d!1920422 e!3736067))

(declare-fun res!2540477 () Bool)

(assert (=> d!1920422 (=> (not res!2540477) (not e!3736067))))

(declare-fun lt!2331759 () List!64517)

(assert (=> d!1920422 (= res!2540477 (= (content!11970 lt!2331759) (set.union (content!11970 (_1!36354 (get!22210 lt!2331679))) (content!11970 (_2!36354 (get!22210 lt!2331679))))))))

(assert (=> d!1920422 (= lt!2331759 e!3736066)))

(declare-fun c!1101846 () Bool)

(assert (=> d!1920422 (= c!1101846 (is-Nil!64393 (_1!36354 (get!22210 lt!2331679))))))

(assert (=> d!1920422 (= (++!14158 (_1!36354 (get!22210 lt!2331679)) (_2!36354 (get!22210 lt!2331679))) lt!2331759)))

(declare-fun b!6129376 () Bool)

(assert (=> b!6129376 (= e!3736066 (_2!36354 (get!22210 lt!2331679)))))

(declare-fun b!6129379 () Bool)

(assert (=> b!6129379 (= e!3736067 (or (not (= (_2!36354 (get!22210 lt!2331679)) Nil!64393)) (= lt!2331759 (_1!36354 (get!22210 lt!2331679)))))))

(declare-fun b!6129378 () Bool)

(declare-fun res!2540476 () Bool)

(assert (=> b!6129378 (=> (not res!2540476) (not e!3736067))))

(assert (=> b!6129378 (= res!2540476 (= (size!40215 lt!2331759) (+ (size!40215 (_1!36354 (get!22210 lt!2331679))) (size!40215 (_2!36354 (get!22210 lt!2331679))))))))

(assert (= (and d!1920422 c!1101846) b!6129376))

(assert (= (and d!1920422 (not c!1101846)) b!6129377))

(assert (= (and d!1920422 res!2540477) b!6129378))

(assert (= (and b!6129378 res!2540476) b!6129379))

(declare-fun m!6973290 () Bool)

(assert (=> b!6129377 m!6973290))

(declare-fun m!6973292 () Bool)

(assert (=> d!1920422 m!6973292))

(declare-fun m!6973294 () Bool)

(assert (=> d!1920422 m!6973294))

(declare-fun m!6973296 () Bool)

(assert (=> d!1920422 m!6973296))

(declare-fun m!6973298 () Bool)

(assert (=> b!6129378 m!6973298))

(declare-fun m!6973300 () Bool)

(assert (=> b!6129378 m!6973300))

(declare-fun m!6973302 () Bool)

(assert (=> b!6129378 m!6973302))

(assert (=> b!6128536 d!1920422))

(assert (=> b!6128536 d!1920408))

(declare-fun d!1920424 () Bool)

(assert (=> d!1920424 (= (isEmpty!36330 (tail!11751 (exprs!5956 (h!70840 zl!343)))) (is-Nil!64391 (tail!11751 (exprs!5956 (h!70840 zl!343)))))))

(assert (=> b!6128483 d!1920424))

(declare-fun d!1920426 () Bool)

(assert (=> d!1920426 (= (tail!11751 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))

(assert (=> b!6128483 d!1920426))

(assert (=> b!6128780 d!1920304))

(declare-fun d!1920428 () Bool)

(assert (=> d!1920428 (= (Exists!3142 lambda!333836) (choose!45529 lambda!333836))))

(declare-fun bs!1520506 () Bool)

(assert (= bs!1520506 d!1920428))

(declare-fun m!6973304 () Bool)

(assert (=> bs!1520506 m!6973304))

(assert (=> d!1920220 d!1920428))

(declare-fun d!1920430 () Bool)

(assert (=> d!1920430 (= (Exists!3142 lambda!333837) (choose!45529 lambda!333837))))

(declare-fun bs!1520507 () Bool)

(assert (= bs!1520507 d!1920430))

(declare-fun m!6973306 () Bool)

(assert (=> bs!1520507 m!6973306))

(assert (=> d!1920220 d!1920430))

(declare-fun bs!1520508 () Bool)

(declare-fun d!1920432 () Bool)

(assert (= bs!1520508 (and d!1920432 d!1920220)))

(declare-fun lambda!333898 () Int)

(assert (=> bs!1520508 (= lambda!333898 lambda!333836)))

(assert (=> bs!1520508 (not (= lambda!333898 lambda!333837))))

(declare-fun bs!1520509 () Bool)

(assert (= bs!1520509 (and d!1920432 d!1920358)))

(assert (=> bs!1520509 (= lambda!333898 lambda!333885)))

(declare-fun bs!1520510 () Bool)

(assert (= bs!1520510 (and d!1920432 b!6128697)))

(assert (=> bs!1520510 (not (= lambda!333898 lambda!333858))))

(declare-fun bs!1520511 () Bool)

(assert (= bs!1520511 (and d!1920432 d!1920212)))

(assert (=> bs!1520511 (= lambda!333898 lambda!333831)))

(declare-fun bs!1520512 () Bool)

(assert (= bs!1520512 (and d!1920432 b!6128255)))

(assert (=> bs!1520512 (= lambda!333898 lambda!333806)))

(assert (=> bs!1520512 (not (= lambda!333898 lambda!333807))))

(declare-fun bs!1520513 () Bool)

(assert (= bs!1520513 (and d!1920432 b!6128703)))

(assert (=> bs!1520513 (not (= lambda!333898 lambda!333857))))

(assert (=> d!1920432 true))

(assert (=> d!1920432 true))

(assert (=> d!1920432 true))

(declare-fun lambda!333899 () Int)

(assert (=> bs!1520508 (not (= lambda!333899 lambda!333836))))

(assert (=> bs!1520508 (= lambda!333899 lambda!333837)))

(assert (=> bs!1520509 (not (= lambda!333899 lambda!333885))))

(declare-fun bs!1520514 () Bool)

(assert (= bs!1520514 d!1920432))

(assert (=> bs!1520514 (not (= lambda!333899 lambda!333898))))

(assert (=> bs!1520510 (= lambda!333899 lambda!333858)))

(assert (=> bs!1520511 (not (= lambda!333899 lambda!333831))))

(assert (=> bs!1520512 (not (= lambda!333899 lambda!333806))))

(assert (=> bs!1520512 (= lambda!333899 lambda!333807)))

(assert (=> bs!1520513 (not (= lambda!333899 lambda!333857))))

(assert (=> d!1920432 true))

(assert (=> d!1920432 true))

(assert (=> d!1920432 true))

(assert (=> d!1920432 (= (Exists!3142 lambda!333898) (Exists!3142 lambda!333899))))

(assert (=> d!1920432 true))

(declare-fun _$90!1821 () Unit!157443)

(assert (=> d!1920432 (= (choose!45531 (regOne!32656 r!7292) (regTwo!32656 r!7292) s!2326) _$90!1821)))

(declare-fun m!6973308 () Bool)

(assert (=> bs!1520514 m!6973308))

(declare-fun m!6973310 () Bool)

(assert (=> bs!1520514 m!6973310))

(assert (=> d!1920220 d!1920432))

(assert (=> d!1920220 d!1920356))

(declare-fun bs!1520515 () Bool)

(declare-fun b!6129395 () Bool)

(assert (= bs!1520515 (and b!6129395 d!1920220)))

(declare-fun lambda!333900 () Int)

(assert (=> bs!1520515 (not (= lambda!333900 lambda!333836))))

(assert (=> bs!1520515 (not (= lambda!333900 lambda!333837))))

(declare-fun bs!1520516 () Bool)

(assert (= bs!1520516 (and b!6129395 d!1920358)))

(assert (=> bs!1520516 (not (= lambda!333900 lambda!333885))))

(declare-fun bs!1520517 () Bool)

(assert (= bs!1520517 (and b!6129395 d!1920432)))

(assert (=> bs!1520517 (not (= lambda!333900 lambda!333899))))

(assert (=> bs!1520517 (not (= lambda!333900 lambda!333898))))

(declare-fun bs!1520518 () Bool)

(assert (= bs!1520518 (and b!6129395 b!6128697)))

(assert (=> bs!1520518 (not (= lambda!333900 lambda!333858))))

(declare-fun bs!1520519 () Bool)

(assert (= bs!1520519 (and b!6129395 d!1920212)))

(assert (=> bs!1520519 (not (= lambda!333900 lambda!333831))))

(declare-fun bs!1520520 () Bool)

(assert (= bs!1520520 (and b!6129395 b!6128255)))

(assert (=> bs!1520520 (not (= lambda!333900 lambda!333806))))

(assert (=> bs!1520520 (not (= lambda!333900 lambda!333807))))

(declare-fun bs!1520521 () Bool)

(assert (= bs!1520521 (and b!6129395 b!6128703)))

(assert (=> bs!1520521 (= (and (= (reg!16401 (regTwo!32657 r!7292)) (reg!16401 r!7292)) (= (regTwo!32657 r!7292) r!7292)) (= lambda!333900 lambda!333857))))

(assert (=> b!6129395 true))

(assert (=> b!6129395 true))

(declare-fun bs!1520522 () Bool)

(declare-fun b!6129389 () Bool)

(assert (= bs!1520522 (and b!6129389 b!6129395)))

(declare-fun lambda!333901 () Int)

(assert (=> bs!1520522 (not (= lambda!333901 lambda!333900))))

(declare-fun bs!1520523 () Bool)

(assert (= bs!1520523 (and b!6129389 d!1920220)))

(assert (=> bs!1520523 (not (= lambda!333901 lambda!333836))))

(assert (=> bs!1520523 (= (and (= (regOne!32656 (regTwo!32657 r!7292)) (regOne!32656 r!7292)) (= (regTwo!32656 (regTwo!32657 r!7292)) (regTwo!32656 r!7292))) (= lambda!333901 lambda!333837))))

(declare-fun bs!1520524 () Bool)

(assert (= bs!1520524 (and b!6129389 d!1920358)))

(assert (=> bs!1520524 (not (= lambda!333901 lambda!333885))))

(declare-fun bs!1520525 () Bool)

(assert (= bs!1520525 (and b!6129389 d!1920432)))

(assert (=> bs!1520525 (= (and (= (regOne!32656 (regTwo!32657 r!7292)) (regOne!32656 r!7292)) (= (regTwo!32656 (regTwo!32657 r!7292)) (regTwo!32656 r!7292))) (= lambda!333901 lambda!333899))))

(assert (=> bs!1520525 (not (= lambda!333901 lambda!333898))))

(declare-fun bs!1520526 () Bool)

(assert (= bs!1520526 (and b!6129389 b!6128697)))

(assert (=> bs!1520526 (= (and (= (regOne!32656 (regTwo!32657 r!7292)) (regOne!32656 r!7292)) (= (regTwo!32656 (regTwo!32657 r!7292)) (regTwo!32656 r!7292))) (= lambda!333901 lambda!333858))))

(declare-fun bs!1520527 () Bool)

(assert (= bs!1520527 (and b!6129389 d!1920212)))

(assert (=> bs!1520527 (not (= lambda!333901 lambda!333831))))

(declare-fun bs!1520528 () Bool)

(assert (= bs!1520528 (and b!6129389 b!6128255)))

(assert (=> bs!1520528 (not (= lambda!333901 lambda!333806))))

(assert (=> bs!1520528 (= (and (= (regOne!32656 (regTwo!32657 r!7292)) (regOne!32656 r!7292)) (= (regTwo!32656 (regTwo!32657 r!7292)) (regTwo!32656 r!7292))) (= lambda!333901 lambda!333807))))

(declare-fun bs!1520529 () Bool)

(assert (= bs!1520529 (and b!6129389 b!6128703)))

(assert (=> bs!1520529 (not (= lambda!333901 lambda!333857))))

(assert (=> b!6129389 true))

(assert (=> b!6129389 true))

(declare-fun b!6129388 () Bool)

(declare-fun res!2540487 () Bool)

(declare-fun e!3736072 () Bool)

(assert (=> b!6129388 (=> res!2540487 e!3736072)))

(declare-fun call!508218 () Bool)

(assert (=> b!6129388 (= res!2540487 call!508218)))

(declare-fun e!3736075 () Bool)

(assert (=> b!6129388 (= e!3736075 e!3736072)))

(declare-fun call!508217 () Bool)

(assert (=> b!6129389 (= e!3736075 call!508217)))

(declare-fun b!6129390 () Bool)

(declare-fun e!3736078 () Bool)

(declare-fun e!3736074 () Bool)

(assert (=> b!6129390 (= e!3736078 e!3736074)))

(declare-fun res!2540488 () Bool)

(assert (=> b!6129390 (= res!2540488 (matchRSpec!3173 (regOne!32657 (regTwo!32657 r!7292)) s!2326))))

(assert (=> b!6129390 (=> res!2540488 e!3736074)))

(declare-fun b!6129391 () Bool)

(declare-fun c!1101848 () Bool)

(assert (=> b!6129391 (= c!1101848 (is-ElementMatch!16072 (regTwo!32657 r!7292)))))

(declare-fun e!3736076 () Bool)

(declare-fun e!3736073 () Bool)

(assert (=> b!6129391 (= e!3736076 e!3736073)))

(declare-fun b!6129392 () Bool)

(assert (=> b!6129392 (= e!3736078 e!3736075)))

(declare-fun c!1101849 () Bool)

(assert (=> b!6129392 (= c!1101849 (is-Star!16072 (regTwo!32657 r!7292)))))

(declare-fun b!6129393 () Bool)

(declare-fun c!1101847 () Bool)

(assert (=> b!6129393 (= c!1101847 (is-Union!16072 (regTwo!32657 r!7292)))))

(assert (=> b!6129393 (= e!3736073 e!3736078)))

(declare-fun b!6129394 () Bool)

(declare-fun e!3736077 () Bool)

(assert (=> b!6129394 (= e!3736077 e!3736076)))

(declare-fun res!2540486 () Bool)

(assert (=> b!6129394 (= res!2540486 (not (is-EmptyLang!16072 (regTwo!32657 r!7292))))))

(assert (=> b!6129394 (=> (not res!2540486) (not e!3736076))))

(assert (=> b!6129395 (= e!3736072 call!508217)))

(declare-fun bm!508212 () Bool)

(assert (=> bm!508212 (= call!508218 (isEmpty!36334 s!2326))))

(declare-fun b!6129396 () Bool)

(assert (=> b!6129396 (= e!3736074 (matchRSpec!3173 (regTwo!32657 (regTwo!32657 r!7292)) s!2326))))

(declare-fun b!6129397 () Bool)

(assert (=> b!6129397 (= e!3736073 (= s!2326 (Cons!64393 (c!1101550 (regTwo!32657 r!7292)) Nil!64393)))))

(declare-fun d!1920434 () Bool)

(declare-fun c!1101850 () Bool)

(assert (=> d!1920434 (= c!1101850 (is-EmptyExpr!16072 (regTwo!32657 r!7292)))))

(assert (=> d!1920434 (= (matchRSpec!3173 (regTwo!32657 r!7292) s!2326) e!3736077)))

(declare-fun b!6129398 () Bool)

(assert (=> b!6129398 (= e!3736077 call!508218)))

(declare-fun bm!508213 () Bool)

(assert (=> bm!508213 (= call!508217 (Exists!3142 (ite c!1101849 lambda!333900 lambda!333901)))))

(assert (= (and d!1920434 c!1101850) b!6129398))

(assert (= (and d!1920434 (not c!1101850)) b!6129394))

(assert (= (and b!6129394 res!2540486) b!6129391))

(assert (= (and b!6129391 c!1101848) b!6129397))

(assert (= (and b!6129391 (not c!1101848)) b!6129393))

(assert (= (and b!6129393 c!1101847) b!6129390))

(assert (= (and b!6129393 (not c!1101847)) b!6129392))

(assert (= (and b!6129390 (not res!2540488)) b!6129396))

(assert (= (and b!6129392 c!1101849) b!6129388))

(assert (= (and b!6129392 (not c!1101849)) b!6129389))

(assert (= (and b!6129388 (not res!2540487)) b!6129395))

(assert (= (or b!6129395 b!6129389) bm!508213))

(assert (= (or b!6129398 b!6129388) bm!508212))

(declare-fun m!6973312 () Bool)

(assert (=> b!6129390 m!6973312))

(assert (=> bm!508212 m!6972830))

(declare-fun m!6973314 () Bool)

(assert (=> b!6129396 m!6973314))

(declare-fun m!6973316 () Bool)

(assert (=> bm!508213 m!6973316))

(assert (=> b!6128704 d!1920434))

(declare-fun d!1920436 () Bool)

(declare-fun res!2540489 () Bool)

(declare-fun e!3736079 () Bool)

(assert (=> d!1920436 (=> res!2540489 e!3736079)))

(assert (=> d!1920436 (= res!2540489 (is-Nil!64391 lt!2331710))))

(assert (=> d!1920436 (= (forall!15193 lt!2331710 lambda!333848) e!3736079)))

(declare-fun b!6129399 () Bool)

(declare-fun e!3736080 () Bool)

(assert (=> b!6129399 (= e!3736079 e!3736080)))

(declare-fun res!2540490 () Bool)

(assert (=> b!6129399 (=> (not res!2540490) (not e!3736080))))

(assert (=> b!6129399 (= res!2540490 (dynLambda!25367 lambda!333848 (h!70839 lt!2331710)))))

(declare-fun b!6129400 () Bool)

(assert (=> b!6129400 (= e!3736080 (forall!15193 (t!377982 lt!2331710) lambda!333848))))

(assert (= (and d!1920436 (not res!2540489)) b!6129399))

(assert (= (and b!6129399 res!2540490) b!6129400))

(declare-fun b_lambda!233327 () Bool)

(assert (=> (not b_lambda!233327) (not b!6129399)))

(declare-fun m!6973318 () Bool)

(assert (=> b!6129399 m!6973318))

(declare-fun m!6973320 () Bool)

(assert (=> b!6129400 m!6973320))

(assert (=> d!1920236 d!1920436))

(declare-fun d!1920438 () Bool)

(declare-fun res!2540491 () Bool)

(declare-fun e!3736081 () Bool)

(assert (=> d!1920438 (=> res!2540491 e!3736081)))

(assert (=> d!1920438 (= res!2540491 (is-Nil!64391 (exprs!5956 (h!70840 zl!343))))))

(assert (=> d!1920438 (= (forall!15193 (exprs!5956 (h!70840 zl!343)) lambda!333865) e!3736081)))

(declare-fun b!6129401 () Bool)

(declare-fun e!3736082 () Bool)

(assert (=> b!6129401 (= e!3736081 e!3736082)))

(declare-fun res!2540492 () Bool)

(assert (=> b!6129401 (=> (not res!2540492) (not e!3736082))))

(assert (=> b!6129401 (= res!2540492 (dynLambda!25367 lambda!333865 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun b!6129402 () Bool)

(assert (=> b!6129402 (= e!3736082 (forall!15193 (t!377982 (exprs!5956 (h!70840 zl!343))) lambda!333865))))

(assert (= (and d!1920438 (not res!2540491)) b!6129401))

(assert (= (and b!6129401 res!2540492) b!6129402))

(declare-fun b_lambda!233329 () Bool)

(assert (=> (not b_lambda!233329) (not b!6129401)))

(declare-fun m!6973322 () Bool)

(assert (=> b!6129401 m!6973322))

(declare-fun m!6973324 () Bool)

(assert (=> b!6129402 m!6973324))

(assert (=> d!1920256 d!1920438))

(declare-fun bm!508214 () Bool)

(declare-fun call!508222 () (Set Context!10912))

(declare-fun call!508224 () (Set Context!10912))

(assert (=> bm!508214 (= call!508222 call!508224)))

(declare-fun c!1101852 () Bool)

(declare-fun c!1101854 () Bool)

(declare-fun bm!508215 () Bool)

(declare-fun call!508219 () List!64515)

(assert (=> bm!508215 (= call!508219 ($colon$colon!1949 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))))) (ite (or c!1101854 c!1101852) (regTwo!32656 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))))))))

(declare-fun b!6129403 () Bool)

(declare-fun e!3736087 () (Set Context!10912))

(declare-fun call!508220 () (Set Context!10912))

(assert (=> b!6129403 (= e!3736087 (set.union call!508220 call!508222))))

(declare-fun c!1101851 () Bool)

(declare-fun bm!508216 () Bool)

(assert (=> bm!508216 (= call!508220 (derivationStepZipperDown!1320 (ite c!1101851 (regOne!32657 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (regOne!32656 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))))) (ite c!1101851 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (Context!10913 call!508219)) (h!70841 s!2326)))))

(declare-fun b!6129405 () Bool)

(declare-fun e!3736083 () (Set Context!10912))

(assert (=> b!6129405 (= e!3736083 (as set.empty (Set Context!10912)))))

(declare-fun call!508221 () List!64515)

(declare-fun bm!508217 () Bool)

(assert (=> bm!508217 (= call!508224 (derivationStepZipperDown!1320 (ite c!1101851 (regTwo!32657 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (ite c!1101854 (regTwo!32656 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (ite c!1101852 (regOne!32656 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (reg!16401 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))))))) (ite (or c!1101851 c!1101854) (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (Context!10913 call!508221)) (h!70841 s!2326)))))

(declare-fun b!6129406 () Bool)

(declare-fun call!508223 () (Set Context!10912))

(assert (=> b!6129406 (= e!3736083 call!508223)))

(declare-fun bm!508218 () Bool)

(assert (=> bm!508218 (= call!508221 call!508219)))

(declare-fun b!6129407 () Bool)

(declare-fun e!3736084 () Bool)

(assert (=> b!6129407 (= c!1101854 e!3736084)))

(declare-fun res!2540493 () Bool)

(assert (=> b!6129407 (=> (not res!2540493) (not e!3736084))))

(assert (=> b!6129407 (= res!2540493 (is-Concat!24917 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))))))

(declare-fun e!3736088 () (Set Context!10912))

(assert (=> b!6129407 (= e!3736088 e!3736087)))

(declare-fun b!6129408 () Bool)

(declare-fun e!3736086 () (Set Context!10912))

(assert (=> b!6129408 (= e!3736086 (set.insert (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (as set.empty (Set Context!10912))))))

(declare-fun b!6129409 () Bool)

(declare-fun c!1101855 () Bool)

(assert (=> b!6129409 (= c!1101855 (is-Star!16072 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))))))

(declare-fun e!3736085 () (Set Context!10912))

(assert (=> b!6129409 (= e!3736085 e!3736083)))

(declare-fun d!1920440 () Bool)

(declare-fun c!1101853 () Bool)

(assert (=> d!1920440 (= c!1101853 (and (is-ElementMatch!16072 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (= (c!1101550 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (h!70841 s!2326))))))

(assert (=> d!1920440 (= (derivationStepZipperDown!1320 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))) (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (h!70841 s!2326)) e!3736086)))

(declare-fun b!6129404 () Bool)

(assert (=> b!6129404 (= e!3736084 (nullable!6065 (regOne!32656 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))))))))

(declare-fun b!6129410 () Bool)

(assert (=> b!6129410 (= e!3736087 e!3736085)))

(assert (=> b!6129410 (= c!1101852 (is-Concat!24917 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))))))

(declare-fun b!6129411 () Bool)

(assert (=> b!6129411 (= e!3736085 call!508223)))

(declare-fun bm!508219 () Bool)

(assert (=> bm!508219 (= call!508223 call!508222)))

(declare-fun b!6129412 () Bool)

(assert (=> b!6129412 (= e!3736088 (set.union call!508220 call!508224))))

(declare-fun b!6129413 () Bool)

(assert (=> b!6129413 (= e!3736086 e!3736088)))

(assert (=> b!6129413 (= c!1101851 (is-Union!16072 (h!70839 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))))))

(assert (= (and d!1920440 c!1101853) b!6129408))

(assert (= (and d!1920440 (not c!1101853)) b!6129413))

(assert (= (and b!6129413 c!1101851) b!6129412))

(assert (= (and b!6129413 (not c!1101851)) b!6129407))

(assert (= (and b!6129407 res!2540493) b!6129404))

(assert (= (and b!6129407 c!1101854) b!6129403))

(assert (= (and b!6129407 (not c!1101854)) b!6129410))

(assert (= (and b!6129410 c!1101852) b!6129411))

(assert (= (and b!6129410 (not c!1101852)) b!6129409))

(assert (= (and b!6129409 c!1101855) b!6129406))

(assert (= (and b!6129409 (not c!1101855)) b!6129405))

(assert (= (or b!6129411 b!6129406) bm!508218))

(assert (= (or b!6129411 b!6129406) bm!508219))

(assert (= (or b!6129403 bm!508218) bm!508215))

(assert (= (or b!6129403 bm!508219) bm!508214))

(assert (= (or b!6129412 bm!508214) bm!508217))

(assert (= (or b!6129412 b!6129403) bm!508216))

(declare-fun m!6973326 () Bool)

(assert (=> bm!508215 m!6973326))

(declare-fun m!6973328 () Bool)

(assert (=> bm!508216 m!6973328))

(declare-fun m!6973330 () Bool)

(assert (=> b!6129408 m!6973330))

(declare-fun m!6973332 () Bool)

(assert (=> bm!508217 m!6973332))

(declare-fun m!6973334 () Bool)

(assert (=> b!6129404 m!6973334))

(assert (=> bm!508064 d!1920440))

(declare-fun d!1920442 () Bool)

(assert (=> d!1920442 (= (nullable!6065 (h!70839 (exprs!5956 lt!2331616))) (nullableFct!2029 (h!70839 (exprs!5956 lt!2331616))))))

(declare-fun bs!1520530 () Bool)

(assert (= bs!1520530 d!1920442))

(declare-fun m!6973336 () Bool)

(assert (=> bs!1520530 m!6973336))

(assert (=> b!6128430 d!1920442))

(declare-fun d!1920444 () Bool)

(assert (=> d!1920444 true))

(assert (=> d!1920444 true))

(declare-fun res!2540494 () Bool)

(assert (=> d!1920444 (= (choose!45529 lambda!333806) res!2540494)))

(assert (=> d!1920210 d!1920444))

(assert (=> b!6128540 d!1920372))

(declare-fun bm!508224 () Bool)

(declare-fun call!508230 () Bool)

(declare-fun c!1101858 () Bool)

(assert (=> bm!508224 (= call!508230 (nullable!6065 (ite c!1101858 (regOne!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))))))

(declare-fun b!6129428 () Bool)

(declare-fun e!3736104 () Bool)

(declare-fun e!3736105 () Bool)

(assert (=> b!6129428 (= e!3736104 e!3736105)))

(declare-fun res!2540508 () Bool)

(assert (=> b!6129428 (=> (not res!2540508) (not e!3736105))))

(assert (=> b!6129428 (= res!2540508 (and (not (is-EmptyLang!16072 (h!70839 (exprs!5956 (h!70840 zl!343))))) (not (is-ElementMatch!16072 (h!70839 (exprs!5956 (h!70840 zl!343)))))))))

(declare-fun b!6129429 () Bool)

(declare-fun e!3736103 () Bool)

(declare-fun call!508229 () Bool)

(assert (=> b!6129429 (= e!3736103 call!508229)))

(declare-fun b!6129430 () Bool)

(declare-fun e!3736101 () Bool)

(assert (=> b!6129430 (= e!3736101 e!3736103)))

(declare-fun res!2540509 () Bool)

(assert (=> b!6129430 (= res!2540509 call!508230)))

(assert (=> b!6129430 (=> (not res!2540509) (not e!3736103))))

(declare-fun b!6129431 () Bool)

(declare-fun e!3736106 () Bool)

(assert (=> b!6129431 (= e!3736105 e!3736106)))

(declare-fun res!2540505 () Bool)

(assert (=> b!6129431 (=> res!2540505 e!3736106)))

(assert (=> b!6129431 (= res!2540505 (is-Star!16072 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun b!6129432 () Bool)

(declare-fun e!3736102 () Bool)

(assert (=> b!6129432 (= e!3736101 e!3736102)))

(declare-fun res!2540507 () Bool)

(assert (=> b!6129432 (= res!2540507 call!508230)))

(assert (=> b!6129432 (=> res!2540507 e!3736102)))

(declare-fun b!6129433 () Bool)

(assert (=> b!6129433 (= e!3736102 call!508229)))

(declare-fun b!6129434 () Bool)

(assert (=> b!6129434 (= e!3736106 e!3736101)))

(assert (=> b!6129434 (= c!1101858 (is-Union!16072 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun d!1920446 () Bool)

(declare-fun res!2540506 () Bool)

(assert (=> d!1920446 (=> res!2540506 e!3736104)))

(assert (=> d!1920446 (= res!2540506 (is-EmptyExpr!16072 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(assert (=> d!1920446 (= (nullableFct!2029 (h!70839 (exprs!5956 (h!70840 zl!343)))) e!3736104)))

(declare-fun bm!508225 () Bool)

(assert (=> bm!508225 (= call!508229 (nullable!6065 (ite c!1101858 (regTwo!32657 (h!70839 (exprs!5956 (h!70840 zl!343)))) (regTwo!32656 (h!70839 (exprs!5956 (h!70840 zl!343)))))))))

(assert (= (and d!1920446 (not res!2540506)) b!6129428))

(assert (= (and b!6129428 res!2540508) b!6129431))

(assert (= (and b!6129431 (not res!2540505)) b!6129434))

(assert (= (and b!6129434 c!1101858) b!6129432))

(assert (= (and b!6129434 (not c!1101858)) b!6129430))

(assert (= (and b!6129432 (not res!2540507)) b!6129433))

(assert (= (and b!6129430 res!2540509) b!6129429))

(assert (= (or b!6129433 b!6129429) bm!508225))

(assert (= (or b!6129432 b!6129430) bm!508224))

(declare-fun m!6973338 () Bool)

(assert (=> bm!508224 m!6973338))

(declare-fun m!6973340 () Bool)

(assert (=> bm!508225 m!6973340))

(assert (=> d!1920176 d!1920446))

(declare-fun d!1920448 () Bool)

(assert (=> d!1920448 (= (isEmptyLang!1499 lt!2331705) (is-EmptyLang!16072 lt!2331705))))

(assert (=> b!6128613 d!1920448))

(declare-fun d!1920450 () Bool)

(assert (=> d!1920450 (= (nullable!6065 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343))))) (nullableFct!2029 (regOne!32656 (h!70839 (exprs!5956 (h!70840 zl!343))))))))

(declare-fun bs!1520531 () Bool)

(assert (= bs!1520531 d!1920450))

(declare-fun m!6973342 () Bool)

(assert (=> bs!1520531 m!6973342))

(assert (=> b!6128416 d!1920450))

(declare-fun d!1920452 () Bool)

(assert (=> d!1920452 (= ($colon$colon!1949 (exprs!5956 lt!2331616) (ite (or c!1101694 c!1101692) (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (regOne!32657 (regOne!32656 r!7292)))) (Cons!64391 (ite (or c!1101694 c!1101692) (regTwo!32656 (regOne!32657 (regOne!32656 r!7292))) (regOne!32657 (regOne!32656 r!7292))) (exprs!5956 lt!2331616)))))

(assert (=> bm!508114 d!1920452))

(declare-fun b!6129435 () Bool)

(declare-fun res!2540513 () Bool)

(declare-fun e!3736107 () Bool)

(assert (=> b!6129435 (=> (not res!2540513) (not e!3736107))))

(assert (=> b!6129435 (= res!2540513 (isEmpty!36334 (tail!11750 (_1!36354 (get!22210 lt!2331679)))))))

(declare-fun bm!508226 () Bool)

(declare-fun call!508231 () Bool)

(assert (=> bm!508226 (= call!508231 (isEmpty!36334 (_1!36354 (get!22210 lt!2331679))))))

(declare-fun b!6129436 () Bool)

(declare-fun e!3736112 () Bool)

(declare-fun e!3736108 () Bool)

(assert (=> b!6129436 (= e!3736112 e!3736108)))

(declare-fun res!2540512 () Bool)

(assert (=> b!6129436 (=> (not res!2540512) (not e!3736108))))

(declare-fun lt!2331760 () Bool)

(assert (=> b!6129436 (= res!2540512 (not lt!2331760))))

(declare-fun b!6129437 () Bool)

(declare-fun e!3736111 () Bool)

(assert (=> b!6129437 (= e!3736111 (not (= (head!12665 (_1!36354 (get!22210 lt!2331679))) (c!1101550 (regOne!32656 r!7292)))))))

(declare-fun b!6129438 () Bool)

(assert (=> b!6129438 (= e!3736108 e!3736111)))

(declare-fun res!2540517 () Bool)

(assert (=> b!6129438 (=> res!2540517 e!3736111)))

(assert (=> b!6129438 (= res!2540517 call!508231)))

(declare-fun b!6129439 () Bool)

(declare-fun e!3736110 () Bool)

(declare-fun e!3736113 () Bool)

(assert (=> b!6129439 (= e!3736110 e!3736113)))

(declare-fun c!1101861 () Bool)

(assert (=> b!6129439 (= c!1101861 (is-EmptyLang!16072 (regOne!32656 r!7292)))))

(declare-fun b!6129440 () Bool)

(assert (=> b!6129440 (= e!3736107 (= (head!12665 (_1!36354 (get!22210 lt!2331679))) (c!1101550 (regOne!32656 r!7292))))))

(declare-fun b!6129441 () Bool)

(declare-fun res!2540510 () Bool)

(assert (=> b!6129441 (=> (not res!2540510) (not e!3736107))))

(assert (=> b!6129441 (= res!2540510 (not call!508231))))

(declare-fun b!6129442 () Bool)

(declare-fun res!2540514 () Bool)

(assert (=> b!6129442 (=> res!2540514 e!3736111)))

(assert (=> b!6129442 (= res!2540514 (not (isEmpty!36334 (tail!11750 (_1!36354 (get!22210 lt!2331679))))))))

(declare-fun b!6129443 () Bool)

(declare-fun res!2540516 () Bool)

(assert (=> b!6129443 (=> res!2540516 e!3736112)))

(assert (=> b!6129443 (= res!2540516 e!3736107)))

(declare-fun res!2540515 () Bool)

(assert (=> b!6129443 (=> (not res!2540515) (not e!3736107))))

(assert (=> b!6129443 (= res!2540515 lt!2331760)))

(declare-fun d!1920454 () Bool)

(assert (=> d!1920454 e!3736110))

(declare-fun c!1101859 () Bool)

(assert (=> d!1920454 (= c!1101859 (is-EmptyExpr!16072 (regOne!32656 r!7292)))))

(declare-fun e!3736109 () Bool)

(assert (=> d!1920454 (= lt!2331760 e!3736109)))

(declare-fun c!1101860 () Bool)

(assert (=> d!1920454 (= c!1101860 (isEmpty!36334 (_1!36354 (get!22210 lt!2331679))))))

(assert (=> d!1920454 (validRegex!7808 (regOne!32656 r!7292))))

(assert (=> d!1920454 (= (matchR!8255 (regOne!32656 r!7292) (_1!36354 (get!22210 lt!2331679))) lt!2331760)))

(declare-fun b!6129444 () Bool)

(assert (=> b!6129444 (= e!3736113 (not lt!2331760))))

(declare-fun b!6129445 () Bool)

(declare-fun res!2540511 () Bool)

(assert (=> b!6129445 (=> res!2540511 e!3736112)))

(assert (=> b!6129445 (= res!2540511 (not (is-ElementMatch!16072 (regOne!32656 r!7292))))))

(assert (=> b!6129445 (= e!3736113 e!3736112)))

(declare-fun b!6129446 () Bool)

(assert (=> b!6129446 (= e!3736110 (= lt!2331760 call!508231))))

(declare-fun b!6129447 () Bool)

(assert (=> b!6129447 (= e!3736109 (nullable!6065 (regOne!32656 r!7292)))))

(declare-fun b!6129448 () Bool)

(assert (=> b!6129448 (= e!3736109 (matchR!8255 (derivativeStep!4792 (regOne!32656 r!7292) (head!12665 (_1!36354 (get!22210 lt!2331679)))) (tail!11750 (_1!36354 (get!22210 lt!2331679)))))))

(assert (= (and d!1920454 c!1101860) b!6129447))

(assert (= (and d!1920454 (not c!1101860)) b!6129448))

(assert (= (and d!1920454 c!1101859) b!6129446))

(assert (= (and d!1920454 (not c!1101859)) b!6129439))

(assert (= (and b!6129439 c!1101861) b!6129444))

(assert (= (and b!6129439 (not c!1101861)) b!6129445))

(assert (= (and b!6129445 (not res!2540511)) b!6129443))

(assert (= (and b!6129443 res!2540515) b!6129441))

(assert (= (and b!6129441 res!2540510) b!6129435))

(assert (= (and b!6129435 res!2540513) b!6129440))

(assert (= (and b!6129443 (not res!2540516)) b!6129436))

(assert (= (and b!6129436 res!2540512) b!6129438))

(assert (= (and b!6129438 (not res!2540517)) b!6129442))

(assert (= (and b!6129442 (not res!2540514)) b!6129437))

(assert (= (or b!6129446 b!6129438 b!6129441) bm!508226))

(declare-fun m!6973344 () Bool)

(assert (=> d!1920454 m!6973344))

(assert (=> d!1920454 m!6972722))

(assert (=> bm!508226 m!6973344))

(declare-fun m!6973346 () Bool)

(assert (=> b!6129442 m!6973346))

(assert (=> b!6129442 m!6973346))

(declare-fun m!6973348 () Bool)

(assert (=> b!6129442 m!6973348))

(declare-fun m!6973350 () Bool)

(assert (=> b!6129437 m!6973350))

(assert (=> b!6129440 m!6973350))

(assert (=> b!6129447 m!6973184))

(assert (=> b!6129448 m!6973350))

(assert (=> b!6129448 m!6973350))

(declare-fun m!6973352 () Bool)

(assert (=> b!6129448 m!6973352))

(assert (=> b!6129448 m!6973346))

(assert (=> b!6129448 m!6973352))

(assert (=> b!6129448 m!6973346))

(declare-fun m!6973354 () Bool)

(assert (=> b!6129448 m!6973354))

(assert (=> b!6129435 m!6973346))

(assert (=> b!6129435 m!6973346))

(assert (=> b!6129435 m!6973348))

(assert (=> b!6128538 d!1920454))

(assert (=> b!6128538 d!1920408))

(declare-fun d!1920456 () Bool)

(assert (=> d!1920456 (= (nullable!6065 (regOne!32656 (regOne!32657 (regOne!32656 r!7292)))) (nullableFct!2029 (regOne!32656 (regOne!32657 (regOne!32656 r!7292)))))))

(declare-fun bs!1520532 () Bool)

(assert (= bs!1520532 d!1920456))

(declare-fun m!6973356 () Bool)

(assert (=> bs!1520532 m!6973356))

(assert (=> b!6128793 d!1920456))

(assert (=> d!1920170 d!1920328))

(declare-fun b!6129449 () Bool)

(declare-fun e!3736119 () Bool)

(declare-fun e!3736118 () Bool)

(assert (=> b!6129449 (= e!3736119 e!3736118)))

(declare-fun res!2540518 () Bool)

(assert (=> b!6129449 (=> (not res!2540518) (not e!3736118))))

(declare-fun call!508234 () Bool)

(assert (=> b!6129449 (= res!2540518 call!508234)))

(declare-fun b!6129450 () Bool)

(declare-fun e!3736115 () Bool)

(declare-fun call!508233 () Bool)

(assert (=> b!6129450 (= e!3736115 call!508233)))

(declare-fun b!6129451 () Bool)

(declare-fun call!508232 () Bool)

(assert (=> b!6129451 (= e!3736118 call!508232)))

(declare-fun bm!508227 () Bool)

(declare-fun c!1101863 () Bool)

(assert (=> bm!508227 (= call!508232 (validRegex!7808 (ite c!1101863 (regTwo!32657 (ite c!1101715 (regTwo!32657 r!7292) (regTwo!32656 r!7292))) (regTwo!32656 (ite c!1101715 (regTwo!32657 r!7292) (regTwo!32656 r!7292))))))))

(declare-fun bm!508228 () Bool)

(assert (=> bm!508228 (= call!508234 call!508233)))

(declare-fun b!6129453 () Bool)

(declare-fun e!3736117 () Bool)

(declare-fun e!3736116 () Bool)

(assert (=> b!6129453 (= e!3736117 e!3736116)))

(declare-fun c!1101862 () Bool)

(assert (=> b!6129453 (= c!1101862 (is-Star!16072 (ite c!1101715 (regTwo!32657 r!7292) (regTwo!32656 r!7292))))))

(declare-fun b!6129454 () Bool)

(declare-fun e!3736120 () Bool)

(assert (=> b!6129454 (= e!3736120 call!508232)))

(declare-fun b!6129455 () Bool)

(declare-fun res!2540522 () Bool)

(assert (=> b!6129455 (=> res!2540522 e!3736119)))

(assert (=> b!6129455 (= res!2540522 (not (is-Concat!24917 (ite c!1101715 (regTwo!32657 r!7292) (regTwo!32656 r!7292)))))))

(declare-fun e!3736114 () Bool)

(assert (=> b!6129455 (= e!3736114 e!3736119)))

(declare-fun b!6129456 () Bool)

(assert (=> b!6129456 (= e!3736116 e!3736114)))

(assert (=> b!6129456 (= c!1101863 (is-Union!16072 (ite c!1101715 (regTwo!32657 r!7292) (regTwo!32656 r!7292))))))

(declare-fun b!6129457 () Bool)

(assert (=> b!6129457 (= e!3736116 e!3736115)))

(declare-fun res!2540519 () Bool)

(assert (=> b!6129457 (= res!2540519 (not (nullable!6065 (reg!16401 (ite c!1101715 (regTwo!32657 r!7292) (regTwo!32656 r!7292))))))))

(assert (=> b!6129457 (=> (not res!2540519) (not e!3736115))))

(declare-fun bm!508229 () Bool)

(assert (=> bm!508229 (= call!508233 (validRegex!7808 (ite c!1101862 (reg!16401 (ite c!1101715 (regTwo!32657 r!7292) (regTwo!32656 r!7292))) (ite c!1101863 (regOne!32657 (ite c!1101715 (regTwo!32657 r!7292) (regTwo!32656 r!7292))) (regOne!32656 (ite c!1101715 (regTwo!32657 r!7292) (regTwo!32656 r!7292)))))))))

(declare-fun b!6129452 () Bool)

(declare-fun res!2540521 () Bool)

(assert (=> b!6129452 (=> (not res!2540521) (not e!3736120))))

(assert (=> b!6129452 (= res!2540521 call!508234)))

(assert (=> b!6129452 (= e!3736114 e!3736120)))

(declare-fun d!1920458 () Bool)

(declare-fun res!2540520 () Bool)

(assert (=> d!1920458 (=> res!2540520 e!3736117)))

(assert (=> d!1920458 (= res!2540520 (is-ElementMatch!16072 (ite c!1101715 (regTwo!32657 r!7292) (regTwo!32656 r!7292))))))

(assert (=> d!1920458 (= (validRegex!7808 (ite c!1101715 (regTwo!32657 r!7292) (regTwo!32656 r!7292))) e!3736117)))

(assert (= (and d!1920458 (not res!2540520)) b!6129453))

(assert (= (and b!6129453 c!1101862) b!6129457))

(assert (= (and b!6129453 (not c!1101862)) b!6129456))

(assert (= (and b!6129457 res!2540519) b!6129450))

(assert (= (and b!6129456 c!1101863) b!6129452))

(assert (= (and b!6129456 (not c!1101863)) b!6129455))

(assert (= (and b!6129452 res!2540521) b!6129454))

(assert (= (and b!6129455 (not res!2540522)) b!6129449))

(assert (= (and b!6129449 res!2540518) b!6129451))

(assert (= (or b!6129454 b!6129451) bm!508227))

(assert (= (or b!6129452 b!6129449) bm!508228))

(assert (= (or b!6129450 bm!508228) bm!508229))

(declare-fun m!6973358 () Bool)

(assert (=> bm!508227 m!6973358))

(declare-fun m!6973360 () Bool)

(assert (=> b!6129457 m!6973360))

(declare-fun m!6973362 () Bool)

(assert (=> bm!508229 m!6973362))

(assert (=> bm!508134 d!1920458))

(declare-fun b!6129458 () Bool)

(declare-fun call!508235 () (Set Context!10912))

(declare-fun e!3736121 () (Set Context!10912))

(assert (=> b!6129458 (= e!3736121 (set.union call!508235 (derivationStepZipperUp!1246 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343))))))) (h!70841 s!2326))))))

(declare-fun b!6129459 () Bool)

(declare-fun e!3736122 () (Set Context!10912))

(assert (=> b!6129459 (= e!3736122 call!508235)))

(declare-fun b!6129460 () Bool)

(assert (=> b!6129460 (= e!3736122 (as set.empty (Set Context!10912)))))

(declare-fun bm!508230 () Bool)

(assert (=> bm!508230 (= call!508235 (derivationStepZipperDown!1320 (h!70839 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343)))))) (Context!10913 (t!377982 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343))))))) (h!70841 s!2326)))))

(declare-fun b!6129461 () Bool)

(assert (=> b!6129461 (= e!3736121 e!3736122)))

(declare-fun c!1101865 () Bool)

(assert (=> b!6129461 (= c!1101865 (is-Cons!64391 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343)))))))))

(declare-fun d!1920460 () Bool)

(declare-fun c!1101864 () Bool)

(declare-fun e!3736123 () Bool)

(assert (=> d!1920460 (= c!1101864 e!3736123)))

(declare-fun res!2540523 () Bool)

(assert (=> d!1920460 (=> (not res!2540523) (not e!3736123))))

(assert (=> d!1920460 (= res!2540523 (is-Cons!64391 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343)))))))))

(assert (=> d!1920460 (= (derivationStepZipperUp!1246 (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343)))) (h!70841 s!2326)) e!3736121)))

(declare-fun b!6129462 () Bool)

(assert (=> b!6129462 (= e!3736123 (nullable!6065 (h!70839 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (h!70840 zl!343))))))))))

(assert (= (and d!1920460 res!2540523) b!6129462))

(assert (= (and d!1920460 c!1101864) b!6129458))

(assert (= (and d!1920460 (not c!1101864)) b!6129461))

(assert (= (and b!6129461 c!1101865) b!6129459))

(assert (= (and b!6129461 (not c!1101865)) b!6129460))

(assert (= (or b!6129458 b!6129459) bm!508230))

(declare-fun m!6973364 () Bool)

(assert (=> b!6129458 m!6973364))

(declare-fun m!6973366 () Bool)

(assert (=> bm!508230 m!6973366))

(declare-fun m!6973368 () Bool)

(assert (=> b!6129462 m!6973368))

(assert (=> b!6128388 d!1920460))

(declare-fun b!6129463 () Bool)

(declare-fun e!3736129 () Bool)

(declare-fun e!3736128 () Bool)

(assert (=> b!6129463 (= e!3736129 e!3736128)))

(declare-fun res!2540524 () Bool)

(assert (=> b!6129463 (=> (not res!2540524) (not e!3736128))))

(declare-fun call!508238 () Bool)

(assert (=> b!6129463 (= res!2540524 call!508238)))

(declare-fun b!6129464 () Bool)

(declare-fun e!3736125 () Bool)

(declare-fun call!508237 () Bool)

(assert (=> b!6129464 (= e!3736125 call!508237)))

(declare-fun b!6129465 () Bool)

(declare-fun call!508236 () Bool)

(assert (=> b!6129465 (= e!3736128 call!508236)))

(declare-fun bm!508231 () Bool)

(declare-fun c!1101867 () Bool)

(assert (=> bm!508231 (= call!508236 (validRegex!7808 (ite c!1101867 (regTwo!32657 lt!2331666) (regTwo!32656 lt!2331666))))))

(declare-fun bm!508232 () Bool)

(assert (=> bm!508232 (= call!508238 call!508237)))

(declare-fun b!6129467 () Bool)

(declare-fun e!3736127 () Bool)

(declare-fun e!3736126 () Bool)

(assert (=> b!6129467 (= e!3736127 e!3736126)))

(declare-fun c!1101866 () Bool)

(assert (=> b!6129467 (= c!1101866 (is-Star!16072 lt!2331666))))

(declare-fun b!6129468 () Bool)

(declare-fun e!3736130 () Bool)

(assert (=> b!6129468 (= e!3736130 call!508236)))

(declare-fun b!6129469 () Bool)

(declare-fun res!2540528 () Bool)

(assert (=> b!6129469 (=> res!2540528 e!3736129)))

(assert (=> b!6129469 (= res!2540528 (not (is-Concat!24917 lt!2331666)))))

(declare-fun e!3736124 () Bool)

(assert (=> b!6129469 (= e!3736124 e!3736129)))

(declare-fun b!6129470 () Bool)

(assert (=> b!6129470 (= e!3736126 e!3736124)))

(assert (=> b!6129470 (= c!1101867 (is-Union!16072 lt!2331666))))

(declare-fun b!6129471 () Bool)

(assert (=> b!6129471 (= e!3736126 e!3736125)))

(declare-fun res!2540525 () Bool)

(assert (=> b!6129471 (= res!2540525 (not (nullable!6065 (reg!16401 lt!2331666))))))

(assert (=> b!6129471 (=> (not res!2540525) (not e!3736125))))

(declare-fun bm!508233 () Bool)

(assert (=> bm!508233 (= call!508237 (validRegex!7808 (ite c!1101866 (reg!16401 lt!2331666) (ite c!1101867 (regOne!32657 lt!2331666) (regOne!32656 lt!2331666)))))))

(declare-fun b!6129466 () Bool)

(declare-fun res!2540527 () Bool)

(assert (=> b!6129466 (=> (not res!2540527) (not e!3736130))))

(assert (=> b!6129466 (= res!2540527 call!508238)))

(assert (=> b!6129466 (= e!3736124 e!3736130)))

(declare-fun d!1920462 () Bool)

(declare-fun res!2540526 () Bool)

(assert (=> d!1920462 (=> res!2540526 e!3736127)))

(assert (=> d!1920462 (= res!2540526 (is-ElementMatch!16072 lt!2331666))))

(assert (=> d!1920462 (= (validRegex!7808 lt!2331666) e!3736127)))

(assert (= (and d!1920462 (not res!2540526)) b!6129467))

(assert (= (and b!6129467 c!1101866) b!6129471))

(assert (= (and b!6129467 (not c!1101866)) b!6129470))

(assert (= (and b!6129471 res!2540525) b!6129464))

(assert (= (and b!6129470 c!1101867) b!6129466))

(assert (= (and b!6129470 (not c!1101867)) b!6129469))

(assert (= (and b!6129466 res!2540527) b!6129468))

(assert (= (and b!6129469 (not res!2540528)) b!6129463))

(assert (= (and b!6129463 res!2540524) b!6129465))

(assert (= (or b!6129468 b!6129465) bm!508231))

(assert (= (or b!6129466 b!6129463) bm!508232))

(assert (= (or b!6129464 bm!508232) bm!508233))

(declare-fun m!6973370 () Bool)

(assert (=> bm!508231 m!6973370))

(declare-fun m!6973372 () Bool)

(assert (=> b!6129471 m!6973372))

(declare-fun m!6973374 () Bool)

(assert (=> bm!508233 m!6973374))

(assert (=> d!1920188 d!1920462))

(declare-fun d!1920464 () Bool)

(declare-fun res!2540529 () Bool)

(declare-fun e!3736131 () Bool)

(assert (=> d!1920464 (=> res!2540529 e!3736131)))

(assert (=> d!1920464 (= res!2540529 (is-Nil!64391 (exprs!5956 (h!70840 zl!343))))))

(assert (=> d!1920464 (= (forall!15193 (exprs!5956 (h!70840 zl!343)) lambda!333825) e!3736131)))

(declare-fun b!6129472 () Bool)

(declare-fun e!3736132 () Bool)

(assert (=> b!6129472 (= e!3736131 e!3736132)))

(declare-fun res!2540530 () Bool)

(assert (=> b!6129472 (=> (not res!2540530) (not e!3736132))))

(assert (=> b!6129472 (= res!2540530 (dynLambda!25367 lambda!333825 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun b!6129473 () Bool)

(assert (=> b!6129473 (= e!3736132 (forall!15193 (t!377982 (exprs!5956 (h!70840 zl!343))) lambda!333825))))

(assert (= (and d!1920464 (not res!2540529)) b!6129472))

(assert (= (and b!6129472 res!2540530) b!6129473))

(declare-fun b_lambda!233331 () Bool)

(assert (=> (not b_lambda!233331) (not b!6129472)))

(declare-fun m!6973376 () Bool)

(assert (=> b!6129472 m!6973376))

(declare-fun m!6973378 () Bool)

(assert (=> b!6129473 m!6973378))

(assert (=> d!1920188 d!1920464))

(declare-fun bs!1520533 () Bool)

(declare-fun b!6129481 () Bool)

(assert (= bs!1520533 (and b!6129481 b!6129395)))

(declare-fun lambda!333902 () Int)

(assert (=> bs!1520533 (= (and (= (reg!16401 (regOne!32657 r!7292)) (reg!16401 (regTwo!32657 r!7292))) (= (regOne!32657 r!7292) (regTwo!32657 r!7292))) (= lambda!333902 lambda!333900))))

(declare-fun bs!1520534 () Bool)

(assert (= bs!1520534 (and b!6129481 d!1920220)))

(assert (=> bs!1520534 (not (= lambda!333902 lambda!333836))))

(declare-fun bs!1520535 () Bool)

(assert (= bs!1520535 (and b!6129481 b!6129389)))

(assert (=> bs!1520535 (not (= lambda!333902 lambda!333901))))

(assert (=> bs!1520534 (not (= lambda!333902 lambda!333837))))

(declare-fun bs!1520536 () Bool)

(assert (= bs!1520536 (and b!6129481 d!1920358)))

(assert (=> bs!1520536 (not (= lambda!333902 lambda!333885))))

(declare-fun bs!1520537 () Bool)

(assert (= bs!1520537 (and b!6129481 d!1920432)))

(assert (=> bs!1520537 (not (= lambda!333902 lambda!333899))))

(assert (=> bs!1520537 (not (= lambda!333902 lambda!333898))))

(declare-fun bs!1520538 () Bool)

(assert (= bs!1520538 (and b!6129481 b!6128697)))

(assert (=> bs!1520538 (not (= lambda!333902 lambda!333858))))

(declare-fun bs!1520539 () Bool)

(assert (= bs!1520539 (and b!6129481 d!1920212)))

(assert (=> bs!1520539 (not (= lambda!333902 lambda!333831))))

(declare-fun bs!1520540 () Bool)

(assert (= bs!1520540 (and b!6129481 b!6128255)))

(assert (=> bs!1520540 (not (= lambda!333902 lambda!333806))))

(assert (=> bs!1520540 (not (= lambda!333902 lambda!333807))))

(declare-fun bs!1520541 () Bool)

(assert (= bs!1520541 (and b!6129481 b!6128703)))

(assert (=> bs!1520541 (= (and (= (reg!16401 (regOne!32657 r!7292)) (reg!16401 r!7292)) (= (regOne!32657 r!7292) r!7292)) (= lambda!333902 lambda!333857))))

(assert (=> b!6129481 true))

(assert (=> b!6129481 true))

(declare-fun bs!1520542 () Bool)

(declare-fun b!6129475 () Bool)

(assert (= bs!1520542 (and b!6129475 b!6129395)))

(declare-fun lambda!333903 () Int)

(assert (=> bs!1520542 (not (= lambda!333903 lambda!333900))))

(declare-fun bs!1520543 () Bool)

(assert (= bs!1520543 (and b!6129475 b!6129481)))

(assert (=> bs!1520543 (not (= lambda!333903 lambda!333902))))

(declare-fun bs!1520544 () Bool)

(assert (= bs!1520544 (and b!6129475 d!1920220)))

(assert (=> bs!1520544 (not (= lambda!333903 lambda!333836))))

(declare-fun bs!1520545 () Bool)

(assert (= bs!1520545 (and b!6129475 b!6129389)))

(assert (=> bs!1520545 (= (and (= (regOne!32656 (regOne!32657 r!7292)) (regOne!32656 (regTwo!32657 r!7292))) (= (regTwo!32656 (regOne!32657 r!7292)) (regTwo!32656 (regTwo!32657 r!7292)))) (= lambda!333903 lambda!333901))))

(assert (=> bs!1520544 (= (and (= (regOne!32656 (regOne!32657 r!7292)) (regOne!32656 r!7292)) (= (regTwo!32656 (regOne!32657 r!7292)) (regTwo!32656 r!7292))) (= lambda!333903 lambda!333837))))

(declare-fun bs!1520546 () Bool)

(assert (= bs!1520546 (and b!6129475 d!1920358)))

(assert (=> bs!1520546 (not (= lambda!333903 lambda!333885))))

(declare-fun bs!1520547 () Bool)

(assert (= bs!1520547 (and b!6129475 d!1920432)))

(assert (=> bs!1520547 (= (and (= (regOne!32656 (regOne!32657 r!7292)) (regOne!32656 r!7292)) (= (regTwo!32656 (regOne!32657 r!7292)) (regTwo!32656 r!7292))) (= lambda!333903 lambda!333899))))

(assert (=> bs!1520547 (not (= lambda!333903 lambda!333898))))

(declare-fun bs!1520548 () Bool)

(assert (= bs!1520548 (and b!6129475 b!6128697)))

(assert (=> bs!1520548 (= (and (= (regOne!32656 (regOne!32657 r!7292)) (regOne!32656 r!7292)) (= (regTwo!32656 (regOne!32657 r!7292)) (regTwo!32656 r!7292))) (= lambda!333903 lambda!333858))))

(declare-fun bs!1520549 () Bool)

(assert (= bs!1520549 (and b!6129475 d!1920212)))

(assert (=> bs!1520549 (not (= lambda!333903 lambda!333831))))

(declare-fun bs!1520550 () Bool)

(assert (= bs!1520550 (and b!6129475 b!6128255)))

(assert (=> bs!1520550 (not (= lambda!333903 lambda!333806))))

(assert (=> bs!1520550 (= (and (= (regOne!32656 (regOne!32657 r!7292)) (regOne!32656 r!7292)) (= (regTwo!32656 (regOne!32657 r!7292)) (regTwo!32656 r!7292))) (= lambda!333903 lambda!333807))))

(declare-fun bs!1520551 () Bool)

(assert (= bs!1520551 (and b!6129475 b!6128703)))

(assert (=> bs!1520551 (not (= lambda!333903 lambda!333857))))

(assert (=> b!6129475 true))

(assert (=> b!6129475 true))

(declare-fun b!6129474 () Bool)

(declare-fun res!2540532 () Bool)

(declare-fun e!3736133 () Bool)

(assert (=> b!6129474 (=> res!2540532 e!3736133)))

(declare-fun call!508240 () Bool)

(assert (=> b!6129474 (= res!2540532 call!508240)))

(declare-fun e!3736136 () Bool)

(assert (=> b!6129474 (= e!3736136 e!3736133)))

(declare-fun call!508239 () Bool)

(assert (=> b!6129475 (= e!3736136 call!508239)))

(declare-fun b!6129476 () Bool)

(declare-fun e!3736139 () Bool)

(declare-fun e!3736135 () Bool)

(assert (=> b!6129476 (= e!3736139 e!3736135)))

(declare-fun res!2540533 () Bool)

(assert (=> b!6129476 (= res!2540533 (matchRSpec!3173 (regOne!32657 (regOne!32657 r!7292)) s!2326))))

(assert (=> b!6129476 (=> res!2540533 e!3736135)))

(declare-fun b!6129477 () Bool)

(declare-fun c!1101869 () Bool)

(assert (=> b!6129477 (= c!1101869 (is-ElementMatch!16072 (regOne!32657 r!7292)))))

(declare-fun e!3736137 () Bool)

(declare-fun e!3736134 () Bool)

(assert (=> b!6129477 (= e!3736137 e!3736134)))

(declare-fun b!6129478 () Bool)

(assert (=> b!6129478 (= e!3736139 e!3736136)))

(declare-fun c!1101870 () Bool)

(assert (=> b!6129478 (= c!1101870 (is-Star!16072 (regOne!32657 r!7292)))))

(declare-fun b!6129479 () Bool)

(declare-fun c!1101868 () Bool)

(assert (=> b!6129479 (= c!1101868 (is-Union!16072 (regOne!32657 r!7292)))))

(assert (=> b!6129479 (= e!3736134 e!3736139)))

(declare-fun b!6129480 () Bool)

(declare-fun e!3736138 () Bool)

(assert (=> b!6129480 (= e!3736138 e!3736137)))

(declare-fun res!2540531 () Bool)

(assert (=> b!6129480 (= res!2540531 (not (is-EmptyLang!16072 (regOne!32657 r!7292))))))

(assert (=> b!6129480 (=> (not res!2540531) (not e!3736137))))

(assert (=> b!6129481 (= e!3736133 call!508239)))

(declare-fun bm!508234 () Bool)

(assert (=> bm!508234 (= call!508240 (isEmpty!36334 s!2326))))

(declare-fun b!6129482 () Bool)

(assert (=> b!6129482 (= e!3736135 (matchRSpec!3173 (regTwo!32657 (regOne!32657 r!7292)) s!2326))))

(declare-fun b!6129483 () Bool)

(assert (=> b!6129483 (= e!3736134 (= s!2326 (Cons!64393 (c!1101550 (regOne!32657 r!7292)) Nil!64393)))))

(declare-fun d!1920466 () Bool)

(declare-fun c!1101871 () Bool)

(assert (=> d!1920466 (= c!1101871 (is-EmptyExpr!16072 (regOne!32657 r!7292)))))

(assert (=> d!1920466 (= (matchRSpec!3173 (regOne!32657 r!7292) s!2326) e!3736138)))

(declare-fun b!6129484 () Bool)

(assert (=> b!6129484 (= e!3736138 call!508240)))

(declare-fun bm!508235 () Bool)

(assert (=> bm!508235 (= call!508239 (Exists!3142 (ite c!1101870 lambda!333902 lambda!333903)))))

(assert (= (and d!1920466 c!1101871) b!6129484))

(assert (= (and d!1920466 (not c!1101871)) b!6129480))

(assert (= (and b!6129480 res!2540531) b!6129477))

(assert (= (and b!6129477 c!1101869) b!6129483))

(assert (= (and b!6129477 (not c!1101869)) b!6129479))

(assert (= (and b!6129479 c!1101868) b!6129476))

(assert (= (and b!6129479 (not c!1101868)) b!6129478))

(assert (= (and b!6129476 (not res!2540533)) b!6129482))

(assert (= (and b!6129478 c!1101870) b!6129474))

(assert (= (and b!6129478 (not c!1101870)) b!6129475))

(assert (= (and b!6129474 (not res!2540532)) b!6129481))

(assert (= (or b!6129481 b!6129475) bm!508235))

(assert (= (or b!6129484 b!6129474) bm!508234))

(declare-fun m!6973380 () Bool)

(assert (=> b!6129476 m!6973380))

(assert (=> bm!508234 m!6972830))

(declare-fun m!6973382 () Bool)

(assert (=> b!6129482 m!6973382))

(declare-fun m!6973384 () Bool)

(assert (=> bm!508235 m!6973384))

(assert (=> b!6128698 d!1920466))

(declare-fun d!1920468 () Bool)

(assert (=> d!1920468 (= (nullable!6065 r!7292) (nullableFct!2029 r!7292))))

(declare-fun bs!1520552 () Bool)

(assert (= bs!1520552 d!1920468))

(declare-fun m!6973386 () Bool)

(assert (=> bs!1520552 m!6973386))

(assert (=> b!6128790 d!1920468))

(declare-fun bm!508236 () Bool)

(declare-fun call!508244 () (Set Context!10912))

(declare-fun call!508246 () (Set Context!10912))

(assert (=> bm!508236 (= call!508244 call!508246)))

(declare-fun call!508241 () List!64515)

(declare-fun c!1101873 () Bool)

(declare-fun c!1101875 () Bool)

(declare-fun bm!508237 () Bool)

(assert (=> bm!508237 (= call!508241 ($colon$colon!1949 (exprs!5956 (ite c!1101696 lt!2331616 (Context!10913 call!508124))) (ite (or c!1101875 c!1101873) (regTwo!32656 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))))) (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292)))))))))

(declare-fun b!6129485 () Bool)

(declare-fun e!3736144 () (Set Context!10912))

(declare-fun call!508242 () (Set Context!10912))

(assert (=> b!6129485 (= e!3736144 (set.union call!508242 call!508244))))

(declare-fun bm!508238 () Bool)

(declare-fun c!1101872 () Bool)

(assert (=> bm!508238 (= call!508242 (derivationStepZipperDown!1320 (ite c!1101872 (regOne!32657 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))))) (regOne!32656 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292)))))) (ite c!1101872 (ite c!1101696 lt!2331616 (Context!10913 call!508124)) (Context!10913 call!508241)) (h!70841 s!2326)))))

(declare-fun b!6129487 () Bool)

(declare-fun e!3736140 () (Set Context!10912))

(assert (=> b!6129487 (= e!3736140 (as set.empty (Set Context!10912)))))

(declare-fun call!508243 () List!64515)

(declare-fun bm!508239 () Bool)

(assert (=> bm!508239 (= call!508246 (derivationStepZipperDown!1320 (ite c!1101872 (regTwo!32657 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))))) (ite c!1101875 (regTwo!32656 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))))) (ite c!1101873 (regOne!32656 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))))) (reg!16401 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292)))))))) (ite (or c!1101872 c!1101875) (ite c!1101696 lt!2331616 (Context!10913 call!508124)) (Context!10913 call!508243)) (h!70841 s!2326)))))

(declare-fun b!6129488 () Bool)

(declare-fun call!508245 () (Set Context!10912))

(assert (=> b!6129488 (= e!3736140 call!508245)))

(declare-fun bm!508240 () Bool)

(assert (=> bm!508240 (= call!508243 call!508241)))

(declare-fun b!6129489 () Bool)

(declare-fun e!3736141 () Bool)

(assert (=> b!6129489 (= c!1101875 e!3736141)))

(declare-fun res!2540534 () Bool)

(assert (=> b!6129489 (=> (not res!2540534) (not e!3736141))))

(assert (=> b!6129489 (= res!2540534 (is-Concat!24917 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))))))))

(declare-fun e!3736145 () (Set Context!10912))

(assert (=> b!6129489 (= e!3736145 e!3736144)))

(declare-fun e!3736143 () (Set Context!10912))

(declare-fun b!6129490 () Bool)

(assert (=> b!6129490 (= e!3736143 (set.insert (ite c!1101696 lt!2331616 (Context!10913 call!508124)) (as set.empty (Set Context!10912))))))

(declare-fun b!6129491 () Bool)

(declare-fun c!1101876 () Bool)

(assert (=> b!6129491 (= c!1101876 (is-Star!16072 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))))))))

(declare-fun e!3736142 () (Set Context!10912))

(assert (=> b!6129491 (= e!3736142 e!3736140)))

(declare-fun c!1101874 () Bool)

(declare-fun d!1920470 () Bool)

(assert (=> d!1920470 (= c!1101874 (and (is-ElementMatch!16072 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))))) (= (c!1101550 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))))) (h!70841 s!2326))))))

(assert (=> d!1920470 (= (derivationStepZipperDown!1320 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292)))) (ite c!1101696 lt!2331616 (Context!10913 call!508124)) (h!70841 s!2326)) e!3736143)))

(declare-fun b!6129486 () Bool)

(assert (=> b!6129486 (= e!3736141 (nullable!6065 (regOne!32656 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292)))))))))

(declare-fun b!6129492 () Bool)

(assert (=> b!6129492 (= e!3736144 e!3736142)))

(assert (=> b!6129492 (= c!1101873 (is-Concat!24917 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))))))))

(declare-fun b!6129493 () Bool)

(assert (=> b!6129493 (= e!3736142 call!508245)))

(declare-fun bm!508241 () Bool)

(assert (=> bm!508241 (= call!508245 call!508244)))

(declare-fun b!6129494 () Bool)

(assert (=> b!6129494 (= e!3736145 (set.union call!508242 call!508246))))

(declare-fun b!6129495 () Bool)

(assert (=> b!6129495 (= e!3736143 e!3736145)))

(assert (=> b!6129495 (= c!1101872 (is-Union!16072 (ite c!1101696 (regOne!32657 (regTwo!32657 (regOne!32656 r!7292))) (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))))))))

(assert (= (and d!1920470 c!1101874) b!6129490))

(assert (= (and d!1920470 (not c!1101874)) b!6129495))

(assert (= (and b!6129495 c!1101872) b!6129494))

(assert (= (and b!6129495 (not c!1101872)) b!6129489))

(assert (= (and b!6129489 res!2540534) b!6129486))

(assert (= (and b!6129489 c!1101875) b!6129485))

(assert (= (and b!6129489 (not c!1101875)) b!6129492))

(assert (= (and b!6129492 c!1101873) b!6129493))

(assert (= (and b!6129492 (not c!1101873)) b!6129491))

(assert (= (and b!6129491 c!1101876) b!6129488))

(assert (= (and b!6129491 (not c!1101876)) b!6129487))

(assert (= (or b!6129493 b!6129488) bm!508240))

(assert (= (or b!6129493 b!6129488) bm!508241))

(assert (= (or b!6129485 bm!508240) bm!508237))

(assert (= (or b!6129485 bm!508241) bm!508236))

(assert (= (or b!6129494 bm!508236) bm!508239))

(assert (= (or b!6129494 b!6129485) bm!508238))

(declare-fun m!6973388 () Bool)

(assert (=> bm!508237 m!6973388))

(declare-fun m!6973390 () Bool)

(assert (=> bm!508238 m!6973390))

(declare-fun m!6973392 () Bool)

(assert (=> b!6129490 m!6973392))

(declare-fun m!6973394 () Bool)

(assert (=> bm!508239 m!6973394))

(declare-fun m!6973396 () Bool)

(assert (=> b!6129486 m!6973396))

(assert (=> bm!508121 d!1920470))

(declare-fun d!1920472 () Bool)

(assert (=> d!1920472 (= (isEmpty!36330 (unfocusZipperList!1493 zl!343)) (is-Nil!64391 (unfocusZipperList!1493 zl!343)))))

(assert (=> b!6128615 d!1920472))

(declare-fun bm!508242 () Bool)

(declare-fun call!508250 () (Set Context!10912))

(declare-fun call!508252 () (Set Context!10912))

(assert (=> bm!508242 (= call!508250 call!508252)))

(declare-fun bm!508243 () Bool)

(declare-fun c!1101878 () Bool)

(declare-fun c!1101880 () Bool)

(declare-fun call!508247 () List!64515)

(assert (=> bm!508243 (= call!508247 ($colon$colon!1949 (exprs!5956 (ite (or c!1101696 c!1101699) lt!2331616 (Context!10913 call!508126))) (ite (or c!1101880 c!1101878) (regTwo!32656 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292))))))) (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292)))))))))))

(declare-fun b!6129496 () Bool)

(declare-fun e!3736150 () (Set Context!10912))

(declare-fun call!508248 () (Set Context!10912))

(assert (=> b!6129496 (= e!3736150 (set.union call!508248 call!508250))))

(declare-fun bm!508244 () Bool)

(declare-fun c!1101877 () Bool)

(assert (=> bm!508244 (= call!508248 (derivationStepZipperDown!1320 (ite c!1101877 (regOne!32657 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292))))))) (regOne!32656 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292)))))))) (ite c!1101877 (ite (or c!1101696 c!1101699) lt!2331616 (Context!10913 call!508126)) (Context!10913 call!508247)) (h!70841 s!2326)))))

(declare-fun b!6129498 () Bool)

(declare-fun e!3736146 () (Set Context!10912))

(assert (=> b!6129498 (= e!3736146 (as set.empty (Set Context!10912)))))

(declare-fun call!508249 () List!64515)

(declare-fun bm!508245 () Bool)

(assert (=> bm!508245 (= call!508252 (derivationStepZipperDown!1320 (ite c!1101877 (regTwo!32657 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292))))))) (ite c!1101880 (regTwo!32656 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292))))))) (ite c!1101878 (regOne!32656 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292))))))) (reg!16401 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292)))))))))) (ite (or c!1101877 c!1101880) (ite (or c!1101696 c!1101699) lt!2331616 (Context!10913 call!508126)) (Context!10913 call!508249)) (h!70841 s!2326)))))

(declare-fun b!6129499 () Bool)

(declare-fun call!508251 () (Set Context!10912))

(assert (=> b!6129499 (= e!3736146 call!508251)))

(declare-fun bm!508246 () Bool)

(assert (=> bm!508246 (= call!508249 call!508247)))

(declare-fun b!6129500 () Bool)

(declare-fun e!3736147 () Bool)

(assert (=> b!6129500 (= c!1101880 e!3736147)))

(declare-fun res!2540535 () Bool)

(assert (=> b!6129500 (=> (not res!2540535) (not e!3736147))))

(assert (=> b!6129500 (= res!2540535 (is-Concat!24917 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292))))))))))

(declare-fun e!3736151 () (Set Context!10912))

(assert (=> b!6129500 (= e!3736151 e!3736150)))

(declare-fun b!6129501 () Bool)

(declare-fun e!3736149 () (Set Context!10912))

(assert (=> b!6129501 (= e!3736149 (set.insert (ite (or c!1101696 c!1101699) lt!2331616 (Context!10913 call!508126)) (as set.empty (Set Context!10912))))))

(declare-fun b!6129502 () Bool)

(declare-fun c!1101881 () Bool)

(assert (=> b!6129502 (= c!1101881 (is-Star!16072 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292))))))))))

(declare-fun e!3736148 () (Set Context!10912))

(assert (=> b!6129502 (= e!3736148 e!3736146)))

(declare-fun c!1101879 () Bool)

(declare-fun d!1920474 () Bool)

(assert (=> d!1920474 (= c!1101879 (and (is-ElementMatch!16072 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292))))))) (= (c!1101550 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292))))))) (h!70841 s!2326))))))

(assert (=> d!1920474 (= (derivationStepZipperDown!1320 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292)))))) (ite (or c!1101696 c!1101699) lt!2331616 (Context!10913 call!508126)) (h!70841 s!2326)) e!3736149)))

(declare-fun b!6129497 () Bool)

(assert (=> b!6129497 (= e!3736147 (nullable!6065 (regOne!32656 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292)))))))))))

(declare-fun b!6129503 () Bool)

(assert (=> b!6129503 (= e!3736150 e!3736148)))

(assert (=> b!6129503 (= c!1101878 (is-Concat!24917 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292))))))))))

(declare-fun b!6129504 () Bool)

(assert (=> b!6129504 (= e!3736148 call!508251)))

(declare-fun bm!508247 () Bool)

(assert (=> bm!508247 (= call!508251 call!508250)))

(declare-fun b!6129505 () Bool)

(assert (=> b!6129505 (= e!3736151 (set.union call!508248 call!508252))))

(declare-fun b!6129506 () Bool)

(assert (=> b!6129506 (= e!3736149 e!3736151)))

(assert (=> b!6129506 (= c!1101877 (is-Union!16072 (ite c!1101696 (regTwo!32657 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101699 (regTwo!32656 (regTwo!32657 (regOne!32656 r!7292))) (ite c!1101697 (regOne!32656 (regTwo!32657 (regOne!32656 r!7292))) (reg!16401 (regTwo!32657 (regOne!32656 r!7292))))))))))

(assert (= (and d!1920474 c!1101879) b!6129501))

(assert (= (and d!1920474 (not c!1101879)) b!6129506))

(assert (= (and b!6129506 c!1101877) b!6129505))

(assert (= (and b!6129506 (not c!1101877)) b!6129500))

(assert (= (and b!6129500 res!2540535) b!6129497))

(assert (= (and b!6129500 c!1101880) b!6129496))

(assert (= (and b!6129500 (not c!1101880)) b!6129503))

(assert (= (and b!6129503 c!1101878) b!6129504))

(assert (= (and b!6129503 (not c!1101878)) b!6129502))

(assert (= (and b!6129502 c!1101881) b!6129499))

(assert (= (and b!6129502 (not c!1101881)) b!6129498))

(assert (= (or b!6129504 b!6129499) bm!508246))

(assert (= (or b!6129504 b!6129499) bm!508247))

(assert (= (or b!6129496 bm!508246) bm!508243))

(assert (= (or b!6129496 bm!508247) bm!508242))

(assert (= (or b!6129505 bm!508242) bm!508245))

(assert (= (or b!6129505 b!6129496) bm!508244))

(declare-fun m!6973398 () Bool)

(assert (=> bm!508243 m!6973398))

(declare-fun m!6973400 () Bool)

(assert (=> bm!508244 m!6973400))

(declare-fun m!6973402 () Bool)

(assert (=> b!6129501 m!6973402))

(declare-fun m!6973404 () Bool)

(assert (=> bm!508245 m!6973404))

(declare-fun m!6973406 () Bool)

(assert (=> b!6129497 m!6973406))

(assert (=> bm!508122 d!1920474))

(declare-fun call!508253 () (Set Context!10912))

(declare-fun e!3736152 () (Set Context!10912))

(declare-fun b!6129507 () Bool)

(assert (=> b!6129507 (= e!3736152 (set.union call!508253 (derivationStepZipperUp!1246 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))))))) (h!70841 s!2326))))))

(declare-fun b!6129508 () Bool)

(declare-fun e!3736153 () (Set Context!10912))

(assert (=> b!6129508 (= e!3736153 call!508253)))

(declare-fun b!6129509 () Bool)

(assert (=> b!6129509 (= e!3736153 (as set.empty (Set Context!10912)))))

(declare-fun bm!508248 () Bool)

(assert (=> bm!508248 (= call!508253 (derivationStepZipperDown!1320 (h!70839 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))))) (Context!10913 (t!377982 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))))))) (h!70841 s!2326)))))

(declare-fun b!6129510 () Bool)

(assert (=> b!6129510 (= e!3736152 e!3736153)))

(declare-fun c!1101883 () Bool)

(assert (=> b!6129510 (= c!1101883 (is-Cons!64391 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))))))))

(declare-fun d!1920476 () Bool)

(declare-fun c!1101882 () Bool)

(declare-fun e!3736154 () Bool)

(assert (=> d!1920476 (= c!1101882 e!3736154)))

(declare-fun res!2540536 () Bool)

(assert (=> d!1920476 (=> (not res!2540536) (not e!3736154))))

(assert (=> d!1920476 (= res!2540536 (is-Cons!64391 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))))))))

(assert (=> d!1920476 (= (derivationStepZipperUp!1246 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343)))))))) (h!70841 s!2326)) e!3736152)))

(declare-fun b!6129511 () Bool)

(assert (=> b!6129511 (= e!3736154 (nullable!6065 (h!70839 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (Cons!64391 (h!70839 (exprs!5956 (h!70840 zl!343))) (t!377982 (exprs!5956 (h!70840 zl!343))))))))))))))

(assert (= (and d!1920476 res!2540536) b!6129511))

(assert (= (and d!1920476 c!1101882) b!6129507))

(assert (= (and d!1920476 (not c!1101882)) b!6129510))

(assert (= (and b!6129510 c!1101883) b!6129508))

(assert (= (and b!6129510 (not c!1101883)) b!6129509))

(assert (= (or b!6129507 b!6129508) bm!508248))

(declare-fun m!6973408 () Bool)

(assert (=> b!6129507 m!6973408))

(declare-fun m!6973410 () Bool)

(assert (=> bm!508248 m!6973410))

(declare-fun m!6973412 () Bool)

(assert (=> b!6129511 m!6973412))

(assert (=> b!6128431 d!1920476))

(assert (=> b!6128778 d!1920346))

(assert (=> b!6128778 d!1920348))

(declare-fun d!1920478 () Bool)

(declare-fun c!1101884 () Bool)

(assert (=> d!1920478 (= c!1101884 (isEmpty!36334 (tail!11750 (t!377984 s!2326))))))

(declare-fun e!3736155 () Bool)

(assert (=> d!1920478 (= (matchZipper!2084 (derivationStepZipper!2045 (set.union lt!2331618 lt!2331615) (head!12665 (t!377984 s!2326))) (tail!11750 (t!377984 s!2326))) e!3736155)))

(declare-fun b!6129512 () Bool)

(assert (=> b!6129512 (= e!3736155 (nullableZipper!1853 (derivationStepZipper!2045 (set.union lt!2331618 lt!2331615) (head!12665 (t!377984 s!2326)))))))

(declare-fun b!6129513 () Bool)

(assert (=> b!6129513 (= e!3736155 (matchZipper!2084 (derivationStepZipper!2045 (derivationStepZipper!2045 (set.union lt!2331618 lt!2331615) (head!12665 (t!377984 s!2326))) (head!12665 (tail!11750 (t!377984 s!2326)))) (tail!11750 (tail!11750 (t!377984 s!2326)))))))

(assert (= (and d!1920478 c!1101884) b!6129512))

(assert (= (and d!1920478 (not c!1101884)) b!6129513))

(assert (=> d!1920478 m!6972590))

(assert (=> d!1920478 m!6973276))

(assert (=> b!6129512 m!6972596))

(declare-fun m!6973414 () Bool)

(assert (=> b!6129512 m!6973414))

(assert (=> b!6129513 m!6972590))

(assert (=> b!6129513 m!6973280))

(assert (=> b!6129513 m!6972596))

(assert (=> b!6129513 m!6973280))

(declare-fun m!6973416 () Bool)

(assert (=> b!6129513 m!6973416))

(assert (=> b!6129513 m!6972590))

(assert (=> b!6129513 m!6973284))

(assert (=> b!6129513 m!6973416))

(assert (=> b!6129513 m!6973284))

(declare-fun m!6973418 () Bool)

(assert (=> b!6129513 m!6973418))

(assert (=> b!6128372 d!1920478))

(declare-fun bs!1520553 () Bool)

(declare-fun d!1920480 () Bool)

(assert (= bs!1520553 (and d!1920480 b!6128244)))

(declare-fun lambda!333904 () Int)

(assert (=> bs!1520553 (= (= (head!12665 (t!377984 s!2326)) (h!70841 s!2326)) (= lambda!333904 lambda!333808))))

(declare-fun bs!1520554 () Bool)

(assert (= bs!1520554 (and d!1920480 d!1920412)))

(assert (=> bs!1520554 (= lambda!333904 lambda!333893)))

(assert (=> d!1920480 true))

(assert (=> d!1920480 (= (derivationStepZipper!2045 (set.union lt!2331618 lt!2331615) (head!12665 (t!377984 s!2326))) (flatMap!1577 (set.union lt!2331618 lt!2331615) lambda!333904))))

(declare-fun bs!1520555 () Bool)

(assert (= bs!1520555 d!1920480))

(declare-fun m!6973420 () Bool)

(assert (=> bs!1520555 m!6973420))

(assert (=> b!6128372 d!1920480))

(assert (=> b!6128372 d!1920414))

(assert (=> b!6128372 d!1920416))

(assert (=> bm!508102 d!1920364))

(assert (=> d!1920164 d!1920328))

(declare-fun d!1920482 () Bool)

(assert (=> d!1920482 (= (head!12666 (unfocusZipperList!1493 zl!343)) (h!70839 (unfocusZipperList!1493 zl!343)))))

(assert (=> b!6128619 d!1920482))

(assert (=> d!1920250 d!1920246))

(assert (=> d!1920250 d!1920238))

(declare-fun d!1920484 () Bool)

(assert (=> d!1920484 (= (matchR!8255 r!7292 s!2326) (matchRSpec!3173 r!7292 s!2326))))

(assert (=> d!1920484 true))

(declare-fun _$88!4635 () Unit!157443)

(assert (=> d!1920484 (= (choose!45535 r!7292 s!2326) _$88!4635)))

(declare-fun bs!1520556 () Bool)

(assert (= bs!1520556 d!1920484))

(assert (=> bs!1520556 m!6972486))

(assert (=> bs!1520556 m!6972484))

(assert (=> d!1920250 d!1920484))

(assert (=> d!1920250 d!1920258))

(declare-fun d!1920486 () Bool)

(declare-fun c!1101885 () Bool)

(assert (=> d!1920486 (= c!1101885 (isEmpty!36334 (tail!11750 (t!377984 s!2326))))))

(declare-fun e!3736156 () Bool)

(assert (=> d!1920486 (= (matchZipper!2084 (derivationStepZipper!2045 lt!2331615 (head!12665 (t!377984 s!2326))) (tail!11750 (t!377984 s!2326))) e!3736156)))

(declare-fun b!6129514 () Bool)

(assert (=> b!6129514 (= e!3736156 (nullableZipper!1853 (derivationStepZipper!2045 lt!2331615 (head!12665 (t!377984 s!2326)))))))

(declare-fun b!6129515 () Bool)

(assert (=> b!6129515 (= e!3736156 (matchZipper!2084 (derivationStepZipper!2045 (derivationStepZipper!2045 lt!2331615 (head!12665 (t!377984 s!2326))) (head!12665 (tail!11750 (t!377984 s!2326)))) (tail!11750 (tail!11750 (t!377984 s!2326)))))))

(assert (= (and d!1920486 c!1101885) b!6129514))

(assert (= (and d!1920486 (not c!1101885)) b!6129515))

(assert (=> d!1920486 m!6972590))

(assert (=> d!1920486 m!6973276))

(assert (=> b!6129514 m!6972608))

(declare-fun m!6973422 () Bool)

(assert (=> b!6129514 m!6973422))

(assert (=> b!6129515 m!6972590))

(assert (=> b!6129515 m!6973280))

(assert (=> b!6129515 m!6972608))

(assert (=> b!6129515 m!6973280))

(declare-fun m!6973424 () Bool)

(assert (=> b!6129515 m!6973424))

(assert (=> b!6129515 m!6972590))

(assert (=> b!6129515 m!6973284))

(assert (=> b!6129515 m!6973424))

(assert (=> b!6129515 m!6973284))

(declare-fun m!6973426 () Bool)

(assert (=> b!6129515 m!6973426))

(assert (=> b!6128377 d!1920486))

(declare-fun bs!1520557 () Bool)

(declare-fun d!1920488 () Bool)

(assert (= bs!1520557 (and d!1920488 b!6128244)))

(declare-fun lambda!333905 () Int)

(assert (=> bs!1520557 (= (= (head!12665 (t!377984 s!2326)) (h!70841 s!2326)) (= lambda!333905 lambda!333808))))

(declare-fun bs!1520558 () Bool)

(assert (= bs!1520558 (and d!1920488 d!1920412)))

(assert (=> bs!1520558 (= lambda!333905 lambda!333893)))

(declare-fun bs!1520559 () Bool)

(assert (= bs!1520559 (and d!1920488 d!1920480)))

(assert (=> bs!1520559 (= lambda!333905 lambda!333904)))

(assert (=> d!1920488 true))

(assert (=> d!1920488 (= (derivationStepZipper!2045 lt!2331615 (head!12665 (t!377984 s!2326))) (flatMap!1577 lt!2331615 lambda!333905))))

(declare-fun bs!1520560 () Bool)

(assert (= bs!1520560 d!1920488))

(declare-fun m!6973428 () Bool)

(assert (=> bs!1520560 m!6973428))

(assert (=> b!6128377 d!1920488))

(assert (=> b!6128377 d!1920414))

(assert (=> b!6128377 d!1920416))

(declare-fun call!508254 () (Set Context!10912))

(declare-fun e!3736157 () (Set Context!10912))

(declare-fun b!6129516 () Bool)

(assert (=> b!6129516 (= e!3736157 (set.union call!508254 (derivationStepZipperUp!1246 (Context!10913 (t!377982 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 lt!2331616)))))) (h!70841 s!2326))))))

(declare-fun b!6129517 () Bool)

(declare-fun e!3736158 () (Set Context!10912))

(assert (=> b!6129517 (= e!3736158 call!508254)))

(declare-fun b!6129518 () Bool)

(assert (=> b!6129518 (= e!3736158 (as set.empty (Set Context!10912)))))

(declare-fun bm!508249 () Bool)

(assert (=> bm!508249 (= call!508254 (derivationStepZipperDown!1320 (h!70839 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 lt!2331616))))) (Context!10913 (t!377982 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 lt!2331616)))))) (h!70841 s!2326)))))

(declare-fun b!6129519 () Bool)

(assert (=> b!6129519 (= e!3736157 e!3736158)))

(declare-fun c!1101887 () Bool)

(assert (=> b!6129519 (= c!1101887 (is-Cons!64391 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 lt!2331616))))))))

(declare-fun d!1920490 () Bool)

(declare-fun c!1101886 () Bool)

(declare-fun e!3736159 () Bool)

(assert (=> d!1920490 (= c!1101886 e!3736159)))

(declare-fun res!2540537 () Bool)

(assert (=> d!1920490 (=> (not res!2540537) (not e!3736159))))

(assert (=> d!1920490 (= res!2540537 (is-Cons!64391 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 lt!2331616))))))))

(assert (=> d!1920490 (= (derivationStepZipperUp!1246 (Context!10913 (t!377982 (exprs!5956 lt!2331616))) (h!70841 s!2326)) e!3736157)))

(declare-fun b!6129520 () Bool)

(assert (=> b!6129520 (= e!3736159 (nullable!6065 (h!70839 (exprs!5956 (Context!10913 (t!377982 (exprs!5956 lt!2331616)))))))))

(assert (= (and d!1920490 res!2540537) b!6129520))

(assert (= (and d!1920490 c!1101886) b!6129516))

(assert (= (and d!1920490 (not c!1101886)) b!6129519))

(assert (= (and b!6129519 c!1101887) b!6129517))

(assert (= (and b!6129519 (not c!1101887)) b!6129518))

(assert (= (or b!6129516 b!6129517) bm!508249))

(declare-fun m!6973430 () Bool)

(assert (=> b!6129516 m!6973430))

(declare-fun m!6973432 () Bool)

(assert (=> bm!508249 m!6973432))

(declare-fun m!6973434 () Bool)

(assert (=> b!6129520 m!6973434))

(assert (=> b!6128426 d!1920490))

(assert (=> d!1920178 d!1920174))

(declare-fun d!1920492 () Bool)

(assert (=> d!1920492 (= (flatMap!1577 z!1189 lambda!333808) (dynLambda!25365 lambda!333808 (h!70840 zl!343)))))

(assert (=> d!1920492 true))

(declare-fun _$13!2990 () Unit!157443)

(assert (=> d!1920492 (= (choose!45528 z!1189 (h!70840 zl!343) lambda!333808) _$13!2990)))

(declare-fun b_lambda!233333 () Bool)

(assert (=> (not b_lambda!233333) (not d!1920492)))

(declare-fun bs!1520561 () Bool)

(assert (= bs!1520561 d!1920492))

(assert (=> bs!1520561 m!6972462))

(assert (=> bs!1520561 m!6972618))

(assert (=> d!1920178 d!1920492))

(assert (=> b!6128478 d!1920226))

(declare-fun d!1920494 () Bool)

(assert (=> d!1920494 (= (isUnion!929 lt!2331705) (is-Union!16072 lt!2331705))))

(assert (=> b!6128621 d!1920494))

(declare-fun b!6129523 () Bool)

(declare-fun e!3736160 () Bool)

(declare-fun tp!1712886 () Bool)

(assert (=> b!6129523 (= e!3736160 tp!1712886)))

(declare-fun b!6129522 () Bool)

(declare-fun tp!1712884 () Bool)

(declare-fun tp!1712883 () Bool)

(assert (=> b!6129522 (= e!3736160 (and tp!1712884 tp!1712883))))

(assert (=> b!6128903 (= tp!1712777 e!3736160)))

(declare-fun b!6129524 () Bool)

(declare-fun tp!1712885 () Bool)

(declare-fun tp!1712887 () Bool)

(assert (=> b!6129524 (= e!3736160 (and tp!1712885 tp!1712887))))

(declare-fun b!6129521 () Bool)

(assert (=> b!6129521 (= e!3736160 tp_is_empty!41397)))

(assert (= (and b!6128903 (is-ElementMatch!16072 (regOne!32656 (regTwo!32656 r!7292)))) b!6129521))

(assert (= (and b!6128903 (is-Concat!24917 (regOne!32656 (regTwo!32656 r!7292)))) b!6129522))

(assert (= (and b!6128903 (is-Star!16072 (regOne!32656 (regTwo!32656 r!7292)))) b!6129523))

(assert (= (and b!6128903 (is-Union!16072 (regOne!32656 (regTwo!32656 r!7292)))) b!6129524))

(declare-fun b!6129527 () Bool)

(declare-fun e!3736161 () Bool)

(declare-fun tp!1712891 () Bool)

(assert (=> b!6129527 (= e!3736161 tp!1712891)))

(declare-fun b!6129526 () Bool)

(declare-fun tp!1712889 () Bool)

(declare-fun tp!1712888 () Bool)

(assert (=> b!6129526 (= e!3736161 (and tp!1712889 tp!1712888))))

(assert (=> b!6128903 (= tp!1712776 e!3736161)))

(declare-fun b!6129528 () Bool)

(declare-fun tp!1712890 () Bool)

(declare-fun tp!1712892 () Bool)

(assert (=> b!6129528 (= e!3736161 (and tp!1712890 tp!1712892))))

(declare-fun b!6129525 () Bool)

(assert (=> b!6129525 (= e!3736161 tp_is_empty!41397)))

(assert (= (and b!6128903 (is-ElementMatch!16072 (regTwo!32656 (regTwo!32656 r!7292)))) b!6129525))

(assert (= (and b!6128903 (is-Concat!24917 (regTwo!32656 (regTwo!32656 r!7292)))) b!6129526))

(assert (= (and b!6128903 (is-Star!16072 (regTwo!32656 (regTwo!32656 r!7292)))) b!6129527))

(assert (= (and b!6128903 (is-Union!16072 (regTwo!32656 (regTwo!32656 r!7292)))) b!6129528))

(declare-fun b!6129530 () Bool)

(declare-fun e!3736163 () Bool)

(declare-fun tp!1712893 () Bool)

(assert (=> b!6129530 (= e!3736163 tp!1712893)))

(declare-fun e!3736162 () Bool)

(declare-fun tp!1712894 () Bool)

(declare-fun b!6129529 () Bool)

(assert (=> b!6129529 (= e!3736162 (and (inv!83428 (h!70840 (t!377983 (t!377983 zl!343)))) e!3736163 tp!1712894))))

(assert (=> b!6128938 (= tp!1712812 e!3736162)))

(assert (= b!6129529 b!6129530))

(assert (= (and b!6128938 (is-Cons!64392 (t!377983 (t!377983 zl!343)))) b!6129529))

(declare-fun m!6973436 () Bool)

(assert (=> b!6129529 m!6973436))

(declare-fun b!6129533 () Bool)

(declare-fun e!3736164 () Bool)

(declare-fun tp!1712898 () Bool)

(assert (=> b!6129533 (= e!3736164 tp!1712898)))

(declare-fun b!6129532 () Bool)

(declare-fun tp!1712896 () Bool)

(declare-fun tp!1712895 () Bool)

(assert (=> b!6129532 (= e!3736164 (and tp!1712896 tp!1712895))))

(assert (=> b!6128926 (= tp!1712798 e!3736164)))

(declare-fun b!6129534 () Bool)

(declare-fun tp!1712897 () Bool)

(declare-fun tp!1712899 () Bool)

(assert (=> b!6129534 (= e!3736164 (and tp!1712897 tp!1712899))))

(declare-fun b!6129531 () Bool)

(assert (=> b!6129531 (= e!3736164 tp_is_empty!41397)))

(assert (= (and b!6128926 (is-ElementMatch!16072 (h!70839 (exprs!5956 setElem!41413)))) b!6129531))

(assert (= (and b!6128926 (is-Concat!24917 (h!70839 (exprs!5956 setElem!41413)))) b!6129532))

(assert (= (and b!6128926 (is-Star!16072 (h!70839 (exprs!5956 setElem!41413)))) b!6129533))

(assert (= (and b!6128926 (is-Union!16072 (h!70839 (exprs!5956 setElem!41413)))) b!6129534))

(declare-fun b!6129535 () Bool)

(declare-fun e!3736165 () Bool)

(declare-fun tp!1712900 () Bool)

(declare-fun tp!1712901 () Bool)

(assert (=> b!6129535 (= e!3736165 (and tp!1712900 tp!1712901))))

(assert (=> b!6128926 (= tp!1712799 e!3736165)))

(assert (= (and b!6128926 (is-Cons!64391 (t!377982 (exprs!5956 setElem!41413)))) b!6129535))

(declare-fun b!6129538 () Bool)

(declare-fun e!3736166 () Bool)

(declare-fun tp!1712905 () Bool)

(assert (=> b!6129538 (= e!3736166 tp!1712905)))

(declare-fun b!6129537 () Bool)

(declare-fun tp!1712903 () Bool)

(declare-fun tp!1712902 () Bool)

(assert (=> b!6129537 (= e!3736166 (and tp!1712903 tp!1712902))))

(assert (=> b!6128928 (= tp!1712801 e!3736166)))

(declare-fun b!6129539 () Bool)

(declare-fun tp!1712904 () Bool)

(declare-fun tp!1712906 () Bool)

(assert (=> b!6129539 (= e!3736166 (and tp!1712904 tp!1712906))))

(declare-fun b!6129536 () Bool)

(assert (=> b!6129536 (= e!3736166 tp_is_empty!41397)))

(assert (= (and b!6128928 (is-ElementMatch!16072 (regOne!32656 (reg!16401 r!7292)))) b!6129536))

(assert (= (and b!6128928 (is-Concat!24917 (regOne!32656 (reg!16401 r!7292)))) b!6129537))

(assert (= (and b!6128928 (is-Star!16072 (regOne!32656 (reg!16401 r!7292)))) b!6129538))

(assert (= (and b!6128928 (is-Union!16072 (regOne!32656 (reg!16401 r!7292)))) b!6129539))

(declare-fun b!6129542 () Bool)

(declare-fun e!3736167 () Bool)

(declare-fun tp!1712910 () Bool)

(assert (=> b!6129542 (= e!3736167 tp!1712910)))

(declare-fun b!6129541 () Bool)

(declare-fun tp!1712908 () Bool)

(declare-fun tp!1712907 () Bool)

(assert (=> b!6129541 (= e!3736167 (and tp!1712908 tp!1712907))))

(assert (=> b!6128928 (= tp!1712800 e!3736167)))

(declare-fun b!6129543 () Bool)

(declare-fun tp!1712909 () Bool)

(declare-fun tp!1712911 () Bool)

(assert (=> b!6129543 (= e!3736167 (and tp!1712909 tp!1712911))))

(declare-fun b!6129540 () Bool)

(assert (=> b!6129540 (= e!3736167 tp_is_empty!41397)))

(assert (= (and b!6128928 (is-ElementMatch!16072 (regTwo!32656 (reg!16401 r!7292)))) b!6129540))

(assert (= (and b!6128928 (is-Concat!24917 (regTwo!32656 (reg!16401 r!7292)))) b!6129541))

(assert (= (and b!6128928 (is-Star!16072 (regTwo!32656 (reg!16401 r!7292)))) b!6129542))

(assert (= (and b!6128928 (is-Union!16072 (regTwo!32656 (reg!16401 r!7292)))) b!6129543))

(declare-fun b!6129546 () Bool)

(declare-fun e!3736168 () Bool)

(declare-fun tp!1712915 () Bool)

(assert (=> b!6129546 (= e!3736168 tp!1712915)))

(declare-fun b!6129545 () Bool)

(declare-fun tp!1712913 () Bool)

(declare-fun tp!1712912 () Bool)

(assert (=> b!6129545 (= e!3736168 (and tp!1712913 tp!1712912))))

(assert (=> b!6128929 (= tp!1712803 e!3736168)))

(declare-fun b!6129547 () Bool)

(declare-fun tp!1712914 () Bool)

(declare-fun tp!1712916 () Bool)

(assert (=> b!6129547 (= e!3736168 (and tp!1712914 tp!1712916))))

(declare-fun b!6129544 () Bool)

(assert (=> b!6129544 (= e!3736168 tp_is_empty!41397)))

(assert (= (and b!6128929 (is-ElementMatch!16072 (reg!16401 (reg!16401 r!7292)))) b!6129544))

(assert (= (and b!6128929 (is-Concat!24917 (reg!16401 (reg!16401 r!7292)))) b!6129545))

(assert (= (and b!6128929 (is-Star!16072 (reg!16401 (reg!16401 r!7292)))) b!6129546))

(assert (= (and b!6128929 (is-Union!16072 (reg!16401 (reg!16401 r!7292)))) b!6129547))

(declare-fun b!6129550 () Bool)

(declare-fun e!3736169 () Bool)

(declare-fun tp!1712920 () Bool)

(assert (=> b!6129550 (= e!3736169 tp!1712920)))

(declare-fun b!6129549 () Bool)

(declare-fun tp!1712918 () Bool)

(declare-fun tp!1712917 () Bool)

(assert (=> b!6129549 (= e!3736169 (and tp!1712918 tp!1712917))))

(assert (=> b!6128930 (= tp!1712802 e!3736169)))

(declare-fun b!6129551 () Bool)

(declare-fun tp!1712919 () Bool)

(declare-fun tp!1712921 () Bool)

(assert (=> b!6129551 (= e!3736169 (and tp!1712919 tp!1712921))))

(declare-fun b!6129548 () Bool)

(assert (=> b!6129548 (= e!3736169 tp_is_empty!41397)))

(assert (= (and b!6128930 (is-ElementMatch!16072 (regOne!32657 (reg!16401 r!7292)))) b!6129548))

(assert (= (and b!6128930 (is-Concat!24917 (regOne!32657 (reg!16401 r!7292)))) b!6129549))

(assert (= (and b!6128930 (is-Star!16072 (regOne!32657 (reg!16401 r!7292)))) b!6129550))

(assert (= (and b!6128930 (is-Union!16072 (regOne!32657 (reg!16401 r!7292)))) b!6129551))

(declare-fun b!6129554 () Bool)

(declare-fun e!3736170 () Bool)

(declare-fun tp!1712925 () Bool)

(assert (=> b!6129554 (= e!3736170 tp!1712925)))

(declare-fun b!6129553 () Bool)

(declare-fun tp!1712923 () Bool)

(declare-fun tp!1712922 () Bool)

(assert (=> b!6129553 (= e!3736170 (and tp!1712923 tp!1712922))))

(assert (=> b!6128930 (= tp!1712804 e!3736170)))

(declare-fun b!6129555 () Bool)

(declare-fun tp!1712924 () Bool)

(declare-fun tp!1712926 () Bool)

(assert (=> b!6129555 (= e!3736170 (and tp!1712924 tp!1712926))))

(declare-fun b!6129552 () Bool)

(assert (=> b!6129552 (= e!3736170 tp_is_empty!41397)))

(assert (= (and b!6128930 (is-ElementMatch!16072 (regTwo!32657 (reg!16401 r!7292)))) b!6129552))

(assert (= (and b!6128930 (is-Concat!24917 (regTwo!32657 (reg!16401 r!7292)))) b!6129553))

(assert (= (and b!6128930 (is-Star!16072 (regTwo!32657 (reg!16401 r!7292)))) b!6129554))

(assert (= (and b!6128930 (is-Union!16072 (regTwo!32657 (reg!16401 r!7292)))) b!6129555))

(declare-fun b!6129558 () Bool)

(declare-fun e!3736171 () Bool)

(declare-fun tp!1712930 () Bool)

(assert (=> b!6129558 (= e!3736171 tp!1712930)))

(declare-fun b!6129557 () Bool)

(declare-fun tp!1712928 () Bool)

(declare-fun tp!1712927 () Bool)

(assert (=> b!6129557 (= e!3736171 (and tp!1712928 tp!1712927))))

(assert (=> b!6128904 (= tp!1712779 e!3736171)))

(declare-fun b!6129559 () Bool)

(declare-fun tp!1712929 () Bool)

(declare-fun tp!1712931 () Bool)

(assert (=> b!6129559 (= e!3736171 (and tp!1712929 tp!1712931))))

(declare-fun b!6129556 () Bool)

(assert (=> b!6129556 (= e!3736171 tp_is_empty!41397)))

(assert (= (and b!6128904 (is-ElementMatch!16072 (reg!16401 (regTwo!32656 r!7292)))) b!6129556))

(assert (= (and b!6128904 (is-Concat!24917 (reg!16401 (regTwo!32656 r!7292)))) b!6129557))

(assert (= (and b!6128904 (is-Star!16072 (reg!16401 (regTwo!32656 r!7292)))) b!6129558))

(assert (= (and b!6128904 (is-Union!16072 (reg!16401 (regTwo!32656 r!7292)))) b!6129559))

(declare-fun b!6129560 () Bool)

(declare-fun e!3736172 () Bool)

(declare-fun tp!1712932 () Bool)

(declare-fun tp!1712933 () Bool)

(assert (=> b!6129560 (= e!3736172 (and tp!1712932 tp!1712933))))

(assert (=> b!6128939 (= tp!1712811 e!3736172)))

(assert (= (and b!6128939 (is-Cons!64391 (exprs!5956 (h!70840 (t!377983 zl!343))))) b!6129560))

(declare-fun b!6129563 () Bool)

(declare-fun e!3736173 () Bool)

(declare-fun tp!1712937 () Bool)

(assert (=> b!6129563 (= e!3736173 tp!1712937)))

(declare-fun b!6129562 () Bool)

(declare-fun tp!1712935 () Bool)

(declare-fun tp!1712934 () Bool)

(assert (=> b!6129562 (= e!3736173 (and tp!1712935 tp!1712934))))

(assert (=> b!6128905 (= tp!1712778 e!3736173)))

(declare-fun b!6129564 () Bool)

(declare-fun tp!1712936 () Bool)

(declare-fun tp!1712938 () Bool)

(assert (=> b!6129564 (= e!3736173 (and tp!1712936 tp!1712938))))

(declare-fun b!6129561 () Bool)

(assert (=> b!6129561 (= e!3736173 tp_is_empty!41397)))

(assert (= (and b!6128905 (is-ElementMatch!16072 (regOne!32657 (regTwo!32656 r!7292)))) b!6129561))

(assert (= (and b!6128905 (is-Concat!24917 (regOne!32657 (regTwo!32656 r!7292)))) b!6129562))

(assert (= (and b!6128905 (is-Star!16072 (regOne!32657 (regTwo!32656 r!7292)))) b!6129563))

(assert (= (and b!6128905 (is-Union!16072 (regOne!32657 (regTwo!32656 r!7292)))) b!6129564))

(declare-fun b!6129567 () Bool)

(declare-fun e!3736174 () Bool)

(declare-fun tp!1712942 () Bool)

(assert (=> b!6129567 (= e!3736174 tp!1712942)))

(declare-fun b!6129566 () Bool)

(declare-fun tp!1712940 () Bool)

(declare-fun tp!1712939 () Bool)

(assert (=> b!6129566 (= e!3736174 (and tp!1712940 tp!1712939))))

(assert (=> b!6128905 (= tp!1712780 e!3736174)))

(declare-fun b!6129568 () Bool)

(declare-fun tp!1712941 () Bool)

(declare-fun tp!1712943 () Bool)

(assert (=> b!6129568 (= e!3736174 (and tp!1712941 tp!1712943))))

(declare-fun b!6129565 () Bool)

(assert (=> b!6129565 (= e!3736174 tp_is_empty!41397)))

(assert (= (and b!6128905 (is-ElementMatch!16072 (regTwo!32657 (regTwo!32656 r!7292)))) b!6129565))

(assert (= (and b!6128905 (is-Concat!24917 (regTwo!32657 (regTwo!32656 r!7292)))) b!6129566))

(assert (= (and b!6128905 (is-Star!16072 (regTwo!32657 (regTwo!32656 r!7292)))) b!6129567))

(assert (= (and b!6128905 (is-Union!16072 (regTwo!32657 (regTwo!32656 r!7292)))) b!6129568))

(declare-fun b!6129571 () Bool)

(declare-fun e!3736175 () Bool)

(declare-fun tp!1712947 () Bool)

(assert (=> b!6129571 (= e!3736175 tp!1712947)))

(declare-fun b!6129570 () Bool)

(declare-fun tp!1712945 () Bool)

(declare-fun tp!1712944 () Bool)

(assert (=> b!6129570 (= e!3736175 (and tp!1712945 tp!1712944))))

(assert (=> b!6128921 (= tp!1712791 e!3736175)))

(declare-fun b!6129572 () Bool)

(declare-fun tp!1712946 () Bool)

(declare-fun tp!1712948 () Bool)

(assert (=> b!6129572 (= e!3736175 (and tp!1712946 tp!1712948))))

(declare-fun b!6129569 () Bool)

(assert (=> b!6129569 (= e!3736175 tp_is_empty!41397)))

(assert (= (and b!6128921 (is-ElementMatch!16072 (regOne!32657 (regTwo!32657 r!7292)))) b!6129569))

(assert (= (and b!6128921 (is-Concat!24917 (regOne!32657 (regTwo!32657 r!7292)))) b!6129570))

(assert (= (and b!6128921 (is-Star!16072 (regOne!32657 (regTwo!32657 r!7292)))) b!6129571))

(assert (= (and b!6128921 (is-Union!16072 (regOne!32657 (regTwo!32657 r!7292)))) b!6129572))

(declare-fun b!6129575 () Bool)

(declare-fun e!3736176 () Bool)

(declare-fun tp!1712952 () Bool)

(assert (=> b!6129575 (= e!3736176 tp!1712952)))

(declare-fun b!6129574 () Bool)

(declare-fun tp!1712950 () Bool)

(declare-fun tp!1712949 () Bool)

(assert (=> b!6129574 (= e!3736176 (and tp!1712950 tp!1712949))))

(assert (=> b!6128921 (= tp!1712793 e!3736176)))

(declare-fun b!6129576 () Bool)

(declare-fun tp!1712951 () Bool)

(declare-fun tp!1712953 () Bool)

(assert (=> b!6129576 (= e!3736176 (and tp!1712951 tp!1712953))))

(declare-fun b!6129573 () Bool)

(assert (=> b!6129573 (= e!3736176 tp_is_empty!41397)))

(assert (= (and b!6128921 (is-ElementMatch!16072 (regTwo!32657 (regTwo!32657 r!7292)))) b!6129573))

(assert (= (and b!6128921 (is-Concat!24917 (regTwo!32657 (regTwo!32657 r!7292)))) b!6129574))

(assert (= (and b!6128921 (is-Star!16072 (regTwo!32657 (regTwo!32657 r!7292)))) b!6129575))

(assert (= (and b!6128921 (is-Union!16072 (regTwo!32657 (regTwo!32657 r!7292)))) b!6129576))

(declare-fun condSetEmpty!41426 () Bool)

(assert (=> setNonEmpty!41419 (= condSetEmpty!41426 (= setRest!41419 (as set.empty (Set Context!10912))))))

(declare-fun setRes!41426 () Bool)

(assert (=> setNonEmpty!41419 (= tp!1712759 setRes!41426)))

(declare-fun setIsEmpty!41426 () Bool)

(assert (=> setIsEmpty!41426 setRes!41426))

(declare-fun tp!1712954 () Bool)

(declare-fun setElem!41426 () Context!10912)

(declare-fun setNonEmpty!41426 () Bool)

(declare-fun e!3736177 () Bool)

(assert (=> setNonEmpty!41426 (= setRes!41426 (and tp!1712954 (inv!83428 setElem!41426) e!3736177))))

(declare-fun setRest!41426 () (Set Context!10912))

(assert (=> setNonEmpty!41426 (= setRest!41419 (set.union (set.insert setElem!41426 (as set.empty (Set Context!10912))) setRest!41426))))

(declare-fun b!6129577 () Bool)

(declare-fun tp!1712955 () Bool)

(assert (=> b!6129577 (= e!3736177 tp!1712955)))

(assert (= (and setNonEmpty!41419 condSetEmpty!41426) setIsEmpty!41426))

(assert (= (and setNonEmpty!41419 (not condSetEmpty!41426)) setNonEmpty!41426))

(assert (= setNonEmpty!41426 b!6129577))

(declare-fun m!6973438 () Bool)

(assert (=> setNonEmpty!41426 m!6973438))

(declare-fun b!6129580 () Bool)

(declare-fun e!3736178 () Bool)

(declare-fun tp!1712959 () Bool)

(assert (=> b!6129580 (= e!3736178 tp!1712959)))

(declare-fun b!6129579 () Bool)

(declare-fun tp!1712957 () Bool)

(declare-fun tp!1712956 () Bool)

(assert (=> b!6129579 (= e!3736178 (and tp!1712957 tp!1712956))))

(assert (=> b!6128899 (= tp!1712772 e!3736178)))

(declare-fun b!6129581 () Bool)

(declare-fun tp!1712958 () Bool)

(declare-fun tp!1712960 () Bool)

(assert (=> b!6129581 (= e!3736178 (and tp!1712958 tp!1712960))))

(declare-fun b!6129578 () Bool)

(assert (=> b!6129578 (= e!3736178 tp_is_empty!41397)))

(assert (= (and b!6128899 (is-ElementMatch!16072 (regOne!32656 (regOne!32656 r!7292)))) b!6129578))

(assert (= (and b!6128899 (is-Concat!24917 (regOne!32656 (regOne!32656 r!7292)))) b!6129579))

(assert (= (and b!6128899 (is-Star!16072 (regOne!32656 (regOne!32656 r!7292)))) b!6129580))

(assert (= (and b!6128899 (is-Union!16072 (regOne!32656 (regOne!32656 r!7292)))) b!6129581))

(declare-fun b!6129584 () Bool)

(declare-fun e!3736179 () Bool)

(declare-fun tp!1712964 () Bool)

(assert (=> b!6129584 (= e!3736179 tp!1712964)))

(declare-fun b!6129583 () Bool)

(declare-fun tp!1712962 () Bool)

(declare-fun tp!1712961 () Bool)

(assert (=> b!6129583 (= e!3736179 (and tp!1712962 tp!1712961))))

(assert (=> b!6128899 (= tp!1712771 e!3736179)))

(declare-fun b!6129585 () Bool)

(declare-fun tp!1712963 () Bool)

(declare-fun tp!1712965 () Bool)

(assert (=> b!6129585 (= e!3736179 (and tp!1712963 tp!1712965))))

(declare-fun b!6129582 () Bool)

(assert (=> b!6129582 (= e!3736179 tp_is_empty!41397)))

(assert (= (and b!6128899 (is-ElementMatch!16072 (regTwo!32656 (regOne!32656 r!7292)))) b!6129582))

(assert (= (and b!6128899 (is-Concat!24917 (regTwo!32656 (regOne!32656 r!7292)))) b!6129583))

(assert (= (and b!6128899 (is-Star!16072 (regTwo!32656 (regOne!32656 r!7292)))) b!6129584))

(assert (= (and b!6128899 (is-Union!16072 (regTwo!32656 (regOne!32656 r!7292)))) b!6129585))

(declare-fun b!6129586 () Bool)

(declare-fun e!3736180 () Bool)

(declare-fun tp!1712966 () Bool)

(assert (=> b!6129586 (= e!3736180 (and tp_is_empty!41397 tp!1712966))))

(assert (=> b!6128912 (= tp!1712783 e!3736180)))

(assert (= (and b!6128912 (is-Cons!64393 (t!377984 (t!377984 s!2326)))) b!6129586))

(declare-fun b!6129589 () Bool)

(declare-fun e!3736181 () Bool)

(declare-fun tp!1712970 () Bool)

(assert (=> b!6129589 (= e!3736181 tp!1712970)))

(declare-fun b!6129588 () Bool)

(declare-fun tp!1712968 () Bool)

(declare-fun tp!1712967 () Bool)

(assert (=> b!6129588 (= e!3736181 (and tp!1712968 tp!1712967))))

(assert (=> b!6128919 (= tp!1712790 e!3736181)))

(declare-fun b!6129590 () Bool)

(declare-fun tp!1712969 () Bool)

(declare-fun tp!1712971 () Bool)

(assert (=> b!6129590 (= e!3736181 (and tp!1712969 tp!1712971))))

(declare-fun b!6129587 () Bool)

(assert (=> b!6129587 (= e!3736181 tp_is_empty!41397)))

(assert (= (and b!6128919 (is-ElementMatch!16072 (regOne!32656 (regTwo!32657 r!7292)))) b!6129587))

(assert (= (and b!6128919 (is-Concat!24917 (regOne!32656 (regTwo!32657 r!7292)))) b!6129588))

(assert (= (and b!6128919 (is-Star!16072 (regOne!32656 (regTwo!32657 r!7292)))) b!6129589))

(assert (= (and b!6128919 (is-Union!16072 (regOne!32656 (regTwo!32657 r!7292)))) b!6129590))

(declare-fun b!6129593 () Bool)

(declare-fun e!3736182 () Bool)

(declare-fun tp!1712975 () Bool)

(assert (=> b!6129593 (= e!3736182 tp!1712975)))

(declare-fun b!6129592 () Bool)

(declare-fun tp!1712973 () Bool)

(declare-fun tp!1712972 () Bool)

(assert (=> b!6129592 (= e!3736182 (and tp!1712973 tp!1712972))))

(assert (=> b!6128919 (= tp!1712789 e!3736182)))

(declare-fun b!6129594 () Bool)

(declare-fun tp!1712974 () Bool)

(declare-fun tp!1712976 () Bool)

(assert (=> b!6129594 (= e!3736182 (and tp!1712974 tp!1712976))))

(declare-fun b!6129591 () Bool)

(assert (=> b!6129591 (= e!3736182 tp_is_empty!41397)))

(assert (= (and b!6128919 (is-ElementMatch!16072 (regTwo!32656 (regTwo!32657 r!7292)))) b!6129591))

(assert (= (and b!6128919 (is-Concat!24917 (regTwo!32656 (regTwo!32657 r!7292)))) b!6129592))

(assert (= (and b!6128919 (is-Star!16072 (regTwo!32656 (regTwo!32657 r!7292)))) b!6129593))

(assert (= (and b!6128919 (is-Union!16072 (regTwo!32656 (regTwo!32657 r!7292)))) b!6129594))

(declare-fun b!6129597 () Bool)

(declare-fun e!3736183 () Bool)

(declare-fun tp!1712980 () Bool)

(assert (=> b!6129597 (= e!3736183 tp!1712980)))

(declare-fun b!6129596 () Bool)

(declare-fun tp!1712978 () Bool)

(declare-fun tp!1712977 () Bool)

(assert (=> b!6129596 (= e!3736183 (and tp!1712978 tp!1712977))))

(assert (=> b!6128920 (= tp!1712792 e!3736183)))

(declare-fun b!6129598 () Bool)

(declare-fun tp!1712979 () Bool)

(declare-fun tp!1712981 () Bool)

(assert (=> b!6129598 (= e!3736183 (and tp!1712979 tp!1712981))))

(declare-fun b!6129595 () Bool)

(assert (=> b!6129595 (= e!3736183 tp_is_empty!41397)))

(assert (= (and b!6128920 (is-ElementMatch!16072 (reg!16401 (regTwo!32657 r!7292)))) b!6129595))

(assert (= (and b!6128920 (is-Concat!24917 (reg!16401 (regTwo!32657 r!7292)))) b!6129596))

(assert (= (and b!6128920 (is-Star!16072 (reg!16401 (regTwo!32657 r!7292)))) b!6129597))

(assert (= (and b!6128920 (is-Union!16072 (reg!16401 (regTwo!32657 r!7292)))) b!6129598))

(declare-fun b!6129601 () Bool)

(declare-fun e!3736184 () Bool)

(declare-fun tp!1712985 () Bool)

(assert (=> b!6129601 (= e!3736184 tp!1712985)))

(declare-fun b!6129600 () Bool)

(declare-fun tp!1712983 () Bool)

(declare-fun tp!1712982 () Bool)

(assert (=> b!6129600 (= e!3736184 (and tp!1712983 tp!1712982))))

(assert (=> b!6128914 (= tp!1712785 e!3736184)))

(declare-fun b!6129602 () Bool)

(declare-fun tp!1712984 () Bool)

(declare-fun tp!1712986 () Bool)

(assert (=> b!6129602 (= e!3736184 (and tp!1712984 tp!1712986))))

(declare-fun b!6129599 () Bool)

(assert (=> b!6129599 (= e!3736184 tp_is_empty!41397)))

(assert (= (and b!6128914 (is-ElementMatch!16072 (regOne!32656 (regOne!32657 r!7292)))) b!6129599))

(assert (= (and b!6128914 (is-Concat!24917 (regOne!32656 (regOne!32657 r!7292)))) b!6129600))

(assert (= (and b!6128914 (is-Star!16072 (regOne!32656 (regOne!32657 r!7292)))) b!6129601))

(assert (= (and b!6128914 (is-Union!16072 (regOne!32656 (regOne!32657 r!7292)))) b!6129602))

(declare-fun b!6129605 () Bool)

(declare-fun e!3736185 () Bool)

(declare-fun tp!1712990 () Bool)

(assert (=> b!6129605 (= e!3736185 tp!1712990)))

(declare-fun b!6129604 () Bool)

(declare-fun tp!1712988 () Bool)

(declare-fun tp!1712987 () Bool)

(assert (=> b!6129604 (= e!3736185 (and tp!1712988 tp!1712987))))

(assert (=> b!6128914 (= tp!1712784 e!3736185)))

(declare-fun b!6129606 () Bool)

(declare-fun tp!1712989 () Bool)

(declare-fun tp!1712991 () Bool)

(assert (=> b!6129606 (= e!3736185 (and tp!1712989 tp!1712991))))

(declare-fun b!6129603 () Bool)

(assert (=> b!6129603 (= e!3736185 tp_is_empty!41397)))

(assert (= (and b!6128914 (is-ElementMatch!16072 (regTwo!32656 (regOne!32657 r!7292)))) b!6129603))

(assert (= (and b!6128914 (is-Concat!24917 (regTwo!32656 (regOne!32657 r!7292)))) b!6129604))

(assert (= (and b!6128914 (is-Star!16072 (regTwo!32656 (regOne!32657 r!7292)))) b!6129605))

(assert (= (and b!6128914 (is-Union!16072 (regTwo!32656 (regOne!32657 r!7292)))) b!6129606))

(declare-fun b!6129609 () Bool)

(declare-fun e!3736186 () Bool)

(declare-fun tp!1712995 () Bool)

(assert (=> b!6129609 (= e!3736186 tp!1712995)))

(declare-fun b!6129608 () Bool)

(declare-fun tp!1712993 () Bool)

(declare-fun tp!1712992 () Bool)

(assert (=> b!6129608 (= e!3736186 (and tp!1712993 tp!1712992))))

(assert (=> b!6128915 (= tp!1712787 e!3736186)))

(declare-fun b!6129610 () Bool)

(declare-fun tp!1712994 () Bool)

(declare-fun tp!1712996 () Bool)

(assert (=> b!6129610 (= e!3736186 (and tp!1712994 tp!1712996))))

(declare-fun b!6129607 () Bool)

(assert (=> b!6129607 (= e!3736186 tp_is_empty!41397)))

(assert (= (and b!6128915 (is-ElementMatch!16072 (reg!16401 (regOne!32657 r!7292)))) b!6129607))

(assert (= (and b!6128915 (is-Concat!24917 (reg!16401 (regOne!32657 r!7292)))) b!6129608))

(assert (= (and b!6128915 (is-Star!16072 (reg!16401 (regOne!32657 r!7292)))) b!6129609))

(assert (= (and b!6128915 (is-Union!16072 (reg!16401 (regOne!32657 r!7292)))) b!6129610))

(declare-fun b!6129613 () Bool)

(declare-fun e!3736187 () Bool)

(declare-fun tp!1713000 () Bool)

(assert (=> b!6129613 (= e!3736187 tp!1713000)))

(declare-fun b!6129612 () Bool)

(declare-fun tp!1712998 () Bool)

(declare-fun tp!1712997 () Bool)

(assert (=> b!6129612 (= e!3736187 (and tp!1712998 tp!1712997))))

(assert (=> b!6128916 (= tp!1712786 e!3736187)))

(declare-fun b!6129614 () Bool)

(declare-fun tp!1712999 () Bool)

(declare-fun tp!1713001 () Bool)

(assert (=> b!6129614 (= e!3736187 (and tp!1712999 tp!1713001))))

(declare-fun b!6129611 () Bool)

(assert (=> b!6129611 (= e!3736187 tp_is_empty!41397)))

(assert (= (and b!6128916 (is-ElementMatch!16072 (regOne!32657 (regOne!32657 r!7292)))) b!6129611))

(assert (= (and b!6128916 (is-Concat!24917 (regOne!32657 (regOne!32657 r!7292)))) b!6129612))

(assert (= (and b!6128916 (is-Star!16072 (regOne!32657 (regOne!32657 r!7292)))) b!6129613))

(assert (= (and b!6128916 (is-Union!16072 (regOne!32657 (regOne!32657 r!7292)))) b!6129614))

(declare-fun b!6129617 () Bool)

(declare-fun e!3736188 () Bool)

(declare-fun tp!1713005 () Bool)

(assert (=> b!6129617 (= e!3736188 tp!1713005)))

(declare-fun b!6129616 () Bool)

(declare-fun tp!1713003 () Bool)

(declare-fun tp!1713002 () Bool)

(assert (=> b!6129616 (= e!3736188 (and tp!1713003 tp!1713002))))

(assert (=> b!6128916 (= tp!1712788 e!3736188)))

(declare-fun b!6129618 () Bool)

(declare-fun tp!1713004 () Bool)

(declare-fun tp!1713006 () Bool)

(assert (=> b!6129618 (= e!3736188 (and tp!1713004 tp!1713006))))

(declare-fun b!6129615 () Bool)

(assert (=> b!6129615 (= e!3736188 tp_is_empty!41397)))

(assert (= (and b!6128916 (is-ElementMatch!16072 (regTwo!32657 (regOne!32657 r!7292)))) b!6129615))

(assert (= (and b!6128916 (is-Concat!24917 (regTwo!32657 (regOne!32657 r!7292)))) b!6129616))

(assert (= (and b!6128916 (is-Star!16072 (regTwo!32657 (regOne!32657 r!7292)))) b!6129617))

(assert (= (and b!6128916 (is-Union!16072 (regTwo!32657 (regOne!32657 r!7292)))) b!6129618))

(declare-fun b!6129621 () Bool)

(declare-fun e!3736189 () Bool)

(declare-fun tp!1713010 () Bool)

(assert (=> b!6129621 (= e!3736189 tp!1713010)))

(declare-fun b!6129620 () Bool)

(declare-fun tp!1713008 () Bool)

(declare-fun tp!1713007 () Bool)

(assert (=> b!6129620 (= e!3736189 (and tp!1713008 tp!1713007))))

(assert (=> b!6128931 (= tp!1712805 e!3736189)))

(declare-fun b!6129622 () Bool)

(declare-fun tp!1713009 () Bool)

(declare-fun tp!1713011 () Bool)

(assert (=> b!6129622 (= e!3736189 (and tp!1713009 tp!1713011))))

(declare-fun b!6129619 () Bool)

(assert (=> b!6129619 (= e!3736189 tp_is_empty!41397)))

(assert (= (and b!6128931 (is-ElementMatch!16072 (h!70839 (exprs!5956 (h!70840 zl!343))))) b!6129619))

(assert (= (and b!6128931 (is-Concat!24917 (h!70839 (exprs!5956 (h!70840 zl!343))))) b!6129620))

(assert (= (and b!6128931 (is-Star!16072 (h!70839 (exprs!5956 (h!70840 zl!343))))) b!6129621))

(assert (= (and b!6128931 (is-Union!16072 (h!70839 (exprs!5956 (h!70840 zl!343))))) b!6129622))

(declare-fun b!6129623 () Bool)

(declare-fun e!3736190 () Bool)

(declare-fun tp!1713012 () Bool)

(declare-fun tp!1713013 () Bool)

(assert (=> b!6129623 (= e!3736190 (and tp!1713012 tp!1713013))))

(assert (=> b!6128931 (= tp!1712806 e!3736190)))

(assert (= (and b!6128931 (is-Cons!64391 (t!377982 (exprs!5956 (h!70840 zl!343))))) b!6129623))

(declare-fun b!6129624 () Bool)

(declare-fun e!3736191 () Bool)

(declare-fun tp!1713014 () Bool)

(declare-fun tp!1713015 () Bool)

(assert (=> b!6129624 (= e!3736191 (and tp!1713014 tp!1713015))))

(assert (=> b!6128887 (= tp!1712760 e!3736191)))

(assert (= (and b!6128887 (is-Cons!64391 (exprs!5956 setElem!41419))) b!6129624))

(declare-fun b!6129627 () Bool)

(declare-fun e!3736192 () Bool)

(declare-fun tp!1713019 () Bool)

(assert (=> b!6129627 (= e!3736192 tp!1713019)))

(declare-fun b!6129626 () Bool)

(declare-fun tp!1713017 () Bool)

(declare-fun tp!1713016 () Bool)

(assert (=> b!6129626 (= e!3736192 (and tp!1713017 tp!1713016))))

(assert (=> b!6128900 (= tp!1712774 e!3736192)))

(declare-fun b!6129628 () Bool)

(declare-fun tp!1713018 () Bool)

(declare-fun tp!1713020 () Bool)

(assert (=> b!6129628 (= e!3736192 (and tp!1713018 tp!1713020))))

(declare-fun b!6129625 () Bool)

(assert (=> b!6129625 (= e!3736192 tp_is_empty!41397)))

(assert (= (and b!6128900 (is-ElementMatch!16072 (reg!16401 (regOne!32656 r!7292)))) b!6129625))

(assert (= (and b!6128900 (is-Concat!24917 (reg!16401 (regOne!32656 r!7292)))) b!6129626))

(assert (= (and b!6128900 (is-Star!16072 (reg!16401 (regOne!32656 r!7292)))) b!6129627))

(assert (= (and b!6128900 (is-Union!16072 (reg!16401 (regOne!32656 r!7292)))) b!6129628))

(declare-fun b!6129631 () Bool)

(declare-fun e!3736193 () Bool)

(declare-fun tp!1713024 () Bool)

(assert (=> b!6129631 (= e!3736193 tp!1713024)))

(declare-fun b!6129630 () Bool)

(declare-fun tp!1713022 () Bool)

(declare-fun tp!1713021 () Bool)

(assert (=> b!6129630 (= e!3736193 (and tp!1713022 tp!1713021))))

(assert (=> b!6128901 (= tp!1712773 e!3736193)))

(declare-fun b!6129632 () Bool)

(declare-fun tp!1713023 () Bool)

(declare-fun tp!1713025 () Bool)

(assert (=> b!6129632 (= e!3736193 (and tp!1713023 tp!1713025))))

(declare-fun b!6129629 () Bool)

(assert (=> b!6129629 (= e!3736193 tp_is_empty!41397)))

(assert (= (and b!6128901 (is-ElementMatch!16072 (regOne!32657 (regOne!32656 r!7292)))) b!6129629))

(assert (= (and b!6128901 (is-Concat!24917 (regOne!32657 (regOne!32656 r!7292)))) b!6129630))

(assert (= (and b!6128901 (is-Star!16072 (regOne!32657 (regOne!32656 r!7292)))) b!6129631))

(assert (= (and b!6128901 (is-Union!16072 (regOne!32657 (regOne!32656 r!7292)))) b!6129632))

(declare-fun b!6129635 () Bool)

(declare-fun e!3736194 () Bool)

(declare-fun tp!1713029 () Bool)

(assert (=> b!6129635 (= e!3736194 tp!1713029)))

(declare-fun b!6129634 () Bool)

(declare-fun tp!1713027 () Bool)

(declare-fun tp!1713026 () Bool)

(assert (=> b!6129634 (= e!3736194 (and tp!1713027 tp!1713026))))

(assert (=> b!6128901 (= tp!1712775 e!3736194)))

(declare-fun b!6129636 () Bool)

(declare-fun tp!1713028 () Bool)

(declare-fun tp!1713030 () Bool)

(assert (=> b!6129636 (= e!3736194 (and tp!1713028 tp!1713030))))

(declare-fun b!6129633 () Bool)

(assert (=> b!6129633 (= e!3736194 tp_is_empty!41397)))

(assert (= (and b!6128901 (is-ElementMatch!16072 (regTwo!32657 (regOne!32656 r!7292)))) b!6129633))

(assert (= (and b!6128901 (is-Concat!24917 (regTwo!32657 (regOne!32656 r!7292)))) b!6129634))

(assert (= (and b!6128901 (is-Star!16072 (regTwo!32657 (regOne!32656 r!7292)))) b!6129635))

(assert (= (and b!6128901 (is-Union!16072 (regTwo!32657 (regOne!32656 r!7292)))) b!6129636))

(declare-fun b_lambda!233335 () Bool)

(assert (= b_lambda!233325 (or d!1920262 b_lambda!233335)))

(declare-fun bs!1520562 () Bool)

(declare-fun d!1920496 () Bool)

(assert (= bs!1520562 (and d!1920496 d!1920262)))

(assert (=> bs!1520562 (= (dynLambda!25367 lambda!333866 (h!70839 (exprs!5956 lt!2331616))) (validRegex!7808 (h!70839 (exprs!5956 lt!2331616))))))

(declare-fun m!6973440 () Bool)

(assert (=> bs!1520562 m!6973440))

(assert (=> b!6129147 d!1920496))

(declare-fun b_lambda!233337 () Bool)

(assert (= b_lambda!233329 (or d!1920256 b_lambda!233337)))

(declare-fun bs!1520563 () Bool)

(declare-fun d!1920498 () Bool)

(assert (= bs!1520563 (and d!1920498 d!1920256)))

(assert (=> bs!1520563 (= (dynLambda!25367 lambda!333865 (h!70839 (exprs!5956 (h!70840 zl!343)))) (validRegex!7808 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(declare-fun m!6973442 () Bool)

(assert (=> bs!1520563 m!6973442))

(assert (=> b!6129401 d!1920498))

(declare-fun b_lambda!233339 () Bool)

(assert (= b_lambda!233333 (or b!6128244 b_lambda!233339)))

(assert (=> d!1920492 d!1920272))

(declare-fun b_lambda!233341 () Bool)

(assert (= b_lambda!233323 (or d!1920172 b_lambda!233341)))

(declare-fun bs!1520564 () Bool)

(declare-fun d!1920500 () Bool)

(assert (= bs!1520564 (and d!1920500 d!1920172)))

(assert (=> bs!1520564 (= (dynLambda!25367 lambda!333822 (h!70839 (exprs!5956 setElem!41413))) (validRegex!7808 (h!70839 (exprs!5956 setElem!41413))))))

(declare-fun m!6973444 () Bool)

(assert (=> bs!1520564 m!6973444))

(assert (=> b!6129125 d!1920500))

(declare-fun b_lambda!233343 () Bool)

(assert (= b_lambda!233321 (or d!1920228 b_lambda!233343)))

(declare-fun bs!1520565 () Bool)

(declare-fun d!1920502 () Bool)

(assert (= bs!1520565 (and d!1920502 d!1920228)))

(assert (=> bs!1520565 (= (dynLambda!25367 lambda!333843 (h!70839 (unfocusZipperList!1493 zl!343))) (validRegex!7808 (h!70839 (unfocusZipperList!1493 zl!343))))))

(declare-fun m!6973446 () Bool)

(assert (=> bs!1520565 m!6973446))

(assert (=> b!6129109 d!1920502))

(declare-fun b_lambda!233345 () Bool)

(assert (= b_lambda!233331 (or d!1920188 b_lambda!233345)))

(declare-fun bs!1520566 () Bool)

(declare-fun d!1920504 () Bool)

(assert (= bs!1520566 (and d!1920504 d!1920188)))

(assert (=> bs!1520566 (= (dynLambda!25367 lambda!333825 (h!70839 (exprs!5956 (h!70840 zl!343)))) (validRegex!7808 (h!70839 (exprs!5956 (h!70840 zl!343)))))))

(assert (=> bs!1520566 m!6973442))

(assert (=> b!6129472 d!1920504))

(declare-fun b_lambda!233347 () Bool)

(assert (= b_lambda!233327 (or d!1920236 b_lambda!233347)))

(declare-fun bs!1520567 () Bool)

(declare-fun d!1920506 () Bool)

(assert (= bs!1520567 (and d!1920506 d!1920236)))

(assert (=> bs!1520567 (= (dynLambda!25367 lambda!333848 (h!70839 lt!2331710)) (validRegex!7808 (h!70839 lt!2331710)))))

(declare-fun m!6973448 () Bool)

(assert (=> bs!1520567 m!6973448))

(assert (=> b!6129399 d!1920506))

(push 1)

(assert (not d!1920300))

(assert (not bm!508163))

(assert (not bm!508200))

(assert (not b!6129146))

(assert (not b!6129127))

(assert (not bm!508212))

(assert (not setNonEmpty!41425))

(assert (not d!1920400))

(assert (not b!6129539))

(assert (not bm!508154))

(assert (not bm!508225))

(assert (not b!6129259))

(assert (not bs!1520563))

(assert (not b!6129104))

(assert (not d!1920398))

(assert (not b!6129370))

(assert (not b!6129188))

(assert (not bm!508237))

(assert (not d!1920308))

(assert (not d!1920322))

(assert (not b!6129249))

(assert (not b!6129626))

(assert (not b!6129632))

(assert (not bm!508182))

(assert (not bm!508244))

(assert (not b!6129196))

(assert (not b!6129162))

(assert (not bm!508197))

(assert (not bm!508245))

(assert (not b!6129511))

(assert (not bm!508230))

(assert (not b_lambda!233341))

(assert (not b!6129253))

(assert (not b!6129563))

(assert (not b!6129617))

(assert (not b!6129634))

(assert (not d!1920488))

(assert (not b!6129535))

(assert (not bm!508224))

(assert (not b!6129524))

(assert (not b!6129262))

(assert (not bm!508168))

(assert (not b!6129282))

(assert tp_is_empty!41397)

(assert (not b!6129193))

(assert (not b!6129636))

(assert (not bs!1520565))

(assert (not bm!508233))

(assert (not b_lambda!233335))

(assert (not b!6129340))

(assert (not bm!508243))

(assert (not b!6129564))

(assert (not bm!508249))

(assert (not b!6129192))

(assert (not d!1920384))

(assert (not bm!508179))

(assert (not d!1920428))

(assert (not d!1920450))

(assert (not b!6129183))

(assert (not bm!508156))

(assert (not b!6129618))

(assert (not b!6129256))

(assert (not b!6129372))

(assert (not b!6129348))

(assert (not b!6129187))

(assert (not b!6129248))

(assert (not d!1920412))

(assert (not b!6129631))

(assert (not bm!508164))

(assert (not b!6129549))

(assert (not b!6129623))

(assert (not b!6129233))

(assert (not b!6129203))

(assert (not b!6129589))

(assert (not bm!508206))

(assert (not b!6129247))

(assert (not b!6129365))

(assert (not b!6129150))

(assert (not d!1920342))

(assert (not b!6129588))

(assert (not bm!508150))

(assert (not b!6129553))

(assert (not bs!1520566))

(assert (not bm!508173))

(assert (not b!6129635))

(assert (not b!6129164))

(assert (not bs!1520562))

(assert (not bm!508215))

(assert (not d!1920454))

(assert (not d!1920366))

(assert (not b!6129572))

(assert (not b!6129523))

(assert (not b!6129527))

(assert (not bm!508213))

(assert (not b!6129213))

(assert (not b!6129522))

(assert (not b!6129264))

(assert (not d!1920456))

(assert (not b!6129584))

(assert (not bm!508239))

(assert (not b!6129594))

(assert (not b!6129358))

(assert (not b!6129437))

(assert (not b!6129530))

(assert (not bm!508201))

(assert (not bm!508207))

(assert (not b!6129581))

(assert (not b!6129513))

(assert (not bm!508158))

(assert (not bm!508226))

(assert (not bm!508238))

(assert (not b!6129558))

(assert (not b!6129184))

(assert (not b!6129402))

(assert (not b!6129371))

(assert (not b!6129554))

(assert (not bm!508175))

(assert (not d!1920368))

(assert (not d!1920404))

(assert (not b!6129547))

(assert (not b!6129269))

(assert (not b!6129473))

(assert (not bm!508162))

(assert (not b!6129543))

(assert (not b!6129215))

(assert (not b!6129447))

(assert (not d!1920430))

(assert (not d!1920484))

(assert (not b!6129363))

(assert (not b!6129373))

(assert (not b!6129616))

(assert (not b!6129442))

(assert (not b!6129396))

(assert (not d!1920406))

(assert (not b!6129604))

(assert (not bs!1520564))

(assert (not b!6129462))

(assert (not b!6129583))

(assert (not b!6129590))

(assert (not b!6129612))

(assert (not b!6129628))

(assert (not b!6129580))

(assert (not b!6129289))

(assert (not d!1920468))

(assert (not b!6129404))

(assert (not d!1920386))

(assert (not b!6129571))

(assert (not bm!508169))

(assert (not b!6129191))

(assert (not b!6129570))

(assert (not b!6129542))

(assert (not bm!508157))

(assert (not d!1920410))

(assert (not b!6129555))

(assert (not b!6129614))

(assert (not b!6129577))

(assert (not b!6129557))

(assert (not b!6129360))

(assert (not b!6129605))

(assert (not bm!508170))

(assert (not b!6129342))

(assert (not b!6129316))

(assert (not d!1920486))

(assert (not d!1920358))

(assert (not b!6129559))

(assert (not b!6129574))

(assert (not b!6129284))

(assert (not b!6129458))

(assert (not bm!508186))

(assert (not b!6129627))

(assert (not b_lambda!233339))

(assert (not b!6129568))

(assert (not b!6129575))

(assert (not d!1920442))

(assert (not b!6129528))

(assert (not b!6129630))

(assert (not b!6129337))

(assert (not bm!508196))

(assert (not b!6129507))

(assert (not bm!508227))

(assert (not b!6129113))

(assert (not b!6129592))

(assert (not bm!508148))

(assert (not b!6129270))

(assert (not d!1920302))

(assert (not b_lambda!233315))

(assert (not d!1920352))

(assert (not b!6129126))

(assert (not d!1920310))

(assert (not b!6129148))

(assert (not bm!508181))

(assert (not bm!508229))

(assert (not b!6129327))

(assert (not b!6129497))

(assert (not b!6129471))

(assert (not b!6129390))

(assert (not b!6129520))

(assert (not bm!508235))

(assert (not b!6129295))

(assert (not d!1920394))

(assert (not bm!508208))

(assert (not b!6129378))

(assert (not b_lambda!233345))

(assert (not b!6129551))

(assert (not b!6129448))

(assert (not b!6129608))

(assert (not b!6129601))

(assert (not b!6129118))

(assert (not b!6129537))

(assert (not b!6129512))

(assert (not b!6129194))

(assert (not b!6129545))

(assert (not d!1920422))

(assert (not b!6129476))

(assert (not b!6129624))

(assert (not b!6129344))

(assert (not b!6129204))

(assert (not b!6129598))

(assert (not bm!508176))

(assert (not b!6129610))

(assert (not b!6129534))

(assert (not bm!508178))

(assert (not b!6129514))

(assert (not d!1920338))

(assert (not b!6129516))

(assert (not b!6129602))

(assert (not b!6129586))

(assert (not d!1920492))

(assert (not b!6129400))

(assert (not d!1920388))

(assert (not b!6129343))

(assert (not b!6129546))

(assert (not b!6129560))

(assert (not bm!508183))

(assert (not d!1920374))

(assert (not b!6129593))

(assert (not b!6129252))

(assert (not bm!508211))

(assert (not b!6129457))

(assert (not b!6129622))

(assert (not b!6129116))

(assert (not b!6129435))

(assert (not b!6129600))

(assert (not d!1920340))

(assert (not b!6129440))

(assert (not d!1920336))

(assert (not b!6129111))

(assert (not d!1920372))

(assert (not b!6129486))

(assert (not b!6129255))

(assert (not b!6129377))

(assert (not b!6129609))

(assert (not b!6129294))

(assert (not b!6129538))

(assert (not b!6129338))

(assert (not b!6129529))

(assert (not b!6129585))

(assert (not b!6129526))

(assert (not b!6129566))

(assert (not b!6129272))

(assert (not b!6129110))

(assert (not d!1920332))

(assert (not b!6129533))

(assert (not bm!508152))

(assert (not b!6129576))

(assert (not d!1920478))

(assert (not setNonEmpty!41426))

(assert (not bm!508248))

(assert (not b!6129211))

(assert (not b!6129246))

(assert (not b!6129190))

(assert (not b!6129143))

(assert (not b!6129515))

(assert (not bs!1520567))

(assert (not d!1920480))

(assert (not d!1920432))

(assert (not bm!508217))

(assert (not b!6129550))

(assert (not b!6129532))

(assert (not b!6129257))

(assert (not b!6129596))

(assert (not d!1920360))

(assert (not b!6129613))

(assert (not b!6129124))

(assert (not b!6129341))

(assert (not d!1920344))

(assert (not b!6129562))

(assert (not bm!508231))

(assert (not b_lambda!233337))

(assert (not b!6129597))

(assert (not b!6129482))

(assert (not bm!508202))

(assert (not bm!508151))

(assert (not bm!508234))

(assert (not b!6129579))

(assert (not b!6129606))

(assert (not b!6129621))

(assert (not b!6129567))

(assert (not b!6129287))

(assert (not b!6129620))

(assert (not b!6129123))

(assert (not b!6129137))

(assert (not b!6129541))

(assert (not b_lambda!233347))

(assert (not bm!508216))

(assert (not b!6129212))

(assert (not b_lambda!233343))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

