; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!556706 () Bool)

(assert start!556706)

(declare-fun b!5271490 () Bool)

(assert (=> b!5271490 true))

(assert (=> b!5271490 true))

(declare-fun lambda!265970 () Int)

(declare-fun lambda!265969 () Int)

(assert (=> b!5271490 (not (= lambda!265970 lambda!265969))))

(assert (=> b!5271490 true))

(assert (=> b!5271490 true))

(declare-fun b!5271503 () Bool)

(assert (=> b!5271503 true))

(declare-fun e!3278400 () Bool)

(declare-fun e!3278395 () Bool)

(assert (=> b!5271490 (= e!3278400 e!3278395)))

(declare-fun res!2236295 () Bool)

(assert (=> b!5271490 (=> res!2236295 e!3278395)))

(declare-datatypes ((C!30056 0))(
  ( (C!30057 (val!24730 Int)) )
))
(declare-datatypes ((List!60978 0))(
  ( (Nil!60854) (Cons!60854 (h!67302 C!30056) (t!374173 List!60978)) )
))
(declare-fun s!2326 () List!60978)

(declare-fun lt!2156818 () Bool)

(declare-fun lt!2156806 () Bool)

(get-info :version)

(assert (=> b!5271490 (= res!2236295 (or (not (= lt!2156818 lt!2156806)) ((_ is Nil!60854) s!2326)))))

(declare-fun Exists!2074 (Int) Bool)

(assert (=> b!5271490 (= (Exists!2074 lambda!265969) (Exists!2074 lambda!265970))))

(declare-datatypes ((Unit!153090 0))(
  ( (Unit!153091) )
))
(declare-fun lt!2156811 () Unit!153090)

(declare-datatypes ((Regex!14893 0))(
  ( (ElementMatch!14893 (c!913081 C!30056)) (Concat!23738 (regOne!30298 Regex!14893) (regTwo!30298 Regex!14893)) (EmptyExpr!14893) (Star!14893 (reg!15222 Regex!14893)) (EmptyLang!14893) (Union!14893 (regOne!30299 Regex!14893) (regTwo!30299 Regex!14893)) )
))
(declare-fun r!7292 () Regex!14893)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!728 (Regex!14893 Regex!14893 List!60978) Unit!153090)

(assert (=> b!5271490 (= lt!2156811 (lemmaExistCutMatchRandMatchRSpecEquivalent!728 (regOne!30298 r!7292) (regTwo!30298 r!7292) s!2326))))

(assert (=> b!5271490 (= lt!2156806 (Exists!2074 lambda!265969))))

(declare-datatypes ((tuple2!64184 0))(
  ( (tuple2!64185 (_1!35395 List!60978) (_2!35395 List!60978)) )
))
(declare-datatypes ((Option!15004 0))(
  ( (None!15003) (Some!15003 (v!51032 tuple2!64184)) )
))
(declare-fun isDefined!11707 (Option!15004) Bool)

(declare-fun findConcatSeparation!1418 (Regex!14893 Regex!14893 List!60978 List!60978 List!60978) Option!15004)

(assert (=> b!5271490 (= lt!2156806 (isDefined!11707 (findConcatSeparation!1418 (regOne!30298 r!7292) (regTwo!30298 r!7292) Nil!60854 s!2326 s!2326)))))

(declare-fun lt!2156809 () Unit!153090)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1182 (Regex!14893 Regex!14893 List!60978) Unit!153090)

(assert (=> b!5271490 (= lt!2156809 (lemmaFindConcatSeparationEquivalentToExists!1182 (regOne!30298 r!7292) (regTwo!30298 r!7292) s!2326))))

(declare-fun b!5271491 () Bool)

(declare-fun e!3278406 () Unit!153090)

(declare-fun Unit!153092 () Unit!153090)

(assert (=> b!5271491 (= e!3278406 Unit!153092)))

(declare-fun lt!2156822 () Unit!153090)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!60979 0))(
  ( (Nil!60855) (Cons!60855 (h!67303 Regex!14893) (t!374174 List!60979)) )
))
(declare-datatypes ((Context!8554 0))(
  ( (Context!8555 (exprs!4777 List!60979)) )
))
(declare-fun lt!2156813 () (InoxSet Context!8554))

(declare-fun lt!2156802 () (InoxSet Context!8554))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!130 ((InoxSet Context!8554) (InoxSet Context!8554) List!60978) Unit!153090)

(assert (=> b!5271491 (= lt!2156822 (lemmaZipperConcatMatchesSameAsBothZippers!130 lt!2156813 lt!2156802 (t!374173 s!2326)))))

(declare-fun res!2236298 () Bool)

(declare-fun matchZipper!1137 ((InoxSet Context!8554) List!60978) Bool)

(assert (=> b!5271491 (= res!2236298 (matchZipper!1137 lt!2156813 (t!374173 s!2326)))))

(declare-fun e!3278396 () Bool)

(assert (=> b!5271491 (=> res!2236298 e!3278396)))

(assert (=> b!5271491 (= (matchZipper!1137 ((_ map or) lt!2156813 lt!2156802) (t!374173 s!2326)) e!3278396)))

(declare-fun setIsEmpty!33749 () Bool)

(declare-fun setRes!33749 () Bool)

(assert (=> setIsEmpty!33749 setRes!33749))

(declare-fun b!5271492 () Bool)

(declare-fun res!2236288 () Bool)

(assert (=> b!5271492 (=> res!2236288 e!3278400)))

(declare-datatypes ((List!60980 0))(
  ( (Nil!60856) (Cons!60856 (h!67304 Context!8554) (t!374175 List!60980)) )
))
(declare-fun zl!343 () List!60980)

(assert (=> b!5271492 (= res!2236288 (not ((_ is Cons!60855) (exprs!4777 (h!67304 zl!343)))))))

(declare-fun b!5271494 () Bool)

(declare-fun e!3278398 () Bool)

(declare-fun tp!1473341 () Bool)

(assert (=> b!5271494 (= e!3278398 tp!1473341)))

(declare-fun b!5271495 () Bool)

(declare-fun e!3278402 () Bool)

(declare-fun e!3278401 () Bool)

(assert (=> b!5271495 (= e!3278402 e!3278401)))

(declare-fun res!2236307 () Bool)

(assert (=> b!5271495 (=> res!2236307 e!3278401)))

(declare-fun nullable!5062 (Regex!14893) Bool)

(assert (=> b!5271495 (= res!2236307 (nullable!5062 (regTwo!30298 (regOne!30298 r!7292))))))

(declare-fun lt!2156812 () (InoxSet Context!8554))

(declare-fun lambda!265971 () Int)

(declare-fun lt!2156808 () Context!8554)

(declare-fun flatMap!620 ((InoxSet Context!8554) Int) (InoxSet Context!8554))

(declare-fun derivationStepZipperUp!265 (Context!8554 C!30056) (InoxSet Context!8554))

(assert (=> b!5271495 (= (flatMap!620 lt!2156812 lambda!265971) (derivationStepZipperUp!265 lt!2156808 (h!67302 s!2326)))))

(declare-fun lt!2156810 () Unit!153090)

(declare-fun lemmaFlatMapOnSingletonSet!152 ((InoxSet Context!8554) Context!8554 Int) Unit!153090)

(assert (=> b!5271495 (= lt!2156810 (lemmaFlatMapOnSingletonSet!152 lt!2156812 lt!2156808 lambda!265971))))

(declare-fun b!5271496 () Bool)

(declare-fun res!2236299 () Bool)

(declare-fun e!3278404 () Bool)

(assert (=> b!5271496 (=> (not res!2236299) (not e!3278404))))

(declare-fun z!1189 () (InoxSet Context!8554))

(declare-fun toList!8677 ((InoxSet Context!8554)) List!60980)

(assert (=> b!5271496 (= res!2236299 (= (toList!8677 z!1189) zl!343))))

(declare-fun b!5271497 () Bool)

(declare-fun e!3278394 () Bool)

(declare-fun e!3278403 () Bool)

(assert (=> b!5271497 (= e!3278394 e!3278403)))

(declare-fun res!2236300 () Bool)

(assert (=> b!5271497 (=> res!2236300 e!3278403)))

(declare-fun lt!2156807 () (InoxSet Context!8554))

(assert (=> b!5271497 (= res!2236300 (not (= lt!2156813 lt!2156807)))))

(declare-fun lt!2156801 () (InoxSet Context!8554))

(declare-fun lt!2156821 () (InoxSet Context!8554))

(assert (=> b!5271497 (= lt!2156807 ((_ map or) lt!2156801 lt!2156821))))

(declare-fun lt!2156804 () Context!8554)

(declare-fun derivationStepZipperDown!341 (Regex!14893 Context!8554 C!30056) (InoxSet Context!8554))

(assert (=> b!5271497 (= lt!2156821 (derivationStepZipperDown!341 (regTwo!30298 (regOne!30298 r!7292)) lt!2156804 (h!67302 s!2326)))))

(assert (=> b!5271497 (= lt!2156801 (derivationStepZipperDown!341 (regOne!30298 (regOne!30298 r!7292)) lt!2156808 (h!67302 s!2326)))))

(declare-fun lt!2156817 () List!60979)

(assert (=> b!5271497 (= lt!2156808 (Context!8555 lt!2156817))))

(assert (=> b!5271497 (= lt!2156817 (Cons!60855 (regTwo!30298 (regOne!30298 r!7292)) (t!374174 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun b!5271498 () Bool)

(declare-fun e!3278407 () Bool)

(assert (=> b!5271498 (= e!3278407 e!3278402)))

(declare-fun res!2236290 () Bool)

(assert (=> b!5271498 (=> res!2236290 e!3278402)))

(declare-fun lt!2156799 () (InoxSet Context!8554))

(declare-fun derivationStepZipper!1136 ((InoxSet Context!8554) C!30056) (InoxSet Context!8554))

(assert (=> b!5271498 (= res!2236290 (not (= (derivationStepZipper!1136 lt!2156799 (h!67302 s!2326)) ((_ map or) lt!2156801 (derivationStepZipperUp!265 lt!2156808 (h!67302 s!2326))))))))

(declare-fun lt!2156820 () Context!8554)

(assert (=> b!5271498 (= (flatMap!620 lt!2156799 lambda!265971) (derivationStepZipperUp!265 lt!2156820 (h!67302 s!2326)))))

(declare-fun lt!2156803 () Unit!153090)

(assert (=> b!5271498 (= lt!2156803 (lemmaFlatMapOnSingletonSet!152 lt!2156799 lt!2156820 lambda!265971))))

(declare-fun lt!2156814 () (InoxSet Context!8554))

(assert (=> b!5271498 (= lt!2156814 (derivationStepZipperUp!265 lt!2156820 (h!67302 s!2326)))))

(assert (=> b!5271498 (= lt!2156812 (store ((as const (Array Context!8554 Bool)) false) lt!2156808 true))))

(assert (=> b!5271498 (= lt!2156799 (store ((as const (Array Context!8554 Bool)) false) lt!2156820 true))))

(assert (=> b!5271498 (= lt!2156820 (Context!8555 (Cons!60855 (regOne!30298 (regOne!30298 r!7292)) lt!2156817)))))

(declare-fun setNonEmpty!33749 () Bool)

(declare-fun e!3278408 () Bool)

(declare-fun setElem!33749 () Context!8554)

(declare-fun tp!1473339 () Bool)

(declare-fun inv!80479 (Context!8554) Bool)

(assert (=> setNonEmpty!33749 (= setRes!33749 (and tp!1473339 (inv!80479 setElem!33749) e!3278408))))

(declare-fun setRest!33749 () (InoxSet Context!8554))

(assert (=> setNonEmpty!33749 (= z!1189 ((_ map or) (store ((as const (Array Context!8554 Bool)) false) setElem!33749 true) setRest!33749))))

(declare-fun b!5271499 () Bool)

(declare-fun res!2236306 () Bool)

(assert (=> b!5271499 (=> res!2236306 e!3278394)))

(assert (=> b!5271499 (= res!2236306 (not (nullable!5062 (regOne!30298 (regOne!30298 r!7292)))))))

(declare-fun b!5271500 () Bool)

(declare-fun res!2236303 () Bool)

(assert (=> b!5271500 (=> res!2236303 e!3278400)))

(declare-fun generalisedUnion!822 (List!60979) Regex!14893)

(declare-fun unfocusZipperList!335 (List!60980) List!60979)

(assert (=> b!5271500 (= res!2236303 (not (= r!7292 (generalisedUnion!822 (unfocusZipperList!335 zl!343)))))))

(declare-fun b!5271501 () Bool)

(declare-fun tp!1473333 () Bool)

(declare-fun tp!1473335 () Bool)

(assert (=> b!5271501 (= e!3278398 (and tp!1473333 tp!1473335))))

(declare-fun b!5271502 () Bool)

(declare-fun e!3278405 () Bool)

(declare-fun tp_is_empty!39039 () Bool)

(declare-fun tp!1473337 () Bool)

(assert (=> b!5271502 (= e!3278405 (and tp_is_empty!39039 tp!1473337))))

(assert (=> b!5271503 (= e!3278395 e!3278394)))

(declare-fun res!2236296 () Bool)

(assert (=> b!5271503 (=> res!2236296 e!3278394)))

(assert (=> b!5271503 (= res!2236296 (or (and ((_ is ElementMatch!14893) (regOne!30298 r!7292)) (= (c!913081 (regOne!30298 r!7292)) (h!67302 s!2326))) ((_ is Union!14893) (regOne!30298 r!7292)) (not ((_ is Concat!23738) (regOne!30298 r!7292)))))))

(declare-fun lt!2156815 () Unit!153090)

(assert (=> b!5271503 (= lt!2156815 e!3278406)))

(declare-fun c!913080 () Bool)

(assert (=> b!5271503 (= c!913080 (nullable!5062 (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(assert (=> b!5271503 (= (flatMap!620 z!1189 lambda!265971) (derivationStepZipperUp!265 (h!67304 zl!343) (h!67302 s!2326)))))

(declare-fun lt!2156805 () Unit!153090)

(assert (=> b!5271503 (= lt!2156805 (lemmaFlatMapOnSingletonSet!152 z!1189 (h!67304 zl!343) lambda!265971))))

(assert (=> b!5271503 (= lt!2156802 (derivationStepZipperUp!265 lt!2156804 (h!67302 s!2326)))))

(assert (=> b!5271503 (= lt!2156813 (derivationStepZipperDown!341 (h!67303 (exprs!4777 (h!67304 zl!343))) lt!2156804 (h!67302 s!2326)))))

(assert (=> b!5271503 (= lt!2156804 (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun lt!2156819 () (InoxSet Context!8554))

(assert (=> b!5271503 (= lt!2156819 (derivationStepZipperUp!265 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))) (h!67302 s!2326)))))

(declare-fun b!5271493 () Bool)

(declare-fun tp!1473334 () Bool)

(assert (=> b!5271493 (= e!3278408 tp!1473334)))

(declare-fun res!2236293 () Bool)

(assert (=> start!556706 (=> (not res!2236293) (not e!3278404))))

(declare-fun validRegex!6629 (Regex!14893) Bool)

(assert (=> start!556706 (= res!2236293 (validRegex!6629 r!7292))))

(assert (=> start!556706 e!3278404))

(assert (=> start!556706 e!3278398))

(declare-fun condSetEmpty!33749 () Bool)

(assert (=> start!556706 (= condSetEmpty!33749 (= z!1189 ((as const (Array Context!8554 Bool)) false)))))

(assert (=> start!556706 setRes!33749))

(declare-fun e!3278392 () Bool)

(assert (=> start!556706 e!3278392))

(assert (=> start!556706 e!3278405))

(declare-fun b!5271504 () Bool)

(declare-fun e!3278393 () Bool)

(assert (=> b!5271504 (= e!3278393 (not (matchZipper!1137 lt!2156821 (t!374173 s!2326))))))

(declare-fun b!5271505 () Bool)

(declare-fun e!3278397 () Bool)

(declare-fun tp!1473338 () Bool)

(assert (=> b!5271505 (= e!3278392 (and (inv!80479 (h!67304 zl!343)) e!3278397 tp!1473338))))

(declare-fun b!5271506 () Bool)

(assert (=> b!5271506 (= e!3278403 e!3278407)))

(declare-fun res!2236297 () Bool)

(assert (=> b!5271506 (=> res!2236297 e!3278407)))

(assert (=> b!5271506 (= res!2236297 e!3278393)))

(declare-fun res!2236292 () Bool)

(assert (=> b!5271506 (=> (not res!2236292) (not e!3278393))))

(declare-fun lt!2156800 () Bool)

(assert (=> b!5271506 (= res!2236292 (not (= (matchZipper!1137 lt!2156813 (t!374173 s!2326)) lt!2156800)))))

(declare-fun e!3278399 () Bool)

(assert (=> b!5271506 (= (matchZipper!1137 lt!2156807 (t!374173 s!2326)) e!3278399)))

(declare-fun res!2236304 () Bool)

(assert (=> b!5271506 (=> res!2236304 e!3278399)))

(assert (=> b!5271506 (= res!2236304 lt!2156800)))

(assert (=> b!5271506 (= lt!2156800 (matchZipper!1137 lt!2156801 (t!374173 s!2326)))))

(declare-fun lt!2156816 () Unit!153090)

(assert (=> b!5271506 (= lt!2156816 (lemmaZipperConcatMatchesSameAsBothZippers!130 lt!2156801 lt!2156821 (t!374173 s!2326)))))

(declare-fun b!5271507 () Bool)

(assert (=> b!5271507 (= e!3278398 tp_is_empty!39039)))

(declare-fun b!5271508 () Bool)

(assert (=> b!5271508 (= e!3278399 (matchZipper!1137 lt!2156821 (t!374173 s!2326)))))

(declare-fun b!5271509 () Bool)

(declare-fun Unit!153093 () Unit!153090)

(assert (=> b!5271509 (= e!3278406 Unit!153093)))

(declare-fun b!5271510 () Bool)

(declare-fun tp!1473332 () Bool)

(declare-fun tp!1473340 () Bool)

(assert (=> b!5271510 (= e!3278398 (and tp!1473332 tp!1473340))))

(declare-fun b!5271511 () Bool)

(declare-fun res!2236291 () Bool)

(assert (=> b!5271511 (=> res!2236291 e!3278400)))

(declare-fun generalisedConcat!562 (List!60979) Regex!14893)

(assert (=> b!5271511 (= res!2236291 (not (= r!7292 (generalisedConcat!562 (exprs!4777 (h!67304 zl!343))))))))

(declare-fun b!5271512 () Bool)

(declare-fun res!2236289 () Bool)

(assert (=> b!5271512 (=> res!2236289 e!3278400)))

(declare-fun isEmpty!32803 (List!60980) Bool)

(assert (=> b!5271512 (= res!2236289 (not (isEmpty!32803 (t!374175 zl!343))))))

(declare-fun b!5271513 () Bool)

(assert (=> b!5271513 (= e!3278396 (matchZipper!1137 lt!2156802 (t!374173 s!2326)))))

(declare-fun b!5271514 () Bool)

(assert (=> b!5271514 (= e!3278404 (not e!3278400))))

(declare-fun res!2236294 () Bool)

(assert (=> b!5271514 (=> res!2236294 e!3278400)))

(assert (=> b!5271514 (= res!2236294 (not ((_ is Cons!60856) zl!343)))))

(declare-fun matchRSpec!1996 (Regex!14893 List!60978) Bool)

(assert (=> b!5271514 (= lt!2156818 (matchRSpec!1996 r!7292 s!2326))))

(declare-fun matchR!7078 (Regex!14893 List!60978) Bool)

(assert (=> b!5271514 (= lt!2156818 (matchR!7078 r!7292 s!2326))))

(declare-fun lt!2156798 () Unit!153090)

(declare-fun mainMatchTheorem!1996 (Regex!14893 List!60978) Unit!153090)

(assert (=> b!5271514 (= lt!2156798 (mainMatchTheorem!1996 r!7292 s!2326))))

(declare-fun b!5271515 () Bool)

(declare-fun res!2236301 () Bool)

(assert (=> b!5271515 (=> res!2236301 e!3278395)))

(declare-fun isEmpty!32804 (List!60979) Bool)

(assert (=> b!5271515 (= res!2236301 (isEmpty!32804 (t!374174 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun b!5271516 () Bool)

(declare-fun tp!1473336 () Bool)

(assert (=> b!5271516 (= e!3278397 tp!1473336)))

(declare-fun b!5271517 () Bool)

(declare-fun res!2236302 () Bool)

(assert (=> b!5271517 (=> (not res!2236302) (not e!3278404))))

(declare-fun unfocusZipper!635 (List!60980) Regex!14893)

(assert (=> b!5271517 (= res!2236302 (= r!7292 (unfocusZipper!635 zl!343)))))

(declare-fun b!5271518 () Bool)

(assert (=> b!5271518 (= e!3278401 (validRegex!6629 (regTwo!30298 (regOne!30298 r!7292))))))

(declare-fun b!5271519 () Bool)

(declare-fun res!2236305 () Bool)

(assert (=> b!5271519 (=> res!2236305 e!3278400)))

(assert (=> b!5271519 (= res!2236305 (or ((_ is EmptyExpr!14893) r!7292) ((_ is EmptyLang!14893) r!7292) ((_ is ElementMatch!14893) r!7292) ((_ is Union!14893) r!7292) (not ((_ is Concat!23738) r!7292))))))

(assert (= (and start!556706 res!2236293) b!5271496))

(assert (= (and b!5271496 res!2236299) b!5271517))

(assert (= (and b!5271517 res!2236302) b!5271514))

(assert (= (and b!5271514 (not res!2236294)) b!5271512))

(assert (= (and b!5271512 (not res!2236289)) b!5271511))

(assert (= (and b!5271511 (not res!2236291)) b!5271492))

(assert (= (and b!5271492 (not res!2236288)) b!5271500))

(assert (= (and b!5271500 (not res!2236303)) b!5271519))

(assert (= (and b!5271519 (not res!2236305)) b!5271490))

(assert (= (and b!5271490 (not res!2236295)) b!5271515))

(assert (= (and b!5271515 (not res!2236301)) b!5271503))

(assert (= (and b!5271503 c!913080) b!5271491))

(assert (= (and b!5271503 (not c!913080)) b!5271509))

(assert (= (and b!5271491 (not res!2236298)) b!5271513))

(assert (= (and b!5271503 (not res!2236296)) b!5271499))

(assert (= (and b!5271499 (not res!2236306)) b!5271497))

(assert (= (and b!5271497 (not res!2236300)) b!5271506))

(assert (= (and b!5271506 (not res!2236304)) b!5271508))

(assert (= (and b!5271506 res!2236292) b!5271504))

(assert (= (and b!5271506 (not res!2236297)) b!5271498))

(assert (= (and b!5271498 (not res!2236290)) b!5271495))

(assert (= (and b!5271495 (not res!2236307)) b!5271518))

(assert (= (and start!556706 ((_ is ElementMatch!14893) r!7292)) b!5271507))

(assert (= (and start!556706 ((_ is Concat!23738) r!7292)) b!5271501))

(assert (= (and start!556706 ((_ is Star!14893) r!7292)) b!5271494))

(assert (= (and start!556706 ((_ is Union!14893) r!7292)) b!5271510))

(assert (= (and start!556706 condSetEmpty!33749) setIsEmpty!33749))

(assert (= (and start!556706 (not condSetEmpty!33749)) setNonEmpty!33749))

(assert (= setNonEmpty!33749 b!5271493))

(assert (= b!5271505 b!5271516))

(assert (= (and start!556706 ((_ is Cons!60856) zl!343)) b!5271505))

(assert (= (and start!556706 ((_ is Cons!60854) s!2326)) b!5271502))

(declare-fun m!6310560 () Bool)

(assert (=> b!5271495 m!6310560))

(declare-fun m!6310562 () Bool)

(assert (=> b!5271495 m!6310562))

(declare-fun m!6310564 () Bool)

(assert (=> b!5271495 m!6310564))

(declare-fun m!6310566 () Bool)

(assert (=> b!5271495 m!6310566))

(declare-fun m!6310568 () Bool)

(assert (=> b!5271498 m!6310568))

(declare-fun m!6310570 () Bool)

(assert (=> b!5271498 m!6310570))

(declare-fun m!6310572 () Bool)

(assert (=> b!5271498 m!6310572))

(assert (=> b!5271498 m!6310564))

(declare-fun m!6310574 () Bool)

(assert (=> b!5271498 m!6310574))

(declare-fun m!6310576 () Bool)

(assert (=> b!5271498 m!6310576))

(declare-fun m!6310578 () Bool)

(assert (=> b!5271498 m!6310578))

(declare-fun m!6310580 () Bool)

(assert (=> b!5271490 m!6310580))

(declare-fun m!6310582 () Bool)

(assert (=> b!5271490 m!6310582))

(declare-fun m!6310584 () Bool)

(assert (=> b!5271490 m!6310584))

(declare-fun m!6310586 () Bool)

(assert (=> b!5271490 m!6310586))

(declare-fun m!6310588 () Bool)

(assert (=> b!5271490 m!6310588))

(assert (=> b!5271490 m!6310588))

(assert (=> b!5271490 m!6310580))

(declare-fun m!6310590 () Bool)

(assert (=> b!5271490 m!6310590))

(declare-fun m!6310592 () Bool)

(assert (=> b!5271491 m!6310592))

(declare-fun m!6310594 () Bool)

(assert (=> b!5271491 m!6310594))

(declare-fun m!6310596 () Bool)

(assert (=> b!5271491 m!6310596))

(declare-fun m!6310598 () Bool)

(assert (=> start!556706 m!6310598))

(declare-fun m!6310600 () Bool)

(assert (=> b!5271511 m!6310600))

(declare-fun m!6310602 () Bool)

(assert (=> b!5271499 m!6310602))

(declare-fun m!6310604 () Bool)

(assert (=> setNonEmpty!33749 m!6310604))

(declare-fun m!6310606 () Bool)

(assert (=> b!5271513 m!6310606))

(declare-fun m!6310608 () Bool)

(assert (=> b!5271500 m!6310608))

(assert (=> b!5271500 m!6310608))

(declare-fun m!6310610 () Bool)

(assert (=> b!5271500 m!6310610))

(assert (=> b!5271506 m!6310594))

(declare-fun m!6310612 () Bool)

(assert (=> b!5271506 m!6310612))

(declare-fun m!6310614 () Bool)

(assert (=> b!5271506 m!6310614))

(declare-fun m!6310616 () Bool)

(assert (=> b!5271506 m!6310616))

(declare-fun m!6310618 () Bool)

(assert (=> b!5271504 m!6310618))

(declare-fun m!6310620 () Bool)

(assert (=> b!5271512 m!6310620))

(declare-fun m!6310622 () Bool)

(assert (=> b!5271505 m!6310622))

(declare-fun m!6310624 () Bool)

(assert (=> b!5271514 m!6310624))

(declare-fun m!6310626 () Bool)

(assert (=> b!5271514 m!6310626))

(declare-fun m!6310628 () Bool)

(assert (=> b!5271514 m!6310628))

(declare-fun m!6310630 () Bool)

(assert (=> b!5271503 m!6310630))

(declare-fun m!6310632 () Bool)

(assert (=> b!5271503 m!6310632))

(declare-fun m!6310634 () Bool)

(assert (=> b!5271503 m!6310634))

(declare-fun m!6310636 () Bool)

(assert (=> b!5271503 m!6310636))

(declare-fun m!6310638 () Bool)

(assert (=> b!5271503 m!6310638))

(declare-fun m!6310640 () Bool)

(assert (=> b!5271503 m!6310640))

(declare-fun m!6310642 () Bool)

(assert (=> b!5271503 m!6310642))

(declare-fun m!6310644 () Bool)

(assert (=> b!5271517 m!6310644))

(assert (=> b!5271508 m!6310618))

(declare-fun m!6310646 () Bool)

(assert (=> b!5271515 m!6310646))

(declare-fun m!6310648 () Bool)

(assert (=> b!5271518 m!6310648))

(declare-fun m!6310650 () Bool)

(assert (=> b!5271497 m!6310650))

(declare-fun m!6310652 () Bool)

(assert (=> b!5271497 m!6310652))

(declare-fun m!6310654 () Bool)

(assert (=> b!5271496 m!6310654))

(check-sat (not b!5271513) (not b!5271514) (not start!556706) (not b!5271505) (not b!5271508) (not b!5271497) (not b!5271499) (not b!5271495) (not b!5271501) (not b!5271503) (not b!5271504) (not b!5271506) (not b!5271511) (not b!5271490) (not b!5271518) (not b!5271512) (not b!5271491) (not b!5271516) (not b!5271517) (not b!5271493) (not setNonEmpty!33749) tp_is_empty!39039 (not b!5271510) (not b!5271496) (not b!5271515) (not b!5271500) (not b!5271498) (not b!5271502) (not b!5271494))
(check-sat)
(get-model)

(declare-fun d!1696456 () Bool)

(declare-fun c!913154 () Bool)

(declare-fun isEmpty!32806 (List!60978) Bool)

(assert (=> d!1696456 (= c!913154 (isEmpty!32806 (t!374173 s!2326)))))

(declare-fun e!3278541 () Bool)

(assert (=> d!1696456 (= (matchZipper!1137 lt!2156821 (t!374173 s!2326)) e!3278541)))

(declare-fun b!5271748 () Bool)

(declare-fun nullableZipper!1292 ((InoxSet Context!8554)) Bool)

(assert (=> b!5271748 (= e!3278541 (nullableZipper!1292 lt!2156821))))

(declare-fun b!5271749 () Bool)

(declare-fun head!11302 (List!60978) C!30056)

(declare-fun tail!10399 (List!60978) List!60978)

(assert (=> b!5271749 (= e!3278541 (matchZipper!1137 (derivationStepZipper!1136 lt!2156821 (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))))))

(assert (= (and d!1696456 c!913154) b!5271748))

(assert (= (and d!1696456 (not c!913154)) b!5271749))

(declare-fun m!6310790 () Bool)

(assert (=> d!1696456 m!6310790))

(declare-fun m!6310792 () Bool)

(assert (=> b!5271748 m!6310792))

(declare-fun m!6310794 () Bool)

(assert (=> b!5271749 m!6310794))

(assert (=> b!5271749 m!6310794))

(declare-fun m!6310796 () Bool)

(assert (=> b!5271749 m!6310796))

(declare-fun m!6310798 () Bool)

(assert (=> b!5271749 m!6310798))

(assert (=> b!5271749 m!6310796))

(assert (=> b!5271749 m!6310798))

(declare-fun m!6310802 () Bool)

(assert (=> b!5271749 m!6310802))

(assert (=> b!5271508 d!1696456))

(declare-fun d!1696466 () Bool)

(declare-fun lambda!265989 () Int)

(declare-fun forall!14301 (List!60979 Int) Bool)

(assert (=> d!1696466 (= (inv!80479 setElem!33749) (forall!14301 (exprs!4777 setElem!33749) lambda!265989))))

(declare-fun bs!1221439 () Bool)

(assert (= bs!1221439 d!1696466))

(declare-fun m!6310836 () Bool)

(assert (=> bs!1221439 m!6310836))

(assert (=> setNonEmpty!33749 d!1696466))

(declare-fun b!5271861 () Bool)

(declare-fun e!3278608 () (InoxSet Context!8554))

(declare-fun call!374687 () (InoxSet Context!8554))

(assert (=> b!5271861 (= e!3278608 call!374687)))

(declare-fun b!5271862 () Bool)

(declare-fun e!3278611 () (InoxSet Context!8554))

(declare-fun e!3278606 () (InoxSet Context!8554))

(assert (=> b!5271862 (= e!3278611 e!3278606)))

(declare-fun c!913198 () Bool)

(assert (=> b!5271862 (= c!913198 ((_ is Union!14893) (regTwo!30298 (regOne!30298 r!7292))))))

(declare-fun bm!374680 () Bool)

(declare-fun call!374689 () (InoxSet Context!8554))

(declare-fun call!374685 () List!60979)

(assert (=> bm!374680 (= call!374689 (derivationStepZipperDown!341 (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292)))) (ite c!913198 lt!2156804 (Context!8555 call!374685)) (h!67302 s!2326)))))

(declare-fun bm!374681 () Bool)

(declare-fun call!374688 () (InoxSet Context!8554))

(assert (=> bm!374681 (= call!374687 call!374688)))

(declare-fun b!5271863 () Bool)

(declare-fun e!3278607 () (InoxSet Context!8554))

(assert (=> b!5271863 (= e!3278607 e!3278608)))

(declare-fun c!913200 () Bool)

(assert (=> b!5271863 (= c!913200 ((_ is Concat!23738) (regTwo!30298 (regOne!30298 r!7292))))))

(declare-fun bm!374682 () Bool)

(declare-fun call!374686 () (InoxSet Context!8554))

(assert (=> bm!374682 (= call!374688 call!374686)))

(declare-fun b!5271864 () Bool)

(declare-fun e!3278610 () Bool)

(assert (=> b!5271864 (= e!3278610 (nullable!5062 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292)))))))

(declare-fun b!5271865 () Bool)

(declare-fun e!3278609 () (InoxSet Context!8554))

(assert (=> b!5271865 (= e!3278609 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5271867 () Bool)

(declare-fun c!913197 () Bool)

(assert (=> b!5271867 (= c!913197 e!3278610)))

(declare-fun res!2236417 () Bool)

(assert (=> b!5271867 (=> (not res!2236417) (not e!3278610))))

(assert (=> b!5271867 (= res!2236417 ((_ is Concat!23738) (regTwo!30298 (regOne!30298 r!7292))))))

(assert (=> b!5271867 (= e!3278606 e!3278607)))

(declare-fun call!374690 () List!60979)

(declare-fun bm!374683 () Bool)

(assert (=> bm!374683 (= call!374686 (derivationStepZipperDown!341 (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292)))))) (ite (or c!913198 c!913197) lt!2156804 (Context!8555 call!374690)) (h!67302 s!2326)))))

(declare-fun b!5271868 () Bool)

(assert (=> b!5271868 (= e!3278609 call!374687)))

(declare-fun bm!374684 () Bool)

(assert (=> bm!374684 (= call!374690 call!374685)))

(declare-fun b!5271869 () Bool)

(declare-fun c!913199 () Bool)

(assert (=> b!5271869 (= c!913199 ((_ is Star!14893) (regTwo!30298 (regOne!30298 r!7292))))))

(assert (=> b!5271869 (= e!3278608 e!3278609)))

(declare-fun b!5271870 () Bool)

(assert (=> b!5271870 (= e!3278606 ((_ map or) call!374689 call!374686))))

(declare-fun bm!374685 () Bool)

(declare-fun $colon$colon!1342 (List!60979 Regex!14893) List!60979)

(assert (=> bm!374685 (= call!374685 ($colon$colon!1342 (exprs!4777 lt!2156804) (ite (or c!913197 c!913200) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regOne!30298 r!7292)))))))

(declare-fun b!5271871 () Bool)

(assert (=> b!5271871 (= e!3278611 (store ((as const (Array Context!8554 Bool)) false) lt!2156804 true))))

(declare-fun b!5271866 () Bool)

(assert (=> b!5271866 (= e!3278607 ((_ map or) call!374689 call!374688))))

(declare-fun d!1696482 () Bool)

(declare-fun c!913196 () Bool)

(assert (=> d!1696482 (= c!913196 (and ((_ is ElementMatch!14893) (regTwo!30298 (regOne!30298 r!7292))) (= (c!913081 (regTwo!30298 (regOne!30298 r!7292))) (h!67302 s!2326))))))

(assert (=> d!1696482 (= (derivationStepZipperDown!341 (regTwo!30298 (regOne!30298 r!7292)) lt!2156804 (h!67302 s!2326)) e!3278611)))

(assert (= (and d!1696482 c!913196) b!5271871))

(assert (= (and d!1696482 (not c!913196)) b!5271862))

(assert (= (and b!5271862 c!913198) b!5271870))

(assert (= (and b!5271862 (not c!913198)) b!5271867))

(assert (= (and b!5271867 res!2236417) b!5271864))

(assert (= (and b!5271867 c!913197) b!5271866))

(assert (= (and b!5271867 (not c!913197)) b!5271863))

(assert (= (and b!5271863 c!913200) b!5271861))

(assert (= (and b!5271863 (not c!913200)) b!5271869))

(assert (= (and b!5271869 c!913199) b!5271868))

(assert (= (and b!5271869 (not c!913199)) b!5271865))

(assert (= (or b!5271861 b!5271868) bm!374684))

(assert (= (or b!5271861 b!5271868) bm!374681))

(assert (= (or b!5271866 bm!374684) bm!374685))

(assert (= (or b!5271866 bm!374681) bm!374682))

(assert (= (or b!5271870 bm!374682) bm!374683))

(assert (= (or b!5271870 b!5271866) bm!374680))

(declare-fun m!6310892 () Bool)

(assert (=> b!5271871 m!6310892))

(declare-fun m!6310894 () Bool)

(assert (=> b!5271864 m!6310894))

(declare-fun m!6310896 () Bool)

(assert (=> bm!374680 m!6310896))

(declare-fun m!6310898 () Bool)

(assert (=> bm!374685 m!6310898))

(declare-fun m!6310900 () Bool)

(assert (=> bm!374683 m!6310900))

(assert (=> b!5271497 d!1696482))

(declare-fun b!5271872 () Bool)

(declare-fun e!3278614 () (InoxSet Context!8554))

(declare-fun call!374693 () (InoxSet Context!8554))

(assert (=> b!5271872 (= e!3278614 call!374693)))

(declare-fun b!5271873 () Bool)

(declare-fun e!3278617 () (InoxSet Context!8554))

(declare-fun e!3278612 () (InoxSet Context!8554))

(assert (=> b!5271873 (= e!3278617 e!3278612)))

(declare-fun c!913203 () Bool)

(assert (=> b!5271873 (= c!913203 ((_ is Union!14893) (regOne!30298 (regOne!30298 r!7292))))))

(declare-fun call!374695 () (InoxSet Context!8554))

(declare-fun call!374691 () List!60979)

(declare-fun bm!374686 () Bool)

(assert (=> bm!374686 (= call!374695 (derivationStepZipperDown!341 (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292)))) (ite c!913203 lt!2156808 (Context!8555 call!374691)) (h!67302 s!2326)))))

(declare-fun bm!374687 () Bool)

(declare-fun call!374694 () (InoxSet Context!8554))

(assert (=> bm!374687 (= call!374693 call!374694)))

(declare-fun b!5271874 () Bool)

(declare-fun e!3278613 () (InoxSet Context!8554))

(assert (=> b!5271874 (= e!3278613 e!3278614)))

(declare-fun c!913205 () Bool)

(assert (=> b!5271874 (= c!913205 ((_ is Concat!23738) (regOne!30298 (regOne!30298 r!7292))))))

(declare-fun bm!374688 () Bool)

(declare-fun call!374692 () (InoxSet Context!8554))

(assert (=> bm!374688 (= call!374694 call!374692)))

(declare-fun b!5271875 () Bool)

(declare-fun e!3278616 () Bool)

(assert (=> b!5271875 (= e!3278616 (nullable!5062 (regOne!30298 (regOne!30298 (regOne!30298 r!7292)))))))

(declare-fun b!5271876 () Bool)

(declare-fun e!3278615 () (InoxSet Context!8554))

(assert (=> b!5271876 (= e!3278615 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5271878 () Bool)

(declare-fun c!913202 () Bool)

(assert (=> b!5271878 (= c!913202 e!3278616)))

(declare-fun res!2236418 () Bool)

(assert (=> b!5271878 (=> (not res!2236418) (not e!3278616))))

(assert (=> b!5271878 (= res!2236418 ((_ is Concat!23738) (regOne!30298 (regOne!30298 r!7292))))))

(assert (=> b!5271878 (= e!3278612 e!3278613)))

(declare-fun bm!374689 () Bool)

(declare-fun call!374696 () List!60979)

(assert (=> bm!374689 (= call!374692 (derivationStepZipperDown!341 (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292)))))) (ite (or c!913203 c!913202) lt!2156808 (Context!8555 call!374696)) (h!67302 s!2326)))))

(declare-fun b!5271879 () Bool)

(assert (=> b!5271879 (= e!3278615 call!374693)))

(declare-fun bm!374690 () Bool)

(assert (=> bm!374690 (= call!374696 call!374691)))

(declare-fun b!5271880 () Bool)

(declare-fun c!913204 () Bool)

(assert (=> b!5271880 (= c!913204 ((_ is Star!14893) (regOne!30298 (regOne!30298 r!7292))))))

(assert (=> b!5271880 (= e!3278614 e!3278615)))

(declare-fun b!5271881 () Bool)

(assert (=> b!5271881 (= e!3278612 ((_ map or) call!374695 call!374692))))

(declare-fun bm!374691 () Bool)

(assert (=> bm!374691 (= call!374691 ($colon$colon!1342 (exprs!4777 lt!2156808) (ite (or c!913202 c!913205) (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 r!7292)))))))

(declare-fun b!5271882 () Bool)

(assert (=> b!5271882 (= e!3278617 (store ((as const (Array Context!8554 Bool)) false) lt!2156808 true))))

(declare-fun b!5271877 () Bool)

(assert (=> b!5271877 (= e!3278613 ((_ map or) call!374695 call!374694))))

(declare-fun d!1696496 () Bool)

(declare-fun c!913201 () Bool)

(assert (=> d!1696496 (= c!913201 (and ((_ is ElementMatch!14893) (regOne!30298 (regOne!30298 r!7292))) (= (c!913081 (regOne!30298 (regOne!30298 r!7292))) (h!67302 s!2326))))))

(assert (=> d!1696496 (= (derivationStepZipperDown!341 (regOne!30298 (regOne!30298 r!7292)) lt!2156808 (h!67302 s!2326)) e!3278617)))

(assert (= (and d!1696496 c!913201) b!5271882))

(assert (= (and d!1696496 (not c!913201)) b!5271873))

(assert (= (and b!5271873 c!913203) b!5271881))

(assert (= (and b!5271873 (not c!913203)) b!5271878))

(assert (= (and b!5271878 res!2236418) b!5271875))

(assert (= (and b!5271878 c!913202) b!5271877))

(assert (= (and b!5271878 (not c!913202)) b!5271874))

(assert (= (and b!5271874 c!913205) b!5271872))

(assert (= (and b!5271874 (not c!913205)) b!5271880))

(assert (= (and b!5271880 c!913204) b!5271879))

(assert (= (and b!5271880 (not c!913204)) b!5271876))

(assert (= (or b!5271872 b!5271879) bm!374690))

(assert (= (or b!5271872 b!5271879) bm!374687))

(assert (= (or b!5271877 bm!374690) bm!374691))

(assert (= (or b!5271877 bm!374687) bm!374688))

(assert (= (or b!5271881 bm!374688) bm!374689))

(assert (= (or b!5271881 b!5271877) bm!374686))

(assert (=> b!5271882 m!6310570))

(declare-fun m!6310902 () Bool)

(assert (=> b!5271875 m!6310902))

(declare-fun m!6310904 () Bool)

(assert (=> bm!374686 m!6310904))

(declare-fun m!6310906 () Bool)

(assert (=> bm!374691 m!6310906))

(declare-fun m!6310908 () Bool)

(assert (=> bm!374689 m!6310908))

(assert (=> b!5271497 d!1696496))

(declare-fun b!5271913 () Bool)

(declare-fun e!3278638 () Bool)

(declare-fun e!3278640 () Bool)

(assert (=> b!5271913 (= e!3278638 e!3278640)))

(declare-fun res!2236445 () Bool)

(assert (=> b!5271913 (=> (not res!2236445) (not e!3278640))))

(declare-fun call!374705 () Bool)

(assert (=> b!5271913 (= res!2236445 call!374705)))

(declare-fun b!5271914 () Bool)

(declare-fun e!3278643 () Bool)

(declare-fun e!3278642 () Bool)

(assert (=> b!5271914 (= e!3278643 e!3278642)))

(declare-fun c!913211 () Bool)

(assert (=> b!5271914 (= c!913211 ((_ is Star!14893) (regTwo!30298 (regOne!30298 r!7292))))))

(declare-fun bm!374698 () Bool)

(declare-fun call!374704 () Bool)

(declare-fun call!374703 () Bool)

(assert (=> bm!374698 (= call!374704 call!374703)))

(declare-fun bm!374699 () Bool)

(declare-fun c!913210 () Bool)

(assert (=> bm!374699 (= call!374705 (validRegex!6629 (ite c!913210 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))))))

(declare-fun b!5271915 () Bool)

(declare-fun res!2236443 () Bool)

(declare-fun e!3278644 () Bool)

(assert (=> b!5271915 (=> (not res!2236443) (not e!3278644))))

(assert (=> b!5271915 (= res!2236443 call!374705)))

(declare-fun e!3278639 () Bool)

(assert (=> b!5271915 (= e!3278639 e!3278644)))

(declare-fun d!1696498 () Bool)

(declare-fun res!2236441 () Bool)

(assert (=> d!1696498 (=> res!2236441 e!3278643)))

(assert (=> d!1696498 (= res!2236441 ((_ is ElementMatch!14893) (regTwo!30298 (regOne!30298 r!7292))))))

(assert (=> d!1696498 (= (validRegex!6629 (regTwo!30298 (regOne!30298 r!7292))) e!3278643)))

(declare-fun bm!374700 () Bool)

(assert (=> bm!374700 (= call!374703 (validRegex!6629 (ite c!913211 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913210 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292)))))))))

(declare-fun b!5271916 () Bool)

(declare-fun res!2236442 () Bool)

(assert (=> b!5271916 (=> res!2236442 e!3278638)))

(assert (=> b!5271916 (= res!2236442 (not ((_ is Concat!23738) (regTwo!30298 (regOne!30298 r!7292)))))))

(assert (=> b!5271916 (= e!3278639 e!3278638)))

(declare-fun b!5271917 () Bool)

(declare-fun e!3278641 () Bool)

(assert (=> b!5271917 (= e!3278641 call!374703)))

(declare-fun b!5271918 () Bool)

(assert (=> b!5271918 (= e!3278644 call!374704)))

(declare-fun b!5271919 () Bool)

(assert (=> b!5271919 (= e!3278642 e!3278639)))

(assert (=> b!5271919 (= c!913210 ((_ is Union!14893) (regTwo!30298 (regOne!30298 r!7292))))))

(declare-fun b!5271920 () Bool)

(assert (=> b!5271920 (= e!3278642 e!3278641)))

(declare-fun res!2236444 () Bool)

(assert (=> b!5271920 (= res!2236444 (not (nullable!5062 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))))))))

(assert (=> b!5271920 (=> (not res!2236444) (not e!3278641))))

(declare-fun b!5271921 () Bool)

(assert (=> b!5271921 (= e!3278640 call!374704)))

(assert (= (and d!1696498 (not res!2236441)) b!5271914))

(assert (= (and b!5271914 c!913211) b!5271920))

(assert (= (and b!5271914 (not c!913211)) b!5271919))

(assert (= (and b!5271920 res!2236444) b!5271917))

(assert (= (and b!5271919 c!913210) b!5271915))

(assert (= (and b!5271919 (not c!913210)) b!5271916))

(assert (= (and b!5271915 res!2236443) b!5271918))

(assert (= (and b!5271916 (not res!2236442)) b!5271913))

(assert (= (and b!5271913 res!2236445) b!5271921))

(assert (= (or b!5271918 b!5271921) bm!374698))

(assert (= (or b!5271915 b!5271913) bm!374699))

(assert (= (or b!5271917 bm!374698) bm!374700))

(declare-fun m!6310922 () Bool)

(assert (=> bm!374699 m!6310922))

(declare-fun m!6310924 () Bool)

(assert (=> bm!374700 m!6310924))

(declare-fun m!6310926 () Bool)

(assert (=> b!5271920 m!6310926))

(assert (=> b!5271518 d!1696498))

(declare-fun bs!1221464 () Bool)

(declare-fun d!1696506 () Bool)

(assert (= bs!1221464 (and d!1696506 b!5271503)))

(declare-fun lambda!266008 () Int)

(assert (=> bs!1221464 (= lambda!266008 lambda!265971)))

(assert (=> d!1696506 true))

(assert (=> d!1696506 (= (derivationStepZipper!1136 lt!2156799 (h!67302 s!2326)) (flatMap!620 lt!2156799 lambda!266008))))

(declare-fun bs!1221465 () Bool)

(assert (= bs!1221465 d!1696506))

(declare-fun m!6310954 () Bool)

(assert (=> bs!1221465 m!6310954))

(assert (=> b!5271498 d!1696506))

(declare-fun d!1696518 () Bool)

(declare-fun dynLambda!24047 (Int Context!8554) (InoxSet Context!8554))

(assert (=> d!1696518 (= (flatMap!620 lt!2156799 lambda!265971) (dynLambda!24047 lambda!265971 lt!2156820))))

(declare-fun lt!2156870 () Unit!153090)

(declare-fun choose!39337 ((InoxSet Context!8554) Context!8554 Int) Unit!153090)

(assert (=> d!1696518 (= lt!2156870 (choose!39337 lt!2156799 lt!2156820 lambda!265971))))

(assert (=> d!1696518 (= lt!2156799 (store ((as const (Array Context!8554 Bool)) false) lt!2156820 true))))

(assert (=> d!1696518 (= (lemmaFlatMapOnSingletonSet!152 lt!2156799 lt!2156820 lambda!265971) lt!2156870)))

(declare-fun b_lambda!203345 () Bool)

(assert (=> (not b_lambda!203345) (not d!1696518)))

(declare-fun bs!1221469 () Bool)

(assert (= bs!1221469 d!1696518))

(assert (=> bs!1221469 m!6310568))

(declare-fun m!6310958 () Bool)

(assert (=> bs!1221469 m!6310958))

(declare-fun m!6310960 () Bool)

(assert (=> bs!1221469 m!6310960))

(assert (=> bs!1221469 m!6310572))

(assert (=> b!5271498 d!1696518))

(declare-fun b!5272010 () Bool)

(declare-fun e!3278688 () (InoxSet Context!8554))

(assert (=> b!5272010 (= e!3278688 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5272011 () Bool)

(declare-fun call!374720 () (InoxSet Context!8554))

(assert (=> b!5272011 (= e!3278688 call!374720)))

(declare-fun bm!374715 () Bool)

(assert (=> bm!374715 (= call!374720 (derivationStepZipperDown!341 (h!67303 (exprs!4777 lt!2156808)) (Context!8555 (t!374174 (exprs!4777 lt!2156808))) (h!67302 s!2326)))))

(declare-fun e!3278687 () (InoxSet Context!8554))

(declare-fun b!5272012 () Bool)

(assert (=> b!5272012 (= e!3278687 ((_ map or) call!374720 (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 lt!2156808))) (h!67302 s!2326))))))

(declare-fun b!5272013 () Bool)

(declare-fun e!3278686 () Bool)

(assert (=> b!5272013 (= e!3278686 (nullable!5062 (h!67303 (exprs!4777 lt!2156808))))))

(declare-fun d!1696526 () Bool)

(declare-fun c!913229 () Bool)

(assert (=> d!1696526 (= c!913229 e!3278686)))

(declare-fun res!2236450 () Bool)

(assert (=> d!1696526 (=> (not res!2236450) (not e!3278686))))

(assert (=> d!1696526 (= res!2236450 ((_ is Cons!60855) (exprs!4777 lt!2156808)))))

(assert (=> d!1696526 (= (derivationStepZipperUp!265 lt!2156808 (h!67302 s!2326)) e!3278687)))

(declare-fun b!5272014 () Bool)

(assert (=> b!5272014 (= e!3278687 e!3278688)))

(declare-fun c!913228 () Bool)

(assert (=> b!5272014 (= c!913228 ((_ is Cons!60855) (exprs!4777 lt!2156808)))))

(assert (= (and d!1696526 res!2236450) b!5272013))

(assert (= (and d!1696526 c!913229) b!5272012))

(assert (= (and d!1696526 (not c!913229)) b!5272014))

(assert (= (and b!5272014 c!913228) b!5272011))

(assert (= (and b!5272014 (not c!913228)) b!5272010))

(assert (= (or b!5272012 b!5272011) bm!374715))

(declare-fun m!6310962 () Bool)

(assert (=> bm!374715 m!6310962))

(declare-fun m!6310964 () Bool)

(assert (=> b!5272012 m!6310964))

(declare-fun m!6310966 () Bool)

(assert (=> b!5272013 m!6310966))

(assert (=> b!5271498 d!1696526))

(declare-fun b!5272015 () Bool)

(declare-fun e!3278691 () (InoxSet Context!8554))

(assert (=> b!5272015 (= e!3278691 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5272016 () Bool)

(declare-fun call!374721 () (InoxSet Context!8554))

(assert (=> b!5272016 (= e!3278691 call!374721)))

(declare-fun bm!374716 () Bool)

(assert (=> bm!374716 (= call!374721 (derivationStepZipperDown!341 (h!67303 (exprs!4777 lt!2156820)) (Context!8555 (t!374174 (exprs!4777 lt!2156820))) (h!67302 s!2326)))))

(declare-fun b!5272017 () Bool)

(declare-fun e!3278690 () (InoxSet Context!8554))

(assert (=> b!5272017 (= e!3278690 ((_ map or) call!374721 (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 lt!2156820))) (h!67302 s!2326))))))

(declare-fun b!5272018 () Bool)

(declare-fun e!3278689 () Bool)

(assert (=> b!5272018 (= e!3278689 (nullable!5062 (h!67303 (exprs!4777 lt!2156820))))))

(declare-fun d!1696528 () Bool)

(declare-fun c!913231 () Bool)

(assert (=> d!1696528 (= c!913231 e!3278689)))

(declare-fun res!2236451 () Bool)

(assert (=> d!1696528 (=> (not res!2236451) (not e!3278689))))

(assert (=> d!1696528 (= res!2236451 ((_ is Cons!60855) (exprs!4777 lt!2156820)))))

(assert (=> d!1696528 (= (derivationStepZipperUp!265 lt!2156820 (h!67302 s!2326)) e!3278690)))

(declare-fun b!5272019 () Bool)

(assert (=> b!5272019 (= e!3278690 e!3278691)))

(declare-fun c!913230 () Bool)

(assert (=> b!5272019 (= c!913230 ((_ is Cons!60855) (exprs!4777 lt!2156820)))))

(assert (= (and d!1696528 res!2236451) b!5272018))

(assert (= (and d!1696528 c!913231) b!5272017))

(assert (= (and d!1696528 (not c!913231)) b!5272019))

(assert (= (and b!5272019 c!913230) b!5272016))

(assert (= (and b!5272019 (not c!913230)) b!5272015))

(assert (= (or b!5272017 b!5272016) bm!374716))

(declare-fun m!6310968 () Bool)

(assert (=> bm!374716 m!6310968))

(declare-fun m!6310970 () Bool)

(assert (=> b!5272017 m!6310970))

(declare-fun m!6310972 () Bool)

(assert (=> b!5272018 m!6310972))

(assert (=> b!5271498 d!1696528))

(declare-fun d!1696530 () Bool)

(declare-fun choose!39338 ((InoxSet Context!8554) Int) (InoxSet Context!8554))

(assert (=> d!1696530 (= (flatMap!620 lt!2156799 lambda!265971) (choose!39338 lt!2156799 lambda!265971))))

(declare-fun bs!1221470 () Bool)

(assert (= bs!1221470 d!1696530))

(declare-fun m!6310974 () Bool)

(assert (=> bs!1221470 m!6310974))

(assert (=> b!5271498 d!1696530))

(declare-fun d!1696532 () Bool)

(declare-fun e!3278694 () Bool)

(assert (=> d!1696532 e!3278694))

(declare-fun res!2236454 () Bool)

(assert (=> d!1696532 (=> (not res!2236454) (not e!3278694))))

(declare-fun lt!2156873 () List!60980)

(declare-fun noDuplicate!1247 (List!60980) Bool)

(assert (=> d!1696532 (= res!2236454 (noDuplicate!1247 lt!2156873))))

(declare-fun choose!39339 ((InoxSet Context!8554)) List!60980)

(assert (=> d!1696532 (= lt!2156873 (choose!39339 z!1189))))

(assert (=> d!1696532 (= (toList!8677 z!1189) lt!2156873)))

(declare-fun b!5272022 () Bool)

(declare-fun content!10825 (List!60980) (InoxSet Context!8554))

(assert (=> b!5272022 (= e!3278694 (= (content!10825 lt!2156873) z!1189))))

(assert (= (and d!1696532 res!2236454) b!5272022))

(declare-fun m!6310976 () Bool)

(assert (=> d!1696532 m!6310976))

(declare-fun m!6310978 () Bool)

(assert (=> d!1696532 m!6310978))

(declare-fun m!6310980 () Bool)

(assert (=> b!5272022 m!6310980))

(assert (=> b!5271496 d!1696532))

(declare-fun d!1696534 () Bool)

(declare-fun c!913232 () Bool)

(assert (=> d!1696534 (= c!913232 (isEmpty!32806 (t!374173 s!2326)))))

(declare-fun e!3278695 () Bool)

(assert (=> d!1696534 (= (matchZipper!1137 lt!2156813 (t!374173 s!2326)) e!3278695)))

(declare-fun b!5272023 () Bool)

(assert (=> b!5272023 (= e!3278695 (nullableZipper!1292 lt!2156813))))

(declare-fun b!5272024 () Bool)

(assert (=> b!5272024 (= e!3278695 (matchZipper!1137 (derivationStepZipper!1136 lt!2156813 (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))))))

(assert (= (and d!1696534 c!913232) b!5272023))

(assert (= (and d!1696534 (not c!913232)) b!5272024))

(assert (=> d!1696534 m!6310790))

(declare-fun m!6310982 () Bool)

(assert (=> b!5272023 m!6310982))

(assert (=> b!5272024 m!6310794))

(assert (=> b!5272024 m!6310794))

(declare-fun m!6310984 () Bool)

(assert (=> b!5272024 m!6310984))

(assert (=> b!5272024 m!6310798))

(assert (=> b!5272024 m!6310984))

(assert (=> b!5272024 m!6310798))

(declare-fun m!6310986 () Bool)

(assert (=> b!5272024 m!6310986))

(assert (=> b!5271506 d!1696534))

(declare-fun d!1696536 () Bool)

(declare-fun c!913233 () Bool)

(assert (=> d!1696536 (= c!913233 (isEmpty!32806 (t!374173 s!2326)))))

(declare-fun e!3278696 () Bool)

(assert (=> d!1696536 (= (matchZipper!1137 lt!2156807 (t!374173 s!2326)) e!3278696)))

(declare-fun b!5272025 () Bool)

(assert (=> b!5272025 (= e!3278696 (nullableZipper!1292 lt!2156807))))

(declare-fun b!5272026 () Bool)

(assert (=> b!5272026 (= e!3278696 (matchZipper!1137 (derivationStepZipper!1136 lt!2156807 (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))))))

(assert (= (and d!1696536 c!913233) b!5272025))

(assert (= (and d!1696536 (not c!913233)) b!5272026))

(assert (=> d!1696536 m!6310790))

(declare-fun m!6310988 () Bool)

(assert (=> b!5272025 m!6310988))

(assert (=> b!5272026 m!6310794))

(assert (=> b!5272026 m!6310794))

(declare-fun m!6310990 () Bool)

(assert (=> b!5272026 m!6310990))

(assert (=> b!5272026 m!6310798))

(assert (=> b!5272026 m!6310990))

(assert (=> b!5272026 m!6310798))

(declare-fun m!6310992 () Bool)

(assert (=> b!5272026 m!6310992))

(assert (=> b!5271506 d!1696536))

(declare-fun d!1696538 () Bool)

(declare-fun c!913234 () Bool)

(assert (=> d!1696538 (= c!913234 (isEmpty!32806 (t!374173 s!2326)))))

(declare-fun e!3278697 () Bool)

(assert (=> d!1696538 (= (matchZipper!1137 lt!2156801 (t!374173 s!2326)) e!3278697)))

(declare-fun b!5272027 () Bool)

(assert (=> b!5272027 (= e!3278697 (nullableZipper!1292 lt!2156801))))

(declare-fun b!5272028 () Bool)

(assert (=> b!5272028 (= e!3278697 (matchZipper!1137 (derivationStepZipper!1136 lt!2156801 (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))))))

(assert (= (and d!1696538 c!913234) b!5272027))

(assert (= (and d!1696538 (not c!913234)) b!5272028))

(assert (=> d!1696538 m!6310790))

(declare-fun m!6310994 () Bool)

(assert (=> b!5272027 m!6310994))

(assert (=> b!5272028 m!6310794))

(assert (=> b!5272028 m!6310794))

(declare-fun m!6310996 () Bool)

(assert (=> b!5272028 m!6310996))

(assert (=> b!5272028 m!6310798))

(assert (=> b!5272028 m!6310996))

(assert (=> b!5272028 m!6310798))

(declare-fun m!6310998 () Bool)

(assert (=> b!5272028 m!6310998))

(assert (=> b!5271506 d!1696538))

(declare-fun d!1696540 () Bool)

(declare-fun e!3278700 () Bool)

(assert (=> d!1696540 (= (matchZipper!1137 ((_ map or) lt!2156801 lt!2156821) (t!374173 s!2326)) e!3278700)))

(declare-fun res!2236457 () Bool)

(assert (=> d!1696540 (=> res!2236457 e!3278700)))

(assert (=> d!1696540 (= res!2236457 (matchZipper!1137 lt!2156801 (t!374173 s!2326)))))

(declare-fun lt!2156876 () Unit!153090)

(declare-fun choose!39340 ((InoxSet Context!8554) (InoxSet Context!8554) List!60978) Unit!153090)

(assert (=> d!1696540 (= lt!2156876 (choose!39340 lt!2156801 lt!2156821 (t!374173 s!2326)))))

(assert (=> d!1696540 (= (lemmaZipperConcatMatchesSameAsBothZippers!130 lt!2156801 lt!2156821 (t!374173 s!2326)) lt!2156876)))

(declare-fun b!5272031 () Bool)

(assert (=> b!5272031 (= e!3278700 (matchZipper!1137 lt!2156821 (t!374173 s!2326)))))

(assert (= (and d!1696540 (not res!2236457)) b!5272031))

(declare-fun m!6311000 () Bool)

(assert (=> d!1696540 m!6311000))

(assert (=> d!1696540 m!6310614))

(declare-fun m!6311002 () Bool)

(assert (=> d!1696540 m!6311002))

(assert (=> b!5272031 m!6310618))

(assert (=> b!5271506 d!1696540))

(declare-fun d!1696542 () Bool)

(declare-fun lt!2156879 () Regex!14893)

(assert (=> d!1696542 (validRegex!6629 lt!2156879)))

(assert (=> d!1696542 (= lt!2156879 (generalisedUnion!822 (unfocusZipperList!335 zl!343)))))

(assert (=> d!1696542 (= (unfocusZipper!635 zl!343) lt!2156879)))

(declare-fun bs!1221471 () Bool)

(assert (= bs!1221471 d!1696542))

(declare-fun m!6311004 () Bool)

(assert (=> bs!1221471 m!6311004))

(assert (=> bs!1221471 m!6310608))

(assert (=> bs!1221471 m!6310608))

(assert (=> bs!1221471 m!6310610))

(assert (=> b!5271517 d!1696542))

(assert (=> b!5271504 d!1696456))

(declare-fun d!1696544 () Bool)

(assert (=> d!1696544 (= (isEmpty!32804 (t!374174 (exprs!4777 (h!67304 zl!343)))) ((_ is Nil!60855) (t!374174 (exprs!4777 (h!67304 zl!343)))))))

(assert (=> b!5271515 d!1696544))

(declare-fun d!1696546 () Bool)

(declare-fun nullableFct!1444 (Regex!14893) Bool)

(assert (=> d!1696546 (= (nullable!5062 (regTwo!30298 (regOne!30298 r!7292))) (nullableFct!1444 (regTwo!30298 (regOne!30298 r!7292))))))

(declare-fun bs!1221472 () Bool)

(assert (= bs!1221472 d!1696546))

(declare-fun m!6311006 () Bool)

(assert (=> bs!1221472 m!6311006))

(assert (=> b!5271495 d!1696546))

(declare-fun d!1696548 () Bool)

(assert (=> d!1696548 (= (flatMap!620 lt!2156812 lambda!265971) (choose!39338 lt!2156812 lambda!265971))))

(declare-fun bs!1221473 () Bool)

(assert (= bs!1221473 d!1696548))

(declare-fun m!6311008 () Bool)

(assert (=> bs!1221473 m!6311008))

(assert (=> b!5271495 d!1696548))

(assert (=> b!5271495 d!1696526))

(declare-fun d!1696550 () Bool)

(assert (=> d!1696550 (= (flatMap!620 lt!2156812 lambda!265971) (dynLambda!24047 lambda!265971 lt!2156808))))

(declare-fun lt!2156880 () Unit!153090)

(assert (=> d!1696550 (= lt!2156880 (choose!39337 lt!2156812 lt!2156808 lambda!265971))))

(assert (=> d!1696550 (= lt!2156812 (store ((as const (Array Context!8554 Bool)) false) lt!2156808 true))))

(assert (=> d!1696550 (= (lemmaFlatMapOnSingletonSet!152 lt!2156812 lt!2156808 lambda!265971) lt!2156880)))

(declare-fun b_lambda!203347 () Bool)

(assert (=> (not b_lambda!203347) (not d!1696550)))

(declare-fun bs!1221474 () Bool)

(assert (= bs!1221474 d!1696550))

(assert (=> bs!1221474 m!6310562))

(declare-fun m!6311010 () Bool)

(assert (=> bs!1221474 m!6311010))

(declare-fun m!6311012 () Bool)

(assert (=> bs!1221474 m!6311012))

(assert (=> bs!1221474 m!6310570))

(assert (=> b!5271495 d!1696550))

(declare-fun bs!1221475 () Bool)

(declare-fun d!1696552 () Bool)

(assert (= bs!1221475 (and d!1696552 d!1696466)))

(declare-fun lambda!266009 () Int)

(assert (=> bs!1221475 (= lambda!266009 lambda!265989)))

(assert (=> d!1696552 (= (inv!80479 (h!67304 zl!343)) (forall!14301 (exprs!4777 (h!67304 zl!343)) lambda!266009))))

(declare-fun bs!1221476 () Bool)

(assert (= bs!1221476 d!1696552))

(declare-fun m!6311014 () Bool)

(assert (=> bs!1221476 m!6311014))

(assert (=> b!5271505 d!1696552))

(declare-fun d!1696554 () Bool)

(assert (=> d!1696554 (= (nullable!5062 (h!67303 (exprs!4777 (h!67304 zl!343)))) (nullableFct!1444 (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun bs!1221477 () Bool)

(assert (= bs!1221477 d!1696554))

(declare-fun m!6311016 () Bool)

(assert (=> bs!1221477 m!6311016))

(assert (=> b!5271503 d!1696554))

(declare-fun b!5272032 () Bool)

(declare-fun e!3278703 () (InoxSet Context!8554))

(assert (=> b!5272032 (= e!3278703 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5272033 () Bool)

(declare-fun call!374722 () (InoxSet Context!8554))

(assert (=> b!5272033 (= e!3278703 call!374722)))

(declare-fun bm!374717 () Bool)

(assert (=> bm!374717 (= call!374722 (derivationStepZipperDown!341 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))) (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (h!67302 s!2326)))))

(declare-fun e!3278702 () (InoxSet Context!8554))

(declare-fun b!5272034 () Bool)

(assert (=> b!5272034 (= e!3278702 ((_ map or) call!374722 (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (h!67302 s!2326))))))

(declare-fun b!5272035 () Bool)

(declare-fun e!3278701 () Bool)

(assert (=> b!5272035 (= e!3278701 (nullable!5062 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))))))

(declare-fun d!1696556 () Bool)

(declare-fun c!913236 () Bool)

(assert (=> d!1696556 (= c!913236 e!3278701)))

(declare-fun res!2236458 () Bool)

(assert (=> d!1696556 (=> (not res!2236458) (not e!3278701))))

(assert (=> d!1696556 (= res!2236458 ((_ is Cons!60855) (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))))))

(assert (=> d!1696556 (= (derivationStepZipperUp!265 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))) (h!67302 s!2326)) e!3278702)))

(declare-fun b!5272036 () Bool)

(assert (=> b!5272036 (= e!3278702 e!3278703)))

(declare-fun c!913235 () Bool)

(assert (=> b!5272036 (= c!913235 ((_ is Cons!60855) (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))))))

(assert (= (and d!1696556 res!2236458) b!5272035))

(assert (= (and d!1696556 c!913236) b!5272034))

(assert (= (and d!1696556 (not c!913236)) b!5272036))

(assert (= (and b!5272036 c!913235) b!5272033))

(assert (= (and b!5272036 (not c!913235)) b!5272032))

(assert (= (or b!5272034 b!5272033) bm!374717))

(declare-fun m!6311018 () Bool)

(assert (=> bm!374717 m!6311018))

(declare-fun m!6311020 () Bool)

(assert (=> b!5272034 m!6311020))

(declare-fun m!6311022 () Bool)

(assert (=> b!5272035 m!6311022))

(assert (=> b!5271503 d!1696556))

(declare-fun d!1696558 () Bool)

(assert (=> d!1696558 (= (flatMap!620 z!1189 lambda!265971) (dynLambda!24047 lambda!265971 (h!67304 zl!343)))))

(declare-fun lt!2156881 () Unit!153090)

(assert (=> d!1696558 (= lt!2156881 (choose!39337 z!1189 (h!67304 zl!343) lambda!265971))))

(assert (=> d!1696558 (= z!1189 (store ((as const (Array Context!8554 Bool)) false) (h!67304 zl!343) true))))

(assert (=> d!1696558 (= (lemmaFlatMapOnSingletonSet!152 z!1189 (h!67304 zl!343) lambda!265971) lt!2156881)))

(declare-fun b_lambda!203349 () Bool)

(assert (=> (not b_lambda!203349) (not d!1696558)))

(declare-fun bs!1221478 () Bool)

(assert (= bs!1221478 d!1696558))

(assert (=> bs!1221478 m!6310632))

(declare-fun m!6311024 () Bool)

(assert (=> bs!1221478 m!6311024))

(declare-fun m!6311026 () Bool)

(assert (=> bs!1221478 m!6311026))

(declare-fun m!6311028 () Bool)

(assert (=> bs!1221478 m!6311028))

(assert (=> b!5271503 d!1696558))

(declare-fun b!5272037 () Bool)

(declare-fun e!3278706 () (InoxSet Context!8554))

(declare-fun call!374725 () (InoxSet Context!8554))

(assert (=> b!5272037 (= e!3278706 call!374725)))

(declare-fun b!5272038 () Bool)

(declare-fun e!3278709 () (InoxSet Context!8554))

(declare-fun e!3278704 () (InoxSet Context!8554))

(assert (=> b!5272038 (= e!3278709 e!3278704)))

(declare-fun c!913239 () Bool)

(assert (=> b!5272038 (= c!913239 ((_ is Union!14893) (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun bm!374718 () Bool)

(declare-fun call!374723 () List!60979)

(declare-fun call!374727 () (InoxSet Context!8554))

(assert (=> bm!374718 (= call!374727 (derivationStepZipperDown!341 (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343))))) (ite c!913239 lt!2156804 (Context!8555 call!374723)) (h!67302 s!2326)))))

(declare-fun bm!374719 () Bool)

(declare-fun call!374726 () (InoxSet Context!8554))

(assert (=> bm!374719 (= call!374725 call!374726)))

(declare-fun b!5272039 () Bool)

(declare-fun e!3278705 () (InoxSet Context!8554))

(assert (=> b!5272039 (= e!3278705 e!3278706)))

(declare-fun c!913241 () Bool)

(assert (=> b!5272039 (= c!913241 ((_ is Concat!23738) (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun bm!374720 () Bool)

(declare-fun call!374724 () (InoxSet Context!8554))

(assert (=> bm!374720 (= call!374726 call!374724)))

(declare-fun b!5272040 () Bool)

(declare-fun e!3278708 () Bool)

(assert (=> b!5272040 (= e!3278708 (nullable!5062 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343))))))))

(declare-fun b!5272041 () Bool)

(declare-fun e!3278707 () (InoxSet Context!8554))

(assert (=> b!5272041 (= e!3278707 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5272043 () Bool)

(declare-fun c!913238 () Bool)

(assert (=> b!5272043 (= c!913238 e!3278708)))

(declare-fun res!2236459 () Bool)

(assert (=> b!5272043 (=> (not res!2236459) (not e!3278708))))

(assert (=> b!5272043 (= res!2236459 ((_ is Concat!23738) (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(assert (=> b!5272043 (= e!3278704 e!3278705)))

(declare-fun call!374728 () List!60979)

(declare-fun bm!374721 () Bool)

(assert (=> bm!374721 (= call!374724 (derivationStepZipperDown!341 (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343))))))) (ite (or c!913239 c!913238) lt!2156804 (Context!8555 call!374728)) (h!67302 s!2326)))))

(declare-fun b!5272044 () Bool)

(assert (=> b!5272044 (= e!3278707 call!374725)))

(declare-fun bm!374722 () Bool)

(assert (=> bm!374722 (= call!374728 call!374723)))

(declare-fun b!5272045 () Bool)

(declare-fun c!913240 () Bool)

(assert (=> b!5272045 (= c!913240 ((_ is Star!14893) (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(assert (=> b!5272045 (= e!3278706 e!3278707)))

(declare-fun b!5272046 () Bool)

(assert (=> b!5272046 (= e!3278704 ((_ map or) call!374727 call!374724))))

(declare-fun bm!374723 () Bool)

(assert (=> bm!374723 (= call!374723 ($colon$colon!1342 (exprs!4777 lt!2156804) (ite (or c!913238 c!913241) (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (h!67303 (exprs!4777 (h!67304 zl!343))))))))

(declare-fun b!5272047 () Bool)

(assert (=> b!5272047 (= e!3278709 (store ((as const (Array Context!8554 Bool)) false) lt!2156804 true))))

(declare-fun b!5272042 () Bool)

(assert (=> b!5272042 (= e!3278705 ((_ map or) call!374727 call!374726))))

(declare-fun d!1696560 () Bool)

(declare-fun c!913237 () Bool)

(assert (=> d!1696560 (= c!913237 (and ((_ is ElementMatch!14893) (h!67303 (exprs!4777 (h!67304 zl!343)))) (= (c!913081 (h!67303 (exprs!4777 (h!67304 zl!343)))) (h!67302 s!2326))))))

(assert (=> d!1696560 (= (derivationStepZipperDown!341 (h!67303 (exprs!4777 (h!67304 zl!343))) lt!2156804 (h!67302 s!2326)) e!3278709)))

(assert (= (and d!1696560 c!913237) b!5272047))

(assert (= (and d!1696560 (not c!913237)) b!5272038))

(assert (= (and b!5272038 c!913239) b!5272046))

(assert (= (and b!5272038 (not c!913239)) b!5272043))

(assert (= (and b!5272043 res!2236459) b!5272040))

(assert (= (and b!5272043 c!913238) b!5272042))

(assert (= (and b!5272043 (not c!913238)) b!5272039))

(assert (= (and b!5272039 c!913241) b!5272037))

(assert (= (and b!5272039 (not c!913241)) b!5272045))

(assert (= (and b!5272045 c!913240) b!5272044))

(assert (= (and b!5272045 (not c!913240)) b!5272041))

(assert (= (or b!5272037 b!5272044) bm!374722))

(assert (= (or b!5272037 b!5272044) bm!374719))

(assert (= (or b!5272042 bm!374722) bm!374723))

(assert (= (or b!5272042 bm!374719) bm!374720))

(assert (= (or b!5272046 bm!374720) bm!374721))

(assert (= (or b!5272046 b!5272042) bm!374718))

(assert (=> b!5272047 m!6310892))

(declare-fun m!6311030 () Bool)

(assert (=> b!5272040 m!6311030))

(declare-fun m!6311032 () Bool)

(assert (=> bm!374718 m!6311032))

(declare-fun m!6311034 () Bool)

(assert (=> bm!374723 m!6311034))

(declare-fun m!6311036 () Bool)

(assert (=> bm!374721 m!6311036))

(assert (=> b!5271503 d!1696560))

(declare-fun b!5272048 () Bool)

(declare-fun e!3278712 () (InoxSet Context!8554))

(assert (=> b!5272048 (= e!3278712 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5272049 () Bool)

(declare-fun call!374729 () (InoxSet Context!8554))

(assert (=> b!5272049 (= e!3278712 call!374729)))

(declare-fun bm!374724 () Bool)

(assert (=> bm!374724 (= call!374729 (derivationStepZipperDown!341 (h!67303 (exprs!4777 (h!67304 zl!343))) (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343)))) (h!67302 s!2326)))))

(declare-fun b!5272050 () Bool)

(declare-fun e!3278711 () (InoxSet Context!8554))

(assert (=> b!5272050 (= e!3278711 ((_ map or) call!374729 (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343)))) (h!67302 s!2326))))))

(declare-fun b!5272051 () Bool)

(declare-fun e!3278710 () Bool)

(assert (=> b!5272051 (= e!3278710 (nullable!5062 (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun d!1696562 () Bool)

(declare-fun c!913243 () Bool)

(assert (=> d!1696562 (= c!913243 e!3278710)))

(declare-fun res!2236460 () Bool)

(assert (=> d!1696562 (=> (not res!2236460) (not e!3278710))))

(assert (=> d!1696562 (= res!2236460 ((_ is Cons!60855) (exprs!4777 (h!67304 zl!343))))))

(assert (=> d!1696562 (= (derivationStepZipperUp!265 (h!67304 zl!343) (h!67302 s!2326)) e!3278711)))

(declare-fun b!5272052 () Bool)

(assert (=> b!5272052 (= e!3278711 e!3278712)))

(declare-fun c!913242 () Bool)

(assert (=> b!5272052 (= c!913242 ((_ is Cons!60855) (exprs!4777 (h!67304 zl!343))))))

(assert (= (and d!1696562 res!2236460) b!5272051))

(assert (= (and d!1696562 c!913243) b!5272050))

(assert (= (and d!1696562 (not c!913243)) b!5272052))

(assert (= (and b!5272052 c!913242) b!5272049))

(assert (= (and b!5272052 (not c!913242)) b!5272048))

(assert (= (or b!5272050 b!5272049) bm!374724))

(declare-fun m!6311038 () Bool)

(assert (=> bm!374724 m!6311038))

(declare-fun m!6311040 () Bool)

(assert (=> b!5272050 m!6311040))

(assert (=> b!5272051 m!6310634))

(assert (=> b!5271503 d!1696562))

(declare-fun d!1696564 () Bool)

(assert (=> d!1696564 (= (flatMap!620 z!1189 lambda!265971) (choose!39338 z!1189 lambda!265971))))

(declare-fun bs!1221479 () Bool)

(assert (= bs!1221479 d!1696564))

(declare-fun m!6311042 () Bool)

(assert (=> bs!1221479 m!6311042))

(assert (=> b!5271503 d!1696564))

(declare-fun b!5272053 () Bool)

(declare-fun e!3278715 () (InoxSet Context!8554))

(assert (=> b!5272053 (= e!3278715 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5272054 () Bool)

(declare-fun call!374730 () (InoxSet Context!8554))

(assert (=> b!5272054 (= e!3278715 call!374730)))

(declare-fun bm!374725 () Bool)

(assert (=> bm!374725 (= call!374730 (derivationStepZipperDown!341 (h!67303 (exprs!4777 lt!2156804)) (Context!8555 (t!374174 (exprs!4777 lt!2156804))) (h!67302 s!2326)))))

(declare-fun b!5272055 () Bool)

(declare-fun e!3278714 () (InoxSet Context!8554))

(assert (=> b!5272055 (= e!3278714 ((_ map or) call!374730 (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 lt!2156804))) (h!67302 s!2326))))))

(declare-fun b!5272056 () Bool)

(declare-fun e!3278713 () Bool)

(assert (=> b!5272056 (= e!3278713 (nullable!5062 (h!67303 (exprs!4777 lt!2156804))))))

(declare-fun d!1696566 () Bool)

(declare-fun c!913245 () Bool)

(assert (=> d!1696566 (= c!913245 e!3278713)))

(declare-fun res!2236461 () Bool)

(assert (=> d!1696566 (=> (not res!2236461) (not e!3278713))))

(assert (=> d!1696566 (= res!2236461 ((_ is Cons!60855) (exprs!4777 lt!2156804)))))

(assert (=> d!1696566 (= (derivationStepZipperUp!265 lt!2156804 (h!67302 s!2326)) e!3278714)))

(declare-fun b!5272057 () Bool)

(assert (=> b!5272057 (= e!3278714 e!3278715)))

(declare-fun c!913244 () Bool)

(assert (=> b!5272057 (= c!913244 ((_ is Cons!60855) (exprs!4777 lt!2156804)))))

(assert (= (and d!1696566 res!2236461) b!5272056))

(assert (= (and d!1696566 c!913245) b!5272055))

(assert (= (and d!1696566 (not c!913245)) b!5272057))

(assert (= (and b!5272057 c!913244) b!5272054))

(assert (= (and b!5272057 (not c!913244)) b!5272053))

(assert (= (or b!5272055 b!5272054) bm!374725))

(declare-fun m!6311044 () Bool)

(assert (=> bm!374725 m!6311044))

(declare-fun m!6311046 () Bool)

(assert (=> b!5272055 m!6311046))

(declare-fun m!6311048 () Bool)

(assert (=> b!5272056 m!6311048))

(assert (=> b!5271503 d!1696566))

(declare-fun bs!1221480 () Bool)

(declare-fun b!5272100 () Bool)

(assert (= bs!1221480 (and b!5272100 b!5271490)))

(declare-fun lambda!266014 () Int)

(assert (=> bs!1221480 (not (= lambda!266014 lambda!265969))))

(assert (=> bs!1221480 (not (= lambda!266014 lambda!265970))))

(assert (=> b!5272100 true))

(assert (=> b!5272100 true))

(declare-fun bs!1221481 () Bool)

(declare-fun b!5272093 () Bool)

(assert (= bs!1221481 (and b!5272093 b!5271490)))

(declare-fun lambda!266015 () Int)

(assert (=> bs!1221481 (not (= lambda!266015 lambda!265969))))

(assert (=> bs!1221481 (= lambda!266015 lambda!265970)))

(declare-fun bs!1221482 () Bool)

(assert (= bs!1221482 (and b!5272093 b!5272100)))

(assert (=> bs!1221482 (not (= lambda!266015 lambda!266014))))

(assert (=> b!5272093 true))

(assert (=> b!5272093 true))

(declare-fun b!5272090 () Bool)

(declare-fun c!913256 () Bool)

(assert (=> b!5272090 (= c!913256 ((_ is ElementMatch!14893) r!7292))))

(declare-fun e!3278734 () Bool)

(declare-fun e!3278739 () Bool)

(assert (=> b!5272090 (= e!3278734 e!3278739)))

(declare-fun b!5272091 () Bool)

(declare-fun e!3278738 () Bool)

(declare-fun e!3278736 () Bool)

(assert (=> b!5272091 (= e!3278738 e!3278736)))

(declare-fun res!2236479 () Bool)

(assert (=> b!5272091 (= res!2236479 (matchRSpec!1996 (regOne!30299 r!7292) s!2326))))

(assert (=> b!5272091 (=> res!2236479 e!3278736)))

(declare-fun b!5272092 () Bool)

(assert (=> b!5272092 (= e!3278739 (= s!2326 (Cons!60854 (c!913081 r!7292) Nil!60854)))))

(declare-fun d!1696568 () Bool)

(declare-fun c!913255 () Bool)

(assert (=> d!1696568 (= c!913255 ((_ is EmptyExpr!14893) r!7292))))

(declare-fun e!3278740 () Bool)

(assert (=> d!1696568 (= (matchRSpec!1996 r!7292 s!2326) e!3278740)))

(declare-fun e!3278737 () Bool)

(declare-fun call!374736 () Bool)

(assert (=> b!5272093 (= e!3278737 call!374736)))

(declare-fun b!5272094 () Bool)

(declare-fun call!374735 () Bool)

(assert (=> b!5272094 (= e!3278740 call!374735)))

(declare-fun b!5272095 () Bool)

(declare-fun res!2236480 () Bool)

(declare-fun e!3278735 () Bool)

(assert (=> b!5272095 (=> res!2236480 e!3278735)))

(assert (=> b!5272095 (= res!2236480 call!374735)))

(assert (=> b!5272095 (= e!3278737 e!3278735)))

(declare-fun b!5272096 () Bool)

(assert (=> b!5272096 (= e!3278740 e!3278734)))

(declare-fun res!2236478 () Bool)

(assert (=> b!5272096 (= res!2236478 (not ((_ is EmptyLang!14893) r!7292)))))

(assert (=> b!5272096 (=> (not res!2236478) (not e!3278734))))

(declare-fun b!5272097 () Bool)

(assert (=> b!5272097 (= e!3278736 (matchRSpec!1996 (regTwo!30299 r!7292) s!2326))))

(declare-fun bm!374730 () Bool)

(declare-fun c!913254 () Bool)

(assert (=> bm!374730 (= call!374736 (Exists!2074 (ite c!913254 lambda!266014 lambda!266015)))))

(declare-fun bm!374731 () Bool)

(assert (=> bm!374731 (= call!374735 (isEmpty!32806 s!2326))))

(declare-fun b!5272098 () Bool)

(assert (=> b!5272098 (= e!3278738 e!3278737)))

(assert (=> b!5272098 (= c!913254 ((_ is Star!14893) r!7292))))

(declare-fun b!5272099 () Bool)

(declare-fun c!913257 () Bool)

(assert (=> b!5272099 (= c!913257 ((_ is Union!14893) r!7292))))

(assert (=> b!5272099 (= e!3278739 e!3278738)))

(assert (=> b!5272100 (= e!3278735 call!374736)))

(assert (= (and d!1696568 c!913255) b!5272094))

(assert (= (and d!1696568 (not c!913255)) b!5272096))

(assert (= (and b!5272096 res!2236478) b!5272090))

(assert (= (and b!5272090 c!913256) b!5272092))

(assert (= (and b!5272090 (not c!913256)) b!5272099))

(assert (= (and b!5272099 c!913257) b!5272091))

(assert (= (and b!5272099 (not c!913257)) b!5272098))

(assert (= (and b!5272091 (not res!2236479)) b!5272097))

(assert (= (and b!5272098 c!913254) b!5272095))

(assert (= (and b!5272098 (not c!913254)) b!5272093))

(assert (= (and b!5272095 (not res!2236480)) b!5272100))

(assert (= (or b!5272100 b!5272093) bm!374730))

(assert (= (or b!5272094 b!5272095) bm!374731))

(declare-fun m!6311050 () Bool)

(assert (=> b!5272091 m!6311050))

(declare-fun m!6311052 () Bool)

(assert (=> b!5272097 m!6311052))

(declare-fun m!6311054 () Bool)

(assert (=> bm!374730 m!6311054))

(declare-fun m!6311056 () Bool)

(assert (=> bm!374731 m!6311056))

(assert (=> b!5271514 d!1696568))

(declare-fun b!5272129 () Bool)

(declare-fun e!3278758 () Bool)

(declare-fun e!3278760 () Bool)

(assert (=> b!5272129 (= e!3278758 e!3278760)))

(declare-fun c!913266 () Bool)

(assert (=> b!5272129 (= c!913266 ((_ is EmptyLang!14893) r!7292))))

(declare-fun b!5272130 () Bool)

(declare-fun e!3278759 () Bool)

(assert (=> b!5272130 (= e!3278759 (= (head!11302 s!2326) (c!913081 r!7292)))))

(declare-fun b!5272131 () Bool)

(declare-fun e!3278755 () Bool)

(declare-fun e!3278761 () Bool)

(assert (=> b!5272131 (= e!3278755 e!3278761)))

(declare-fun res!2236499 () Bool)

(assert (=> b!5272131 (=> (not res!2236499) (not e!3278761))))

(declare-fun lt!2156884 () Bool)

(assert (=> b!5272131 (= res!2236499 (not lt!2156884))))

(declare-fun b!5272132 () Bool)

(declare-fun e!3278757 () Bool)

(declare-fun derivativeStep!4113 (Regex!14893 C!30056) Regex!14893)

(assert (=> b!5272132 (= e!3278757 (matchR!7078 (derivativeStep!4113 r!7292 (head!11302 s!2326)) (tail!10399 s!2326)))))

(declare-fun b!5272133 () Bool)

(declare-fun res!2236501 () Bool)

(assert (=> b!5272133 (=> (not res!2236501) (not e!3278759))))

(declare-fun call!374739 () Bool)

(assert (=> b!5272133 (= res!2236501 (not call!374739))))

(declare-fun b!5272134 () Bool)

(declare-fun res!2236497 () Bool)

(assert (=> b!5272134 (=> res!2236497 e!3278755)))

(assert (=> b!5272134 (= res!2236497 e!3278759)))

(declare-fun res!2236498 () Bool)

(assert (=> b!5272134 (=> (not res!2236498) (not e!3278759))))

(assert (=> b!5272134 (= res!2236498 lt!2156884)))

(declare-fun b!5272135 () Bool)

(declare-fun e!3278756 () Bool)

(assert (=> b!5272135 (= e!3278761 e!3278756)))

(declare-fun res!2236504 () Bool)

(assert (=> b!5272135 (=> res!2236504 e!3278756)))

(assert (=> b!5272135 (= res!2236504 call!374739)))

(declare-fun b!5272136 () Bool)

(declare-fun res!2236503 () Bool)

(assert (=> b!5272136 (=> (not res!2236503) (not e!3278759))))

(assert (=> b!5272136 (= res!2236503 (isEmpty!32806 (tail!10399 s!2326)))))

(declare-fun b!5272137 () Bool)

(declare-fun res!2236502 () Bool)

(assert (=> b!5272137 (=> res!2236502 e!3278755)))

(assert (=> b!5272137 (= res!2236502 (not ((_ is ElementMatch!14893) r!7292)))))

(assert (=> b!5272137 (= e!3278760 e!3278755)))

(declare-fun bm!374734 () Bool)

(assert (=> bm!374734 (= call!374739 (isEmpty!32806 s!2326))))

(declare-fun b!5272138 () Bool)

(assert (=> b!5272138 (= e!3278758 (= lt!2156884 call!374739))))

(declare-fun b!5272139 () Bool)

(assert (=> b!5272139 (= e!3278757 (nullable!5062 r!7292))))

(declare-fun b!5272140 () Bool)

(declare-fun res!2236500 () Bool)

(assert (=> b!5272140 (=> res!2236500 e!3278756)))

(assert (=> b!5272140 (= res!2236500 (not (isEmpty!32806 (tail!10399 s!2326))))))

(declare-fun d!1696570 () Bool)

(assert (=> d!1696570 e!3278758))

(declare-fun c!913265 () Bool)

(assert (=> d!1696570 (= c!913265 ((_ is EmptyExpr!14893) r!7292))))

(assert (=> d!1696570 (= lt!2156884 e!3278757)))

(declare-fun c!913264 () Bool)

(assert (=> d!1696570 (= c!913264 (isEmpty!32806 s!2326))))

(assert (=> d!1696570 (validRegex!6629 r!7292)))

(assert (=> d!1696570 (= (matchR!7078 r!7292 s!2326) lt!2156884)))

(declare-fun b!5272141 () Bool)

(assert (=> b!5272141 (= e!3278760 (not lt!2156884))))

(declare-fun b!5272142 () Bool)

(assert (=> b!5272142 (= e!3278756 (not (= (head!11302 s!2326) (c!913081 r!7292))))))

(assert (= (and d!1696570 c!913264) b!5272139))

(assert (= (and d!1696570 (not c!913264)) b!5272132))

(assert (= (and d!1696570 c!913265) b!5272138))

(assert (= (and d!1696570 (not c!913265)) b!5272129))

(assert (= (and b!5272129 c!913266) b!5272141))

(assert (= (and b!5272129 (not c!913266)) b!5272137))

(assert (= (and b!5272137 (not res!2236502)) b!5272134))

(assert (= (and b!5272134 res!2236498) b!5272133))

(assert (= (and b!5272133 res!2236501) b!5272136))

(assert (= (and b!5272136 res!2236503) b!5272130))

(assert (= (and b!5272134 (not res!2236497)) b!5272131))

(assert (= (and b!5272131 res!2236499) b!5272135))

(assert (= (and b!5272135 (not res!2236504)) b!5272140))

(assert (= (and b!5272140 (not res!2236500)) b!5272142))

(assert (= (or b!5272138 b!5272133 b!5272135) bm!374734))

(declare-fun m!6311058 () Bool)

(assert (=> b!5272139 m!6311058))

(declare-fun m!6311060 () Bool)

(assert (=> b!5272140 m!6311060))

(assert (=> b!5272140 m!6311060))

(declare-fun m!6311062 () Bool)

(assert (=> b!5272140 m!6311062))

(assert (=> b!5272136 m!6311060))

(assert (=> b!5272136 m!6311060))

(assert (=> b!5272136 m!6311062))

(assert (=> bm!374734 m!6311056))

(declare-fun m!6311064 () Bool)

(assert (=> b!5272142 m!6311064))

(assert (=> d!1696570 m!6311056))

(assert (=> d!1696570 m!6310598))

(assert (=> b!5272132 m!6311064))

(assert (=> b!5272132 m!6311064))

(declare-fun m!6311066 () Bool)

(assert (=> b!5272132 m!6311066))

(assert (=> b!5272132 m!6311060))

(assert (=> b!5272132 m!6311066))

(assert (=> b!5272132 m!6311060))

(declare-fun m!6311068 () Bool)

(assert (=> b!5272132 m!6311068))

(assert (=> b!5272130 m!6311064))

(assert (=> b!5271514 d!1696570))

(declare-fun d!1696572 () Bool)

(assert (=> d!1696572 (= (matchR!7078 r!7292 s!2326) (matchRSpec!1996 r!7292 s!2326))))

(declare-fun lt!2156887 () Unit!153090)

(declare-fun choose!39341 (Regex!14893 List!60978) Unit!153090)

(assert (=> d!1696572 (= lt!2156887 (choose!39341 r!7292 s!2326))))

(assert (=> d!1696572 (validRegex!6629 r!7292)))

(assert (=> d!1696572 (= (mainMatchTheorem!1996 r!7292 s!2326) lt!2156887)))

(declare-fun bs!1221483 () Bool)

(assert (= bs!1221483 d!1696572))

(assert (=> bs!1221483 m!6310626))

(assert (=> bs!1221483 m!6310624))

(declare-fun m!6311070 () Bool)

(assert (=> bs!1221483 m!6311070))

(assert (=> bs!1221483 m!6310598))

(assert (=> b!5271514 d!1696572))

(declare-fun d!1696574 () Bool)

(assert (=> d!1696574 (= (isEmpty!32803 (t!374175 zl!343)) ((_ is Nil!60856) (t!374175 zl!343)))))

(assert (=> b!5271512 d!1696574))

(declare-fun d!1696576 () Bool)

(declare-fun c!913267 () Bool)

(assert (=> d!1696576 (= c!913267 (isEmpty!32806 (t!374173 s!2326)))))

(declare-fun e!3278762 () Bool)

(assert (=> d!1696576 (= (matchZipper!1137 lt!2156802 (t!374173 s!2326)) e!3278762)))

(declare-fun b!5272143 () Bool)

(assert (=> b!5272143 (= e!3278762 (nullableZipper!1292 lt!2156802))))

(declare-fun b!5272144 () Bool)

(assert (=> b!5272144 (= e!3278762 (matchZipper!1137 (derivationStepZipper!1136 lt!2156802 (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))))))

(assert (= (and d!1696576 c!913267) b!5272143))

(assert (= (and d!1696576 (not c!913267)) b!5272144))

(assert (=> d!1696576 m!6310790))

(declare-fun m!6311072 () Bool)

(assert (=> b!5272143 m!6311072))

(assert (=> b!5272144 m!6310794))

(assert (=> b!5272144 m!6310794))

(declare-fun m!6311074 () Bool)

(assert (=> b!5272144 m!6311074))

(assert (=> b!5272144 m!6310798))

(assert (=> b!5272144 m!6311074))

(assert (=> b!5272144 m!6310798))

(declare-fun m!6311076 () Bool)

(assert (=> b!5272144 m!6311076))

(assert (=> b!5271513 d!1696576))

(declare-fun bs!1221484 () Bool)

(declare-fun d!1696578 () Bool)

(assert (= bs!1221484 (and d!1696578 d!1696466)))

(declare-fun lambda!266018 () Int)

(assert (=> bs!1221484 (= lambda!266018 lambda!265989)))

(declare-fun bs!1221485 () Bool)

(assert (= bs!1221485 (and d!1696578 d!1696552)))

(assert (=> bs!1221485 (= lambda!266018 lambda!266009)))

(declare-fun b!5272165 () Bool)

(declare-fun e!3278776 () Bool)

(declare-fun lt!2156890 () Regex!14893)

(declare-fun head!11303 (List!60979) Regex!14893)

(assert (=> b!5272165 (= e!3278776 (= lt!2156890 (head!11303 (unfocusZipperList!335 zl!343))))))

(declare-fun b!5272166 () Bool)

(declare-fun e!3278780 () Bool)

(declare-fun e!3278778 () Bool)

(assert (=> b!5272166 (= e!3278780 e!3278778)))

(declare-fun c!913277 () Bool)

(assert (=> b!5272166 (= c!913277 (isEmpty!32804 (unfocusZipperList!335 zl!343)))))

(declare-fun b!5272167 () Bool)

(declare-fun e!3278777 () Regex!14893)

(assert (=> b!5272167 (= e!3278777 EmptyLang!14893)))

(declare-fun b!5272168 () Bool)

(declare-fun isEmptyLang!835 (Regex!14893) Bool)

(assert (=> b!5272168 (= e!3278778 (isEmptyLang!835 lt!2156890))))

(declare-fun b!5272169 () Bool)

(declare-fun isUnion!267 (Regex!14893) Bool)

(assert (=> b!5272169 (= e!3278776 (isUnion!267 lt!2156890))))

(declare-fun b!5272170 () Bool)

(assert (=> b!5272170 (= e!3278777 (Union!14893 (h!67303 (unfocusZipperList!335 zl!343)) (generalisedUnion!822 (t!374174 (unfocusZipperList!335 zl!343)))))))

(declare-fun b!5272171 () Bool)

(assert (=> b!5272171 (= e!3278778 e!3278776)))

(declare-fun c!913278 () Bool)

(declare-fun tail!10400 (List!60979) List!60979)

(assert (=> b!5272171 (= c!913278 (isEmpty!32804 (tail!10400 (unfocusZipperList!335 zl!343))))))

(declare-fun b!5272172 () Bool)

(declare-fun e!3278779 () Bool)

(assert (=> b!5272172 (= e!3278779 (isEmpty!32804 (t!374174 (unfocusZipperList!335 zl!343))))))

(declare-fun b!5272173 () Bool)

(declare-fun e!3278775 () Regex!14893)

(assert (=> b!5272173 (= e!3278775 e!3278777)))

(declare-fun c!913276 () Bool)

(assert (=> b!5272173 (= c!913276 ((_ is Cons!60855) (unfocusZipperList!335 zl!343)))))

(assert (=> d!1696578 e!3278780))

(declare-fun res!2236510 () Bool)

(assert (=> d!1696578 (=> (not res!2236510) (not e!3278780))))

(assert (=> d!1696578 (= res!2236510 (validRegex!6629 lt!2156890))))

(assert (=> d!1696578 (= lt!2156890 e!3278775)))

(declare-fun c!913279 () Bool)

(assert (=> d!1696578 (= c!913279 e!3278779)))

(declare-fun res!2236509 () Bool)

(assert (=> d!1696578 (=> (not res!2236509) (not e!3278779))))

(assert (=> d!1696578 (= res!2236509 ((_ is Cons!60855) (unfocusZipperList!335 zl!343)))))

(assert (=> d!1696578 (forall!14301 (unfocusZipperList!335 zl!343) lambda!266018)))

(assert (=> d!1696578 (= (generalisedUnion!822 (unfocusZipperList!335 zl!343)) lt!2156890)))

(declare-fun b!5272174 () Bool)

(assert (=> b!5272174 (= e!3278775 (h!67303 (unfocusZipperList!335 zl!343)))))

(assert (= (and d!1696578 res!2236509) b!5272172))

(assert (= (and d!1696578 c!913279) b!5272174))

(assert (= (and d!1696578 (not c!913279)) b!5272173))

(assert (= (and b!5272173 c!913276) b!5272170))

(assert (= (and b!5272173 (not c!913276)) b!5272167))

(assert (= (and d!1696578 res!2236510) b!5272166))

(assert (= (and b!5272166 c!913277) b!5272168))

(assert (= (and b!5272166 (not c!913277)) b!5272171))

(assert (= (and b!5272171 c!913278) b!5272165))

(assert (= (and b!5272171 (not c!913278)) b!5272169))

(assert (=> b!5272166 m!6310608))

(declare-fun m!6311078 () Bool)

(assert (=> b!5272166 m!6311078))

(declare-fun m!6311080 () Bool)

(assert (=> b!5272168 m!6311080))

(declare-fun m!6311082 () Bool)

(assert (=> b!5272172 m!6311082))

(declare-fun m!6311084 () Bool)

(assert (=> d!1696578 m!6311084))

(assert (=> d!1696578 m!6310608))

(declare-fun m!6311086 () Bool)

(assert (=> d!1696578 m!6311086))

(declare-fun m!6311088 () Bool)

(assert (=> b!5272169 m!6311088))

(assert (=> b!5272171 m!6310608))

(declare-fun m!6311090 () Bool)

(assert (=> b!5272171 m!6311090))

(assert (=> b!5272171 m!6311090))

(declare-fun m!6311092 () Bool)

(assert (=> b!5272171 m!6311092))

(assert (=> b!5272165 m!6310608))

(declare-fun m!6311094 () Bool)

(assert (=> b!5272165 m!6311094))

(declare-fun m!6311096 () Bool)

(assert (=> b!5272170 m!6311096))

(assert (=> b!5271500 d!1696578))

(declare-fun bs!1221486 () Bool)

(declare-fun d!1696580 () Bool)

(assert (= bs!1221486 (and d!1696580 d!1696466)))

(declare-fun lambda!266021 () Int)

(assert (=> bs!1221486 (= lambda!266021 lambda!265989)))

(declare-fun bs!1221487 () Bool)

(assert (= bs!1221487 (and d!1696580 d!1696552)))

(assert (=> bs!1221487 (= lambda!266021 lambda!266009)))

(declare-fun bs!1221488 () Bool)

(assert (= bs!1221488 (and d!1696580 d!1696578)))

(assert (=> bs!1221488 (= lambda!266021 lambda!266018)))

(declare-fun lt!2156893 () List!60979)

(assert (=> d!1696580 (forall!14301 lt!2156893 lambda!266021)))

(declare-fun e!3278783 () List!60979)

(assert (=> d!1696580 (= lt!2156893 e!3278783)))

(declare-fun c!913282 () Bool)

(assert (=> d!1696580 (= c!913282 ((_ is Cons!60856) zl!343))))

(assert (=> d!1696580 (= (unfocusZipperList!335 zl!343) lt!2156893)))

(declare-fun b!5272179 () Bool)

(assert (=> b!5272179 (= e!3278783 (Cons!60855 (generalisedConcat!562 (exprs!4777 (h!67304 zl!343))) (unfocusZipperList!335 (t!374175 zl!343))))))

(declare-fun b!5272180 () Bool)

(assert (=> b!5272180 (= e!3278783 Nil!60855)))

(assert (= (and d!1696580 c!913282) b!5272179))

(assert (= (and d!1696580 (not c!913282)) b!5272180))

(declare-fun m!6311098 () Bool)

(assert (=> d!1696580 m!6311098))

(assert (=> b!5272179 m!6310600))

(declare-fun m!6311100 () Bool)

(assert (=> b!5272179 m!6311100))

(assert (=> b!5271500 d!1696580))

(declare-fun bs!1221489 () Bool)

(declare-fun d!1696582 () Bool)

(assert (= bs!1221489 (and d!1696582 d!1696466)))

(declare-fun lambda!266024 () Int)

(assert (=> bs!1221489 (= lambda!266024 lambda!265989)))

(declare-fun bs!1221490 () Bool)

(assert (= bs!1221490 (and d!1696582 d!1696552)))

(assert (=> bs!1221490 (= lambda!266024 lambda!266009)))

(declare-fun bs!1221491 () Bool)

(assert (= bs!1221491 (and d!1696582 d!1696578)))

(assert (=> bs!1221491 (= lambda!266024 lambda!266018)))

(declare-fun bs!1221492 () Bool)

(assert (= bs!1221492 (and d!1696582 d!1696580)))

(assert (=> bs!1221492 (= lambda!266024 lambda!266021)))

(declare-fun b!5272201 () Bool)

(declare-fun e!3278799 () Bool)

(assert (=> b!5272201 (= e!3278799 (isEmpty!32804 (t!374174 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun b!5272202 () Bool)

(declare-fun e!3278798 () Bool)

(declare-fun lt!2156896 () Regex!14893)

(declare-fun isConcat!350 (Regex!14893) Bool)

(assert (=> b!5272202 (= e!3278798 (isConcat!350 lt!2156896))))

(declare-fun b!5272203 () Bool)

(declare-fun e!3278797 () Regex!14893)

(assert (=> b!5272203 (= e!3278797 (h!67303 (exprs!4777 (h!67304 zl!343))))))

(declare-fun e!3278801 () Bool)

(assert (=> d!1696582 e!3278801))

(declare-fun res!2236515 () Bool)

(assert (=> d!1696582 (=> (not res!2236515) (not e!3278801))))

(assert (=> d!1696582 (= res!2236515 (validRegex!6629 lt!2156896))))

(assert (=> d!1696582 (= lt!2156896 e!3278797)))

(declare-fun c!913293 () Bool)

(assert (=> d!1696582 (= c!913293 e!3278799)))

(declare-fun res!2236516 () Bool)

(assert (=> d!1696582 (=> (not res!2236516) (not e!3278799))))

(assert (=> d!1696582 (= res!2236516 ((_ is Cons!60855) (exprs!4777 (h!67304 zl!343))))))

(assert (=> d!1696582 (forall!14301 (exprs!4777 (h!67304 zl!343)) lambda!266024)))

(assert (=> d!1696582 (= (generalisedConcat!562 (exprs!4777 (h!67304 zl!343))) lt!2156896)))

(declare-fun b!5272204 () Bool)

(declare-fun e!3278800 () Regex!14893)

(assert (=> b!5272204 (= e!3278797 e!3278800)))

(declare-fun c!913294 () Bool)

(assert (=> b!5272204 (= c!913294 ((_ is Cons!60855) (exprs!4777 (h!67304 zl!343))))))

(declare-fun b!5272205 () Bool)

(declare-fun e!3278796 () Bool)

(assert (=> b!5272205 (= e!3278801 e!3278796)))

(declare-fun c!913292 () Bool)

(assert (=> b!5272205 (= c!913292 (isEmpty!32804 (exprs!4777 (h!67304 zl!343))))))

(declare-fun b!5272206 () Bool)

(assert (=> b!5272206 (= e!3278800 EmptyExpr!14893)))

(declare-fun b!5272207 () Bool)

(assert (=> b!5272207 (= e!3278798 (= lt!2156896 (head!11303 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun b!5272208 () Bool)

(declare-fun isEmptyExpr!827 (Regex!14893) Bool)

(assert (=> b!5272208 (= e!3278796 (isEmptyExpr!827 lt!2156896))))

(declare-fun b!5272209 () Bool)

(assert (=> b!5272209 (= e!3278796 e!3278798)))

(declare-fun c!913291 () Bool)

(assert (=> b!5272209 (= c!913291 (isEmpty!32804 (tail!10400 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun b!5272210 () Bool)

(assert (=> b!5272210 (= e!3278800 (Concat!23738 (h!67303 (exprs!4777 (h!67304 zl!343))) (generalisedConcat!562 (t!374174 (exprs!4777 (h!67304 zl!343))))))))

(assert (= (and d!1696582 res!2236516) b!5272201))

(assert (= (and d!1696582 c!913293) b!5272203))

(assert (= (and d!1696582 (not c!913293)) b!5272204))

(assert (= (and b!5272204 c!913294) b!5272210))

(assert (= (and b!5272204 (not c!913294)) b!5272206))

(assert (= (and d!1696582 res!2236515) b!5272205))

(assert (= (and b!5272205 c!913292) b!5272208))

(assert (= (and b!5272205 (not c!913292)) b!5272209))

(assert (= (and b!5272209 c!913291) b!5272207))

(assert (= (and b!5272209 (not c!913291)) b!5272202))

(assert (=> b!5272201 m!6310646))

(declare-fun m!6311102 () Bool)

(assert (=> d!1696582 m!6311102))

(declare-fun m!6311104 () Bool)

(assert (=> d!1696582 m!6311104))

(declare-fun m!6311106 () Bool)

(assert (=> b!5272205 m!6311106))

(declare-fun m!6311108 () Bool)

(assert (=> b!5272202 m!6311108))

(declare-fun m!6311110 () Bool)

(assert (=> b!5272208 m!6311110))

(declare-fun m!6311112 () Bool)

(assert (=> b!5272207 m!6311112))

(declare-fun m!6311114 () Bool)

(assert (=> b!5272210 m!6311114))

(declare-fun m!6311116 () Bool)

(assert (=> b!5272209 m!6311116))

(assert (=> b!5272209 m!6311116))

(declare-fun m!6311118 () Bool)

(assert (=> b!5272209 m!6311118))

(assert (=> b!5271511 d!1696582))

(declare-fun b!5272229 () Bool)

(declare-fun e!3278814 () Bool)

(assert (=> b!5272229 (= e!3278814 (matchR!7078 (regTwo!30298 r!7292) s!2326))))

(declare-fun b!5272230 () Bool)

(declare-fun e!3278816 () Bool)

(declare-fun lt!2156904 () Option!15004)

(declare-fun ++!13272 (List!60978 List!60978) List!60978)

(declare-fun get!20924 (Option!15004) tuple2!64184)

(assert (=> b!5272230 (= e!3278816 (= (++!13272 (_1!35395 (get!20924 lt!2156904)) (_2!35395 (get!20924 lt!2156904))) s!2326))))

(declare-fun d!1696584 () Bool)

(declare-fun e!3278815 () Bool)

(assert (=> d!1696584 e!3278815))

(declare-fun res!2236527 () Bool)

(assert (=> d!1696584 (=> res!2236527 e!3278815)))

(assert (=> d!1696584 (= res!2236527 e!3278816)))

(declare-fun res!2236531 () Bool)

(assert (=> d!1696584 (=> (not res!2236531) (not e!3278816))))

(assert (=> d!1696584 (= res!2236531 (isDefined!11707 lt!2156904))))

(declare-fun e!3278812 () Option!15004)

(assert (=> d!1696584 (= lt!2156904 e!3278812)))

(declare-fun c!913300 () Bool)

(assert (=> d!1696584 (= c!913300 e!3278814)))

(declare-fun res!2236528 () Bool)

(assert (=> d!1696584 (=> (not res!2236528) (not e!3278814))))

(assert (=> d!1696584 (= res!2236528 (matchR!7078 (regOne!30298 r!7292) Nil!60854))))

(assert (=> d!1696584 (validRegex!6629 (regOne!30298 r!7292))))

(assert (=> d!1696584 (= (findConcatSeparation!1418 (regOne!30298 r!7292) (regTwo!30298 r!7292) Nil!60854 s!2326 s!2326) lt!2156904)))

(declare-fun b!5272231 () Bool)

(declare-fun lt!2156903 () Unit!153090)

(declare-fun lt!2156905 () Unit!153090)

(assert (=> b!5272231 (= lt!2156903 lt!2156905)))

(assert (=> b!5272231 (= (++!13272 (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854)) (t!374173 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1687 (List!60978 C!30056 List!60978 List!60978) Unit!153090)

(assert (=> b!5272231 (= lt!2156905 (lemmaMoveElementToOtherListKeepsConcatEq!1687 Nil!60854 (h!67302 s!2326) (t!374173 s!2326) s!2326))))

(declare-fun e!3278813 () Option!15004)

(assert (=> b!5272231 (= e!3278813 (findConcatSeparation!1418 (regOne!30298 r!7292) (regTwo!30298 r!7292) (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854)) (t!374173 s!2326) s!2326))))

(declare-fun b!5272232 () Bool)

(assert (=> b!5272232 (= e!3278815 (not (isDefined!11707 lt!2156904)))))

(declare-fun b!5272233 () Bool)

(assert (=> b!5272233 (= e!3278812 (Some!15003 (tuple2!64185 Nil!60854 s!2326)))))

(declare-fun b!5272234 () Bool)

(declare-fun res!2236530 () Bool)

(assert (=> b!5272234 (=> (not res!2236530) (not e!3278816))))

(assert (=> b!5272234 (= res!2236530 (matchR!7078 (regTwo!30298 r!7292) (_2!35395 (get!20924 lt!2156904))))))

(declare-fun b!5272235 () Bool)

(assert (=> b!5272235 (= e!3278812 e!3278813)))

(declare-fun c!913299 () Bool)

(assert (=> b!5272235 (= c!913299 ((_ is Nil!60854) s!2326))))

(declare-fun b!5272236 () Bool)

(assert (=> b!5272236 (= e!3278813 None!15003)))

(declare-fun b!5272237 () Bool)

(declare-fun res!2236529 () Bool)

(assert (=> b!5272237 (=> (not res!2236529) (not e!3278816))))

(assert (=> b!5272237 (= res!2236529 (matchR!7078 (regOne!30298 r!7292) (_1!35395 (get!20924 lt!2156904))))))

(assert (= (and d!1696584 res!2236528) b!5272229))

(assert (= (and d!1696584 c!913300) b!5272233))

(assert (= (and d!1696584 (not c!913300)) b!5272235))

(assert (= (and b!5272235 c!913299) b!5272236))

(assert (= (and b!5272235 (not c!913299)) b!5272231))

(assert (= (and d!1696584 res!2236531) b!5272237))

(assert (= (and b!5272237 res!2236529) b!5272234))

(assert (= (and b!5272234 res!2236530) b!5272230))

(assert (= (and d!1696584 (not res!2236527)) b!5272232))

(declare-fun m!6311120 () Bool)

(assert (=> b!5272234 m!6311120))

(declare-fun m!6311122 () Bool)

(assert (=> b!5272234 m!6311122))

(declare-fun m!6311124 () Bool)

(assert (=> b!5272231 m!6311124))

(assert (=> b!5272231 m!6311124))

(declare-fun m!6311126 () Bool)

(assert (=> b!5272231 m!6311126))

(declare-fun m!6311128 () Bool)

(assert (=> b!5272231 m!6311128))

(assert (=> b!5272231 m!6311124))

(declare-fun m!6311130 () Bool)

(assert (=> b!5272231 m!6311130))

(declare-fun m!6311132 () Bool)

(assert (=> d!1696584 m!6311132))

(declare-fun m!6311134 () Bool)

(assert (=> d!1696584 m!6311134))

(declare-fun m!6311136 () Bool)

(assert (=> d!1696584 m!6311136))

(assert (=> b!5272237 m!6311120))

(declare-fun m!6311138 () Bool)

(assert (=> b!5272237 m!6311138))

(assert (=> b!5272232 m!6311132))

(declare-fun m!6311140 () Bool)

(assert (=> b!5272229 m!6311140))

(assert (=> b!5272230 m!6311120))

(declare-fun m!6311142 () Bool)

(assert (=> b!5272230 m!6311142))

(assert (=> b!5271490 d!1696584))

(declare-fun d!1696586 () Bool)

(declare-fun choose!39342 (Int) Bool)

(assert (=> d!1696586 (= (Exists!2074 lambda!265970) (choose!39342 lambda!265970))))

(declare-fun bs!1221493 () Bool)

(assert (= bs!1221493 d!1696586))

(declare-fun m!6311144 () Bool)

(assert (=> bs!1221493 m!6311144))

(assert (=> b!5271490 d!1696586))

(declare-fun d!1696588 () Bool)

(assert (=> d!1696588 (= (Exists!2074 lambda!265969) (choose!39342 lambda!265969))))

(declare-fun bs!1221494 () Bool)

(assert (= bs!1221494 d!1696588))

(declare-fun m!6311146 () Bool)

(assert (=> bs!1221494 m!6311146))

(assert (=> b!5271490 d!1696588))

(declare-fun bs!1221495 () Bool)

(declare-fun d!1696590 () Bool)

(assert (= bs!1221495 (and d!1696590 b!5271490)))

(declare-fun lambda!266027 () Int)

(assert (=> bs!1221495 (= lambda!266027 lambda!265969)))

(assert (=> bs!1221495 (not (= lambda!266027 lambda!265970))))

(declare-fun bs!1221496 () Bool)

(assert (= bs!1221496 (and d!1696590 b!5272100)))

(assert (=> bs!1221496 (not (= lambda!266027 lambda!266014))))

(declare-fun bs!1221497 () Bool)

(assert (= bs!1221497 (and d!1696590 b!5272093)))

(assert (=> bs!1221497 (not (= lambda!266027 lambda!266015))))

(assert (=> d!1696590 true))

(assert (=> d!1696590 true))

(assert (=> d!1696590 true))

(assert (=> d!1696590 (= (isDefined!11707 (findConcatSeparation!1418 (regOne!30298 r!7292) (regTwo!30298 r!7292) Nil!60854 s!2326 s!2326)) (Exists!2074 lambda!266027))))

(declare-fun lt!2156908 () Unit!153090)

(declare-fun choose!39343 (Regex!14893 Regex!14893 List!60978) Unit!153090)

(assert (=> d!1696590 (= lt!2156908 (choose!39343 (regOne!30298 r!7292) (regTwo!30298 r!7292) s!2326))))

(assert (=> d!1696590 (validRegex!6629 (regOne!30298 r!7292))))

(assert (=> d!1696590 (= (lemmaFindConcatSeparationEquivalentToExists!1182 (regOne!30298 r!7292) (regTwo!30298 r!7292) s!2326) lt!2156908)))

(declare-fun bs!1221498 () Bool)

(assert (= bs!1221498 d!1696590))

(assert (=> bs!1221498 m!6311136))

(assert (=> bs!1221498 m!6310580))

(declare-fun m!6311148 () Bool)

(assert (=> bs!1221498 m!6311148))

(declare-fun m!6311150 () Bool)

(assert (=> bs!1221498 m!6311150))

(assert (=> bs!1221498 m!6310580))

(assert (=> bs!1221498 m!6310582))

(assert (=> b!5271490 d!1696590))

(declare-fun bs!1221499 () Bool)

(declare-fun d!1696592 () Bool)

(assert (= bs!1221499 (and d!1696592 b!5272100)))

(declare-fun lambda!266032 () Int)

(assert (=> bs!1221499 (not (= lambda!266032 lambda!266014))))

(declare-fun bs!1221500 () Bool)

(assert (= bs!1221500 (and d!1696592 d!1696590)))

(assert (=> bs!1221500 (= lambda!266032 lambda!266027)))

(declare-fun bs!1221501 () Bool)

(assert (= bs!1221501 (and d!1696592 b!5272093)))

(assert (=> bs!1221501 (not (= lambda!266032 lambda!266015))))

(declare-fun bs!1221502 () Bool)

(assert (= bs!1221502 (and d!1696592 b!5271490)))

(assert (=> bs!1221502 (not (= lambda!266032 lambda!265970))))

(assert (=> bs!1221502 (= lambda!266032 lambda!265969)))

(assert (=> d!1696592 true))

(assert (=> d!1696592 true))

(assert (=> d!1696592 true))

(declare-fun lambda!266033 () Int)

(assert (=> bs!1221499 (not (= lambda!266033 lambda!266014))))

(assert (=> bs!1221500 (not (= lambda!266033 lambda!266027))))

(assert (=> bs!1221501 (= lambda!266033 lambda!266015)))

(assert (=> bs!1221502 (= lambda!266033 lambda!265970)))

(assert (=> bs!1221502 (not (= lambda!266033 lambda!265969))))

(declare-fun bs!1221503 () Bool)

(assert (= bs!1221503 d!1696592))

(assert (=> bs!1221503 (not (= lambda!266033 lambda!266032))))

(assert (=> d!1696592 true))

(assert (=> d!1696592 true))

(assert (=> d!1696592 true))

(assert (=> d!1696592 (= (Exists!2074 lambda!266032) (Exists!2074 lambda!266033))))

(declare-fun lt!2156911 () Unit!153090)

(declare-fun choose!39344 (Regex!14893 Regex!14893 List!60978) Unit!153090)

(assert (=> d!1696592 (= lt!2156911 (choose!39344 (regOne!30298 r!7292) (regTwo!30298 r!7292) s!2326))))

(assert (=> d!1696592 (validRegex!6629 (regOne!30298 r!7292))))

(assert (=> d!1696592 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!728 (regOne!30298 r!7292) (regTwo!30298 r!7292) s!2326) lt!2156911)))

(declare-fun m!6311152 () Bool)

(assert (=> bs!1221503 m!6311152))

(declare-fun m!6311154 () Bool)

(assert (=> bs!1221503 m!6311154))

(declare-fun m!6311156 () Bool)

(assert (=> bs!1221503 m!6311156))

(assert (=> bs!1221503 m!6311136))

(assert (=> b!5271490 d!1696592))

(declare-fun d!1696594 () Bool)

(declare-fun isEmpty!32808 (Option!15004) Bool)

(assert (=> d!1696594 (= (isDefined!11707 (findConcatSeparation!1418 (regOne!30298 r!7292) (regTwo!30298 r!7292) Nil!60854 s!2326 s!2326)) (not (isEmpty!32808 (findConcatSeparation!1418 (regOne!30298 r!7292) (regTwo!30298 r!7292) Nil!60854 s!2326 s!2326))))))

(declare-fun bs!1221504 () Bool)

(assert (= bs!1221504 d!1696594))

(assert (=> bs!1221504 m!6310580))

(declare-fun m!6311158 () Bool)

(assert (=> bs!1221504 m!6311158))

(assert (=> b!5271490 d!1696594))

(declare-fun b!5272250 () Bool)

(declare-fun e!3278823 () Bool)

(declare-fun e!3278825 () Bool)

(assert (=> b!5272250 (= e!3278823 e!3278825)))

(declare-fun res!2236548 () Bool)

(assert (=> b!5272250 (=> (not res!2236548) (not e!3278825))))

(declare-fun call!374742 () Bool)

(assert (=> b!5272250 (= res!2236548 call!374742)))

(declare-fun b!5272251 () Bool)

(declare-fun e!3278828 () Bool)

(declare-fun e!3278827 () Bool)

(assert (=> b!5272251 (= e!3278828 e!3278827)))

(declare-fun c!913302 () Bool)

(assert (=> b!5272251 (= c!913302 ((_ is Star!14893) r!7292))))

(declare-fun bm!374735 () Bool)

(declare-fun call!374741 () Bool)

(declare-fun call!374740 () Bool)

(assert (=> bm!374735 (= call!374741 call!374740)))

(declare-fun bm!374736 () Bool)

(declare-fun c!913301 () Bool)

(assert (=> bm!374736 (= call!374742 (validRegex!6629 (ite c!913301 (regOne!30299 r!7292) (regOne!30298 r!7292))))))

(declare-fun b!5272252 () Bool)

(declare-fun res!2236546 () Bool)

(declare-fun e!3278829 () Bool)

(assert (=> b!5272252 (=> (not res!2236546) (not e!3278829))))

(assert (=> b!5272252 (= res!2236546 call!374742)))

(declare-fun e!3278824 () Bool)

(assert (=> b!5272252 (= e!3278824 e!3278829)))

(declare-fun d!1696596 () Bool)

(declare-fun res!2236544 () Bool)

(assert (=> d!1696596 (=> res!2236544 e!3278828)))

(assert (=> d!1696596 (= res!2236544 ((_ is ElementMatch!14893) r!7292))))

(assert (=> d!1696596 (= (validRegex!6629 r!7292) e!3278828)))

(declare-fun bm!374737 () Bool)

(assert (=> bm!374737 (= call!374740 (validRegex!6629 (ite c!913302 (reg!15222 r!7292) (ite c!913301 (regTwo!30299 r!7292) (regTwo!30298 r!7292)))))))

(declare-fun b!5272253 () Bool)

(declare-fun res!2236545 () Bool)

(assert (=> b!5272253 (=> res!2236545 e!3278823)))

(assert (=> b!5272253 (= res!2236545 (not ((_ is Concat!23738) r!7292)))))

(assert (=> b!5272253 (= e!3278824 e!3278823)))

(declare-fun b!5272254 () Bool)

(declare-fun e!3278826 () Bool)

(assert (=> b!5272254 (= e!3278826 call!374740)))

(declare-fun b!5272255 () Bool)

(assert (=> b!5272255 (= e!3278829 call!374741)))

(declare-fun b!5272256 () Bool)

(assert (=> b!5272256 (= e!3278827 e!3278824)))

(assert (=> b!5272256 (= c!913301 ((_ is Union!14893) r!7292))))

(declare-fun b!5272257 () Bool)

(assert (=> b!5272257 (= e!3278827 e!3278826)))

(declare-fun res!2236547 () Bool)

(assert (=> b!5272257 (= res!2236547 (not (nullable!5062 (reg!15222 r!7292))))))

(assert (=> b!5272257 (=> (not res!2236547) (not e!3278826))))

(declare-fun b!5272258 () Bool)

(assert (=> b!5272258 (= e!3278825 call!374741)))

(assert (= (and d!1696596 (not res!2236544)) b!5272251))

(assert (= (and b!5272251 c!913302) b!5272257))

(assert (= (and b!5272251 (not c!913302)) b!5272256))

(assert (= (and b!5272257 res!2236547) b!5272254))

(assert (= (and b!5272256 c!913301) b!5272252))

(assert (= (and b!5272256 (not c!913301)) b!5272253))

(assert (= (and b!5272252 res!2236546) b!5272255))

(assert (= (and b!5272253 (not res!2236545)) b!5272250))

(assert (= (and b!5272250 res!2236548) b!5272258))

(assert (= (or b!5272255 b!5272258) bm!374735))

(assert (= (or b!5272252 b!5272250) bm!374736))

(assert (= (or b!5272254 bm!374735) bm!374737))

(declare-fun m!6311160 () Bool)

(assert (=> bm!374736 m!6311160))

(declare-fun m!6311162 () Bool)

(assert (=> bm!374737 m!6311162))

(declare-fun m!6311164 () Bool)

(assert (=> b!5272257 m!6311164))

(assert (=> start!556706 d!1696596))

(declare-fun d!1696598 () Bool)

(assert (=> d!1696598 (= (nullable!5062 (regOne!30298 (regOne!30298 r!7292))) (nullableFct!1444 (regOne!30298 (regOne!30298 r!7292))))))

(declare-fun bs!1221505 () Bool)

(assert (= bs!1221505 d!1696598))

(declare-fun m!6311166 () Bool)

(assert (=> bs!1221505 m!6311166))

(assert (=> b!5271499 d!1696598))

(declare-fun d!1696600 () Bool)

(declare-fun e!3278830 () Bool)

(assert (=> d!1696600 (= (matchZipper!1137 ((_ map or) lt!2156813 lt!2156802) (t!374173 s!2326)) e!3278830)))

(declare-fun res!2236549 () Bool)

(assert (=> d!1696600 (=> res!2236549 e!3278830)))

(assert (=> d!1696600 (= res!2236549 (matchZipper!1137 lt!2156813 (t!374173 s!2326)))))

(declare-fun lt!2156912 () Unit!153090)

(assert (=> d!1696600 (= lt!2156912 (choose!39340 lt!2156813 lt!2156802 (t!374173 s!2326)))))

(assert (=> d!1696600 (= (lemmaZipperConcatMatchesSameAsBothZippers!130 lt!2156813 lt!2156802 (t!374173 s!2326)) lt!2156912)))

(declare-fun b!5272259 () Bool)

(assert (=> b!5272259 (= e!3278830 (matchZipper!1137 lt!2156802 (t!374173 s!2326)))))

(assert (= (and d!1696600 (not res!2236549)) b!5272259))

(assert (=> d!1696600 m!6310596))

(assert (=> d!1696600 m!6310594))

(declare-fun m!6311168 () Bool)

(assert (=> d!1696600 m!6311168))

(assert (=> b!5272259 m!6310606))

(assert (=> b!5271491 d!1696600))

(assert (=> b!5271491 d!1696534))

(declare-fun d!1696602 () Bool)

(declare-fun c!913303 () Bool)

(assert (=> d!1696602 (= c!913303 (isEmpty!32806 (t!374173 s!2326)))))

(declare-fun e!3278831 () Bool)

(assert (=> d!1696602 (= (matchZipper!1137 ((_ map or) lt!2156813 lt!2156802) (t!374173 s!2326)) e!3278831)))

(declare-fun b!5272260 () Bool)

(assert (=> b!5272260 (= e!3278831 (nullableZipper!1292 ((_ map or) lt!2156813 lt!2156802)))))

(declare-fun b!5272261 () Bool)

(assert (=> b!5272261 (= e!3278831 (matchZipper!1137 (derivationStepZipper!1136 ((_ map or) lt!2156813 lt!2156802) (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))))))

(assert (= (and d!1696602 c!913303) b!5272260))

(assert (= (and d!1696602 (not c!913303)) b!5272261))

(assert (=> d!1696602 m!6310790))

(declare-fun m!6311170 () Bool)

(assert (=> b!5272260 m!6311170))

(assert (=> b!5272261 m!6310794))

(assert (=> b!5272261 m!6310794))

(declare-fun m!6311172 () Bool)

(assert (=> b!5272261 m!6311172))

(assert (=> b!5272261 m!6310798))

(assert (=> b!5272261 m!6311172))

(assert (=> b!5272261 m!6310798))

(declare-fun m!6311174 () Bool)

(assert (=> b!5272261 m!6311174))

(assert (=> b!5271491 d!1696602))

(declare-fun b!5272266 () Bool)

(declare-fun e!3278834 () Bool)

(declare-fun tp!1473404 () Bool)

(declare-fun tp!1473405 () Bool)

(assert (=> b!5272266 (= e!3278834 (and tp!1473404 tp!1473405))))

(assert (=> b!5271493 (= tp!1473334 e!3278834)))

(assert (= (and b!5271493 ((_ is Cons!60855) (exprs!4777 setElem!33749))) b!5272266))

(declare-fun condSetEmpty!33755 () Bool)

(assert (=> setNonEmpty!33749 (= condSetEmpty!33755 (= setRest!33749 ((as const (Array Context!8554 Bool)) false)))))

(declare-fun setRes!33755 () Bool)

(assert (=> setNonEmpty!33749 (= tp!1473339 setRes!33755)))

(declare-fun setIsEmpty!33755 () Bool)

(assert (=> setIsEmpty!33755 setRes!33755))

(declare-fun e!3278837 () Bool)

(declare-fun setElem!33755 () Context!8554)

(declare-fun tp!1473410 () Bool)

(declare-fun setNonEmpty!33755 () Bool)

(assert (=> setNonEmpty!33755 (= setRes!33755 (and tp!1473410 (inv!80479 setElem!33755) e!3278837))))

(declare-fun setRest!33755 () (InoxSet Context!8554))

(assert (=> setNonEmpty!33755 (= setRest!33749 ((_ map or) (store ((as const (Array Context!8554 Bool)) false) setElem!33755 true) setRest!33755))))

(declare-fun b!5272271 () Bool)

(declare-fun tp!1473411 () Bool)

(assert (=> b!5272271 (= e!3278837 tp!1473411)))

(assert (= (and setNonEmpty!33749 condSetEmpty!33755) setIsEmpty!33755))

(assert (= (and setNonEmpty!33749 (not condSetEmpty!33755)) setNonEmpty!33755))

(assert (= setNonEmpty!33755 b!5272271))

(declare-fun m!6311176 () Bool)

(assert (=> setNonEmpty!33755 m!6311176))

(declare-fun b!5272284 () Bool)

(declare-fun e!3278840 () Bool)

(declare-fun tp!1473423 () Bool)

(assert (=> b!5272284 (= e!3278840 tp!1473423)))

(declare-fun b!5272283 () Bool)

(declare-fun tp!1473425 () Bool)

(declare-fun tp!1473422 () Bool)

(assert (=> b!5272283 (= e!3278840 (and tp!1473425 tp!1473422))))

(assert (=> b!5271494 (= tp!1473341 e!3278840)))

(declare-fun b!5272285 () Bool)

(declare-fun tp!1473424 () Bool)

(declare-fun tp!1473426 () Bool)

(assert (=> b!5272285 (= e!3278840 (and tp!1473424 tp!1473426))))

(declare-fun b!5272282 () Bool)

(assert (=> b!5272282 (= e!3278840 tp_is_empty!39039)))

(assert (= (and b!5271494 ((_ is ElementMatch!14893) (reg!15222 r!7292))) b!5272282))

(assert (= (and b!5271494 ((_ is Concat!23738) (reg!15222 r!7292))) b!5272283))

(assert (= (and b!5271494 ((_ is Star!14893) (reg!15222 r!7292))) b!5272284))

(assert (= (and b!5271494 ((_ is Union!14893) (reg!15222 r!7292))) b!5272285))

(declare-fun b!5272290 () Bool)

(declare-fun e!3278843 () Bool)

(declare-fun tp!1473429 () Bool)

(assert (=> b!5272290 (= e!3278843 (and tp_is_empty!39039 tp!1473429))))

(assert (=> b!5271502 (= tp!1473337 e!3278843)))

(assert (= (and b!5271502 ((_ is Cons!60854) (t!374173 s!2326))) b!5272290))

(declare-fun b!5272291 () Bool)

(declare-fun e!3278844 () Bool)

(declare-fun tp!1473430 () Bool)

(declare-fun tp!1473431 () Bool)

(assert (=> b!5272291 (= e!3278844 (and tp!1473430 tp!1473431))))

(assert (=> b!5271516 (= tp!1473336 e!3278844)))

(assert (= (and b!5271516 ((_ is Cons!60855) (exprs!4777 (h!67304 zl!343)))) b!5272291))

(declare-fun b!5272294 () Bool)

(declare-fun e!3278845 () Bool)

(declare-fun tp!1473433 () Bool)

(assert (=> b!5272294 (= e!3278845 tp!1473433)))

(declare-fun b!5272293 () Bool)

(declare-fun tp!1473435 () Bool)

(declare-fun tp!1473432 () Bool)

(assert (=> b!5272293 (= e!3278845 (and tp!1473435 tp!1473432))))

(assert (=> b!5271501 (= tp!1473333 e!3278845)))

(declare-fun b!5272295 () Bool)

(declare-fun tp!1473434 () Bool)

(declare-fun tp!1473436 () Bool)

(assert (=> b!5272295 (= e!3278845 (and tp!1473434 tp!1473436))))

(declare-fun b!5272292 () Bool)

(assert (=> b!5272292 (= e!3278845 tp_is_empty!39039)))

(assert (= (and b!5271501 ((_ is ElementMatch!14893) (regOne!30298 r!7292))) b!5272292))

(assert (= (and b!5271501 ((_ is Concat!23738) (regOne!30298 r!7292))) b!5272293))

(assert (= (and b!5271501 ((_ is Star!14893) (regOne!30298 r!7292))) b!5272294))

(assert (= (and b!5271501 ((_ is Union!14893) (regOne!30298 r!7292))) b!5272295))

(declare-fun b!5272298 () Bool)

(declare-fun e!3278846 () Bool)

(declare-fun tp!1473438 () Bool)

(assert (=> b!5272298 (= e!3278846 tp!1473438)))

(declare-fun b!5272297 () Bool)

(declare-fun tp!1473440 () Bool)

(declare-fun tp!1473437 () Bool)

(assert (=> b!5272297 (= e!3278846 (and tp!1473440 tp!1473437))))

(assert (=> b!5271501 (= tp!1473335 e!3278846)))

(declare-fun b!5272299 () Bool)

(declare-fun tp!1473439 () Bool)

(declare-fun tp!1473441 () Bool)

(assert (=> b!5272299 (= e!3278846 (and tp!1473439 tp!1473441))))

(declare-fun b!5272296 () Bool)

(assert (=> b!5272296 (= e!3278846 tp_is_empty!39039)))

(assert (= (and b!5271501 ((_ is ElementMatch!14893) (regTwo!30298 r!7292))) b!5272296))

(assert (= (and b!5271501 ((_ is Concat!23738) (regTwo!30298 r!7292))) b!5272297))

(assert (= (and b!5271501 ((_ is Star!14893) (regTwo!30298 r!7292))) b!5272298))

(assert (= (and b!5271501 ((_ is Union!14893) (regTwo!30298 r!7292))) b!5272299))

(declare-fun b!5272302 () Bool)

(declare-fun e!3278847 () Bool)

(declare-fun tp!1473443 () Bool)

(assert (=> b!5272302 (= e!3278847 tp!1473443)))

(declare-fun b!5272301 () Bool)

(declare-fun tp!1473445 () Bool)

(declare-fun tp!1473442 () Bool)

(assert (=> b!5272301 (= e!3278847 (and tp!1473445 tp!1473442))))

(assert (=> b!5271510 (= tp!1473332 e!3278847)))

(declare-fun b!5272303 () Bool)

(declare-fun tp!1473444 () Bool)

(declare-fun tp!1473446 () Bool)

(assert (=> b!5272303 (= e!3278847 (and tp!1473444 tp!1473446))))

(declare-fun b!5272300 () Bool)

(assert (=> b!5272300 (= e!3278847 tp_is_empty!39039)))

(assert (= (and b!5271510 ((_ is ElementMatch!14893) (regOne!30299 r!7292))) b!5272300))

(assert (= (and b!5271510 ((_ is Concat!23738) (regOne!30299 r!7292))) b!5272301))

(assert (= (and b!5271510 ((_ is Star!14893) (regOne!30299 r!7292))) b!5272302))

(assert (= (and b!5271510 ((_ is Union!14893) (regOne!30299 r!7292))) b!5272303))

(declare-fun b!5272306 () Bool)

(declare-fun e!3278848 () Bool)

(declare-fun tp!1473448 () Bool)

(assert (=> b!5272306 (= e!3278848 tp!1473448)))

(declare-fun b!5272305 () Bool)

(declare-fun tp!1473450 () Bool)

(declare-fun tp!1473447 () Bool)

(assert (=> b!5272305 (= e!3278848 (and tp!1473450 tp!1473447))))

(assert (=> b!5271510 (= tp!1473340 e!3278848)))

(declare-fun b!5272307 () Bool)

(declare-fun tp!1473449 () Bool)

(declare-fun tp!1473451 () Bool)

(assert (=> b!5272307 (= e!3278848 (and tp!1473449 tp!1473451))))

(declare-fun b!5272304 () Bool)

(assert (=> b!5272304 (= e!3278848 tp_is_empty!39039)))

(assert (= (and b!5271510 ((_ is ElementMatch!14893) (regTwo!30299 r!7292))) b!5272304))

(assert (= (and b!5271510 ((_ is Concat!23738) (regTwo!30299 r!7292))) b!5272305))

(assert (= (and b!5271510 ((_ is Star!14893) (regTwo!30299 r!7292))) b!5272306))

(assert (= (and b!5271510 ((_ is Union!14893) (regTwo!30299 r!7292))) b!5272307))

(declare-fun b!5272315 () Bool)

(declare-fun e!3278854 () Bool)

(declare-fun tp!1473456 () Bool)

(assert (=> b!5272315 (= e!3278854 tp!1473456)))

(declare-fun tp!1473457 () Bool)

(declare-fun b!5272314 () Bool)

(declare-fun e!3278853 () Bool)

(assert (=> b!5272314 (= e!3278853 (and (inv!80479 (h!67304 (t!374175 zl!343))) e!3278854 tp!1473457))))

(assert (=> b!5271505 (= tp!1473338 e!3278853)))

(assert (= b!5272314 b!5272315))

(assert (= (and b!5271505 ((_ is Cons!60856) (t!374175 zl!343))) b!5272314))

(declare-fun m!6311178 () Bool)

(assert (=> b!5272314 m!6311178))

(declare-fun b_lambda!203351 () Bool)

(assert (= b_lambda!203349 (or b!5271503 b_lambda!203351)))

(declare-fun bs!1221506 () Bool)

(declare-fun d!1696604 () Bool)

(assert (= bs!1221506 (and d!1696604 b!5271503)))

(assert (=> bs!1221506 (= (dynLambda!24047 lambda!265971 (h!67304 zl!343)) (derivationStepZipperUp!265 (h!67304 zl!343) (h!67302 s!2326)))))

(assert (=> bs!1221506 m!6310630))

(assert (=> d!1696558 d!1696604))

(declare-fun b_lambda!203353 () Bool)

(assert (= b_lambda!203347 (or b!5271503 b_lambda!203353)))

(declare-fun bs!1221507 () Bool)

(declare-fun d!1696606 () Bool)

(assert (= bs!1221507 (and d!1696606 b!5271503)))

(assert (=> bs!1221507 (= (dynLambda!24047 lambda!265971 lt!2156808) (derivationStepZipperUp!265 lt!2156808 (h!67302 s!2326)))))

(assert (=> bs!1221507 m!6310564))

(assert (=> d!1696550 d!1696606))

(declare-fun b_lambda!203355 () Bool)

(assert (= b_lambda!203345 (or b!5271503 b_lambda!203355)))

(declare-fun bs!1221508 () Bool)

(declare-fun d!1696608 () Bool)

(assert (= bs!1221508 (and d!1696608 b!5271503)))

(assert (=> bs!1221508 (= (dynLambda!24047 lambda!265971 lt!2156820) (derivationStepZipperUp!265 lt!2156820 (h!67302 s!2326)))))

(assert (=> bs!1221508 m!6310574))

(assert (=> d!1696518 d!1696608))

(check-sat (not b!5272293) (not b!5272257) (not b!5272091) (not d!1696550) (not bm!374737) (not b!5272165) (not b!5272229) (not d!1696592) (not b!5272307) (not bm!374685) (not d!1696600) (not b!5272171) (not b!5272132) (not d!1696506) (not b!5272023) (not bm!374716) (not b!5272012) (not b!5272136) (not bm!374715) (not b!5272299) (not b!5272232) (not b!5272266) (not b!5272305) (not b!5272202) (not bm!374736) (not b!5272231) (not bs!1221508) (not bm!374717) (not b!5272143) (not b!5272298) (not b!5272035) (not b!5271875) (not b!5272018) (not b!5272040) (not b!5272261) (not b!5272210) (not d!1696466) (not b!5272295) (not b!5272260) (not b_lambda!203353) (not d!1696586) (not b!5272207) (not b!5272290) (not bm!374699) (not d!1696530) (not b!5272297) (not d!1696580) (not d!1696534) (not d!1696584) (not bs!1221506) (not d!1696536) (not bm!374725) (not bm!374734) (not d!1696576) tp_is_empty!39039 (not b!5272205) (not bm!374691) (not d!1696558) (not bm!374730) (not b!5272034) (not b!5272051) (not d!1696546) (not b!5272234) (not d!1696542) (not b!5272271) (not d!1696518) (not b!5272285) (not b!5272028) (not b!5272294) (not b!5272027) (not b!5271864) (not b!5272306) (not bm!374731) (not b!5272168) (not b_lambda!203351) (not b!5272315) (not bs!1221507) (not d!1696570) (not b!5272230) (not b!5272142) (not b!5272179) (not b!5272056) (not b!5272170) (not d!1696564) (not bm!374683) (not b!5272031) (not b!5272166) (not b!5272284) (not b!5272291) (not d!1696548) (not b!5272139) (not b!5272022) (not d!1696594) (not b!5271749) (not b!5272259) (not setNonEmpty!33755) (not d!1696532) (not b!5272055) (not bm!374724) (not bm!374686) (not b!5272302) (not b!5272314) (not b!5272209) (not b!5272097) (not d!1696540) (not bm!374721) (not d!1696572) (not b!5272201) (not b!5272172) (not bm!374700) (not b!5272026) (not b!5271748) (not d!1696602) (not b!5272144) (not b!5272208) (not b!5272283) (not b_lambda!203355) (not b!5272013) (not d!1696598) (not bm!374723) (not d!1696590) (not b!5272024) (not b!5272303) (not b!5272025) (not d!1696552) (not b!5271920) (not d!1696578) (not bm!374689) (not b!5272169) (not b!5272237) (not bm!374680) (not d!1696588) (not b!5272017) (not b!5272050) (not d!1696456) (not b!5272301) (not b!5272140) (not d!1696582) (not d!1696538) (not b!5272130) (not bm!374718) (not d!1696554))
(check-sat)
(get-model)

(declare-fun b!5272606 () Bool)

(declare-fun e!3279036 () (InoxSet Context!8554))

(assert (=> b!5272606 (= e!3279036 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5272607 () Bool)

(declare-fun call!374815 () (InoxSet Context!8554))

(assert (=> b!5272607 (= e!3279036 call!374815)))

(declare-fun bm!374810 () Bool)

(assert (=> bm!374810 (= call!374815 (derivationStepZipperDown!341 (h!67303 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343)))))) (Context!8555 (t!374174 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343))))))) (h!67302 s!2326)))))

(declare-fun b!5272608 () Bool)

(declare-fun e!3279035 () (InoxSet Context!8554))

(assert (=> b!5272608 (= e!3279035 ((_ map or) call!374815 (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343))))))) (h!67302 s!2326))))))

(declare-fun b!5272609 () Bool)

(declare-fun e!3279034 () Bool)

(assert (=> b!5272609 (= e!3279034 (nullable!5062 (h!67303 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343))))))))))

(declare-fun d!1696744 () Bool)

(declare-fun c!913392 () Bool)

(assert (=> d!1696744 (= c!913392 e!3279034)))

(declare-fun res!2236670 () Bool)

(assert (=> d!1696744 (=> (not res!2236670) (not e!3279034))))

(assert (=> d!1696744 (= res!2236670 ((_ is Cons!60855) (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343)))))))))

(assert (=> d!1696744 (= (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343)))) (h!67302 s!2326)) e!3279035)))

(declare-fun b!5272610 () Bool)

(assert (=> b!5272610 (= e!3279035 e!3279036)))

(declare-fun c!913391 () Bool)

(assert (=> b!5272610 (= c!913391 ((_ is Cons!60855) (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343)))))))))

(assert (= (and d!1696744 res!2236670) b!5272609))

(assert (= (and d!1696744 c!913392) b!5272608))

(assert (= (and d!1696744 (not c!913392)) b!5272610))

(assert (= (and b!5272610 c!913391) b!5272607))

(assert (= (and b!5272610 (not c!913391)) b!5272606))

(assert (= (or b!5272608 b!5272607) bm!374810))

(declare-fun m!6311472 () Bool)

(assert (=> bm!374810 m!6311472))

(declare-fun m!6311474 () Bool)

(assert (=> b!5272608 m!6311474))

(declare-fun m!6311476 () Bool)

(assert (=> b!5272609 m!6311476))

(assert (=> b!5272050 d!1696744))

(declare-fun d!1696750 () Bool)

(assert (=> d!1696750 true))

(assert (=> d!1696750 true))

(declare-fun res!2236676 () Bool)

(assert (=> d!1696750 (= (choose!39342 lambda!265970) res!2236676)))

(assert (=> d!1696586 d!1696750))

(declare-fun bs!1221563 () Bool)

(declare-fun d!1696754 () Bool)

(assert (= bs!1221563 (and d!1696754 d!1696580)))

(declare-fun lambda!266051 () Int)

(assert (=> bs!1221563 (= lambda!266051 lambda!266021)))

(declare-fun bs!1221564 () Bool)

(assert (= bs!1221564 (and d!1696754 d!1696466)))

(assert (=> bs!1221564 (= lambda!266051 lambda!265989)))

(declare-fun bs!1221565 () Bool)

(assert (= bs!1221565 (and d!1696754 d!1696578)))

(assert (=> bs!1221565 (= lambda!266051 lambda!266018)))

(declare-fun bs!1221566 () Bool)

(assert (= bs!1221566 (and d!1696754 d!1696552)))

(assert (=> bs!1221566 (= lambda!266051 lambda!266009)))

(declare-fun bs!1221569 () Bool)

(assert (= bs!1221569 (and d!1696754 d!1696582)))

(assert (=> bs!1221569 (= lambda!266051 lambda!266024)))

(assert (=> d!1696754 (= (inv!80479 setElem!33755) (forall!14301 (exprs!4777 setElem!33755) lambda!266051))))

(declare-fun bs!1221571 () Bool)

(assert (= bs!1221571 d!1696754))

(declare-fun m!6311480 () Bool)

(assert (=> bs!1221571 m!6311480))

(assert (=> setNonEmpty!33755 d!1696754))

(declare-fun d!1696756 () Bool)

(declare-fun c!913398 () Bool)

(assert (=> d!1696756 (= c!913398 (isEmpty!32806 (tail!10399 (t!374173 s!2326))))))

(declare-fun e!3279045 () Bool)

(assert (=> d!1696756 (= (matchZipper!1137 (derivationStepZipper!1136 lt!2156801 (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))) e!3279045)))

(declare-fun b!5272624 () Bool)

(assert (=> b!5272624 (= e!3279045 (nullableZipper!1292 (derivationStepZipper!1136 lt!2156801 (head!11302 (t!374173 s!2326)))))))

(declare-fun b!5272625 () Bool)

(assert (=> b!5272625 (= e!3279045 (matchZipper!1137 (derivationStepZipper!1136 (derivationStepZipper!1136 lt!2156801 (head!11302 (t!374173 s!2326))) (head!11302 (tail!10399 (t!374173 s!2326)))) (tail!10399 (tail!10399 (t!374173 s!2326)))))))

(assert (= (and d!1696756 c!913398) b!5272624))

(assert (= (and d!1696756 (not c!913398)) b!5272625))

(assert (=> d!1696756 m!6310798))

(declare-fun m!6311482 () Bool)

(assert (=> d!1696756 m!6311482))

(assert (=> b!5272624 m!6310996))

(declare-fun m!6311484 () Bool)

(assert (=> b!5272624 m!6311484))

(assert (=> b!5272625 m!6310798))

(declare-fun m!6311486 () Bool)

(assert (=> b!5272625 m!6311486))

(assert (=> b!5272625 m!6310996))

(assert (=> b!5272625 m!6311486))

(declare-fun m!6311488 () Bool)

(assert (=> b!5272625 m!6311488))

(assert (=> b!5272625 m!6310798))

(declare-fun m!6311490 () Bool)

(assert (=> b!5272625 m!6311490))

(assert (=> b!5272625 m!6311488))

(assert (=> b!5272625 m!6311490))

(declare-fun m!6311492 () Bool)

(assert (=> b!5272625 m!6311492))

(assert (=> b!5272028 d!1696756))

(declare-fun bs!1221576 () Bool)

(declare-fun d!1696758 () Bool)

(assert (= bs!1221576 (and d!1696758 b!5271503)))

(declare-fun lambda!266053 () Int)

(assert (=> bs!1221576 (= (= (head!11302 (t!374173 s!2326)) (h!67302 s!2326)) (= lambda!266053 lambda!265971))))

(declare-fun bs!1221577 () Bool)

(assert (= bs!1221577 (and d!1696758 d!1696506)))

(assert (=> bs!1221577 (= (= (head!11302 (t!374173 s!2326)) (h!67302 s!2326)) (= lambda!266053 lambda!266008))))

(assert (=> d!1696758 true))

(assert (=> d!1696758 (= (derivationStepZipper!1136 lt!2156801 (head!11302 (t!374173 s!2326))) (flatMap!620 lt!2156801 lambda!266053))))

(declare-fun bs!1221578 () Bool)

(assert (= bs!1221578 d!1696758))

(declare-fun m!6311506 () Bool)

(assert (=> bs!1221578 m!6311506))

(assert (=> b!5272028 d!1696758))

(declare-fun d!1696764 () Bool)

(assert (=> d!1696764 (= (head!11302 (t!374173 s!2326)) (h!67302 (t!374173 s!2326)))))

(assert (=> b!5272028 d!1696764))

(declare-fun d!1696770 () Bool)

(assert (=> d!1696770 (= (tail!10399 (t!374173 s!2326)) (t!374173 (t!374173 s!2326)))))

(assert (=> b!5272028 d!1696770))

(declare-fun bs!1221590 () Bool)

(declare-fun d!1696774 () Bool)

(assert (= bs!1221590 (and d!1696774 d!1696580)))

(declare-fun lambda!266056 () Int)

(assert (=> bs!1221590 (= lambda!266056 lambda!266021)))

(declare-fun bs!1221591 () Bool)

(assert (= bs!1221591 (and d!1696774 d!1696466)))

(assert (=> bs!1221591 (= lambda!266056 lambda!265989)))

(declare-fun bs!1221592 () Bool)

(assert (= bs!1221592 (and d!1696774 d!1696578)))

(assert (=> bs!1221592 (= lambda!266056 lambda!266018)))

(declare-fun bs!1221593 () Bool)

(assert (= bs!1221593 (and d!1696774 d!1696552)))

(assert (=> bs!1221593 (= lambda!266056 lambda!266009)))

(declare-fun bs!1221594 () Bool)

(assert (= bs!1221594 (and d!1696774 d!1696754)))

(assert (=> bs!1221594 (= lambda!266056 lambda!266051)))

(declare-fun bs!1221595 () Bool)

(assert (= bs!1221595 (and d!1696774 d!1696582)))

(assert (=> bs!1221595 (= lambda!266056 lambda!266024)))

(declare-fun b!5272641 () Bool)

(declare-fun e!3279058 () Bool)

(assert (=> b!5272641 (= e!3279058 (isEmpty!32804 (t!374174 (t!374174 (exprs!4777 (h!67304 zl!343))))))))

(declare-fun b!5272642 () Bool)

(declare-fun e!3279057 () Bool)

(declare-fun lt!2156931 () Regex!14893)

(assert (=> b!5272642 (= e!3279057 (isConcat!350 lt!2156931))))

(declare-fun b!5272643 () Bool)

(declare-fun e!3279056 () Regex!14893)

(assert (=> b!5272643 (= e!3279056 (h!67303 (t!374174 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun e!3279060 () Bool)

(assert (=> d!1696774 e!3279060))

(declare-fun res!2236680 () Bool)

(assert (=> d!1696774 (=> (not res!2236680) (not e!3279060))))

(assert (=> d!1696774 (= res!2236680 (validRegex!6629 lt!2156931))))

(assert (=> d!1696774 (= lt!2156931 e!3279056)))

(declare-fun c!913407 () Bool)

(assert (=> d!1696774 (= c!913407 e!3279058)))

(declare-fun res!2236681 () Bool)

(assert (=> d!1696774 (=> (not res!2236681) (not e!3279058))))

(assert (=> d!1696774 (= res!2236681 ((_ is Cons!60855) (t!374174 (exprs!4777 (h!67304 zl!343)))))))

(assert (=> d!1696774 (forall!14301 (t!374174 (exprs!4777 (h!67304 zl!343))) lambda!266056)))

(assert (=> d!1696774 (= (generalisedConcat!562 (t!374174 (exprs!4777 (h!67304 zl!343)))) lt!2156931)))

(declare-fun b!5272644 () Bool)

(declare-fun e!3279059 () Regex!14893)

(assert (=> b!5272644 (= e!3279056 e!3279059)))

(declare-fun c!913408 () Bool)

(assert (=> b!5272644 (= c!913408 ((_ is Cons!60855) (t!374174 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun b!5272645 () Bool)

(declare-fun e!3279055 () Bool)

(assert (=> b!5272645 (= e!3279060 e!3279055)))

(declare-fun c!913406 () Bool)

(assert (=> b!5272645 (= c!913406 (isEmpty!32804 (t!374174 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun b!5272646 () Bool)

(assert (=> b!5272646 (= e!3279059 EmptyExpr!14893)))

(declare-fun b!5272647 () Bool)

(assert (=> b!5272647 (= e!3279057 (= lt!2156931 (head!11303 (t!374174 (exprs!4777 (h!67304 zl!343))))))))

(declare-fun b!5272648 () Bool)

(assert (=> b!5272648 (= e!3279055 (isEmptyExpr!827 lt!2156931))))

(declare-fun b!5272649 () Bool)

(assert (=> b!5272649 (= e!3279055 e!3279057)))

(declare-fun c!913405 () Bool)

(assert (=> b!5272649 (= c!913405 (isEmpty!32804 (tail!10400 (t!374174 (exprs!4777 (h!67304 zl!343))))))))

(declare-fun b!5272650 () Bool)

(assert (=> b!5272650 (= e!3279059 (Concat!23738 (h!67303 (t!374174 (exprs!4777 (h!67304 zl!343)))) (generalisedConcat!562 (t!374174 (t!374174 (exprs!4777 (h!67304 zl!343)))))))))

(assert (= (and d!1696774 res!2236681) b!5272641))

(assert (= (and d!1696774 c!913407) b!5272643))

(assert (= (and d!1696774 (not c!913407)) b!5272644))

(assert (= (and b!5272644 c!913408) b!5272650))

(assert (= (and b!5272644 (not c!913408)) b!5272646))

(assert (= (and d!1696774 res!2236680) b!5272645))

(assert (= (and b!5272645 c!913406) b!5272648))

(assert (= (and b!5272645 (not c!913406)) b!5272649))

(assert (= (and b!5272649 c!913405) b!5272647))

(assert (= (and b!5272649 (not c!913405)) b!5272642))

(declare-fun m!6311538 () Bool)

(assert (=> b!5272641 m!6311538))

(declare-fun m!6311540 () Bool)

(assert (=> d!1696774 m!6311540))

(declare-fun m!6311542 () Bool)

(assert (=> d!1696774 m!6311542))

(assert (=> b!5272645 m!6310646))

(declare-fun m!6311544 () Bool)

(assert (=> b!5272642 m!6311544))

(declare-fun m!6311546 () Bool)

(assert (=> b!5272648 m!6311546))

(declare-fun m!6311548 () Bool)

(assert (=> b!5272647 m!6311548))

(declare-fun m!6311550 () Bool)

(assert (=> b!5272650 m!6311550))

(declare-fun m!6311552 () Bool)

(assert (=> b!5272649 m!6311552))

(assert (=> b!5272649 m!6311552))

(declare-fun m!6311554 () Bool)

(assert (=> b!5272649 m!6311554))

(assert (=> b!5272210 d!1696774))

(declare-fun d!1696780 () Bool)

(assert (=> d!1696780 (= ($colon$colon!1342 (exprs!4777 lt!2156804) (ite (or c!913197 c!913200) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regOne!30298 r!7292)))) (Cons!60855 (ite (or c!913197 c!913200) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regOne!30298 r!7292))) (exprs!4777 lt!2156804)))))

(assert (=> bm!374685 d!1696780))

(declare-fun b!5272682 () Bool)

(declare-fun e!3279080 () Bool)

(declare-fun e!3279082 () Bool)

(assert (=> b!5272682 (= e!3279080 e!3279082)))

(declare-fun res!2236693 () Bool)

(assert (=> b!5272682 (=> (not res!2236693) (not e!3279082))))

(declare-fun call!374836 () Bool)

(assert (=> b!5272682 (= res!2236693 call!374836)))

(declare-fun b!5272683 () Bool)

(declare-fun e!3279085 () Bool)

(declare-fun e!3279084 () Bool)

(assert (=> b!5272683 (= e!3279085 e!3279084)))

(declare-fun c!913422 () Bool)

(assert (=> b!5272683 (= c!913422 ((_ is Star!14893) (ite c!913210 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))))))

(declare-fun bm!374829 () Bool)

(declare-fun call!374835 () Bool)

(declare-fun call!374834 () Bool)

(assert (=> bm!374829 (= call!374835 call!374834)))

(declare-fun bm!374830 () Bool)

(declare-fun c!913421 () Bool)

(assert (=> bm!374830 (= call!374836 (validRegex!6629 (ite c!913421 (regOne!30299 (ite c!913210 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))) (regOne!30298 (ite c!913210 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))))))))

(declare-fun b!5272684 () Bool)

(declare-fun res!2236691 () Bool)

(declare-fun e!3279086 () Bool)

(assert (=> b!5272684 (=> (not res!2236691) (not e!3279086))))

(assert (=> b!5272684 (= res!2236691 call!374836)))

(declare-fun e!3279081 () Bool)

(assert (=> b!5272684 (= e!3279081 e!3279086)))

(declare-fun d!1696784 () Bool)

(declare-fun res!2236689 () Bool)

(assert (=> d!1696784 (=> res!2236689 e!3279085)))

(assert (=> d!1696784 (= res!2236689 ((_ is ElementMatch!14893) (ite c!913210 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))))))

(assert (=> d!1696784 (= (validRegex!6629 (ite c!913210 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))) e!3279085)))

(declare-fun bm!374831 () Bool)

(assert (=> bm!374831 (= call!374834 (validRegex!6629 (ite c!913422 (reg!15222 (ite c!913210 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))) (ite c!913421 (regTwo!30299 (ite c!913210 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))) (regTwo!30298 (ite c!913210 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292)))))))))))

(declare-fun b!5272685 () Bool)

(declare-fun res!2236690 () Bool)

(assert (=> b!5272685 (=> res!2236690 e!3279080)))

(assert (=> b!5272685 (= res!2236690 (not ((_ is Concat!23738) (ite c!913210 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292)))))))))

(assert (=> b!5272685 (= e!3279081 e!3279080)))

(declare-fun b!5272686 () Bool)

(declare-fun e!3279083 () Bool)

(assert (=> b!5272686 (= e!3279083 call!374834)))

(declare-fun b!5272687 () Bool)

(assert (=> b!5272687 (= e!3279086 call!374835)))

(declare-fun b!5272688 () Bool)

(assert (=> b!5272688 (= e!3279084 e!3279081)))

(assert (=> b!5272688 (= c!913421 ((_ is Union!14893) (ite c!913210 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))))))

(declare-fun b!5272689 () Bool)

(assert (=> b!5272689 (= e!3279084 e!3279083)))

(declare-fun res!2236692 () Bool)

(assert (=> b!5272689 (= res!2236692 (not (nullable!5062 (reg!15222 (ite c!913210 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))))))))

(assert (=> b!5272689 (=> (not res!2236692) (not e!3279083))))

(declare-fun b!5272690 () Bool)

(assert (=> b!5272690 (= e!3279082 call!374835)))

(assert (= (and d!1696784 (not res!2236689)) b!5272683))

(assert (= (and b!5272683 c!913422) b!5272689))

(assert (= (and b!5272683 (not c!913422)) b!5272688))

(assert (= (and b!5272689 res!2236692) b!5272686))

(assert (= (and b!5272688 c!913421) b!5272684))

(assert (= (and b!5272688 (not c!913421)) b!5272685))

(assert (= (and b!5272684 res!2236691) b!5272687))

(assert (= (and b!5272685 (not res!2236690)) b!5272682))

(assert (= (and b!5272682 res!2236693) b!5272690))

(assert (= (or b!5272687 b!5272690) bm!374829))

(assert (= (or b!5272684 b!5272682) bm!374830))

(assert (= (or b!5272686 bm!374829) bm!374831))

(declare-fun m!6311578 () Bool)

(assert (=> bm!374830 m!6311578))

(declare-fun m!6311580 () Bool)

(assert (=> bm!374831 m!6311580))

(declare-fun m!6311582 () Bool)

(assert (=> b!5272689 m!6311582))

(assert (=> bm!374699 d!1696784))

(declare-fun d!1696796 () Bool)

(assert (=> d!1696796 (= (isEmpty!32806 (t!374173 s!2326)) ((_ is Nil!60854) (t!374173 s!2326)))))

(assert (=> d!1696456 d!1696796))

(declare-fun d!1696798 () Bool)

(declare-fun res!2236712 () Bool)

(declare-fun e!3279109 () Bool)

(assert (=> d!1696798 (=> res!2236712 e!3279109)))

(assert (=> d!1696798 (= res!2236712 ((_ is Nil!60855) (exprs!4777 (h!67304 zl!343))))))

(assert (=> d!1696798 (= (forall!14301 (exprs!4777 (h!67304 zl!343)) lambda!266009) e!3279109)))

(declare-fun b!5272720 () Bool)

(declare-fun e!3279110 () Bool)

(assert (=> b!5272720 (= e!3279109 e!3279110)))

(declare-fun res!2236713 () Bool)

(assert (=> b!5272720 (=> (not res!2236713) (not e!3279110))))

(declare-fun dynLambda!24048 (Int Regex!14893) Bool)

(assert (=> b!5272720 (= res!2236713 (dynLambda!24048 lambda!266009 (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun b!5272721 () Bool)

(assert (=> b!5272721 (= e!3279110 (forall!14301 (t!374174 (exprs!4777 (h!67304 zl!343))) lambda!266009))))

(assert (= (and d!1696798 (not res!2236712)) b!5272720))

(assert (= (and b!5272720 res!2236713) b!5272721))

(declare-fun b_lambda!203367 () Bool)

(assert (=> (not b_lambda!203367) (not b!5272720)))

(declare-fun m!6311606 () Bool)

(assert (=> b!5272720 m!6311606))

(declare-fun m!6311608 () Bool)

(assert (=> b!5272721 m!6311608))

(assert (=> d!1696552 d!1696798))

(declare-fun b!5272724 () Bool)

(declare-fun e!3279114 () (InoxSet Context!8554))

(declare-fun call!374848 () (InoxSet Context!8554))

(assert (=> b!5272724 (= e!3279114 call!374848)))

(declare-fun b!5272725 () Bool)

(declare-fun e!3279117 () (InoxSet Context!8554))

(declare-fun e!3279112 () (InoxSet Context!8554))

(assert (=> b!5272725 (= e!3279117 e!3279112)))

(declare-fun c!913433 () Bool)

(assert (=> b!5272725 (= c!913433 ((_ is Union!14893) (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))))))

(declare-fun call!374846 () List!60979)

(declare-fun call!374850 () (InoxSet Context!8554))

(declare-fun bm!374841 () Bool)

(assert (=> bm!374841 (= call!374850 (derivationStepZipperDown!341 (ite c!913433 (regOne!30299 (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))) (regOne!30298 (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292)))))) (ite c!913433 (ite c!913198 lt!2156804 (Context!8555 call!374685)) (Context!8555 call!374846)) (h!67302 s!2326)))))

(declare-fun bm!374842 () Bool)

(declare-fun call!374849 () (InoxSet Context!8554))

(assert (=> bm!374842 (= call!374848 call!374849)))

(declare-fun b!5272726 () Bool)

(declare-fun e!3279113 () (InoxSet Context!8554))

(assert (=> b!5272726 (= e!3279113 e!3279114)))

(declare-fun c!913435 () Bool)

(assert (=> b!5272726 (= c!913435 ((_ is Concat!23738) (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))))))

(declare-fun bm!374843 () Bool)

(declare-fun call!374847 () (InoxSet Context!8554))

(assert (=> bm!374843 (= call!374849 call!374847)))

(declare-fun b!5272727 () Bool)

(declare-fun e!3279116 () Bool)

(assert (=> b!5272727 (= e!3279116 (nullable!5062 (regOne!30298 (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292)))))))))

(declare-fun b!5272728 () Bool)

(declare-fun e!3279115 () (InoxSet Context!8554))

(assert (=> b!5272728 (= e!3279115 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5272730 () Bool)

(declare-fun c!913432 () Bool)

(assert (=> b!5272730 (= c!913432 e!3279116)))

(declare-fun res!2236714 () Bool)

(assert (=> b!5272730 (=> (not res!2236714) (not e!3279116))))

(assert (=> b!5272730 (= res!2236714 ((_ is Concat!23738) (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))))))

(assert (=> b!5272730 (= e!3279112 e!3279113)))

(declare-fun bm!374844 () Bool)

(declare-fun call!374851 () List!60979)

(assert (=> bm!374844 (= call!374847 (derivationStepZipperDown!341 (ite c!913433 (regTwo!30299 (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))) (ite c!913432 (regTwo!30298 (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))) (ite c!913435 (regOne!30298 (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))) (reg!15222 (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292)))))))) (ite (or c!913433 c!913432) (ite c!913198 lt!2156804 (Context!8555 call!374685)) (Context!8555 call!374851)) (h!67302 s!2326)))))

(declare-fun b!5272731 () Bool)

(assert (=> b!5272731 (= e!3279115 call!374848)))

(declare-fun bm!374845 () Bool)

(assert (=> bm!374845 (= call!374851 call!374846)))

(declare-fun b!5272732 () Bool)

(declare-fun c!913434 () Bool)

(assert (=> b!5272732 (= c!913434 ((_ is Star!14893) (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))))))

(assert (=> b!5272732 (= e!3279114 e!3279115)))

(declare-fun b!5272733 () Bool)

(assert (=> b!5272733 (= e!3279112 ((_ map or) call!374850 call!374847))))

(declare-fun bm!374846 () Bool)

(assert (=> bm!374846 (= call!374846 ($colon$colon!1342 (exprs!4777 (ite c!913198 lt!2156804 (Context!8555 call!374685))) (ite (or c!913432 c!913435) (regTwo!30298 (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))) (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292)))))))))

(declare-fun b!5272734 () Bool)

(assert (=> b!5272734 (= e!3279117 (store ((as const (Array Context!8554 Bool)) false) (ite c!913198 lt!2156804 (Context!8555 call!374685)) true))))

(declare-fun b!5272729 () Bool)

(assert (=> b!5272729 (= e!3279113 ((_ map or) call!374850 call!374849))))

(declare-fun d!1696808 () Bool)

(declare-fun c!913431 () Bool)

(assert (=> d!1696808 (= c!913431 (and ((_ is ElementMatch!14893) (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))) (= (c!913081 (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))) (h!67302 s!2326))))))

(assert (=> d!1696808 (= (derivationStepZipperDown!341 (ite c!913198 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292)))) (ite c!913198 lt!2156804 (Context!8555 call!374685)) (h!67302 s!2326)) e!3279117)))

(assert (= (and d!1696808 c!913431) b!5272734))

(assert (= (and d!1696808 (not c!913431)) b!5272725))

(assert (= (and b!5272725 c!913433) b!5272733))

(assert (= (and b!5272725 (not c!913433)) b!5272730))

(assert (= (and b!5272730 res!2236714) b!5272727))

(assert (= (and b!5272730 c!913432) b!5272729))

(assert (= (and b!5272730 (not c!913432)) b!5272726))

(assert (= (and b!5272726 c!913435) b!5272724))

(assert (= (and b!5272726 (not c!913435)) b!5272732))

(assert (= (and b!5272732 c!913434) b!5272731))

(assert (= (and b!5272732 (not c!913434)) b!5272728))

(assert (= (or b!5272724 b!5272731) bm!374845))

(assert (= (or b!5272724 b!5272731) bm!374842))

(assert (= (or b!5272729 bm!374845) bm!374846))

(assert (= (or b!5272729 bm!374842) bm!374843))

(assert (= (or b!5272733 bm!374843) bm!374844))

(assert (= (or b!5272733 b!5272729) bm!374841))

(declare-fun m!6311618 () Bool)

(assert (=> b!5272734 m!6311618))

(declare-fun m!6311620 () Bool)

(assert (=> b!5272727 m!6311620))

(declare-fun m!6311624 () Bool)

(assert (=> bm!374841 m!6311624))

(declare-fun m!6311626 () Bool)

(assert (=> bm!374846 m!6311626))

(declare-fun m!6311632 () Bool)

(assert (=> bm!374844 m!6311632))

(assert (=> bm!374680 d!1696808))

(declare-fun d!1696822 () Bool)

(declare-fun c!913436 () Bool)

(assert (=> d!1696822 (= c!913436 (isEmpty!32806 (t!374173 s!2326)))))

(declare-fun e!3279120 () Bool)

(assert (=> d!1696822 (= (matchZipper!1137 ((_ map or) lt!2156801 lt!2156821) (t!374173 s!2326)) e!3279120)))

(declare-fun b!5272737 () Bool)

(assert (=> b!5272737 (= e!3279120 (nullableZipper!1292 ((_ map or) lt!2156801 lt!2156821)))))

(declare-fun b!5272738 () Bool)

(assert (=> b!5272738 (= e!3279120 (matchZipper!1137 (derivationStepZipper!1136 ((_ map or) lt!2156801 lt!2156821) (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))))))

(assert (= (and d!1696822 c!913436) b!5272737))

(assert (= (and d!1696822 (not c!913436)) b!5272738))

(assert (=> d!1696822 m!6310790))

(declare-fun m!6311636 () Bool)

(assert (=> b!5272737 m!6311636))

(assert (=> b!5272738 m!6310794))

(assert (=> b!5272738 m!6310794))

(declare-fun m!6311640 () Bool)

(assert (=> b!5272738 m!6311640))

(assert (=> b!5272738 m!6310798))

(assert (=> b!5272738 m!6311640))

(assert (=> b!5272738 m!6310798))

(declare-fun m!6311642 () Bool)

(assert (=> b!5272738 m!6311642))

(assert (=> d!1696540 d!1696822))

(assert (=> d!1696540 d!1696538))

(declare-fun d!1696826 () Bool)

(declare-fun e!3279142 () Bool)

(assert (=> d!1696826 (= (matchZipper!1137 ((_ map or) lt!2156801 lt!2156821) (t!374173 s!2326)) e!3279142)))

(declare-fun res!2236728 () Bool)

(assert (=> d!1696826 (=> res!2236728 e!3279142)))

(assert (=> d!1696826 (= res!2236728 (matchZipper!1137 lt!2156801 (t!374173 s!2326)))))

(assert (=> d!1696826 true))

(declare-fun _$48!937 () Unit!153090)

(assert (=> d!1696826 (= (choose!39340 lt!2156801 lt!2156821 (t!374173 s!2326)) _$48!937)))

(declare-fun b!5272771 () Bool)

(assert (=> b!5272771 (= e!3279142 (matchZipper!1137 lt!2156821 (t!374173 s!2326)))))

(assert (= (and d!1696826 (not res!2236728)) b!5272771))

(assert (=> d!1696826 m!6311000))

(assert (=> d!1696826 m!6310614))

(assert (=> b!5272771 m!6310618))

(assert (=> d!1696540 d!1696826))

(declare-fun d!1696834 () Bool)

(declare-fun lambda!266062 () Int)

(declare-fun exists!1995 ((InoxSet Context!8554) Int) Bool)

(assert (=> d!1696834 (= (nullableZipper!1292 lt!2156807) (exists!1995 lt!2156807 lambda!266062))))

(declare-fun bs!1221620 () Bool)

(assert (= bs!1221620 d!1696834))

(declare-fun m!6311680 () Bool)

(assert (=> bs!1221620 m!6311680))

(assert (=> b!5272025 d!1696834))

(declare-fun d!1696842 () Bool)

(assert (=> d!1696842 (= (isDefined!11707 lt!2156904) (not (isEmpty!32808 lt!2156904)))))

(declare-fun bs!1221621 () Bool)

(assert (= bs!1221621 d!1696842))

(declare-fun m!6311682 () Bool)

(assert (=> bs!1221621 m!6311682))

(assert (=> d!1696584 d!1696842))

(declare-fun b!5272772 () Bool)

(declare-fun e!3279146 () Bool)

(declare-fun e!3279148 () Bool)

(assert (=> b!5272772 (= e!3279146 e!3279148)))

(declare-fun c!913452 () Bool)

(assert (=> b!5272772 (= c!913452 ((_ is EmptyLang!14893) (regOne!30298 r!7292)))))

(declare-fun b!5272773 () Bool)

(declare-fun e!3279147 () Bool)

(assert (=> b!5272773 (= e!3279147 (= (head!11302 Nil!60854) (c!913081 (regOne!30298 r!7292))))))

(declare-fun b!5272774 () Bool)

(declare-fun e!3279143 () Bool)

(declare-fun e!3279149 () Bool)

(assert (=> b!5272774 (= e!3279143 e!3279149)))

(declare-fun res!2236731 () Bool)

(assert (=> b!5272774 (=> (not res!2236731) (not e!3279149))))

(declare-fun lt!2156933 () Bool)

(assert (=> b!5272774 (= res!2236731 (not lt!2156933))))

(declare-fun b!5272775 () Bool)

(declare-fun e!3279145 () Bool)

(assert (=> b!5272775 (= e!3279145 (matchR!7078 (derivativeStep!4113 (regOne!30298 r!7292) (head!11302 Nil!60854)) (tail!10399 Nil!60854)))))

(declare-fun b!5272776 () Bool)

(declare-fun res!2236733 () Bool)

(assert (=> b!5272776 (=> (not res!2236733) (not e!3279147))))

(declare-fun call!374861 () Bool)

(assert (=> b!5272776 (= res!2236733 (not call!374861))))

(declare-fun b!5272777 () Bool)

(declare-fun res!2236729 () Bool)

(assert (=> b!5272777 (=> res!2236729 e!3279143)))

(assert (=> b!5272777 (= res!2236729 e!3279147)))

(declare-fun res!2236730 () Bool)

(assert (=> b!5272777 (=> (not res!2236730) (not e!3279147))))

(assert (=> b!5272777 (= res!2236730 lt!2156933)))

(declare-fun b!5272778 () Bool)

(declare-fun e!3279144 () Bool)

(assert (=> b!5272778 (= e!3279149 e!3279144)))

(declare-fun res!2236736 () Bool)

(assert (=> b!5272778 (=> res!2236736 e!3279144)))

(assert (=> b!5272778 (= res!2236736 call!374861)))

(declare-fun b!5272779 () Bool)

(declare-fun res!2236735 () Bool)

(assert (=> b!5272779 (=> (not res!2236735) (not e!3279147))))

(assert (=> b!5272779 (= res!2236735 (isEmpty!32806 (tail!10399 Nil!60854)))))

(declare-fun b!5272780 () Bool)

(declare-fun res!2236734 () Bool)

(assert (=> b!5272780 (=> res!2236734 e!3279143)))

(assert (=> b!5272780 (= res!2236734 (not ((_ is ElementMatch!14893) (regOne!30298 r!7292))))))

(assert (=> b!5272780 (= e!3279148 e!3279143)))

(declare-fun bm!374856 () Bool)

(assert (=> bm!374856 (= call!374861 (isEmpty!32806 Nil!60854))))

(declare-fun b!5272781 () Bool)

(assert (=> b!5272781 (= e!3279146 (= lt!2156933 call!374861))))

(declare-fun b!5272782 () Bool)

(assert (=> b!5272782 (= e!3279145 (nullable!5062 (regOne!30298 r!7292)))))

(declare-fun b!5272783 () Bool)

(declare-fun res!2236732 () Bool)

(assert (=> b!5272783 (=> res!2236732 e!3279144)))

(assert (=> b!5272783 (= res!2236732 (not (isEmpty!32806 (tail!10399 Nil!60854))))))

(declare-fun d!1696844 () Bool)

(assert (=> d!1696844 e!3279146))

(declare-fun c!913451 () Bool)

(assert (=> d!1696844 (= c!913451 ((_ is EmptyExpr!14893) (regOne!30298 r!7292)))))

(assert (=> d!1696844 (= lt!2156933 e!3279145)))

(declare-fun c!913450 () Bool)

(assert (=> d!1696844 (= c!913450 (isEmpty!32806 Nil!60854))))

(assert (=> d!1696844 (validRegex!6629 (regOne!30298 r!7292))))

(assert (=> d!1696844 (= (matchR!7078 (regOne!30298 r!7292) Nil!60854) lt!2156933)))

(declare-fun b!5272784 () Bool)

(assert (=> b!5272784 (= e!3279148 (not lt!2156933))))

(declare-fun b!5272785 () Bool)

(assert (=> b!5272785 (= e!3279144 (not (= (head!11302 Nil!60854) (c!913081 (regOne!30298 r!7292)))))))

(assert (= (and d!1696844 c!913450) b!5272782))

(assert (= (and d!1696844 (not c!913450)) b!5272775))

(assert (= (and d!1696844 c!913451) b!5272781))

(assert (= (and d!1696844 (not c!913451)) b!5272772))

(assert (= (and b!5272772 c!913452) b!5272784))

(assert (= (and b!5272772 (not c!913452)) b!5272780))

(assert (= (and b!5272780 (not res!2236734)) b!5272777))

(assert (= (and b!5272777 res!2236730) b!5272776))

(assert (= (and b!5272776 res!2236733) b!5272779))

(assert (= (and b!5272779 res!2236735) b!5272773))

(assert (= (and b!5272777 (not res!2236729)) b!5272774))

(assert (= (and b!5272774 res!2236731) b!5272778))

(assert (= (and b!5272778 (not res!2236736)) b!5272783))

(assert (= (and b!5272783 (not res!2236732)) b!5272785))

(assert (= (or b!5272781 b!5272776 b!5272778) bm!374856))

(declare-fun m!6311684 () Bool)

(assert (=> b!5272782 m!6311684))

(declare-fun m!6311686 () Bool)

(assert (=> b!5272783 m!6311686))

(assert (=> b!5272783 m!6311686))

(declare-fun m!6311688 () Bool)

(assert (=> b!5272783 m!6311688))

(assert (=> b!5272779 m!6311686))

(assert (=> b!5272779 m!6311686))

(assert (=> b!5272779 m!6311688))

(declare-fun m!6311690 () Bool)

(assert (=> bm!374856 m!6311690))

(declare-fun m!6311692 () Bool)

(assert (=> b!5272785 m!6311692))

(assert (=> d!1696844 m!6311690))

(assert (=> d!1696844 m!6311136))

(assert (=> b!5272775 m!6311692))

(assert (=> b!5272775 m!6311692))

(declare-fun m!6311694 () Bool)

(assert (=> b!5272775 m!6311694))

(assert (=> b!5272775 m!6311686))

(assert (=> b!5272775 m!6311694))

(assert (=> b!5272775 m!6311686))

(declare-fun m!6311696 () Bool)

(assert (=> b!5272775 m!6311696))

(assert (=> b!5272773 m!6311692))

(assert (=> d!1696584 d!1696844))

(declare-fun b!5272786 () Bool)

(declare-fun e!3279150 () Bool)

(declare-fun e!3279152 () Bool)

(assert (=> b!5272786 (= e!3279150 e!3279152)))

(declare-fun res!2236741 () Bool)

(assert (=> b!5272786 (=> (not res!2236741) (not e!3279152))))

(declare-fun call!374864 () Bool)

(assert (=> b!5272786 (= res!2236741 call!374864)))

(declare-fun b!5272787 () Bool)

(declare-fun e!3279155 () Bool)

(declare-fun e!3279154 () Bool)

(assert (=> b!5272787 (= e!3279155 e!3279154)))

(declare-fun c!913454 () Bool)

(assert (=> b!5272787 (= c!913454 ((_ is Star!14893) (regOne!30298 r!7292)))))

(declare-fun bm!374857 () Bool)

(declare-fun call!374863 () Bool)

(declare-fun call!374862 () Bool)

(assert (=> bm!374857 (= call!374863 call!374862)))

(declare-fun bm!374858 () Bool)

(declare-fun c!913453 () Bool)

(assert (=> bm!374858 (= call!374864 (validRegex!6629 (ite c!913453 (regOne!30299 (regOne!30298 r!7292)) (regOne!30298 (regOne!30298 r!7292)))))))

(declare-fun b!5272788 () Bool)

(declare-fun res!2236739 () Bool)

(declare-fun e!3279156 () Bool)

(assert (=> b!5272788 (=> (not res!2236739) (not e!3279156))))

(assert (=> b!5272788 (= res!2236739 call!374864)))

(declare-fun e!3279151 () Bool)

(assert (=> b!5272788 (= e!3279151 e!3279156)))

(declare-fun d!1696846 () Bool)

(declare-fun res!2236737 () Bool)

(assert (=> d!1696846 (=> res!2236737 e!3279155)))

(assert (=> d!1696846 (= res!2236737 ((_ is ElementMatch!14893) (regOne!30298 r!7292)))))

(assert (=> d!1696846 (= (validRegex!6629 (regOne!30298 r!7292)) e!3279155)))

(declare-fun bm!374859 () Bool)

(assert (=> bm!374859 (= call!374862 (validRegex!6629 (ite c!913454 (reg!15222 (regOne!30298 r!7292)) (ite c!913453 (regTwo!30299 (regOne!30298 r!7292)) (regTwo!30298 (regOne!30298 r!7292))))))))

(declare-fun b!5272789 () Bool)

(declare-fun res!2236738 () Bool)

(assert (=> b!5272789 (=> res!2236738 e!3279150)))

(assert (=> b!5272789 (= res!2236738 (not ((_ is Concat!23738) (regOne!30298 r!7292))))))

(assert (=> b!5272789 (= e!3279151 e!3279150)))

(declare-fun b!5272790 () Bool)

(declare-fun e!3279153 () Bool)

(assert (=> b!5272790 (= e!3279153 call!374862)))

(declare-fun b!5272791 () Bool)

(assert (=> b!5272791 (= e!3279156 call!374863)))

(declare-fun b!5272792 () Bool)

(assert (=> b!5272792 (= e!3279154 e!3279151)))

(assert (=> b!5272792 (= c!913453 ((_ is Union!14893) (regOne!30298 r!7292)))))

(declare-fun b!5272793 () Bool)

(assert (=> b!5272793 (= e!3279154 e!3279153)))

(declare-fun res!2236740 () Bool)

(assert (=> b!5272793 (= res!2236740 (not (nullable!5062 (reg!15222 (regOne!30298 r!7292)))))))

(assert (=> b!5272793 (=> (not res!2236740) (not e!3279153))))

(declare-fun b!5272794 () Bool)

(assert (=> b!5272794 (= e!3279152 call!374863)))

(assert (= (and d!1696846 (not res!2236737)) b!5272787))

(assert (= (and b!5272787 c!913454) b!5272793))

(assert (= (and b!5272787 (not c!913454)) b!5272792))

(assert (= (and b!5272793 res!2236740) b!5272790))

(assert (= (and b!5272792 c!913453) b!5272788))

(assert (= (and b!5272792 (not c!913453)) b!5272789))

(assert (= (and b!5272788 res!2236739) b!5272791))

(assert (= (and b!5272789 (not res!2236738)) b!5272786))

(assert (= (and b!5272786 res!2236741) b!5272794))

(assert (= (or b!5272791 b!5272794) bm!374857))

(assert (= (or b!5272788 b!5272786) bm!374858))

(assert (= (or b!5272790 bm!374857) bm!374859))

(declare-fun m!6311698 () Bool)

(assert (=> bm!374858 m!6311698))

(declare-fun m!6311700 () Bool)

(assert (=> bm!374859 m!6311700))

(declare-fun m!6311702 () Bool)

(assert (=> b!5272793 m!6311702))

(assert (=> d!1696584 d!1696846))

(assert (=> bs!1221506 d!1696562))

(declare-fun d!1696850 () Bool)

(assert (=> d!1696850 (= (nullable!5062 (h!67303 (exprs!4777 lt!2156804))) (nullableFct!1444 (h!67303 (exprs!4777 lt!2156804))))))

(declare-fun bs!1221623 () Bool)

(assert (= bs!1221623 d!1696850))

(declare-fun m!6311706 () Bool)

(assert (=> bs!1221623 m!6311706))

(assert (=> b!5272056 d!1696850))

(declare-fun d!1696854 () Bool)

(assert (=> d!1696854 (= (nullable!5062 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292)))) (nullableFct!1444 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292)))))))

(declare-fun bs!1221624 () Bool)

(assert (= bs!1221624 d!1696854))

(declare-fun m!6311708 () Bool)

(assert (=> bs!1221624 m!6311708))

(assert (=> b!5271864 d!1696854))

(assert (=> d!1696600 d!1696602))

(assert (=> d!1696600 d!1696534))

(declare-fun e!3279165 () Bool)

(declare-fun d!1696856 () Bool)

(assert (=> d!1696856 (= (matchZipper!1137 ((_ map or) lt!2156813 lt!2156802) (t!374173 s!2326)) e!3279165)))

(declare-fun res!2236746 () Bool)

(assert (=> d!1696856 (=> res!2236746 e!3279165)))

(assert (=> d!1696856 (= res!2236746 (matchZipper!1137 lt!2156813 (t!374173 s!2326)))))

(assert (=> d!1696856 true))

(declare-fun _$48!938 () Unit!153090)

(assert (=> d!1696856 (= (choose!39340 lt!2156813 lt!2156802 (t!374173 s!2326)) _$48!938)))

(declare-fun b!5272807 () Bool)

(assert (=> b!5272807 (= e!3279165 (matchZipper!1137 lt!2156802 (t!374173 s!2326)))))

(assert (= (and d!1696856 (not res!2236746)) b!5272807))

(assert (=> d!1696856 m!6310596))

(assert (=> d!1696856 m!6310594))

(assert (=> b!5272807 m!6310606))

(assert (=> d!1696600 d!1696856))

(assert (=> d!1696576 d!1696796))

(declare-fun d!1696858 () Bool)

(declare-fun res!2236751 () Bool)

(declare-fun e!3279170 () Bool)

(assert (=> d!1696858 (=> res!2236751 e!3279170)))

(assert (=> d!1696858 (= res!2236751 ((_ is Nil!60856) lt!2156873))))

(assert (=> d!1696858 (= (noDuplicate!1247 lt!2156873) e!3279170)))

(declare-fun b!5272812 () Bool)

(declare-fun e!3279171 () Bool)

(assert (=> b!5272812 (= e!3279170 e!3279171)))

(declare-fun res!2236752 () Bool)

(assert (=> b!5272812 (=> (not res!2236752) (not e!3279171))))

(declare-fun contains!19695 (List!60980 Context!8554) Bool)

(assert (=> b!5272812 (= res!2236752 (not (contains!19695 (t!374175 lt!2156873) (h!67304 lt!2156873))))))

(declare-fun b!5272813 () Bool)

(assert (=> b!5272813 (= e!3279171 (noDuplicate!1247 (t!374175 lt!2156873)))))

(assert (= (and d!1696858 (not res!2236751)) b!5272812))

(assert (= (and b!5272812 res!2236752) b!5272813))

(declare-fun m!6311710 () Bool)

(assert (=> b!5272812 m!6311710))

(declare-fun m!6311712 () Bool)

(assert (=> b!5272813 m!6311712))

(assert (=> d!1696532 d!1696858))

(declare-fun d!1696860 () Bool)

(declare-fun e!3279180 () Bool)

(assert (=> d!1696860 e!3279180))

(declare-fun res!2236758 () Bool)

(assert (=> d!1696860 (=> (not res!2236758) (not e!3279180))))

(declare-fun res!2236757 () List!60980)

(assert (=> d!1696860 (= res!2236758 (noDuplicate!1247 res!2236757))))

(declare-fun e!3279178 () Bool)

(assert (=> d!1696860 e!3279178))

(assert (=> d!1696860 (= (choose!39339 z!1189) res!2236757)))

(declare-fun b!5272821 () Bool)

(declare-fun e!3279179 () Bool)

(declare-fun tp!1473473 () Bool)

(assert (=> b!5272821 (= e!3279179 tp!1473473)))

(declare-fun tp!1473472 () Bool)

(declare-fun b!5272820 () Bool)

(assert (=> b!5272820 (= e!3279178 (and (inv!80479 (h!67304 res!2236757)) e!3279179 tp!1473472))))

(declare-fun b!5272822 () Bool)

(assert (=> b!5272822 (= e!3279180 (= (content!10825 res!2236757) z!1189))))

(assert (= b!5272820 b!5272821))

(assert (= (and d!1696860 ((_ is Cons!60856) res!2236757)) b!5272820))

(assert (= (and d!1696860 res!2236758) b!5272822))

(declare-fun m!6311720 () Bool)

(assert (=> d!1696860 m!6311720))

(declare-fun m!6311722 () Bool)

(assert (=> b!5272820 m!6311722))

(declare-fun m!6311724 () Bool)

(assert (=> b!5272822 m!6311724))

(assert (=> d!1696532 d!1696860))

(assert (=> b!5272201 d!1696544))

(declare-fun bs!1221642 () Bool)

(declare-fun d!1696864 () Bool)

(assert (= bs!1221642 (and d!1696864 d!1696774)))

(declare-fun lambda!266065 () Int)

(assert (=> bs!1221642 (= lambda!266065 lambda!266056)))

(declare-fun bs!1221643 () Bool)

(assert (= bs!1221643 (and d!1696864 d!1696580)))

(assert (=> bs!1221643 (= lambda!266065 lambda!266021)))

(declare-fun bs!1221644 () Bool)

(assert (= bs!1221644 (and d!1696864 d!1696466)))

(assert (=> bs!1221644 (= lambda!266065 lambda!265989)))

(declare-fun bs!1221645 () Bool)

(assert (= bs!1221645 (and d!1696864 d!1696578)))

(assert (=> bs!1221645 (= lambda!266065 lambda!266018)))

(declare-fun bs!1221646 () Bool)

(assert (= bs!1221646 (and d!1696864 d!1696552)))

(assert (=> bs!1221646 (= lambda!266065 lambda!266009)))

(declare-fun bs!1221647 () Bool)

(assert (= bs!1221647 (and d!1696864 d!1696754)))

(assert (=> bs!1221647 (= lambda!266065 lambda!266051)))

(declare-fun bs!1221649 () Bool)

(assert (= bs!1221649 (and d!1696864 d!1696582)))

(assert (=> bs!1221649 (= lambda!266065 lambda!266024)))

(assert (=> d!1696864 (= (inv!80479 (h!67304 (t!374175 zl!343))) (forall!14301 (exprs!4777 (h!67304 (t!374175 zl!343))) lambda!266065))))

(declare-fun bs!1221652 () Bool)

(assert (= bs!1221652 d!1696864))

(declare-fun m!6311732 () Bool)

(assert (=> bs!1221652 m!6311732))

(assert (=> b!5272314 d!1696864))

(declare-fun d!1696868 () Bool)

(assert (=> d!1696868 true))

(declare-fun setRes!33763 () Bool)

(assert (=> d!1696868 setRes!33763))

(declare-fun condSetEmpty!33763 () Bool)

(declare-fun res!2236765 () (InoxSet Context!8554))

(assert (=> d!1696868 (= condSetEmpty!33763 (= res!2236765 ((as const (Array Context!8554 Bool)) false)))))

(assert (=> d!1696868 (= (choose!39338 z!1189 lambda!265971) res!2236765)))

(declare-fun setIsEmpty!33763 () Bool)

(assert (=> setIsEmpty!33763 setRes!33763))

(declare-fun setElem!33763 () Context!8554)

(declare-fun e!3279188 () Bool)

(declare-fun setNonEmpty!33763 () Bool)

(declare-fun tp!1473479 () Bool)

(assert (=> setNonEmpty!33763 (= setRes!33763 (and tp!1473479 (inv!80479 setElem!33763) e!3279188))))

(declare-fun setRest!33763 () (InoxSet Context!8554))

(assert (=> setNonEmpty!33763 (= res!2236765 ((_ map or) (store ((as const (Array Context!8554 Bool)) false) setElem!33763 true) setRest!33763))))

(declare-fun b!5272831 () Bool)

(declare-fun tp!1473478 () Bool)

(assert (=> b!5272831 (= e!3279188 tp!1473478)))

(assert (= (and d!1696868 condSetEmpty!33763) setIsEmpty!33763))

(assert (= (and d!1696868 (not condSetEmpty!33763)) setNonEmpty!33763))

(assert (= setNonEmpty!33763 b!5272831))

(declare-fun m!6311736 () Bool)

(assert (=> setNonEmpty!33763 m!6311736))

(assert (=> d!1696564 d!1696868))

(declare-fun b!5272832 () Bool)

(declare-fun e!3279189 () Bool)

(declare-fun e!3279191 () Bool)

(assert (=> b!5272832 (= e!3279189 e!3279191)))

(declare-fun res!2236770 () Bool)

(assert (=> b!5272832 (=> (not res!2236770) (not e!3279191))))

(declare-fun call!374869 () Bool)

(assert (=> b!5272832 (= res!2236770 call!374869)))

(declare-fun b!5272833 () Bool)

(declare-fun e!3279194 () Bool)

(declare-fun e!3279193 () Bool)

(assert (=> b!5272833 (= e!3279194 e!3279193)))

(declare-fun c!913461 () Bool)

(assert (=> b!5272833 (= c!913461 ((_ is Star!14893) lt!2156896))))

(declare-fun bm!374862 () Bool)

(declare-fun call!374868 () Bool)

(declare-fun call!374867 () Bool)

(assert (=> bm!374862 (= call!374868 call!374867)))

(declare-fun bm!374863 () Bool)

(declare-fun c!913460 () Bool)

(assert (=> bm!374863 (= call!374869 (validRegex!6629 (ite c!913460 (regOne!30299 lt!2156896) (regOne!30298 lt!2156896))))))

(declare-fun b!5272834 () Bool)

(declare-fun res!2236768 () Bool)

(declare-fun e!3279195 () Bool)

(assert (=> b!5272834 (=> (not res!2236768) (not e!3279195))))

(assert (=> b!5272834 (= res!2236768 call!374869)))

(declare-fun e!3279190 () Bool)

(assert (=> b!5272834 (= e!3279190 e!3279195)))

(declare-fun d!1696872 () Bool)

(declare-fun res!2236766 () Bool)

(assert (=> d!1696872 (=> res!2236766 e!3279194)))

(assert (=> d!1696872 (= res!2236766 ((_ is ElementMatch!14893) lt!2156896))))

(assert (=> d!1696872 (= (validRegex!6629 lt!2156896) e!3279194)))

(declare-fun bm!374864 () Bool)

(assert (=> bm!374864 (= call!374867 (validRegex!6629 (ite c!913461 (reg!15222 lt!2156896) (ite c!913460 (regTwo!30299 lt!2156896) (regTwo!30298 lt!2156896)))))))

(declare-fun b!5272835 () Bool)

(declare-fun res!2236767 () Bool)

(assert (=> b!5272835 (=> res!2236767 e!3279189)))

(assert (=> b!5272835 (= res!2236767 (not ((_ is Concat!23738) lt!2156896)))))

(assert (=> b!5272835 (= e!3279190 e!3279189)))

(declare-fun b!5272836 () Bool)

(declare-fun e!3279192 () Bool)

(assert (=> b!5272836 (= e!3279192 call!374867)))

(declare-fun b!5272837 () Bool)

(assert (=> b!5272837 (= e!3279195 call!374868)))

(declare-fun b!5272838 () Bool)

(assert (=> b!5272838 (= e!3279193 e!3279190)))

(assert (=> b!5272838 (= c!913460 ((_ is Union!14893) lt!2156896))))

(declare-fun b!5272839 () Bool)

(assert (=> b!5272839 (= e!3279193 e!3279192)))

(declare-fun res!2236769 () Bool)

(assert (=> b!5272839 (= res!2236769 (not (nullable!5062 (reg!15222 lt!2156896))))))

(assert (=> b!5272839 (=> (not res!2236769) (not e!3279192))))

(declare-fun b!5272840 () Bool)

(assert (=> b!5272840 (= e!3279191 call!374868)))

(assert (= (and d!1696872 (not res!2236766)) b!5272833))

(assert (= (and b!5272833 c!913461) b!5272839))

(assert (= (and b!5272833 (not c!913461)) b!5272838))

(assert (= (and b!5272839 res!2236769) b!5272836))

(assert (= (and b!5272838 c!913460) b!5272834))

(assert (= (and b!5272838 (not c!913460)) b!5272835))

(assert (= (and b!5272834 res!2236768) b!5272837))

(assert (= (and b!5272835 (not res!2236767)) b!5272832))

(assert (= (and b!5272832 res!2236770) b!5272840))

(assert (= (or b!5272837 b!5272840) bm!374862))

(assert (= (or b!5272834 b!5272832) bm!374863))

(assert (= (or b!5272836 bm!374862) bm!374864))

(declare-fun m!6311738 () Bool)

(assert (=> bm!374863 m!6311738))

(declare-fun m!6311740 () Bool)

(assert (=> bm!374864 m!6311740))

(declare-fun m!6311742 () Bool)

(assert (=> b!5272839 m!6311742))

(assert (=> d!1696582 d!1696872))

(declare-fun d!1696874 () Bool)

(declare-fun res!2236773 () Bool)

(declare-fun e!3279198 () Bool)

(assert (=> d!1696874 (=> res!2236773 e!3279198)))

(assert (=> d!1696874 (= res!2236773 ((_ is Nil!60855) (exprs!4777 (h!67304 zl!343))))))

(assert (=> d!1696874 (= (forall!14301 (exprs!4777 (h!67304 zl!343)) lambda!266024) e!3279198)))

(declare-fun b!5272843 () Bool)

(declare-fun e!3279199 () Bool)

(assert (=> b!5272843 (= e!3279198 e!3279199)))

(declare-fun res!2236774 () Bool)

(assert (=> b!5272843 (=> (not res!2236774) (not e!3279199))))

(assert (=> b!5272843 (= res!2236774 (dynLambda!24048 lambda!266024 (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun b!5272844 () Bool)

(assert (=> b!5272844 (= e!3279199 (forall!14301 (t!374174 (exprs!4777 (h!67304 zl!343))) lambda!266024))))

(assert (= (and d!1696874 (not res!2236773)) b!5272843))

(assert (= (and b!5272843 res!2236774) b!5272844))

(declare-fun b_lambda!203371 () Bool)

(assert (=> (not b_lambda!203371) (not b!5272843)))

(declare-fun m!6311748 () Bool)

(assert (=> b!5272843 m!6311748))

(declare-fun m!6311750 () Bool)

(assert (=> b!5272844 m!6311750))

(assert (=> d!1696582 d!1696874))

(declare-fun d!1696878 () Bool)

(assert (=> d!1696878 true))

(assert (=> d!1696878 true))

(declare-fun res!2236775 () Bool)

(assert (=> d!1696878 (= (choose!39342 lambda!265969) res!2236775)))

(assert (=> d!1696588 d!1696878))

(declare-fun b!5272845 () Bool)

(declare-fun e!3279203 () Bool)

(declare-fun e!3279205 () Bool)

(assert (=> b!5272845 (= e!3279203 e!3279205)))

(declare-fun c!913464 () Bool)

(assert (=> b!5272845 (= c!913464 ((_ is EmptyLang!14893) (regTwo!30298 r!7292)))))

(declare-fun b!5272846 () Bool)

(declare-fun e!3279204 () Bool)

(assert (=> b!5272846 (= e!3279204 (= (head!11302 s!2326) (c!913081 (regTwo!30298 r!7292))))))

(declare-fun b!5272847 () Bool)

(declare-fun e!3279200 () Bool)

(declare-fun e!3279206 () Bool)

(assert (=> b!5272847 (= e!3279200 e!3279206)))

(declare-fun res!2236778 () Bool)

(assert (=> b!5272847 (=> (not res!2236778) (not e!3279206))))

(declare-fun lt!2156934 () Bool)

(assert (=> b!5272847 (= res!2236778 (not lt!2156934))))

(declare-fun b!5272848 () Bool)

(declare-fun e!3279202 () Bool)

(assert (=> b!5272848 (= e!3279202 (matchR!7078 (derivativeStep!4113 (regTwo!30298 r!7292) (head!11302 s!2326)) (tail!10399 s!2326)))))

(declare-fun b!5272849 () Bool)

(declare-fun res!2236780 () Bool)

(assert (=> b!5272849 (=> (not res!2236780) (not e!3279204))))

(declare-fun call!374870 () Bool)

(assert (=> b!5272849 (= res!2236780 (not call!374870))))

(declare-fun b!5272850 () Bool)

(declare-fun res!2236776 () Bool)

(assert (=> b!5272850 (=> res!2236776 e!3279200)))

(assert (=> b!5272850 (= res!2236776 e!3279204)))

(declare-fun res!2236777 () Bool)

(assert (=> b!5272850 (=> (not res!2236777) (not e!3279204))))

(assert (=> b!5272850 (= res!2236777 lt!2156934)))

(declare-fun b!5272851 () Bool)

(declare-fun e!3279201 () Bool)

(assert (=> b!5272851 (= e!3279206 e!3279201)))

(declare-fun res!2236783 () Bool)

(assert (=> b!5272851 (=> res!2236783 e!3279201)))

(assert (=> b!5272851 (= res!2236783 call!374870)))

(declare-fun b!5272852 () Bool)

(declare-fun res!2236782 () Bool)

(assert (=> b!5272852 (=> (not res!2236782) (not e!3279204))))

(assert (=> b!5272852 (= res!2236782 (isEmpty!32806 (tail!10399 s!2326)))))

(declare-fun b!5272853 () Bool)

(declare-fun res!2236781 () Bool)

(assert (=> b!5272853 (=> res!2236781 e!3279200)))

(assert (=> b!5272853 (= res!2236781 (not ((_ is ElementMatch!14893) (regTwo!30298 r!7292))))))

(assert (=> b!5272853 (= e!3279205 e!3279200)))

(declare-fun bm!374865 () Bool)

(assert (=> bm!374865 (= call!374870 (isEmpty!32806 s!2326))))

(declare-fun b!5272854 () Bool)

(assert (=> b!5272854 (= e!3279203 (= lt!2156934 call!374870))))

(declare-fun b!5272855 () Bool)

(assert (=> b!5272855 (= e!3279202 (nullable!5062 (regTwo!30298 r!7292)))))

(declare-fun b!5272856 () Bool)

(declare-fun res!2236779 () Bool)

(assert (=> b!5272856 (=> res!2236779 e!3279201)))

(assert (=> b!5272856 (= res!2236779 (not (isEmpty!32806 (tail!10399 s!2326))))))

(declare-fun d!1696880 () Bool)

(assert (=> d!1696880 e!3279203))

(declare-fun c!913463 () Bool)

(assert (=> d!1696880 (= c!913463 ((_ is EmptyExpr!14893) (regTwo!30298 r!7292)))))

(assert (=> d!1696880 (= lt!2156934 e!3279202)))

(declare-fun c!913462 () Bool)

(assert (=> d!1696880 (= c!913462 (isEmpty!32806 s!2326))))

(assert (=> d!1696880 (validRegex!6629 (regTwo!30298 r!7292))))

(assert (=> d!1696880 (= (matchR!7078 (regTwo!30298 r!7292) s!2326) lt!2156934)))

(declare-fun b!5272857 () Bool)

(assert (=> b!5272857 (= e!3279205 (not lt!2156934))))

(declare-fun b!5272858 () Bool)

(assert (=> b!5272858 (= e!3279201 (not (= (head!11302 s!2326) (c!913081 (regTwo!30298 r!7292)))))))

(assert (= (and d!1696880 c!913462) b!5272855))

(assert (= (and d!1696880 (not c!913462)) b!5272848))

(assert (= (and d!1696880 c!913463) b!5272854))

(assert (= (and d!1696880 (not c!913463)) b!5272845))

(assert (= (and b!5272845 c!913464) b!5272857))

(assert (= (and b!5272845 (not c!913464)) b!5272853))

(assert (= (and b!5272853 (not res!2236781)) b!5272850))

(assert (= (and b!5272850 res!2236777) b!5272849))

(assert (= (and b!5272849 res!2236780) b!5272852))

(assert (= (and b!5272852 res!2236782) b!5272846))

(assert (= (and b!5272850 (not res!2236776)) b!5272847))

(assert (= (and b!5272847 res!2236778) b!5272851))

(assert (= (and b!5272851 (not res!2236783)) b!5272856))

(assert (= (and b!5272856 (not res!2236779)) b!5272858))

(assert (= (or b!5272854 b!5272849 b!5272851) bm!374865))

(declare-fun m!6311752 () Bool)

(assert (=> b!5272855 m!6311752))

(assert (=> b!5272856 m!6311060))

(assert (=> b!5272856 m!6311060))

(assert (=> b!5272856 m!6311062))

(assert (=> b!5272852 m!6311060))

(assert (=> b!5272852 m!6311060))

(assert (=> b!5272852 m!6311062))

(assert (=> bm!374865 m!6311056))

(assert (=> b!5272858 m!6311064))

(assert (=> d!1696880 m!6311056))

(declare-fun m!6311754 () Bool)

(assert (=> d!1696880 m!6311754))

(assert (=> b!5272848 m!6311064))

(assert (=> b!5272848 m!6311064))

(declare-fun m!6311756 () Bool)

(assert (=> b!5272848 m!6311756))

(assert (=> b!5272848 m!6311060))

(assert (=> b!5272848 m!6311756))

(assert (=> b!5272848 m!6311060))

(declare-fun m!6311758 () Bool)

(assert (=> b!5272848 m!6311758))

(assert (=> b!5272846 m!6311064))

(assert (=> b!5272229 d!1696880))

(declare-fun d!1696882 () Bool)

(assert (=> d!1696882 (= (isEmptyLang!835 lt!2156890) ((_ is EmptyLang!14893) lt!2156890))))

(assert (=> b!5272168 d!1696882))

(declare-fun d!1696884 () Bool)

(assert (=> d!1696884 (= (isEmpty!32804 (exprs!4777 (h!67304 zl!343))) ((_ is Nil!60855) (exprs!4777 (h!67304 zl!343))))))

(assert (=> b!5272205 d!1696884))

(assert (=> d!1696558 d!1696564))

(declare-fun d!1696886 () Bool)

(assert (=> d!1696886 (= (flatMap!620 z!1189 lambda!265971) (dynLambda!24047 lambda!265971 (h!67304 zl!343)))))

(assert (=> d!1696886 true))

(declare-fun _$13!1827 () Unit!153090)

(assert (=> d!1696886 (= (choose!39337 z!1189 (h!67304 zl!343) lambda!265971) _$13!1827)))

(declare-fun b_lambda!203373 () Bool)

(assert (=> (not b_lambda!203373) (not d!1696886)))

(declare-fun bs!1221657 () Bool)

(assert (= bs!1221657 d!1696886))

(assert (=> bs!1221657 m!6310632))

(assert (=> bs!1221657 m!6311024))

(assert (=> d!1696558 d!1696886))

(declare-fun b!5272882 () Bool)

(declare-fun e!3279226 () Bool)

(declare-fun e!3279228 () Bool)

(assert (=> b!5272882 (= e!3279226 e!3279228)))

(declare-fun c!913470 () Bool)

(assert (=> b!5272882 (= c!913470 ((_ is EmptyLang!14893) (regOne!30298 r!7292)))))

(declare-fun b!5272883 () Bool)

(declare-fun e!3279227 () Bool)

(assert (=> b!5272883 (= e!3279227 (= (head!11302 (_1!35395 (get!20924 lt!2156904))) (c!913081 (regOne!30298 r!7292))))))

(declare-fun b!5272884 () Bool)

(declare-fun e!3279223 () Bool)

(declare-fun e!3279229 () Bool)

(assert (=> b!5272884 (= e!3279223 e!3279229)))

(declare-fun res!2236800 () Bool)

(assert (=> b!5272884 (=> (not res!2236800) (not e!3279229))))

(declare-fun lt!2156936 () Bool)

(assert (=> b!5272884 (= res!2236800 (not lt!2156936))))

(declare-fun b!5272885 () Bool)

(declare-fun e!3279225 () Bool)

(assert (=> b!5272885 (= e!3279225 (matchR!7078 (derivativeStep!4113 (regOne!30298 r!7292) (head!11302 (_1!35395 (get!20924 lt!2156904)))) (tail!10399 (_1!35395 (get!20924 lt!2156904)))))))

(declare-fun b!5272886 () Bool)

(declare-fun res!2236802 () Bool)

(assert (=> b!5272886 (=> (not res!2236802) (not e!3279227))))

(declare-fun call!374872 () Bool)

(assert (=> b!5272886 (= res!2236802 (not call!374872))))

(declare-fun b!5272887 () Bool)

(declare-fun res!2236798 () Bool)

(assert (=> b!5272887 (=> res!2236798 e!3279223)))

(assert (=> b!5272887 (= res!2236798 e!3279227)))

(declare-fun res!2236799 () Bool)

(assert (=> b!5272887 (=> (not res!2236799) (not e!3279227))))

(assert (=> b!5272887 (= res!2236799 lt!2156936)))

(declare-fun b!5272888 () Bool)

(declare-fun e!3279224 () Bool)

(assert (=> b!5272888 (= e!3279229 e!3279224)))

(declare-fun res!2236805 () Bool)

(assert (=> b!5272888 (=> res!2236805 e!3279224)))

(assert (=> b!5272888 (= res!2236805 call!374872)))

(declare-fun b!5272889 () Bool)

(declare-fun res!2236804 () Bool)

(assert (=> b!5272889 (=> (not res!2236804) (not e!3279227))))

(assert (=> b!5272889 (= res!2236804 (isEmpty!32806 (tail!10399 (_1!35395 (get!20924 lt!2156904)))))))

(declare-fun b!5272890 () Bool)

(declare-fun res!2236803 () Bool)

(assert (=> b!5272890 (=> res!2236803 e!3279223)))

(assert (=> b!5272890 (= res!2236803 (not ((_ is ElementMatch!14893) (regOne!30298 r!7292))))))

(assert (=> b!5272890 (= e!3279228 e!3279223)))

(declare-fun bm!374867 () Bool)

(assert (=> bm!374867 (= call!374872 (isEmpty!32806 (_1!35395 (get!20924 lt!2156904))))))

(declare-fun b!5272891 () Bool)

(assert (=> b!5272891 (= e!3279226 (= lt!2156936 call!374872))))

(declare-fun b!5272892 () Bool)

(assert (=> b!5272892 (= e!3279225 (nullable!5062 (regOne!30298 r!7292)))))

(declare-fun b!5272893 () Bool)

(declare-fun res!2236801 () Bool)

(assert (=> b!5272893 (=> res!2236801 e!3279224)))

(assert (=> b!5272893 (= res!2236801 (not (isEmpty!32806 (tail!10399 (_1!35395 (get!20924 lt!2156904))))))))

(declare-fun d!1696892 () Bool)

(assert (=> d!1696892 e!3279226))

(declare-fun c!913469 () Bool)

(assert (=> d!1696892 (= c!913469 ((_ is EmptyExpr!14893) (regOne!30298 r!7292)))))

(assert (=> d!1696892 (= lt!2156936 e!3279225)))

(declare-fun c!913468 () Bool)

(assert (=> d!1696892 (= c!913468 (isEmpty!32806 (_1!35395 (get!20924 lt!2156904))))))

(assert (=> d!1696892 (validRegex!6629 (regOne!30298 r!7292))))

(assert (=> d!1696892 (= (matchR!7078 (regOne!30298 r!7292) (_1!35395 (get!20924 lt!2156904))) lt!2156936)))

(declare-fun b!5272894 () Bool)

(assert (=> b!5272894 (= e!3279228 (not lt!2156936))))

(declare-fun b!5272895 () Bool)

(assert (=> b!5272895 (= e!3279224 (not (= (head!11302 (_1!35395 (get!20924 lt!2156904))) (c!913081 (regOne!30298 r!7292)))))))

(assert (= (and d!1696892 c!913468) b!5272892))

(assert (= (and d!1696892 (not c!913468)) b!5272885))

(assert (= (and d!1696892 c!913469) b!5272891))

(assert (= (and d!1696892 (not c!913469)) b!5272882))

(assert (= (and b!5272882 c!913470) b!5272894))

(assert (= (and b!5272882 (not c!913470)) b!5272890))

(assert (= (and b!5272890 (not res!2236803)) b!5272887))

(assert (= (and b!5272887 res!2236799) b!5272886))

(assert (= (and b!5272886 res!2236802) b!5272889))

(assert (= (and b!5272889 res!2236804) b!5272883))

(assert (= (and b!5272887 (not res!2236798)) b!5272884))

(assert (= (and b!5272884 res!2236800) b!5272888))

(assert (= (and b!5272888 (not res!2236805)) b!5272893))

(assert (= (and b!5272893 (not res!2236801)) b!5272895))

(assert (= (or b!5272891 b!5272886 b!5272888) bm!374867))

(assert (=> b!5272892 m!6311684))

(declare-fun m!6311782 () Bool)

(assert (=> b!5272893 m!6311782))

(assert (=> b!5272893 m!6311782))

(declare-fun m!6311784 () Bool)

(assert (=> b!5272893 m!6311784))

(assert (=> b!5272889 m!6311782))

(assert (=> b!5272889 m!6311782))

(assert (=> b!5272889 m!6311784))

(declare-fun m!6311786 () Bool)

(assert (=> bm!374867 m!6311786))

(declare-fun m!6311788 () Bool)

(assert (=> b!5272895 m!6311788))

(assert (=> d!1696892 m!6311786))

(assert (=> d!1696892 m!6311136))

(assert (=> b!5272885 m!6311788))

(assert (=> b!5272885 m!6311788))

(declare-fun m!6311794 () Bool)

(assert (=> b!5272885 m!6311794))

(assert (=> b!5272885 m!6311782))

(assert (=> b!5272885 m!6311794))

(assert (=> b!5272885 m!6311782))

(declare-fun m!6311806 () Bool)

(assert (=> b!5272885 m!6311806))

(assert (=> b!5272883 m!6311788))

(assert (=> b!5272237 d!1696892))

(declare-fun d!1696904 () Bool)

(assert (=> d!1696904 (= (get!20924 lt!2156904) (v!51032 lt!2156904))))

(assert (=> b!5272237 d!1696904))

(declare-fun d!1696906 () Bool)

(assert (=> d!1696906 (= (isEmpty!32806 s!2326) ((_ is Nil!60854) s!2326))))

(assert (=> d!1696570 d!1696906))

(assert (=> d!1696570 d!1696596))

(declare-fun bs!1221660 () Bool)

(declare-fun b!5272921 () Bool)

(assert (= bs!1221660 (and b!5272921 b!5272100)))

(declare-fun lambda!266067 () Int)

(assert (=> bs!1221660 (= (and (= (reg!15222 (regTwo!30299 r!7292)) (reg!15222 r!7292)) (= (regTwo!30299 r!7292) r!7292)) (= lambda!266067 lambda!266014))))

(declare-fun bs!1221661 () Bool)

(assert (= bs!1221661 (and b!5272921 d!1696590)))

(assert (=> bs!1221661 (not (= lambda!266067 lambda!266027))))

(declare-fun bs!1221662 () Bool)

(assert (= bs!1221662 (and b!5272921 d!1696592)))

(assert (=> bs!1221662 (not (= lambda!266067 lambda!266033))))

(declare-fun bs!1221663 () Bool)

(assert (= bs!1221663 (and b!5272921 b!5272093)))

(assert (=> bs!1221663 (not (= lambda!266067 lambda!266015))))

(declare-fun bs!1221664 () Bool)

(assert (= bs!1221664 (and b!5272921 b!5271490)))

(assert (=> bs!1221664 (not (= lambda!266067 lambda!265970))))

(assert (=> bs!1221664 (not (= lambda!266067 lambda!265969))))

(assert (=> bs!1221662 (not (= lambda!266067 lambda!266032))))

(assert (=> b!5272921 true))

(assert (=> b!5272921 true))

(declare-fun bs!1221665 () Bool)

(declare-fun b!5272914 () Bool)

(assert (= bs!1221665 (and b!5272914 b!5272100)))

(declare-fun lambda!266068 () Int)

(assert (=> bs!1221665 (not (= lambda!266068 lambda!266014))))

(declare-fun bs!1221666 () Bool)

(assert (= bs!1221666 (and b!5272914 d!1696590)))

(assert (=> bs!1221666 (not (= lambda!266068 lambda!266027))))

(declare-fun bs!1221667 () Bool)

(assert (= bs!1221667 (and b!5272914 d!1696592)))

(assert (=> bs!1221667 (= (and (= (regOne!30298 (regTwo!30299 r!7292)) (regOne!30298 r!7292)) (= (regTwo!30298 (regTwo!30299 r!7292)) (regTwo!30298 r!7292))) (= lambda!266068 lambda!266033))))

(declare-fun bs!1221668 () Bool)

(assert (= bs!1221668 (and b!5272914 b!5272093)))

(assert (=> bs!1221668 (= (and (= (regOne!30298 (regTwo!30299 r!7292)) (regOne!30298 r!7292)) (= (regTwo!30298 (regTwo!30299 r!7292)) (regTwo!30298 r!7292))) (= lambda!266068 lambda!266015))))

(declare-fun bs!1221670 () Bool)

(assert (= bs!1221670 (and b!5272914 b!5272921)))

(assert (=> bs!1221670 (not (= lambda!266068 lambda!266067))))

(declare-fun bs!1221673 () Bool)

(assert (= bs!1221673 (and b!5272914 b!5271490)))

(assert (=> bs!1221673 (= (and (= (regOne!30298 (regTwo!30299 r!7292)) (regOne!30298 r!7292)) (= (regTwo!30298 (regTwo!30299 r!7292)) (regTwo!30298 r!7292))) (= lambda!266068 lambda!265970))))

(assert (=> bs!1221673 (not (= lambda!266068 lambda!265969))))

(assert (=> bs!1221667 (not (= lambda!266068 lambda!266032))))

(assert (=> b!5272914 true))

(assert (=> b!5272914 true))

(declare-fun b!5272911 () Bool)

(declare-fun c!913479 () Bool)

(assert (=> b!5272911 (= c!913479 ((_ is ElementMatch!14893) (regTwo!30299 r!7292)))))

(declare-fun e!3279238 () Bool)

(declare-fun e!3279243 () Bool)

(assert (=> b!5272911 (= e!3279238 e!3279243)))

(declare-fun b!5272912 () Bool)

(declare-fun e!3279242 () Bool)

(declare-fun e!3279240 () Bool)

(assert (=> b!5272912 (= e!3279242 e!3279240)))

(declare-fun res!2236810 () Bool)

(assert (=> b!5272912 (= res!2236810 (matchRSpec!1996 (regOne!30299 (regTwo!30299 r!7292)) s!2326))))

(assert (=> b!5272912 (=> res!2236810 e!3279240)))

(declare-fun b!5272913 () Bool)

(assert (=> b!5272913 (= e!3279243 (= s!2326 (Cons!60854 (c!913081 (regTwo!30299 r!7292)) Nil!60854)))))

(declare-fun d!1696908 () Bool)

(declare-fun c!913478 () Bool)

(assert (=> d!1696908 (= c!913478 ((_ is EmptyExpr!14893) (regTwo!30299 r!7292)))))

(declare-fun e!3279244 () Bool)

(assert (=> d!1696908 (= (matchRSpec!1996 (regTwo!30299 r!7292) s!2326) e!3279244)))

(declare-fun e!3279241 () Bool)

(declare-fun call!374880 () Bool)

(assert (=> b!5272914 (= e!3279241 call!374880)))

(declare-fun b!5272915 () Bool)

(declare-fun call!374879 () Bool)

(assert (=> b!5272915 (= e!3279244 call!374879)))

(declare-fun b!5272916 () Bool)

(declare-fun res!2236811 () Bool)

(declare-fun e!3279239 () Bool)

(assert (=> b!5272916 (=> res!2236811 e!3279239)))

(assert (=> b!5272916 (= res!2236811 call!374879)))

(assert (=> b!5272916 (= e!3279241 e!3279239)))

(declare-fun b!5272917 () Bool)

(assert (=> b!5272917 (= e!3279244 e!3279238)))

(declare-fun res!2236809 () Bool)

(assert (=> b!5272917 (= res!2236809 (not ((_ is EmptyLang!14893) (regTwo!30299 r!7292))))))

(assert (=> b!5272917 (=> (not res!2236809) (not e!3279238))))

(declare-fun b!5272918 () Bool)

(assert (=> b!5272918 (= e!3279240 (matchRSpec!1996 (regTwo!30299 (regTwo!30299 r!7292)) s!2326))))

(declare-fun bm!374874 () Bool)

(declare-fun c!913477 () Bool)

(assert (=> bm!374874 (= call!374880 (Exists!2074 (ite c!913477 lambda!266067 lambda!266068)))))

(declare-fun bm!374875 () Bool)

(assert (=> bm!374875 (= call!374879 (isEmpty!32806 s!2326))))

(declare-fun b!5272919 () Bool)

(assert (=> b!5272919 (= e!3279242 e!3279241)))

(assert (=> b!5272919 (= c!913477 ((_ is Star!14893) (regTwo!30299 r!7292)))))

(declare-fun b!5272920 () Bool)

(declare-fun c!913480 () Bool)

(assert (=> b!5272920 (= c!913480 ((_ is Union!14893) (regTwo!30299 r!7292)))))

(assert (=> b!5272920 (= e!3279243 e!3279242)))

(assert (=> b!5272921 (= e!3279239 call!374880)))

(assert (= (and d!1696908 c!913478) b!5272915))

(assert (= (and d!1696908 (not c!913478)) b!5272917))

(assert (= (and b!5272917 res!2236809) b!5272911))

(assert (= (and b!5272911 c!913479) b!5272913))

(assert (= (and b!5272911 (not c!913479)) b!5272920))

(assert (= (and b!5272920 c!913480) b!5272912))

(assert (= (and b!5272920 (not c!913480)) b!5272919))

(assert (= (and b!5272912 (not res!2236810)) b!5272918))

(assert (= (and b!5272919 c!913477) b!5272916))

(assert (= (and b!5272919 (not c!913477)) b!5272914))

(assert (= (and b!5272916 (not res!2236811)) b!5272921))

(assert (= (or b!5272921 b!5272914) bm!374874))

(assert (= (or b!5272915 b!5272916) bm!374875))

(declare-fun m!6311834 () Bool)

(assert (=> b!5272912 m!6311834))

(declare-fun m!6311836 () Bool)

(assert (=> b!5272918 m!6311836))

(declare-fun m!6311838 () Bool)

(assert (=> bm!374874 m!6311838))

(assert (=> bm!374875 m!6311056))

(assert (=> b!5272097 d!1696908))

(declare-fun d!1696918 () Bool)

(assert (=> d!1696918 (= (isEmpty!32804 (t!374174 (unfocusZipperList!335 zl!343))) ((_ is Nil!60855) (t!374174 (unfocusZipperList!335 zl!343))))))

(assert (=> b!5272172 d!1696918))

(declare-fun b!5272944 () Bool)

(declare-fun e!3279262 () (InoxSet Context!8554))

(declare-fun call!374892 () (InoxSet Context!8554))

(assert (=> b!5272944 (= e!3279262 call!374892)))

(declare-fun b!5272945 () Bool)

(declare-fun e!3279265 () (InoxSet Context!8554))

(declare-fun e!3279260 () (InoxSet Context!8554))

(assert (=> b!5272945 (= e!3279265 e!3279260)))

(declare-fun c!913490 () Bool)

(assert (=> b!5272945 (= c!913490 ((_ is Union!14893) (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292))))))))))

(declare-fun call!374894 () (InoxSet Context!8554))

(declare-fun call!374890 () List!60979)

(declare-fun bm!374885 () Bool)

(assert (=> bm!374885 (= call!374894 (derivationStepZipperDown!341 (ite c!913490 (regOne!30299 (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292))))))) (regOne!30298 (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292)))))))) (ite c!913490 (ite (or c!913198 c!913197) lt!2156804 (Context!8555 call!374690)) (Context!8555 call!374890)) (h!67302 s!2326)))))

(declare-fun bm!374886 () Bool)

(declare-fun call!374893 () (InoxSet Context!8554))

(assert (=> bm!374886 (= call!374892 call!374893)))

(declare-fun b!5272946 () Bool)

(declare-fun e!3279261 () (InoxSet Context!8554))

(assert (=> b!5272946 (= e!3279261 e!3279262)))

(declare-fun c!913492 () Bool)

(assert (=> b!5272946 (= c!913492 ((_ is Concat!23738) (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292))))))))))

(declare-fun bm!374887 () Bool)

(declare-fun call!374891 () (InoxSet Context!8554))

(assert (=> bm!374887 (= call!374893 call!374891)))

(declare-fun e!3279264 () Bool)

(declare-fun b!5272947 () Bool)

(assert (=> b!5272947 (= e!3279264 (nullable!5062 (regOne!30298 (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292)))))))))))

(declare-fun b!5272948 () Bool)

(declare-fun e!3279263 () (InoxSet Context!8554))

(assert (=> b!5272948 (= e!3279263 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5272950 () Bool)

(declare-fun c!913489 () Bool)

(assert (=> b!5272950 (= c!913489 e!3279264)))

(declare-fun res!2236820 () Bool)

(assert (=> b!5272950 (=> (not res!2236820) (not e!3279264))))

(assert (=> b!5272950 (= res!2236820 ((_ is Concat!23738) (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292))))))))))

(assert (=> b!5272950 (= e!3279260 e!3279261)))

(declare-fun call!374895 () List!60979)

(declare-fun bm!374888 () Bool)

(assert (=> bm!374888 (= call!374891 (derivationStepZipperDown!341 (ite c!913490 (regTwo!30299 (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292))))))) (ite c!913489 (regTwo!30298 (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292))))))) (ite c!913492 (regOne!30298 (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292))))))) (reg!15222 (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292)))))))))) (ite (or c!913490 c!913489) (ite (or c!913198 c!913197) lt!2156804 (Context!8555 call!374690)) (Context!8555 call!374895)) (h!67302 s!2326)))))

(declare-fun b!5272951 () Bool)

(assert (=> b!5272951 (= e!3279263 call!374892)))

(declare-fun bm!374889 () Bool)

(assert (=> bm!374889 (= call!374895 call!374890)))

(declare-fun c!913491 () Bool)

(declare-fun b!5272952 () Bool)

(assert (=> b!5272952 (= c!913491 ((_ is Star!14893) (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292))))))))))

(assert (=> b!5272952 (= e!3279262 e!3279263)))

(declare-fun b!5272953 () Bool)

(assert (=> b!5272953 (= e!3279260 ((_ map or) call!374894 call!374891))))

(declare-fun bm!374890 () Bool)

(assert (=> bm!374890 (= call!374890 ($colon$colon!1342 (exprs!4777 (ite (or c!913198 c!913197) lt!2156804 (Context!8555 call!374690))) (ite (or c!913489 c!913492) (regTwo!30298 (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292))))))) (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292)))))))))))

(declare-fun b!5272954 () Bool)

(assert (=> b!5272954 (= e!3279265 (store ((as const (Array Context!8554 Bool)) false) (ite (or c!913198 c!913197) lt!2156804 (Context!8555 call!374690)) true))))

(declare-fun b!5272949 () Bool)

(assert (=> b!5272949 (= e!3279261 ((_ map or) call!374894 call!374893))))

(declare-fun d!1696922 () Bool)

(declare-fun c!913488 () Bool)

(assert (=> d!1696922 (= c!913488 (and ((_ is ElementMatch!14893) (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292))))))) (= (c!913081 (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292))))))) (h!67302 s!2326))))))

(assert (=> d!1696922 (= (derivationStepZipperDown!341 (ite c!913198 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913197 (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913200 (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))) (reg!15222 (regTwo!30298 (regOne!30298 r!7292)))))) (ite (or c!913198 c!913197) lt!2156804 (Context!8555 call!374690)) (h!67302 s!2326)) e!3279265)))

(assert (= (and d!1696922 c!913488) b!5272954))

(assert (= (and d!1696922 (not c!913488)) b!5272945))

(assert (= (and b!5272945 c!913490) b!5272953))

(assert (= (and b!5272945 (not c!913490)) b!5272950))

(assert (= (and b!5272950 res!2236820) b!5272947))

(assert (= (and b!5272950 c!913489) b!5272949))

(assert (= (and b!5272950 (not c!913489)) b!5272946))

(assert (= (and b!5272946 c!913492) b!5272944))

(assert (= (and b!5272946 (not c!913492)) b!5272952))

(assert (= (and b!5272952 c!913491) b!5272951))

(assert (= (and b!5272952 (not c!913491)) b!5272948))

(assert (= (or b!5272944 b!5272951) bm!374889))

(assert (= (or b!5272944 b!5272951) bm!374886))

(assert (= (or b!5272949 bm!374889) bm!374890))

(assert (= (or b!5272949 bm!374886) bm!374887))

(assert (= (or b!5272953 bm!374887) bm!374888))

(assert (= (or b!5272953 b!5272949) bm!374885))

(declare-fun m!6311848 () Bool)

(assert (=> b!5272954 m!6311848))

(declare-fun m!6311850 () Bool)

(assert (=> b!5272947 m!6311850))

(declare-fun m!6311852 () Bool)

(assert (=> bm!374885 m!6311852))

(declare-fun m!6311854 () Bool)

(assert (=> bm!374890 m!6311854))

(declare-fun m!6311856 () Bool)

(assert (=> bm!374888 m!6311856))

(assert (=> bm!374683 d!1696922))

(assert (=> b!5272259 d!1696576))

(declare-fun d!1696928 () Bool)

(declare-fun c!913493 () Bool)

(assert (=> d!1696928 (= c!913493 (isEmpty!32806 (tail!10399 (t!374173 s!2326))))))

(declare-fun e!3279266 () Bool)

(assert (=> d!1696928 (= (matchZipper!1137 (derivationStepZipper!1136 lt!2156802 (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))) e!3279266)))

(declare-fun b!5272955 () Bool)

(assert (=> b!5272955 (= e!3279266 (nullableZipper!1292 (derivationStepZipper!1136 lt!2156802 (head!11302 (t!374173 s!2326)))))))

(declare-fun b!5272956 () Bool)

(assert (=> b!5272956 (= e!3279266 (matchZipper!1137 (derivationStepZipper!1136 (derivationStepZipper!1136 lt!2156802 (head!11302 (t!374173 s!2326))) (head!11302 (tail!10399 (t!374173 s!2326)))) (tail!10399 (tail!10399 (t!374173 s!2326)))))))

(assert (= (and d!1696928 c!913493) b!5272955))

(assert (= (and d!1696928 (not c!913493)) b!5272956))

(assert (=> d!1696928 m!6310798))

(assert (=> d!1696928 m!6311482))

(assert (=> b!5272955 m!6311074))

(declare-fun m!6311858 () Bool)

(assert (=> b!5272955 m!6311858))

(assert (=> b!5272956 m!6310798))

(assert (=> b!5272956 m!6311486))

(assert (=> b!5272956 m!6311074))

(assert (=> b!5272956 m!6311486))

(declare-fun m!6311860 () Bool)

(assert (=> b!5272956 m!6311860))

(assert (=> b!5272956 m!6310798))

(assert (=> b!5272956 m!6311490))

(assert (=> b!5272956 m!6311860))

(assert (=> b!5272956 m!6311490))

(declare-fun m!6311862 () Bool)

(assert (=> b!5272956 m!6311862))

(assert (=> b!5272144 d!1696928))

(declare-fun bs!1221679 () Bool)

(declare-fun d!1696930 () Bool)

(assert (= bs!1221679 (and d!1696930 b!5271503)))

(declare-fun lambda!266070 () Int)

(assert (=> bs!1221679 (= (= (head!11302 (t!374173 s!2326)) (h!67302 s!2326)) (= lambda!266070 lambda!265971))))

(declare-fun bs!1221680 () Bool)

(assert (= bs!1221680 (and d!1696930 d!1696506)))

(assert (=> bs!1221680 (= (= (head!11302 (t!374173 s!2326)) (h!67302 s!2326)) (= lambda!266070 lambda!266008))))

(declare-fun bs!1221681 () Bool)

(assert (= bs!1221681 (and d!1696930 d!1696758)))

(assert (=> bs!1221681 (= lambda!266070 lambda!266053)))

(assert (=> d!1696930 true))

(assert (=> d!1696930 (= (derivationStepZipper!1136 lt!2156802 (head!11302 (t!374173 s!2326))) (flatMap!620 lt!2156802 lambda!266070))))

(declare-fun bs!1221682 () Bool)

(assert (= bs!1221682 d!1696930))

(declare-fun m!6311864 () Bool)

(assert (=> bs!1221682 m!6311864))

(assert (=> b!5272144 d!1696930))

(assert (=> b!5272144 d!1696764))

(assert (=> b!5272144 d!1696770))

(assert (=> b!5272051 d!1696554))

(declare-fun d!1696932 () Bool)

(declare-fun res!2236821 () Bool)

(declare-fun e!3279267 () Bool)

(assert (=> d!1696932 (=> res!2236821 e!3279267)))

(assert (=> d!1696932 (= res!2236821 ((_ is Nil!60855) lt!2156893))))

(assert (=> d!1696932 (= (forall!14301 lt!2156893 lambda!266021) e!3279267)))

(declare-fun b!5272957 () Bool)

(declare-fun e!3279268 () Bool)

(assert (=> b!5272957 (= e!3279267 e!3279268)))

(declare-fun res!2236822 () Bool)

(assert (=> b!5272957 (=> (not res!2236822) (not e!3279268))))

(assert (=> b!5272957 (= res!2236822 (dynLambda!24048 lambda!266021 (h!67303 lt!2156893)))))

(declare-fun b!5272958 () Bool)

(assert (=> b!5272958 (= e!3279268 (forall!14301 (t!374174 lt!2156893) lambda!266021))))

(assert (= (and d!1696932 (not res!2236821)) b!5272957))

(assert (= (and b!5272957 res!2236822) b!5272958))

(declare-fun b_lambda!203379 () Bool)

(assert (=> (not b_lambda!203379) (not b!5272957)))

(declare-fun m!6311866 () Bool)

(assert (=> b!5272957 m!6311866))

(declare-fun m!6311868 () Bool)

(assert (=> b!5272958 m!6311868))

(assert (=> d!1696580 d!1696932))

(assert (=> b!5272179 d!1696582))

(declare-fun bs!1221683 () Bool)

(declare-fun d!1696934 () Bool)

(assert (= bs!1221683 (and d!1696934 d!1696774)))

(declare-fun lambda!266071 () Int)

(assert (=> bs!1221683 (= lambda!266071 lambda!266056)))

(declare-fun bs!1221684 () Bool)

(assert (= bs!1221684 (and d!1696934 d!1696580)))

(assert (=> bs!1221684 (= lambda!266071 lambda!266021)))

(declare-fun bs!1221685 () Bool)

(assert (= bs!1221685 (and d!1696934 d!1696466)))

(assert (=> bs!1221685 (= lambda!266071 lambda!265989)))

(declare-fun bs!1221686 () Bool)

(assert (= bs!1221686 (and d!1696934 d!1696578)))

(assert (=> bs!1221686 (= lambda!266071 lambda!266018)))

(declare-fun bs!1221687 () Bool)

(assert (= bs!1221687 (and d!1696934 d!1696552)))

(assert (=> bs!1221687 (= lambda!266071 lambda!266009)))

(declare-fun bs!1221688 () Bool)

(assert (= bs!1221688 (and d!1696934 d!1696754)))

(assert (=> bs!1221688 (= lambda!266071 lambda!266051)))

(declare-fun bs!1221689 () Bool)

(assert (= bs!1221689 (and d!1696934 d!1696582)))

(assert (=> bs!1221689 (= lambda!266071 lambda!266024)))

(declare-fun bs!1221690 () Bool)

(assert (= bs!1221690 (and d!1696934 d!1696864)))

(assert (=> bs!1221690 (= lambda!266071 lambda!266065)))

(declare-fun lt!2156938 () List!60979)

(assert (=> d!1696934 (forall!14301 lt!2156938 lambda!266071)))

(declare-fun e!3279269 () List!60979)

(assert (=> d!1696934 (= lt!2156938 e!3279269)))

(declare-fun c!913494 () Bool)

(assert (=> d!1696934 (= c!913494 ((_ is Cons!60856) (t!374175 zl!343)))))

(assert (=> d!1696934 (= (unfocusZipperList!335 (t!374175 zl!343)) lt!2156938)))

(declare-fun b!5272959 () Bool)

(assert (=> b!5272959 (= e!3279269 (Cons!60855 (generalisedConcat!562 (exprs!4777 (h!67304 (t!374175 zl!343)))) (unfocusZipperList!335 (t!374175 (t!374175 zl!343)))))))

(declare-fun b!5272960 () Bool)

(assert (=> b!5272960 (= e!3279269 Nil!60855)))

(assert (= (and d!1696934 c!913494) b!5272959))

(assert (= (and d!1696934 (not c!913494)) b!5272960))

(declare-fun m!6311870 () Bool)

(assert (=> d!1696934 m!6311870))

(declare-fun m!6311872 () Bool)

(assert (=> b!5272959 m!6311872))

(declare-fun m!6311874 () Bool)

(assert (=> b!5272959 m!6311874))

(assert (=> b!5272179 d!1696934))

(declare-fun d!1696936 () Bool)

(assert (=> d!1696936 (= (head!11303 (unfocusZipperList!335 zl!343)) (h!67303 (unfocusZipperList!335 zl!343)))))

(assert (=> b!5272165 d!1696936))

(declare-fun b!5272965 () Bool)

(declare-fun e!3279274 () (InoxSet Context!8554))

(declare-fun call!374898 () (InoxSet Context!8554))

(assert (=> b!5272965 (= e!3279274 call!374898)))

(declare-fun b!5272966 () Bool)

(declare-fun e!3279277 () (InoxSet Context!8554))

(declare-fun e!3279272 () (InoxSet Context!8554))

(assert (=> b!5272966 (= e!3279277 e!3279272)))

(declare-fun c!913497 () Bool)

(assert (=> b!5272966 (= c!913497 ((_ is Union!14893) (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))))))

(declare-fun call!374900 () (InoxSet Context!8554))

(declare-fun bm!374891 () Bool)

(declare-fun call!374896 () List!60979)

(assert (=> bm!374891 (= call!374900 (derivationStepZipperDown!341 (ite c!913497 (regOne!30299 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (regOne!30298 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))))) (ite c!913497 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (Context!8555 call!374896)) (h!67302 s!2326)))))

(declare-fun bm!374892 () Bool)

(declare-fun call!374899 () (InoxSet Context!8554))

(assert (=> bm!374892 (= call!374898 call!374899)))

(declare-fun b!5272967 () Bool)

(declare-fun e!3279273 () (InoxSet Context!8554))

(assert (=> b!5272967 (= e!3279273 e!3279274)))

(declare-fun c!913499 () Bool)

(assert (=> b!5272967 (= c!913499 ((_ is Concat!23738) (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))))))

(declare-fun bm!374893 () Bool)

(declare-fun call!374897 () (InoxSet Context!8554))

(assert (=> bm!374893 (= call!374899 call!374897)))

(declare-fun b!5272968 () Bool)

(declare-fun e!3279276 () Bool)

(assert (=> b!5272968 (= e!3279276 (nullable!5062 (regOne!30298 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))))))))

(declare-fun b!5272969 () Bool)

(declare-fun e!3279275 () (InoxSet Context!8554))

(assert (=> b!5272969 (= e!3279275 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5272971 () Bool)

(declare-fun c!913496 () Bool)

(assert (=> b!5272971 (= c!913496 e!3279276)))

(declare-fun res!2236827 () Bool)

(assert (=> b!5272971 (=> (not res!2236827) (not e!3279276))))

(assert (=> b!5272971 (= res!2236827 ((_ is Concat!23738) (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))))))

(assert (=> b!5272971 (= e!3279272 e!3279273)))

(declare-fun call!374901 () List!60979)

(declare-fun bm!374894 () Bool)

(assert (=> bm!374894 (= call!374897 (derivationStepZipperDown!341 (ite c!913497 (regTwo!30299 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (ite c!913496 (regTwo!30298 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (ite c!913499 (regOne!30298 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (reg!15222 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))))))) (ite (or c!913497 c!913496) (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (Context!8555 call!374901)) (h!67302 s!2326)))))

(declare-fun b!5272972 () Bool)

(assert (=> b!5272972 (= e!3279275 call!374898)))

(declare-fun bm!374895 () Bool)

(assert (=> bm!374895 (= call!374901 call!374896)))

(declare-fun b!5272973 () Bool)

(declare-fun c!913498 () Bool)

(assert (=> b!5272973 (= c!913498 ((_ is Star!14893) (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))))))

(assert (=> b!5272973 (= e!3279274 e!3279275)))

(declare-fun b!5272974 () Bool)

(assert (=> b!5272974 (= e!3279272 ((_ map or) call!374900 call!374897))))

(declare-fun bm!374896 () Bool)

(assert (=> bm!374896 (= call!374896 ($colon$colon!1342 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))))) (ite (or c!913496 c!913499) (regTwo!30298 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))))))))

(declare-fun b!5272975 () Bool)

(assert (=> b!5272975 (= e!3279277 (store ((as const (Array Context!8554 Bool)) false) (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) true))))

(declare-fun b!5272970 () Bool)

(assert (=> b!5272970 (= e!3279273 ((_ map or) call!374900 call!374899))))

(declare-fun d!1696938 () Bool)

(declare-fun c!913495 () Bool)

(assert (=> d!1696938 (= c!913495 (and ((_ is ElementMatch!14893) (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (= (c!913081 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (h!67302 s!2326))))))

(assert (=> d!1696938 (= (derivationStepZipperDown!341 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))) (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (h!67302 s!2326)) e!3279277)))

(assert (= (and d!1696938 c!913495) b!5272975))

(assert (= (and d!1696938 (not c!913495)) b!5272966))

(assert (= (and b!5272966 c!913497) b!5272974))

(assert (= (and b!5272966 (not c!913497)) b!5272971))

(assert (= (and b!5272971 res!2236827) b!5272968))

(assert (= (and b!5272971 c!913496) b!5272970))

(assert (= (and b!5272971 (not c!913496)) b!5272967))

(assert (= (and b!5272967 c!913499) b!5272965))

(assert (= (and b!5272967 (not c!913499)) b!5272973))

(assert (= (and b!5272973 c!913498) b!5272972))

(assert (= (and b!5272973 (not c!913498)) b!5272969))

(assert (= (or b!5272965 b!5272972) bm!374895))

(assert (= (or b!5272965 b!5272972) bm!374892))

(assert (= (or b!5272970 bm!374895) bm!374896))

(assert (= (or b!5272970 bm!374892) bm!374893))

(assert (= (or b!5272974 bm!374893) bm!374894))

(assert (= (or b!5272974 b!5272970) bm!374891))

(declare-fun m!6311876 () Bool)

(assert (=> b!5272975 m!6311876))

(declare-fun m!6311878 () Bool)

(assert (=> b!5272968 m!6311878))

(declare-fun m!6311880 () Bool)

(assert (=> bm!374891 m!6311880))

(declare-fun m!6311882 () Bool)

(assert (=> bm!374896 m!6311882))

(declare-fun m!6311884 () Bool)

(assert (=> bm!374894 m!6311884))

(assert (=> bm!374717 d!1696938))

(assert (=> b!5272031 d!1696456))

(assert (=> d!1696536 d!1696796))

(declare-fun d!1696940 () Bool)

(assert (=> d!1696940 (= (isUnion!267 lt!2156890) ((_ is Union!14893) lt!2156890))))

(assert (=> b!5272169 d!1696940))

(declare-fun b!5272989 () Bool)

(declare-fun e!3279284 () List!60978)

(assert (=> b!5272989 (= e!3279284 (Cons!60854 (h!67302 (_1!35395 (get!20924 lt!2156904))) (++!13272 (t!374173 (_1!35395 (get!20924 lt!2156904))) (_2!35395 (get!20924 lt!2156904)))))))

(declare-fun d!1696942 () Bool)

(declare-fun e!3279285 () Bool)

(assert (=> d!1696942 e!3279285))

(declare-fun res!2236833 () Bool)

(assert (=> d!1696942 (=> (not res!2236833) (not e!3279285))))

(declare-fun lt!2156942 () List!60978)

(declare-fun content!10827 (List!60978) (InoxSet C!30056))

(assert (=> d!1696942 (= res!2236833 (= (content!10827 lt!2156942) ((_ map or) (content!10827 (_1!35395 (get!20924 lt!2156904))) (content!10827 (_2!35395 (get!20924 lt!2156904))))))))

(assert (=> d!1696942 (= lt!2156942 e!3279284)))

(declare-fun c!913504 () Bool)

(assert (=> d!1696942 (= c!913504 ((_ is Nil!60854) (_1!35395 (get!20924 lt!2156904))))))

(assert (=> d!1696942 (= (++!13272 (_1!35395 (get!20924 lt!2156904)) (_2!35395 (get!20924 lt!2156904))) lt!2156942)))

(declare-fun b!5272990 () Bool)

(declare-fun res!2236832 () Bool)

(assert (=> b!5272990 (=> (not res!2236832) (not e!3279285))))

(declare-fun size!39749 (List!60978) Int)

(assert (=> b!5272990 (= res!2236832 (= (size!39749 lt!2156942) (+ (size!39749 (_1!35395 (get!20924 lt!2156904))) (size!39749 (_2!35395 (get!20924 lt!2156904))))))))

(declare-fun b!5272991 () Bool)

(assert (=> b!5272991 (= e!3279285 (or (not (= (_2!35395 (get!20924 lt!2156904)) Nil!60854)) (= lt!2156942 (_1!35395 (get!20924 lt!2156904)))))))

(declare-fun b!5272988 () Bool)

(assert (=> b!5272988 (= e!3279284 (_2!35395 (get!20924 lt!2156904)))))

(assert (= (and d!1696942 c!913504) b!5272988))

(assert (= (and d!1696942 (not c!913504)) b!5272989))

(assert (= (and d!1696942 res!2236833) b!5272990))

(assert (= (and b!5272990 res!2236832) b!5272991))

(declare-fun m!6311902 () Bool)

(assert (=> b!5272989 m!6311902))

(declare-fun m!6311904 () Bool)

(assert (=> d!1696942 m!6311904))

(declare-fun m!6311906 () Bool)

(assert (=> d!1696942 m!6311906))

(declare-fun m!6311908 () Bool)

(assert (=> d!1696942 m!6311908))

(declare-fun m!6311910 () Bool)

(assert (=> b!5272990 m!6311910))

(declare-fun m!6311912 () Bool)

(assert (=> b!5272990 m!6311912))

(declare-fun m!6311914 () Bool)

(assert (=> b!5272990 m!6311914))

(assert (=> b!5272230 d!1696942))

(assert (=> b!5272230 d!1696904))

(declare-fun d!1696956 () Bool)

(assert (=> d!1696956 (= (isConcat!350 lt!2156896) ((_ is Concat!23738) lt!2156896))))

(assert (=> b!5272202 d!1696956))

(declare-fun d!1696958 () Bool)

(assert (=> d!1696958 (= (isEmpty!32806 (tail!10399 s!2326)) ((_ is Nil!60854) (tail!10399 s!2326)))))

(assert (=> b!5272136 d!1696958))

(declare-fun d!1696960 () Bool)

(assert (=> d!1696960 (= (tail!10399 s!2326) (t!374173 s!2326))))

(assert (=> b!5272136 d!1696960))

(declare-fun b!5273005 () Bool)

(declare-fun e!3279290 () Bool)

(declare-fun e!3279292 () Bool)

(assert (=> b!5273005 (= e!3279290 e!3279292)))

(declare-fun res!2236838 () Bool)

(assert (=> b!5273005 (=> (not res!2236838) (not e!3279292))))

(declare-fun call!374904 () Bool)

(assert (=> b!5273005 (= res!2236838 call!374904)))

(declare-fun b!5273006 () Bool)

(declare-fun e!3279295 () Bool)

(declare-fun e!3279294 () Bool)

(assert (=> b!5273006 (= e!3279295 e!3279294)))

(declare-fun c!913506 () Bool)

(assert (=> b!5273006 (= c!913506 ((_ is Star!14893) (ite c!913302 (reg!15222 r!7292) (ite c!913301 (regTwo!30299 r!7292) (regTwo!30298 r!7292)))))))

(declare-fun bm!374897 () Bool)

(declare-fun call!374903 () Bool)

(declare-fun call!374902 () Bool)

(assert (=> bm!374897 (= call!374903 call!374902)))

(declare-fun c!913505 () Bool)

(declare-fun bm!374898 () Bool)

(assert (=> bm!374898 (= call!374904 (validRegex!6629 (ite c!913505 (regOne!30299 (ite c!913302 (reg!15222 r!7292) (ite c!913301 (regTwo!30299 r!7292) (regTwo!30298 r!7292)))) (regOne!30298 (ite c!913302 (reg!15222 r!7292) (ite c!913301 (regTwo!30299 r!7292) (regTwo!30298 r!7292)))))))))

(declare-fun b!5273007 () Bool)

(declare-fun res!2236836 () Bool)

(declare-fun e!3279296 () Bool)

(assert (=> b!5273007 (=> (not res!2236836) (not e!3279296))))

(assert (=> b!5273007 (= res!2236836 call!374904)))

(declare-fun e!3279291 () Bool)

(assert (=> b!5273007 (= e!3279291 e!3279296)))

(declare-fun d!1696962 () Bool)

(declare-fun res!2236834 () Bool)

(assert (=> d!1696962 (=> res!2236834 e!3279295)))

(assert (=> d!1696962 (= res!2236834 ((_ is ElementMatch!14893) (ite c!913302 (reg!15222 r!7292) (ite c!913301 (regTwo!30299 r!7292) (regTwo!30298 r!7292)))))))

(assert (=> d!1696962 (= (validRegex!6629 (ite c!913302 (reg!15222 r!7292) (ite c!913301 (regTwo!30299 r!7292) (regTwo!30298 r!7292)))) e!3279295)))

(declare-fun bm!374899 () Bool)

(assert (=> bm!374899 (= call!374902 (validRegex!6629 (ite c!913506 (reg!15222 (ite c!913302 (reg!15222 r!7292) (ite c!913301 (regTwo!30299 r!7292) (regTwo!30298 r!7292)))) (ite c!913505 (regTwo!30299 (ite c!913302 (reg!15222 r!7292) (ite c!913301 (regTwo!30299 r!7292) (regTwo!30298 r!7292)))) (regTwo!30298 (ite c!913302 (reg!15222 r!7292) (ite c!913301 (regTwo!30299 r!7292) (regTwo!30298 r!7292))))))))))

(declare-fun b!5273008 () Bool)

(declare-fun res!2236835 () Bool)

(assert (=> b!5273008 (=> res!2236835 e!3279290)))

(assert (=> b!5273008 (= res!2236835 (not ((_ is Concat!23738) (ite c!913302 (reg!15222 r!7292) (ite c!913301 (regTwo!30299 r!7292) (regTwo!30298 r!7292))))))))

(assert (=> b!5273008 (= e!3279291 e!3279290)))

(declare-fun b!5273009 () Bool)

(declare-fun e!3279293 () Bool)

(assert (=> b!5273009 (= e!3279293 call!374902)))

(declare-fun b!5273011 () Bool)

(assert (=> b!5273011 (= e!3279296 call!374903)))

(declare-fun b!5273013 () Bool)

(assert (=> b!5273013 (= e!3279294 e!3279291)))

(assert (=> b!5273013 (= c!913505 ((_ is Union!14893) (ite c!913302 (reg!15222 r!7292) (ite c!913301 (regTwo!30299 r!7292) (regTwo!30298 r!7292)))))))

(declare-fun b!5273015 () Bool)

(assert (=> b!5273015 (= e!3279294 e!3279293)))

(declare-fun res!2236837 () Bool)

(assert (=> b!5273015 (= res!2236837 (not (nullable!5062 (reg!15222 (ite c!913302 (reg!15222 r!7292) (ite c!913301 (regTwo!30299 r!7292) (regTwo!30298 r!7292)))))))))

(assert (=> b!5273015 (=> (not res!2236837) (not e!3279293))))

(declare-fun b!5273017 () Bool)

(assert (=> b!5273017 (= e!3279292 call!374903)))

(assert (= (and d!1696962 (not res!2236834)) b!5273006))

(assert (= (and b!5273006 c!913506) b!5273015))

(assert (= (and b!5273006 (not c!913506)) b!5273013))

(assert (= (and b!5273015 res!2236837) b!5273009))

(assert (= (and b!5273013 c!913505) b!5273007))

(assert (= (and b!5273013 (not c!913505)) b!5273008))

(assert (= (and b!5273007 res!2236836) b!5273011))

(assert (= (and b!5273008 (not res!2236835)) b!5273005))

(assert (= (and b!5273005 res!2236838) b!5273017))

(assert (= (or b!5273011 b!5273017) bm!374897))

(assert (= (or b!5273007 b!5273005) bm!374898))

(assert (= (or b!5273009 bm!374897) bm!374899))

(declare-fun m!6311916 () Bool)

(assert (=> bm!374898 m!6311916))

(declare-fun m!6311918 () Bool)

(assert (=> bm!374899 m!6311918))

(declare-fun m!6311920 () Bool)

(assert (=> b!5273015 m!6311920))

(assert (=> bm!374737 d!1696962))

(declare-fun d!1696964 () Bool)

(declare-fun c!913507 () Bool)

(assert (=> d!1696964 (= c!913507 (isEmpty!32806 (tail!10399 (t!374173 s!2326))))))

(declare-fun e!3279302 () Bool)

(assert (=> d!1696964 (= (matchZipper!1137 (derivationStepZipper!1136 lt!2156807 (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))) e!3279302)))

(declare-fun b!5273034 () Bool)

(assert (=> b!5273034 (= e!3279302 (nullableZipper!1292 (derivationStepZipper!1136 lt!2156807 (head!11302 (t!374173 s!2326)))))))

(declare-fun b!5273035 () Bool)

(assert (=> b!5273035 (= e!3279302 (matchZipper!1137 (derivationStepZipper!1136 (derivationStepZipper!1136 lt!2156807 (head!11302 (t!374173 s!2326))) (head!11302 (tail!10399 (t!374173 s!2326)))) (tail!10399 (tail!10399 (t!374173 s!2326)))))))

(assert (= (and d!1696964 c!913507) b!5273034))

(assert (= (and d!1696964 (not c!913507)) b!5273035))

(assert (=> d!1696964 m!6310798))

(assert (=> d!1696964 m!6311482))

(assert (=> b!5273034 m!6310990))

(declare-fun m!6311922 () Bool)

(assert (=> b!5273034 m!6311922))

(assert (=> b!5273035 m!6310798))

(assert (=> b!5273035 m!6311486))

(assert (=> b!5273035 m!6310990))

(assert (=> b!5273035 m!6311486))

(declare-fun m!6311924 () Bool)

(assert (=> b!5273035 m!6311924))

(assert (=> b!5273035 m!6310798))

(assert (=> b!5273035 m!6311490))

(assert (=> b!5273035 m!6311924))

(assert (=> b!5273035 m!6311490))

(declare-fun m!6311926 () Bool)

(assert (=> b!5273035 m!6311926))

(assert (=> b!5272026 d!1696964))

(declare-fun bs!1221719 () Bool)

(declare-fun d!1696966 () Bool)

(assert (= bs!1221719 (and d!1696966 b!5271503)))

(declare-fun lambda!266077 () Int)

(assert (=> bs!1221719 (= (= (head!11302 (t!374173 s!2326)) (h!67302 s!2326)) (= lambda!266077 lambda!265971))))

(declare-fun bs!1221720 () Bool)

(assert (= bs!1221720 (and d!1696966 d!1696506)))

(assert (=> bs!1221720 (= (= (head!11302 (t!374173 s!2326)) (h!67302 s!2326)) (= lambda!266077 lambda!266008))))

(declare-fun bs!1221721 () Bool)

(assert (= bs!1221721 (and d!1696966 d!1696758)))

(assert (=> bs!1221721 (= lambda!266077 lambda!266053)))

(declare-fun bs!1221722 () Bool)

(assert (= bs!1221722 (and d!1696966 d!1696930)))

(assert (=> bs!1221722 (= lambda!266077 lambda!266070)))

(assert (=> d!1696966 true))

(assert (=> d!1696966 (= (derivationStepZipper!1136 lt!2156807 (head!11302 (t!374173 s!2326))) (flatMap!620 lt!2156807 lambda!266077))))

(declare-fun bs!1221723 () Bool)

(assert (= bs!1221723 d!1696966))

(declare-fun m!6311928 () Bool)

(assert (=> bs!1221723 m!6311928))

(assert (=> b!5272026 d!1696966))

(assert (=> b!5272026 d!1696764))

(assert (=> b!5272026 d!1696770))

(declare-fun b!5273068 () Bool)

(declare-fun e!3279314 () Bool)

(declare-fun e!3279316 () Bool)

(assert (=> b!5273068 (= e!3279314 e!3279316)))

(declare-fun c!913510 () Bool)

(assert (=> b!5273068 (= c!913510 ((_ is EmptyLang!14893) (derivativeStep!4113 r!7292 (head!11302 s!2326))))))

(declare-fun b!5273069 () Bool)

(declare-fun e!3279315 () Bool)

(assert (=> b!5273069 (= e!3279315 (= (head!11302 (tail!10399 s!2326)) (c!913081 (derivativeStep!4113 r!7292 (head!11302 s!2326)))))))

(declare-fun b!5273070 () Bool)

(declare-fun e!3279311 () Bool)

(declare-fun e!3279317 () Bool)

(assert (=> b!5273070 (= e!3279311 e!3279317)))

(declare-fun res!2236841 () Bool)

(assert (=> b!5273070 (=> (not res!2236841) (not e!3279317))))

(declare-fun lt!2156943 () Bool)

(assert (=> b!5273070 (= res!2236841 (not lt!2156943))))

(declare-fun b!5273071 () Bool)

(declare-fun e!3279313 () Bool)

(assert (=> b!5273071 (= e!3279313 (matchR!7078 (derivativeStep!4113 (derivativeStep!4113 r!7292 (head!11302 s!2326)) (head!11302 (tail!10399 s!2326))) (tail!10399 (tail!10399 s!2326))))))

(declare-fun b!5273072 () Bool)

(declare-fun res!2236843 () Bool)

(assert (=> b!5273072 (=> (not res!2236843) (not e!3279315))))

(declare-fun call!374905 () Bool)

(assert (=> b!5273072 (= res!2236843 (not call!374905))))

(declare-fun b!5273073 () Bool)

(declare-fun res!2236839 () Bool)

(assert (=> b!5273073 (=> res!2236839 e!3279311)))

(assert (=> b!5273073 (= res!2236839 e!3279315)))

(declare-fun res!2236840 () Bool)

(assert (=> b!5273073 (=> (not res!2236840) (not e!3279315))))

(assert (=> b!5273073 (= res!2236840 lt!2156943)))

(declare-fun b!5273074 () Bool)

(declare-fun e!3279312 () Bool)

(assert (=> b!5273074 (= e!3279317 e!3279312)))

(declare-fun res!2236846 () Bool)

(assert (=> b!5273074 (=> res!2236846 e!3279312)))

(assert (=> b!5273074 (= res!2236846 call!374905)))

(declare-fun b!5273075 () Bool)

(declare-fun res!2236845 () Bool)

(assert (=> b!5273075 (=> (not res!2236845) (not e!3279315))))

(assert (=> b!5273075 (= res!2236845 (isEmpty!32806 (tail!10399 (tail!10399 s!2326))))))

(declare-fun b!5273076 () Bool)

(declare-fun res!2236844 () Bool)

(assert (=> b!5273076 (=> res!2236844 e!3279311)))

(assert (=> b!5273076 (= res!2236844 (not ((_ is ElementMatch!14893) (derivativeStep!4113 r!7292 (head!11302 s!2326)))))))

(assert (=> b!5273076 (= e!3279316 e!3279311)))

(declare-fun bm!374900 () Bool)

(assert (=> bm!374900 (= call!374905 (isEmpty!32806 (tail!10399 s!2326)))))

(declare-fun b!5273077 () Bool)

(assert (=> b!5273077 (= e!3279314 (= lt!2156943 call!374905))))

(declare-fun b!5273078 () Bool)

(assert (=> b!5273078 (= e!3279313 (nullable!5062 (derivativeStep!4113 r!7292 (head!11302 s!2326))))))

(declare-fun b!5273079 () Bool)

(declare-fun res!2236842 () Bool)

(assert (=> b!5273079 (=> res!2236842 e!3279312)))

(assert (=> b!5273079 (= res!2236842 (not (isEmpty!32806 (tail!10399 (tail!10399 s!2326)))))))

(declare-fun d!1696968 () Bool)

(assert (=> d!1696968 e!3279314))

(declare-fun c!913509 () Bool)

(assert (=> d!1696968 (= c!913509 ((_ is EmptyExpr!14893) (derivativeStep!4113 r!7292 (head!11302 s!2326))))))

(assert (=> d!1696968 (= lt!2156943 e!3279313)))

(declare-fun c!913508 () Bool)

(assert (=> d!1696968 (= c!913508 (isEmpty!32806 (tail!10399 s!2326)))))

(assert (=> d!1696968 (validRegex!6629 (derivativeStep!4113 r!7292 (head!11302 s!2326)))))

(assert (=> d!1696968 (= (matchR!7078 (derivativeStep!4113 r!7292 (head!11302 s!2326)) (tail!10399 s!2326)) lt!2156943)))

(declare-fun b!5273080 () Bool)

(assert (=> b!5273080 (= e!3279316 (not lt!2156943))))

(declare-fun b!5273081 () Bool)

(assert (=> b!5273081 (= e!3279312 (not (= (head!11302 (tail!10399 s!2326)) (c!913081 (derivativeStep!4113 r!7292 (head!11302 s!2326))))))))

(assert (= (and d!1696968 c!913508) b!5273078))

(assert (= (and d!1696968 (not c!913508)) b!5273071))

(assert (= (and d!1696968 c!913509) b!5273077))

(assert (= (and d!1696968 (not c!913509)) b!5273068))

(assert (= (and b!5273068 c!913510) b!5273080))

(assert (= (and b!5273068 (not c!913510)) b!5273076))

(assert (= (and b!5273076 (not res!2236844)) b!5273073))

(assert (= (and b!5273073 res!2236840) b!5273072))

(assert (= (and b!5273072 res!2236843) b!5273075))

(assert (= (and b!5273075 res!2236845) b!5273069))

(assert (= (and b!5273073 (not res!2236839)) b!5273070))

(assert (= (and b!5273070 res!2236841) b!5273074))

(assert (= (and b!5273074 (not res!2236846)) b!5273079))

(assert (= (and b!5273079 (not res!2236842)) b!5273081))

(assert (= (or b!5273077 b!5273072 b!5273074) bm!374900))

(assert (=> b!5273078 m!6311066))

(declare-fun m!6311930 () Bool)

(assert (=> b!5273078 m!6311930))

(assert (=> b!5273079 m!6311060))

(declare-fun m!6311932 () Bool)

(assert (=> b!5273079 m!6311932))

(assert (=> b!5273079 m!6311932))

(declare-fun m!6311934 () Bool)

(assert (=> b!5273079 m!6311934))

(assert (=> b!5273075 m!6311060))

(assert (=> b!5273075 m!6311932))

(assert (=> b!5273075 m!6311932))

(assert (=> b!5273075 m!6311934))

(assert (=> bm!374900 m!6311060))

(assert (=> bm!374900 m!6311062))

(assert (=> b!5273081 m!6311060))

(declare-fun m!6311936 () Bool)

(assert (=> b!5273081 m!6311936))

(assert (=> d!1696968 m!6311060))

(assert (=> d!1696968 m!6311062))

(assert (=> d!1696968 m!6311066))

(declare-fun m!6311938 () Bool)

(assert (=> d!1696968 m!6311938))

(assert (=> b!5273071 m!6311060))

(assert (=> b!5273071 m!6311936))

(assert (=> b!5273071 m!6311066))

(assert (=> b!5273071 m!6311936))

(declare-fun m!6311940 () Bool)

(assert (=> b!5273071 m!6311940))

(assert (=> b!5273071 m!6311060))

(assert (=> b!5273071 m!6311932))

(assert (=> b!5273071 m!6311940))

(assert (=> b!5273071 m!6311932))

(declare-fun m!6311942 () Bool)

(assert (=> b!5273071 m!6311942))

(assert (=> b!5273069 m!6311060))

(assert (=> b!5273069 m!6311936))

(assert (=> b!5272132 d!1696968))

(declare-fun bm!374909 () Bool)

(declare-fun call!374914 () Regex!14893)

(declare-fun call!374915 () Regex!14893)

(assert (=> bm!374909 (= call!374914 call!374915)))

(declare-fun b!5273153 () Bool)

(declare-fun e!3279347 () Regex!14893)

(assert (=> b!5273153 (= e!3279347 (ite (= (head!11302 s!2326) (c!913081 r!7292)) EmptyExpr!14893 EmptyLang!14893))))

(declare-fun b!5273154 () Bool)

(declare-fun c!913522 () Bool)

(assert (=> b!5273154 (= c!913522 (nullable!5062 (regOne!30298 r!7292)))))

(declare-fun e!3279348 () Regex!14893)

(declare-fun e!3279349 () Regex!14893)

(assert (=> b!5273154 (= e!3279348 e!3279349)))

(declare-fun b!5273155 () Bool)

(declare-fun e!3279350 () Regex!14893)

(assert (=> b!5273155 (= e!3279350 e!3279347)))

(declare-fun c!913524 () Bool)

(assert (=> b!5273155 (= c!913524 ((_ is ElementMatch!14893) r!7292))))

(declare-fun b!5273156 () Bool)

(assert (=> b!5273156 (= e!3279348 (Concat!23738 call!374915 r!7292))))

(declare-fun b!5273157 () Bool)

(declare-fun call!374916 () Regex!14893)

(assert (=> b!5273157 (= e!3279349 (Union!14893 (Concat!23738 call!374916 (regTwo!30298 r!7292)) call!374914))))

(declare-fun b!5273158 () Bool)

(assert (=> b!5273158 (= e!3279349 (Union!14893 (Concat!23738 call!374914 (regTwo!30298 r!7292)) EmptyLang!14893))))

(declare-fun b!5273159 () Bool)

(assert (=> b!5273159 (= e!3279350 EmptyLang!14893)))

(declare-fun c!913521 () Bool)

(declare-fun c!913523 () Bool)

(declare-fun bm!374910 () Bool)

(declare-fun call!374917 () Regex!14893)

(assert (=> bm!374910 (= call!374917 (derivativeStep!4113 (ite c!913523 (regTwo!30299 r!7292) (ite c!913521 (reg!15222 r!7292) (ite c!913522 (regTwo!30298 r!7292) (regOne!30298 r!7292)))) (head!11302 s!2326)))))

(declare-fun d!1696970 () Bool)

(declare-fun lt!2156946 () Regex!14893)

(assert (=> d!1696970 (validRegex!6629 lt!2156946)))

(assert (=> d!1696970 (= lt!2156946 e!3279350)))

(declare-fun c!913525 () Bool)

(assert (=> d!1696970 (= c!913525 (or ((_ is EmptyExpr!14893) r!7292) ((_ is EmptyLang!14893) r!7292)))))

(assert (=> d!1696970 (validRegex!6629 r!7292)))

(assert (=> d!1696970 (= (derivativeStep!4113 r!7292 (head!11302 s!2326)) lt!2156946)))

(declare-fun b!5273160 () Bool)

(declare-fun e!3279346 () Regex!14893)

(assert (=> b!5273160 (= e!3279346 (Union!14893 call!374916 call!374917))))

(declare-fun bm!374911 () Bool)

(assert (=> bm!374911 (= call!374915 call!374917)))

(declare-fun bm!374912 () Bool)

(assert (=> bm!374912 (= call!374916 (derivativeStep!4113 (ite c!913523 (regOne!30299 r!7292) (regOne!30298 r!7292)) (head!11302 s!2326)))))

(declare-fun b!5273161 () Bool)

(assert (=> b!5273161 (= c!913523 ((_ is Union!14893) r!7292))))

(assert (=> b!5273161 (= e!3279347 e!3279346)))

(declare-fun b!5273162 () Bool)

(assert (=> b!5273162 (= e!3279346 e!3279348)))

(assert (=> b!5273162 (= c!913521 ((_ is Star!14893) r!7292))))

(assert (= (and d!1696970 c!913525) b!5273159))

(assert (= (and d!1696970 (not c!913525)) b!5273155))

(assert (= (and b!5273155 c!913524) b!5273153))

(assert (= (and b!5273155 (not c!913524)) b!5273161))

(assert (= (and b!5273161 c!913523) b!5273160))

(assert (= (and b!5273161 (not c!913523)) b!5273162))

(assert (= (and b!5273162 c!913521) b!5273156))

(assert (= (and b!5273162 (not c!913521)) b!5273154))

(assert (= (and b!5273154 c!913522) b!5273157))

(assert (= (and b!5273154 (not c!913522)) b!5273158))

(assert (= (or b!5273157 b!5273158) bm!374909))

(assert (= (or b!5273156 bm!374909) bm!374911))

(assert (= (or b!5273160 bm!374911) bm!374910))

(assert (= (or b!5273160 b!5273157) bm!374912))

(assert (=> b!5273154 m!6311684))

(assert (=> bm!374910 m!6311064))

(declare-fun m!6311956 () Bool)

(assert (=> bm!374910 m!6311956))

(declare-fun m!6311958 () Bool)

(assert (=> d!1696970 m!6311958))

(assert (=> d!1696970 m!6310598))

(assert (=> bm!374912 m!6311064))

(declare-fun m!6311960 () Bool)

(assert (=> bm!374912 m!6311960))

(assert (=> b!5272132 d!1696970))

(declare-fun d!1696982 () Bool)

(assert (=> d!1696982 (= (head!11302 s!2326) (h!67302 s!2326))))

(assert (=> b!5272132 d!1696982))

(assert (=> b!5272132 d!1696960))

(declare-fun d!1696984 () Bool)

(assert (=> d!1696984 (= (Exists!2074 lambda!266032) (choose!39342 lambda!266032))))

(declare-fun bs!1221729 () Bool)

(assert (= bs!1221729 d!1696984))

(declare-fun m!6311962 () Bool)

(assert (=> bs!1221729 m!6311962))

(assert (=> d!1696592 d!1696984))

(declare-fun d!1696986 () Bool)

(assert (=> d!1696986 (= (Exists!2074 lambda!266033) (choose!39342 lambda!266033))))

(declare-fun bs!1221730 () Bool)

(assert (= bs!1221730 d!1696986))

(declare-fun m!6311964 () Bool)

(assert (=> bs!1221730 m!6311964))

(assert (=> d!1696592 d!1696986))

(declare-fun bs!1221731 () Bool)

(declare-fun d!1696988 () Bool)

(assert (= bs!1221731 (and d!1696988 b!5272100)))

(declare-fun lambda!266082 () Int)

(assert (=> bs!1221731 (not (= lambda!266082 lambda!266014))))

(declare-fun bs!1221732 () Bool)

(assert (= bs!1221732 (and d!1696988 d!1696590)))

(assert (=> bs!1221732 (= lambda!266082 lambda!266027)))

(declare-fun bs!1221733 () Bool)

(assert (= bs!1221733 (and d!1696988 d!1696592)))

(assert (=> bs!1221733 (not (= lambda!266082 lambda!266033))))

(declare-fun bs!1221734 () Bool)

(assert (= bs!1221734 (and d!1696988 b!5272093)))

(assert (=> bs!1221734 (not (= lambda!266082 lambda!266015))))

(declare-fun bs!1221735 () Bool)

(assert (= bs!1221735 (and d!1696988 b!5272914)))

(assert (=> bs!1221735 (not (= lambda!266082 lambda!266068))))

(declare-fun bs!1221736 () Bool)

(assert (= bs!1221736 (and d!1696988 b!5272921)))

(assert (=> bs!1221736 (not (= lambda!266082 lambda!266067))))

(declare-fun bs!1221737 () Bool)

(assert (= bs!1221737 (and d!1696988 b!5271490)))

(assert (=> bs!1221737 (not (= lambda!266082 lambda!265970))))

(assert (=> bs!1221737 (= lambda!266082 lambda!265969)))

(assert (=> bs!1221733 (= lambda!266082 lambda!266032)))

(assert (=> d!1696988 true))

(assert (=> d!1696988 true))

(assert (=> d!1696988 true))

(declare-fun lambda!266083 () Int)

(assert (=> bs!1221731 (not (= lambda!266083 lambda!266014))))

(assert (=> bs!1221732 (not (= lambda!266083 lambda!266027))))

(assert (=> bs!1221733 (= lambda!266083 lambda!266033)))

(assert (=> bs!1221734 (= lambda!266083 lambda!266015)))

(assert (=> bs!1221735 (= (and (= (regOne!30298 r!7292) (regOne!30298 (regTwo!30299 r!7292))) (= (regTwo!30298 r!7292) (regTwo!30298 (regTwo!30299 r!7292)))) (= lambda!266083 lambda!266068))))

(assert (=> bs!1221736 (not (= lambda!266083 lambda!266067))))

(declare-fun bs!1221738 () Bool)

(assert (= bs!1221738 d!1696988))

(assert (=> bs!1221738 (not (= lambda!266083 lambda!266082))))

(assert (=> bs!1221737 (= lambda!266083 lambda!265970)))

(assert (=> bs!1221737 (not (= lambda!266083 lambda!265969))))

(assert (=> bs!1221733 (not (= lambda!266083 lambda!266032))))

(assert (=> d!1696988 true))

(assert (=> d!1696988 true))

(assert (=> d!1696988 true))

(assert (=> d!1696988 (= (Exists!2074 lambda!266082) (Exists!2074 lambda!266083))))

(assert (=> d!1696988 true))

(declare-fun _$90!1096 () Unit!153090)

(assert (=> d!1696988 (= (choose!39344 (regOne!30298 r!7292) (regTwo!30298 r!7292) s!2326) _$90!1096)))

(declare-fun m!6311966 () Bool)

(assert (=> bs!1221738 m!6311966))

(declare-fun m!6311968 () Bool)

(assert (=> bs!1221738 m!6311968))

(assert (=> d!1696592 d!1696988))

(assert (=> d!1696592 d!1696846))

(assert (=> d!1696518 d!1696530))

(declare-fun d!1696990 () Bool)

(assert (=> d!1696990 (= (flatMap!620 lt!2156799 lambda!265971) (dynLambda!24047 lambda!265971 lt!2156820))))

(assert (=> d!1696990 true))

(declare-fun _$13!1829 () Unit!153090)

(assert (=> d!1696990 (= (choose!39337 lt!2156799 lt!2156820 lambda!265971) _$13!1829)))

(declare-fun b_lambda!203397 () Bool)

(assert (=> (not b_lambda!203397) (not d!1696990)))

(declare-fun bs!1221739 () Bool)

(assert (= bs!1221739 d!1696990))

(assert (=> bs!1221739 m!6310568))

(assert (=> bs!1221739 m!6310958))

(assert (=> d!1696518 d!1696990))

(assert (=> d!1696538 d!1696796))

(declare-fun d!1696992 () Bool)

(assert (=> d!1696992 (= (nullable!5062 r!7292) (nullableFct!1444 r!7292))))

(declare-fun bs!1221740 () Bool)

(assert (= bs!1221740 d!1696992))

(declare-fun m!6311970 () Bool)

(assert (=> bs!1221740 m!6311970))

(assert (=> b!5272139 d!1696992))

(declare-fun bs!1221741 () Bool)

(declare-fun d!1696994 () Bool)

(assert (= bs!1221741 (and d!1696994 d!1696834)))

(declare-fun lambda!266084 () Int)

(assert (=> bs!1221741 (= lambda!266084 lambda!266062)))

(assert (=> d!1696994 (= (nullableZipper!1292 lt!2156813) (exists!1995 lt!2156813 lambda!266084))))

(declare-fun bs!1221742 () Bool)

(assert (= bs!1221742 d!1696994))

(declare-fun m!6311972 () Bool)

(assert (=> bs!1221742 m!6311972))

(assert (=> b!5272023 d!1696994))

(declare-fun b!5273171 () Bool)

(declare-fun e!3279357 () (InoxSet Context!8554))

(declare-fun call!374920 () (InoxSet Context!8554))

(assert (=> b!5273171 (= e!3279357 call!374920)))

(declare-fun b!5273172 () Bool)

(declare-fun e!3279360 () (InoxSet Context!8554))

(declare-fun e!3279355 () (InoxSet Context!8554))

(assert (=> b!5273172 (= e!3279360 e!3279355)))

(declare-fun c!913528 () Bool)

(assert (=> b!5273172 (= c!913528 ((_ is Union!14893) (h!67303 (exprs!4777 lt!2156808))))))

(declare-fun call!374918 () List!60979)

(declare-fun call!374922 () (InoxSet Context!8554))

(declare-fun bm!374913 () Bool)

(assert (=> bm!374913 (= call!374922 (derivationStepZipperDown!341 (ite c!913528 (regOne!30299 (h!67303 (exprs!4777 lt!2156808))) (regOne!30298 (h!67303 (exprs!4777 lt!2156808)))) (ite c!913528 (Context!8555 (t!374174 (exprs!4777 lt!2156808))) (Context!8555 call!374918)) (h!67302 s!2326)))))

(declare-fun bm!374914 () Bool)

(declare-fun call!374921 () (InoxSet Context!8554))

(assert (=> bm!374914 (= call!374920 call!374921)))

(declare-fun b!5273173 () Bool)

(declare-fun e!3279356 () (InoxSet Context!8554))

(assert (=> b!5273173 (= e!3279356 e!3279357)))

(declare-fun c!913530 () Bool)

(assert (=> b!5273173 (= c!913530 ((_ is Concat!23738) (h!67303 (exprs!4777 lt!2156808))))))

(declare-fun bm!374915 () Bool)

(declare-fun call!374919 () (InoxSet Context!8554))

(assert (=> bm!374915 (= call!374921 call!374919)))

(declare-fun b!5273174 () Bool)

(declare-fun e!3279359 () Bool)

(assert (=> b!5273174 (= e!3279359 (nullable!5062 (regOne!30298 (h!67303 (exprs!4777 lt!2156808)))))))

(declare-fun b!5273175 () Bool)

(declare-fun e!3279358 () (InoxSet Context!8554))

(assert (=> b!5273175 (= e!3279358 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273177 () Bool)

(declare-fun c!913527 () Bool)

(assert (=> b!5273177 (= c!913527 e!3279359)))

(declare-fun res!2236855 () Bool)

(assert (=> b!5273177 (=> (not res!2236855) (not e!3279359))))

(assert (=> b!5273177 (= res!2236855 ((_ is Concat!23738) (h!67303 (exprs!4777 lt!2156808))))))

(assert (=> b!5273177 (= e!3279355 e!3279356)))

(declare-fun bm!374916 () Bool)

(declare-fun call!374923 () List!60979)

(assert (=> bm!374916 (= call!374919 (derivationStepZipperDown!341 (ite c!913528 (regTwo!30299 (h!67303 (exprs!4777 lt!2156808))) (ite c!913527 (regTwo!30298 (h!67303 (exprs!4777 lt!2156808))) (ite c!913530 (regOne!30298 (h!67303 (exprs!4777 lt!2156808))) (reg!15222 (h!67303 (exprs!4777 lt!2156808)))))) (ite (or c!913528 c!913527) (Context!8555 (t!374174 (exprs!4777 lt!2156808))) (Context!8555 call!374923)) (h!67302 s!2326)))))

(declare-fun b!5273178 () Bool)

(assert (=> b!5273178 (= e!3279358 call!374920)))

(declare-fun bm!374917 () Bool)

(assert (=> bm!374917 (= call!374923 call!374918)))

(declare-fun b!5273179 () Bool)

(declare-fun c!913529 () Bool)

(assert (=> b!5273179 (= c!913529 ((_ is Star!14893) (h!67303 (exprs!4777 lt!2156808))))))

(assert (=> b!5273179 (= e!3279357 e!3279358)))

(declare-fun b!5273180 () Bool)

(assert (=> b!5273180 (= e!3279355 ((_ map or) call!374922 call!374919))))

(declare-fun bm!374918 () Bool)

(assert (=> bm!374918 (= call!374918 ($colon$colon!1342 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156808)))) (ite (or c!913527 c!913530) (regTwo!30298 (h!67303 (exprs!4777 lt!2156808))) (h!67303 (exprs!4777 lt!2156808)))))))

(declare-fun b!5273181 () Bool)

(assert (=> b!5273181 (= e!3279360 (store ((as const (Array Context!8554 Bool)) false) (Context!8555 (t!374174 (exprs!4777 lt!2156808))) true))))

(declare-fun b!5273176 () Bool)

(assert (=> b!5273176 (= e!3279356 ((_ map or) call!374922 call!374921))))

(declare-fun d!1696996 () Bool)

(declare-fun c!913526 () Bool)

(assert (=> d!1696996 (= c!913526 (and ((_ is ElementMatch!14893) (h!67303 (exprs!4777 lt!2156808))) (= (c!913081 (h!67303 (exprs!4777 lt!2156808))) (h!67302 s!2326))))))

(assert (=> d!1696996 (= (derivationStepZipperDown!341 (h!67303 (exprs!4777 lt!2156808)) (Context!8555 (t!374174 (exprs!4777 lt!2156808))) (h!67302 s!2326)) e!3279360)))

(assert (= (and d!1696996 c!913526) b!5273181))

(assert (= (and d!1696996 (not c!913526)) b!5273172))

(assert (= (and b!5273172 c!913528) b!5273180))

(assert (= (and b!5273172 (not c!913528)) b!5273177))

(assert (= (and b!5273177 res!2236855) b!5273174))

(assert (= (and b!5273177 c!913527) b!5273176))

(assert (= (and b!5273177 (not c!913527)) b!5273173))

(assert (= (and b!5273173 c!913530) b!5273171))

(assert (= (and b!5273173 (not c!913530)) b!5273179))

(assert (= (and b!5273179 c!913529) b!5273178))

(assert (= (and b!5273179 (not c!913529)) b!5273175))

(assert (= (or b!5273171 b!5273178) bm!374917))

(assert (= (or b!5273171 b!5273178) bm!374914))

(assert (= (or b!5273176 bm!374917) bm!374918))

(assert (= (or b!5273176 bm!374914) bm!374915))

(assert (= (or b!5273180 bm!374915) bm!374916))

(assert (= (or b!5273180 b!5273176) bm!374913))

(declare-fun m!6311974 () Bool)

(assert (=> b!5273181 m!6311974))

(declare-fun m!6311976 () Bool)

(assert (=> b!5273174 m!6311976))

(declare-fun m!6311978 () Bool)

(assert (=> bm!374913 m!6311978))

(declare-fun m!6311980 () Bool)

(assert (=> bm!374918 m!6311980))

(declare-fun m!6311982 () Bool)

(assert (=> bm!374916 m!6311982))

(assert (=> bm!374715 d!1696996))

(declare-fun b!5273182 () Bool)

(declare-fun e!3279363 () (InoxSet Context!8554))

(declare-fun call!374926 () (InoxSet Context!8554))

(assert (=> b!5273182 (= e!3279363 call!374926)))

(declare-fun b!5273183 () Bool)

(declare-fun e!3279366 () (InoxSet Context!8554))

(declare-fun e!3279361 () (InoxSet Context!8554))

(assert (=> b!5273183 (= e!3279366 e!3279361)))

(declare-fun c!913533 () Bool)

(assert (=> b!5273183 (= c!913533 ((_ is Union!14893) (h!67303 (exprs!4777 lt!2156820))))))

(declare-fun call!374928 () (InoxSet Context!8554))

(declare-fun call!374924 () List!60979)

(declare-fun bm!374919 () Bool)

(assert (=> bm!374919 (= call!374928 (derivationStepZipperDown!341 (ite c!913533 (regOne!30299 (h!67303 (exprs!4777 lt!2156820))) (regOne!30298 (h!67303 (exprs!4777 lt!2156820)))) (ite c!913533 (Context!8555 (t!374174 (exprs!4777 lt!2156820))) (Context!8555 call!374924)) (h!67302 s!2326)))))

(declare-fun bm!374920 () Bool)

(declare-fun call!374927 () (InoxSet Context!8554))

(assert (=> bm!374920 (= call!374926 call!374927)))

(declare-fun b!5273184 () Bool)

(declare-fun e!3279362 () (InoxSet Context!8554))

(assert (=> b!5273184 (= e!3279362 e!3279363)))

(declare-fun c!913535 () Bool)

(assert (=> b!5273184 (= c!913535 ((_ is Concat!23738) (h!67303 (exprs!4777 lt!2156820))))))

(declare-fun bm!374921 () Bool)

(declare-fun call!374925 () (InoxSet Context!8554))

(assert (=> bm!374921 (= call!374927 call!374925)))

(declare-fun b!5273185 () Bool)

(declare-fun e!3279365 () Bool)

(assert (=> b!5273185 (= e!3279365 (nullable!5062 (regOne!30298 (h!67303 (exprs!4777 lt!2156820)))))))

(declare-fun b!5273186 () Bool)

(declare-fun e!3279364 () (InoxSet Context!8554))

(assert (=> b!5273186 (= e!3279364 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273188 () Bool)

(declare-fun c!913532 () Bool)

(assert (=> b!5273188 (= c!913532 e!3279365)))

(declare-fun res!2236856 () Bool)

(assert (=> b!5273188 (=> (not res!2236856) (not e!3279365))))

(assert (=> b!5273188 (= res!2236856 ((_ is Concat!23738) (h!67303 (exprs!4777 lt!2156820))))))

(assert (=> b!5273188 (= e!3279361 e!3279362)))

(declare-fun bm!374922 () Bool)

(declare-fun call!374929 () List!60979)

(assert (=> bm!374922 (= call!374925 (derivationStepZipperDown!341 (ite c!913533 (regTwo!30299 (h!67303 (exprs!4777 lt!2156820))) (ite c!913532 (regTwo!30298 (h!67303 (exprs!4777 lt!2156820))) (ite c!913535 (regOne!30298 (h!67303 (exprs!4777 lt!2156820))) (reg!15222 (h!67303 (exprs!4777 lt!2156820)))))) (ite (or c!913533 c!913532) (Context!8555 (t!374174 (exprs!4777 lt!2156820))) (Context!8555 call!374929)) (h!67302 s!2326)))))

(declare-fun b!5273189 () Bool)

(assert (=> b!5273189 (= e!3279364 call!374926)))

(declare-fun bm!374923 () Bool)

(assert (=> bm!374923 (= call!374929 call!374924)))

(declare-fun b!5273190 () Bool)

(declare-fun c!913534 () Bool)

(assert (=> b!5273190 (= c!913534 ((_ is Star!14893) (h!67303 (exprs!4777 lt!2156820))))))

(assert (=> b!5273190 (= e!3279363 e!3279364)))

(declare-fun b!5273191 () Bool)

(assert (=> b!5273191 (= e!3279361 ((_ map or) call!374928 call!374925))))

(declare-fun bm!374924 () Bool)

(assert (=> bm!374924 (= call!374924 ($colon$colon!1342 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156820)))) (ite (or c!913532 c!913535) (regTwo!30298 (h!67303 (exprs!4777 lt!2156820))) (h!67303 (exprs!4777 lt!2156820)))))))

(declare-fun b!5273192 () Bool)

(assert (=> b!5273192 (= e!3279366 (store ((as const (Array Context!8554 Bool)) false) (Context!8555 (t!374174 (exprs!4777 lt!2156820))) true))))

(declare-fun b!5273187 () Bool)

(assert (=> b!5273187 (= e!3279362 ((_ map or) call!374928 call!374927))))

(declare-fun d!1696998 () Bool)

(declare-fun c!913531 () Bool)

(assert (=> d!1696998 (= c!913531 (and ((_ is ElementMatch!14893) (h!67303 (exprs!4777 lt!2156820))) (= (c!913081 (h!67303 (exprs!4777 lt!2156820))) (h!67302 s!2326))))))

(assert (=> d!1696998 (= (derivationStepZipperDown!341 (h!67303 (exprs!4777 lt!2156820)) (Context!8555 (t!374174 (exprs!4777 lt!2156820))) (h!67302 s!2326)) e!3279366)))

(assert (= (and d!1696998 c!913531) b!5273192))

(assert (= (and d!1696998 (not c!913531)) b!5273183))

(assert (= (and b!5273183 c!913533) b!5273191))

(assert (= (and b!5273183 (not c!913533)) b!5273188))

(assert (= (and b!5273188 res!2236856) b!5273185))

(assert (= (and b!5273188 c!913532) b!5273187))

(assert (= (and b!5273188 (not c!913532)) b!5273184))

(assert (= (and b!5273184 c!913535) b!5273182))

(assert (= (and b!5273184 (not c!913535)) b!5273190))

(assert (= (and b!5273190 c!913534) b!5273189))

(assert (= (and b!5273190 (not c!913534)) b!5273186))

(assert (= (or b!5273182 b!5273189) bm!374923))

(assert (= (or b!5273182 b!5273189) bm!374920))

(assert (= (or b!5273187 bm!374923) bm!374924))

(assert (= (or b!5273187 bm!374920) bm!374921))

(assert (= (or b!5273191 bm!374921) bm!374922))

(assert (= (or b!5273191 b!5273187) bm!374919))

(declare-fun m!6311984 () Bool)

(assert (=> b!5273192 m!6311984))

(declare-fun m!6311986 () Bool)

(assert (=> b!5273185 m!6311986))

(declare-fun m!6311988 () Bool)

(assert (=> bm!374919 m!6311988))

(declare-fun m!6311990 () Bool)

(assert (=> bm!374924 m!6311990))

(declare-fun m!6311992 () Bool)

(assert (=> bm!374922 m!6311992))

(assert (=> bm!374716 d!1696998))

(declare-fun d!1697000 () Bool)

(assert (=> d!1697000 (= (Exists!2074 (ite c!913254 lambda!266014 lambda!266015)) (choose!39342 (ite c!913254 lambda!266014 lambda!266015)))))

(declare-fun bs!1221743 () Bool)

(assert (= bs!1221743 d!1697000))

(declare-fun m!6311994 () Bool)

(assert (=> bs!1221743 m!6311994))

(assert (=> bm!374730 d!1697000))

(assert (=> d!1696590 d!1696584))

(assert (=> d!1696590 d!1696846))

(assert (=> d!1696590 d!1696594))

(declare-fun d!1697002 () Bool)

(assert (=> d!1697002 (= (Exists!2074 lambda!266027) (choose!39342 lambda!266027))))

(declare-fun bs!1221744 () Bool)

(assert (= bs!1221744 d!1697002))

(declare-fun m!6311996 () Bool)

(assert (=> bs!1221744 m!6311996))

(assert (=> d!1696590 d!1697002))

(declare-fun bs!1221745 () Bool)

(declare-fun d!1697004 () Bool)

(assert (= bs!1221745 (and d!1697004 b!5272100)))

(declare-fun lambda!266087 () Int)

(assert (=> bs!1221745 (not (= lambda!266087 lambda!266014))))

(declare-fun bs!1221746 () Bool)

(assert (= bs!1221746 (and d!1697004 d!1696590)))

(assert (=> bs!1221746 (= lambda!266087 lambda!266027)))

(declare-fun bs!1221747 () Bool)

(assert (= bs!1221747 (and d!1697004 d!1696592)))

(assert (=> bs!1221747 (not (= lambda!266087 lambda!266033))))

(declare-fun bs!1221748 () Bool)

(assert (= bs!1221748 (and d!1697004 b!5272093)))

(assert (=> bs!1221748 (not (= lambda!266087 lambda!266015))))

(declare-fun bs!1221749 () Bool)

(assert (= bs!1221749 (and d!1697004 b!5272914)))

(assert (=> bs!1221749 (not (= lambda!266087 lambda!266068))))

(declare-fun bs!1221750 () Bool)

(assert (= bs!1221750 (and d!1697004 d!1696988)))

(assert (=> bs!1221750 (not (= lambda!266087 lambda!266083))))

(declare-fun bs!1221751 () Bool)

(assert (= bs!1221751 (and d!1697004 b!5272921)))

(assert (=> bs!1221751 (not (= lambda!266087 lambda!266067))))

(assert (=> bs!1221750 (= lambda!266087 lambda!266082)))

(declare-fun bs!1221752 () Bool)

(assert (= bs!1221752 (and d!1697004 b!5271490)))

(assert (=> bs!1221752 (not (= lambda!266087 lambda!265970))))

(assert (=> bs!1221752 (= lambda!266087 lambda!265969)))

(assert (=> bs!1221747 (= lambda!266087 lambda!266032)))

(assert (=> d!1697004 true))

(assert (=> d!1697004 true))

(assert (=> d!1697004 true))

(assert (=> d!1697004 (= (isDefined!11707 (findConcatSeparation!1418 (regOne!30298 r!7292) (regTwo!30298 r!7292) Nil!60854 s!2326 s!2326)) (Exists!2074 lambda!266087))))

(assert (=> d!1697004 true))

(declare-fun _$89!1472 () Unit!153090)

(assert (=> d!1697004 (= (choose!39343 (regOne!30298 r!7292) (regTwo!30298 r!7292) s!2326) _$89!1472)))

(declare-fun bs!1221753 () Bool)

(assert (= bs!1221753 d!1697004))

(assert (=> bs!1221753 m!6310580))

(assert (=> bs!1221753 m!6310580))

(assert (=> bs!1221753 m!6310582))

(declare-fun m!6311998 () Bool)

(assert (=> bs!1221753 m!6311998))

(assert (=> d!1696590 d!1697004))

(declare-fun b!5273197 () Bool)

(declare-fun e!3279372 () Bool)

(declare-fun e!3279374 () Bool)

(assert (=> b!5273197 (= e!3279372 e!3279374)))

(declare-fun c!913538 () Bool)

(assert (=> b!5273197 (= c!913538 ((_ is EmptyLang!14893) (regTwo!30298 r!7292)))))

(declare-fun b!5273198 () Bool)

(declare-fun e!3279373 () Bool)

(assert (=> b!5273198 (= e!3279373 (= (head!11302 (_2!35395 (get!20924 lt!2156904))) (c!913081 (regTwo!30298 r!7292))))))

(declare-fun b!5273199 () Bool)

(declare-fun e!3279369 () Bool)

(declare-fun e!3279375 () Bool)

(assert (=> b!5273199 (= e!3279369 e!3279375)))

(declare-fun res!2236863 () Bool)

(assert (=> b!5273199 (=> (not res!2236863) (not e!3279375))))

(declare-fun lt!2156947 () Bool)

(assert (=> b!5273199 (= res!2236863 (not lt!2156947))))

(declare-fun b!5273200 () Bool)

(declare-fun e!3279371 () Bool)

(assert (=> b!5273200 (= e!3279371 (matchR!7078 (derivativeStep!4113 (regTwo!30298 r!7292) (head!11302 (_2!35395 (get!20924 lt!2156904)))) (tail!10399 (_2!35395 (get!20924 lt!2156904)))))))

(declare-fun b!5273201 () Bool)

(declare-fun res!2236865 () Bool)

(assert (=> b!5273201 (=> (not res!2236865) (not e!3279373))))

(declare-fun call!374930 () Bool)

(assert (=> b!5273201 (= res!2236865 (not call!374930))))

(declare-fun b!5273202 () Bool)

(declare-fun res!2236861 () Bool)

(assert (=> b!5273202 (=> res!2236861 e!3279369)))

(assert (=> b!5273202 (= res!2236861 e!3279373)))

(declare-fun res!2236862 () Bool)

(assert (=> b!5273202 (=> (not res!2236862) (not e!3279373))))

(assert (=> b!5273202 (= res!2236862 lt!2156947)))

(declare-fun b!5273203 () Bool)

(declare-fun e!3279370 () Bool)

(assert (=> b!5273203 (= e!3279375 e!3279370)))

(declare-fun res!2236868 () Bool)

(assert (=> b!5273203 (=> res!2236868 e!3279370)))

(assert (=> b!5273203 (= res!2236868 call!374930)))

(declare-fun b!5273204 () Bool)

(declare-fun res!2236867 () Bool)

(assert (=> b!5273204 (=> (not res!2236867) (not e!3279373))))

(assert (=> b!5273204 (= res!2236867 (isEmpty!32806 (tail!10399 (_2!35395 (get!20924 lt!2156904)))))))

(declare-fun b!5273205 () Bool)

(declare-fun res!2236866 () Bool)

(assert (=> b!5273205 (=> res!2236866 e!3279369)))

(assert (=> b!5273205 (= res!2236866 (not ((_ is ElementMatch!14893) (regTwo!30298 r!7292))))))

(assert (=> b!5273205 (= e!3279374 e!3279369)))

(declare-fun bm!374925 () Bool)

(assert (=> bm!374925 (= call!374930 (isEmpty!32806 (_2!35395 (get!20924 lt!2156904))))))

(declare-fun b!5273206 () Bool)

(assert (=> b!5273206 (= e!3279372 (= lt!2156947 call!374930))))

(declare-fun b!5273207 () Bool)

(assert (=> b!5273207 (= e!3279371 (nullable!5062 (regTwo!30298 r!7292)))))

(declare-fun b!5273208 () Bool)

(declare-fun res!2236864 () Bool)

(assert (=> b!5273208 (=> res!2236864 e!3279370)))

(assert (=> b!5273208 (= res!2236864 (not (isEmpty!32806 (tail!10399 (_2!35395 (get!20924 lt!2156904))))))))

(declare-fun d!1697006 () Bool)

(assert (=> d!1697006 e!3279372))

(declare-fun c!913537 () Bool)

(assert (=> d!1697006 (= c!913537 ((_ is EmptyExpr!14893) (regTwo!30298 r!7292)))))

(assert (=> d!1697006 (= lt!2156947 e!3279371)))

(declare-fun c!913536 () Bool)

(assert (=> d!1697006 (= c!913536 (isEmpty!32806 (_2!35395 (get!20924 lt!2156904))))))

(assert (=> d!1697006 (validRegex!6629 (regTwo!30298 r!7292))))

(assert (=> d!1697006 (= (matchR!7078 (regTwo!30298 r!7292) (_2!35395 (get!20924 lt!2156904))) lt!2156947)))

(declare-fun b!5273209 () Bool)

(assert (=> b!5273209 (= e!3279374 (not lt!2156947))))

(declare-fun b!5273210 () Bool)

(assert (=> b!5273210 (= e!3279370 (not (= (head!11302 (_2!35395 (get!20924 lt!2156904))) (c!913081 (regTwo!30298 r!7292)))))))

(assert (= (and d!1697006 c!913536) b!5273207))

(assert (= (and d!1697006 (not c!913536)) b!5273200))

(assert (= (and d!1697006 c!913537) b!5273206))

(assert (= (and d!1697006 (not c!913537)) b!5273197))

(assert (= (and b!5273197 c!913538) b!5273209))

(assert (= (and b!5273197 (not c!913538)) b!5273205))

(assert (= (and b!5273205 (not res!2236866)) b!5273202))

(assert (= (and b!5273202 res!2236862) b!5273201))

(assert (= (and b!5273201 res!2236865) b!5273204))

(assert (= (and b!5273204 res!2236867) b!5273198))

(assert (= (and b!5273202 (not res!2236861)) b!5273199))

(assert (= (and b!5273199 res!2236863) b!5273203))

(assert (= (and b!5273203 (not res!2236868)) b!5273208))

(assert (= (and b!5273208 (not res!2236864)) b!5273210))

(assert (= (or b!5273206 b!5273201 b!5273203) bm!374925))

(assert (=> b!5273207 m!6311752))

(declare-fun m!6312000 () Bool)

(assert (=> b!5273208 m!6312000))

(assert (=> b!5273208 m!6312000))

(declare-fun m!6312002 () Bool)

(assert (=> b!5273208 m!6312002))

(assert (=> b!5273204 m!6312000))

(assert (=> b!5273204 m!6312000))

(assert (=> b!5273204 m!6312002))

(declare-fun m!6312004 () Bool)

(assert (=> bm!374925 m!6312004))

(declare-fun m!6312006 () Bool)

(assert (=> b!5273210 m!6312006))

(assert (=> d!1697006 m!6312004))

(assert (=> d!1697006 m!6311754))

(assert (=> b!5273200 m!6312006))

(assert (=> b!5273200 m!6312006))

(declare-fun m!6312008 () Bool)

(assert (=> b!5273200 m!6312008))

(assert (=> b!5273200 m!6312000))

(assert (=> b!5273200 m!6312008))

(assert (=> b!5273200 m!6312000))

(declare-fun m!6312010 () Bool)

(assert (=> b!5273200 m!6312010))

(assert (=> b!5273198 m!6312006))

(assert (=> b!5272234 d!1697006))

(assert (=> b!5272234 d!1696904))

(declare-fun b!5273211 () Bool)

(declare-fun e!3279376 () Bool)

(declare-fun e!3279378 () Bool)

(assert (=> b!5273211 (= e!3279376 e!3279378)))

(declare-fun res!2236873 () Bool)

(assert (=> b!5273211 (=> (not res!2236873) (not e!3279378))))

(declare-fun call!374933 () Bool)

(assert (=> b!5273211 (= res!2236873 call!374933)))

(declare-fun b!5273212 () Bool)

(declare-fun e!3279381 () Bool)

(declare-fun e!3279380 () Bool)

(assert (=> b!5273212 (= e!3279381 e!3279380)))

(declare-fun c!913540 () Bool)

(assert (=> b!5273212 (= c!913540 ((_ is Star!14893) (ite c!913211 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913210 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292)))))))))

(declare-fun bm!374926 () Bool)

(declare-fun call!374932 () Bool)

(declare-fun call!374931 () Bool)

(assert (=> bm!374926 (= call!374932 call!374931)))

(declare-fun bm!374927 () Bool)

(declare-fun c!913539 () Bool)

(assert (=> bm!374927 (= call!374933 (validRegex!6629 (ite c!913539 (regOne!30299 (ite c!913211 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913210 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292)))))) (regOne!30298 (ite c!913211 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913210 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292)))))))))))

(declare-fun b!5273213 () Bool)

(declare-fun res!2236871 () Bool)

(declare-fun e!3279382 () Bool)

(assert (=> b!5273213 (=> (not res!2236871) (not e!3279382))))

(assert (=> b!5273213 (= res!2236871 call!374933)))

(declare-fun e!3279377 () Bool)

(assert (=> b!5273213 (= e!3279377 e!3279382)))

(declare-fun d!1697008 () Bool)

(declare-fun res!2236869 () Bool)

(assert (=> d!1697008 (=> res!2236869 e!3279381)))

(assert (=> d!1697008 (= res!2236869 ((_ is ElementMatch!14893) (ite c!913211 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913210 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292)))))))))

(assert (=> d!1697008 (= (validRegex!6629 (ite c!913211 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913210 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292)))))) e!3279381)))

(declare-fun bm!374928 () Bool)

(assert (=> bm!374928 (= call!374931 (validRegex!6629 (ite c!913540 (reg!15222 (ite c!913211 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913210 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292)))))) (ite c!913539 (regTwo!30299 (ite c!913211 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913210 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292)))))) (regTwo!30298 (ite c!913211 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913210 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))))))))))))

(declare-fun b!5273214 () Bool)

(declare-fun res!2236870 () Bool)

(assert (=> b!5273214 (=> res!2236870 e!3279376)))

(assert (=> b!5273214 (= res!2236870 (not ((_ is Concat!23738) (ite c!913211 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913210 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))))))))))

(assert (=> b!5273214 (= e!3279377 e!3279376)))

(declare-fun b!5273215 () Bool)

(declare-fun e!3279379 () Bool)

(assert (=> b!5273215 (= e!3279379 call!374931)))

(declare-fun b!5273216 () Bool)

(assert (=> b!5273216 (= e!3279382 call!374932)))

(declare-fun b!5273217 () Bool)

(assert (=> b!5273217 (= e!3279380 e!3279377)))

(assert (=> b!5273217 (= c!913539 ((_ is Union!14893) (ite c!913211 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913210 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292)))))))))

(declare-fun b!5273218 () Bool)

(assert (=> b!5273218 (= e!3279380 e!3279379)))

(declare-fun res!2236872 () Bool)

(assert (=> b!5273218 (= res!2236872 (not (nullable!5062 (reg!15222 (ite c!913211 (reg!15222 (regTwo!30298 (regOne!30298 r!7292))) (ite c!913210 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292)))))))))))

(assert (=> b!5273218 (=> (not res!2236872) (not e!3279379))))

(declare-fun b!5273219 () Bool)

(assert (=> b!5273219 (= e!3279378 call!374932)))

(assert (= (and d!1697008 (not res!2236869)) b!5273212))

(assert (= (and b!5273212 c!913540) b!5273218))

(assert (= (and b!5273212 (not c!913540)) b!5273217))

(assert (= (and b!5273218 res!2236872) b!5273215))

(assert (= (and b!5273217 c!913539) b!5273213))

(assert (= (and b!5273217 (not c!913539)) b!5273214))

(assert (= (and b!5273213 res!2236871) b!5273216))

(assert (= (and b!5273214 (not res!2236870)) b!5273211))

(assert (= (and b!5273211 res!2236873) b!5273219))

(assert (= (or b!5273216 b!5273219) bm!374926))

(assert (= (or b!5273213 b!5273211) bm!374927))

(assert (= (or b!5273215 bm!374926) bm!374928))

(declare-fun m!6312012 () Bool)

(assert (=> bm!374927 m!6312012))

(declare-fun m!6312014 () Bool)

(assert (=> bm!374928 m!6312014))

(declare-fun m!6312016 () Bool)

(assert (=> b!5273218 m!6312016))

(assert (=> bm!374700 d!1697008))

(declare-fun b!5273220 () Bool)

(declare-fun e!3279385 () (InoxSet Context!8554))

(declare-fun call!374936 () (InoxSet Context!8554))

(assert (=> b!5273220 (= e!3279385 call!374936)))

(declare-fun b!5273221 () Bool)

(declare-fun e!3279388 () (InoxSet Context!8554))

(declare-fun e!3279383 () (InoxSet Context!8554))

(assert (=> b!5273221 (= e!3279388 e!3279383)))

(declare-fun c!913543 () Bool)

(assert (=> b!5273221 (= c!913543 ((_ is Union!14893) (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292))))))))

(declare-fun call!374938 () (InoxSet Context!8554))

(declare-fun call!374934 () List!60979)

(declare-fun bm!374929 () Bool)

(assert (=> bm!374929 (= call!374938 (derivationStepZipperDown!341 (ite c!913543 (regOne!30299 (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292))))) (regOne!30298 (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292)))))) (ite c!913543 (ite c!913203 lt!2156808 (Context!8555 call!374691)) (Context!8555 call!374934)) (h!67302 s!2326)))))

(declare-fun bm!374930 () Bool)

(declare-fun call!374937 () (InoxSet Context!8554))

(assert (=> bm!374930 (= call!374936 call!374937)))

(declare-fun b!5273222 () Bool)

(declare-fun e!3279384 () (InoxSet Context!8554))

(assert (=> b!5273222 (= e!3279384 e!3279385)))

(declare-fun c!913545 () Bool)

(assert (=> b!5273222 (= c!913545 ((_ is Concat!23738) (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292))))))))

(declare-fun bm!374931 () Bool)

(declare-fun call!374935 () (InoxSet Context!8554))

(assert (=> bm!374931 (= call!374937 call!374935)))

(declare-fun b!5273223 () Bool)

(declare-fun e!3279387 () Bool)

(assert (=> b!5273223 (= e!3279387 (nullable!5062 (regOne!30298 (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292)))))))))

(declare-fun b!5273224 () Bool)

(declare-fun e!3279386 () (InoxSet Context!8554))

(assert (=> b!5273224 (= e!3279386 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273226 () Bool)

(declare-fun c!913542 () Bool)

(assert (=> b!5273226 (= c!913542 e!3279387)))

(declare-fun res!2236874 () Bool)

(assert (=> b!5273226 (=> (not res!2236874) (not e!3279387))))

(assert (=> b!5273226 (= res!2236874 ((_ is Concat!23738) (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292))))))))

(assert (=> b!5273226 (= e!3279383 e!3279384)))

(declare-fun call!374939 () List!60979)

(declare-fun bm!374932 () Bool)

(assert (=> bm!374932 (= call!374935 (derivationStepZipperDown!341 (ite c!913543 (regTwo!30299 (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292))))) (ite c!913542 (regTwo!30298 (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292))))) (ite c!913545 (regOne!30298 (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292))))) (reg!15222 (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292)))))))) (ite (or c!913543 c!913542) (ite c!913203 lt!2156808 (Context!8555 call!374691)) (Context!8555 call!374939)) (h!67302 s!2326)))))

(declare-fun b!5273227 () Bool)

(assert (=> b!5273227 (= e!3279386 call!374936)))

(declare-fun bm!374933 () Bool)

(assert (=> bm!374933 (= call!374939 call!374934)))

(declare-fun b!5273228 () Bool)

(declare-fun c!913544 () Bool)

(assert (=> b!5273228 (= c!913544 ((_ is Star!14893) (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292))))))))

(assert (=> b!5273228 (= e!3279385 e!3279386)))

(declare-fun b!5273229 () Bool)

(assert (=> b!5273229 (= e!3279383 ((_ map or) call!374938 call!374935))))

(declare-fun bm!374934 () Bool)

(assert (=> bm!374934 (= call!374934 ($colon$colon!1342 (exprs!4777 (ite c!913203 lt!2156808 (Context!8555 call!374691))) (ite (or c!913542 c!913545) (regTwo!30298 (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292))))) (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292)))))))))

(declare-fun b!5273230 () Bool)

(assert (=> b!5273230 (= e!3279388 (store ((as const (Array Context!8554 Bool)) false) (ite c!913203 lt!2156808 (Context!8555 call!374691)) true))))

(declare-fun b!5273225 () Bool)

(assert (=> b!5273225 (= e!3279384 ((_ map or) call!374938 call!374937))))

(declare-fun d!1697010 () Bool)

(declare-fun c!913541 () Bool)

(assert (=> d!1697010 (= c!913541 (and ((_ is ElementMatch!14893) (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292))))) (= (c!913081 (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292))))) (h!67302 s!2326))))))

(assert (=> d!1697010 (= (derivationStepZipperDown!341 (ite c!913203 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292)))) (ite c!913203 lt!2156808 (Context!8555 call!374691)) (h!67302 s!2326)) e!3279388)))

(assert (= (and d!1697010 c!913541) b!5273230))

(assert (= (and d!1697010 (not c!913541)) b!5273221))

(assert (= (and b!5273221 c!913543) b!5273229))

(assert (= (and b!5273221 (not c!913543)) b!5273226))

(assert (= (and b!5273226 res!2236874) b!5273223))

(assert (= (and b!5273226 c!913542) b!5273225))

(assert (= (and b!5273226 (not c!913542)) b!5273222))

(assert (= (and b!5273222 c!913545) b!5273220))

(assert (= (and b!5273222 (not c!913545)) b!5273228))

(assert (= (and b!5273228 c!913544) b!5273227))

(assert (= (and b!5273228 (not c!913544)) b!5273224))

(assert (= (or b!5273220 b!5273227) bm!374933))

(assert (= (or b!5273220 b!5273227) bm!374930))

(assert (= (or b!5273225 bm!374933) bm!374934))

(assert (= (or b!5273225 bm!374930) bm!374931))

(assert (= (or b!5273229 bm!374931) bm!374932))

(assert (= (or b!5273229 b!5273225) bm!374929))

(declare-fun m!6312018 () Bool)

(assert (=> b!5273230 m!6312018))

(declare-fun m!6312020 () Bool)

(assert (=> b!5273223 m!6312020))

(declare-fun m!6312022 () Bool)

(assert (=> bm!374929 m!6312022))

(declare-fun m!6312024 () Bool)

(assert (=> bm!374934 m!6312024))

(declare-fun m!6312026 () Bool)

(assert (=> bm!374932 m!6312026))

(assert (=> bm!374686 d!1697010))

(declare-fun bs!1221754 () Bool)

(declare-fun d!1697012 () Bool)

(assert (= bs!1221754 (and d!1697012 d!1696834)))

(declare-fun lambda!266088 () Int)

(assert (=> bs!1221754 (= lambda!266088 lambda!266062)))

(declare-fun bs!1221755 () Bool)

(assert (= bs!1221755 (and d!1697012 d!1696994)))

(assert (=> bs!1221755 (= lambda!266088 lambda!266084)))

(assert (=> d!1697012 (= (nullableZipper!1292 ((_ map or) lt!2156813 lt!2156802)) (exists!1995 ((_ map or) lt!2156813 lt!2156802) lambda!266088))))

(declare-fun bs!1221756 () Bool)

(assert (= bs!1221756 d!1697012))

(declare-fun m!6312028 () Bool)

(assert (=> bs!1221756 m!6312028))

(assert (=> b!5272260 d!1697012))

(declare-fun b!5273231 () Bool)

(declare-fun e!3279391 () (InoxSet Context!8554))

(declare-fun call!374942 () (InoxSet Context!8554))

(assert (=> b!5273231 (= e!3279391 call!374942)))

(declare-fun b!5273232 () Bool)

(declare-fun e!3279394 () (InoxSet Context!8554))

(declare-fun e!3279389 () (InoxSet Context!8554))

(assert (=> b!5273232 (= e!3279394 e!3279389)))

(declare-fun c!913548 () Bool)

(assert (=> b!5273232 (= c!913548 ((_ is Union!14893) (h!67303 (exprs!4777 lt!2156804))))))

(declare-fun bm!374935 () Bool)

(declare-fun call!374944 () (InoxSet Context!8554))

(declare-fun call!374940 () List!60979)

(assert (=> bm!374935 (= call!374944 (derivationStepZipperDown!341 (ite c!913548 (regOne!30299 (h!67303 (exprs!4777 lt!2156804))) (regOne!30298 (h!67303 (exprs!4777 lt!2156804)))) (ite c!913548 (Context!8555 (t!374174 (exprs!4777 lt!2156804))) (Context!8555 call!374940)) (h!67302 s!2326)))))

(declare-fun bm!374936 () Bool)

(declare-fun call!374943 () (InoxSet Context!8554))

(assert (=> bm!374936 (= call!374942 call!374943)))

(declare-fun b!5273233 () Bool)

(declare-fun e!3279390 () (InoxSet Context!8554))

(assert (=> b!5273233 (= e!3279390 e!3279391)))

(declare-fun c!913550 () Bool)

(assert (=> b!5273233 (= c!913550 ((_ is Concat!23738) (h!67303 (exprs!4777 lt!2156804))))))

(declare-fun bm!374937 () Bool)

(declare-fun call!374941 () (InoxSet Context!8554))

(assert (=> bm!374937 (= call!374943 call!374941)))

(declare-fun b!5273234 () Bool)

(declare-fun e!3279393 () Bool)

(assert (=> b!5273234 (= e!3279393 (nullable!5062 (regOne!30298 (h!67303 (exprs!4777 lt!2156804)))))))

(declare-fun b!5273235 () Bool)

(declare-fun e!3279392 () (InoxSet Context!8554))

(assert (=> b!5273235 (= e!3279392 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273237 () Bool)

(declare-fun c!913547 () Bool)

(assert (=> b!5273237 (= c!913547 e!3279393)))

(declare-fun res!2236875 () Bool)

(assert (=> b!5273237 (=> (not res!2236875) (not e!3279393))))

(assert (=> b!5273237 (= res!2236875 ((_ is Concat!23738) (h!67303 (exprs!4777 lt!2156804))))))

(assert (=> b!5273237 (= e!3279389 e!3279390)))

(declare-fun bm!374938 () Bool)

(declare-fun call!374945 () List!60979)

(assert (=> bm!374938 (= call!374941 (derivationStepZipperDown!341 (ite c!913548 (regTwo!30299 (h!67303 (exprs!4777 lt!2156804))) (ite c!913547 (regTwo!30298 (h!67303 (exprs!4777 lt!2156804))) (ite c!913550 (regOne!30298 (h!67303 (exprs!4777 lt!2156804))) (reg!15222 (h!67303 (exprs!4777 lt!2156804)))))) (ite (or c!913548 c!913547) (Context!8555 (t!374174 (exprs!4777 lt!2156804))) (Context!8555 call!374945)) (h!67302 s!2326)))))

(declare-fun b!5273238 () Bool)

(assert (=> b!5273238 (= e!3279392 call!374942)))

(declare-fun bm!374939 () Bool)

(assert (=> bm!374939 (= call!374945 call!374940)))

(declare-fun b!5273239 () Bool)

(declare-fun c!913549 () Bool)

(assert (=> b!5273239 (= c!913549 ((_ is Star!14893) (h!67303 (exprs!4777 lt!2156804))))))

(assert (=> b!5273239 (= e!3279391 e!3279392)))

(declare-fun b!5273240 () Bool)

(assert (=> b!5273240 (= e!3279389 ((_ map or) call!374944 call!374941))))

(declare-fun bm!374940 () Bool)

(assert (=> bm!374940 (= call!374940 ($colon$colon!1342 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156804)))) (ite (or c!913547 c!913550) (regTwo!30298 (h!67303 (exprs!4777 lt!2156804))) (h!67303 (exprs!4777 lt!2156804)))))))

(declare-fun b!5273241 () Bool)

(assert (=> b!5273241 (= e!3279394 (store ((as const (Array Context!8554 Bool)) false) (Context!8555 (t!374174 (exprs!4777 lt!2156804))) true))))

(declare-fun b!5273236 () Bool)

(assert (=> b!5273236 (= e!3279390 ((_ map or) call!374944 call!374943))))

(declare-fun d!1697014 () Bool)

(declare-fun c!913546 () Bool)

(assert (=> d!1697014 (= c!913546 (and ((_ is ElementMatch!14893) (h!67303 (exprs!4777 lt!2156804))) (= (c!913081 (h!67303 (exprs!4777 lt!2156804))) (h!67302 s!2326))))))

(assert (=> d!1697014 (= (derivationStepZipperDown!341 (h!67303 (exprs!4777 lt!2156804)) (Context!8555 (t!374174 (exprs!4777 lt!2156804))) (h!67302 s!2326)) e!3279394)))

(assert (= (and d!1697014 c!913546) b!5273241))

(assert (= (and d!1697014 (not c!913546)) b!5273232))

(assert (= (and b!5273232 c!913548) b!5273240))

(assert (= (and b!5273232 (not c!913548)) b!5273237))

(assert (= (and b!5273237 res!2236875) b!5273234))

(assert (= (and b!5273237 c!913547) b!5273236))

(assert (= (and b!5273237 (not c!913547)) b!5273233))

(assert (= (and b!5273233 c!913550) b!5273231))

(assert (= (and b!5273233 (not c!913550)) b!5273239))

(assert (= (and b!5273239 c!913549) b!5273238))

(assert (= (and b!5273239 (not c!913549)) b!5273235))

(assert (= (or b!5273231 b!5273238) bm!374939))

(assert (= (or b!5273231 b!5273238) bm!374936))

(assert (= (or b!5273236 bm!374939) bm!374940))

(assert (= (or b!5273236 bm!374936) bm!374937))

(assert (= (or b!5273240 bm!374937) bm!374938))

(assert (= (or b!5273240 b!5273236) bm!374935))

(declare-fun m!6312030 () Bool)

(assert (=> b!5273241 m!6312030))

(declare-fun m!6312032 () Bool)

(assert (=> b!5273234 m!6312032))

(declare-fun m!6312034 () Bool)

(assert (=> bm!374935 m!6312034))

(declare-fun m!6312036 () Bool)

(assert (=> bm!374940 m!6312036))

(declare-fun m!6312038 () Bool)

(assert (=> bm!374938 m!6312038))

(assert (=> bm!374725 d!1697014))

(declare-fun d!1697016 () Bool)

(assert (=> d!1697016 (= (isEmptyExpr!827 lt!2156896) ((_ is EmptyExpr!14893) lt!2156896))))

(assert (=> b!5272208 d!1697016))

(declare-fun d!1697018 () Bool)

(declare-fun c!913553 () Bool)

(assert (=> d!1697018 (= c!913553 ((_ is Nil!60856) lt!2156873))))

(declare-fun e!3279397 () (InoxSet Context!8554))

(assert (=> d!1697018 (= (content!10825 lt!2156873) e!3279397)))

(declare-fun b!5273246 () Bool)

(assert (=> b!5273246 (= e!3279397 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273247 () Bool)

(assert (=> b!5273247 (= e!3279397 ((_ map or) (store ((as const (Array Context!8554 Bool)) false) (h!67304 lt!2156873) true) (content!10825 (t!374175 lt!2156873))))))

(assert (= (and d!1697018 c!913553) b!5273246))

(assert (= (and d!1697018 (not c!913553)) b!5273247))

(declare-fun m!6312040 () Bool)

(assert (=> b!5273247 m!6312040))

(declare-fun m!6312042 () Bool)

(assert (=> b!5273247 m!6312042))

(assert (=> b!5272022 d!1697018))

(declare-fun b!5273262 () Bool)

(declare-fun e!3279414 () Bool)

(declare-fun e!3279415 () Bool)

(assert (=> b!5273262 (= e!3279414 e!3279415)))

(declare-fun res!2236887 () Bool)

(declare-fun call!374950 () Bool)

(assert (=> b!5273262 (= res!2236887 call!374950)))

(assert (=> b!5273262 (=> res!2236887 e!3279415)))

(declare-fun b!5273263 () Bool)

(declare-fun e!3279412 () Bool)

(declare-fun call!374951 () Bool)

(assert (=> b!5273263 (= e!3279412 call!374951)))

(declare-fun b!5273264 () Bool)

(assert (=> b!5273264 (= e!3279415 call!374951)))

(declare-fun d!1697020 () Bool)

(declare-fun res!2236890 () Bool)

(declare-fun e!3279410 () Bool)

(assert (=> d!1697020 (=> res!2236890 e!3279410)))

(assert (=> d!1697020 (= res!2236890 ((_ is EmptyExpr!14893) (regOne!30298 (regOne!30298 r!7292))))))

(assert (=> d!1697020 (= (nullableFct!1444 (regOne!30298 (regOne!30298 r!7292))) e!3279410)))

(declare-fun b!5273265 () Bool)

(declare-fun e!3279413 () Bool)

(assert (=> b!5273265 (= e!3279410 e!3279413)))

(declare-fun res!2236888 () Bool)

(assert (=> b!5273265 (=> (not res!2236888) (not e!3279413))))

(assert (=> b!5273265 (= res!2236888 (and (not ((_ is EmptyLang!14893) (regOne!30298 (regOne!30298 r!7292)))) (not ((_ is ElementMatch!14893) (regOne!30298 (regOne!30298 r!7292))))))))

(declare-fun b!5273266 () Bool)

(assert (=> b!5273266 (= e!3279414 e!3279412)))

(declare-fun res!2236889 () Bool)

(assert (=> b!5273266 (= res!2236889 call!374950)))

(assert (=> b!5273266 (=> (not res!2236889) (not e!3279412))))

(declare-fun b!5273267 () Bool)

(declare-fun e!3279411 () Bool)

(assert (=> b!5273267 (= e!3279413 e!3279411)))

(declare-fun res!2236886 () Bool)

(assert (=> b!5273267 (=> res!2236886 e!3279411)))

(assert (=> b!5273267 (= res!2236886 ((_ is Star!14893) (regOne!30298 (regOne!30298 r!7292))))))

(declare-fun b!5273268 () Bool)

(assert (=> b!5273268 (= e!3279411 e!3279414)))

(declare-fun c!913556 () Bool)

(assert (=> b!5273268 (= c!913556 ((_ is Union!14893) (regOne!30298 (regOne!30298 r!7292))))))

(declare-fun bm!374945 () Bool)

(assert (=> bm!374945 (= call!374951 (nullable!5062 (ite c!913556 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))))))))

(declare-fun bm!374946 () Bool)

(assert (=> bm!374946 (= call!374950 (nullable!5062 (ite c!913556 (regOne!30299 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 (regOne!30298 r!7292))))))))

(assert (= (and d!1697020 (not res!2236890)) b!5273265))

(assert (= (and b!5273265 res!2236888) b!5273267))

(assert (= (and b!5273267 (not res!2236886)) b!5273268))

(assert (= (and b!5273268 c!913556) b!5273262))

(assert (= (and b!5273268 (not c!913556)) b!5273266))

(assert (= (and b!5273262 (not res!2236887)) b!5273264))

(assert (= (and b!5273266 res!2236889) b!5273263))

(assert (= (or b!5273264 b!5273263) bm!374945))

(assert (= (or b!5273262 b!5273266) bm!374946))

(declare-fun m!6312044 () Bool)

(assert (=> bm!374945 m!6312044))

(declare-fun m!6312046 () Bool)

(assert (=> bm!374946 m!6312046))

(assert (=> d!1696598 d!1697020))

(declare-fun b!5273269 () Bool)

(declare-fun e!3279418 () (InoxSet Context!8554))

(assert (=> b!5273269 (= e!3279418 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273270 () Bool)

(declare-fun call!374952 () (InoxSet Context!8554))

(assert (=> b!5273270 (= e!3279418 call!374952)))

(declare-fun bm!374947 () Bool)

(assert (=> bm!374947 (= call!374952 (derivationStepZipperDown!341 (h!67303 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))))) (Context!8555 (t!374174 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))))))) (h!67302 s!2326)))))

(declare-fun b!5273271 () Bool)

(declare-fun e!3279417 () (InoxSet Context!8554))

(assert (=> b!5273271 (= e!3279417 ((_ map or) call!374952 (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))))))) (h!67302 s!2326))))))

(declare-fun b!5273272 () Bool)

(declare-fun e!3279416 () Bool)

(assert (=> b!5273272 (= e!3279416 (nullable!5062 (h!67303 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))))))))))

(declare-fun d!1697022 () Bool)

(declare-fun c!913558 () Bool)

(assert (=> d!1697022 (= c!913558 e!3279416)))

(declare-fun res!2236891 () Bool)

(assert (=> d!1697022 (=> (not res!2236891) (not e!3279416))))

(assert (=> d!1697022 (= res!2236891 ((_ is Cons!60855) (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))))))))

(assert (=> d!1697022 (= (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (h!67302 s!2326)) e!3279417)))

(declare-fun b!5273273 () Bool)

(assert (=> b!5273273 (= e!3279417 e!3279418)))

(declare-fun c!913557 () Bool)

(assert (=> b!5273273 (= c!913557 ((_ is Cons!60855) (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))))))))

(assert (= (and d!1697022 res!2236891) b!5273272))

(assert (= (and d!1697022 c!913558) b!5273271))

(assert (= (and d!1697022 (not c!913558)) b!5273273))

(assert (= (and b!5273273 c!913557) b!5273270))

(assert (= (and b!5273273 (not c!913557)) b!5273269))

(assert (= (or b!5273271 b!5273270) bm!374947))

(declare-fun m!6312048 () Bool)

(assert (=> bm!374947 m!6312048))

(declare-fun m!6312050 () Bool)

(assert (=> b!5273271 m!6312050))

(declare-fun m!6312052 () Bool)

(assert (=> b!5273272 m!6312052))

(assert (=> b!5272034 d!1697022))

(declare-fun b!5273274 () Bool)

(declare-fun e!3279423 () Bool)

(declare-fun e!3279424 () Bool)

(assert (=> b!5273274 (= e!3279423 e!3279424)))

(declare-fun res!2236893 () Bool)

(declare-fun call!374953 () Bool)

(assert (=> b!5273274 (= res!2236893 call!374953)))

(assert (=> b!5273274 (=> res!2236893 e!3279424)))

(declare-fun b!5273275 () Bool)

(declare-fun e!3279421 () Bool)

(declare-fun call!374954 () Bool)

(assert (=> b!5273275 (= e!3279421 call!374954)))

(declare-fun b!5273276 () Bool)

(assert (=> b!5273276 (= e!3279424 call!374954)))

(declare-fun d!1697024 () Bool)

(declare-fun res!2236896 () Bool)

(declare-fun e!3279419 () Bool)

(assert (=> d!1697024 (=> res!2236896 e!3279419)))

(assert (=> d!1697024 (= res!2236896 ((_ is EmptyExpr!14893) (regTwo!30298 (regOne!30298 r!7292))))))

(assert (=> d!1697024 (= (nullableFct!1444 (regTwo!30298 (regOne!30298 r!7292))) e!3279419)))

(declare-fun b!5273277 () Bool)

(declare-fun e!3279422 () Bool)

(assert (=> b!5273277 (= e!3279419 e!3279422)))

(declare-fun res!2236894 () Bool)

(assert (=> b!5273277 (=> (not res!2236894) (not e!3279422))))

(assert (=> b!5273277 (= res!2236894 (and (not ((_ is EmptyLang!14893) (regTwo!30298 (regOne!30298 r!7292)))) (not ((_ is ElementMatch!14893) (regTwo!30298 (regOne!30298 r!7292))))))))

(declare-fun b!5273278 () Bool)

(assert (=> b!5273278 (= e!3279423 e!3279421)))

(declare-fun res!2236895 () Bool)

(assert (=> b!5273278 (= res!2236895 call!374953)))

(assert (=> b!5273278 (=> (not res!2236895) (not e!3279421))))

(declare-fun b!5273279 () Bool)

(declare-fun e!3279420 () Bool)

(assert (=> b!5273279 (= e!3279422 e!3279420)))

(declare-fun res!2236892 () Bool)

(assert (=> b!5273279 (=> res!2236892 e!3279420)))

(assert (=> b!5273279 (= res!2236892 ((_ is Star!14893) (regTwo!30298 (regOne!30298 r!7292))))))

(declare-fun b!5273280 () Bool)

(assert (=> b!5273280 (= e!3279420 e!3279423)))

(declare-fun c!913559 () Bool)

(assert (=> b!5273280 (= c!913559 ((_ is Union!14893) (regTwo!30298 (regOne!30298 r!7292))))))

(declare-fun bm!374948 () Bool)

(assert (=> bm!374948 (= call!374954 (nullable!5062 (ite c!913559 (regTwo!30299 (regTwo!30298 (regOne!30298 r!7292))) (regTwo!30298 (regTwo!30298 (regOne!30298 r!7292))))))))

(declare-fun bm!374949 () Bool)

(assert (=> bm!374949 (= call!374953 (nullable!5062 (ite c!913559 (regOne!30299 (regTwo!30298 (regOne!30298 r!7292))) (regOne!30298 (regTwo!30298 (regOne!30298 r!7292))))))))

(assert (= (and d!1697024 (not res!2236896)) b!5273277))

(assert (= (and b!5273277 res!2236894) b!5273279))

(assert (= (and b!5273279 (not res!2236892)) b!5273280))

(assert (= (and b!5273280 c!913559) b!5273274))

(assert (= (and b!5273280 (not c!913559)) b!5273278))

(assert (= (and b!5273274 (not res!2236893)) b!5273276))

(assert (= (and b!5273278 res!2236895) b!5273275))

(assert (= (or b!5273276 b!5273275) bm!374948))

(assert (= (or b!5273274 b!5273278) bm!374949))

(declare-fun m!6312054 () Bool)

(assert (=> bm!374948 m!6312054))

(declare-fun m!6312056 () Bool)

(assert (=> bm!374949 m!6312056))

(assert (=> d!1696546 d!1697024))

(declare-fun d!1697026 () Bool)

(assert (=> d!1697026 (= (nullable!5062 (regOne!30298 (regOne!30298 (regOne!30298 r!7292)))) (nullableFct!1444 (regOne!30298 (regOne!30298 (regOne!30298 r!7292)))))))

(declare-fun bs!1221757 () Bool)

(assert (= bs!1221757 d!1697026))

(declare-fun m!6312058 () Bool)

(assert (=> bs!1221757 m!6312058))

(assert (=> b!5271875 d!1697026))

(declare-fun d!1697028 () Bool)

(assert (=> d!1697028 true))

(declare-fun setRes!33765 () Bool)

(assert (=> d!1697028 setRes!33765))

(declare-fun condSetEmpty!33765 () Bool)

(declare-fun res!2236897 () (InoxSet Context!8554))

(assert (=> d!1697028 (= condSetEmpty!33765 (= res!2236897 ((as const (Array Context!8554 Bool)) false)))))

(assert (=> d!1697028 (= (choose!39338 lt!2156812 lambda!265971) res!2236897)))

(declare-fun setIsEmpty!33765 () Bool)

(assert (=> setIsEmpty!33765 setRes!33765))

(declare-fun setNonEmpty!33765 () Bool)

(declare-fun tp!1473635 () Bool)

(declare-fun e!3279425 () Bool)

(declare-fun setElem!33765 () Context!8554)

(assert (=> setNonEmpty!33765 (= setRes!33765 (and tp!1473635 (inv!80479 setElem!33765) e!3279425))))

(declare-fun setRest!33765 () (InoxSet Context!8554))

(assert (=> setNonEmpty!33765 (= res!2236897 ((_ map or) (store ((as const (Array Context!8554 Bool)) false) setElem!33765 true) setRest!33765))))

(declare-fun b!5273281 () Bool)

(declare-fun tp!1473634 () Bool)

(assert (=> b!5273281 (= e!3279425 tp!1473634)))

(assert (= (and d!1697028 condSetEmpty!33765) setIsEmpty!33765))

(assert (= (and d!1697028 (not condSetEmpty!33765)) setNonEmpty!33765))

(assert (= setNonEmpty!33765 b!5273281))

(declare-fun m!6312060 () Bool)

(assert (=> setNonEmpty!33765 m!6312060))

(assert (=> d!1696548 d!1697028))

(declare-fun b!5273283 () Bool)

(declare-fun e!3279426 () List!60978)

(assert (=> b!5273283 (= e!3279426 (Cons!60854 (h!67302 (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854))) (++!13272 (t!374173 (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854))) (t!374173 s!2326))))))

(declare-fun d!1697030 () Bool)

(declare-fun e!3279427 () Bool)

(assert (=> d!1697030 e!3279427))

(declare-fun res!2236899 () Bool)

(assert (=> d!1697030 (=> (not res!2236899) (not e!3279427))))

(declare-fun lt!2156948 () List!60978)

(assert (=> d!1697030 (= res!2236899 (= (content!10827 lt!2156948) ((_ map or) (content!10827 (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854))) (content!10827 (t!374173 s!2326)))))))

(assert (=> d!1697030 (= lt!2156948 e!3279426)))

(declare-fun c!913560 () Bool)

(assert (=> d!1697030 (= c!913560 ((_ is Nil!60854) (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854))))))

(assert (=> d!1697030 (= (++!13272 (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854)) (t!374173 s!2326)) lt!2156948)))

(declare-fun b!5273284 () Bool)

(declare-fun res!2236898 () Bool)

(assert (=> b!5273284 (=> (not res!2236898) (not e!3279427))))

(assert (=> b!5273284 (= res!2236898 (= (size!39749 lt!2156948) (+ (size!39749 (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854))) (size!39749 (t!374173 s!2326)))))))

(declare-fun b!5273285 () Bool)

(assert (=> b!5273285 (= e!3279427 (or (not (= (t!374173 s!2326) Nil!60854)) (= lt!2156948 (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854)))))))

(declare-fun b!5273282 () Bool)

(assert (=> b!5273282 (= e!3279426 (t!374173 s!2326))))

(assert (= (and d!1697030 c!913560) b!5273282))

(assert (= (and d!1697030 (not c!913560)) b!5273283))

(assert (= (and d!1697030 res!2236899) b!5273284))

(assert (= (and b!5273284 res!2236898) b!5273285))

(declare-fun m!6312062 () Bool)

(assert (=> b!5273283 m!6312062))

(declare-fun m!6312064 () Bool)

(assert (=> d!1697030 m!6312064))

(assert (=> d!1697030 m!6311124))

(declare-fun m!6312066 () Bool)

(assert (=> d!1697030 m!6312066))

(declare-fun m!6312068 () Bool)

(assert (=> d!1697030 m!6312068))

(declare-fun m!6312070 () Bool)

(assert (=> b!5273284 m!6312070))

(assert (=> b!5273284 m!6311124))

(declare-fun m!6312072 () Bool)

(assert (=> b!5273284 m!6312072))

(declare-fun m!6312074 () Bool)

(assert (=> b!5273284 m!6312074))

(assert (=> b!5272231 d!1697030))

(declare-fun b!5273287 () Bool)

(declare-fun e!3279428 () List!60978)

(assert (=> b!5273287 (= e!3279428 (Cons!60854 (h!67302 Nil!60854) (++!13272 (t!374173 Nil!60854) (Cons!60854 (h!67302 s!2326) Nil!60854))))))

(declare-fun d!1697032 () Bool)

(declare-fun e!3279429 () Bool)

(assert (=> d!1697032 e!3279429))

(declare-fun res!2236901 () Bool)

(assert (=> d!1697032 (=> (not res!2236901) (not e!3279429))))

(declare-fun lt!2156949 () List!60978)

(assert (=> d!1697032 (= res!2236901 (= (content!10827 lt!2156949) ((_ map or) (content!10827 Nil!60854) (content!10827 (Cons!60854 (h!67302 s!2326) Nil!60854)))))))

(assert (=> d!1697032 (= lt!2156949 e!3279428)))

(declare-fun c!913561 () Bool)

(assert (=> d!1697032 (= c!913561 ((_ is Nil!60854) Nil!60854))))

(assert (=> d!1697032 (= (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854)) lt!2156949)))

(declare-fun b!5273288 () Bool)

(declare-fun res!2236900 () Bool)

(assert (=> b!5273288 (=> (not res!2236900) (not e!3279429))))

(assert (=> b!5273288 (= res!2236900 (= (size!39749 lt!2156949) (+ (size!39749 Nil!60854) (size!39749 (Cons!60854 (h!67302 s!2326) Nil!60854)))))))

(declare-fun b!5273289 () Bool)

(assert (=> b!5273289 (= e!3279429 (or (not (= (Cons!60854 (h!67302 s!2326) Nil!60854) Nil!60854)) (= lt!2156949 Nil!60854)))))

(declare-fun b!5273286 () Bool)

(assert (=> b!5273286 (= e!3279428 (Cons!60854 (h!67302 s!2326) Nil!60854))))

(assert (= (and d!1697032 c!913561) b!5273286))

(assert (= (and d!1697032 (not c!913561)) b!5273287))

(assert (= (and d!1697032 res!2236901) b!5273288))

(assert (= (and b!5273288 res!2236900) b!5273289))

(declare-fun m!6312076 () Bool)

(assert (=> b!5273287 m!6312076))

(declare-fun m!6312078 () Bool)

(assert (=> d!1697032 m!6312078))

(declare-fun m!6312080 () Bool)

(assert (=> d!1697032 m!6312080))

(declare-fun m!6312082 () Bool)

(assert (=> d!1697032 m!6312082))

(declare-fun m!6312084 () Bool)

(assert (=> b!5273288 m!6312084))

(declare-fun m!6312086 () Bool)

(assert (=> b!5273288 m!6312086))

(declare-fun m!6312088 () Bool)

(assert (=> b!5273288 m!6312088))

(assert (=> b!5272231 d!1697032))

(declare-fun d!1697034 () Bool)

(assert (=> d!1697034 (= (++!13272 (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854)) (t!374173 s!2326)) s!2326)))

(declare-fun lt!2156952 () Unit!153090)

(declare-fun choose!39346 (List!60978 C!30056 List!60978 List!60978) Unit!153090)

(assert (=> d!1697034 (= lt!2156952 (choose!39346 Nil!60854 (h!67302 s!2326) (t!374173 s!2326) s!2326))))

(assert (=> d!1697034 (= (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) (t!374173 s!2326))) s!2326)))

(assert (=> d!1697034 (= (lemmaMoveElementToOtherListKeepsConcatEq!1687 Nil!60854 (h!67302 s!2326) (t!374173 s!2326) s!2326) lt!2156952)))

(declare-fun bs!1221758 () Bool)

(assert (= bs!1221758 d!1697034))

(assert (=> bs!1221758 m!6311124))

(assert (=> bs!1221758 m!6311124))

(assert (=> bs!1221758 m!6311126))

(declare-fun m!6312090 () Bool)

(assert (=> bs!1221758 m!6312090))

(declare-fun m!6312092 () Bool)

(assert (=> bs!1221758 m!6312092))

(assert (=> b!5272231 d!1697034))

(declare-fun b!5273290 () Bool)

(declare-fun e!3279432 () Bool)

(assert (=> b!5273290 (= e!3279432 (matchR!7078 (regTwo!30298 r!7292) (t!374173 s!2326)))))

(declare-fun b!5273291 () Bool)

(declare-fun e!3279434 () Bool)

(declare-fun lt!2156954 () Option!15004)

(assert (=> b!5273291 (= e!3279434 (= (++!13272 (_1!35395 (get!20924 lt!2156954)) (_2!35395 (get!20924 lt!2156954))) s!2326))))

(declare-fun d!1697036 () Bool)

(declare-fun e!3279433 () Bool)

(assert (=> d!1697036 e!3279433))

(declare-fun res!2236902 () Bool)

(assert (=> d!1697036 (=> res!2236902 e!3279433)))

(assert (=> d!1697036 (= res!2236902 e!3279434)))

(declare-fun res!2236906 () Bool)

(assert (=> d!1697036 (=> (not res!2236906) (not e!3279434))))

(assert (=> d!1697036 (= res!2236906 (isDefined!11707 lt!2156954))))

(declare-fun e!3279430 () Option!15004)

(assert (=> d!1697036 (= lt!2156954 e!3279430)))

(declare-fun c!913563 () Bool)

(assert (=> d!1697036 (= c!913563 e!3279432)))

(declare-fun res!2236903 () Bool)

(assert (=> d!1697036 (=> (not res!2236903) (not e!3279432))))

(assert (=> d!1697036 (= res!2236903 (matchR!7078 (regOne!30298 r!7292) (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854))))))

(assert (=> d!1697036 (validRegex!6629 (regOne!30298 r!7292))))

(assert (=> d!1697036 (= (findConcatSeparation!1418 (regOne!30298 r!7292) (regTwo!30298 r!7292) (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854)) (t!374173 s!2326) s!2326) lt!2156954)))

(declare-fun b!5273292 () Bool)

(declare-fun lt!2156953 () Unit!153090)

(declare-fun lt!2156955 () Unit!153090)

(assert (=> b!5273292 (= lt!2156953 lt!2156955)))

(assert (=> b!5273292 (= (++!13272 (++!13272 (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854)) (Cons!60854 (h!67302 (t!374173 s!2326)) Nil!60854)) (t!374173 (t!374173 s!2326))) s!2326)))

(assert (=> b!5273292 (= lt!2156955 (lemmaMoveElementToOtherListKeepsConcatEq!1687 (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854)) (h!67302 (t!374173 s!2326)) (t!374173 (t!374173 s!2326)) s!2326))))

(declare-fun e!3279431 () Option!15004)

(assert (=> b!5273292 (= e!3279431 (findConcatSeparation!1418 (regOne!30298 r!7292) (regTwo!30298 r!7292) (++!13272 (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854)) (Cons!60854 (h!67302 (t!374173 s!2326)) Nil!60854)) (t!374173 (t!374173 s!2326)) s!2326))))

(declare-fun b!5273293 () Bool)

(assert (=> b!5273293 (= e!3279433 (not (isDefined!11707 lt!2156954)))))

(declare-fun b!5273294 () Bool)

(assert (=> b!5273294 (= e!3279430 (Some!15003 (tuple2!64185 (++!13272 Nil!60854 (Cons!60854 (h!67302 s!2326) Nil!60854)) (t!374173 s!2326))))))

(declare-fun b!5273295 () Bool)

(declare-fun res!2236905 () Bool)

(assert (=> b!5273295 (=> (not res!2236905) (not e!3279434))))

(assert (=> b!5273295 (= res!2236905 (matchR!7078 (regTwo!30298 r!7292) (_2!35395 (get!20924 lt!2156954))))))

(declare-fun b!5273296 () Bool)

(assert (=> b!5273296 (= e!3279430 e!3279431)))

(declare-fun c!913562 () Bool)

(assert (=> b!5273296 (= c!913562 ((_ is Nil!60854) (t!374173 s!2326)))))

(declare-fun b!5273297 () Bool)

(assert (=> b!5273297 (= e!3279431 None!15003)))

(declare-fun b!5273298 () Bool)

(declare-fun res!2236904 () Bool)

(assert (=> b!5273298 (=> (not res!2236904) (not e!3279434))))

(assert (=> b!5273298 (= res!2236904 (matchR!7078 (regOne!30298 r!7292) (_1!35395 (get!20924 lt!2156954))))))

(assert (= (and d!1697036 res!2236903) b!5273290))

(assert (= (and d!1697036 c!913563) b!5273294))

(assert (= (and d!1697036 (not c!913563)) b!5273296))

(assert (= (and b!5273296 c!913562) b!5273297))

(assert (= (and b!5273296 (not c!913562)) b!5273292))

(assert (= (and d!1697036 res!2236906) b!5273298))

(assert (= (and b!5273298 res!2236904) b!5273295))

(assert (= (and b!5273295 res!2236905) b!5273291))

(assert (= (and d!1697036 (not res!2236902)) b!5273293))

(declare-fun m!6312094 () Bool)

(assert (=> b!5273295 m!6312094))

(declare-fun m!6312096 () Bool)

(assert (=> b!5273295 m!6312096))

(assert (=> b!5273292 m!6311124))

(declare-fun m!6312098 () Bool)

(assert (=> b!5273292 m!6312098))

(assert (=> b!5273292 m!6312098))

(declare-fun m!6312100 () Bool)

(assert (=> b!5273292 m!6312100))

(assert (=> b!5273292 m!6311124))

(declare-fun m!6312102 () Bool)

(assert (=> b!5273292 m!6312102))

(assert (=> b!5273292 m!6312098))

(declare-fun m!6312104 () Bool)

(assert (=> b!5273292 m!6312104))

(declare-fun m!6312106 () Bool)

(assert (=> d!1697036 m!6312106))

(assert (=> d!1697036 m!6311124))

(declare-fun m!6312108 () Bool)

(assert (=> d!1697036 m!6312108))

(assert (=> d!1697036 m!6311136))

(assert (=> b!5273298 m!6312094))

(declare-fun m!6312110 () Bool)

(assert (=> b!5273298 m!6312110))

(assert (=> b!5273293 m!6312106))

(declare-fun m!6312112 () Bool)

(assert (=> b!5273290 m!6312112))

(assert (=> b!5273291 m!6312094))

(declare-fun m!6312114 () Bool)

(assert (=> b!5273291 m!6312114))

(assert (=> b!5272231 d!1697036))

(declare-fun bs!1221759 () Bool)

(declare-fun d!1697038 () Bool)

(assert (= bs!1221759 (and d!1697038 d!1696774)))

(declare-fun lambda!266089 () Int)

(assert (=> bs!1221759 (= lambda!266089 lambda!266056)))

(declare-fun bs!1221760 () Bool)

(assert (= bs!1221760 (and d!1697038 d!1696580)))

(assert (=> bs!1221760 (= lambda!266089 lambda!266021)))

(declare-fun bs!1221761 () Bool)

(assert (= bs!1221761 (and d!1697038 d!1696934)))

(assert (=> bs!1221761 (= lambda!266089 lambda!266071)))

(declare-fun bs!1221762 () Bool)

(assert (= bs!1221762 (and d!1697038 d!1696466)))

(assert (=> bs!1221762 (= lambda!266089 lambda!265989)))

(declare-fun bs!1221763 () Bool)

(assert (= bs!1221763 (and d!1697038 d!1696578)))

(assert (=> bs!1221763 (= lambda!266089 lambda!266018)))

(declare-fun bs!1221764 () Bool)

(assert (= bs!1221764 (and d!1697038 d!1696552)))

(assert (=> bs!1221764 (= lambda!266089 lambda!266009)))

(declare-fun bs!1221765 () Bool)

(assert (= bs!1221765 (and d!1697038 d!1696754)))

(assert (=> bs!1221765 (= lambda!266089 lambda!266051)))

(declare-fun bs!1221766 () Bool)

(assert (= bs!1221766 (and d!1697038 d!1696582)))

(assert (=> bs!1221766 (= lambda!266089 lambda!266024)))

(declare-fun bs!1221767 () Bool)

(assert (= bs!1221767 (and d!1697038 d!1696864)))

(assert (=> bs!1221767 (= lambda!266089 lambda!266065)))

(declare-fun b!5273299 () Bool)

(declare-fun e!3279436 () Bool)

(declare-fun lt!2156956 () Regex!14893)

(assert (=> b!5273299 (= e!3279436 (= lt!2156956 (head!11303 (t!374174 (unfocusZipperList!335 zl!343)))))))

(declare-fun b!5273300 () Bool)

(declare-fun e!3279440 () Bool)

(declare-fun e!3279438 () Bool)

(assert (=> b!5273300 (= e!3279440 e!3279438)))

(declare-fun c!913565 () Bool)

(assert (=> b!5273300 (= c!913565 (isEmpty!32804 (t!374174 (unfocusZipperList!335 zl!343))))))

(declare-fun b!5273301 () Bool)

(declare-fun e!3279437 () Regex!14893)

(assert (=> b!5273301 (= e!3279437 EmptyLang!14893)))

(declare-fun b!5273302 () Bool)

(assert (=> b!5273302 (= e!3279438 (isEmptyLang!835 lt!2156956))))

(declare-fun b!5273303 () Bool)

(assert (=> b!5273303 (= e!3279436 (isUnion!267 lt!2156956))))

(declare-fun b!5273304 () Bool)

(assert (=> b!5273304 (= e!3279437 (Union!14893 (h!67303 (t!374174 (unfocusZipperList!335 zl!343))) (generalisedUnion!822 (t!374174 (t!374174 (unfocusZipperList!335 zl!343))))))))

(declare-fun b!5273305 () Bool)

(assert (=> b!5273305 (= e!3279438 e!3279436)))

(declare-fun c!913566 () Bool)

(assert (=> b!5273305 (= c!913566 (isEmpty!32804 (tail!10400 (t!374174 (unfocusZipperList!335 zl!343)))))))

(declare-fun b!5273306 () Bool)

(declare-fun e!3279439 () Bool)

(assert (=> b!5273306 (= e!3279439 (isEmpty!32804 (t!374174 (t!374174 (unfocusZipperList!335 zl!343)))))))

(declare-fun b!5273307 () Bool)

(declare-fun e!3279435 () Regex!14893)

(assert (=> b!5273307 (= e!3279435 e!3279437)))

(declare-fun c!913564 () Bool)

(assert (=> b!5273307 (= c!913564 ((_ is Cons!60855) (t!374174 (unfocusZipperList!335 zl!343))))))

(assert (=> d!1697038 e!3279440))

(declare-fun res!2236908 () Bool)

(assert (=> d!1697038 (=> (not res!2236908) (not e!3279440))))

(assert (=> d!1697038 (= res!2236908 (validRegex!6629 lt!2156956))))

(assert (=> d!1697038 (= lt!2156956 e!3279435)))

(declare-fun c!913567 () Bool)

(assert (=> d!1697038 (= c!913567 e!3279439)))

(declare-fun res!2236907 () Bool)

(assert (=> d!1697038 (=> (not res!2236907) (not e!3279439))))

(assert (=> d!1697038 (= res!2236907 ((_ is Cons!60855) (t!374174 (unfocusZipperList!335 zl!343))))))

(assert (=> d!1697038 (forall!14301 (t!374174 (unfocusZipperList!335 zl!343)) lambda!266089)))

(assert (=> d!1697038 (= (generalisedUnion!822 (t!374174 (unfocusZipperList!335 zl!343))) lt!2156956)))

(declare-fun b!5273308 () Bool)

(assert (=> b!5273308 (= e!3279435 (h!67303 (t!374174 (unfocusZipperList!335 zl!343))))))

(assert (= (and d!1697038 res!2236907) b!5273306))

(assert (= (and d!1697038 c!913567) b!5273308))

(assert (= (and d!1697038 (not c!913567)) b!5273307))

(assert (= (and b!5273307 c!913564) b!5273304))

(assert (= (and b!5273307 (not c!913564)) b!5273301))

(assert (= (and d!1697038 res!2236908) b!5273300))

(assert (= (and b!5273300 c!913565) b!5273302))

(assert (= (and b!5273300 (not c!913565)) b!5273305))

(assert (= (and b!5273305 c!913566) b!5273299))

(assert (= (and b!5273305 (not c!913566)) b!5273303))

(assert (=> b!5273300 m!6311082))

(declare-fun m!6312116 () Bool)

(assert (=> b!5273302 m!6312116))

(declare-fun m!6312118 () Bool)

(assert (=> b!5273306 m!6312118))

(declare-fun m!6312120 () Bool)

(assert (=> d!1697038 m!6312120))

(declare-fun m!6312122 () Bool)

(assert (=> d!1697038 m!6312122))

(declare-fun m!6312124 () Bool)

(assert (=> b!5273303 m!6312124))

(declare-fun m!6312126 () Bool)

(assert (=> b!5273305 m!6312126))

(assert (=> b!5273305 m!6312126))

(declare-fun m!6312128 () Bool)

(assert (=> b!5273305 m!6312128))

(declare-fun m!6312130 () Bool)

(assert (=> b!5273299 m!6312130))

(declare-fun m!6312132 () Bool)

(assert (=> b!5273304 m!6312132))

(assert (=> b!5272170 d!1697038))

(declare-fun bs!1221768 () Bool)

(declare-fun b!5273319 () Bool)

(assert (= bs!1221768 (and b!5273319 b!5272100)))

(declare-fun lambda!266090 () Int)

(assert (=> bs!1221768 (= (and (= (reg!15222 (regOne!30299 r!7292)) (reg!15222 r!7292)) (= (regOne!30299 r!7292) r!7292)) (= lambda!266090 lambda!266014))))

(declare-fun bs!1221769 () Bool)

(assert (= bs!1221769 (and b!5273319 d!1696590)))

(assert (=> bs!1221769 (not (= lambda!266090 lambda!266027))))

(declare-fun bs!1221770 () Bool)

(assert (= bs!1221770 (and b!5273319 d!1696592)))

(assert (=> bs!1221770 (not (= lambda!266090 lambda!266033))))

(declare-fun bs!1221771 () Bool)

(assert (= bs!1221771 (and b!5273319 b!5272093)))

(assert (=> bs!1221771 (not (= lambda!266090 lambda!266015))))

(declare-fun bs!1221772 () Bool)

(assert (= bs!1221772 (and b!5273319 b!5272914)))

(assert (=> bs!1221772 (not (= lambda!266090 lambda!266068))))

(declare-fun bs!1221773 () Bool)

(assert (= bs!1221773 (and b!5273319 d!1696988)))

(assert (=> bs!1221773 (not (= lambda!266090 lambda!266083))))

(declare-fun bs!1221774 () Bool)

(assert (= bs!1221774 (and b!5273319 b!5272921)))

(assert (=> bs!1221774 (= (and (= (reg!15222 (regOne!30299 r!7292)) (reg!15222 (regTwo!30299 r!7292))) (= (regOne!30299 r!7292) (regTwo!30299 r!7292))) (= lambda!266090 lambda!266067))))

(declare-fun bs!1221775 () Bool)

(assert (= bs!1221775 (and b!5273319 d!1697004)))

(assert (=> bs!1221775 (not (= lambda!266090 lambda!266087))))

(assert (=> bs!1221773 (not (= lambda!266090 lambda!266082))))

(declare-fun bs!1221776 () Bool)

(assert (= bs!1221776 (and b!5273319 b!5271490)))

(assert (=> bs!1221776 (not (= lambda!266090 lambda!265970))))

(assert (=> bs!1221776 (not (= lambda!266090 lambda!265969))))

(assert (=> bs!1221770 (not (= lambda!266090 lambda!266032))))

(assert (=> b!5273319 true))

(assert (=> b!5273319 true))

(declare-fun bs!1221777 () Bool)

(declare-fun b!5273312 () Bool)

(assert (= bs!1221777 (and b!5273312 b!5272100)))

(declare-fun lambda!266091 () Int)

(assert (=> bs!1221777 (not (= lambda!266091 lambda!266014))))

(declare-fun bs!1221778 () Bool)

(assert (= bs!1221778 (and b!5273312 d!1696590)))

(assert (=> bs!1221778 (not (= lambda!266091 lambda!266027))))

(declare-fun bs!1221779 () Bool)

(assert (= bs!1221779 (and b!5273312 d!1696592)))

(assert (=> bs!1221779 (= (and (= (regOne!30298 (regOne!30299 r!7292)) (regOne!30298 r!7292)) (= (regTwo!30298 (regOne!30299 r!7292)) (regTwo!30298 r!7292))) (= lambda!266091 lambda!266033))))

(declare-fun bs!1221780 () Bool)

(assert (= bs!1221780 (and b!5273312 b!5272093)))

(assert (=> bs!1221780 (= (and (= (regOne!30298 (regOne!30299 r!7292)) (regOne!30298 r!7292)) (= (regTwo!30298 (regOne!30299 r!7292)) (regTwo!30298 r!7292))) (= lambda!266091 lambda!266015))))

(declare-fun bs!1221781 () Bool)

(assert (= bs!1221781 (and b!5273312 b!5273319)))

(assert (=> bs!1221781 (not (= lambda!266091 lambda!266090))))

(declare-fun bs!1221782 () Bool)

(assert (= bs!1221782 (and b!5273312 b!5272914)))

(assert (=> bs!1221782 (= (and (= (regOne!30298 (regOne!30299 r!7292)) (regOne!30298 (regTwo!30299 r!7292))) (= (regTwo!30298 (regOne!30299 r!7292)) (regTwo!30298 (regTwo!30299 r!7292)))) (= lambda!266091 lambda!266068))))

(declare-fun bs!1221783 () Bool)

(assert (= bs!1221783 (and b!5273312 d!1696988)))

(assert (=> bs!1221783 (= (and (= (regOne!30298 (regOne!30299 r!7292)) (regOne!30298 r!7292)) (= (regTwo!30298 (regOne!30299 r!7292)) (regTwo!30298 r!7292))) (= lambda!266091 lambda!266083))))

(declare-fun bs!1221784 () Bool)

(assert (= bs!1221784 (and b!5273312 b!5272921)))

(assert (=> bs!1221784 (not (= lambda!266091 lambda!266067))))

(declare-fun bs!1221785 () Bool)

(assert (= bs!1221785 (and b!5273312 d!1697004)))

(assert (=> bs!1221785 (not (= lambda!266091 lambda!266087))))

(assert (=> bs!1221783 (not (= lambda!266091 lambda!266082))))

(declare-fun bs!1221786 () Bool)

(assert (= bs!1221786 (and b!5273312 b!5271490)))

(assert (=> bs!1221786 (= (and (= (regOne!30298 (regOne!30299 r!7292)) (regOne!30298 r!7292)) (= (regTwo!30298 (regOne!30299 r!7292)) (regTwo!30298 r!7292))) (= lambda!266091 lambda!265970))))

(assert (=> bs!1221786 (not (= lambda!266091 lambda!265969))))

(assert (=> bs!1221779 (not (= lambda!266091 lambda!266032))))

(assert (=> b!5273312 true))

(assert (=> b!5273312 true))

(declare-fun b!5273309 () Bool)

(declare-fun c!913570 () Bool)

(assert (=> b!5273309 (= c!913570 ((_ is ElementMatch!14893) (regOne!30299 r!7292)))))

(declare-fun e!3279441 () Bool)

(declare-fun e!3279446 () Bool)

(assert (=> b!5273309 (= e!3279441 e!3279446)))

(declare-fun b!5273310 () Bool)

(declare-fun e!3279445 () Bool)

(declare-fun e!3279443 () Bool)

(assert (=> b!5273310 (= e!3279445 e!3279443)))

(declare-fun res!2236910 () Bool)

(assert (=> b!5273310 (= res!2236910 (matchRSpec!1996 (regOne!30299 (regOne!30299 r!7292)) s!2326))))

(assert (=> b!5273310 (=> res!2236910 e!3279443)))

(declare-fun b!5273311 () Bool)

(assert (=> b!5273311 (= e!3279446 (= s!2326 (Cons!60854 (c!913081 (regOne!30299 r!7292)) Nil!60854)))))

(declare-fun d!1697040 () Bool)

(declare-fun c!913569 () Bool)

(assert (=> d!1697040 (= c!913569 ((_ is EmptyExpr!14893) (regOne!30299 r!7292)))))

(declare-fun e!3279447 () Bool)

(assert (=> d!1697040 (= (matchRSpec!1996 (regOne!30299 r!7292) s!2326) e!3279447)))

(declare-fun e!3279444 () Bool)

(declare-fun call!374956 () Bool)

(assert (=> b!5273312 (= e!3279444 call!374956)))

(declare-fun b!5273313 () Bool)

(declare-fun call!374955 () Bool)

(assert (=> b!5273313 (= e!3279447 call!374955)))

(declare-fun b!5273314 () Bool)

(declare-fun res!2236911 () Bool)

(declare-fun e!3279442 () Bool)

(assert (=> b!5273314 (=> res!2236911 e!3279442)))

(assert (=> b!5273314 (= res!2236911 call!374955)))

(assert (=> b!5273314 (= e!3279444 e!3279442)))

(declare-fun b!5273315 () Bool)

(assert (=> b!5273315 (= e!3279447 e!3279441)))

(declare-fun res!2236909 () Bool)

(assert (=> b!5273315 (= res!2236909 (not ((_ is EmptyLang!14893) (regOne!30299 r!7292))))))

(assert (=> b!5273315 (=> (not res!2236909) (not e!3279441))))

(declare-fun b!5273316 () Bool)

(assert (=> b!5273316 (= e!3279443 (matchRSpec!1996 (regTwo!30299 (regOne!30299 r!7292)) s!2326))))

(declare-fun c!913568 () Bool)

(declare-fun bm!374950 () Bool)

(assert (=> bm!374950 (= call!374956 (Exists!2074 (ite c!913568 lambda!266090 lambda!266091)))))

(declare-fun bm!374951 () Bool)

(assert (=> bm!374951 (= call!374955 (isEmpty!32806 s!2326))))

(declare-fun b!5273317 () Bool)

(assert (=> b!5273317 (= e!3279445 e!3279444)))

(assert (=> b!5273317 (= c!913568 ((_ is Star!14893) (regOne!30299 r!7292)))))

(declare-fun b!5273318 () Bool)

(declare-fun c!913571 () Bool)

(assert (=> b!5273318 (= c!913571 ((_ is Union!14893) (regOne!30299 r!7292)))))

(assert (=> b!5273318 (= e!3279446 e!3279445)))

(assert (=> b!5273319 (= e!3279442 call!374956)))

(assert (= (and d!1697040 c!913569) b!5273313))

(assert (= (and d!1697040 (not c!913569)) b!5273315))

(assert (= (and b!5273315 res!2236909) b!5273309))

(assert (= (and b!5273309 c!913570) b!5273311))

(assert (= (and b!5273309 (not c!913570)) b!5273318))

(assert (= (and b!5273318 c!913571) b!5273310))

(assert (= (and b!5273318 (not c!913571)) b!5273317))

(assert (= (and b!5273310 (not res!2236910)) b!5273316))

(assert (= (and b!5273317 c!913568) b!5273314))

(assert (= (and b!5273317 (not c!913568)) b!5273312))

(assert (= (and b!5273314 (not res!2236911)) b!5273319))

(assert (= (or b!5273319 b!5273312) bm!374950))

(assert (= (or b!5273313 b!5273314) bm!374951))

(declare-fun m!6312134 () Bool)

(assert (=> b!5273310 m!6312134))

(declare-fun m!6312136 () Bool)

(assert (=> b!5273316 m!6312136))

(declare-fun m!6312138 () Bool)

(assert (=> bm!374950 m!6312138))

(assert (=> bm!374951 m!6311056))

(assert (=> b!5272091 d!1697040))

(declare-fun d!1697042 () Bool)

(assert (=> d!1697042 (= (isEmpty!32804 (unfocusZipperList!335 zl!343)) ((_ is Nil!60855) (unfocusZipperList!335 zl!343)))))

(assert (=> b!5272166 d!1697042))

(declare-fun b!5273320 () Bool)

(declare-fun e!3279450 () (InoxSet Context!8554))

(declare-fun call!374959 () (InoxSet Context!8554))

(assert (=> b!5273320 (= e!3279450 call!374959)))

(declare-fun b!5273321 () Bool)

(declare-fun e!3279453 () (InoxSet Context!8554))

(declare-fun e!3279448 () (InoxSet Context!8554))

(assert (=> b!5273321 (= e!3279453 e!3279448)))

(declare-fun c!913574 () Bool)

(assert (=> b!5273321 (= c!913574 ((_ is Union!14893) (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292))))))))))

(declare-fun call!374961 () (InoxSet Context!8554))

(declare-fun bm!374952 () Bool)

(declare-fun call!374957 () List!60979)

(assert (=> bm!374952 (= call!374961 (derivationStepZipperDown!341 (ite c!913574 (regOne!30299 (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292))))))) (regOne!30298 (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292)))))))) (ite c!913574 (ite (or c!913203 c!913202) lt!2156808 (Context!8555 call!374696)) (Context!8555 call!374957)) (h!67302 s!2326)))))

(declare-fun bm!374953 () Bool)

(declare-fun call!374960 () (InoxSet Context!8554))

(assert (=> bm!374953 (= call!374959 call!374960)))

(declare-fun b!5273322 () Bool)

(declare-fun e!3279449 () (InoxSet Context!8554))

(assert (=> b!5273322 (= e!3279449 e!3279450)))

(declare-fun c!913576 () Bool)

(assert (=> b!5273322 (= c!913576 ((_ is Concat!23738) (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292))))))))))

(declare-fun bm!374954 () Bool)

(declare-fun call!374958 () (InoxSet Context!8554))

(assert (=> bm!374954 (= call!374960 call!374958)))

(declare-fun b!5273323 () Bool)

(declare-fun e!3279452 () Bool)

(assert (=> b!5273323 (= e!3279452 (nullable!5062 (regOne!30298 (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292)))))))))))

(declare-fun b!5273324 () Bool)

(declare-fun e!3279451 () (InoxSet Context!8554))

(assert (=> b!5273324 (= e!3279451 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273326 () Bool)

(declare-fun c!913573 () Bool)

(assert (=> b!5273326 (= c!913573 e!3279452)))

(declare-fun res!2236912 () Bool)

(assert (=> b!5273326 (=> (not res!2236912) (not e!3279452))))

(assert (=> b!5273326 (= res!2236912 ((_ is Concat!23738) (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292))))))))))

(assert (=> b!5273326 (= e!3279448 e!3279449)))

(declare-fun call!374962 () List!60979)

(declare-fun bm!374955 () Bool)

(assert (=> bm!374955 (= call!374958 (derivationStepZipperDown!341 (ite c!913574 (regTwo!30299 (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292))))))) (ite c!913573 (regTwo!30298 (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292))))))) (ite c!913576 (regOne!30298 (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292))))))) (reg!15222 (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292)))))))))) (ite (or c!913574 c!913573) (ite (or c!913203 c!913202) lt!2156808 (Context!8555 call!374696)) (Context!8555 call!374962)) (h!67302 s!2326)))))

(declare-fun b!5273327 () Bool)

(assert (=> b!5273327 (= e!3279451 call!374959)))

(declare-fun bm!374956 () Bool)

(assert (=> bm!374956 (= call!374962 call!374957)))

(declare-fun c!913575 () Bool)

(declare-fun b!5273328 () Bool)

(assert (=> b!5273328 (= c!913575 ((_ is Star!14893) (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292))))))))))

(assert (=> b!5273328 (= e!3279450 e!3279451)))

(declare-fun b!5273329 () Bool)

(assert (=> b!5273329 (= e!3279448 ((_ map or) call!374961 call!374958))))

(declare-fun bm!374957 () Bool)

(assert (=> bm!374957 (= call!374957 ($colon$colon!1342 (exprs!4777 (ite (or c!913203 c!913202) lt!2156808 (Context!8555 call!374696))) (ite (or c!913573 c!913576) (regTwo!30298 (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292))))))) (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292)))))))))))

(declare-fun b!5273330 () Bool)

(assert (=> b!5273330 (= e!3279453 (store ((as const (Array Context!8554 Bool)) false) (ite (or c!913203 c!913202) lt!2156808 (Context!8555 call!374696)) true))))

(declare-fun b!5273325 () Bool)

(assert (=> b!5273325 (= e!3279449 ((_ map or) call!374961 call!374960))))

(declare-fun d!1697044 () Bool)

(declare-fun c!913572 () Bool)

(assert (=> d!1697044 (= c!913572 (and ((_ is ElementMatch!14893) (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292))))))) (= (c!913081 (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292))))))) (h!67302 s!2326))))))

(assert (=> d!1697044 (= (derivationStepZipperDown!341 (ite c!913203 (regTwo!30299 (regOne!30298 (regOne!30298 r!7292))) (ite c!913202 (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (ite c!913205 (regOne!30298 (regOne!30298 (regOne!30298 r!7292))) (reg!15222 (regOne!30298 (regOne!30298 r!7292)))))) (ite (or c!913203 c!913202) lt!2156808 (Context!8555 call!374696)) (h!67302 s!2326)) e!3279453)))

(assert (= (and d!1697044 c!913572) b!5273330))

(assert (= (and d!1697044 (not c!913572)) b!5273321))

(assert (= (and b!5273321 c!913574) b!5273329))

(assert (= (and b!5273321 (not c!913574)) b!5273326))

(assert (= (and b!5273326 res!2236912) b!5273323))

(assert (= (and b!5273326 c!913573) b!5273325))

(assert (= (and b!5273326 (not c!913573)) b!5273322))

(assert (= (and b!5273322 c!913576) b!5273320))

(assert (= (and b!5273322 (not c!913576)) b!5273328))

(assert (= (and b!5273328 c!913575) b!5273327))

(assert (= (and b!5273328 (not c!913575)) b!5273324))

(assert (= (or b!5273320 b!5273327) bm!374956))

(assert (= (or b!5273320 b!5273327) bm!374953))

(assert (= (or b!5273325 bm!374956) bm!374957))

(assert (= (or b!5273325 bm!374953) bm!374954))

(assert (= (or b!5273329 bm!374954) bm!374955))

(assert (= (or b!5273329 b!5273325) bm!374952))

(declare-fun m!6312140 () Bool)

(assert (=> b!5273330 m!6312140))

(declare-fun m!6312142 () Bool)

(assert (=> b!5273323 m!6312142))

(declare-fun m!6312144 () Bool)

(assert (=> bm!374952 m!6312144))

(declare-fun m!6312146 () Bool)

(assert (=> bm!374957 m!6312146))

(declare-fun m!6312148 () Bool)

(assert (=> bm!374955 m!6312148))

(assert (=> bm!374689 d!1697044))

(assert (=> bs!1221508 d!1696528))

(assert (=> bm!374731 d!1696906))

(declare-fun d!1697046 () Bool)

(declare-fun c!913577 () Bool)

(assert (=> d!1697046 (= c!913577 (isEmpty!32806 (tail!10399 (t!374173 s!2326))))))

(declare-fun e!3279454 () Bool)

(assert (=> d!1697046 (= (matchZipper!1137 (derivationStepZipper!1136 lt!2156813 (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))) e!3279454)))

(declare-fun b!5273331 () Bool)

(assert (=> b!5273331 (= e!3279454 (nullableZipper!1292 (derivationStepZipper!1136 lt!2156813 (head!11302 (t!374173 s!2326)))))))

(declare-fun b!5273332 () Bool)

(assert (=> b!5273332 (= e!3279454 (matchZipper!1137 (derivationStepZipper!1136 (derivationStepZipper!1136 lt!2156813 (head!11302 (t!374173 s!2326))) (head!11302 (tail!10399 (t!374173 s!2326)))) (tail!10399 (tail!10399 (t!374173 s!2326)))))))

(assert (= (and d!1697046 c!913577) b!5273331))

(assert (= (and d!1697046 (not c!913577)) b!5273332))

(assert (=> d!1697046 m!6310798))

(assert (=> d!1697046 m!6311482))

(assert (=> b!5273331 m!6310984))

(declare-fun m!6312150 () Bool)

(assert (=> b!5273331 m!6312150))

(assert (=> b!5273332 m!6310798))

(assert (=> b!5273332 m!6311486))

(assert (=> b!5273332 m!6310984))

(assert (=> b!5273332 m!6311486))

(declare-fun m!6312152 () Bool)

(assert (=> b!5273332 m!6312152))

(assert (=> b!5273332 m!6310798))

(assert (=> b!5273332 m!6311490))

(assert (=> b!5273332 m!6312152))

(assert (=> b!5273332 m!6311490))

(declare-fun m!6312154 () Bool)

(assert (=> b!5273332 m!6312154))

(assert (=> b!5272024 d!1697046))

(declare-fun bs!1221787 () Bool)

(declare-fun d!1697048 () Bool)

(assert (= bs!1221787 (and d!1697048 d!1696506)))

(declare-fun lambda!266092 () Int)

(assert (=> bs!1221787 (= (= (head!11302 (t!374173 s!2326)) (h!67302 s!2326)) (= lambda!266092 lambda!266008))))

(declare-fun bs!1221788 () Bool)

(assert (= bs!1221788 (and d!1697048 d!1696758)))

(assert (=> bs!1221788 (= lambda!266092 lambda!266053)))

(declare-fun bs!1221789 () Bool)

(assert (= bs!1221789 (and d!1697048 d!1696930)))

(assert (=> bs!1221789 (= lambda!266092 lambda!266070)))

(declare-fun bs!1221790 () Bool)

(assert (= bs!1221790 (and d!1697048 d!1696966)))

(assert (=> bs!1221790 (= lambda!266092 lambda!266077)))

(declare-fun bs!1221791 () Bool)

(assert (= bs!1221791 (and d!1697048 b!5271503)))

(assert (=> bs!1221791 (= (= (head!11302 (t!374173 s!2326)) (h!67302 s!2326)) (= lambda!266092 lambda!265971))))

(assert (=> d!1697048 true))

(assert (=> d!1697048 (= (derivationStepZipper!1136 lt!2156813 (head!11302 (t!374173 s!2326))) (flatMap!620 lt!2156813 lambda!266092))))

(declare-fun bs!1221792 () Bool)

(assert (= bs!1221792 d!1697048))

(declare-fun m!6312156 () Bool)

(assert (=> bs!1221792 m!6312156))

(assert (=> b!5272024 d!1697048))

(assert (=> b!5272024 d!1696764))

(assert (=> b!5272024 d!1696770))

(declare-fun d!1697050 () Bool)

(assert (=> d!1697050 (= (nullable!5062 (reg!15222 r!7292)) (nullableFct!1444 (reg!15222 r!7292)))))

(declare-fun bs!1221793 () Bool)

(assert (= bs!1221793 d!1697050))

(declare-fun m!6312158 () Bool)

(assert (=> bs!1221793 m!6312158))

(assert (=> b!5272257 d!1697050))

(declare-fun d!1697052 () Bool)

(assert (=> d!1697052 (= (head!11303 (exprs!4777 (h!67304 zl!343))) (h!67303 (exprs!4777 (h!67304 zl!343))))))

(assert (=> b!5272207 d!1697052))

(assert (=> b!5272140 d!1696958))

(assert (=> b!5272140 d!1696960))

(assert (=> d!1696534 d!1696796))

(assert (=> d!1696572 d!1696570))

(assert (=> d!1696572 d!1696568))

(declare-fun d!1697054 () Bool)

(assert (=> d!1697054 (= (matchR!7078 r!7292 s!2326) (matchRSpec!1996 r!7292 s!2326))))

(assert (=> d!1697054 true))

(declare-fun _$88!3568 () Unit!153090)

(assert (=> d!1697054 (= (choose!39341 r!7292 s!2326) _$88!3568)))

(declare-fun bs!1221794 () Bool)

(assert (= bs!1221794 d!1697054))

(assert (=> bs!1221794 m!6310626))

(assert (=> bs!1221794 m!6310624))

(assert (=> d!1696572 d!1697054))

(assert (=> d!1696572 d!1696596))

(declare-fun b!5273333 () Bool)

(declare-fun e!3279457 () (InoxSet Context!8554))

(assert (=> b!5273333 (= e!3279457 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273334 () Bool)

(declare-fun call!374963 () (InoxSet Context!8554))

(assert (=> b!5273334 (= e!3279457 call!374963)))

(declare-fun bm!374958 () Bool)

(assert (=> bm!374958 (= call!374963 (derivationStepZipperDown!341 (h!67303 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156820))))) (Context!8555 (t!374174 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156820)))))) (h!67302 s!2326)))))

(declare-fun e!3279456 () (InoxSet Context!8554))

(declare-fun b!5273335 () Bool)

(assert (=> b!5273335 (= e!3279456 ((_ map or) call!374963 (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156820)))))) (h!67302 s!2326))))))

(declare-fun b!5273336 () Bool)

(declare-fun e!3279455 () Bool)

(assert (=> b!5273336 (= e!3279455 (nullable!5062 (h!67303 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156820)))))))))

(declare-fun d!1697056 () Bool)

(declare-fun c!913579 () Bool)

(assert (=> d!1697056 (= c!913579 e!3279455)))

(declare-fun res!2236913 () Bool)

(assert (=> d!1697056 (=> (not res!2236913) (not e!3279455))))

(assert (=> d!1697056 (= res!2236913 ((_ is Cons!60855) (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156820))))))))

(assert (=> d!1697056 (= (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 lt!2156820))) (h!67302 s!2326)) e!3279456)))

(declare-fun b!5273337 () Bool)

(assert (=> b!5273337 (= e!3279456 e!3279457)))

(declare-fun c!913578 () Bool)

(assert (=> b!5273337 (= c!913578 ((_ is Cons!60855) (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156820))))))))

(assert (= (and d!1697056 res!2236913) b!5273336))

(assert (= (and d!1697056 c!913579) b!5273335))

(assert (= (and d!1697056 (not c!913579)) b!5273337))

(assert (= (and b!5273337 c!913578) b!5273334))

(assert (= (and b!5273337 (not c!913578)) b!5273333))

(assert (= (or b!5273335 b!5273334) bm!374958))

(declare-fun m!6312160 () Bool)

(assert (=> bm!374958 m!6312160))

(declare-fun m!6312162 () Bool)

(assert (=> b!5273335 m!6312162))

(declare-fun m!6312164 () Bool)

(assert (=> b!5273336 m!6312164))

(assert (=> b!5272017 d!1697056))

(declare-fun bs!1221795 () Bool)

(declare-fun d!1697058 () Bool)

(assert (= bs!1221795 (and d!1697058 d!1696834)))

(declare-fun lambda!266093 () Int)

(assert (=> bs!1221795 (= lambda!266093 lambda!266062)))

(declare-fun bs!1221796 () Bool)

(assert (= bs!1221796 (and d!1697058 d!1696994)))

(assert (=> bs!1221796 (= lambda!266093 lambda!266084)))

(declare-fun bs!1221797 () Bool)

(assert (= bs!1221797 (and d!1697058 d!1697012)))

(assert (=> bs!1221797 (= lambda!266093 lambda!266088)))

(assert (=> d!1697058 (= (nullableZipper!1292 lt!2156821) (exists!1995 lt!2156821 lambda!266093))))

(declare-fun bs!1221798 () Bool)

(assert (= bs!1221798 d!1697058))

(declare-fun m!6312166 () Bool)

(assert (=> bs!1221798 m!6312166))

(assert (=> b!5271748 d!1697058))

(declare-fun b!5273338 () Bool)

(declare-fun e!3279460 () (InoxSet Context!8554))

(assert (=> b!5273338 (= e!3279460 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273339 () Bool)

(declare-fun call!374964 () (InoxSet Context!8554))

(assert (=> b!5273339 (= e!3279460 call!374964)))

(declare-fun bm!374959 () Bool)

(assert (=> bm!374959 (= call!374964 (derivationStepZipperDown!341 (h!67303 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156808))))) (Context!8555 (t!374174 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156808)))))) (h!67302 s!2326)))))

(declare-fun e!3279459 () (InoxSet Context!8554))

(declare-fun b!5273340 () Bool)

(assert (=> b!5273340 (= e!3279459 ((_ map or) call!374964 (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156808)))))) (h!67302 s!2326))))))

(declare-fun b!5273341 () Bool)

(declare-fun e!3279458 () Bool)

(assert (=> b!5273341 (= e!3279458 (nullable!5062 (h!67303 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156808)))))))))

(declare-fun d!1697060 () Bool)

(declare-fun c!913581 () Bool)

(assert (=> d!1697060 (= c!913581 e!3279458)))

(declare-fun res!2236914 () Bool)

(assert (=> d!1697060 (=> (not res!2236914) (not e!3279458))))

(assert (=> d!1697060 (= res!2236914 ((_ is Cons!60855) (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156808))))))))

(assert (=> d!1697060 (= (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 lt!2156808))) (h!67302 s!2326)) e!3279459)))

(declare-fun b!5273342 () Bool)

(assert (=> b!5273342 (= e!3279459 e!3279460)))

(declare-fun c!913580 () Bool)

(assert (=> b!5273342 (= c!913580 ((_ is Cons!60855) (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156808))))))))

(assert (= (and d!1697060 res!2236914) b!5273341))

(assert (= (and d!1697060 c!913581) b!5273340))

(assert (= (and d!1697060 (not c!913581)) b!5273342))

(assert (= (and b!5273342 c!913580) b!5273339))

(assert (= (and b!5273342 (not c!913580)) b!5273338))

(assert (= (or b!5273340 b!5273339) bm!374959))

(declare-fun m!6312168 () Bool)

(assert (=> bm!374959 m!6312168))

(declare-fun m!6312170 () Bool)

(assert (=> b!5273340 m!6312170))

(declare-fun m!6312172 () Bool)

(assert (=> b!5273341 m!6312172))

(assert (=> b!5272012 d!1697060))

(declare-fun d!1697062 () Bool)

(declare-fun c!913582 () Bool)

(assert (=> d!1697062 (= c!913582 (isEmpty!32806 (tail!10399 (t!374173 s!2326))))))

(declare-fun e!3279461 () Bool)

(assert (=> d!1697062 (= (matchZipper!1137 (derivationStepZipper!1136 ((_ map or) lt!2156813 lt!2156802) (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))) e!3279461)))

(declare-fun b!5273343 () Bool)

(assert (=> b!5273343 (= e!3279461 (nullableZipper!1292 (derivationStepZipper!1136 ((_ map or) lt!2156813 lt!2156802) (head!11302 (t!374173 s!2326)))))))

(declare-fun b!5273344 () Bool)

(assert (=> b!5273344 (= e!3279461 (matchZipper!1137 (derivationStepZipper!1136 (derivationStepZipper!1136 ((_ map or) lt!2156813 lt!2156802) (head!11302 (t!374173 s!2326))) (head!11302 (tail!10399 (t!374173 s!2326)))) (tail!10399 (tail!10399 (t!374173 s!2326)))))))

(assert (= (and d!1697062 c!913582) b!5273343))

(assert (= (and d!1697062 (not c!913582)) b!5273344))

(assert (=> d!1697062 m!6310798))

(assert (=> d!1697062 m!6311482))

(assert (=> b!5273343 m!6311172))

(declare-fun m!6312174 () Bool)

(assert (=> b!5273343 m!6312174))

(assert (=> b!5273344 m!6310798))

(assert (=> b!5273344 m!6311486))

(assert (=> b!5273344 m!6311172))

(assert (=> b!5273344 m!6311486))

(declare-fun m!6312176 () Bool)

(assert (=> b!5273344 m!6312176))

(assert (=> b!5273344 m!6310798))

(assert (=> b!5273344 m!6311490))

(assert (=> b!5273344 m!6312176))

(assert (=> b!5273344 m!6311490))

(declare-fun m!6312178 () Bool)

(assert (=> b!5273344 m!6312178))

(assert (=> b!5272261 d!1697062))

(declare-fun bs!1221799 () Bool)

(declare-fun d!1697064 () Bool)

(assert (= bs!1221799 (and d!1697064 d!1696506)))

(declare-fun lambda!266094 () Int)

(assert (=> bs!1221799 (= (= (head!11302 (t!374173 s!2326)) (h!67302 s!2326)) (= lambda!266094 lambda!266008))))

(declare-fun bs!1221800 () Bool)

(assert (= bs!1221800 (and d!1697064 d!1696758)))

(assert (=> bs!1221800 (= lambda!266094 lambda!266053)))

(declare-fun bs!1221801 () Bool)

(assert (= bs!1221801 (and d!1697064 d!1696930)))

(assert (=> bs!1221801 (= lambda!266094 lambda!266070)))

(declare-fun bs!1221802 () Bool)

(assert (= bs!1221802 (and d!1697064 d!1696966)))

(assert (=> bs!1221802 (= lambda!266094 lambda!266077)))

(declare-fun bs!1221803 () Bool)

(assert (= bs!1221803 (and d!1697064 b!5271503)))

(assert (=> bs!1221803 (= (= (head!11302 (t!374173 s!2326)) (h!67302 s!2326)) (= lambda!266094 lambda!265971))))

(declare-fun bs!1221804 () Bool)

(assert (= bs!1221804 (and d!1697064 d!1697048)))

(assert (=> bs!1221804 (= lambda!266094 lambda!266092)))

(assert (=> d!1697064 true))

(assert (=> d!1697064 (= (derivationStepZipper!1136 ((_ map or) lt!2156813 lt!2156802) (head!11302 (t!374173 s!2326))) (flatMap!620 ((_ map or) lt!2156813 lt!2156802) lambda!266094))))

(declare-fun bs!1221805 () Bool)

(assert (= bs!1221805 d!1697064))

(declare-fun m!6312180 () Bool)

(assert (=> bs!1221805 m!6312180))

(assert (=> b!5272261 d!1697064))

(assert (=> b!5272261 d!1696764))

(assert (=> b!5272261 d!1696770))

(declare-fun b!5273345 () Bool)

(declare-fun e!3279462 () Bool)

(declare-fun e!3279464 () Bool)

(assert (=> b!5273345 (= e!3279462 e!3279464)))

(declare-fun res!2236919 () Bool)

(assert (=> b!5273345 (=> (not res!2236919) (not e!3279464))))

(declare-fun call!374967 () Bool)

(assert (=> b!5273345 (= res!2236919 call!374967)))

(declare-fun b!5273346 () Bool)

(declare-fun e!3279467 () Bool)

(declare-fun e!3279466 () Bool)

(assert (=> b!5273346 (= e!3279467 e!3279466)))

(declare-fun c!913584 () Bool)

(assert (=> b!5273346 (= c!913584 ((_ is Star!14893) lt!2156890))))

(declare-fun bm!374960 () Bool)

(declare-fun call!374966 () Bool)

(declare-fun call!374965 () Bool)

(assert (=> bm!374960 (= call!374966 call!374965)))

(declare-fun bm!374961 () Bool)

(declare-fun c!913583 () Bool)

(assert (=> bm!374961 (= call!374967 (validRegex!6629 (ite c!913583 (regOne!30299 lt!2156890) (regOne!30298 lt!2156890))))))

(declare-fun b!5273347 () Bool)

(declare-fun res!2236917 () Bool)

(declare-fun e!3279468 () Bool)

(assert (=> b!5273347 (=> (not res!2236917) (not e!3279468))))

(assert (=> b!5273347 (= res!2236917 call!374967)))

(declare-fun e!3279463 () Bool)

(assert (=> b!5273347 (= e!3279463 e!3279468)))

(declare-fun d!1697066 () Bool)

(declare-fun res!2236915 () Bool)

(assert (=> d!1697066 (=> res!2236915 e!3279467)))

(assert (=> d!1697066 (= res!2236915 ((_ is ElementMatch!14893) lt!2156890))))

(assert (=> d!1697066 (= (validRegex!6629 lt!2156890) e!3279467)))

(declare-fun bm!374962 () Bool)

(assert (=> bm!374962 (= call!374965 (validRegex!6629 (ite c!913584 (reg!15222 lt!2156890) (ite c!913583 (regTwo!30299 lt!2156890) (regTwo!30298 lt!2156890)))))))

(declare-fun b!5273348 () Bool)

(declare-fun res!2236916 () Bool)

(assert (=> b!5273348 (=> res!2236916 e!3279462)))

(assert (=> b!5273348 (= res!2236916 (not ((_ is Concat!23738) lt!2156890)))))

(assert (=> b!5273348 (= e!3279463 e!3279462)))

(declare-fun b!5273349 () Bool)

(declare-fun e!3279465 () Bool)

(assert (=> b!5273349 (= e!3279465 call!374965)))

(declare-fun b!5273350 () Bool)

(assert (=> b!5273350 (= e!3279468 call!374966)))

(declare-fun b!5273351 () Bool)

(assert (=> b!5273351 (= e!3279466 e!3279463)))

(assert (=> b!5273351 (= c!913583 ((_ is Union!14893) lt!2156890))))

(declare-fun b!5273352 () Bool)

(assert (=> b!5273352 (= e!3279466 e!3279465)))

(declare-fun res!2236918 () Bool)

(assert (=> b!5273352 (= res!2236918 (not (nullable!5062 (reg!15222 lt!2156890))))))

(assert (=> b!5273352 (=> (not res!2236918) (not e!3279465))))

(declare-fun b!5273353 () Bool)

(assert (=> b!5273353 (= e!3279464 call!374966)))

(assert (= (and d!1697066 (not res!2236915)) b!5273346))

(assert (= (and b!5273346 c!913584) b!5273352))

(assert (= (and b!5273346 (not c!913584)) b!5273351))

(assert (= (and b!5273352 res!2236918) b!5273349))

(assert (= (and b!5273351 c!913583) b!5273347))

(assert (= (and b!5273351 (not c!913583)) b!5273348))

(assert (= (and b!5273347 res!2236917) b!5273350))

(assert (= (and b!5273348 (not res!2236916)) b!5273345))

(assert (= (and b!5273345 res!2236919) b!5273353))

(assert (= (or b!5273350 b!5273353) bm!374960))

(assert (= (or b!5273347 b!5273345) bm!374961))

(assert (= (or b!5273349 bm!374960) bm!374962))

(declare-fun m!6312182 () Bool)

(assert (=> bm!374961 m!6312182))

(declare-fun m!6312184 () Bool)

(assert (=> bm!374962 m!6312184))

(declare-fun m!6312186 () Bool)

(assert (=> b!5273352 m!6312186))

(assert (=> d!1696578 d!1697066))

(declare-fun d!1697068 () Bool)

(declare-fun res!2236920 () Bool)

(declare-fun e!3279469 () Bool)

(assert (=> d!1697068 (=> res!2236920 e!3279469)))

(assert (=> d!1697068 (= res!2236920 ((_ is Nil!60855) (unfocusZipperList!335 zl!343)))))

(assert (=> d!1697068 (= (forall!14301 (unfocusZipperList!335 zl!343) lambda!266018) e!3279469)))

(declare-fun b!5273354 () Bool)

(declare-fun e!3279470 () Bool)

(assert (=> b!5273354 (= e!3279469 e!3279470)))

(declare-fun res!2236921 () Bool)

(assert (=> b!5273354 (=> (not res!2236921) (not e!3279470))))

(assert (=> b!5273354 (= res!2236921 (dynLambda!24048 lambda!266018 (h!67303 (unfocusZipperList!335 zl!343))))))

(declare-fun b!5273355 () Bool)

(assert (=> b!5273355 (= e!3279470 (forall!14301 (t!374174 (unfocusZipperList!335 zl!343)) lambda!266018))))

(assert (= (and d!1697068 (not res!2236920)) b!5273354))

(assert (= (and b!5273354 res!2236921) b!5273355))

(declare-fun b_lambda!203399 () Bool)

(assert (=> (not b_lambda!203399) (not b!5273354)))

(declare-fun m!6312188 () Bool)

(assert (=> b!5273354 m!6312188))

(declare-fun m!6312190 () Bool)

(assert (=> b!5273355 m!6312190))

(assert (=> d!1696578 d!1697068))

(assert (=> d!1696602 d!1696796))

(declare-fun bs!1221806 () Bool)

(declare-fun d!1697070 () Bool)

(assert (= bs!1221806 (and d!1697070 d!1696834)))

(declare-fun lambda!266095 () Int)

(assert (=> bs!1221806 (= lambda!266095 lambda!266062)))

(declare-fun bs!1221807 () Bool)

(assert (= bs!1221807 (and d!1697070 d!1696994)))

(assert (=> bs!1221807 (= lambda!266095 lambda!266084)))

(declare-fun bs!1221808 () Bool)

(assert (= bs!1221808 (and d!1697070 d!1697012)))

(assert (=> bs!1221808 (= lambda!266095 lambda!266088)))

(declare-fun bs!1221809 () Bool)

(assert (= bs!1221809 (and d!1697070 d!1697058)))

(assert (=> bs!1221809 (= lambda!266095 lambda!266093)))

(assert (=> d!1697070 (= (nullableZipper!1292 lt!2156801) (exists!1995 lt!2156801 lambda!266095))))

(declare-fun bs!1221810 () Bool)

(assert (= bs!1221810 d!1697070))

(declare-fun m!6312192 () Bool)

(assert (=> bs!1221810 m!6312192))

(assert (=> b!5272027 d!1697070))

(declare-fun d!1697072 () Bool)

(assert (=> d!1697072 (= (isEmpty!32804 (tail!10400 (exprs!4777 (h!67304 zl!343)))) ((_ is Nil!60855) (tail!10400 (exprs!4777 (h!67304 zl!343)))))))

(assert (=> b!5272209 d!1697072))

(declare-fun d!1697074 () Bool)

(assert (=> d!1697074 (= (tail!10400 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343))))))

(assert (=> b!5272209 d!1697074))

(assert (=> b!5272142 d!1696982))

(declare-fun d!1697076 () Bool)

(assert (=> d!1697076 (= ($colon$colon!1342 (exprs!4777 lt!2156804) (ite (or c!913238 c!913241) (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (h!67303 (exprs!4777 (h!67304 zl!343))))) (Cons!60855 (ite (or c!913238 c!913241) (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (h!67303 (exprs!4777 (h!67304 zl!343)))) (exprs!4777 lt!2156804)))))

(assert (=> bm!374723 d!1697076))

(declare-fun b!5273356 () Bool)

(declare-fun e!3279473 () (InoxSet Context!8554))

(declare-fun call!374970 () (InoxSet Context!8554))

(assert (=> b!5273356 (= e!3279473 call!374970)))

(declare-fun b!5273357 () Bool)

(declare-fun e!3279476 () (InoxSet Context!8554))

(declare-fun e!3279471 () (InoxSet Context!8554))

(assert (=> b!5273357 (= e!3279476 e!3279471)))

(declare-fun c!913587 () Bool)

(assert (=> b!5273357 (= c!913587 ((_ is Union!14893) (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun call!374972 () (InoxSet Context!8554))

(declare-fun call!374968 () List!60979)

(declare-fun bm!374963 () Bool)

(assert (=> bm!374963 (= call!374972 (derivationStepZipperDown!341 (ite c!913587 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343))))) (ite c!913587 (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343)))) (Context!8555 call!374968)) (h!67302 s!2326)))))

(declare-fun bm!374964 () Bool)

(declare-fun call!374971 () (InoxSet Context!8554))

(assert (=> bm!374964 (= call!374970 call!374971)))

(declare-fun b!5273358 () Bool)

(declare-fun e!3279472 () (InoxSet Context!8554))

(assert (=> b!5273358 (= e!3279472 e!3279473)))

(declare-fun c!913589 () Bool)

(assert (=> b!5273358 (= c!913589 ((_ is Concat!23738) (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun bm!374965 () Bool)

(declare-fun call!374969 () (InoxSet Context!8554))

(assert (=> bm!374965 (= call!374971 call!374969)))

(declare-fun b!5273359 () Bool)

(declare-fun e!3279475 () Bool)

(assert (=> b!5273359 (= e!3279475 (nullable!5062 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343))))))))

(declare-fun b!5273360 () Bool)

(declare-fun e!3279474 () (InoxSet Context!8554))

(assert (=> b!5273360 (= e!3279474 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273362 () Bool)

(declare-fun c!913586 () Bool)

(assert (=> b!5273362 (= c!913586 e!3279475)))

(declare-fun res!2236922 () Bool)

(assert (=> b!5273362 (=> (not res!2236922) (not e!3279475))))

(assert (=> b!5273362 (= res!2236922 ((_ is Concat!23738) (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(assert (=> b!5273362 (= e!3279471 e!3279472)))

(declare-fun call!374973 () List!60979)

(declare-fun bm!374966 () Bool)

(assert (=> bm!374966 (= call!374969 (derivationStepZipperDown!341 (ite c!913587 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913586 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913589 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343))))))) (ite (or c!913587 c!913586) (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343)))) (Context!8555 call!374973)) (h!67302 s!2326)))))

(declare-fun b!5273363 () Bool)

(assert (=> b!5273363 (= e!3279474 call!374970)))

(declare-fun bm!374967 () Bool)

(assert (=> bm!374967 (= call!374973 call!374968)))

(declare-fun b!5273364 () Bool)

(declare-fun c!913588 () Bool)

(assert (=> b!5273364 (= c!913588 ((_ is Star!14893) (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(assert (=> b!5273364 (= e!3279473 e!3279474)))

(declare-fun b!5273365 () Bool)

(assert (=> b!5273365 (= e!3279471 ((_ map or) call!374972 call!374969))))

(declare-fun bm!374968 () Bool)

(assert (=> bm!374968 (= call!374968 ($colon$colon!1342 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343))))) (ite (or c!913586 c!913589) (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (h!67303 (exprs!4777 (h!67304 zl!343))))))))

(declare-fun b!5273366 () Bool)

(assert (=> b!5273366 (= e!3279476 (store ((as const (Array Context!8554 Bool)) false) (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343)))) true))))

(declare-fun b!5273361 () Bool)

(assert (=> b!5273361 (= e!3279472 ((_ map or) call!374972 call!374971))))

(declare-fun d!1697078 () Bool)

(declare-fun c!913585 () Bool)

(assert (=> d!1697078 (= c!913585 (and ((_ is ElementMatch!14893) (h!67303 (exprs!4777 (h!67304 zl!343)))) (= (c!913081 (h!67303 (exprs!4777 (h!67304 zl!343)))) (h!67302 s!2326))))))

(assert (=> d!1697078 (= (derivationStepZipperDown!341 (h!67303 (exprs!4777 (h!67304 zl!343))) (Context!8555 (t!374174 (exprs!4777 (h!67304 zl!343)))) (h!67302 s!2326)) e!3279476)))

(assert (= (and d!1697078 c!913585) b!5273366))

(assert (= (and d!1697078 (not c!913585)) b!5273357))

(assert (= (and b!5273357 c!913587) b!5273365))

(assert (= (and b!5273357 (not c!913587)) b!5273362))

(assert (= (and b!5273362 res!2236922) b!5273359))

(assert (= (and b!5273362 c!913586) b!5273361))

(assert (= (and b!5273362 (not c!913586)) b!5273358))

(assert (= (and b!5273358 c!913589) b!5273356))

(assert (= (and b!5273358 (not c!913589)) b!5273364))

(assert (= (and b!5273364 c!913588) b!5273363))

(assert (= (and b!5273364 (not c!913588)) b!5273360))

(assert (= (or b!5273356 b!5273363) bm!374967))

(assert (= (or b!5273356 b!5273363) bm!374964))

(assert (= (or b!5273361 bm!374967) bm!374968))

(assert (= (or b!5273361 bm!374964) bm!374965))

(assert (= (or b!5273365 bm!374965) bm!374966))

(assert (= (or b!5273365 b!5273361) bm!374963))

(declare-fun m!6312194 () Bool)

(assert (=> b!5273366 m!6312194))

(assert (=> b!5273359 m!6311030))

(declare-fun m!6312196 () Bool)

(assert (=> bm!374963 m!6312196))

(declare-fun m!6312198 () Bool)

(assert (=> bm!374968 m!6312198))

(declare-fun m!6312200 () Bool)

(assert (=> bm!374966 m!6312200))

(assert (=> bm!374724 d!1697078))

(declare-fun d!1697080 () Bool)

(assert (=> d!1697080 (= (nullable!5062 (reg!15222 (regTwo!30298 (regOne!30298 r!7292)))) (nullableFct!1444 (reg!15222 (regTwo!30298 (regOne!30298 r!7292)))))))

(declare-fun bs!1221811 () Bool)

(assert (= bs!1221811 d!1697080))

(declare-fun m!6312202 () Bool)

(assert (=> bs!1221811 m!6312202))

(assert (=> b!5271920 d!1697080))

(assert (=> b!5272130 d!1696982))

(assert (=> bs!1221507 d!1696526))

(declare-fun b!5273367 () Bool)

(declare-fun e!3279479 () (InoxSet Context!8554))

(assert (=> b!5273367 (= e!3279479 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273368 () Bool)

(declare-fun call!374974 () (InoxSet Context!8554))

(assert (=> b!5273368 (= e!3279479 call!374974)))

(declare-fun bm!374969 () Bool)

(assert (=> bm!374969 (= call!374974 (derivationStepZipperDown!341 (h!67303 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156804))))) (Context!8555 (t!374174 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156804)))))) (h!67302 s!2326)))))

(declare-fun b!5273369 () Bool)

(declare-fun e!3279478 () (InoxSet Context!8554))

(assert (=> b!5273369 (= e!3279478 ((_ map or) call!374974 (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156804)))))) (h!67302 s!2326))))))

(declare-fun b!5273370 () Bool)

(declare-fun e!3279477 () Bool)

(assert (=> b!5273370 (= e!3279477 (nullable!5062 (h!67303 (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156804)))))))))

(declare-fun d!1697082 () Bool)

(declare-fun c!913591 () Bool)

(assert (=> d!1697082 (= c!913591 e!3279477)))

(declare-fun res!2236923 () Bool)

(assert (=> d!1697082 (=> (not res!2236923) (not e!3279477))))

(assert (=> d!1697082 (= res!2236923 ((_ is Cons!60855) (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156804))))))))

(assert (=> d!1697082 (= (derivationStepZipperUp!265 (Context!8555 (t!374174 (exprs!4777 lt!2156804))) (h!67302 s!2326)) e!3279478)))

(declare-fun b!5273371 () Bool)

(assert (=> b!5273371 (= e!3279478 e!3279479)))

(declare-fun c!913590 () Bool)

(assert (=> b!5273371 (= c!913590 ((_ is Cons!60855) (exprs!4777 (Context!8555 (t!374174 (exprs!4777 lt!2156804))))))))

(assert (= (and d!1697082 res!2236923) b!5273370))

(assert (= (and d!1697082 c!913591) b!5273369))

(assert (= (and d!1697082 (not c!913591)) b!5273371))

(assert (= (and b!5273371 c!913590) b!5273368))

(assert (= (and b!5273371 (not c!913590)) b!5273367))

(assert (= (or b!5273369 b!5273368) bm!374969))

(declare-fun m!6312204 () Bool)

(assert (=> bm!374969 m!6312204))

(declare-fun m!6312206 () Bool)

(assert (=> b!5273369 m!6312206))

(declare-fun m!6312208 () Bool)

(assert (=> b!5273370 m!6312208))

(assert (=> b!5272055 d!1697082))

(declare-fun d!1697084 () Bool)

(assert (=> d!1697084 true))

(declare-fun setRes!33766 () Bool)

(assert (=> d!1697084 setRes!33766))

(declare-fun condSetEmpty!33766 () Bool)

(declare-fun res!2236924 () (InoxSet Context!8554))

(assert (=> d!1697084 (= condSetEmpty!33766 (= res!2236924 ((as const (Array Context!8554 Bool)) false)))))

(assert (=> d!1697084 (= (choose!39338 lt!2156799 lambda!265971) res!2236924)))

(declare-fun setIsEmpty!33766 () Bool)

(assert (=> setIsEmpty!33766 setRes!33766))

(declare-fun setElem!33766 () Context!8554)

(declare-fun e!3279480 () Bool)

(declare-fun tp!1473637 () Bool)

(declare-fun setNonEmpty!33766 () Bool)

(assert (=> setNonEmpty!33766 (= setRes!33766 (and tp!1473637 (inv!80479 setElem!33766) e!3279480))))

(declare-fun setRest!33766 () (InoxSet Context!8554))

(assert (=> setNonEmpty!33766 (= res!2236924 ((_ map or) (store ((as const (Array Context!8554 Bool)) false) setElem!33766 true) setRest!33766))))

(declare-fun b!5273372 () Bool)

(declare-fun tp!1473636 () Bool)

(assert (=> b!5273372 (= e!3279480 tp!1473636)))

(assert (= (and d!1697084 condSetEmpty!33766) setIsEmpty!33766))

(assert (= (and d!1697084 (not condSetEmpty!33766)) setNonEmpty!33766))

(assert (= setNonEmpty!33766 b!5273372))

(declare-fun m!6312210 () Bool)

(assert (=> setNonEmpty!33766 m!6312210))

(assert (=> d!1696530 d!1697084))

(declare-fun d!1697086 () Bool)

(assert (=> d!1697086 (= (isEmpty!32808 (findConcatSeparation!1418 (regOne!30298 r!7292) (regTwo!30298 r!7292) Nil!60854 s!2326 s!2326)) (not ((_ is Some!15003) (findConcatSeparation!1418 (regOne!30298 r!7292) (regTwo!30298 r!7292) Nil!60854 s!2326 s!2326))))))

(assert (=> d!1696594 d!1697086))

(declare-fun b!5273373 () Bool)

(declare-fun e!3279481 () Bool)

(declare-fun e!3279483 () Bool)

(assert (=> b!5273373 (= e!3279481 e!3279483)))

(declare-fun res!2236929 () Bool)

(assert (=> b!5273373 (=> (not res!2236929) (not e!3279483))))

(declare-fun call!374977 () Bool)

(assert (=> b!5273373 (= res!2236929 call!374977)))

(declare-fun b!5273374 () Bool)

(declare-fun e!3279486 () Bool)

(declare-fun e!3279485 () Bool)

(assert (=> b!5273374 (= e!3279486 e!3279485)))

(declare-fun c!913593 () Bool)

(assert (=> b!5273374 (= c!913593 ((_ is Star!14893) (ite c!913301 (regOne!30299 r!7292) (regOne!30298 r!7292))))))

(declare-fun bm!374970 () Bool)

(declare-fun call!374976 () Bool)

(declare-fun call!374975 () Bool)

(assert (=> bm!374970 (= call!374976 call!374975)))

(declare-fun c!913592 () Bool)

(declare-fun bm!374971 () Bool)

(assert (=> bm!374971 (= call!374977 (validRegex!6629 (ite c!913592 (regOne!30299 (ite c!913301 (regOne!30299 r!7292) (regOne!30298 r!7292))) (regOne!30298 (ite c!913301 (regOne!30299 r!7292) (regOne!30298 r!7292))))))))

(declare-fun b!5273375 () Bool)

(declare-fun res!2236927 () Bool)

(declare-fun e!3279487 () Bool)

(assert (=> b!5273375 (=> (not res!2236927) (not e!3279487))))

(assert (=> b!5273375 (= res!2236927 call!374977)))

(declare-fun e!3279482 () Bool)

(assert (=> b!5273375 (= e!3279482 e!3279487)))

(declare-fun d!1697088 () Bool)

(declare-fun res!2236925 () Bool)

(assert (=> d!1697088 (=> res!2236925 e!3279486)))

(assert (=> d!1697088 (= res!2236925 ((_ is ElementMatch!14893) (ite c!913301 (regOne!30299 r!7292) (regOne!30298 r!7292))))))

(assert (=> d!1697088 (= (validRegex!6629 (ite c!913301 (regOne!30299 r!7292) (regOne!30298 r!7292))) e!3279486)))

(declare-fun bm!374972 () Bool)

(assert (=> bm!374972 (= call!374975 (validRegex!6629 (ite c!913593 (reg!15222 (ite c!913301 (regOne!30299 r!7292) (regOne!30298 r!7292))) (ite c!913592 (regTwo!30299 (ite c!913301 (regOne!30299 r!7292) (regOne!30298 r!7292))) (regTwo!30298 (ite c!913301 (regOne!30299 r!7292) (regOne!30298 r!7292)))))))))

(declare-fun b!5273376 () Bool)

(declare-fun res!2236926 () Bool)

(assert (=> b!5273376 (=> res!2236926 e!3279481)))

(assert (=> b!5273376 (= res!2236926 (not ((_ is Concat!23738) (ite c!913301 (regOne!30299 r!7292) (regOne!30298 r!7292)))))))

(assert (=> b!5273376 (= e!3279482 e!3279481)))

(declare-fun b!5273377 () Bool)

(declare-fun e!3279484 () Bool)

(assert (=> b!5273377 (= e!3279484 call!374975)))

(declare-fun b!5273378 () Bool)

(assert (=> b!5273378 (= e!3279487 call!374976)))

(declare-fun b!5273379 () Bool)

(assert (=> b!5273379 (= e!3279485 e!3279482)))

(assert (=> b!5273379 (= c!913592 ((_ is Union!14893) (ite c!913301 (regOne!30299 r!7292) (regOne!30298 r!7292))))))

(declare-fun b!5273380 () Bool)

(assert (=> b!5273380 (= e!3279485 e!3279484)))

(declare-fun res!2236928 () Bool)

(assert (=> b!5273380 (= res!2236928 (not (nullable!5062 (reg!15222 (ite c!913301 (regOne!30299 r!7292) (regOne!30298 r!7292))))))))

(assert (=> b!5273380 (=> (not res!2236928) (not e!3279484))))

(declare-fun b!5273381 () Bool)

(assert (=> b!5273381 (= e!3279483 call!374976)))

(assert (= (and d!1697088 (not res!2236925)) b!5273374))

(assert (= (and b!5273374 c!913593) b!5273380))

(assert (= (and b!5273374 (not c!913593)) b!5273379))

(assert (= (and b!5273380 res!2236928) b!5273377))

(assert (= (and b!5273379 c!913592) b!5273375))

(assert (= (and b!5273379 (not c!913592)) b!5273376))

(assert (= (and b!5273375 res!2236927) b!5273378))

(assert (= (and b!5273376 (not res!2236926)) b!5273373))

(assert (= (and b!5273373 res!2236929) b!5273381))

(assert (= (or b!5273378 b!5273381) bm!374970))

(assert (= (or b!5273375 b!5273373) bm!374971))

(assert (= (or b!5273377 bm!374970) bm!374972))

(declare-fun m!6312212 () Bool)

(assert (=> bm!374971 m!6312212))

(declare-fun m!6312214 () Bool)

(assert (=> bm!374972 m!6312214))

(declare-fun m!6312216 () Bool)

(assert (=> b!5273380 m!6312216))

(assert (=> bm!374736 d!1697088))

(declare-fun d!1697090 () Bool)

(assert (=> d!1697090 (= ($colon$colon!1342 (exprs!4777 lt!2156808) (ite (or c!913202 c!913205) (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 r!7292)))) (Cons!60855 (ite (or c!913202 c!913205) (regTwo!30298 (regOne!30298 (regOne!30298 r!7292))) (regOne!30298 (regOne!30298 r!7292))) (exprs!4777 lt!2156808)))))

(assert (=> bm!374691 d!1697090))

(declare-fun d!1697092 () Bool)

(assert (=> d!1697092 (= (nullable!5062 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343))))) (nullableFct!1444 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343))))))))

(declare-fun bs!1221812 () Bool)

(assert (= bs!1221812 d!1697092))

(declare-fun m!6312218 () Bool)

(assert (=> bs!1221812 m!6312218))

(assert (=> b!5272040 d!1697092))

(declare-fun b!5273382 () Bool)

(declare-fun e!3279492 () Bool)

(declare-fun e!3279493 () Bool)

(assert (=> b!5273382 (= e!3279492 e!3279493)))

(declare-fun res!2236931 () Bool)

(declare-fun call!374978 () Bool)

(assert (=> b!5273382 (= res!2236931 call!374978)))

(assert (=> b!5273382 (=> res!2236931 e!3279493)))

(declare-fun b!5273383 () Bool)

(declare-fun e!3279490 () Bool)

(declare-fun call!374979 () Bool)

(assert (=> b!5273383 (= e!3279490 call!374979)))

(declare-fun b!5273384 () Bool)

(assert (=> b!5273384 (= e!3279493 call!374979)))

(declare-fun d!1697094 () Bool)

(declare-fun res!2236934 () Bool)

(declare-fun e!3279488 () Bool)

(assert (=> d!1697094 (=> res!2236934 e!3279488)))

(assert (=> d!1697094 (= res!2236934 ((_ is EmptyExpr!14893) (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(assert (=> d!1697094 (= (nullableFct!1444 (h!67303 (exprs!4777 (h!67304 zl!343)))) e!3279488)))

(declare-fun b!5273385 () Bool)

(declare-fun e!3279491 () Bool)

(assert (=> b!5273385 (= e!3279488 e!3279491)))

(declare-fun res!2236932 () Bool)

(assert (=> b!5273385 (=> (not res!2236932) (not e!3279491))))

(assert (=> b!5273385 (= res!2236932 (and (not ((_ is EmptyLang!14893) (h!67303 (exprs!4777 (h!67304 zl!343))))) (not ((_ is ElementMatch!14893) (h!67303 (exprs!4777 (h!67304 zl!343)))))))))

(declare-fun b!5273386 () Bool)

(assert (=> b!5273386 (= e!3279492 e!3279490)))

(declare-fun res!2236933 () Bool)

(assert (=> b!5273386 (= res!2236933 call!374978)))

(assert (=> b!5273386 (=> (not res!2236933) (not e!3279490))))

(declare-fun b!5273387 () Bool)

(declare-fun e!3279489 () Bool)

(assert (=> b!5273387 (= e!3279491 e!3279489)))

(declare-fun res!2236930 () Bool)

(assert (=> b!5273387 (=> res!2236930 e!3279489)))

(assert (=> b!5273387 (= res!2236930 ((_ is Star!14893) (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun b!5273388 () Bool)

(assert (=> b!5273388 (= e!3279489 e!3279492)))

(declare-fun c!913594 () Bool)

(assert (=> b!5273388 (= c!913594 ((_ is Union!14893) (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun bm!374973 () Bool)

(assert (=> bm!374973 (= call!374979 (nullable!5062 (ite c!913594 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))))))

(declare-fun bm!374974 () Bool)

(assert (=> bm!374974 (= call!374978 (nullable!5062 (ite c!913594 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))))))

(assert (= (and d!1697094 (not res!2236934)) b!5273385))

(assert (= (and b!5273385 res!2236932) b!5273387))

(assert (= (and b!5273387 (not res!2236930)) b!5273388))

(assert (= (and b!5273388 c!913594) b!5273382))

(assert (= (and b!5273388 (not c!913594)) b!5273386))

(assert (= (and b!5273382 (not res!2236931)) b!5273384))

(assert (= (and b!5273386 res!2236933) b!5273383))

(assert (= (or b!5273384 b!5273383) bm!374973))

(assert (= (or b!5273382 b!5273386) bm!374974))

(declare-fun m!6312220 () Bool)

(assert (=> bm!374973 m!6312220))

(declare-fun m!6312222 () Bool)

(assert (=> bm!374974 m!6312222))

(assert (=> d!1696554 d!1697094))

(declare-fun d!1697096 () Bool)

(assert (=> d!1697096 (= (isEmpty!32804 (tail!10400 (unfocusZipperList!335 zl!343))) ((_ is Nil!60855) (tail!10400 (unfocusZipperList!335 zl!343))))))

(assert (=> b!5272171 d!1697096))

(declare-fun d!1697098 () Bool)

(assert (=> d!1697098 (= (tail!10400 (unfocusZipperList!335 zl!343)) (t!374174 (unfocusZipperList!335 zl!343)))))

(assert (=> b!5272171 d!1697098))

(declare-fun b!5273389 () Bool)

(declare-fun e!3279496 () (InoxSet Context!8554))

(declare-fun call!374982 () (InoxSet Context!8554))

(assert (=> b!5273389 (= e!3279496 call!374982)))

(declare-fun b!5273390 () Bool)

(declare-fun e!3279499 () (InoxSet Context!8554))

(declare-fun e!3279494 () (InoxSet Context!8554))

(assert (=> b!5273390 (= e!3279499 e!3279494)))

(declare-fun c!913597 () Bool)

(assert (=> b!5273390 (= c!913597 ((_ is Union!14893) (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))))))

(declare-fun bm!374975 () Bool)

(declare-fun call!374980 () List!60979)

(declare-fun call!374984 () (InoxSet Context!8554))

(assert (=> bm!374975 (= call!374984 (derivationStepZipperDown!341 (ite c!913597 (regOne!30299 (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))) (regOne!30298 (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343))))))) (ite c!913597 (ite c!913239 lt!2156804 (Context!8555 call!374723)) (Context!8555 call!374980)) (h!67302 s!2326)))))

(declare-fun bm!374976 () Bool)

(declare-fun call!374983 () (InoxSet Context!8554))

(assert (=> bm!374976 (= call!374982 call!374983)))

(declare-fun b!5273391 () Bool)

(declare-fun e!3279495 () (InoxSet Context!8554))

(assert (=> b!5273391 (= e!3279495 e!3279496)))

(declare-fun c!913599 () Bool)

(assert (=> b!5273391 (= c!913599 ((_ is Concat!23738) (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))))))

(declare-fun bm!374977 () Bool)

(declare-fun call!374981 () (InoxSet Context!8554))

(assert (=> bm!374977 (= call!374983 call!374981)))

(declare-fun b!5273392 () Bool)

(declare-fun e!3279498 () Bool)

(assert (=> b!5273392 (= e!3279498 (nullable!5062 (regOne!30298 (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343))))))))))

(declare-fun b!5273393 () Bool)

(declare-fun e!3279497 () (InoxSet Context!8554))

(assert (=> b!5273393 (= e!3279497 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273395 () Bool)

(declare-fun c!913596 () Bool)

(assert (=> b!5273395 (= c!913596 e!3279498)))

(declare-fun res!2236935 () Bool)

(assert (=> b!5273395 (=> (not res!2236935) (not e!3279498))))

(assert (=> b!5273395 (= res!2236935 ((_ is Concat!23738) (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))))))

(assert (=> b!5273395 (= e!3279494 e!3279495)))

(declare-fun call!374985 () List!60979)

(declare-fun bm!374978 () Bool)

(assert (=> bm!374978 (= call!374981 (derivationStepZipperDown!341 (ite c!913597 (regTwo!30299 (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))) (ite c!913596 (regTwo!30298 (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))) (ite c!913599 (regOne!30298 (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))) (reg!15222 (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343))))))))) (ite (or c!913597 c!913596) (ite c!913239 lt!2156804 (Context!8555 call!374723)) (Context!8555 call!374985)) (h!67302 s!2326)))))

(declare-fun b!5273396 () Bool)

(assert (=> b!5273396 (= e!3279497 call!374982)))

(declare-fun bm!374979 () Bool)

(assert (=> bm!374979 (= call!374985 call!374980)))

(declare-fun b!5273397 () Bool)

(declare-fun c!913598 () Bool)

(assert (=> b!5273397 (= c!913598 ((_ is Star!14893) (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))))))

(assert (=> b!5273397 (= e!3279496 e!3279497)))

(declare-fun b!5273398 () Bool)

(assert (=> b!5273398 (= e!3279494 ((_ map or) call!374984 call!374981))))

(declare-fun bm!374980 () Bool)

(assert (=> bm!374980 (= call!374980 ($colon$colon!1342 (exprs!4777 (ite c!913239 lt!2156804 (Context!8555 call!374723))) (ite (or c!913596 c!913599) (regTwo!30298 (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))) (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343))))))))))

(declare-fun b!5273399 () Bool)

(assert (=> b!5273399 (= e!3279499 (store ((as const (Array Context!8554 Bool)) false) (ite c!913239 lt!2156804 (Context!8555 call!374723)) true))))

(declare-fun b!5273394 () Bool)

(assert (=> b!5273394 (= e!3279495 ((_ map or) call!374984 call!374983))))

(declare-fun d!1697100 () Bool)

(declare-fun c!913595 () Bool)

(assert (=> d!1697100 (= c!913595 (and ((_ is ElementMatch!14893) (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))) (= (c!913081 (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))))) (h!67302 s!2326))))))

(assert (=> d!1697100 (= (derivationStepZipperDown!341 (ite c!913239 (regOne!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343))))) (ite c!913239 lt!2156804 (Context!8555 call!374723)) (h!67302 s!2326)) e!3279499)))

(assert (= (and d!1697100 c!913595) b!5273399))

(assert (= (and d!1697100 (not c!913595)) b!5273390))

(assert (= (and b!5273390 c!913597) b!5273398))

(assert (= (and b!5273390 (not c!913597)) b!5273395))

(assert (= (and b!5273395 res!2236935) b!5273392))

(assert (= (and b!5273395 c!913596) b!5273394))

(assert (= (and b!5273395 (not c!913596)) b!5273391))

(assert (= (and b!5273391 c!913599) b!5273389))

(assert (= (and b!5273391 (not c!913599)) b!5273397))

(assert (= (and b!5273397 c!913598) b!5273396))

(assert (= (and b!5273397 (not c!913598)) b!5273393))

(assert (= (or b!5273389 b!5273396) bm!374979))

(assert (= (or b!5273389 b!5273396) bm!374976))

(assert (= (or b!5273394 bm!374979) bm!374980))

(assert (= (or b!5273394 bm!374976) bm!374977))

(assert (= (or b!5273398 bm!374977) bm!374978))

(assert (= (or b!5273398 b!5273394) bm!374975))

(declare-fun m!6312224 () Bool)

(assert (=> b!5273399 m!6312224))

(declare-fun m!6312226 () Bool)

(assert (=> b!5273392 m!6312226))

(declare-fun m!6312228 () Bool)

(assert (=> bm!374975 m!6312228))

(declare-fun m!6312230 () Bool)

(assert (=> bm!374980 m!6312230))

(declare-fun m!6312232 () Bool)

(assert (=> bm!374978 m!6312232))

(assert (=> bm!374718 d!1697100))

(declare-fun d!1697102 () Bool)

(assert (=> d!1697102 (= (nullable!5062 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))) (nullableFct!1444 (h!67303 (exprs!4777 (Context!8555 (Cons!60855 (h!67303 (exprs!4777 (h!67304 zl!343))) (t!374174 (exprs!4777 (h!67304 zl!343)))))))))))

(declare-fun bs!1221813 () Bool)

(assert (= bs!1221813 d!1697102))

(declare-fun m!6312234 () Bool)

(assert (=> bs!1221813 m!6312234))

(assert (=> b!5272035 d!1697102))

(declare-fun b!5273400 () Bool)

(declare-fun e!3279500 () Bool)

(declare-fun e!3279502 () Bool)

(assert (=> b!5273400 (= e!3279500 e!3279502)))

(declare-fun res!2236940 () Bool)

(assert (=> b!5273400 (=> (not res!2236940) (not e!3279502))))

(declare-fun call!374988 () Bool)

(assert (=> b!5273400 (= res!2236940 call!374988)))

(declare-fun b!5273401 () Bool)

(declare-fun e!3279505 () Bool)

(declare-fun e!3279504 () Bool)

(assert (=> b!5273401 (= e!3279505 e!3279504)))

(declare-fun c!913601 () Bool)

(assert (=> b!5273401 (= c!913601 ((_ is Star!14893) lt!2156879))))

(declare-fun bm!374981 () Bool)

(declare-fun call!374987 () Bool)

(declare-fun call!374986 () Bool)

(assert (=> bm!374981 (= call!374987 call!374986)))

(declare-fun bm!374982 () Bool)

(declare-fun c!913600 () Bool)

(assert (=> bm!374982 (= call!374988 (validRegex!6629 (ite c!913600 (regOne!30299 lt!2156879) (regOne!30298 lt!2156879))))))

(declare-fun b!5273402 () Bool)

(declare-fun res!2236938 () Bool)

(declare-fun e!3279506 () Bool)

(assert (=> b!5273402 (=> (not res!2236938) (not e!3279506))))

(assert (=> b!5273402 (= res!2236938 call!374988)))

(declare-fun e!3279501 () Bool)

(assert (=> b!5273402 (= e!3279501 e!3279506)))

(declare-fun d!1697104 () Bool)

(declare-fun res!2236936 () Bool)

(assert (=> d!1697104 (=> res!2236936 e!3279505)))

(assert (=> d!1697104 (= res!2236936 ((_ is ElementMatch!14893) lt!2156879))))

(assert (=> d!1697104 (= (validRegex!6629 lt!2156879) e!3279505)))

(declare-fun bm!374983 () Bool)

(assert (=> bm!374983 (= call!374986 (validRegex!6629 (ite c!913601 (reg!15222 lt!2156879) (ite c!913600 (regTwo!30299 lt!2156879) (regTwo!30298 lt!2156879)))))))

(declare-fun b!5273403 () Bool)

(declare-fun res!2236937 () Bool)

(assert (=> b!5273403 (=> res!2236937 e!3279500)))

(assert (=> b!5273403 (= res!2236937 (not ((_ is Concat!23738) lt!2156879)))))

(assert (=> b!5273403 (= e!3279501 e!3279500)))

(declare-fun b!5273404 () Bool)

(declare-fun e!3279503 () Bool)

(assert (=> b!5273404 (= e!3279503 call!374986)))

(declare-fun b!5273405 () Bool)

(assert (=> b!5273405 (= e!3279506 call!374987)))

(declare-fun b!5273406 () Bool)

(assert (=> b!5273406 (= e!3279504 e!3279501)))

(assert (=> b!5273406 (= c!913600 ((_ is Union!14893) lt!2156879))))

(declare-fun b!5273407 () Bool)

(assert (=> b!5273407 (= e!3279504 e!3279503)))

(declare-fun res!2236939 () Bool)

(assert (=> b!5273407 (= res!2236939 (not (nullable!5062 (reg!15222 lt!2156879))))))

(assert (=> b!5273407 (=> (not res!2236939) (not e!3279503))))

(declare-fun b!5273408 () Bool)

(assert (=> b!5273408 (= e!3279502 call!374987)))

(assert (= (and d!1697104 (not res!2236936)) b!5273401))

(assert (= (and b!5273401 c!913601) b!5273407))

(assert (= (and b!5273401 (not c!913601)) b!5273406))

(assert (= (and b!5273407 res!2236939) b!5273404))

(assert (= (and b!5273406 c!913600) b!5273402))

(assert (= (and b!5273406 (not c!913600)) b!5273403))

(assert (= (and b!5273402 res!2236938) b!5273405))

(assert (= (and b!5273403 (not res!2236937)) b!5273400))

(assert (= (and b!5273400 res!2236940) b!5273408))

(assert (= (or b!5273405 b!5273408) bm!374981))

(assert (= (or b!5273402 b!5273400) bm!374982))

(assert (= (or b!5273404 bm!374981) bm!374983))

(declare-fun m!6312236 () Bool)

(assert (=> bm!374982 m!6312236))

(declare-fun m!6312238 () Bool)

(assert (=> bm!374983 m!6312238))

(declare-fun m!6312240 () Bool)

(assert (=> b!5273407 m!6312240))

(assert (=> d!1696542 d!1697104))

(assert (=> d!1696542 d!1696578))

(assert (=> d!1696542 d!1696580))

(declare-fun d!1697106 () Bool)

(assert (=> d!1697106 (= (flatMap!620 lt!2156799 lambda!266008) (choose!39338 lt!2156799 lambda!266008))))

(declare-fun bs!1221814 () Bool)

(assert (= bs!1221814 d!1697106))

(declare-fun m!6312242 () Bool)

(assert (=> bs!1221814 m!6312242))

(assert (=> d!1696506 d!1697106))

(declare-fun b!5273409 () Bool)

(declare-fun e!3279509 () (InoxSet Context!8554))

(declare-fun call!374991 () (InoxSet Context!8554))

(assert (=> b!5273409 (= e!3279509 call!374991)))

(declare-fun b!5273410 () Bool)

(declare-fun e!3279512 () (InoxSet Context!8554))

(declare-fun e!3279507 () (InoxSet Context!8554))

(assert (=> b!5273410 (= e!3279512 e!3279507)))

(declare-fun c!913604 () Bool)

(assert (=> b!5273410 (= c!913604 ((_ is Union!14893) (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343)))))))))))

(declare-fun call!374989 () List!60979)

(declare-fun call!374993 () (InoxSet Context!8554))

(declare-fun bm!374984 () Bool)

(assert (=> bm!374984 (= call!374993 (derivationStepZipperDown!341 (ite c!913604 (regOne!30299 (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343)))))))) (regOne!30298 (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343))))))))) (ite c!913604 (ite (or c!913239 c!913238) lt!2156804 (Context!8555 call!374728)) (Context!8555 call!374989)) (h!67302 s!2326)))))

(declare-fun bm!374985 () Bool)

(declare-fun call!374992 () (InoxSet Context!8554))

(assert (=> bm!374985 (= call!374991 call!374992)))

(declare-fun b!5273411 () Bool)

(declare-fun e!3279508 () (InoxSet Context!8554))

(assert (=> b!5273411 (= e!3279508 e!3279509)))

(declare-fun c!913606 () Bool)

(assert (=> b!5273411 (= c!913606 ((_ is Concat!23738) (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343)))))))))))

(declare-fun bm!374986 () Bool)

(declare-fun call!374990 () (InoxSet Context!8554))

(assert (=> bm!374986 (= call!374992 call!374990)))

(declare-fun e!3279511 () Bool)

(declare-fun b!5273412 () Bool)

(assert (=> b!5273412 (= e!3279511 (nullable!5062 (regOne!30298 (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343))))))))))))

(declare-fun b!5273413 () Bool)

(declare-fun e!3279510 () (InoxSet Context!8554))

(assert (=> b!5273413 (= e!3279510 ((as const (Array Context!8554 Bool)) false))))

(declare-fun b!5273415 () Bool)

(declare-fun c!913603 () Bool)

(assert (=> b!5273415 (= c!913603 e!3279511)))

(declare-fun res!2236941 () Bool)

(assert (=> b!5273415 (=> (not res!2236941) (not e!3279511))))

(assert (=> b!5273415 (= res!2236941 ((_ is Concat!23738) (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343)))))))))))

(assert (=> b!5273415 (= e!3279507 e!3279508)))

(declare-fun bm!374987 () Bool)

(declare-fun call!374994 () List!60979)

(assert (=> bm!374987 (= call!374990 (derivationStepZipperDown!341 (ite c!913604 (regTwo!30299 (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343)))))))) (ite c!913603 (regTwo!30298 (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343)))))))) (ite c!913606 (regOne!30298 (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343)))))))) (reg!15222 (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343))))))))))) (ite (or c!913604 c!913603) (ite (or c!913239 c!913238) lt!2156804 (Context!8555 call!374728)) (Context!8555 call!374994)) (h!67302 s!2326)))))

(declare-fun b!5273416 () Bool)

(assert (=> b!5273416 (= e!3279510 call!374991)))

(declare-fun bm!374988 () Bool)

(assert (=> bm!374988 (= call!374994 call!374989)))

(declare-fun b!5273417 () Bool)

(declare-fun c!913605 () Bool)

(assert (=> b!5273417 (= c!913605 ((_ is Star!14893) (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343)))))))))))

(assert (=> b!5273417 (= e!3279509 e!3279510)))

(declare-fun b!5273418 () Bool)

(assert (=> b!5273418 (= e!3279507 ((_ map or) call!374993 call!374990))))

(declare-fun bm!374989 () Bool)

(assert (=> bm!374989 (= call!374989 ($colon$colon!1342 (exprs!4777 (ite (or c!913239 c!913238) lt!2156804 (Context!8555 call!374728))) (ite (or c!913603 c!913606) (regTwo!30298 (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343)))))))) (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343))))))))))))

(declare-fun b!5273419 () Bool)

(assert (=> b!5273419 (= e!3279512 (store ((as const (Array Context!8554 Bool)) false) (ite (or c!913239 c!913238) lt!2156804 (Context!8555 call!374728)) true))))

(declare-fun b!5273414 () Bool)

(assert (=> b!5273414 (= e!3279508 ((_ map or) call!374993 call!374992))))

(declare-fun d!1697108 () Bool)

(declare-fun c!913602 () Bool)

(assert (=> d!1697108 (= c!913602 (and ((_ is ElementMatch!14893) (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343)))))))) (= (c!913081 (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343)))))))) (h!67302 s!2326))))))

(assert (=> d!1697108 (= (derivationStepZipperDown!341 (ite c!913239 (regTwo!30299 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913238 (regTwo!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (ite c!913241 (regOne!30298 (h!67303 (exprs!4777 (h!67304 zl!343)))) (reg!15222 (h!67303 (exprs!4777 (h!67304 zl!343))))))) (ite (or c!913239 c!913238) lt!2156804 (Context!8555 call!374728)) (h!67302 s!2326)) e!3279512)))

(assert (= (and d!1697108 c!913602) b!5273419))

(assert (= (and d!1697108 (not c!913602)) b!5273410))

(assert (= (and b!5273410 c!913604) b!5273418))

(assert (= (and b!5273410 (not c!913604)) b!5273415))

(assert (= (and b!5273415 res!2236941) b!5273412))

(assert (= (and b!5273415 c!913603) b!5273414))

(assert (= (and b!5273415 (not c!913603)) b!5273411))

(assert (= (and b!5273411 c!913606) b!5273409))

(assert (= (and b!5273411 (not c!913606)) b!5273417))

(assert (= (and b!5273417 c!913605) b!5273416))

(assert (= (and b!5273417 (not c!913605)) b!5273413))

(assert (= (or b!5273409 b!5273416) bm!374988))

(assert (= (or b!5273409 b!5273416) bm!374985))

(assert (= (or b!5273414 bm!374988) bm!374989))

(assert (= (or b!5273414 bm!374985) bm!374986))

(assert (= (or b!5273418 bm!374986) bm!374987))

(assert (= (or b!5273418 b!5273414) bm!374984))

(declare-fun m!6312244 () Bool)

(assert (=> b!5273419 m!6312244))

(declare-fun m!6312246 () Bool)

(assert (=> b!5273412 m!6312246))

(declare-fun m!6312248 () Bool)

(assert (=> bm!374984 m!6312248))

(declare-fun m!6312250 () Bool)

(assert (=> bm!374989 m!6312250))

(declare-fun m!6312252 () Bool)

(assert (=> bm!374987 m!6312252))

(assert (=> bm!374721 d!1697108))

(assert (=> d!1696550 d!1696548))

(declare-fun d!1697110 () Bool)

(assert (=> d!1697110 (= (flatMap!620 lt!2156812 lambda!265971) (dynLambda!24047 lambda!265971 lt!2156808))))

(assert (=> d!1697110 true))

(declare-fun _$13!1830 () Unit!153090)

(assert (=> d!1697110 (= (choose!39337 lt!2156812 lt!2156808 lambda!265971) _$13!1830)))

(declare-fun b_lambda!203401 () Bool)

(assert (=> (not b_lambda!203401) (not d!1697110)))

(declare-fun bs!1221815 () Bool)

(assert (= bs!1221815 d!1697110))

(assert (=> bs!1221815 m!6310562))

(assert (=> bs!1221815 m!6311010))

(assert (=> d!1696550 d!1697110))

(declare-fun d!1697112 () Bool)

(declare-fun c!913607 () Bool)

(assert (=> d!1697112 (= c!913607 (isEmpty!32806 (tail!10399 (t!374173 s!2326))))))

(declare-fun e!3279513 () Bool)

(assert (=> d!1697112 (= (matchZipper!1137 (derivationStepZipper!1136 lt!2156821 (head!11302 (t!374173 s!2326))) (tail!10399 (t!374173 s!2326))) e!3279513)))

(declare-fun b!5273420 () Bool)

(assert (=> b!5273420 (= e!3279513 (nullableZipper!1292 (derivationStepZipper!1136 lt!2156821 (head!11302 (t!374173 s!2326)))))))

(declare-fun b!5273421 () Bool)

(assert (=> b!5273421 (= e!3279513 (matchZipper!1137 (derivationStepZipper!1136 (derivationStepZipper!1136 lt!2156821 (head!11302 (t!374173 s!2326))) (head!11302 (tail!10399 (t!374173 s!2326)))) (tail!10399 (tail!10399 (t!374173 s!2326)))))))

(assert (= (and d!1697112 c!913607) b!5273420))

(assert (= (and d!1697112 (not c!913607)) b!5273421))

(assert (=> d!1697112 m!6310798))

(assert (=> d!1697112 m!6311482))

(assert (=> b!5273420 m!6310796))

(declare-fun m!6312254 () Bool)

(assert (=> b!5273420 m!6312254))

(assert (=> b!5273421 m!6310798))

(assert (=> b!5273421 m!6311486))

(assert (=> b!5273421 m!6310796))

(assert (=> b!5273421 m!6311486))

(declare-fun m!6312256 () Bool)

(assert (=> b!5273421 m!6312256))

(assert (=> b!5273421 m!6310798))

(assert (=> b!5273421 m!6311490))

(assert (=> b!5273421 m!6312256))

(assert (=> b!5273421 m!6311490))

(declare-fun m!6312258 () Bool)

(assert (=> b!5273421 m!6312258))

(assert (=> b!5271749 d!1697112))

(declare-fun bs!1221816 () Bool)

(declare-fun d!1697114 () Bool)

(assert (= bs!1221816 (and d!1697114 d!1696506)))

(declare-fun lambda!266096 () Int)

(assert (=> bs!1221816 (= (= (head!11302 (t!374173 s!2326)) (h!67302 s!2326)) (= lambda!266096 lambda!266008))))

(declare-fun bs!1221817 () Bool)

(assert (= bs!1221817 (and d!1697114 d!1696758)))

(assert (=> bs!1221817 (= lambda!266096 lambda!266053)))

(declare-fun bs!1221818 () Bool)

(assert (= bs!1221818 (and d!1697114 d!1696930)))

(assert (=> bs!1221818 (= lambda!266096 lambda!266070)))

(declare-fun bs!1221819 () Bool)

(assert (= bs!1221819 (and d!1697114 d!1696966)))

(assert (=> bs!1221819 (= lambda!266096 lambda!266077)))

(declare-fun bs!1221820 () Bool)

(assert (= bs!1221820 (and d!1697114 b!5271503)))

(assert (=> bs!1221820 (= (= (head!11302 (t!374173 s!2326)) (h!67302 s!2326)) (= lambda!266096 lambda!265971))))

(declare-fun bs!1221821 () Bool)

(assert (= bs!1221821 (and d!1697114 d!1697048)))

(assert (=> bs!1221821 (= lambda!266096 lambda!266092)))

(declare-fun bs!1221822 () Bool)

(assert (= bs!1221822 (and d!1697114 d!1697064)))

(assert (=> bs!1221822 (= lambda!266096 lambda!266094)))

(assert (=> d!1697114 true))

(assert (=> d!1697114 (= (derivationStepZipper!1136 lt!2156821 (head!11302 (t!374173 s!2326))) (flatMap!620 lt!2156821 lambda!266096))))

(declare-fun bs!1221823 () Bool)

(assert (= bs!1221823 d!1697114))

(declare-fun m!6312260 () Bool)

(assert (=> bs!1221823 m!6312260))

(assert (=> b!5271749 d!1697114))

(assert (=> b!5271749 d!1696764))

(assert (=> b!5271749 d!1696770))

(assert (=> b!5272232 d!1696842))

(declare-fun bs!1221824 () Bool)

(declare-fun d!1697116 () Bool)

(assert (= bs!1221824 (and d!1697116 d!1697058)))

(declare-fun lambda!266097 () Int)

(assert (=> bs!1221824 (= lambda!266097 lambda!266093)))

(declare-fun bs!1221825 () Bool)

(assert (= bs!1221825 (and d!1697116 d!1697070)))

(assert (=> bs!1221825 (= lambda!266097 lambda!266095)))

(declare-fun bs!1221826 () Bool)

(assert (= bs!1221826 (and d!1697116 d!1697012)))

(assert (=> bs!1221826 (= lambda!266097 lambda!266088)))

(declare-fun bs!1221827 () Bool)

(assert (= bs!1221827 (and d!1697116 d!1696834)))

(assert (=> bs!1221827 (= lambda!266097 lambda!266062)))

(declare-fun bs!1221828 () Bool)

(assert (= bs!1221828 (and d!1697116 d!1696994)))

(assert (=> bs!1221828 (= lambda!266097 lambda!266084)))

(assert (=> d!1697116 (= (nullableZipper!1292 lt!2156802) (exists!1995 lt!2156802 lambda!266097))))

(declare-fun bs!1221829 () Bool)

(assert (= bs!1221829 d!1697116))

(declare-fun m!6312262 () Bool)

(assert (=> bs!1221829 m!6312262))

(assert (=> b!5272143 d!1697116))

(declare-fun d!1697118 () Bool)

(declare-fun res!2236942 () Bool)

(declare-fun e!3279514 () Bool)

(assert (=> d!1697118 (=> res!2236942 e!3279514)))

(assert (=> d!1697118 (= res!2236942 ((_ is Nil!60855) (exprs!4777 setElem!33749)))))

(assert (=> d!1697118 (= (forall!14301 (exprs!4777 setElem!33749) lambda!265989) e!3279514)))

(declare-fun b!5273422 () Bool)

(declare-fun e!3279515 () Bool)

(assert (=> b!5273422 (= e!3279514 e!3279515)))

(declare-fun res!2236943 () Bool)

(assert (=> b!5273422 (=> (not res!2236943) (not e!3279515))))

(assert (=> b!5273422 (= res!2236943 (dynLambda!24048 lambda!265989 (h!67303 (exprs!4777 setElem!33749))))))

(declare-fun b!5273423 () Bool)

(assert (=> b!5273423 (= e!3279515 (forall!14301 (t!374174 (exprs!4777 setElem!33749)) lambda!265989))))

(assert (= (and d!1697118 (not res!2236942)) b!5273422))

(assert (= (and b!5273422 res!2236943) b!5273423))

(declare-fun b_lambda!203403 () Bool)

(assert (=> (not b_lambda!203403) (not b!5273422)))

(declare-fun m!6312264 () Bool)

(assert (=> b!5273422 m!6312264))

(declare-fun m!6312266 () Bool)

(assert (=> b!5273423 m!6312266))

(assert (=> d!1696466 d!1697118))

(assert (=> bm!374734 d!1696906))

(declare-fun d!1697120 () Bool)

(assert (=> d!1697120 (= (nullable!5062 (h!67303 (exprs!4777 lt!2156808))) (nullableFct!1444 (h!67303 (exprs!4777 lt!2156808))))))

(declare-fun bs!1221830 () Bool)

(assert (= bs!1221830 d!1697120))

(declare-fun m!6312268 () Bool)

(assert (=> bs!1221830 m!6312268))

(assert (=> b!5272013 d!1697120))

(declare-fun d!1697122 () Bool)

(assert (=> d!1697122 (= (nullable!5062 (h!67303 (exprs!4777 lt!2156820))) (nullableFct!1444 (h!67303 (exprs!4777 lt!2156820))))))

(declare-fun bs!1221831 () Bool)

(assert (= bs!1221831 d!1697122))

(declare-fun m!6312270 () Bool)

(assert (=> bs!1221831 m!6312270))

(assert (=> b!5272018 d!1697122))

(declare-fun b!5273426 () Bool)

(declare-fun e!3279516 () Bool)

(declare-fun tp!1473639 () Bool)

(assert (=> b!5273426 (= e!3279516 tp!1473639)))

(declare-fun b!5273425 () Bool)

(declare-fun tp!1473641 () Bool)

(declare-fun tp!1473638 () Bool)

(assert (=> b!5273425 (= e!3279516 (and tp!1473641 tp!1473638))))

(assert (=> b!5272293 (= tp!1473435 e!3279516)))

(declare-fun b!5273427 () Bool)

(declare-fun tp!1473640 () Bool)

(declare-fun tp!1473642 () Bool)

(assert (=> b!5273427 (= e!3279516 (and tp!1473640 tp!1473642))))

(declare-fun b!5273424 () Bool)

(assert (=> b!5273424 (= e!3279516 tp_is_empty!39039)))

(assert (= (and b!5272293 ((_ is ElementMatch!14893) (regOne!30298 (regOne!30298 r!7292)))) b!5273424))

(assert (= (and b!5272293 ((_ is Concat!23738) (regOne!30298 (regOne!30298 r!7292)))) b!5273425))

(assert (= (and b!5272293 ((_ is Star!14893) (regOne!30298 (regOne!30298 r!7292)))) b!5273426))

(assert (= (and b!5272293 ((_ is Union!14893) (regOne!30298 (regOne!30298 r!7292)))) b!5273427))

(declare-fun b!5273430 () Bool)

(declare-fun e!3279517 () Bool)

(declare-fun tp!1473644 () Bool)

(assert (=> b!5273430 (= e!3279517 tp!1473644)))

(declare-fun b!5273429 () Bool)

(declare-fun tp!1473646 () Bool)

(declare-fun tp!1473643 () Bool)

(assert (=> b!5273429 (= e!3279517 (and tp!1473646 tp!1473643))))

(assert (=> b!5272293 (= tp!1473432 e!3279517)))

(declare-fun b!5273431 () Bool)

(declare-fun tp!1473645 () Bool)

(declare-fun tp!1473647 () Bool)

(assert (=> b!5273431 (= e!3279517 (and tp!1473645 tp!1473647))))

(declare-fun b!5273428 () Bool)

(assert (=> b!5273428 (= e!3279517 tp_is_empty!39039)))

(assert (= (and b!5272293 ((_ is ElementMatch!14893) (regTwo!30298 (regOne!30298 r!7292)))) b!5273428))

(assert (= (and b!5272293 ((_ is Concat!23738) (regTwo!30298 (regOne!30298 r!7292)))) b!5273429))

(assert (= (and b!5272293 ((_ is Star!14893) (regTwo!30298 (regOne!30298 r!7292)))) b!5273430))

(assert (= (and b!5272293 ((_ is Union!14893) (regTwo!30298 (regOne!30298 r!7292)))) b!5273431))

(declare-fun b!5273434 () Bool)

(declare-fun e!3279518 () Bool)

(declare-fun tp!1473649 () Bool)

(assert (=> b!5273434 (= e!3279518 tp!1473649)))

(declare-fun b!5273433 () Bool)

(declare-fun tp!1473651 () Bool)

(declare-fun tp!1473648 () Bool)

(assert (=> b!5273433 (= e!3279518 (and tp!1473651 tp!1473648))))

(assert (=> b!5272303 (= tp!1473444 e!3279518)))

(declare-fun b!5273435 () Bool)

(declare-fun tp!1473650 () Bool)

(declare-fun tp!1473652 () Bool)

(assert (=> b!5273435 (= e!3279518 (and tp!1473650 tp!1473652))))

(declare-fun b!5273432 () Bool)

(assert (=> b!5273432 (= e!3279518 tp_is_empty!39039)))

(assert (= (and b!5272303 ((_ is ElementMatch!14893) (regOne!30299 (regOne!30299 r!7292)))) b!5273432))

(assert (= (and b!5272303 ((_ is Concat!23738) (regOne!30299 (regOne!30299 r!7292)))) b!5273433))

(assert (= (and b!5272303 ((_ is Star!14893) (regOne!30299 (regOne!30299 r!7292)))) b!5273434))

(assert (= (and b!5272303 ((_ is Union!14893) (regOne!30299 (regOne!30299 r!7292)))) b!5273435))

(declare-fun b!5273438 () Bool)

(declare-fun e!3279519 () Bool)

(declare-fun tp!1473654 () Bool)

(assert (=> b!5273438 (= e!3279519 tp!1473654)))

(declare-fun b!5273437 () Bool)

(declare-fun tp!1473656 () Bool)

(declare-fun tp!1473653 () Bool)

(assert (=> b!5273437 (= e!3279519 (and tp!1473656 tp!1473653))))

(assert (=> b!5272303 (= tp!1473446 e!3279519)))

(declare-fun b!5273439 () Bool)

(declare-fun tp!1473655 () Bool)

(declare-fun tp!1473657 () Bool)

(assert (=> b!5273439 (= e!3279519 (and tp!1473655 tp!1473657))))

(declare-fun b!5273436 () Bool)

(assert (=> b!5273436 (= e!3279519 tp_is_empty!39039)))

(assert (= (and b!5272303 ((_ is ElementMatch!14893) (regTwo!30299 (regOne!30299 r!7292)))) b!5273436))

(assert (= (and b!5272303 ((_ is Concat!23738) (regTwo!30299 (regOne!30299 r!7292)))) b!5273437))

(assert (= (and b!5272303 ((_ is Star!14893) (regTwo!30299 (regOne!30299 r!7292)))) b!5273438))

(assert (= (and b!5272303 ((_ is Union!14893) (regTwo!30299 (regOne!30299 r!7292)))) b!5273439))

(declare-fun b!5273442 () Bool)

(declare-fun e!3279520 () Bool)

(declare-fun tp!1473659 () Bool)

(assert (=> b!5273442 (= e!3279520 tp!1473659)))

(declare-fun b!5273441 () Bool)

(declare-fun tp!1473661 () Bool)

(declare-fun tp!1473658 () Bool)

(assert (=> b!5273441 (= e!3279520 (and tp!1473661 tp!1473658))))

(assert (=> b!5272294 (= tp!1473433 e!3279520)))

(declare-fun b!5273443 () Bool)

(declare-fun tp!1473660 () Bool)

(declare-fun tp!1473662 () Bool)

(assert (=> b!5273443 (= e!3279520 (and tp!1473660 tp!1473662))))

(declare-fun b!5273440 () Bool)

(assert (=> b!5273440 (= e!3279520 tp_is_empty!39039)))

(assert (= (and b!5272294 ((_ is ElementMatch!14893) (reg!15222 (regOne!30298 r!7292)))) b!5273440))

(assert (= (and b!5272294 ((_ is Concat!23738) (reg!15222 (regOne!30298 r!7292)))) b!5273441))

(assert (= (and b!5272294 ((_ is Star!14893) (reg!15222 (regOne!30298 r!7292)))) b!5273442))

(assert (= (and b!5272294 ((_ is Union!14893) (reg!15222 (regOne!30298 r!7292)))) b!5273443))

(declare-fun b!5273446 () Bool)

(declare-fun e!3279521 () Bool)

(declare-fun tp!1473664 () Bool)

(assert (=> b!5273446 (= e!3279521 tp!1473664)))

(declare-fun b!5273445 () Bool)

(declare-fun tp!1473666 () Bool)

(declare-fun tp!1473663 () Bool)

(assert (=> b!5273445 (= e!3279521 (and tp!1473666 tp!1473663))))

(assert (=> b!5272295 (= tp!1473434 e!3279521)))

(declare-fun b!5273447 () Bool)

(declare-fun tp!1473665 () Bool)

(declare-fun tp!1473667 () Bool)

(assert (=> b!5273447 (= e!3279521 (and tp!1473665 tp!1473667))))

(declare-fun b!5273444 () Bool)

(assert (=> b!5273444 (= e!3279521 tp_is_empty!39039)))

(assert (= (and b!5272295 ((_ is ElementMatch!14893) (regOne!30299 (regOne!30298 r!7292)))) b!5273444))

(assert (= (and b!5272295 ((_ is Concat!23738) (regOne!30299 (regOne!30298 r!7292)))) b!5273445))

(assert (= (and b!5272295 ((_ is Star!14893) (regOne!30299 (regOne!30298 r!7292)))) b!5273446))

(assert (= (and b!5272295 ((_ is Union!14893) (regOne!30299 (regOne!30298 r!7292)))) b!5273447))

(declare-fun b!5273450 () Bool)

(declare-fun e!3279522 () Bool)

(declare-fun tp!1473669 () Bool)

(assert (=> b!5273450 (= e!3279522 tp!1473669)))

(declare-fun b!5273449 () Bool)

(declare-fun tp!1473671 () Bool)

(declare-fun tp!1473668 () Bool)

(assert (=> b!5273449 (= e!3279522 (and tp!1473671 tp!1473668))))

(assert (=> b!5272295 (= tp!1473436 e!3279522)))

(declare-fun b!5273451 () Bool)

(declare-fun tp!1473670 () Bool)

(declare-fun tp!1473672 () Bool)

(assert (=> b!5273451 (= e!3279522 (and tp!1473670 tp!1473672))))

(declare-fun b!5273448 () Bool)

(assert (=> b!5273448 (= e!3279522 tp_is_empty!39039)))

(assert (= (and b!5272295 ((_ is ElementMatch!14893) (regTwo!30299 (regOne!30298 r!7292)))) b!5273448))

(assert (= (and b!5272295 ((_ is Concat!23738) (regTwo!30299 (regOne!30298 r!7292)))) b!5273449))

(assert (= (and b!5272295 ((_ is Star!14893) (regTwo!30299 (regOne!30298 r!7292)))) b!5273450))

(assert (= (and b!5272295 ((_ is Union!14893) (regTwo!30299 (regOne!30298 r!7292)))) b!5273451))

(declare-fun condSetEmpty!33767 () Bool)

(assert (=> setNonEmpty!33755 (= condSetEmpty!33767 (= setRest!33755 ((as const (Array Context!8554 Bool)) false)))))

(declare-fun setRes!33767 () Bool)

(assert (=> setNonEmpty!33755 (= tp!1473410 setRes!33767)))

(declare-fun setIsEmpty!33767 () Bool)

(assert (=> setIsEmpty!33767 setRes!33767))

(declare-fun tp!1473673 () Bool)

(declare-fun e!3279523 () Bool)

(declare-fun setNonEmpty!33767 () Bool)

(declare-fun setElem!33767 () Context!8554)

(assert (=> setNonEmpty!33767 (= setRes!33767 (and tp!1473673 (inv!80479 setElem!33767) e!3279523))))

(declare-fun setRest!33767 () (InoxSet Context!8554))

(assert (=> setNonEmpty!33767 (= setRest!33755 ((_ map or) (store ((as const (Array Context!8554 Bool)) false) setElem!33767 true) setRest!33767))))

(declare-fun b!5273452 () Bool)

(declare-fun tp!1473674 () Bool)

(assert (=> b!5273452 (= e!3279523 tp!1473674)))

(assert (= (and setNonEmpty!33755 condSetEmpty!33767) setIsEmpty!33767))

(assert (= (and setNonEmpty!33755 (not condSetEmpty!33767)) setNonEmpty!33767))

(assert (= setNonEmpty!33767 b!5273452))

(declare-fun m!6312272 () Bool)

(assert (=> setNonEmpty!33767 m!6312272))

(declare-fun b!5273455 () Bool)

(declare-fun e!3279524 () Bool)

(declare-fun tp!1473676 () Bool)

(assert (=> b!5273455 (= e!3279524 tp!1473676)))

(declare-fun b!5273454 () Bool)

(declare-fun tp!1473678 () Bool)

(declare-fun tp!1473675 () Bool)

(assert (=> b!5273454 (= e!3279524 (and tp!1473678 tp!1473675))))

(assert (=> b!5272301 (= tp!1473445 e!3279524)))

(declare-fun b!5273456 () Bool)

(declare-fun tp!1473677 () Bool)

(declare-fun tp!1473679 () Bool)

(assert (=> b!5273456 (= e!3279524 (and tp!1473677 tp!1473679))))

(declare-fun b!5273453 () Bool)

(assert (=> b!5273453 (= e!3279524 tp_is_empty!39039)))

(assert (= (and b!5272301 ((_ is ElementMatch!14893) (regOne!30298 (regOne!30299 r!7292)))) b!5273453))

(assert (= (and b!5272301 ((_ is Concat!23738) (regOne!30298 (regOne!30299 r!7292)))) b!5273454))

(assert (= (and b!5272301 ((_ is Star!14893) (regOne!30298 (regOne!30299 r!7292)))) b!5273455))

(assert (= (and b!5272301 ((_ is Union!14893) (regOne!30298 (regOne!30299 r!7292)))) b!5273456))

(declare-fun b!5273459 () Bool)

(declare-fun e!3279525 () Bool)

(declare-fun tp!1473681 () Bool)

(assert (=> b!5273459 (= e!3279525 tp!1473681)))

(declare-fun b!5273458 () Bool)

(declare-fun tp!1473683 () Bool)

(declare-fun tp!1473680 () Bool)

(assert (=> b!5273458 (= e!3279525 (and tp!1473683 tp!1473680))))

(assert (=> b!5272301 (= tp!1473442 e!3279525)))

(declare-fun b!5273460 () Bool)

(declare-fun tp!1473682 () Bool)

(declare-fun tp!1473684 () Bool)

(assert (=> b!5273460 (= e!3279525 (and tp!1473682 tp!1473684))))

(declare-fun b!5273457 () Bool)

(assert (=> b!5273457 (= e!3279525 tp_is_empty!39039)))

(assert (= (and b!5272301 ((_ is ElementMatch!14893) (regTwo!30298 (regOne!30299 r!7292)))) b!5273457))

(assert (= (and b!5272301 ((_ is Concat!23738) (regTwo!30298 (regOne!30299 r!7292)))) b!5273458))

(assert (= (and b!5272301 ((_ is Star!14893) (regTwo!30298 (regOne!30299 r!7292)))) b!5273459))

(assert (= (and b!5272301 ((_ is Union!14893) (regTwo!30298 (regOne!30299 r!7292)))) b!5273460))

(declare-fun b!5273461 () Bool)

(declare-fun e!3279526 () Bool)

(declare-fun tp!1473685 () Bool)

(declare-fun tp!1473686 () Bool)

(assert (=> b!5273461 (= e!3279526 (and tp!1473685 tp!1473686))))

(assert (=> b!5272271 (= tp!1473411 e!3279526)))

(assert (= (and b!5272271 ((_ is Cons!60855) (exprs!4777 setElem!33755))) b!5273461))

(declare-fun b!5273464 () Bool)

(declare-fun e!3279527 () Bool)

(declare-fun tp!1473688 () Bool)

(assert (=> b!5273464 (= e!3279527 tp!1473688)))

(declare-fun b!5273463 () Bool)

(declare-fun tp!1473690 () Bool)

(declare-fun tp!1473687 () Bool)

(assert (=> b!5273463 (= e!3279527 (and tp!1473690 tp!1473687))))

(assert (=> b!5272302 (= tp!1473443 e!3279527)))

(declare-fun b!5273465 () Bool)

(declare-fun tp!1473689 () Bool)

(declare-fun tp!1473691 () Bool)

(assert (=> b!5273465 (= e!3279527 (and tp!1473689 tp!1473691))))

(declare-fun b!5273462 () Bool)

(assert (=> b!5273462 (= e!3279527 tp_is_empty!39039)))

(assert (= (and b!5272302 ((_ is ElementMatch!14893) (reg!15222 (regOne!30299 r!7292)))) b!5273462))

(assert (= (and b!5272302 ((_ is Concat!23738) (reg!15222 (regOne!30299 r!7292)))) b!5273463))

(assert (= (and b!5272302 ((_ is Star!14893) (reg!15222 (regOne!30299 r!7292)))) b!5273464))

(assert (= (and b!5272302 ((_ is Union!14893) (reg!15222 (regOne!30299 r!7292)))) b!5273465))

(declare-fun b!5273468 () Bool)

(declare-fun e!3279528 () Bool)

(declare-fun tp!1473693 () Bool)

(assert (=> b!5273468 (= e!3279528 tp!1473693)))

(declare-fun b!5273467 () Bool)

(declare-fun tp!1473695 () Bool)

(declare-fun tp!1473692 () Bool)

(assert (=> b!5273467 (= e!3279528 (and tp!1473695 tp!1473692))))

(assert (=> b!5272266 (= tp!1473404 e!3279528)))

(declare-fun b!5273469 () Bool)

(declare-fun tp!1473694 () Bool)

(declare-fun tp!1473696 () Bool)

(assert (=> b!5273469 (= e!3279528 (and tp!1473694 tp!1473696))))

(declare-fun b!5273466 () Bool)

(assert (=> b!5273466 (= e!3279528 tp_is_empty!39039)))

(assert (= (and b!5272266 ((_ is ElementMatch!14893) (h!67303 (exprs!4777 setElem!33749)))) b!5273466))

(assert (= (and b!5272266 ((_ is Concat!23738) (h!67303 (exprs!4777 setElem!33749)))) b!5273467))

(assert (= (and b!5272266 ((_ is Star!14893) (h!67303 (exprs!4777 setElem!33749)))) b!5273468))

(assert (= (and b!5272266 ((_ is Union!14893) (h!67303 (exprs!4777 setElem!33749)))) b!5273469))

(declare-fun b!5273470 () Bool)

(declare-fun e!3279529 () Bool)

(declare-fun tp!1473697 () Bool)

(declare-fun tp!1473698 () Bool)

(assert (=> b!5273470 (= e!3279529 (and tp!1473697 tp!1473698))))

(assert (=> b!5272266 (= tp!1473405 e!3279529)))

(assert (= (and b!5272266 ((_ is Cons!60855) (t!374174 (exprs!4777 setElem!33749)))) b!5273470))

(declare-fun b!5273473 () Bool)

(declare-fun e!3279530 () Bool)

(declare-fun tp!1473700 () Bool)

(assert (=> b!5273473 (= e!3279530 tp!1473700)))

(declare-fun b!5273472 () Bool)

(declare-fun tp!1473702 () Bool)

(declare-fun tp!1473699 () Bool)

(assert (=> b!5273472 (= e!3279530 (and tp!1473702 tp!1473699))))

(assert (=> b!5272307 (= tp!1473449 e!3279530)))

(declare-fun b!5273474 () Bool)

(declare-fun tp!1473701 () Bool)

(declare-fun tp!1473703 () Bool)

(assert (=> b!5273474 (= e!3279530 (and tp!1473701 tp!1473703))))

(declare-fun b!5273471 () Bool)

(assert (=> b!5273471 (= e!3279530 tp_is_empty!39039)))

(assert (= (and b!5272307 ((_ is ElementMatch!14893) (regOne!30299 (regTwo!30299 r!7292)))) b!5273471))

(assert (= (and b!5272307 ((_ is Concat!23738) (regOne!30299 (regTwo!30299 r!7292)))) b!5273472))

(assert (= (and b!5272307 ((_ is Star!14893) (regOne!30299 (regTwo!30299 r!7292)))) b!5273473))

(assert (= (and b!5272307 ((_ is Union!14893) (regOne!30299 (regTwo!30299 r!7292)))) b!5273474))

(declare-fun b!5273477 () Bool)

(declare-fun e!3279531 () Bool)

(declare-fun tp!1473705 () Bool)

(assert (=> b!5273477 (= e!3279531 tp!1473705)))

(declare-fun b!5273476 () Bool)

(declare-fun tp!1473707 () Bool)

(declare-fun tp!1473704 () Bool)

(assert (=> b!5273476 (= e!3279531 (and tp!1473707 tp!1473704))))

(assert (=> b!5272307 (= tp!1473451 e!3279531)))

(declare-fun b!5273478 () Bool)

(declare-fun tp!1473706 () Bool)

(declare-fun tp!1473708 () Bool)

(assert (=> b!5273478 (= e!3279531 (and tp!1473706 tp!1473708))))

(declare-fun b!5273475 () Bool)

(assert (=> b!5273475 (= e!3279531 tp_is_empty!39039)))

(assert (= (and b!5272307 ((_ is ElementMatch!14893) (regTwo!30299 (regTwo!30299 r!7292)))) b!5273475))

(assert (= (and b!5272307 ((_ is Concat!23738) (regTwo!30299 (regTwo!30299 r!7292)))) b!5273476))

(assert (= (and b!5272307 ((_ is Star!14893) (regTwo!30299 (regTwo!30299 r!7292)))) b!5273477))

(assert (= (and b!5272307 ((_ is Union!14893) (regTwo!30299 (regTwo!30299 r!7292)))) b!5273478))

(declare-fun b!5273481 () Bool)

(declare-fun e!3279532 () Bool)

(declare-fun tp!1473710 () Bool)

(assert (=> b!5273481 (= e!3279532 tp!1473710)))

(declare-fun b!5273480 () Bool)

(declare-fun tp!1473712 () Bool)

(declare-fun tp!1473709 () Bool)

(assert (=> b!5273480 (= e!3279532 (and tp!1473712 tp!1473709))))

(assert (=> b!5272298 (= tp!1473438 e!3279532)))

(declare-fun b!5273482 () Bool)

(declare-fun tp!1473711 () Bool)

(declare-fun tp!1473713 () Bool)

(assert (=> b!5273482 (= e!3279532 (and tp!1473711 tp!1473713))))

(declare-fun b!5273479 () Bool)

(assert (=> b!5273479 (= e!3279532 tp_is_empty!39039)))

(assert (= (and b!5272298 ((_ is ElementMatch!14893) (reg!15222 (regTwo!30298 r!7292)))) b!5273479))

(assert (= (and b!5272298 ((_ is Concat!23738) (reg!15222 (regTwo!30298 r!7292)))) b!5273480))

(assert (= (and b!5272298 ((_ is Star!14893) (reg!15222 (regTwo!30298 r!7292)))) b!5273481))

(assert (= (and b!5272298 ((_ is Union!14893) (reg!15222 (regTwo!30298 r!7292)))) b!5273482))

(declare-fun b!5273485 () Bool)

(declare-fun e!3279533 () Bool)

(declare-fun tp!1473715 () Bool)

(assert (=> b!5273485 (= e!3279533 tp!1473715)))

(declare-fun b!5273484 () Bool)

(declare-fun tp!1473717 () Bool)

(declare-fun tp!1473714 () Bool)

(assert (=> b!5273484 (= e!3279533 (and tp!1473717 tp!1473714))))

(assert (=> b!5272299 (= tp!1473439 e!3279533)))

(declare-fun b!5273486 () Bool)

(declare-fun tp!1473716 () Bool)

(declare-fun tp!1473718 () Bool)

(assert (=> b!5273486 (= e!3279533 (and tp!1473716 tp!1473718))))

(declare-fun b!5273483 () Bool)

(assert (=> b!5273483 (= e!3279533 tp_is_empty!39039)))

(assert (= (and b!5272299 ((_ is ElementMatch!14893) (regOne!30299 (regTwo!30298 r!7292)))) b!5273483))

(assert (= (and b!5272299 ((_ is Concat!23738) (regOne!30299 (regTwo!30298 r!7292)))) b!5273484))

(assert (= (and b!5272299 ((_ is Star!14893) (regOne!30299 (regTwo!30298 r!7292)))) b!5273485))

(assert (= (and b!5272299 ((_ is Union!14893) (regOne!30299 (regTwo!30298 r!7292)))) b!5273486))

(declare-fun b!5273489 () Bool)

(declare-fun e!3279534 () Bool)

(declare-fun tp!1473720 () Bool)

(assert (=> b!5273489 (= e!3279534 tp!1473720)))

(declare-fun b!5273488 () Bool)

(declare-fun tp!1473722 () Bool)

(declare-fun tp!1473719 () Bool)

(assert (=> b!5273488 (= e!3279534 (and tp!1473722 tp!1473719))))

(assert (=> b!5272299 (= tp!1473441 e!3279534)))

(declare-fun b!5273490 () Bool)

(declare-fun tp!1473721 () Bool)

(declare-fun tp!1473723 () Bool)

(assert (=> b!5273490 (= e!3279534 (and tp!1473721 tp!1473723))))

(declare-fun b!5273487 () Bool)

(assert (=> b!5273487 (= e!3279534 tp_is_empty!39039)))

(assert (= (and b!5272299 ((_ is ElementMatch!14893) (regTwo!30299 (regTwo!30298 r!7292)))) b!5273487))

(assert (= (and b!5272299 ((_ is Concat!23738) (regTwo!30299 (regTwo!30298 r!7292)))) b!5273488))

(assert (= (and b!5272299 ((_ is Star!14893) (regTwo!30299 (regTwo!30298 r!7292)))) b!5273489))

(assert (= (and b!5272299 ((_ is Union!14893) (regTwo!30299 (regTwo!30298 r!7292)))) b!5273490))

(declare-fun b!5273492 () Bool)

(declare-fun e!3279536 () Bool)

(declare-fun tp!1473724 () Bool)

(assert (=> b!5273492 (= e!3279536 tp!1473724)))

(declare-fun tp!1473725 () Bool)

(declare-fun b!5273491 () Bool)

(declare-fun e!3279535 () Bool)

(assert (=> b!5273491 (= e!3279535 (and (inv!80479 (h!67304 (t!374175 (t!374175 zl!343)))) e!3279536 tp!1473725))))

(assert (=> b!5272314 (= tp!1473457 e!3279535)))

(assert (= b!5273491 b!5273492))

(assert (= (and b!5272314 ((_ is Cons!60856) (t!374175 (t!374175 zl!343)))) b!5273491))

(declare-fun m!6312274 () Bool)

(assert (=> b!5273491 m!6312274))

(declare-fun b!5273495 () Bool)

(declare-fun e!3279537 () Bool)

(declare-fun tp!1473727 () Bool)

(assert (=> b!5273495 (= e!3279537 tp!1473727)))

(declare-fun b!5273494 () Bool)

(declare-fun tp!1473729 () Bool)

(declare-fun tp!1473726 () Bool)

(assert (=> b!5273494 (= e!3279537 (and tp!1473729 tp!1473726))))

(assert (=> b!5272305 (= tp!1473450 e!3279537)))

(declare-fun b!5273496 () Bool)

(declare-fun tp!1473728 () Bool)

(declare-fun tp!1473730 () Bool)

(assert (=> b!5273496 (= e!3279537 (and tp!1473728 tp!1473730))))

(declare-fun b!5273493 () Bool)

(assert (=> b!5273493 (= e!3279537 tp_is_empty!39039)))

(assert (= (and b!5272305 ((_ is ElementMatch!14893) (regOne!30298 (regTwo!30299 r!7292)))) b!5273493))

(assert (= (and b!5272305 ((_ is Concat!23738) (regOne!30298 (regTwo!30299 r!7292)))) b!5273494))

(assert (= (and b!5272305 ((_ is Star!14893) (regOne!30298 (regTwo!30299 r!7292)))) b!5273495))

(assert (= (and b!5272305 ((_ is Union!14893) (regOne!30298 (regTwo!30299 r!7292)))) b!5273496))

(declare-fun b!5273499 () Bool)

(declare-fun e!3279538 () Bool)

(declare-fun tp!1473732 () Bool)

(assert (=> b!5273499 (= e!3279538 tp!1473732)))

(declare-fun b!5273498 () Bool)

(declare-fun tp!1473734 () Bool)

(declare-fun tp!1473731 () Bool)

(assert (=> b!5273498 (= e!3279538 (and tp!1473734 tp!1473731))))

(assert (=> b!5272305 (= tp!1473447 e!3279538)))

(declare-fun b!5273500 () Bool)

(declare-fun tp!1473733 () Bool)

(declare-fun tp!1473735 () Bool)

(assert (=> b!5273500 (= e!3279538 (and tp!1473733 tp!1473735))))

(declare-fun b!5273497 () Bool)

(assert (=> b!5273497 (= e!3279538 tp_is_empty!39039)))

(assert (= (and b!5272305 ((_ is ElementMatch!14893) (regTwo!30298 (regTwo!30299 r!7292)))) b!5273497))

(assert (= (and b!5272305 ((_ is Concat!23738) (regTwo!30298 (regTwo!30299 r!7292)))) b!5273498))

(assert (= (and b!5272305 ((_ is Star!14893) (regTwo!30298 (regTwo!30299 r!7292)))) b!5273499))

(assert (= (and b!5272305 ((_ is Union!14893) (regTwo!30298 (regTwo!30299 r!7292)))) b!5273500))

(declare-fun b!5273501 () Bool)

(declare-fun e!3279539 () Bool)

(declare-fun tp!1473736 () Bool)

(assert (=> b!5273501 (= e!3279539 (and tp_is_empty!39039 tp!1473736))))

(assert (=> b!5272290 (= tp!1473429 e!3279539)))

(assert (= (and b!5272290 ((_ is Cons!60854) (t!374173 (t!374173 s!2326)))) b!5273501))

(declare-fun b!5273504 () Bool)

(declare-fun e!3279540 () Bool)

(declare-fun tp!1473738 () Bool)

(assert (=> b!5273504 (= e!3279540 tp!1473738)))

(declare-fun b!5273503 () Bool)

(declare-fun tp!1473740 () Bool)

(declare-fun tp!1473737 () Bool)

(assert (=> b!5273503 (= e!3279540 (and tp!1473740 tp!1473737))))

(assert (=> b!5272306 (= tp!1473448 e!3279540)))

(declare-fun b!5273505 () Bool)

(declare-fun tp!1473739 () Bool)

(declare-fun tp!1473741 () Bool)

(assert (=> b!5273505 (= e!3279540 (and tp!1473739 tp!1473741))))

(declare-fun b!5273502 () Bool)

(assert (=> b!5273502 (= e!3279540 tp_is_empty!39039)))

(assert (= (and b!5272306 ((_ is ElementMatch!14893) (reg!15222 (regTwo!30299 r!7292)))) b!5273502))

(assert (= (and b!5272306 ((_ is Concat!23738) (reg!15222 (regTwo!30299 r!7292)))) b!5273503))

(assert (= (and b!5272306 ((_ is Star!14893) (reg!15222 (regTwo!30299 r!7292)))) b!5273504))

(assert (= (and b!5272306 ((_ is Union!14893) (reg!15222 (regTwo!30299 r!7292)))) b!5273505))

(declare-fun b!5273508 () Bool)

(declare-fun e!3279541 () Bool)

(declare-fun tp!1473743 () Bool)

(assert (=> b!5273508 (= e!3279541 tp!1473743)))

(declare-fun b!5273507 () Bool)

(declare-fun tp!1473745 () Bool)

(declare-fun tp!1473742 () Bool)

(assert (=> b!5273507 (= e!3279541 (and tp!1473745 tp!1473742))))

(assert (=> b!5272297 (= tp!1473440 e!3279541)))

(declare-fun b!5273509 () Bool)

(declare-fun tp!1473744 () Bool)

(declare-fun tp!1473746 () Bool)

(assert (=> b!5273509 (= e!3279541 (and tp!1473744 tp!1473746))))

(declare-fun b!5273506 () Bool)

(assert (=> b!5273506 (= e!3279541 tp_is_empty!39039)))

(assert (= (and b!5272297 ((_ is ElementMatch!14893) (regOne!30298 (regTwo!30298 r!7292)))) b!5273506))

(assert (= (and b!5272297 ((_ is Concat!23738) (regOne!30298 (regTwo!30298 r!7292)))) b!5273507))

(assert (= (and b!5272297 ((_ is Star!14893) (regOne!30298 (regTwo!30298 r!7292)))) b!5273508))

(assert (= (and b!5272297 ((_ is Union!14893) (regOne!30298 (regTwo!30298 r!7292)))) b!5273509))

(declare-fun b!5273512 () Bool)

(declare-fun e!3279542 () Bool)

(declare-fun tp!1473748 () Bool)

(assert (=> b!5273512 (= e!3279542 tp!1473748)))

(declare-fun b!5273511 () Bool)

(declare-fun tp!1473750 () Bool)

(declare-fun tp!1473747 () Bool)

(assert (=> b!5273511 (= e!3279542 (and tp!1473750 tp!1473747))))

(assert (=> b!5272297 (= tp!1473437 e!3279542)))

(declare-fun b!5273513 () Bool)

(declare-fun tp!1473749 () Bool)

(declare-fun tp!1473751 () Bool)

(assert (=> b!5273513 (= e!3279542 (and tp!1473749 tp!1473751))))

(declare-fun b!5273510 () Bool)

(assert (=> b!5273510 (= e!3279542 tp_is_empty!39039)))

(assert (= (and b!5272297 ((_ is ElementMatch!14893) (regTwo!30298 (regTwo!30298 r!7292)))) b!5273510))

(assert (= (and b!5272297 ((_ is Concat!23738) (regTwo!30298 (regTwo!30298 r!7292)))) b!5273511))

(assert (= (and b!5272297 ((_ is Star!14893) (regTwo!30298 (regTwo!30298 r!7292)))) b!5273512))

(assert (= (and b!5272297 ((_ is Union!14893) (regTwo!30298 (regTwo!30298 r!7292)))) b!5273513))

(declare-fun b!5273516 () Bool)

(declare-fun e!3279543 () Bool)

(declare-fun tp!1473753 () Bool)

(assert (=> b!5273516 (= e!3279543 tp!1473753)))

(declare-fun b!5273515 () Bool)

(declare-fun tp!1473755 () Bool)

(declare-fun tp!1473752 () Bool)

(assert (=> b!5273515 (= e!3279543 (and tp!1473755 tp!1473752))))

(assert (=> b!5272291 (= tp!1473430 e!3279543)))

(declare-fun b!5273517 () Bool)

(declare-fun tp!1473754 () Bool)

(declare-fun tp!1473756 () Bool)

(assert (=> b!5273517 (= e!3279543 (and tp!1473754 tp!1473756))))

(declare-fun b!5273514 () Bool)

(assert (=> b!5273514 (= e!3279543 tp_is_empty!39039)))

(assert (= (and b!5272291 ((_ is ElementMatch!14893) (h!67303 (exprs!4777 (h!67304 zl!343))))) b!5273514))

(assert (= (and b!5272291 ((_ is Concat!23738) (h!67303 (exprs!4777 (h!67304 zl!343))))) b!5273515))

(assert (= (and b!5272291 ((_ is Star!14893) (h!67303 (exprs!4777 (h!67304 zl!343))))) b!5273516))

(assert (= (and b!5272291 ((_ is Union!14893) (h!67303 (exprs!4777 (h!67304 zl!343))))) b!5273517))

(declare-fun b!5273518 () Bool)

(declare-fun e!3279544 () Bool)

(declare-fun tp!1473757 () Bool)

(declare-fun tp!1473758 () Bool)

(assert (=> b!5273518 (= e!3279544 (and tp!1473757 tp!1473758))))

(assert (=> b!5272291 (= tp!1473431 e!3279544)))

(assert (= (and b!5272291 ((_ is Cons!60855) (t!374174 (exprs!4777 (h!67304 zl!343))))) b!5273518))

(declare-fun b!5273519 () Bool)

(declare-fun e!3279545 () Bool)

(declare-fun tp!1473759 () Bool)

(declare-fun tp!1473760 () Bool)

(assert (=> b!5273519 (= e!3279545 (and tp!1473759 tp!1473760))))

(assert (=> b!5272315 (= tp!1473456 e!3279545)))

(assert (= (and b!5272315 ((_ is Cons!60855) (exprs!4777 (h!67304 (t!374175 zl!343))))) b!5273519))

(declare-fun b!5273522 () Bool)

(declare-fun e!3279546 () Bool)

(declare-fun tp!1473762 () Bool)

(assert (=> b!5273522 (= e!3279546 tp!1473762)))

(declare-fun b!5273521 () Bool)

(declare-fun tp!1473764 () Bool)

(declare-fun tp!1473761 () Bool)

(assert (=> b!5273521 (= e!3279546 (and tp!1473764 tp!1473761))))

(assert (=> b!5272283 (= tp!1473425 e!3279546)))

(declare-fun b!5273523 () Bool)

(declare-fun tp!1473763 () Bool)

(declare-fun tp!1473765 () Bool)

(assert (=> b!5273523 (= e!3279546 (and tp!1473763 tp!1473765))))

(declare-fun b!5273520 () Bool)

(assert (=> b!5273520 (= e!3279546 tp_is_empty!39039)))

(assert (= (and b!5272283 ((_ is ElementMatch!14893) (regOne!30298 (reg!15222 r!7292)))) b!5273520))

(assert (= (and b!5272283 ((_ is Concat!23738) (regOne!30298 (reg!15222 r!7292)))) b!5273521))

(assert (= (and b!5272283 ((_ is Star!14893) (regOne!30298 (reg!15222 r!7292)))) b!5273522))

(assert (= (and b!5272283 ((_ is Union!14893) (regOne!30298 (reg!15222 r!7292)))) b!5273523))

(declare-fun b!5273526 () Bool)

(declare-fun e!3279547 () Bool)

(declare-fun tp!1473767 () Bool)

(assert (=> b!5273526 (= e!3279547 tp!1473767)))

(declare-fun b!5273525 () Bool)

(declare-fun tp!1473769 () Bool)

(declare-fun tp!1473766 () Bool)

(assert (=> b!5273525 (= e!3279547 (and tp!1473769 tp!1473766))))

(assert (=> b!5272283 (= tp!1473422 e!3279547)))

(declare-fun b!5273527 () Bool)

(declare-fun tp!1473768 () Bool)

(declare-fun tp!1473770 () Bool)

(assert (=> b!5273527 (= e!3279547 (and tp!1473768 tp!1473770))))

(declare-fun b!5273524 () Bool)

(assert (=> b!5273524 (= e!3279547 tp_is_empty!39039)))

(assert (= (and b!5272283 ((_ is ElementMatch!14893) (regTwo!30298 (reg!15222 r!7292)))) b!5273524))

(assert (= (and b!5272283 ((_ is Concat!23738) (regTwo!30298 (reg!15222 r!7292)))) b!5273525))

(assert (= (and b!5272283 ((_ is Star!14893) (regTwo!30298 (reg!15222 r!7292)))) b!5273526))

(assert (= (and b!5272283 ((_ is Union!14893) (regTwo!30298 (reg!15222 r!7292)))) b!5273527))

(declare-fun b!5273530 () Bool)

(declare-fun e!3279548 () Bool)

(declare-fun tp!1473772 () Bool)

(assert (=> b!5273530 (= e!3279548 tp!1473772)))

(declare-fun b!5273529 () Bool)

(declare-fun tp!1473774 () Bool)

(declare-fun tp!1473771 () Bool)

(assert (=> b!5273529 (= e!3279548 (and tp!1473774 tp!1473771))))

(assert (=> b!5272284 (= tp!1473423 e!3279548)))

(declare-fun b!5273531 () Bool)

(declare-fun tp!1473773 () Bool)

(declare-fun tp!1473775 () Bool)

(assert (=> b!5273531 (= e!3279548 (and tp!1473773 tp!1473775))))

(declare-fun b!5273528 () Bool)

(assert (=> b!5273528 (= e!3279548 tp_is_empty!39039)))

(assert (= (and b!5272284 ((_ is ElementMatch!14893) (reg!15222 (reg!15222 r!7292)))) b!5273528))

(assert (= (and b!5272284 ((_ is Concat!23738) (reg!15222 (reg!15222 r!7292)))) b!5273529))

(assert (= (and b!5272284 ((_ is Star!14893) (reg!15222 (reg!15222 r!7292)))) b!5273530))

(assert (= (and b!5272284 ((_ is Union!14893) (reg!15222 (reg!15222 r!7292)))) b!5273531))

(declare-fun b!5273534 () Bool)

(declare-fun e!3279549 () Bool)

(declare-fun tp!1473777 () Bool)

(assert (=> b!5273534 (= e!3279549 tp!1473777)))

(declare-fun b!5273533 () Bool)

(declare-fun tp!1473779 () Bool)

(declare-fun tp!1473776 () Bool)

(assert (=> b!5273533 (= e!3279549 (and tp!1473779 tp!1473776))))

(assert (=> b!5272285 (= tp!1473424 e!3279549)))

(declare-fun b!5273535 () Bool)

(declare-fun tp!1473778 () Bool)

(declare-fun tp!1473780 () Bool)

(assert (=> b!5273535 (= e!3279549 (and tp!1473778 tp!1473780))))

(declare-fun b!5273532 () Bool)

(assert (=> b!5273532 (= e!3279549 tp_is_empty!39039)))

(assert (= (and b!5272285 ((_ is ElementMatch!14893) (regOne!30299 (reg!15222 r!7292)))) b!5273532))

(assert (= (and b!5272285 ((_ is Concat!23738) (regOne!30299 (reg!15222 r!7292)))) b!5273533))

(assert (= (and b!5272285 ((_ is Star!14893) (regOne!30299 (reg!15222 r!7292)))) b!5273534))

(assert (= (and b!5272285 ((_ is Union!14893) (regOne!30299 (reg!15222 r!7292)))) b!5273535))

(declare-fun b!5273538 () Bool)

(declare-fun e!3279550 () Bool)

(declare-fun tp!1473782 () Bool)

(assert (=> b!5273538 (= e!3279550 tp!1473782)))

(declare-fun b!5273537 () Bool)

(declare-fun tp!1473784 () Bool)

(declare-fun tp!1473781 () Bool)

(assert (=> b!5273537 (= e!3279550 (and tp!1473784 tp!1473781))))

(assert (=> b!5272285 (= tp!1473426 e!3279550)))

(declare-fun b!5273539 () Bool)

(declare-fun tp!1473783 () Bool)

(declare-fun tp!1473785 () Bool)

(assert (=> b!5273539 (= e!3279550 (and tp!1473783 tp!1473785))))

(declare-fun b!5273536 () Bool)

(assert (=> b!5273536 (= e!3279550 tp_is_empty!39039)))

(assert (= (and b!5272285 ((_ is ElementMatch!14893) (regTwo!30299 (reg!15222 r!7292)))) b!5273536))

(assert (= (and b!5272285 ((_ is Concat!23738) (regTwo!30299 (reg!15222 r!7292)))) b!5273537))

(assert (= (and b!5272285 ((_ is Star!14893) (regTwo!30299 (reg!15222 r!7292)))) b!5273538))

(assert (= (and b!5272285 ((_ is Union!14893) (regTwo!30299 (reg!15222 r!7292)))) b!5273539))

(declare-fun b_lambda!203405 () Bool)

(assert (= b_lambda!203403 (or d!1696466 b_lambda!203405)))

(declare-fun bs!1221832 () Bool)

(declare-fun d!1697124 () Bool)

(assert (= bs!1221832 (and d!1697124 d!1696466)))

(assert (=> bs!1221832 (= (dynLambda!24048 lambda!265989 (h!67303 (exprs!4777 setElem!33749))) (validRegex!6629 (h!67303 (exprs!4777 setElem!33749))))))

(declare-fun m!6312276 () Bool)

(assert (=> bs!1221832 m!6312276))

(assert (=> b!5273422 d!1697124))

(declare-fun b_lambda!203407 () Bool)

(assert (= b_lambda!203401 (or b!5271503 b_lambda!203407)))

(assert (=> d!1697110 d!1696606))

(declare-fun b_lambda!203409 () Bool)

(assert (= b_lambda!203379 (or d!1696580 b_lambda!203409)))

(declare-fun bs!1221833 () Bool)

(declare-fun d!1697126 () Bool)

(assert (= bs!1221833 (and d!1697126 d!1696580)))

(assert (=> bs!1221833 (= (dynLambda!24048 lambda!266021 (h!67303 lt!2156893)) (validRegex!6629 (h!67303 lt!2156893)))))

(declare-fun m!6312278 () Bool)

(assert (=> bs!1221833 m!6312278))

(assert (=> b!5272957 d!1697126))

(declare-fun b_lambda!203411 () Bool)

(assert (= b_lambda!203373 (or b!5271503 b_lambda!203411)))

(assert (=> d!1696886 d!1696604))

(declare-fun b_lambda!203413 () Bool)

(assert (= b_lambda!203399 (or d!1696578 b_lambda!203413)))

(declare-fun bs!1221834 () Bool)

(declare-fun d!1697128 () Bool)

(assert (= bs!1221834 (and d!1697128 d!1696578)))

(assert (=> bs!1221834 (= (dynLambda!24048 lambda!266018 (h!67303 (unfocusZipperList!335 zl!343))) (validRegex!6629 (h!67303 (unfocusZipperList!335 zl!343))))))

(declare-fun m!6312280 () Bool)

(assert (=> bs!1221834 m!6312280))

(assert (=> b!5273354 d!1697128))

(declare-fun b_lambda!203415 () Bool)

(assert (= b_lambda!203397 (or b!5271503 b_lambda!203415)))

(assert (=> d!1696990 d!1696608))

(declare-fun b_lambda!203417 () Bool)

(assert (= b_lambda!203367 (or d!1696552 b_lambda!203417)))

(declare-fun bs!1221835 () Bool)

(declare-fun d!1697130 () Bool)

(assert (= bs!1221835 (and d!1697130 d!1696552)))

(assert (=> bs!1221835 (= (dynLambda!24048 lambda!266009 (h!67303 (exprs!4777 (h!67304 zl!343)))) (validRegex!6629 (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(declare-fun m!6312282 () Bool)

(assert (=> bs!1221835 m!6312282))

(assert (=> b!5272720 d!1697130))

(declare-fun b_lambda!203419 () Bool)

(assert (= b_lambda!203371 (or d!1696582 b_lambda!203419)))

(declare-fun bs!1221836 () Bool)

(declare-fun d!1697132 () Bool)

(assert (= bs!1221836 (and d!1697132 d!1696582)))

(assert (=> bs!1221836 (= (dynLambda!24048 lambda!266024 (h!67303 (exprs!4777 (h!67304 zl!343)))) (validRegex!6629 (h!67303 (exprs!4777 (h!67304 zl!343)))))))

(assert (=> bs!1221836 m!6312282))

(assert (=> b!5272843 d!1697132))

(check-sat (not b!5273449) (not b!5273332) (not b!5273300) (not d!1696934) (not b!5273521) (not d!1696964) (not bm!374927) (not b!5273323) (not bm!374859) (not d!1697000) (not d!1697080) (not b!5273496) (not b!5272856) (not b!5273468) (not d!1697122) (not b!5273412) (not b!5272775) (not b!5273154) (not b!5273336) (not b!5273420) (not b!5273442) (not b!5273533) (not d!1696754) (not d!1696854) (not b!5272956) (not b!5273509) (not bm!374928) (not b!5272689) (not b!5273434) (not d!1696844) (not bm!374912) (not b!5272738) (not d!1697064) (not b!5273522) (not d!1697012) (not d!1697058) (not b!5273519) (not bm!374966) (not b!5273302) (not d!1697070) (not bm!374916) (not bm!374863) (not bm!374945) (not b!5273463) (not b!5273069) (not b!5273437) (not b!5272958) (not d!1697048) (not b!5272649) (not b!5272608) (not b!5273464) (not b!5273078) (not b!5272609) (not b!5273075) (not b!5273534) (not d!1696860) (not b!5272641) (not b!5273452) (not b!5272820) (not b!5273223) (not b!5272858) (not d!1696842) (not b!5273517) (not b!5273469) (not b!5273473) (not b!5273461) (not b!5273494) (not b!5272892) (not b!5273352) (not b!5273204) (not b!5273495) (not bs!1221834) (not b!5273034) (not b!5273480) (not bm!374969) (not b!5273458) (not d!1696988) (not d!1697106) (not bm!374978) (not b!5273370) (not b!5273500) (not b!5273407) (not b!5273425) (not b!5273208) (not b!5273484) (not bm!374885) (not bm!374961) (not b!5272645) (not d!1697038) (not b!5272852) (not b!5273515) (not d!1696968) (not b!5273372) (not d!1697116) (not b!5273200) (not bm!374946) (not b!5273341) (not b!5273292) (not d!1697030) (not bm!374867) (not b!5272895) (not b!5272647) (not b!5273490) (not b!5272839) (not b!5272727) (not bm!374896) (not bm!374955) (not b_lambda!203353) (not b!5273344) (not bm!374846) (not b!5273513) (not b!5272955) (not b!5273537) (not bm!374959) (not bs!1221836) (not bm!374951) (not d!1696930) (not b!5273491) (not b!5273538) (not b!5273526) (not d!1697006) (not d!1697036) (not b!5272813) (not b!5272783) (not b!5273447) (not bm!374983) (not d!1696994) (not bm!374962) (not b!5273511) (not b!5273507) (not b!5273455) (not bm!374957) (not b!5273516) (not bm!374950) (not b!5273465) (not b!5273535) (not bm!374890) (not b!5273429) (not b!5273421) (not b!5273527) (not b!5272889) (not b!5273293) (not b!5272624) (not bm!374984) (not b!5272918) (not b_lambda!203413) (not d!1696928) (not b!5273505) (not b!5273499) (not d!1696984) (not b!5272947) (not bm!374894) (not bm!374925) (not b!5273306) (not b!5273305) (not b!5272990) (not b!5273303) tp_is_empty!39039 (not d!1696992) (not b!5273295) (not d!1696886) (not bm!374841) (not b!5273207) (not b!5273423) (not b!5272822) (not bm!374940) (not b!5273340) (not bs!1221833) (not bm!374830) (not b!5273459) (not d!1697026) (not b!5273210) (not b!5273247) (not d!1697034) (not b!5272855) (not b!5273283) (not b!5273529) (not bm!374949) (not bm!374948) (not b!5273451) (not b_lambda!203415) (not b!5273489) (not b!5273525) (not b!5273281) (not b!5272968) (not b!5272773) (not bm!374888) (not bm!374865) (not d!1696880) (not b!5273380) (not b!5273290) (not b!5273198) (not b!5273218) (not bm!374972) (not b!5273504) (not b!5273299) (not b!5273272) (not b_lambda!203351) (not bm!374952) (not b!5272721) (not b!5273472) (not b_lambda!203419) (not d!1697102) (not b!5273081) (not b!5272812) (not d!1697054) (not b!5273445) (not d!1697032) (not b!5273446) (not b!5272989) (not d!1696856) (not b!5273486) (not d!1696970) (not bm!374899) (not setNonEmpty!33765) (not bm!374922) (not b!5272893) (not b!5273481) (not d!1696826) (not b!5273316) (not d!1697046) (not b!5272912) (not b!5273284) (not d!1697110) (not b!5272821) (not b!5273477) (not b!5273304) (not bm!374974) (not b!5272844) (not b!5273474) (not b!5273298) (not bs!1221835) (not b!5273478) (not b!5273430) (not bm!374913) (not b!5273426) (not bm!374935) (not b_lambda!203405) (not d!1696966) (not b!5272625) (not b!5272771) (not b!5273503) (not d!1696850) (not d!1697092) (not b!5273331) (not b!5273512) (not b_lambda!203409) (not b!5273015) (not b_lambda!203417) (not bm!374973) (not d!1696986) (not bm!374831) (not bs!1221832) (not b!5273439) (not b!5273427) (not bm!374900) (not b!5273433) (not b!5273343) (not d!1697112) (not b!5273456) (not b!5272737) (not b_lambda!203407) (not b!5273523) (not d!1697114) (not bm!374982) (not b!5273355) (not b!5273488) (not bm!374958) (not b!5273443) (not d!1697062) (not b!5273310) (not b!5273467) (not bm!374910) (not b!5272782) (not b!5273438) (not bm!374947) (not d!1696942) (not d!1696892) (not d!1696758) (not b!5273498) (not b!5272785) (not b!5272846) (not bm!374987) (not b!5273482) (not b!5273435) (not b!5273288) (not bm!374891) (not b!5272779) (not b!5273470) (not b!5272885) (not b!5273079) (not bm!374924) (not b!5273359) (not bm!374844) (not b!5273476) (not b!5273185) (not bm!374975) (not bm!374968) (not b!5273291) (not bm!374989) (not bm!374918) (not b!5272648) (not setNonEmpty!33763) (not b!5272650) (not d!1696834) (not b!5273450) (not b_lambda!203355) (not d!1696756) (not b!5272793) (not bm!374856) (not b!5273508) (not b!5272807) (not b!5273287) (not b!5273431) (not bm!374874) (not b!5272642) (not b!5273485) (not d!1696990) (not bm!374932) (not bm!374934) (not b!5273392) (not b!5273501) (not b!5273071) (not d!1697002) (not bm!374898) (not b!5273335) (not bm!374971) (not b!5273460) (not b!5273539) (not b!5273530) (not d!1697050) (not bm!374875) (not bm!374938) (not d!1697004) (not b!5272831) (not d!1696864) (not bm!374810) (not setNonEmpty!33766) (not bm!374864) (not setNonEmpty!33767) (not d!1696822) (not bm!374858) (not b!5272848) (not d!1696774) (not b!5273035) (not b!5273271) (not bm!374963) (not b!5273369) (not b!5272959) (not bm!374929) (not b!5273518) (not d!1697120) (not b!5273174) (not bm!374980) (not b!5272883) (not b!5273441) (not b!5273531) (not b_lambda!203411) (not b!5273492) (not b!5273234) (not b!5273454) (not bm!374919))
(check-sat)
