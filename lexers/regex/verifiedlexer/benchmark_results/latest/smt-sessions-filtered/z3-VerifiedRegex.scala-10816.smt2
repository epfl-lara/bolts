; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!555618 () Bool)

(assert start!555618)

(declare-fun b!5260618 () Bool)

(assert (=> b!5260618 true))

(assert (=> b!5260618 true))

(declare-fun lambda!265206 () Int)

(declare-fun lambda!265205 () Int)

(assert (=> b!5260618 (not (= lambda!265206 lambda!265205))))

(assert (=> b!5260618 true))

(assert (=> b!5260618 true))

(declare-fun b!5260610 () Bool)

(assert (=> b!5260610 true))

(declare-fun b!5260602 () Bool)

(declare-fun res!2232326 () Bool)

(declare-fun e!3272354 () Bool)

(assert (=> b!5260602 (=> res!2232326 e!3272354)))

(declare-datatypes ((C!30028 0))(
  ( (C!30029 (val!24716 Int)) )
))
(declare-datatypes ((Regex!14879 0))(
  ( (ElementMatch!14879 (c!910565 C!30028)) (Concat!23724 (regOne!30270 Regex!14879) (regTwo!30270 Regex!14879)) (EmptyExpr!14879) (Star!14879 (reg!15208 Regex!14879)) (EmptyLang!14879) (Union!14879 (regOne!30271 Regex!14879) (regTwo!30271 Regex!14879)) )
))
(declare-fun r!7292 () Regex!14879)

(declare-fun nullable!5048 (Regex!14879) Bool)

(assert (=> b!5260602 (= res!2232326 (not (nullable!5048 (regOne!30270 (regOne!30270 r!7292)))))))

(declare-fun b!5260603 () Bool)

(declare-fun e!3272364 () Bool)

(declare-fun tp!1470728 () Bool)

(declare-fun tp!1470724 () Bool)

(assert (=> b!5260603 (= e!3272364 (and tp!1470728 tp!1470724))))

(declare-fun b!5260604 () Bool)

(declare-fun e!3272355 () Bool)

(declare-fun tp!1470727 () Bool)

(assert (=> b!5260604 (= e!3272355 tp!1470727)))

(declare-fun b!5260605 () Bool)

(declare-fun res!2232330 () Bool)

(declare-fun e!3272359 () Bool)

(assert (=> b!5260605 (=> res!2232330 e!3272359)))

(declare-datatypes ((List!60936 0))(
  ( (Nil!60812) (Cons!60812 (h!67260 Regex!14879) (t!374121 List!60936)) )
))
(declare-datatypes ((Context!8526 0))(
  ( (Context!8527 (exprs!4763 List!60936)) )
))
(declare-datatypes ((List!60937 0))(
  ( (Nil!60813) (Cons!60813 (h!67261 Context!8526) (t!374122 List!60937)) )
))
(declare-fun zl!343 () List!60937)

(declare-fun generalisedUnion!808 (List!60936) Regex!14879)

(declare-fun unfocusZipperList!321 (List!60937) List!60936)

(assert (=> b!5260605 (= res!2232330 (not (= r!7292 (generalisedUnion!808 (unfocusZipperList!321 zl!343)))))))

(declare-fun b!5260606 () Bool)

(declare-datatypes ((Unit!153034 0))(
  ( (Unit!153035) )
))
(declare-fun e!3272361 () Unit!153034)

(declare-fun Unit!153036 () Unit!153034)

(assert (=> b!5260606 (= e!3272361 Unit!153036)))

(declare-fun b!5260607 () Bool)

(declare-fun e!3272363 () Bool)

(assert (=> b!5260607 (= e!3272363 (not e!3272359))))

(declare-fun res!2232335 () Bool)

(assert (=> b!5260607 (=> res!2232335 e!3272359)))

(get-info :version)

(assert (=> b!5260607 (= res!2232335 (not ((_ is Cons!60813) zl!343)))))

(declare-fun lt!2155327 () Bool)

(declare-datatypes ((List!60938 0))(
  ( (Nil!60814) (Cons!60814 (h!67262 C!30028) (t!374123 List!60938)) )
))
(declare-fun s!2326 () List!60938)

(declare-fun matchRSpec!1982 (Regex!14879 List!60938) Bool)

(assert (=> b!5260607 (= lt!2155327 (matchRSpec!1982 r!7292 s!2326))))

(declare-fun matchR!7064 (Regex!14879 List!60938) Bool)

(assert (=> b!5260607 (= lt!2155327 (matchR!7064 r!7292 s!2326))))

(declare-fun lt!2155329 () Unit!153034)

(declare-fun mainMatchTheorem!1982 (Regex!14879 List!60938) Unit!153034)

(assert (=> b!5260607 (= lt!2155329 (mainMatchTheorem!1982 r!7292 s!2326))))

(declare-fun b!5260608 () Bool)

(declare-fun tp!1470729 () Bool)

(assert (=> b!5260608 (= e!3272364 tp!1470729)))

(declare-fun b!5260609 () Bool)

(declare-fun res!2232328 () Bool)

(declare-fun e!3272357 () Bool)

(assert (=> b!5260609 (=> res!2232328 e!3272357)))

(declare-fun isEmpty!32755 (List!60936) Bool)

(assert (=> b!5260609 (= res!2232328 (isEmpty!32755 (t!374121 (exprs!4763 (h!67261 zl!343)))))))

(assert (=> b!5260610 (= e!3272357 e!3272354)))

(declare-fun res!2232334 () Bool)

(assert (=> b!5260610 (=> res!2232334 e!3272354)))

(assert (=> b!5260610 (= res!2232334 (or (and ((_ is ElementMatch!14879) (regOne!30270 r!7292)) (= (c!910565 (regOne!30270 r!7292)) (h!67262 s!2326))) ((_ is Union!14879) (regOne!30270 r!7292)) (not ((_ is Concat!23724) (regOne!30270 r!7292)))))))

(declare-fun lt!2155332 () Unit!153034)

(assert (=> b!5260610 (= lt!2155332 e!3272361)))

(declare-fun c!910564 () Bool)

(assert (=> b!5260610 (= c!910564 (nullable!5048 (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun lambda!265207 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8526))

(declare-fun flatMap!606 ((InoxSet Context!8526) Int) (InoxSet Context!8526))

(declare-fun derivationStepZipperUp!251 (Context!8526 C!30028) (InoxSet Context!8526))

(assert (=> b!5260610 (= (flatMap!606 z!1189 lambda!265207) (derivationStepZipperUp!251 (h!67261 zl!343) (h!67262 s!2326)))))

(declare-fun lt!2155335 () Unit!153034)

(declare-fun lemmaFlatMapOnSingletonSet!138 ((InoxSet Context!8526) Context!8526 Int) Unit!153034)

(assert (=> b!5260610 (= lt!2155335 (lemmaFlatMapOnSingletonSet!138 z!1189 (h!67261 zl!343) lambda!265207))))

(declare-fun lt!2155333 () (InoxSet Context!8526))

(declare-fun lt!2155330 () Context!8526)

(assert (=> b!5260610 (= lt!2155333 (derivationStepZipperUp!251 lt!2155330 (h!67262 s!2326)))))

(declare-fun lt!2155338 () (InoxSet Context!8526))

(declare-fun derivationStepZipperDown!327 (Regex!14879 Context!8526 C!30028) (InoxSet Context!8526))

(assert (=> b!5260610 (= lt!2155338 (derivationStepZipperDown!327 (h!67260 (exprs!4763 (h!67261 zl!343))) lt!2155330 (h!67262 s!2326)))))

(assert (=> b!5260610 (= lt!2155330 (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun lt!2155331 () (InoxSet Context!8526))

(assert (=> b!5260610 (= lt!2155331 (derivationStepZipperUp!251 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))) (h!67262 s!2326)))))

(declare-fun b!5260611 () Bool)

(declare-fun e!3272362 () Bool)

(declare-fun tp_is_empty!39011 () Bool)

(declare-fun tp!1470726 () Bool)

(assert (=> b!5260611 (= e!3272362 (and tp_is_empty!39011 tp!1470726))))

(declare-fun b!5260613 () Bool)

(declare-fun e!3272360 () Bool)

(declare-fun tp!1470723 () Bool)

(assert (=> b!5260613 (= e!3272360 tp!1470723)))

(declare-fun b!5260614 () Bool)

(declare-fun res!2232332 () Bool)

(assert (=> b!5260614 (=> (not res!2232332) (not e!3272363))))

(declare-fun unfocusZipper!621 (List!60937) Regex!14879)

(assert (=> b!5260614 (= res!2232332 (= r!7292 (unfocusZipper!621 zl!343)))))

(declare-fun b!5260615 () Bool)

(declare-fun res!2232329 () Bool)

(assert (=> b!5260615 (=> res!2232329 e!3272359)))

(assert (=> b!5260615 (= res!2232329 (not ((_ is Cons!60812) (exprs!4763 (h!67261 zl!343)))))))

(declare-fun setIsEmpty!33631 () Bool)

(declare-fun setRes!33631 () Bool)

(assert (=> setIsEmpty!33631 setRes!33631))

(declare-fun b!5260616 () Bool)

(declare-fun res!2232327 () Bool)

(assert (=> b!5260616 (=> res!2232327 e!3272359)))

(declare-fun generalisedConcat!548 (List!60936) Regex!14879)

(assert (=> b!5260616 (= res!2232327 (not (= r!7292 (generalisedConcat!548 (exprs!4763 (h!67261 zl!343))))))))

(declare-fun b!5260617 () Bool)

(assert (=> b!5260617 (= e!3272364 tp_is_empty!39011)))

(declare-fun tp!1470720 () Bool)

(declare-fun setElem!33631 () Context!8526)

(declare-fun setNonEmpty!33631 () Bool)

(declare-fun inv!80444 (Context!8526) Bool)

(assert (=> setNonEmpty!33631 (= setRes!33631 (and tp!1470720 (inv!80444 setElem!33631) e!3272360))))

(declare-fun setRest!33631 () (InoxSet Context!8526))

(assert (=> setNonEmpty!33631 (= z!1189 ((_ map or) (store ((as const (Array Context!8526 Bool)) false) setElem!33631 true) setRest!33631))))

(assert (=> b!5260618 (= e!3272359 e!3272357)))

(declare-fun res!2232323 () Bool)

(assert (=> b!5260618 (=> res!2232323 e!3272357)))

(declare-fun lt!2155337 () Bool)

(assert (=> b!5260618 (= res!2232323 (or (not (= lt!2155327 lt!2155337)) ((_ is Nil!60814) s!2326)))))

(declare-fun Exists!2060 (Int) Bool)

(assert (=> b!5260618 (= (Exists!2060 lambda!265205) (Exists!2060 lambda!265206))))

(declare-fun lt!2155334 () Unit!153034)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!714 (Regex!14879 Regex!14879 List!60938) Unit!153034)

(assert (=> b!5260618 (= lt!2155334 (lemmaExistCutMatchRandMatchRSpecEquivalent!714 (regOne!30270 r!7292) (regTwo!30270 r!7292) s!2326))))

(assert (=> b!5260618 (= lt!2155337 (Exists!2060 lambda!265205))))

(declare-datatypes ((tuple2!64156 0))(
  ( (tuple2!64157 (_1!35381 List!60938) (_2!35381 List!60938)) )
))
(declare-datatypes ((Option!14990 0))(
  ( (None!14989) (Some!14989 (v!51018 tuple2!64156)) )
))
(declare-fun isDefined!11693 (Option!14990) Bool)

(declare-fun findConcatSeparation!1404 (Regex!14879 Regex!14879 List!60938 List!60938 List!60938) Option!14990)

(assert (=> b!5260618 (= lt!2155337 (isDefined!11693 (findConcatSeparation!1404 (regOne!30270 r!7292) (regTwo!30270 r!7292) Nil!60814 s!2326 s!2326)))))

(declare-fun lt!2155336 () Unit!153034)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1168 (Regex!14879 Regex!14879 List!60938) Unit!153034)

(assert (=> b!5260618 (= lt!2155336 (lemmaFindConcatSeparationEquivalentToExists!1168 (regOne!30270 r!7292) (regTwo!30270 r!7292) s!2326))))

(declare-fun b!5260619 () Bool)

(declare-fun tp!1470722 () Bool)

(declare-fun e!3272356 () Bool)

(assert (=> b!5260619 (= e!3272356 (and (inv!80444 (h!67261 zl!343)) e!3272355 tp!1470722))))

(declare-fun b!5260620 () Bool)

(declare-fun res!2232325 () Bool)

(assert (=> b!5260620 (=> res!2232325 e!3272359)))

(assert (=> b!5260620 (= res!2232325 (or ((_ is EmptyExpr!14879) r!7292) ((_ is EmptyLang!14879) r!7292) ((_ is ElementMatch!14879) r!7292) ((_ is Union!14879) r!7292) (not ((_ is Concat!23724) r!7292))))))

(declare-fun b!5260621 () Bool)

(declare-fun tp!1470721 () Bool)

(declare-fun tp!1470725 () Bool)

(assert (=> b!5260621 (= e!3272364 (and tp!1470721 tp!1470725))))

(declare-fun b!5260622 () Bool)

(declare-fun e!3272358 () Bool)

(declare-fun matchZipper!1123 ((InoxSet Context!8526) List!60938) Bool)

(assert (=> b!5260622 (= e!3272358 (matchZipper!1123 lt!2155333 (t!374123 s!2326)))))

(declare-fun b!5260623 () Bool)

(declare-fun Unit!153037 () Unit!153034)

(assert (=> b!5260623 (= e!3272361 Unit!153037)))

(declare-fun lt!2155328 () Unit!153034)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!116 ((InoxSet Context!8526) (InoxSet Context!8526) List!60938) Unit!153034)

(assert (=> b!5260623 (= lt!2155328 (lemmaZipperConcatMatchesSameAsBothZippers!116 lt!2155338 lt!2155333 (t!374123 s!2326)))))

(declare-fun res!2232324 () Bool)

(assert (=> b!5260623 (= res!2232324 (matchZipper!1123 lt!2155338 (t!374123 s!2326)))))

(assert (=> b!5260623 (=> res!2232324 e!3272358)))

(assert (=> b!5260623 (= (matchZipper!1123 ((_ map or) lt!2155338 lt!2155333) (t!374123 s!2326)) e!3272358)))

(declare-fun b!5260624 () Bool)

(declare-fun validRegex!6615 (Regex!14879) Bool)

(assert (=> b!5260624 (= e!3272354 (validRegex!6615 (regTwo!30270 (regOne!30270 r!7292))))))

(declare-fun b!5260625 () Bool)

(declare-fun res!2232322 () Bool)

(assert (=> b!5260625 (=> (not res!2232322) (not e!3272363))))

(declare-fun toList!8663 ((InoxSet Context!8526)) List!60937)

(assert (=> b!5260625 (= res!2232322 (= (toList!8663 z!1189) zl!343))))

(declare-fun b!5260612 () Bool)

(declare-fun res!2232331 () Bool)

(assert (=> b!5260612 (=> res!2232331 e!3272359)))

(declare-fun isEmpty!32756 (List!60937) Bool)

(assert (=> b!5260612 (= res!2232331 (not (isEmpty!32756 (t!374122 zl!343))))))

(declare-fun res!2232333 () Bool)

(assert (=> start!555618 (=> (not res!2232333) (not e!3272363))))

(assert (=> start!555618 (= res!2232333 (validRegex!6615 r!7292))))

(assert (=> start!555618 e!3272363))

(assert (=> start!555618 e!3272364))

(declare-fun condSetEmpty!33631 () Bool)

(assert (=> start!555618 (= condSetEmpty!33631 (= z!1189 ((as const (Array Context!8526 Bool)) false)))))

(assert (=> start!555618 setRes!33631))

(assert (=> start!555618 e!3272356))

(assert (=> start!555618 e!3272362))

(assert (= (and start!555618 res!2232333) b!5260625))

(assert (= (and b!5260625 res!2232322) b!5260614))

(assert (= (and b!5260614 res!2232332) b!5260607))

(assert (= (and b!5260607 (not res!2232335)) b!5260612))

(assert (= (and b!5260612 (not res!2232331)) b!5260616))

(assert (= (and b!5260616 (not res!2232327)) b!5260615))

(assert (= (and b!5260615 (not res!2232329)) b!5260605))

(assert (= (and b!5260605 (not res!2232330)) b!5260620))

(assert (= (and b!5260620 (not res!2232325)) b!5260618))

(assert (= (and b!5260618 (not res!2232323)) b!5260609))

(assert (= (and b!5260609 (not res!2232328)) b!5260610))

(assert (= (and b!5260610 c!910564) b!5260623))

(assert (= (and b!5260610 (not c!910564)) b!5260606))

(assert (= (and b!5260623 (not res!2232324)) b!5260622))

(assert (= (and b!5260610 (not res!2232334)) b!5260602))

(assert (= (and b!5260602 (not res!2232326)) b!5260624))

(assert (= (and start!555618 ((_ is ElementMatch!14879) r!7292)) b!5260617))

(assert (= (and start!555618 ((_ is Concat!23724) r!7292)) b!5260621))

(assert (= (and start!555618 ((_ is Star!14879) r!7292)) b!5260608))

(assert (= (and start!555618 ((_ is Union!14879) r!7292)) b!5260603))

(assert (= (and start!555618 condSetEmpty!33631) setIsEmpty!33631))

(assert (= (and start!555618 (not condSetEmpty!33631)) setNonEmpty!33631))

(assert (= setNonEmpty!33631 b!5260613))

(assert (= b!5260619 b!5260604))

(assert (= (and start!555618 ((_ is Cons!60813) zl!343)) b!5260619))

(assert (= (and start!555618 ((_ is Cons!60814) s!2326)) b!5260611))

(declare-fun m!6302292 () Bool)

(assert (=> b!5260619 m!6302292))

(declare-fun m!6302294 () Bool)

(assert (=> b!5260618 m!6302294))

(declare-fun m!6302296 () Bool)

(assert (=> b!5260618 m!6302296))

(declare-fun m!6302298 () Bool)

(assert (=> b!5260618 m!6302298))

(declare-fun m!6302300 () Bool)

(assert (=> b!5260618 m!6302300))

(assert (=> b!5260618 m!6302298))

(declare-fun m!6302302 () Bool)

(assert (=> b!5260618 m!6302302))

(assert (=> b!5260618 m!6302294))

(declare-fun m!6302304 () Bool)

(assert (=> b!5260618 m!6302304))

(declare-fun m!6302306 () Bool)

(assert (=> b!5260624 m!6302306))

(declare-fun m!6302308 () Bool)

(assert (=> b!5260609 m!6302308))

(declare-fun m!6302310 () Bool)

(assert (=> b!5260602 m!6302310))

(declare-fun m!6302312 () Bool)

(assert (=> setNonEmpty!33631 m!6302312))

(declare-fun m!6302314 () Bool)

(assert (=> b!5260625 m!6302314))

(declare-fun m!6302316 () Bool)

(assert (=> b!5260610 m!6302316))

(declare-fun m!6302318 () Bool)

(assert (=> b!5260610 m!6302318))

(declare-fun m!6302320 () Bool)

(assert (=> b!5260610 m!6302320))

(declare-fun m!6302322 () Bool)

(assert (=> b!5260610 m!6302322))

(declare-fun m!6302324 () Bool)

(assert (=> b!5260610 m!6302324))

(declare-fun m!6302326 () Bool)

(assert (=> b!5260610 m!6302326))

(declare-fun m!6302328 () Bool)

(assert (=> b!5260610 m!6302328))

(declare-fun m!6302330 () Bool)

(assert (=> start!555618 m!6302330))

(declare-fun m!6302332 () Bool)

(assert (=> b!5260623 m!6302332))

(declare-fun m!6302334 () Bool)

(assert (=> b!5260623 m!6302334))

(declare-fun m!6302336 () Bool)

(assert (=> b!5260623 m!6302336))

(declare-fun m!6302338 () Bool)

(assert (=> b!5260607 m!6302338))

(declare-fun m!6302340 () Bool)

(assert (=> b!5260607 m!6302340))

(declare-fun m!6302342 () Bool)

(assert (=> b!5260607 m!6302342))

(declare-fun m!6302344 () Bool)

(assert (=> b!5260605 m!6302344))

(assert (=> b!5260605 m!6302344))

(declare-fun m!6302346 () Bool)

(assert (=> b!5260605 m!6302346))

(declare-fun m!6302348 () Bool)

(assert (=> b!5260612 m!6302348))

(declare-fun m!6302350 () Bool)

(assert (=> b!5260616 m!6302350))

(declare-fun m!6302352 () Bool)

(assert (=> b!5260622 m!6302352))

(declare-fun m!6302354 () Bool)

(assert (=> b!5260614 m!6302354))

(check-sat (not b!5260618) (not b!5260621) (not start!555618) (not b!5260605) (not b!5260603) (not b!5260604) (not b!5260619) (not b!5260614) (not b!5260608) (not b!5260612) (not b!5260611) (not b!5260622) (not b!5260610) (not setNonEmpty!33631) (not b!5260609) tp_is_empty!39011 (not b!5260625) (not b!5260607) (not b!5260616) (not b!5260624) (not b!5260602) (not b!5260623) (not b!5260613))
(check-sat)
(get-model)

(declare-fun b!5260821 () Bool)

(declare-fun e!3272481 () (InoxSet Context!8526))

(declare-fun call!373017 () (InoxSet Context!8526))

(declare-fun call!373016 () (InoxSet Context!8526))

(assert (=> b!5260821 (= e!3272481 ((_ map or) call!373017 call!373016))))

(declare-fun b!5260822 () Bool)

(declare-fun e!3272478 () (InoxSet Context!8526))

(assert (=> b!5260822 (= e!3272478 e!3272481)))

(declare-fun c!910618 () Bool)

(assert (=> b!5260822 (= c!910618 ((_ is Union!14879) (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun bm!373011 () Bool)

(declare-fun call!373021 () List!60936)

(declare-fun call!373019 () List!60936)

(assert (=> bm!373011 (= call!373021 call!373019)))

(declare-fun b!5260824 () Bool)

(declare-fun e!3272477 () (InoxSet Context!8526))

(declare-fun call!373020 () (InoxSet Context!8526))

(assert (=> b!5260824 (= e!3272477 call!373020)))

(declare-fun b!5260825 () Bool)

(declare-fun c!910621 () Bool)

(declare-fun e!3272479 () Bool)

(assert (=> b!5260825 (= c!910621 e!3272479)))

(declare-fun res!2232421 () Bool)

(assert (=> b!5260825 (=> (not res!2232421) (not e!3272479))))

(assert (=> b!5260825 (= res!2232421 ((_ is Concat!23724) (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun e!3272476 () (InoxSet Context!8526))

(assert (=> b!5260825 (= e!3272481 e!3272476)))

(declare-fun b!5260826 () Bool)

(assert (=> b!5260826 (= e!3272479 (nullable!5048 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343))))))))

(declare-fun b!5260827 () Bool)

(assert (=> b!5260827 (= e!3272478 (store ((as const (Array Context!8526 Bool)) false) lt!2155330 true))))

(declare-fun bm!373012 () Bool)

(declare-fun call!373018 () (InoxSet Context!8526))

(assert (=> bm!373012 (= call!373018 call!373016)))

(declare-fun c!910619 () Bool)

(declare-fun bm!373013 () Bool)

(assert (=> bm!373013 (= call!373016 (derivationStepZipperDown!327 (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343))))))) (ite (or c!910618 c!910621) lt!2155330 (Context!8527 call!373021)) (h!67262 s!2326)))))

(declare-fun b!5260828 () Bool)

(declare-fun c!910620 () Bool)

(assert (=> b!5260828 (= c!910620 ((_ is Star!14879) (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun e!3272480 () (InoxSet Context!8526))

(assert (=> b!5260828 (= e!3272480 e!3272477)))

(declare-fun b!5260829 () Bool)

(assert (=> b!5260829 (= e!3272477 ((as const (Array Context!8526 Bool)) false))))

(declare-fun bm!373014 () Bool)

(assert (=> bm!373014 (= call!373017 (derivationStepZipperDown!327 (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343))))) (ite c!910618 lt!2155330 (Context!8527 call!373019)) (h!67262 s!2326)))))

(declare-fun b!5260830 () Bool)

(assert (=> b!5260830 (= e!3272476 e!3272480)))

(assert (=> b!5260830 (= c!910619 ((_ is Concat!23724) (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun b!5260831 () Bool)

(assert (=> b!5260831 (= e!3272480 call!373020)))

(declare-fun b!5260823 () Bool)

(assert (=> b!5260823 (= e!3272476 ((_ map or) call!373017 call!373018))))

(declare-fun d!1693367 () Bool)

(declare-fun c!910622 () Bool)

(assert (=> d!1693367 (= c!910622 (and ((_ is ElementMatch!14879) (h!67260 (exprs!4763 (h!67261 zl!343)))) (= (c!910565 (h!67260 (exprs!4763 (h!67261 zl!343)))) (h!67262 s!2326))))))

(assert (=> d!1693367 (= (derivationStepZipperDown!327 (h!67260 (exprs!4763 (h!67261 zl!343))) lt!2155330 (h!67262 s!2326)) e!3272478)))

(declare-fun bm!373015 () Bool)

(declare-fun $colon$colon!1332 (List!60936 Regex!14879) List!60936)

(assert (=> bm!373015 (= call!373019 ($colon$colon!1332 (exprs!4763 lt!2155330) (ite (or c!910621 c!910619) (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (h!67260 (exprs!4763 (h!67261 zl!343))))))))

(declare-fun bm!373016 () Bool)

(assert (=> bm!373016 (= call!373020 call!373018)))

(assert (= (and d!1693367 c!910622) b!5260827))

(assert (= (and d!1693367 (not c!910622)) b!5260822))

(assert (= (and b!5260822 c!910618) b!5260821))

(assert (= (and b!5260822 (not c!910618)) b!5260825))

(assert (= (and b!5260825 res!2232421) b!5260826))

(assert (= (and b!5260825 c!910621) b!5260823))

(assert (= (and b!5260825 (not c!910621)) b!5260830))

(assert (= (and b!5260830 c!910619) b!5260831))

(assert (= (and b!5260830 (not c!910619)) b!5260828))

(assert (= (and b!5260828 c!910620) b!5260824))

(assert (= (and b!5260828 (not c!910620)) b!5260829))

(assert (= (or b!5260831 b!5260824) bm!373011))

(assert (= (or b!5260831 b!5260824) bm!373016))

(assert (= (or b!5260823 bm!373011) bm!373015))

(assert (= (or b!5260823 bm!373016) bm!373012))

(assert (= (or b!5260821 bm!373012) bm!373013))

(assert (= (or b!5260821 b!5260823) bm!373014))

(declare-fun m!6302444 () Bool)

(assert (=> bm!373015 m!6302444))

(declare-fun m!6302446 () Bool)

(assert (=> b!5260826 m!6302446))

(declare-fun m!6302448 () Bool)

(assert (=> bm!373014 m!6302448))

(declare-fun m!6302450 () Bool)

(assert (=> b!5260827 m!6302450))

(declare-fun m!6302452 () Bool)

(assert (=> bm!373013 m!6302452))

(assert (=> b!5260610 d!1693367))

(declare-fun d!1693375 () Bool)

(declare-fun c!910634 () Bool)

(declare-fun e!3272502 () Bool)

(assert (=> d!1693375 (= c!910634 e!3272502)))

(declare-fun res!2232435 () Bool)

(assert (=> d!1693375 (=> (not res!2232435) (not e!3272502))))

(assert (=> d!1693375 (= res!2232435 ((_ is Cons!60812) (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))))))

(declare-fun e!3272503 () (InoxSet Context!8526))

(assert (=> d!1693375 (= (derivationStepZipperUp!251 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))) (h!67262 s!2326)) e!3272503)))

(declare-fun b!5260865 () Bool)

(assert (=> b!5260865 (= e!3272502 (nullable!5048 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))))))

(declare-fun b!5260866 () Bool)

(declare-fun e!3272501 () (InoxSet Context!8526))

(assert (=> b!5260866 (= e!3272501 ((as const (Array Context!8526 Bool)) false))))

(declare-fun b!5260867 () Bool)

(assert (=> b!5260867 (= e!3272503 e!3272501)))

(declare-fun c!910633 () Bool)

(assert (=> b!5260867 (= c!910633 ((_ is Cons!60812) (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))))))

(declare-fun b!5260868 () Bool)

(declare-fun call!373025 () (InoxSet Context!8526))

(assert (=> b!5260868 (= e!3272501 call!373025)))

(declare-fun bm!373020 () Bool)

(assert (=> bm!373020 (= call!373025 (derivationStepZipperDown!327 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))) (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (h!67262 s!2326)))))

(declare-fun b!5260869 () Bool)

(assert (=> b!5260869 (= e!3272503 ((_ map or) call!373025 (derivationStepZipperUp!251 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (h!67262 s!2326))))))

(assert (= (and d!1693375 res!2232435) b!5260865))

(assert (= (and d!1693375 c!910634) b!5260869))

(assert (= (and d!1693375 (not c!910634)) b!5260867))

(assert (= (and b!5260867 c!910633) b!5260868))

(assert (= (and b!5260867 (not c!910633)) b!5260866))

(assert (= (or b!5260869 b!5260868) bm!373020))

(declare-fun m!6302478 () Bool)

(assert (=> b!5260865 m!6302478))

(declare-fun m!6302484 () Bool)

(assert (=> bm!373020 m!6302484))

(declare-fun m!6302486 () Bool)

(assert (=> b!5260869 m!6302486))

(assert (=> b!5260610 d!1693375))

(declare-fun d!1693387 () Bool)

(declare-fun dynLambda!24027 (Int Context!8526) (InoxSet Context!8526))

(assert (=> d!1693387 (= (flatMap!606 z!1189 lambda!265207) (dynLambda!24027 lambda!265207 (h!67261 zl!343)))))

(declare-fun lt!2155370 () Unit!153034)

(declare-fun choose!39248 ((InoxSet Context!8526) Context!8526 Int) Unit!153034)

(assert (=> d!1693387 (= lt!2155370 (choose!39248 z!1189 (h!67261 zl!343) lambda!265207))))

(assert (=> d!1693387 (= z!1189 (store ((as const (Array Context!8526 Bool)) false) (h!67261 zl!343) true))))

(assert (=> d!1693387 (= (lemmaFlatMapOnSingletonSet!138 z!1189 (h!67261 zl!343) lambda!265207) lt!2155370)))

(declare-fun b_lambda!203005 () Bool)

(assert (=> (not b_lambda!203005) (not d!1693387)))

(declare-fun bs!1219713 () Bool)

(assert (= bs!1219713 d!1693387))

(assert (=> bs!1219713 m!6302328))

(declare-fun m!6302490 () Bool)

(assert (=> bs!1219713 m!6302490))

(declare-fun m!6302492 () Bool)

(assert (=> bs!1219713 m!6302492))

(declare-fun m!6302494 () Bool)

(assert (=> bs!1219713 m!6302494))

(assert (=> b!5260610 d!1693387))

(declare-fun d!1693391 () Bool)

(declare-fun c!910647 () Bool)

(declare-fun e!3272525 () Bool)

(assert (=> d!1693391 (= c!910647 e!3272525)))

(declare-fun res!2232445 () Bool)

(assert (=> d!1693391 (=> (not res!2232445) (not e!3272525))))

(assert (=> d!1693391 (= res!2232445 ((_ is Cons!60812) (exprs!4763 lt!2155330)))))

(declare-fun e!3272526 () (InoxSet Context!8526))

(assert (=> d!1693391 (= (derivationStepZipperUp!251 lt!2155330 (h!67262 s!2326)) e!3272526)))

(declare-fun b!5260901 () Bool)

(assert (=> b!5260901 (= e!3272525 (nullable!5048 (h!67260 (exprs!4763 lt!2155330))))))

(declare-fun b!5260902 () Bool)

(declare-fun e!3272524 () (InoxSet Context!8526))

(assert (=> b!5260902 (= e!3272524 ((as const (Array Context!8526 Bool)) false))))

(declare-fun b!5260903 () Bool)

(assert (=> b!5260903 (= e!3272526 e!3272524)))

(declare-fun c!910646 () Bool)

(assert (=> b!5260903 (= c!910646 ((_ is Cons!60812) (exprs!4763 lt!2155330)))))

(declare-fun b!5260904 () Bool)

(declare-fun call!373029 () (InoxSet Context!8526))

(assert (=> b!5260904 (= e!3272524 call!373029)))

(declare-fun bm!373024 () Bool)

(assert (=> bm!373024 (= call!373029 (derivationStepZipperDown!327 (h!67260 (exprs!4763 lt!2155330)) (Context!8527 (t!374121 (exprs!4763 lt!2155330))) (h!67262 s!2326)))))

(declare-fun b!5260905 () Bool)

(assert (=> b!5260905 (= e!3272526 ((_ map or) call!373029 (derivationStepZipperUp!251 (Context!8527 (t!374121 (exprs!4763 lt!2155330))) (h!67262 s!2326))))))

(assert (= (and d!1693391 res!2232445) b!5260901))

(assert (= (and d!1693391 c!910647) b!5260905))

(assert (= (and d!1693391 (not c!910647)) b!5260903))

(assert (= (and b!5260903 c!910646) b!5260904))

(assert (= (and b!5260903 (not c!910646)) b!5260902))

(assert (= (or b!5260905 b!5260904) bm!373024))

(declare-fun m!6302496 () Bool)

(assert (=> b!5260901 m!6302496))

(declare-fun m!6302498 () Bool)

(assert (=> bm!373024 m!6302498))

(declare-fun m!6302500 () Bool)

(assert (=> b!5260905 m!6302500))

(assert (=> b!5260610 d!1693391))

(declare-fun d!1693393 () Bool)

(declare-fun c!910649 () Bool)

(declare-fun e!3272528 () Bool)

(assert (=> d!1693393 (= c!910649 e!3272528)))

(declare-fun res!2232446 () Bool)

(assert (=> d!1693393 (=> (not res!2232446) (not e!3272528))))

(assert (=> d!1693393 (= res!2232446 ((_ is Cons!60812) (exprs!4763 (h!67261 zl!343))))))

(declare-fun e!3272529 () (InoxSet Context!8526))

(assert (=> d!1693393 (= (derivationStepZipperUp!251 (h!67261 zl!343) (h!67262 s!2326)) e!3272529)))

(declare-fun b!5260906 () Bool)

(assert (=> b!5260906 (= e!3272528 (nullable!5048 (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun b!5260907 () Bool)

(declare-fun e!3272527 () (InoxSet Context!8526))

(assert (=> b!5260907 (= e!3272527 ((as const (Array Context!8526 Bool)) false))))

(declare-fun b!5260908 () Bool)

(assert (=> b!5260908 (= e!3272529 e!3272527)))

(declare-fun c!910648 () Bool)

(assert (=> b!5260908 (= c!910648 ((_ is Cons!60812) (exprs!4763 (h!67261 zl!343))))))

(declare-fun b!5260909 () Bool)

(declare-fun call!373030 () (InoxSet Context!8526))

(assert (=> b!5260909 (= e!3272527 call!373030)))

(declare-fun bm!373025 () Bool)

(assert (=> bm!373025 (= call!373030 (derivationStepZipperDown!327 (h!67260 (exprs!4763 (h!67261 zl!343))) (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343)))) (h!67262 s!2326)))))

(declare-fun b!5260910 () Bool)

(assert (=> b!5260910 (= e!3272529 ((_ map or) call!373030 (derivationStepZipperUp!251 (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343)))) (h!67262 s!2326))))))

(assert (= (and d!1693393 res!2232446) b!5260906))

(assert (= (and d!1693393 c!910649) b!5260910))

(assert (= (and d!1693393 (not c!910649)) b!5260908))

(assert (= (and b!5260908 c!910648) b!5260909))

(assert (= (and b!5260908 (not c!910648)) b!5260907))

(assert (= (or b!5260910 b!5260909) bm!373025))

(assert (=> b!5260906 m!6302324))

(declare-fun m!6302502 () Bool)

(assert (=> bm!373025 m!6302502))

(declare-fun m!6302504 () Bool)

(assert (=> b!5260910 m!6302504))

(assert (=> b!5260610 d!1693393))

(declare-fun d!1693395 () Bool)

(declare-fun nullableFct!1434 (Regex!14879) Bool)

(assert (=> d!1693395 (= (nullable!5048 (h!67260 (exprs!4763 (h!67261 zl!343)))) (nullableFct!1434 (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun bs!1219717 () Bool)

(assert (= bs!1219717 d!1693395))

(declare-fun m!6302523 () Bool)

(assert (=> bs!1219717 m!6302523))

(assert (=> b!5260610 d!1693395))

(declare-fun d!1693399 () Bool)

(declare-fun choose!39249 ((InoxSet Context!8526) Int) (InoxSet Context!8526))

(assert (=> d!1693399 (= (flatMap!606 z!1189 lambda!265207) (choose!39249 z!1189 lambda!265207))))

(declare-fun bs!1219718 () Bool)

(assert (= bs!1219718 d!1693399))

(declare-fun m!6302528 () Bool)

(assert (=> bs!1219718 m!6302528))

(assert (=> b!5260610 d!1693399))

(declare-fun d!1693401 () Bool)

(declare-fun lambda!265238 () Int)

(declare-fun forall!14291 (List!60936 Int) Bool)

(assert (=> d!1693401 (= (inv!80444 (h!67261 zl!343)) (forall!14291 (exprs!4763 (h!67261 zl!343)) lambda!265238))))

(declare-fun bs!1219723 () Bool)

(assert (= bs!1219723 d!1693401))

(declare-fun m!6302534 () Bool)

(assert (=> bs!1219723 m!6302534))

(assert (=> b!5260619 d!1693401))

(declare-fun bs!1219724 () Bool)

(declare-fun d!1693405 () Bool)

(assert (= bs!1219724 (and d!1693405 d!1693401)))

(declare-fun lambda!265239 () Int)

(assert (=> bs!1219724 (= lambda!265239 lambda!265238)))

(assert (=> d!1693405 (= (inv!80444 setElem!33631) (forall!14291 (exprs!4763 setElem!33631) lambda!265239))))

(declare-fun bs!1219725 () Bool)

(assert (= bs!1219725 d!1693405))

(declare-fun m!6302536 () Bool)

(assert (=> bs!1219725 m!6302536))

(assert (=> setNonEmpty!33631 d!1693405))

(declare-fun d!1693407 () Bool)

(assert (=> d!1693407 (= (isEmpty!32755 (t!374121 (exprs!4763 (h!67261 zl!343)))) ((_ is Nil!60812) (t!374121 (exprs!4763 (h!67261 zl!343)))))))

(assert (=> b!5260609 d!1693407))

(declare-fun b!5261062 () Bool)

(declare-fun e!3272613 () Option!14990)

(declare-fun e!3272610 () Option!14990)

(assert (=> b!5261062 (= e!3272613 e!3272610)))

(declare-fun c!910687 () Bool)

(assert (=> b!5261062 (= c!910687 ((_ is Nil!60814) s!2326))))

(declare-fun b!5261063 () Bool)

(assert (=> b!5261063 (= e!3272610 None!14989)))

(declare-fun b!5261064 () Bool)

(declare-fun e!3272609 () Bool)

(assert (=> b!5261064 (= e!3272609 (matchR!7064 (regTwo!30270 r!7292) s!2326))))

(declare-fun b!5261065 () Bool)

(declare-fun lt!2155392 () Unit!153034)

(declare-fun lt!2155391 () Unit!153034)

(assert (=> b!5261065 (= lt!2155392 lt!2155391)))

(declare-fun ++!13262 (List!60938 List!60938) List!60938)

(assert (=> b!5261065 (= (++!13262 (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814)) (t!374123 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1677 (List!60938 C!30028 List!60938 List!60938) Unit!153034)

(assert (=> b!5261065 (= lt!2155391 (lemmaMoveElementToOtherListKeepsConcatEq!1677 Nil!60814 (h!67262 s!2326) (t!374123 s!2326) s!2326))))

(assert (=> b!5261065 (= e!3272610 (findConcatSeparation!1404 (regOne!30270 r!7292) (regTwo!30270 r!7292) (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814)) (t!374123 s!2326) s!2326))))

(declare-fun b!5261066 () Bool)

(declare-fun res!2232474 () Bool)

(declare-fun e!3272612 () Bool)

(assert (=> b!5261066 (=> (not res!2232474) (not e!3272612))))

(declare-fun lt!2155390 () Option!14990)

(declare-fun get!20907 (Option!14990) tuple2!64156)

(assert (=> b!5261066 (= res!2232474 (matchR!7064 (regOne!30270 r!7292) (_1!35381 (get!20907 lt!2155390))))))

(declare-fun b!5261067 () Bool)

(assert (=> b!5261067 (= e!3272613 (Some!14989 (tuple2!64157 Nil!60814 s!2326)))))

(declare-fun b!5261068 () Bool)

(assert (=> b!5261068 (= e!3272612 (= (++!13262 (_1!35381 (get!20907 lt!2155390)) (_2!35381 (get!20907 lt!2155390))) s!2326))))

(declare-fun b!5261069 () Bool)

(declare-fun e!3272611 () Bool)

(assert (=> b!5261069 (= e!3272611 (not (isDefined!11693 lt!2155390)))))

(declare-fun b!5261070 () Bool)

(declare-fun res!2232470 () Bool)

(assert (=> b!5261070 (=> (not res!2232470) (not e!3272612))))

(assert (=> b!5261070 (= res!2232470 (matchR!7064 (regTwo!30270 r!7292) (_2!35381 (get!20907 lt!2155390))))))

(declare-fun d!1693411 () Bool)

(assert (=> d!1693411 e!3272611))

(declare-fun res!2232472 () Bool)

(assert (=> d!1693411 (=> res!2232472 e!3272611)))

(assert (=> d!1693411 (= res!2232472 e!3272612)))

(declare-fun res!2232473 () Bool)

(assert (=> d!1693411 (=> (not res!2232473) (not e!3272612))))

(assert (=> d!1693411 (= res!2232473 (isDefined!11693 lt!2155390))))

(assert (=> d!1693411 (= lt!2155390 e!3272613)))

(declare-fun c!910688 () Bool)

(assert (=> d!1693411 (= c!910688 e!3272609)))

(declare-fun res!2232471 () Bool)

(assert (=> d!1693411 (=> (not res!2232471) (not e!3272609))))

(assert (=> d!1693411 (= res!2232471 (matchR!7064 (regOne!30270 r!7292) Nil!60814))))

(assert (=> d!1693411 (validRegex!6615 (regOne!30270 r!7292))))

(assert (=> d!1693411 (= (findConcatSeparation!1404 (regOne!30270 r!7292) (regTwo!30270 r!7292) Nil!60814 s!2326 s!2326) lt!2155390)))

(assert (= (and d!1693411 res!2232471) b!5261064))

(assert (= (and d!1693411 c!910688) b!5261067))

(assert (= (and d!1693411 (not c!910688)) b!5261062))

(assert (= (and b!5261062 c!910687) b!5261063))

(assert (= (and b!5261062 (not c!910687)) b!5261065))

(assert (= (and d!1693411 res!2232473) b!5261066))

(assert (= (and b!5261066 res!2232474) b!5261070))

(assert (= (and b!5261070 res!2232470) b!5261068))

(assert (= (and d!1693411 (not res!2232472)) b!5261069))

(declare-fun m!6302592 () Bool)

(assert (=> b!5261070 m!6302592))

(declare-fun m!6302594 () Bool)

(assert (=> b!5261070 m!6302594))

(declare-fun m!6302596 () Bool)

(assert (=> b!5261069 m!6302596))

(assert (=> b!5261066 m!6302592))

(declare-fun m!6302598 () Bool)

(assert (=> b!5261066 m!6302598))

(assert (=> b!5261068 m!6302592))

(declare-fun m!6302600 () Bool)

(assert (=> b!5261068 m!6302600))

(assert (=> d!1693411 m!6302596))

(declare-fun m!6302602 () Bool)

(assert (=> d!1693411 m!6302602))

(declare-fun m!6302604 () Bool)

(assert (=> d!1693411 m!6302604))

(declare-fun m!6302606 () Bool)

(assert (=> b!5261065 m!6302606))

(assert (=> b!5261065 m!6302606))

(declare-fun m!6302608 () Bool)

(assert (=> b!5261065 m!6302608))

(declare-fun m!6302610 () Bool)

(assert (=> b!5261065 m!6302610))

(assert (=> b!5261065 m!6302606))

(declare-fun m!6302612 () Bool)

(assert (=> b!5261065 m!6302612))

(declare-fun m!6302614 () Bool)

(assert (=> b!5261064 m!6302614))

(assert (=> b!5260618 d!1693411))

(declare-fun d!1693431 () Bool)

(declare-fun choose!39250 (Int) Bool)

(assert (=> d!1693431 (= (Exists!2060 lambda!265206) (choose!39250 lambda!265206))))

(declare-fun bs!1219731 () Bool)

(assert (= bs!1219731 d!1693431))

(declare-fun m!6302616 () Bool)

(assert (=> bs!1219731 m!6302616))

(assert (=> b!5260618 d!1693431))

(declare-fun d!1693433 () Bool)

(assert (=> d!1693433 (= (Exists!2060 lambda!265205) (choose!39250 lambda!265205))))

(declare-fun bs!1219732 () Bool)

(assert (= bs!1219732 d!1693433))

(declare-fun m!6302618 () Bool)

(assert (=> bs!1219732 m!6302618))

(assert (=> b!5260618 d!1693433))

(declare-fun bs!1219733 () Bool)

(declare-fun d!1693435 () Bool)

(assert (= bs!1219733 (and d!1693435 b!5260618)))

(declare-fun lambda!265242 () Int)

(assert (=> bs!1219733 (= lambda!265242 lambda!265205)))

(assert (=> bs!1219733 (not (= lambda!265242 lambda!265206))))

(assert (=> d!1693435 true))

(assert (=> d!1693435 true))

(assert (=> d!1693435 true))

(assert (=> d!1693435 (= (isDefined!11693 (findConcatSeparation!1404 (regOne!30270 r!7292) (regTwo!30270 r!7292) Nil!60814 s!2326 s!2326)) (Exists!2060 lambda!265242))))

(declare-fun lt!2155395 () Unit!153034)

(declare-fun choose!39251 (Regex!14879 Regex!14879 List!60938) Unit!153034)

(assert (=> d!1693435 (= lt!2155395 (choose!39251 (regOne!30270 r!7292) (regTwo!30270 r!7292) s!2326))))

(assert (=> d!1693435 (validRegex!6615 (regOne!30270 r!7292))))

(assert (=> d!1693435 (= (lemmaFindConcatSeparationEquivalentToExists!1168 (regOne!30270 r!7292) (regTwo!30270 r!7292) s!2326) lt!2155395)))

(declare-fun bs!1219734 () Bool)

(assert (= bs!1219734 d!1693435))

(assert (=> bs!1219734 m!6302604))

(assert (=> bs!1219734 m!6302294))

(assert (=> bs!1219734 m!6302296))

(assert (=> bs!1219734 m!6302294))

(declare-fun m!6302620 () Bool)

(assert (=> bs!1219734 m!6302620))

(declare-fun m!6302622 () Bool)

(assert (=> bs!1219734 m!6302622))

(assert (=> b!5260618 d!1693435))

(declare-fun bs!1219735 () Bool)

(declare-fun d!1693437 () Bool)

(assert (= bs!1219735 (and d!1693437 b!5260618)))

(declare-fun lambda!265247 () Int)

(assert (=> bs!1219735 (= lambda!265247 lambda!265205)))

(assert (=> bs!1219735 (not (= lambda!265247 lambda!265206))))

(declare-fun bs!1219736 () Bool)

(assert (= bs!1219736 (and d!1693437 d!1693435)))

(assert (=> bs!1219736 (= lambda!265247 lambda!265242)))

(assert (=> d!1693437 true))

(assert (=> d!1693437 true))

(assert (=> d!1693437 true))

(declare-fun lambda!265248 () Int)

(assert (=> bs!1219735 (not (= lambda!265248 lambda!265205))))

(assert (=> bs!1219735 (= lambda!265248 lambda!265206)))

(assert (=> bs!1219736 (not (= lambda!265248 lambda!265242))))

(declare-fun bs!1219737 () Bool)

(assert (= bs!1219737 d!1693437))

(assert (=> bs!1219737 (not (= lambda!265248 lambda!265247))))

(assert (=> d!1693437 true))

(assert (=> d!1693437 true))

(assert (=> d!1693437 true))

(assert (=> d!1693437 (= (Exists!2060 lambda!265247) (Exists!2060 lambda!265248))))

(declare-fun lt!2155398 () Unit!153034)

(declare-fun choose!39252 (Regex!14879 Regex!14879 List!60938) Unit!153034)

(assert (=> d!1693437 (= lt!2155398 (choose!39252 (regOne!30270 r!7292) (regTwo!30270 r!7292) s!2326))))

(assert (=> d!1693437 (validRegex!6615 (regOne!30270 r!7292))))

(assert (=> d!1693437 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!714 (regOne!30270 r!7292) (regTwo!30270 r!7292) s!2326) lt!2155398)))

(declare-fun m!6302624 () Bool)

(assert (=> bs!1219737 m!6302624))

(declare-fun m!6302626 () Bool)

(assert (=> bs!1219737 m!6302626))

(declare-fun m!6302628 () Bool)

(assert (=> bs!1219737 m!6302628))

(assert (=> bs!1219737 m!6302604))

(assert (=> b!5260618 d!1693437))

(declare-fun d!1693439 () Bool)

(declare-fun isEmpty!32759 (Option!14990) Bool)

(assert (=> d!1693439 (= (isDefined!11693 (findConcatSeparation!1404 (regOne!30270 r!7292) (regTwo!30270 r!7292) Nil!60814 s!2326 s!2326)) (not (isEmpty!32759 (findConcatSeparation!1404 (regOne!30270 r!7292) (regTwo!30270 r!7292) Nil!60814 s!2326 s!2326))))))

(declare-fun bs!1219738 () Bool)

(assert (= bs!1219738 d!1693439))

(assert (=> bs!1219738 m!6302294))

(declare-fun m!6302630 () Bool)

(assert (=> bs!1219738 m!6302630))

(assert (=> b!5260618 d!1693439))

(declare-fun bs!1219739 () Bool)

(declare-fun b!5261120 () Bool)

(assert (= bs!1219739 (and b!5261120 b!5260618)))

(declare-fun lambda!265253 () Int)

(assert (=> bs!1219739 (not (= lambda!265253 lambda!265206))))

(declare-fun bs!1219740 () Bool)

(assert (= bs!1219740 (and b!5261120 d!1693435)))

(assert (=> bs!1219740 (not (= lambda!265253 lambda!265242))))

(declare-fun bs!1219741 () Bool)

(assert (= bs!1219741 (and b!5261120 d!1693437)))

(assert (=> bs!1219741 (not (= lambda!265253 lambda!265247))))

(assert (=> bs!1219739 (not (= lambda!265253 lambda!265205))))

(assert (=> bs!1219741 (not (= lambda!265253 lambda!265248))))

(assert (=> b!5261120 true))

(assert (=> b!5261120 true))

(declare-fun bs!1219742 () Bool)

(declare-fun b!5261115 () Bool)

(assert (= bs!1219742 (and b!5261115 b!5260618)))

(declare-fun lambda!265254 () Int)

(assert (=> bs!1219742 (= lambda!265254 lambda!265206)))

(declare-fun bs!1219743 () Bool)

(assert (= bs!1219743 (and b!5261115 d!1693435)))

(assert (=> bs!1219743 (not (= lambda!265254 lambda!265242))))

(declare-fun bs!1219744 () Bool)

(assert (= bs!1219744 (and b!5261115 d!1693437)))

(assert (=> bs!1219744 (not (= lambda!265254 lambda!265247))))

(assert (=> bs!1219742 (not (= lambda!265254 lambda!265205))))

(declare-fun bs!1219745 () Bool)

(assert (= bs!1219745 (and b!5261115 b!5261120)))

(assert (=> bs!1219745 (not (= lambda!265254 lambda!265253))))

(assert (=> bs!1219744 (= lambda!265254 lambda!265248)))

(assert (=> b!5261115 true))

(assert (=> b!5261115 true))

(declare-fun e!3272640 () Bool)

(declare-fun call!373058 () Bool)

(assert (=> b!5261115 (= e!3272640 call!373058)))

(declare-fun b!5261116 () Bool)

(declare-fun e!3272642 () Bool)

(declare-fun call!373059 () Bool)

(assert (=> b!5261116 (= e!3272642 call!373059)))

(declare-fun bm!373053 () Bool)

(declare-fun isEmpty!32760 (List!60938) Bool)

(assert (=> bm!373053 (= call!373059 (isEmpty!32760 s!2326))))

(declare-fun b!5261117 () Bool)

(declare-fun e!3272638 () Bool)

(assert (=> b!5261117 (= e!3272638 (= s!2326 (Cons!60814 (c!910565 r!7292) Nil!60814)))))

(declare-fun b!5261118 () Bool)

(declare-fun e!3272639 () Bool)

(assert (=> b!5261118 (= e!3272639 e!3272640)))

(declare-fun c!910697 () Bool)

(assert (=> b!5261118 (= c!910697 ((_ is Star!14879) r!7292))))

(declare-fun d!1693441 () Bool)

(declare-fun c!910700 () Bool)

(assert (=> d!1693441 (= c!910700 ((_ is EmptyExpr!14879) r!7292))))

(assert (=> d!1693441 (= (matchRSpec!1982 r!7292 s!2326) e!3272642)))

(declare-fun b!5261119 () Bool)

(declare-fun e!3272644 () Bool)

(assert (=> b!5261119 (= e!3272639 e!3272644)))

(declare-fun res!2232504 () Bool)

(assert (=> b!5261119 (= res!2232504 (matchRSpec!1982 (regOne!30271 r!7292) s!2326))))

(assert (=> b!5261119 (=> res!2232504 e!3272644)))

(declare-fun e!3272643 () Bool)

(assert (=> b!5261120 (= e!3272643 call!373058)))

(declare-fun b!5261121 () Bool)

(assert (=> b!5261121 (= e!3272644 (matchRSpec!1982 (regTwo!30271 r!7292) s!2326))))

(declare-fun b!5261122 () Bool)

(declare-fun res!2232503 () Bool)

(assert (=> b!5261122 (=> res!2232503 e!3272643)))

(assert (=> b!5261122 (= res!2232503 call!373059)))

(assert (=> b!5261122 (= e!3272640 e!3272643)))

(declare-fun bm!373054 () Bool)

(assert (=> bm!373054 (= call!373058 (Exists!2060 (ite c!910697 lambda!265253 lambda!265254)))))

(declare-fun b!5261123 () Bool)

(declare-fun e!3272641 () Bool)

(assert (=> b!5261123 (= e!3272642 e!3272641)))

(declare-fun res!2232505 () Bool)

(assert (=> b!5261123 (= res!2232505 (not ((_ is EmptyLang!14879) r!7292)))))

(assert (=> b!5261123 (=> (not res!2232505) (not e!3272641))))

(declare-fun b!5261124 () Bool)

(declare-fun c!910698 () Bool)

(assert (=> b!5261124 (= c!910698 ((_ is ElementMatch!14879) r!7292))))

(assert (=> b!5261124 (= e!3272641 e!3272638)))

(declare-fun b!5261125 () Bool)

(declare-fun c!910699 () Bool)

(assert (=> b!5261125 (= c!910699 ((_ is Union!14879) r!7292))))

(assert (=> b!5261125 (= e!3272638 e!3272639)))

(assert (= (and d!1693441 c!910700) b!5261116))

(assert (= (and d!1693441 (not c!910700)) b!5261123))

(assert (= (and b!5261123 res!2232505) b!5261124))

(assert (= (and b!5261124 c!910698) b!5261117))

(assert (= (and b!5261124 (not c!910698)) b!5261125))

(assert (= (and b!5261125 c!910699) b!5261119))

(assert (= (and b!5261125 (not c!910699)) b!5261118))

(assert (= (and b!5261119 (not res!2232504)) b!5261121))

(assert (= (and b!5261118 c!910697) b!5261122))

(assert (= (and b!5261118 (not c!910697)) b!5261115))

(assert (= (and b!5261122 (not res!2232503)) b!5261120))

(assert (= (or b!5261120 b!5261115) bm!373054))

(assert (= (or b!5261116 b!5261122) bm!373053))

(declare-fun m!6302632 () Bool)

(assert (=> bm!373053 m!6302632))

(declare-fun m!6302634 () Bool)

(assert (=> b!5261119 m!6302634))

(declare-fun m!6302636 () Bool)

(assert (=> b!5261121 m!6302636))

(declare-fun m!6302638 () Bool)

(assert (=> bm!373054 m!6302638))

(assert (=> b!5260607 d!1693441))

(declare-fun bm!373057 () Bool)

(declare-fun call!373062 () Bool)

(assert (=> bm!373057 (= call!373062 (isEmpty!32760 s!2326))))

(declare-fun b!5261154 () Bool)

(declare-fun e!3272661 () Bool)

(declare-fun e!3272660 () Bool)

(assert (=> b!5261154 (= e!3272661 e!3272660)))

(declare-fun res!2232529 () Bool)

(assert (=> b!5261154 (=> (not res!2232529) (not e!3272660))))

(declare-fun lt!2155401 () Bool)

(assert (=> b!5261154 (= res!2232529 (not lt!2155401))))

(declare-fun b!5261155 () Bool)

(declare-fun res!2232522 () Bool)

(declare-fun e!3272663 () Bool)

(assert (=> b!5261155 (=> res!2232522 e!3272663)))

(declare-fun tail!10379 (List!60938) List!60938)

(assert (=> b!5261155 (= res!2232522 (not (isEmpty!32760 (tail!10379 s!2326))))))

(declare-fun d!1693443 () Bool)

(declare-fun e!3272659 () Bool)

(assert (=> d!1693443 e!3272659))

(declare-fun c!910709 () Bool)

(assert (=> d!1693443 (= c!910709 ((_ is EmptyExpr!14879) r!7292))))

(declare-fun e!3272664 () Bool)

(assert (=> d!1693443 (= lt!2155401 e!3272664)))

(declare-fun c!910708 () Bool)

(assert (=> d!1693443 (= c!910708 (isEmpty!32760 s!2326))))

(assert (=> d!1693443 (validRegex!6615 r!7292)))

(assert (=> d!1693443 (= (matchR!7064 r!7292 s!2326) lt!2155401)))

(declare-fun b!5261156 () Bool)

(declare-fun head!11282 (List!60938) C!30028)

(assert (=> b!5261156 (= e!3272663 (not (= (head!11282 s!2326) (c!910565 r!7292))))))

(declare-fun b!5261157 () Bool)

(declare-fun res!2232527 () Bool)

(declare-fun e!3272665 () Bool)

(assert (=> b!5261157 (=> (not res!2232527) (not e!3272665))))

(assert (=> b!5261157 (= res!2232527 (isEmpty!32760 (tail!10379 s!2326)))))

(declare-fun b!5261158 () Bool)

(declare-fun e!3272662 () Bool)

(assert (=> b!5261158 (= e!3272659 e!3272662)))

(declare-fun c!910707 () Bool)

(assert (=> b!5261158 (= c!910707 ((_ is EmptyLang!14879) r!7292))))

(declare-fun b!5261159 () Bool)

(assert (=> b!5261159 (= e!3272662 (not lt!2155401))))

(declare-fun b!5261160 () Bool)

(declare-fun derivativeStep!4103 (Regex!14879 C!30028) Regex!14879)

(assert (=> b!5261160 (= e!3272664 (matchR!7064 (derivativeStep!4103 r!7292 (head!11282 s!2326)) (tail!10379 s!2326)))))

(declare-fun b!5261161 () Bool)

(assert (=> b!5261161 (= e!3272659 (= lt!2155401 call!373062))))

(declare-fun b!5261162 () Bool)

(assert (=> b!5261162 (= e!3272664 (nullable!5048 r!7292))))

(declare-fun b!5261163 () Bool)

(assert (=> b!5261163 (= e!3272660 e!3272663)))

(declare-fun res!2232526 () Bool)

(assert (=> b!5261163 (=> res!2232526 e!3272663)))

(assert (=> b!5261163 (= res!2232526 call!373062)))

(declare-fun b!5261164 () Bool)

(assert (=> b!5261164 (= e!3272665 (= (head!11282 s!2326) (c!910565 r!7292)))))

(declare-fun b!5261165 () Bool)

(declare-fun res!2232528 () Bool)

(assert (=> b!5261165 (=> (not res!2232528) (not e!3272665))))

(assert (=> b!5261165 (= res!2232528 (not call!373062))))

(declare-fun b!5261166 () Bool)

(declare-fun res!2232525 () Bool)

(assert (=> b!5261166 (=> res!2232525 e!3272661)))

(assert (=> b!5261166 (= res!2232525 (not ((_ is ElementMatch!14879) r!7292)))))

(assert (=> b!5261166 (= e!3272662 e!3272661)))

(declare-fun b!5261167 () Bool)

(declare-fun res!2232524 () Bool)

(assert (=> b!5261167 (=> res!2232524 e!3272661)))

(assert (=> b!5261167 (= res!2232524 e!3272665)))

(declare-fun res!2232523 () Bool)

(assert (=> b!5261167 (=> (not res!2232523) (not e!3272665))))

(assert (=> b!5261167 (= res!2232523 lt!2155401)))

(assert (= (and d!1693443 c!910708) b!5261162))

(assert (= (and d!1693443 (not c!910708)) b!5261160))

(assert (= (and d!1693443 c!910709) b!5261161))

(assert (= (and d!1693443 (not c!910709)) b!5261158))

(assert (= (and b!5261158 c!910707) b!5261159))

(assert (= (and b!5261158 (not c!910707)) b!5261166))

(assert (= (and b!5261166 (not res!2232525)) b!5261167))

(assert (= (and b!5261167 res!2232523) b!5261165))

(assert (= (and b!5261165 res!2232528) b!5261157))

(assert (= (and b!5261157 res!2232527) b!5261164))

(assert (= (and b!5261167 (not res!2232524)) b!5261154))

(assert (= (and b!5261154 res!2232529) b!5261163))

(assert (= (and b!5261163 (not res!2232526)) b!5261155))

(assert (= (and b!5261155 (not res!2232522)) b!5261156))

(assert (= (or b!5261161 b!5261163 b!5261165) bm!373057))

(declare-fun m!6302640 () Bool)

(assert (=> b!5261156 m!6302640))

(declare-fun m!6302642 () Bool)

(assert (=> b!5261155 m!6302642))

(assert (=> b!5261155 m!6302642))

(declare-fun m!6302644 () Bool)

(assert (=> b!5261155 m!6302644))

(assert (=> bm!373057 m!6302632))

(assert (=> d!1693443 m!6302632))

(assert (=> d!1693443 m!6302330))

(declare-fun m!6302646 () Bool)

(assert (=> b!5261162 m!6302646))

(assert (=> b!5261160 m!6302640))

(assert (=> b!5261160 m!6302640))

(declare-fun m!6302648 () Bool)

(assert (=> b!5261160 m!6302648))

(assert (=> b!5261160 m!6302642))

(assert (=> b!5261160 m!6302648))

(assert (=> b!5261160 m!6302642))

(declare-fun m!6302650 () Bool)

(assert (=> b!5261160 m!6302650))

(assert (=> b!5261157 m!6302642))

(assert (=> b!5261157 m!6302642))

(assert (=> b!5261157 m!6302644))

(assert (=> b!5261164 m!6302640))

(assert (=> b!5260607 d!1693443))

(declare-fun d!1693445 () Bool)

(assert (=> d!1693445 (= (matchR!7064 r!7292 s!2326) (matchRSpec!1982 r!7292 s!2326))))

(declare-fun lt!2155404 () Unit!153034)

(declare-fun choose!39253 (Regex!14879 List!60938) Unit!153034)

(assert (=> d!1693445 (= lt!2155404 (choose!39253 r!7292 s!2326))))

(assert (=> d!1693445 (validRegex!6615 r!7292)))

(assert (=> d!1693445 (= (mainMatchTheorem!1982 r!7292 s!2326) lt!2155404)))

(declare-fun bs!1219746 () Bool)

(assert (= bs!1219746 d!1693445))

(assert (=> bs!1219746 m!6302340))

(assert (=> bs!1219746 m!6302338))

(declare-fun m!6302652 () Bool)

(assert (=> bs!1219746 m!6302652))

(assert (=> bs!1219746 m!6302330))

(assert (=> b!5260607 d!1693445))

(declare-fun d!1693447 () Bool)

(declare-fun e!3272668 () Bool)

(assert (=> d!1693447 e!3272668))

(declare-fun res!2232532 () Bool)

(assert (=> d!1693447 (=> (not res!2232532) (not e!3272668))))

(declare-fun lt!2155407 () List!60937)

(declare-fun noDuplicate!1237 (List!60937) Bool)

(assert (=> d!1693447 (= res!2232532 (noDuplicate!1237 lt!2155407))))

(declare-fun choose!39254 ((InoxSet Context!8526)) List!60937)

(assert (=> d!1693447 (= lt!2155407 (choose!39254 z!1189))))

(assert (=> d!1693447 (= (toList!8663 z!1189) lt!2155407)))

(declare-fun b!5261170 () Bool)

(declare-fun content!10806 (List!60937) (InoxSet Context!8526))

(assert (=> b!5261170 (= e!3272668 (= (content!10806 lt!2155407) z!1189))))

(assert (= (and d!1693447 res!2232532) b!5261170))

(declare-fun m!6302654 () Bool)

(assert (=> d!1693447 m!6302654))

(declare-fun m!6302656 () Bool)

(assert (=> d!1693447 m!6302656))

(declare-fun m!6302658 () Bool)

(assert (=> b!5261170 m!6302658))

(assert (=> b!5260625 d!1693447))

(declare-fun bs!1219747 () Bool)

(declare-fun d!1693449 () Bool)

(assert (= bs!1219747 (and d!1693449 d!1693401)))

(declare-fun lambda!265257 () Int)

(assert (=> bs!1219747 (= lambda!265257 lambda!265238)))

(declare-fun bs!1219748 () Bool)

(assert (= bs!1219748 (and d!1693449 d!1693405)))

(assert (=> bs!1219748 (= lambda!265257 lambda!265239)))

(declare-fun b!5261191 () Bool)

(declare-fun e!3272684 () Regex!14879)

(declare-fun e!3272685 () Regex!14879)

(assert (=> b!5261191 (= e!3272684 e!3272685)))

(declare-fun c!910719 () Bool)

(assert (=> b!5261191 (= c!910719 ((_ is Cons!60812) (exprs!4763 (h!67261 zl!343))))))

(declare-fun b!5261192 () Bool)

(declare-fun e!3272683 () Bool)

(assert (=> b!5261192 (= e!3272683 (isEmpty!32755 (t!374121 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun b!5261193 () Bool)

(assert (=> b!5261193 (= e!3272685 (Concat!23724 (h!67260 (exprs!4763 (h!67261 zl!343))) (generalisedConcat!548 (t!374121 (exprs!4763 (h!67261 zl!343))))))))

(declare-fun e!3272686 () Bool)

(assert (=> d!1693449 e!3272686))

(declare-fun res!2232537 () Bool)

(assert (=> d!1693449 (=> (not res!2232537) (not e!3272686))))

(declare-fun lt!2155410 () Regex!14879)

(assert (=> d!1693449 (= res!2232537 (validRegex!6615 lt!2155410))))

(assert (=> d!1693449 (= lt!2155410 e!3272684)))

(declare-fun c!910720 () Bool)

(assert (=> d!1693449 (= c!910720 e!3272683)))

(declare-fun res!2232538 () Bool)

(assert (=> d!1693449 (=> (not res!2232538) (not e!3272683))))

(assert (=> d!1693449 (= res!2232538 ((_ is Cons!60812) (exprs!4763 (h!67261 zl!343))))))

(assert (=> d!1693449 (forall!14291 (exprs!4763 (h!67261 zl!343)) lambda!265257)))

(assert (=> d!1693449 (= (generalisedConcat!548 (exprs!4763 (h!67261 zl!343))) lt!2155410)))

(declare-fun b!5261194 () Bool)

(declare-fun e!3272682 () Bool)

(declare-fun head!11283 (List!60936) Regex!14879)

(assert (=> b!5261194 (= e!3272682 (= lt!2155410 (head!11283 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun b!5261195 () Bool)

(declare-fun isConcat!340 (Regex!14879) Bool)

(assert (=> b!5261195 (= e!3272682 (isConcat!340 lt!2155410))))

(declare-fun b!5261196 () Bool)

(declare-fun e!3272681 () Bool)

(assert (=> b!5261196 (= e!3272686 e!3272681)))

(declare-fun c!910718 () Bool)

(assert (=> b!5261196 (= c!910718 (isEmpty!32755 (exprs!4763 (h!67261 zl!343))))))

(declare-fun b!5261197 () Bool)

(assert (=> b!5261197 (= e!3272685 EmptyExpr!14879)))

(declare-fun b!5261198 () Bool)

(declare-fun isEmptyExpr!817 (Regex!14879) Bool)

(assert (=> b!5261198 (= e!3272681 (isEmptyExpr!817 lt!2155410))))

(declare-fun b!5261199 () Bool)

(assert (=> b!5261199 (= e!3272684 (h!67260 (exprs!4763 (h!67261 zl!343))))))

(declare-fun b!5261200 () Bool)

(assert (=> b!5261200 (= e!3272681 e!3272682)))

(declare-fun c!910721 () Bool)

(declare-fun tail!10380 (List!60936) List!60936)

(assert (=> b!5261200 (= c!910721 (isEmpty!32755 (tail!10380 (exprs!4763 (h!67261 zl!343)))))))

(assert (= (and d!1693449 res!2232538) b!5261192))

(assert (= (and d!1693449 c!910720) b!5261199))

(assert (= (and d!1693449 (not c!910720)) b!5261191))

(assert (= (and b!5261191 c!910719) b!5261193))

(assert (= (and b!5261191 (not c!910719)) b!5261197))

(assert (= (and d!1693449 res!2232537) b!5261196))

(assert (= (and b!5261196 c!910718) b!5261198))

(assert (= (and b!5261196 (not c!910718)) b!5261200))

(assert (= (and b!5261200 c!910721) b!5261194))

(assert (= (and b!5261200 (not c!910721)) b!5261195))

(declare-fun m!6302660 () Bool)

(assert (=> d!1693449 m!6302660))

(declare-fun m!6302662 () Bool)

(assert (=> d!1693449 m!6302662))

(declare-fun m!6302664 () Bool)

(assert (=> b!5261196 m!6302664))

(declare-fun m!6302666 () Bool)

(assert (=> b!5261194 m!6302666))

(declare-fun m!6302668 () Bool)

(assert (=> b!5261195 m!6302668))

(declare-fun m!6302670 () Bool)

(assert (=> b!5261200 m!6302670))

(assert (=> b!5261200 m!6302670))

(declare-fun m!6302672 () Bool)

(assert (=> b!5261200 m!6302672))

(assert (=> b!5261192 m!6302308))

(declare-fun m!6302674 () Bool)

(assert (=> b!5261193 m!6302674))

(declare-fun m!6302676 () Bool)

(assert (=> b!5261198 m!6302676))

(assert (=> b!5260616 d!1693449))

(declare-fun bm!373064 () Bool)

(declare-fun call!373070 () Bool)

(declare-fun c!910727 () Bool)

(declare-fun c!910726 () Bool)

(assert (=> bm!373064 (= call!373070 (validRegex!6615 (ite c!910726 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))) (ite c!910727 (regOne!30271 (regTwo!30270 (regOne!30270 r!7292))) (regOne!30270 (regTwo!30270 (regOne!30270 r!7292)))))))))

(declare-fun b!5261219 () Bool)

(declare-fun e!3272704 () Bool)

(assert (=> b!5261219 (= e!3272704 call!373070)))

(declare-fun b!5261220 () Bool)

(declare-fun e!3272705 () Bool)

(declare-fun call!373069 () Bool)

(assert (=> b!5261220 (= e!3272705 call!373069)))

(declare-fun d!1693451 () Bool)

(declare-fun res!2232550 () Bool)

(declare-fun e!3272706 () Bool)

(assert (=> d!1693451 (=> res!2232550 e!3272706)))

(assert (=> d!1693451 (= res!2232550 ((_ is ElementMatch!14879) (regTwo!30270 (regOne!30270 r!7292))))))

(assert (=> d!1693451 (= (validRegex!6615 (regTwo!30270 (regOne!30270 r!7292))) e!3272706)))

(declare-fun b!5261221 () Bool)

(declare-fun e!3272703 () Bool)

(assert (=> b!5261221 (= e!3272703 call!373069)))

(declare-fun b!5261222 () Bool)

(declare-fun e!3272701 () Bool)

(assert (=> b!5261222 (= e!3272701 e!3272705)))

(declare-fun res!2232551 () Bool)

(assert (=> b!5261222 (=> (not res!2232551) (not e!3272705))))

(declare-fun call!373071 () Bool)

(assert (=> b!5261222 (= res!2232551 call!373071)))

(declare-fun b!5261223 () Bool)

(declare-fun e!3272707 () Bool)

(declare-fun e!3272702 () Bool)

(assert (=> b!5261223 (= e!3272707 e!3272702)))

(assert (=> b!5261223 (= c!910727 ((_ is Union!14879) (regTwo!30270 (regOne!30270 r!7292))))))

(declare-fun b!5261224 () Bool)

(declare-fun res!2232549 () Bool)

(assert (=> b!5261224 (=> (not res!2232549) (not e!3272703))))

(assert (=> b!5261224 (= res!2232549 call!373071)))

(assert (=> b!5261224 (= e!3272702 e!3272703)))

(declare-fun b!5261225 () Bool)

(assert (=> b!5261225 (= e!3272706 e!3272707)))

(assert (=> b!5261225 (= c!910726 ((_ is Star!14879) (regTwo!30270 (regOne!30270 r!7292))))))

(declare-fun bm!373065 () Bool)

(assert (=> bm!373065 (= call!373069 (validRegex!6615 (ite c!910727 (regTwo!30271 (regTwo!30270 (regOne!30270 r!7292))) (regTwo!30270 (regTwo!30270 (regOne!30270 r!7292))))))))

(declare-fun bm!373066 () Bool)

(assert (=> bm!373066 (= call!373071 call!373070)))

(declare-fun b!5261226 () Bool)

(declare-fun res!2232552 () Bool)

(assert (=> b!5261226 (=> res!2232552 e!3272701)))

(assert (=> b!5261226 (= res!2232552 (not ((_ is Concat!23724) (regTwo!30270 (regOne!30270 r!7292)))))))

(assert (=> b!5261226 (= e!3272702 e!3272701)))

(declare-fun b!5261227 () Bool)

(assert (=> b!5261227 (= e!3272707 e!3272704)))

(declare-fun res!2232553 () Bool)

(assert (=> b!5261227 (= res!2232553 (not (nullable!5048 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))))))))

(assert (=> b!5261227 (=> (not res!2232553) (not e!3272704))))

(assert (= (and d!1693451 (not res!2232550)) b!5261225))

(assert (= (and b!5261225 c!910726) b!5261227))

(assert (= (and b!5261225 (not c!910726)) b!5261223))

(assert (= (and b!5261227 res!2232553) b!5261219))

(assert (= (and b!5261223 c!910727) b!5261224))

(assert (= (and b!5261223 (not c!910727)) b!5261226))

(assert (= (and b!5261224 res!2232549) b!5261221))

(assert (= (and b!5261226 (not res!2232552)) b!5261222))

(assert (= (and b!5261222 res!2232551) b!5261220))

(assert (= (or b!5261221 b!5261220) bm!373065))

(assert (= (or b!5261224 b!5261222) bm!373066))

(assert (= (or b!5261219 bm!373066) bm!373064))

(declare-fun m!6302678 () Bool)

(assert (=> bm!373064 m!6302678))

(declare-fun m!6302680 () Bool)

(assert (=> bm!373065 m!6302680))

(declare-fun m!6302682 () Bool)

(assert (=> b!5261227 m!6302682))

(assert (=> b!5260624 d!1693451))

(declare-fun bs!1219749 () Bool)

(declare-fun d!1693453 () Bool)

(assert (= bs!1219749 (and d!1693453 d!1693401)))

(declare-fun lambda!265260 () Int)

(assert (=> bs!1219749 (= lambda!265260 lambda!265238)))

(declare-fun bs!1219750 () Bool)

(assert (= bs!1219750 (and d!1693453 d!1693405)))

(assert (=> bs!1219750 (= lambda!265260 lambda!265239)))

(declare-fun bs!1219751 () Bool)

(assert (= bs!1219751 (and d!1693453 d!1693449)))

(assert (=> bs!1219751 (= lambda!265260 lambda!265257)))

(declare-fun b!5261248 () Bool)

(declare-fun e!3272723 () Regex!14879)

(assert (=> b!5261248 (= e!3272723 EmptyLang!14879)))

(declare-fun b!5261249 () Bool)

(declare-fun e!3272725 () Regex!14879)

(assert (=> b!5261249 (= e!3272725 e!3272723)))

(declare-fun c!910737 () Bool)

(assert (=> b!5261249 (= c!910737 ((_ is Cons!60812) (unfocusZipperList!321 zl!343)))))

(declare-fun b!5261250 () Bool)

(declare-fun e!3272722 () Bool)

(declare-fun lt!2155413 () Regex!14879)

(declare-fun isUnion!257 (Regex!14879) Bool)

(assert (=> b!5261250 (= e!3272722 (isUnion!257 lt!2155413))))

(declare-fun b!5261251 () Bool)

(declare-fun e!3272721 () Bool)

(assert (=> b!5261251 (= e!3272721 (isEmpty!32755 (t!374121 (unfocusZipperList!321 zl!343))))))

(declare-fun b!5261252 () Bool)

(declare-fun e!3272720 () Bool)

(declare-fun isEmptyLang!825 (Regex!14879) Bool)

(assert (=> b!5261252 (= e!3272720 (isEmptyLang!825 lt!2155413))))

(declare-fun b!5261253 () Bool)

(assert (=> b!5261253 (= e!3272722 (= lt!2155413 (head!11283 (unfocusZipperList!321 zl!343))))))

(declare-fun e!3272724 () Bool)

(assert (=> d!1693453 e!3272724))

(declare-fun res!2232559 () Bool)

(assert (=> d!1693453 (=> (not res!2232559) (not e!3272724))))

(assert (=> d!1693453 (= res!2232559 (validRegex!6615 lt!2155413))))

(assert (=> d!1693453 (= lt!2155413 e!3272725)))

(declare-fun c!910736 () Bool)

(assert (=> d!1693453 (= c!910736 e!3272721)))

(declare-fun res!2232558 () Bool)

(assert (=> d!1693453 (=> (not res!2232558) (not e!3272721))))

(assert (=> d!1693453 (= res!2232558 ((_ is Cons!60812) (unfocusZipperList!321 zl!343)))))

(assert (=> d!1693453 (forall!14291 (unfocusZipperList!321 zl!343) lambda!265260)))

(assert (=> d!1693453 (= (generalisedUnion!808 (unfocusZipperList!321 zl!343)) lt!2155413)))

(declare-fun b!5261254 () Bool)

(assert (=> b!5261254 (= e!3272725 (h!67260 (unfocusZipperList!321 zl!343)))))

(declare-fun b!5261255 () Bool)

(assert (=> b!5261255 (= e!3272720 e!3272722)))

(declare-fun c!910738 () Bool)

(assert (=> b!5261255 (= c!910738 (isEmpty!32755 (tail!10380 (unfocusZipperList!321 zl!343))))))

(declare-fun b!5261256 () Bool)

(assert (=> b!5261256 (= e!3272723 (Union!14879 (h!67260 (unfocusZipperList!321 zl!343)) (generalisedUnion!808 (t!374121 (unfocusZipperList!321 zl!343)))))))

(declare-fun b!5261257 () Bool)

(assert (=> b!5261257 (= e!3272724 e!3272720)))

(declare-fun c!910739 () Bool)

(assert (=> b!5261257 (= c!910739 (isEmpty!32755 (unfocusZipperList!321 zl!343)))))

(assert (= (and d!1693453 res!2232558) b!5261251))

(assert (= (and d!1693453 c!910736) b!5261254))

(assert (= (and d!1693453 (not c!910736)) b!5261249))

(assert (= (and b!5261249 c!910737) b!5261256))

(assert (= (and b!5261249 (not c!910737)) b!5261248))

(assert (= (and d!1693453 res!2232559) b!5261257))

(assert (= (and b!5261257 c!910739) b!5261252))

(assert (= (and b!5261257 (not c!910739)) b!5261255))

(assert (= (and b!5261255 c!910738) b!5261253))

(assert (= (and b!5261255 (not c!910738)) b!5261250))

(assert (=> b!5261257 m!6302344))

(declare-fun m!6302684 () Bool)

(assert (=> b!5261257 m!6302684))

(declare-fun m!6302686 () Bool)

(assert (=> b!5261256 m!6302686))

(declare-fun m!6302688 () Bool)

(assert (=> d!1693453 m!6302688))

(assert (=> d!1693453 m!6302344))

(declare-fun m!6302690 () Bool)

(assert (=> d!1693453 m!6302690))

(declare-fun m!6302692 () Bool)

(assert (=> b!5261252 m!6302692))

(declare-fun m!6302694 () Bool)

(assert (=> b!5261251 m!6302694))

(assert (=> b!5261255 m!6302344))

(declare-fun m!6302696 () Bool)

(assert (=> b!5261255 m!6302696))

(assert (=> b!5261255 m!6302696))

(declare-fun m!6302698 () Bool)

(assert (=> b!5261255 m!6302698))

(declare-fun m!6302700 () Bool)

(assert (=> b!5261250 m!6302700))

(assert (=> b!5261253 m!6302344))

(declare-fun m!6302702 () Bool)

(assert (=> b!5261253 m!6302702))

(assert (=> b!5260605 d!1693453))

(declare-fun bs!1219752 () Bool)

(declare-fun d!1693455 () Bool)

(assert (= bs!1219752 (and d!1693455 d!1693401)))

(declare-fun lambda!265263 () Int)

(assert (=> bs!1219752 (= lambda!265263 lambda!265238)))

(declare-fun bs!1219753 () Bool)

(assert (= bs!1219753 (and d!1693455 d!1693405)))

(assert (=> bs!1219753 (= lambda!265263 lambda!265239)))

(declare-fun bs!1219754 () Bool)

(assert (= bs!1219754 (and d!1693455 d!1693449)))

(assert (=> bs!1219754 (= lambda!265263 lambda!265257)))

(declare-fun bs!1219755 () Bool)

(assert (= bs!1219755 (and d!1693455 d!1693453)))

(assert (=> bs!1219755 (= lambda!265263 lambda!265260)))

(declare-fun lt!2155416 () List!60936)

(assert (=> d!1693455 (forall!14291 lt!2155416 lambda!265263)))

(declare-fun e!3272728 () List!60936)

(assert (=> d!1693455 (= lt!2155416 e!3272728)))

(declare-fun c!910742 () Bool)

(assert (=> d!1693455 (= c!910742 ((_ is Cons!60813) zl!343))))

(assert (=> d!1693455 (= (unfocusZipperList!321 zl!343) lt!2155416)))

(declare-fun b!5261262 () Bool)

(assert (=> b!5261262 (= e!3272728 (Cons!60812 (generalisedConcat!548 (exprs!4763 (h!67261 zl!343))) (unfocusZipperList!321 (t!374122 zl!343))))))

(declare-fun b!5261263 () Bool)

(assert (=> b!5261263 (= e!3272728 Nil!60812)))

(assert (= (and d!1693455 c!910742) b!5261262))

(assert (= (and d!1693455 (not c!910742)) b!5261263))

(declare-fun m!6302704 () Bool)

(assert (=> d!1693455 m!6302704))

(assert (=> b!5261262 m!6302350))

(declare-fun m!6302706 () Bool)

(assert (=> b!5261262 m!6302706))

(assert (=> b!5260605 d!1693455))

(declare-fun call!373073 () Bool)

(declare-fun bm!373067 () Bool)

(declare-fun c!910744 () Bool)

(declare-fun c!910743 () Bool)

(assert (=> bm!373067 (= call!373073 (validRegex!6615 (ite c!910743 (reg!15208 r!7292) (ite c!910744 (regOne!30271 r!7292) (regOne!30270 r!7292)))))))

(declare-fun b!5261264 () Bool)

(declare-fun e!3272732 () Bool)

(assert (=> b!5261264 (= e!3272732 call!373073)))

(declare-fun b!5261265 () Bool)

(declare-fun e!3272733 () Bool)

(declare-fun call!373072 () Bool)

(assert (=> b!5261265 (= e!3272733 call!373072)))

(declare-fun d!1693457 () Bool)

(declare-fun res!2232561 () Bool)

(declare-fun e!3272734 () Bool)

(assert (=> d!1693457 (=> res!2232561 e!3272734)))

(assert (=> d!1693457 (= res!2232561 ((_ is ElementMatch!14879) r!7292))))

(assert (=> d!1693457 (= (validRegex!6615 r!7292) e!3272734)))

(declare-fun b!5261266 () Bool)

(declare-fun e!3272731 () Bool)

(assert (=> b!5261266 (= e!3272731 call!373072)))

(declare-fun b!5261267 () Bool)

(declare-fun e!3272729 () Bool)

(assert (=> b!5261267 (= e!3272729 e!3272733)))

(declare-fun res!2232562 () Bool)

(assert (=> b!5261267 (=> (not res!2232562) (not e!3272733))))

(declare-fun call!373074 () Bool)

(assert (=> b!5261267 (= res!2232562 call!373074)))

(declare-fun b!5261268 () Bool)

(declare-fun e!3272735 () Bool)

(declare-fun e!3272730 () Bool)

(assert (=> b!5261268 (= e!3272735 e!3272730)))

(assert (=> b!5261268 (= c!910744 ((_ is Union!14879) r!7292))))

(declare-fun b!5261269 () Bool)

(declare-fun res!2232560 () Bool)

(assert (=> b!5261269 (=> (not res!2232560) (not e!3272731))))

(assert (=> b!5261269 (= res!2232560 call!373074)))

(assert (=> b!5261269 (= e!3272730 e!3272731)))

(declare-fun b!5261270 () Bool)

(assert (=> b!5261270 (= e!3272734 e!3272735)))

(assert (=> b!5261270 (= c!910743 ((_ is Star!14879) r!7292))))

(declare-fun bm!373068 () Bool)

(assert (=> bm!373068 (= call!373072 (validRegex!6615 (ite c!910744 (regTwo!30271 r!7292) (regTwo!30270 r!7292))))))

(declare-fun bm!373069 () Bool)

(assert (=> bm!373069 (= call!373074 call!373073)))

(declare-fun b!5261271 () Bool)

(declare-fun res!2232563 () Bool)

(assert (=> b!5261271 (=> res!2232563 e!3272729)))

(assert (=> b!5261271 (= res!2232563 (not ((_ is Concat!23724) r!7292)))))

(assert (=> b!5261271 (= e!3272730 e!3272729)))

(declare-fun b!5261272 () Bool)

(assert (=> b!5261272 (= e!3272735 e!3272732)))

(declare-fun res!2232564 () Bool)

(assert (=> b!5261272 (= res!2232564 (not (nullable!5048 (reg!15208 r!7292))))))

(assert (=> b!5261272 (=> (not res!2232564) (not e!3272732))))

(assert (= (and d!1693457 (not res!2232561)) b!5261270))

(assert (= (and b!5261270 c!910743) b!5261272))

(assert (= (and b!5261270 (not c!910743)) b!5261268))

(assert (= (and b!5261272 res!2232564) b!5261264))

(assert (= (and b!5261268 c!910744) b!5261269))

(assert (= (and b!5261268 (not c!910744)) b!5261271))

(assert (= (and b!5261269 res!2232560) b!5261266))

(assert (= (and b!5261271 (not res!2232563)) b!5261267))

(assert (= (and b!5261267 res!2232562) b!5261265))

(assert (= (or b!5261266 b!5261265) bm!373068))

(assert (= (or b!5261269 b!5261267) bm!373069))

(assert (= (or b!5261264 bm!373069) bm!373067))

(declare-fun m!6302708 () Bool)

(assert (=> bm!373067 m!6302708))

(declare-fun m!6302710 () Bool)

(assert (=> bm!373068 m!6302710))

(declare-fun m!6302712 () Bool)

(assert (=> b!5261272 m!6302712))

(assert (=> start!555618 d!1693457))

(declare-fun d!1693459 () Bool)

(declare-fun lt!2155419 () Regex!14879)

(assert (=> d!1693459 (validRegex!6615 lt!2155419)))

(assert (=> d!1693459 (= lt!2155419 (generalisedUnion!808 (unfocusZipperList!321 zl!343)))))

(assert (=> d!1693459 (= (unfocusZipper!621 zl!343) lt!2155419)))

(declare-fun bs!1219756 () Bool)

(assert (= bs!1219756 d!1693459))

(declare-fun m!6302714 () Bool)

(assert (=> bs!1219756 m!6302714))

(assert (=> bs!1219756 m!6302344))

(assert (=> bs!1219756 m!6302344))

(assert (=> bs!1219756 m!6302346))

(assert (=> b!5260614 d!1693459))

(declare-fun d!1693461 () Bool)

(declare-fun e!3272738 () Bool)

(assert (=> d!1693461 (= (matchZipper!1123 ((_ map or) lt!2155338 lt!2155333) (t!374123 s!2326)) e!3272738)))

(declare-fun res!2232567 () Bool)

(assert (=> d!1693461 (=> res!2232567 e!3272738)))

(assert (=> d!1693461 (= res!2232567 (matchZipper!1123 lt!2155338 (t!374123 s!2326)))))

(declare-fun lt!2155422 () Unit!153034)

(declare-fun choose!39255 ((InoxSet Context!8526) (InoxSet Context!8526) List!60938) Unit!153034)

(assert (=> d!1693461 (= lt!2155422 (choose!39255 lt!2155338 lt!2155333 (t!374123 s!2326)))))

(assert (=> d!1693461 (= (lemmaZipperConcatMatchesSameAsBothZippers!116 lt!2155338 lt!2155333 (t!374123 s!2326)) lt!2155422)))

(declare-fun b!5261275 () Bool)

(assert (=> b!5261275 (= e!3272738 (matchZipper!1123 lt!2155333 (t!374123 s!2326)))))

(assert (= (and d!1693461 (not res!2232567)) b!5261275))

(assert (=> d!1693461 m!6302336))

(assert (=> d!1693461 m!6302334))

(declare-fun m!6302716 () Bool)

(assert (=> d!1693461 m!6302716))

(assert (=> b!5261275 m!6302352))

(assert (=> b!5260623 d!1693461))

(declare-fun d!1693463 () Bool)

(declare-fun c!910747 () Bool)

(assert (=> d!1693463 (= c!910747 (isEmpty!32760 (t!374123 s!2326)))))

(declare-fun e!3272741 () Bool)

(assert (=> d!1693463 (= (matchZipper!1123 lt!2155338 (t!374123 s!2326)) e!3272741)))

(declare-fun b!5261280 () Bool)

(declare-fun nullableZipper!1282 ((InoxSet Context!8526)) Bool)

(assert (=> b!5261280 (= e!3272741 (nullableZipper!1282 lt!2155338))))

(declare-fun b!5261281 () Bool)

(declare-fun derivationStepZipper!1126 ((InoxSet Context!8526) C!30028) (InoxSet Context!8526))

(assert (=> b!5261281 (= e!3272741 (matchZipper!1123 (derivationStepZipper!1126 lt!2155338 (head!11282 (t!374123 s!2326))) (tail!10379 (t!374123 s!2326))))))

(assert (= (and d!1693463 c!910747) b!5261280))

(assert (= (and d!1693463 (not c!910747)) b!5261281))

(declare-fun m!6302718 () Bool)

(assert (=> d!1693463 m!6302718))

(declare-fun m!6302720 () Bool)

(assert (=> b!5261280 m!6302720))

(declare-fun m!6302722 () Bool)

(assert (=> b!5261281 m!6302722))

(assert (=> b!5261281 m!6302722))

(declare-fun m!6302724 () Bool)

(assert (=> b!5261281 m!6302724))

(declare-fun m!6302726 () Bool)

(assert (=> b!5261281 m!6302726))

(assert (=> b!5261281 m!6302724))

(assert (=> b!5261281 m!6302726))

(declare-fun m!6302728 () Bool)

(assert (=> b!5261281 m!6302728))

(assert (=> b!5260623 d!1693463))

(declare-fun d!1693465 () Bool)

(declare-fun c!910748 () Bool)

(assert (=> d!1693465 (= c!910748 (isEmpty!32760 (t!374123 s!2326)))))

(declare-fun e!3272742 () Bool)

(assert (=> d!1693465 (= (matchZipper!1123 ((_ map or) lt!2155338 lt!2155333) (t!374123 s!2326)) e!3272742)))

(declare-fun b!5261282 () Bool)

(assert (=> b!5261282 (= e!3272742 (nullableZipper!1282 ((_ map or) lt!2155338 lt!2155333)))))

(declare-fun b!5261283 () Bool)

(assert (=> b!5261283 (= e!3272742 (matchZipper!1123 (derivationStepZipper!1126 ((_ map or) lt!2155338 lt!2155333) (head!11282 (t!374123 s!2326))) (tail!10379 (t!374123 s!2326))))))

(assert (= (and d!1693465 c!910748) b!5261282))

(assert (= (and d!1693465 (not c!910748)) b!5261283))

(assert (=> d!1693465 m!6302718))

(declare-fun m!6302730 () Bool)

(assert (=> b!5261282 m!6302730))

(assert (=> b!5261283 m!6302722))

(assert (=> b!5261283 m!6302722))

(declare-fun m!6302732 () Bool)

(assert (=> b!5261283 m!6302732))

(assert (=> b!5261283 m!6302726))

(assert (=> b!5261283 m!6302732))

(assert (=> b!5261283 m!6302726))

(declare-fun m!6302734 () Bool)

(assert (=> b!5261283 m!6302734))

(assert (=> b!5260623 d!1693465))

(declare-fun d!1693467 () Bool)

(assert (=> d!1693467 (= (nullable!5048 (regOne!30270 (regOne!30270 r!7292))) (nullableFct!1434 (regOne!30270 (regOne!30270 r!7292))))))

(declare-fun bs!1219757 () Bool)

(assert (= bs!1219757 d!1693467))

(declare-fun m!6302736 () Bool)

(assert (=> bs!1219757 m!6302736))

(assert (=> b!5260602 d!1693467))

(declare-fun d!1693469 () Bool)

(declare-fun c!910749 () Bool)

(assert (=> d!1693469 (= c!910749 (isEmpty!32760 (t!374123 s!2326)))))

(declare-fun e!3272743 () Bool)

(assert (=> d!1693469 (= (matchZipper!1123 lt!2155333 (t!374123 s!2326)) e!3272743)))

(declare-fun b!5261284 () Bool)

(assert (=> b!5261284 (= e!3272743 (nullableZipper!1282 lt!2155333))))

(declare-fun b!5261285 () Bool)

(assert (=> b!5261285 (= e!3272743 (matchZipper!1123 (derivationStepZipper!1126 lt!2155333 (head!11282 (t!374123 s!2326))) (tail!10379 (t!374123 s!2326))))))

(assert (= (and d!1693469 c!910749) b!5261284))

(assert (= (and d!1693469 (not c!910749)) b!5261285))

(assert (=> d!1693469 m!6302718))

(declare-fun m!6302738 () Bool)

(assert (=> b!5261284 m!6302738))

(assert (=> b!5261285 m!6302722))

(assert (=> b!5261285 m!6302722))

(declare-fun m!6302740 () Bool)

(assert (=> b!5261285 m!6302740))

(assert (=> b!5261285 m!6302726))

(assert (=> b!5261285 m!6302740))

(assert (=> b!5261285 m!6302726))

(declare-fun m!6302742 () Bool)

(assert (=> b!5261285 m!6302742))

(assert (=> b!5260622 d!1693469))

(declare-fun d!1693471 () Bool)

(assert (=> d!1693471 (= (isEmpty!32756 (t!374122 zl!343)) ((_ is Nil!60813) (t!374122 zl!343)))))

(assert (=> b!5260612 d!1693471))

(declare-fun b!5261293 () Bool)

(declare-fun e!3272749 () Bool)

(declare-fun tp!1470792 () Bool)

(assert (=> b!5261293 (= e!3272749 tp!1470792)))

(declare-fun b!5261292 () Bool)

(declare-fun e!3272748 () Bool)

(declare-fun tp!1470793 () Bool)

(assert (=> b!5261292 (= e!3272748 (and (inv!80444 (h!67261 (t!374122 zl!343))) e!3272749 tp!1470793))))

(assert (=> b!5260619 (= tp!1470722 e!3272748)))

(assert (= b!5261292 b!5261293))

(assert (= (and b!5260619 ((_ is Cons!60813) (t!374122 zl!343))) b!5261292))

(declare-fun m!6302744 () Bool)

(assert (=> b!5261292 m!6302744))

(declare-fun condSetEmpty!33637 () Bool)

(assert (=> setNonEmpty!33631 (= condSetEmpty!33637 (= setRest!33631 ((as const (Array Context!8526 Bool)) false)))))

(declare-fun setRes!33637 () Bool)

(assert (=> setNonEmpty!33631 (= tp!1470720 setRes!33637)))

(declare-fun setIsEmpty!33637 () Bool)

(assert (=> setIsEmpty!33637 setRes!33637))

(declare-fun setNonEmpty!33637 () Bool)

(declare-fun tp!1470799 () Bool)

(declare-fun setElem!33637 () Context!8526)

(declare-fun e!3272752 () Bool)

(assert (=> setNonEmpty!33637 (= setRes!33637 (and tp!1470799 (inv!80444 setElem!33637) e!3272752))))

(declare-fun setRest!33637 () (InoxSet Context!8526))

(assert (=> setNonEmpty!33637 (= setRest!33631 ((_ map or) (store ((as const (Array Context!8526 Bool)) false) setElem!33637 true) setRest!33637))))

(declare-fun b!5261298 () Bool)

(declare-fun tp!1470798 () Bool)

(assert (=> b!5261298 (= e!3272752 tp!1470798)))

(assert (= (and setNonEmpty!33631 condSetEmpty!33637) setIsEmpty!33637))

(assert (= (and setNonEmpty!33631 (not condSetEmpty!33637)) setNonEmpty!33637))

(assert (= setNonEmpty!33637 b!5261298))

(declare-fun m!6302746 () Bool)

(assert (=> setNonEmpty!33637 m!6302746))

(declare-fun b!5261311 () Bool)

(declare-fun e!3272755 () Bool)

(declare-fun tp!1470813 () Bool)

(assert (=> b!5261311 (= e!3272755 tp!1470813)))

(declare-fun b!5261309 () Bool)

(assert (=> b!5261309 (= e!3272755 tp_is_empty!39011)))

(assert (=> b!5260603 (= tp!1470728 e!3272755)))

(declare-fun b!5261312 () Bool)

(declare-fun tp!1470811 () Bool)

(declare-fun tp!1470814 () Bool)

(assert (=> b!5261312 (= e!3272755 (and tp!1470811 tp!1470814))))

(declare-fun b!5261310 () Bool)

(declare-fun tp!1470810 () Bool)

(declare-fun tp!1470812 () Bool)

(assert (=> b!5261310 (= e!3272755 (and tp!1470810 tp!1470812))))

(assert (= (and b!5260603 ((_ is ElementMatch!14879) (regOne!30271 r!7292))) b!5261309))

(assert (= (and b!5260603 ((_ is Concat!23724) (regOne!30271 r!7292))) b!5261310))

(assert (= (and b!5260603 ((_ is Star!14879) (regOne!30271 r!7292))) b!5261311))

(assert (= (and b!5260603 ((_ is Union!14879) (regOne!30271 r!7292))) b!5261312))

(declare-fun b!5261315 () Bool)

(declare-fun e!3272756 () Bool)

(declare-fun tp!1470818 () Bool)

(assert (=> b!5261315 (= e!3272756 tp!1470818)))

(declare-fun b!5261313 () Bool)

(assert (=> b!5261313 (= e!3272756 tp_is_empty!39011)))

(assert (=> b!5260603 (= tp!1470724 e!3272756)))

(declare-fun b!5261316 () Bool)

(declare-fun tp!1470816 () Bool)

(declare-fun tp!1470819 () Bool)

(assert (=> b!5261316 (= e!3272756 (and tp!1470816 tp!1470819))))

(declare-fun b!5261314 () Bool)

(declare-fun tp!1470815 () Bool)

(declare-fun tp!1470817 () Bool)

(assert (=> b!5261314 (= e!3272756 (and tp!1470815 tp!1470817))))

(assert (= (and b!5260603 ((_ is ElementMatch!14879) (regTwo!30271 r!7292))) b!5261313))

(assert (= (and b!5260603 ((_ is Concat!23724) (regTwo!30271 r!7292))) b!5261314))

(assert (= (and b!5260603 ((_ is Star!14879) (regTwo!30271 r!7292))) b!5261315))

(assert (= (and b!5260603 ((_ is Union!14879) (regTwo!30271 r!7292))) b!5261316))

(declare-fun b!5261321 () Bool)

(declare-fun e!3272759 () Bool)

(declare-fun tp!1470824 () Bool)

(declare-fun tp!1470825 () Bool)

(assert (=> b!5261321 (= e!3272759 (and tp!1470824 tp!1470825))))

(assert (=> b!5260604 (= tp!1470727 e!3272759)))

(assert (= (and b!5260604 ((_ is Cons!60812) (exprs!4763 (h!67261 zl!343)))) b!5261321))

(declare-fun b!5261324 () Bool)

(declare-fun e!3272760 () Bool)

(declare-fun tp!1470829 () Bool)

(assert (=> b!5261324 (= e!3272760 tp!1470829)))

(declare-fun b!5261322 () Bool)

(assert (=> b!5261322 (= e!3272760 tp_is_empty!39011)))

(assert (=> b!5260621 (= tp!1470721 e!3272760)))

(declare-fun b!5261325 () Bool)

(declare-fun tp!1470827 () Bool)

(declare-fun tp!1470830 () Bool)

(assert (=> b!5261325 (= e!3272760 (and tp!1470827 tp!1470830))))

(declare-fun b!5261323 () Bool)

(declare-fun tp!1470826 () Bool)

(declare-fun tp!1470828 () Bool)

(assert (=> b!5261323 (= e!3272760 (and tp!1470826 tp!1470828))))

(assert (= (and b!5260621 ((_ is ElementMatch!14879) (regOne!30270 r!7292))) b!5261322))

(assert (= (and b!5260621 ((_ is Concat!23724) (regOne!30270 r!7292))) b!5261323))

(assert (= (and b!5260621 ((_ is Star!14879) (regOne!30270 r!7292))) b!5261324))

(assert (= (and b!5260621 ((_ is Union!14879) (regOne!30270 r!7292))) b!5261325))

(declare-fun b!5261328 () Bool)

(declare-fun e!3272761 () Bool)

(declare-fun tp!1470834 () Bool)

(assert (=> b!5261328 (= e!3272761 tp!1470834)))

(declare-fun b!5261326 () Bool)

(assert (=> b!5261326 (= e!3272761 tp_is_empty!39011)))

(assert (=> b!5260621 (= tp!1470725 e!3272761)))

(declare-fun b!5261329 () Bool)

(declare-fun tp!1470832 () Bool)

(declare-fun tp!1470835 () Bool)

(assert (=> b!5261329 (= e!3272761 (and tp!1470832 tp!1470835))))

(declare-fun b!5261327 () Bool)

(declare-fun tp!1470831 () Bool)

(declare-fun tp!1470833 () Bool)

(assert (=> b!5261327 (= e!3272761 (and tp!1470831 tp!1470833))))

(assert (= (and b!5260621 ((_ is ElementMatch!14879) (regTwo!30270 r!7292))) b!5261326))

(assert (= (and b!5260621 ((_ is Concat!23724) (regTwo!30270 r!7292))) b!5261327))

(assert (= (and b!5260621 ((_ is Star!14879) (regTwo!30270 r!7292))) b!5261328))

(assert (= (and b!5260621 ((_ is Union!14879) (regTwo!30270 r!7292))) b!5261329))

(declare-fun b!5261330 () Bool)

(declare-fun e!3272762 () Bool)

(declare-fun tp!1470836 () Bool)

(declare-fun tp!1470837 () Bool)

(assert (=> b!5261330 (= e!3272762 (and tp!1470836 tp!1470837))))

(assert (=> b!5260613 (= tp!1470723 e!3272762)))

(assert (= (and b!5260613 ((_ is Cons!60812) (exprs!4763 setElem!33631))) b!5261330))

(declare-fun b!5261333 () Bool)

(declare-fun e!3272763 () Bool)

(declare-fun tp!1470841 () Bool)

(assert (=> b!5261333 (= e!3272763 tp!1470841)))

(declare-fun b!5261331 () Bool)

(assert (=> b!5261331 (= e!3272763 tp_is_empty!39011)))

(assert (=> b!5260608 (= tp!1470729 e!3272763)))

(declare-fun b!5261334 () Bool)

(declare-fun tp!1470839 () Bool)

(declare-fun tp!1470842 () Bool)

(assert (=> b!5261334 (= e!3272763 (and tp!1470839 tp!1470842))))

(declare-fun b!5261332 () Bool)

(declare-fun tp!1470838 () Bool)

(declare-fun tp!1470840 () Bool)

(assert (=> b!5261332 (= e!3272763 (and tp!1470838 tp!1470840))))

(assert (= (and b!5260608 ((_ is ElementMatch!14879) (reg!15208 r!7292))) b!5261331))

(assert (= (and b!5260608 ((_ is Concat!23724) (reg!15208 r!7292))) b!5261332))

(assert (= (and b!5260608 ((_ is Star!14879) (reg!15208 r!7292))) b!5261333))

(assert (= (and b!5260608 ((_ is Union!14879) (reg!15208 r!7292))) b!5261334))

(declare-fun b!5261339 () Bool)

(declare-fun e!3272766 () Bool)

(declare-fun tp!1470845 () Bool)

(assert (=> b!5261339 (= e!3272766 (and tp_is_empty!39011 tp!1470845))))

(assert (=> b!5260611 (= tp!1470726 e!3272766)))

(assert (= (and b!5260611 ((_ is Cons!60814) (t!374123 s!2326))) b!5261339))

(declare-fun b_lambda!203011 () Bool)

(assert (= b_lambda!203005 (or b!5260610 b_lambda!203011)))

(declare-fun bs!1219758 () Bool)

(declare-fun d!1693473 () Bool)

(assert (= bs!1219758 (and d!1693473 b!5260610)))

(assert (=> bs!1219758 (= (dynLambda!24027 lambda!265207 (h!67261 zl!343)) (derivationStepZipperUp!251 (h!67261 zl!343) (h!67262 s!2326)))))

(assert (=> bs!1219758 m!6302322))

(assert (=> d!1693387 d!1693473))

(check-sat (not b!5261311) (not d!1693433) (not b!5261332) (not b!5261324) (not b!5261119) (not bm!373053) (not b!5261198) (not bm!373065) (not d!1693437) (not b!5261253) (not d!1693401) (not d!1693461) (not d!1693455) (not bm!373068) (not d!1693405) (not d!1693453) (not b!5261250) (not b!5261156) (not b!5261292) (not b!5261252) (not d!1693443) (not d!1693399) (not b!5261065) (not bm!373024) (not b!5261283) (not bm!373067) (not b!5261282) (not b_lambda!203011) (not b!5261312) (not b!5261272) (not d!1693469) (not bm!373014) (not b!5261334) (not b!5261194) (not d!1693431) (not b!5261196) (not b!5261328) (not b!5261192) (not b!5261164) (not b!5261325) (not bm!373015) (not b!5261310) (not b!5261298) (not b!5260905) (not b!5261256) (not d!1693395) (not b!5261162) (not d!1693465) (not b!5261200) (not b!5261070) (not b!5261323) (not d!1693445) (not d!1693459) (not d!1693467) (not d!1693463) (not b!5261333) (not b!5261121) (not b!5261275) (not b!5261327) (not bm!373020) (not d!1693447) (not b!5261157) tp_is_empty!39011 (not d!1693411) (not bm!373057) (not b!5261069) (not b!5261281) (not b!5261329) (not b!5260826) (not b!5261255) (not b!5261068) (not d!1693435) (not b!5261066) (not b!5261262) (not b!5261293) (not b!5260901) (not b!5261316) (not b!5261284) (not b!5261227) (not b!5260869) (not d!1693449) (not b!5261321) (not b!5261280) (not setNonEmpty!33637) (not b!5261315) (not b!5260906) (not b!5261330) (not b!5261314) (not d!1693439) (not b!5260865) (not b!5260910) (not b!5261170) (not b!5261251) (not b!5261155) (not bm!373025) (not b!5261257) (not bs!1219758) (not bm!373064) (not b!5261195) (not b!5261064) (not bm!373054) (not bm!373013) (not b!5261285) (not b!5261193) (not d!1693387) (not b!5261339) (not b!5261160))
(check-sat)
(get-model)

(declare-fun d!1693675 () Bool)

(declare-fun c!910866 () Bool)

(declare-fun e!3273061 () Bool)

(assert (=> d!1693675 (= c!910866 e!3273061)))

(declare-fun res!2232749 () Bool)

(assert (=> d!1693675 (=> (not res!2232749) (not e!3273061))))

(assert (=> d!1693675 (= res!2232749 ((_ is Cons!60812) (exprs!4763 (Context!8527 (t!374121 (exprs!4763 lt!2155330))))))))

(declare-fun e!3273062 () (InoxSet Context!8526))

(assert (=> d!1693675 (= (derivationStepZipperUp!251 (Context!8527 (t!374121 (exprs!4763 lt!2155330))) (h!67262 s!2326)) e!3273062)))

(declare-fun b!5261860 () Bool)

(assert (=> b!5261860 (= e!3273061 (nullable!5048 (h!67260 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 lt!2155330)))))))))

(declare-fun b!5261861 () Bool)

(declare-fun e!3273060 () (InoxSet Context!8526))

(assert (=> b!5261861 (= e!3273060 ((as const (Array Context!8526 Bool)) false))))

(declare-fun b!5261862 () Bool)

(assert (=> b!5261862 (= e!3273062 e!3273060)))

(declare-fun c!910865 () Bool)

(assert (=> b!5261862 (= c!910865 ((_ is Cons!60812) (exprs!4763 (Context!8527 (t!374121 (exprs!4763 lt!2155330))))))))

(declare-fun b!5261863 () Bool)

(declare-fun call!373161 () (InoxSet Context!8526))

(assert (=> b!5261863 (= e!3273060 call!373161)))

(declare-fun bm!373156 () Bool)

(assert (=> bm!373156 (= call!373161 (derivationStepZipperDown!327 (h!67260 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 lt!2155330))))) (Context!8527 (t!374121 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 lt!2155330)))))) (h!67262 s!2326)))))

(declare-fun b!5261864 () Bool)

(assert (=> b!5261864 (= e!3273062 ((_ map or) call!373161 (derivationStepZipperUp!251 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 lt!2155330)))))) (h!67262 s!2326))))))

(assert (= (and d!1693675 res!2232749) b!5261860))

(assert (= (and d!1693675 c!910866) b!5261864))

(assert (= (and d!1693675 (not c!910866)) b!5261862))

(assert (= (and b!5261862 c!910865) b!5261863))

(assert (= (and b!5261862 (not c!910865)) b!5261861))

(assert (= (or b!5261864 b!5261863) bm!373156))

(declare-fun m!6303174 () Bool)

(assert (=> b!5261860 m!6303174))

(declare-fun m!6303176 () Bool)

(assert (=> bm!373156 m!6303176))

(declare-fun m!6303178 () Bool)

(assert (=> b!5261864 m!6303178))

(assert (=> b!5260905 d!1693675))

(declare-fun d!1693677 () Bool)

(declare-fun c!910868 () Bool)

(declare-fun e!3273064 () Bool)

(assert (=> d!1693677 (= c!910868 e!3273064)))

(declare-fun res!2232750 () Bool)

(assert (=> d!1693677 (=> (not res!2232750) (not e!3273064))))

(assert (=> d!1693677 (= res!2232750 ((_ is Cons!60812) (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343)))))))))

(declare-fun e!3273065 () (InoxSet Context!8526))

(assert (=> d!1693677 (= (derivationStepZipperUp!251 (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343)))) (h!67262 s!2326)) e!3273065)))

(declare-fun b!5261865 () Bool)

(assert (=> b!5261865 (= e!3273064 (nullable!5048 (h!67260 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343))))))))))

(declare-fun b!5261866 () Bool)

(declare-fun e!3273063 () (InoxSet Context!8526))

(assert (=> b!5261866 (= e!3273063 ((as const (Array Context!8526 Bool)) false))))

(declare-fun b!5261867 () Bool)

(assert (=> b!5261867 (= e!3273065 e!3273063)))

(declare-fun c!910867 () Bool)

(assert (=> b!5261867 (= c!910867 ((_ is Cons!60812) (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343)))))))))

(declare-fun b!5261868 () Bool)

(declare-fun call!373162 () (InoxSet Context!8526))

(assert (=> b!5261868 (= e!3273063 call!373162)))

(declare-fun bm!373157 () Bool)

(assert (=> bm!373157 (= call!373162 (derivationStepZipperDown!327 (h!67260 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343)))))) (Context!8527 (t!374121 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343))))))) (h!67262 s!2326)))))

(declare-fun b!5261869 () Bool)

(assert (=> b!5261869 (= e!3273065 ((_ map or) call!373162 (derivationStepZipperUp!251 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343))))))) (h!67262 s!2326))))))

(assert (= (and d!1693677 res!2232750) b!5261865))

(assert (= (and d!1693677 c!910868) b!5261869))

(assert (= (and d!1693677 (not c!910868)) b!5261867))

(assert (= (and b!5261867 c!910867) b!5261868))

(assert (= (and b!5261867 (not c!910867)) b!5261866))

(assert (= (or b!5261869 b!5261868) bm!373157))

(declare-fun m!6303180 () Bool)

(assert (=> b!5261865 m!6303180))

(declare-fun m!6303182 () Bool)

(assert (=> bm!373157 m!6303182))

(declare-fun m!6303184 () Bool)

(assert (=> b!5261869 m!6303184))

(assert (=> b!5260910 d!1693677))

(declare-fun bs!1219877 () Bool)

(declare-fun d!1693679 () Bool)

(assert (= bs!1219877 (and d!1693679 d!1693453)))

(declare-fun lambda!265292 () Int)

(assert (=> bs!1219877 (= lambda!265292 lambda!265260)))

(declare-fun bs!1219878 () Bool)

(assert (= bs!1219878 (and d!1693679 d!1693405)))

(assert (=> bs!1219878 (= lambda!265292 lambda!265239)))

(declare-fun bs!1219879 () Bool)

(assert (= bs!1219879 (and d!1693679 d!1693449)))

(assert (=> bs!1219879 (= lambda!265292 lambda!265257)))

(declare-fun bs!1219880 () Bool)

(assert (= bs!1219880 (and d!1693679 d!1693455)))

(assert (=> bs!1219880 (= lambda!265292 lambda!265263)))

(declare-fun bs!1219881 () Bool)

(assert (= bs!1219881 (and d!1693679 d!1693401)))

(assert (=> bs!1219881 (= lambda!265292 lambda!265238)))

(declare-fun b!5261870 () Bool)

(declare-fun e!3273069 () Regex!14879)

(declare-fun e!3273070 () Regex!14879)

(assert (=> b!5261870 (= e!3273069 e!3273070)))

(declare-fun c!910870 () Bool)

(assert (=> b!5261870 (= c!910870 ((_ is Cons!60812) (t!374121 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun b!5261871 () Bool)

(declare-fun e!3273068 () Bool)

(assert (=> b!5261871 (= e!3273068 (isEmpty!32755 (t!374121 (t!374121 (exprs!4763 (h!67261 zl!343))))))))

(declare-fun b!5261872 () Bool)

(assert (=> b!5261872 (= e!3273070 (Concat!23724 (h!67260 (t!374121 (exprs!4763 (h!67261 zl!343)))) (generalisedConcat!548 (t!374121 (t!374121 (exprs!4763 (h!67261 zl!343)))))))))

(declare-fun e!3273071 () Bool)

(assert (=> d!1693679 e!3273071))

(declare-fun res!2232751 () Bool)

(assert (=> d!1693679 (=> (not res!2232751) (not e!3273071))))

(declare-fun lt!2155445 () Regex!14879)

(assert (=> d!1693679 (= res!2232751 (validRegex!6615 lt!2155445))))

(assert (=> d!1693679 (= lt!2155445 e!3273069)))

(declare-fun c!910871 () Bool)

(assert (=> d!1693679 (= c!910871 e!3273068)))

(declare-fun res!2232752 () Bool)

(assert (=> d!1693679 (=> (not res!2232752) (not e!3273068))))

(assert (=> d!1693679 (= res!2232752 ((_ is Cons!60812) (t!374121 (exprs!4763 (h!67261 zl!343)))))))

(assert (=> d!1693679 (forall!14291 (t!374121 (exprs!4763 (h!67261 zl!343))) lambda!265292)))

(assert (=> d!1693679 (= (generalisedConcat!548 (t!374121 (exprs!4763 (h!67261 zl!343)))) lt!2155445)))

(declare-fun b!5261873 () Bool)

(declare-fun e!3273067 () Bool)

(assert (=> b!5261873 (= e!3273067 (= lt!2155445 (head!11283 (t!374121 (exprs!4763 (h!67261 zl!343))))))))

(declare-fun b!5261874 () Bool)

(assert (=> b!5261874 (= e!3273067 (isConcat!340 lt!2155445))))

(declare-fun b!5261875 () Bool)

(declare-fun e!3273066 () Bool)

(assert (=> b!5261875 (= e!3273071 e!3273066)))

(declare-fun c!910869 () Bool)

(assert (=> b!5261875 (= c!910869 (isEmpty!32755 (t!374121 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun b!5261876 () Bool)

(assert (=> b!5261876 (= e!3273070 EmptyExpr!14879)))

(declare-fun b!5261877 () Bool)

(assert (=> b!5261877 (= e!3273066 (isEmptyExpr!817 lt!2155445))))

(declare-fun b!5261878 () Bool)

(assert (=> b!5261878 (= e!3273069 (h!67260 (t!374121 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun b!5261879 () Bool)

(assert (=> b!5261879 (= e!3273066 e!3273067)))

(declare-fun c!910872 () Bool)

(assert (=> b!5261879 (= c!910872 (isEmpty!32755 (tail!10380 (t!374121 (exprs!4763 (h!67261 zl!343))))))))

(assert (= (and d!1693679 res!2232752) b!5261871))

(assert (= (and d!1693679 c!910871) b!5261878))

(assert (= (and d!1693679 (not c!910871)) b!5261870))

(assert (= (and b!5261870 c!910870) b!5261872))

(assert (= (and b!5261870 (not c!910870)) b!5261876))

(assert (= (and d!1693679 res!2232751) b!5261875))

(assert (= (and b!5261875 c!910869) b!5261877))

(assert (= (and b!5261875 (not c!910869)) b!5261879))

(assert (= (and b!5261879 c!910872) b!5261873))

(assert (= (and b!5261879 (not c!910872)) b!5261874))

(declare-fun m!6303186 () Bool)

(assert (=> d!1693679 m!6303186))

(declare-fun m!6303188 () Bool)

(assert (=> d!1693679 m!6303188))

(assert (=> b!5261875 m!6302308))

(declare-fun m!6303190 () Bool)

(assert (=> b!5261873 m!6303190))

(declare-fun m!6303192 () Bool)

(assert (=> b!5261874 m!6303192))

(declare-fun m!6303194 () Bool)

(assert (=> b!5261879 m!6303194))

(assert (=> b!5261879 m!6303194))

(declare-fun m!6303196 () Bool)

(assert (=> b!5261879 m!6303196))

(declare-fun m!6303198 () Bool)

(assert (=> b!5261871 m!6303198))

(declare-fun m!6303200 () Bool)

(assert (=> b!5261872 m!6303200))

(declare-fun m!6303202 () Bool)

(assert (=> b!5261877 m!6303202))

(assert (=> b!5261193 d!1693679))

(declare-fun bs!1219882 () Bool)

(declare-fun b!5261885 () Bool)

(assert (= bs!1219882 (and b!5261885 b!5260618)))

(declare-fun lambda!265293 () Int)

(assert (=> bs!1219882 (not (= lambda!265293 lambda!265206))))

(declare-fun bs!1219883 () Bool)

(assert (= bs!1219883 (and b!5261885 d!1693435)))

(assert (=> bs!1219883 (not (= lambda!265293 lambda!265242))))

(declare-fun bs!1219884 () Bool)

(assert (= bs!1219884 (and b!5261885 d!1693437)))

(assert (=> bs!1219884 (not (= lambda!265293 lambda!265247))))

(declare-fun bs!1219885 () Bool)

(assert (= bs!1219885 (and b!5261885 b!5261115)))

(assert (=> bs!1219885 (not (= lambda!265293 lambda!265254))))

(assert (=> bs!1219882 (not (= lambda!265293 lambda!265205))))

(declare-fun bs!1219886 () Bool)

(assert (= bs!1219886 (and b!5261885 b!5261120)))

(assert (=> bs!1219886 (= (and (= (reg!15208 (regTwo!30271 r!7292)) (reg!15208 r!7292)) (= (regTwo!30271 r!7292) r!7292)) (= lambda!265293 lambda!265253))))

(assert (=> bs!1219884 (not (= lambda!265293 lambda!265248))))

(assert (=> b!5261885 true))

(assert (=> b!5261885 true))

(declare-fun bs!1219887 () Bool)

(declare-fun b!5261880 () Bool)

(assert (= bs!1219887 (and b!5261880 b!5260618)))

(declare-fun lambda!265294 () Int)

(assert (=> bs!1219887 (= (and (= (regOne!30270 (regTwo!30271 r!7292)) (regOne!30270 r!7292)) (= (regTwo!30270 (regTwo!30271 r!7292)) (regTwo!30270 r!7292))) (= lambda!265294 lambda!265206))))

(declare-fun bs!1219888 () Bool)

(assert (= bs!1219888 (and b!5261880 d!1693435)))

(assert (=> bs!1219888 (not (= lambda!265294 lambda!265242))))

(declare-fun bs!1219889 () Bool)

(assert (= bs!1219889 (and b!5261880 b!5261885)))

(assert (=> bs!1219889 (not (= lambda!265294 lambda!265293))))

(declare-fun bs!1219890 () Bool)

(assert (= bs!1219890 (and b!5261880 d!1693437)))

(assert (=> bs!1219890 (not (= lambda!265294 lambda!265247))))

(declare-fun bs!1219891 () Bool)

(assert (= bs!1219891 (and b!5261880 b!5261115)))

(assert (=> bs!1219891 (= (and (= (regOne!30270 (regTwo!30271 r!7292)) (regOne!30270 r!7292)) (= (regTwo!30270 (regTwo!30271 r!7292)) (regTwo!30270 r!7292))) (= lambda!265294 lambda!265254))))

(assert (=> bs!1219887 (not (= lambda!265294 lambda!265205))))

(declare-fun bs!1219892 () Bool)

(assert (= bs!1219892 (and b!5261880 b!5261120)))

(assert (=> bs!1219892 (not (= lambda!265294 lambda!265253))))

(assert (=> bs!1219890 (= (and (= (regOne!30270 (regTwo!30271 r!7292)) (regOne!30270 r!7292)) (= (regTwo!30270 (regTwo!30271 r!7292)) (regTwo!30270 r!7292))) (= lambda!265294 lambda!265248))))

(assert (=> b!5261880 true))

(assert (=> b!5261880 true))

(declare-fun e!3273074 () Bool)

(declare-fun call!373163 () Bool)

(assert (=> b!5261880 (= e!3273074 call!373163)))

(declare-fun b!5261881 () Bool)

(declare-fun e!3273076 () Bool)

(declare-fun call!373164 () Bool)

(assert (=> b!5261881 (= e!3273076 call!373164)))

(declare-fun bm!373158 () Bool)

(assert (=> bm!373158 (= call!373164 (isEmpty!32760 s!2326))))

(declare-fun b!5261882 () Bool)

(declare-fun e!3273072 () Bool)

(assert (=> b!5261882 (= e!3273072 (= s!2326 (Cons!60814 (c!910565 (regTwo!30271 r!7292)) Nil!60814)))))

(declare-fun b!5261883 () Bool)

(declare-fun e!3273073 () Bool)

(assert (=> b!5261883 (= e!3273073 e!3273074)))

(declare-fun c!910873 () Bool)

(assert (=> b!5261883 (= c!910873 ((_ is Star!14879) (regTwo!30271 r!7292)))))

(declare-fun d!1693681 () Bool)

(declare-fun c!910876 () Bool)

(assert (=> d!1693681 (= c!910876 ((_ is EmptyExpr!14879) (regTwo!30271 r!7292)))))

(assert (=> d!1693681 (= (matchRSpec!1982 (regTwo!30271 r!7292) s!2326) e!3273076)))

(declare-fun b!5261884 () Bool)

(declare-fun e!3273078 () Bool)

(assert (=> b!5261884 (= e!3273073 e!3273078)))

(declare-fun res!2232754 () Bool)

(assert (=> b!5261884 (= res!2232754 (matchRSpec!1982 (regOne!30271 (regTwo!30271 r!7292)) s!2326))))

(assert (=> b!5261884 (=> res!2232754 e!3273078)))

(declare-fun e!3273077 () Bool)

(assert (=> b!5261885 (= e!3273077 call!373163)))

(declare-fun b!5261886 () Bool)

(assert (=> b!5261886 (= e!3273078 (matchRSpec!1982 (regTwo!30271 (regTwo!30271 r!7292)) s!2326))))

(declare-fun b!5261887 () Bool)

(declare-fun res!2232753 () Bool)

(assert (=> b!5261887 (=> res!2232753 e!3273077)))

(assert (=> b!5261887 (= res!2232753 call!373164)))

(assert (=> b!5261887 (= e!3273074 e!3273077)))

(declare-fun bm!373159 () Bool)

(assert (=> bm!373159 (= call!373163 (Exists!2060 (ite c!910873 lambda!265293 lambda!265294)))))

(declare-fun b!5261888 () Bool)

(declare-fun e!3273075 () Bool)

(assert (=> b!5261888 (= e!3273076 e!3273075)))

(declare-fun res!2232755 () Bool)

(assert (=> b!5261888 (= res!2232755 (not ((_ is EmptyLang!14879) (regTwo!30271 r!7292))))))

(assert (=> b!5261888 (=> (not res!2232755) (not e!3273075))))

(declare-fun b!5261889 () Bool)

(declare-fun c!910874 () Bool)

(assert (=> b!5261889 (= c!910874 ((_ is ElementMatch!14879) (regTwo!30271 r!7292)))))

(assert (=> b!5261889 (= e!3273075 e!3273072)))

(declare-fun b!5261890 () Bool)

(declare-fun c!910875 () Bool)

(assert (=> b!5261890 (= c!910875 ((_ is Union!14879) (regTwo!30271 r!7292)))))

(assert (=> b!5261890 (= e!3273072 e!3273073)))

(assert (= (and d!1693681 c!910876) b!5261881))

(assert (= (and d!1693681 (not c!910876)) b!5261888))

(assert (= (and b!5261888 res!2232755) b!5261889))

(assert (= (and b!5261889 c!910874) b!5261882))

(assert (= (and b!5261889 (not c!910874)) b!5261890))

(assert (= (and b!5261890 c!910875) b!5261884))

(assert (= (and b!5261890 (not c!910875)) b!5261883))

(assert (= (and b!5261884 (not res!2232754)) b!5261886))

(assert (= (and b!5261883 c!910873) b!5261887))

(assert (= (and b!5261883 (not c!910873)) b!5261880))

(assert (= (and b!5261887 (not res!2232753)) b!5261885))

(assert (= (or b!5261885 b!5261880) bm!373159))

(assert (= (or b!5261881 b!5261887) bm!373158))

(assert (=> bm!373158 m!6302632))

(declare-fun m!6303204 () Bool)

(assert (=> b!5261884 m!6303204))

(declare-fun m!6303206 () Bool)

(assert (=> b!5261886 m!6303206))

(declare-fun m!6303208 () Bool)

(assert (=> bm!373159 m!6303208))

(assert (=> b!5261121 d!1693681))

(declare-fun d!1693683 () Bool)

(assert (=> d!1693683 (= (isDefined!11693 lt!2155390) (not (isEmpty!32759 lt!2155390)))))

(declare-fun bs!1219893 () Bool)

(assert (= bs!1219893 d!1693683))

(declare-fun m!6303210 () Bool)

(assert (=> bs!1219893 m!6303210))

(assert (=> b!5261069 d!1693683))

(declare-fun b!5261899 () Bool)

(declare-fun e!3273084 () List!60938)

(assert (=> b!5261899 (= e!3273084 (t!374123 s!2326))))

(declare-fun b!5261902 () Bool)

(declare-fun e!3273083 () Bool)

(declare-fun lt!2155448 () List!60938)

(assert (=> b!5261902 (= e!3273083 (or (not (= (t!374123 s!2326) Nil!60814)) (= lt!2155448 (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814)))))))

(declare-fun d!1693685 () Bool)

(assert (=> d!1693685 e!3273083))

(declare-fun res!2232760 () Bool)

(assert (=> d!1693685 (=> (not res!2232760) (not e!3273083))))

(declare-fun content!10807 (List!60938) (InoxSet C!30028))

(assert (=> d!1693685 (= res!2232760 (= (content!10807 lt!2155448) ((_ map or) (content!10807 (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814))) (content!10807 (t!374123 s!2326)))))))

(assert (=> d!1693685 (= lt!2155448 e!3273084)))

(declare-fun c!910879 () Bool)

(assert (=> d!1693685 (= c!910879 ((_ is Nil!60814) (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814))))))

(assert (=> d!1693685 (= (++!13262 (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814)) (t!374123 s!2326)) lt!2155448)))

(declare-fun b!5261901 () Bool)

(declare-fun res!2232761 () Bool)

(assert (=> b!5261901 (=> (not res!2232761) (not e!3273083))))

(declare-fun size!39739 (List!60938) Int)

(assert (=> b!5261901 (= res!2232761 (= (size!39739 lt!2155448) (+ (size!39739 (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814))) (size!39739 (t!374123 s!2326)))))))

(declare-fun b!5261900 () Bool)

(assert (=> b!5261900 (= e!3273084 (Cons!60814 (h!67262 (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814))) (++!13262 (t!374123 (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814))) (t!374123 s!2326))))))

(assert (= (and d!1693685 c!910879) b!5261899))

(assert (= (and d!1693685 (not c!910879)) b!5261900))

(assert (= (and d!1693685 res!2232760) b!5261901))

(assert (= (and b!5261901 res!2232761) b!5261902))

(declare-fun m!6303212 () Bool)

(assert (=> d!1693685 m!6303212))

(assert (=> d!1693685 m!6302606))

(declare-fun m!6303214 () Bool)

(assert (=> d!1693685 m!6303214))

(declare-fun m!6303216 () Bool)

(assert (=> d!1693685 m!6303216))

(declare-fun m!6303218 () Bool)

(assert (=> b!5261901 m!6303218))

(assert (=> b!5261901 m!6302606))

(declare-fun m!6303220 () Bool)

(assert (=> b!5261901 m!6303220))

(declare-fun m!6303222 () Bool)

(assert (=> b!5261901 m!6303222))

(declare-fun m!6303224 () Bool)

(assert (=> b!5261900 m!6303224))

(assert (=> b!5261065 d!1693685))

(declare-fun b!5261903 () Bool)

(declare-fun e!3273086 () List!60938)

(assert (=> b!5261903 (= e!3273086 (Cons!60814 (h!67262 s!2326) Nil!60814))))

(declare-fun b!5261906 () Bool)

(declare-fun e!3273085 () Bool)

(declare-fun lt!2155449 () List!60938)

(assert (=> b!5261906 (= e!3273085 (or (not (= (Cons!60814 (h!67262 s!2326) Nil!60814) Nil!60814)) (= lt!2155449 Nil!60814)))))

(declare-fun d!1693687 () Bool)

(assert (=> d!1693687 e!3273085))

(declare-fun res!2232762 () Bool)

(assert (=> d!1693687 (=> (not res!2232762) (not e!3273085))))

(assert (=> d!1693687 (= res!2232762 (= (content!10807 lt!2155449) ((_ map or) (content!10807 Nil!60814) (content!10807 (Cons!60814 (h!67262 s!2326) Nil!60814)))))))

(assert (=> d!1693687 (= lt!2155449 e!3273086)))

(declare-fun c!910880 () Bool)

(assert (=> d!1693687 (= c!910880 ((_ is Nil!60814) Nil!60814))))

(assert (=> d!1693687 (= (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814)) lt!2155449)))

(declare-fun b!5261905 () Bool)

(declare-fun res!2232763 () Bool)

(assert (=> b!5261905 (=> (not res!2232763) (not e!3273085))))

(assert (=> b!5261905 (= res!2232763 (= (size!39739 lt!2155449) (+ (size!39739 Nil!60814) (size!39739 (Cons!60814 (h!67262 s!2326) Nil!60814)))))))

(declare-fun b!5261904 () Bool)

(assert (=> b!5261904 (= e!3273086 (Cons!60814 (h!67262 Nil!60814) (++!13262 (t!374123 Nil!60814) (Cons!60814 (h!67262 s!2326) Nil!60814))))))

(assert (= (and d!1693687 c!910880) b!5261903))

(assert (= (and d!1693687 (not c!910880)) b!5261904))

(assert (= (and d!1693687 res!2232762) b!5261905))

(assert (= (and b!5261905 res!2232763) b!5261906))

(declare-fun m!6303226 () Bool)

(assert (=> d!1693687 m!6303226))

(declare-fun m!6303228 () Bool)

(assert (=> d!1693687 m!6303228))

(declare-fun m!6303230 () Bool)

(assert (=> d!1693687 m!6303230))

(declare-fun m!6303232 () Bool)

(assert (=> b!5261905 m!6303232))

(declare-fun m!6303234 () Bool)

(assert (=> b!5261905 m!6303234))

(declare-fun m!6303236 () Bool)

(assert (=> b!5261905 m!6303236))

(declare-fun m!6303238 () Bool)

(assert (=> b!5261904 m!6303238))

(assert (=> b!5261065 d!1693687))

(declare-fun d!1693689 () Bool)

(assert (=> d!1693689 (= (++!13262 (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814)) (t!374123 s!2326)) s!2326)))

(declare-fun lt!2155452 () Unit!153034)

(declare-fun choose!39256 (List!60938 C!30028 List!60938 List!60938) Unit!153034)

(assert (=> d!1693689 (= lt!2155452 (choose!39256 Nil!60814 (h!67262 s!2326) (t!374123 s!2326) s!2326))))

(assert (=> d!1693689 (= (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) (t!374123 s!2326))) s!2326)))

(assert (=> d!1693689 (= (lemmaMoveElementToOtherListKeepsConcatEq!1677 Nil!60814 (h!67262 s!2326) (t!374123 s!2326) s!2326) lt!2155452)))

(declare-fun bs!1219894 () Bool)

(assert (= bs!1219894 d!1693689))

(assert (=> bs!1219894 m!6302606))

(assert (=> bs!1219894 m!6302606))

(assert (=> bs!1219894 m!6302608))

(declare-fun m!6303240 () Bool)

(assert (=> bs!1219894 m!6303240))

(declare-fun m!6303242 () Bool)

(assert (=> bs!1219894 m!6303242))

(assert (=> b!5261065 d!1693689))

(declare-fun b!5261907 () Bool)

(declare-fun e!3273091 () Option!14990)

(declare-fun e!3273088 () Option!14990)

(assert (=> b!5261907 (= e!3273091 e!3273088)))

(declare-fun c!910881 () Bool)

(assert (=> b!5261907 (= c!910881 ((_ is Nil!60814) (t!374123 s!2326)))))

(declare-fun b!5261908 () Bool)

(assert (=> b!5261908 (= e!3273088 None!14989)))

(declare-fun b!5261909 () Bool)

(declare-fun e!3273087 () Bool)

(assert (=> b!5261909 (= e!3273087 (matchR!7064 (regTwo!30270 r!7292) (t!374123 s!2326)))))

(declare-fun b!5261910 () Bool)

(declare-fun lt!2155455 () Unit!153034)

(declare-fun lt!2155454 () Unit!153034)

(assert (=> b!5261910 (= lt!2155455 lt!2155454)))

(assert (=> b!5261910 (= (++!13262 (++!13262 (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814)) (Cons!60814 (h!67262 (t!374123 s!2326)) Nil!60814)) (t!374123 (t!374123 s!2326))) s!2326)))

(assert (=> b!5261910 (= lt!2155454 (lemmaMoveElementToOtherListKeepsConcatEq!1677 (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814)) (h!67262 (t!374123 s!2326)) (t!374123 (t!374123 s!2326)) s!2326))))

(assert (=> b!5261910 (= e!3273088 (findConcatSeparation!1404 (regOne!30270 r!7292) (regTwo!30270 r!7292) (++!13262 (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814)) (Cons!60814 (h!67262 (t!374123 s!2326)) Nil!60814)) (t!374123 (t!374123 s!2326)) s!2326))))

(declare-fun b!5261911 () Bool)

(declare-fun res!2232768 () Bool)

(declare-fun e!3273090 () Bool)

(assert (=> b!5261911 (=> (not res!2232768) (not e!3273090))))

(declare-fun lt!2155453 () Option!14990)

(assert (=> b!5261911 (= res!2232768 (matchR!7064 (regOne!30270 r!7292) (_1!35381 (get!20907 lt!2155453))))))

(declare-fun b!5261912 () Bool)

(assert (=> b!5261912 (= e!3273091 (Some!14989 (tuple2!64157 (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814)) (t!374123 s!2326))))))

(declare-fun b!5261913 () Bool)

(assert (=> b!5261913 (= e!3273090 (= (++!13262 (_1!35381 (get!20907 lt!2155453)) (_2!35381 (get!20907 lt!2155453))) s!2326))))

(declare-fun b!5261914 () Bool)

(declare-fun e!3273089 () Bool)

(assert (=> b!5261914 (= e!3273089 (not (isDefined!11693 lt!2155453)))))

(declare-fun b!5261915 () Bool)

(declare-fun res!2232764 () Bool)

(assert (=> b!5261915 (=> (not res!2232764) (not e!3273090))))

(assert (=> b!5261915 (= res!2232764 (matchR!7064 (regTwo!30270 r!7292) (_2!35381 (get!20907 lt!2155453))))))

(declare-fun d!1693691 () Bool)

(assert (=> d!1693691 e!3273089))

(declare-fun res!2232766 () Bool)

(assert (=> d!1693691 (=> res!2232766 e!3273089)))

(assert (=> d!1693691 (= res!2232766 e!3273090)))

(declare-fun res!2232767 () Bool)

(assert (=> d!1693691 (=> (not res!2232767) (not e!3273090))))

(assert (=> d!1693691 (= res!2232767 (isDefined!11693 lt!2155453))))

(assert (=> d!1693691 (= lt!2155453 e!3273091)))

(declare-fun c!910882 () Bool)

(assert (=> d!1693691 (= c!910882 e!3273087)))

(declare-fun res!2232765 () Bool)

(assert (=> d!1693691 (=> (not res!2232765) (not e!3273087))))

(assert (=> d!1693691 (= res!2232765 (matchR!7064 (regOne!30270 r!7292) (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814))))))

(assert (=> d!1693691 (validRegex!6615 (regOne!30270 r!7292))))

(assert (=> d!1693691 (= (findConcatSeparation!1404 (regOne!30270 r!7292) (regTwo!30270 r!7292) (++!13262 Nil!60814 (Cons!60814 (h!67262 s!2326) Nil!60814)) (t!374123 s!2326) s!2326) lt!2155453)))

(assert (= (and d!1693691 res!2232765) b!5261909))

(assert (= (and d!1693691 c!910882) b!5261912))

(assert (= (and d!1693691 (not c!910882)) b!5261907))

(assert (= (and b!5261907 c!910881) b!5261908))

(assert (= (and b!5261907 (not c!910881)) b!5261910))

(assert (= (and d!1693691 res!2232767) b!5261911))

(assert (= (and b!5261911 res!2232768) b!5261915))

(assert (= (and b!5261915 res!2232764) b!5261913))

(assert (= (and d!1693691 (not res!2232766)) b!5261914))

(declare-fun m!6303244 () Bool)

(assert (=> b!5261915 m!6303244))

(declare-fun m!6303246 () Bool)

(assert (=> b!5261915 m!6303246))

(declare-fun m!6303248 () Bool)

(assert (=> b!5261914 m!6303248))

(assert (=> b!5261911 m!6303244))

(declare-fun m!6303250 () Bool)

(assert (=> b!5261911 m!6303250))

(assert (=> b!5261913 m!6303244))

(declare-fun m!6303252 () Bool)

(assert (=> b!5261913 m!6303252))

(assert (=> d!1693691 m!6303248))

(assert (=> d!1693691 m!6302606))

(declare-fun m!6303254 () Bool)

(assert (=> d!1693691 m!6303254))

(assert (=> d!1693691 m!6302604))

(assert (=> b!5261910 m!6302606))

(declare-fun m!6303256 () Bool)

(assert (=> b!5261910 m!6303256))

(assert (=> b!5261910 m!6303256))

(declare-fun m!6303258 () Bool)

(assert (=> b!5261910 m!6303258))

(assert (=> b!5261910 m!6302606))

(declare-fun m!6303260 () Bool)

(assert (=> b!5261910 m!6303260))

(assert (=> b!5261910 m!6303256))

(declare-fun m!6303262 () Bool)

(assert (=> b!5261910 m!6303262))

(declare-fun m!6303264 () Bool)

(assert (=> b!5261909 m!6303264))

(assert (=> b!5261065 d!1693691))

(declare-fun b!5261916 () Bool)

(declare-fun e!3273097 () (InoxSet Context!8526))

(declare-fun call!373166 () (InoxSet Context!8526))

(declare-fun call!373165 () (InoxSet Context!8526))

(assert (=> b!5261916 (= e!3273097 ((_ map or) call!373166 call!373165))))

(declare-fun b!5261917 () Bool)

(declare-fun e!3273094 () (InoxSet Context!8526))

(assert (=> b!5261917 (= e!3273094 e!3273097)))

(declare-fun c!910883 () Bool)

(assert (=> b!5261917 (= c!910883 ((_ is Union!14879) (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))))))

(declare-fun bm!373160 () Bool)

(declare-fun call!373170 () List!60936)

(declare-fun call!373168 () List!60936)

(assert (=> bm!373160 (= call!373170 call!373168)))

(declare-fun b!5261919 () Bool)

(declare-fun e!3273093 () (InoxSet Context!8526))

(declare-fun call!373169 () (InoxSet Context!8526))

(assert (=> b!5261919 (= e!3273093 call!373169)))

(declare-fun b!5261920 () Bool)

(declare-fun c!910886 () Bool)

(declare-fun e!3273095 () Bool)

(assert (=> b!5261920 (= c!910886 e!3273095)))

(declare-fun res!2232769 () Bool)

(assert (=> b!5261920 (=> (not res!2232769) (not e!3273095))))

(assert (=> b!5261920 (= res!2232769 ((_ is Concat!23724) (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))))))

(declare-fun e!3273092 () (InoxSet Context!8526))

(assert (=> b!5261920 (= e!3273097 e!3273092)))

(declare-fun b!5261921 () Bool)

(assert (=> b!5261921 (= e!3273095 (nullable!5048 (regOne!30270 (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343))))))))))

(declare-fun b!5261922 () Bool)

(assert (=> b!5261922 (= e!3273094 (store ((as const (Array Context!8526 Bool)) false) (ite c!910618 lt!2155330 (Context!8527 call!373019)) true))))

(declare-fun bm!373161 () Bool)

(declare-fun call!373167 () (InoxSet Context!8526))

(assert (=> bm!373161 (= call!373167 call!373165)))

(declare-fun bm!373162 () Bool)

(declare-fun c!910884 () Bool)

(assert (=> bm!373162 (= call!373165 (derivationStepZipperDown!327 (ite c!910883 (regTwo!30271 (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))) (ite c!910886 (regTwo!30270 (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))) (ite c!910884 (regOne!30270 (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))) (reg!15208 (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343))))))))) (ite (or c!910883 c!910886) (ite c!910618 lt!2155330 (Context!8527 call!373019)) (Context!8527 call!373170)) (h!67262 s!2326)))))

(declare-fun b!5261923 () Bool)

(declare-fun c!910885 () Bool)

(assert (=> b!5261923 (= c!910885 ((_ is Star!14879) (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))))))

(declare-fun e!3273096 () (InoxSet Context!8526))

(assert (=> b!5261923 (= e!3273096 e!3273093)))

(declare-fun b!5261924 () Bool)

(assert (=> b!5261924 (= e!3273093 ((as const (Array Context!8526 Bool)) false))))

(declare-fun bm!373163 () Bool)

(assert (=> bm!373163 (= call!373166 (derivationStepZipperDown!327 (ite c!910883 (regOne!30271 (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))) (regOne!30270 (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343))))))) (ite c!910883 (ite c!910618 lt!2155330 (Context!8527 call!373019)) (Context!8527 call!373168)) (h!67262 s!2326)))))

(declare-fun b!5261925 () Bool)

(assert (=> b!5261925 (= e!3273092 e!3273096)))

(assert (=> b!5261925 (= c!910884 ((_ is Concat!23724) (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))))))

(declare-fun b!5261926 () Bool)

(assert (=> b!5261926 (= e!3273096 call!373169)))

(declare-fun b!5261918 () Bool)

(assert (=> b!5261918 (= e!3273092 ((_ map or) call!373166 call!373167))))

(declare-fun d!1693693 () Bool)

(declare-fun c!910887 () Bool)

(assert (=> d!1693693 (= c!910887 (and ((_ is ElementMatch!14879) (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))) (= (c!910565 (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))) (h!67262 s!2326))))))

(assert (=> d!1693693 (= (derivationStepZipperDown!327 (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343))))) (ite c!910618 lt!2155330 (Context!8527 call!373019)) (h!67262 s!2326)) e!3273094)))

(declare-fun bm!373164 () Bool)

(assert (=> bm!373164 (= call!373168 ($colon$colon!1332 (exprs!4763 (ite c!910618 lt!2155330 (Context!8527 call!373019))) (ite (or c!910886 c!910884) (regTwo!30270 (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))) (ite c!910618 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343))))))))))

(declare-fun bm!373165 () Bool)

(assert (=> bm!373165 (= call!373169 call!373167)))

(assert (= (and d!1693693 c!910887) b!5261922))

(assert (= (and d!1693693 (not c!910887)) b!5261917))

(assert (= (and b!5261917 c!910883) b!5261916))

(assert (= (and b!5261917 (not c!910883)) b!5261920))

(assert (= (and b!5261920 res!2232769) b!5261921))

(assert (= (and b!5261920 c!910886) b!5261918))

(assert (= (and b!5261920 (not c!910886)) b!5261925))

(assert (= (and b!5261925 c!910884) b!5261926))

(assert (= (and b!5261925 (not c!910884)) b!5261923))

(assert (= (and b!5261923 c!910885) b!5261919))

(assert (= (and b!5261923 (not c!910885)) b!5261924))

(assert (= (or b!5261926 b!5261919) bm!373160))

(assert (= (or b!5261926 b!5261919) bm!373165))

(assert (= (or b!5261918 bm!373160) bm!373164))

(assert (= (or b!5261918 bm!373165) bm!373161))

(assert (= (or b!5261916 bm!373161) bm!373162))

(assert (= (or b!5261916 b!5261918) bm!373163))

(declare-fun m!6303266 () Bool)

(assert (=> bm!373164 m!6303266))

(declare-fun m!6303268 () Bool)

(assert (=> b!5261921 m!6303268))

(declare-fun m!6303270 () Bool)

(assert (=> bm!373163 m!6303270))

(declare-fun m!6303272 () Bool)

(assert (=> b!5261922 m!6303272))

(declare-fun m!6303274 () Bool)

(assert (=> bm!373162 m!6303274))

(assert (=> bm!373014 d!1693693))

(declare-fun d!1693695 () Bool)

(assert (=> d!1693695 (= (head!11282 s!2326) (h!67262 s!2326))))

(assert (=> b!5261156 d!1693695))

(declare-fun bs!1219895 () Bool)

(declare-fun b!5261932 () Bool)

(assert (= bs!1219895 (and b!5261932 b!5261880)))

(declare-fun lambda!265295 () Int)

(assert (=> bs!1219895 (not (= lambda!265295 lambda!265294))))

(declare-fun bs!1219896 () Bool)

(assert (= bs!1219896 (and b!5261932 b!5260618)))

(assert (=> bs!1219896 (not (= lambda!265295 lambda!265206))))

(declare-fun bs!1219897 () Bool)

(assert (= bs!1219897 (and b!5261932 d!1693435)))

(assert (=> bs!1219897 (not (= lambda!265295 lambda!265242))))

(declare-fun bs!1219898 () Bool)

(assert (= bs!1219898 (and b!5261932 b!5261885)))

(assert (=> bs!1219898 (= (and (= (reg!15208 (regOne!30271 r!7292)) (reg!15208 (regTwo!30271 r!7292))) (= (regOne!30271 r!7292) (regTwo!30271 r!7292))) (= lambda!265295 lambda!265293))))

(declare-fun bs!1219899 () Bool)

(assert (= bs!1219899 (and b!5261932 d!1693437)))

(assert (=> bs!1219899 (not (= lambda!265295 lambda!265247))))

(declare-fun bs!1219900 () Bool)

(assert (= bs!1219900 (and b!5261932 b!5261115)))

(assert (=> bs!1219900 (not (= lambda!265295 lambda!265254))))

(assert (=> bs!1219896 (not (= lambda!265295 lambda!265205))))

(declare-fun bs!1219901 () Bool)

(assert (= bs!1219901 (and b!5261932 b!5261120)))

(assert (=> bs!1219901 (= (and (= (reg!15208 (regOne!30271 r!7292)) (reg!15208 r!7292)) (= (regOne!30271 r!7292) r!7292)) (= lambda!265295 lambda!265253))))

(assert (=> bs!1219899 (not (= lambda!265295 lambda!265248))))

(assert (=> b!5261932 true))

(assert (=> b!5261932 true))

(declare-fun bs!1219902 () Bool)

(declare-fun b!5261927 () Bool)

(assert (= bs!1219902 (and b!5261927 b!5261932)))

(declare-fun lambda!265296 () Int)

(assert (=> bs!1219902 (not (= lambda!265296 lambda!265295))))

(declare-fun bs!1219903 () Bool)

(assert (= bs!1219903 (and b!5261927 b!5261880)))

(assert (=> bs!1219903 (= (and (= (regOne!30270 (regOne!30271 r!7292)) (regOne!30270 (regTwo!30271 r!7292))) (= (regTwo!30270 (regOne!30271 r!7292)) (regTwo!30270 (regTwo!30271 r!7292)))) (= lambda!265296 lambda!265294))))

(declare-fun bs!1219904 () Bool)

(assert (= bs!1219904 (and b!5261927 b!5260618)))

(assert (=> bs!1219904 (= (and (= (regOne!30270 (regOne!30271 r!7292)) (regOne!30270 r!7292)) (= (regTwo!30270 (regOne!30271 r!7292)) (regTwo!30270 r!7292))) (= lambda!265296 lambda!265206))))

(declare-fun bs!1219905 () Bool)

(assert (= bs!1219905 (and b!5261927 d!1693435)))

(assert (=> bs!1219905 (not (= lambda!265296 lambda!265242))))

(declare-fun bs!1219906 () Bool)

(assert (= bs!1219906 (and b!5261927 b!5261885)))

(assert (=> bs!1219906 (not (= lambda!265296 lambda!265293))))

(declare-fun bs!1219907 () Bool)

(assert (= bs!1219907 (and b!5261927 d!1693437)))

(assert (=> bs!1219907 (not (= lambda!265296 lambda!265247))))

(declare-fun bs!1219908 () Bool)

(assert (= bs!1219908 (and b!5261927 b!5261115)))

(assert (=> bs!1219908 (= (and (= (regOne!30270 (regOne!30271 r!7292)) (regOne!30270 r!7292)) (= (regTwo!30270 (regOne!30271 r!7292)) (regTwo!30270 r!7292))) (= lambda!265296 lambda!265254))))

(assert (=> bs!1219904 (not (= lambda!265296 lambda!265205))))

(declare-fun bs!1219909 () Bool)

(assert (= bs!1219909 (and b!5261927 b!5261120)))

(assert (=> bs!1219909 (not (= lambda!265296 lambda!265253))))

(assert (=> bs!1219907 (= (and (= (regOne!30270 (regOne!30271 r!7292)) (regOne!30270 r!7292)) (= (regTwo!30270 (regOne!30271 r!7292)) (regTwo!30270 r!7292))) (= lambda!265296 lambda!265248))))

(assert (=> b!5261927 true))

(assert (=> b!5261927 true))

(declare-fun e!3273100 () Bool)

(declare-fun call!373171 () Bool)

(assert (=> b!5261927 (= e!3273100 call!373171)))

(declare-fun b!5261928 () Bool)

(declare-fun e!3273102 () Bool)

(declare-fun call!373172 () Bool)

(assert (=> b!5261928 (= e!3273102 call!373172)))

(declare-fun bm!373166 () Bool)

(assert (=> bm!373166 (= call!373172 (isEmpty!32760 s!2326))))

(declare-fun b!5261929 () Bool)

(declare-fun e!3273098 () Bool)

(assert (=> b!5261929 (= e!3273098 (= s!2326 (Cons!60814 (c!910565 (regOne!30271 r!7292)) Nil!60814)))))

(declare-fun b!5261930 () Bool)

(declare-fun e!3273099 () Bool)

(assert (=> b!5261930 (= e!3273099 e!3273100)))

(declare-fun c!910888 () Bool)

(assert (=> b!5261930 (= c!910888 ((_ is Star!14879) (regOne!30271 r!7292)))))

(declare-fun d!1693697 () Bool)

(declare-fun c!910891 () Bool)

(assert (=> d!1693697 (= c!910891 ((_ is EmptyExpr!14879) (regOne!30271 r!7292)))))

(assert (=> d!1693697 (= (matchRSpec!1982 (regOne!30271 r!7292) s!2326) e!3273102)))

(declare-fun b!5261931 () Bool)

(declare-fun e!3273104 () Bool)

(assert (=> b!5261931 (= e!3273099 e!3273104)))

(declare-fun res!2232771 () Bool)

(assert (=> b!5261931 (= res!2232771 (matchRSpec!1982 (regOne!30271 (regOne!30271 r!7292)) s!2326))))

(assert (=> b!5261931 (=> res!2232771 e!3273104)))

(declare-fun e!3273103 () Bool)

(assert (=> b!5261932 (= e!3273103 call!373171)))

(declare-fun b!5261933 () Bool)

(assert (=> b!5261933 (= e!3273104 (matchRSpec!1982 (regTwo!30271 (regOne!30271 r!7292)) s!2326))))

(declare-fun b!5261934 () Bool)

(declare-fun res!2232770 () Bool)

(assert (=> b!5261934 (=> res!2232770 e!3273103)))

(assert (=> b!5261934 (= res!2232770 call!373172)))

(assert (=> b!5261934 (= e!3273100 e!3273103)))

(declare-fun bm!373167 () Bool)

(assert (=> bm!373167 (= call!373171 (Exists!2060 (ite c!910888 lambda!265295 lambda!265296)))))

(declare-fun b!5261935 () Bool)

(declare-fun e!3273101 () Bool)

(assert (=> b!5261935 (= e!3273102 e!3273101)))

(declare-fun res!2232772 () Bool)

(assert (=> b!5261935 (= res!2232772 (not ((_ is EmptyLang!14879) (regOne!30271 r!7292))))))

(assert (=> b!5261935 (=> (not res!2232772) (not e!3273101))))

(declare-fun b!5261936 () Bool)

(declare-fun c!910889 () Bool)

(assert (=> b!5261936 (= c!910889 ((_ is ElementMatch!14879) (regOne!30271 r!7292)))))

(assert (=> b!5261936 (= e!3273101 e!3273098)))

(declare-fun b!5261937 () Bool)

(declare-fun c!910890 () Bool)

(assert (=> b!5261937 (= c!910890 ((_ is Union!14879) (regOne!30271 r!7292)))))

(assert (=> b!5261937 (= e!3273098 e!3273099)))

(assert (= (and d!1693697 c!910891) b!5261928))

(assert (= (and d!1693697 (not c!910891)) b!5261935))

(assert (= (and b!5261935 res!2232772) b!5261936))

(assert (= (and b!5261936 c!910889) b!5261929))

(assert (= (and b!5261936 (not c!910889)) b!5261937))

(assert (= (and b!5261937 c!910890) b!5261931))

(assert (= (and b!5261937 (not c!910890)) b!5261930))

(assert (= (and b!5261931 (not res!2232771)) b!5261933))

(assert (= (and b!5261930 c!910888) b!5261934))

(assert (= (and b!5261930 (not c!910888)) b!5261927))

(assert (= (and b!5261934 (not res!2232770)) b!5261932))

(assert (= (or b!5261932 b!5261927) bm!373167))

(assert (= (or b!5261928 b!5261934) bm!373166))

(assert (=> bm!373166 m!6302632))

(declare-fun m!6303276 () Bool)

(assert (=> b!5261931 m!6303276))

(declare-fun m!6303278 () Bool)

(assert (=> b!5261933 m!6303278))

(declare-fun m!6303280 () Bool)

(assert (=> bm!373167 m!6303280))

(assert (=> b!5261119 d!1693697))

(declare-fun d!1693699 () Bool)

(assert (=> d!1693699 true))

(declare-fun setRes!33644 () Bool)

(assert (=> d!1693699 setRes!33644))

(declare-fun condSetEmpty!33644 () Bool)

(declare-fun res!2232775 () (InoxSet Context!8526))

(assert (=> d!1693699 (= condSetEmpty!33644 (= res!2232775 ((as const (Array Context!8526 Bool)) false)))))

(assert (=> d!1693699 (= (choose!39249 z!1189 lambda!265207) res!2232775)))

(declare-fun setIsEmpty!33644 () Bool)

(assert (=> setIsEmpty!33644 setRes!33644))

(declare-fun e!3273107 () Bool)

(declare-fun tp!1471010 () Bool)

(declare-fun setElem!33644 () Context!8526)

(declare-fun setNonEmpty!33644 () Bool)

(assert (=> setNonEmpty!33644 (= setRes!33644 (and tp!1471010 (inv!80444 setElem!33644) e!3273107))))

(declare-fun setRest!33644 () (InoxSet Context!8526))

(assert (=> setNonEmpty!33644 (= res!2232775 ((_ map or) (store ((as const (Array Context!8526 Bool)) false) setElem!33644 true) setRest!33644))))

(declare-fun b!5261940 () Bool)

(declare-fun tp!1471011 () Bool)

(assert (=> b!5261940 (= e!3273107 tp!1471011)))

(assert (= (and d!1693699 condSetEmpty!33644) setIsEmpty!33644))

(assert (= (and d!1693699 (not condSetEmpty!33644)) setNonEmpty!33644))

(assert (= setNonEmpty!33644 b!5261940))

(declare-fun m!6303282 () Bool)

(assert (=> setNonEmpty!33644 m!6303282))

(assert (=> d!1693399 d!1693699))

(declare-fun bs!1219910 () Bool)

(declare-fun d!1693701 () Bool)

(assert (= bs!1219910 (and d!1693701 d!1693679)))

(declare-fun lambda!265297 () Int)

(assert (=> bs!1219910 (= lambda!265297 lambda!265292)))

(declare-fun bs!1219911 () Bool)

(assert (= bs!1219911 (and d!1693701 d!1693453)))

(assert (=> bs!1219911 (= lambda!265297 lambda!265260)))

(declare-fun bs!1219912 () Bool)

(assert (= bs!1219912 (and d!1693701 d!1693405)))

(assert (=> bs!1219912 (= lambda!265297 lambda!265239)))

(declare-fun bs!1219913 () Bool)

(assert (= bs!1219913 (and d!1693701 d!1693449)))

(assert (=> bs!1219913 (= lambda!265297 lambda!265257)))

(declare-fun bs!1219914 () Bool)

(assert (= bs!1219914 (and d!1693701 d!1693455)))

(assert (=> bs!1219914 (= lambda!265297 lambda!265263)))

(declare-fun bs!1219915 () Bool)

(assert (= bs!1219915 (and d!1693701 d!1693401)))

(assert (=> bs!1219915 (= lambda!265297 lambda!265238)))

(assert (=> d!1693701 (= (inv!80444 (h!67261 (t!374122 zl!343))) (forall!14291 (exprs!4763 (h!67261 (t!374122 zl!343))) lambda!265297))))

(declare-fun bs!1219916 () Bool)

(assert (= bs!1219916 d!1693701))

(declare-fun m!6303284 () Bool)

(assert (=> bs!1219916 m!6303284))

(assert (=> b!5261292 d!1693701))

(declare-fun b!5261941 () Bool)

(declare-fun e!3273113 () (InoxSet Context!8526))

(declare-fun call!373174 () (InoxSet Context!8526))

(declare-fun call!373173 () (InoxSet Context!8526))

(assert (=> b!5261941 (= e!3273113 ((_ map or) call!373174 call!373173))))

(declare-fun b!5261942 () Bool)

(declare-fun e!3273110 () (InoxSet Context!8526))

(assert (=> b!5261942 (= e!3273110 e!3273113)))

(declare-fun c!910892 () Bool)

(assert (=> b!5261942 (= c!910892 ((_ is Union!14879) (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))))))

(declare-fun bm!373168 () Bool)

(declare-fun call!373178 () List!60936)

(declare-fun call!373176 () List!60936)

(assert (=> bm!373168 (= call!373178 call!373176)))

(declare-fun b!5261944 () Bool)

(declare-fun e!3273109 () (InoxSet Context!8526))

(declare-fun call!373177 () (InoxSet Context!8526))

(assert (=> b!5261944 (= e!3273109 call!373177)))

(declare-fun b!5261945 () Bool)

(declare-fun c!910895 () Bool)

(declare-fun e!3273111 () Bool)

(assert (=> b!5261945 (= c!910895 e!3273111)))

(declare-fun res!2232776 () Bool)

(assert (=> b!5261945 (=> (not res!2232776) (not e!3273111))))

(assert (=> b!5261945 (= res!2232776 ((_ is Concat!23724) (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))))))

(declare-fun e!3273108 () (InoxSet Context!8526))

(assert (=> b!5261945 (= e!3273113 e!3273108)))

(declare-fun b!5261946 () Bool)

(assert (=> b!5261946 (= e!3273111 (nullable!5048 (regOne!30270 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))))))))

(declare-fun b!5261947 () Bool)

(assert (=> b!5261947 (= e!3273110 (store ((as const (Array Context!8526 Bool)) false) (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) true))))

(declare-fun bm!373169 () Bool)

(declare-fun call!373175 () (InoxSet Context!8526))

(assert (=> bm!373169 (= call!373175 call!373173)))

(declare-fun c!910893 () Bool)

(declare-fun bm!373170 () Bool)

(assert (=> bm!373170 (= call!373173 (derivationStepZipperDown!327 (ite c!910892 (regTwo!30271 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (ite c!910895 (regTwo!30270 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (ite c!910893 (regOne!30270 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (reg!15208 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))))))) (ite (or c!910892 c!910895) (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (Context!8527 call!373178)) (h!67262 s!2326)))))

(declare-fun b!5261948 () Bool)

(declare-fun c!910894 () Bool)

(assert (=> b!5261948 (= c!910894 ((_ is Star!14879) (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))))))

(declare-fun e!3273112 () (InoxSet Context!8526))

(assert (=> b!5261948 (= e!3273112 e!3273109)))

(declare-fun b!5261949 () Bool)

(assert (=> b!5261949 (= e!3273109 ((as const (Array Context!8526 Bool)) false))))

(declare-fun bm!373171 () Bool)

(assert (=> bm!373171 (= call!373174 (derivationStepZipperDown!327 (ite c!910892 (regOne!30271 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (regOne!30270 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))))) (ite c!910892 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (Context!8527 call!373176)) (h!67262 s!2326)))))

(declare-fun b!5261950 () Bool)

(assert (=> b!5261950 (= e!3273108 e!3273112)))

(assert (=> b!5261950 (= c!910893 ((_ is Concat!23724) (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))))))

(declare-fun b!5261951 () Bool)

(assert (=> b!5261951 (= e!3273112 call!373177)))

(declare-fun b!5261943 () Bool)

(assert (=> b!5261943 (= e!3273108 ((_ map or) call!373174 call!373175))))

(declare-fun d!1693703 () Bool)

(declare-fun c!910896 () Bool)

(assert (=> d!1693703 (= c!910896 (and ((_ is ElementMatch!14879) (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (= (c!910565 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (h!67262 s!2326))))))

(assert (=> d!1693703 (= (derivationStepZipperDown!327 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))) (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (h!67262 s!2326)) e!3273110)))

(declare-fun bm!373172 () Bool)

(assert (=> bm!373172 (= call!373176 ($colon$colon!1332 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))))) (ite (or c!910895 c!910893) (regTwo!30270 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))))))))

(declare-fun bm!373173 () Bool)

(assert (=> bm!373173 (= call!373177 call!373175)))

(assert (= (and d!1693703 c!910896) b!5261947))

(assert (= (and d!1693703 (not c!910896)) b!5261942))

(assert (= (and b!5261942 c!910892) b!5261941))

(assert (= (and b!5261942 (not c!910892)) b!5261945))

(assert (= (and b!5261945 res!2232776) b!5261946))

(assert (= (and b!5261945 c!910895) b!5261943))

(assert (= (and b!5261945 (not c!910895)) b!5261950))

(assert (= (and b!5261950 c!910893) b!5261951))

(assert (= (and b!5261950 (not c!910893)) b!5261948))

(assert (= (and b!5261948 c!910894) b!5261944))

(assert (= (and b!5261948 (not c!910894)) b!5261949))

(assert (= (or b!5261951 b!5261944) bm!373168))

(assert (= (or b!5261951 b!5261944) bm!373173))

(assert (= (or b!5261943 bm!373168) bm!373172))

(assert (= (or b!5261943 bm!373173) bm!373169))

(assert (= (or b!5261941 bm!373169) bm!373170))

(assert (= (or b!5261941 b!5261943) bm!373171))

(declare-fun m!6303286 () Bool)

(assert (=> bm!373172 m!6303286))

(declare-fun m!6303288 () Bool)

(assert (=> b!5261946 m!6303288))

(declare-fun m!6303290 () Bool)

(assert (=> bm!373171 m!6303290))

(declare-fun m!6303292 () Bool)

(assert (=> b!5261947 m!6303292))

(declare-fun m!6303294 () Bool)

(assert (=> bm!373170 m!6303294))

(assert (=> bm!373020 d!1693703))

(assert (=> d!1693435 d!1693411))

(declare-fun c!910898 () Bool)

(declare-fun bm!373174 () Bool)

(declare-fun c!910897 () Bool)

(declare-fun call!373180 () Bool)

(assert (=> bm!373174 (= call!373180 (validRegex!6615 (ite c!910897 (reg!15208 (regOne!30270 r!7292)) (ite c!910898 (regOne!30271 (regOne!30270 r!7292)) (regOne!30270 (regOne!30270 r!7292))))))))

(declare-fun b!5261952 () Bool)

(declare-fun e!3273117 () Bool)

(assert (=> b!5261952 (= e!3273117 call!373180)))

(declare-fun b!5261953 () Bool)

(declare-fun e!3273118 () Bool)

(declare-fun call!373179 () Bool)

(assert (=> b!5261953 (= e!3273118 call!373179)))

(declare-fun d!1693705 () Bool)

(declare-fun res!2232778 () Bool)

(declare-fun e!3273119 () Bool)

(assert (=> d!1693705 (=> res!2232778 e!3273119)))

(assert (=> d!1693705 (= res!2232778 ((_ is ElementMatch!14879) (regOne!30270 r!7292)))))

(assert (=> d!1693705 (= (validRegex!6615 (regOne!30270 r!7292)) e!3273119)))

(declare-fun b!5261954 () Bool)

(declare-fun e!3273116 () Bool)

(assert (=> b!5261954 (= e!3273116 call!373179)))

(declare-fun b!5261955 () Bool)

(declare-fun e!3273114 () Bool)

(assert (=> b!5261955 (= e!3273114 e!3273118)))

(declare-fun res!2232779 () Bool)

(assert (=> b!5261955 (=> (not res!2232779) (not e!3273118))))

(declare-fun call!373181 () Bool)

(assert (=> b!5261955 (= res!2232779 call!373181)))

(declare-fun b!5261956 () Bool)

(declare-fun e!3273120 () Bool)

(declare-fun e!3273115 () Bool)

(assert (=> b!5261956 (= e!3273120 e!3273115)))

(assert (=> b!5261956 (= c!910898 ((_ is Union!14879) (regOne!30270 r!7292)))))

(declare-fun b!5261957 () Bool)

(declare-fun res!2232777 () Bool)

(assert (=> b!5261957 (=> (not res!2232777) (not e!3273116))))

(assert (=> b!5261957 (= res!2232777 call!373181)))

(assert (=> b!5261957 (= e!3273115 e!3273116)))

(declare-fun b!5261958 () Bool)

(assert (=> b!5261958 (= e!3273119 e!3273120)))

(assert (=> b!5261958 (= c!910897 ((_ is Star!14879) (regOne!30270 r!7292)))))

(declare-fun bm!373175 () Bool)

(assert (=> bm!373175 (= call!373179 (validRegex!6615 (ite c!910898 (regTwo!30271 (regOne!30270 r!7292)) (regTwo!30270 (regOne!30270 r!7292)))))))

(declare-fun bm!373176 () Bool)

(assert (=> bm!373176 (= call!373181 call!373180)))

(declare-fun b!5261959 () Bool)

(declare-fun res!2232780 () Bool)

(assert (=> b!5261959 (=> res!2232780 e!3273114)))

(assert (=> b!5261959 (= res!2232780 (not ((_ is Concat!23724) (regOne!30270 r!7292))))))

(assert (=> b!5261959 (= e!3273115 e!3273114)))

(declare-fun b!5261960 () Bool)

(assert (=> b!5261960 (= e!3273120 e!3273117)))

(declare-fun res!2232781 () Bool)

(assert (=> b!5261960 (= res!2232781 (not (nullable!5048 (reg!15208 (regOne!30270 r!7292)))))))

(assert (=> b!5261960 (=> (not res!2232781) (not e!3273117))))

(assert (= (and d!1693705 (not res!2232778)) b!5261958))

(assert (= (and b!5261958 c!910897) b!5261960))

(assert (= (and b!5261958 (not c!910897)) b!5261956))

(assert (= (and b!5261960 res!2232781) b!5261952))

(assert (= (and b!5261956 c!910898) b!5261957))

(assert (= (and b!5261956 (not c!910898)) b!5261959))

(assert (= (and b!5261957 res!2232777) b!5261954))

(assert (= (and b!5261959 (not res!2232780)) b!5261955))

(assert (= (and b!5261955 res!2232779) b!5261953))

(assert (= (or b!5261954 b!5261953) bm!373175))

(assert (= (or b!5261957 b!5261955) bm!373176))

(assert (= (or b!5261952 bm!373176) bm!373174))

(declare-fun m!6303296 () Bool)

(assert (=> bm!373174 m!6303296))

(declare-fun m!6303298 () Bool)

(assert (=> bm!373175 m!6303298))

(declare-fun m!6303300 () Bool)

(assert (=> b!5261960 m!6303300))

(assert (=> d!1693435 d!1693705))

(assert (=> d!1693435 d!1693439))

(declare-fun d!1693707 () Bool)

(assert (=> d!1693707 (= (Exists!2060 lambda!265242) (choose!39250 lambda!265242))))

(declare-fun bs!1219917 () Bool)

(assert (= bs!1219917 d!1693707))

(declare-fun m!6303302 () Bool)

(assert (=> bs!1219917 m!6303302))

(assert (=> d!1693435 d!1693707))

(declare-fun bs!1219918 () Bool)

(declare-fun d!1693709 () Bool)

(assert (= bs!1219918 (and d!1693709 b!5261932)))

(declare-fun lambda!265300 () Int)

(assert (=> bs!1219918 (not (= lambda!265300 lambda!265295))))

(declare-fun bs!1219919 () Bool)

(assert (= bs!1219919 (and d!1693709 b!5261880)))

(assert (=> bs!1219919 (not (= lambda!265300 lambda!265294))))

(declare-fun bs!1219920 () Bool)

(assert (= bs!1219920 (and d!1693709 b!5261927)))

(assert (=> bs!1219920 (not (= lambda!265300 lambda!265296))))

(declare-fun bs!1219921 () Bool)

(assert (= bs!1219921 (and d!1693709 b!5260618)))

(assert (=> bs!1219921 (not (= lambda!265300 lambda!265206))))

(declare-fun bs!1219922 () Bool)

(assert (= bs!1219922 (and d!1693709 d!1693435)))

(assert (=> bs!1219922 (= lambda!265300 lambda!265242)))

(declare-fun bs!1219923 () Bool)

(assert (= bs!1219923 (and d!1693709 b!5261885)))

(assert (=> bs!1219923 (not (= lambda!265300 lambda!265293))))

(declare-fun bs!1219924 () Bool)

(assert (= bs!1219924 (and d!1693709 d!1693437)))

(assert (=> bs!1219924 (= lambda!265300 lambda!265247)))

(declare-fun bs!1219925 () Bool)

(assert (= bs!1219925 (and d!1693709 b!5261115)))

(assert (=> bs!1219925 (not (= lambda!265300 lambda!265254))))

(assert (=> bs!1219921 (= lambda!265300 lambda!265205)))

(declare-fun bs!1219926 () Bool)

(assert (= bs!1219926 (and d!1693709 b!5261120)))

(assert (=> bs!1219926 (not (= lambda!265300 lambda!265253))))

(assert (=> bs!1219924 (not (= lambda!265300 lambda!265248))))

(assert (=> d!1693709 true))

(assert (=> d!1693709 true))

(assert (=> d!1693709 true))

(assert (=> d!1693709 (= (isDefined!11693 (findConcatSeparation!1404 (regOne!30270 r!7292) (regTwo!30270 r!7292) Nil!60814 s!2326 s!2326)) (Exists!2060 lambda!265300))))

(assert (=> d!1693709 true))

(declare-fun _$89!1442 () Unit!153034)

(assert (=> d!1693709 (= (choose!39251 (regOne!30270 r!7292) (regTwo!30270 r!7292) s!2326) _$89!1442)))

(declare-fun bs!1219927 () Bool)

(assert (= bs!1219927 d!1693709))

(assert (=> bs!1219927 m!6302294))

(assert (=> bs!1219927 m!6302294))

(assert (=> bs!1219927 m!6302296))

(declare-fun m!6303304 () Bool)

(assert (=> bs!1219927 m!6303304))

(assert (=> d!1693435 d!1693709))

(assert (=> d!1693411 d!1693683))

(declare-fun bm!373177 () Bool)

(declare-fun call!373182 () Bool)

(assert (=> bm!373177 (= call!373182 (isEmpty!32760 Nil!60814))))

(declare-fun b!5261965 () Bool)

(declare-fun e!3273125 () Bool)

(declare-fun e!3273124 () Bool)

(assert (=> b!5261965 (= e!3273125 e!3273124)))

(declare-fun res!2232793 () Bool)

(assert (=> b!5261965 (=> (not res!2232793) (not e!3273124))))

(declare-fun lt!2155456 () Bool)

(assert (=> b!5261965 (= res!2232793 (not lt!2155456))))

(declare-fun b!5261966 () Bool)

(declare-fun res!2232786 () Bool)

(declare-fun e!3273127 () Bool)

(assert (=> b!5261966 (=> res!2232786 e!3273127)))

(assert (=> b!5261966 (= res!2232786 (not (isEmpty!32760 (tail!10379 Nil!60814))))))

(declare-fun d!1693711 () Bool)

(declare-fun e!3273123 () Bool)

(assert (=> d!1693711 e!3273123))

(declare-fun c!910901 () Bool)

(assert (=> d!1693711 (= c!910901 ((_ is EmptyExpr!14879) (regOne!30270 r!7292)))))

(declare-fun e!3273128 () Bool)

(assert (=> d!1693711 (= lt!2155456 e!3273128)))

(declare-fun c!910900 () Bool)

(assert (=> d!1693711 (= c!910900 (isEmpty!32760 Nil!60814))))

(assert (=> d!1693711 (validRegex!6615 (regOne!30270 r!7292))))

(assert (=> d!1693711 (= (matchR!7064 (regOne!30270 r!7292) Nil!60814) lt!2155456)))

(declare-fun b!5261967 () Bool)

(assert (=> b!5261967 (= e!3273127 (not (= (head!11282 Nil!60814) (c!910565 (regOne!30270 r!7292)))))))

(declare-fun b!5261968 () Bool)

(declare-fun res!2232791 () Bool)

(declare-fun e!3273129 () Bool)

(assert (=> b!5261968 (=> (not res!2232791) (not e!3273129))))

(assert (=> b!5261968 (= res!2232791 (isEmpty!32760 (tail!10379 Nil!60814)))))

(declare-fun b!5261969 () Bool)

(declare-fun e!3273126 () Bool)

(assert (=> b!5261969 (= e!3273123 e!3273126)))

(declare-fun c!910899 () Bool)

(assert (=> b!5261969 (= c!910899 ((_ is EmptyLang!14879) (regOne!30270 r!7292)))))

(declare-fun b!5261970 () Bool)

(assert (=> b!5261970 (= e!3273126 (not lt!2155456))))

(declare-fun b!5261971 () Bool)

(assert (=> b!5261971 (= e!3273128 (matchR!7064 (derivativeStep!4103 (regOne!30270 r!7292) (head!11282 Nil!60814)) (tail!10379 Nil!60814)))))

(declare-fun b!5261972 () Bool)

(assert (=> b!5261972 (= e!3273123 (= lt!2155456 call!373182))))

(declare-fun b!5261973 () Bool)

(assert (=> b!5261973 (= e!3273128 (nullable!5048 (regOne!30270 r!7292)))))

(declare-fun b!5261974 () Bool)

(assert (=> b!5261974 (= e!3273124 e!3273127)))

(declare-fun res!2232790 () Bool)

(assert (=> b!5261974 (=> res!2232790 e!3273127)))

(assert (=> b!5261974 (= res!2232790 call!373182)))

(declare-fun b!5261975 () Bool)

(assert (=> b!5261975 (= e!3273129 (= (head!11282 Nil!60814) (c!910565 (regOne!30270 r!7292))))))

(declare-fun b!5261976 () Bool)

(declare-fun res!2232792 () Bool)

(assert (=> b!5261976 (=> (not res!2232792) (not e!3273129))))

(assert (=> b!5261976 (= res!2232792 (not call!373182))))

(declare-fun b!5261977 () Bool)

(declare-fun res!2232789 () Bool)

(assert (=> b!5261977 (=> res!2232789 e!3273125)))

(assert (=> b!5261977 (= res!2232789 (not ((_ is ElementMatch!14879) (regOne!30270 r!7292))))))

(assert (=> b!5261977 (= e!3273126 e!3273125)))

(declare-fun b!5261978 () Bool)

(declare-fun res!2232788 () Bool)

(assert (=> b!5261978 (=> res!2232788 e!3273125)))

(assert (=> b!5261978 (= res!2232788 e!3273129)))

(declare-fun res!2232787 () Bool)

(assert (=> b!5261978 (=> (not res!2232787) (not e!3273129))))

(assert (=> b!5261978 (= res!2232787 lt!2155456)))

(assert (= (and d!1693711 c!910900) b!5261973))

(assert (= (and d!1693711 (not c!910900)) b!5261971))

(assert (= (and d!1693711 c!910901) b!5261972))

(assert (= (and d!1693711 (not c!910901)) b!5261969))

(assert (= (and b!5261969 c!910899) b!5261970))

(assert (= (and b!5261969 (not c!910899)) b!5261977))

(assert (= (and b!5261977 (not res!2232789)) b!5261978))

(assert (= (and b!5261978 res!2232787) b!5261976))

(assert (= (and b!5261976 res!2232792) b!5261968))

(assert (= (and b!5261968 res!2232791) b!5261975))

(assert (= (and b!5261978 (not res!2232788)) b!5261965))

(assert (= (and b!5261965 res!2232793) b!5261974))

(assert (= (and b!5261974 (not res!2232790)) b!5261966))

(assert (= (and b!5261966 (not res!2232786)) b!5261967))

(assert (= (or b!5261972 b!5261974 b!5261976) bm!373177))

(declare-fun m!6303306 () Bool)

(assert (=> b!5261967 m!6303306))

(declare-fun m!6303308 () Bool)

(assert (=> b!5261966 m!6303308))

(assert (=> b!5261966 m!6303308))

(declare-fun m!6303310 () Bool)

(assert (=> b!5261966 m!6303310))

(declare-fun m!6303312 () Bool)

(assert (=> bm!373177 m!6303312))

(assert (=> d!1693711 m!6303312))

(assert (=> d!1693711 m!6302604))

(declare-fun m!6303314 () Bool)

(assert (=> b!5261973 m!6303314))

(assert (=> b!5261971 m!6303306))

(assert (=> b!5261971 m!6303306))

(declare-fun m!6303316 () Bool)

(assert (=> b!5261971 m!6303316))

(assert (=> b!5261971 m!6303308))

(assert (=> b!5261971 m!6303316))

(assert (=> b!5261971 m!6303308))

(declare-fun m!6303318 () Bool)

(assert (=> b!5261971 m!6303318))

(assert (=> b!5261968 m!6303308))

(assert (=> b!5261968 m!6303308))

(assert (=> b!5261968 m!6303310))

(assert (=> b!5261975 m!6303306))

(assert (=> d!1693411 d!1693711))

(assert (=> d!1693411 d!1693705))

(declare-fun bm!373178 () Bool)

(declare-fun c!910903 () Bool)

(declare-fun call!373184 () Bool)

(declare-fun c!910902 () Bool)

(assert (=> bm!373178 (= call!373184 (validRegex!6615 (ite c!910902 (reg!15208 (ite c!910744 (regTwo!30271 r!7292) (regTwo!30270 r!7292))) (ite c!910903 (regOne!30271 (ite c!910744 (regTwo!30271 r!7292) (regTwo!30270 r!7292))) (regOne!30270 (ite c!910744 (regTwo!30271 r!7292) (regTwo!30270 r!7292)))))))))

(declare-fun b!5261979 () Bool)

(declare-fun e!3273133 () Bool)

(assert (=> b!5261979 (= e!3273133 call!373184)))

(declare-fun b!5261980 () Bool)

(declare-fun e!3273134 () Bool)

(declare-fun call!373183 () Bool)

(assert (=> b!5261980 (= e!3273134 call!373183)))

(declare-fun d!1693713 () Bool)

(declare-fun res!2232795 () Bool)

(declare-fun e!3273135 () Bool)

(assert (=> d!1693713 (=> res!2232795 e!3273135)))

(assert (=> d!1693713 (= res!2232795 ((_ is ElementMatch!14879) (ite c!910744 (regTwo!30271 r!7292) (regTwo!30270 r!7292))))))

(assert (=> d!1693713 (= (validRegex!6615 (ite c!910744 (regTwo!30271 r!7292) (regTwo!30270 r!7292))) e!3273135)))

(declare-fun b!5261981 () Bool)

(declare-fun e!3273132 () Bool)

(assert (=> b!5261981 (= e!3273132 call!373183)))

(declare-fun b!5261982 () Bool)

(declare-fun e!3273130 () Bool)

(assert (=> b!5261982 (= e!3273130 e!3273134)))

(declare-fun res!2232796 () Bool)

(assert (=> b!5261982 (=> (not res!2232796) (not e!3273134))))

(declare-fun call!373185 () Bool)

(assert (=> b!5261982 (= res!2232796 call!373185)))

(declare-fun b!5261983 () Bool)

(declare-fun e!3273136 () Bool)

(declare-fun e!3273131 () Bool)

(assert (=> b!5261983 (= e!3273136 e!3273131)))

(assert (=> b!5261983 (= c!910903 ((_ is Union!14879) (ite c!910744 (regTwo!30271 r!7292) (regTwo!30270 r!7292))))))

(declare-fun b!5261984 () Bool)

(declare-fun res!2232794 () Bool)

(assert (=> b!5261984 (=> (not res!2232794) (not e!3273132))))

(assert (=> b!5261984 (= res!2232794 call!373185)))

(assert (=> b!5261984 (= e!3273131 e!3273132)))

(declare-fun b!5261985 () Bool)

(assert (=> b!5261985 (= e!3273135 e!3273136)))

(assert (=> b!5261985 (= c!910902 ((_ is Star!14879) (ite c!910744 (regTwo!30271 r!7292) (regTwo!30270 r!7292))))))

(declare-fun bm!373179 () Bool)

(assert (=> bm!373179 (= call!373183 (validRegex!6615 (ite c!910903 (regTwo!30271 (ite c!910744 (regTwo!30271 r!7292) (regTwo!30270 r!7292))) (regTwo!30270 (ite c!910744 (regTwo!30271 r!7292) (regTwo!30270 r!7292))))))))

(declare-fun bm!373180 () Bool)

(assert (=> bm!373180 (= call!373185 call!373184)))

(declare-fun b!5261986 () Bool)

(declare-fun res!2232797 () Bool)

(assert (=> b!5261986 (=> res!2232797 e!3273130)))

(assert (=> b!5261986 (= res!2232797 (not ((_ is Concat!23724) (ite c!910744 (regTwo!30271 r!7292) (regTwo!30270 r!7292)))))))

(assert (=> b!5261986 (= e!3273131 e!3273130)))

(declare-fun b!5261987 () Bool)

(assert (=> b!5261987 (= e!3273136 e!3273133)))

(declare-fun res!2232798 () Bool)

(assert (=> b!5261987 (= res!2232798 (not (nullable!5048 (reg!15208 (ite c!910744 (regTwo!30271 r!7292) (regTwo!30270 r!7292))))))))

(assert (=> b!5261987 (=> (not res!2232798) (not e!3273133))))

(assert (= (and d!1693713 (not res!2232795)) b!5261985))

(assert (= (and b!5261985 c!910902) b!5261987))

(assert (= (and b!5261985 (not c!910902)) b!5261983))

(assert (= (and b!5261987 res!2232798) b!5261979))

(assert (= (and b!5261983 c!910903) b!5261984))

(assert (= (and b!5261983 (not c!910903)) b!5261986))

(assert (= (and b!5261984 res!2232794) b!5261981))

(assert (= (and b!5261986 (not res!2232797)) b!5261982))

(assert (= (and b!5261982 res!2232796) b!5261980))

(assert (= (or b!5261981 b!5261980) bm!373179))

(assert (= (or b!5261984 b!5261982) bm!373180))

(assert (= (or b!5261979 bm!373180) bm!373178))

(declare-fun m!6303320 () Bool)

(assert (=> bm!373178 m!6303320))

(declare-fun m!6303322 () Bool)

(assert (=> bm!373179 m!6303322))

(declare-fun m!6303324 () Bool)

(assert (=> b!5261987 m!6303324))

(assert (=> bm!373068 d!1693713))

(declare-fun d!1693715 () Bool)

(assert (=> d!1693715 (= (nullable!5048 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (nullableFct!1434 (h!67260 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))))))

(declare-fun bs!1219928 () Bool)

(assert (= bs!1219928 d!1693715))

(declare-fun m!6303326 () Bool)

(assert (=> bs!1219928 m!6303326))

(assert (=> b!5260865 d!1693715))

(declare-fun d!1693717 () Bool)

(assert (=> d!1693717 (= (isEmpty!32755 (tail!10380 (unfocusZipperList!321 zl!343))) ((_ is Nil!60812) (tail!10380 (unfocusZipperList!321 zl!343))))))

(assert (=> b!5261255 d!1693717))

(declare-fun d!1693719 () Bool)

(assert (=> d!1693719 (= (tail!10380 (unfocusZipperList!321 zl!343)) (t!374121 (unfocusZipperList!321 zl!343)))))

(assert (=> b!5261255 d!1693719))

(declare-fun d!1693721 () Bool)

(declare-fun res!2232803 () Bool)

(declare-fun e!3273141 () Bool)

(assert (=> d!1693721 (=> res!2232803 e!3273141)))

(assert (=> d!1693721 (= res!2232803 ((_ is Nil!60812) (exprs!4763 setElem!33631)))))

(assert (=> d!1693721 (= (forall!14291 (exprs!4763 setElem!33631) lambda!265239) e!3273141)))

(declare-fun b!5261992 () Bool)

(declare-fun e!3273142 () Bool)

(assert (=> b!5261992 (= e!3273141 e!3273142)))

(declare-fun res!2232804 () Bool)

(assert (=> b!5261992 (=> (not res!2232804) (not e!3273142))))

(declare-fun dynLambda!24029 (Int Regex!14879) Bool)

(assert (=> b!5261992 (= res!2232804 (dynLambda!24029 lambda!265239 (h!67260 (exprs!4763 setElem!33631))))))

(declare-fun b!5261993 () Bool)

(assert (=> b!5261993 (= e!3273142 (forall!14291 (t!374121 (exprs!4763 setElem!33631)) lambda!265239))))

(assert (= (and d!1693721 (not res!2232803)) b!5261992))

(assert (= (and b!5261992 res!2232804) b!5261993))

(declare-fun b_lambda!203037 () Bool)

(assert (=> (not b_lambda!203037) (not b!5261992)))

(declare-fun m!6303328 () Bool)

(assert (=> b!5261992 m!6303328))

(declare-fun m!6303330 () Bool)

(assert (=> b!5261993 m!6303330))

(assert (=> d!1693405 d!1693721))

(declare-fun d!1693723 () Bool)

(declare-fun c!910904 () Bool)

(assert (=> d!1693723 (= c!910904 (isEmpty!32760 (tail!10379 (t!374123 s!2326))))))

(declare-fun e!3273143 () Bool)

(assert (=> d!1693723 (= (matchZipper!1123 (derivationStepZipper!1126 lt!2155338 (head!11282 (t!374123 s!2326))) (tail!10379 (t!374123 s!2326))) e!3273143)))

(declare-fun b!5261994 () Bool)

(assert (=> b!5261994 (= e!3273143 (nullableZipper!1282 (derivationStepZipper!1126 lt!2155338 (head!11282 (t!374123 s!2326)))))))

(declare-fun b!5261995 () Bool)

(assert (=> b!5261995 (= e!3273143 (matchZipper!1123 (derivationStepZipper!1126 (derivationStepZipper!1126 lt!2155338 (head!11282 (t!374123 s!2326))) (head!11282 (tail!10379 (t!374123 s!2326)))) (tail!10379 (tail!10379 (t!374123 s!2326)))))))

(assert (= (and d!1693723 c!910904) b!5261994))

(assert (= (and d!1693723 (not c!910904)) b!5261995))

(assert (=> d!1693723 m!6302726))

(declare-fun m!6303332 () Bool)

(assert (=> d!1693723 m!6303332))

(assert (=> b!5261994 m!6302724))

(declare-fun m!6303334 () Bool)

(assert (=> b!5261994 m!6303334))

(assert (=> b!5261995 m!6302726))

(declare-fun m!6303336 () Bool)

(assert (=> b!5261995 m!6303336))

(assert (=> b!5261995 m!6302724))

(assert (=> b!5261995 m!6303336))

(declare-fun m!6303338 () Bool)

(assert (=> b!5261995 m!6303338))

(assert (=> b!5261995 m!6302726))

(declare-fun m!6303340 () Bool)

(assert (=> b!5261995 m!6303340))

(assert (=> b!5261995 m!6303338))

(assert (=> b!5261995 m!6303340))

(declare-fun m!6303342 () Bool)

(assert (=> b!5261995 m!6303342))

(assert (=> b!5261281 d!1693723))

(declare-fun bs!1219929 () Bool)

(declare-fun d!1693725 () Bool)

(assert (= bs!1219929 (and d!1693725 b!5260610)))

(declare-fun lambda!265303 () Int)

(assert (=> bs!1219929 (= (= (head!11282 (t!374123 s!2326)) (h!67262 s!2326)) (= lambda!265303 lambda!265207))))

(assert (=> d!1693725 true))

(assert (=> d!1693725 (= (derivationStepZipper!1126 lt!2155338 (head!11282 (t!374123 s!2326))) (flatMap!606 lt!2155338 lambda!265303))))

(declare-fun bs!1219930 () Bool)

(assert (= bs!1219930 d!1693725))

(declare-fun m!6303344 () Bool)

(assert (=> bs!1219930 m!6303344))

(assert (=> b!5261281 d!1693725))

(declare-fun d!1693727 () Bool)

(assert (=> d!1693727 (= (head!11282 (t!374123 s!2326)) (h!67262 (t!374123 s!2326)))))

(assert (=> b!5261281 d!1693727))

(declare-fun d!1693729 () Bool)

(assert (=> d!1693729 (= (tail!10379 (t!374123 s!2326)) (t!374123 (t!374123 s!2326)))))

(assert (=> b!5261281 d!1693729))

(declare-fun d!1693731 () Bool)

(assert (=> d!1693731 (= (Exists!2060 lambda!265247) (choose!39250 lambda!265247))))

(declare-fun bs!1219931 () Bool)

(assert (= bs!1219931 d!1693731))

(declare-fun m!6303346 () Bool)

(assert (=> bs!1219931 m!6303346))

(assert (=> d!1693437 d!1693731))

(declare-fun d!1693733 () Bool)

(assert (=> d!1693733 (= (Exists!2060 lambda!265248) (choose!39250 lambda!265248))))

(declare-fun bs!1219932 () Bool)

(assert (= bs!1219932 d!1693733))

(declare-fun m!6303348 () Bool)

(assert (=> bs!1219932 m!6303348))

(assert (=> d!1693437 d!1693733))

(declare-fun bs!1219933 () Bool)

(declare-fun d!1693735 () Bool)

(assert (= bs!1219933 (and d!1693735 b!5261932)))

(declare-fun lambda!265308 () Int)

(assert (=> bs!1219933 (not (= lambda!265308 lambda!265295))))

(declare-fun bs!1219934 () Bool)

(assert (= bs!1219934 (and d!1693735 b!5261880)))

(assert (=> bs!1219934 (not (= lambda!265308 lambda!265294))))

(declare-fun bs!1219935 () Bool)

(assert (= bs!1219935 (and d!1693735 b!5261927)))

(assert (=> bs!1219935 (not (= lambda!265308 lambda!265296))))

(declare-fun bs!1219936 () Bool)

(assert (= bs!1219936 (and d!1693735 b!5260618)))

(assert (=> bs!1219936 (not (= lambda!265308 lambda!265206))))

(declare-fun bs!1219937 () Bool)

(assert (= bs!1219937 (and d!1693735 d!1693709)))

(assert (=> bs!1219937 (= lambda!265308 lambda!265300)))

(declare-fun bs!1219938 () Bool)

(assert (= bs!1219938 (and d!1693735 d!1693435)))

(assert (=> bs!1219938 (= lambda!265308 lambda!265242)))

(declare-fun bs!1219939 () Bool)

(assert (= bs!1219939 (and d!1693735 b!5261885)))

(assert (=> bs!1219939 (not (= lambda!265308 lambda!265293))))

(declare-fun bs!1219940 () Bool)

(assert (= bs!1219940 (and d!1693735 d!1693437)))

(assert (=> bs!1219940 (= lambda!265308 lambda!265247)))

(declare-fun bs!1219941 () Bool)

(assert (= bs!1219941 (and d!1693735 b!5261115)))

(assert (=> bs!1219941 (not (= lambda!265308 lambda!265254))))

(assert (=> bs!1219936 (= lambda!265308 lambda!265205)))

(declare-fun bs!1219942 () Bool)

(assert (= bs!1219942 (and d!1693735 b!5261120)))

(assert (=> bs!1219942 (not (= lambda!265308 lambda!265253))))

(assert (=> bs!1219940 (not (= lambda!265308 lambda!265248))))

(assert (=> d!1693735 true))

(assert (=> d!1693735 true))

(assert (=> d!1693735 true))

(declare-fun lambda!265309 () Int)

(assert (=> bs!1219933 (not (= lambda!265309 lambda!265295))))

(assert (=> bs!1219934 (= (and (= (regOne!30270 r!7292) (regOne!30270 (regTwo!30271 r!7292))) (= (regTwo!30270 r!7292) (regTwo!30270 (regTwo!30271 r!7292)))) (= lambda!265309 lambda!265294))))

(assert (=> bs!1219935 (= (and (= (regOne!30270 r!7292) (regOne!30270 (regOne!30271 r!7292))) (= (regTwo!30270 r!7292) (regTwo!30270 (regOne!30271 r!7292)))) (= lambda!265309 lambda!265296))))

(assert (=> bs!1219936 (= lambda!265309 lambda!265206)))

(assert (=> bs!1219937 (not (= lambda!265309 lambda!265300))))

(assert (=> bs!1219938 (not (= lambda!265309 lambda!265242))))

(assert (=> bs!1219939 (not (= lambda!265309 lambda!265293))))

(assert (=> bs!1219940 (not (= lambda!265309 lambda!265247))))

(assert (=> bs!1219941 (= lambda!265309 lambda!265254)))

(assert (=> bs!1219936 (not (= lambda!265309 lambda!265205))))

(assert (=> bs!1219942 (not (= lambda!265309 lambda!265253))))

(declare-fun bs!1219943 () Bool)

(assert (= bs!1219943 d!1693735))

(assert (=> bs!1219943 (not (= lambda!265309 lambda!265308))))

(assert (=> bs!1219940 (= lambda!265309 lambda!265248)))

(assert (=> d!1693735 true))

(assert (=> d!1693735 true))

(assert (=> d!1693735 true))

(assert (=> d!1693735 (= (Exists!2060 lambda!265308) (Exists!2060 lambda!265309))))

(assert (=> d!1693735 true))

(declare-fun _$90!1066 () Unit!153034)

(assert (=> d!1693735 (= (choose!39252 (regOne!30270 r!7292) (regTwo!30270 r!7292) s!2326) _$90!1066)))

(declare-fun m!6303350 () Bool)

(assert (=> bs!1219943 m!6303350))

(declare-fun m!6303352 () Bool)

(assert (=> bs!1219943 m!6303352))

(assert (=> d!1693437 d!1693735))

(assert (=> d!1693437 d!1693705))

(declare-fun d!1693737 () Bool)

(assert (=> d!1693737 (= (nullable!5048 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343))))) (nullableFct!1434 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343))))))))

(declare-fun bs!1219944 () Bool)

(assert (= bs!1219944 d!1693737))

(declare-fun m!6303354 () Bool)

(assert (=> bs!1219944 m!6303354))

(assert (=> b!5260826 d!1693737))

(declare-fun d!1693739 () Bool)

(assert (=> d!1693739 (= (isEmpty!32759 (findConcatSeparation!1404 (regOne!30270 r!7292) (regTwo!30270 r!7292) Nil!60814 s!2326 s!2326)) (not ((_ is Some!14989) (findConcatSeparation!1404 (regOne!30270 r!7292) (regTwo!30270 r!7292) Nil!60814 s!2326 s!2326))))))

(assert (=> d!1693439 d!1693739))

(declare-fun bs!1219945 () Bool)

(declare-fun d!1693741 () Bool)

(assert (= bs!1219945 (and d!1693741 d!1693679)))

(declare-fun lambda!265310 () Int)

(assert (=> bs!1219945 (= lambda!265310 lambda!265292)))

(declare-fun bs!1219946 () Bool)

(assert (= bs!1219946 (and d!1693741 d!1693453)))

(assert (=> bs!1219946 (= lambda!265310 lambda!265260)))

(declare-fun bs!1219947 () Bool)

(assert (= bs!1219947 (and d!1693741 d!1693405)))

(assert (=> bs!1219947 (= lambda!265310 lambda!265239)))

(declare-fun bs!1219948 () Bool)

(assert (= bs!1219948 (and d!1693741 d!1693449)))

(assert (=> bs!1219948 (= lambda!265310 lambda!265257)))

(declare-fun bs!1219949 () Bool)

(assert (= bs!1219949 (and d!1693741 d!1693701)))

(assert (=> bs!1219949 (= lambda!265310 lambda!265297)))

(declare-fun bs!1219950 () Bool)

(assert (= bs!1219950 (and d!1693741 d!1693455)))

(assert (=> bs!1219950 (= lambda!265310 lambda!265263)))

(declare-fun bs!1219951 () Bool)

(assert (= bs!1219951 (and d!1693741 d!1693401)))

(assert (=> bs!1219951 (= lambda!265310 lambda!265238)))

(assert (=> d!1693741 (= (inv!80444 setElem!33637) (forall!14291 (exprs!4763 setElem!33637) lambda!265310))))

(declare-fun bs!1219952 () Bool)

(assert (= bs!1219952 d!1693741))

(declare-fun m!6303356 () Bool)

(assert (=> bs!1219952 m!6303356))

(assert (=> setNonEmpty!33637 d!1693741))

(declare-fun d!1693743 () Bool)

(assert (=> d!1693743 (= (isEmpty!32755 (unfocusZipperList!321 zl!343)) ((_ is Nil!60812) (unfocusZipperList!321 zl!343)))))

(assert (=> b!5261257 d!1693743))

(declare-fun d!1693745 () Bool)

(declare-fun lambda!265313 () Int)

(declare-fun exists!1985 ((InoxSet Context!8526) Int) Bool)

(assert (=> d!1693745 (= (nullableZipper!1282 ((_ map or) lt!2155338 lt!2155333)) (exists!1985 ((_ map or) lt!2155338 lt!2155333) lambda!265313))))

(declare-fun bs!1219953 () Bool)

(assert (= bs!1219953 d!1693745))

(declare-fun m!6303358 () Bool)

(assert (=> bs!1219953 m!6303358))

(assert (=> b!5261282 d!1693745))

(declare-fun d!1693747 () Bool)

(assert (=> d!1693747 (= (head!11283 (unfocusZipperList!321 zl!343)) (h!67260 (unfocusZipperList!321 zl!343)))))

(assert (=> b!5261253 d!1693747))

(declare-fun c!910909 () Bool)

(declare-fun c!910910 () Bool)

(declare-fun bm!373181 () Bool)

(declare-fun call!373187 () Bool)

(assert (=> bm!373181 (= call!373187 (validRegex!6615 (ite c!910909 (reg!15208 (ite c!910727 (regTwo!30271 (regTwo!30270 (regOne!30270 r!7292))) (regTwo!30270 (regTwo!30270 (regOne!30270 r!7292))))) (ite c!910910 (regOne!30271 (ite c!910727 (regTwo!30271 (regTwo!30270 (regOne!30270 r!7292))) (regTwo!30270 (regTwo!30270 (regOne!30270 r!7292))))) (regOne!30270 (ite c!910727 (regTwo!30271 (regTwo!30270 (regOne!30270 r!7292))) (regTwo!30270 (regTwo!30270 (regOne!30270 r!7292)))))))))))

(declare-fun b!5262006 () Bool)

(declare-fun e!3273151 () Bool)

(assert (=> b!5262006 (= e!3273151 call!373187)))

(declare-fun b!5262007 () Bool)

(declare-fun e!3273152 () Bool)

(declare-fun call!373186 () Bool)

(assert (=> b!5262007 (= e!3273152 call!373186)))

(declare-fun d!1693749 () Bool)

(declare-fun res!2232814 () Bool)

(declare-fun e!3273153 () Bool)

(assert (=> d!1693749 (=> res!2232814 e!3273153)))

(assert (=> d!1693749 (= res!2232814 ((_ is ElementMatch!14879) (ite c!910727 (regTwo!30271 (regTwo!30270 (regOne!30270 r!7292))) (regTwo!30270 (regTwo!30270 (regOne!30270 r!7292))))))))

(assert (=> d!1693749 (= (validRegex!6615 (ite c!910727 (regTwo!30271 (regTwo!30270 (regOne!30270 r!7292))) (regTwo!30270 (regTwo!30270 (regOne!30270 r!7292))))) e!3273153)))

(declare-fun b!5262008 () Bool)

(declare-fun e!3273150 () Bool)

(assert (=> b!5262008 (= e!3273150 call!373186)))

(declare-fun b!5262009 () Bool)

(declare-fun e!3273148 () Bool)

(assert (=> b!5262009 (= e!3273148 e!3273152)))

(declare-fun res!2232815 () Bool)

(assert (=> b!5262009 (=> (not res!2232815) (not e!3273152))))

(declare-fun call!373188 () Bool)

(assert (=> b!5262009 (= res!2232815 call!373188)))

(declare-fun b!5262010 () Bool)

(declare-fun e!3273154 () Bool)

(declare-fun e!3273149 () Bool)

(assert (=> b!5262010 (= e!3273154 e!3273149)))

(assert (=> b!5262010 (= c!910910 ((_ is Union!14879) (ite c!910727 (regTwo!30271 (regTwo!30270 (regOne!30270 r!7292))) (regTwo!30270 (regTwo!30270 (regOne!30270 r!7292))))))))

(declare-fun b!5262011 () Bool)

(declare-fun res!2232813 () Bool)

(assert (=> b!5262011 (=> (not res!2232813) (not e!3273150))))

(assert (=> b!5262011 (= res!2232813 call!373188)))

(assert (=> b!5262011 (= e!3273149 e!3273150)))

(declare-fun b!5262012 () Bool)

(assert (=> b!5262012 (= e!3273153 e!3273154)))

(assert (=> b!5262012 (= c!910909 ((_ is Star!14879) (ite c!910727 (regTwo!30271 (regTwo!30270 (regOne!30270 r!7292))) (regTwo!30270 (regTwo!30270 (regOne!30270 r!7292))))))))

(declare-fun bm!373182 () Bool)

(assert (=> bm!373182 (= call!373186 (validRegex!6615 (ite c!910910 (regTwo!30271 (ite c!910727 (regTwo!30271 (regTwo!30270 (regOne!30270 r!7292))) (regTwo!30270 (regTwo!30270 (regOne!30270 r!7292))))) (regTwo!30270 (ite c!910727 (regTwo!30271 (regTwo!30270 (regOne!30270 r!7292))) (regTwo!30270 (regTwo!30270 (regOne!30270 r!7292))))))))))

(declare-fun bm!373183 () Bool)

(assert (=> bm!373183 (= call!373188 call!373187)))

(declare-fun b!5262013 () Bool)

(declare-fun res!2232816 () Bool)

(assert (=> b!5262013 (=> res!2232816 e!3273148)))

(assert (=> b!5262013 (= res!2232816 (not ((_ is Concat!23724) (ite c!910727 (regTwo!30271 (regTwo!30270 (regOne!30270 r!7292))) (regTwo!30270 (regTwo!30270 (regOne!30270 r!7292)))))))))

(assert (=> b!5262013 (= e!3273149 e!3273148)))

(declare-fun b!5262014 () Bool)

(assert (=> b!5262014 (= e!3273154 e!3273151)))

(declare-fun res!2232817 () Bool)

(assert (=> b!5262014 (= res!2232817 (not (nullable!5048 (reg!15208 (ite c!910727 (regTwo!30271 (regTwo!30270 (regOne!30270 r!7292))) (regTwo!30270 (regTwo!30270 (regOne!30270 r!7292))))))))))

(assert (=> b!5262014 (=> (not res!2232817) (not e!3273151))))

(assert (= (and d!1693749 (not res!2232814)) b!5262012))

(assert (= (and b!5262012 c!910909) b!5262014))

(assert (= (and b!5262012 (not c!910909)) b!5262010))

(assert (= (and b!5262014 res!2232817) b!5262006))

(assert (= (and b!5262010 c!910910) b!5262011))

(assert (= (and b!5262010 (not c!910910)) b!5262013))

(assert (= (and b!5262011 res!2232813) b!5262008))

(assert (= (and b!5262013 (not res!2232816)) b!5262009))

(assert (= (and b!5262009 res!2232815) b!5262007))

(assert (= (or b!5262008 b!5262007) bm!373182))

(assert (= (or b!5262011 b!5262009) bm!373183))

(assert (= (or b!5262006 bm!373183) bm!373181))

(declare-fun m!6303360 () Bool)

(assert (=> bm!373181 m!6303360))

(declare-fun m!6303362 () Bool)

(assert (=> bm!373182 m!6303362))

(declare-fun m!6303364 () Bool)

(assert (=> b!5262014 m!6303364))

(assert (=> bm!373065 d!1693749))

(declare-fun d!1693751 () Bool)

(declare-fun res!2232818 () Bool)

(declare-fun e!3273155 () Bool)

(assert (=> d!1693751 (=> res!2232818 e!3273155)))

(assert (=> d!1693751 (= res!2232818 ((_ is Nil!60812) (exprs!4763 (h!67261 zl!343))))))

(assert (=> d!1693751 (= (forall!14291 (exprs!4763 (h!67261 zl!343)) lambda!265238) e!3273155)))

(declare-fun b!5262015 () Bool)

(declare-fun e!3273156 () Bool)

(assert (=> b!5262015 (= e!3273155 e!3273156)))

(declare-fun res!2232819 () Bool)

(assert (=> b!5262015 (=> (not res!2232819) (not e!3273156))))

(assert (=> b!5262015 (= res!2232819 (dynLambda!24029 lambda!265238 (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun b!5262016 () Bool)

(assert (=> b!5262016 (= e!3273156 (forall!14291 (t!374121 (exprs!4763 (h!67261 zl!343))) lambda!265238))))

(assert (= (and d!1693751 (not res!2232818)) b!5262015))

(assert (= (and b!5262015 res!2232819) b!5262016))

(declare-fun b_lambda!203039 () Bool)

(assert (=> (not b_lambda!203039) (not b!5262015)))

(declare-fun m!6303366 () Bool)

(assert (=> b!5262015 m!6303366))

(declare-fun m!6303368 () Bool)

(assert (=> b!5262016 m!6303368))

(assert (=> d!1693401 d!1693751))

(declare-fun d!1693753 () Bool)

(assert (=> d!1693753 (= (isEmpty!32755 (tail!10380 (exprs!4763 (h!67261 zl!343)))) ((_ is Nil!60812) (tail!10380 (exprs!4763 (h!67261 zl!343)))))))

(assert (=> b!5261200 d!1693753))

(declare-fun d!1693755 () Bool)

(assert (=> d!1693755 (= (tail!10380 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))

(assert (=> b!5261200 d!1693755))

(declare-fun d!1693757 () Bool)

(assert (=> d!1693757 (= (isEmpty!32755 (t!374121 (unfocusZipperList!321 zl!343))) ((_ is Nil!60812) (t!374121 (unfocusZipperList!321 zl!343))))))

(assert (=> b!5261251 d!1693757))

(declare-fun c!910912 () Bool)

(declare-fun call!373190 () Bool)

(declare-fun c!910911 () Bool)

(declare-fun bm!373184 () Bool)

(assert (=> bm!373184 (= call!373190 (validRegex!6615 (ite c!910911 (reg!15208 (ite c!910743 (reg!15208 r!7292) (ite c!910744 (regOne!30271 r!7292) (regOne!30270 r!7292)))) (ite c!910912 (regOne!30271 (ite c!910743 (reg!15208 r!7292) (ite c!910744 (regOne!30271 r!7292) (regOne!30270 r!7292)))) (regOne!30270 (ite c!910743 (reg!15208 r!7292) (ite c!910744 (regOne!30271 r!7292) (regOne!30270 r!7292))))))))))

(declare-fun b!5262017 () Bool)

(declare-fun e!3273160 () Bool)

(assert (=> b!5262017 (= e!3273160 call!373190)))

(declare-fun b!5262018 () Bool)

(declare-fun e!3273161 () Bool)

(declare-fun call!373189 () Bool)

(assert (=> b!5262018 (= e!3273161 call!373189)))

(declare-fun d!1693759 () Bool)

(declare-fun res!2232821 () Bool)

(declare-fun e!3273162 () Bool)

(assert (=> d!1693759 (=> res!2232821 e!3273162)))

(assert (=> d!1693759 (= res!2232821 ((_ is ElementMatch!14879) (ite c!910743 (reg!15208 r!7292) (ite c!910744 (regOne!30271 r!7292) (regOne!30270 r!7292)))))))

(assert (=> d!1693759 (= (validRegex!6615 (ite c!910743 (reg!15208 r!7292) (ite c!910744 (regOne!30271 r!7292) (regOne!30270 r!7292)))) e!3273162)))

(declare-fun b!5262019 () Bool)

(declare-fun e!3273159 () Bool)

(assert (=> b!5262019 (= e!3273159 call!373189)))

(declare-fun b!5262020 () Bool)

(declare-fun e!3273157 () Bool)

(assert (=> b!5262020 (= e!3273157 e!3273161)))

(declare-fun res!2232822 () Bool)

(assert (=> b!5262020 (=> (not res!2232822) (not e!3273161))))

(declare-fun call!373191 () Bool)

(assert (=> b!5262020 (= res!2232822 call!373191)))

(declare-fun b!5262021 () Bool)

(declare-fun e!3273163 () Bool)

(declare-fun e!3273158 () Bool)

(assert (=> b!5262021 (= e!3273163 e!3273158)))

(assert (=> b!5262021 (= c!910912 ((_ is Union!14879) (ite c!910743 (reg!15208 r!7292) (ite c!910744 (regOne!30271 r!7292) (regOne!30270 r!7292)))))))

(declare-fun b!5262022 () Bool)

(declare-fun res!2232820 () Bool)

(assert (=> b!5262022 (=> (not res!2232820) (not e!3273159))))

(assert (=> b!5262022 (= res!2232820 call!373191)))

(assert (=> b!5262022 (= e!3273158 e!3273159)))

(declare-fun b!5262023 () Bool)

(assert (=> b!5262023 (= e!3273162 e!3273163)))

(assert (=> b!5262023 (= c!910911 ((_ is Star!14879) (ite c!910743 (reg!15208 r!7292) (ite c!910744 (regOne!30271 r!7292) (regOne!30270 r!7292)))))))

(declare-fun bm!373185 () Bool)

(assert (=> bm!373185 (= call!373189 (validRegex!6615 (ite c!910912 (regTwo!30271 (ite c!910743 (reg!15208 r!7292) (ite c!910744 (regOne!30271 r!7292) (regOne!30270 r!7292)))) (regTwo!30270 (ite c!910743 (reg!15208 r!7292) (ite c!910744 (regOne!30271 r!7292) (regOne!30270 r!7292)))))))))

(declare-fun bm!373186 () Bool)

(assert (=> bm!373186 (= call!373191 call!373190)))

(declare-fun b!5262024 () Bool)

(declare-fun res!2232823 () Bool)

(assert (=> b!5262024 (=> res!2232823 e!3273157)))

(assert (=> b!5262024 (= res!2232823 (not ((_ is Concat!23724) (ite c!910743 (reg!15208 r!7292) (ite c!910744 (regOne!30271 r!7292) (regOne!30270 r!7292))))))))

(assert (=> b!5262024 (= e!3273158 e!3273157)))

(declare-fun b!5262025 () Bool)

(assert (=> b!5262025 (= e!3273163 e!3273160)))

(declare-fun res!2232824 () Bool)

(assert (=> b!5262025 (= res!2232824 (not (nullable!5048 (reg!15208 (ite c!910743 (reg!15208 r!7292) (ite c!910744 (regOne!30271 r!7292) (regOne!30270 r!7292)))))))))

(assert (=> b!5262025 (=> (not res!2232824) (not e!3273160))))

(assert (= (and d!1693759 (not res!2232821)) b!5262023))

(assert (= (and b!5262023 c!910911) b!5262025))

(assert (= (and b!5262023 (not c!910911)) b!5262021))

(assert (= (and b!5262025 res!2232824) b!5262017))

(assert (= (and b!5262021 c!910912) b!5262022))

(assert (= (and b!5262021 (not c!910912)) b!5262024))

(assert (= (and b!5262022 res!2232820) b!5262019))

(assert (= (and b!5262024 (not res!2232823)) b!5262020))

(assert (= (and b!5262020 res!2232822) b!5262018))

(assert (= (or b!5262019 b!5262018) bm!373185))

(assert (= (or b!5262022 b!5262020) bm!373186))

(assert (= (or b!5262017 bm!373186) bm!373184))

(declare-fun m!6303370 () Bool)

(assert (=> bm!373184 m!6303370))

(declare-fun m!6303372 () Bool)

(assert (=> bm!373185 m!6303372))

(declare-fun m!6303374 () Bool)

(assert (=> b!5262025 m!6303374))

(assert (=> bm!373067 d!1693759))

(declare-fun d!1693761 () Bool)

(assert (=> d!1693761 (= (isEmptyExpr!817 lt!2155410) ((_ is EmptyExpr!14879) lt!2155410))))

(assert (=> b!5261198 d!1693761))

(declare-fun bs!1219954 () Bool)

(declare-fun d!1693763 () Bool)

(assert (= bs!1219954 (and d!1693763 d!1693745)))

(declare-fun lambda!265314 () Int)

(assert (=> bs!1219954 (= lambda!265314 lambda!265313)))

(assert (=> d!1693763 (= (nullableZipper!1282 lt!2155333) (exists!1985 lt!2155333 lambda!265314))))

(declare-fun bs!1219955 () Bool)

(assert (= bs!1219955 d!1693763))

(declare-fun m!6303376 () Bool)

(assert (=> bs!1219955 m!6303376))

(assert (=> b!5261284 d!1693763))

(declare-fun bm!373187 () Bool)

(declare-fun c!910914 () Bool)

(declare-fun c!910913 () Bool)

(declare-fun call!373193 () Bool)

(assert (=> bm!373187 (= call!373193 (validRegex!6615 (ite c!910913 (reg!15208 lt!2155419) (ite c!910914 (regOne!30271 lt!2155419) (regOne!30270 lt!2155419)))))))

(declare-fun b!5262026 () Bool)

(declare-fun e!3273167 () Bool)

(assert (=> b!5262026 (= e!3273167 call!373193)))

(declare-fun b!5262027 () Bool)

(declare-fun e!3273168 () Bool)

(declare-fun call!373192 () Bool)

(assert (=> b!5262027 (= e!3273168 call!373192)))

(declare-fun d!1693765 () Bool)

(declare-fun res!2232826 () Bool)

(declare-fun e!3273169 () Bool)

(assert (=> d!1693765 (=> res!2232826 e!3273169)))

(assert (=> d!1693765 (= res!2232826 ((_ is ElementMatch!14879) lt!2155419))))

(assert (=> d!1693765 (= (validRegex!6615 lt!2155419) e!3273169)))

(declare-fun b!5262028 () Bool)

(declare-fun e!3273166 () Bool)

(assert (=> b!5262028 (= e!3273166 call!373192)))

(declare-fun b!5262029 () Bool)

(declare-fun e!3273164 () Bool)

(assert (=> b!5262029 (= e!3273164 e!3273168)))

(declare-fun res!2232827 () Bool)

(assert (=> b!5262029 (=> (not res!2232827) (not e!3273168))))

(declare-fun call!373194 () Bool)

(assert (=> b!5262029 (= res!2232827 call!373194)))

(declare-fun b!5262030 () Bool)

(declare-fun e!3273170 () Bool)

(declare-fun e!3273165 () Bool)

(assert (=> b!5262030 (= e!3273170 e!3273165)))

(assert (=> b!5262030 (= c!910914 ((_ is Union!14879) lt!2155419))))

(declare-fun b!5262031 () Bool)

(declare-fun res!2232825 () Bool)

(assert (=> b!5262031 (=> (not res!2232825) (not e!3273166))))

(assert (=> b!5262031 (= res!2232825 call!373194)))

(assert (=> b!5262031 (= e!3273165 e!3273166)))

(declare-fun b!5262032 () Bool)

(assert (=> b!5262032 (= e!3273169 e!3273170)))

(assert (=> b!5262032 (= c!910913 ((_ is Star!14879) lt!2155419))))

(declare-fun bm!373188 () Bool)

(assert (=> bm!373188 (= call!373192 (validRegex!6615 (ite c!910914 (regTwo!30271 lt!2155419) (regTwo!30270 lt!2155419))))))

(declare-fun bm!373189 () Bool)

(assert (=> bm!373189 (= call!373194 call!373193)))

(declare-fun b!5262033 () Bool)

(declare-fun res!2232828 () Bool)

(assert (=> b!5262033 (=> res!2232828 e!3273164)))

(assert (=> b!5262033 (= res!2232828 (not ((_ is Concat!23724) lt!2155419)))))

(assert (=> b!5262033 (= e!3273165 e!3273164)))

(declare-fun b!5262034 () Bool)

(assert (=> b!5262034 (= e!3273170 e!3273167)))

(declare-fun res!2232829 () Bool)

(assert (=> b!5262034 (= res!2232829 (not (nullable!5048 (reg!15208 lt!2155419))))))

(assert (=> b!5262034 (=> (not res!2232829) (not e!3273167))))

(assert (= (and d!1693765 (not res!2232826)) b!5262032))

(assert (= (and b!5262032 c!910913) b!5262034))

(assert (= (and b!5262032 (not c!910913)) b!5262030))

(assert (= (and b!5262034 res!2232829) b!5262026))

(assert (= (and b!5262030 c!910914) b!5262031))

(assert (= (and b!5262030 (not c!910914)) b!5262033))

(assert (= (and b!5262031 res!2232825) b!5262028))

(assert (= (and b!5262033 (not res!2232828)) b!5262029))

(assert (= (and b!5262029 res!2232827) b!5262027))

(assert (= (or b!5262028 b!5262027) bm!373188))

(assert (= (or b!5262031 b!5262029) bm!373189))

(assert (= (or b!5262026 bm!373189) bm!373187))

(declare-fun m!6303378 () Bool)

(assert (=> bm!373187 m!6303378))

(declare-fun m!6303380 () Bool)

(assert (=> bm!373188 m!6303380))

(declare-fun m!6303382 () Bool)

(assert (=> b!5262034 m!6303382))

(assert (=> d!1693459 d!1693765))

(assert (=> d!1693459 d!1693453))

(assert (=> d!1693459 d!1693455))

(declare-fun bm!373190 () Bool)

(declare-fun call!373195 () Bool)

(assert (=> bm!373190 (= call!373195 (isEmpty!32760 (_2!35381 (get!20907 lt!2155390))))))

(declare-fun b!5262035 () Bool)

(declare-fun e!3273173 () Bool)

(declare-fun e!3273172 () Bool)

(assert (=> b!5262035 (= e!3273173 e!3273172)))

(declare-fun res!2232837 () Bool)

(assert (=> b!5262035 (=> (not res!2232837) (not e!3273172))))

(declare-fun lt!2155457 () Bool)

(assert (=> b!5262035 (= res!2232837 (not lt!2155457))))

(declare-fun b!5262036 () Bool)

(declare-fun res!2232830 () Bool)

(declare-fun e!3273175 () Bool)

(assert (=> b!5262036 (=> res!2232830 e!3273175)))

(assert (=> b!5262036 (= res!2232830 (not (isEmpty!32760 (tail!10379 (_2!35381 (get!20907 lt!2155390))))))))

(declare-fun d!1693767 () Bool)

(declare-fun e!3273171 () Bool)

(assert (=> d!1693767 e!3273171))

(declare-fun c!910917 () Bool)

(assert (=> d!1693767 (= c!910917 ((_ is EmptyExpr!14879) (regTwo!30270 r!7292)))))

(declare-fun e!3273176 () Bool)

(assert (=> d!1693767 (= lt!2155457 e!3273176)))

(declare-fun c!910916 () Bool)

(assert (=> d!1693767 (= c!910916 (isEmpty!32760 (_2!35381 (get!20907 lt!2155390))))))

(assert (=> d!1693767 (validRegex!6615 (regTwo!30270 r!7292))))

(assert (=> d!1693767 (= (matchR!7064 (regTwo!30270 r!7292) (_2!35381 (get!20907 lt!2155390))) lt!2155457)))

(declare-fun b!5262037 () Bool)

(assert (=> b!5262037 (= e!3273175 (not (= (head!11282 (_2!35381 (get!20907 lt!2155390))) (c!910565 (regTwo!30270 r!7292)))))))

(declare-fun b!5262038 () Bool)

(declare-fun res!2232835 () Bool)

(declare-fun e!3273177 () Bool)

(assert (=> b!5262038 (=> (not res!2232835) (not e!3273177))))

(assert (=> b!5262038 (= res!2232835 (isEmpty!32760 (tail!10379 (_2!35381 (get!20907 lt!2155390)))))))

(declare-fun b!5262039 () Bool)

(declare-fun e!3273174 () Bool)

(assert (=> b!5262039 (= e!3273171 e!3273174)))

(declare-fun c!910915 () Bool)

(assert (=> b!5262039 (= c!910915 ((_ is EmptyLang!14879) (regTwo!30270 r!7292)))))

(declare-fun b!5262040 () Bool)

(assert (=> b!5262040 (= e!3273174 (not lt!2155457))))

(declare-fun b!5262041 () Bool)

(assert (=> b!5262041 (= e!3273176 (matchR!7064 (derivativeStep!4103 (regTwo!30270 r!7292) (head!11282 (_2!35381 (get!20907 lt!2155390)))) (tail!10379 (_2!35381 (get!20907 lt!2155390)))))))

(declare-fun b!5262042 () Bool)

(assert (=> b!5262042 (= e!3273171 (= lt!2155457 call!373195))))

(declare-fun b!5262043 () Bool)

(assert (=> b!5262043 (= e!3273176 (nullable!5048 (regTwo!30270 r!7292)))))

(declare-fun b!5262044 () Bool)

(assert (=> b!5262044 (= e!3273172 e!3273175)))

(declare-fun res!2232834 () Bool)

(assert (=> b!5262044 (=> res!2232834 e!3273175)))

(assert (=> b!5262044 (= res!2232834 call!373195)))

(declare-fun b!5262045 () Bool)

(assert (=> b!5262045 (= e!3273177 (= (head!11282 (_2!35381 (get!20907 lt!2155390))) (c!910565 (regTwo!30270 r!7292))))))

(declare-fun b!5262046 () Bool)

(declare-fun res!2232836 () Bool)

(assert (=> b!5262046 (=> (not res!2232836) (not e!3273177))))

(assert (=> b!5262046 (= res!2232836 (not call!373195))))

(declare-fun b!5262047 () Bool)

(declare-fun res!2232833 () Bool)

(assert (=> b!5262047 (=> res!2232833 e!3273173)))

(assert (=> b!5262047 (= res!2232833 (not ((_ is ElementMatch!14879) (regTwo!30270 r!7292))))))

(assert (=> b!5262047 (= e!3273174 e!3273173)))

(declare-fun b!5262048 () Bool)

(declare-fun res!2232832 () Bool)

(assert (=> b!5262048 (=> res!2232832 e!3273173)))

(assert (=> b!5262048 (= res!2232832 e!3273177)))

(declare-fun res!2232831 () Bool)

(assert (=> b!5262048 (=> (not res!2232831) (not e!3273177))))

(assert (=> b!5262048 (= res!2232831 lt!2155457)))

(assert (= (and d!1693767 c!910916) b!5262043))

(assert (= (and d!1693767 (not c!910916)) b!5262041))

(assert (= (and d!1693767 c!910917) b!5262042))

(assert (= (and d!1693767 (not c!910917)) b!5262039))

(assert (= (and b!5262039 c!910915) b!5262040))

(assert (= (and b!5262039 (not c!910915)) b!5262047))

(assert (= (and b!5262047 (not res!2232833)) b!5262048))

(assert (= (and b!5262048 res!2232831) b!5262046))

(assert (= (and b!5262046 res!2232836) b!5262038))

(assert (= (and b!5262038 res!2232835) b!5262045))

(assert (= (and b!5262048 (not res!2232832)) b!5262035))

(assert (= (and b!5262035 res!2232837) b!5262044))

(assert (= (and b!5262044 (not res!2232834)) b!5262036))

(assert (= (and b!5262036 (not res!2232830)) b!5262037))

(assert (= (or b!5262042 b!5262044 b!5262046) bm!373190))

(declare-fun m!6303384 () Bool)

(assert (=> b!5262037 m!6303384))

(declare-fun m!6303386 () Bool)

(assert (=> b!5262036 m!6303386))

(assert (=> b!5262036 m!6303386))

(declare-fun m!6303388 () Bool)

(assert (=> b!5262036 m!6303388))

(declare-fun m!6303390 () Bool)

(assert (=> bm!373190 m!6303390))

(assert (=> d!1693767 m!6303390))

(declare-fun m!6303392 () Bool)

(assert (=> d!1693767 m!6303392))

(declare-fun m!6303394 () Bool)

(assert (=> b!5262043 m!6303394))

(assert (=> b!5262041 m!6303384))

(assert (=> b!5262041 m!6303384))

(declare-fun m!6303396 () Bool)

(assert (=> b!5262041 m!6303396))

(assert (=> b!5262041 m!6303386))

(assert (=> b!5262041 m!6303396))

(assert (=> b!5262041 m!6303386))

(declare-fun m!6303398 () Bool)

(assert (=> b!5262041 m!6303398))

(assert (=> b!5262038 m!6303386))

(assert (=> b!5262038 m!6303386))

(assert (=> b!5262038 m!6303388))

(assert (=> b!5262045 m!6303384))

(assert (=> b!5261070 d!1693767))

(declare-fun d!1693769 () Bool)

(assert (=> d!1693769 (= (get!20907 lt!2155390) (v!51018 lt!2155390))))

(assert (=> b!5261070 d!1693769))

(declare-fun d!1693771 () Bool)

(assert (=> d!1693771 (= ($colon$colon!1332 (exprs!4763 lt!2155330) (ite (or c!910621 c!910619) (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (h!67260 (exprs!4763 (h!67261 zl!343))))) (Cons!60812 (ite (or c!910621 c!910619) (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (h!67260 (exprs!4763 (h!67261 zl!343)))) (exprs!4763 lt!2155330)))))

(assert (=> bm!373015 d!1693771))

(declare-fun d!1693773 () Bool)

(assert (=> d!1693773 (= (isEmpty!32760 s!2326) ((_ is Nil!60814) s!2326))))

(assert (=> d!1693443 d!1693773))

(assert (=> d!1693443 d!1693457))

(declare-fun d!1693775 () Bool)

(assert (=> d!1693775 (= (isEmpty!32755 (exprs!4763 (h!67261 zl!343))) ((_ is Nil!60812) (exprs!4763 (h!67261 zl!343))))))

(assert (=> b!5261196 d!1693775))

(declare-fun bm!373191 () Bool)

(declare-fun call!373197 () Bool)

(declare-fun c!910918 () Bool)

(declare-fun c!910919 () Bool)

(assert (=> bm!373191 (= call!373197 (validRegex!6615 (ite c!910918 (reg!15208 (ite c!910726 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))) (ite c!910727 (regOne!30271 (regTwo!30270 (regOne!30270 r!7292))) (regOne!30270 (regTwo!30270 (regOne!30270 r!7292)))))) (ite c!910919 (regOne!30271 (ite c!910726 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))) (ite c!910727 (regOne!30271 (regTwo!30270 (regOne!30270 r!7292))) (regOne!30270 (regTwo!30270 (regOne!30270 r!7292)))))) (regOne!30270 (ite c!910726 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))) (ite c!910727 (regOne!30271 (regTwo!30270 (regOne!30270 r!7292))) (regOne!30270 (regTwo!30270 (regOne!30270 r!7292))))))))))))

(declare-fun b!5262049 () Bool)

(declare-fun e!3273181 () Bool)

(assert (=> b!5262049 (= e!3273181 call!373197)))

(declare-fun b!5262050 () Bool)

(declare-fun e!3273182 () Bool)

(declare-fun call!373196 () Bool)

(assert (=> b!5262050 (= e!3273182 call!373196)))

(declare-fun d!1693777 () Bool)

(declare-fun res!2232839 () Bool)

(declare-fun e!3273183 () Bool)

(assert (=> d!1693777 (=> res!2232839 e!3273183)))

(assert (=> d!1693777 (= res!2232839 ((_ is ElementMatch!14879) (ite c!910726 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))) (ite c!910727 (regOne!30271 (regTwo!30270 (regOne!30270 r!7292))) (regOne!30270 (regTwo!30270 (regOne!30270 r!7292)))))))))

(assert (=> d!1693777 (= (validRegex!6615 (ite c!910726 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))) (ite c!910727 (regOne!30271 (regTwo!30270 (regOne!30270 r!7292))) (regOne!30270 (regTwo!30270 (regOne!30270 r!7292)))))) e!3273183)))

(declare-fun b!5262051 () Bool)

(declare-fun e!3273180 () Bool)

(assert (=> b!5262051 (= e!3273180 call!373196)))

(declare-fun b!5262052 () Bool)

(declare-fun e!3273178 () Bool)

(assert (=> b!5262052 (= e!3273178 e!3273182)))

(declare-fun res!2232840 () Bool)

(assert (=> b!5262052 (=> (not res!2232840) (not e!3273182))))

(declare-fun call!373198 () Bool)

(assert (=> b!5262052 (= res!2232840 call!373198)))

(declare-fun b!5262053 () Bool)

(declare-fun e!3273184 () Bool)

(declare-fun e!3273179 () Bool)

(assert (=> b!5262053 (= e!3273184 e!3273179)))

(assert (=> b!5262053 (= c!910919 ((_ is Union!14879) (ite c!910726 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))) (ite c!910727 (regOne!30271 (regTwo!30270 (regOne!30270 r!7292))) (regOne!30270 (regTwo!30270 (regOne!30270 r!7292)))))))))

(declare-fun b!5262054 () Bool)

(declare-fun res!2232838 () Bool)

(assert (=> b!5262054 (=> (not res!2232838) (not e!3273180))))

(assert (=> b!5262054 (= res!2232838 call!373198)))

(assert (=> b!5262054 (= e!3273179 e!3273180)))

(declare-fun b!5262055 () Bool)

(assert (=> b!5262055 (= e!3273183 e!3273184)))

(assert (=> b!5262055 (= c!910918 ((_ is Star!14879) (ite c!910726 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))) (ite c!910727 (regOne!30271 (regTwo!30270 (regOne!30270 r!7292))) (regOne!30270 (regTwo!30270 (regOne!30270 r!7292)))))))))

(declare-fun bm!373192 () Bool)

(assert (=> bm!373192 (= call!373196 (validRegex!6615 (ite c!910919 (regTwo!30271 (ite c!910726 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))) (ite c!910727 (regOne!30271 (regTwo!30270 (regOne!30270 r!7292))) (regOne!30270 (regTwo!30270 (regOne!30270 r!7292)))))) (regTwo!30270 (ite c!910726 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))) (ite c!910727 (regOne!30271 (regTwo!30270 (regOne!30270 r!7292))) (regOne!30270 (regTwo!30270 (regOne!30270 r!7292)))))))))))

(declare-fun bm!373193 () Bool)

(assert (=> bm!373193 (= call!373198 call!373197)))

(declare-fun b!5262056 () Bool)

(declare-fun res!2232841 () Bool)

(assert (=> b!5262056 (=> res!2232841 e!3273178)))

(assert (=> b!5262056 (= res!2232841 (not ((_ is Concat!23724) (ite c!910726 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))) (ite c!910727 (regOne!30271 (regTwo!30270 (regOne!30270 r!7292))) (regOne!30270 (regTwo!30270 (regOne!30270 r!7292))))))))))

(assert (=> b!5262056 (= e!3273179 e!3273178)))

(declare-fun b!5262057 () Bool)

(assert (=> b!5262057 (= e!3273184 e!3273181)))

(declare-fun res!2232842 () Bool)

(assert (=> b!5262057 (= res!2232842 (not (nullable!5048 (reg!15208 (ite c!910726 (reg!15208 (regTwo!30270 (regOne!30270 r!7292))) (ite c!910727 (regOne!30271 (regTwo!30270 (regOne!30270 r!7292))) (regOne!30270 (regTwo!30270 (regOne!30270 r!7292)))))))))))

(assert (=> b!5262057 (=> (not res!2232842) (not e!3273181))))

(assert (= (and d!1693777 (not res!2232839)) b!5262055))

(assert (= (and b!5262055 c!910918) b!5262057))

(assert (= (and b!5262055 (not c!910918)) b!5262053))

(assert (= (and b!5262057 res!2232842) b!5262049))

(assert (= (and b!5262053 c!910919) b!5262054))

(assert (= (and b!5262053 (not c!910919)) b!5262056))

(assert (= (and b!5262054 res!2232838) b!5262051))

(assert (= (and b!5262056 (not res!2232841)) b!5262052))

(assert (= (and b!5262052 res!2232840) b!5262050))

(assert (= (or b!5262051 b!5262050) bm!373192))

(assert (= (or b!5262054 b!5262052) bm!373193))

(assert (= (or b!5262049 bm!373193) bm!373191))

(declare-fun m!6303400 () Bool)

(assert (=> bm!373191 m!6303400))

(declare-fun m!6303402 () Bool)

(assert (=> bm!373192 m!6303402))

(declare-fun m!6303404 () Bool)

(assert (=> b!5262057 m!6303404))

(assert (=> bm!373064 d!1693777))

(declare-fun b!5262058 () Bool)

(declare-fun e!3273186 () List!60938)

(assert (=> b!5262058 (= e!3273186 (_2!35381 (get!20907 lt!2155390)))))

(declare-fun b!5262061 () Bool)

(declare-fun e!3273185 () Bool)

(declare-fun lt!2155458 () List!60938)

(assert (=> b!5262061 (= e!3273185 (or (not (= (_2!35381 (get!20907 lt!2155390)) Nil!60814)) (= lt!2155458 (_1!35381 (get!20907 lt!2155390)))))))

(declare-fun d!1693779 () Bool)

(assert (=> d!1693779 e!3273185))

(declare-fun res!2232843 () Bool)

(assert (=> d!1693779 (=> (not res!2232843) (not e!3273185))))

(assert (=> d!1693779 (= res!2232843 (= (content!10807 lt!2155458) ((_ map or) (content!10807 (_1!35381 (get!20907 lt!2155390))) (content!10807 (_2!35381 (get!20907 lt!2155390))))))))

(assert (=> d!1693779 (= lt!2155458 e!3273186)))

(declare-fun c!910920 () Bool)

(assert (=> d!1693779 (= c!910920 ((_ is Nil!60814) (_1!35381 (get!20907 lt!2155390))))))

(assert (=> d!1693779 (= (++!13262 (_1!35381 (get!20907 lt!2155390)) (_2!35381 (get!20907 lt!2155390))) lt!2155458)))

(declare-fun b!5262060 () Bool)

(declare-fun res!2232844 () Bool)

(assert (=> b!5262060 (=> (not res!2232844) (not e!3273185))))

(assert (=> b!5262060 (= res!2232844 (= (size!39739 lt!2155458) (+ (size!39739 (_1!35381 (get!20907 lt!2155390))) (size!39739 (_2!35381 (get!20907 lt!2155390))))))))

(declare-fun b!5262059 () Bool)

(assert (=> b!5262059 (= e!3273186 (Cons!60814 (h!67262 (_1!35381 (get!20907 lt!2155390))) (++!13262 (t!374123 (_1!35381 (get!20907 lt!2155390))) (_2!35381 (get!20907 lt!2155390)))))))

(assert (= (and d!1693779 c!910920) b!5262058))

(assert (= (and d!1693779 (not c!910920)) b!5262059))

(assert (= (and d!1693779 res!2232843) b!5262060))

(assert (= (and b!5262060 res!2232844) b!5262061))

(declare-fun m!6303406 () Bool)

(assert (=> d!1693779 m!6303406))

(declare-fun m!6303408 () Bool)

(assert (=> d!1693779 m!6303408))

(declare-fun m!6303410 () Bool)

(assert (=> d!1693779 m!6303410))

(declare-fun m!6303412 () Bool)

(assert (=> b!5262060 m!6303412))

(declare-fun m!6303414 () Bool)

(assert (=> b!5262060 m!6303414))

(declare-fun m!6303416 () Bool)

(assert (=> b!5262060 m!6303416))

(declare-fun m!6303418 () Bool)

(assert (=> b!5262059 m!6303418))

(assert (=> b!5261068 d!1693779))

(assert (=> b!5261068 d!1693769))

(assert (=> b!5261262 d!1693449))

(declare-fun bs!1219956 () Bool)

(declare-fun d!1693781 () Bool)

(assert (= bs!1219956 (and d!1693781 d!1693679)))

(declare-fun lambda!265315 () Int)

(assert (=> bs!1219956 (= lambda!265315 lambda!265292)))

(declare-fun bs!1219957 () Bool)

(assert (= bs!1219957 (and d!1693781 d!1693453)))

(assert (=> bs!1219957 (= lambda!265315 lambda!265260)))

(declare-fun bs!1219958 () Bool)

(assert (= bs!1219958 (and d!1693781 d!1693405)))

(assert (=> bs!1219958 (= lambda!265315 lambda!265239)))

(declare-fun bs!1219959 () Bool)

(assert (= bs!1219959 (and d!1693781 d!1693449)))

(assert (=> bs!1219959 (= lambda!265315 lambda!265257)))

(declare-fun bs!1219960 () Bool)

(assert (= bs!1219960 (and d!1693781 d!1693741)))

(assert (=> bs!1219960 (= lambda!265315 lambda!265310)))

(declare-fun bs!1219961 () Bool)

(assert (= bs!1219961 (and d!1693781 d!1693701)))

(assert (=> bs!1219961 (= lambda!265315 lambda!265297)))

(declare-fun bs!1219962 () Bool)

(assert (= bs!1219962 (and d!1693781 d!1693455)))

(assert (=> bs!1219962 (= lambda!265315 lambda!265263)))

(declare-fun bs!1219963 () Bool)

(assert (= bs!1219963 (and d!1693781 d!1693401)))

(assert (=> bs!1219963 (= lambda!265315 lambda!265238)))

(declare-fun lt!2155459 () List!60936)

(assert (=> d!1693781 (forall!14291 lt!2155459 lambda!265315)))

(declare-fun e!3273187 () List!60936)

(assert (=> d!1693781 (= lt!2155459 e!3273187)))

(declare-fun c!910921 () Bool)

(assert (=> d!1693781 (= c!910921 ((_ is Cons!60813) (t!374122 zl!343)))))

(assert (=> d!1693781 (= (unfocusZipperList!321 (t!374122 zl!343)) lt!2155459)))

(declare-fun b!5262062 () Bool)

(assert (=> b!5262062 (= e!3273187 (Cons!60812 (generalisedConcat!548 (exprs!4763 (h!67261 (t!374122 zl!343)))) (unfocusZipperList!321 (t!374122 (t!374122 zl!343)))))))

(declare-fun b!5262063 () Bool)

(assert (=> b!5262063 (= e!3273187 Nil!60812)))

(assert (= (and d!1693781 c!910921) b!5262062))

(assert (= (and d!1693781 (not c!910921)) b!5262063))

(declare-fun m!6303420 () Bool)

(assert (=> d!1693781 m!6303420))

(declare-fun m!6303422 () Bool)

(assert (=> b!5262062 m!6303422))

(declare-fun m!6303424 () Bool)

(assert (=> b!5262062 m!6303424))

(assert (=> b!5261262 d!1693781))

(declare-fun d!1693783 () Bool)

(declare-fun c!910923 () Bool)

(declare-fun e!3273189 () Bool)

(assert (=> d!1693783 (= c!910923 e!3273189)))

(declare-fun res!2232845 () Bool)

(assert (=> d!1693783 (=> (not res!2232845) (not e!3273189))))

(assert (=> d!1693783 (= res!2232845 ((_ is Cons!60812) (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))))))))

(declare-fun e!3273190 () (InoxSet Context!8526))

(assert (=> d!1693783 (= (derivationStepZipperUp!251 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))) (h!67262 s!2326)) e!3273190)))

(declare-fun b!5262064 () Bool)

(assert (=> b!5262064 (= e!3273189 (nullable!5048 (h!67260 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))))))))))

(declare-fun b!5262065 () Bool)

(declare-fun e!3273188 () (InoxSet Context!8526))

(assert (=> b!5262065 (= e!3273188 ((as const (Array Context!8526 Bool)) false))))

(declare-fun b!5262066 () Bool)

(assert (=> b!5262066 (= e!3273190 e!3273188)))

(declare-fun c!910922 () Bool)

(assert (=> b!5262066 (= c!910922 ((_ is Cons!60812) (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))))))))

(declare-fun b!5262067 () Bool)

(declare-fun call!373199 () (InoxSet Context!8526))

(assert (=> b!5262067 (= e!3273188 call!373199)))

(declare-fun bm!373194 () Bool)

(assert (=> bm!373194 (= call!373199 (derivationStepZipperDown!327 (h!67260 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343)))))))))) (Context!8527 (t!374121 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))))))) (h!67262 s!2326)))))

(declare-fun b!5262068 () Bool)

(assert (=> b!5262068 (= e!3273190 ((_ map or) call!373199 (derivationStepZipperUp!251 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (Context!8527 (Cons!60812 (h!67260 (exprs!4763 (h!67261 zl!343))) (t!374121 (exprs!4763 (h!67261 zl!343))))))))))) (h!67262 s!2326))))))

(assert (= (and d!1693783 res!2232845) b!5262064))

(assert (= (and d!1693783 c!910923) b!5262068))

(assert (= (and d!1693783 (not c!910923)) b!5262066))

(assert (= (and b!5262066 c!910922) b!5262067))

(assert (= (and b!5262066 (not c!910922)) b!5262065))

(assert (= (or b!5262068 b!5262067) bm!373194))

(declare-fun m!6303426 () Bool)

(assert (=> b!5262064 m!6303426))

(declare-fun m!6303428 () Bool)

(assert (=> bm!373194 m!6303428))

(declare-fun m!6303430 () Bool)

(assert (=> b!5262068 m!6303430))

(assert (=> b!5260869 d!1693783))

(assert (=> b!5261192 d!1693407))

(declare-fun d!1693785 () Bool)

(assert (=> d!1693785 (= (isEmpty!32760 (tail!10379 s!2326)) ((_ is Nil!60814) (tail!10379 s!2326)))))

(assert (=> b!5261157 d!1693785))

(declare-fun d!1693787 () Bool)

(assert (=> d!1693787 (= (tail!10379 s!2326) (t!374123 s!2326))))

(assert (=> b!5261157 d!1693787))

(declare-fun d!1693789 () Bool)

(assert (=> d!1693789 (= (head!11283 (exprs!4763 (h!67261 zl!343))) (h!67260 (exprs!4763 (h!67261 zl!343))))))

(assert (=> b!5261194 d!1693789))

(declare-fun c!910924 () Bool)

(declare-fun c!910925 () Bool)

(declare-fun call!373201 () Bool)

(declare-fun bm!373195 () Bool)

(assert (=> bm!373195 (= call!373201 (validRegex!6615 (ite c!910924 (reg!15208 lt!2155413) (ite c!910925 (regOne!30271 lt!2155413) (regOne!30270 lt!2155413)))))))

(declare-fun b!5262069 () Bool)

(declare-fun e!3273194 () Bool)

(assert (=> b!5262069 (= e!3273194 call!373201)))

(declare-fun b!5262070 () Bool)

(declare-fun e!3273195 () Bool)

(declare-fun call!373200 () Bool)

(assert (=> b!5262070 (= e!3273195 call!373200)))

(declare-fun d!1693791 () Bool)

(declare-fun res!2232847 () Bool)

(declare-fun e!3273196 () Bool)

(assert (=> d!1693791 (=> res!2232847 e!3273196)))

(assert (=> d!1693791 (= res!2232847 ((_ is ElementMatch!14879) lt!2155413))))

(assert (=> d!1693791 (= (validRegex!6615 lt!2155413) e!3273196)))

(declare-fun b!5262071 () Bool)

(declare-fun e!3273193 () Bool)

(assert (=> b!5262071 (= e!3273193 call!373200)))

(declare-fun b!5262072 () Bool)

(declare-fun e!3273191 () Bool)

(assert (=> b!5262072 (= e!3273191 e!3273195)))

(declare-fun res!2232848 () Bool)

(assert (=> b!5262072 (=> (not res!2232848) (not e!3273195))))

(declare-fun call!373202 () Bool)

(assert (=> b!5262072 (= res!2232848 call!373202)))

(declare-fun b!5262073 () Bool)

(declare-fun e!3273197 () Bool)

(declare-fun e!3273192 () Bool)

(assert (=> b!5262073 (= e!3273197 e!3273192)))

(assert (=> b!5262073 (= c!910925 ((_ is Union!14879) lt!2155413))))

(declare-fun b!5262074 () Bool)

(declare-fun res!2232846 () Bool)

(assert (=> b!5262074 (=> (not res!2232846) (not e!3273193))))

(assert (=> b!5262074 (= res!2232846 call!373202)))

(assert (=> b!5262074 (= e!3273192 e!3273193)))

(declare-fun b!5262075 () Bool)

(assert (=> b!5262075 (= e!3273196 e!3273197)))

(assert (=> b!5262075 (= c!910924 ((_ is Star!14879) lt!2155413))))

(declare-fun bm!373196 () Bool)

(assert (=> bm!373196 (= call!373200 (validRegex!6615 (ite c!910925 (regTwo!30271 lt!2155413) (regTwo!30270 lt!2155413))))))

(declare-fun bm!373197 () Bool)

(assert (=> bm!373197 (= call!373202 call!373201)))

(declare-fun b!5262076 () Bool)

(declare-fun res!2232849 () Bool)

(assert (=> b!5262076 (=> res!2232849 e!3273191)))

(assert (=> b!5262076 (= res!2232849 (not ((_ is Concat!23724) lt!2155413)))))

(assert (=> b!5262076 (= e!3273192 e!3273191)))

(declare-fun b!5262077 () Bool)

(assert (=> b!5262077 (= e!3273197 e!3273194)))

(declare-fun res!2232850 () Bool)

(assert (=> b!5262077 (= res!2232850 (not (nullable!5048 (reg!15208 lt!2155413))))))

(assert (=> b!5262077 (=> (not res!2232850) (not e!3273194))))

(assert (= (and d!1693791 (not res!2232847)) b!5262075))

(assert (= (and b!5262075 c!910924) b!5262077))

(assert (= (and b!5262075 (not c!910924)) b!5262073))

(assert (= (and b!5262077 res!2232850) b!5262069))

(assert (= (and b!5262073 c!910925) b!5262074))

(assert (= (and b!5262073 (not c!910925)) b!5262076))

(assert (= (and b!5262074 res!2232846) b!5262071))

(assert (= (and b!5262076 (not res!2232849)) b!5262072))

(assert (= (and b!5262072 res!2232848) b!5262070))

(assert (= (or b!5262071 b!5262070) bm!373196))

(assert (= (or b!5262074 b!5262072) bm!373197))

(assert (= (or b!5262069 bm!373197) bm!373195))

(declare-fun m!6303432 () Bool)

(assert (=> bm!373195 m!6303432))

(declare-fun m!6303434 () Bool)

(assert (=> bm!373196 m!6303434))

(declare-fun m!6303436 () Bool)

(assert (=> b!5262077 m!6303436))

(assert (=> d!1693453 d!1693791))

(declare-fun d!1693793 () Bool)

(declare-fun res!2232851 () Bool)

(declare-fun e!3273198 () Bool)

(assert (=> d!1693793 (=> res!2232851 e!3273198)))

(assert (=> d!1693793 (= res!2232851 ((_ is Nil!60812) (unfocusZipperList!321 zl!343)))))

(assert (=> d!1693793 (= (forall!14291 (unfocusZipperList!321 zl!343) lambda!265260) e!3273198)))

(declare-fun b!5262078 () Bool)

(declare-fun e!3273199 () Bool)

(assert (=> b!5262078 (= e!3273198 e!3273199)))

(declare-fun res!2232852 () Bool)

(assert (=> b!5262078 (=> (not res!2232852) (not e!3273199))))

(assert (=> b!5262078 (= res!2232852 (dynLambda!24029 lambda!265260 (h!67260 (unfocusZipperList!321 zl!343))))))

(declare-fun b!5262079 () Bool)

(assert (=> b!5262079 (= e!3273199 (forall!14291 (t!374121 (unfocusZipperList!321 zl!343)) lambda!265260))))

(assert (= (and d!1693793 (not res!2232851)) b!5262078))

(assert (= (and b!5262078 res!2232852) b!5262079))

(declare-fun b_lambda!203041 () Bool)

(assert (=> (not b_lambda!203041) (not b!5262078)))

(declare-fun m!6303438 () Bool)

(assert (=> b!5262078 m!6303438))

(declare-fun m!6303440 () Bool)

(assert (=> b!5262079 m!6303440))

(assert (=> d!1693453 d!1693793))

(assert (=> b!5261155 d!1693785))

(assert (=> b!5261155 d!1693787))

(assert (=> d!1693461 d!1693465))

(assert (=> d!1693461 d!1693463))

(declare-fun e!3273202 () Bool)

(declare-fun d!1693795 () Bool)

(assert (=> d!1693795 (= (matchZipper!1123 ((_ map or) lt!2155338 lt!2155333) (t!374123 s!2326)) e!3273202)))

(declare-fun res!2232855 () Bool)

(assert (=> d!1693795 (=> res!2232855 e!3273202)))

(assert (=> d!1693795 (= res!2232855 (matchZipper!1123 lt!2155338 (t!374123 s!2326)))))

(assert (=> d!1693795 true))

(declare-fun _$48!902 () Unit!153034)

(assert (=> d!1693795 (= (choose!39255 lt!2155338 lt!2155333 (t!374123 s!2326)) _$48!902)))

(declare-fun b!5262082 () Bool)

(assert (=> b!5262082 (= e!3273202 (matchZipper!1123 lt!2155333 (t!374123 s!2326)))))

(assert (= (and d!1693795 (not res!2232855)) b!5262082))

(assert (=> d!1693795 m!6302336))

(assert (=> d!1693795 m!6302334))

(assert (=> b!5262082 m!6302352))

(assert (=> d!1693461 d!1693795))

(declare-fun b!5262097 () Bool)

(declare-fun e!3273216 () Bool)

(declare-fun e!3273217 () Bool)

(assert (=> b!5262097 (= e!3273216 e!3273217)))

(declare-fun res!2232868 () Bool)

(assert (=> b!5262097 (=> res!2232868 e!3273217)))

(assert (=> b!5262097 (= res!2232868 ((_ is Star!14879) (regOne!30270 (regOne!30270 r!7292))))))

(declare-fun bm!373202 () Bool)

(declare-fun call!373208 () Bool)

(declare-fun c!910928 () Bool)

(assert (=> bm!373202 (= call!373208 (nullable!5048 (ite c!910928 (regTwo!30271 (regOne!30270 (regOne!30270 r!7292))) (regTwo!30270 (regOne!30270 (regOne!30270 r!7292))))))))

(declare-fun b!5262098 () Bool)

(declare-fun e!3273220 () Bool)

(assert (=> b!5262098 (= e!3273220 call!373208)))

(declare-fun b!5262099 () Bool)

(declare-fun e!3273219 () Bool)

(assert (=> b!5262099 (= e!3273219 e!3273216)))

(declare-fun res!2232866 () Bool)

(assert (=> b!5262099 (=> (not res!2232866) (not e!3273216))))

(assert (=> b!5262099 (= res!2232866 (and (not ((_ is EmptyLang!14879) (regOne!30270 (regOne!30270 r!7292)))) (not ((_ is ElementMatch!14879) (regOne!30270 (regOne!30270 r!7292))))))))

(declare-fun b!5262100 () Bool)

(declare-fun e!3273215 () Bool)

(declare-fun e!3273218 () Bool)

(assert (=> b!5262100 (= e!3273215 e!3273218)))

(declare-fun res!2232869 () Bool)

(declare-fun call!373207 () Bool)

(assert (=> b!5262100 (= res!2232869 call!373207)))

(assert (=> b!5262100 (=> res!2232869 e!3273218)))

(declare-fun b!5262101 () Bool)

(assert (=> b!5262101 (= e!3273218 call!373208)))

(declare-fun b!5262102 () Bool)

(assert (=> b!5262102 (= e!3273217 e!3273215)))

(assert (=> b!5262102 (= c!910928 ((_ is Union!14879) (regOne!30270 (regOne!30270 r!7292))))))

(declare-fun b!5262103 () Bool)

(assert (=> b!5262103 (= e!3273215 e!3273220)))

(declare-fun res!2232870 () Bool)

(assert (=> b!5262103 (= res!2232870 call!373207)))

(assert (=> b!5262103 (=> (not res!2232870) (not e!3273220))))

(declare-fun d!1693797 () Bool)

(declare-fun res!2232867 () Bool)

(assert (=> d!1693797 (=> res!2232867 e!3273219)))

(assert (=> d!1693797 (= res!2232867 ((_ is EmptyExpr!14879) (regOne!30270 (regOne!30270 r!7292))))))

(assert (=> d!1693797 (= (nullableFct!1434 (regOne!30270 (regOne!30270 r!7292))) e!3273219)))

(declare-fun bm!373203 () Bool)

(assert (=> bm!373203 (= call!373207 (nullable!5048 (ite c!910928 (regOne!30271 (regOne!30270 (regOne!30270 r!7292))) (regOne!30270 (regOne!30270 (regOne!30270 r!7292))))))))

(assert (= (and d!1693797 (not res!2232867)) b!5262099))

(assert (= (and b!5262099 res!2232866) b!5262097))

(assert (= (and b!5262097 (not res!2232868)) b!5262102))

(assert (= (and b!5262102 c!910928) b!5262100))

(assert (= (and b!5262102 (not c!910928)) b!5262103))

(assert (= (and b!5262100 (not res!2232869)) b!5262101))

(assert (= (and b!5262103 res!2232870) b!5262098))

(assert (= (or b!5262101 b!5262098) bm!373202))

(assert (= (or b!5262100 b!5262103) bm!373203))

(declare-fun m!6303442 () Bool)

(assert (=> bm!373202 m!6303442))

(declare-fun m!6303444 () Bool)

(assert (=> bm!373203 m!6303444))

(assert (=> d!1693467 d!1693797))

(declare-fun b!5262104 () Bool)

(declare-fun e!3273226 () (InoxSet Context!8526))

(declare-fun call!373210 () (InoxSet Context!8526))

(declare-fun call!373209 () (InoxSet Context!8526))

(assert (=> b!5262104 (= e!3273226 ((_ map or) call!373210 call!373209))))

(declare-fun b!5262105 () Bool)

(declare-fun e!3273223 () (InoxSet Context!8526))

(assert (=> b!5262105 (= e!3273223 e!3273226)))

(declare-fun c!910929 () Bool)

(assert (=> b!5262105 (= c!910929 ((_ is Union!14879) (h!67260 (exprs!4763 lt!2155330))))))

(declare-fun bm!373204 () Bool)

(declare-fun call!373214 () List!60936)

(declare-fun call!373212 () List!60936)

(assert (=> bm!373204 (= call!373214 call!373212)))

(declare-fun b!5262107 () Bool)

(declare-fun e!3273222 () (InoxSet Context!8526))

(declare-fun call!373213 () (InoxSet Context!8526))

(assert (=> b!5262107 (= e!3273222 call!373213)))

(declare-fun b!5262108 () Bool)

(declare-fun c!910932 () Bool)

(declare-fun e!3273224 () Bool)

(assert (=> b!5262108 (= c!910932 e!3273224)))

(declare-fun res!2232871 () Bool)

(assert (=> b!5262108 (=> (not res!2232871) (not e!3273224))))

(assert (=> b!5262108 (= res!2232871 ((_ is Concat!23724) (h!67260 (exprs!4763 lt!2155330))))))

(declare-fun e!3273221 () (InoxSet Context!8526))

(assert (=> b!5262108 (= e!3273226 e!3273221)))

(declare-fun b!5262109 () Bool)

(assert (=> b!5262109 (= e!3273224 (nullable!5048 (regOne!30270 (h!67260 (exprs!4763 lt!2155330)))))))

(declare-fun b!5262110 () Bool)

(assert (=> b!5262110 (= e!3273223 (store ((as const (Array Context!8526 Bool)) false) (Context!8527 (t!374121 (exprs!4763 lt!2155330))) true))))

(declare-fun bm!373205 () Bool)

(declare-fun call!373211 () (InoxSet Context!8526))

(assert (=> bm!373205 (= call!373211 call!373209)))

(declare-fun c!910930 () Bool)

(declare-fun bm!373206 () Bool)

(assert (=> bm!373206 (= call!373209 (derivationStepZipperDown!327 (ite c!910929 (regTwo!30271 (h!67260 (exprs!4763 lt!2155330))) (ite c!910932 (regTwo!30270 (h!67260 (exprs!4763 lt!2155330))) (ite c!910930 (regOne!30270 (h!67260 (exprs!4763 lt!2155330))) (reg!15208 (h!67260 (exprs!4763 lt!2155330)))))) (ite (or c!910929 c!910932) (Context!8527 (t!374121 (exprs!4763 lt!2155330))) (Context!8527 call!373214)) (h!67262 s!2326)))))

(declare-fun b!5262111 () Bool)

(declare-fun c!910931 () Bool)

(assert (=> b!5262111 (= c!910931 ((_ is Star!14879) (h!67260 (exprs!4763 lt!2155330))))))

(declare-fun e!3273225 () (InoxSet Context!8526))

(assert (=> b!5262111 (= e!3273225 e!3273222)))

(declare-fun b!5262112 () Bool)

(assert (=> b!5262112 (= e!3273222 ((as const (Array Context!8526 Bool)) false))))

(declare-fun bm!373207 () Bool)

(assert (=> bm!373207 (= call!373210 (derivationStepZipperDown!327 (ite c!910929 (regOne!30271 (h!67260 (exprs!4763 lt!2155330))) (regOne!30270 (h!67260 (exprs!4763 lt!2155330)))) (ite c!910929 (Context!8527 (t!374121 (exprs!4763 lt!2155330))) (Context!8527 call!373212)) (h!67262 s!2326)))))

(declare-fun b!5262113 () Bool)

(assert (=> b!5262113 (= e!3273221 e!3273225)))

(assert (=> b!5262113 (= c!910930 ((_ is Concat!23724) (h!67260 (exprs!4763 lt!2155330))))))

(declare-fun b!5262114 () Bool)

(assert (=> b!5262114 (= e!3273225 call!373213)))

(declare-fun b!5262106 () Bool)

(assert (=> b!5262106 (= e!3273221 ((_ map or) call!373210 call!373211))))

(declare-fun d!1693799 () Bool)

(declare-fun c!910933 () Bool)

(assert (=> d!1693799 (= c!910933 (and ((_ is ElementMatch!14879) (h!67260 (exprs!4763 lt!2155330))) (= (c!910565 (h!67260 (exprs!4763 lt!2155330))) (h!67262 s!2326))))))

(assert (=> d!1693799 (= (derivationStepZipperDown!327 (h!67260 (exprs!4763 lt!2155330)) (Context!8527 (t!374121 (exprs!4763 lt!2155330))) (h!67262 s!2326)) e!3273223)))

(declare-fun bm!373208 () Bool)

(assert (=> bm!373208 (= call!373212 ($colon$colon!1332 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 lt!2155330)))) (ite (or c!910932 c!910930) (regTwo!30270 (h!67260 (exprs!4763 lt!2155330))) (h!67260 (exprs!4763 lt!2155330)))))))

(declare-fun bm!373209 () Bool)

(assert (=> bm!373209 (= call!373213 call!373211)))

(assert (= (and d!1693799 c!910933) b!5262110))

(assert (= (and d!1693799 (not c!910933)) b!5262105))

(assert (= (and b!5262105 c!910929) b!5262104))

(assert (= (and b!5262105 (not c!910929)) b!5262108))

(assert (= (and b!5262108 res!2232871) b!5262109))

(assert (= (and b!5262108 c!910932) b!5262106))

(assert (= (and b!5262108 (not c!910932)) b!5262113))

(assert (= (and b!5262113 c!910930) b!5262114))

(assert (= (and b!5262113 (not c!910930)) b!5262111))

(assert (= (and b!5262111 c!910931) b!5262107))

(assert (= (and b!5262111 (not c!910931)) b!5262112))

(assert (= (or b!5262114 b!5262107) bm!373204))

(assert (= (or b!5262114 b!5262107) bm!373209))

(assert (= (or b!5262106 bm!373204) bm!373208))

(assert (= (or b!5262106 bm!373209) bm!373205))

(assert (= (or b!5262104 bm!373205) bm!373206))

(assert (= (or b!5262104 b!5262106) bm!373207))

(declare-fun m!6303446 () Bool)

(assert (=> bm!373208 m!6303446))

(declare-fun m!6303448 () Bool)

(assert (=> b!5262109 m!6303448))

(declare-fun m!6303450 () Bool)

(assert (=> bm!373207 m!6303450))

(declare-fun m!6303452 () Bool)

(assert (=> b!5262110 m!6303452))

(declare-fun m!6303454 () Bool)

(assert (=> bm!373206 m!6303454))

(assert (=> bm!373024 d!1693799))

(declare-fun b!5262115 () Bool)

(declare-fun e!3273232 () (InoxSet Context!8526))

(declare-fun call!373216 () (InoxSet Context!8526))

(declare-fun call!373215 () (InoxSet Context!8526))

(assert (=> b!5262115 (= e!3273232 ((_ map or) call!373216 call!373215))))

(declare-fun b!5262116 () Bool)

(declare-fun e!3273229 () (InoxSet Context!8526))

(assert (=> b!5262116 (= e!3273229 e!3273232)))

(declare-fun c!910934 () Bool)

(assert (=> b!5262116 (= c!910934 ((_ is Union!14879) (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun bm!373210 () Bool)

(declare-fun call!373220 () List!60936)

(declare-fun call!373218 () List!60936)

(assert (=> bm!373210 (= call!373220 call!373218)))

(declare-fun b!5262118 () Bool)

(declare-fun e!3273228 () (InoxSet Context!8526))

(declare-fun call!373219 () (InoxSet Context!8526))

(assert (=> b!5262118 (= e!3273228 call!373219)))

(declare-fun b!5262119 () Bool)

(declare-fun c!910937 () Bool)

(declare-fun e!3273230 () Bool)

(assert (=> b!5262119 (= c!910937 e!3273230)))

(declare-fun res!2232872 () Bool)

(assert (=> b!5262119 (=> (not res!2232872) (not e!3273230))))

(assert (=> b!5262119 (= res!2232872 ((_ is Concat!23724) (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun e!3273227 () (InoxSet Context!8526))

(assert (=> b!5262119 (= e!3273232 e!3273227)))

(declare-fun b!5262120 () Bool)

(assert (=> b!5262120 (= e!3273230 (nullable!5048 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343))))))))

(declare-fun b!5262121 () Bool)

(assert (=> b!5262121 (= e!3273229 (store ((as const (Array Context!8526 Bool)) false) (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343)))) true))))

(declare-fun bm!373211 () Bool)

(declare-fun call!373217 () (InoxSet Context!8526))

(assert (=> bm!373211 (= call!373217 call!373215)))

(declare-fun c!910935 () Bool)

(declare-fun bm!373212 () Bool)

(assert (=> bm!373212 (= call!373215 (derivationStepZipperDown!327 (ite c!910934 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910937 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910935 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343))))))) (ite (or c!910934 c!910937) (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343)))) (Context!8527 call!373220)) (h!67262 s!2326)))))

(declare-fun b!5262122 () Bool)

(declare-fun c!910936 () Bool)

(assert (=> b!5262122 (= c!910936 ((_ is Star!14879) (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun e!3273231 () (InoxSet Context!8526))

(assert (=> b!5262122 (= e!3273231 e!3273228)))

(declare-fun b!5262123 () Bool)

(assert (=> b!5262123 (= e!3273228 ((as const (Array Context!8526 Bool)) false))))

(declare-fun bm!373213 () Bool)

(assert (=> bm!373213 (= call!373216 (derivationStepZipperDown!327 (ite c!910934 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343))))) (ite c!910934 (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343)))) (Context!8527 call!373218)) (h!67262 s!2326)))))

(declare-fun b!5262124 () Bool)

(assert (=> b!5262124 (= e!3273227 e!3273231)))

(assert (=> b!5262124 (= c!910935 ((_ is Concat!23724) (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun b!5262125 () Bool)

(assert (=> b!5262125 (= e!3273231 call!373219)))

(declare-fun b!5262117 () Bool)

(assert (=> b!5262117 (= e!3273227 ((_ map or) call!373216 call!373217))))

(declare-fun d!1693801 () Bool)

(declare-fun c!910938 () Bool)

(assert (=> d!1693801 (= c!910938 (and ((_ is ElementMatch!14879) (h!67260 (exprs!4763 (h!67261 zl!343)))) (= (c!910565 (h!67260 (exprs!4763 (h!67261 zl!343)))) (h!67262 s!2326))))))

(assert (=> d!1693801 (= (derivationStepZipperDown!327 (h!67260 (exprs!4763 (h!67261 zl!343))) (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343)))) (h!67262 s!2326)) e!3273229)))

(declare-fun bm!373214 () Bool)

(assert (=> bm!373214 (= call!373218 ($colon$colon!1332 (exprs!4763 (Context!8527 (t!374121 (exprs!4763 (h!67261 zl!343))))) (ite (or c!910937 c!910935) (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (h!67260 (exprs!4763 (h!67261 zl!343))))))))

(declare-fun bm!373215 () Bool)

(assert (=> bm!373215 (= call!373219 call!373217)))

(assert (= (and d!1693801 c!910938) b!5262121))

(assert (= (and d!1693801 (not c!910938)) b!5262116))

(assert (= (and b!5262116 c!910934) b!5262115))

(assert (= (and b!5262116 (not c!910934)) b!5262119))

(assert (= (and b!5262119 res!2232872) b!5262120))

(assert (= (and b!5262119 c!910937) b!5262117))

(assert (= (and b!5262119 (not c!910937)) b!5262124))

(assert (= (and b!5262124 c!910935) b!5262125))

(assert (= (and b!5262124 (not c!910935)) b!5262122))

(assert (= (and b!5262122 c!910936) b!5262118))

(assert (= (and b!5262122 (not c!910936)) b!5262123))

(assert (= (or b!5262125 b!5262118) bm!373210))

(assert (= (or b!5262125 b!5262118) bm!373215))

(assert (= (or b!5262117 bm!373210) bm!373214))

(assert (= (or b!5262117 bm!373215) bm!373211))

(assert (= (or b!5262115 bm!373211) bm!373212))

(assert (= (or b!5262115 b!5262117) bm!373213))

(declare-fun m!6303456 () Bool)

(assert (=> bm!373214 m!6303456))

(assert (=> b!5262120 m!6302446))

(declare-fun m!6303458 () Bool)

(assert (=> bm!373213 m!6303458))

(declare-fun m!6303460 () Bool)

(assert (=> b!5262121 m!6303460))

(declare-fun m!6303462 () Bool)

(assert (=> bm!373212 m!6303462))

(assert (=> bm!373025 d!1693801))

(declare-fun d!1693803 () Bool)

(declare-fun res!2232873 () Bool)

(declare-fun e!3273233 () Bool)

(assert (=> d!1693803 (=> res!2232873 e!3273233)))

(assert (=> d!1693803 (= res!2232873 ((_ is Nil!60812) lt!2155416))))

(assert (=> d!1693803 (= (forall!14291 lt!2155416 lambda!265263) e!3273233)))

(declare-fun b!5262126 () Bool)

(declare-fun e!3273234 () Bool)

(assert (=> b!5262126 (= e!3273233 e!3273234)))

(declare-fun res!2232874 () Bool)

(assert (=> b!5262126 (=> (not res!2232874) (not e!3273234))))

(assert (=> b!5262126 (= res!2232874 (dynLambda!24029 lambda!265263 (h!67260 lt!2155416)))))

(declare-fun b!5262127 () Bool)

(assert (=> b!5262127 (= e!3273234 (forall!14291 (t!374121 lt!2155416) lambda!265263))))

(assert (= (and d!1693803 (not res!2232873)) b!5262126))

(assert (= (and b!5262126 res!2232874) b!5262127))

(declare-fun b_lambda!203043 () Bool)

(assert (=> (not b_lambda!203043) (not b!5262126)))

(declare-fun m!6303464 () Bool)

(assert (=> b!5262126 m!6303464))

(declare-fun m!6303466 () Bool)

(assert (=> b!5262127 m!6303466))

(assert (=> d!1693455 d!1693803))

(declare-fun bm!373216 () Bool)

(declare-fun call!373221 () Bool)

(assert (=> bm!373216 (= call!373221 (isEmpty!32760 (_1!35381 (get!20907 lt!2155390))))))

(declare-fun b!5262128 () Bool)

(declare-fun e!3273237 () Bool)

(declare-fun e!3273236 () Bool)

(assert (=> b!5262128 (= e!3273237 e!3273236)))

(declare-fun res!2232882 () Bool)

(assert (=> b!5262128 (=> (not res!2232882) (not e!3273236))))

(declare-fun lt!2155460 () Bool)

(assert (=> b!5262128 (= res!2232882 (not lt!2155460))))

(declare-fun b!5262129 () Bool)

(declare-fun res!2232875 () Bool)

(declare-fun e!3273239 () Bool)

(assert (=> b!5262129 (=> res!2232875 e!3273239)))

(assert (=> b!5262129 (= res!2232875 (not (isEmpty!32760 (tail!10379 (_1!35381 (get!20907 lt!2155390))))))))

(declare-fun d!1693805 () Bool)

(declare-fun e!3273235 () Bool)

(assert (=> d!1693805 e!3273235))

(declare-fun c!910941 () Bool)

(assert (=> d!1693805 (= c!910941 ((_ is EmptyExpr!14879) (regOne!30270 r!7292)))))

(declare-fun e!3273240 () Bool)

(assert (=> d!1693805 (= lt!2155460 e!3273240)))

(declare-fun c!910940 () Bool)

(assert (=> d!1693805 (= c!910940 (isEmpty!32760 (_1!35381 (get!20907 lt!2155390))))))

(assert (=> d!1693805 (validRegex!6615 (regOne!30270 r!7292))))

(assert (=> d!1693805 (= (matchR!7064 (regOne!30270 r!7292) (_1!35381 (get!20907 lt!2155390))) lt!2155460)))

(declare-fun b!5262130 () Bool)

(assert (=> b!5262130 (= e!3273239 (not (= (head!11282 (_1!35381 (get!20907 lt!2155390))) (c!910565 (regOne!30270 r!7292)))))))

(declare-fun b!5262131 () Bool)

(declare-fun res!2232880 () Bool)

(declare-fun e!3273241 () Bool)

(assert (=> b!5262131 (=> (not res!2232880) (not e!3273241))))

(assert (=> b!5262131 (= res!2232880 (isEmpty!32760 (tail!10379 (_1!35381 (get!20907 lt!2155390)))))))

(declare-fun b!5262132 () Bool)

(declare-fun e!3273238 () Bool)

(assert (=> b!5262132 (= e!3273235 e!3273238)))

(declare-fun c!910939 () Bool)

(assert (=> b!5262132 (= c!910939 ((_ is EmptyLang!14879) (regOne!30270 r!7292)))))

(declare-fun b!5262133 () Bool)

(assert (=> b!5262133 (= e!3273238 (not lt!2155460))))

(declare-fun b!5262134 () Bool)

(assert (=> b!5262134 (= e!3273240 (matchR!7064 (derivativeStep!4103 (regOne!30270 r!7292) (head!11282 (_1!35381 (get!20907 lt!2155390)))) (tail!10379 (_1!35381 (get!20907 lt!2155390)))))))

(declare-fun b!5262135 () Bool)

(assert (=> b!5262135 (= e!3273235 (= lt!2155460 call!373221))))

(declare-fun b!5262136 () Bool)

(assert (=> b!5262136 (= e!3273240 (nullable!5048 (regOne!30270 r!7292)))))

(declare-fun b!5262137 () Bool)

(assert (=> b!5262137 (= e!3273236 e!3273239)))

(declare-fun res!2232879 () Bool)

(assert (=> b!5262137 (=> res!2232879 e!3273239)))

(assert (=> b!5262137 (= res!2232879 call!373221)))

(declare-fun b!5262138 () Bool)

(assert (=> b!5262138 (= e!3273241 (= (head!11282 (_1!35381 (get!20907 lt!2155390))) (c!910565 (regOne!30270 r!7292))))))

(declare-fun b!5262139 () Bool)

(declare-fun res!2232881 () Bool)

(assert (=> b!5262139 (=> (not res!2232881) (not e!3273241))))

(assert (=> b!5262139 (= res!2232881 (not call!373221))))

(declare-fun b!5262140 () Bool)

(declare-fun res!2232878 () Bool)

(assert (=> b!5262140 (=> res!2232878 e!3273237)))

(assert (=> b!5262140 (= res!2232878 (not ((_ is ElementMatch!14879) (regOne!30270 r!7292))))))

(assert (=> b!5262140 (= e!3273238 e!3273237)))

(declare-fun b!5262141 () Bool)

(declare-fun res!2232877 () Bool)

(assert (=> b!5262141 (=> res!2232877 e!3273237)))

(assert (=> b!5262141 (= res!2232877 e!3273241)))

(declare-fun res!2232876 () Bool)

(assert (=> b!5262141 (=> (not res!2232876) (not e!3273241))))

(assert (=> b!5262141 (= res!2232876 lt!2155460)))

(assert (= (and d!1693805 c!910940) b!5262136))

(assert (= (and d!1693805 (not c!910940)) b!5262134))

(assert (= (and d!1693805 c!910941) b!5262135))

(assert (= (and d!1693805 (not c!910941)) b!5262132))

(assert (= (and b!5262132 c!910939) b!5262133))

(assert (= (and b!5262132 (not c!910939)) b!5262140))

(assert (= (and b!5262140 (not res!2232878)) b!5262141))

(assert (= (and b!5262141 res!2232876) b!5262139))

(assert (= (and b!5262139 res!2232881) b!5262131))

(assert (= (and b!5262131 res!2232880) b!5262138))

(assert (= (and b!5262141 (not res!2232877)) b!5262128))

(assert (= (and b!5262128 res!2232882) b!5262137))

(assert (= (and b!5262137 (not res!2232879)) b!5262129))

(assert (= (and b!5262129 (not res!2232875)) b!5262130))

(assert (= (or b!5262135 b!5262137 b!5262139) bm!373216))

(declare-fun m!6303468 () Bool)

(assert (=> b!5262130 m!6303468))

(declare-fun m!6303470 () Bool)

(assert (=> b!5262129 m!6303470))

(assert (=> b!5262129 m!6303470))

(declare-fun m!6303472 () Bool)

(assert (=> b!5262129 m!6303472))

(declare-fun m!6303474 () Bool)

(assert (=> bm!373216 m!6303474))

(assert (=> d!1693805 m!6303474))

(assert (=> d!1693805 m!6302604))

(assert (=> b!5262136 m!6303314))

(assert (=> b!5262134 m!6303468))

(assert (=> b!5262134 m!6303468))

(declare-fun m!6303476 () Bool)

(assert (=> b!5262134 m!6303476))

(assert (=> b!5262134 m!6303470))

(assert (=> b!5262134 m!6303476))

(assert (=> b!5262134 m!6303470))

(declare-fun m!6303478 () Bool)

(assert (=> b!5262134 m!6303478))

(assert (=> b!5262131 m!6303470))

(assert (=> b!5262131 m!6303470))

(assert (=> b!5262131 m!6303472))

(assert (=> b!5262138 m!6303468))

(assert (=> b!5261066 d!1693805))

(assert (=> b!5261066 d!1693769))

(declare-fun d!1693807 () Bool)

(assert (=> d!1693807 (= (nullable!5048 (reg!15208 r!7292)) (nullableFct!1434 (reg!15208 r!7292)))))

(declare-fun bs!1219964 () Bool)

(assert (= bs!1219964 d!1693807))

(declare-fun m!6303480 () Bool)

(assert (=> bs!1219964 m!6303480))

(assert (=> b!5261272 d!1693807))

(declare-fun d!1693809 () Bool)

(assert (=> d!1693809 (= (nullable!5048 (h!67260 (exprs!4763 lt!2155330))) (nullableFct!1434 (h!67260 (exprs!4763 lt!2155330))))))

(declare-fun bs!1219965 () Bool)

(assert (= bs!1219965 d!1693809))

(declare-fun m!6303482 () Bool)

(assert (=> bs!1219965 m!6303482))

(assert (=> b!5260901 d!1693809))

(declare-fun c!910942 () Bool)

(declare-fun bm!373217 () Bool)

(declare-fun c!910943 () Bool)

(declare-fun call!373223 () Bool)

(assert (=> bm!373217 (= call!373223 (validRegex!6615 (ite c!910942 (reg!15208 lt!2155410) (ite c!910943 (regOne!30271 lt!2155410) (regOne!30270 lt!2155410)))))))

(declare-fun b!5262142 () Bool)

(declare-fun e!3273245 () Bool)

(assert (=> b!5262142 (= e!3273245 call!373223)))

(declare-fun b!5262143 () Bool)

(declare-fun e!3273246 () Bool)

(declare-fun call!373222 () Bool)

(assert (=> b!5262143 (= e!3273246 call!373222)))

(declare-fun d!1693811 () Bool)

(declare-fun res!2232884 () Bool)

(declare-fun e!3273247 () Bool)

(assert (=> d!1693811 (=> res!2232884 e!3273247)))

(assert (=> d!1693811 (= res!2232884 ((_ is ElementMatch!14879) lt!2155410))))

(assert (=> d!1693811 (= (validRegex!6615 lt!2155410) e!3273247)))

(declare-fun b!5262144 () Bool)

(declare-fun e!3273244 () Bool)

(assert (=> b!5262144 (= e!3273244 call!373222)))

(declare-fun b!5262145 () Bool)

(declare-fun e!3273242 () Bool)

(assert (=> b!5262145 (= e!3273242 e!3273246)))

(declare-fun res!2232885 () Bool)

(assert (=> b!5262145 (=> (not res!2232885) (not e!3273246))))

(declare-fun call!373224 () Bool)

(assert (=> b!5262145 (= res!2232885 call!373224)))

(declare-fun b!5262146 () Bool)

(declare-fun e!3273248 () Bool)

(declare-fun e!3273243 () Bool)

(assert (=> b!5262146 (= e!3273248 e!3273243)))

(assert (=> b!5262146 (= c!910943 ((_ is Union!14879) lt!2155410))))

(declare-fun b!5262147 () Bool)

(declare-fun res!2232883 () Bool)

(assert (=> b!5262147 (=> (not res!2232883) (not e!3273244))))

(assert (=> b!5262147 (= res!2232883 call!373224)))

(assert (=> b!5262147 (= e!3273243 e!3273244)))

(declare-fun b!5262148 () Bool)

(assert (=> b!5262148 (= e!3273247 e!3273248)))

(assert (=> b!5262148 (= c!910942 ((_ is Star!14879) lt!2155410))))

(declare-fun bm!373218 () Bool)

(assert (=> bm!373218 (= call!373222 (validRegex!6615 (ite c!910943 (regTwo!30271 lt!2155410) (regTwo!30270 lt!2155410))))))

(declare-fun bm!373219 () Bool)

(assert (=> bm!373219 (= call!373224 call!373223)))

(declare-fun b!5262149 () Bool)

(declare-fun res!2232886 () Bool)

(assert (=> b!5262149 (=> res!2232886 e!3273242)))

(assert (=> b!5262149 (= res!2232886 (not ((_ is Concat!23724) lt!2155410)))))

(assert (=> b!5262149 (= e!3273243 e!3273242)))

(declare-fun b!5262150 () Bool)

(assert (=> b!5262150 (= e!3273248 e!3273245)))

(declare-fun res!2232887 () Bool)

(assert (=> b!5262150 (= res!2232887 (not (nullable!5048 (reg!15208 lt!2155410))))))

(assert (=> b!5262150 (=> (not res!2232887) (not e!3273245))))

(assert (= (and d!1693811 (not res!2232884)) b!5262148))

(assert (= (and b!5262148 c!910942) b!5262150))

(assert (= (and b!5262148 (not c!910942)) b!5262146))

(assert (= (and b!5262150 res!2232887) b!5262142))

(assert (= (and b!5262146 c!910943) b!5262147))

(assert (= (and b!5262146 (not c!910943)) b!5262149))

(assert (= (and b!5262147 res!2232883) b!5262144))

(assert (= (and b!5262149 (not res!2232886)) b!5262145))

(assert (= (and b!5262145 res!2232885) b!5262143))

(assert (= (or b!5262144 b!5262143) bm!373218))

(assert (= (or b!5262147 b!5262145) bm!373219))

(assert (= (or b!5262142 bm!373219) bm!373217))

(declare-fun m!6303484 () Bool)

(assert (=> bm!373217 m!6303484))

(declare-fun m!6303486 () Bool)

(assert (=> bm!373218 m!6303486))

(declare-fun m!6303488 () Bool)

(assert (=> b!5262150 m!6303488))

(assert (=> d!1693449 d!1693811))

(declare-fun d!1693813 () Bool)

(declare-fun res!2232888 () Bool)

(declare-fun e!3273249 () Bool)

(assert (=> d!1693813 (=> res!2232888 e!3273249)))

(assert (=> d!1693813 (= res!2232888 ((_ is Nil!60812) (exprs!4763 (h!67261 zl!343))))))

(assert (=> d!1693813 (= (forall!14291 (exprs!4763 (h!67261 zl!343)) lambda!265257) e!3273249)))

(declare-fun b!5262151 () Bool)

(declare-fun e!3273250 () Bool)

(assert (=> b!5262151 (= e!3273249 e!3273250)))

(declare-fun res!2232889 () Bool)

(assert (=> b!5262151 (=> (not res!2232889) (not e!3273250))))

(assert (=> b!5262151 (= res!2232889 (dynLambda!24029 lambda!265257 (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun b!5262152 () Bool)

(assert (=> b!5262152 (= e!3273250 (forall!14291 (t!374121 (exprs!4763 (h!67261 zl!343))) lambda!265257))))

(assert (= (and d!1693813 (not res!2232888)) b!5262151))

(assert (= (and b!5262151 res!2232889) b!5262152))

(declare-fun b_lambda!203045 () Bool)

(assert (=> (not b_lambda!203045) (not b!5262151)))

(declare-fun m!6303490 () Bool)

(assert (=> b!5262151 m!6303490))

(declare-fun m!6303492 () Bool)

(assert (=> b!5262152 m!6303492))

(assert (=> d!1693449 d!1693813))

(assert (=> b!5260906 d!1693395))

(assert (=> d!1693387 d!1693399))

(declare-fun d!1693815 () Bool)

(assert (=> d!1693815 (= (flatMap!606 z!1189 lambda!265207) (dynLambda!24027 lambda!265207 (h!67261 zl!343)))))

(assert (=> d!1693815 true))

(declare-fun _$13!1790 () Unit!153034)

(assert (=> d!1693815 (= (choose!39248 z!1189 (h!67261 zl!343) lambda!265207) _$13!1790)))

(declare-fun b_lambda!203047 () Bool)

(assert (=> (not b_lambda!203047) (not d!1693815)))

(declare-fun bs!1219966 () Bool)

(assert (= bs!1219966 d!1693815))

(assert (=> bs!1219966 m!6302328))

(assert (=> bs!1219966 m!6302490))

(assert (=> d!1693387 d!1693815))

(declare-fun b!5262153 () Bool)

(declare-fun e!3273252 () Bool)

(declare-fun e!3273253 () Bool)

(assert (=> b!5262153 (= e!3273252 e!3273253)))

(declare-fun res!2232892 () Bool)

(assert (=> b!5262153 (=> res!2232892 e!3273253)))

(assert (=> b!5262153 (= res!2232892 ((_ is Star!14879) (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun bm!373220 () Bool)

(declare-fun call!373226 () Bool)

(declare-fun c!910944 () Bool)

(assert (=> bm!373220 (= call!373226 (nullable!5048 (ite c!910944 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))))))

(declare-fun b!5262154 () Bool)

(declare-fun e!3273256 () Bool)

(assert (=> b!5262154 (= e!3273256 call!373226)))

(declare-fun b!5262155 () Bool)

(declare-fun e!3273255 () Bool)

(assert (=> b!5262155 (= e!3273255 e!3273252)))

(declare-fun res!2232890 () Bool)

(assert (=> b!5262155 (=> (not res!2232890) (not e!3273252))))

(assert (=> b!5262155 (= res!2232890 (and (not ((_ is EmptyLang!14879) (h!67260 (exprs!4763 (h!67261 zl!343))))) (not ((_ is ElementMatch!14879) (h!67260 (exprs!4763 (h!67261 zl!343)))))))))

(declare-fun b!5262156 () Bool)

(declare-fun e!3273251 () Bool)

(declare-fun e!3273254 () Bool)

(assert (=> b!5262156 (= e!3273251 e!3273254)))

(declare-fun res!2232893 () Bool)

(declare-fun call!373225 () Bool)

(assert (=> b!5262156 (= res!2232893 call!373225)))

(assert (=> b!5262156 (=> res!2232893 e!3273254)))

(declare-fun b!5262157 () Bool)

(assert (=> b!5262157 (= e!3273254 call!373226)))

(declare-fun b!5262158 () Bool)

(assert (=> b!5262158 (= e!3273253 e!3273251)))

(assert (=> b!5262158 (= c!910944 ((_ is Union!14879) (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun b!5262159 () Bool)

(assert (=> b!5262159 (= e!3273251 e!3273256)))

(declare-fun res!2232894 () Bool)

(assert (=> b!5262159 (= res!2232894 call!373225)))

(assert (=> b!5262159 (=> (not res!2232894) (not e!3273256))))

(declare-fun d!1693817 () Bool)

(declare-fun res!2232891 () Bool)

(assert (=> d!1693817 (=> res!2232891 e!3273255)))

(assert (=> d!1693817 (= res!2232891 ((_ is EmptyExpr!14879) (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(assert (=> d!1693817 (= (nullableFct!1434 (h!67260 (exprs!4763 (h!67261 zl!343)))) e!3273255)))

(declare-fun bm!373221 () Bool)

(assert (=> bm!373221 (= call!373225 (nullable!5048 (ite c!910944 (regOne!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))))))))

(assert (= (and d!1693817 (not res!2232891)) b!5262155))

(assert (= (and b!5262155 res!2232890) b!5262153))

(assert (= (and b!5262153 (not res!2232892)) b!5262158))

(assert (= (and b!5262158 c!910944) b!5262156))

(assert (= (and b!5262158 (not c!910944)) b!5262159))

(assert (= (and b!5262156 (not res!2232893)) b!5262157))

(assert (= (and b!5262159 res!2232894) b!5262154))

(assert (= (or b!5262157 b!5262154) bm!373220))

(assert (= (or b!5262156 b!5262159) bm!373221))

(declare-fun m!6303494 () Bool)

(assert (=> bm!373220 m!6303494))

(declare-fun m!6303496 () Bool)

(assert (=> bm!373221 m!6303496))

(assert (=> d!1693395 d!1693817))

(declare-fun bm!373222 () Bool)

(declare-fun call!373227 () Bool)

(assert (=> bm!373222 (= call!373227 (isEmpty!32760 s!2326))))

(declare-fun b!5262160 () Bool)

(declare-fun e!3273259 () Bool)

(declare-fun e!3273258 () Bool)

(assert (=> b!5262160 (= e!3273259 e!3273258)))

(declare-fun res!2232902 () Bool)

(assert (=> b!5262160 (=> (not res!2232902) (not e!3273258))))

(declare-fun lt!2155461 () Bool)

(assert (=> b!5262160 (= res!2232902 (not lt!2155461))))

(declare-fun b!5262161 () Bool)

(declare-fun res!2232895 () Bool)

(declare-fun e!3273261 () Bool)

(assert (=> b!5262161 (=> res!2232895 e!3273261)))

(assert (=> b!5262161 (= res!2232895 (not (isEmpty!32760 (tail!10379 s!2326))))))

(declare-fun d!1693819 () Bool)

(declare-fun e!3273257 () Bool)

(assert (=> d!1693819 e!3273257))

(declare-fun c!910947 () Bool)

(assert (=> d!1693819 (= c!910947 ((_ is EmptyExpr!14879) (regTwo!30270 r!7292)))))

(declare-fun e!3273262 () Bool)

(assert (=> d!1693819 (= lt!2155461 e!3273262)))

(declare-fun c!910946 () Bool)

(assert (=> d!1693819 (= c!910946 (isEmpty!32760 s!2326))))

(assert (=> d!1693819 (validRegex!6615 (regTwo!30270 r!7292))))

(assert (=> d!1693819 (= (matchR!7064 (regTwo!30270 r!7292) s!2326) lt!2155461)))

(declare-fun b!5262162 () Bool)

(assert (=> b!5262162 (= e!3273261 (not (= (head!11282 s!2326) (c!910565 (regTwo!30270 r!7292)))))))

(declare-fun b!5262163 () Bool)

(declare-fun res!2232900 () Bool)

(declare-fun e!3273263 () Bool)

(assert (=> b!5262163 (=> (not res!2232900) (not e!3273263))))

(assert (=> b!5262163 (= res!2232900 (isEmpty!32760 (tail!10379 s!2326)))))

(declare-fun b!5262164 () Bool)

(declare-fun e!3273260 () Bool)

(assert (=> b!5262164 (= e!3273257 e!3273260)))

(declare-fun c!910945 () Bool)

(assert (=> b!5262164 (= c!910945 ((_ is EmptyLang!14879) (regTwo!30270 r!7292)))))

(declare-fun b!5262165 () Bool)

(assert (=> b!5262165 (= e!3273260 (not lt!2155461))))

(declare-fun b!5262166 () Bool)

(assert (=> b!5262166 (= e!3273262 (matchR!7064 (derivativeStep!4103 (regTwo!30270 r!7292) (head!11282 s!2326)) (tail!10379 s!2326)))))

(declare-fun b!5262167 () Bool)

(assert (=> b!5262167 (= e!3273257 (= lt!2155461 call!373227))))

(declare-fun b!5262168 () Bool)

(assert (=> b!5262168 (= e!3273262 (nullable!5048 (regTwo!30270 r!7292)))))

(declare-fun b!5262169 () Bool)

(assert (=> b!5262169 (= e!3273258 e!3273261)))

(declare-fun res!2232899 () Bool)

(assert (=> b!5262169 (=> res!2232899 e!3273261)))

(assert (=> b!5262169 (= res!2232899 call!373227)))

(declare-fun b!5262170 () Bool)

(assert (=> b!5262170 (= e!3273263 (= (head!11282 s!2326) (c!910565 (regTwo!30270 r!7292))))))

(declare-fun b!5262171 () Bool)

(declare-fun res!2232901 () Bool)

(assert (=> b!5262171 (=> (not res!2232901) (not e!3273263))))

(assert (=> b!5262171 (= res!2232901 (not call!373227))))

(declare-fun b!5262172 () Bool)

(declare-fun res!2232898 () Bool)

(assert (=> b!5262172 (=> res!2232898 e!3273259)))

(assert (=> b!5262172 (= res!2232898 (not ((_ is ElementMatch!14879) (regTwo!30270 r!7292))))))

(assert (=> b!5262172 (= e!3273260 e!3273259)))

(declare-fun b!5262173 () Bool)

(declare-fun res!2232897 () Bool)

(assert (=> b!5262173 (=> res!2232897 e!3273259)))

(assert (=> b!5262173 (= res!2232897 e!3273263)))

(declare-fun res!2232896 () Bool)

(assert (=> b!5262173 (=> (not res!2232896) (not e!3273263))))

(assert (=> b!5262173 (= res!2232896 lt!2155461)))

(assert (= (and d!1693819 c!910946) b!5262168))

(assert (= (and d!1693819 (not c!910946)) b!5262166))

(assert (= (and d!1693819 c!910947) b!5262167))

(assert (= (and d!1693819 (not c!910947)) b!5262164))

(assert (= (and b!5262164 c!910945) b!5262165))

(assert (= (and b!5262164 (not c!910945)) b!5262172))

(assert (= (and b!5262172 (not res!2232898)) b!5262173))

(assert (= (and b!5262173 res!2232896) b!5262171))

(assert (= (and b!5262171 res!2232901) b!5262163))

(assert (= (and b!5262163 res!2232900) b!5262170))

(assert (= (and b!5262173 (not res!2232897)) b!5262160))

(assert (= (and b!5262160 res!2232902) b!5262169))

(assert (= (and b!5262169 (not res!2232899)) b!5262161))

(assert (= (and b!5262161 (not res!2232895)) b!5262162))

(assert (= (or b!5262167 b!5262169 b!5262171) bm!373222))

(assert (=> b!5262162 m!6302640))

(assert (=> b!5262161 m!6302642))

(assert (=> b!5262161 m!6302642))

(assert (=> b!5262161 m!6302644))

(assert (=> bm!373222 m!6302632))

(assert (=> d!1693819 m!6302632))

(assert (=> d!1693819 m!6303392))

(assert (=> b!5262168 m!6303394))

(assert (=> b!5262166 m!6302640))

(assert (=> b!5262166 m!6302640))

(declare-fun m!6303498 () Bool)

(assert (=> b!5262166 m!6303498))

(assert (=> b!5262166 m!6302642))

(assert (=> b!5262166 m!6303498))

(assert (=> b!5262166 m!6302642))

(declare-fun m!6303500 () Bool)

(assert (=> b!5262166 m!6303500))

(assert (=> b!5262163 m!6302642))

(assert (=> b!5262163 m!6302642))

(assert (=> b!5262163 m!6302644))

(assert (=> b!5262170 m!6302640))

(assert (=> b!5261064 d!1693819))

(declare-fun b!5262174 () Bool)

(declare-fun e!3273269 () (InoxSet Context!8526))

(declare-fun call!373229 () (InoxSet Context!8526))

(declare-fun call!373228 () (InoxSet Context!8526))

(assert (=> b!5262174 (= e!3273269 ((_ map or) call!373229 call!373228))))

(declare-fun b!5262175 () Bool)

(declare-fun e!3273266 () (InoxSet Context!8526))

(assert (=> b!5262175 (= e!3273266 e!3273269)))

(declare-fun c!910948 () Bool)

(assert (=> b!5262175 (= c!910948 ((_ is Union!14879) (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343)))))))))))

(declare-fun bm!373223 () Bool)

(declare-fun call!373233 () List!60936)

(declare-fun call!373231 () List!60936)

(assert (=> bm!373223 (= call!373233 call!373231)))

(declare-fun b!5262177 () Bool)

(declare-fun e!3273265 () (InoxSet Context!8526))

(declare-fun call!373232 () (InoxSet Context!8526))

(assert (=> b!5262177 (= e!3273265 call!373232)))

(declare-fun b!5262178 () Bool)

(declare-fun c!910951 () Bool)

(declare-fun e!3273267 () Bool)

(assert (=> b!5262178 (= c!910951 e!3273267)))

(declare-fun res!2232903 () Bool)

(assert (=> b!5262178 (=> (not res!2232903) (not e!3273267))))

(assert (=> b!5262178 (= res!2232903 ((_ is Concat!23724) (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343)))))))))))

(declare-fun e!3273264 () (InoxSet Context!8526))

(assert (=> b!5262178 (= e!3273269 e!3273264)))

(declare-fun b!5262179 () Bool)

(assert (=> b!5262179 (= e!3273267 (nullable!5048 (regOne!30270 (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343))))))))))))

(declare-fun b!5262180 () Bool)

(assert (=> b!5262180 (= e!3273266 (store ((as const (Array Context!8526 Bool)) false) (ite (or c!910618 c!910621) lt!2155330 (Context!8527 call!373021)) true))))

(declare-fun bm!373224 () Bool)

(declare-fun call!373230 () (InoxSet Context!8526))

(assert (=> bm!373224 (= call!373230 call!373228)))

(declare-fun bm!373225 () Bool)

(declare-fun c!910949 () Bool)

(assert (=> bm!373225 (= call!373228 (derivationStepZipperDown!327 (ite c!910948 (regTwo!30271 (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343)))))))) (ite c!910951 (regTwo!30270 (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343)))))))) (ite c!910949 (regOne!30270 (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343)))))))) (reg!15208 (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343))))))))))) (ite (or c!910948 c!910951) (ite (or c!910618 c!910621) lt!2155330 (Context!8527 call!373021)) (Context!8527 call!373233)) (h!67262 s!2326)))))

(declare-fun c!910950 () Bool)

(declare-fun b!5262181 () Bool)

(assert (=> b!5262181 (= c!910950 ((_ is Star!14879) (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343)))))))))))

(declare-fun e!3273268 () (InoxSet Context!8526))

(assert (=> b!5262181 (= e!3273268 e!3273265)))

(declare-fun b!5262182 () Bool)

(assert (=> b!5262182 (= e!3273265 ((as const (Array Context!8526 Bool)) false))))

(declare-fun bm!373226 () Bool)

(assert (=> bm!373226 (= call!373229 (derivationStepZipperDown!327 (ite c!910948 (regOne!30271 (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343)))))))) (regOne!30270 (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343))))))))) (ite c!910948 (ite (or c!910618 c!910621) lt!2155330 (Context!8527 call!373021)) (Context!8527 call!373231)) (h!67262 s!2326)))))

(declare-fun b!5262183 () Bool)

(assert (=> b!5262183 (= e!3273264 e!3273268)))

(assert (=> b!5262183 (= c!910949 ((_ is Concat!23724) (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343)))))))))))

(declare-fun b!5262184 () Bool)

(assert (=> b!5262184 (= e!3273268 call!373232)))

(declare-fun b!5262176 () Bool)

(assert (=> b!5262176 (= e!3273264 ((_ map or) call!373229 call!373230))))

(declare-fun c!910952 () Bool)

(declare-fun d!1693821 () Bool)

(assert (=> d!1693821 (= c!910952 (and ((_ is ElementMatch!14879) (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343)))))))) (= (c!910565 (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343)))))))) (h!67262 s!2326))))))

(assert (=> d!1693821 (= (derivationStepZipperDown!327 (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343))))))) (ite (or c!910618 c!910621) lt!2155330 (Context!8527 call!373021)) (h!67262 s!2326)) e!3273266)))

(declare-fun bm!373227 () Bool)

(assert (=> bm!373227 (= call!373231 ($colon$colon!1332 (exprs!4763 (ite (or c!910618 c!910621) lt!2155330 (Context!8527 call!373021))) (ite (or c!910951 c!910949) (regTwo!30270 (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343)))))))) (ite c!910618 (regTwo!30271 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910621 (regTwo!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (ite c!910619 (regOne!30270 (h!67260 (exprs!4763 (h!67261 zl!343)))) (reg!15208 (h!67260 (exprs!4763 (h!67261 zl!343))))))))))))

(declare-fun bm!373228 () Bool)

(assert (=> bm!373228 (= call!373232 call!373230)))

(assert (= (and d!1693821 c!910952) b!5262180))

(assert (= (and d!1693821 (not c!910952)) b!5262175))

(assert (= (and b!5262175 c!910948) b!5262174))

(assert (= (and b!5262175 (not c!910948)) b!5262178))

(assert (= (and b!5262178 res!2232903) b!5262179))

(assert (= (and b!5262178 c!910951) b!5262176))

(assert (= (and b!5262178 (not c!910951)) b!5262183))

(assert (= (and b!5262183 c!910949) b!5262184))

(assert (= (and b!5262183 (not c!910949)) b!5262181))

(assert (= (and b!5262181 c!910950) b!5262177))

(assert (= (and b!5262181 (not c!910950)) b!5262182))

(assert (= (or b!5262184 b!5262177) bm!373223))

(assert (= (or b!5262184 b!5262177) bm!373228))

(assert (= (or b!5262176 bm!373223) bm!373227))

(assert (= (or b!5262176 bm!373228) bm!373224))

(assert (= (or b!5262174 bm!373224) bm!373225))

(assert (= (or b!5262174 b!5262176) bm!373226))

(declare-fun m!6303502 () Bool)

(assert (=> bm!373227 m!6303502))

(declare-fun m!6303504 () Bool)

(assert (=> b!5262179 m!6303504))

(declare-fun m!6303506 () Bool)

(assert (=> bm!373226 m!6303506))

(declare-fun m!6303508 () Bool)

(assert (=> b!5262180 m!6303508))

(declare-fun m!6303510 () Bool)

(assert (=> bm!373225 m!6303510))

(assert (=> bm!373013 d!1693821))

(declare-fun d!1693823 () Bool)

(assert (=> d!1693823 (= (isEmpty!32760 (t!374123 s!2326)) ((_ is Nil!60814) (t!374123 s!2326)))))

(assert (=> d!1693463 d!1693823))

(assert (=> bm!373057 d!1693773))

(assert (=> bm!373053 d!1693773))

(assert (=> b!5261275 d!1693469))

(declare-fun bs!1219967 () Bool)

(declare-fun d!1693825 () Bool)

(assert (= bs!1219967 (and d!1693825 d!1693679)))

(declare-fun lambda!265316 () Int)

(assert (=> bs!1219967 (= lambda!265316 lambda!265292)))

(declare-fun bs!1219968 () Bool)

(assert (= bs!1219968 (and d!1693825 d!1693781)))

(assert (=> bs!1219968 (= lambda!265316 lambda!265315)))

(declare-fun bs!1219969 () Bool)

(assert (= bs!1219969 (and d!1693825 d!1693453)))

(assert (=> bs!1219969 (= lambda!265316 lambda!265260)))

(declare-fun bs!1219970 () Bool)

(assert (= bs!1219970 (and d!1693825 d!1693405)))

(assert (=> bs!1219970 (= lambda!265316 lambda!265239)))

(declare-fun bs!1219971 () Bool)

(assert (= bs!1219971 (and d!1693825 d!1693449)))

(assert (=> bs!1219971 (= lambda!265316 lambda!265257)))

(declare-fun bs!1219972 () Bool)

(assert (= bs!1219972 (and d!1693825 d!1693741)))

(assert (=> bs!1219972 (= lambda!265316 lambda!265310)))

(declare-fun bs!1219973 () Bool)

(assert (= bs!1219973 (and d!1693825 d!1693701)))

(assert (=> bs!1219973 (= lambda!265316 lambda!265297)))

(declare-fun bs!1219974 () Bool)

(assert (= bs!1219974 (and d!1693825 d!1693455)))

(assert (=> bs!1219974 (= lambda!265316 lambda!265263)))

(declare-fun bs!1219975 () Bool)

(assert (= bs!1219975 (and d!1693825 d!1693401)))

(assert (=> bs!1219975 (= lambda!265316 lambda!265238)))

(declare-fun b!5262185 () Bool)

(declare-fun e!3273273 () Regex!14879)

(assert (=> b!5262185 (= e!3273273 EmptyLang!14879)))

(declare-fun b!5262186 () Bool)

(declare-fun e!3273275 () Regex!14879)

(assert (=> b!5262186 (= e!3273275 e!3273273)))

(declare-fun c!910954 () Bool)

(assert (=> b!5262186 (= c!910954 ((_ is Cons!60812) (t!374121 (unfocusZipperList!321 zl!343))))))

(declare-fun b!5262187 () Bool)

(declare-fun e!3273272 () Bool)

(declare-fun lt!2155462 () Regex!14879)

(assert (=> b!5262187 (= e!3273272 (isUnion!257 lt!2155462))))

(declare-fun b!5262188 () Bool)

(declare-fun e!3273271 () Bool)

(assert (=> b!5262188 (= e!3273271 (isEmpty!32755 (t!374121 (t!374121 (unfocusZipperList!321 zl!343)))))))

(declare-fun b!5262189 () Bool)

(declare-fun e!3273270 () Bool)

(assert (=> b!5262189 (= e!3273270 (isEmptyLang!825 lt!2155462))))

(declare-fun b!5262190 () Bool)

(assert (=> b!5262190 (= e!3273272 (= lt!2155462 (head!11283 (t!374121 (unfocusZipperList!321 zl!343)))))))

(declare-fun e!3273274 () Bool)

(assert (=> d!1693825 e!3273274))

(declare-fun res!2232905 () Bool)

(assert (=> d!1693825 (=> (not res!2232905) (not e!3273274))))

(assert (=> d!1693825 (= res!2232905 (validRegex!6615 lt!2155462))))

(assert (=> d!1693825 (= lt!2155462 e!3273275)))

(declare-fun c!910953 () Bool)

(assert (=> d!1693825 (= c!910953 e!3273271)))

(declare-fun res!2232904 () Bool)

(assert (=> d!1693825 (=> (not res!2232904) (not e!3273271))))

(assert (=> d!1693825 (= res!2232904 ((_ is Cons!60812) (t!374121 (unfocusZipperList!321 zl!343))))))

(assert (=> d!1693825 (forall!14291 (t!374121 (unfocusZipperList!321 zl!343)) lambda!265316)))

(assert (=> d!1693825 (= (generalisedUnion!808 (t!374121 (unfocusZipperList!321 zl!343))) lt!2155462)))

(declare-fun b!5262191 () Bool)

(assert (=> b!5262191 (= e!3273275 (h!67260 (t!374121 (unfocusZipperList!321 zl!343))))))

(declare-fun b!5262192 () Bool)

(assert (=> b!5262192 (= e!3273270 e!3273272)))

(declare-fun c!910955 () Bool)

(assert (=> b!5262192 (= c!910955 (isEmpty!32755 (tail!10380 (t!374121 (unfocusZipperList!321 zl!343)))))))

(declare-fun b!5262193 () Bool)

(assert (=> b!5262193 (= e!3273273 (Union!14879 (h!67260 (t!374121 (unfocusZipperList!321 zl!343))) (generalisedUnion!808 (t!374121 (t!374121 (unfocusZipperList!321 zl!343))))))))

(declare-fun b!5262194 () Bool)

(assert (=> b!5262194 (= e!3273274 e!3273270)))

(declare-fun c!910956 () Bool)

(assert (=> b!5262194 (= c!910956 (isEmpty!32755 (t!374121 (unfocusZipperList!321 zl!343))))))

(assert (= (and d!1693825 res!2232904) b!5262188))

(assert (= (and d!1693825 c!910953) b!5262191))

(assert (= (and d!1693825 (not c!910953)) b!5262186))

(assert (= (and b!5262186 c!910954) b!5262193))

(assert (= (and b!5262186 (not c!910954)) b!5262185))

(assert (= (and d!1693825 res!2232905) b!5262194))

(assert (= (and b!5262194 c!910956) b!5262189))

(assert (= (and b!5262194 (not c!910956)) b!5262192))

(assert (= (and b!5262192 c!910955) b!5262190))

(assert (= (and b!5262192 (not c!910955)) b!5262187))

(assert (=> b!5262194 m!6302694))

(declare-fun m!6303512 () Bool)

(assert (=> b!5262193 m!6303512))

(declare-fun m!6303514 () Bool)

(assert (=> d!1693825 m!6303514))

(declare-fun m!6303516 () Bool)

(assert (=> d!1693825 m!6303516))

(declare-fun m!6303518 () Bool)

(assert (=> b!5262189 m!6303518))

(declare-fun m!6303520 () Bool)

(assert (=> b!5262188 m!6303520))

(declare-fun m!6303522 () Bool)

(assert (=> b!5262192 m!6303522))

(assert (=> b!5262192 m!6303522))

(declare-fun m!6303524 () Bool)

(assert (=> b!5262192 m!6303524))

(declare-fun m!6303526 () Bool)

(assert (=> b!5262187 m!6303526))

(declare-fun m!6303528 () Bool)

(assert (=> b!5262190 m!6303528))

(assert (=> b!5261256 d!1693825))

(declare-fun bs!1219976 () Bool)

(declare-fun d!1693827 () Bool)

(assert (= bs!1219976 (and d!1693827 d!1693745)))

(declare-fun lambda!265317 () Int)

(assert (=> bs!1219976 (= lambda!265317 lambda!265313)))

(declare-fun bs!1219977 () Bool)

(assert (= bs!1219977 (and d!1693827 d!1693763)))

(assert (=> bs!1219977 (= lambda!265317 lambda!265314)))

(assert (=> d!1693827 (= (nullableZipper!1282 lt!2155338) (exists!1985 lt!2155338 lambda!265317))))

(declare-fun bs!1219978 () Bool)

(assert (= bs!1219978 d!1693827))

(declare-fun m!6303530 () Bool)

(assert (=> bs!1219978 m!6303530))

(assert (=> b!5261280 d!1693827))

(declare-fun d!1693829 () Bool)

(assert (=> d!1693829 true))

(assert (=> d!1693829 true))

(declare-fun res!2232908 () Bool)

(assert (=> d!1693829 (= (choose!39250 lambda!265205) res!2232908)))

(assert (=> d!1693433 d!1693829))

(declare-fun d!1693831 () Bool)

(assert (=> d!1693831 (= (nullable!5048 (reg!15208 (regTwo!30270 (regOne!30270 r!7292)))) (nullableFct!1434 (reg!15208 (regTwo!30270 (regOne!30270 r!7292)))))))

(declare-fun bs!1219979 () Bool)

(assert (= bs!1219979 d!1693831))

(declare-fun m!6303532 () Bool)

(assert (=> bs!1219979 m!6303532))

(assert (=> b!5261227 d!1693831))

(declare-fun d!1693833 () Bool)

(declare-fun res!2232913 () Bool)

(declare-fun e!3273280 () Bool)

(assert (=> d!1693833 (=> res!2232913 e!3273280)))

(assert (=> d!1693833 (= res!2232913 ((_ is Nil!60813) lt!2155407))))

(assert (=> d!1693833 (= (noDuplicate!1237 lt!2155407) e!3273280)))

(declare-fun b!5262199 () Bool)

(declare-fun e!3273281 () Bool)

(assert (=> b!5262199 (= e!3273280 e!3273281)))

(declare-fun res!2232914 () Bool)

(assert (=> b!5262199 (=> (not res!2232914) (not e!3273281))))

(declare-fun contains!19687 (List!60937 Context!8526) Bool)

(assert (=> b!5262199 (= res!2232914 (not (contains!19687 (t!374122 lt!2155407) (h!67261 lt!2155407))))))

(declare-fun b!5262200 () Bool)

(assert (=> b!5262200 (= e!3273281 (noDuplicate!1237 (t!374122 lt!2155407)))))

(assert (= (and d!1693833 (not res!2232913)) b!5262199))

(assert (= (and b!5262199 res!2232914) b!5262200))

(declare-fun m!6303534 () Bool)

(assert (=> b!5262199 m!6303534))

(declare-fun m!6303536 () Bool)

(assert (=> b!5262200 m!6303536))

(assert (=> d!1693447 d!1693833))

(declare-fun d!1693835 () Bool)

(declare-fun e!3273290 () Bool)

(assert (=> d!1693835 e!3273290))

(declare-fun res!2232919 () Bool)

(assert (=> d!1693835 (=> (not res!2232919) (not e!3273290))))

(declare-fun res!2232920 () List!60937)

(assert (=> d!1693835 (= res!2232919 (noDuplicate!1237 res!2232920))))

(declare-fun e!3273289 () Bool)

(assert (=> d!1693835 e!3273289))

(assert (=> d!1693835 (= (choose!39254 z!1189) res!2232920)))

(declare-fun b!5262208 () Bool)

(declare-fun e!3273288 () Bool)

(declare-fun tp!1471016 () Bool)

(assert (=> b!5262208 (= e!3273288 tp!1471016)))

(declare-fun b!5262207 () Bool)

(declare-fun tp!1471017 () Bool)

(assert (=> b!5262207 (= e!3273289 (and (inv!80444 (h!67261 res!2232920)) e!3273288 tp!1471017))))

(declare-fun b!5262209 () Bool)

(assert (=> b!5262209 (= e!3273290 (= (content!10806 res!2232920) z!1189))))

(assert (= b!5262207 b!5262208))

(assert (= (and d!1693835 ((_ is Cons!60813) res!2232920)) b!5262207))

(assert (= (and d!1693835 res!2232919) b!5262209))

(declare-fun m!6303538 () Bool)

(assert (=> d!1693835 m!6303538))

(declare-fun m!6303540 () Bool)

(assert (=> b!5262207 m!6303540))

(declare-fun m!6303542 () Bool)

(assert (=> b!5262209 m!6303542))

(assert (=> d!1693447 d!1693835))

(declare-fun d!1693837 () Bool)

(declare-fun c!910957 () Bool)

(assert (=> d!1693837 (= c!910957 (isEmpty!32760 (tail!10379 (t!374123 s!2326))))))

(declare-fun e!3273291 () Bool)

(assert (=> d!1693837 (= (matchZipper!1123 (derivationStepZipper!1126 ((_ map or) lt!2155338 lt!2155333) (head!11282 (t!374123 s!2326))) (tail!10379 (t!374123 s!2326))) e!3273291)))

(declare-fun b!5262210 () Bool)

(assert (=> b!5262210 (= e!3273291 (nullableZipper!1282 (derivationStepZipper!1126 ((_ map or) lt!2155338 lt!2155333) (head!11282 (t!374123 s!2326)))))))

(declare-fun b!5262211 () Bool)

(assert (=> b!5262211 (= e!3273291 (matchZipper!1123 (derivationStepZipper!1126 (derivationStepZipper!1126 ((_ map or) lt!2155338 lt!2155333) (head!11282 (t!374123 s!2326))) (head!11282 (tail!10379 (t!374123 s!2326)))) (tail!10379 (tail!10379 (t!374123 s!2326)))))))

(assert (= (and d!1693837 c!910957) b!5262210))

(assert (= (and d!1693837 (not c!910957)) b!5262211))

(assert (=> d!1693837 m!6302726))

(assert (=> d!1693837 m!6303332))

(assert (=> b!5262210 m!6302732))

(declare-fun m!6303544 () Bool)

(assert (=> b!5262210 m!6303544))

(assert (=> b!5262211 m!6302726))

(assert (=> b!5262211 m!6303336))

(assert (=> b!5262211 m!6302732))

(assert (=> b!5262211 m!6303336))

(declare-fun m!6303546 () Bool)

(assert (=> b!5262211 m!6303546))

(assert (=> b!5262211 m!6302726))

(assert (=> b!5262211 m!6303340))

(assert (=> b!5262211 m!6303546))

(assert (=> b!5262211 m!6303340))

(declare-fun m!6303548 () Bool)

(assert (=> b!5262211 m!6303548))

(assert (=> b!5261283 d!1693837))

(declare-fun bs!1219980 () Bool)

(declare-fun d!1693839 () Bool)

(assert (= bs!1219980 (and d!1693839 b!5260610)))

(declare-fun lambda!265318 () Int)

(assert (=> bs!1219980 (= (= (head!11282 (t!374123 s!2326)) (h!67262 s!2326)) (= lambda!265318 lambda!265207))))

(declare-fun bs!1219981 () Bool)

(assert (= bs!1219981 (and d!1693839 d!1693725)))

(assert (=> bs!1219981 (= lambda!265318 lambda!265303)))

(assert (=> d!1693839 true))

(assert (=> d!1693839 (= (derivationStepZipper!1126 ((_ map or) lt!2155338 lt!2155333) (head!11282 (t!374123 s!2326))) (flatMap!606 ((_ map or) lt!2155338 lt!2155333) lambda!265318))))

(declare-fun bs!1219982 () Bool)

(assert (= bs!1219982 d!1693839))

(declare-fun m!6303550 () Bool)

(assert (=> bs!1219982 m!6303550))

(assert (=> b!5261283 d!1693839))

(assert (=> b!5261283 d!1693727))

(assert (=> b!5261283 d!1693729))

(declare-fun d!1693841 () Bool)

(declare-fun c!910960 () Bool)

(assert (=> d!1693841 (= c!910960 ((_ is Nil!60813) lt!2155407))))

(declare-fun e!3273294 () (InoxSet Context!8526))

(assert (=> d!1693841 (= (content!10806 lt!2155407) e!3273294)))

(declare-fun b!5262216 () Bool)

(assert (=> b!5262216 (= e!3273294 ((as const (Array Context!8526 Bool)) false))))

(declare-fun b!5262217 () Bool)

(assert (=> b!5262217 (= e!3273294 ((_ map or) (store ((as const (Array Context!8526 Bool)) false) (h!67261 lt!2155407) true) (content!10806 (t!374122 lt!2155407))))))

(assert (= (and d!1693841 c!910960) b!5262216))

(assert (= (and d!1693841 (not c!910960)) b!5262217))

(declare-fun m!6303552 () Bool)

(assert (=> b!5262217 m!6303552))

(declare-fun m!6303554 () Bool)

(assert (=> b!5262217 m!6303554))

(assert (=> b!5261170 d!1693841))

(declare-fun d!1693843 () Bool)

(assert (=> d!1693843 (= (isUnion!257 lt!2155413) ((_ is Union!14879) lt!2155413))))

(assert (=> b!5261250 d!1693843))

(assert (=> bs!1219758 d!1693393))

(declare-fun d!1693845 () Bool)

(assert (=> d!1693845 (= (isEmptyLang!825 lt!2155413) ((_ is EmptyLang!14879) lt!2155413))))

(assert (=> b!5261252 d!1693845))

(declare-fun d!1693847 () Bool)

(assert (=> d!1693847 (= (nullable!5048 r!7292) (nullableFct!1434 r!7292))))

(declare-fun bs!1219983 () Bool)

(assert (= bs!1219983 d!1693847))

(declare-fun m!6303556 () Bool)

(assert (=> bs!1219983 m!6303556))

(assert (=> b!5261162 d!1693847))

(declare-fun d!1693849 () Bool)

(assert (=> d!1693849 true))

(assert (=> d!1693849 true))

(declare-fun res!2232921 () Bool)

(assert (=> d!1693849 (= (choose!39250 lambda!265206) res!2232921)))

(assert (=> d!1693431 d!1693849))

(assert (=> b!5261164 d!1693695))

(assert (=> d!1693465 d!1693823))

(declare-fun d!1693851 () Bool)

(declare-fun c!910961 () Bool)

(assert (=> d!1693851 (= c!910961 (isEmpty!32760 (tail!10379 (t!374123 s!2326))))))

(declare-fun e!3273295 () Bool)

(assert (=> d!1693851 (= (matchZipper!1123 (derivationStepZipper!1126 lt!2155333 (head!11282 (t!374123 s!2326))) (tail!10379 (t!374123 s!2326))) e!3273295)))

(declare-fun b!5262218 () Bool)

(assert (=> b!5262218 (= e!3273295 (nullableZipper!1282 (derivationStepZipper!1126 lt!2155333 (head!11282 (t!374123 s!2326)))))))

(declare-fun b!5262219 () Bool)

(assert (=> b!5262219 (= e!3273295 (matchZipper!1123 (derivationStepZipper!1126 (derivationStepZipper!1126 lt!2155333 (head!11282 (t!374123 s!2326))) (head!11282 (tail!10379 (t!374123 s!2326)))) (tail!10379 (tail!10379 (t!374123 s!2326)))))))

(assert (= (and d!1693851 c!910961) b!5262218))

(assert (= (and d!1693851 (not c!910961)) b!5262219))

(assert (=> d!1693851 m!6302726))

(assert (=> d!1693851 m!6303332))

(assert (=> b!5262218 m!6302740))

(declare-fun m!6303558 () Bool)

(assert (=> b!5262218 m!6303558))

(assert (=> b!5262219 m!6302726))

(assert (=> b!5262219 m!6303336))

(assert (=> b!5262219 m!6302740))

(assert (=> b!5262219 m!6303336))

(declare-fun m!6303560 () Bool)

(assert (=> b!5262219 m!6303560))

(assert (=> b!5262219 m!6302726))

(assert (=> b!5262219 m!6303340))

(assert (=> b!5262219 m!6303560))

(assert (=> b!5262219 m!6303340))

(declare-fun m!6303562 () Bool)

(assert (=> b!5262219 m!6303562))

(assert (=> b!5261285 d!1693851))

(declare-fun bs!1219984 () Bool)

(declare-fun d!1693853 () Bool)

(assert (= bs!1219984 (and d!1693853 b!5260610)))

(declare-fun lambda!265319 () Int)

(assert (=> bs!1219984 (= (= (head!11282 (t!374123 s!2326)) (h!67262 s!2326)) (= lambda!265319 lambda!265207))))

(declare-fun bs!1219985 () Bool)

(assert (= bs!1219985 (and d!1693853 d!1693725)))

(assert (=> bs!1219985 (= lambda!265319 lambda!265303)))

(declare-fun bs!1219986 () Bool)

(assert (= bs!1219986 (and d!1693853 d!1693839)))

(assert (=> bs!1219986 (= lambda!265319 lambda!265318)))

(assert (=> d!1693853 true))

(assert (=> d!1693853 (= (derivationStepZipper!1126 lt!2155333 (head!11282 (t!374123 s!2326))) (flatMap!606 lt!2155333 lambda!265319))))

(declare-fun bs!1219987 () Bool)

(assert (= bs!1219987 d!1693853))

(declare-fun m!6303564 () Bool)

(assert (=> bs!1219987 m!6303564))

(assert (=> b!5261285 d!1693853))

(assert (=> b!5261285 d!1693727))

(assert (=> b!5261285 d!1693729))

(declare-fun d!1693855 () Bool)

(assert (=> d!1693855 (= (isConcat!340 lt!2155410) ((_ is Concat!23724) lt!2155410))))

(assert (=> b!5261195 d!1693855))

(declare-fun bm!373229 () Bool)

(declare-fun call!373234 () Bool)

(assert (=> bm!373229 (= call!373234 (isEmpty!32760 (tail!10379 s!2326)))))

(declare-fun b!5262220 () Bool)

(declare-fun e!3273298 () Bool)

(declare-fun e!3273297 () Bool)

(assert (=> b!5262220 (= e!3273298 e!3273297)))

(declare-fun res!2232929 () Bool)

(assert (=> b!5262220 (=> (not res!2232929) (not e!3273297))))

(declare-fun lt!2155463 () Bool)

(assert (=> b!5262220 (= res!2232929 (not lt!2155463))))

(declare-fun b!5262221 () Bool)

(declare-fun res!2232922 () Bool)

(declare-fun e!3273300 () Bool)

(assert (=> b!5262221 (=> res!2232922 e!3273300)))

(assert (=> b!5262221 (= res!2232922 (not (isEmpty!32760 (tail!10379 (tail!10379 s!2326)))))))

(declare-fun d!1693857 () Bool)

(declare-fun e!3273296 () Bool)

(assert (=> d!1693857 e!3273296))

(declare-fun c!910964 () Bool)

(assert (=> d!1693857 (= c!910964 ((_ is EmptyExpr!14879) (derivativeStep!4103 r!7292 (head!11282 s!2326))))))

(declare-fun e!3273301 () Bool)

(assert (=> d!1693857 (= lt!2155463 e!3273301)))

(declare-fun c!910963 () Bool)

(assert (=> d!1693857 (= c!910963 (isEmpty!32760 (tail!10379 s!2326)))))

(assert (=> d!1693857 (validRegex!6615 (derivativeStep!4103 r!7292 (head!11282 s!2326)))))

(assert (=> d!1693857 (= (matchR!7064 (derivativeStep!4103 r!7292 (head!11282 s!2326)) (tail!10379 s!2326)) lt!2155463)))

(declare-fun b!5262222 () Bool)

(assert (=> b!5262222 (= e!3273300 (not (= (head!11282 (tail!10379 s!2326)) (c!910565 (derivativeStep!4103 r!7292 (head!11282 s!2326))))))))

(declare-fun b!5262223 () Bool)

(declare-fun res!2232927 () Bool)

(declare-fun e!3273302 () Bool)

(assert (=> b!5262223 (=> (not res!2232927) (not e!3273302))))

(assert (=> b!5262223 (= res!2232927 (isEmpty!32760 (tail!10379 (tail!10379 s!2326))))))

(declare-fun b!5262224 () Bool)

(declare-fun e!3273299 () Bool)

(assert (=> b!5262224 (= e!3273296 e!3273299)))

(declare-fun c!910962 () Bool)

(assert (=> b!5262224 (= c!910962 ((_ is EmptyLang!14879) (derivativeStep!4103 r!7292 (head!11282 s!2326))))))

(declare-fun b!5262225 () Bool)

(assert (=> b!5262225 (= e!3273299 (not lt!2155463))))

(declare-fun b!5262226 () Bool)

(assert (=> b!5262226 (= e!3273301 (matchR!7064 (derivativeStep!4103 (derivativeStep!4103 r!7292 (head!11282 s!2326)) (head!11282 (tail!10379 s!2326))) (tail!10379 (tail!10379 s!2326))))))

(declare-fun b!5262227 () Bool)

(assert (=> b!5262227 (= e!3273296 (= lt!2155463 call!373234))))

(declare-fun b!5262228 () Bool)

(assert (=> b!5262228 (= e!3273301 (nullable!5048 (derivativeStep!4103 r!7292 (head!11282 s!2326))))))

(declare-fun b!5262229 () Bool)

(assert (=> b!5262229 (= e!3273297 e!3273300)))

(declare-fun res!2232926 () Bool)

(assert (=> b!5262229 (=> res!2232926 e!3273300)))

(assert (=> b!5262229 (= res!2232926 call!373234)))

(declare-fun b!5262230 () Bool)

(assert (=> b!5262230 (= e!3273302 (= (head!11282 (tail!10379 s!2326)) (c!910565 (derivativeStep!4103 r!7292 (head!11282 s!2326)))))))

(declare-fun b!5262231 () Bool)

(declare-fun res!2232928 () Bool)

(assert (=> b!5262231 (=> (not res!2232928) (not e!3273302))))

(assert (=> b!5262231 (= res!2232928 (not call!373234))))

(declare-fun b!5262232 () Bool)

(declare-fun res!2232925 () Bool)

(assert (=> b!5262232 (=> res!2232925 e!3273298)))

(assert (=> b!5262232 (= res!2232925 (not ((_ is ElementMatch!14879) (derivativeStep!4103 r!7292 (head!11282 s!2326)))))))

(assert (=> b!5262232 (= e!3273299 e!3273298)))

(declare-fun b!5262233 () Bool)

(declare-fun res!2232924 () Bool)

(assert (=> b!5262233 (=> res!2232924 e!3273298)))

(assert (=> b!5262233 (= res!2232924 e!3273302)))

(declare-fun res!2232923 () Bool)

(assert (=> b!5262233 (=> (not res!2232923) (not e!3273302))))

(assert (=> b!5262233 (= res!2232923 lt!2155463)))

(assert (= (and d!1693857 c!910963) b!5262228))

(assert (= (and d!1693857 (not c!910963)) b!5262226))

(assert (= (and d!1693857 c!910964) b!5262227))

(assert (= (and d!1693857 (not c!910964)) b!5262224))

(assert (= (and b!5262224 c!910962) b!5262225))

(assert (= (and b!5262224 (not c!910962)) b!5262232))

(assert (= (and b!5262232 (not res!2232925)) b!5262233))

(assert (= (and b!5262233 res!2232923) b!5262231))

(assert (= (and b!5262231 res!2232928) b!5262223))

(assert (= (and b!5262223 res!2232927) b!5262230))

(assert (= (and b!5262233 (not res!2232924)) b!5262220))

(assert (= (and b!5262220 res!2232929) b!5262229))

(assert (= (and b!5262229 (not res!2232926)) b!5262221))

(assert (= (and b!5262221 (not res!2232922)) b!5262222))

(assert (= (or b!5262227 b!5262229 b!5262231) bm!373229))

(assert (=> b!5262222 m!6302642))

(declare-fun m!6303566 () Bool)

(assert (=> b!5262222 m!6303566))

(assert (=> b!5262221 m!6302642))

(declare-fun m!6303568 () Bool)

(assert (=> b!5262221 m!6303568))

(assert (=> b!5262221 m!6303568))

(declare-fun m!6303570 () Bool)

(assert (=> b!5262221 m!6303570))

(assert (=> bm!373229 m!6302642))

(assert (=> bm!373229 m!6302644))

(assert (=> d!1693857 m!6302642))

(assert (=> d!1693857 m!6302644))

(assert (=> d!1693857 m!6302648))

(declare-fun m!6303572 () Bool)

(assert (=> d!1693857 m!6303572))

(assert (=> b!5262228 m!6302648))

(declare-fun m!6303574 () Bool)

(assert (=> b!5262228 m!6303574))

(assert (=> b!5262226 m!6302642))

(assert (=> b!5262226 m!6303566))

(assert (=> b!5262226 m!6302648))

(assert (=> b!5262226 m!6303566))

(declare-fun m!6303576 () Bool)

(assert (=> b!5262226 m!6303576))

(assert (=> b!5262226 m!6302642))

(assert (=> b!5262226 m!6303568))

(assert (=> b!5262226 m!6303576))

(assert (=> b!5262226 m!6303568))

(declare-fun m!6303578 () Bool)

(assert (=> b!5262226 m!6303578))

(assert (=> b!5262223 m!6302642))

(assert (=> b!5262223 m!6303568))

(assert (=> b!5262223 m!6303568))

(assert (=> b!5262223 m!6303570))

(assert (=> b!5262230 m!6302642))

(assert (=> b!5262230 m!6303566))

(assert (=> b!5261160 d!1693857))

(declare-fun b!5262254 () Bool)

(declare-fun e!3273316 () Regex!14879)

(assert (=> b!5262254 (= e!3273316 EmptyLang!14879)))

(declare-fun bm!373238 () Bool)

(declare-fun call!373245 () Regex!14879)

(declare-fun call!373246 () Regex!14879)

(assert (=> bm!373238 (= call!373245 call!373246)))

(declare-fun bm!373239 () Bool)

(declare-fun call!373244 () Regex!14879)

(assert (=> bm!373239 (= call!373246 call!373244)))

(declare-fun b!5262256 () Bool)

(declare-fun e!3273315 () Regex!14879)

(assert (=> b!5262256 (= e!3273315 (Concat!23724 call!373246 r!7292))))

(declare-fun b!5262257 () Bool)

(declare-fun c!910975 () Bool)

(assert (=> b!5262257 (= c!910975 ((_ is Union!14879) r!7292))))

(declare-fun e!3273313 () Regex!14879)

(declare-fun e!3273317 () Regex!14879)

(assert (=> b!5262257 (= e!3273313 e!3273317)))

(declare-fun b!5262258 () Bool)

(assert (=> b!5262258 (= e!3273313 (ite (= (head!11282 s!2326) (c!910565 r!7292)) EmptyExpr!14879 EmptyLang!14879))))

(declare-fun b!5262259 () Bool)

(declare-fun c!910978 () Bool)

(assert (=> b!5262259 (= c!910978 (nullable!5048 (regOne!30270 r!7292)))))

(declare-fun e!3273314 () Regex!14879)

(assert (=> b!5262259 (= e!3273315 e!3273314)))

(declare-fun call!373243 () Regex!14879)

(declare-fun bm!373240 () Bool)

(assert (=> bm!373240 (= call!373243 (derivativeStep!4103 (ite c!910975 (regOne!30271 r!7292) (regOne!30270 r!7292)) (head!11282 s!2326)))))

(declare-fun b!5262260 () Bool)

(assert (=> b!5262260 (= e!3273317 (Union!14879 call!373243 call!373244))))

(declare-fun b!5262261 () Bool)

(assert (=> b!5262261 (= e!3273316 e!3273313)))

(declare-fun c!910977 () Bool)

(assert (=> b!5262261 (= c!910977 ((_ is ElementMatch!14879) r!7292))))

(declare-fun bm!373241 () Bool)

(declare-fun c!910976 () Bool)

(assert (=> bm!373241 (= call!373244 (derivativeStep!4103 (ite c!910975 (regTwo!30271 r!7292) (ite c!910976 (reg!15208 r!7292) (ite c!910978 (regTwo!30270 r!7292) (regOne!30270 r!7292)))) (head!11282 s!2326)))))

(declare-fun d!1693859 () Bool)

(declare-fun lt!2155466 () Regex!14879)

(assert (=> d!1693859 (validRegex!6615 lt!2155466)))

(assert (=> d!1693859 (= lt!2155466 e!3273316)))

(declare-fun c!910979 () Bool)

(assert (=> d!1693859 (= c!910979 (or ((_ is EmptyExpr!14879) r!7292) ((_ is EmptyLang!14879) r!7292)))))

(assert (=> d!1693859 (validRegex!6615 r!7292)))

(assert (=> d!1693859 (= (derivativeStep!4103 r!7292 (head!11282 s!2326)) lt!2155466)))

(declare-fun b!5262255 () Bool)

(assert (=> b!5262255 (= e!3273314 (Union!14879 (Concat!23724 call!373245 (regTwo!30270 r!7292)) EmptyLang!14879))))

(declare-fun b!5262262 () Bool)

(assert (=> b!5262262 (= e!3273314 (Union!14879 (Concat!23724 call!373243 (regTwo!30270 r!7292)) call!373245))))

(declare-fun b!5262263 () Bool)

(assert (=> b!5262263 (= e!3273317 e!3273315)))

(assert (=> b!5262263 (= c!910976 ((_ is Star!14879) r!7292))))

(assert (= (and d!1693859 c!910979) b!5262254))

(assert (= (and d!1693859 (not c!910979)) b!5262261))

(assert (= (and b!5262261 c!910977) b!5262258))

(assert (= (and b!5262261 (not c!910977)) b!5262257))

(assert (= (and b!5262257 c!910975) b!5262260))

(assert (= (and b!5262257 (not c!910975)) b!5262263))

(assert (= (and b!5262263 c!910976) b!5262256))

(assert (= (and b!5262263 (not c!910976)) b!5262259))

(assert (= (and b!5262259 c!910978) b!5262262))

(assert (= (and b!5262259 (not c!910978)) b!5262255))

(assert (= (or b!5262262 b!5262255) bm!373238))

(assert (= (or b!5262256 bm!373238) bm!373239))

(assert (= (or b!5262260 bm!373239) bm!373241))

(assert (= (or b!5262260 b!5262262) bm!373240))

(assert (=> b!5262259 m!6303314))

(assert (=> bm!373240 m!6302640))

(declare-fun m!6303580 () Bool)

(assert (=> bm!373240 m!6303580))

(assert (=> bm!373241 m!6302640))

(declare-fun m!6303582 () Bool)

(assert (=> bm!373241 m!6303582))

(declare-fun m!6303584 () Bool)

(assert (=> d!1693859 m!6303584))

(assert (=> d!1693859 m!6302330))

(assert (=> b!5261160 d!1693859))

(assert (=> b!5261160 d!1693695))

(assert (=> b!5261160 d!1693787))

(declare-fun d!1693861 () Bool)

(assert (=> d!1693861 (= (Exists!2060 (ite c!910697 lambda!265253 lambda!265254)) (choose!39250 (ite c!910697 lambda!265253 lambda!265254)))))

(declare-fun bs!1219988 () Bool)

(assert (= bs!1219988 d!1693861))

(declare-fun m!6303586 () Bool)

(assert (=> bs!1219988 m!6303586))

(assert (=> bm!373054 d!1693861))

(assert (=> d!1693445 d!1693443))

(assert (=> d!1693445 d!1693441))

(declare-fun d!1693863 () Bool)

(assert (=> d!1693863 (= (matchR!7064 r!7292 s!2326) (matchRSpec!1982 r!7292 s!2326))))

(assert (=> d!1693863 true))

(declare-fun _$88!3538 () Unit!153034)

(assert (=> d!1693863 (= (choose!39253 r!7292 s!2326) _$88!3538)))

(declare-fun bs!1219989 () Bool)

(assert (= bs!1219989 d!1693863))

(assert (=> bs!1219989 m!6302340))

(assert (=> bs!1219989 m!6302338))

(assert (=> d!1693445 d!1693863))

(assert (=> d!1693445 d!1693457))

(assert (=> d!1693469 d!1693823))

(declare-fun b!5262266 () Bool)

(declare-fun e!3273318 () Bool)

(declare-fun tp!1471021 () Bool)

(assert (=> b!5262266 (= e!3273318 tp!1471021)))

(declare-fun b!5262264 () Bool)

(assert (=> b!5262264 (= e!3273318 tp_is_empty!39011)))

(assert (=> b!5261316 (= tp!1470816 e!3273318)))

(declare-fun b!5262267 () Bool)

(declare-fun tp!1471019 () Bool)

(declare-fun tp!1471022 () Bool)

(assert (=> b!5262267 (= e!3273318 (and tp!1471019 tp!1471022))))

(declare-fun b!5262265 () Bool)

(declare-fun tp!1471018 () Bool)

(declare-fun tp!1471020 () Bool)

(assert (=> b!5262265 (= e!3273318 (and tp!1471018 tp!1471020))))

(assert (= (and b!5261316 ((_ is ElementMatch!14879) (regOne!30271 (regTwo!30271 r!7292)))) b!5262264))

(assert (= (and b!5261316 ((_ is Concat!23724) (regOne!30271 (regTwo!30271 r!7292)))) b!5262265))

(assert (= (and b!5261316 ((_ is Star!14879) (regOne!30271 (regTwo!30271 r!7292)))) b!5262266))

(assert (= (and b!5261316 ((_ is Union!14879) (regOne!30271 (regTwo!30271 r!7292)))) b!5262267))

(declare-fun b!5262270 () Bool)

(declare-fun e!3273319 () Bool)

(declare-fun tp!1471026 () Bool)

(assert (=> b!5262270 (= e!3273319 tp!1471026)))

(declare-fun b!5262268 () Bool)

(assert (=> b!5262268 (= e!3273319 tp_is_empty!39011)))

(assert (=> b!5261316 (= tp!1470819 e!3273319)))

(declare-fun b!5262271 () Bool)

(declare-fun tp!1471024 () Bool)

(declare-fun tp!1471027 () Bool)

(assert (=> b!5262271 (= e!3273319 (and tp!1471024 tp!1471027))))

(declare-fun b!5262269 () Bool)

(declare-fun tp!1471023 () Bool)

(declare-fun tp!1471025 () Bool)

(assert (=> b!5262269 (= e!3273319 (and tp!1471023 tp!1471025))))

(assert (= (and b!5261316 ((_ is ElementMatch!14879) (regTwo!30271 (regTwo!30271 r!7292)))) b!5262268))

(assert (= (and b!5261316 ((_ is Concat!23724) (regTwo!30271 (regTwo!30271 r!7292)))) b!5262269))

(assert (= (and b!5261316 ((_ is Star!14879) (regTwo!30271 (regTwo!30271 r!7292)))) b!5262270))

(assert (= (and b!5261316 ((_ is Union!14879) (regTwo!30271 (regTwo!30271 r!7292)))) b!5262271))

(declare-fun b!5262274 () Bool)

(declare-fun e!3273320 () Bool)

(declare-fun tp!1471031 () Bool)

(assert (=> b!5262274 (= e!3273320 tp!1471031)))

(declare-fun b!5262272 () Bool)

(assert (=> b!5262272 (= e!3273320 tp_is_empty!39011)))

(assert (=> b!5261314 (= tp!1470815 e!3273320)))

(declare-fun b!5262275 () Bool)

(declare-fun tp!1471029 () Bool)

(declare-fun tp!1471032 () Bool)

(assert (=> b!5262275 (= e!3273320 (and tp!1471029 tp!1471032))))

(declare-fun b!5262273 () Bool)

(declare-fun tp!1471028 () Bool)

(declare-fun tp!1471030 () Bool)

(assert (=> b!5262273 (= e!3273320 (and tp!1471028 tp!1471030))))

(assert (= (and b!5261314 ((_ is ElementMatch!14879) (regOne!30270 (regTwo!30271 r!7292)))) b!5262272))

(assert (= (and b!5261314 ((_ is Concat!23724) (regOne!30270 (regTwo!30271 r!7292)))) b!5262273))

(assert (= (and b!5261314 ((_ is Star!14879) (regOne!30270 (regTwo!30271 r!7292)))) b!5262274))

(assert (= (and b!5261314 ((_ is Union!14879) (regOne!30270 (regTwo!30271 r!7292)))) b!5262275))

(declare-fun b!5262278 () Bool)

(declare-fun e!3273321 () Bool)

(declare-fun tp!1471036 () Bool)

(assert (=> b!5262278 (= e!3273321 tp!1471036)))

(declare-fun b!5262276 () Bool)

(assert (=> b!5262276 (= e!3273321 tp_is_empty!39011)))

(assert (=> b!5261314 (= tp!1470817 e!3273321)))

(declare-fun b!5262279 () Bool)

(declare-fun tp!1471034 () Bool)

(declare-fun tp!1471037 () Bool)

(assert (=> b!5262279 (= e!3273321 (and tp!1471034 tp!1471037))))

(declare-fun b!5262277 () Bool)

(declare-fun tp!1471033 () Bool)

(declare-fun tp!1471035 () Bool)

(assert (=> b!5262277 (= e!3273321 (and tp!1471033 tp!1471035))))

(assert (= (and b!5261314 ((_ is ElementMatch!14879) (regTwo!30270 (regTwo!30271 r!7292)))) b!5262276))

(assert (= (and b!5261314 ((_ is Concat!23724) (regTwo!30270 (regTwo!30271 r!7292)))) b!5262277))

(assert (= (and b!5261314 ((_ is Star!14879) (regTwo!30270 (regTwo!30271 r!7292)))) b!5262278))

(assert (= (and b!5261314 ((_ is Union!14879) (regTwo!30270 (regTwo!30271 r!7292)))) b!5262279))

(declare-fun b!5262281 () Bool)

(declare-fun e!3273323 () Bool)

(declare-fun tp!1471038 () Bool)

(assert (=> b!5262281 (= e!3273323 tp!1471038)))

(declare-fun tp!1471039 () Bool)

(declare-fun b!5262280 () Bool)

(declare-fun e!3273322 () Bool)

(assert (=> b!5262280 (= e!3273322 (and (inv!80444 (h!67261 (t!374122 (t!374122 zl!343)))) e!3273323 tp!1471039))))

(assert (=> b!5261292 (= tp!1470793 e!3273322)))

(assert (= b!5262280 b!5262281))

(assert (= (and b!5261292 ((_ is Cons!60813) (t!374122 (t!374122 zl!343)))) b!5262280))

(declare-fun m!6303588 () Bool)

(assert (=> b!5262280 m!6303588))

(declare-fun b!5262284 () Bool)

(declare-fun e!3273324 () Bool)

(declare-fun tp!1471043 () Bool)

(assert (=> b!5262284 (= e!3273324 tp!1471043)))

(declare-fun b!5262282 () Bool)

(assert (=> b!5262282 (= e!3273324 tp_is_empty!39011)))

(assert (=> b!5261330 (= tp!1470836 e!3273324)))

(declare-fun b!5262285 () Bool)

(declare-fun tp!1471041 () Bool)

(declare-fun tp!1471044 () Bool)

(assert (=> b!5262285 (= e!3273324 (and tp!1471041 tp!1471044))))

(declare-fun b!5262283 () Bool)

(declare-fun tp!1471040 () Bool)

(declare-fun tp!1471042 () Bool)

(assert (=> b!5262283 (= e!3273324 (and tp!1471040 tp!1471042))))

(assert (= (and b!5261330 ((_ is ElementMatch!14879) (h!67260 (exprs!4763 setElem!33631)))) b!5262282))

(assert (= (and b!5261330 ((_ is Concat!23724) (h!67260 (exprs!4763 setElem!33631)))) b!5262283))

(assert (= (and b!5261330 ((_ is Star!14879) (h!67260 (exprs!4763 setElem!33631)))) b!5262284))

(assert (= (and b!5261330 ((_ is Union!14879) (h!67260 (exprs!4763 setElem!33631)))) b!5262285))

(declare-fun b!5262286 () Bool)

(declare-fun e!3273325 () Bool)

(declare-fun tp!1471045 () Bool)

(declare-fun tp!1471046 () Bool)

(assert (=> b!5262286 (= e!3273325 (and tp!1471045 tp!1471046))))

(assert (=> b!5261330 (= tp!1470837 e!3273325)))

(assert (= (and b!5261330 ((_ is Cons!60812) (t!374121 (exprs!4763 setElem!33631)))) b!5262286))

(declare-fun b!5262287 () Bool)

(declare-fun e!3273326 () Bool)

(declare-fun tp!1471047 () Bool)

(declare-fun tp!1471048 () Bool)

(assert (=> b!5262287 (= e!3273326 (and tp!1471047 tp!1471048))))

(assert (=> b!5261293 (= tp!1470792 e!3273326)))

(assert (= (and b!5261293 ((_ is Cons!60812) (exprs!4763 (h!67261 (t!374122 zl!343))))) b!5262287))

(declare-fun b!5262290 () Bool)

(declare-fun e!3273327 () Bool)

(declare-fun tp!1471052 () Bool)

(assert (=> b!5262290 (= e!3273327 tp!1471052)))

(declare-fun b!5262288 () Bool)

(assert (=> b!5262288 (= e!3273327 tp_is_empty!39011)))

(assert (=> b!5261315 (= tp!1470818 e!3273327)))

(declare-fun b!5262291 () Bool)

(declare-fun tp!1471050 () Bool)

(declare-fun tp!1471053 () Bool)

(assert (=> b!5262291 (= e!3273327 (and tp!1471050 tp!1471053))))

(declare-fun b!5262289 () Bool)

(declare-fun tp!1471049 () Bool)

(declare-fun tp!1471051 () Bool)

(assert (=> b!5262289 (= e!3273327 (and tp!1471049 tp!1471051))))

(assert (= (and b!5261315 ((_ is ElementMatch!14879) (reg!15208 (regTwo!30271 r!7292)))) b!5262288))

(assert (= (and b!5261315 ((_ is Concat!23724) (reg!15208 (regTwo!30271 r!7292)))) b!5262289))

(assert (= (and b!5261315 ((_ is Star!14879) (reg!15208 (regTwo!30271 r!7292)))) b!5262290))

(assert (= (and b!5261315 ((_ is Union!14879) (reg!15208 (regTwo!30271 r!7292)))) b!5262291))

(declare-fun b!5262292 () Bool)

(declare-fun e!3273328 () Bool)

(declare-fun tp!1471054 () Bool)

(declare-fun tp!1471055 () Bool)

(assert (=> b!5262292 (= e!3273328 (and tp!1471054 tp!1471055))))

(assert (=> b!5261298 (= tp!1470798 e!3273328)))

(assert (= (and b!5261298 ((_ is Cons!60812) (exprs!4763 setElem!33637))) b!5262292))

(declare-fun b!5262295 () Bool)

(declare-fun e!3273329 () Bool)

(declare-fun tp!1471059 () Bool)

(assert (=> b!5262295 (= e!3273329 tp!1471059)))

(declare-fun b!5262293 () Bool)

(assert (=> b!5262293 (= e!3273329 tp_is_empty!39011)))

(assert (=> b!5261328 (= tp!1470834 e!3273329)))

(declare-fun b!5262296 () Bool)

(declare-fun tp!1471057 () Bool)

(declare-fun tp!1471060 () Bool)

(assert (=> b!5262296 (= e!3273329 (and tp!1471057 tp!1471060))))

(declare-fun b!5262294 () Bool)

(declare-fun tp!1471056 () Bool)

(declare-fun tp!1471058 () Bool)

(assert (=> b!5262294 (= e!3273329 (and tp!1471056 tp!1471058))))

(assert (= (and b!5261328 ((_ is ElementMatch!14879) (reg!15208 (regTwo!30270 r!7292)))) b!5262293))

(assert (= (and b!5261328 ((_ is Concat!23724) (reg!15208 (regTwo!30270 r!7292)))) b!5262294))

(assert (= (and b!5261328 ((_ is Star!14879) (reg!15208 (regTwo!30270 r!7292)))) b!5262295))

(assert (= (and b!5261328 ((_ is Union!14879) (reg!15208 (regTwo!30270 r!7292)))) b!5262296))

(declare-fun b!5262299 () Bool)

(declare-fun e!3273330 () Bool)

(declare-fun tp!1471064 () Bool)

(assert (=> b!5262299 (= e!3273330 tp!1471064)))

(declare-fun b!5262297 () Bool)

(assert (=> b!5262297 (= e!3273330 tp_is_empty!39011)))

(assert (=> b!5261329 (= tp!1470832 e!3273330)))

(declare-fun b!5262300 () Bool)

(declare-fun tp!1471062 () Bool)

(declare-fun tp!1471065 () Bool)

(assert (=> b!5262300 (= e!3273330 (and tp!1471062 tp!1471065))))

(declare-fun b!5262298 () Bool)

(declare-fun tp!1471061 () Bool)

(declare-fun tp!1471063 () Bool)

(assert (=> b!5262298 (= e!3273330 (and tp!1471061 tp!1471063))))

(assert (= (and b!5261329 ((_ is ElementMatch!14879) (regOne!30271 (regTwo!30270 r!7292)))) b!5262297))

(assert (= (and b!5261329 ((_ is Concat!23724) (regOne!30271 (regTwo!30270 r!7292)))) b!5262298))

(assert (= (and b!5261329 ((_ is Star!14879) (regOne!30271 (regTwo!30270 r!7292)))) b!5262299))

(assert (= (and b!5261329 ((_ is Union!14879) (regOne!30271 (regTwo!30270 r!7292)))) b!5262300))

(declare-fun b!5262303 () Bool)

(declare-fun e!3273331 () Bool)

(declare-fun tp!1471069 () Bool)

(assert (=> b!5262303 (= e!3273331 tp!1471069)))

(declare-fun b!5262301 () Bool)

(assert (=> b!5262301 (= e!3273331 tp_is_empty!39011)))

(assert (=> b!5261329 (= tp!1470835 e!3273331)))

(declare-fun b!5262304 () Bool)

(declare-fun tp!1471067 () Bool)

(declare-fun tp!1471070 () Bool)

(assert (=> b!5262304 (= e!3273331 (and tp!1471067 tp!1471070))))

(declare-fun b!5262302 () Bool)

(declare-fun tp!1471066 () Bool)

(declare-fun tp!1471068 () Bool)

(assert (=> b!5262302 (= e!3273331 (and tp!1471066 tp!1471068))))

(assert (= (and b!5261329 ((_ is ElementMatch!14879) (regTwo!30271 (regTwo!30270 r!7292)))) b!5262301))

(assert (= (and b!5261329 ((_ is Concat!23724) (regTwo!30271 (regTwo!30270 r!7292)))) b!5262302))

(assert (= (and b!5261329 ((_ is Star!14879) (regTwo!30271 (regTwo!30270 r!7292)))) b!5262303))

(assert (= (and b!5261329 ((_ is Union!14879) (regTwo!30271 (regTwo!30270 r!7292)))) b!5262304))

(declare-fun b!5262307 () Bool)

(declare-fun e!3273332 () Bool)

(declare-fun tp!1471074 () Bool)

(assert (=> b!5262307 (= e!3273332 tp!1471074)))

(declare-fun b!5262305 () Bool)

(assert (=> b!5262305 (= e!3273332 tp_is_empty!39011)))

(assert (=> b!5261321 (= tp!1470824 e!3273332)))

(declare-fun b!5262308 () Bool)

(declare-fun tp!1471072 () Bool)

(declare-fun tp!1471075 () Bool)

(assert (=> b!5262308 (= e!3273332 (and tp!1471072 tp!1471075))))

(declare-fun b!5262306 () Bool)

(declare-fun tp!1471071 () Bool)

(declare-fun tp!1471073 () Bool)

(assert (=> b!5262306 (= e!3273332 (and tp!1471071 tp!1471073))))

(assert (= (and b!5261321 ((_ is ElementMatch!14879) (h!67260 (exprs!4763 (h!67261 zl!343))))) b!5262305))

(assert (= (and b!5261321 ((_ is Concat!23724) (h!67260 (exprs!4763 (h!67261 zl!343))))) b!5262306))

(assert (= (and b!5261321 ((_ is Star!14879) (h!67260 (exprs!4763 (h!67261 zl!343))))) b!5262307))

(assert (= (and b!5261321 ((_ is Union!14879) (h!67260 (exprs!4763 (h!67261 zl!343))))) b!5262308))

(declare-fun b!5262309 () Bool)

(declare-fun e!3273333 () Bool)

(declare-fun tp!1471076 () Bool)

(declare-fun tp!1471077 () Bool)

(assert (=> b!5262309 (= e!3273333 (and tp!1471076 tp!1471077))))

(assert (=> b!5261321 (= tp!1470825 e!3273333)))

(assert (= (and b!5261321 ((_ is Cons!60812) (t!374121 (exprs!4763 (h!67261 zl!343))))) b!5262309))

(declare-fun b!5262312 () Bool)

(declare-fun e!3273334 () Bool)

(declare-fun tp!1471081 () Bool)

(assert (=> b!5262312 (= e!3273334 tp!1471081)))

(declare-fun b!5262310 () Bool)

(assert (=> b!5262310 (= e!3273334 tp_is_empty!39011)))

(assert (=> b!5261327 (= tp!1470831 e!3273334)))

(declare-fun b!5262313 () Bool)

(declare-fun tp!1471079 () Bool)

(declare-fun tp!1471082 () Bool)

(assert (=> b!5262313 (= e!3273334 (and tp!1471079 tp!1471082))))

(declare-fun b!5262311 () Bool)

(declare-fun tp!1471078 () Bool)

(declare-fun tp!1471080 () Bool)

(assert (=> b!5262311 (= e!3273334 (and tp!1471078 tp!1471080))))

(assert (= (and b!5261327 ((_ is ElementMatch!14879) (regOne!30270 (regTwo!30270 r!7292)))) b!5262310))

(assert (= (and b!5261327 ((_ is Concat!23724) (regOne!30270 (regTwo!30270 r!7292)))) b!5262311))

(assert (= (and b!5261327 ((_ is Star!14879) (regOne!30270 (regTwo!30270 r!7292)))) b!5262312))

(assert (= (and b!5261327 ((_ is Union!14879) (regOne!30270 (regTwo!30270 r!7292)))) b!5262313))

(declare-fun b!5262316 () Bool)

(declare-fun e!3273335 () Bool)

(declare-fun tp!1471086 () Bool)

(assert (=> b!5262316 (= e!3273335 tp!1471086)))

(declare-fun b!5262314 () Bool)

(assert (=> b!5262314 (= e!3273335 tp_is_empty!39011)))

(assert (=> b!5261327 (= tp!1470833 e!3273335)))

(declare-fun b!5262317 () Bool)

(declare-fun tp!1471084 () Bool)

(declare-fun tp!1471087 () Bool)

(assert (=> b!5262317 (= e!3273335 (and tp!1471084 tp!1471087))))

(declare-fun b!5262315 () Bool)

(declare-fun tp!1471083 () Bool)

(declare-fun tp!1471085 () Bool)

(assert (=> b!5262315 (= e!3273335 (and tp!1471083 tp!1471085))))

(assert (= (and b!5261327 ((_ is ElementMatch!14879) (regTwo!30270 (regTwo!30270 r!7292)))) b!5262314))

(assert (= (and b!5261327 ((_ is Concat!23724) (regTwo!30270 (regTwo!30270 r!7292)))) b!5262315))

(assert (= (and b!5261327 ((_ is Star!14879) (regTwo!30270 (regTwo!30270 r!7292)))) b!5262316))

(assert (= (and b!5261327 ((_ is Union!14879) (regTwo!30270 (regTwo!30270 r!7292)))) b!5262317))

(declare-fun condSetEmpty!33645 () Bool)

(assert (=> setNonEmpty!33637 (= condSetEmpty!33645 (= setRest!33637 ((as const (Array Context!8526 Bool)) false)))))

(declare-fun setRes!33645 () Bool)

(assert (=> setNonEmpty!33637 (= tp!1470799 setRes!33645)))

(declare-fun setIsEmpty!33645 () Bool)

(assert (=> setIsEmpty!33645 setRes!33645))

(declare-fun setElem!33645 () Context!8526)

(declare-fun tp!1471089 () Bool)

(declare-fun e!3273336 () Bool)

(declare-fun setNonEmpty!33645 () Bool)

(assert (=> setNonEmpty!33645 (= setRes!33645 (and tp!1471089 (inv!80444 setElem!33645) e!3273336))))

(declare-fun setRest!33645 () (InoxSet Context!8526))

(assert (=> setNonEmpty!33645 (= setRest!33637 ((_ map or) (store ((as const (Array Context!8526 Bool)) false) setElem!33645 true) setRest!33645))))

(declare-fun b!5262318 () Bool)

(declare-fun tp!1471088 () Bool)

(assert (=> b!5262318 (= e!3273336 tp!1471088)))

(assert (= (and setNonEmpty!33637 condSetEmpty!33645) setIsEmpty!33645))

(assert (= (and setNonEmpty!33637 (not condSetEmpty!33645)) setNonEmpty!33645))

(assert (= setNonEmpty!33645 b!5262318))

(declare-fun m!6303590 () Bool)

(assert (=> setNonEmpty!33645 m!6303590))

(declare-fun b!5262321 () Bool)

(declare-fun e!3273337 () Bool)

(declare-fun tp!1471093 () Bool)

(assert (=> b!5262321 (= e!3273337 tp!1471093)))

(declare-fun b!5262319 () Bool)

(assert (=> b!5262319 (= e!3273337 tp_is_empty!39011)))

(assert (=> b!5261311 (= tp!1470813 e!3273337)))

(declare-fun b!5262322 () Bool)

(declare-fun tp!1471091 () Bool)

(declare-fun tp!1471094 () Bool)

(assert (=> b!5262322 (= e!3273337 (and tp!1471091 tp!1471094))))

(declare-fun b!5262320 () Bool)

(declare-fun tp!1471090 () Bool)

(declare-fun tp!1471092 () Bool)

(assert (=> b!5262320 (= e!3273337 (and tp!1471090 tp!1471092))))

(assert (= (and b!5261311 ((_ is ElementMatch!14879) (reg!15208 (regOne!30271 r!7292)))) b!5262319))

(assert (= (and b!5261311 ((_ is Concat!23724) (reg!15208 (regOne!30271 r!7292)))) b!5262320))

(assert (= (and b!5261311 ((_ is Star!14879) (reg!15208 (regOne!30271 r!7292)))) b!5262321))

(assert (= (and b!5261311 ((_ is Union!14879) (reg!15208 (regOne!30271 r!7292)))) b!5262322))

(declare-fun b!5262325 () Bool)

(declare-fun e!3273338 () Bool)

(declare-fun tp!1471098 () Bool)

(assert (=> b!5262325 (= e!3273338 tp!1471098)))

(declare-fun b!5262323 () Bool)

(assert (=> b!5262323 (= e!3273338 tp_is_empty!39011)))

(assert (=> b!5261312 (= tp!1470811 e!3273338)))

(declare-fun b!5262326 () Bool)

(declare-fun tp!1471096 () Bool)

(declare-fun tp!1471099 () Bool)

(assert (=> b!5262326 (= e!3273338 (and tp!1471096 tp!1471099))))

(declare-fun b!5262324 () Bool)

(declare-fun tp!1471095 () Bool)

(declare-fun tp!1471097 () Bool)

(assert (=> b!5262324 (= e!3273338 (and tp!1471095 tp!1471097))))

(assert (= (and b!5261312 ((_ is ElementMatch!14879) (regOne!30271 (regOne!30271 r!7292)))) b!5262323))

(assert (= (and b!5261312 ((_ is Concat!23724) (regOne!30271 (regOne!30271 r!7292)))) b!5262324))

(assert (= (and b!5261312 ((_ is Star!14879) (regOne!30271 (regOne!30271 r!7292)))) b!5262325))

(assert (= (and b!5261312 ((_ is Union!14879) (regOne!30271 (regOne!30271 r!7292)))) b!5262326))

(declare-fun b!5262329 () Bool)

(declare-fun e!3273339 () Bool)

(declare-fun tp!1471103 () Bool)

(assert (=> b!5262329 (= e!3273339 tp!1471103)))

(declare-fun b!5262327 () Bool)

(assert (=> b!5262327 (= e!3273339 tp_is_empty!39011)))

(assert (=> b!5261312 (= tp!1470814 e!3273339)))

(declare-fun b!5262330 () Bool)

(declare-fun tp!1471101 () Bool)

(declare-fun tp!1471104 () Bool)

(assert (=> b!5262330 (= e!3273339 (and tp!1471101 tp!1471104))))

(declare-fun b!5262328 () Bool)

(declare-fun tp!1471100 () Bool)

(declare-fun tp!1471102 () Bool)

(assert (=> b!5262328 (= e!3273339 (and tp!1471100 tp!1471102))))

(assert (= (and b!5261312 ((_ is ElementMatch!14879) (regTwo!30271 (regOne!30271 r!7292)))) b!5262327))

(assert (= (and b!5261312 ((_ is Concat!23724) (regTwo!30271 (regOne!30271 r!7292)))) b!5262328))

(assert (= (and b!5261312 ((_ is Star!14879) (regTwo!30271 (regOne!30271 r!7292)))) b!5262329))

(assert (= (and b!5261312 ((_ is Union!14879) (regTwo!30271 (regOne!30271 r!7292)))) b!5262330))

(declare-fun b!5262333 () Bool)

(declare-fun e!3273340 () Bool)

(declare-fun tp!1471108 () Bool)

(assert (=> b!5262333 (= e!3273340 tp!1471108)))

(declare-fun b!5262331 () Bool)

(assert (=> b!5262331 (= e!3273340 tp_is_empty!39011)))

(assert (=> b!5261333 (= tp!1470841 e!3273340)))

(declare-fun b!5262334 () Bool)

(declare-fun tp!1471106 () Bool)

(declare-fun tp!1471109 () Bool)

(assert (=> b!5262334 (= e!3273340 (and tp!1471106 tp!1471109))))

(declare-fun b!5262332 () Bool)

(declare-fun tp!1471105 () Bool)

(declare-fun tp!1471107 () Bool)

(assert (=> b!5262332 (= e!3273340 (and tp!1471105 tp!1471107))))

(assert (= (and b!5261333 ((_ is ElementMatch!14879) (reg!15208 (reg!15208 r!7292)))) b!5262331))

(assert (= (and b!5261333 ((_ is Concat!23724) (reg!15208 (reg!15208 r!7292)))) b!5262332))

(assert (= (and b!5261333 ((_ is Star!14879) (reg!15208 (reg!15208 r!7292)))) b!5262333))

(assert (= (and b!5261333 ((_ is Union!14879) (reg!15208 (reg!15208 r!7292)))) b!5262334))

(declare-fun b!5262337 () Bool)

(declare-fun e!3273341 () Bool)

(declare-fun tp!1471113 () Bool)

(assert (=> b!5262337 (= e!3273341 tp!1471113)))

(declare-fun b!5262335 () Bool)

(assert (=> b!5262335 (= e!3273341 tp_is_empty!39011)))

(assert (=> b!5261310 (= tp!1470810 e!3273341)))

(declare-fun b!5262338 () Bool)

(declare-fun tp!1471111 () Bool)

(declare-fun tp!1471114 () Bool)

(assert (=> b!5262338 (= e!3273341 (and tp!1471111 tp!1471114))))

(declare-fun b!5262336 () Bool)

(declare-fun tp!1471110 () Bool)

(declare-fun tp!1471112 () Bool)

(assert (=> b!5262336 (= e!3273341 (and tp!1471110 tp!1471112))))

(assert (= (and b!5261310 ((_ is ElementMatch!14879) (regOne!30270 (regOne!30271 r!7292)))) b!5262335))

(assert (= (and b!5261310 ((_ is Concat!23724) (regOne!30270 (regOne!30271 r!7292)))) b!5262336))

(assert (= (and b!5261310 ((_ is Star!14879) (regOne!30270 (regOne!30271 r!7292)))) b!5262337))

(assert (= (and b!5261310 ((_ is Union!14879) (regOne!30270 (regOne!30271 r!7292)))) b!5262338))

(declare-fun b!5262341 () Bool)

(declare-fun e!3273342 () Bool)

(declare-fun tp!1471118 () Bool)

(assert (=> b!5262341 (= e!3273342 tp!1471118)))

(declare-fun b!5262339 () Bool)

(assert (=> b!5262339 (= e!3273342 tp_is_empty!39011)))

(assert (=> b!5261310 (= tp!1470812 e!3273342)))

(declare-fun b!5262342 () Bool)

(declare-fun tp!1471116 () Bool)

(declare-fun tp!1471119 () Bool)

(assert (=> b!5262342 (= e!3273342 (and tp!1471116 tp!1471119))))

(declare-fun b!5262340 () Bool)

(declare-fun tp!1471115 () Bool)

(declare-fun tp!1471117 () Bool)

(assert (=> b!5262340 (= e!3273342 (and tp!1471115 tp!1471117))))

(assert (= (and b!5261310 ((_ is ElementMatch!14879) (regTwo!30270 (regOne!30271 r!7292)))) b!5262339))

(assert (= (and b!5261310 ((_ is Concat!23724) (regTwo!30270 (regOne!30271 r!7292)))) b!5262340))

(assert (= (and b!5261310 ((_ is Star!14879) (regTwo!30270 (regOne!30271 r!7292)))) b!5262341))

(assert (= (and b!5261310 ((_ is Union!14879) (regTwo!30270 (regOne!30271 r!7292)))) b!5262342))

(declare-fun b!5262345 () Bool)

(declare-fun e!3273343 () Bool)

(declare-fun tp!1471123 () Bool)

(assert (=> b!5262345 (= e!3273343 tp!1471123)))

(declare-fun b!5262343 () Bool)

(assert (=> b!5262343 (= e!3273343 tp_is_empty!39011)))

(assert (=> b!5261334 (= tp!1470839 e!3273343)))

(declare-fun b!5262346 () Bool)

(declare-fun tp!1471121 () Bool)

(declare-fun tp!1471124 () Bool)

(assert (=> b!5262346 (= e!3273343 (and tp!1471121 tp!1471124))))

(declare-fun b!5262344 () Bool)

(declare-fun tp!1471120 () Bool)

(declare-fun tp!1471122 () Bool)

(assert (=> b!5262344 (= e!3273343 (and tp!1471120 tp!1471122))))

(assert (= (and b!5261334 ((_ is ElementMatch!14879) (regOne!30271 (reg!15208 r!7292)))) b!5262343))

(assert (= (and b!5261334 ((_ is Concat!23724) (regOne!30271 (reg!15208 r!7292)))) b!5262344))

(assert (= (and b!5261334 ((_ is Star!14879) (regOne!30271 (reg!15208 r!7292)))) b!5262345))

(assert (= (and b!5261334 ((_ is Union!14879) (regOne!30271 (reg!15208 r!7292)))) b!5262346))

(declare-fun b!5262349 () Bool)

(declare-fun e!3273344 () Bool)

(declare-fun tp!1471128 () Bool)

(assert (=> b!5262349 (= e!3273344 tp!1471128)))

(declare-fun b!5262347 () Bool)

(assert (=> b!5262347 (= e!3273344 tp_is_empty!39011)))

(assert (=> b!5261334 (= tp!1470842 e!3273344)))

(declare-fun b!5262350 () Bool)

(declare-fun tp!1471126 () Bool)

(declare-fun tp!1471129 () Bool)

(assert (=> b!5262350 (= e!3273344 (and tp!1471126 tp!1471129))))

(declare-fun b!5262348 () Bool)

(declare-fun tp!1471125 () Bool)

(declare-fun tp!1471127 () Bool)

(assert (=> b!5262348 (= e!3273344 (and tp!1471125 tp!1471127))))

(assert (= (and b!5261334 ((_ is ElementMatch!14879) (regTwo!30271 (reg!15208 r!7292)))) b!5262347))

(assert (= (and b!5261334 ((_ is Concat!23724) (regTwo!30271 (reg!15208 r!7292)))) b!5262348))

(assert (= (and b!5261334 ((_ is Star!14879) (regTwo!30271 (reg!15208 r!7292)))) b!5262349))

(assert (= (and b!5261334 ((_ is Union!14879) (regTwo!30271 (reg!15208 r!7292)))) b!5262350))

(declare-fun b!5262353 () Bool)

(declare-fun e!3273345 () Bool)

(declare-fun tp!1471133 () Bool)

(assert (=> b!5262353 (= e!3273345 tp!1471133)))

(declare-fun b!5262351 () Bool)

(assert (=> b!5262351 (= e!3273345 tp_is_empty!39011)))

(assert (=> b!5261324 (= tp!1470829 e!3273345)))

(declare-fun b!5262354 () Bool)

(declare-fun tp!1471131 () Bool)

(declare-fun tp!1471134 () Bool)

(assert (=> b!5262354 (= e!3273345 (and tp!1471131 tp!1471134))))

(declare-fun b!5262352 () Bool)

(declare-fun tp!1471130 () Bool)

(declare-fun tp!1471132 () Bool)

(assert (=> b!5262352 (= e!3273345 (and tp!1471130 tp!1471132))))

(assert (= (and b!5261324 ((_ is ElementMatch!14879) (reg!15208 (regOne!30270 r!7292)))) b!5262351))

(assert (= (and b!5261324 ((_ is Concat!23724) (reg!15208 (regOne!30270 r!7292)))) b!5262352))

(assert (= (and b!5261324 ((_ is Star!14879) (reg!15208 (regOne!30270 r!7292)))) b!5262353))

(assert (= (and b!5261324 ((_ is Union!14879) (reg!15208 (regOne!30270 r!7292)))) b!5262354))

(declare-fun b!5262357 () Bool)

(declare-fun e!3273346 () Bool)

(declare-fun tp!1471138 () Bool)

(assert (=> b!5262357 (= e!3273346 tp!1471138)))

(declare-fun b!5262355 () Bool)

(assert (=> b!5262355 (= e!3273346 tp_is_empty!39011)))

(assert (=> b!5261325 (= tp!1470827 e!3273346)))

(declare-fun b!5262358 () Bool)

(declare-fun tp!1471136 () Bool)

(declare-fun tp!1471139 () Bool)

(assert (=> b!5262358 (= e!3273346 (and tp!1471136 tp!1471139))))

(declare-fun b!5262356 () Bool)

(declare-fun tp!1471135 () Bool)

(declare-fun tp!1471137 () Bool)

(assert (=> b!5262356 (= e!3273346 (and tp!1471135 tp!1471137))))

(assert (= (and b!5261325 ((_ is ElementMatch!14879) (regOne!30271 (regOne!30270 r!7292)))) b!5262355))

(assert (= (and b!5261325 ((_ is Concat!23724) (regOne!30271 (regOne!30270 r!7292)))) b!5262356))

(assert (= (and b!5261325 ((_ is Star!14879) (regOne!30271 (regOne!30270 r!7292)))) b!5262357))

(assert (= (and b!5261325 ((_ is Union!14879) (regOne!30271 (regOne!30270 r!7292)))) b!5262358))

(declare-fun b!5262361 () Bool)

(declare-fun e!3273347 () Bool)

(declare-fun tp!1471143 () Bool)

(assert (=> b!5262361 (= e!3273347 tp!1471143)))

(declare-fun b!5262359 () Bool)

(assert (=> b!5262359 (= e!3273347 tp_is_empty!39011)))

(assert (=> b!5261325 (= tp!1470830 e!3273347)))

(declare-fun b!5262362 () Bool)

(declare-fun tp!1471141 () Bool)

(declare-fun tp!1471144 () Bool)

(assert (=> b!5262362 (= e!3273347 (and tp!1471141 tp!1471144))))

(declare-fun b!5262360 () Bool)

(declare-fun tp!1471140 () Bool)

(declare-fun tp!1471142 () Bool)

(assert (=> b!5262360 (= e!3273347 (and tp!1471140 tp!1471142))))

(assert (= (and b!5261325 ((_ is ElementMatch!14879) (regTwo!30271 (regOne!30270 r!7292)))) b!5262359))

(assert (= (and b!5261325 ((_ is Concat!23724) (regTwo!30271 (regOne!30270 r!7292)))) b!5262360))

(assert (= (and b!5261325 ((_ is Star!14879) (regTwo!30271 (regOne!30270 r!7292)))) b!5262361))

(assert (= (and b!5261325 ((_ is Union!14879) (regTwo!30271 (regOne!30270 r!7292)))) b!5262362))

(declare-fun b!5262365 () Bool)

(declare-fun e!3273348 () Bool)

(declare-fun tp!1471148 () Bool)

(assert (=> b!5262365 (= e!3273348 tp!1471148)))

(declare-fun b!5262363 () Bool)

(assert (=> b!5262363 (= e!3273348 tp_is_empty!39011)))

(assert (=> b!5261332 (= tp!1470838 e!3273348)))

(declare-fun b!5262366 () Bool)

(declare-fun tp!1471146 () Bool)

(declare-fun tp!1471149 () Bool)

(assert (=> b!5262366 (= e!3273348 (and tp!1471146 tp!1471149))))

(declare-fun b!5262364 () Bool)

(declare-fun tp!1471145 () Bool)

(declare-fun tp!1471147 () Bool)

(assert (=> b!5262364 (= e!3273348 (and tp!1471145 tp!1471147))))

(assert (= (and b!5261332 ((_ is ElementMatch!14879) (regOne!30270 (reg!15208 r!7292)))) b!5262363))

(assert (= (and b!5261332 ((_ is Concat!23724) (regOne!30270 (reg!15208 r!7292)))) b!5262364))

(assert (= (and b!5261332 ((_ is Star!14879) (regOne!30270 (reg!15208 r!7292)))) b!5262365))

(assert (= (and b!5261332 ((_ is Union!14879) (regOne!30270 (reg!15208 r!7292)))) b!5262366))

(declare-fun b!5262369 () Bool)

(declare-fun e!3273349 () Bool)

(declare-fun tp!1471153 () Bool)

(assert (=> b!5262369 (= e!3273349 tp!1471153)))

(declare-fun b!5262367 () Bool)

(assert (=> b!5262367 (= e!3273349 tp_is_empty!39011)))

(assert (=> b!5261332 (= tp!1470840 e!3273349)))

(declare-fun b!5262370 () Bool)

(declare-fun tp!1471151 () Bool)

(declare-fun tp!1471154 () Bool)

(assert (=> b!5262370 (= e!3273349 (and tp!1471151 tp!1471154))))

(declare-fun b!5262368 () Bool)

(declare-fun tp!1471150 () Bool)

(declare-fun tp!1471152 () Bool)

(assert (=> b!5262368 (= e!3273349 (and tp!1471150 tp!1471152))))

(assert (= (and b!5261332 ((_ is ElementMatch!14879) (regTwo!30270 (reg!15208 r!7292)))) b!5262367))

(assert (= (and b!5261332 ((_ is Concat!23724) (regTwo!30270 (reg!15208 r!7292)))) b!5262368))

(assert (= (and b!5261332 ((_ is Star!14879) (regTwo!30270 (reg!15208 r!7292)))) b!5262369))

(assert (= (and b!5261332 ((_ is Union!14879) (regTwo!30270 (reg!15208 r!7292)))) b!5262370))

(declare-fun b!5262371 () Bool)

(declare-fun e!3273350 () Bool)

(declare-fun tp!1471155 () Bool)

(assert (=> b!5262371 (= e!3273350 (and tp_is_empty!39011 tp!1471155))))

(assert (=> b!5261339 (= tp!1470845 e!3273350)))

(assert (= (and b!5261339 ((_ is Cons!60814) (t!374123 (t!374123 s!2326)))) b!5262371))

(declare-fun b!5262374 () Bool)

(declare-fun e!3273351 () Bool)

(declare-fun tp!1471159 () Bool)

(assert (=> b!5262374 (= e!3273351 tp!1471159)))

(declare-fun b!5262372 () Bool)

(assert (=> b!5262372 (= e!3273351 tp_is_empty!39011)))

(assert (=> b!5261323 (= tp!1470826 e!3273351)))

(declare-fun b!5262375 () Bool)

(declare-fun tp!1471157 () Bool)

(declare-fun tp!1471160 () Bool)

(assert (=> b!5262375 (= e!3273351 (and tp!1471157 tp!1471160))))

(declare-fun b!5262373 () Bool)

(declare-fun tp!1471156 () Bool)

(declare-fun tp!1471158 () Bool)

(assert (=> b!5262373 (= e!3273351 (and tp!1471156 tp!1471158))))

(assert (= (and b!5261323 ((_ is ElementMatch!14879) (regOne!30270 (regOne!30270 r!7292)))) b!5262372))

(assert (= (and b!5261323 ((_ is Concat!23724) (regOne!30270 (regOne!30270 r!7292)))) b!5262373))

(assert (= (and b!5261323 ((_ is Star!14879) (regOne!30270 (regOne!30270 r!7292)))) b!5262374))

(assert (= (and b!5261323 ((_ is Union!14879) (regOne!30270 (regOne!30270 r!7292)))) b!5262375))

(declare-fun b!5262378 () Bool)

(declare-fun e!3273352 () Bool)

(declare-fun tp!1471164 () Bool)

(assert (=> b!5262378 (= e!3273352 tp!1471164)))

(declare-fun b!5262376 () Bool)

(assert (=> b!5262376 (= e!3273352 tp_is_empty!39011)))

(assert (=> b!5261323 (= tp!1470828 e!3273352)))

(declare-fun b!5262379 () Bool)

(declare-fun tp!1471162 () Bool)

(declare-fun tp!1471165 () Bool)

(assert (=> b!5262379 (= e!3273352 (and tp!1471162 tp!1471165))))

(declare-fun b!5262377 () Bool)

(declare-fun tp!1471161 () Bool)

(declare-fun tp!1471163 () Bool)

(assert (=> b!5262377 (= e!3273352 (and tp!1471161 tp!1471163))))

(assert (= (and b!5261323 ((_ is ElementMatch!14879) (regTwo!30270 (regOne!30270 r!7292)))) b!5262376))

(assert (= (and b!5261323 ((_ is Concat!23724) (regTwo!30270 (regOne!30270 r!7292)))) b!5262377))

(assert (= (and b!5261323 ((_ is Star!14879) (regTwo!30270 (regOne!30270 r!7292)))) b!5262378))

(assert (= (and b!5261323 ((_ is Union!14879) (regTwo!30270 (regOne!30270 r!7292)))) b!5262379))

(declare-fun b_lambda!203049 () Bool)

(assert (= b_lambda!203043 (or d!1693455 b_lambda!203049)))

(declare-fun bs!1219990 () Bool)

(declare-fun d!1693865 () Bool)

(assert (= bs!1219990 (and d!1693865 d!1693455)))

(assert (=> bs!1219990 (= (dynLambda!24029 lambda!265263 (h!67260 lt!2155416)) (validRegex!6615 (h!67260 lt!2155416)))))

(declare-fun m!6303592 () Bool)

(assert (=> bs!1219990 m!6303592))

(assert (=> b!5262126 d!1693865))

(declare-fun b_lambda!203051 () Bool)

(assert (= b_lambda!203047 (or b!5260610 b_lambda!203051)))

(assert (=> d!1693815 d!1693473))

(declare-fun b_lambda!203053 () Bool)

(assert (= b_lambda!203037 (or d!1693405 b_lambda!203053)))

(declare-fun bs!1219991 () Bool)

(declare-fun d!1693867 () Bool)

(assert (= bs!1219991 (and d!1693867 d!1693405)))

(assert (=> bs!1219991 (= (dynLambda!24029 lambda!265239 (h!67260 (exprs!4763 setElem!33631))) (validRegex!6615 (h!67260 (exprs!4763 setElem!33631))))))

(declare-fun m!6303594 () Bool)

(assert (=> bs!1219991 m!6303594))

(assert (=> b!5261992 d!1693867))

(declare-fun b_lambda!203055 () Bool)

(assert (= b_lambda!203039 (or d!1693401 b_lambda!203055)))

(declare-fun bs!1219992 () Bool)

(declare-fun d!1693869 () Bool)

(assert (= bs!1219992 (and d!1693869 d!1693401)))

(assert (=> bs!1219992 (= (dynLambda!24029 lambda!265238 (h!67260 (exprs!4763 (h!67261 zl!343)))) (validRegex!6615 (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(declare-fun m!6303596 () Bool)

(assert (=> bs!1219992 m!6303596))

(assert (=> b!5262015 d!1693869))

(declare-fun b_lambda!203057 () Bool)

(assert (= b_lambda!203045 (or d!1693449 b_lambda!203057)))

(declare-fun bs!1219993 () Bool)

(declare-fun d!1693871 () Bool)

(assert (= bs!1219993 (and d!1693871 d!1693449)))

(assert (=> bs!1219993 (= (dynLambda!24029 lambda!265257 (h!67260 (exprs!4763 (h!67261 zl!343)))) (validRegex!6615 (h!67260 (exprs!4763 (h!67261 zl!343)))))))

(assert (=> bs!1219993 m!6303596))

(assert (=> b!5262151 d!1693871))

(declare-fun b_lambda!203059 () Bool)

(assert (= b_lambda!203041 (or d!1693453 b_lambda!203059)))

(declare-fun bs!1219994 () Bool)

(declare-fun d!1693873 () Bool)

(assert (= bs!1219994 (and d!1693873 d!1693453)))

(assert (=> bs!1219994 (= (dynLambda!24029 lambda!265260 (h!67260 (unfocusZipperList!321 zl!343))) (validRegex!6615 (h!67260 (unfocusZipperList!321 zl!343))))))

(declare-fun m!6303598 () Bool)

(assert (=> bs!1219994 m!6303598))

(assert (=> b!5262078 d!1693873))

(check-sat (not bm!373171) (not b!5262152) (not d!1693709) (not b!5262283) (not d!1693723) (not bm!373208) (not b!5262082) (not bm!373172) (not b!5262034) (not b!5261995) (not b!5262320) (not b!5262222) (not bm!373157) (not b!5261933) (not b!5262209) (not b!5262296) (not b!5262378) (not b!5261914) (not b!5262354) (not b!5261904) (not bm!373179) (not d!1693819) (not b!5262057) (not b!5262356) (not d!1693847) (not b!5262286) (not b!5262170) (not bm!373166) (not bm!373175) (not b!5261884) (not bm!373225) (not b!5261860) (not b!5262330) (not b!5262334) (not d!1693683) (not b!5262302) (not d!1693745) (not b!5262281) (not b!5262221) (not b!5261864) (not b_lambda!203055) (not bm!373181) (not b!5262043) (not bm!373221) (not setNonEmpty!33645) (not b!5262357) (not d!1693711) (not b!5262375) (not b!5262358) (not b!5262274) (not d!1693863) (not b!5262344) (not b!5262332) (not b!5262290) (not b!5262060) (not b!5262194) (not bm!373212) (not b!5262273) (not b!5262309) (not b!5261971) (not b!5261909) (not b!5261911) (not bm!373202) (not b!5261987) (not bm!373241) (not b!5262217) (not bm!373192) (not bm!373194) (not b!5262365) (not b!5262366) (not bm!373188) (not b!5262218) (not b!5261905) (not b!5262318) (not b!5261931) (not b!5262371) (not b!5262284) (not b!5262348) (not bs!1219993) (not d!1693781) (not b!5262136) (not b!5262285) (not b!5262016) (not bm!373191) (not b_lambda!203011) (not b!5262342) (not bm!373195) (not b!5262037) (not d!1693859) (not b!5261875) (not b!5262352) (not bm!373220) (not b!5262161) (not bm!373159) (not b!5262370) (not b!5262138) (not bs!1219992) (not d!1693763) (not b!5262308) (not d!1693735) (not b_lambda!203053) (not b!5262120) (not b!5261915) (not d!1693861) (not b!5261886) (not b!5261968) (not bm!373240) (not bm!373182) (not d!1693779) (not b!5261901) (not b!5262226) (not bm!373203) (not b!5262374) (not bs!1219991) (not b!5262193) (not bm!373178) (not d!1693827) (not bm!373190) (not b!5262287) (not b!5262325) (not b!5262295) (not b!5262068) (not bs!1219990) (not b!5261879) (not b!5262207) (not bm!373216) (not b!5262317) (not d!1693689) (not b!5262168) (not b!5261975) (not b!5261874) (not b!5262322) (not bm!373177) (not b!5262259) (not b!5261871) (not setNonEmpty!33644) (not b!5262188) (not b!5262150) (not b!5262326) (not d!1693853) (not b!5261865) (not b!5262307) (not b!5262228) (not d!1693707) (not bm!373227) (not b!5262368) (not bs!1219994) (not b!5262189) (not bm!373214) (not d!1693835) (not b!5261994) (not bm!373167) (not d!1693701) (not d!1693807) (not b!5262294) (not bm!373170) (not bm!373184) (not bm!373207) (not b!5261966) (not b!5262179) (not b!5262210) (not b!5262341) (not bm!373213) (not b!5262223) (not b!5261913) (not d!1693725) (not d!1693857) (not bm!373158) (not b!5262353) (not b!5262377) (not d!1693715) (not b!5261921) (not b!5262279) (not b!5262289) (not b!5261873) (not b!5262041) (not d!1693691) (not b!5262345) (not b!5262270) (not b!5262303) (not d!1693837) (not b!5262321) (not b!5262280) (not b!5262131) (not b!5262200) (not b_lambda!203059) (not b!5262230) (not b!5262304) (not b!5262163) (not bm!373217) (not b!5262265) (not bm!373187) (not b!5262292) (not b!5261877) tp_is_empty!39011 (not b!5262187) (not b!5262109) (not b!5261967) (not b!5262130) (not b!5262208) (not b!5262045) (not b!5262064) (not b!5262199) (not b!5262025) (not bm!373218) (not d!1693809) (not b!5262324) (not b!5262312) (not b!5262269) (not b!5262362) (not d!1693795) (not bm!373206) (not b!5262373) (not b!5262364) (not b!5262360) (not b!5262166) (not b_lambda!203057) (not b!5262306) (not d!1693679) (not b!5262338) (not b!5262300) (not b!5262329) (not b!5262316) (not bm!373222) (not d!1693741) (not b!5262059) (not d!1693831) (not b!5261940) (not bm!373174) (not b!5262337) (not d!1693687) (not b!5262271) (not b!5262349) (not bm!373162) (not b!5262079) (not b!5262291) (not b!5261973) (not bm!373226) (not b!5262298) (not b!5261900) (not b!5262333) (not bm!373196) (not b!5261946) (not b!5262315) (not b!5262278) (not d!1693839) (not b!5262036) (not b!5261910) (not b!5262062) (not bm!373185) (not b!5262311) (not d!1693767) (not d!1693685) (not b!5262219) (not b!5262266) (not b!5261960) (not b!5262134) (not b!5262313) (not b!5262038) (not d!1693733) (not b!5262190) (not b!5262129) (not b!5262336) (not b_lambda!203049) (not b!5262299) (not b!5262192) (not b!5261872) (not b!5262328) (not b!5261993) (not b!5262267) (not b!5262275) (not b!5262379) (not bm!373163) (not b!5262340) (not d!1693731) (not d!1693825) (not bm!373164) (not b!5261869) (not d!1693851) (not b!5262350) (not bm!373229) (not b_lambda!203051) (not d!1693737) (not b!5262346) (not b!5262277) (not d!1693805) (not b!5262127) (not b!5262369) (not bm!373156) (not b!5262361) (not b!5262014) (not d!1693815) (not b!5262162) (not b!5262211) (not b!5262077))
(check-sat)
