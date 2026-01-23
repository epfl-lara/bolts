; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!551066 () Bool)

(assert start!551066)

(declare-fun b!5209318 () Bool)

(assert (=> b!5209318 true))

(assert (=> b!5209318 true))

(declare-fun lambda!261184 () Int)

(declare-fun lambda!261183 () Int)

(assert (=> b!5209318 (not (= lambda!261184 lambda!261183))))

(assert (=> b!5209318 true))

(assert (=> b!5209318 true))

(declare-fun b!5209316 () Bool)

(assert (=> b!5209316 true))

(declare-fun b!5209306 () Bool)

(declare-fun e!3243183 () Bool)

(declare-datatypes ((C!29864 0))(
  ( (C!29865 (val!24634 Int)) )
))
(declare-datatypes ((Regex!14797 0))(
  ( (ElementMatch!14797 (c!898196 C!29864)) (Concat!23642 (regOne!30106 Regex!14797) (regTwo!30106 Regex!14797)) (EmptyExpr!14797) (Star!14797 (reg!15126 Regex!14797)) (EmptyLang!14797) (Union!14797 (regOne!30107 Regex!14797) (regTwo!30107 Regex!14797)) )
))
(declare-fun r!7292 () Regex!14797)

(declare-fun validRegex!6533 (Regex!14797) Bool)

(assert (=> b!5209306 (= e!3243183 (validRegex!6533 (regTwo!30107 (regOne!30106 r!7292))))))

(declare-fun b!5209307 () Bool)

(declare-fun e!3243176 () Bool)

(declare-fun tp_is_empty!38847 () Bool)

(declare-fun tp!1461004 () Bool)

(assert (=> b!5209307 (= e!3243176 (and tp_is_empty!38847 tp!1461004))))

(declare-fun b!5209308 () Bool)

(declare-fun e!3243173 () Bool)

(declare-fun e!3243178 () Bool)

(assert (=> b!5209308 (= e!3243173 (not e!3243178))))

(declare-fun res!2212735 () Bool)

(assert (=> b!5209308 (=> res!2212735 e!3243178)))

(declare-datatypes ((List!60690 0))(
  ( (Nil!60566) (Cons!60566 (h!67014 Regex!14797) (t!373851 List!60690)) )
))
(declare-datatypes ((Context!8362 0))(
  ( (Context!8363 (exprs!4681 List!60690)) )
))
(declare-datatypes ((List!60691 0))(
  ( (Nil!60567) (Cons!60567 (h!67015 Context!8362) (t!373852 List!60691)) )
))
(declare-fun zl!343 () List!60691)

(get-info :version)

(assert (=> b!5209308 (= res!2212735 (not ((_ is Cons!60567) zl!343)))))

(declare-fun lt!2141933 () Bool)

(declare-datatypes ((List!60692 0))(
  ( (Nil!60568) (Cons!60568 (h!67016 C!29864) (t!373853 List!60692)) )
))
(declare-fun s!2326 () List!60692)

(declare-fun matchRSpec!1900 (Regex!14797 List!60692) Bool)

(assert (=> b!5209308 (= lt!2141933 (matchRSpec!1900 r!7292 s!2326))))

(declare-fun matchR!6982 (Regex!14797 List!60692) Bool)

(assert (=> b!5209308 (= lt!2141933 (matchR!6982 r!7292 s!2326))))

(declare-datatypes ((Unit!152454 0))(
  ( (Unit!152455) )
))
(declare-fun lt!2141938 () Unit!152454)

(declare-fun mainMatchTheorem!1900 (Regex!14797 List!60692) Unit!152454)

(assert (=> b!5209308 (= lt!2141938 (mainMatchTheorem!1900 r!7292 s!2326))))

(declare-fun b!5209310 () Bool)

(declare-fun res!2212731 () Bool)

(assert (=> b!5209310 (=> res!2212731 e!3243178)))

(declare-fun generalisedUnion!726 (List!60690) Regex!14797)

(declare-fun unfocusZipperList!239 (List!60691) List!60690)

(assert (=> b!5209310 (= res!2212731 (not (= r!7292 (generalisedUnion!726 (unfocusZipperList!239 zl!343)))))))

(declare-fun b!5209311 () Bool)

(declare-fun res!2212737 () Bool)

(assert (=> b!5209311 (=> (not res!2212737) (not e!3243173))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8362))

(declare-fun toList!8581 ((InoxSet Context!8362)) List!60691)

(assert (=> b!5209311 (= res!2212737 (= (toList!8581 z!1189) zl!343))))

(declare-fun b!5209312 () Bool)

(declare-fun res!2212740 () Bool)

(assert (=> b!5209312 (=> res!2212740 e!3243178)))

(assert (=> b!5209312 (= res!2212740 (or ((_ is EmptyExpr!14797) r!7292) ((_ is EmptyLang!14797) r!7292) ((_ is ElementMatch!14797) r!7292) ((_ is Union!14797) r!7292) (not ((_ is Concat!23642) r!7292))))))

(declare-fun b!5209313 () Bool)

(declare-fun res!2212734 () Bool)

(assert (=> b!5209313 (=> res!2212734 e!3243183)))

(declare-fun lt!2141943 () (InoxSet Context!8362))

(declare-fun lt!2141932 () Context!8362)

(declare-fun derivationStepZipperDown!245 (Regex!14797 Context!8362 C!29864) (InoxSet Context!8362))

(assert (=> b!5209313 (= res!2212734 (not (= lt!2141943 ((_ map or) (derivationStepZipperDown!245 (regOne!30107 (regOne!30106 r!7292)) lt!2141932 (h!67016 s!2326)) (derivationStepZipperDown!245 (regTwo!30107 (regOne!30106 r!7292)) lt!2141932 (h!67016 s!2326))))))))

(declare-fun b!5209314 () Bool)

(declare-fun e!3243182 () Bool)

(declare-fun tp!1461002 () Bool)

(declare-fun tp!1461001 () Bool)

(assert (=> b!5209314 (= e!3243182 (and tp!1461002 tp!1461001))))

(declare-fun tp!1461007 () Bool)

(declare-fun setElem!33084 () Context!8362)

(declare-fun e!3243180 () Bool)

(declare-fun setRes!33084 () Bool)

(declare-fun setNonEmpty!33084 () Bool)

(declare-fun inv!80239 (Context!8362) Bool)

(assert (=> setNonEmpty!33084 (= setRes!33084 (and tp!1461007 (inv!80239 setElem!33084) e!3243180))))

(declare-fun setRest!33084 () (InoxSet Context!8362))

(assert (=> setNonEmpty!33084 (= z!1189 ((_ map or) (store ((as const (Array Context!8362 Bool)) false) setElem!33084 true) setRest!33084))))

(declare-fun b!5209315 () Bool)

(declare-fun tp!1461005 () Bool)

(assert (=> b!5209315 (= e!3243182 tp!1461005)))

(declare-fun e!3243179 () Bool)

(assert (=> b!5209316 (= e!3243179 e!3243183)))

(declare-fun res!2212732 () Bool)

(assert (=> b!5209316 (=> res!2212732 e!3243183)))

(assert (=> b!5209316 (= res!2212732 (or (and ((_ is ElementMatch!14797) (regOne!30106 r!7292)) (= (c!898196 (regOne!30106 r!7292)) (h!67016 s!2326))) (not ((_ is Union!14797) (regOne!30106 r!7292)))))))

(declare-fun lt!2141936 () Unit!152454)

(declare-fun e!3243174 () Unit!152454)

(assert (=> b!5209316 (= lt!2141936 e!3243174)))

(declare-fun c!898195 () Bool)

(declare-fun nullable!4966 (Regex!14797) Bool)

(assert (=> b!5209316 (= c!898195 (nullable!4966 (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun lambda!261185 () Int)

(declare-fun flatMap!524 ((InoxSet Context!8362) Int) (InoxSet Context!8362))

(declare-fun derivationStepZipperUp!169 (Context!8362 C!29864) (InoxSet Context!8362))

(assert (=> b!5209316 (= (flatMap!524 z!1189 lambda!261185) (derivationStepZipperUp!169 (h!67015 zl!343) (h!67016 s!2326)))))

(declare-fun lt!2141934 () Unit!152454)

(declare-fun lemmaFlatMapOnSingletonSet!56 ((InoxSet Context!8362) Context!8362 Int) Unit!152454)

(assert (=> b!5209316 (= lt!2141934 (lemmaFlatMapOnSingletonSet!56 z!1189 (h!67015 zl!343) lambda!261185))))

(declare-fun lt!2141942 () (InoxSet Context!8362))

(assert (=> b!5209316 (= lt!2141942 (derivationStepZipperUp!169 lt!2141932 (h!67016 s!2326)))))

(assert (=> b!5209316 (= lt!2141943 (derivationStepZipperDown!245 (h!67014 (exprs!4681 (h!67015 zl!343))) lt!2141932 (h!67016 s!2326)))))

(assert (=> b!5209316 (= lt!2141932 (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun lt!2141941 () (InoxSet Context!8362))

(assert (=> b!5209316 (= lt!2141941 (derivationStepZipperUp!169 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))) (h!67016 s!2326)))))

(declare-fun b!5209317 () Bool)

(declare-fun e!3243181 () Bool)

(declare-fun tp!1461000 () Bool)

(assert (=> b!5209317 (= e!3243181 tp!1461000)))

(declare-fun setIsEmpty!33084 () Bool)

(assert (=> setIsEmpty!33084 setRes!33084))

(assert (=> b!5209318 (= e!3243178 e!3243179)))

(declare-fun res!2212736 () Bool)

(assert (=> b!5209318 (=> res!2212736 e!3243179)))

(declare-fun lt!2141937 () Bool)

(assert (=> b!5209318 (= res!2212736 (or (not (= lt!2141933 lt!2141937)) ((_ is Nil!60568) s!2326)))))

(declare-fun Exists!1978 (Int) Bool)

(assert (=> b!5209318 (= (Exists!1978 lambda!261183) (Exists!1978 lambda!261184))))

(declare-fun lt!2141940 () Unit!152454)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!632 (Regex!14797 Regex!14797 List!60692) Unit!152454)

(assert (=> b!5209318 (= lt!2141940 (lemmaExistCutMatchRandMatchRSpecEquivalent!632 (regOne!30106 r!7292) (regTwo!30106 r!7292) s!2326))))

(assert (=> b!5209318 (= lt!2141937 (Exists!1978 lambda!261183))))

(declare-datatypes ((tuple2!63992 0))(
  ( (tuple2!63993 (_1!35299 List!60692) (_2!35299 List!60692)) )
))
(declare-datatypes ((Option!14908 0))(
  ( (None!14907) (Some!14907 (v!50936 tuple2!63992)) )
))
(declare-fun isDefined!11611 (Option!14908) Bool)

(declare-fun findConcatSeparation!1322 (Regex!14797 Regex!14797 List!60692 List!60692 List!60692) Option!14908)

(assert (=> b!5209318 (= lt!2141937 (isDefined!11611 (findConcatSeparation!1322 (regOne!30106 r!7292) (regTwo!30106 r!7292) Nil!60568 s!2326 s!2326)))))

(declare-fun lt!2141935 () Unit!152454)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1086 (Regex!14797 Regex!14797 List!60692) Unit!152454)

(assert (=> b!5209318 (= lt!2141935 (lemmaFindConcatSeparationEquivalentToExists!1086 (regOne!30106 r!7292) (regTwo!30106 r!7292) s!2326))))

(declare-fun b!5209319 () Bool)

(declare-fun Unit!152456 () Unit!152454)

(assert (=> b!5209319 (= e!3243174 Unit!152456)))

(declare-fun b!5209320 () Bool)

(declare-fun res!2212741 () Bool)

(assert (=> b!5209320 (=> res!2212741 e!3243178)))

(assert (=> b!5209320 (= res!2212741 (not ((_ is Cons!60566) (exprs!4681 (h!67015 zl!343)))))))

(declare-fun b!5209321 () Bool)

(declare-fun tp!1461008 () Bool)

(declare-fun tp!1461009 () Bool)

(assert (=> b!5209321 (= e!3243182 (and tp!1461008 tp!1461009))))

(declare-fun b!5209322 () Bool)

(declare-fun res!2212738 () Bool)

(assert (=> b!5209322 (=> (not res!2212738) (not e!3243173))))

(declare-fun unfocusZipper!539 (List!60691) Regex!14797)

(assert (=> b!5209322 (= res!2212738 (= r!7292 (unfocusZipper!539 zl!343)))))

(declare-fun b!5209323 () Bool)

(declare-fun res!2212733 () Bool)

(assert (=> b!5209323 (=> res!2212733 e!3243178)))

(declare-fun generalisedConcat!466 (List!60690) Regex!14797)

(assert (=> b!5209323 (= res!2212733 (not (= r!7292 (generalisedConcat!466 (exprs!4681 (h!67015 zl!343))))))))

(declare-fun b!5209324 () Bool)

(declare-fun tp!1461003 () Bool)

(assert (=> b!5209324 (= e!3243180 tp!1461003)))

(declare-fun b!5209325 () Bool)

(declare-fun res!2212742 () Bool)

(assert (=> b!5209325 (=> res!2212742 e!3243178)))

(declare-fun isEmpty!32477 (List!60691) Bool)

(assert (=> b!5209325 (= res!2212742 (not (isEmpty!32477 (t!373852 zl!343))))))

(declare-fun res!2212744 () Bool)

(assert (=> start!551066 (=> (not res!2212744) (not e!3243173))))

(assert (=> start!551066 (= res!2212744 (validRegex!6533 r!7292))))

(assert (=> start!551066 e!3243173))

(assert (=> start!551066 e!3243182))

(declare-fun condSetEmpty!33084 () Bool)

(assert (=> start!551066 (= condSetEmpty!33084 (= z!1189 ((as const (Array Context!8362 Bool)) false)))))

(assert (=> start!551066 setRes!33084))

(declare-fun e!3243175 () Bool)

(assert (=> start!551066 e!3243175))

(assert (=> start!551066 e!3243176))

(declare-fun b!5209309 () Bool)

(declare-fun res!2212739 () Bool)

(assert (=> b!5209309 (=> res!2212739 e!3243179)))

(declare-fun isEmpty!32478 (List!60690) Bool)

(assert (=> b!5209309 (= res!2212739 (isEmpty!32478 (t!373851 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun b!5209326 () Bool)

(declare-fun tp!1461006 () Bool)

(assert (=> b!5209326 (= e!3243175 (and (inv!80239 (h!67015 zl!343)) e!3243181 tp!1461006))))

(declare-fun b!5209327 () Bool)

(declare-fun Unit!152457 () Unit!152454)

(assert (=> b!5209327 (= e!3243174 Unit!152457)))

(declare-fun lt!2141939 () Unit!152454)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!34 ((InoxSet Context!8362) (InoxSet Context!8362) List!60692) Unit!152454)

(assert (=> b!5209327 (= lt!2141939 (lemmaZipperConcatMatchesSameAsBothZippers!34 lt!2141943 lt!2141942 (t!373853 s!2326)))))

(declare-fun res!2212743 () Bool)

(declare-fun matchZipper!1041 ((InoxSet Context!8362) List!60692) Bool)

(assert (=> b!5209327 (= res!2212743 (matchZipper!1041 lt!2141943 (t!373853 s!2326)))))

(declare-fun e!3243177 () Bool)

(assert (=> b!5209327 (=> res!2212743 e!3243177)))

(assert (=> b!5209327 (= (matchZipper!1041 ((_ map or) lt!2141943 lt!2141942) (t!373853 s!2326)) e!3243177)))

(declare-fun b!5209328 () Bool)

(assert (=> b!5209328 (= e!3243182 tp_is_empty!38847)))

(declare-fun b!5209329 () Bool)

(assert (=> b!5209329 (= e!3243177 (matchZipper!1041 lt!2141942 (t!373853 s!2326)))))

(assert (= (and start!551066 res!2212744) b!5209311))

(assert (= (and b!5209311 res!2212737) b!5209322))

(assert (= (and b!5209322 res!2212738) b!5209308))

(assert (= (and b!5209308 (not res!2212735)) b!5209325))

(assert (= (and b!5209325 (not res!2212742)) b!5209323))

(assert (= (and b!5209323 (not res!2212733)) b!5209320))

(assert (= (and b!5209320 (not res!2212741)) b!5209310))

(assert (= (and b!5209310 (not res!2212731)) b!5209312))

(assert (= (and b!5209312 (not res!2212740)) b!5209318))

(assert (= (and b!5209318 (not res!2212736)) b!5209309))

(assert (= (and b!5209309 (not res!2212739)) b!5209316))

(assert (= (and b!5209316 c!898195) b!5209327))

(assert (= (and b!5209316 (not c!898195)) b!5209319))

(assert (= (and b!5209327 (not res!2212743)) b!5209329))

(assert (= (and b!5209316 (not res!2212732)) b!5209313))

(assert (= (and b!5209313 (not res!2212734)) b!5209306))

(assert (= (and start!551066 ((_ is ElementMatch!14797) r!7292)) b!5209328))

(assert (= (and start!551066 ((_ is Concat!23642) r!7292)) b!5209314))

(assert (= (and start!551066 ((_ is Star!14797) r!7292)) b!5209315))

(assert (= (and start!551066 ((_ is Union!14797) r!7292)) b!5209321))

(assert (= (and start!551066 condSetEmpty!33084) setIsEmpty!33084))

(assert (= (and start!551066 (not condSetEmpty!33084)) setNonEmpty!33084))

(assert (= setNonEmpty!33084 b!5209324))

(assert (= b!5209326 b!5209317))

(assert (= (and start!551066 ((_ is Cons!60567) zl!343)) b!5209326))

(assert (= (and start!551066 ((_ is Cons!60568) s!2326)) b!5209307))

(declare-fun m!6259448 () Bool)

(assert (=> b!5209327 m!6259448))

(declare-fun m!6259450 () Bool)

(assert (=> b!5209327 m!6259450))

(declare-fun m!6259452 () Bool)

(assert (=> b!5209327 m!6259452))

(declare-fun m!6259454 () Bool)

(assert (=> b!5209308 m!6259454))

(declare-fun m!6259456 () Bool)

(assert (=> b!5209308 m!6259456))

(declare-fun m!6259458 () Bool)

(assert (=> b!5209308 m!6259458))

(declare-fun m!6259460 () Bool)

(assert (=> b!5209316 m!6259460))

(declare-fun m!6259462 () Bool)

(assert (=> b!5209316 m!6259462))

(declare-fun m!6259464 () Bool)

(assert (=> b!5209316 m!6259464))

(declare-fun m!6259466 () Bool)

(assert (=> b!5209316 m!6259466))

(declare-fun m!6259468 () Bool)

(assert (=> b!5209316 m!6259468))

(declare-fun m!6259470 () Bool)

(assert (=> b!5209316 m!6259470))

(declare-fun m!6259472 () Bool)

(assert (=> b!5209316 m!6259472))

(declare-fun m!6259474 () Bool)

(assert (=> b!5209326 m!6259474))

(declare-fun m!6259476 () Bool)

(assert (=> setNonEmpty!33084 m!6259476))

(declare-fun m!6259478 () Bool)

(assert (=> start!551066 m!6259478))

(declare-fun m!6259480 () Bool)

(assert (=> b!5209313 m!6259480))

(declare-fun m!6259482 () Bool)

(assert (=> b!5209313 m!6259482))

(declare-fun m!6259484 () Bool)

(assert (=> b!5209311 m!6259484))

(declare-fun m!6259486 () Bool)

(assert (=> b!5209325 m!6259486))

(declare-fun m!6259488 () Bool)

(assert (=> b!5209329 m!6259488))

(declare-fun m!6259490 () Bool)

(assert (=> b!5209309 m!6259490))

(declare-fun m!6259492 () Bool)

(assert (=> b!5209323 m!6259492))

(declare-fun m!6259494 () Bool)

(assert (=> b!5209322 m!6259494))

(declare-fun m!6259496 () Bool)

(assert (=> b!5209310 m!6259496))

(assert (=> b!5209310 m!6259496))

(declare-fun m!6259498 () Bool)

(assert (=> b!5209310 m!6259498))

(declare-fun m!6259500 () Bool)

(assert (=> b!5209306 m!6259500))

(declare-fun m!6259502 () Bool)

(assert (=> b!5209318 m!6259502))

(declare-fun m!6259504 () Bool)

(assert (=> b!5209318 m!6259504))

(declare-fun m!6259506 () Bool)

(assert (=> b!5209318 m!6259506))

(declare-fun m!6259508 () Bool)

(assert (=> b!5209318 m!6259508))

(declare-fun m!6259510 () Bool)

(assert (=> b!5209318 m!6259510))

(assert (=> b!5209318 m!6259508))

(assert (=> b!5209318 m!6259502))

(declare-fun m!6259512 () Bool)

(assert (=> b!5209318 m!6259512))

(check-sat (not b!5209322) (not b!5209308) (not b!5209306) (not b!5209324) (not b!5209315) (not b!5209325) (not start!551066) (not b!5209317) (not b!5209314) (not b!5209316) (not setNonEmpty!33084) (not b!5209309) (not b!5209311) (not b!5209326) (not b!5209318) (not b!5209321) (not b!5209323) (not b!5209327) (not b!5209310) (not b!5209307) (not b!5209313) tp_is_empty!38847 (not b!5209329))
(check-sat)
(get-model)

(declare-fun d!1679904 () Bool)

(declare-fun lt!2141964 () Regex!14797)

(assert (=> d!1679904 (validRegex!6533 lt!2141964)))

(assert (=> d!1679904 (= lt!2141964 (generalisedUnion!726 (unfocusZipperList!239 zl!343)))))

(assert (=> d!1679904 (= (unfocusZipper!539 zl!343) lt!2141964)))

(declare-fun bs!1210523 () Bool)

(assert (= bs!1210523 d!1679904))

(declare-fun m!6259652 () Bool)

(assert (=> bs!1210523 m!6259652))

(assert (=> bs!1210523 m!6259496))

(assert (=> bs!1210523 m!6259496))

(assert (=> bs!1210523 m!6259498))

(assert (=> b!5209322 d!1679904))

(declare-fun b!5209659 () Bool)

(declare-fun c!898309 () Bool)

(assert (=> b!5209659 (= c!898309 ((_ is Star!14797) (regOne!30107 (regOne!30106 r!7292))))))

(declare-fun e!3243380 () (InoxSet Context!8362))

(declare-fun e!3243375 () (InoxSet Context!8362))

(assert (=> b!5209659 (= e!3243380 e!3243375)))

(declare-fun b!5209660 () Bool)

(declare-fun e!3243378 () (InoxSet Context!8362))

(declare-fun e!3243376 () (InoxSet Context!8362))

(assert (=> b!5209660 (= e!3243378 e!3243376)))

(declare-fun c!898310 () Bool)

(assert (=> b!5209660 (= c!898310 ((_ is Union!14797) (regOne!30107 (regOne!30106 r!7292))))))

(declare-fun b!5209661 () Bool)

(assert (=> b!5209661 (= e!3243375 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5209662 () Bool)

(declare-fun e!3243379 () (InoxSet Context!8362))

(assert (=> b!5209662 (= e!3243379 e!3243380)))

(declare-fun c!898307 () Bool)

(assert (=> b!5209662 (= c!898307 ((_ is Concat!23642) (regOne!30107 (regOne!30106 r!7292))))))

(declare-fun call!366739 () (InoxSet Context!8362))

(declare-fun bm!366733 () Bool)

(declare-fun call!366743 () List!60690)

(declare-fun c!898308 () Bool)

(assert (=> bm!366733 (= call!366739 (derivationStepZipperDown!245 (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292)))))) (ite (or c!898310 c!898308) lt!2141932 (Context!8363 call!366743)) (h!67016 s!2326)))))

(declare-fun b!5209663 () Bool)

(declare-fun call!366741 () (InoxSet Context!8362))

(assert (=> b!5209663 (= e!3243376 ((_ map or) call!366739 call!366741))))

(declare-fun call!366740 () List!60690)

(declare-fun bm!366734 () Bool)

(assert (=> bm!366734 (= call!366741 (derivationStepZipperDown!245 (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292)))) (ite c!898310 lt!2141932 (Context!8363 call!366740)) (h!67016 s!2326)))))

(declare-fun d!1679906 () Bool)

(declare-fun c!898311 () Bool)

(assert (=> d!1679906 (= c!898311 (and ((_ is ElementMatch!14797) (regOne!30107 (regOne!30106 r!7292))) (= (c!898196 (regOne!30107 (regOne!30106 r!7292))) (h!67016 s!2326))))))

(assert (=> d!1679906 (= (derivationStepZipperDown!245 (regOne!30107 (regOne!30106 r!7292)) lt!2141932 (h!67016 s!2326)) e!3243378)))

(declare-fun bm!366735 () Bool)

(assert (=> bm!366735 (= call!366743 call!366740)))

(declare-fun b!5209664 () Bool)

(declare-fun call!366738 () (InoxSet Context!8362))

(assert (=> b!5209664 (= e!3243375 call!366738)))

(declare-fun bm!366736 () Bool)

(declare-fun call!366742 () (InoxSet Context!8362))

(assert (=> bm!366736 (= call!366738 call!366742)))

(declare-fun b!5209665 () Bool)

(assert (=> b!5209665 (= e!3243380 call!366738)))

(declare-fun b!5209666 () Bool)

(assert (=> b!5209666 (= e!3243378 (store ((as const (Array Context!8362 Bool)) false) lt!2141932 true))))

(declare-fun bm!366737 () Bool)

(declare-fun $colon$colon!1275 (List!60690 Regex!14797) List!60690)

(assert (=> bm!366737 (= call!366740 ($colon$colon!1275 (exprs!4681 lt!2141932) (ite (or c!898308 c!898307) (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (regOne!30107 (regOne!30106 r!7292)))))))

(declare-fun bm!366738 () Bool)

(assert (=> bm!366738 (= call!366742 call!366739)))

(declare-fun b!5209667 () Bool)

(assert (=> b!5209667 (= e!3243379 ((_ map or) call!366741 call!366742))))

(declare-fun b!5209668 () Bool)

(declare-fun e!3243377 () Bool)

(assert (=> b!5209668 (= c!898308 e!3243377)))

(declare-fun res!2212848 () Bool)

(assert (=> b!5209668 (=> (not res!2212848) (not e!3243377))))

(assert (=> b!5209668 (= res!2212848 ((_ is Concat!23642) (regOne!30107 (regOne!30106 r!7292))))))

(assert (=> b!5209668 (= e!3243376 e!3243379)))

(declare-fun b!5209669 () Bool)

(assert (=> b!5209669 (= e!3243377 (nullable!4966 (regOne!30106 (regOne!30107 (regOne!30106 r!7292)))))))

(assert (= (and d!1679906 c!898311) b!5209666))

(assert (= (and d!1679906 (not c!898311)) b!5209660))

(assert (= (and b!5209660 c!898310) b!5209663))

(assert (= (and b!5209660 (not c!898310)) b!5209668))

(assert (= (and b!5209668 res!2212848) b!5209669))

(assert (= (and b!5209668 c!898308) b!5209667))

(assert (= (and b!5209668 (not c!898308)) b!5209662))

(assert (= (and b!5209662 c!898307) b!5209665))

(assert (= (and b!5209662 (not c!898307)) b!5209659))

(assert (= (and b!5209659 c!898309) b!5209664))

(assert (= (and b!5209659 (not c!898309)) b!5209661))

(assert (= (or b!5209665 b!5209664) bm!366735))

(assert (= (or b!5209665 b!5209664) bm!366736))

(assert (= (or b!5209667 bm!366735) bm!366737))

(assert (= (or b!5209667 bm!366736) bm!366738))

(assert (= (or b!5209663 b!5209667) bm!366734))

(assert (= (or b!5209663 bm!366738) bm!366733))

(declare-fun m!6259682 () Bool)

(assert (=> b!5209669 m!6259682))

(declare-fun m!6259684 () Bool)

(assert (=> bm!366737 m!6259684))

(declare-fun m!6259686 () Bool)

(assert (=> bm!366733 m!6259686))

(declare-fun m!6259688 () Bool)

(assert (=> bm!366734 m!6259688))

(declare-fun m!6259690 () Bool)

(assert (=> b!5209666 m!6259690))

(assert (=> b!5209313 d!1679906))

(declare-fun b!5209679 () Bool)

(declare-fun c!898316 () Bool)

(assert (=> b!5209679 (= c!898316 ((_ is Star!14797) (regTwo!30107 (regOne!30106 r!7292))))))

(declare-fun e!3243391 () (InoxSet Context!8362))

(declare-fun e!3243386 () (InoxSet Context!8362))

(assert (=> b!5209679 (= e!3243391 e!3243386)))

(declare-fun b!5209680 () Bool)

(declare-fun e!3243389 () (InoxSet Context!8362))

(declare-fun e!3243387 () (InoxSet Context!8362))

(assert (=> b!5209680 (= e!3243389 e!3243387)))

(declare-fun c!898317 () Bool)

(assert (=> b!5209680 (= c!898317 ((_ is Union!14797) (regTwo!30107 (regOne!30106 r!7292))))))

(declare-fun b!5209681 () Bool)

(assert (=> b!5209681 (= e!3243386 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5209682 () Bool)

(declare-fun e!3243390 () (InoxSet Context!8362))

(assert (=> b!5209682 (= e!3243390 e!3243391)))

(declare-fun c!898314 () Bool)

(assert (=> b!5209682 (= c!898314 ((_ is Concat!23642) (regTwo!30107 (regOne!30106 r!7292))))))

(declare-fun bm!366739 () Bool)

(declare-fun call!366749 () List!60690)

(declare-fun call!366745 () (InoxSet Context!8362))

(declare-fun c!898315 () Bool)

(assert (=> bm!366739 (= call!366745 (derivationStepZipperDown!245 (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292)))))) (ite (or c!898317 c!898315) lt!2141932 (Context!8363 call!366749)) (h!67016 s!2326)))))

(declare-fun b!5209683 () Bool)

(declare-fun call!366747 () (InoxSet Context!8362))

(assert (=> b!5209683 (= e!3243387 ((_ map or) call!366745 call!366747))))

(declare-fun call!366746 () List!60690)

(declare-fun bm!366740 () Bool)

(assert (=> bm!366740 (= call!366747 (derivationStepZipperDown!245 (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292)))) (ite c!898317 lt!2141932 (Context!8363 call!366746)) (h!67016 s!2326)))))

(declare-fun d!1679918 () Bool)

(declare-fun c!898318 () Bool)

(assert (=> d!1679918 (= c!898318 (and ((_ is ElementMatch!14797) (regTwo!30107 (regOne!30106 r!7292))) (= (c!898196 (regTwo!30107 (regOne!30106 r!7292))) (h!67016 s!2326))))))

(assert (=> d!1679918 (= (derivationStepZipperDown!245 (regTwo!30107 (regOne!30106 r!7292)) lt!2141932 (h!67016 s!2326)) e!3243389)))

(declare-fun bm!366741 () Bool)

(assert (=> bm!366741 (= call!366749 call!366746)))

(declare-fun b!5209684 () Bool)

(declare-fun call!366744 () (InoxSet Context!8362))

(assert (=> b!5209684 (= e!3243386 call!366744)))

(declare-fun bm!366742 () Bool)

(declare-fun call!366748 () (InoxSet Context!8362))

(assert (=> bm!366742 (= call!366744 call!366748)))

(declare-fun b!5209685 () Bool)

(assert (=> b!5209685 (= e!3243391 call!366744)))

(declare-fun b!5209686 () Bool)

(assert (=> b!5209686 (= e!3243389 (store ((as const (Array Context!8362 Bool)) false) lt!2141932 true))))

(declare-fun bm!366743 () Bool)

(assert (=> bm!366743 (= call!366746 ($colon$colon!1275 (exprs!4681 lt!2141932) (ite (or c!898315 c!898314) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30107 (regOne!30106 r!7292)))))))

(declare-fun bm!366744 () Bool)

(assert (=> bm!366744 (= call!366748 call!366745)))

(declare-fun b!5209687 () Bool)

(assert (=> b!5209687 (= e!3243390 ((_ map or) call!366747 call!366748))))

(declare-fun b!5209688 () Bool)

(declare-fun e!3243388 () Bool)

(assert (=> b!5209688 (= c!898315 e!3243388)))

(declare-fun res!2212854 () Bool)

(assert (=> b!5209688 (=> (not res!2212854) (not e!3243388))))

(assert (=> b!5209688 (= res!2212854 ((_ is Concat!23642) (regTwo!30107 (regOne!30106 r!7292))))))

(assert (=> b!5209688 (= e!3243387 e!3243390)))

(declare-fun b!5209689 () Bool)

(assert (=> b!5209689 (= e!3243388 (nullable!4966 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292)))))))

(assert (= (and d!1679918 c!898318) b!5209686))

(assert (= (and d!1679918 (not c!898318)) b!5209680))

(assert (= (and b!5209680 c!898317) b!5209683))

(assert (= (and b!5209680 (not c!898317)) b!5209688))

(assert (= (and b!5209688 res!2212854) b!5209689))

(assert (= (and b!5209688 c!898315) b!5209687))

(assert (= (and b!5209688 (not c!898315)) b!5209682))

(assert (= (and b!5209682 c!898314) b!5209685))

(assert (= (and b!5209682 (not c!898314)) b!5209679))

(assert (= (and b!5209679 c!898316) b!5209684))

(assert (= (and b!5209679 (not c!898316)) b!5209681))

(assert (= (or b!5209685 b!5209684) bm!366741))

(assert (= (or b!5209685 b!5209684) bm!366742))

(assert (= (or b!5209687 bm!366741) bm!366743))

(assert (= (or b!5209687 bm!366742) bm!366744))

(assert (= (or b!5209683 b!5209687) bm!366740))

(assert (= (or b!5209683 bm!366744) bm!366739))

(declare-fun m!6259718 () Bool)

(assert (=> b!5209689 m!6259718))

(declare-fun m!6259720 () Bool)

(assert (=> bm!366743 m!6259720))

(declare-fun m!6259722 () Bool)

(assert (=> bm!366739 m!6259722))

(declare-fun m!6259724 () Bool)

(assert (=> bm!366740 m!6259724))

(assert (=> b!5209686 m!6259690))

(assert (=> b!5209313 d!1679918))

(declare-fun b!5209740 () Bool)

(declare-fun e!3243420 () Regex!14797)

(assert (=> b!5209740 (= e!3243420 (h!67014 (exprs!4681 (h!67015 zl!343))))))

(declare-fun d!1679924 () Bool)

(declare-fun e!3243423 () Bool)

(assert (=> d!1679924 e!3243423))

(declare-fun res!2212872 () Bool)

(assert (=> d!1679924 (=> (not res!2212872) (not e!3243423))))

(declare-fun lt!2141991 () Regex!14797)

(assert (=> d!1679924 (= res!2212872 (validRegex!6533 lt!2141991))))

(assert (=> d!1679924 (= lt!2141991 e!3243420)))

(declare-fun c!898328 () Bool)

(declare-fun e!3243418 () Bool)

(assert (=> d!1679924 (= c!898328 e!3243418)))

(declare-fun res!2212871 () Bool)

(assert (=> d!1679924 (=> (not res!2212871) (not e!3243418))))

(assert (=> d!1679924 (= res!2212871 ((_ is Cons!60566) (exprs!4681 (h!67015 zl!343))))))

(declare-fun lambda!261216 () Int)

(declare-fun forall!14233 (List!60690 Int) Bool)

(assert (=> d!1679924 (forall!14233 (exprs!4681 (h!67015 zl!343)) lambda!261216)))

(assert (=> d!1679924 (= (generalisedConcat!466 (exprs!4681 (h!67015 zl!343))) lt!2141991)))

(declare-fun b!5209741 () Bool)

(declare-fun e!3243422 () Bool)

(declare-fun isConcat!284 (Regex!14797) Bool)

(assert (=> b!5209741 (= e!3243422 (isConcat!284 lt!2141991))))

(declare-fun b!5209742 () Bool)

(declare-fun e!3243419 () Bool)

(declare-fun isEmptyExpr!761 (Regex!14797) Bool)

(assert (=> b!5209742 (= e!3243419 (isEmptyExpr!761 lt!2141991))))

(declare-fun b!5209743 () Bool)

(declare-fun e!3243421 () Regex!14797)

(assert (=> b!5209743 (= e!3243421 EmptyExpr!14797)))

(declare-fun b!5209744 () Bool)

(assert (=> b!5209744 (= e!3243418 (isEmpty!32478 (t!373851 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun b!5209745 () Bool)

(assert (=> b!5209745 (= e!3243421 (Concat!23642 (h!67014 (exprs!4681 (h!67015 zl!343))) (generalisedConcat!466 (t!373851 (exprs!4681 (h!67015 zl!343))))))))

(declare-fun b!5209746 () Bool)

(assert (=> b!5209746 (= e!3243419 e!3243422)))

(declare-fun c!898329 () Bool)

(declare-fun tail!10266 (List!60690) List!60690)

(assert (=> b!5209746 (= c!898329 (isEmpty!32478 (tail!10266 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun b!5209747 () Bool)

(assert (=> b!5209747 (= e!3243423 e!3243419)))

(declare-fun c!898327 () Bool)

(assert (=> b!5209747 (= c!898327 (isEmpty!32478 (exprs!4681 (h!67015 zl!343))))))

(declare-fun b!5209748 () Bool)

(declare-fun head!11169 (List!60690) Regex!14797)

(assert (=> b!5209748 (= e!3243422 (= lt!2141991 (head!11169 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun b!5209749 () Bool)

(assert (=> b!5209749 (= e!3243420 e!3243421)))

(declare-fun c!898330 () Bool)

(assert (=> b!5209749 (= c!898330 ((_ is Cons!60566) (exprs!4681 (h!67015 zl!343))))))

(assert (= (and d!1679924 res!2212871) b!5209744))

(assert (= (and d!1679924 c!898328) b!5209740))

(assert (= (and d!1679924 (not c!898328)) b!5209749))

(assert (= (and b!5209749 c!898330) b!5209745))

(assert (= (and b!5209749 (not c!898330)) b!5209743))

(assert (= (and d!1679924 res!2212872) b!5209747))

(assert (= (and b!5209747 c!898327) b!5209742))

(assert (= (and b!5209747 (not c!898327)) b!5209746))

(assert (= (and b!5209746 c!898329) b!5209748))

(assert (= (and b!5209746 (not c!898329)) b!5209741))

(declare-fun m!6259742 () Bool)

(assert (=> b!5209745 m!6259742))

(declare-fun m!6259744 () Bool)

(assert (=> b!5209746 m!6259744))

(assert (=> b!5209746 m!6259744))

(declare-fun m!6259746 () Bool)

(assert (=> b!5209746 m!6259746))

(assert (=> b!5209744 m!6259490))

(declare-fun m!6259748 () Bool)

(assert (=> d!1679924 m!6259748))

(declare-fun m!6259750 () Bool)

(assert (=> d!1679924 m!6259750))

(declare-fun m!6259752 () Bool)

(assert (=> b!5209747 m!6259752))

(declare-fun m!6259754 () Bool)

(assert (=> b!5209742 m!6259754))

(declare-fun m!6259756 () Bool)

(assert (=> b!5209748 m!6259756))

(declare-fun m!6259758 () Bool)

(assert (=> b!5209741 m!6259758))

(assert (=> b!5209323 d!1679924))

(declare-fun bs!1210538 () Bool)

(declare-fun d!1679932 () Bool)

(assert (= bs!1210538 (and d!1679932 d!1679924)))

(declare-fun lambda!261219 () Int)

(assert (=> bs!1210538 (= lambda!261219 lambda!261216)))

(declare-fun b!5209806 () Bool)

(declare-fun e!3243453 () Regex!14797)

(assert (=> b!5209806 (= e!3243453 (h!67014 (unfocusZipperList!239 zl!343)))))

(declare-fun b!5209808 () Bool)

(declare-fun e!3243451 () Bool)

(declare-fun lt!2141994 () Regex!14797)

(assert (=> b!5209808 (= e!3243451 (= lt!2141994 (head!11169 (unfocusZipperList!239 zl!343))))))

(declare-fun b!5209809 () Bool)

(declare-fun e!3243452 () Bool)

(assert (=> b!5209809 (= e!3243452 (isEmpty!32478 (t!373851 (unfocusZipperList!239 zl!343))))))

(declare-fun b!5209810 () Bool)

(declare-fun isUnion!202 (Regex!14797) Bool)

(assert (=> b!5209810 (= e!3243451 (isUnion!202 lt!2141994))))

(declare-fun b!5209811 () Bool)

(declare-fun e!3243454 () Bool)

(declare-fun e!3243456 () Bool)

(assert (=> b!5209811 (= e!3243454 e!3243456)))

(declare-fun c!898339 () Bool)

(assert (=> b!5209811 (= c!898339 (isEmpty!32478 (unfocusZipperList!239 zl!343)))))

(assert (=> d!1679932 e!3243454))

(declare-fun res!2212877 () Bool)

(assert (=> d!1679932 (=> (not res!2212877) (not e!3243454))))

(assert (=> d!1679932 (= res!2212877 (validRegex!6533 lt!2141994))))

(assert (=> d!1679932 (= lt!2141994 e!3243453)))

(declare-fun c!898341 () Bool)

(assert (=> d!1679932 (= c!898341 e!3243452)))

(declare-fun res!2212878 () Bool)

(assert (=> d!1679932 (=> (not res!2212878) (not e!3243452))))

(assert (=> d!1679932 (= res!2212878 ((_ is Cons!60566) (unfocusZipperList!239 zl!343)))))

(assert (=> d!1679932 (forall!14233 (unfocusZipperList!239 zl!343) lambda!261219)))

(assert (=> d!1679932 (= (generalisedUnion!726 (unfocusZipperList!239 zl!343)) lt!2141994)))

(declare-fun b!5209807 () Bool)

(declare-fun isEmptyLang!770 (Regex!14797) Bool)

(assert (=> b!5209807 (= e!3243456 (isEmptyLang!770 lt!2141994))))

(declare-fun b!5209812 () Bool)

(declare-fun e!3243455 () Regex!14797)

(assert (=> b!5209812 (= e!3243455 EmptyLang!14797)))

(declare-fun b!5209813 () Bool)

(assert (=> b!5209813 (= e!3243453 e!3243455)))

(declare-fun c!898340 () Bool)

(assert (=> b!5209813 (= c!898340 ((_ is Cons!60566) (unfocusZipperList!239 zl!343)))))

(declare-fun b!5209814 () Bool)

(assert (=> b!5209814 (= e!3243456 e!3243451)))

(declare-fun c!898342 () Bool)

(assert (=> b!5209814 (= c!898342 (isEmpty!32478 (tail!10266 (unfocusZipperList!239 zl!343))))))

(declare-fun b!5209815 () Bool)

(assert (=> b!5209815 (= e!3243455 (Union!14797 (h!67014 (unfocusZipperList!239 zl!343)) (generalisedUnion!726 (t!373851 (unfocusZipperList!239 zl!343)))))))

(assert (= (and d!1679932 res!2212878) b!5209809))

(assert (= (and d!1679932 c!898341) b!5209806))

(assert (= (and d!1679932 (not c!898341)) b!5209813))

(assert (= (and b!5209813 c!898340) b!5209815))

(assert (= (and b!5209813 (not c!898340)) b!5209812))

(assert (= (and d!1679932 res!2212877) b!5209811))

(assert (= (and b!5209811 c!898339) b!5209807))

(assert (= (and b!5209811 (not c!898339)) b!5209814))

(assert (= (and b!5209814 c!898342) b!5209808))

(assert (= (and b!5209814 (not c!898342)) b!5209810))

(declare-fun m!6259762 () Bool)

(assert (=> b!5209815 m!6259762))

(declare-fun m!6259764 () Bool)

(assert (=> b!5209810 m!6259764))

(declare-fun m!6259766 () Bool)

(assert (=> b!5209807 m!6259766))

(assert (=> b!5209808 m!6259496))

(declare-fun m!6259768 () Bool)

(assert (=> b!5209808 m!6259768))

(declare-fun m!6259770 () Bool)

(assert (=> d!1679932 m!6259770))

(assert (=> d!1679932 m!6259496))

(declare-fun m!6259772 () Bool)

(assert (=> d!1679932 m!6259772))

(declare-fun m!6259774 () Bool)

(assert (=> b!5209809 m!6259774))

(assert (=> b!5209814 m!6259496))

(declare-fun m!6259776 () Bool)

(assert (=> b!5209814 m!6259776))

(assert (=> b!5209814 m!6259776))

(declare-fun m!6259778 () Bool)

(assert (=> b!5209814 m!6259778))

(assert (=> b!5209811 m!6259496))

(declare-fun m!6259780 () Bool)

(assert (=> b!5209811 m!6259780))

(assert (=> b!5209310 d!1679932))

(declare-fun bs!1210539 () Bool)

(declare-fun d!1679936 () Bool)

(assert (= bs!1210539 (and d!1679936 d!1679924)))

(declare-fun lambda!261222 () Int)

(assert (=> bs!1210539 (= lambda!261222 lambda!261216)))

(declare-fun bs!1210540 () Bool)

(assert (= bs!1210540 (and d!1679936 d!1679932)))

(assert (=> bs!1210540 (= lambda!261222 lambda!261219)))

(declare-fun lt!2141997 () List!60690)

(assert (=> d!1679936 (forall!14233 lt!2141997 lambda!261222)))

(declare-fun e!3243459 () List!60690)

(assert (=> d!1679936 (= lt!2141997 e!3243459)))

(declare-fun c!898345 () Bool)

(assert (=> d!1679936 (= c!898345 ((_ is Cons!60567) zl!343))))

(assert (=> d!1679936 (= (unfocusZipperList!239 zl!343) lt!2141997)))

(declare-fun b!5209820 () Bool)

(assert (=> b!5209820 (= e!3243459 (Cons!60566 (generalisedConcat!466 (exprs!4681 (h!67015 zl!343))) (unfocusZipperList!239 (t!373852 zl!343))))))

(declare-fun b!5209821 () Bool)

(assert (=> b!5209821 (= e!3243459 Nil!60566)))

(assert (= (and d!1679936 c!898345) b!5209820))

(assert (= (and d!1679936 (not c!898345)) b!5209821))

(declare-fun m!6259782 () Bool)

(assert (=> d!1679936 m!6259782))

(assert (=> b!5209820 m!6259492))

(declare-fun m!6259784 () Bool)

(assert (=> b!5209820 m!6259784))

(assert (=> b!5209310 d!1679936))

(declare-fun d!1679938 () Bool)

(declare-fun c!898348 () Bool)

(declare-fun isEmpty!32481 (List!60692) Bool)

(assert (=> d!1679938 (= c!898348 (isEmpty!32481 (t!373853 s!2326)))))

(declare-fun e!3243462 () Bool)

(assert (=> d!1679938 (= (matchZipper!1041 lt!2141942 (t!373853 s!2326)) e!3243462)))

(declare-fun b!5209826 () Bool)

(declare-fun nullableZipper!1225 ((InoxSet Context!8362)) Bool)

(assert (=> b!5209826 (= e!3243462 (nullableZipper!1225 lt!2141942))))

(declare-fun b!5209827 () Bool)

(declare-fun derivationStepZipper!1069 ((InoxSet Context!8362) C!29864) (InoxSet Context!8362))

(declare-fun head!11170 (List!60692) C!29864)

(declare-fun tail!10267 (List!60692) List!60692)

(assert (=> b!5209827 (= e!3243462 (matchZipper!1041 (derivationStepZipper!1069 lt!2141942 (head!11170 (t!373853 s!2326))) (tail!10267 (t!373853 s!2326))))))

(assert (= (and d!1679938 c!898348) b!5209826))

(assert (= (and d!1679938 (not c!898348)) b!5209827))

(declare-fun m!6259786 () Bool)

(assert (=> d!1679938 m!6259786))

(declare-fun m!6259788 () Bool)

(assert (=> b!5209826 m!6259788))

(declare-fun m!6259790 () Bool)

(assert (=> b!5209827 m!6259790))

(assert (=> b!5209827 m!6259790))

(declare-fun m!6259792 () Bool)

(assert (=> b!5209827 m!6259792))

(declare-fun m!6259794 () Bool)

(assert (=> b!5209827 m!6259794))

(assert (=> b!5209827 m!6259792))

(assert (=> b!5209827 m!6259794))

(declare-fun m!6259796 () Bool)

(assert (=> b!5209827 m!6259796))

(assert (=> b!5209329 d!1679938))

(declare-fun d!1679940 () Bool)

(declare-fun e!3243465 () Bool)

(assert (=> d!1679940 e!3243465))

(declare-fun res!2212881 () Bool)

(assert (=> d!1679940 (=> (not res!2212881) (not e!3243465))))

(declare-fun lt!2142000 () List!60691)

(declare-fun noDuplicate!1181 (List!60691) Bool)

(assert (=> d!1679940 (= res!2212881 (noDuplicate!1181 lt!2142000))))

(declare-fun choose!38731 ((InoxSet Context!8362)) List!60691)

(assert (=> d!1679940 (= lt!2142000 (choose!38731 z!1189))))

(assert (=> d!1679940 (= (toList!8581 z!1189) lt!2142000)))

(declare-fun b!5209830 () Bool)

(declare-fun content!10727 (List!60691) (InoxSet Context!8362))

(assert (=> b!5209830 (= e!3243465 (= (content!10727 lt!2142000) z!1189))))

(assert (= (and d!1679940 res!2212881) b!5209830))

(declare-fun m!6259798 () Bool)

(assert (=> d!1679940 m!6259798))

(declare-fun m!6259800 () Bool)

(assert (=> d!1679940 m!6259800))

(declare-fun m!6259802 () Bool)

(assert (=> b!5209830 m!6259802))

(assert (=> b!5209311 d!1679940))

(declare-fun b!5209849 () Bool)

(declare-fun e!3243486 () Bool)

(declare-fun call!366757 () Bool)

(assert (=> b!5209849 (= e!3243486 call!366757)))

(declare-fun bm!366751 () Bool)

(declare-fun call!366756 () Bool)

(assert (=> bm!366751 (= call!366756 call!366757)))

(declare-fun b!5209850 () Bool)

(declare-fun e!3243480 () Bool)

(assert (=> b!5209850 (= e!3243480 e!3243486)))

(declare-fun res!2212895 () Bool)

(assert (=> b!5209850 (= res!2212895 (not (nullable!4966 (reg!15126 r!7292))))))

(assert (=> b!5209850 (=> (not res!2212895) (not e!3243486))))

(declare-fun b!5209851 () Bool)

(declare-fun res!2212892 () Bool)

(declare-fun e!3243482 () Bool)

(assert (=> b!5209851 (=> res!2212892 e!3243482)))

(assert (=> b!5209851 (= res!2212892 (not ((_ is Concat!23642) r!7292)))))

(declare-fun e!3243485 () Bool)

(assert (=> b!5209851 (= e!3243485 e!3243482)))

(declare-fun b!5209852 () Bool)

(declare-fun res!2212894 () Bool)

(declare-fun e!3243483 () Bool)

(assert (=> b!5209852 (=> (not res!2212894) (not e!3243483))))

(declare-fun call!366758 () Bool)

(assert (=> b!5209852 (= res!2212894 call!366758)))

(assert (=> b!5209852 (= e!3243485 e!3243483)))

(declare-fun b!5209853 () Bool)

(declare-fun e!3243484 () Bool)

(assert (=> b!5209853 (= e!3243482 e!3243484)))

(declare-fun res!2212893 () Bool)

(assert (=> b!5209853 (=> (not res!2212893) (not e!3243484))))

(assert (=> b!5209853 (= res!2212893 call!366758)))

(declare-fun d!1679942 () Bool)

(declare-fun res!2212896 () Bool)

(declare-fun e!3243481 () Bool)

(assert (=> d!1679942 (=> res!2212896 e!3243481)))

(assert (=> d!1679942 (= res!2212896 ((_ is ElementMatch!14797) r!7292))))

(assert (=> d!1679942 (= (validRegex!6533 r!7292) e!3243481)))

(declare-fun bm!366752 () Bool)

(declare-fun c!898354 () Bool)

(declare-fun c!898353 () Bool)

(assert (=> bm!366752 (= call!366757 (validRegex!6533 (ite c!898353 (reg!15126 r!7292) (ite c!898354 (regTwo!30107 r!7292) (regTwo!30106 r!7292)))))))

(declare-fun b!5209854 () Bool)

(assert (=> b!5209854 (= e!3243483 call!366756)))

(declare-fun b!5209855 () Bool)

(assert (=> b!5209855 (= e!3243484 call!366756)))

(declare-fun b!5209856 () Bool)

(assert (=> b!5209856 (= e!3243480 e!3243485)))

(assert (=> b!5209856 (= c!898354 ((_ is Union!14797) r!7292))))

(declare-fun b!5209857 () Bool)

(assert (=> b!5209857 (= e!3243481 e!3243480)))

(assert (=> b!5209857 (= c!898353 ((_ is Star!14797) r!7292))))

(declare-fun bm!366753 () Bool)

(assert (=> bm!366753 (= call!366758 (validRegex!6533 (ite c!898354 (regOne!30107 r!7292) (regOne!30106 r!7292))))))

(assert (= (and d!1679942 (not res!2212896)) b!5209857))

(assert (= (and b!5209857 c!898353) b!5209850))

(assert (= (and b!5209857 (not c!898353)) b!5209856))

(assert (= (and b!5209850 res!2212895) b!5209849))

(assert (= (and b!5209856 c!898354) b!5209852))

(assert (= (and b!5209856 (not c!898354)) b!5209851))

(assert (= (and b!5209852 res!2212894) b!5209854))

(assert (= (and b!5209851 (not res!2212892)) b!5209853))

(assert (= (and b!5209853 res!2212893) b!5209855))

(assert (= (or b!5209854 b!5209855) bm!366751))

(assert (= (or b!5209852 b!5209853) bm!366753))

(assert (= (or b!5209849 bm!366751) bm!366752))

(declare-fun m!6259804 () Bool)

(assert (=> b!5209850 m!6259804))

(declare-fun m!6259806 () Bool)

(assert (=> bm!366752 m!6259806))

(declare-fun m!6259808 () Bool)

(assert (=> bm!366753 m!6259808))

(assert (=> start!551066 d!1679942))

(declare-fun bs!1210541 () Bool)

(declare-fun b!5209895 () Bool)

(assert (= bs!1210541 (and b!5209895 b!5209318)))

(declare-fun lambda!261227 () Int)

(assert (=> bs!1210541 (not (= lambda!261227 lambda!261183))))

(assert (=> bs!1210541 (not (= lambda!261227 lambda!261184))))

(assert (=> b!5209895 true))

(assert (=> b!5209895 true))

(declare-fun bs!1210542 () Bool)

(declare-fun b!5209898 () Bool)

(assert (= bs!1210542 (and b!5209898 b!5209318)))

(declare-fun lambda!261228 () Int)

(assert (=> bs!1210542 (not (= lambda!261228 lambda!261183))))

(assert (=> bs!1210542 (= lambda!261228 lambda!261184)))

(declare-fun bs!1210543 () Bool)

(assert (= bs!1210543 (and b!5209898 b!5209895)))

(assert (=> bs!1210543 (not (= lambda!261228 lambda!261227))))

(assert (=> b!5209898 true))

(assert (=> b!5209898 true))

(declare-fun b!5209890 () Bool)

(declare-fun c!898366 () Bool)

(assert (=> b!5209890 (= c!898366 ((_ is Union!14797) r!7292))))

(declare-fun e!3243505 () Bool)

(declare-fun e!3243508 () Bool)

(assert (=> b!5209890 (= e!3243505 e!3243508)))

(declare-fun b!5209891 () Bool)

(declare-fun e!3243511 () Bool)

(assert (=> b!5209891 (= e!3243511 (matchRSpec!1900 (regTwo!30107 r!7292) s!2326))))

(declare-fun b!5209892 () Bool)

(declare-fun c!898363 () Bool)

(assert (=> b!5209892 (= c!898363 ((_ is ElementMatch!14797) r!7292))))

(declare-fun e!3243506 () Bool)

(assert (=> b!5209892 (= e!3243506 e!3243505)))

(declare-fun b!5209893 () Bool)

(declare-fun e!3243510 () Bool)

(declare-fun call!366763 () Bool)

(assert (=> b!5209893 (= e!3243510 call!366763)))

(declare-fun bm!366758 () Bool)

(assert (=> bm!366758 (= call!366763 (isEmpty!32481 s!2326))))

(declare-fun b!5209894 () Bool)

(assert (=> b!5209894 (= e!3243508 e!3243511)))

(declare-fun res!2212915 () Bool)

(assert (=> b!5209894 (= res!2212915 (matchRSpec!1900 (regOne!30107 r!7292) s!2326))))

(assert (=> b!5209894 (=> res!2212915 e!3243511)))

(declare-fun b!5209896 () Bool)

(assert (=> b!5209896 (= e!3243510 e!3243506)))

(declare-fun res!2212914 () Bool)

(assert (=> b!5209896 (= res!2212914 (not ((_ is EmptyLang!14797) r!7292)))))

(assert (=> b!5209896 (=> (not res!2212914) (not e!3243506))))

(declare-fun b!5209897 () Bool)

(assert (=> b!5209897 (= e!3243505 (= s!2326 (Cons!60568 (c!898196 r!7292) Nil!60568)))))

(declare-fun c!898365 () Bool)

(declare-fun bm!366759 () Bool)

(declare-fun call!366764 () Bool)

(assert (=> bm!366759 (= call!366764 (Exists!1978 (ite c!898365 lambda!261227 lambda!261228)))))

(declare-fun e!3243509 () Bool)

(assert (=> b!5209898 (= e!3243509 call!366764)))

(declare-fun b!5209899 () Bool)

(assert (=> b!5209899 (= e!3243508 e!3243509)))

(assert (=> b!5209899 (= c!898365 ((_ is Star!14797) r!7292))))

(declare-fun b!5209900 () Bool)

(declare-fun res!2212913 () Bool)

(declare-fun e!3243507 () Bool)

(assert (=> b!5209900 (=> res!2212913 e!3243507)))

(assert (=> b!5209900 (= res!2212913 call!366763)))

(assert (=> b!5209900 (= e!3243509 e!3243507)))

(assert (=> b!5209895 (= e!3243507 call!366764)))

(declare-fun d!1679944 () Bool)

(declare-fun c!898364 () Bool)

(assert (=> d!1679944 (= c!898364 ((_ is EmptyExpr!14797) r!7292))))

(assert (=> d!1679944 (= (matchRSpec!1900 r!7292 s!2326) e!3243510)))

(assert (= (and d!1679944 c!898364) b!5209893))

(assert (= (and d!1679944 (not c!898364)) b!5209896))

(assert (= (and b!5209896 res!2212914) b!5209892))

(assert (= (and b!5209892 c!898363) b!5209897))

(assert (= (and b!5209892 (not c!898363)) b!5209890))

(assert (= (and b!5209890 c!898366) b!5209894))

(assert (= (and b!5209890 (not c!898366)) b!5209899))

(assert (= (and b!5209894 (not res!2212915)) b!5209891))

(assert (= (and b!5209899 c!898365) b!5209900))

(assert (= (and b!5209899 (not c!898365)) b!5209898))

(assert (= (and b!5209900 (not res!2212913)) b!5209895))

(assert (= (or b!5209895 b!5209898) bm!366759))

(assert (= (or b!5209893 b!5209900) bm!366758))

(declare-fun m!6259810 () Bool)

(assert (=> b!5209891 m!6259810))

(declare-fun m!6259812 () Bool)

(assert (=> bm!366758 m!6259812))

(declare-fun m!6259814 () Bool)

(assert (=> b!5209894 m!6259814))

(declare-fun m!6259816 () Bool)

(assert (=> bm!366759 m!6259816))

(assert (=> b!5209308 d!1679944))

(declare-fun bm!366762 () Bool)

(declare-fun call!366767 () Bool)

(assert (=> bm!366762 (= call!366767 (isEmpty!32481 s!2326))))

(declare-fun b!5209929 () Bool)

(declare-fun e!3243532 () Bool)

(assert (=> b!5209929 (= e!3243532 (not (= (head!11170 s!2326) (c!898196 r!7292))))))

(declare-fun b!5209930 () Bool)

(declare-fun res!2212934 () Bool)

(declare-fun e!3243527 () Bool)

(assert (=> b!5209930 (=> (not res!2212934) (not e!3243527))))

(assert (=> b!5209930 (= res!2212934 (not call!366767))))

(declare-fun b!5209931 () Bool)

(declare-fun res!2212933 () Bool)

(declare-fun e!3243529 () Bool)

(assert (=> b!5209931 (=> res!2212933 e!3243529)))

(assert (=> b!5209931 (= res!2212933 e!3243527)))

(declare-fun res!2212935 () Bool)

(assert (=> b!5209931 (=> (not res!2212935) (not e!3243527))))

(declare-fun lt!2142003 () Bool)

(assert (=> b!5209931 (= res!2212935 lt!2142003)))

(declare-fun d!1679946 () Bool)

(declare-fun e!3243526 () Bool)

(assert (=> d!1679946 e!3243526))

(declare-fun c!898373 () Bool)

(assert (=> d!1679946 (= c!898373 ((_ is EmptyExpr!14797) r!7292))))

(declare-fun e!3243530 () Bool)

(assert (=> d!1679946 (= lt!2142003 e!3243530)))

(declare-fun c!898375 () Bool)

(assert (=> d!1679946 (= c!898375 (isEmpty!32481 s!2326))))

(assert (=> d!1679946 (validRegex!6533 r!7292)))

(assert (=> d!1679946 (= (matchR!6982 r!7292 s!2326) lt!2142003)))

(declare-fun b!5209932 () Bool)

(declare-fun e!3243528 () Bool)

(assert (=> b!5209932 (= e!3243528 e!3243532)))

(declare-fun res!2212938 () Bool)

(assert (=> b!5209932 (=> res!2212938 e!3243532)))

(assert (=> b!5209932 (= res!2212938 call!366767)))

(declare-fun b!5209933 () Bool)

(assert (=> b!5209933 (= e!3243527 (= (head!11170 s!2326) (c!898196 r!7292)))))

(declare-fun b!5209934 () Bool)

(declare-fun res!2212939 () Bool)

(assert (=> b!5209934 (=> (not res!2212939) (not e!3243527))))

(assert (=> b!5209934 (= res!2212939 (isEmpty!32481 (tail!10267 s!2326)))))

(declare-fun b!5209935 () Bool)

(assert (=> b!5209935 (= e!3243526 (= lt!2142003 call!366767))))

(declare-fun b!5209936 () Bool)

(declare-fun derivativeStep!4047 (Regex!14797 C!29864) Regex!14797)

(assert (=> b!5209936 (= e!3243530 (matchR!6982 (derivativeStep!4047 r!7292 (head!11170 s!2326)) (tail!10267 s!2326)))))

(declare-fun b!5209937 () Bool)

(declare-fun e!3243531 () Bool)

(assert (=> b!5209937 (= e!3243531 (not lt!2142003))))

(declare-fun b!5209938 () Bool)

(assert (=> b!5209938 (= e!3243526 e!3243531)))

(declare-fun c!898374 () Bool)

(assert (=> b!5209938 (= c!898374 ((_ is EmptyLang!14797) r!7292))))

(declare-fun b!5209939 () Bool)

(assert (=> b!5209939 (= e!3243530 (nullable!4966 r!7292))))

(declare-fun b!5209940 () Bool)

(declare-fun res!2212937 () Bool)

(assert (=> b!5209940 (=> res!2212937 e!3243529)))

(assert (=> b!5209940 (= res!2212937 (not ((_ is ElementMatch!14797) r!7292)))))

(assert (=> b!5209940 (= e!3243531 e!3243529)))

(declare-fun b!5209941 () Bool)

(assert (=> b!5209941 (= e!3243529 e!3243528)))

(declare-fun res!2212932 () Bool)

(assert (=> b!5209941 (=> (not res!2212932) (not e!3243528))))

(assert (=> b!5209941 (= res!2212932 (not lt!2142003))))

(declare-fun b!5209942 () Bool)

(declare-fun res!2212936 () Bool)

(assert (=> b!5209942 (=> res!2212936 e!3243532)))

(assert (=> b!5209942 (= res!2212936 (not (isEmpty!32481 (tail!10267 s!2326))))))

(assert (= (and d!1679946 c!898375) b!5209939))

(assert (= (and d!1679946 (not c!898375)) b!5209936))

(assert (= (and d!1679946 c!898373) b!5209935))

(assert (= (and d!1679946 (not c!898373)) b!5209938))

(assert (= (and b!5209938 c!898374) b!5209937))

(assert (= (and b!5209938 (not c!898374)) b!5209940))

(assert (= (and b!5209940 (not res!2212937)) b!5209931))

(assert (= (and b!5209931 res!2212935) b!5209930))

(assert (= (and b!5209930 res!2212934) b!5209934))

(assert (= (and b!5209934 res!2212939) b!5209933))

(assert (= (and b!5209931 (not res!2212933)) b!5209941))

(assert (= (and b!5209941 res!2212932) b!5209932))

(assert (= (and b!5209932 (not res!2212938)) b!5209942))

(assert (= (and b!5209942 (not res!2212936)) b!5209929))

(assert (= (or b!5209935 b!5209930 b!5209932) bm!366762))

(declare-fun m!6259818 () Bool)

(assert (=> b!5209933 m!6259818))

(assert (=> d!1679946 m!6259812))

(assert (=> d!1679946 m!6259478))

(declare-fun m!6259820 () Bool)

(assert (=> b!5209939 m!6259820))

(declare-fun m!6259822 () Bool)

(assert (=> b!5209942 m!6259822))

(assert (=> b!5209942 m!6259822))

(declare-fun m!6259824 () Bool)

(assert (=> b!5209942 m!6259824))

(assert (=> b!5209936 m!6259818))

(assert (=> b!5209936 m!6259818))

(declare-fun m!6259826 () Bool)

(assert (=> b!5209936 m!6259826))

(assert (=> b!5209936 m!6259822))

(assert (=> b!5209936 m!6259826))

(assert (=> b!5209936 m!6259822))

(declare-fun m!6259828 () Bool)

(assert (=> b!5209936 m!6259828))

(assert (=> b!5209934 m!6259822))

(assert (=> b!5209934 m!6259822))

(assert (=> b!5209934 m!6259824))

(assert (=> bm!366762 m!6259812))

(assert (=> b!5209929 m!6259818))

(assert (=> b!5209308 d!1679946))

(declare-fun d!1679948 () Bool)

(assert (=> d!1679948 (= (matchR!6982 r!7292 s!2326) (matchRSpec!1900 r!7292 s!2326))))

(declare-fun lt!2142006 () Unit!152454)

(declare-fun choose!38732 (Regex!14797 List!60692) Unit!152454)

(assert (=> d!1679948 (= lt!2142006 (choose!38732 r!7292 s!2326))))

(assert (=> d!1679948 (validRegex!6533 r!7292)))

(assert (=> d!1679948 (= (mainMatchTheorem!1900 r!7292 s!2326) lt!2142006)))

(declare-fun bs!1210544 () Bool)

(assert (= bs!1210544 d!1679948))

(assert (=> bs!1210544 m!6259456))

(assert (=> bs!1210544 m!6259454))

(declare-fun m!6259830 () Bool)

(assert (=> bs!1210544 m!6259830))

(assert (=> bs!1210544 m!6259478))

(assert (=> b!5209308 d!1679948))

(declare-fun d!1679950 () Bool)

(declare-fun e!3243535 () Bool)

(assert (=> d!1679950 (= (matchZipper!1041 ((_ map or) lt!2141943 lt!2141942) (t!373853 s!2326)) e!3243535)))

(declare-fun res!2212942 () Bool)

(assert (=> d!1679950 (=> res!2212942 e!3243535)))

(assert (=> d!1679950 (= res!2212942 (matchZipper!1041 lt!2141943 (t!373853 s!2326)))))

(declare-fun lt!2142009 () Unit!152454)

(declare-fun choose!38733 ((InoxSet Context!8362) (InoxSet Context!8362) List!60692) Unit!152454)

(assert (=> d!1679950 (= lt!2142009 (choose!38733 lt!2141943 lt!2141942 (t!373853 s!2326)))))

(assert (=> d!1679950 (= (lemmaZipperConcatMatchesSameAsBothZippers!34 lt!2141943 lt!2141942 (t!373853 s!2326)) lt!2142009)))

(declare-fun b!5209945 () Bool)

(assert (=> b!5209945 (= e!3243535 (matchZipper!1041 lt!2141942 (t!373853 s!2326)))))

(assert (= (and d!1679950 (not res!2212942)) b!5209945))

(assert (=> d!1679950 m!6259452))

(assert (=> d!1679950 m!6259450))

(declare-fun m!6259832 () Bool)

(assert (=> d!1679950 m!6259832))

(assert (=> b!5209945 m!6259488))

(assert (=> b!5209327 d!1679950))

(declare-fun d!1679952 () Bool)

(declare-fun c!898376 () Bool)

(assert (=> d!1679952 (= c!898376 (isEmpty!32481 (t!373853 s!2326)))))

(declare-fun e!3243536 () Bool)

(assert (=> d!1679952 (= (matchZipper!1041 lt!2141943 (t!373853 s!2326)) e!3243536)))

(declare-fun b!5209946 () Bool)

(assert (=> b!5209946 (= e!3243536 (nullableZipper!1225 lt!2141943))))

(declare-fun b!5209947 () Bool)

(assert (=> b!5209947 (= e!3243536 (matchZipper!1041 (derivationStepZipper!1069 lt!2141943 (head!11170 (t!373853 s!2326))) (tail!10267 (t!373853 s!2326))))))

(assert (= (and d!1679952 c!898376) b!5209946))

(assert (= (and d!1679952 (not c!898376)) b!5209947))

(assert (=> d!1679952 m!6259786))

(declare-fun m!6259834 () Bool)

(assert (=> b!5209946 m!6259834))

(assert (=> b!5209947 m!6259790))

(assert (=> b!5209947 m!6259790))

(declare-fun m!6259836 () Bool)

(assert (=> b!5209947 m!6259836))

(assert (=> b!5209947 m!6259794))

(assert (=> b!5209947 m!6259836))

(assert (=> b!5209947 m!6259794))

(declare-fun m!6259838 () Bool)

(assert (=> b!5209947 m!6259838))

(assert (=> b!5209327 d!1679952))

(declare-fun d!1679954 () Bool)

(declare-fun c!898377 () Bool)

(assert (=> d!1679954 (= c!898377 (isEmpty!32481 (t!373853 s!2326)))))

(declare-fun e!3243537 () Bool)

(assert (=> d!1679954 (= (matchZipper!1041 ((_ map or) lt!2141943 lt!2141942) (t!373853 s!2326)) e!3243537)))

(declare-fun b!5209948 () Bool)

(assert (=> b!5209948 (= e!3243537 (nullableZipper!1225 ((_ map or) lt!2141943 lt!2141942)))))

(declare-fun b!5209949 () Bool)

(assert (=> b!5209949 (= e!3243537 (matchZipper!1041 (derivationStepZipper!1069 ((_ map or) lt!2141943 lt!2141942) (head!11170 (t!373853 s!2326))) (tail!10267 (t!373853 s!2326))))))

(assert (= (and d!1679954 c!898377) b!5209948))

(assert (= (and d!1679954 (not c!898377)) b!5209949))

(assert (=> d!1679954 m!6259786))

(declare-fun m!6259840 () Bool)

(assert (=> b!5209948 m!6259840))

(assert (=> b!5209949 m!6259790))

(assert (=> b!5209949 m!6259790))

(declare-fun m!6259842 () Bool)

(assert (=> b!5209949 m!6259842))

(assert (=> b!5209949 m!6259794))

(assert (=> b!5209949 m!6259842))

(assert (=> b!5209949 m!6259794))

(declare-fun m!6259844 () Bool)

(assert (=> b!5209949 m!6259844))

(assert (=> b!5209327 d!1679954))

(declare-fun b!5209968 () Bool)

(declare-fun e!3243551 () Bool)

(assert (=> b!5209968 (= e!3243551 (matchR!6982 (regTwo!30106 r!7292) s!2326))))

(declare-fun b!5209969 () Bool)

(declare-fun e!3243548 () Option!14908)

(assert (=> b!5209969 (= e!3243548 None!14907)))

(declare-fun b!5209970 () Bool)

(declare-fun lt!2142016 () Unit!152454)

(declare-fun lt!2142017 () Unit!152454)

(assert (=> b!5209970 (= lt!2142016 lt!2142017)))

(declare-fun ++!13205 (List!60692 List!60692) List!60692)

(assert (=> b!5209970 (= (++!13205 (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568)) (t!373853 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1620 (List!60692 C!29864 List!60692 List!60692) Unit!152454)

(assert (=> b!5209970 (= lt!2142017 (lemmaMoveElementToOtherListKeepsConcatEq!1620 Nil!60568 (h!67016 s!2326) (t!373853 s!2326) s!2326))))

(assert (=> b!5209970 (= e!3243548 (findConcatSeparation!1322 (regOne!30106 r!7292) (regTwo!30106 r!7292) (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568)) (t!373853 s!2326) s!2326))))

(declare-fun d!1679956 () Bool)

(declare-fun e!3243549 () Bool)

(assert (=> d!1679956 e!3243549))

(declare-fun res!2212957 () Bool)

(assert (=> d!1679956 (=> res!2212957 e!3243549)))

(declare-fun e!3243550 () Bool)

(assert (=> d!1679956 (= res!2212957 e!3243550)))

(declare-fun res!2212954 () Bool)

(assert (=> d!1679956 (=> (not res!2212954) (not e!3243550))))

(declare-fun lt!2142018 () Option!14908)

(assert (=> d!1679956 (= res!2212954 (isDefined!11611 lt!2142018))))

(declare-fun e!3243552 () Option!14908)

(assert (=> d!1679956 (= lt!2142018 e!3243552)))

(declare-fun c!898383 () Bool)

(assert (=> d!1679956 (= c!898383 e!3243551)))

(declare-fun res!2212956 () Bool)

(assert (=> d!1679956 (=> (not res!2212956) (not e!3243551))))

(assert (=> d!1679956 (= res!2212956 (matchR!6982 (regOne!30106 r!7292) Nil!60568))))

(assert (=> d!1679956 (validRegex!6533 (regOne!30106 r!7292))))

(assert (=> d!1679956 (= (findConcatSeparation!1322 (regOne!30106 r!7292) (regTwo!30106 r!7292) Nil!60568 s!2326 s!2326) lt!2142018)))

(declare-fun b!5209971 () Bool)

(assert (=> b!5209971 (= e!3243552 e!3243548)))

(declare-fun c!898382 () Bool)

(assert (=> b!5209971 (= c!898382 ((_ is Nil!60568) s!2326))))

(declare-fun b!5209972 () Bool)

(declare-fun res!2212955 () Bool)

(assert (=> b!5209972 (=> (not res!2212955) (not e!3243550))))

(declare-fun get!20809 (Option!14908) tuple2!63992)

(assert (=> b!5209972 (= res!2212955 (matchR!6982 (regTwo!30106 r!7292) (_2!35299 (get!20809 lt!2142018))))))

(declare-fun b!5209973 () Bool)

(assert (=> b!5209973 (= e!3243552 (Some!14907 (tuple2!63993 Nil!60568 s!2326)))))

(declare-fun b!5209974 () Bool)

(assert (=> b!5209974 (= e!3243550 (= (++!13205 (_1!35299 (get!20809 lt!2142018)) (_2!35299 (get!20809 lt!2142018))) s!2326))))

(declare-fun b!5209975 () Bool)

(assert (=> b!5209975 (= e!3243549 (not (isDefined!11611 lt!2142018)))))

(declare-fun b!5209976 () Bool)

(declare-fun res!2212953 () Bool)

(assert (=> b!5209976 (=> (not res!2212953) (not e!3243550))))

(assert (=> b!5209976 (= res!2212953 (matchR!6982 (regOne!30106 r!7292) (_1!35299 (get!20809 lt!2142018))))))

(assert (= (and d!1679956 res!2212956) b!5209968))

(assert (= (and d!1679956 c!898383) b!5209973))

(assert (= (and d!1679956 (not c!898383)) b!5209971))

(assert (= (and b!5209971 c!898382) b!5209969))

(assert (= (and b!5209971 (not c!898382)) b!5209970))

(assert (= (and d!1679956 res!2212954) b!5209976))

(assert (= (and b!5209976 res!2212953) b!5209972))

(assert (= (and b!5209972 res!2212955) b!5209974))

(assert (= (and d!1679956 (not res!2212957)) b!5209975))

(declare-fun m!6259846 () Bool)

(assert (=> d!1679956 m!6259846))

(declare-fun m!6259848 () Bool)

(assert (=> d!1679956 m!6259848))

(declare-fun m!6259850 () Bool)

(assert (=> d!1679956 m!6259850))

(declare-fun m!6259852 () Bool)

(assert (=> b!5209968 m!6259852))

(declare-fun m!6259854 () Bool)

(assert (=> b!5209974 m!6259854))

(declare-fun m!6259856 () Bool)

(assert (=> b!5209974 m!6259856))

(assert (=> b!5209975 m!6259846))

(declare-fun m!6259858 () Bool)

(assert (=> b!5209970 m!6259858))

(assert (=> b!5209970 m!6259858))

(declare-fun m!6259860 () Bool)

(assert (=> b!5209970 m!6259860))

(declare-fun m!6259862 () Bool)

(assert (=> b!5209970 m!6259862))

(assert (=> b!5209970 m!6259858))

(declare-fun m!6259864 () Bool)

(assert (=> b!5209970 m!6259864))

(assert (=> b!5209972 m!6259854))

(declare-fun m!6259866 () Bool)

(assert (=> b!5209972 m!6259866))

(assert (=> b!5209976 m!6259854))

(declare-fun m!6259868 () Bool)

(assert (=> b!5209976 m!6259868))

(assert (=> b!5209318 d!1679956))

(declare-fun d!1679958 () Bool)

(declare-fun choose!38734 (Int) Bool)

(assert (=> d!1679958 (= (Exists!1978 lambda!261184) (choose!38734 lambda!261184))))

(declare-fun bs!1210545 () Bool)

(assert (= bs!1210545 d!1679958))

(declare-fun m!6259870 () Bool)

(assert (=> bs!1210545 m!6259870))

(assert (=> b!5209318 d!1679958))

(declare-fun d!1679960 () Bool)

(assert (=> d!1679960 (= (Exists!1978 lambda!261183) (choose!38734 lambda!261183))))

(declare-fun bs!1210546 () Bool)

(assert (= bs!1210546 d!1679960))

(declare-fun m!6259872 () Bool)

(assert (=> bs!1210546 m!6259872))

(assert (=> b!5209318 d!1679960))

(declare-fun bs!1210547 () Bool)

(declare-fun d!1679962 () Bool)

(assert (= bs!1210547 (and d!1679962 b!5209318)))

(declare-fun lambda!261231 () Int)

(assert (=> bs!1210547 (= lambda!261231 lambda!261183)))

(assert (=> bs!1210547 (not (= lambda!261231 lambda!261184))))

(declare-fun bs!1210548 () Bool)

(assert (= bs!1210548 (and d!1679962 b!5209895)))

(assert (=> bs!1210548 (not (= lambda!261231 lambda!261227))))

(declare-fun bs!1210549 () Bool)

(assert (= bs!1210549 (and d!1679962 b!5209898)))

(assert (=> bs!1210549 (not (= lambda!261231 lambda!261228))))

(assert (=> d!1679962 true))

(assert (=> d!1679962 true))

(assert (=> d!1679962 true))

(assert (=> d!1679962 (= (isDefined!11611 (findConcatSeparation!1322 (regOne!30106 r!7292) (regTwo!30106 r!7292) Nil!60568 s!2326 s!2326)) (Exists!1978 lambda!261231))))

(declare-fun lt!2142021 () Unit!152454)

(declare-fun choose!38735 (Regex!14797 Regex!14797 List!60692) Unit!152454)

(assert (=> d!1679962 (= lt!2142021 (choose!38735 (regOne!30106 r!7292) (regTwo!30106 r!7292) s!2326))))

(assert (=> d!1679962 (validRegex!6533 (regOne!30106 r!7292))))

(assert (=> d!1679962 (= (lemmaFindConcatSeparationEquivalentToExists!1086 (regOne!30106 r!7292) (regTwo!30106 r!7292) s!2326) lt!2142021)))

(declare-fun bs!1210550 () Bool)

(assert (= bs!1210550 d!1679962))

(assert (=> bs!1210550 m!6259502))

(assert (=> bs!1210550 m!6259504))

(declare-fun m!6259874 () Bool)

(assert (=> bs!1210550 m!6259874))

(declare-fun m!6259876 () Bool)

(assert (=> bs!1210550 m!6259876))

(assert (=> bs!1210550 m!6259502))

(assert (=> bs!1210550 m!6259850))

(assert (=> b!5209318 d!1679962))

(declare-fun bs!1210551 () Bool)

(declare-fun d!1679964 () Bool)

(assert (= bs!1210551 (and d!1679964 b!5209318)))

(declare-fun lambda!261236 () Int)

(assert (=> bs!1210551 (not (= lambda!261236 lambda!261184))))

(declare-fun bs!1210552 () Bool)

(assert (= bs!1210552 (and d!1679964 b!5209895)))

(assert (=> bs!1210552 (not (= lambda!261236 lambda!261227))))

(declare-fun bs!1210553 () Bool)

(assert (= bs!1210553 (and d!1679964 b!5209898)))

(assert (=> bs!1210553 (not (= lambda!261236 lambda!261228))))

(assert (=> bs!1210551 (= lambda!261236 lambda!261183)))

(declare-fun bs!1210554 () Bool)

(assert (= bs!1210554 (and d!1679964 d!1679962)))

(assert (=> bs!1210554 (= lambda!261236 lambda!261231)))

(assert (=> d!1679964 true))

(assert (=> d!1679964 true))

(assert (=> d!1679964 true))

(declare-fun lambda!261237 () Int)

(assert (=> bs!1210551 (= lambda!261237 lambda!261184)))

(assert (=> bs!1210552 (not (= lambda!261237 lambda!261227))))

(assert (=> bs!1210553 (= lambda!261237 lambda!261228)))

(assert (=> bs!1210551 (not (= lambda!261237 lambda!261183))))

(declare-fun bs!1210555 () Bool)

(assert (= bs!1210555 d!1679964))

(assert (=> bs!1210555 (not (= lambda!261237 lambda!261236))))

(assert (=> bs!1210554 (not (= lambda!261237 lambda!261231))))

(assert (=> d!1679964 true))

(assert (=> d!1679964 true))

(assert (=> d!1679964 true))

(assert (=> d!1679964 (= (Exists!1978 lambda!261236) (Exists!1978 lambda!261237))))

(declare-fun lt!2142024 () Unit!152454)

(declare-fun choose!38736 (Regex!14797 Regex!14797 List!60692) Unit!152454)

(assert (=> d!1679964 (= lt!2142024 (choose!38736 (regOne!30106 r!7292) (regTwo!30106 r!7292) s!2326))))

(assert (=> d!1679964 (validRegex!6533 (regOne!30106 r!7292))))

(assert (=> d!1679964 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!632 (regOne!30106 r!7292) (regTwo!30106 r!7292) s!2326) lt!2142024)))

(declare-fun m!6259878 () Bool)

(assert (=> bs!1210555 m!6259878))

(declare-fun m!6259880 () Bool)

(assert (=> bs!1210555 m!6259880))

(declare-fun m!6259882 () Bool)

(assert (=> bs!1210555 m!6259882))

(assert (=> bs!1210555 m!6259850))

(assert (=> b!5209318 d!1679964))

(declare-fun d!1679966 () Bool)

(declare-fun isEmpty!32482 (Option!14908) Bool)

(assert (=> d!1679966 (= (isDefined!11611 (findConcatSeparation!1322 (regOne!30106 r!7292) (regTwo!30106 r!7292) Nil!60568 s!2326 s!2326)) (not (isEmpty!32482 (findConcatSeparation!1322 (regOne!30106 r!7292) (regTwo!30106 r!7292) Nil!60568 s!2326 s!2326))))))

(declare-fun bs!1210556 () Bool)

(assert (= bs!1210556 d!1679966))

(assert (=> bs!1210556 m!6259502))

(declare-fun m!6259884 () Bool)

(assert (=> bs!1210556 m!6259884))

(assert (=> b!5209318 d!1679966))

(declare-fun d!1679968 () Bool)

(assert (=> d!1679968 (= (isEmpty!32478 (t!373851 (exprs!4681 (h!67015 zl!343)))) ((_ is Nil!60566) (t!373851 (exprs!4681 (h!67015 zl!343)))))))

(assert (=> b!5209309 d!1679968))

(declare-fun bs!1210557 () Bool)

(declare-fun d!1679970 () Bool)

(assert (= bs!1210557 (and d!1679970 d!1679924)))

(declare-fun lambda!261240 () Int)

(assert (=> bs!1210557 (= lambda!261240 lambda!261216)))

(declare-fun bs!1210558 () Bool)

(assert (= bs!1210558 (and d!1679970 d!1679932)))

(assert (=> bs!1210558 (= lambda!261240 lambda!261219)))

(declare-fun bs!1210559 () Bool)

(assert (= bs!1210559 (and d!1679970 d!1679936)))

(assert (=> bs!1210559 (= lambda!261240 lambda!261222)))

(assert (=> d!1679970 (= (inv!80239 setElem!33084) (forall!14233 (exprs!4681 setElem!33084) lambda!261240))))

(declare-fun bs!1210560 () Bool)

(assert (= bs!1210560 d!1679970))

(declare-fun m!6259886 () Bool)

(assert (=> bs!1210560 m!6259886))

(assert (=> setNonEmpty!33084 d!1679970))

(declare-fun b!5209989 () Bool)

(declare-fun e!3243565 () Bool)

(declare-fun call!366769 () Bool)

(assert (=> b!5209989 (= e!3243565 call!366769)))

(declare-fun bm!366763 () Bool)

(declare-fun call!366768 () Bool)

(assert (=> bm!366763 (= call!366768 call!366769)))

(declare-fun b!5209990 () Bool)

(declare-fun e!3243559 () Bool)

(assert (=> b!5209990 (= e!3243559 e!3243565)))

(declare-fun res!2212973 () Bool)

(assert (=> b!5209990 (= res!2212973 (not (nullable!4966 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))))))))

(assert (=> b!5209990 (=> (not res!2212973) (not e!3243565))))

(declare-fun b!5209991 () Bool)

(declare-fun res!2212970 () Bool)

(declare-fun e!3243561 () Bool)

(assert (=> b!5209991 (=> res!2212970 e!3243561)))

(assert (=> b!5209991 (= res!2212970 (not ((_ is Concat!23642) (regTwo!30107 (regOne!30106 r!7292)))))))

(declare-fun e!3243564 () Bool)

(assert (=> b!5209991 (= e!3243564 e!3243561)))

(declare-fun b!5209992 () Bool)

(declare-fun res!2212972 () Bool)

(declare-fun e!3243562 () Bool)

(assert (=> b!5209992 (=> (not res!2212972) (not e!3243562))))

(declare-fun call!366770 () Bool)

(assert (=> b!5209992 (= res!2212972 call!366770)))

(assert (=> b!5209992 (= e!3243564 e!3243562)))

(declare-fun b!5209993 () Bool)

(declare-fun e!3243563 () Bool)

(assert (=> b!5209993 (= e!3243561 e!3243563)))

(declare-fun res!2212971 () Bool)

(assert (=> b!5209993 (=> (not res!2212971) (not e!3243563))))

(assert (=> b!5209993 (= res!2212971 call!366770)))

(declare-fun d!1679972 () Bool)

(declare-fun res!2212974 () Bool)

(declare-fun e!3243560 () Bool)

(assert (=> d!1679972 (=> res!2212974 e!3243560)))

(assert (=> d!1679972 (= res!2212974 ((_ is ElementMatch!14797) (regTwo!30107 (regOne!30106 r!7292))))))

(assert (=> d!1679972 (= (validRegex!6533 (regTwo!30107 (regOne!30106 r!7292))) e!3243560)))

(declare-fun c!898384 () Bool)

(declare-fun bm!366764 () Bool)

(declare-fun c!898385 () Bool)

(assert (=> bm!366764 (= call!366769 (validRegex!6533 (ite c!898384 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898385 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292)))))))))

(declare-fun b!5209994 () Bool)

(assert (=> b!5209994 (= e!3243562 call!366768)))

(declare-fun b!5209995 () Bool)

(assert (=> b!5209995 (= e!3243563 call!366768)))

(declare-fun b!5209996 () Bool)

(assert (=> b!5209996 (= e!3243559 e!3243564)))

(assert (=> b!5209996 (= c!898385 ((_ is Union!14797) (regTwo!30107 (regOne!30106 r!7292))))))

(declare-fun b!5209997 () Bool)

(assert (=> b!5209997 (= e!3243560 e!3243559)))

(assert (=> b!5209997 (= c!898384 ((_ is Star!14797) (regTwo!30107 (regOne!30106 r!7292))))))

(declare-fun bm!366765 () Bool)

(assert (=> bm!366765 (= call!366770 (validRegex!6533 (ite c!898385 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))))))

(assert (= (and d!1679972 (not res!2212974)) b!5209997))

(assert (= (and b!5209997 c!898384) b!5209990))

(assert (= (and b!5209997 (not c!898384)) b!5209996))

(assert (= (and b!5209990 res!2212973) b!5209989))

(assert (= (and b!5209996 c!898385) b!5209992))

(assert (= (and b!5209996 (not c!898385)) b!5209991))

(assert (= (and b!5209992 res!2212972) b!5209994))

(assert (= (and b!5209991 (not res!2212970)) b!5209993))

(assert (= (and b!5209993 res!2212971) b!5209995))

(assert (= (or b!5209994 b!5209995) bm!366763))

(assert (= (or b!5209992 b!5209993) bm!366765))

(assert (= (or b!5209989 bm!366763) bm!366764))

(declare-fun m!6259888 () Bool)

(assert (=> b!5209990 m!6259888))

(declare-fun m!6259890 () Bool)

(assert (=> bm!366764 m!6259890))

(declare-fun m!6259892 () Bool)

(assert (=> bm!366765 m!6259892))

(assert (=> b!5209306 d!1679972))

(declare-fun d!1679974 () Bool)

(assert (=> d!1679974 (= (isEmpty!32477 (t!373852 zl!343)) ((_ is Nil!60567) (t!373852 zl!343)))))

(assert (=> b!5209325 d!1679974))

(declare-fun bs!1210561 () Bool)

(declare-fun d!1679976 () Bool)

(assert (= bs!1210561 (and d!1679976 d!1679924)))

(declare-fun lambda!261241 () Int)

(assert (=> bs!1210561 (= lambda!261241 lambda!261216)))

(declare-fun bs!1210562 () Bool)

(assert (= bs!1210562 (and d!1679976 d!1679932)))

(assert (=> bs!1210562 (= lambda!261241 lambda!261219)))

(declare-fun bs!1210563 () Bool)

(assert (= bs!1210563 (and d!1679976 d!1679936)))

(assert (=> bs!1210563 (= lambda!261241 lambda!261222)))

(declare-fun bs!1210564 () Bool)

(assert (= bs!1210564 (and d!1679976 d!1679970)))

(assert (=> bs!1210564 (= lambda!261241 lambda!261240)))

(assert (=> d!1679976 (= (inv!80239 (h!67015 zl!343)) (forall!14233 (exprs!4681 (h!67015 zl!343)) lambda!261241))))

(declare-fun bs!1210565 () Bool)

(assert (= bs!1210565 d!1679976))

(declare-fun m!6259894 () Bool)

(assert (=> bs!1210565 m!6259894))

(assert (=> b!5209326 d!1679976))

(declare-fun d!1679978 () Bool)

(declare-fun dynLambda!23927 (Int Context!8362) (InoxSet Context!8362))

(assert (=> d!1679978 (= (flatMap!524 z!1189 lambda!261185) (dynLambda!23927 lambda!261185 (h!67015 zl!343)))))

(declare-fun lt!2142027 () Unit!152454)

(declare-fun choose!38737 ((InoxSet Context!8362) Context!8362 Int) Unit!152454)

(assert (=> d!1679978 (= lt!2142027 (choose!38737 z!1189 (h!67015 zl!343) lambda!261185))))

(assert (=> d!1679978 (= z!1189 (store ((as const (Array Context!8362 Bool)) false) (h!67015 zl!343) true))))

(assert (=> d!1679978 (= (lemmaFlatMapOnSingletonSet!56 z!1189 (h!67015 zl!343) lambda!261185) lt!2142027)))

(declare-fun b_lambda!201529 () Bool)

(assert (=> (not b_lambda!201529) (not d!1679978)))

(declare-fun bs!1210566 () Bool)

(assert (= bs!1210566 d!1679978))

(assert (=> bs!1210566 m!6259466))

(declare-fun m!6259896 () Bool)

(assert (=> bs!1210566 m!6259896))

(declare-fun m!6259898 () Bool)

(assert (=> bs!1210566 m!6259898))

(declare-fun m!6259900 () Bool)

(assert (=> bs!1210566 m!6259900))

(assert (=> b!5209316 d!1679978))

(declare-fun b!5209998 () Bool)

(declare-fun c!898388 () Bool)

(assert (=> b!5209998 (= c!898388 ((_ is Star!14797) (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun e!3243571 () (InoxSet Context!8362))

(declare-fun e!3243566 () (InoxSet Context!8362))

(assert (=> b!5209998 (= e!3243571 e!3243566)))

(declare-fun b!5209999 () Bool)

(declare-fun e!3243569 () (InoxSet Context!8362))

(declare-fun e!3243567 () (InoxSet Context!8362))

(assert (=> b!5209999 (= e!3243569 e!3243567)))

(declare-fun c!898389 () Bool)

(assert (=> b!5209999 (= c!898389 ((_ is Union!14797) (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun b!5210000 () Bool)

(assert (=> b!5210000 (= e!3243566 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5210001 () Bool)

(declare-fun e!3243570 () (InoxSet Context!8362))

(assert (=> b!5210001 (= e!3243570 e!3243571)))

(declare-fun c!898386 () Bool)

(assert (=> b!5210001 (= c!898386 ((_ is Concat!23642) (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun c!898387 () Bool)

(declare-fun bm!366766 () Bool)

(declare-fun call!366776 () List!60690)

(declare-fun call!366772 () (InoxSet Context!8362))

(assert (=> bm!366766 (= call!366772 (derivationStepZipperDown!245 (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343))))))) (ite (or c!898389 c!898387) lt!2141932 (Context!8363 call!366776)) (h!67016 s!2326)))))

(declare-fun b!5210002 () Bool)

(declare-fun call!366774 () (InoxSet Context!8362))

(assert (=> b!5210002 (= e!3243567 ((_ map or) call!366772 call!366774))))

(declare-fun call!366773 () List!60690)

(declare-fun bm!366767 () Bool)

(assert (=> bm!366767 (= call!366774 (derivationStepZipperDown!245 (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343))))) (ite c!898389 lt!2141932 (Context!8363 call!366773)) (h!67016 s!2326)))))

(declare-fun d!1679980 () Bool)

(declare-fun c!898390 () Bool)

(assert (=> d!1679980 (= c!898390 (and ((_ is ElementMatch!14797) (h!67014 (exprs!4681 (h!67015 zl!343)))) (= (c!898196 (h!67014 (exprs!4681 (h!67015 zl!343)))) (h!67016 s!2326))))))

(assert (=> d!1679980 (= (derivationStepZipperDown!245 (h!67014 (exprs!4681 (h!67015 zl!343))) lt!2141932 (h!67016 s!2326)) e!3243569)))

(declare-fun bm!366768 () Bool)

(assert (=> bm!366768 (= call!366776 call!366773)))

(declare-fun b!5210003 () Bool)

(declare-fun call!366771 () (InoxSet Context!8362))

(assert (=> b!5210003 (= e!3243566 call!366771)))

(declare-fun bm!366769 () Bool)

(declare-fun call!366775 () (InoxSet Context!8362))

(assert (=> bm!366769 (= call!366771 call!366775)))

(declare-fun b!5210004 () Bool)

(assert (=> b!5210004 (= e!3243571 call!366771)))

(declare-fun b!5210005 () Bool)

(assert (=> b!5210005 (= e!3243569 (store ((as const (Array Context!8362 Bool)) false) lt!2141932 true))))

(declare-fun bm!366770 () Bool)

(assert (=> bm!366770 (= call!366773 ($colon$colon!1275 (exprs!4681 lt!2141932) (ite (or c!898387 c!898386) (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (h!67014 (exprs!4681 (h!67015 zl!343))))))))

(declare-fun bm!366771 () Bool)

(assert (=> bm!366771 (= call!366775 call!366772)))

(declare-fun b!5210006 () Bool)

(assert (=> b!5210006 (= e!3243570 ((_ map or) call!366774 call!366775))))

(declare-fun b!5210007 () Bool)

(declare-fun e!3243568 () Bool)

(assert (=> b!5210007 (= c!898387 e!3243568)))

(declare-fun res!2212975 () Bool)

(assert (=> b!5210007 (=> (not res!2212975) (not e!3243568))))

(assert (=> b!5210007 (= res!2212975 ((_ is Concat!23642) (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(assert (=> b!5210007 (= e!3243567 e!3243570)))

(declare-fun b!5210008 () Bool)

(assert (=> b!5210008 (= e!3243568 (nullable!4966 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343))))))))

(assert (= (and d!1679980 c!898390) b!5210005))

(assert (= (and d!1679980 (not c!898390)) b!5209999))

(assert (= (and b!5209999 c!898389) b!5210002))

(assert (= (and b!5209999 (not c!898389)) b!5210007))

(assert (= (and b!5210007 res!2212975) b!5210008))

(assert (= (and b!5210007 c!898387) b!5210006))

(assert (= (and b!5210007 (not c!898387)) b!5210001))

(assert (= (and b!5210001 c!898386) b!5210004))

(assert (= (and b!5210001 (not c!898386)) b!5209998))

(assert (= (and b!5209998 c!898388) b!5210003))

(assert (= (and b!5209998 (not c!898388)) b!5210000))

(assert (= (or b!5210004 b!5210003) bm!366768))

(assert (= (or b!5210004 b!5210003) bm!366769))

(assert (= (or b!5210006 bm!366768) bm!366770))

(assert (= (or b!5210006 bm!366769) bm!366771))

(assert (= (or b!5210002 b!5210006) bm!366767))

(assert (= (or b!5210002 bm!366771) bm!366766))

(declare-fun m!6259902 () Bool)

(assert (=> b!5210008 m!6259902))

(declare-fun m!6259904 () Bool)

(assert (=> bm!366770 m!6259904))

(declare-fun m!6259906 () Bool)

(assert (=> bm!366766 m!6259906))

(declare-fun m!6259908 () Bool)

(assert (=> bm!366767 m!6259908))

(assert (=> b!5210005 m!6259690))

(assert (=> b!5209316 d!1679980))

(declare-fun b!5210019 () Bool)

(declare-fun e!3243579 () (InoxSet Context!8362))

(declare-fun e!3243580 () (InoxSet Context!8362))

(assert (=> b!5210019 (= e!3243579 e!3243580)))

(declare-fun c!898395 () Bool)

(assert (=> b!5210019 (= c!898395 ((_ is Cons!60566) (exprs!4681 lt!2141932)))))

(declare-fun b!5210020 () Bool)

(assert (=> b!5210020 (= e!3243580 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5210021 () Bool)

(declare-fun call!366779 () (InoxSet Context!8362))

(assert (=> b!5210021 (= e!3243579 ((_ map or) call!366779 (derivationStepZipperUp!169 (Context!8363 (t!373851 (exprs!4681 lt!2141932))) (h!67016 s!2326))))))

(declare-fun d!1679982 () Bool)

(declare-fun c!898396 () Bool)

(declare-fun e!3243578 () Bool)

(assert (=> d!1679982 (= c!898396 e!3243578)))

(declare-fun res!2212978 () Bool)

(assert (=> d!1679982 (=> (not res!2212978) (not e!3243578))))

(assert (=> d!1679982 (= res!2212978 ((_ is Cons!60566) (exprs!4681 lt!2141932)))))

(assert (=> d!1679982 (= (derivationStepZipperUp!169 lt!2141932 (h!67016 s!2326)) e!3243579)))

(declare-fun b!5210022 () Bool)

(assert (=> b!5210022 (= e!3243580 call!366779)))

(declare-fun bm!366774 () Bool)

(assert (=> bm!366774 (= call!366779 (derivationStepZipperDown!245 (h!67014 (exprs!4681 lt!2141932)) (Context!8363 (t!373851 (exprs!4681 lt!2141932))) (h!67016 s!2326)))))

(declare-fun b!5210023 () Bool)

(assert (=> b!5210023 (= e!3243578 (nullable!4966 (h!67014 (exprs!4681 lt!2141932))))))

(assert (= (and d!1679982 res!2212978) b!5210023))

(assert (= (and d!1679982 c!898396) b!5210021))

(assert (= (and d!1679982 (not c!898396)) b!5210019))

(assert (= (and b!5210019 c!898395) b!5210022))

(assert (= (and b!5210019 (not c!898395)) b!5210020))

(assert (= (or b!5210021 b!5210022) bm!366774))

(declare-fun m!6259910 () Bool)

(assert (=> b!5210021 m!6259910))

(declare-fun m!6259912 () Bool)

(assert (=> bm!366774 m!6259912))

(declare-fun m!6259914 () Bool)

(assert (=> b!5210023 m!6259914))

(assert (=> b!5209316 d!1679982))

(declare-fun d!1679984 () Bool)

(declare-fun choose!38738 ((InoxSet Context!8362) Int) (InoxSet Context!8362))

(assert (=> d!1679984 (= (flatMap!524 z!1189 lambda!261185) (choose!38738 z!1189 lambda!261185))))

(declare-fun bs!1210567 () Bool)

(assert (= bs!1210567 d!1679984))

(declare-fun m!6259916 () Bool)

(assert (=> bs!1210567 m!6259916))

(assert (=> b!5209316 d!1679984))

(declare-fun d!1679986 () Bool)

(declare-fun nullableFct!1377 (Regex!14797) Bool)

(assert (=> d!1679986 (= (nullable!4966 (h!67014 (exprs!4681 (h!67015 zl!343)))) (nullableFct!1377 (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun bs!1210568 () Bool)

(assert (= bs!1210568 d!1679986))

(declare-fun m!6259918 () Bool)

(assert (=> bs!1210568 m!6259918))

(assert (=> b!5209316 d!1679986))

(declare-fun b!5210024 () Bool)

(declare-fun e!3243582 () (InoxSet Context!8362))

(declare-fun e!3243583 () (InoxSet Context!8362))

(assert (=> b!5210024 (= e!3243582 e!3243583)))

(declare-fun c!898397 () Bool)

(assert (=> b!5210024 (= c!898397 ((_ is Cons!60566) (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))))))

(declare-fun b!5210025 () Bool)

(assert (=> b!5210025 (= e!3243583 ((as const (Array Context!8362 Bool)) false))))

(declare-fun call!366780 () (InoxSet Context!8362))

(declare-fun b!5210026 () Bool)

(assert (=> b!5210026 (= e!3243582 ((_ map or) call!366780 (derivationStepZipperUp!169 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (h!67016 s!2326))))))

(declare-fun d!1679988 () Bool)

(declare-fun c!898398 () Bool)

(declare-fun e!3243581 () Bool)

(assert (=> d!1679988 (= c!898398 e!3243581)))

(declare-fun res!2212979 () Bool)

(assert (=> d!1679988 (=> (not res!2212979) (not e!3243581))))

(assert (=> d!1679988 (= res!2212979 ((_ is Cons!60566) (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))))))

(assert (=> d!1679988 (= (derivationStepZipperUp!169 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))) (h!67016 s!2326)) e!3243582)))

(declare-fun b!5210027 () Bool)

(assert (=> b!5210027 (= e!3243583 call!366780)))

(declare-fun bm!366775 () Bool)

(assert (=> bm!366775 (= call!366780 (derivationStepZipperDown!245 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))) (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (h!67016 s!2326)))))

(declare-fun b!5210028 () Bool)

(assert (=> b!5210028 (= e!3243581 (nullable!4966 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))))))

(assert (= (and d!1679988 res!2212979) b!5210028))

(assert (= (and d!1679988 c!898398) b!5210026))

(assert (= (and d!1679988 (not c!898398)) b!5210024))

(assert (= (and b!5210024 c!898397) b!5210027))

(assert (= (and b!5210024 (not c!898397)) b!5210025))

(assert (= (or b!5210026 b!5210027) bm!366775))

(declare-fun m!6259920 () Bool)

(assert (=> b!5210026 m!6259920))

(declare-fun m!6259922 () Bool)

(assert (=> bm!366775 m!6259922))

(declare-fun m!6259924 () Bool)

(assert (=> b!5210028 m!6259924))

(assert (=> b!5209316 d!1679988))

(declare-fun b!5210029 () Bool)

(declare-fun e!3243585 () (InoxSet Context!8362))

(declare-fun e!3243586 () (InoxSet Context!8362))

(assert (=> b!5210029 (= e!3243585 e!3243586)))

(declare-fun c!898399 () Bool)

(assert (=> b!5210029 (= c!898399 ((_ is Cons!60566) (exprs!4681 (h!67015 zl!343))))))

(declare-fun b!5210030 () Bool)

(assert (=> b!5210030 (= e!3243586 ((as const (Array Context!8362 Bool)) false))))

(declare-fun call!366781 () (InoxSet Context!8362))

(declare-fun b!5210031 () Bool)

(assert (=> b!5210031 (= e!3243585 ((_ map or) call!366781 (derivationStepZipperUp!169 (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343)))) (h!67016 s!2326))))))

(declare-fun d!1679990 () Bool)

(declare-fun c!898400 () Bool)

(declare-fun e!3243584 () Bool)

(assert (=> d!1679990 (= c!898400 e!3243584)))

(declare-fun res!2212980 () Bool)

(assert (=> d!1679990 (=> (not res!2212980) (not e!3243584))))

(assert (=> d!1679990 (= res!2212980 ((_ is Cons!60566) (exprs!4681 (h!67015 zl!343))))))

(assert (=> d!1679990 (= (derivationStepZipperUp!169 (h!67015 zl!343) (h!67016 s!2326)) e!3243585)))

(declare-fun b!5210032 () Bool)

(assert (=> b!5210032 (= e!3243586 call!366781)))

(declare-fun bm!366776 () Bool)

(assert (=> bm!366776 (= call!366781 (derivationStepZipperDown!245 (h!67014 (exprs!4681 (h!67015 zl!343))) (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343)))) (h!67016 s!2326)))))

(declare-fun b!5210033 () Bool)

(assert (=> b!5210033 (= e!3243584 (nullable!4966 (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(assert (= (and d!1679990 res!2212980) b!5210033))

(assert (= (and d!1679990 c!898400) b!5210031))

(assert (= (and d!1679990 (not c!898400)) b!5210029))

(assert (= (and b!5210029 c!898399) b!5210032))

(assert (= (and b!5210029 (not c!898399)) b!5210030))

(assert (= (or b!5210031 b!5210032) bm!366776))

(declare-fun m!6259926 () Bool)

(assert (=> b!5210031 m!6259926))

(declare-fun m!6259928 () Bool)

(assert (=> bm!366776 m!6259928))

(assert (=> b!5210033 m!6259468))

(assert (=> b!5209316 d!1679990))

(declare-fun b!5210038 () Bool)

(declare-fun e!3243589 () Bool)

(declare-fun tp!1461072 () Bool)

(declare-fun tp!1461073 () Bool)

(assert (=> b!5210038 (= e!3243589 (and tp!1461072 tp!1461073))))

(assert (=> b!5209317 (= tp!1461000 e!3243589)))

(assert (= (and b!5209317 ((_ is Cons!60566) (exprs!4681 (h!67015 zl!343)))) b!5210038))

(declare-fun b!5210051 () Bool)

(declare-fun e!3243592 () Bool)

(declare-fun tp!1461087 () Bool)

(assert (=> b!5210051 (= e!3243592 tp!1461087)))

(declare-fun b!5210049 () Bool)

(assert (=> b!5210049 (= e!3243592 tp_is_empty!38847)))

(assert (=> b!5209321 (= tp!1461008 e!3243592)))

(declare-fun b!5210050 () Bool)

(declare-fun tp!1461088 () Bool)

(declare-fun tp!1461086 () Bool)

(assert (=> b!5210050 (= e!3243592 (and tp!1461088 tp!1461086))))

(declare-fun b!5210052 () Bool)

(declare-fun tp!1461084 () Bool)

(declare-fun tp!1461085 () Bool)

(assert (=> b!5210052 (= e!3243592 (and tp!1461084 tp!1461085))))

(assert (= (and b!5209321 ((_ is ElementMatch!14797) (regOne!30107 r!7292))) b!5210049))

(assert (= (and b!5209321 ((_ is Concat!23642) (regOne!30107 r!7292))) b!5210050))

(assert (= (and b!5209321 ((_ is Star!14797) (regOne!30107 r!7292))) b!5210051))

(assert (= (and b!5209321 ((_ is Union!14797) (regOne!30107 r!7292))) b!5210052))

(declare-fun b!5210055 () Bool)

(declare-fun e!3243593 () Bool)

(declare-fun tp!1461092 () Bool)

(assert (=> b!5210055 (= e!3243593 tp!1461092)))

(declare-fun b!5210053 () Bool)

(assert (=> b!5210053 (= e!3243593 tp_is_empty!38847)))

(assert (=> b!5209321 (= tp!1461009 e!3243593)))

(declare-fun b!5210054 () Bool)

(declare-fun tp!1461093 () Bool)

(declare-fun tp!1461091 () Bool)

(assert (=> b!5210054 (= e!3243593 (and tp!1461093 tp!1461091))))

(declare-fun b!5210056 () Bool)

(declare-fun tp!1461089 () Bool)

(declare-fun tp!1461090 () Bool)

(assert (=> b!5210056 (= e!3243593 (and tp!1461089 tp!1461090))))

(assert (= (and b!5209321 ((_ is ElementMatch!14797) (regTwo!30107 r!7292))) b!5210053))

(assert (= (and b!5209321 ((_ is Concat!23642) (regTwo!30107 r!7292))) b!5210054))

(assert (= (and b!5209321 ((_ is Star!14797) (regTwo!30107 r!7292))) b!5210055))

(assert (= (and b!5209321 ((_ is Union!14797) (regTwo!30107 r!7292))) b!5210056))

(declare-fun b!5210061 () Bool)

(declare-fun e!3243596 () Bool)

(declare-fun tp!1461096 () Bool)

(assert (=> b!5210061 (= e!3243596 (and tp_is_empty!38847 tp!1461096))))

(assert (=> b!5209307 (= tp!1461004 e!3243596)))

(assert (= (and b!5209307 ((_ is Cons!60568) (t!373853 s!2326))) b!5210061))

(declare-fun b!5210064 () Bool)

(declare-fun e!3243597 () Bool)

(declare-fun tp!1461100 () Bool)

(assert (=> b!5210064 (= e!3243597 tp!1461100)))

(declare-fun b!5210062 () Bool)

(assert (=> b!5210062 (= e!3243597 tp_is_empty!38847)))

(assert (=> b!5209314 (= tp!1461002 e!3243597)))

(declare-fun b!5210063 () Bool)

(declare-fun tp!1461101 () Bool)

(declare-fun tp!1461099 () Bool)

(assert (=> b!5210063 (= e!3243597 (and tp!1461101 tp!1461099))))

(declare-fun b!5210065 () Bool)

(declare-fun tp!1461097 () Bool)

(declare-fun tp!1461098 () Bool)

(assert (=> b!5210065 (= e!3243597 (and tp!1461097 tp!1461098))))

(assert (= (and b!5209314 ((_ is ElementMatch!14797) (regOne!30106 r!7292))) b!5210062))

(assert (= (and b!5209314 ((_ is Concat!23642) (regOne!30106 r!7292))) b!5210063))

(assert (= (and b!5209314 ((_ is Star!14797) (regOne!30106 r!7292))) b!5210064))

(assert (= (and b!5209314 ((_ is Union!14797) (regOne!30106 r!7292))) b!5210065))

(declare-fun b!5210068 () Bool)

(declare-fun e!3243598 () Bool)

(declare-fun tp!1461105 () Bool)

(assert (=> b!5210068 (= e!3243598 tp!1461105)))

(declare-fun b!5210066 () Bool)

(assert (=> b!5210066 (= e!3243598 tp_is_empty!38847)))

(assert (=> b!5209314 (= tp!1461001 e!3243598)))

(declare-fun b!5210067 () Bool)

(declare-fun tp!1461106 () Bool)

(declare-fun tp!1461104 () Bool)

(assert (=> b!5210067 (= e!3243598 (and tp!1461106 tp!1461104))))

(declare-fun b!5210069 () Bool)

(declare-fun tp!1461102 () Bool)

(declare-fun tp!1461103 () Bool)

(assert (=> b!5210069 (= e!3243598 (and tp!1461102 tp!1461103))))

(assert (= (and b!5209314 ((_ is ElementMatch!14797) (regTwo!30106 r!7292))) b!5210066))

(assert (= (and b!5209314 ((_ is Concat!23642) (regTwo!30106 r!7292))) b!5210067))

(assert (= (and b!5209314 ((_ is Star!14797) (regTwo!30106 r!7292))) b!5210068))

(assert (= (and b!5209314 ((_ is Union!14797) (regTwo!30106 r!7292))) b!5210069))

(declare-fun b!5210070 () Bool)

(declare-fun e!3243599 () Bool)

(declare-fun tp!1461107 () Bool)

(declare-fun tp!1461108 () Bool)

(assert (=> b!5210070 (= e!3243599 (and tp!1461107 tp!1461108))))

(assert (=> b!5209324 (= tp!1461003 e!3243599)))

(assert (= (and b!5209324 ((_ is Cons!60566) (exprs!4681 setElem!33084))) b!5210070))

(declare-fun condSetEmpty!33090 () Bool)

(assert (=> setNonEmpty!33084 (= condSetEmpty!33090 (= setRest!33084 ((as const (Array Context!8362 Bool)) false)))))

(declare-fun setRes!33090 () Bool)

(assert (=> setNonEmpty!33084 (= tp!1461007 setRes!33090)))

(declare-fun setIsEmpty!33090 () Bool)

(assert (=> setIsEmpty!33090 setRes!33090))

(declare-fun tp!1461113 () Bool)

(declare-fun setNonEmpty!33090 () Bool)

(declare-fun setElem!33090 () Context!8362)

(declare-fun e!3243602 () Bool)

(assert (=> setNonEmpty!33090 (= setRes!33090 (and tp!1461113 (inv!80239 setElem!33090) e!3243602))))

(declare-fun setRest!33090 () (InoxSet Context!8362))

(assert (=> setNonEmpty!33090 (= setRest!33084 ((_ map or) (store ((as const (Array Context!8362 Bool)) false) setElem!33090 true) setRest!33090))))

(declare-fun b!5210075 () Bool)

(declare-fun tp!1461114 () Bool)

(assert (=> b!5210075 (= e!3243602 tp!1461114)))

(assert (= (and setNonEmpty!33084 condSetEmpty!33090) setIsEmpty!33090))

(assert (= (and setNonEmpty!33084 (not condSetEmpty!33090)) setNonEmpty!33090))

(assert (= setNonEmpty!33090 b!5210075))

(declare-fun m!6259930 () Bool)

(assert (=> setNonEmpty!33090 m!6259930))

(declare-fun b!5210078 () Bool)

(declare-fun e!3243603 () Bool)

(declare-fun tp!1461118 () Bool)

(assert (=> b!5210078 (= e!3243603 tp!1461118)))

(declare-fun b!5210076 () Bool)

(assert (=> b!5210076 (= e!3243603 tp_is_empty!38847)))

(assert (=> b!5209315 (= tp!1461005 e!3243603)))

(declare-fun b!5210077 () Bool)

(declare-fun tp!1461119 () Bool)

(declare-fun tp!1461117 () Bool)

(assert (=> b!5210077 (= e!3243603 (and tp!1461119 tp!1461117))))

(declare-fun b!5210079 () Bool)

(declare-fun tp!1461115 () Bool)

(declare-fun tp!1461116 () Bool)

(assert (=> b!5210079 (= e!3243603 (and tp!1461115 tp!1461116))))

(assert (= (and b!5209315 ((_ is ElementMatch!14797) (reg!15126 r!7292))) b!5210076))

(assert (= (and b!5209315 ((_ is Concat!23642) (reg!15126 r!7292))) b!5210077))

(assert (= (and b!5209315 ((_ is Star!14797) (reg!15126 r!7292))) b!5210078))

(assert (= (and b!5209315 ((_ is Union!14797) (reg!15126 r!7292))) b!5210079))

(declare-fun b!5210087 () Bool)

(declare-fun e!3243609 () Bool)

(declare-fun tp!1461124 () Bool)

(assert (=> b!5210087 (= e!3243609 tp!1461124)))

(declare-fun tp!1461125 () Bool)

(declare-fun e!3243608 () Bool)

(declare-fun b!5210086 () Bool)

(assert (=> b!5210086 (= e!3243608 (and (inv!80239 (h!67015 (t!373852 zl!343))) e!3243609 tp!1461125))))

(assert (=> b!5209326 (= tp!1461006 e!3243608)))

(assert (= b!5210086 b!5210087))

(assert (= (and b!5209326 ((_ is Cons!60567) (t!373852 zl!343))) b!5210086))

(declare-fun m!6259932 () Bool)

(assert (=> b!5210086 m!6259932))

(declare-fun b_lambda!201531 () Bool)

(assert (= b_lambda!201529 (or b!5209316 b_lambda!201531)))

(declare-fun bs!1210569 () Bool)

(declare-fun d!1679992 () Bool)

(assert (= bs!1210569 (and d!1679992 b!5209316)))

(assert (=> bs!1210569 (= (dynLambda!23927 lambda!261185 (h!67015 zl!343)) (derivationStepZipperUp!169 (h!67015 zl!343) (h!67016 s!2326)))))

(assert (=> bs!1210569 m!6259462))

(assert (=> d!1679978 d!1679992))

(check-sat (not b!5210068) (not d!1679966) (not b!5209745) (not b!5209807) (not b!5209850) (not d!1679952) (not b!5209744) (not b!5209990) (not bm!366770) (not b!5210078) (not b!5209741) (not b!5209814) (not b!5209811) (not d!1679948) (not bm!366734) (not b!5209972) (not bs!1210569) (not d!1679950) (not b!5209808) (not b!5210033) (not b!5209949) (not b!5210038) (not b!5209934) (not b!5209936) (not b!5209815) (not d!1679958) (not d!1679984) (not b!5209976) (not b!5210050) (not b!5210070) (not bm!366765) (not b!5209945) (not b!5209948) (not b!5210023) (not d!1679940) (not b!5210087) (not b!5209826) (not b!5209820) (not bm!366774) (not b!5210075) (not b!5210028) (not d!1679956) (not bm!366739) (not b!5209891) (not d!1679938) (not bm!366766) (not b!5209689) (not bm!366733) (not b!5210065) (not setNonEmpty!33090) (not bm!366752) (not b!5210031) (not bm!366764) (not d!1679904) (not d!1679946) (not b!5209810) (not b!5209809) (not d!1679960) (not b!5210086) (not b!5210077) (not bm!366737) (not b!5209939) (not b!5210021) (not d!1679954) (not b!5210052) (not b!5209947) (not d!1679924) (not b!5210054) (not d!1679932) (not b!5210061) (not b!5209742) (not b_lambda!201531) (not bm!366775) (not b!5209894) (not b!5209827) (not b!5209746) (not b!5209970) (not b!5209975) (not b!5210069) (not b!5209929) (not b!5210055) (not b!5210063) (not b!5210051) (not b!5209974) tp_is_empty!38847 (not b!5210008) (not d!1679962) (not b!5210079) (not b!5210026) (not bm!366758) (not b!5209747) (not b!5209946) (not bm!366767) (not b!5209968) (not b!5209830) (not d!1679964) (not bm!366759) (not b!5209942) (not b!5210067) (not b!5209669) (not d!1679986) (not bm!366776) (not b!5210056) (not bm!366743) (not b!5209748) (not d!1679970) (not bm!366740) (not bm!366762) (not b!5209933) (not d!1679976) (not b!5210064) (not d!1679936) (not bm!366753) (not d!1679978))
(check-sat)
(get-model)

(declare-fun b!5210328 () Bool)

(declare-fun e!3243766 () Bool)

(declare-fun call!366841 () Bool)

(assert (=> b!5210328 (= e!3243766 call!366841)))

(declare-fun bm!366835 () Bool)

(declare-fun call!366840 () Bool)

(assert (=> bm!366835 (= call!366840 call!366841)))

(declare-fun b!5210329 () Bool)

(declare-fun e!3243760 () Bool)

(assert (=> b!5210329 (= e!3243760 e!3243766)))

(declare-fun res!2213094 () Bool)

(assert (=> b!5210329 (= res!2213094 (not (nullable!4966 (reg!15126 (ite c!898354 (regOne!30107 r!7292) (regOne!30106 r!7292))))))))

(assert (=> b!5210329 (=> (not res!2213094) (not e!3243766))))

(declare-fun b!5210330 () Bool)

(declare-fun res!2213091 () Bool)

(declare-fun e!3243762 () Bool)

(assert (=> b!5210330 (=> res!2213091 e!3243762)))

(assert (=> b!5210330 (= res!2213091 (not ((_ is Concat!23642) (ite c!898354 (regOne!30107 r!7292) (regOne!30106 r!7292)))))))

(declare-fun e!3243765 () Bool)

(assert (=> b!5210330 (= e!3243765 e!3243762)))

(declare-fun b!5210331 () Bool)

(declare-fun res!2213093 () Bool)

(declare-fun e!3243763 () Bool)

(assert (=> b!5210331 (=> (not res!2213093) (not e!3243763))))

(declare-fun call!366842 () Bool)

(assert (=> b!5210331 (= res!2213093 call!366842)))

(assert (=> b!5210331 (= e!3243765 e!3243763)))

(declare-fun b!5210332 () Bool)

(declare-fun e!3243764 () Bool)

(assert (=> b!5210332 (= e!3243762 e!3243764)))

(declare-fun res!2213092 () Bool)

(assert (=> b!5210332 (=> (not res!2213092) (not e!3243764))))

(assert (=> b!5210332 (= res!2213092 call!366842)))

(declare-fun d!1680096 () Bool)

(declare-fun res!2213095 () Bool)

(declare-fun e!3243761 () Bool)

(assert (=> d!1680096 (=> res!2213095 e!3243761)))

(assert (=> d!1680096 (= res!2213095 ((_ is ElementMatch!14797) (ite c!898354 (regOne!30107 r!7292) (regOne!30106 r!7292))))))

(assert (=> d!1680096 (= (validRegex!6533 (ite c!898354 (regOne!30107 r!7292) (regOne!30106 r!7292))) e!3243761)))

(declare-fun c!898470 () Bool)

(declare-fun bm!366836 () Bool)

(declare-fun c!898469 () Bool)

(assert (=> bm!366836 (= call!366841 (validRegex!6533 (ite c!898469 (reg!15126 (ite c!898354 (regOne!30107 r!7292) (regOne!30106 r!7292))) (ite c!898470 (regTwo!30107 (ite c!898354 (regOne!30107 r!7292) (regOne!30106 r!7292))) (regTwo!30106 (ite c!898354 (regOne!30107 r!7292) (regOne!30106 r!7292)))))))))

(declare-fun b!5210333 () Bool)

(assert (=> b!5210333 (= e!3243763 call!366840)))

(declare-fun b!5210334 () Bool)

(assert (=> b!5210334 (= e!3243764 call!366840)))

(declare-fun b!5210335 () Bool)

(assert (=> b!5210335 (= e!3243760 e!3243765)))

(assert (=> b!5210335 (= c!898470 ((_ is Union!14797) (ite c!898354 (regOne!30107 r!7292) (regOne!30106 r!7292))))))

(declare-fun b!5210336 () Bool)

(assert (=> b!5210336 (= e!3243761 e!3243760)))

(assert (=> b!5210336 (= c!898469 ((_ is Star!14797) (ite c!898354 (regOne!30107 r!7292) (regOne!30106 r!7292))))))

(declare-fun bm!366837 () Bool)

(assert (=> bm!366837 (= call!366842 (validRegex!6533 (ite c!898470 (regOne!30107 (ite c!898354 (regOne!30107 r!7292) (regOne!30106 r!7292))) (regOne!30106 (ite c!898354 (regOne!30107 r!7292) (regOne!30106 r!7292))))))))

(assert (= (and d!1680096 (not res!2213095)) b!5210336))

(assert (= (and b!5210336 c!898469) b!5210329))

(assert (= (and b!5210336 (not c!898469)) b!5210335))

(assert (= (and b!5210329 res!2213094) b!5210328))

(assert (= (and b!5210335 c!898470) b!5210331))

(assert (= (and b!5210335 (not c!898470)) b!5210330))

(assert (= (and b!5210331 res!2213093) b!5210333))

(assert (= (and b!5210330 (not res!2213091)) b!5210332))

(assert (= (and b!5210332 res!2213092) b!5210334))

(assert (= (or b!5210333 b!5210334) bm!366835))

(assert (= (or b!5210331 b!5210332) bm!366837))

(assert (= (or b!5210328 bm!366835) bm!366836))

(declare-fun m!6260168 () Bool)

(assert (=> b!5210329 m!6260168))

(declare-fun m!6260170 () Bool)

(assert (=> bm!366836 m!6260170))

(declare-fun m!6260172 () Bool)

(assert (=> bm!366837 m!6260172))

(assert (=> bm!366753 d!1680096))

(declare-fun d!1680098 () Bool)

(declare-fun c!898471 () Bool)

(assert (=> d!1680098 (= c!898471 (isEmpty!32481 (tail!10267 (t!373853 s!2326))))))

(declare-fun e!3243767 () Bool)

(assert (=> d!1680098 (= (matchZipper!1041 (derivationStepZipper!1069 lt!2141942 (head!11170 (t!373853 s!2326))) (tail!10267 (t!373853 s!2326))) e!3243767)))

(declare-fun b!5210337 () Bool)

(assert (=> b!5210337 (= e!3243767 (nullableZipper!1225 (derivationStepZipper!1069 lt!2141942 (head!11170 (t!373853 s!2326)))))))

(declare-fun b!5210338 () Bool)

(assert (=> b!5210338 (= e!3243767 (matchZipper!1041 (derivationStepZipper!1069 (derivationStepZipper!1069 lt!2141942 (head!11170 (t!373853 s!2326))) (head!11170 (tail!10267 (t!373853 s!2326)))) (tail!10267 (tail!10267 (t!373853 s!2326)))))))

(assert (= (and d!1680098 c!898471) b!5210337))

(assert (= (and d!1680098 (not c!898471)) b!5210338))

(assert (=> d!1680098 m!6259794))

(declare-fun m!6260174 () Bool)

(assert (=> d!1680098 m!6260174))

(assert (=> b!5210337 m!6259792))

(declare-fun m!6260176 () Bool)

(assert (=> b!5210337 m!6260176))

(assert (=> b!5210338 m!6259794))

(declare-fun m!6260178 () Bool)

(assert (=> b!5210338 m!6260178))

(assert (=> b!5210338 m!6259792))

(assert (=> b!5210338 m!6260178))

(declare-fun m!6260180 () Bool)

(assert (=> b!5210338 m!6260180))

(assert (=> b!5210338 m!6259794))

(declare-fun m!6260182 () Bool)

(assert (=> b!5210338 m!6260182))

(assert (=> b!5210338 m!6260180))

(assert (=> b!5210338 m!6260182))

(declare-fun m!6260184 () Bool)

(assert (=> b!5210338 m!6260184))

(assert (=> b!5209827 d!1680098))

(declare-fun bs!1210612 () Bool)

(declare-fun d!1680100 () Bool)

(assert (= bs!1210612 (and d!1680100 b!5209316)))

(declare-fun lambda!261261 () Int)

(assert (=> bs!1210612 (= (= (head!11170 (t!373853 s!2326)) (h!67016 s!2326)) (= lambda!261261 lambda!261185))))

(assert (=> d!1680100 true))

(assert (=> d!1680100 (= (derivationStepZipper!1069 lt!2141942 (head!11170 (t!373853 s!2326))) (flatMap!524 lt!2141942 lambda!261261))))

(declare-fun bs!1210613 () Bool)

(assert (= bs!1210613 d!1680100))

(declare-fun m!6260192 () Bool)

(assert (=> bs!1210613 m!6260192))

(assert (=> b!5209827 d!1680100))

(declare-fun d!1680104 () Bool)

(assert (=> d!1680104 (= (head!11170 (t!373853 s!2326)) (h!67016 (t!373853 s!2326)))))

(assert (=> b!5209827 d!1680104))

(declare-fun d!1680106 () Bool)

(assert (=> d!1680106 (= (tail!10267 (t!373853 s!2326)) (t!373853 (t!373853 s!2326)))))

(assert (=> b!5209827 d!1680106))

(declare-fun d!1680108 () Bool)

(assert (=> d!1680108 (= (isDefined!11611 lt!2142018) (not (isEmpty!32482 lt!2142018)))))

(declare-fun bs!1210619 () Bool)

(assert (= bs!1210619 d!1680108))

(declare-fun m!6260194 () Bool)

(assert (=> bs!1210619 m!6260194))

(assert (=> b!5209975 d!1680108))

(declare-fun d!1680110 () Bool)

(assert (=> d!1680110 (= (head!11169 (exprs!4681 (h!67015 zl!343))) (h!67014 (exprs!4681 (h!67015 zl!343))))))

(assert (=> b!5209748 d!1680110))

(declare-fun b!5210361 () Bool)

(declare-fun e!3243785 () Bool)

(declare-fun call!366848 () Bool)

(assert (=> b!5210361 (= e!3243785 call!366848)))

(declare-fun bm!366842 () Bool)

(declare-fun call!366847 () Bool)

(assert (=> bm!366842 (= call!366847 call!366848)))

(declare-fun b!5210362 () Bool)

(declare-fun e!3243779 () Bool)

(assert (=> b!5210362 (= e!3243779 e!3243785)))

(declare-fun res!2213101 () Bool)

(assert (=> b!5210362 (= res!2213101 (not (nullable!4966 (reg!15126 lt!2141991))))))

(assert (=> b!5210362 (=> (not res!2213101) (not e!3243785))))

(declare-fun b!5210363 () Bool)

(declare-fun res!2213098 () Bool)

(declare-fun e!3243781 () Bool)

(assert (=> b!5210363 (=> res!2213098 e!3243781)))

(assert (=> b!5210363 (= res!2213098 (not ((_ is Concat!23642) lt!2141991)))))

(declare-fun e!3243784 () Bool)

(assert (=> b!5210363 (= e!3243784 e!3243781)))

(declare-fun b!5210364 () Bool)

(declare-fun res!2213100 () Bool)

(declare-fun e!3243782 () Bool)

(assert (=> b!5210364 (=> (not res!2213100) (not e!3243782))))

(declare-fun call!366849 () Bool)

(assert (=> b!5210364 (= res!2213100 call!366849)))

(assert (=> b!5210364 (= e!3243784 e!3243782)))

(declare-fun b!5210365 () Bool)

(declare-fun e!3243783 () Bool)

(assert (=> b!5210365 (= e!3243781 e!3243783)))

(declare-fun res!2213099 () Bool)

(assert (=> b!5210365 (=> (not res!2213099) (not e!3243783))))

(assert (=> b!5210365 (= res!2213099 call!366849)))

(declare-fun d!1680112 () Bool)

(declare-fun res!2213102 () Bool)

(declare-fun e!3243780 () Bool)

(assert (=> d!1680112 (=> res!2213102 e!3243780)))

(assert (=> d!1680112 (= res!2213102 ((_ is ElementMatch!14797) lt!2141991))))

(assert (=> d!1680112 (= (validRegex!6533 lt!2141991) e!3243780)))

(declare-fun c!898483 () Bool)

(declare-fun c!898484 () Bool)

(declare-fun bm!366843 () Bool)

(assert (=> bm!366843 (= call!366848 (validRegex!6533 (ite c!898483 (reg!15126 lt!2141991) (ite c!898484 (regTwo!30107 lt!2141991) (regTwo!30106 lt!2141991)))))))

(declare-fun b!5210366 () Bool)

(assert (=> b!5210366 (= e!3243782 call!366847)))

(declare-fun b!5210367 () Bool)

(assert (=> b!5210367 (= e!3243783 call!366847)))

(declare-fun b!5210368 () Bool)

(assert (=> b!5210368 (= e!3243779 e!3243784)))

(assert (=> b!5210368 (= c!898484 ((_ is Union!14797) lt!2141991))))

(declare-fun b!5210369 () Bool)

(assert (=> b!5210369 (= e!3243780 e!3243779)))

(assert (=> b!5210369 (= c!898483 ((_ is Star!14797) lt!2141991))))

(declare-fun bm!366844 () Bool)

(assert (=> bm!366844 (= call!366849 (validRegex!6533 (ite c!898484 (regOne!30107 lt!2141991) (regOne!30106 lt!2141991))))))

(assert (= (and d!1680112 (not res!2213102)) b!5210369))

(assert (= (and b!5210369 c!898483) b!5210362))

(assert (= (and b!5210369 (not c!898483)) b!5210368))

(assert (= (and b!5210362 res!2213101) b!5210361))

(assert (= (and b!5210368 c!898484) b!5210364))

(assert (= (and b!5210368 (not c!898484)) b!5210363))

(assert (= (and b!5210364 res!2213100) b!5210366))

(assert (= (and b!5210363 (not res!2213098)) b!5210365))

(assert (= (and b!5210365 res!2213099) b!5210367))

(assert (= (or b!5210366 b!5210367) bm!366842))

(assert (= (or b!5210364 b!5210365) bm!366844))

(assert (= (or b!5210361 bm!366842) bm!366843))

(declare-fun m!6260216 () Bool)

(assert (=> b!5210362 m!6260216))

(declare-fun m!6260220 () Bool)

(assert (=> bm!366843 m!6260220))

(declare-fun m!6260222 () Bool)

(assert (=> bm!366844 m!6260222))

(assert (=> d!1679924 d!1680112))

(declare-fun d!1680122 () Bool)

(declare-fun res!2213115 () Bool)

(declare-fun e!3243800 () Bool)

(assert (=> d!1680122 (=> res!2213115 e!3243800)))

(assert (=> d!1680122 (= res!2213115 ((_ is Nil!60566) (exprs!4681 (h!67015 zl!343))))))

(assert (=> d!1680122 (= (forall!14233 (exprs!4681 (h!67015 zl!343)) lambda!261216) e!3243800)))

(declare-fun b!5210387 () Bool)

(declare-fun e!3243801 () Bool)

(assert (=> b!5210387 (= e!3243800 e!3243801)))

(declare-fun res!2213116 () Bool)

(assert (=> b!5210387 (=> (not res!2213116) (not e!3243801))))

(declare-fun dynLambda!23929 (Int Regex!14797) Bool)

(assert (=> b!5210387 (= res!2213116 (dynLambda!23929 lambda!261216 (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun b!5210388 () Bool)

(assert (=> b!5210388 (= e!3243801 (forall!14233 (t!373851 (exprs!4681 (h!67015 zl!343))) lambda!261216))))

(assert (= (and d!1680122 (not res!2213115)) b!5210387))

(assert (= (and b!5210387 res!2213116) b!5210388))

(declare-fun b_lambda!201539 () Bool)

(assert (=> (not b_lambda!201539) (not b!5210387)))

(declare-fun m!6260242 () Bool)

(assert (=> b!5210387 m!6260242))

(declare-fun m!6260244 () Bool)

(assert (=> b!5210388 m!6260244))

(assert (=> d!1679924 d!1680122))

(declare-fun d!1680136 () Bool)

(assert (=> d!1680136 (= (isEmpty!32481 (tail!10267 s!2326)) ((_ is Nil!60568) (tail!10267 s!2326)))))

(assert (=> b!5209942 d!1680136))

(declare-fun d!1680140 () Bool)

(assert (=> d!1680140 (= (tail!10267 s!2326) (t!373853 s!2326))))

(assert (=> b!5209942 d!1680140))

(declare-fun c!898493 () Bool)

(declare-fun b!5210403 () Bool)

(assert (=> b!5210403 (= c!898493 ((_ is Star!14797) (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343)))))))))))

(declare-fun e!3243814 () (InoxSet Context!8362))

(declare-fun e!3243809 () (InoxSet Context!8362))

(assert (=> b!5210403 (= e!3243814 e!3243809)))

(declare-fun b!5210404 () Bool)

(declare-fun e!3243812 () (InoxSet Context!8362))

(declare-fun e!3243810 () (InoxSet Context!8362))

(assert (=> b!5210404 (= e!3243812 e!3243810)))

(declare-fun c!898494 () Bool)

(assert (=> b!5210404 (= c!898494 ((_ is Union!14797) (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343)))))))))))

(declare-fun b!5210405 () Bool)

(assert (=> b!5210405 (= e!3243809 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5210406 () Bool)

(declare-fun e!3243813 () (InoxSet Context!8362))

(assert (=> b!5210406 (= e!3243813 e!3243814)))

(declare-fun c!898491 () Bool)

(assert (=> b!5210406 (= c!898491 ((_ is Concat!23642) (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343)))))))))))

(declare-fun call!366855 () (InoxSet Context!8362))

(declare-fun bm!366849 () Bool)

(declare-fun c!898492 () Bool)

(declare-fun call!366859 () List!60690)

(assert (=> bm!366849 (= call!366855 (derivationStepZipperDown!245 (ite c!898494 (regOne!30107 (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343)))))))) (ite c!898492 (regTwo!30106 (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343)))))))) (ite c!898491 (regOne!30106 (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343)))))))) (reg!15126 (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343))))))))))) (ite (or c!898494 c!898492) (ite (or c!898389 c!898387) lt!2141932 (Context!8363 call!366776)) (Context!8363 call!366859)) (h!67016 s!2326)))))

(declare-fun b!5210407 () Bool)

(declare-fun call!366857 () (InoxSet Context!8362))

(assert (=> b!5210407 (= e!3243810 ((_ map or) call!366855 call!366857))))

(declare-fun call!366856 () List!60690)

(declare-fun bm!366850 () Bool)

(assert (=> bm!366850 (= call!366857 (derivationStepZipperDown!245 (ite c!898494 (regTwo!30107 (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343)))))))) (regOne!30106 (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343))))))))) (ite c!898494 (ite (or c!898389 c!898387) lt!2141932 (Context!8363 call!366776)) (Context!8363 call!366856)) (h!67016 s!2326)))))

(declare-fun d!1680142 () Bool)

(declare-fun c!898495 () Bool)

(assert (=> d!1680142 (= c!898495 (and ((_ is ElementMatch!14797) (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343)))))))) (= (c!898196 (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343)))))))) (h!67016 s!2326))))))

(assert (=> d!1680142 (= (derivationStepZipperDown!245 (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343))))))) (ite (or c!898389 c!898387) lt!2141932 (Context!8363 call!366776)) (h!67016 s!2326)) e!3243812)))

(declare-fun bm!366851 () Bool)

(assert (=> bm!366851 (= call!366859 call!366856)))

(declare-fun b!5210408 () Bool)

(declare-fun call!366854 () (InoxSet Context!8362))

(assert (=> b!5210408 (= e!3243809 call!366854)))

(declare-fun bm!366852 () Bool)

(declare-fun call!366858 () (InoxSet Context!8362))

(assert (=> bm!366852 (= call!366854 call!366858)))

(declare-fun b!5210409 () Bool)

(assert (=> b!5210409 (= e!3243814 call!366854)))

(declare-fun b!5210410 () Bool)

(assert (=> b!5210410 (= e!3243812 (store ((as const (Array Context!8362 Bool)) false) (ite (or c!898389 c!898387) lt!2141932 (Context!8363 call!366776)) true))))

(declare-fun bm!366853 () Bool)

(assert (=> bm!366853 (= call!366856 ($colon$colon!1275 (exprs!4681 (ite (or c!898389 c!898387) lt!2141932 (Context!8363 call!366776))) (ite (or c!898492 c!898491) (regTwo!30106 (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343)))))))) (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343))))))))))))

(declare-fun bm!366854 () Bool)

(assert (=> bm!366854 (= call!366858 call!366855)))

(declare-fun b!5210411 () Bool)

(assert (=> b!5210411 (= e!3243813 ((_ map or) call!366857 call!366858))))

(declare-fun b!5210412 () Bool)

(declare-fun e!3243811 () Bool)

(assert (=> b!5210412 (= c!898492 e!3243811)))

(declare-fun res!2213125 () Bool)

(assert (=> b!5210412 (=> (not res!2213125) (not e!3243811))))

(assert (=> b!5210412 (= res!2213125 ((_ is Concat!23642) (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343)))))))))))

(assert (=> b!5210412 (= e!3243810 e!3243813)))

(declare-fun b!5210413 () Bool)

(assert (=> b!5210413 (= e!3243811 (nullable!4966 (regOne!30106 (ite c!898389 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898387 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898386 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343))))))))))))

(assert (= (and d!1680142 c!898495) b!5210410))

(assert (= (and d!1680142 (not c!898495)) b!5210404))

(assert (= (and b!5210404 c!898494) b!5210407))

(assert (= (and b!5210404 (not c!898494)) b!5210412))

(assert (= (and b!5210412 res!2213125) b!5210413))

(assert (= (and b!5210412 c!898492) b!5210411))

(assert (= (and b!5210412 (not c!898492)) b!5210406))

(assert (= (and b!5210406 c!898491) b!5210409))

(assert (= (and b!5210406 (not c!898491)) b!5210403))

(assert (= (and b!5210403 c!898493) b!5210408))

(assert (= (and b!5210403 (not c!898493)) b!5210405))

(assert (= (or b!5210409 b!5210408) bm!366851))

(assert (= (or b!5210409 b!5210408) bm!366852))

(assert (= (or b!5210411 bm!366851) bm!366853))

(assert (= (or b!5210411 bm!366852) bm!366854))

(assert (= (or b!5210407 b!5210411) bm!366850))

(assert (= (or b!5210407 bm!366854) bm!366849))

(declare-fun m!6260260 () Bool)

(assert (=> b!5210413 m!6260260))

(declare-fun m!6260262 () Bool)

(assert (=> bm!366853 m!6260262))

(declare-fun m!6260264 () Bool)

(assert (=> bm!366849 m!6260264))

(declare-fun m!6260266 () Bool)

(assert (=> bm!366850 m!6260266))

(declare-fun m!6260268 () Bool)

(assert (=> b!5210410 m!6260268))

(assert (=> bm!366766 d!1680142))

(declare-fun d!1680146 () Bool)

(assert (=> d!1680146 true))

(assert (=> d!1680146 true))

(declare-fun res!2213128 () Bool)

(assert (=> d!1680146 (= (choose!38734 lambda!261184) res!2213128)))

(assert (=> d!1679958 d!1680146))

(declare-fun d!1680152 () Bool)

(declare-fun lambda!261268 () Int)

(declare-fun exists!1962 ((InoxSet Context!8362) Int) Bool)

(assert (=> d!1680152 (= (nullableZipper!1225 lt!2141943) (exists!1962 lt!2141943 lambda!261268))))

(declare-fun bs!1210634 () Bool)

(assert (= bs!1210634 d!1680152))

(declare-fun m!6260276 () Bool)

(assert (=> bs!1210634 m!6260276))

(assert (=> b!5209946 d!1680152))

(declare-fun d!1680156 () Bool)

(assert (=> d!1680156 (= (isEmpty!32482 (findConcatSeparation!1322 (regOne!30106 r!7292) (regTwo!30106 r!7292) Nil!60568 s!2326 s!2326)) (not ((_ is Some!14907) (findConcatSeparation!1322 (regOne!30106 r!7292) (regTwo!30106 r!7292) Nil!60568 s!2326 s!2326))))))

(assert (=> d!1679966 d!1680156))

(declare-fun b!5210419 () Bool)

(declare-fun e!3243820 () (InoxSet Context!8362))

(declare-fun e!3243821 () (InoxSet Context!8362))

(assert (=> b!5210419 (= e!3243820 e!3243821)))

(declare-fun c!898499 () Bool)

(assert (=> b!5210419 (= c!898499 ((_ is Cons!60566) (exprs!4681 (Context!8363 (t!373851 (exprs!4681 lt!2141932))))))))

(declare-fun b!5210420 () Bool)

(assert (=> b!5210420 (= e!3243821 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5210421 () Bool)

(declare-fun call!366860 () (InoxSet Context!8362))

(assert (=> b!5210421 (= e!3243820 ((_ map or) call!366860 (derivationStepZipperUp!169 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 lt!2141932)))))) (h!67016 s!2326))))))

(declare-fun d!1680160 () Bool)

(declare-fun c!898500 () Bool)

(declare-fun e!3243819 () Bool)

(assert (=> d!1680160 (= c!898500 e!3243819)))

(declare-fun res!2213132 () Bool)

(assert (=> d!1680160 (=> (not res!2213132) (not e!3243819))))

(assert (=> d!1680160 (= res!2213132 ((_ is Cons!60566) (exprs!4681 (Context!8363 (t!373851 (exprs!4681 lt!2141932))))))))

(assert (=> d!1680160 (= (derivationStepZipperUp!169 (Context!8363 (t!373851 (exprs!4681 lt!2141932))) (h!67016 s!2326)) e!3243820)))

(declare-fun b!5210422 () Bool)

(assert (=> b!5210422 (= e!3243821 call!366860)))

(declare-fun bm!366855 () Bool)

(assert (=> bm!366855 (= call!366860 (derivationStepZipperDown!245 (h!67014 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 lt!2141932))))) (Context!8363 (t!373851 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 lt!2141932)))))) (h!67016 s!2326)))))

(declare-fun b!5210423 () Bool)

(assert (=> b!5210423 (= e!3243819 (nullable!4966 (h!67014 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 lt!2141932)))))))))

(assert (= (and d!1680160 res!2213132) b!5210423))

(assert (= (and d!1680160 c!898500) b!5210421))

(assert (= (and d!1680160 (not c!898500)) b!5210419))

(assert (= (and b!5210419 c!898499) b!5210422))

(assert (= (and b!5210419 (not c!898499)) b!5210420))

(assert (= (or b!5210421 b!5210422) bm!366855))

(declare-fun m!6260280 () Bool)

(assert (=> b!5210421 m!6260280))

(declare-fun m!6260282 () Bool)

(assert (=> bm!366855 m!6260282))

(declare-fun m!6260284 () Bool)

(assert (=> b!5210423 m!6260284))

(assert (=> b!5210021 d!1680160))

(assert (=> d!1679956 d!1680108))

(declare-fun bm!366856 () Bool)

(declare-fun call!366861 () Bool)

(assert (=> bm!366856 (= call!366861 (isEmpty!32481 Nil!60568))))

(declare-fun b!5210428 () Bool)

(declare-fun e!3243830 () Bool)

(assert (=> b!5210428 (= e!3243830 (not (= (head!11170 Nil!60568) (c!898196 (regOne!30106 r!7292)))))))

(declare-fun b!5210429 () Bool)

(declare-fun res!2213135 () Bool)

(declare-fun e!3243825 () Bool)

(assert (=> b!5210429 (=> (not res!2213135) (not e!3243825))))

(assert (=> b!5210429 (= res!2213135 (not call!366861))))

(declare-fun b!5210430 () Bool)

(declare-fun res!2213134 () Bool)

(declare-fun e!3243827 () Bool)

(assert (=> b!5210430 (=> res!2213134 e!3243827)))

(assert (=> b!5210430 (= res!2213134 e!3243825)))

(declare-fun res!2213136 () Bool)

(assert (=> b!5210430 (=> (not res!2213136) (not e!3243825))))

(declare-fun lt!2142047 () Bool)

(assert (=> b!5210430 (= res!2213136 lt!2142047)))

(declare-fun d!1680162 () Bool)

(declare-fun e!3243824 () Bool)

(assert (=> d!1680162 e!3243824))

(declare-fun c!898503 () Bool)

(assert (=> d!1680162 (= c!898503 ((_ is EmptyExpr!14797) (regOne!30106 r!7292)))))

(declare-fun e!3243828 () Bool)

(assert (=> d!1680162 (= lt!2142047 e!3243828)))

(declare-fun c!898505 () Bool)

(assert (=> d!1680162 (= c!898505 (isEmpty!32481 Nil!60568))))

(assert (=> d!1680162 (validRegex!6533 (regOne!30106 r!7292))))

(assert (=> d!1680162 (= (matchR!6982 (regOne!30106 r!7292) Nil!60568) lt!2142047)))

(declare-fun b!5210431 () Bool)

(declare-fun e!3243826 () Bool)

(assert (=> b!5210431 (= e!3243826 e!3243830)))

(declare-fun res!2213139 () Bool)

(assert (=> b!5210431 (=> res!2213139 e!3243830)))

(assert (=> b!5210431 (= res!2213139 call!366861)))

(declare-fun b!5210432 () Bool)

(assert (=> b!5210432 (= e!3243825 (= (head!11170 Nil!60568) (c!898196 (regOne!30106 r!7292))))))

(declare-fun b!5210433 () Bool)

(declare-fun res!2213140 () Bool)

(assert (=> b!5210433 (=> (not res!2213140) (not e!3243825))))

(assert (=> b!5210433 (= res!2213140 (isEmpty!32481 (tail!10267 Nil!60568)))))

(declare-fun b!5210434 () Bool)

(assert (=> b!5210434 (= e!3243824 (= lt!2142047 call!366861))))

(declare-fun b!5210435 () Bool)

(assert (=> b!5210435 (= e!3243828 (matchR!6982 (derivativeStep!4047 (regOne!30106 r!7292) (head!11170 Nil!60568)) (tail!10267 Nil!60568)))))

(declare-fun b!5210436 () Bool)

(declare-fun e!3243829 () Bool)

(assert (=> b!5210436 (= e!3243829 (not lt!2142047))))

(declare-fun b!5210437 () Bool)

(assert (=> b!5210437 (= e!3243824 e!3243829)))

(declare-fun c!898504 () Bool)

(assert (=> b!5210437 (= c!898504 ((_ is EmptyLang!14797) (regOne!30106 r!7292)))))

(declare-fun b!5210438 () Bool)

(assert (=> b!5210438 (= e!3243828 (nullable!4966 (regOne!30106 r!7292)))))

(declare-fun b!5210439 () Bool)

(declare-fun res!2213138 () Bool)

(assert (=> b!5210439 (=> res!2213138 e!3243827)))

(assert (=> b!5210439 (= res!2213138 (not ((_ is ElementMatch!14797) (regOne!30106 r!7292))))))

(assert (=> b!5210439 (= e!3243829 e!3243827)))

(declare-fun b!5210440 () Bool)

(assert (=> b!5210440 (= e!3243827 e!3243826)))

(declare-fun res!2213133 () Bool)

(assert (=> b!5210440 (=> (not res!2213133) (not e!3243826))))

(assert (=> b!5210440 (= res!2213133 (not lt!2142047))))

(declare-fun b!5210441 () Bool)

(declare-fun res!2213137 () Bool)

(assert (=> b!5210441 (=> res!2213137 e!3243830)))

(assert (=> b!5210441 (= res!2213137 (not (isEmpty!32481 (tail!10267 Nil!60568))))))

(assert (= (and d!1680162 c!898505) b!5210438))

(assert (= (and d!1680162 (not c!898505)) b!5210435))

(assert (= (and d!1680162 c!898503) b!5210434))

(assert (= (and d!1680162 (not c!898503)) b!5210437))

(assert (= (and b!5210437 c!898504) b!5210436))

(assert (= (and b!5210437 (not c!898504)) b!5210439))

(assert (= (and b!5210439 (not res!2213138)) b!5210430))

(assert (= (and b!5210430 res!2213136) b!5210429))

(assert (= (and b!5210429 res!2213135) b!5210433))

(assert (= (and b!5210433 res!2213140) b!5210432))

(assert (= (and b!5210430 (not res!2213134)) b!5210440))

(assert (= (and b!5210440 res!2213133) b!5210431))

(assert (= (and b!5210431 (not res!2213139)) b!5210441))

(assert (= (and b!5210441 (not res!2213137)) b!5210428))

(assert (= (or b!5210434 b!5210429 b!5210431) bm!366856))

(declare-fun m!6260290 () Bool)

(assert (=> b!5210432 m!6260290))

(declare-fun m!6260292 () Bool)

(assert (=> d!1680162 m!6260292))

(assert (=> d!1680162 m!6259850))

(declare-fun m!6260294 () Bool)

(assert (=> b!5210438 m!6260294))

(declare-fun m!6260296 () Bool)

(assert (=> b!5210441 m!6260296))

(assert (=> b!5210441 m!6260296))

(declare-fun m!6260298 () Bool)

(assert (=> b!5210441 m!6260298))

(assert (=> b!5210435 m!6260290))

(assert (=> b!5210435 m!6260290))

(declare-fun m!6260300 () Bool)

(assert (=> b!5210435 m!6260300))

(assert (=> b!5210435 m!6260296))

(assert (=> b!5210435 m!6260300))

(assert (=> b!5210435 m!6260296))

(declare-fun m!6260302 () Bool)

(assert (=> b!5210435 m!6260302))

(assert (=> b!5210433 m!6260296))

(assert (=> b!5210433 m!6260296))

(assert (=> b!5210433 m!6260298))

(assert (=> bm!366856 m!6260292))

(assert (=> b!5210428 m!6260290))

(assert (=> d!1679956 d!1680162))

(declare-fun b!5210444 () Bool)

(declare-fun e!3243838 () Bool)

(declare-fun call!366863 () Bool)

(assert (=> b!5210444 (= e!3243838 call!366863)))

(declare-fun bm!366857 () Bool)

(declare-fun call!366862 () Bool)

(assert (=> bm!366857 (= call!366862 call!366863)))

(declare-fun b!5210445 () Bool)

(declare-fun e!3243832 () Bool)

(assert (=> b!5210445 (= e!3243832 e!3243838)))

(declare-fun res!2213144 () Bool)

(assert (=> b!5210445 (= res!2213144 (not (nullable!4966 (reg!15126 (regOne!30106 r!7292)))))))

(assert (=> b!5210445 (=> (not res!2213144) (not e!3243838))))

(declare-fun b!5210446 () Bool)

(declare-fun res!2213141 () Bool)

(declare-fun e!3243834 () Bool)

(assert (=> b!5210446 (=> res!2213141 e!3243834)))

(assert (=> b!5210446 (= res!2213141 (not ((_ is Concat!23642) (regOne!30106 r!7292))))))

(declare-fun e!3243837 () Bool)

(assert (=> b!5210446 (= e!3243837 e!3243834)))

(declare-fun b!5210447 () Bool)

(declare-fun res!2213143 () Bool)

(declare-fun e!3243835 () Bool)

(assert (=> b!5210447 (=> (not res!2213143) (not e!3243835))))

(declare-fun call!366864 () Bool)

(assert (=> b!5210447 (= res!2213143 call!366864)))

(assert (=> b!5210447 (= e!3243837 e!3243835)))

(declare-fun b!5210448 () Bool)

(declare-fun e!3243836 () Bool)

(assert (=> b!5210448 (= e!3243834 e!3243836)))

(declare-fun res!2213142 () Bool)

(assert (=> b!5210448 (=> (not res!2213142) (not e!3243836))))

(assert (=> b!5210448 (= res!2213142 call!366864)))

(declare-fun d!1680168 () Bool)

(declare-fun res!2213145 () Bool)

(declare-fun e!3243833 () Bool)

(assert (=> d!1680168 (=> res!2213145 e!3243833)))

(assert (=> d!1680168 (= res!2213145 ((_ is ElementMatch!14797) (regOne!30106 r!7292)))))

(assert (=> d!1680168 (= (validRegex!6533 (regOne!30106 r!7292)) e!3243833)))

(declare-fun c!898507 () Bool)

(declare-fun bm!366858 () Bool)

(declare-fun c!898508 () Bool)

(assert (=> bm!366858 (= call!366863 (validRegex!6533 (ite c!898507 (reg!15126 (regOne!30106 r!7292)) (ite c!898508 (regTwo!30107 (regOne!30106 r!7292)) (regTwo!30106 (regOne!30106 r!7292))))))))

(declare-fun b!5210449 () Bool)

(assert (=> b!5210449 (= e!3243835 call!366862)))

(declare-fun b!5210450 () Bool)

(assert (=> b!5210450 (= e!3243836 call!366862)))

(declare-fun b!5210451 () Bool)

(assert (=> b!5210451 (= e!3243832 e!3243837)))

(assert (=> b!5210451 (= c!898508 ((_ is Union!14797) (regOne!30106 r!7292)))))

(declare-fun b!5210452 () Bool)

(assert (=> b!5210452 (= e!3243833 e!3243832)))

(assert (=> b!5210452 (= c!898507 ((_ is Star!14797) (regOne!30106 r!7292)))))

(declare-fun bm!366859 () Bool)

(assert (=> bm!366859 (= call!366864 (validRegex!6533 (ite c!898508 (regOne!30107 (regOne!30106 r!7292)) (regOne!30106 (regOne!30106 r!7292)))))))

(assert (= (and d!1680168 (not res!2213145)) b!5210452))

(assert (= (and b!5210452 c!898507) b!5210445))

(assert (= (and b!5210452 (not c!898507)) b!5210451))

(assert (= (and b!5210445 res!2213144) b!5210444))

(assert (= (and b!5210451 c!898508) b!5210447))

(assert (= (and b!5210451 (not c!898508)) b!5210446))

(assert (= (and b!5210447 res!2213143) b!5210449))

(assert (= (and b!5210446 (not res!2213141)) b!5210448))

(assert (= (and b!5210448 res!2213142) b!5210450))

(assert (= (or b!5210449 b!5210450) bm!366857))

(assert (= (or b!5210447 b!5210448) bm!366859))

(assert (= (or b!5210444 bm!366857) bm!366858))

(declare-fun m!6260306 () Bool)

(assert (=> b!5210445 m!6260306))

(declare-fun m!6260308 () Bool)

(assert (=> bm!366858 m!6260308))

(declare-fun m!6260310 () Bool)

(assert (=> bm!366859 m!6260310))

(assert (=> d!1679956 d!1680168))

(declare-fun d!1680174 () Bool)

(assert (=> d!1680174 (= (nullable!4966 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (nullableFct!1377 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))))))

(declare-fun bs!1210643 () Bool)

(assert (= bs!1210643 d!1680174))

(declare-fun m!6260312 () Bool)

(assert (=> bs!1210643 m!6260312))

(assert (=> b!5210028 d!1680174))

(declare-fun d!1680178 () Bool)

(assert (=> d!1680178 (= (isEmpty!32481 s!2326) ((_ is Nil!60568) s!2326))))

(assert (=> bm!366758 d!1680178))

(declare-fun b!5210508 () Bool)

(declare-fun e!3243880 () Bool)

(declare-fun e!3243881 () Bool)

(assert (=> b!5210508 (= e!3243880 e!3243881)))

(declare-fun c!898521 () Bool)

(assert (=> b!5210508 (= c!898521 ((_ is Union!14797) (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun d!1680180 () Bool)

(declare-fun res!2213179 () Bool)

(declare-fun e!3243882 () Bool)

(assert (=> d!1680180 (=> res!2213179 e!3243882)))

(assert (=> d!1680180 (= res!2213179 ((_ is EmptyExpr!14797) (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(assert (=> d!1680180 (= (nullableFct!1377 (h!67014 (exprs!4681 (h!67015 zl!343)))) e!3243882)))

(declare-fun b!5210509 () Bool)

(declare-fun e!3243877 () Bool)

(assert (=> b!5210509 (= e!3243877 e!3243880)))

(declare-fun res!2213177 () Bool)

(assert (=> b!5210509 (=> res!2213177 e!3243880)))

(assert (=> b!5210509 (= res!2213177 ((_ is Star!14797) (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun b!5210510 () Bool)

(declare-fun e!3243879 () Bool)

(assert (=> b!5210510 (= e!3243881 e!3243879)))

(declare-fun res!2213180 () Bool)

(declare-fun call!366878 () Bool)

(assert (=> b!5210510 (= res!2213180 call!366878)))

(assert (=> b!5210510 (=> (not res!2213180) (not e!3243879))))

(declare-fun b!5210511 () Bool)

(declare-fun call!366877 () Bool)

(assert (=> b!5210511 (= e!3243879 call!366877)))

(declare-fun b!5210512 () Bool)

(assert (=> b!5210512 (= e!3243882 e!3243877)))

(declare-fun res!2213181 () Bool)

(assert (=> b!5210512 (=> (not res!2213181) (not e!3243877))))

(assert (=> b!5210512 (= res!2213181 (and (not ((_ is EmptyLang!14797) (h!67014 (exprs!4681 (h!67015 zl!343))))) (not ((_ is ElementMatch!14797) (h!67014 (exprs!4681 (h!67015 zl!343)))))))))

(declare-fun bm!366872 () Bool)

(assert (=> bm!366872 (= call!366877 (nullable!4966 (ite c!898521 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))))))

(declare-fun bm!366873 () Bool)

(assert (=> bm!366873 (= call!366878 (nullable!4966 (ite c!898521 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))))))

(declare-fun b!5210513 () Bool)

(declare-fun e!3243878 () Bool)

(assert (=> b!5210513 (= e!3243878 call!366877)))

(declare-fun b!5210514 () Bool)

(assert (=> b!5210514 (= e!3243881 e!3243878)))

(declare-fun res!2213178 () Bool)

(assert (=> b!5210514 (= res!2213178 call!366878)))

(assert (=> b!5210514 (=> res!2213178 e!3243878)))

(assert (= (and d!1680180 (not res!2213179)) b!5210512))

(assert (= (and b!5210512 res!2213181) b!5210509))

(assert (= (and b!5210509 (not res!2213177)) b!5210508))

(assert (= (and b!5210508 c!898521) b!5210514))

(assert (= (and b!5210508 (not c!898521)) b!5210510))

(assert (= (and b!5210514 (not res!2213178)) b!5210513))

(assert (= (and b!5210510 res!2213180) b!5210511))

(assert (= (or b!5210513 b!5210511) bm!366872))

(assert (= (or b!5210514 b!5210510) bm!366873))

(declare-fun m!6260348 () Bool)

(assert (=> bm!366872 m!6260348))

(declare-fun m!6260352 () Bool)

(assert (=> bm!366873 m!6260352))

(assert (=> d!1679986 d!1680180))

(assert (=> b!5210033 d!1679986))

(declare-fun b!5210515 () Bool)

(declare-fun c!898524 () Bool)

(assert (=> b!5210515 (= c!898524 ((_ is Star!14797) (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))))))

(declare-fun e!3243888 () (InoxSet Context!8362))

(declare-fun e!3243883 () (InoxSet Context!8362))

(assert (=> b!5210515 (= e!3243888 e!3243883)))

(declare-fun b!5210516 () Bool)

(declare-fun e!3243886 () (InoxSet Context!8362))

(declare-fun e!3243884 () (InoxSet Context!8362))

(assert (=> b!5210516 (= e!3243886 e!3243884)))

(declare-fun c!898525 () Bool)

(assert (=> b!5210516 (= c!898525 ((_ is Union!14797) (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))))))

(declare-fun b!5210517 () Bool)

(assert (=> b!5210517 (= e!3243883 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5210518 () Bool)

(declare-fun e!3243887 () (InoxSet Context!8362))

(assert (=> b!5210518 (= e!3243887 e!3243888)))

(declare-fun c!898522 () Bool)

(assert (=> b!5210518 (= c!898522 ((_ is Concat!23642) (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))))))

(declare-fun bm!366874 () Bool)

(declare-fun call!366884 () List!60690)

(declare-fun c!898523 () Bool)

(declare-fun call!366880 () (InoxSet Context!8362))

(assert (=> bm!366874 (= call!366880 (derivationStepZipperDown!245 (ite c!898525 (regOne!30107 (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))) (ite c!898523 (regTwo!30106 (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))) (ite c!898522 (regOne!30106 (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))) (reg!15126 (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343))))))))) (ite (or c!898525 c!898523) (ite c!898389 lt!2141932 (Context!8363 call!366773)) (Context!8363 call!366884)) (h!67016 s!2326)))))

(declare-fun b!5210519 () Bool)

(declare-fun call!366882 () (InoxSet Context!8362))

(assert (=> b!5210519 (= e!3243884 ((_ map or) call!366880 call!366882))))

(declare-fun bm!366875 () Bool)

(declare-fun call!366881 () List!60690)

(assert (=> bm!366875 (= call!366882 (derivationStepZipperDown!245 (ite c!898525 (regTwo!30107 (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))) (regOne!30106 (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343))))))) (ite c!898525 (ite c!898389 lt!2141932 (Context!8363 call!366773)) (Context!8363 call!366881)) (h!67016 s!2326)))))

(declare-fun d!1680200 () Bool)

(declare-fun c!898526 () Bool)

(assert (=> d!1680200 (= c!898526 (and ((_ is ElementMatch!14797) (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))) (= (c!898196 (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))) (h!67016 s!2326))))))

(assert (=> d!1680200 (= (derivationStepZipperDown!245 (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343))))) (ite c!898389 lt!2141932 (Context!8363 call!366773)) (h!67016 s!2326)) e!3243886)))

(declare-fun bm!366876 () Bool)

(assert (=> bm!366876 (= call!366884 call!366881)))

(declare-fun b!5210520 () Bool)

(declare-fun call!366879 () (InoxSet Context!8362))

(assert (=> b!5210520 (= e!3243883 call!366879)))

(declare-fun bm!366877 () Bool)

(declare-fun call!366883 () (InoxSet Context!8362))

(assert (=> bm!366877 (= call!366879 call!366883)))

(declare-fun b!5210521 () Bool)

(assert (=> b!5210521 (= e!3243888 call!366879)))

(declare-fun b!5210522 () Bool)

(assert (=> b!5210522 (= e!3243886 (store ((as const (Array Context!8362 Bool)) false) (ite c!898389 lt!2141932 (Context!8363 call!366773)) true))))

(declare-fun bm!366878 () Bool)

(assert (=> bm!366878 (= call!366881 ($colon$colon!1275 (exprs!4681 (ite c!898389 lt!2141932 (Context!8363 call!366773))) (ite (or c!898523 c!898522) (regTwo!30106 (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))) (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343))))))))))

(declare-fun bm!366879 () Bool)

(assert (=> bm!366879 (= call!366883 call!366880)))

(declare-fun b!5210523 () Bool)

(assert (=> b!5210523 (= e!3243887 ((_ map or) call!366882 call!366883))))

(declare-fun b!5210524 () Bool)

(declare-fun e!3243885 () Bool)

(assert (=> b!5210524 (= c!898523 e!3243885)))

(declare-fun res!2213182 () Bool)

(assert (=> b!5210524 (=> (not res!2213182) (not e!3243885))))

(assert (=> b!5210524 (= res!2213182 ((_ is Concat!23642) (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))))))))

(assert (=> b!5210524 (= e!3243884 e!3243887)))

(declare-fun b!5210525 () Bool)

(assert (=> b!5210525 (= e!3243885 (nullable!4966 (regOne!30106 (ite c!898389 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343))))))))))

(assert (= (and d!1680200 c!898526) b!5210522))

(assert (= (and d!1680200 (not c!898526)) b!5210516))

(assert (= (and b!5210516 c!898525) b!5210519))

(assert (= (and b!5210516 (not c!898525)) b!5210524))

(assert (= (and b!5210524 res!2213182) b!5210525))

(assert (= (and b!5210524 c!898523) b!5210523))

(assert (= (and b!5210524 (not c!898523)) b!5210518))

(assert (= (and b!5210518 c!898522) b!5210521))

(assert (= (and b!5210518 (not c!898522)) b!5210515))

(assert (= (and b!5210515 c!898524) b!5210520))

(assert (= (and b!5210515 (not c!898524)) b!5210517))

(assert (= (or b!5210521 b!5210520) bm!366876))

(assert (= (or b!5210521 b!5210520) bm!366877))

(assert (= (or b!5210523 bm!366876) bm!366878))

(assert (= (or b!5210523 bm!366877) bm!366879))

(assert (= (or b!5210519 b!5210523) bm!366875))

(assert (= (or b!5210519 bm!366879) bm!366874))

(declare-fun m!6260356 () Bool)

(assert (=> b!5210525 m!6260356))

(declare-fun m!6260358 () Bool)

(assert (=> bm!366878 m!6260358))

(declare-fun m!6260360 () Bool)

(assert (=> bm!366874 m!6260360))

(declare-fun m!6260362 () Bool)

(assert (=> bm!366875 m!6260362))

(declare-fun m!6260364 () Bool)

(assert (=> b!5210522 m!6260364))

(assert (=> bm!366767 d!1680200))

(assert (=> d!1679946 d!1680178))

(assert (=> d!1679946 d!1679942))

(declare-fun d!1680208 () Bool)

(assert (=> d!1680208 (= (head!11169 (unfocusZipperList!239 zl!343)) (h!67014 (unfocusZipperList!239 zl!343)))))

(assert (=> b!5209808 d!1680208))

(declare-fun b!5210526 () Bool)

(declare-fun e!3243895 () Bool)

(declare-fun call!366886 () Bool)

(assert (=> b!5210526 (= e!3243895 call!366886)))

(declare-fun bm!366880 () Bool)

(declare-fun call!366885 () Bool)

(assert (=> bm!366880 (= call!366885 call!366886)))

(declare-fun b!5210527 () Bool)

(declare-fun e!3243889 () Bool)

(assert (=> b!5210527 (= e!3243889 e!3243895)))

(declare-fun res!2213186 () Bool)

(assert (=> b!5210527 (= res!2213186 (not (nullable!4966 (reg!15126 lt!2141964))))))

(assert (=> b!5210527 (=> (not res!2213186) (not e!3243895))))

(declare-fun b!5210528 () Bool)

(declare-fun res!2213183 () Bool)

(declare-fun e!3243891 () Bool)

(assert (=> b!5210528 (=> res!2213183 e!3243891)))

(assert (=> b!5210528 (= res!2213183 (not ((_ is Concat!23642) lt!2141964)))))

(declare-fun e!3243894 () Bool)

(assert (=> b!5210528 (= e!3243894 e!3243891)))

(declare-fun b!5210529 () Bool)

(declare-fun res!2213185 () Bool)

(declare-fun e!3243892 () Bool)

(assert (=> b!5210529 (=> (not res!2213185) (not e!3243892))))

(declare-fun call!366887 () Bool)

(assert (=> b!5210529 (= res!2213185 call!366887)))

(assert (=> b!5210529 (= e!3243894 e!3243892)))

(declare-fun b!5210530 () Bool)

(declare-fun e!3243893 () Bool)

(assert (=> b!5210530 (= e!3243891 e!3243893)))

(declare-fun res!2213184 () Bool)

(assert (=> b!5210530 (=> (not res!2213184) (not e!3243893))))

(assert (=> b!5210530 (= res!2213184 call!366887)))

(declare-fun d!1680210 () Bool)

(declare-fun res!2213187 () Bool)

(declare-fun e!3243890 () Bool)

(assert (=> d!1680210 (=> res!2213187 e!3243890)))

(assert (=> d!1680210 (= res!2213187 ((_ is ElementMatch!14797) lt!2141964))))

(assert (=> d!1680210 (= (validRegex!6533 lt!2141964) e!3243890)))

(declare-fun bm!366881 () Bool)

(declare-fun c!898527 () Bool)

(declare-fun c!898528 () Bool)

(assert (=> bm!366881 (= call!366886 (validRegex!6533 (ite c!898527 (reg!15126 lt!2141964) (ite c!898528 (regTwo!30107 lt!2141964) (regTwo!30106 lt!2141964)))))))

(declare-fun b!5210531 () Bool)

(assert (=> b!5210531 (= e!3243892 call!366885)))

(declare-fun b!5210532 () Bool)

(assert (=> b!5210532 (= e!3243893 call!366885)))

(declare-fun b!5210533 () Bool)

(assert (=> b!5210533 (= e!3243889 e!3243894)))

(assert (=> b!5210533 (= c!898528 ((_ is Union!14797) lt!2141964))))

(declare-fun b!5210534 () Bool)

(assert (=> b!5210534 (= e!3243890 e!3243889)))

(assert (=> b!5210534 (= c!898527 ((_ is Star!14797) lt!2141964))))

(declare-fun bm!366882 () Bool)

(assert (=> bm!366882 (= call!366887 (validRegex!6533 (ite c!898528 (regOne!30107 lt!2141964) (regOne!30106 lt!2141964))))))

(assert (= (and d!1680210 (not res!2213187)) b!5210534))

(assert (= (and b!5210534 c!898527) b!5210527))

(assert (= (and b!5210534 (not c!898527)) b!5210533))

(assert (= (and b!5210527 res!2213186) b!5210526))

(assert (= (and b!5210533 c!898528) b!5210529))

(assert (= (and b!5210533 (not c!898528)) b!5210528))

(assert (= (and b!5210529 res!2213185) b!5210531))

(assert (= (and b!5210528 (not res!2213183)) b!5210530))

(assert (= (and b!5210530 res!2213184) b!5210532))

(assert (= (or b!5210531 b!5210532) bm!366880))

(assert (= (or b!5210529 b!5210530) bm!366882))

(assert (= (or b!5210526 bm!366880) bm!366881))

(declare-fun m!6260368 () Bool)

(assert (=> b!5210527 m!6260368))

(declare-fun m!6260370 () Bool)

(assert (=> bm!366881 m!6260370))

(declare-fun m!6260372 () Bool)

(assert (=> bm!366882 m!6260372))

(assert (=> d!1679904 d!1680210))

(assert (=> d!1679904 d!1679932))

(assert (=> d!1679904 d!1679936))

(declare-fun b!5210544 () Bool)

(declare-fun c!898533 () Bool)

(assert (=> b!5210544 (= c!898533 ((_ is Star!14797) (h!67014 (exprs!4681 lt!2141932))))))

(declare-fun e!3243908 () (InoxSet Context!8362))

(declare-fun e!3243903 () (InoxSet Context!8362))

(assert (=> b!5210544 (= e!3243908 e!3243903)))

(declare-fun b!5210545 () Bool)

(declare-fun e!3243906 () (InoxSet Context!8362))

(declare-fun e!3243904 () (InoxSet Context!8362))

(assert (=> b!5210545 (= e!3243906 e!3243904)))

(declare-fun c!898534 () Bool)

(assert (=> b!5210545 (= c!898534 ((_ is Union!14797) (h!67014 (exprs!4681 lt!2141932))))))

(declare-fun b!5210546 () Bool)

(assert (=> b!5210546 (= e!3243903 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5210547 () Bool)

(declare-fun e!3243907 () (InoxSet Context!8362))

(assert (=> b!5210547 (= e!3243907 e!3243908)))

(declare-fun c!898531 () Bool)

(assert (=> b!5210547 (= c!898531 ((_ is Concat!23642) (h!67014 (exprs!4681 lt!2141932))))))

(declare-fun bm!366886 () Bool)

(declare-fun c!898532 () Bool)

(declare-fun call!366896 () List!60690)

(declare-fun call!366892 () (InoxSet Context!8362))

(assert (=> bm!366886 (= call!366892 (derivationStepZipperDown!245 (ite c!898534 (regOne!30107 (h!67014 (exprs!4681 lt!2141932))) (ite c!898532 (regTwo!30106 (h!67014 (exprs!4681 lt!2141932))) (ite c!898531 (regOne!30106 (h!67014 (exprs!4681 lt!2141932))) (reg!15126 (h!67014 (exprs!4681 lt!2141932)))))) (ite (or c!898534 c!898532) (Context!8363 (t!373851 (exprs!4681 lt!2141932))) (Context!8363 call!366896)) (h!67016 s!2326)))))

(declare-fun b!5210548 () Bool)

(declare-fun call!366894 () (InoxSet Context!8362))

(assert (=> b!5210548 (= e!3243904 ((_ map or) call!366892 call!366894))))

(declare-fun call!366893 () List!60690)

(declare-fun bm!366887 () Bool)

(assert (=> bm!366887 (= call!366894 (derivationStepZipperDown!245 (ite c!898534 (regTwo!30107 (h!67014 (exprs!4681 lt!2141932))) (regOne!30106 (h!67014 (exprs!4681 lt!2141932)))) (ite c!898534 (Context!8363 (t!373851 (exprs!4681 lt!2141932))) (Context!8363 call!366893)) (h!67016 s!2326)))))

(declare-fun d!1680214 () Bool)

(declare-fun c!898535 () Bool)

(assert (=> d!1680214 (= c!898535 (and ((_ is ElementMatch!14797) (h!67014 (exprs!4681 lt!2141932))) (= (c!898196 (h!67014 (exprs!4681 lt!2141932))) (h!67016 s!2326))))))

(assert (=> d!1680214 (= (derivationStepZipperDown!245 (h!67014 (exprs!4681 lt!2141932)) (Context!8363 (t!373851 (exprs!4681 lt!2141932))) (h!67016 s!2326)) e!3243906)))

(declare-fun bm!366888 () Bool)

(assert (=> bm!366888 (= call!366896 call!366893)))

(declare-fun b!5210549 () Bool)

(declare-fun call!366891 () (InoxSet Context!8362))

(assert (=> b!5210549 (= e!3243903 call!366891)))

(declare-fun bm!366889 () Bool)

(declare-fun call!366895 () (InoxSet Context!8362))

(assert (=> bm!366889 (= call!366891 call!366895)))

(declare-fun b!5210550 () Bool)

(assert (=> b!5210550 (= e!3243908 call!366891)))

(declare-fun b!5210551 () Bool)

(assert (=> b!5210551 (= e!3243906 (store ((as const (Array Context!8362 Bool)) false) (Context!8363 (t!373851 (exprs!4681 lt!2141932))) true))))

(declare-fun bm!366890 () Bool)

(assert (=> bm!366890 (= call!366893 ($colon$colon!1275 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 lt!2141932)))) (ite (or c!898532 c!898531) (regTwo!30106 (h!67014 (exprs!4681 lt!2141932))) (h!67014 (exprs!4681 lt!2141932)))))))

(declare-fun bm!366891 () Bool)

(assert (=> bm!366891 (= call!366895 call!366892)))

(declare-fun b!5210552 () Bool)

(assert (=> b!5210552 (= e!3243907 ((_ map or) call!366894 call!366895))))

(declare-fun b!5210553 () Bool)

(declare-fun e!3243905 () Bool)

(assert (=> b!5210553 (= c!898532 e!3243905)))

(declare-fun res!2213193 () Bool)

(assert (=> b!5210553 (=> (not res!2213193) (not e!3243905))))

(assert (=> b!5210553 (= res!2213193 ((_ is Concat!23642) (h!67014 (exprs!4681 lt!2141932))))))

(assert (=> b!5210553 (= e!3243904 e!3243907)))

(declare-fun b!5210554 () Bool)

(assert (=> b!5210554 (= e!3243905 (nullable!4966 (regOne!30106 (h!67014 (exprs!4681 lt!2141932)))))))

(assert (= (and d!1680214 c!898535) b!5210551))

(assert (= (and d!1680214 (not c!898535)) b!5210545))

(assert (= (and b!5210545 c!898534) b!5210548))

(assert (= (and b!5210545 (not c!898534)) b!5210553))

(assert (= (and b!5210553 res!2213193) b!5210554))

(assert (= (and b!5210553 c!898532) b!5210552))

(assert (= (and b!5210553 (not c!898532)) b!5210547))

(assert (= (and b!5210547 c!898531) b!5210550))

(assert (= (and b!5210547 (not c!898531)) b!5210544))

(assert (= (and b!5210544 c!898533) b!5210549))

(assert (= (and b!5210544 (not c!898533)) b!5210546))

(assert (= (or b!5210550 b!5210549) bm!366888))

(assert (= (or b!5210550 b!5210549) bm!366889))

(assert (= (or b!5210552 bm!366888) bm!366890))

(assert (= (or b!5210552 bm!366889) bm!366891))

(assert (= (or b!5210548 b!5210552) bm!366887))

(assert (= (or b!5210548 bm!366891) bm!366886))

(declare-fun m!6260384 () Bool)

(assert (=> b!5210554 m!6260384))

(declare-fun m!6260386 () Bool)

(assert (=> bm!366890 m!6260386))

(declare-fun m!6260390 () Bool)

(assert (=> bm!366886 m!6260390))

(declare-fun m!6260394 () Bool)

(assert (=> bm!366887 m!6260394))

(declare-fun m!6260396 () Bool)

(assert (=> b!5210551 m!6260396))

(assert (=> bm!366774 d!1680214))

(declare-fun d!1680220 () Bool)

(assert (=> d!1680220 (= (head!11170 s!2326) (h!67016 s!2326))))

(assert (=> b!5209929 d!1680220))

(declare-fun d!1680222 () Bool)

(assert (=> d!1680222 (= (isEmpty!32478 (unfocusZipperList!239 zl!343)) ((_ is Nil!60566) (unfocusZipperList!239 zl!343)))))

(assert (=> b!5209811 d!1680222))

(declare-fun d!1680226 () Bool)

(assert (=> d!1680226 (= (Exists!1978 (ite c!898365 lambda!261227 lambda!261228)) (choose!38734 (ite c!898365 lambda!261227 lambda!261228)))))

(declare-fun bs!1210656 () Bool)

(assert (= bs!1210656 d!1680226))

(declare-fun m!6260400 () Bool)

(assert (=> bs!1210656 m!6260400))

(assert (=> bm!366759 d!1680226))

(declare-fun d!1680228 () Bool)

(declare-fun c!898544 () Bool)

(assert (=> d!1680228 (= c!898544 ((_ is Nil!60567) lt!2142000))))

(declare-fun e!3243920 () (InoxSet Context!8362))

(assert (=> d!1680228 (= (content!10727 lt!2142000) e!3243920)))

(declare-fun b!5210574 () Bool)

(assert (=> b!5210574 (= e!3243920 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5210575 () Bool)

(assert (=> b!5210575 (= e!3243920 ((_ map or) (store ((as const (Array Context!8362 Bool)) false) (h!67015 lt!2142000) true) (content!10727 (t!373852 lt!2142000))))))

(assert (= (and d!1680228 c!898544) b!5210574))

(assert (= (and d!1680228 (not c!898544)) b!5210575))

(declare-fun m!6260404 () Bool)

(assert (=> b!5210575 m!6260404))

(declare-fun m!6260408 () Bool)

(assert (=> b!5210575 m!6260408))

(assert (=> b!5209830 d!1680228))

(declare-fun b!5210576 () Bool)

(declare-fun c!898547 () Bool)

(assert (=> b!5210576 (= c!898547 ((_ is Star!14797) (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))))))

(declare-fun e!3243926 () (InoxSet Context!8362))

(declare-fun e!3243921 () (InoxSet Context!8362))

(assert (=> b!5210576 (= e!3243926 e!3243921)))

(declare-fun b!5210577 () Bool)

(declare-fun e!3243924 () (InoxSet Context!8362))

(declare-fun e!3243922 () (InoxSet Context!8362))

(assert (=> b!5210577 (= e!3243924 e!3243922)))

(declare-fun c!898548 () Bool)

(assert (=> b!5210577 (= c!898548 ((_ is Union!14797) (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))))))

(declare-fun b!5210578 () Bool)

(assert (=> b!5210578 (= e!3243921 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5210579 () Bool)

(declare-fun e!3243925 () (InoxSet Context!8362))

(assert (=> b!5210579 (= e!3243925 e!3243926)))

(declare-fun c!898545 () Bool)

(assert (=> b!5210579 (= c!898545 ((_ is Concat!23642) (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))))))

(declare-fun c!898546 () Bool)

(declare-fun bm!366898 () Bool)

(declare-fun call!366908 () List!60690)

(declare-fun call!366904 () (InoxSet Context!8362))

(assert (=> bm!366898 (= call!366904 (derivationStepZipperDown!245 (ite c!898548 (regOne!30107 (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))) (ite c!898546 (regTwo!30106 (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))) (ite c!898545 (regOne!30106 (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))) (reg!15126 (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292)))))))) (ite (or c!898548 c!898546) (ite c!898317 lt!2141932 (Context!8363 call!366746)) (Context!8363 call!366908)) (h!67016 s!2326)))))

(declare-fun b!5210580 () Bool)

(declare-fun call!366906 () (InoxSet Context!8362))

(assert (=> b!5210580 (= e!3243922 ((_ map or) call!366904 call!366906))))

(declare-fun call!366905 () List!60690)

(declare-fun bm!366899 () Bool)

(assert (=> bm!366899 (= call!366906 (derivationStepZipperDown!245 (ite c!898548 (regTwo!30107 (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))) (regOne!30106 (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292)))))) (ite c!898548 (ite c!898317 lt!2141932 (Context!8363 call!366746)) (Context!8363 call!366905)) (h!67016 s!2326)))))

(declare-fun c!898549 () Bool)

(declare-fun d!1680232 () Bool)

(assert (=> d!1680232 (= c!898549 (and ((_ is ElementMatch!14797) (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))) (= (c!898196 (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))) (h!67016 s!2326))))))

(assert (=> d!1680232 (= (derivationStepZipperDown!245 (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292)))) (ite c!898317 lt!2141932 (Context!8363 call!366746)) (h!67016 s!2326)) e!3243924)))

(declare-fun bm!366900 () Bool)

(assert (=> bm!366900 (= call!366908 call!366905)))

(declare-fun b!5210581 () Bool)

(declare-fun call!366903 () (InoxSet Context!8362))

(assert (=> b!5210581 (= e!3243921 call!366903)))

(declare-fun bm!366901 () Bool)

(declare-fun call!366907 () (InoxSet Context!8362))

(assert (=> bm!366901 (= call!366903 call!366907)))

(declare-fun b!5210582 () Bool)

(assert (=> b!5210582 (= e!3243926 call!366903)))

(declare-fun b!5210583 () Bool)

(assert (=> b!5210583 (= e!3243924 (store ((as const (Array Context!8362 Bool)) false) (ite c!898317 lt!2141932 (Context!8363 call!366746)) true))))

(declare-fun bm!366902 () Bool)

(assert (=> bm!366902 (= call!366905 ($colon$colon!1275 (exprs!4681 (ite c!898317 lt!2141932 (Context!8363 call!366746))) (ite (or c!898546 c!898545) (regTwo!30106 (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))) (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292)))))))))

(declare-fun bm!366903 () Bool)

(assert (=> bm!366903 (= call!366907 call!366904)))

(declare-fun b!5210584 () Bool)

(assert (=> b!5210584 (= e!3243925 ((_ map or) call!366906 call!366907))))

(declare-fun b!5210585 () Bool)

(declare-fun e!3243923 () Bool)

(assert (=> b!5210585 (= c!898546 e!3243923)))

(declare-fun res!2213197 () Bool)

(assert (=> b!5210585 (=> (not res!2213197) (not e!3243923))))

(assert (=> b!5210585 (= res!2213197 ((_ is Concat!23642) (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))))))

(assert (=> b!5210585 (= e!3243922 e!3243925)))

(declare-fun b!5210586 () Bool)

(assert (=> b!5210586 (= e!3243923 (nullable!4966 (regOne!30106 (ite c!898317 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292)))))))))

(assert (= (and d!1680232 c!898549) b!5210583))

(assert (= (and d!1680232 (not c!898549)) b!5210577))

(assert (= (and b!5210577 c!898548) b!5210580))

(assert (= (and b!5210577 (not c!898548)) b!5210585))

(assert (= (and b!5210585 res!2213197) b!5210586))

(assert (= (and b!5210585 c!898546) b!5210584))

(assert (= (and b!5210585 (not c!898546)) b!5210579))

(assert (= (and b!5210579 c!898545) b!5210582))

(assert (= (and b!5210579 (not c!898545)) b!5210576))

(assert (= (and b!5210576 c!898547) b!5210581))

(assert (= (and b!5210576 (not c!898547)) b!5210578))

(assert (= (or b!5210582 b!5210581) bm!366900))

(assert (= (or b!5210582 b!5210581) bm!366901))

(assert (= (or b!5210584 bm!366900) bm!366902))

(assert (= (or b!5210584 bm!366901) bm!366903))

(assert (= (or b!5210580 b!5210584) bm!366899))

(assert (= (or b!5210580 bm!366903) bm!366898))

(declare-fun m!6260418 () Bool)

(assert (=> b!5210586 m!6260418))

(declare-fun m!6260420 () Bool)

(assert (=> bm!366902 m!6260420))

(declare-fun m!6260422 () Bool)

(assert (=> bm!366898 m!6260422))

(declare-fun m!6260424 () Bool)

(assert (=> bm!366899 m!6260424))

(declare-fun m!6260426 () Bool)

(assert (=> b!5210583 m!6260426))

(assert (=> bm!366740 d!1680232))

(declare-fun d!1680236 () Bool)

(assert (=> d!1680236 (= (isEmpty!32478 (t!373851 (unfocusZipperList!239 zl!343))) ((_ is Nil!60566) (t!373851 (unfocusZipperList!239 zl!343))))))

(assert (=> b!5209809 d!1680236))

(declare-fun bm!366910 () Bool)

(declare-fun call!366915 () Bool)

(assert (=> bm!366910 (= call!366915 (isEmpty!32481 (tail!10267 s!2326)))))

(declare-fun b!5210598 () Bool)

(declare-fun e!3243939 () Bool)

(assert (=> b!5210598 (= e!3243939 (not (= (head!11170 (tail!10267 s!2326)) (c!898196 (derivativeStep!4047 r!7292 (head!11170 s!2326))))))))

(declare-fun b!5210599 () Bool)

(declare-fun res!2213201 () Bool)

(declare-fun e!3243934 () Bool)

(assert (=> b!5210599 (=> (not res!2213201) (not e!3243934))))

(assert (=> b!5210599 (= res!2213201 (not call!366915))))

(declare-fun b!5210600 () Bool)

(declare-fun res!2213200 () Bool)

(declare-fun e!3243936 () Bool)

(assert (=> b!5210600 (=> res!2213200 e!3243936)))

(assert (=> b!5210600 (= res!2213200 e!3243934)))

(declare-fun res!2213202 () Bool)

(assert (=> b!5210600 (=> (not res!2213202) (not e!3243934))))

(declare-fun lt!2142050 () Bool)

(assert (=> b!5210600 (= res!2213202 lt!2142050)))

(declare-fun d!1680238 () Bool)

(declare-fun e!3243933 () Bool)

(assert (=> d!1680238 e!3243933))

(declare-fun c!898555 () Bool)

(assert (=> d!1680238 (= c!898555 ((_ is EmptyExpr!14797) (derivativeStep!4047 r!7292 (head!11170 s!2326))))))

(declare-fun e!3243937 () Bool)

(assert (=> d!1680238 (= lt!2142050 e!3243937)))

(declare-fun c!898557 () Bool)

(assert (=> d!1680238 (= c!898557 (isEmpty!32481 (tail!10267 s!2326)))))

(assert (=> d!1680238 (validRegex!6533 (derivativeStep!4047 r!7292 (head!11170 s!2326)))))

(assert (=> d!1680238 (= (matchR!6982 (derivativeStep!4047 r!7292 (head!11170 s!2326)) (tail!10267 s!2326)) lt!2142050)))

(declare-fun b!5210601 () Bool)

(declare-fun e!3243935 () Bool)

(assert (=> b!5210601 (= e!3243935 e!3243939)))

(declare-fun res!2213205 () Bool)

(assert (=> b!5210601 (=> res!2213205 e!3243939)))

(assert (=> b!5210601 (= res!2213205 call!366915)))

(declare-fun b!5210602 () Bool)

(assert (=> b!5210602 (= e!3243934 (= (head!11170 (tail!10267 s!2326)) (c!898196 (derivativeStep!4047 r!7292 (head!11170 s!2326)))))))

(declare-fun b!5210603 () Bool)

(declare-fun res!2213206 () Bool)

(assert (=> b!5210603 (=> (not res!2213206) (not e!3243934))))

(assert (=> b!5210603 (= res!2213206 (isEmpty!32481 (tail!10267 (tail!10267 s!2326))))))

(declare-fun b!5210604 () Bool)

(assert (=> b!5210604 (= e!3243933 (= lt!2142050 call!366915))))

(declare-fun b!5210605 () Bool)

(assert (=> b!5210605 (= e!3243937 (matchR!6982 (derivativeStep!4047 (derivativeStep!4047 r!7292 (head!11170 s!2326)) (head!11170 (tail!10267 s!2326))) (tail!10267 (tail!10267 s!2326))))))

(declare-fun b!5210606 () Bool)

(declare-fun e!3243938 () Bool)

(assert (=> b!5210606 (= e!3243938 (not lt!2142050))))

(declare-fun b!5210607 () Bool)

(assert (=> b!5210607 (= e!3243933 e!3243938)))

(declare-fun c!898556 () Bool)

(assert (=> b!5210607 (= c!898556 ((_ is EmptyLang!14797) (derivativeStep!4047 r!7292 (head!11170 s!2326))))))

(declare-fun b!5210608 () Bool)

(assert (=> b!5210608 (= e!3243937 (nullable!4966 (derivativeStep!4047 r!7292 (head!11170 s!2326))))))

(declare-fun b!5210609 () Bool)

(declare-fun res!2213204 () Bool)

(assert (=> b!5210609 (=> res!2213204 e!3243936)))

(assert (=> b!5210609 (= res!2213204 (not ((_ is ElementMatch!14797) (derivativeStep!4047 r!7292 (head!11170 s!2326)))))))

(assert (=> b!5210609 (= e!3243938 e!3243936)))

(declare-fun b!5210610 () Bool)

(assert (=> b!5210610 (= e!3243936 e!3243935)))

(declare-fun res!2213199 () Bool)

(assert (=> b!5210610 (=> (not res!2213199) (not e!3243935))))

(assert (=> b!5210610 (= res!2213199 (not lt!2142050))))

(declare-fun b!5210611 () Bool)

(declare-fun res!2213203 () Bool)

(assert (=> b!5210611 (=> res!2213203 e!3243939)))

(assert (=> b!5210611 (= res!2213203 (not (isEmpty!32481 (tail!10267 (tail!10267 s!2326)))))))

(assert (= (and d!1680238 c!898557) b!5210608))

(assert (= (and d!1680238 (not c!898557)) b!5210605))

(assert (= (and d!1680238 c!898555) b!5210604))

(assert (= (and d!1680238 (not c!898555)) b!5210607))

(assert (= (and b!5210607 c!898556) b!5210606))

(assert (= (and b!5210607 (not c!898556)) b!5210609))

(assert (= (and b!5210609 (not res!2213204)) b!5210600))

(assert (= (and b!5210600 res!2213202) b!5210599))

(assert (= (and b!5210599 res!2213201) b!5210603))

(assert (= (and b!5210603 res!2213206) b!5210602))

(assert (= (and b!5210600 (not res!2213200)) b!5210610))

(assert (= (and b!5210610 res!2213199) b!5210601))

(assert (= (and b!5210601 (not res!2213205)) b!5210611))

(assert (= (and b!5210611 (not res!2213203)) b!5210598))

(assert (= (or b!5210604 b!5210599 b!5210601) bm!366910))

(assert (=> b!5210602 m!6259822))

(declare-fun m!6260438 () Bool)

(assert (=> b!5210602 m!6260438))

(assert (=> d!1680238 m!6259822))

(assert (=> d!1680238 m!6259824))

(assert (=> d!1680238 m!6259826))

(declare-fun m!6260440 () Bool)

(assert (=> d!1680238 m!6260440))

(assert (=> b!5210608 m!6259826))

(declare-fun m!6260442 () Bool)

(assert (=> b!5210608 m!6260442))

(assert (=> b!5210611 m!6259822))

(declare-fun m!6260444 () Bool)

(assert (=> b!5210611 m!6260444))

(assert (=> b!5210611 m!6260444))

(declare-fun m!6260446 () Bool)

(assert (=> b!5210611 m!6260446))

(assert (=> b!5210605 m!6259822))

(assert (=> b!5210605 m!6260438))

(assert (=> b!5210605 m!6259826))

(assert (=> b!5210605 m!6260438))

(declare-fun m!6260448 () Bool)

(assert (=> b!5210605 m!6260448))

(assert (=> b!5210605 m!6259822))

(assert (=> b!5210605 m!6260444))

(assert (=> b!5210605 m!6260448))

(assert (=> b!5210605 m!6260444))

(declare-fun m!6260450 () Bool)

(assert (=> b!5210605 m!6260450))

(assert (=> b!5210603 m!6259822))

(assert (=> b!5210603 m!6260444))

(assert (=> b!5210603 m!6260444))

(assert (=> b!5210603 m!6260446))

(assert (=> bm!366910 m!6259822))

(assert (=> bm!366910 m!6259824))

(assert (=> b!5210598 m!6259822))

(assert (=> b!5210598 m!6260438))

(assert (=> b!5209936 d!1680238))

(declare-fun b!5210670 () Bool)

(declare-fun e!3243976 () Regex!14797)

(declare-fun e!3243974 () Regex!14797)

(assert (=> b!5210670 (= e!3243976 e!3243974)))

(declare-fun c!898584 () Bool)

(assert (=> b!5210670 (= c!898584 ((_ is ElementMatch!14797) r!7292))))

(declare-fun b!5210671 () Bool)

(declare-fun e!3243977 () Regex!14797)

(declare-fun call!366941 () Regex!14797)

(declare-fun call!366938 () Regex!14797)

(assert (=> b!5210671 (= e!3243977 (Union!14797 call!366941 call!366938))))

(declare-fun c!898583 () Bool)

(declare-fun bm!366933 () Bool)

(declare-fun c!898586 () Bool)

(declare-fun c!898582 () Bool)

(assert (=> bm!366933 (= call!366938 (derivativeStep!4047 (ite c!898586 (regTwo!30107 r!7292) (ite c!898582 (reg!15126 r!7292) (ite c!898583 (regTwo!30106 r!7292) (regOne!30106 r!7292)))) (head!11170 s!2326)))))

(declare-fun b!5210673 () Bool)

(assert (=> b!5210673 (= e!3243976 EmptyLang!14797)))

(declare-fun b!5210674 () Bool)

(assert (=> b!5210674 (= e!3243974 (ite (= (head!11170 s!2326) (c!898196 r!7292)) EmptyExpr!14797 EmptyLang!14797))))

(declare-fun b!5210675 () Bool)

(declare-fun e!3243975 () Regex!14797)

(assert (=> b!5210675 (= e!3243977 e!3243975)))

(assert (=> b!5210675 (= c!898582 ((_ is Star!14797) r!7292))))

(declare-fun b!5210676 () Bool)

(declare-fun call!366939 () Regex!14797)

(declare-fun e!3243978 () Regex!14797)

(assert (=> b!5210676 (= e!3243978 (Union!14797 (Concat!23642 call!366941 (regTwo!30106 r!7292)) call!366939))))

(declare-fun bm!366934 () Bool)

(declare-fun call!366940 () Regex!14797)

(assert (=> bm!366934 (= call!366939 call!366940)))

(declare-fun b!5210677 () Bool)

(assert (=> b!5210677 (= e!3243978 (Union!14797 (Concat!23642 call!366939 (regTwo!30106 r!7292)) EmptyLang!14797))))

(declare-fun bm!366935 () Bool)

(assert (=> bm!366935 (= call!366941 (derivativeStep!4047 (ite c!898586 (regOne!30107 r!7292) (regOne!30106 r!7292)) (head!11170 s!2326)))))

(declare-fun d!1680242 () Bool)

(declare-fun lt!2142053 () Regex!14797)

(assert (=> d!1680242 (validRegex!6533 lt!2142053)))

(assert (=> d!1680242 (= lt!2142053 e!3243976)))

(declare-fun c!898585 () Bool)

(assert (=> d!1680242 (= c!898585 (or ((_ is EmptyExpr!14797) r!7292) ((_ is EmptyLang!14797) r!7292)))))

(assert (=> d!1680242 (validRegex!6533 r!7292)))

(assert (=> d!1680242 (= (derivativeStep!4047 r!7292 (head!11170 s!2326)) lt!2142053)))

(declare-fun b!5210672 () Bool)

(assert (=> b!5210672 (= c!898586 ((_ is Union!14797) r!7292))))

(assert (=> b!5210672 (= e!3243974 e!3243977)))

(declare-fun b!5210678 () Bool)

(assert (=> b!5210678 (= e!3243975 (Concat!23642 call!366940 r!7292))))

(declare-fun b!5210679 () Bool)

(assert (=> b!5210679 (= c!898583 (nullable!4966 (regOne!30106 r!7292)))))

(assert (=> b!5210679 (= e!3243975 e!3243978)))

(declare-fun bm!366936 () Bool)

(assert (=> bm!366936 (= call!366940 call!366938)))

(assert (= (and d!1680242 c!898585) b!5210673))

(assert (= (and d!1680242 (not c!898585)) b!5210670))

(assert (= (and b!5210670 c!898584) b!5210674))

(assert (= (and b!5210670 (not c!898584)) b!5210672))

(assert (= (and b!5210672 c!898586) b!5210671))

(assert (= (and b!5210672 (not c!898586)) b!5210675))

(assert (= (and b!5210675 c!898582) b!5210678))

(assert (= (and b!5210675 (not c!898582)) b!5210679))

(assert (= (and b!5210679 c!898583) b!5210676))

(assert (= (and b!5210679 (not c!898583)) b!5210677))

(assert (= (or b!5210676 b!5210677) bm!366934))

(assert (= (or b!5210678 bm!366934) bm!366936))

(assert (= (or b!5210671 bm!366936) bm!366933))

(assert (= (or b!5210671 b!5210676) bm!366935))

(assert (=> bm!366933 m!6259818))

(declare-fun m!6260482 () Bool)

(assert (=> bm!366933 m!6260482))

(assert (=> bm!366935 m!6259818))

(declare-fun m!6260484 () Bool)

(assert (=> bm!366935 m!6260484))

(declare-fun m!6260486 () Bool)

(assert (=> d!1680242 m!6260486))

(assert (=> d!1680242 m!6259478))

(assert (=> b!5210679 m!6260294))

(assert (=> b!5209936 d!1680242))

(assert (=> b!5209936 d!1680220))

(assert (=> b!5209936 d!1680140))

(declare-fun d!1680256 () Bool)

(assert (=> d!1680256 (= (nullable!4966 (reg!15126 (regTwo!30107 (regOne!30106 r!7292)))) (nullableFct!1377 (reg!15126 (regTwo!30107 (regOne!30106 r!7292)))))))

(declare-fun bs!1210681 () Bool)

(assert (= bs!1210681 d!1680256))

(declare-fun m!6260488 () Bool)

(assert (=> bs!1210681 m!6260488))

(assert (=> b!5209990 d!1680256))

(declare-fun d!1680258 () Bool)

(assert (=> d!1680258 (= (nullable!4966 (regOne!30106 (regOne!30107 (regOne!30106 r!7292)))) (nullableFct!1377 (regOne!30106 (regOne!30107 (regOne!30106 r!7292)))))))

(declare-fun bs!1210682 () Bool)

(assert (= bs!1210682 d!1680258))

(declare-fun m!6260490 () Bool)

(assert (=> bs!1210682 m!6260490))

(assert (=> b!5209669 d!1680258))

(assert (=> b!5209934 d!1680136))

(assert (=> b!5209934 d!1680140))

(declare-fun d!1680260 () Bool)

(assert (=> d!1680260 (= (Exists!1978 lambda!261236) (choose!38734 lambda!261236))))

(declare-fun bs!1210683 () Bool)

(assert (= bs!1210683 d!1680260))

(declare-fun m!6260492 () Bool)

(assert (=> bs!1210683 m!6260492))

(assert (=> d!1679964 d!1680260))

(declare-fun d!1680262 () Bool)

(assert (=> d!1680262 (= (Exists!1978 lambda!261237) (choose!38734 lambda!261237))))

(declare-fun bs!1210684 () Bool)

(assert (= bs!1210684 d!1680262))

(declare-fun m!6260498 () Bool)

(assert (=> bs!1210684 m!6260498))

(assert (=> d!1679964 d!1680262))

(declare-fun bs!1210695 () Bool)

(declare-fun d!1680264 () Bool)

(assert (= bs!1210695 (and d!1680264 b!5209318)))

(declare-fun lambda!261280 () Int)

(assert (=> bs!1210695 (not (= lambda!261280 lambda!261184))))

(declare-fun bs!1210696 () Bool)

(assert (= bs!1210696 (and d!1680264 b!5209895)))

(assert (=> bs!1210696 (not (= lambda!261280 lambda!261227))))

(declare-fun bs!1210697 () Bool)

(assert (= bs!1210697 (and d!1680264 d!1679964)))

(assert (=> bs!1210697 (not (= lambda!261280 lambda!261237))))

(declare-fun bs!1210698 () Bool)

(assert (= bs!1210698 (and d!1680264 b!5209898)))

(assert (=> bs!1210698 (not (= lambda!261280 lambda!261228))))

(assert (=> bs!1210695 (= lambda!261280 lambda!261183)))

(assert (=> bs!1210697 (= lambda!261280 lambda!261236)))

(declare-fun bs!1210699 () Bool)

(assert (= bs!1210699 (and d!1680264 d!1679962)))

(assert (=> bs!1210699 (= lambda!261280 lambda!261231)))

(assert (=> d!1680264 true))

(assert (=> d!1680264 true))

(assert (=> d!1680264 true))

(declare-fun lambda!261281 () Int)

(assert (=> bs!1210695 (= lambda!261281 lambda!261184)))

(assert (=> bs!1210696 (not (= lambda!261281 lambda!261227))))

(assert (=> bs!1210697 (= lambda!261281 lambda!261237)))

(declare-fun bs!1210704 () Bool)

(assert (= bs!1210704 d!1680264))

(assert (=> bs!1210704 (not (= lambda!261281 lambda!261280))))

(assert (=> bs!1210698 (= lambda!261281 lambda!261228)))

(assert (=> bs!1210695 (not (= lambda!261281 lambda!261183))))

(assert (=> bs!1210697 (not (= lambda!261281 lambda!261236))))

(assert (=> bs!1210699 (not (= lambda!261281 lambda!261231))))

(assert (=> d!1680264 true))

(assert (=> d!1680264 true))

(assert (=> d!1680264 true))

(assert (=> d!1680264 (= (Exists!1978 lambda!261280) (Exists!1978 lambda!261281))))

(assert (=> d!1680264 true))

(declare-fun _$90!994 () Unit!152454)

(assert (=> d!1680264 (= (choose!38736 (regOne!30106 r!7292) (regTwo!30106 r!7292) s!2326) _$90!994)))

(declare-fun m!6260546 () Bool)

(assert (=> bs!1210704 m!6260546))

(declare-fun m!6260548 () Bool)

(assert (=> bs!1210704 m!6260548))

(assert (=> d!1679964 d!1680264))

(assert (=> d!1679964 d!1680168))

(assert (=> b!5209744 d!1679968))

(declare-fun b!5210833 () Bool)

(declare-fun e!3244043 () Bool)

(declare-fun call!366948 () Bool)

(assert (=> b!5210833 (= e!3244043 call!366948)))

(declare-fun bm!366942 () Bool)

(declare-fun call!366947 () Bool)

(assert (=> bm!366942 (= call!366947 call!366948)))

(declare-fun b!5210834 () Bool)

(declare-fun e!3244037 () Bool)

(assert (=> b!5210834 (= e!3244037 e!3244043)))

(declare-fun res!2213237 () Bool)

(assert (=> b!5210834 (= res!2213237 (not (nullable!4966 (reg!15126 (ite c!898384 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898385 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292)))))))))))

(assert (=> b!5210834 (=> (not res!2213237) (not e!3244043))))

(declare-fun b!5210835 () Bool)

(declare-fun res!2213234 () Bool)

(declare-fun e!3244039 () Bool)

(assert (=> b!5210835 (=> res!2213234 e!3244039)))

(assert (=> b!5210835 (= res!2213234 (not ((_ is Concat!23642) (ite c!898384 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898385 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))))))))))

(declare-fun e!3244042 () Bool)

(assert (=> b!5210835 (= e!3244042 e!3244039)))

(declare-fun b!5210836 () Bool)

(declare-fun res!2213236 () Bool)

(declare-fun e!3244040 () Bool)

(assert (=> b!5210836 (=> (not res!2213236) (not e!3244040))))

(declare-fun call!366949 () Bool)

(assert (=> b!5210836 (= res!2213236 call!366949)))

(assert (=> b!5210836 (= e!3244042 e!3244040)))

(declare-fun b!5210837 () Bool)

(declare-fun e!3244041 () Bool)

(assert (=> b!5210837 (= e!3244039 e!3244041)))

(declare-fun res!2213235 () Bool)

(assert (=> b!5210837 (=> (not res!2213235) (not e!3244041))))

(assert (=> b!5210837 (= res!2213235 call!366949)))

(declare-fun d!1680284 () Bool)

(declare-fun res!2213238 () Bool)

(declare-fun e!3244038 () Bool)

(assert (=> d!1680284 (=> res!2213238 e!3244038)))

(assert (=> d!1680284 (= res!2213238 ((_ is ElementMatch!14797) (ite c!898384 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898385 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292)))))))))

(assert (=> d!1680284 (= (validRegex!6533 (ite c!898384 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898385 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292)))))) e!3244038)))

(declare-fun bm!366943 () Bool)

(declare-fun c!898598 () Bool)

(declare-fun c!898597 () Bool)

(assert (=> bm!366943 (= call!366948 (validRegex!6533 (ite c!898597 (reg!15126 (ite c!898384 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898385 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292)))))) (ite c!898598 (regTwo!30107 (ite c!898384 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898385 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292)))))) (regTwo!30106 (ite c!898384 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898385 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))))))))))))

(declare-fun b!5210838 () Bool)

(assert (=> b!5210838 (= e!3244040 call!366947)))

(declare-fun b!5210839 () Bool)

(assert (=> b!5210839 (= e!3244041 call!366947)))

(declare-fun b!5210840 () Bool)

(assert (=> b!5210840 (= e!3244037 e!3244042)))

(assert (=> b!5210840 (= c!898598 ((_ is Union!14797) (ite c!898384 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898385 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292)))))))))

(declare-fun b!5210841 () Bool)

(assert (=> b!5210841 (= e!3244038 e!3244037)))

(assert (=> b!5210841 (= c!898597 ((_ is Star!14797) (ite c!898384 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898385 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292)))))))))

(declare-fun bm!366944 () Bool)

(assert (=> bm!366944 (= call!366949 (validRegex!6533 (ite c!898598 (regOne!30107 (ite c!898384 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898385 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292)))))) (regOne!30106 (ite c!898384 (reg!15126 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898385 (regTwo!30107 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292)))))))))))

(assert (= (and d!1680284 (not res!2213238)) b!5210841))

(assert (= (and b!5210841 c!898597) b!5210834))

(assert (= (and b!5210841 (not c!898597)) b!5210840))

(assert (= (and b!5210834 res!2213237) b!5210833))

(assert (= (and b!5210840 c!898598) b!5210836))

(assert (= (and b!5210840 (not c!898598)) b!5210835))

(assert (= (and b!5210836 res!2213236) b!5210838))

(assert (= (and b!5210835 (not res!2213234)) b!5210837))

(assert (= (and b!5210837 res!2213235) b!5210839))

(assert (= (or b!5210838 b!5210839) bm!366942))

(assert (= (or b!5210836 b!5210837) bm!366944))

(assert (= (or b!5210833 bm!366942) bm!366943))

(declare-fun m!6260550 () Bool)

(assert (=> b!5210834 m!6260550))

(declare-fun m!6260552 () Bool)

(assert (=> bm!366943 m!6260552))

(declare-fun m!6260554 () Bool)

(assert (=> bm!366944 m!6260554))

(assert (=> bm!366764 d!1680284))

(declare-fun d!1680286 () Bool)

(declare-fun res!2213243 () Bool)

(declare-fun e!3244048 () Bool)

(assert (=> d!1680286 (=> res!2213243 e!3244048)))

(assert (=> d!1680286 (= res!2213243 ((_ is Nil!60567) lt!2142000))))

(assert (=> d!1680286 (= (noDuplicate!1181 lt!2142000) e!3244048)))

(declare-fun b!5210846 () Bool)

(declare-fun e!3244049 () Bool)

(assert (=> b!5210846 (= e!3244048 e!3244049)))

(declare-fun res!2213244 () Bool)

(assert (=> b!5210846 (=> (not res!2213244) (not e!3244049))))

(declare-fun contains!19664 (List!60691 Context!8362) Bool)

(assert (=> b!5210846 (= res!2213244 (not (contains!19664 (t!373852 lt!2142000) (h!67015 lt!2142000))))))

(declare-fun b!5210847 () Bool)

(assert (=> b!5210847 (= e!3244049 (noDuplicate!1181 (t!373852 lt!2142000)))))

(assert (= (and d!1680286 (not res!2213243)) b!5210846))

(assert (= (and b!5210846 res!2213244) b!5210847))

(declare-fun m!6260556 () Bool)

(assert (=> b!5210846 m!6260556))

(declare-fun m!6260558 () Bool)

(assert (=> b!5210847 m!6260558))

(assert (=> d!1679940 d!1680286))

(declare-fun d!1680288 () Bool)

(declare-fun e!3244058 () Bool)

(assert (=> d!1680288 e!3244058))

(declare-fun res!2213250 () Bool)

(assert (=> d!1680288 (=> (not res!2213250) (not e!3244058))))

(declare-fun res!2213249 () List!60691)

(assert (=> d!1680288 (= res!2213250 (noDuplicate!1181 res!2213249))))

(declare-fun e!3244057 () Bool)

(assert (=> d!1680288 e!3244057))

(assert (=> d!1680288 (= (choose!38731 z!1189) res!2213249)))

(declare-fun b!5210855 () Bool)

(declare-fun e!3244056 () Bool)

(declare-fun tp!1461290 () Bool)

(assert (=> b!5210855 (= e!3244056 tp!1461290)))

(declare-fun tp!1461291 () Bool)

(declare-fun b!5210854 () Bool)

(assert (=> b!5210854 (= e!3244057 (and (inv!80239 (h!67015 res!2213249)) e!3244056 tp!1461291))))

(declare-fun b!5210856 () Bool)

(assert (=> b!5210856 (= e!3244058 (= (content!10727 res!2213249) z!1189))))

(assert (= b!5210854 b!5210855))

(assert (= (and d!1680288 ((_ is Cons!60567) res!2213249)) b!5210854))

(assert (= (and d!1680288 res!2213250) b!5210856))

(declare-fun m!6260560 () Bool)

(assert (=> d!1680288 m!6260560))

(declare-fun m!6260562 () Bool)

(assert (=> b!5210854 m!6260562))

(declare-fun m!6260564 () Bool)

(assert (=> b!5210856 m!6260564))

(assert (=> d!1679940 d!1680288))

(declare-fun d!1680290 () Bool)

(assert (=> d!1680290 true))

(declare-fun setRes!33097 () Bool)

(assert (=> d!1680290 setRes!33097))

(declare-fun condSetEmpty!33097 () Bool)

(declare-fun res!2213253 () (InoxSet Context!8362))

(assert (=> d!1680290 (= condSetEmpty!33097 (= res!2213253 ((as const (Array Context!8362 Bool)) false)))))

(assert (=> d!1680290 (= (choose!38738 z!1189 lambda!261185) res!2213253)))

(declare-fun setIsEmpty!33097 () Bool)

(assert (=> setIsEmpty!33097 setRes!33097))

(declare-fun setNonEmpty!33097 () Bool)

(declare-fun setElem!33097 () Context!8362)

(declare-fun tp!1461297 () Bool)

(declare-fun e!3244061 () Bool)

(assert (=> setNonEmpty!33097 (= setRes!33097 (and tp!1461297 (inv!80239 setElem!33097) e!3244061))))

(declare-fun setRest!33097 () (InoxSet Context!8362))

(assert (=> setNonEmpty!33097 (= res!2213253 ((_ map or) (store ((as const (Array Context!8362 Bool)) false) setElem!33097 true) setRest!33097))))

(declare-fun b!5210859 () Bool)

(declare-fun tp!1461296 () Bool)

(assert (=> b!5210859 (= e!3244061 tp!1461296)))

(assert (= (and d!1680290 condSetEmpty!33097) setIsEmpty!33097))

(assert (= (and d!1680290 (not condSetEmpty!33097)) setNonEmpty!33097))

(assert (= setNonEmpty!33097 b!5210859))

(declare-fun m!6260566 () Bool)

(assert (=> setNonEmpty!33097 m!6260566))

(assert (=> d!1679984 d!1680290))

(declare-fun d!1680292 () Bool)

(assert (=> d!1680292 (= ($colon$colon!1275 (exprs!4681 lt!2141932) (ite (or c!898315 c!898314) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30107 (regOne!30106 r!7292)))) (Cons!60566 (ite (or c!898315 c!898314) (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (regTwo!30107 (regOne!30106 r!7292))) (exprs!4681 lt!2141932)))))

(assert (=> bm!366743 d!1680292))

(declare-fun bs!1210706 () Bool)

(declare-fun d!1680294 () Bool)

(assert (= bs!1210706 (and d!1680294 d!1679932)))

(declare-fun lambda!261282 () Int)

(assert (=> bs!1210706 (= lambda!261282 lambda!261219)))

(declare-fun bs!1210707 () Bool)

(assert (= bs!1210707 (and d!1680294 d!1679924)))

(assert (=> bs!1210707 (= lambda!261282 lambda!261216)))

(declare-fun bs!1210708 () Bool)

(assert (= bs!1210708 (and d!1680294 d!1679970)))

(assert (=> bs!1210708 (= lambda!261282 lambda!261240)))

(declare-fun bs!1210709 () Bool)

(assert (= bs!1210709 (and d!1680294 d!1679976)))

(assert (=> bs!1210709 (= lambda!261282 lambda!261241)))

(declare-fun bs!1210710 () Bool)

(assert (= bs!1210710 (and d!1680294 d!1679936)))

(assert (=> bs!1210710 (= lambda!261282 lambda!261222)))

(declare-fun b!5210860 () Bool)

(declare-fun e!3244064 () Regex!14797)

(assert (=> b!5210860 (= e!3244064 (h!67014 (t!373851 (unfocusZipperList!239 zl!343))))))

(declare-fun b!5210862 () Bool)

(declare-fun e!3244062 () Bool)

(declare-fun lt!2142055 () Regex!14797)

(assert (=> b!5210862 (= e!3244062 (= lt!2142055 (head!11169 (t!373851 (unfocusZipperList!239 zl!343)))))))

(declare-fun b!5210863 () Bool)

(declare-fun e!3244063 () Bool)

(assert (=> b!5210863 (= e!3244063 (isEmpty!32478 (t!373851 (t!373851 (unfocusZipperList!239 zl!343)))))))

(declare-fun b!5210864 () Bool)

(assert (=> b!5210864 (= e!3244062 (isUnion!202 lt!2142055))))

(declare-fun b!5210865 () Bool)

(declare-fun e!3244065 () Bool)

(declare-fun e!3244067 () Bool)

(assert (=> b!5210865 (= e!3244065 e!3244067)))

(declare-fun c!898599 () Bool)

(assert (=> b!5210865 (= c!898599 (isEmpty!32478 (t!373851 (unfocusZipperList!239 zl!343))))))

(assert (=> d!1680294 e!3244065))

(declare-fun res!2213254 () Bool)

(assert (=> d!1680294 (=> (not res!2213254) (not e!3244065))))

(assert (=> d!1680294 (= res!2213254 (validRegex!6533 lt!2142055))))

(assert (=> d!1680294 (= lt!2142055 e!3244064)))

(declare-fun c!898601 () Bool)

(assert (=> d!1680294 (= c!898601 e!3244063)))

(declare-fun res!2213255 () Bool)

(assert (=> d!1680294 (=> (not res!2213255) (not e!3244063))))

(assert (=> d!1680294 (= res!2213255 ((_ is Cons!60566) (t!373851 (unfocusZipperList!239 zl!343))))))

(assert (=> d!1680294 (forall!14233 (t!373851 (unfocusZipperList!239 zl!343)) lambda!261282)))

(assert (=> d!1680294 (= (generalisedUnion!726 (t!373851 (unfocusZipperList!239 zl!343))) lt!2142055)))

(declare-fun b!5210861 () Bool)

(assert (=> b!5210861 (= e!3244067 (isEmptyLang!770 lt!2142055))))

(declare-fun b!5210866 () Bool)

(declare-fun e!3244066 () Regex!14797)

(assert (=> b!5210866 (= e!3244066 EmptyLang!14797)))

(declare-fun b!5210867 () Bool)

(assert (=> b!5210867 (= e!3244064 e!3244066)))

(declare-fun c!898600 () Bool)

(assert (=> b!5210867 (= c!898600 ((_ is Cons!60566) (t!373851 (unfocusZipperList!239 zl!343))))))

(declare-fun b!5210868 () Bool)

(assert (=> b!5210868 (= e!3244067 e!3244062)))

(declare-fun c!898602 () Bool)

(assert (=> b!5210868 (= c!898602 (isEmpty!32478 (tail!10266 (t!373851 (unfocusZipperList!239 zl!343)))))))

(declare-fun b!5210869 () Bool)

(assert (=> b!5210869 (= e!3244066 (Union!14797 (h!67014 (t!373851 (unfocusZipperList!239 zl!343))) (generalisedUnion!726 (t!373851 (t!373851 (unfocusZipperList!239 zl!343))))))))

(assert (= (and d!1680294 res!2213255) b!5210863))

(assert (= (and d!1680294 c!898601) b!5210860))

(assert (= (and d!1680294 (not c!898601)) b!5210867))

(assert (= (and b!5210867 c!898600) b!5210869))

(assert (= (and b!5210867 (not c!898600)) b!5210866))

(assert (= (and d!1680294 res!2213254) b!5210865))

(assert (= (and b!5210865 c!898599) b!5210861))

(assert (= (and b!5210865 (not c!898599)) b!5210868))

(assert (= (and b!5210868 c!898602) b!5210862))

(assert (= (and b!5210868 (not c!898602)) b!5210864))

(declare-fun m!6260568 () Bool)

(assert (=> b!5210869 m!6260568))

(declare-fun m!6260570 () Bool)

(assert (=> b!5210864 m!6260570))

(declare-fun m!6260572 () Bool)

(assert (=> b!5210861 m!6260572))

(declare-fun m!6260574 () Bool)

(assert (=> b!5210862 m!6260574))

(declare-fun m!6260576 () Bool)

(assert (=> d!1680294 m!6260576))

(declare-fun m!6260578 () Bool)

(assert (=> d!1680294 m!6260578))

(declare-fun m!6260580 () Bool)

(assert (=> b!5210863 m!6260580))

(declare-fun m!6260582 () Bool)

(assert (=> b!5210868 m!6260582))

(assert (=> b!5210868 m!6260582))

(declare-fun m!6260584 () Bool)

(assert (=> b!5210868 m!6260584))

(assert (=> b!5210865 m!6259774))

(assert (=> b!5209815 d!1680294))

(declare-fun d!1680296 () Bool)

(assert (=> d!1680296 (= (isEmptyExpr!761 lt!2141991) ((_ is EmptyExpr!14797) lt!2141991))))

(assert (=> b!5209742 d!1680296))

(declare-fun d!1680298 () Bool)

(assert (=> d!1680298 (= (isEmpty!32481 (t!373853 s!2326)) ((_ is Nil!60568) (t!373853 s!2326)))))

(assert (=> d!1679954 d!1680298))

(declare-fun d!1680300 () Bool)

(declare-fun res!2213256 () Bool)

(declare-fun e!3244068 () Bool)

(assert (=> d!1680300 (=> res!2213256 e!3244068)))

(assert (=> d!1680300 (= res!2213256 ((_ is Nil!60566) (exprs!4681 setElem!33084)))))

(assert (=> d!1680300 (= (forall!14233 (exprs!4681 setElem!33084) lambda!261240) e!3244068)))

(declare-fun b!5210870 () Bool)

(declare-fun e!3244069 () Bool)

(assert (=> b!5210870 (= e!3244068 e!3244069)))

(declare-fun res!2213257 () Bool)

(assert (=> b!5210870 (=> (not res!2213257) (not e!3244069))))

(assert (=> b!5210870 (= res!2213257 (dynLambda!23929 lambda!261240 (h!67014 (exprs!4681 setElem!33084))))))

(declare-fun b!5210871 () Bool)

(assert (=> b!5210871 (= e!3244069 (forall!14233 (t!373851 (exprs!4681 setElem!33084)) lambda!261240))))

(assert (= (and d!1680300 (not res!2213256)) b!5210870))

(assert (= (and b!5210870 res!2213257) b!5210871))

(declare-fun b_lambda!201559 () Bool)

(assert (=> (not b_lambda!201559) (not b!5210870)))

(declare-fun m!6260586 () Bool)

(assert (=> b!5210870 m!6260586))

(declare-fun m!6260588 () Bool)

(assert (=> b!5210871 m!6260588))

(assert (=> d!1679970 d!1680300))

(declare-fun d!1680302 () Bool)

(assert (=> d!1680302 (= (nullable!4966 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292)))) (nullableFct!1377 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292)))))))

(declare-fun bs!1210711 () Bool)

(assert (= bs!1210711 d!1680302))

(declare-fun m!6260590 () Bool)

(assert (=> bs!1210711 m!6260590))

(assert (=> b!5209689 d!1680302))

(declare-fun d!1680304 () Bool)

(assert (=> d!1680304 (= (isEmpty!32478 (tail!10266 (exprs!4681 (h!67015 zl!343)))) ((_ is Nil!60566) (tail!10266 (exprs!4681 (h!67015 zl!343)))))))

(assert (=> b!5209746 d!1680304))

(declare-fun d!1680306 () Bool)

(assert (=> d!1680306 (= (tail!10266 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))

(assert (=> b!5209746 d!1680306))

(assert (=> d!1679962 d!1679956))

(assert (=> d!1679962 d!1680168))

(assert (=> d!1679962 d!1679966))

(declare-fun d!1680308 () Bool)

(assert (=> d!1680308 (= (Exists!1978 lambda!261231) (choose!38734 lambda!261231))))

(declare-fun bs!1210712 () Bool)

(assert (= bs!1210712 d!1680308))

(declare-fun m!6260592 () Bool)

(assert (=> bs!1210712 m!6260592))

(assert (=> d!1679962 d!1680308))

(declare-fun bs!1210713 () Bool)

(declare-fun d!1680310 () Bool)

(assert (= bs!1210713 (and d!1680310 b!5209318)))

(declare-fun lambda!261285 () Int)

(assert (=> bs!1210713 (not (= lambda!261285 lambda!261184))))

(declare-fun bs!1210714 () Bool)

(assert (= bs!1210714 (and d!1680310 b!5209895)))

(assert (=> bs!1210714 (not (= lambda!261285 lambda!261227))))

(declare-fun bs!1210715 () Bool)

(assert (= bs!1210715 (and d!1680310 d!1679964)))

(assert (=> bs!1210715 (not (= lambda!261285 lambda!261237))))

(declare-fun bs!1210716 () Bool)

(assert (= bs!1210716 (and d!1680310 d!1680264)))

(assert (=> bs!1210716 (= lambda!261285 lambda!261280)))

(declare-fun bs!1210717 () Bool)

(assert (= bs!1210717 (and d!1680310 b!5209898)))

(assert (=> bs!1210717 (not (= lambda!261285 lambda!261228))))

(assert (=> bs!1210713 (= lambda!261285 lambda!261183)))

(assert (=> bs!1210716 (not (= lambda!261285 lambda!261281))))

(assert (=> bs!1210715 (= lambda!261285 lambda!261236)))

(declare-fun bs!1210718 () Bool)

(assert (= bs!1210718 (and d!1680310 d!1679962)))

(assert (=> bs!1210718 (= lambda!261285 lambda!261231)))

(assert (=> d!1680310 true))

(assert (=> d!1680310 true))

(assert (=> d!1680310 true))

(assert (=> d!1680310 (= (isDefined!11611 (findConcatSeparation!1322 (regOne!30106 r!7292) (regTwo!30106 r!7292) Nil!60568 s!2326 s!2326)) (Exists!1978 lambda!261285))))

(assert (=> d!1680310 true))

(declare-fun _$89!1370 () Unit!152454)

(assert (=> d!1680310 (= (choose!38735 (regOne!30106 r!7292) (regTwo!30106 r!7292) s!2326) _$89!1370)))

(declare-fun bs!1210719 () Bool)

(assert (= bs!1210719 d!1680310))

(assert (=> bs!1210719 m!6259502))

(assert (=> bs!1210719 m!6259502))

(assert (=> bs!1210719 m!6259504))

(declare-fun m!6260594 () Bool)

(assert (=> bs!1210719 m!6260594))

(assert (=> d!1679962 d!1680310))

(declare-fun d!1680312 () Bool)

(declare-fun c!898603 () Bool)

(assert (=> d!1680312 (= c!898603 (isEmpty!32481 (tail!10267 (t!373853 s!2326))))))

(declare-fun e!3244072 () Bool)

(assert (=> d!1680312 (= (matchZipper!1041 (derivationStepZipper!1069 ((_ map or) lt!2141943 lt!2141942) (head!11170 (t!373853 s!2326))) (tail!10267 (t!373853 s!2326))) e!3244072)))

(declare-fun b!5210876 () Bool)

(assert (=> b!5210876 (= e!3244072 (nullableZipper!1225 (derivationStepZipper!1069 ((_ map or) lt!2141943 lt!2141942) (head!11170 (t!373853 s!2326)))))))

(declare-fun b!5210877 () Bool)

(assert (=> b!5210877 (= e!3244072 (matchZipper!1041 (derivationStepZipper!1069 (derivationStepZipper!1069 ((_ map or) lt!2141943 lt!2141942) (head!11170 (t!373853 s!2326))) (head!11170 (tail!10267 (t!373853 s!2326)))) (tail!10267 (tail!10267 (t!373853 s!2326)))))))

(assert (= (and d!1680312 c!898603) b!5210876))

(assert (= (and d!1680312 (not c!898603)) b!5210877))

(assert (=> d!1680312 m!6259794))

(assert (=> d!1680312 m!6260174))

(assert (=> b!5210876 m!6259842))

(declare-fun m!6260596 () Bool)

(assert (=> b!5210876 m!6260596))

(assert (=> b!5210877 m!6259794))

(assert (=> b!5210877 m!6260178))

(assert (=> b!5210877 m!6259842))

(assert (=> b!5210877 m!6260178))

(declare-fun m!6260598 () Bool)

(assert (=> b!5210877 m!6260598))

(assert (=> b!5210877 m!6259794))

(assert (=> b!5210877 m!6260182))

(assert (=> b!5210877 m!6260598))

(assert (=> b!5210877 m!6260182))

(declare-fun m!6260600 () Bool)

(assert (=> b!5210877 m!6260600))

(assert (=> b!5209949 d!1680312))

(declare-fun bs!1210720 () Bool)

(declare-fun d!1680314 () Bool)

(assert (= bs!1210720 (and d!1680314 b!5209316)))

(declare-fun lambda!261286 () Int)

(assert (=> bs!1210720 (= (= (head!11170 (t!373853 s!2326)) (h!67016 s!2326)) (= lambda!261286 lambda!261185))))

(declare-fun bs!1210721 () Bool)

(assert (= bs!1210721 (and d!1680314 d!1680100)))

(assert (=> bs!1210721 (= lambda!261286 lambda!261261)))

(assert (=> d!1680314 true))

(assert (=> d!1680314 (= (derivationStepZipper!1069 ((_ map or) lt!2141943 lt!2141942) (head!11170 (t!373853 s!2326))) (flatMap!524 ((_ map or) lt!2141943 lt!2141942) lambda!261286))))

(declare-fun bs!1210722 () Bool)

(assert (= bs!1210722 d!1680314))

(declare-fun m!6260602 () Bool)

(assert (=> bs!1210722 m!6260602))

(assert (=> b!5209949 d!1680314))

(assert (=> b!5209949 d!1680104))

(assert (=> b!5209949 d!1680106))

(declare-fun b!5210878 () Bool)

(declare-fun c!898606 () Bool)

(assert (=> b!5210878 (= c!898606 ((_ is Star!14797) (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292))))))))))

(declare-fun e!3244078 () (InoxSet Context!8362))

(declare-fun e!3244073 () (InoxSet Context!8362))

(assert (=> b!5210878 (= e!3244078 e!3244073)))

(declare-fun b!5210879 () Bool)

(declare-fun e!3244076 () (InoxSet Context!8362))

(declare-fun e!3244074 () (InoxSet Context!8362))

(assert (=> b!5210879 (= e!3244076 e!3244074)))

(declare-fun c!898607 () Bool)

(assert (=> b!5210879 (= c!898607 ((_ is Union!14797) (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292))))))))))

(declare-fun b!5210880 () Bool)

(assert (=> b!5210880 (= e!3244073 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5210881 () Bool)

(declare-fun e!3244077 () (InoxSet Context!8362))

(assert (=> b!5210881 (= e!3244077 e!3244078)))

(declare-fun c!898604 () Bool)

(assert (=> b!5210881 (= c!898604 ((_ is Concat!23642) (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292))))))))))

(declare-fun call!366951 () (InoxSet Context!8362))

(declare-fun call!366955 () List!60690)

(declare-fun bm!366945 () Bool)

(declare-fun c!898605 () Bool)

(assert (=> bm!366945 (= call!366951 (derivationStepZipperDown!245 (ite c!898607 (regOne!30107 (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292))))))) (ite c!898605 (regTwo!30106 (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292))))))) (ite c!898604 (regOne!30106 (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292))))))) (reg!15126 (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292)))))))))) (ite (or c!898607 c!898605) (ite (or c!898310 c!898308) lt!2141932 (Context!8363 call!366743)) (Context!8363 call!366955)) (h!67016 s!2326)))))

(declare-fun b!5210882 () Bool)

(declare-fun call!366953 () (InoxSet Context!8362))

(assert (=> b!5210882 (= e!3244074 ((_ map or) call!366951 call!366953))))

(declare-fun call!366952 () List!60690)

(declare-fun bm!366946 () Bool)

(assert (=> bm!366946 (= call!366953 (derivationStepZipperDown!245 (ite c!898607 (regTwo!30107 (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292))))))) (regOne!30106 (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292)))))))) (ite c!898607 (ite (or c!898310 c!898308) lt!2141932 (Context!8363 call!366743)) (Context!8363 call!366952)) (h!67016 s!2326)))))

(declare-fun d!1680316 () Bool)

(declare-fun c!898608 () Bool)

(assert (=> d!1680316 (= c!898608 (and ((_ is ElementMatch!14797) (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292))))))) (= (c!898196 (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292))))))) (h!67016 s!2326))))))

(assert (=> d!1680316 (= (derivationStepZipperDown!245 (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292)))))) (ite (or c!898310 c!898308) lt!2141932 (Context!8363 call!366743)) (h!67016 s!2326)) e!3244076)))

(declare-fun bm!366947 () Bool)

(assert (=> bm!366947 (= call!366955 call!366952)))

(declare-fun b!5210883 () Bool)

(declare-fun call!366950 () (InoxSet Context!8362))

(assert (=> b!5210883 (= e!3244073 call!366950)))

(declare-fun bm!366948 () Bool)

(declare-fun call!366954 () (InoxSet Context!8362))

(assert (=> bm!366948 (= call!366950 call!366954)))

(declare-fun b!5210884 () Bool)

(assert (=> b!5210884 (= e!3244078 call!366950)))

(declare-fun b!5210885 () Bool)

(assert (=> b!5210885 (= e!3244076 (store ((as const (Array Context!8362 Bool)) false) (ite (or c!898310 c!898308) lt!2141932 (Context!8363 call!366743)) true))))

(declare-fun bm!366949 () Bool)

(assert (=> bm!366949 (= call!366952 ($colon$colon!1275 (exprs!4681 (ite (or c!898310 c!898308) lt!2141932 (Context!8363 call!366743))) (ite (or c!898605 c!898604) (regTwo!30106 (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292))))))) (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292)))))))))))

(declare-fun bm!366950 () Bool)

(assert (=> bm!366950 (= call!366954 call!366951)))

(declare-fun b!5210886 () Bool)

(assert (=> b!5210886 (= e!3244077 ((_ map or) call!366953 call!366954))))

(declare-fun b!5210887 () Bool)

(declare-fun e!3244075 () Bool)

(assert (=> b!5210887 (= c!898605 e!3244075)))

(declare-fun res!2213262 () Bool)

(assert (=> b!5210887 (=> (not res!2213262) (not e!3244075))))

(assert (=> b!5210887 (= res!2213262 ((_ is Concat!23642) (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292))))))))))

(assert (=> b!5210887 (= e!3244074 e!3244077)))

(declare-fun b!5210888 () Bool)

(assert (=> b!5210888 (= e!3244075 (nullable!4966 (regOne!30106 (ite c!898310 (regOne!30107 (regOne!30107 (regOne!30106 r!7292))) (ite c!898308 (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (ite c!898307 (regOne!30106 (regOne!30107 (regOne!30106 r!7292))) (reg!15126 (regOne!30107 (regOne!30106 r!7292)))))))))))

(assert (= (and d!1680316 c!898608) b!5210885))

(assert (= (and d!1680316 (not c!898608)) b!5210879))

(assert (= (and b!5210879 c!898607) b!5210882))

(assert (= (and b!5210879 (not c!898607)) b!5210887))

(assert (= (and b!5210887 res!2213262) b!5210888))

(assert (= (and b!5210887 c!898605) b!5210886))

(assert (= (and b!5210887 (not c!898605)) b!5210881))

(assert (= (and b!5210881 c!898604) b!5210884))

(assert (= (and b!5210881 (not c!898604)) b!5210878))

(assert (= (and b!5210878 c!898606) b!5210883))

(assert (= (and b!5210878 (not c!898606)) b!5210880))

(assert (= (or b!5210884 b!5210883) bm!366947))

(assert (= (or b!5210884 b!5210883) bm!366948))

(assert (= (or b!5210886 bm!366947) bm!366949))

(assert (= (or b!5210886 bm!366948) bm!366950))

(assert (= (or b!5210882 b!5210886) bm!366946))

(assert (= (or b!5210882 bm!366950) bm!366945))

(declare-fun m!6260604 () Bool)

(assert (=> b!5210888 m!6260604))

(declare-fun m!6260606 () Bool)

(assert (=> bm!366949 m!6260606))

(declare-fun m!6260608 () Bool)

(assert (=> bm!366945 m!6260608))

(declare-fun m!6260610 () Bool)

(assert (=> bm!366946 m!6260610))

(declare-fun m!6260612 () Bool)

(assert (=> b!5210885 m!6260612))

(assert (=> bm!366733 d!1680316))

(declare-fun bs!1210723 () Bool)

(declare-fun d!1680318 () Bool)

(assert (= bs!1210723 (and d!1680318 d!1680152)))

(declare-fun lambda!261287 () Int)

(assert (=> bs!1210723 (= lambda!261287 lambda!261268)))

(assert (=> d!1680318 (= (nullableZipper!1225 lt!2141942) (exists!1962 lt!2141942 lambda!261287))))

(declare-fun bs!1210724 () Bool)

(assert (= bs!1210724 d!1680318))

(declare-fun m!6260614 () Bool)

(assert (=> bs!1210724 m!6260614))

(assert (=> b!5209826 d!1680318))

(declare-fun b!5210889 () Bool)

(declare-fun e!3244085 () Bool)

(declare-fun call!366957 () Bool)

(assert (=> b!5210889 (= e!3244085 call!366957)))

(declare-fun bm!366951 () Bool)

(declare-fun call!366956 () Bool)

(assert (=> bm!366951 (= call!366956 call!366957)))

(declare-fun b!5210890 () Bool)

(declare-fun e!3244079 () Bool)

(assert (=> b!5210890 (= e!3244079 e!3244085)))

(declare-fun res!2213266 () Bool)

(assert (=> b!5210890 (= res!2213266 (not (nullable!4966 (reg!15126 (ite c!898385 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))))))))

(assert (=> b!5210890 (=> (not res!2213266) (not e!3244085))))

(declare-fun b!5210891 () Bool)

(declare-fun res!2213263 () Bool)

(declare-fun e!3244081 () Bool)

(assert (=> b!5210891 (=> res!2213263 e!3244081)))

(assert (=> b!5210891 (= res!2213263 (not ((_ is Concat!23642) (ite c!898385 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292)))))))))

(declare-fun e!3244084 () Bool)

(assert (=> b!5210891 (= e!3244084 e!3244081)))

(declare-fun b!5210892 () Bool)

(declare-fun res!2213265 () Bool)

(declare-fun e!3244082 () Bool)

(assert (=> b!5210892 (=> (not res!2213265) (not e!3244082))))

(declare-fun call!366958 () Bool)

(assert (=> b!5210892 (= res!2213265 call!366958)))

(assert (=> b!5210892 (= e!3244084 e!3244082)))

(declare-fun b!5210893 () Bool)

(declare-fun e!3244083 () Bool)

(assert (=> b!5210893 (= e!3244081 e!3244083)))

(declare-fun res!2213264 () Bool)

(assert (=> b!5210893 (=> (not res!2213264) (not e!3244083))))

(assert (=> b!5210893 (= res!2213264 call!366958)))

(declare-fun d!1680320 () Bool)

(declare-fun res!2213267 () Bool)

(declare-fun e!3244080 () Bool)

(assert (=> d!1680320 (=> res!2213267 e!3244080)))

(assert (=> d!1680320 (= res!2213267 ((_ is ElementMatch!14797) (ite c!898385 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))))))

(assert (=> d!1680320 (= (validRegex!6533 (ite c!898385 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))) e!3244080)))

(declare-fun c!898609 () Bool)

(declare-fun bm!366952 () Bool)

(declare-fun c!898610 () Bool)

(assert (=> bm!366952 (= call!366957 (validRegex!6533 (ite c!898609 (reg!15126 (ite c!898385 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))) (ite c!898610 (regTwo!30107 (ite c!898385 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))) (regTwo!30106 (ite c!898385 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292)))))))))))

(declare-fun b!5210894 () Bool)

(assert (=> b!5210894 (= e!3244082 call!366956)))

(declare-fun b!5210895 () Bool)

(assert (=> b!5210895 (= e!3244083 call!366956)))

(declare-fun b!5210896 () Bool)

(assert (=> b!5210896 (= e!3244079 e!3244084)))

(assert (=> b!5210896 (= c!898610 ((_ is Union!14797) (ite c!898385 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))))))

(declare-fun b!5210897 () Bool)

(assert (=> b!5210897 (= e!3244080 e!3244079)))

(assert (=> b!5210897 (= c!898609 ((_ is Star!14797) (ite c!898385 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))))))

(declare-fun bm!366953 () Bool)

(assert (=> bm!366953 (= call!366958 (validRegex!6533 (ite c!898610 (regOne!30107 (ite c!898385 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))) (regOne!30106 (ite c!898385 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))))))))))

(assert (= (and d!1680320 (not res!2213267)) b!5210897))

(assert (= (and b!5210897 c!898609) b!5210890))

(assert (= (and b!5210897 (not c!898609)) b!5210896))

(assert (= (and b!5210890 res!2213266) b!5210889))

(assert (= (and b!5210896 c!898610) b!5210892))

(assert (= (and b!5210896 (not c!898610)) b!5210891))

(assert (= (and b!5210892 res!2213265) b!5210894))

(assert (= (and b!5210891 (not res!2213263)) b!5210893))

(assert (= (and b!5210893 res!2213264) b!5210895))

(assert (= (or b!5210894 b!5210895) bm!366951))

(assert (= (or b!5210892 b!5210893) bm!366953))

(assert (= (or b!5210889 bm!366951) bm!366952))

(declare-fun m!6260616 () Bool)

(assert (=> b!5210890 m!6260616))

(declare-fun m!6260618 () Bool)

(assert (=> bm!366952 m!6260618))

(declare-fun m!6260620 () Bool)

(assert (=> bm!366953 m!6260620))

(assert (=> bm!366765 d!1680320))

(declare-fun d!1680322 () Bool)

(declare-fun e!3244090 () Bool)

(assert (=> d!1680322 e!3244090))

(declare-fun res!2213273 () Bool)

(assert (=> d!1680322 (=> (not res!2213273) (not e!3244090))))

(declare-fun lt!2142058 () List!60692)

(declare-fun content!10729 (List!60692) (InoxSet C!29864))

(assert (=> d!1680322 (= res!2213273 (= (content!10729 lt!2142058) ((_ map or) (content!10729 (_1!35299 (get!20809 lt!2142018))) (content!10729 (_2!35299 (get!20809 lt!2142018))))))))

(declare-fun e!3244091 () List!60692)

(assert (=> d!1680322 (= lt!2142058 e!3244091)))

(declare-fun c!898613 () Bool)

(assert (=> d!1680322 (= c!898613 ((_ is Nil!60568) (_1!35299 (get!20809 lt!2142018))))))

(assert (=> d!1680322 (= (++!13205 (_1!35299 (get!20809 lt!2142018)) (_2!35299 (get!20809 lt!2142018))) lt!2142058)))

(declare-fun b!5210907 () Bool)

(assert (=> b!5210907 (= e!3244091 (Cons!60568 (h!67016 (_1!35299 (get!20809 lt!2142018))) (++!13205 (t!373853 (_1!35299 (get!20809 lt!2142018))) (_2!35299 (get!20809 lt!2142018)))))))

(declare-fun b!5210908 () Bool)

(declare-fun res!2213272 () Bool)

(assert (=> b!5210908 (=> (not res!2213272) (not e!3244090))))

(declare-fun size!39717 (List!60692) Int)

(assert (=> b!5210908 (= res!2213272 (= (size!39717 lt!2142058) (+ (size!39717 (_1!35299 (get!20809 lt!2142018))) (size!39717 (_2!35299 (get!20809 lt!2142018))))))))

(declare-fun b!5210909 () Bool)

(assert (=> b!5210909 (= e!3244090 (or (not (= (_2!35299 (get!20809 lt!2142018)) Nil!60568)) (= lt!2142058 (_1!35299 (get!20809 lt!2142018)))))))

(declare-fun b!5210906 () Bool)

(assert (=> b!5210906 (= e!3244091 (_2!35299 (get!20809 lt!2142018)))))

(assert (= (and d!1680322 c!898613) b!5210906))

(assert (= (and d!1680322 (not c!898613)) b!5210907))

(assert (= (and d!1680322 res!2213273) b!5210908))

(assert (= (and b!5210908 res!2213272) b!5210909))

(declare-fun m!6260622 () Bool)

(assert (=> d!1680322 m!6260622))

(declare-fun m!6260624 () Bool)

(assert (=> d!1680322 m!6260624))

(declare-fun m!6260626 () Bool)

(assert (=> d!1680322 m!6260626))

(declare-fun m!6260628 () Bool)

(assert (=> b!5210907 m!6260628))

(declare-fun m!6260630 () Bool)

(assert (=> b!5210908 m!6260630))

(declare-fun m!6260632 () Bool)

(assert (=> b!5210908 m!6260632))

(declare-fun m!6260634 () Bool)

(assert (=> b!5210908 m!6260634))

(assert (=> b!5209974 d!1680322))

(declare-fun d!1680324 () Bool)

(assert (=> d!1680324 (= (get!20809 lt!2142018) (v!50936 lt!2142018))))

(assert (=> b!5209974 d!1680324))

(declare-fun d!1680326 () Bool)

(assert (=> d!1680326 (= (isEmpty!32478 (exprs!4681 (h!67015 zl!343))) ((_ is Nil!60566) (exprs!4681 (h!67015 zl!343))))))

(assert (=> b!5209747 d!1680326))

(assert (=> b!5209945 d!1679938))

(assert (=> d!1679950 d!1679954))

(assert (=> d!1679950 d!1679952))

(declare-fun d!1680328 () Bool)

(declare-fun e!3244094 () Bool)

(assert (=> d!1680328 (= (matchZipper!1041 ((_ map or) lt!2141943 lt!2141942) (t!373853 s!2326)) e!3244094)))

(declare-fun res!2213276 () Bool)

(assert (=> d!1680328 (=> res!2213276 e!3244094)))

(assert (=> d!1680328 (= res!2213276 (matchZipper!1041 lt!2141943 (t!373853 s!2326)))))

(assert (=> d!1680328 true))

(declare-fun _$48!796 () Unit!152454)

(assert (=> d!1680328 (= (choose!38733 lt!2141943 lt!2141942 (t!373853 s!2326)) _$48!796)))

(declare-fun b!5210912 () Bool)

(assert (=> b!5210912 (= e!3244094 (matchZipper!1041 lt!2141942 (t!373853 s!2326)))))

(assert (= (and d!1680328 (not res!2213276)) b!5210912))

(assert (=> d!1680328 m!6259452))

(assert (=> d!1680328 m!6259450))

(assert (=> b!5210912 m!6259488))

(assert (=> d!1679950 d!1680328))

(declare-fun b!5210913 () Bool)

(declare-fun c!898616 () Bool)

(assert (=> b!5210913 (= c!898616 ((_ is Star!14797) (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun e!3244100 () (InoxSet Context!8362))

(declare-fun e!3244095 () (InoxSet Context!8362))

(assert (=> b!5210913 (= e!3244100 e!3244095)))

(declare-fun b!5210914 () Bool)

(declare-fun e!3244098 () (InoxSet Context!8362))

(declare-fun e!3244096 () (InoxSet Context!8362))

(assert (=> b!5210914 (= e!3244098 e!3244096)))

(declare-fun c!898617 () Bool)

(assert (=> b!5210914 (= c!898617 ((_ is Union!14797) (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun b!5210915 () Bool)

(assert (=> b!5210915 (= e!3244095 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5210916 () Bool)

(declare-fun e!3244099 () (InoxSet Context!8362))

(assert (=> b!5210916 (= e!3244099 e!3244100)))

(declare-fun c!898614 () Bool)

(assert (=> b!5210916 (= c!898614 ((_ is Concat!23642) (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun call!366960 () (InoxSet Context!8362))

(declare-fun call!366964 () List!60690)

(declare-fun bm!366954 () Bool)

(declare-fun c!898615 () Bool)

(assert (=> bm!366954 (= call!366960 (derivationStepZipperDown!245 (ite c!898617 (regOne!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898615 (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (ite c!898614 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (reg!15126 (h!67014 (exprs!4681 (h!67015 zl!343))))))) (ite (or c!898617 c!898615) (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343)))) (Context!8363 call!366964)) (h!67016 s!2326)))))

(declare-fun b!5210917 () Bool)

(declare-fun call!366962 () (InoxSet Context!8362))

(assert (=> b!5210917 (= e!3244096 ((_ map or) call!366960 call!366962))))

(declare-fun call!366961 () List!60690)

(declare-fun bm!366955 () Bool)

(assert (=> bm!366955 (= call!366962 (derivationStepZipperDown!245 (ite c!898617 (regTwo!30107 (h!67014 (exprs!4681 (h!67015 zl!343)))) (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343))))) (ite c!898617 (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343)))) (Context!8363 call!366961)) (h!67016 s!2326)))))

(declare-fun d!1680330 () Bool)

(declare-fun c!898618 () Bool)

(assert (=> d!1680330 (= c!898618 (and ((_ is ElementMatch!14797) (h!67014 (exprs!4681 (h!67015 zl!343)))) (= (c!898196 (h!67014 (exprs!4681 (h!67015 zl!343)))) (h!67016 s!2326))))))

(assert (=> d!1680330 (= (derivationStepZipperDown!245 (h!67014 (exprs!4681 (h!67015 zl!343))) (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343)))) (h!67016 s!2326)) e!3244098)))

(declare-fun bm!366956 () Bool)

(assert (=> bm!366956 (= call!366964 call!366961)))

(declare-fun b!5210918 () Bool)

(declare-fun call!366959 () (InoxSet Context!8362))

(assert (=> b!5210918 (= e!3244095 call!366959)))

(declare-fun bm!366957 () Bool)

(declare-fun call!366963 () (InoxSet Context!8362))

(assert (=> bm!366957 (= call!366959 call!366963)))

(declare-fun b!5210919 () Bool)

(assert (=> b!5210919 (= e!3244100 call!366959)))

(declare-fun b!5210920 () Bool)

(assert (=> b!5210920 (= e!3244098 (store ((as const (Array Context!8362 Bool)) false) (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343)))) true))))

(declare-fun bm!366958 () Bool)

(assert (=> bm!366958 (= call!366961 ($colon$colon!1275 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343))))) (ite (or c!898615 c!898614) (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (h!67014 (exprs!4681 (h!67015 zl!343))))))))

(declare-fun bm!366959 () Bool)

(assert (=> bm!366959 (= call!366963 call!366960)))

(declare-fun b!5210921 () Bool)

(assert (=> b!5210921 (= e!3244099 ((_ map or) call!366962 call!366963))))

(declare-fun b!5210922 () Bool)

(declare-fun e!3244097 () Bool)

(assert (=> b!5210922 (= c!898615 e!3244097)))

(declare-fun res!2213277 () Bool)

(assert (=> b!5210922 (=> (not res!2213277) (not e!3244097))))

(assert (=> b!5210922 (= res!2213277 ((_ is Concat!23642) (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(assert (=> b!5210922 (= e!3244096 e!3244099)))

(declare-fun b!5210923 () Bool)

(assert (=> b!5210923 (= e!3244097 (nullable!4966 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343))))))))

(assert (= (and d!1680330 c!898618) b!5210920))

(assert (= (and d!1680330 (not c!898618)) b!5210914))

(assert (= (and b!5210914 c!898617) b!5210917))

(assert (= (and b!5210914 (not c!898617)) b!5210922))

(assert (= (and b!5210922 res!2213277) b!5210923))

(assert (= (and b!5210922 c!898615) b!5210921))

(assert (= (and b!5210922 (not c!898615)) b!5210916))

(assert (= (and b!5210916 c!898614) b!5210919))

(assert (= (and b!5210916 (not c!898614)) b!5210913))

(assert (= (and b!5210913 c!898616) b!5210918))

(assert (= (and b!5210913 (not c!898616)) b!5210915))

(assert (= (or b!5210919 b!5210918) bm!366956))

(assert (= (or b!5210919 b!5210918) bm!366957))

(assert (= (or b!5210921 bm!366956) bm!366958))

(assert (= (or b!5210921 bm!366957) bm!366959))

(assert (= (or b!5210917 b!5210921) bm!366955))

(assert (= (or b!5210917 bm!366959) bm!366954))

(assert (=> b!5210923 m!6259902))

(declare-fun m!6260636 () Bool)

(assert (=> bm!366958 m!6260636))

(declare-fun m!6260638 () Bool)

(assert (=> bm!366954 m!6260638))

(declare-fun m!6260640 () Bool)

(assert (=> bm!366955 m!6260640))

(declare-fun m!6260642 () Bool)

(assert (=> b!5210920 m!6260642))

(assert (=> bm!366776 d!1680330))

(declare-fun b!5210924 () Bool)

(declare-fun c!898621 () Bool)

(assert (=> b!5210924 (= c!898621 ((_ is Star!14797) (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))))))

(declare-fun e!3244106 () (InoxSet Context!8362))

(declare-fun e!3244101 () (InoxSet Context!8362))

(assert (=> b!5210924 (= e!3244106 e!3244101)))

(declare-fun b!5210925 () Bool)

(declare-fun e!3244104 () (InoxSet Context!8362))

(declare-fun e!3244102 () (InoxSet Context!8362))

(assert (=> b!5210925 (= e!3244104 e!3244102)))

(declare-fun c!898622 () Bool)

(assert (=> b!5210925 (= c!898622 ((_ is Union!14797) (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))))))

(declare-fun b!5210926 () Bool)

(assert (=> b!5210926 (= e!3244101 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5210927 () Bool)

(declare-fun e!3244105 () (InoxSet Context!8362))

(assert (=> b!5210927 (= e!3244105 e!3244106)))

(declare-fun c!898619 () Bool)

(assert (=> b!5210927 (= c!898619 ((_ is Concat!23642) (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))))))

(declare-fun c!898620 () Bool)

(declare-fun bm!366960 () Bool)

(declare-fun call!366970 () List!60690)

(declare-fun call!366966 () (InoxSet Context!8362))

(assert (=> bm!366960 (= call!366966 (derivationStepZipperDown!245 (ite c!898622 (regOne!30107 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (ite c!898620 (regTwo!30106 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (ite c!898619 (regOne!30106 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (reg!15126 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))))))) (ite (or c!898622 c!898620) (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (Context!8363 call!366970)) (h!67016 s!2326)))))

(declare-fun b!5210928 () Bool)

(declare-fun call!366968 () (InoxSet Context!8362))

(assert (=> b!5210928 (= e!3244102 ((_ map or) call!366966 call!366968))))

(declare-fun call!366967 () List!60690)

(declare-fun bm!366961 () Bool)

(assert (=> bm!366961 (= call!366968 (derivationStepZipperDown!245 (ite c!898622 (regTwo!30107 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (regOne!30106 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))))) (ite c!898622 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (Context!8363 call!366967)) (h!67016 s!2326)))))

(declare-fun d!1680332 () Bool)

(declare-fun c!898623 () Bool)

(assert (=> d!1680332 (= c!898623 (and ((_ is ElementMatch!14797) (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (= (c!898196 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (h!67016 s!2326))))))

(assert (=> d!1680332 (= (derivationStepZipperDown!245 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))) (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (h!67016 s!2326)) e!3244104)))

(declare-fun bm!366962 () Bool)

(assert (=> bm!366962 (= call!366970 call!366967)))

(declare-fun b!5210929 () Bool)

(declare-fun call!366965 () (InoxSet Context!8362))

(assert (=> b!5210929 (= e!3244101 call!366965)))

(declare-fun bm!366963 () Bool)

(declare-fun call!366969 () (InoxSet Context!8362))

(assert (=> bm!366963 (= call!366965 call!366969)))

(declare-fun b!5210930 () Bool)

(assert (=> b!5210930 (= e!3244106 call!366965)))

(declare-fun b!5210931 () Bool)

(assert (=> b!5210931 (= e!3244104 (store ((as const (Array Context!8362 Bool)) false) (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) true))))

(declare-fun bm!366964 () Bool)

(assert (=> bm!366964 (= call!366967 ($colon$colon!1275 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))))) (ite (or c!898620 c!898619) (regTwo!30106 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))))))))

(declare-fun bm!366965 () Bool)

(assert (=> bm!366965 (= call!366969 call!366966)))

(declare-fun b!5210932 () Bool)

(assert (=> b!5210932 (= e!3244105 ((_ map or) call!366968 call!366969))))

(declare-fun b!5210933 () Bool)

(declare-fun e!3244103 () Bool)

(assert (=> b!5210933 (= c!898620 e!3244103)))

(declare-fun res!2213278 () Bool)

(assert (=> b!5210933 (=> (not res!2213278) (not e!3244103))))

(assert (=> b!5210933 (= res!2213278 ((_ is Concat!23642) (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))))))

(assert (=> b!5210933 (= e!3244102 e!3244105)))

(declare-fun b!5210934 () Bool)

(assert (=> b!5210934 (= e!3244103 (nullable!4966 (regOne!30106 (h!67014 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))))))))

(assert (= (and d!1680332 c!898623) b!5210931))

(assert (= (and d!1680332 (not c!898623)) b!5210925))

(assert (= (and b!5210925 c!898622) b!5210928))

(assert (= (and b!5210925 (not c!898622)) b!5210933))

(assert (= (and b!5210933 res!2213278) b!5210934))

(assert (= (and b!5210933 c!898620) b!5210932))

(assert (= (and b!5210933 (not c!898620)) b!5210927))

(assert (= (and b!5210927 c!898619) b!5210930))

(assert (= (and b!5210927 (not c!898619)) b!5210924))

(assert (= (and b!5210924 c!898621) b!5210929))

(assert (= (and b!5210924 (not c!898621)) b!5210926))

(assert (= (or b!5210930 b!5210929) bm!366962))

(assert (= (or b!5210930 b!5210929) bm!366963))

(assert (= (or b!5210932 bm!366962) bm!366964))

(assert (= (or b!5210932 bm!366963) bm!366965))

(assert (= (or b!5210928 b!5210932) bm!366961))

(assert (= (or b!5210928 bm!366965) bm!366960))

(declare-fun m!6260644 () Bool)

(assert (=> b!5210934 m!6260644))

(declare-fun m!6260646 () Bool)

(assert (=> bm!366964 m!6260646))

(declare-fun m!6260648 () Bool)

(assert (=> bm!366960 m!6260648))

(declare-fun m!6260650 () Bool)

(assert (=> bm!366961 m!6260650))

(declare-fun m!6260652 () Bool)

(assert (=> b!5210931 m!6260652))

(assert (=> bm!366775 d!1680332))

(declare-fun b!5210935 () Bool)

(declare-fun e!3244113 () Bool)

(declare-fun call!366972 () Bool)

(assert (=> b!5210935 (= e!3244113 call!366972)))

(declare-fun bm!366966 () Bool)

(declare-fun call!366971 () Bool)

(assert (=> bm!366966 (= call!366971 call!366972)))

(declare-fun b!5210936 () Bool)

(declare-fun e!3244107 () Bool)

(assert (=> b!5210936 (= e!3244107 e!3244113)))

(declare-fun res!2213282 () Bool)

(assert (=> b!5210936 (= res!2213282 (not (nullable!4966 (reg!15126 lt!2141994))))))

(assert (=> b!5210936 (=> (not res!2213282) (not e!3244113))))

(declare-fun b!5210937 () Bool)

(declare-fun res!2213279 () Bool)

(declare-fun e!3244109 () Bool)

(assert (=> b!5210937 (=> res!2213279 e!3244109)))

(assert (=> b!5210937 (= res!2213279 (not ((_ is Concat!23642) lt!2141994)))))

(declare-fun e!3244112 () Bool)

(assert (=> b!5210937 (= e!3244112 e!3244109)))

(declare-fun b!5210938 () Bool)

(declare-fun res!2213281 () Bool)

(declare-fun e!3244110 () Bool)

(assert (=> b!5210938 (=> (not res!2213281) (not e!3244110))))

(declare-fun call!366973 () Bool)

(assert (=> b!5210938 (= res!2213281 call!366973)))

(assert (=> b!5210938 (= e!3244112 e!3244110)))

(declare-fun b!5210939 () Bool)

(declare-fun e!3244111 () Bool)

(assert (=> b!5210939 (= e!3244109 e!3244111)))

(declare-fun res!2213280 () Bool)

(assert (=> b!5210939 (=> (not res!2213280) (not e!3244111))))

(assert (=> b!5210939 (= res!2213280 call!366973)))

(declare-fun d!1680334 () Bool)

(declare-fun res!2213283 () Bool)

(declare-fun e!3244108 () Bool)

(assert (=> d!1680334 (=> res!2213283 e!3244108)))

(assert (=> d!1680334 (= res!2213283 ((_ is ElementMatch!14797) lt!2141994))))

(assert (=> d!1680334 (= (validRegex!6533 lt!2141994) e!3244108)))

(declare-fun bm!366967 () Bool)

(declare-fun c!898624 () Bool)

(declare-fun c!898625 () Bool)

(assert (=> bm!366967 (= call!366972 (validRegex!6533 (ite c!898624 (reg!15126 lt!2141994) (ite c!898625 (regTwo!30107 lt!2141994) (regTwo!30106 lt!2141994)))))))

(declare-fun b!5210940 () Bool)

(assert (=> b!5210940 (= e!3244110 call!366971)))

(declare-fun b!5210941 () Bool)

(assert (=> b!5210941 (= e!3244111 call!366971)))

(declare-fun b!5210942 () Bool)

(assert (=> b!5210942 (= e!3244107 e!3244112)))

(assert (=> b!5210942 (= c!898625 ((_ is Union!14797) lt!2141994))))

(declare-fun b!5210943 () Bool)

(assert (=> b!5210943 (= e!3244108 e!3244107)))

(assert (=> b!5210943 (= c!898624 ((_ is Star!14797) lt!2141994))))

(declare-fun bm!366968 () Bool)

(assert (=> bm!366968 (= call!366973 (validRegex!6533 (ite c!898625 (regOne!30107 lt!2141994) (regOne!30106 lt!2141994))))))

(assert (= (and d!1680334 (not res!2213283)) b!5210943))

(assert (= (and b!5210943 c!898624) b!5210936))

(assert (= (and b!5210943 (not c!898624)) b!5210942))

(assert (= (and b!5210936 res!2213282) b!5210935))

(assert (= (and b!5210942 c!898625) b!5210938))

(assert (= (and b!5210942 (not c!898625)) b!5210937))

(assert (= (and b!5210938 res!2213281) b!5210940))

(assert (= (and b!5210937 (not res!2213279)) b!5210939))

(assert (= (and b!5210939 res!2213280) b!5210941))

(assert (= (or b!5210940 b!5210941) bm!366966))

(assert (= (or b!5210938 b!5210939) bm!366968))

(assert (= (or b!5210935 bm!366966) bm!366967))

(declare-fun m!6260654 () Bool)

(assert (=> b!5210936 m!6260654))

(declare-fun m!6260656 () Bool)

(assert (=> bm!366967 m!6260656))

(declare-fun m!6260658 () Bool)

(assert (=> bm!366968 m!6260658))

(assert (=> d!1679932 d!1680334))

(declare-fun d!1680336 () Bool)

(declare-fun res!2213284 () Bool)

(declare-fun e!3244114 () Bool)

(assert (=> d!1680336 (=> res!2213284 e!3244114)))

(assert (=> d!1680336 (= res!2213284 ((_ is Nil!60566) (unfocusZipperList!239 zl!343)))))

(assert (=> d!1680336 (= (forall!14233 (unfocusZipperList!239 zl!343) lambda!261219) e!3244114)))

(declare-fun b!5210944 () Bool)

(declare-fun e!3244115 () Bool)

(assert (=> b!5210944 (= e!3244114 e!3244115)))

(declare-fun res!2213285 () Bool)

(assert (=> b!5210944 (=> (not res!2213285) (not e!3244115))))

(assert (=> b!5210944 (= res!2213285 (dynLambda!23929 lambda!261219 (h!67014 (unfocusZipperList!239 zl!343))))))

(declare-fun b!5210945 () Bool)

(assert (=> b!5210945 (= e!3244115 (forall!14233 (t!373851 (unfocusZipperList!239 zl!343)) lambda!261219))))

(assert (= (and d!1680336 (not res!2213284)) b!5210944))

(assert (= (and b!5210944 res!2213285) b!5210945))

(declare-fun b_lambda!201561 () Bool)

(assert (=> (not b_lambda!201561) (not b!5210944)))

(declare-fun m!6260660 () Bool)

(assert (=> b!5210944 m!6260660))

(declare-fun m!6260662 () Bool)

(assert (=> b!5210945 m!6260662))

(assert (=> d!1679932 d!1680336))

(assert (=> d!1679952 d!1680298))

(declare-fun b!5210946 () Bool)

(declare-fun c!898628 () Bool)

(assert (=> b!5210946 (= c!898628 ((_ is Star!14797) (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292))))))))

(declare-fun e!3244121 () (InoxSet Context!8362))

(declare-fun e!3244116 () (InoxSet Context!8362))

(assert (=> b!5210946 (= e!3244121 e!3244116)))

(declare-fun b!5210947 () Bool)

(declare-fun e!3244119 () (InoxSet Context!8362))

(declare-fun e!3244117 () (InoxSet Context!8362))

(assert (=> b!5210947 (= e!3244119 e!3244117)))

(declare-fun c!898629 () Bool)

(assert (=> b!5210947 (= c!898629 ((_ is Union!14797) (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292))))))))

(declare-fun b!5210948 () Bool)

(assert (=> b!5210948 (= e!3244116 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5210949 () Bool)

(declare-fun e!3244120 () (InoxSet Context!8362))

(assert (=> b!5210949 (= e!3244120 e!3244121)))

(declare-fun c!898626 () Bool)

(assert (=> b!5210949 (= c!898626 ((_ is Concat!23642) (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292))))))))

(declare-fun c!898627 () Bool)

(declare-fun bm!366969 () Bool)

(declare-fun call!366979 () List!60690)

(declare-fun call!366975 () (InoxSet Context!8362))

(assert (=> bm!366969 (= call!366975 (derivationStepZipperDown!245 (ite c!898629 (regOne!30107 (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292))))) (ite c!898627 (regTwo!30106 (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292))))) (ite c!898626 (regOne!30106 (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292))))) (reg!15126 (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292)))))))) (ite (or c!898629 c!898627) (ite c!898310 lt!2141932 (Context!8363 call!366740)) (Context!8363 call!366979)) (h!67016 s!2326)))))

(declare-fun b!5210950 () Bool)

(declare-fun call!366977 () (InoxSet Context!8362))

(assert (=> b!5210950 (= e!3244117 ((_ map or) call!366975 call!366977))))

(declare-fun call!366976 () List!60690)

(declare-fun bm!366970 () Bool)

(assert (=> bm!366970 (= call!366977 (derivationStepZipperDown!245 (ite c!898629 (regTwo!30107 (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292))))) (regOne!30106 (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292)))))) (ite c!898629 (ite c!898310 lt!2141932 (Context!8363 call!366740)) (Context!8363 call!366976)) (h!67016 s!2326)))))

(declare-fun d!1680338 () Bool)

(declare-fun c!898630 () Bool)

(assert (=> d!1680338 (= c!898630 (and ((_ is ElementMatch!14797) (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292))))) (= (c!898196 (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292))))) (h!67016 s!2326))))))

(assert (=> d!1680338 (= (derivationStepZipperDown!245 (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292)))) (ite c!898310 lt!2141932 (Context!8363 call!366740)) (h!67016 s!2326)) e!3244119)))

(declare-fun bm!366971 () Bool)

(assert (=> bm!366971 (= call!366979 call!366976)))

(declare-fun b!5210951 () Bool)

(declare-fun call!366974 () (InoxSet Context!8362))

(assert (=> b!5210951 (= e!3244116 call!366974)))

(declare-fun bm!366972 () Bool)

(declare-fun call!366978 () (InoxSet Context!8362))

(assert (=> bm!366972 (= call!366974 call!366978)))

(declare-fun b!5210952 () Bool)

(assert (=> b!5210952 (= e!3244121 call!366974)))

(declare-fun b!5210953 () Bool)

(assert (=> b!5210953 (= e!3244119 (store ((as const (Array Context!8362 Bool)) false) (ite c!898310 lt!2141932 (Context!8363 call!366740)) true))))

(declare-fun bm!366973 () Bool)

(assert (=> bm!366973 (= call!366976 ($colon$colon!1275 (exprs!4681 (ite c!898310 lt!2141932 (Context!8363 call!366740))) (ite (or c!898627 c!898626) (regTwo!30106 (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292))))) (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292)))))))))

(declare-fun bm!366974 () Bool)

(assert (=> bm!366974 (= call!366978 call!366975)))

(declare-fun b!5210954 () Bool)

(assert (=> b!5210954 (= e!3244120 ((_ map or) call!366977 call!366978))))

(declare-fun b!5210955 () Bool)

(declare-fun e!3244118 () Bool)

(assert (=> b!5210955 (= c!898627 e!3244118)))

(declare-fun res!2213286 () Bool)

(assert (=> b!5210955 (=> (not res!2213286) (not e!3244118))))

(assert (=> b!5210955 (= res!2213286 ((_ is Concat!23642) (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292))))))))

(assert (=> b!5210955 (= e!3244117 e!3244120)))

(declare-fun b!5210956 () Bool)

(assert (=> b!5210956 (= e!3244118 (nullable!4966 (regOne!30106 (ite c!898310 (regTwo!30107 (regOne!30107 (regOne!30106 r!7292))) (regOne!30106 (regOne!30107 (regOne!30106 r!7292)))))))))

(assert (= (and d!1680338 c!898630) b!5210953))

(assert (= (and d!1680338 (not c!898630)) b!5210947))

(assert (= (and b!5210947 c!898629) b!5210950))

(assert (= (and b!5210947 (not c!898629)) b!5210955))

(assert (= (and b!5210955 res!2213286) b!5210956))

(assert (= (and b!5210955 c!898627) b!5210954))

(assert (= (and b!5210955 (not c!898627)) b!5210949))

(assert (= (and b!5210949 c!898626) b!5210952))

(assert (= (and b!5210949 (not c!898626)) b!5210946))

(assert (= (and b!5210946 c!898628) b!5210951))

(assert (= (and b!5210946 (not c!898628)) b!5210948))

(assert (= (or b!5210952 b!5210951) bm!366971))

(assert (= (or b!5210952 b!5210951) bm!366972))

(assert (= (or b!5210954 bm!366971) bm!366973))

(assert (= (or b!5210954 bm!366972) bm!366974))

(assert (= (or b!5210950 b!5210954) bm!366970))

(assert (= (or b!5210950 bm!366974) bm!366969))

(declare-fun m!6260664 () Bool)

(assert (=> b!5210956 m!6260664))

(declare-fun m!6260666 () Bool)

(assert (=> bm!366973 m!6260666))

(declare-fun m!6260668 () Bool)

(assert (=> bm!366969 m!6260668))

(declare-fun m!6260670 () Bool)

(assert (=> bm!366970 m!6260670))

(declare-fun m!6260672 () Bool)

(assert (=> b!5210953 m!6260672))

(assert (=> bm!366734 d!1680338))

(declare-fun bs!1210725 () Bool)

(declare-fun b!5210962 () Bool)

(assert (= bs!1210725 (and b!5210962 b!5209318)))

(declare-fun lambda!261288 () Int)

(assert (=> bs!1210725 (not (= lambda!261288 lambda!261184))))

(declare-fun bs!1210726 () Bool)

(assert (= bs!1210726 (and b!5210962 b!5209895)))

(assert (=> bs!1210726 (= (and (= (reg!15126 (regTwo!30107 r!7292)) (reg!15126 r!7292)) (= (regTwo!30107 r!7292) r!7292)) (= lambda!261288 lambda!261227))))

(declare-fun bs!1210727 () Bool)

(assert (= bs!1210727 (and b!5210962 d!1680310)))

(assert (=> bs!1210727 (not (= lambda!261288 lambda!261285))))

(declare-fun bs!1210728 () Bool)

(assert (= bs!1210728 (and b!5210962 d!1679964)))

(assert (=> bs!1210728 (not (= lambda!261288 lambda!261237))))

(declare-fun bs!1210729 () Bool)

(assert (= bs!1210729 (and b!5210962 d!1680264)))

(assert (=> bs!1210729 (not (= lambda!261288 lambda!261280))))

(declare-fun bs!1210730 () Bool)

(assert (= bs!1210730 (and b!5210962 b!5209898)))

(assert (=> bs!1210730 (not (= lambda!261288 lambda!261228))))

(assert (=> bs!1210725 (not (= lambda!261288 lambda!261183))))

(assert (=> bs!1210729 (not (= lambda!261288 lambda!261281))))

(assert (=> bs!1210728 (not (= lambda!261288 lambda!261236))))

(declare-fun bs!1210731 () Bool)

(assert (= bs!1210731 (and b!5210962 d!1679962)))

(assert (=> bs!1210731 (not (= lambda!261288 lambda!261231))))

(assert (=> b!5210962 true))

(assert (=> b!5210962 true))

(declare-fun bs!1210732 () Bool)

(declare-fun b!5210965 () Bool)

(assert (= bs!1210732 (and b!5210965 b!5209318)))

(declare-fun lambda!261289 () Int)

(assert (=> bs!1210732 (= (and (= (regOne!30106 (regTwo!30107 r!7292)) (regOne!30106 r!7292)) (= (regTwo!30106 (regTwo!30107 r!7292)) (regTwo!30106 r!7292))) (= lambda!261289 lambda!261184))))

(declare-fun bs!1210733 () Bool)

(assert (= bs!1210733 (and b!5210965 b!5209895)))

(assert (=> bs!1210733 (not (= lambda!261289 lambda!261227))))

(declare-fun bs!1210734 () Bool)

(assert (= bs!1210734 (and b!5210965 d!1680310)))

(assert (=> bs!1210734 (not (= lambda!261289 lambda!261285))))

(declare-fun bs!1210735 () Bool)

(assert (= bs!1210735 (and b!5210965 d!1679964)))

(assert (=> bs!1210735 (= (and (= (regOne!30106 (regTwo!30107 r!7292)) (regOne!30106 r!7292)) (= (regTwo!30106 (regTwo!30107 r!7292)) (regTwo!30106 r!7292))) (= lambda!261289 lambda!261237))))

(declare-fun bs!1210736 () Bool)

(assert (= bs!1210736 (and b!5210965 d!1680264)))

(assert (=> bs!1210736 (not (= lambda!261289 lambda!261280))))

(declare-fun bs!1210737 () Bool)

(assert (= bs!1210737 (and b!5210965 b!5209898)))

(assert (=> bs!1210737 (= (and (= (regOne!30106 (regTwo!30107 r!7292)) (regOne!30106 r!7292)) (= (regTwo!30106 (regTwo!30107 r!7292)) (regTwo!30106 r!7292))) (= lambda!261289 lambda!261228))))

(assert (=> bs!1210732 (not (= lambda!261289 lambda!261183))))

(assert (=> bs!1210736 (= (and (= (regOne!30106 (regTwo!30107 r!7292)) (regOne!30106 r!7292)) (= (regTwo!30106 (regTwo!30107 r!7292)) (regTwo!30106 r!7292))) (= lambda!261289 lambda!261281))))

(declare-fun bs!1210738 () Bool)

(assert (= bs!1210738 (and b!5210965 d!1679962)))

(assert (=> bs!1210738 (not (= lambda!261289 lambda!261231))))

(assert (=> bs!1210735 (not (= lambda!261289 lambda!261236))))

(declare-fun bs!1210739 () Bool)

(assert (= bs!1210739 (and b!5210965 b!5210962)))

(assert (=> bs!1210739 (not (= lambda!261289 lambda!261288))))

(assert (=> b!5210965 true))

(assert (=> b!5210965 true))

(declare-fun b!5210957 () Bool)

(declare-fun c!898634 () Bool)

(assert (=> b!5210957 (= c!898634 ((_ is Union!14797) (regTwo!30107 r!7292)))))

(declare-fun e!3244122 () Bool)

(declare-fun e!3244125 () Bool)

(assert (=> b!5210957 (= e!3244122 e!3244125)))

(declare-fun b!5210958 () Bool)

(declare-fun e!3244128 () Bool)

(assert (=> b!5210958 (= e!3244128 (matchRSpec!1900 (regTwo!30107 (regTwo!30107 r!7292)) s!2326))))

(declare-fun b!5210959 () Bool)

(declare-fun c!898631 () Bool)

(assert (=> b!5210959 (= c!898631 ((_ is ElementMatch!14797) (regTwo!30107 r!7292)))))

(declare-fun e!3244123 () Bool)

(assert (=> b!5210959 (= e!3244123 e!3244122)))

(declare-fun b!5210960 () Bool)

(declare-fun e!3244127 () Bool)

(declare-fun call!366980 () Bool)

(assert (=> b!5210960 (= e!3244127 call!366980)))

(declare-fun bm!366975 () Bool)

(assert (=> bm!366975 (= call!366980 (isEmpty!32481 s!2326))))

(declare-fun b!5210961 () Bool)

(assert (=> b!5210961 (= e!3244125 e!3244128)))

(declare-fun res!2213289 () Bool)

(assert (=> b!5210961 (= res!2213289 (matchRSpec!1900 (regOne!30107 (regTwo!30107 r!7292)) s!2326))))

(assert (=> b!5210961 (=> res!2213289 e!3244128)))

(declare-fun b!5210963 () Bool)

(assert (=> b!5210963 (= e!3244127 e!3244123)))

(declare-fun res!2213288 () Bool)

(assert (=> b!5210963 (= res!2213288 (not ((_ is EmptyLang!14797) (regTwo!30107 r!7292))))))

(assert (=> b!5210963 (=> (not res!2213288) (not e!3244123))))

(declare-fun b!5210964 () Bool)

(assert (=> b!5210964 (= e!3244122 (= s!2326 (Cons!60568 (c!898196 (regTwo!30107 r!7292)) Nil!60568)))))

(declare-fun bm!366976 () Bool)

(declare-fun c!898633 () Bool)

(declare-fun call!366981 () Bool)

(assert (=> bm!366976 (= call!366981 (Exists!1978 (ite c!898633 lambda!261288 lambda!261289)))))

(declare-fun e!3244126 () Bool)

(assert (=> b!5210965 (= e!3244126 call!366981)))

(declare-fun b!5210966 () Bool)

(assert (=> b!5210966 (= e!3244125 e!3244126)))

(assert (=> b!5210966 (= c!898633 ((_ is Star!14797) (regTwo!30107 r!7292)))))

(declare-fun b!5210967 () Bool)

(declare-fun res!2213287 () Bool)

(declare-fun e!3244124 () Bool)

(assert (=> b!5210967 (=> res!2213287 e!3244124)))

(assert (=> b!5210967 (= res!2213287 call!366980)))

(assert (=> b!5210967 (= e!3244126 e!3244124)))

(assert (=> b!5210962 (= e!3244124 call!366981)))

(declare-fun d!1680340 () Bool)

(declare-fun c!898632 () Bool)

(assert (=> d!1680340 (= c!898632 ((_ is EmptyExpr!14797) (regTwo!30107 r!7292)))))

(assert (=> d!1680340 (= (matchRSpec!1900 (regTwo!30107 r!7292) s!2326) e!3244127)))

(assert (= (and d!1680340 c!898632) b!5210960))

(assert (= (and d!1680340 (not c!898632)) b!5210963))

(assert (= (and b!5210963 res!2213288) b!5210959))

(assert (= (and b!5210959 c!898631) b!5210964))

(assert (= (and b!5210959 (not c!898631)) b!5210957))

(assert (= (and b!5210957 c!898634) b!5210961))

(assert (= (and b!5210957 (not c!898634)) b!5210966))

(assert (= (and b!5210961 (not res!2213289)) b!5210958))

(assert (= (and b!5210966 c!898633) b!5210967))

(assert (= (and b!5210966 (not c!898633)) b!5210965))

(assert (= (and b!5210967 (not res!2213287)) b!5210962))

(assert (= (or b!5210962 b!5210965) bm!366976))

(assert (= (or b!5210960 b!5210967) bm!366975))

(declare-fun m!6260674 () Bool)

(assert (=> b!5210958 m!6260674))

(assert (=> bm!366975 m!6259812))

(declare-fun m!6260676 () Bool)

(assert (=> b!5210961 m!6260676))

(declare-fun m!6260678 () Bool)

(assert (=> bm!366976 m!6260678))

(assert (=> b!5209891 d!1680340))

(assert (=> d!1679978 d!1679984))

(declare-fun d!1680342 () Bool)

(assert (=> d!1680342 (= (flatMap!524 z!1189 lambda!261185) (dynLambda!23927 lambda!261185 (h!67015 zl!343)))))

(assert (=> d!1680342 true))

(declare-fun _$13!1687 () Unit!152454)

(assert (=> d!1680342 (= (choose!38737 z!1189 (h!67015 zl!343) lambda!261185) _$13!1687)))

(declare-fun b_lambda!201563 () Bool)

(assert (=> (not b_lambda!201563) (not d!1680342)))

(declare-fun bs!1210740 () Bool)

(assert (= bs!1210740 d!1680342))

(assert (=> bs!1210740 m!6259466))

(assert (=> bs!1210740 m!6259896))

(assert (=> d!1679978 d!1680342))

(declare-fun bm!366977 () Bool)

(declare-fun call!366982 () Bool)

(assert (=> bm!366977 (= call!366982 (isEmpty!32481 (_1!35299 (get!20809 lt!2142018))))))

(declare-fun b!5210968 () Bool)

(declare-fun e!3244135 () Bool)

(assert (=> b!5210968 (= e!3244135 (not (= (head!11170 (_1!35299 (get!20809 lt!2142018))) (c!898196 (regOne!30106 r!7292)))))))

(declare-fun b!5210969 () Bool)

(declare-fun res!2213292 () Bool)

(declare-fun e!3244130 () Bool)

(assert (=> b!5210969 (=> (not res!2213292) (not e!3244130))))

(assert (=> b!5210969 (= res!2213292 (not call!366982))))

(declare-fun b!5210970 () Bool)

(declare-fun res!2213291 () Bool)

(declare-fun e!3244132 () Bool)

(assert (=> b!5210970 (=> res!2213291 e!3244132)))

(assert (=> b!5210970 (= res!2213291 e!3244130)))

(declare-fun res!2213293 () Bool)

(assert (=> b!5210970 (=> (not res!2213293) (not e!3244130))))

(declare-fun lt!2142059 () Bool)

(assert (=> b!5210970 (= res!2213293 lt!2142059)))

(declare-fun d!1680344 () Bool)

(declare-fun e!3244129 () Bool)

(assert (=> d!1680344 e!3244129))

(declare-fun c!898635 () Bool)

(assert (=> d!1680344 (= c!898635 ((_ is EmptyExpr!14797) (regOne!30106 r!7292)))))

(declare-fun e!3244133 () Bool)

(assert (=> d!1680344 (= lt!2142059 e!3244133)))

(declare-fun c!898637 () Bool)

(assert (=> d!1680344 (= c!898637 (isEmpty!32481 (_1!35299 (get!20809 lt!2142018))))))

(assert (=> d!1680344 (validRegex!6533 (regOne!30106 r!7292))))

(assert (=> d!1680344 (= (matchR!6982 (regOne!30106 r!7292) (_1!35299 (get!20809 lt!2142018))) lt!2142059)))

(declare-fun b!5210971 () Bool)

(declare-fun e!3244131 () Bool)

(assert (=> b!5210971 (= e!3244131 e!3244135)))

(declare-fun res!2213296 () Bool)

(assert (=> b!5210971 (=> res!2213296 e!3244135)))

(assert (=> b!5210971 (= res!2213296 call!366982)))

(declare-fun b!5210972 () Bool)

(assert (=> b!5210972 (= e!3244130 (= (head!11170 (_1!35299 (get!20809 lt!2142018))) (c!898196 (regOne!30106 r!7292))))))

(declare-fun b!5210973 () Bool)

(declare-fun res!2213297 () Bool)

(assert (=> b!5210973 (=> (not res!2213297) (not e!3244130))))

(assert (=> b!5210973 (= res!2213297 (isEmpty!32481 (tail!10267 (_1!35299 (get!20809 lt!2142018)))))))

(declare-fun b!5210974 () Bool)

(assert (=> b!5210974 (= e!3244129 (= lt!2142059 call!366982))))

(declare-fun b!5210975 () Bool)

(assert (=> b!5210975 (= e!3244133 (matchR!6982 (derivativeStep!4047 (regOne!30106 r!7292) (head!11170 (_1!35299 (get!20809 lt!2142018)))) (tail!10267 (_1!35299 (get!20809 lt!2142018)))))))

(declare-fun b!5210976 () Bool)

(declare-fun e!3244134 () Bool)

(assert (=> b!5210976 (= e!3244134 (not lt!2142059))))

(declare-fun b!5210977 () Bool)

(assert (=> b!5210977 (= e!3244129 e!3244134)))

(declare-fun c!898636 () Bool)

(assert (=> b!5210977 (= c!898636 ((_ is EmptyLang!14797) (regOne!30106 r!7292)))))

(declare-fun b!5210978 () Bool)

(assert (=> b!5210978 (= e!3244133 (nullable!4966 (regOne!30106 r!7292)))))

(declare-fun b!5210979 () Bool)

(declare-fun res!2213295 () Bool)

(assert (=> b!5210979 (=> res!2213295 e!3244132)))

(assert (=> b!5210979 (= res!2213295 (not ((_ is ElementMatch!14797) (regOne!30106 r!7292))))))

(assert (=> b!5210979 (= e!3244134 e!3244132)))

(declare-fun b!5210980 () Bool)

(assert (=> b!5210980 (= e!3244132 e!3244131)))

(declare-fun res!2213290 () Bool)

(assert (=> b!5210980 (=> (not res!2213290) (not e!3244131))))

(assert (=> b!5210980 (= res!2213290 (not lt!2142059))))

(declare-fun b!5210981 () Bool)

(declare-fun res!2213294 () Bool)

(assert (=> b!5210981 (=> res!2213294 e!3244135)))

(assert (=> b!5210981 (= res!2213294 (not (isEmpty!32481 (tail!10267 (_1!35299 (get!20809 lt!2142018))))))))

(assert (= (and d!1680344 c!898637) b!5210978))

(assert (= (and d!1680344 (not c!898637)) b!5210975))

(assert (= (and d!1680344 c!898635) b!5210974))

(assert (= (and d!1680344 (not c!898635)) b!5210977))

(assert (= (and b!5210977 c!898636) b!5210976))

(assert (= (and b!5210977 (not c!898636)) b!5210979))

(assert (= (and b!5210979 (not res!2213295)) b!5210970))

(assert (= (and b!5210970 res!2213293) b!5210969))

(assert (= (and b!5210969 res!2213292) b!5210973))

(assert (= (and b!5210973 res!2213297) b!5210972))

(assert (= (and b!5210970 (not res!2213291)) b!5210980))

(assert (= (and b!5210980 res!2213290) b!5210971))

(assert (= (and b!5210971 (not res!2213296)) b!5210981))

(assert (= (and b!5210981 (not res!2213294)) b!5210968))

(assert (= (or b!5210974 b!5210969 b!5210971) bm!366977))

(declare-fun m!6260680 () Bool)

(assert (=> b!5210972 m!6260680))

(declare-fun m!6260682 () Bool)

(assert (=> d!1680344 m!6260682))

(assert (=> d!1680344 m!6259850))

(assert (=> b!5210978 m!6260294))

(declare-fun m!6260684 () Bool)

(assert (=> b!5210981 m!6260684))

(assert (=> b!5210981 m!6260684))

(declare-fun m!6260686 () Bool)

(assert (=> b!5210981 m!6260686))

(assert (=> b!5210975 m!6260680))

(assert (=> b!5210975 m!6260680))

(declare-fun m!6260688 () Bool)

(assert (=> b!5210975 m!6260688))

(assert (=> b!5210975 m!6260684))

(assert (=> b!5210975 m!6260688))

(assert (=> b!5210975 m!6260684))

(declare-fun m!6260690 () Bool)

(assert (=> b!5210975 m!6260690))

(assert (=> b!5210973 m!6260684))

(assert (=> b!5210973 m!6260684))

(assert (=> b!5210973 m!6260686))

(assert (=> bm!366977 m!6260682))

(assert (=> b!5210968 m!6260680))

(assert (=> b!5209976 d!1680344))

(assert (=> b!5209976 d!1680324))

(declare-fun b!5210982 () Bool)

(declare-fun e!3244137 () (InoxSet Context!8362))

(declare-fun e!3244138 () (InoxSet Context!8362))

(assert (=> b!5210982 (= e!3244137 e!3244138)))

(declare-fun c!898638 () Bool)

(assert (=> b!5210982 (= c!898638 ((_ is Cons!60566) (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343)))))))))

(declare-fun b!5210983 () Bool)

(assert (=> b!5210983 (= e!3244138 ((as const (Array Context!8362 Bool)) false))))

(declare-fun call!366983 () (InoxSet Context!8362))

(declare-fun b!5210984 () Bool)

(assert (=> b!5210984 (= e!3244137 ((_ map or) call!366983 (derivationStepZipperUp!169 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343))))))) (h!67016 s!2326))))))

(declare-fun d!1680346 () Bool)

(declare-fun c!898639 () Bool)

(declare-fun e!3244136 () Bool)

(assert (=> d!1680346 (= c!898639 e!3244136)))

(declare-fun res!2213298 () Bool)

(assert (=> d!1680346 (=> (not res!2213298) (not e!3244136))))

(assert (=> d!1680346 (= res!2213298 ((_ is Cons!60566) (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343)))))))))

(assert (=> d!1680346 (= (derivationStepZipperUp!169 (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343)))) (h!67016 s!2326)) e!3244137)))

(declare-fun b!5210985 () Bool)

(assert (=> b!5210985 (= e!3244138 call!366983)))

(declare-fun bm!366978 () Bool)

(assert (=> bm!366978 (= call!366983 (derivationStepZipperDown!245 (h!67014 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343)))))) (Context!8363 (t!373851 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343))))))) (h!67016 s!2326)))))

(declare-fun b!5210986 () Bool)

(assert (=> b!5210986 (= e!3244136 (nullable!4966 (h!67014 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (h!67015 zl!343))))))))))

(assert (= (and d!1680346 res!2213298) b!5210986))

(assert (= (and d!1680346 c!898639) b!5210984))

(assert (= (and d!1680346 (not c!898639)) b!5210982))

(assert (= (and b!5210982 c!898638) b!5210985))

(assert (= (and b!5210982 (not c!898638)) b!5210983))

(assert (= (or b!5210984 b!5210985) bm!366978))

(declare-fun m!6260692 () Bool)

(assert (=> b!5210984 m!6260692))

(declare-fun m!6260694 () Bool)

(assert (=> bm!366978 m!6260694))

(declare-fun m!6260696 () Bool)

(assert (=> b!5210986 m!6260696))

(assert (=> b!5210031 d!1680346))

(declare-fun b!5210987 () Bool)

(declare-fun e!3244140 () (InoxSet Context!8362))

(declare-fun e!3244141 () (InoxSet Context!8362))

(assert (=> b!5210987 (= e!3244140 e!3244141)))

(declare-fun c!898640 () Bool)

(assert (=> b!5210987 (= c!898640 ((_ is Cons!60566) (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))))))))

(declare-fun b!5210988 () Bool)

(assert (=> b!5210988 (= e!3244141 ((as const (Array Context!8362 Bool)) false))))

(declare-fun call!366984 () (InoxSet Context!8362))

(declare-fun b!5210989 () Bool)

(assert (=> b!5210989 (= e!3244140 ((_ map or) call!366984 (derivationStepZipperUp!169 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))))))) (h!67016 s!2326))))))

(declare-fun d!1680348 () Bool)

(declare-fun c!898641 () Bool)

(declare-fun e!3244139 () Bool)

(assert (=> d!1680348 (= c!898641 e!3244139)))

(declare-fun res!2213299 () Bool)

(assert (=> d!1680348 (=> (not res!2213299) (not e!3244139))))

(assert (=> d!1680348 (= res!2213299 ((_ is Cons!60566) (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))))))))

(assert (=> d!1680348 (= (derivationStepZipperUp!169 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))) (h!67016 s!2326)) e!3244140)))

(declare-fun b!5210990 () Bool)

(assert (=> b!5210990 (= e!3244141 call!366984)))

(declare-fun bm!366979 () Bool)

(assert (=> bm!366979 (= call!366984 (derivationStepZipperDown!245 (h!67014 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343)))))))))) (Context!8363 (t!373851 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))))))) (h!67016 s!2326)))))

(declare-fun b!5210991 () Bool)

(assert (=> b!5210991 (= e!3244139 (nullable!4966 (h!67014 (exprs!4681 (Context!8363 (t!373851 (exprs!4681 (Context!8363 (Cons!60566 (h!67014 (exprs!4681 (h!67015 zl!343))) (t!373851 (exprs!4681 (h!67015 zl!343))))))))))))))

(assert (= (and d!1680348 res!2213299) b!5210991))

(assert (= (and d!1680348 c!898641) b!5210989))

(assert (= (and d!1680348 (not c!898641)) b!5210987))

(assert (= (and b!5210987 c!898640) b!5210990))

(assert (= (and b!5210987 (not c!898640)) b!5210988))

(assert (= (or b!5210989 b!5210990) bm!366979))

(declare-fun m!6260698 () Bool)

(assert (=> b!5210989 m!6260698))

(declare-fun m!6260700 () Bool)

(assert (=> bm!366979 m!6260700))

(declare-fun m!6260702 () Bool)

(assert (=> b!5210991 m!6260702))

(assert (=> b!5210026 d!1680348))

(assert (=> d!1679938 d!1680298))

(assert (=> bm!366762 d!1680178))

(declare-fun bs!1210741 () Bool)

(declare-fun b!5210997 () Bool)

(assert (= bs!1210741 (and b!5210997 b!5209318)))

(declare-fun lambda!261290 () Int)

(assert (=> bs!1210741 (not (= lambda!261290 lambda!261184))))

(declare-fun bs!1210742 () Bool)

(assert (= bs!1210742 (and b!5210997 b!5209895)))

(assert (=> bs!1210742 (= (and (= (reg!15126 (regOne!30107 r!7292)) (reg!15126 r!7292)) (= (regOne!30107 r!7292) r!7292)) (= lambda!261290 lambda!261227))))

(declare-fun bs!1210743 () Bool)

(assert (= bs!1210743 (and b!5210997 d!1680310)))

(assert (=> bs!1210743 (not (= lambda!261290 lambda!261285))))

(declare-fun bs!1210744 () Bool)

(assert (= bs!1210744 (and b!5210997 d!1679964)))

(assert (=> bs!1210744 (not (= lambda!261290 lambda!261237))))

(declare-fun bs!1210745 () Bool)

(assert (= bs!1210745 (and b!5210997 b!5210965)))

(assert (=> bs!1210745 (not (= lambda!261290 lambda!261289))))

(declare-fun bs!1210746 () Bool)

(assert (= bs!1210746 (and b!5210997 d!1680264)))

(assert (=> bs!1210746 (not (= lambda!261290 lambda!261280))))

(declare-fun bs!1210747 () Bool)

(assert (= bs!1210747 (and b!5210997 b!5209898)))

(assert (=> bs!1210747 (not (= lambda!261290 lambda!261228))))

(assert (=> bs!1210741 (not (= lambda!261290 lambda!261183))))

(assert (=> bs!1210746 (not (= lambda!261290 lambda!261281))))

(declare-fun bs!1210748 () Bool)

(assert (= bs!1210748 (and b!5210997 d!1679962)))

(assert (=> bs!1210748 (not (= lambda!261290 lambda!261231))))

(assert (=> bs!1210744 (not (= lambda!261290 lambda!261236))))

(declare-fun bs!1210749 () Bool)

(assert (= bs!1210749 (and b!5210997 b!5210962)))

(assert (=> bs!1210749 (= (and (= (reg!15126 (regOne!30107 r!7292)) (reg!15126 (regTwo!30107 r!7292))) (= (regOne!30107 r!7292) (regTwo!30107 r!7292))) (= lambda!261290 lambda!261288))))

(assert (=> b!5210997 true))

(assert (=> b!5210997 true))

(declare-fun bs!1210750 () Bool)

(declare-fun b!5211000 () Bool)

(assert (= bs!1210750 (and b!5211000 b!5209318)))

(declare-fun lambda!261291 () Int)

(assert (=> bs!1210750 (= (and (= (regOne!30106 (regOne!30107 r!7292)) (regOne!30106 r!7292)) (= (regTwo!30106 (regOne!30107 r!7292)) (regTwo!30106 r!7292))) (= lambda!261291 lambda!261184))))

(declare-fun bs!1210751 () Bool)

(assert (= bs!1210751 (and b!5211000 b!5209895)))

(assert (=> bs!1210751 (not (= lambda!261291 lambda!261227))))

(declare-fun bs!1210752 () Bool)

(assert (= bs!1210752 (and b!5211000 d!1680310)))

(assert (=> bs!1210752 (not (= lambda!261291 lambda!261285))))

(declare-fun bs!1210753 () Bool)

(assert (= bs!1210753 (and b!5211000 d!1679964)))

(assert (=> bs!1210753 (= (and (= (regOne!30106 (regOne!30107 r!7292)) (regOne!30106 r!7292)) (= (regTwo!30106 (regOne!30107 r!7292)) (regTwo!30106 r!7292))) (= lambda!261291 lambda!261237))))

(declare-fun bs!1210754 () Bool)

(assert (= bs!1210754 (and b!5211000 b!5210965)))

(assert (=> bs!1210754 (= (and (= (regOne!30106 (regOne!30107 r!7292)) (regOne!30106 (regTwo!30107 r!7292))) (= (regTwo!30106 (regOne!30107 r!7292)) (regTwo!30106 (regTwo!30107 r!7292)))) (= lambda!261291 lambda!261289))))

(declare-fun bs!1210755 () Bool)

(assert (= bs!1210755 (and b!5211000 b!5209898)))

(assert (=> bs!1210755 (= (and (= (regOne!30106 (regOne!30107 r!7292)) (regOne!30106 r!7292)) (= (regTwo!30106 (regOne!30107 r!7292)) (regTwo!30106 r!7292))) (= lambda!261291 lambda!261228))))

(assert (=> bs!1210750 (not (= lambda!261291 lambda!261183))))

(declare-fun bs!1210756 () Bool)

(assert (= bs!1210756 (and b!5211000 d!1680264)))

(assert (=> bs!1210756 (= (and (= (regOne!30106 (regOne!30107 r!7292)) (regOne!30106 r!7292)) (= (regTwo!30106 (regOne!30107 r!7292)) (regTwo!30106 r!7292))) (= lambda!261291 lambda!261281))))

(declare-fun bs!1210757 () Bool)

(assert (= bs!1210757 (and b!5211000 d!1679962)))

(assert (=> bs!1210757 (not (= lambda!261291 lambda!261231))))

(declare-fun bs!1210758 () Bool)

(assert (= bs!1210758 (and b!5211000 b!5210997)))

(assert (=> bs!1210758 (not (= lambda!261291 lambda!261290))))

(assert (=> bs!1210756 (not (= lambda!261291 lambda!261280))))

(assert (=> bs!1210753 (not (= lambda!261291 lambda!261236))))

(declare-fun bs!1210759 () Bool)

(assert (= bs!1210759 (and b!5211000 b!5210962)))

(assert (=> bs!1210759 (not (= lambda!261291 lambda!261288))))

(assert (=> b!5211000 true))

(assert (=> b!5211000 true))

(declare-fun b!5210992 () Bool)

(declare-fun c!898645 () Bool)

(assert (=> b!5210992 (= c!898645 ((_ is Union!14797) (regOne!30107 r!7292)))))

(declare-fun e!3244142 () Bool)

(declare-fun e!3244145 () Bool)

(assert (=> b!5210992 (= e!3244142 e!3244145)))

(declare-fun b!5210993 () Bool)

(declare-fun e!3244148 () Bool)

(assert (=> b!5210993 (= e!3244148 (matchRSpec!1900 (regTwo!30107 (regOne!30107 r!7292)) s!2326))))

(declare-fun b!5210994 () Bool)

(declare-fun c!898642 () Bool)

(assert (=> b!5210994 (= c!898642 ((_ is ElementMatch!14797) (regOne!30107 r!7292)))))

(declare-fun e!3244143 () Bool)

(assert (=> b!5210994 (= e!3244143 e!3244142)))

(declare-fun b!5210995 () Bool)

(declare-fun e!3244147 () Bool)

(declare-fun call!366985 () Bool)

(assert (=> b!5210995 (= e!3244147 call!366985)))

(declare-fun bm!366980 () Bool)

(assert (=> bm!366980 (= call!366985 (isEmpty!32481 s!2326))))

(declare-fun b!5210996 () Bool)

(assert (=> b!5210996 (= e!3244145 e!3244148)))

(declare-fun res!2213302 () Bool)

(assert (=> b!5210996 (= res!2213302 (matchRSpec!1900 (regOne!30107 (regOne!30107 r!7292)) s!2326))))

(assert (=> b!5210996 (=> res!2213302 e!3244148)))

(declare-fun b!5210998 () Bool)

(assert (=> b!5210998 (= e!3244147 e!3244143)))

(declare-fun res!2213301 () Bool)

(assert (=> b!5210998 (= res!2213301 (not ((_ is EmptyLang!14797) (regOne!30107 r!7292))))))

(assert (=> b!5210998 (=> (not res!2213301) (not e!3244143))))

(declare-fun b!5210999 () Bool)

(assert (=> b!5210999 (= e!3244142 (= s!2326 (Cons!60568 (c!898196 (regOne!30107 r!7292)) Nil!60568)))))

(declare-fun c!898644 () Bool)

(declare-fun call!366986 () Bool)

(declare-fun bm!366981 () Bool)

(assert (=> bm!366981 (= call!366986 (Exists!1978 (ite c!898644 lambda!261290 lambda!261291)))))

(declare-fun e!3244146 () Bool)

(assert (=> b!5211000 (= e!3244146 call!366986)))

(declare-fun b!5211001 () Bool)

(assert (=> b!5211001 (= e!3244145 e!3244146)))

(assert (=> b!5211001 (= c!898644 ((_ is Star!14797) (regOne!30107 r!7292)))))

(declare-fun b!5211002 () Bool)

(declare-fun res!2213300 () Bool)

(declare-fun e!3244144 () Bool)

(assert (=> b!5211002 (=> res!2213300 e!3244144)))

(assert (=> b!5211002 (= res!2213300 call!366985)))

(assert (=> b!5211002 (= e!3244146 e!3244144)))

(assert (=> b!5210997 (= e!3244144 call!366986)))

(declare-fun d!1680350 () Bool)

(declare-fun c!898643 () Bool)

(assert (=> d!1680350 (= c!898643 ((_ is EmptyExpr!14797) (regOne!30107 r!7292)))))

(assert (=> d!1680350 (= (matchRSpec!1900 (regOne!30107 r!7292) s!2326) e!3244147)))

(assert (= (and d!1680350 c!898643) b!5210995))

(assert (= (and d!1680350 (not c!898643)) b!5210998))

(assert (= (and b!5210998 res!2213301) b!5210994))

(assert (= (and b!5210994 c!898642) b!5210999))

(assert (= (and b!5210994 (not c!898642)) b!5210992))

(assert (= (and b!5210992 c!898645) b!5210996))

(assert (= (and b!5210992 (not c!898645)) b!5211001))

(assert (= (and b!5210996 (not res!2213302)) b!5210993))

(assert (= (and b!5211001 c!898644) b!5211002))

(assert (= (and b!5211001 (not c!898644)) b!5211000))

(assert (= (and b!5211002 (not res!2213300)) b!5210997))

(assert (= (or b!5210997 b!5211000) bm!366981))

(assert (= (or b!5210995 b!5211002) bm!366980))

(declare-fun m!6260704 () Bool)

(assert (=> b!5210993 m!6260704))

(assert (=> bm!366980 m!6259812))

(declare-fun m!6260706 () Bool)

(assert (=> b!5210996 m!6260706))

(declare-fun m!6260708 () Bool)

(assert (=> bm!366981 m!6260708))

(assert (=> b!5209894 d!1680350))

(declare-fun d!1680352 () Bool)

(assert (=> d!1680352 (= ($colon$colon!1275 (exprs!4681 lt!2141932) (ite (or c!898308 c!898307) (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (regOne!30107 (regOne!30106 r!7292)))) (Cons!60566 (ite (or c!898308 c!898307) (regTwo!30106 (regOne!30107 (regOne!30106 r!7292))) (regOne!30107 (regOne!30106 r!7292))) (exprs!4681 lt!2141932)))))

(assert (=> bm!366737 d!1680352))

(declare-fun d!1680354 () Bool)

(assert (=> d!1680354 (= (nullable!4966 (h!67014 (exprs!4681 lt!2141932))) (nullableFct!1377 (h!67014 (exprs!4681 lt!2141932))))))

(declare-fun bs!1210760 () Bool)

(assert (= bs!1210760 d!1680354))

(declare-fun m!6260710 () Bool)

(assert (=> bs!1210760 m!6260710))

(assert (=> b!5210023 d!1680354))

(declare-fun b!5211003 () Bool)

(declare-fun c!898648 () Bool)

(assert (=> b!5211003 (= c!898648 ((_ is Star!14797) (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292))))))))))

(declare-fun e!3244154 () (InoxSet Context!8362))

(declare-fun e!3244149 () (InoxSet Context!8362))

(assert (=> b!5211003 (= e!3244154 e!3244149)))

(declare-fun b!5211004 () Bool)

(declare-fun e!3244152 () (InoxSet Context!8362))

(declare-fun e!3244150 () (InoxSet Context!8362))

(assert (=> b!5211004 (= e!3244152 e!3244150)))

(declare-fun c!898649 () Bool)

(assert (=> b!5211004 (= c!898649 ((_ is Union!14797) (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292))))))))))

(declare-fun b!5211005 () Bool)

(assert (=> b!5211005 (= e!3244149 ((as const (Array Context!8362 Bool)) false))))

(declare-fun b!5211006 () Bool)

(declare-fun e!3244153 () (InoxSet Context!8362))

(assert (=> b!5211006 (= e!3244153 e!3244154)))

(declare-fun c!898646 () Bool)

(assert (=> b!5211006 (= c!898646 ((_ is Concat!23642) (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292))))))))))

(declare-fun call!366988 () (InoxSet Context!8362))

(declare-fun call!366992 () List!60690)

(declare-fun c!898647 () Bool)

(declare-fun bm!366982 () Bool)

(assert (=> bm!366982 (= call!366988 (derivationStepZipperDown!245 (ite c!898649 (regOne!30107 (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292))))))) (ite c!898647 (regTwo!30106 (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292))))))) (ite c!898646 (regOne!30106 (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292))))))) (reg!15126 (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292)))))))))) (ite (or c!898649 c!898647) (ite (or c!898317 c!898315) lt!2141932 (Context!8363 call!366749)) (Context!8363 call!366992)) (h!67016 s!2326)))))

(declare-fun b!5211007 () Bool)

(declare-fun call!366990 () (InoxSet Context!8362))

(assert (=> b!5211007 (= e!3244150 ((_ map or) call!366988 call!366990))))

(declare-fun bm!366983 () Bool)

(declare-fun call!366989 () List!60690)

(assert (=> bm!366983 (= call!366990 (derivationStepZipperDown!245 (ite c!898649 (regTwo!30107 (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292))))))) (regOne!30106 (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292)))))))) (ite c!898649 (ite (or c!898317 c!898315) lt!2141932 (Context!8363 call!366749)) (Context!8363 call!366989)) (h!67016 s!2326)))))

(declare-fun c!898650 () Bool)

(declare-fun d!1680356 () Bool)

(assert (=> d!1680356 (= c!898650 (and ((_ is ElementMatch!14797) (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292))))))) (= (c!898196 (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292))))))) (h!67016 s!2326))))))

(assert (=> d!1680356 (= (derivationStepZipperDown!245 (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292)))))) (ite (or c!898317 c!898315) lt!2141932 (Context!8363 call!366749)) (h!67016 s!2326)) e!3244152)))

(declare-fun bm!366984 () Bool)

(assert (=> bm!366984 (= call!366992 call!366989)))

(declare-fun b!5211008 () Bool)

(declare-fun call!366987 () (InoxSet Context!8362))

(assert (=> b!5211008 (= e!3244149 call!366987)))

(declare-fun bm!366985 () Bool)

(declare-fun call!366991 () (InoxSet Context!8362))

(assert (=> bm!366985 (= call!366987 call!366991)))

(declare-fun b!5211009 () Bool)

(assert (=> b!5211009 (= e!3244154 call!366987)))

(declare-fun b!5211010 () Bool)

(assert (=> b!5211010 (= e!3244152 (store ((as const (Array Context!8362 Bool)) false) (ite (or c!898317 c!898315) lt!2141932 (Context!8363 call!366749)) true))))

(declare-fun bm!366986 () Bool)

(assert (=> bm!366986 (= call!366989 ($colon$colon!1275 (exprs!4681 (ite (or c!898317 c!898315) lt!2141932 (Context!8363 call!366749))) (ite (or c!898647 c!898646) (regTwo!30106 (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292))))))) (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292)))))))))))

(declare-fun bm!366987 () Bool)

(assert (=> bm!366987 (= call!366991 call!366988)))

(declare-fun b!5211011 () Bool)

(assert (=> b!5211011 (= e!3244153 ((_ map or) call!366990 call!366991))))

(declare-fun b!5211012 () Bool)

(declare-fun e!3244151 () Bool)

(assert (=> b!5211012 (= c!898647 e!3244151)))

(declare-fun res!2213303 () Bool)

(assert (=> b!5211012 (=> (not res!2213303) (not e!3244151))))

(assert (=> b!5211012 (= res!2213303 ((_ is Concat!23642) (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292))))))))))

(assert (=> b!5211012 (= e!3244150 e!3244153)))

(declare-fun b!5211013 () Bool)

(assert (=> b!5211013 (= e!3244151 (nullable!4966 (regOne!30106 (ite c!898317 (regOne!30107 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898315 (regTwo!30106 (regTwo!30107 (regOne!30106 r!7292))) (ite c!898314 (regOne!30106 (regTwo!30107 (regOne!30106 r!7292))) (reg!15126 (regTwo!30107 (regOne!30106 r!7292)))))))))))

(assert (= (and d!1680356 c!898650) b!5211010))

(assert (= (and d!1680356 (not c!898650)) b!5211004))

(assert (= (and b!5211004 c!898649) b!5211007))

(assert (= (and b!5211004 (not c!898649)) b!5211012))

(assert (= (and b!5211012 res!2213303) b!5211013))

(assert (= (and b!5211012 c!898647) b!5211011))

(assert (= (and b!5211012 (not c!898647)) b!5211006))

(assert (= (and b!5211006 c!898646) b!5211009))

(assert (= (and b!5211006 (not c!898646)) b!5211003))

(assert (= (and b!5211003 c!898648) b!5211008))

(assert (= (and b!5211003 (not c!898648)) b!5211005))

(assert (= (or b!5211009 b!5211008) bm!366984))

(assert (= (or b!5211009 b!5211008) bm!366985))

(assert (= (or b!5211011 bm!366984) bm!366986))

(assert (= (or b!5211011 bm!366985) bm!366987))

(assert (= (or b!5211007 b!5211011) bm!366983))

(assert (= (or b!5211007 bm!366987) bm!366982))

(declare-fun m!6260712 () Bool)

(assert (=> b!5211013 m!6260712))

(declare-fun m!6260714 () Bool)

(assert (=> bm!366986 m!6260714))

(declare-fun m!6260716 () Bool)

(assert (=> bm!366982 m!6260716))

(declare-fun m!6260718 () Bool)

(assert (=> bm!366983 m!6260718))

(declare-fun m!6260720 () Bool)

(assert (=> b!5211010 m!6260720))

(assert (=> bm!366739 d!1680356))

(declare-fun d!1680358 () Bool)

(assert (=> d!1680358 (= (isEmptyLang!770 lt!2141994) ((_ is EmptyLang!14797) lt!2141994))))

(assert (=> b!5209807 d!1680358))

(declare-fun d!1680360 () Bool)

(declare-fun c!898651 () Bool)

(assert (=> d!1680360 (= c!898651 (isEmpty!32481 (tail!10267 (t!373853 s!2326))))))

(declare-fun e!3244155 () Bool)

(assert (=> d!1680360 (= (matchZipper!1041 (derivationStepZipper!1069 lt!2141943 (head!11170 (t!373853 s!2326))) (tail!10267 (t!373853 s!2326))) e!3244155)))

(declare-fun b!5211014 () Bool)

(assert (=> b!5211014 (= e!3244155 (nullableZipper!1225 (derivationStepZipper!1069 lt!2141943 (head!11170 (t!373853 s!2326)))))))

(declare-fun b!5211015 () Bool)

(assert (=> b!5211015 (= e!3244155 (matchZipper!1041 (derivationStepZipper!1069 (derivationStepZipper!1069 lt!2141943 (head!11170 (t!373853 s!2326))) (head!11170 (tail!10267 (t!373853 s!2326)))) (tail!10267 (tail!10267 (t!373853 s!2326)))))))

(assert (= (and d!1680360 c!898651) b!5211014))

(assert (= (and d!1680360 (not c!898651)) b!5211015))

(assert (=> d!1680360 m!6259794))

(assert (=> d!1680360 m!6260174))

(assert (=> b!5211014 m!6259836))

(declare-fun m!6260722 () Bool)

(assert (=> b!5211014 m!6260722))

(assert (=> b!5211015 m!6259794))

(assert (=> b!5211015 m!6260178))

(assert (=> b!5211015 m!6259836))

(assert (=> b!5211015 m!6260178))

(declare-fun m!6260724 () Bool)

(assert (=> b!5211015 m!6260724))

(assert (=> b!5211015 m!6259794))

(assert (=> b!5211015 m!6260182))

(assert (=> b!5211015 m!6260724))

(assert (=> b!5211015 m!6260182))

(declare-fun m!6260726 () Bool)

(assert (=> b!5211015 m!6260726))

(assert (=> b!5209947 d!1680360))

(declare-fun bs!1210761 () Bool)

(declare-fun d!1680362 () Bool)

(assert (= bs!1210761 (and d!1680362 b!5209316)))

(declare-fun lambda!261292 () Int)

(assert (=> bs!1210761 (= (= (head!11170 (t!373853 s!2326)) (h!67016 s!2326)) (= lambda!261292 lambda!261185))))

(declare-fun bs!1210762 () Bool)

(assert (= bs!1210762 (and d!1680362 d!1680100)))

(assert (=> bs!1210762 (= lambda!261292 lambda!261261)))

(declare-fun bs!1210763 () Bool)

(assert (= bs!1210763 (and d!1680362 d!1680314)))

(assert (=> bs!1210763 (= lambda!261292 lambda!261286)))

(assert (=> d!1680362 true))

(assert (=> d!1680362 (= (derivationStepZipper!1069 lt!2141943 (head!11170 (t!373853 s!2326))) (flatMap!524 lt!2141943 lambda!261292))))

(declare-fun bs!1210764 () Bool)

(assert (= bs!1210764 d!1680362))

(declare-fun m!6260728 () Bool)

(assert (=> bs!1210764 m!6260728))

(assert (=> b!5209947 d!1680362))

(assert (=> b!5209947 d!1680104))

(assert (=> b!5209947 d!1680106))

(declare-fun bs!1210765 () Bool)

(declare-fun d!1680364 () Bool)

(assert (= bs!1210765 (and d!1680364 d!1679932)))

(declare-fun lambda!261293 () Int)

(assert (=> bs!1210765 (= lambda!261293 lambda!261219)))

(declare-fun bs!1210766 () Bool)

(assert (= bs!1210766 (and d!1680364 d!1679924)))

(assert (=> bs!1210766 (= lambda!261293 lambda!261216)))

(declare-fun bs!1210767 () Bool)

(assert (= bs!1210767 (and d!1680364 d!1680294)))

(assert (=> bs!1210767 (= lambda!261293 lambda!261282)))

(declare-fun bs!1210768 () Bool)

(assert (= bs!1210768 (and d!1680364 d!1679970)))

(assert (=> bs!1210768 (= lambda!261293 lambda!261240)))

(declare-fun bs!1210769 () Bool)

(assert (= bs!1210769 (and d!1680364 d!1679976)))

(assert (=> bs!1210769 (= lambda!261293 lambda!261241)))

(declare-fun bs!1210770 () Bool)

(assert (= bs!1210770 (and d!1680364 d!1679936)))

(assert (=> bs!1210770 (= lambda!261293 lambda!261222)))

(assert (=> d!1680364 (= (inv!80239 (h!67015 (t!373852 zl!343))) (forall!14233 (exprs!4681 (h!67015 (t!373852 zl!343))) lambda!261293))))

(declare-fun bs!1210771 () Bool)

(assert (= bs!1210771 d!1680364))

(declare-fun m!6260730 () Bool)

(assert (=> bs!1210771 m!6260730))

(assert (=> b!5210086 d!1680364))

(assert (=> b!5209933 d!1680220))

(declare-fun d!1680366 () Bool)

(assert (=> d!1680366 (= (isUnion!202 lt!2141994) ((_ is Union!14797) lt!2141994))))

(assert (=> b!5209810 d!1680366))

(declare-fun d!1680368 () Bool)

(assert (=> d!1680368 (= ($colon$colon!1275 (exprs!4681 lt!2141932) (ite (or c!898387 c!898386) (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (h!67014 (exprs!4681 (h!67015 zl!343))))) (Cons!60566 (ite (or c!898387 c!898386) (regTwo!30106 (h!67014 (exprs!4681 (h!67015 zl!343)))) (h!67014 (exprs!4681 (h!67015 zl!343)))) (exprs!4681 lt!2141932)))))

(assert (=> bm!366770 d!1680368))

(declare-fun d!1680370 () Bool)

(assert (=> d!1680370 (= (isEmpty!32478 (tail!10266 (unfocusZipperList!239 zl!343))) ((_ is Nil!60566) (tail!10266 (unfocusZipperList!239 zl!343))))))

(assert (=> b!5209814 d!1680370))

(declare-fun d!1680372 () Bool)

(assert (=> d!1680372 (= (tail!10266 (unfocusZipperList!239 zl!343)) (t!373851 (unfocusZipperList!239 zl!343)))))

(assert (=> b!5209814 d!1680372))

(declare-fun d!1680374 () Bool)

(assert (=> d!1680374 true))

(assert (=> d!1680374 true))

(declare-fun res!2213304 () Bool)

(assert (=> d!1680374 (= (choose!38734 lambda!261183) res!2213304)))

(assert (=> d!1679960 d!1680374))

(declare-fun d!1680376 () Bool)

(assert (=> d!1680376 (= (isConcat!284 lt!2141991) ((_ is Concat!23642) lt!2141991))))

(assert (=> b!5209741 d!1680376))

(declare-fun d!1680378 () Bool)

(assert (=> d!1680378 (= (nullable!4966 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343))))) (nullableFct!1377 (regOne!30106 (h!67014 (exprs!4681 (h!67015 zl!343))))))))

(declare-fun bs!1210772 () Bool)

(assert (= bs!1210772 d!1680378))

(declare-fun m!6260732 () Bool)

(assert (=> bs!1210772 m!6260732))

(assert (=> b!5210008 d!1680378))

(declare-fun d!1680380 () Bool)

(declare-fun res!2213305 () Bool)

(declare-fun e!3244156 () Bool)

(assert (=> d!1680380 (=> res!2213305 e!3244156)))

(assert (=> d!1680380 (= res!2213305 ((_ is Nil!60566) (exprs!4681 (h!67015 zl!343))))))

(assert (=> d!1680380 (= (forall!14233 (exprs!4681 (h!67015 zl!343)) lambda!261241) e!3244156)))

(declare-fun b!5211016 () Bool)

(declare-fun e!3244157 () Bool)

(assert (=> b!5211016 (= e!3244156 e!3244157)))

(declare-fun res!2213306 () Bool)

(assert (=> b!5211016 (=> (not res!2213306) (not e!3244157))))

(assert (=> b!5211016 (= res!2213306 (dynLambda!23929 lambda!261241 (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun b!5211017 () Bool)

(assert (=> b!5211017 (= e!3244157 (forall!14233 (t!373851 (exprs!4681 (h!67015 zl!343))) lambda!261241))))

(assert (= (and d!1680380 (not res!2213305)) b!5211016))

(assert (= (and b!5211016 res!2213306) b!5211017))

(declare-fun b_lambda!201565 () Bool)

(assert (=> (not b_lambda!201565) (not b!5211016)))

(declare-fun m!6260734 () Bool)

(assert (=> b!5211016 m!6260734))

(declare-fun m!6260736 () Bool)

(assert (=> b!5211017 m!6260736))

(assert (=> d!1679976 d!1680380))

(declare-fun d!1680382 () Bool)

(assert (=> d!1680382 (= (nullable!4966 (reg!15126 r!7292)) (nullableFct!1377 (reg!15126 r!7292)))))

(declare-fun bs!1210773 () Bool)

(assert (= bs!1210773 d!1680382))

(declare-fun m!6260738 () Bool)

(assert (=> bs!1210773 m!6260738))

(assert (=> b!5209850 d!1680382))

(assert (=> d!1679948 d!1679946))

(assert (=> d!1679948 d!1679944))

(declare-fun d!1680384 () Bool)

(assert (=> d!1680384 (= (matchR!6982 r!7292 s!2326) (matchRSpec!1900 r!7292 s!2326))))

(assert (=> d!1680384 true))

(declare-fun _$88!3462 () Unit!152454)

(assert (=> d!1680384 (= (choose!38732 r!7292 s!2326) _$88!3462)))

(declare-fun bs!1210774 () Bool)

(assert (= bs!1210774 d!1680384))

(assert (=> bs!1210774 m!6259456))

(assert (=> bs!1210774 m!6259454))

(assert (=> d!1679948 d!1680384))

(assert (=> d!1679948 d!1679942))

(declare-fun d!1680386 () Bool)

(declare-fun e!3244158 () Bool)

(assert (=> d!1680386 e!3244158))

(declare-fun res!2213308 () Bool)

(assert (=> d!1680386 (=> (not res!2213308) (not e!3244158))))

(declare-fun lt!2142060 () List!60692)

(assert (=> d!1680386 (= res!2213308 (= (content!10729 lt!2142060) ((_ map or) (content!10729 (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568))) (content!10729 (t!373853 s!2326)))))))

(declare-fun e!3244159 () List!60692)

(assert (=> d!1680386 (= lt!2142060 e!3244159)))

(declare-fun c!898652 () Bool)

(assert (=> d!1680386 (= c!898652 ((_ is Nil!60568) (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568))))))

(assert (=> d!1680386 (= (++!13205 (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568)) (t!373853 s!2326)) lt!2142060)))

(declare-fun b!5211019 () Bool)

(assert (=> b!5211019 (= e!3244159 (Cons!60568 (h!67016 (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568))) (++!13205 (t!373853 (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568))) (t!373853 s!2326))))))

(declare-fun b!5211020 () Bool)

(declare-fun res!2213307 () Bool)

(assert (=> b!5211020 (=> (not res!2213307) (not e!3244158))))

(assert (=> b!5211020 (= res!2213307 (= (size!39717 lt!2142060) (+ (size!39717 (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568))) (size!39717 (t!373853 s!2326)))))))

(declare-fun b!5211021 () Bool)

(assert (=> b!5211021 (= e!3244158 (or (not (= (t!373853 s!2326) Nil!60568)) (= lt!2142060 (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568)))))))

(declare-fun b!5211018 () Bool)

(assert (=> b!5211018 (= e!3244159 (t!373853 s!2326))))

(assert (= (and d!1680386 c!898652) b!5211018))

(assert (= (and d!1680386 (not c!898652)) b!5211019))

(assert (= (and d!1680386 res!2213308) b!5211020))

(assert (= (and b!5211020 res!2213307) b!5211021))

(declare-fun m!6260740 () Bool)

(assert (=> d!1680386 m!6260740))

(assert (=> d!1680386 m!6259858))

(declare-fun m!6260742 () Bool)

(assert (=> d!1680386 m!6260742))

(declare-fun m!6260744 () Bool)

(assert (=> d!1680386 m!6260744))

(declare-fun m!6260746 () Bool)

(assert (=> b!5211019 m!6260746))

(declare-fun m!6260748 () Bool)

(assert (=> b!5211020 m!6260748))

(assert (=> b!5211020 m!6259858))

(declare-fun m!6260750 () Bool)

(assert (=> b!5211020 m!6260750))

(declare-fun m!6260752 () Bool)

(assert (=> b!5211020 m!6260752))

(assert (=> b!5209970 d!1680386))

(declare-fun d!1680388 () Bool)

(declare-fun e!3244160 () Bool)

(assert (=> d!1680388 e!3244160))

(declare-fun res!2213310 () Bool)

(assert (=> d!1680388 (=> (not res!2213310) (not e!3244160))))

(declare-fun lt!2142061 () List!60692)

(assert (=> d!1680388 (= res!2213310 (= (content!10729 lt!2142061) ((_ map or) (content!10729 Nil!60568) (content!10729 (Cons!60568 (h!67016 s!2326) Nil!60568)))))))

(declare-fun e!3244161 () List!60692)

(assert (=> d!1680388 (= lt!2142061 e!3244161)))

(declare-fun c!898653 () Bool)

(assert (=> d!1680388 (= c!898653 ((_ is Nil!60568) Nil!60568))))

(assert (=> d!1680388 (= (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568)) lt!2142061)))

(declare-fun b!5211023 () Bool)

(assert (=> b!5211023 (= e!3244161 (Cons!60568 (h!67016 Nil!60568) (++!13205 (t!373853 Nil!60568) (Cons!60568 (h!67016 s!2326) Nil!60568))))))

(declare-fun b!5211024 () Bool)

(declare-fun res!2213309 () Bool)

(assert (=> b!5211024 (=> (not res!2213309) (not e!3244160))))

(assert (=> b!5211024 (= res!2213309 (= (size!39717 lt!2142061) (+ (size!39717 Nil!60568) (size!39717 (Cons!60568 (h!67016 s!2326) Nil!60568)))))))

(declare-fun b!5211025 () Bool)

(assert (=> b!5211025 (= e!3244160 (or (not (= (Cons!60568 (h!67016 s!2326) Nil!60568) Nil!60568)) (= lt!2142061 Nil!60568)))))

(declare-fun b!5211022 () Bool)

(assert (=> b!5211022 (= e!3244161 (Cons!60568 (h!67016 s!2326) Nil!60568))))

(assert (= (and d!1680388 c!898653) b!5211022))

(assert (= (and d!1680388 (not c!898653)) b!5211023))

(assert (= (and d!1680388 res!2213310) b!5211024))

(assert (= (and b!5211024 res!2213309) b!5211025))

(declare-fun m!6260754 () Bool)

(assert (=> d!1680388 m!6260754))

(declare-fun m!6260756 () Bool)

(assert (=> d!1680388 m!6260756))

(declare-fun m!6260758 () Bool)

(assert (=> d!1680388 m!6260758))

(declare-fun m!6260760 () Bool)

(assert (=> b!5211023 m!6260760))

(declare-fun m!6260762 () Bool)

(assert (=> b!5211024 m!6260762))

(declare-fun m!6260764 () Bool)

(assert (=> b!5211024 m!6260764))

(declare-fun m!6260766 () Bool)

(assert (=> b!5211024 m!6260766))

(assert (=> b!5209970 d!1680388))

(declare-fun d!1680390 () Bool)

(assert (=> d!1680390 (= (++!13205 (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568)) (t!373853 s!2326)) s!2326)))

(declare-fun lt!2142064 () Unit!152454)

(declare-fun choose!38740 (List!60692 C!29864 List!60692 List!60692) Unit!152454)

(assert (=> d!1680390 (= lt!2142064 (choose!38740 Nil!60568 (h!67016 s!2326) (t!373853 s!2326) s!2326))))

(assert (=> d!1680390 (= (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) (t!373853 s!2326))) s!2326)))

(assert (=> d!1680390 (= (lemmaMoveElementToOtherListKeepsConcatEq!1620 Nil!60568 (h!67016 s!2326) (t!373853 s!2326) s!2326) lt!2142064)))

(declare-fun bs!1210775 () Bool)

(assert (= bs!1210775 d!1680390))

(assert (=> bs!1210775 m!6259858))

(assert (=> bs!1210775 m!6259858))

(assert (=> bs!1210775 m!6259860))

(declare-fun m!6260768 () Bool)

(assert (=> bs!1210775 m!6260768))

(declare-fun m!6260770 () Bool)

(assert (=> bs!1210775 m!6260770))

(assert (=> b!5209970 d!1680390))

(declare-fun b!5211026 () Bool)

(declare-fun e!3244165 () Bool)

(assert (=> b!5211026 (= e!3244165 (matchR!6982 (regTwo!30106 r!7292) (t!373853 s!2326)))))

(declare-fun b!5211027 () Bool)

(declare-fun e!3244162 () Option!14908)

(assert (=> b!5211027 (= e!3244162 None!14907)))

(declare-fun b!5211028 () Bool)

(declare-fun lt!2142065 () Unit!152454)

(declare-fun lt!2142066 () Unit!152454)

(assert (=> b!5211028 (= lt!2142065 lt!2142066)))

(assert (=> b!5211028 (= (++!13205 (++!13205 (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568)) (Cons!60568 (h!67016 (t!373853 s!2326)) Nil!60568)) (t!373853 (t!373853 s!2326))) s!2326)))

(assert (=> b!5211028 (= lt!2142066 (lemmaMoveElementToOtherListKeepsConcatEq!1620 (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568)) (h!67016 (t!373853 s!2326)) (t!373853 (t!373853 s!2326)) s!2326))))

(assert (=> b!5211028 (= e!3244162 (findConcatSeparation!1322 (regOne!30106 r!7292) (regTwo!30106 r!7292) (++!13205 (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568)) (Cons!60568 (h!67016 (t!373853 s!2326)) Nil!60568)) (t!373853 (t!373853 s!2326)) s!2326))))

(declare-fun d!1680392 () Bool)

(declare-fun e!3244163 () Bool)

(assert (=> d!1680392 e!3244163))

(declare-fun res!2213315 () Bool)

(assert (=> d!1680392 (=> res!2213315 e!3244163)))

(declare-fun e!3244164 () Bool)

(assert (=> d!1680392 (= res!2213315 e!3244164)))

(declare-fun res!2213312 () Bool)

(assert (=> d!1680392 (=> (not res!2213312) (not e!3244164))))

(declare-fun lt!2142067 () Option!14908)

(assert (=> d!1680392 (= res!2213312 (isDefined!11611 lt!2142067))))

(declare-fun e!3244166 () Option!14908)

(assert (=> d!1680392 (= lt!2142067 e!3244166)))

(declare-fun c!898655 () Bool)

(assert (=> d!1680392 (= c!898655 e!3244165)))

(declare-fun res!2213314 () Bool)

(assert (=> d!1680392 (=> (not res!2213314) (not e!3244165))))

(assert (=> d!1680392 (= res!2213314 (matchR!6982 (regOne!30106 r!7292) (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568))))))

(assert (=> d!1680392 (validRegex!6533 (regOne!30106 r!7292))))

(assert (=> d!1680392 (= (findConcatSeparation!1322 (regOne!30106 r!7292) (regTwo!30106 r!7292) (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568)) (t!373853 s!2326) s!2326) lt!2142067)))

(declare-fun b!5211029 () Bool)

(assert (=> b!5211029 (= e!3244166 e!3244162)))

(declare-fun c!898654 () Bool)

(assert (=> b!5211029 (= c!898654 ((_ is Nil!60568) (t!373853 s!2326)))))

(declare-fun b!5211030 () Bool)

(declare-fun res!2213313 () Bool)

(assert (=> b!5211030 (=> (not res!2213313) (not e!3244164))))

(assert (=> b!5211030 (= res!2213313 (matchR!6982 (regTwo!30106 r!7292) (_2!35299 (get!20809 lt!2142067))))))

(declare-fun b!5211031 () Bool)

(assert (=> b!5211031 (= e!3244166 (Some!14907 (tuple2!63993 (++!13205 Nil!60568 (Cons!60568 (h!67016 s!2326) Nil!60568)) (t!373853 s!2326))))))

(declare-fun b!5211032 () Bool)

(assert (=> b!5211032 (= e!3244164 (= (++!13205 (_1!35299 (get!20809 lt!2142067)) (_2!35299 (get!20809 lt!2142067))) s!2326))))

(declare-fun b!5211033 () Bool)

(assert (=> b!5211033 (= e!3244163 (not (isDefined!11611 lt!2142067)))))

(declare-fun b!5211034 () Bool)

(declare-fun res!2213311 () Bool)

(assert (=> b!5211034 (=> (not res!2213311) (not e!3244164))))

(assert (=> b!5211034 (= res!2213311 (matchR!6982 (regOne!30106 r!7292) (_1!35299 (get!20809 lt!2142067))))))

(assert (= (and d!1680392 res!2213314) b!5211026))

(assert (= (and d!1680392 c!898655) b!5211031))

(assert (= (and d!1680392 (not c!898655)) b!5211029))

(assert (= (and b!5211029 c!898654) b!5211027))

(assert (= (and b!5211029 (not c!898654)) b!5211028))

(assert (= (and d!1680392 res!2213312) b!5211034))

(assert (= (and b!5211034 res!2213311) b!5211030))

(assert (= (and b!5211030 res!2213313) b!5211032))

(assert (= (and d!1680392 (not res!2213315)) b!5211033))

(declare-fun m!6260772 () Bool)

(assert (=> d!1680392 m!6260772))

(assert (=> d!1680392 m!6259858))

(declare-fun m!6260774 () Bool)

(assert (=> d!1680392 m!6260774))

(assert (=> d!1680392 m!6259850))

(declare-fun m!6260776 () Bool)

(assert (=> b!5211026 m!6260776))

(declare-fun m!6260778 () Bool)

(assert (=> b!5211032 m!6260778))

(declare-fun m!6260780 () Bool)

(assert (=> b!5211032 m!6260780))

(assert (=> b!5211033 m!6260772))

(assert (=> b!5211028 m!6259858))

(declare-fun m!6260782 () Bool)

(assert (=> b!5211028 m!6260782))

(assert (=> b!5211028 m!6260782))

(declare-fun m!6260784 () Bool)

(assert (=> b!5211028 m!6260784))

(assert (=> b!5211028 m!6259858))

(declare-fun m!6260786 () Bool)

(assert (=> b!5211028 m!6260786))

(assert (=> b!5211028 m!6260782))

(declare-fun m!6260788 () Bool)

(assert (=> b!5211028 m!6260788))

(assert (=> b!5211030 m!6260778))

(declare-fun m!6260790 () Bool)

(assert (=> b!5211030 m!6260790))

(assert (=> b!5211034 m!6260778))

(declare-fun m!6260792 () Bool)

(assert (=> b!5211034 m!6260792))

(assert (=> b!5209970 d!1680392))

(declare-fun d!1680394 () Bool)

(assert (=> d!1680394 (= (nullable!4966 r!7292) (nullableFct!1377 r!7292))))

(declare-fun bs!1210776 () Bool)

(assert (= bs!1210776 d!1680394))

(declare-fun m!6260794 () Bool)

(assert (=> bs!1210776 m!6260794))

(assert (=> b!5209939 d!1680394))

(declare-fun bm!366988 () Bool)

(declare-fun call!366993 () Bool)

(assert (=> bm!366988 (= call!366993 (isEmpty!32481 s!2326))))

(declare-fun b!5211035 () Bool)

(declare-fun e!3244173 () Bool)

(assert (=> b!5211035 (= e!3244173 (not (= (head!11170 s!2326) (c!898196 (regTwo!30106 r!7292)))))))

(declare-fun b!5211036 () Bool)

(declare-fun res!2213318 () Bool)

(declare-fun e!3244168 () Bool)

(assert (=> b!5211036 (=> (not res!2213318) (not e!3244168))))

(assert (=> b!5211036 (= res!2213318 (not call!366993))))

(declare-fun b!5211037 () Bool)

(declare-fun res!2213317 () Bool)

(declare-fun e!3244170 () Bool)

(assert (=> b!5211037 (=> res!2213317 e!3244170)))

(assert (=> b!5211037 (= res!2213317 e!3244168)))

(declare-fun res!2213319 () Bool)

(assert (=> b!5211037 (=> (not res!2213319) (not e!3244168))))

(declare-fun lt!2142068 () Bool)

(assert (=> b!5211037 (= res!2213319 lt!2142068)))

(declare-fun d!1680396 () Bool)

(declare-fun e!3244167 () Bool)

(assert (=> d!1680396 e!3244167))

(declare-fun c!898656 () Bool)

(assert (=> d!1680396 (= c!898656 ((_ is EmptyExpr!14797) (regTwo!30106 r!7292)))))

(declare-fun e!3244171 () Bool)

(assert (=> d!1680396 (= lt!2142068 e!3244171)))

(declare-fun c!898658 () Bool)

(assert (=> d!1680396 (= c!898658 (isEmpty!32481 s!2326))))

(assert (=> d!1680396 (validRegex!6533 (regTwo!30106 r!7292))))

(assert (=> d!1680396 (= (matchR!6982 (regTwo!30106 r!7292) s!2326) lt!2142068)))

(declare-fun b!5211038 () Bool)

(declare-fun e!3244169 () Bool)

(assert (=> b!5211038 (= e!3244169 e!3244173)))

(declare-fun res!2213322 () Bool)

(assert (=> b!5211038 (=> res!2213322 e!3244173)))

(assert (=> b!5211038 (= res!2213322 call!366993)))

(declare-fun b!5211039 () Bool)

(assert (=> b!5211039 (= e!3244168 (= (head!11170 s!2326) (c!898196 (regTwo!30106 r!7292))))))

(declare-fun b!5211040 () Bool)

(declare-fun res!2213323 () Bool)

(assert (=> b!5211040 (=> (not res!2213323) (not e!3244168))))

(assert (=> b!5211040 (= res!2213323 (isEmpty!32481 (tail!10267 s!2326)))))

(declare-fun b!5211041 () Bool)

(assert (=> b!5211041 (= e!3244167 (= lt!2142068 call!366993))))

(declare-fun b!5211042 () Bool)

(assert (=> b!5211042 (= e!3244171 (matchR!6982 (derivativeStep!4047 (regTwo!30106 r!7292) (head!11170 s!2326)) (tail!10267 s!2326)))))

(declare-fun b!5211043 () Bool)

(declare-fun e!3244172 () Bool)

(assert (=> b!5211043 (= e!3244172 (not lt!2142068))))

(declare-fun b!5211044 () Bool)

(assert (=> b!5211044 (= e!3244167 e!3244172)))

(declare-fun c!898657 () Bool)

(assert (=> b!5211044 (= c!898657 ((_ is EmptyLang!14797) (regTwo!30106 r!7292)))))

(declare-fun b!5211045 () Bool)

(assert (=> b!5211045 (= e!3244171 (nullable!4966 (regTwo!30106 r!7292)))))

(declare-fun b!5211046 () Bool)

(declare-fun res!2213321 () Bool)

(assert (=> b!5211046 (=> res!2213321 e!3244170)))

(assert (=> b!5211046 (= res!2213321 (not ((_ is ElementMatch!14797) (regTwo!30106 r!7292))))))

(assert (=> b!5211046 (= e!3244172 e!3244170)))

(declare-fun b!5211047 () Bool)

(assert (=> b!5211047 (= e!3244170 e!3244169)))

(declare-fun res!2213316 () Bool)

(assert (=> b!5211047 (=> (not res!2213316) (not e!3244169))))

(assert (=> b!5211047 (= res!2213316 (not lt!2142068))))

(declare-fun b!5211048 () Bool)

(declare-fun res!2213320 () Bool)

(assert (=> b!5211048 (=> res!2213320 e!3244173)))

(assert (=> b!5211048 (= res!2213320 (not (isEmpty!32481 (tail!10267 s!2326))))))

(assert (= (and d!1680396 c!898658) b!5211045))

(assert (= (and d!1680396 (not c!898658)) b!5211042))

(assert (= (and d!1680396 c!898656) b!5211041))

(assert (= (and d!1680396 (not c!898656)) b!5211044))

(assert (= (and b!5211044 c!898657) b!5211043))

(assert (= (and b!5211044 (not c!898657)) b!5211046))

(assert (= (and b!5211046 (not res!2213321)) b!5211037))

(assert (= (and b!5211037 res!2213319) b!5211036))

(assert (= (and b!5211036 res!2213318) b!5211040))

(assert (= (and b!5211040 res!2213323) b!5211039))

(assert (= (and b!5211037 (not res!2213317)) b!5211047))

(assert (= (and b!5211047 res!2213316) b!5211038))

(assert (= (and b!5211038 (not res!2213322)) b!5211048))

(assert (= (and b!5211048 (not res!2213320)) b!5211035))

(assert (= (or b!5211041 b!5211036 b!5211038) bm!366988))

(assert (=> b!5211039 m!6259818))

(assert (=> d!1680396 m!6259812))

(declare-fun m!6260796 () Bool)

(assert (=> d!1680396 m!6260796))

(declare-fun m!6260798 () Bool)

(assert (=> b!5211045 m!6260798))

(assert (=> b!5211048 m!6259822))

(assert (=> b!5211048 m!6259822))

(assert (=> b!5211048 m!6259824))

(assert (=> b!5211042 m!6259818))

(assert (=> b!5211042 m!6259818))

(declare-fun m!6260800 () Bool)

(assert (=> b!5211042 m!6260800))

(assert (=> b!5211042 m!6259822))

(assert (=> b!5211042 m!6260800))

(assert (=> b!5211042 m!6259822))

(declare-fun m!6260802 () Bool)

(assert (=> b!5211042 m!6260802))

(assert (=> b!5211040 m!6259822))

(assert (=> b!5211040 m!6259822))

(assert (=> b!5211040 m!6259824))

(assert (=> bm!366988 m!6259812))

(assert (=> b!5211035 m!6259818))

(assert (=> b!5209968 d!1680396))

(assert (=> bs!1210569 d!1679990))

(declare-fun bm!366989 () Bool)

(declare-fun call!366994 () Bool)

(assert (=> bm!366989 (= call!366994 (isEmpty!32481 (_2!35299 (get!20809 lt!2142018))))))

(declare-fun b!5211049 () Bool)

(declare-fun e!3244180 () Bool)

(assert (=> b!5211049 (= e!3244180 (not (= (head!11170 (_2!35299 (get!20809 lt!2142018))) (c!898196 (regTwo!30106 r!7292)))))))

(declare-fun b!5211050 () Bool)

(declare-fun res!2213326 () Bool)

(declare-fun e!3244175 () Bool)

(assert (=> b!5211050 (=> (not res!2213326) (not e!3244175))))

(assert (=> b!5211050 (= res!2213326 (not call!366994))))

(declare-fun b!5211051 () Bool)

(declare-fun res!2213325 () Bool)

(declare-fun e!3244177 () Bool)

(assert (=> b!5211051 (=> res!2213325 e!3244177)))

(assert (=> b!5211051 (= res!2213325 e!3244175)))

(declare-fun res!2213327 () Bool)

(assert (=> b!5211051 (=> (not res!2213327) (not e!3244175))))

(declare-fun lt!2142069 () Bool)

(assert (=> b!5211051 (= res!2213327 lt!2142069)))

(declare-fun d!1680398 () Bool)

(declare-fun e!3244174 () Bool)

(assert (=> d!1680398 e!3244174))

(declare-fun c!898659 () Bool)

(assert (=> d!1680398 (= c!898659 ((_ is EmptyExpr!14797) (regTwo!30106 r!7292)))))

(declare-fun e!3244178 () Bool)

(assert (=> d!1680398 (= lt!2142069 e!3244178)))

(declare-fun c!898661 () Bool)

(assert (=> d!1680398 (= c!898661 (isEmpty!32481 (_2!35299 (get!20809 lt!2142018))))))

(assert (=> d!1680398 (validRegex!6533 (regTwo!30106 r!7292))))

(assert (=> d!1680398 (= (matchR!6982 (regTwo!30106 r!7292) (_2!35299 (get!20809 lt!2142018))) lt!2142069)))

(declare-fun b!5211052 () Bool)

(declare-fun e!3244176 () Bool)

(assert (=> b!5211052 (= e!3244176 e!3244180)))

(declare-fun res!2213330 () Bool)

(assert (=> b!5211052 (=> res!2213330 e!3244180)))

(assert (=> b!5211052 (= res!2213330 call!366994)))

(declare-fun b!5211053 () Bool)

(assert (=> b!5211053 (= e!3244175 (= (head!11170 (_2!35299 (get!20809 lt!2142018))) (c!898196 (regTwo!30106 r!7292))))))

(declare-fun b!5211054 () Bool)

(declare-fun res!2213331 () Bool)

(assert (=> b!5211054 (=> (not res!2213331) (not e!3244175))))

(assert (=> b!5211054 (= res!2213331 (isEmpty!32481 (tail!10267 (_2!35299 (get!20809 lt!2142018)))))))

(declare-fun b!5211055 () Bool)

(assert (=> b!5211055 (= e!3244174 (= lt!2142069 call!366994))))

(declare-fun b!5211056 () Bool)

(assert (=> b!5211056 (= e!3244178 (matchR!6982 (derivativeStep!4047 (regTwo!30106 r!7292) (head!11170 (_2!35299 (get!20809 lt!2142018)))) (tail!10267 (_2!35299 (get!20809 lt!2142018)))))))

(declare-fun b!5211057 () Bool)

(declare-fun e!3244179 () Bool)

(assert (=> b!5211057 (= e!3244179 (not lt!2142069))))

(declare-fun b!5211058 () Bool)

(assert (=> b!5211058 (= e!3244174 e!3244179)))

(declare-fun c!898660 () Bool)

(assert (=> b!5211058 (= c!898660 ((_ is EmptyLang!14797) (regTwo!30106 r!7292)))))

(declare-fun b!5211059 () Bool)

(assert (=> b!5211059 (= e!3244178 (nullable!4966 (regTwo!30106 r!7292)))))

(declare-fun b!5211060 () Bool)

(declare-fun res!2213329 () Bool)

(assert (=> b!5211060 (=> res!2213329 e!3244177)))

(assert (=> b!5211060 (= res!2213329 (not ((_ is ElementMatch!14797) (regTwo!30106 r!7292))))))

(assert (=> b!5211060 (= e!3244179 e!3244177)))

(declare-fun b!5211061 () Bool)

(assert (=> b!5211061 (= e!3244177 e!3244176)))

(declare-fun res!2213324 () Bool)

(assert (=> b!5211061 (=> (not res!2213324) (not e!3244176))))

(assert (=> b!5211061 (= res!2213324 (not lt!2142069))))

(declare-fun b!5211062 () Bool)

(declare-fun res!2213328 () Bool)

(assert (=> b!5211062 (=> res!2213328 e!3244180)))

(assert (=> b!5211062 (= res!2213328 (not (isEmpty!32481 (tail!10267 (_2!35299 (get!20809 lt!2142018))))))))

(assert (= (and d!1680398 c!898661) b!5211059))

(assert (= (and d!1680398 (not c!898661)) b!5211056))

(assert (= (and d!1680398 c!898659) b!5211055))

(assert (= (and d!1680398 (not c!898659)) b!5211058))

(assert (= (and b!5211058 c!898660) b!5211057))

(assert (= (and b!5211058 (not c!898660)) b!5211060))

(assert (= (and b!5211060 (not res!2213329)) b!5211051))

(assert (= (and b!5211051 res!2213327) b!5211050))

(assert (= (and b!5211050 res!2213326) b!5211054))

(assert (= (and b!5211054 res!2213331) b!5211053))

(assert (= (and b!5211051 (not res!2213325)) b!5211061))

(assert (= (and b!5211061 res!2213324) b!5211052))

(assert (= (and b!5211052 (not res!2213330)) b!5211062))

(assert (= (and b!5211062 (not res!2213328)) b!5211049))

(assert (= (or b!5211055 b!5211050 b!5211052) bm!366989))

(declare-fun m!6260804 () Bool)

(assert (=> b!5211053 m!6260804))

(declare-fun m!6260806 () Bool)

(assert (=> d!1680398 m!6260806))

(assert (=> d!1680398 m!6260796))

(assert (=> b!5211059 m!6260798))

(declare-fun m!6260808 () Bool)

(assert (=> b!5211062 m!6260808))

(assert (=> b!5211062 m!6260808))

(declare-fun m!6260810 () Bool)

(assert (=> b!5211062 m!6260810))

(assert (=> b!5211056 m!6260804))

(assert (=> b!5211056 m!6260804))

(declare-fun m!6260812 () Bool)

(assert (=> b!5211056 m!6260812))

(assert (=> b!5211056 m!6260808))

(assert (=> b!5211056 m!6260812))

(assert (=> b!5211056 m!6260808))

(declare-fun m!6260814 () Bool)

(assert (=> b!5211056 m!6260814))

(assert (=> b!5211054 m!6260808))

(assert (=> b!5211054 m!6260808))

(assert (=> b!5211054 m!6260810))

(assert (=> bm!366989 m!6260806))

(assert (=> b!5211049 m!6260804))

(assert (=> b!5209972 d!1680398))

(assert (=> b!5209972 d!1680324))

(declare-fun bs!1210777 () Bool)

(declare-fun d!1680400 () Bool)

(assert (= bs!1210777 (and d!1680400 d!1680152)))

(declare-fun lambda!261294 () Int)

(assert (=> bs!1210777 (= lambda!261294 lambda!261268)))

(declare-fun bs!1210778 () Bool)

(assert (= bs!1210778 (and d!1680400 d!1680318)))

(assert (=> bs!1210778 (= lambda!261294 lambda!261287)))

(assert (=> d!1680400 (= (nullableZipper!1225 ((_ map or) lt!2141943 lt!2141942)) (exists!1962 ((_ map or) lt!2141943 lt!2141942) lambda!261294))))

(declare-fun bs!1210779 () Bool)

(assert (= bs!1210779 d!1680400))

(declare-fun m!6260816 () Bool)

(assert (=> bs!1210779 m!6260816))

(assert (=> b!5209948 d!1680400))

(declare-fun d!1680402 () Bool)

(declare-fun res!2213332 () Bool)

(declare-fun e!3244181 () Bool)

(assert (=> d!1680402 (=> res!2213332 e!3244181)))

(assert (=> d!1680402 (= res!2213332 ((_ is Nil!60566) lt!2141997))))

(assert (=> d!1680402 (= (forall!14233 lt!2141997 lambda!261222) e!3244181)))

(declare-fun b!5211063 () Bool)

(declare-fun e!3244182 () Bool)

(assert (=> b!5211063 (= e!3244181 e!3244182)))

(declare-fun res!2213333 () Bool)

(assert (=> b!5211063 (=> (not res!2213333) (not e!3244182))))

(assert (=> b!5211063 (= res!2213333 (dynLambda!23929 lambda!261222 (h!67014 lt!2141997)))))

(declare-fun b!5211064 () Bool)

(assert (=> b!5211064 (= e!3244182 (forall!14233 (t!373851 lt!2141997) lambda!261222))))

(assert (= (and d!1680402 (not res!2213332)) b!5211063))

(assert (= (and b!5211063 res!2213333) b!5211064))

(declare-fun b_lambda!201567 () Bool)

(assert (=> (not b_lambda!201567) (not b!5211063)))

(declare-fun m!6260818 () Bool)

(assert (=> b!5211063 m!6260818))

(declare-fun m!6260820 () Bool)

(assert (=> b!5211064 m!6260820))

(assert (=> d!1679936 d!1680402))

(declare-fun bs!1210780 () Bool)

(declare-fun d!1680404 () Bool)

(assert (= bs!1210780 (and d!1680404 d!1679932)))

(declare-fun lambda!261295 () Int)

(assert (=> bs!1210780 (= lambda!261295 lambda!261219)))

(declare-fun bs!1210781 () Bool)

(assert (= bs!1210781 (and d!1680404 d!1679924)))

(assert (=> bs!1210781 (= lambda!261295 lambda!261216)))

(declare-fun bs!1210782 () Bool)

(assert (= bs!1210782 (and d!1680404 d!1680294)))

(assert (=> bs!1210782 (= lambda!261295 lambda!261282)))

(declare-fun bs!1210783 () Bool)

(assert (= bs!1210783 (and d!1680404 d!1679970)))

(assert (=> bs!1210783 (= lambda!261295 lambda!261240)))

(declare-fun bs!1210784 () Bool)

(assert (= bs!1210784 (and d!1680404 d!1679976)))

(assert (=> bs!1210784 (= lambda!261295 lambda!261241)))

(declare-fun bs!1210785 () Bool)

(assert (= bs!1210785 (and d!1680404 d!1679936)))

(assert (=> bs!1210785 (= lambda!261295 lambda!261222)))

(declare-fun bs!1210786 () Bool)

(assert (= bs!1210786 (and d!1680404 d!1680364)))

(assert (=> bs!1210786 (= lambda!261295 lambda!261293)))

(declare-fun b!5211065 () Bool)

(declare-fun e!3244185 () Regex!14797)

(assert (=> b!5211065 (= e!3244185 (h!67014 (t!373851 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun e!3244188 () Bool)

(assert (=> d!1680404 e!3244188))

(declare-fun res!2213335 () Bool)

(assert (=> d!1680404 (=> (not res!2213335) (not e!3244188))))

(declare-fun lt!2142070 () Regex!14797)

(assert (=> d!1680404 (= res!2213335 (validRegex!6533 lt!2142070))))

(assert (=> d!1680404 (= lt!2142070 e!3244185)))

(declare-fun c!898663 () Bool)

(declare-fun e!3244183 () Bool)

(assert (=> d!1680404 (= c!898663 e!3244183)))

(declare-fun res!2213334 () Bool)

(assert (=> d!1680404 (=> (not res!2213334) (not e!3244183))))

(assert (=> d!1680404 (= res!2213334 ((_ is Cons!60566) (t!373851 (exprs!4681 (h!67015 zl!343)))))))

(assert (=> d!1680404 (forall!14233 (t!373851 (exprs!4681 (h!67015 zl!343))) lambda!261295)))

(assert (=> d!1680404 (= (generalisedConcat!466 (t!373851 (exprs!4681 (h!67015 zl!343)))) lt!2142070)))

(declare-fun b!5211066 () Bool)

(declare-fun e!3244187 () Bool)

(assert (=> b!5211066 (= e!3244187 (isConcat!284 lt!2142070))))

(declare-fun b!5211067 () Bool)

(declare-fun e!3244184 () Bool)

(assert (=> b!5211067 (= e!3244184 (isEmptyExpr!761 lt!2142070))))

(declare-fun b!5211068 () Bool)

(declare-fun e!3244186 () Regex!14797)

(assert (=> b!5211068 (= e!3244186 EmptyExpr!14797)))

(declare-fun b!5211069 () Bool)

(assert (=> b!5211069 (= e!3244183 (isEmpty!32478 (t!373851 (t!373851 (exprs!4681 (h!67015 zl!343))))))))

(declare-fun b!5211070 () Bool)

(assert (=> b!5211070 (= e!3244186 (Concat!23642 (h!67014 (t!373851 (exprs!4681 (h!67015 zl!343)))) (generalisedConcat!466 (t!373851 (t!373851 (exprs!4681 (h!67015 zl!343)))))))))

(declare-fun b!5211071 () Bool)

(assert (=> b!5211071 (= e!3244184 e!3244187)))

(declare-fun c!898664 () Bool)

(assert (=> b!5211071 (= c!898664 (isEmpty!32478 (tail!10266 (t!373851 (exprs!4681 (h!67015 zl!343))))))))

(declare-fun b!5211072 () Bool)

(assert (=> b!5211072 (= e!3244188 e!3244184)))

(declare-fun c!898662 () Bool)

(assert (=> b!5211072 (= c!898662 (isEmpty!32478 (t!373851 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun b!5211073 () Bool)

(assert (=> b!5211073 (= e!3244187 (= lt!2142070 (head!11169 (t!373851 (exprs!4681 (h!67015 zl!343))))))))

(declare-fun b!5211074 () Bool)

(assert (=> b!5211074 (= e!3244185 e!3244186)))

(declare-fun c!898665 () Bool)

(assert (=> b!5211074 (= c!898665 ((_ is Cons!60566) (t!373851 (exprs!4681 (h!67015 zl!343)))))))

(assert (= (and d!1680404 res!2213334) b!5211069))

(assert (= (and d!1680404 c!898663) b!5211065))

(assert (= (and d!1680404 (not c!898663)) b!5211074))

(assert (= (and b!5211074 c!898665) b!5211070))

(assert (= (and b!5211074 (not c!898665)) b!5211068))

(assert (= (and d!1680404 res!2213335) b!5211072))

(assert (= (and b!5211072 c!898662) b!5211067))

(assert (= (and b!5211072 (not c!898662)) b!5211071))

(assert (= (and b!5211071 c!898664) b!5211073))

(assert (= (and b!5211071 (not c!898664)) b!5211066))

(declare-fun m!6260822 () Bool)

(assert (=> b!5211070 m!6260822))

(declare-fun m!6260824 () Bool)

(assert (=> b!5211071 m!6260824))

(assert (=> b!5211071 m!6260824))

(declare-fun m!6260826 () Bool)

(assert (=> b!5211071 m!6260826))

(declare-fun m!6260828 () Bool)

(assert (=> b!5211069 m!6260828))

(declare-fun m!6260830 () Bool)

(assert (=> d!1680404 m!6260830))

(declare-fun m!6260832 () Bool)

(assert (=> d!1680404 m!6260832))

(assert (=> b!5211072 m!6259490))

(declare-fun m!6260834 () Bool)

(assert (=> b!5211067 m!6260834))

(declare-fun m!6260836 () Bool)

(assert (=> b!5211073 m!6260836))

(declare-fun m!6260838 () Bool)

(assert (=> b!5211066 m!6260838))

(assert (=> b!5209745 d!1680404))

(declare-fun bs!1210787 () Bool)

(declare-fun d!1680406 () Bool)

(assert (= bs!1210787 (and d!1680406 d!1679932)))

(declare-fun lambda!261296 () Int)

(assert (=> bs!1210787 (= lambda!261296 lambda!261219)))

(declare-fun bs!1210788 () Bool)

(assert (= bs!1210788 (and d!1680406 d!1679924)))

(assert (=> bs!1210788 (= lambda!261296 lambda!261216)))

(declare-fun bs!1210789 () Bool)

(assert (= bs!1210789 (and d!1680406 d!1680294)))

(assert (=> bs!1210789 (= lambda!261296 lambda!261282)))

(declare-fun bs!1210790 () Bool)

(assert (= bs!1210790 (and d!1680406 d!1679976)))

(assert (=> bs!1210790 (= lambda!261296 lambda!261241)))

(declare-fun bs!1210791 () Bool)

(assert (= bs!1210791 (and d!1680406 d!1679936)))

(assert (=> bs!1210791 (= lambda!261296 lambda!261222)))

(declare-fun bs!1210792 () Bool)

(assert (= bs!1210792 (and d!1680406 d!1680364)))

(assert (=> bs!1210792 (= lambda!261296 lambda!261293)))

(declare-fun bs!1210793 () Bool)

(assert (= bs!1210793 (and d!1680406 d!1680404)))

(assert (=> bs!1210793 (= lambda!261296 lambda!261295)))

(declare-fun bs!1210794 () Bool)

(assert (= bs!1210794 (and d!1680406 d!1679970)))

(assert (=> bs!1210794 (= lambda!261296 lambda!261240)))

(assert (=> d!1680406 (= (inv!80239 setElem!33090) (forall!14233 (exprs!4681 setElem!33090) lambda!261296))))

(declare-fun bs!1210795 () Bool)

(assert (= bs!1210795 d!1680406))

(declare-fun m!6260840 () Bool)

(assert (=> bs!1210795 m!6260840))

(assert (=> setNonEmpty!33090 d!1680406))

(assert (=> b!5209820 d!1679924))

(declare-fun bs!1210796 () Bool)

(declare-fun d!1680408 () Bool)

(assert (= bs!1210796 (and d!1680408 d!1679932)))

(declare-fun lambda!261297 () Int)

(assert (=> bs!1210796 (= lambda!261297 lambda!261219)))

(declare-fun bs!1210797 () Bool)

(assert (= bs!1210797 (and d!1680408 d!1679924)))

(assert (=> bs!1210797 (= lambda!261297 lambda!261216)))

(declare-fun bs!1210798 () Bool)

(assert (= bs!1210798 (and d!1680408 d!1680294)))

(assert (=> bs!1210798 (= lambda!261297 lambda!261282)))

(declare-fun bs!1210799 () Bool)

(assert (= bs!1210799 (and d!1680408 d!1679976)))

(assert (=> bs!1210799 (= lambda!261297 lambda!261241)))

(declare-fun bs!1210800 () Bool)

(assert (= bs!1210800 (and d!1680408 d!1679936)))

(assert (=> bs!1210800 (= lambda!261297 lambda!261222)))

(declare-fun bs!1210801 () Bool)

(assert (= bs!1210801 (and d!1680408 d!1680364)))

(assert (=> bs!1210801 (= lambda!261297 lambda!261293)))

(declare-fun bs!1210802 () Bool)

(assert (= bs!1210802 (and d!1680408 d!1680406)))

(assert (=> bs!1210802 (= lambda!261297 lambda!261296)))

(declare-fun bs!1210803 () Bool)

(assert (= bs!1210803 (and d!1680408 d!1680404)))

(assert (=> bs!1210803 (= lambda!261297 lambda!261295)))

(declare-fun bs!1210804 () Bool)

(assert (= bs!1210804 (and d!1680408 d!1679970)))

(assert (=> bs!1210804 (= lambda!261297 lambda!261240)))

(declare-fun lt!2142071 () List!60690)

(assert (=> d!1680408 (forall!14233 lt!2142071 lambda!261297)))

(declare-fun e!3244189 () List!60690)

(assert (=> d!1680408 (= lt!2142071 e!3244189)))

(declare-fun c!898666 () Bool)

(assert (=> d!1680408 (= c!898666 ((_ is Cons!60567) (t!373852 zl!343)))))

(assert (=> d!1680408 (= (unfocusZipperList!239 (t!373852 zl!343)) lt!2142071)))

(declare-fun b!5211075 () Bool)

(assert (=> b!5211075 (= e!3244189 (Cons!60566 (generalisedConcat!466 (exprs!4681 (h!67015 (t!373852 zl!343)))) (unfocusZipperList!239 (t!373852 (t!373852 zl!343)))))))

(declare-fun b!5211076 () Bool)

(assert (=> b!5211076 (= e!3244189 Nil!60566)))

(assert (= (and d!1680408 c!898666) b!5211075))

(assert (= (and d!1680408 (not c!898666)) b!5211076))

(declare-fun m!6260842 () Bool)

(assert (=> d!1680408 m!6260842))

(declare-fun m!6260844 () Bool)

(assert (=> b!5211075 m!6260844))

(declare-fun m!6260846 () Bool)

(assert (=> b!5211075 m!6260846))

(assert (=> b!5209820 d!1680408))

(declare-fun b!5211077 () Bool)

(declare-fun e!3244196 () Bool)

(declare-fun call!366996 () Bool)

(assert (=> b!5211077 (= e!3244196 call!366996)))

(declare-fun bm!366990 () Bool)

(declare-fun call!366995 () Bool)

(assert (=> bm!366990 (= call!366995 call!366996)))

(declare-fun b!5211078 () Bool)

(declare-fun e!3244190 () Bool)

(assert (=> b!5211078 (= e!3244190 e!3244196)))

(declare-fun res!2213339 () Bool)

(assert (=> b!5211078 (= res!2213339 (not (nullable!4966 (reg!15126 (ite c!898353 (reg!15126 r!7292) (ite c!898354 (regTwo!30107 r!7292) (regTwo!30106 r!7292)))))))))

(assert (=> b!5211078 (=> (not res!2213339) (not e!3244196))))

(declare-fun b!5211079 () Bool)

(declare-fun res!2213336 () Bool)

(declare-fun e!3244192 () Bool)

(assert (=> b!5211079 (=> res!2213336 e!3244192)))

(assert (=> b!5211079 (= res!2213336 (not ((_ is Concat!23642) (ite c!898353 (reg!15126 r!7292) (ite c!898354 (regTwo!30107 r!7292) (regTwo!30106 r!7292))))))))

(declare-fun e!3244195 () Bool)

(assert (=> b!5211079 (= e!3244195 e!3244192)))

(declare-fun b!5211080 () Bool)

(declare-fun res!2213338 () Bool)

(declare-fun e!3244193 () Bool)

(assert (=> b!5211080 (=> (not res!2213338) (not e!3244193))))

(declare-fun call!366997 () Bool)

(assert (=> b!5211080 (= res!2213338 call!366997)))

(assert (=> b!5211080 (= e!3244195 e!3244193)))

(declare-fun b!5211081 () Bool)

(declare-fun e!3244194 () Bool)

(assert (=> b!5211081 (= e!3244192 e!3244194)))

(declare-fun res!2213337 () Bool)

(assert (=> b!5211081 (=> (not res!2213337) (not e!3244194))))

(assert (=> b!5211081 (= res!2213337 call!366997)))

(declare-fun d!1680410 () Bool)

(declare-fun res!2213340 () Bool)

(declare-fun e!3244191 () Bool)

(assert (=> d!1680410 (=> res!2213340 e!3244191)))

(assert (=> d!1680410 (= res!2213340 ((_ is ElementMatch!14797) (ite c!898353 (reg!15126 r!7292) (ite c!898354 (regTwo!30107 r!7292) (regTwo!30106 r!7292)))))))

(assert (=> d!1680410 (= (validRegex!6533 (ite c!898353 (reg!15126 r!7292) (ite c!898354 (regTwo!30107 r!7292) (regTwo!30106 r!7292)))) e!3244191)))

(declare-fun c!898668 () Bool)

(declare-fun c!898667 () Bool)

(declare-fun bm!366991 () Bool)

(assert (=> bm!366991 (= call!366996 (validRegex!6533 (ite c!898667 (reg!15126 (ite c!898353 (reg!15126 r!7292) (ite c!898354 (regTwo!30107 r!7292) (regTwo!30106 r!7292)))) (ite c!898668 (regTwo!30107 (ite c!898353 (reg!15126 r!7292) (ite c!898354 (regTwo!30107 r!7292) (regTwo!30106 r!7292)))) (regTwo!30106 (ite c!898353 (reg!15126 r!7292) (ite c!898354 (regTwo!30107 r!7292) (regTwo!30106 r!7292))))))))))

(declare-fun b!5211082 () Bool)

(assert (=> b!5211082 (= e!3244193 call!366995)))

(declare-fun b!5211083 () Bool)

(assert (=> b!5211083 (= e!3244194 call!366995)))

(declare-fun b!5211084 () Bool)

(assert (=> b!5211084 (= e!3244190 e!3244195)))

(assert (=> b!5211084 (= c!898668 ((_ is Union!14797) (ite c!898353 (reg!15126 r!7292) (ite c!898354 (regTwo!30107 r!7292) (regTwo!30106 r!7292)))))))

(declare-fun b!5211085 () Bool)

(assert (=> b!5211085 (= e!3244191 e!3244190)))

(assert (=> b!5211085 (= c!898667 ((_ is Star!14797) (ite c!898353 (reg!15126 r!7292) (ite c!898354 (regTwo!30107 r!7292) (regTwo!30106 r!7292)))))))

(declare-fun bm!366992 () Bool)

(assert (=> bm!366992 (= call!366997 (validRegex!6533 (ite c!898668 (regOne!30107 (ite c!898353 (reg!15126 r!7292) (ite c!898354 (regTwo!30107 r!7292) (regTwo!30106 r!7292)))) (regOne!30106 (ite c!898353 (reg!15126 r!7292) (ite c!898354 (regTwo!30107 r!7292) (regTwo!30106 r!7292)))))))))

(assert (= (and d!1680410 (not res!2213340)) b!5211085))

(assert (= (and b!5211085 c!898667) b!5211078))

(assert (= (and b!5211085 (not c!898667)) b!5211084))

(assert (= (and b!5211078 res!2213339) b!5211077))

(assert (= (and b!5211084 c!898668) b!5211080))

(assert (= (and b!5211084 (not c!898668)) b!5211079))

(assert (= (and b!5211080 res!2213338) b!5211082))

(assert (= (and b!5211079 (not res!2213336)) b!5211081))

(assert (= (and b!5211081 res!2213337) b!5211083))

(assert (= (or b!5211082 b!5211083) bm!366990))

(assert (= (or b!5211080 b!5211081) bm!366992))

(assert (= (or b!5211077 bm!366990) bm!366991))

(declare-fun m!6260848 () Bool)

(assert (=> b!5211078 m!6260848))

(declare-fun m!6260850 () Bool)

(assert (=> bm!366991 m!6260850))

(declare-fun m!6260852 () Bool)

(assert (=> bm!366992 m!6260852))

(assert (=> bm!366752 d!1680410))

(declare-fun b!5211088 () Bool)

(declare-fun e!3244197 () Bool)

(declare-fun tp!1461301 () Bool)

(assert (=> b!5211088 (= e!3244197 tp!1461301)))

(declare-fun b!5211086 () Bool)

(assert (=> b!5211086 (= e!3244197 tp_is_empty!38847)))

(assert (=> b!5210069 (= tp!1461102 e!3244197)))

(declare-fun b!5211087 () Bool)

(declare-fun tp!1461302 () Bool)

(declare-fun tp!1461300 () Bool)

(assert (=> b!5211087 (= e!3244197 (and tp!1461302 tp!1461300))))

(declare-fun b!5211089 () Bool)

(declare-fun tp!1461298 () Bool)

(declare-fun tp!1461299 () Bool)

(assert (=> b!5211089 (= e!3244197 (and tp!1461298 tp!1461299))))

(assert (= (and b!5210069 ((_ is ElementMatch!14797) (regOne!30107 (regTwo!30106 r!7292)))) b!5211086))

(assert (= (and b!5210069 ((_ is Concat!23642) (regOne!30107 (regTwo!30106 r!7292)))) b!5211087))

(assert (= (and b!5210069 ((_ is Star!14797) (regOne!30107 (regTwo!30106 r!7292)))) b!5211088))

(assert (= (and b!5210069 ((_ is Union!14797) (regOne!30107 (regTwo!30106 r!7292)))) b!5211089))

(declare-fun b!5211092 () Bool)

(declare-fun e!3244198 () Bool)

(declare-fun tp!1461306 () Bool)

(assert (=> b!5211092 (= e!3244198 tp!1461306)))

(declare-fun b!5211090 () Bool)

(assert (=> b!5211090 (= e!3244198 tp_is_empty!38847)))

(assert (=> b!5210069 (= tp!1461103 e!3244198)))

(declare-fun b!5211091 () Bool)

(declare-fun tp!1461307 () Bool)

(declare-fun tp!1461305 () Bool)

(assert (=> b!5211091 (= e!3244198 (and tp!1461307 tp!1461305))))

(declare-fun b!5211093 () Bool)

(declare-fun tp!1461303 () Bool)

(declare-fun tp!1461304 () Bool)

(assert (=> b!5211093 (= e!3244198 (and tp!1461303 tp!1461304))))

(assert (= (and b!5210069 ((_ is ElementMatch!14797) (regTwo!30107 (regTwo!30106 r!7292)))) b!5211090))

(assert (= (and b!5210069 ((_ is Concat!23642) (regTwo!30107 (regTwo!30106 r!7292)))) b!5211091))

(assert (= (and b!5210069 ((_ is Star!14797) (regTwo!30107 (regTwo!30106 r!7292)))) b!5211092))

(assert (= (and b!5210069 ((_ is Union!14797) (regTwo!30107 (regTwo!30106 r!7292)))) b!5211093))

(declare-fun b!5211096 () Bool)

(declare-fun e!3244199 () Bool)

(declare-fun tp!1461311 () Bool)

(assert (=> b!5211096 (= e!3244199 tp!1461311)))

(declare-fun b!5211094 () Bool)

(assert (=> b!5211094 (= e!3244199 tp_is_empty!38847)))

(assert (=> b!5210068 (= tp!1461105 e!3244199)))

(declare-fun b!5211095 () Bool)

(declare-fun tp!1461312 () Bool)

(declare-fun tp!1461310 () Bool)

(assert (=> b!5211095 (= e!3244199 (and tp!1461312 tp!1461310))))

(declare-fun b!5211097 () Bool)

(declare-fun tp!1461308 () Bool)

(declare-fun tp!1461309 () Bool)

(assert (=> b!5211097 (= e!3244199 (and tp!1461308 tp!1461309))))

(assert (= (and b!5210068 ((_ is ElementMatch!14797) (reg!15126 (regTwo!30106 r!7292)))) b!5211094))

(assert (= (and b!5210068 ((_ is Concat!23642) (reg!15126 (regTwo!30106 r!7292)))) b!5211095))

(assert (= (and b!5210068 ((_ is Star!14797) (reg!15126 (regTwo!30106 r!7292)))) b!5211096))

(assert (= (and b!5210068 ((_ is Union!14797) (reg!15126 (regTwo!30106 r!7292)))) b!5211097))

(declare-fun b!5211100 () Bool)

(declare-fun e!3244200 () Bool)

(declare-fun tp!1461316 () Bool)

(assert (=> b!5211100 (= e!3244200 tp!1461316)))

(declare-fun b!5211098 () Bool)

(assert (=> b!5211098 (= e!3244200 tp_is_empty!38847)))

(assert (=> b!5210067 (= tp!1461106 e!3244200)))

(declare-fun b!5211099 () Bool)

(declare-fun tp!1461317 () Bool)

(declare-fun tp!1461315 () Bool)

(assert (=> b!5211099 (= e!3244200 (and tp!1461317 tp!1461315))))

(declare-fun b!5211101 () Bool)

(declare-fun tp!1461313 () Bool)

(declare-fun tp!1461314 () Bool)

(assert (=> b!5211101 (= e!3244200 (and tp!1461313 tp!1461314))))

(assert (= (and b!5210067 ((_ is ElementMatch!14797) (regOne!30106 (regTwo!30106 r!7292)))) b!5211098))

(assert (= (and b!5210067 ((_ is Concat!23642) (regOne!30106 (regTwo!30106 r!7292)))) b!5211099))

(assert (= (and b!5210067 ((_ is Star!14797) (regOne!30106 (regTwo!30106 r!7292)))) b!5211100))

(assert (= (and b!5210067 ((_ is Union!14797) (regOne!30106 (regTwo!30106 r!7292)))) b!5211101))

(declare-fun b!5211104 () Bool)

(declare-fun e!3244201 () Bool)

(declare-fun tp!1461321 () Bool)

(assert (=> b!5211104 (= e!3244201 tp!1461321)))

(declare-fun b!5211102 () Bool)

(assert (=> b!5211102 (= e!3244201 tp_is_empty!38847)))

(assert (=> b!5210067 (= tp!1461104 e!3244201)))

(declare-fun b!5211103 () Bool)

(declare-fun tp!1461322 () Bool)

(declare-fun tp!1461320 () Bool)

(assert (=> b!5211103 (= e!3244201 (and tp!1461322 tp!1461320))))

(declare-fun b!5211105 () Bool)

(declare-fun tp!1461318 () Bool)

(declare-fun tp!1461319 () Bool)

(assert (=> b!5211105 (= e!3244201 (and tp!1461318 tp!1461319))))

(assert (= (and b!5210067 ((_ is ElementMatch!14797) (regTwo!30106 (regTwo!30106 r!7292)))) b!5211102))

(assert (= (and b!5210067 ((_ is Concat!23642) (regTwo!30106 (regTwo!30106 r!7292)))) b!5211103))

(assert (= (and b!5210067 ((_ is Star!14797) (regTwo!30106 (regTwo!30106 r!7292)))) b!5211104))

(assert (= (and b!5210067 ((_ is Union!14797) (regTwo!30106 (regTwo!30106 r!7292)))) b!5211105))

(declare-fun b!5211106 () Bool)

(declare-fun e!3244202 () Bool)

(declare-fun tp!1461323 () Bool)

(assert (=> b!5211106 (= e!3244202 (and tp_is_empty!38847 tp!1461323))))

(assert (=> b!5210061 (= tp!1461096 e!3244202)))

(assert (= (and b!5210061 ((_ is Cons!60568) (t!373853 (t!373853 s!2326)))) b!5211106))

(declare-fun b!5211109 () Bool)

(declare-fun e!3244203 () Bool)

(declare-fun tp!1461327 () Bool)

(assert (=> b!5211109 (= e!3244203 tp!1461327)))

(declare-fun b!5211107 () Bool)

(assert (=> b!5211107 (= e!3244203 tp_is_empty!38847)))

(assert (=> b!5210054 (= tp!1461093 e!3244203)))

(declare-fun b!5211108 () Bool)

(declare-fun tp!1461328 () Bool)

(declare-fun tp!1461326 () Bool)

(assert (=> b!5211108 (= e!3244203 (and tp!1461328 tp!1461326))))

(declare-fun b!5211110 () Bool)

(declare-fun tp!1461324 () Bool)

(declare-fun tp!1461325 () Bool)

(assert (=> b!5211110 (= e!3244203 (and tp!1461324 tp!1461325))))

(assert (= (and b!5210054 ((_ is ElementMatch!14797) (regOne!30106 (regTwo!30107 r!7292)))) b!5211107))

(assert (= (and b!5210054 ((_ is Concat!23642) (regOne!30106 (regTwo!30107 r!7292)))) b!5211108))

(assert (= (and b!5210054 ((_ is Star!14797) (regOne!30106 (regTwo!30107 r!7292)))) b!5211109))

(assert (= (and b!5210054 ((_ is Union!14797) (regOne!30106 (regTwo!30107 r!7292)))) b!5211110))

(declare-fun b!5211113 () Bool)

(declare-fun e!3244204 () Bool)

(declare-fun tp!1461332 () Bool)

(assert (=> b!5211113 (= e!3244204 tp!1461332)))

(declare-fun b!5211111 () Bool)

(assert (=> b!5211111 (= e!3244204 tp_is_empty!38847)))

(assert (=> b!5210054 (= tp!1461091 e!3244204)))

(declare-fun b!5211112 () Bool)

(declare-fun tp!1461333 () Bool)

(declare-fun tp!1461331 () Bool)

(assert (=> b!5211112 (= e!3244204 (and tp!1461333 tp!1461331))))

(declare-fun b!5211114 () Bool)

(declare-fun tp!1461329 () Bool)

(declare-fun tp!1461330 () Bool)

(assert (=> b!5211114 (= e!3244204 (and tp!1461329 tp!1461330))))

(assert (= (and b!5210054 ((_ is ElementMatch!14797) (regTwo!30106 (regTwo!30107 r!7292)))) b!5211111))

(assert (= (and b!5210054 ((_ is Concat!23642) (regTwo!30106 (regTwo!30107 r!7292)))) b!5211112))

(assert (= (and b!5210054 ((_ is Star!14797) (regTwo!30106 (regTwo!30107 r!7292)))) b!5211113))

(assert (= (and b!5210054 ((_ is Union!14797) (regTwo!30106 (regTwo!30107 r!7292)))) b!5211114))

(declare-fun b!5211117 () Bool)

(declare-fun e!3244205 () Bool)

(declare-fun tp!1461337 () Bool)

(assert (=> b!5211117 (= e!3244205 tp!1461337)))

(declare-fun b!5211115 () Bool)

(assert (=> b!5211115 (= e!3244205 tp_is_empty!38847)))

(assert (=> b!5210070 (= tp!1461107 e!3244205)))

(declare-fun b!5211116 () Bool)

(declare-fun tp!1461338 () Bool)

(declare-fun tp!1461336 () Bool)

(assert (=> b!5211116 (= e!3244205 (and tp!1461338 tp!1461336))))

(declare-fun b!5211118 () Bool)

(declare-fun tp!1461334 () Bool)

(declare-fun tp!1461335 () Bool)

(assert (=> b!5211118 (= e!3244205 (and tp!1461334 tp!1461335))))

(assert (= (and b!5210070 ((_ is ElementMatch!14797) (h!67014 (exprs!4681 setElem!33084)))) b!5211115))

(assert (= (and b!5210070 ((_ is Concat!23642) (h!67014 (exprs!4681 setElem!33084)))) b!5211116))

(assert (= (and b!5210070 ((_ is Star!14797) (h!67014 (exprs!4681 setElem!33084)))) b!5211117))

(assert (= (and b!5210070 ((_ is Union!14797) (h!67014 (exprs!4681 setElem!33084)))) b!5211118))

(declare-fun b!5211119 () Bool)

(declare-fun e!3244206 () Bool)

(declare-fun tp!1461339 () Bool)

(declare-fun tp!1461340 () Bool)

(assert (=> b!5211119 (= e!3244206 (and tp!1461339 tp!1461340))))

(assert (=> b!5210070 (= tp!1461108 e!3244206)))

(assert (= (and b!5210070 ((_ is Cons!60566) (t!373851 (exprs!4681 setElem!33084)))) b!5211119))

(declare-fun b!5211122 () Bool)

(declare-fun e!3244207 () Bool)

(declare-fun tp!1461344 () Bool)

(assert (=> b!5211122 (= e!3244207 tp!1461344)))

(declare-fun b!5211120 () Bool)

(assert (=> b!5211120 (= e!3244207 tp_is_empty!38847)))

(assert (=> b!5210038 (= tp!1461072 e!3244207)))

(declare-fun b!5211121 () Bool)

(declare-fun tp!1461345 () Bool)

(declare-fun tp!1461343 () Bool)

(assert (=> b!5211121 (= e!3244207 (and tp!1461345 tp!1461343))))

(declare-fun b!5211123 () Bool)

(declare-fun tp!1461341 () Bool)

(declare-fun tp!1461342 () Bool)

(assert (=> b!5211123 (= e!3244207 (and tp!1461341 tp!1461342))))

(assert (= (and b!5210038 ((_ is ElementMatch!14797) (h!67014 (exprs!4681 (h!67015 zl!343))))) b!5211120))

(assert (= (and b!5210038 ((_ is Concat!23642) (h!67014 (exprs!4681 (h!67015 zl!343))))) b!5211121))

(assert (= (and b!5210038 ((_ is Star!14797) (h!67014 (exprs!4681 (h!67015 zl!343))))) b!5211122))

(assert (= (and b!5210038 ((_ is Union!14797) (h!67014 (exprs!4681 (h!67015 zl!343))))) b!5211123))

(declare-fun b!5211124 () Bool)

(declare-fun e!3244208 () Bool)

(declare-fun tp!1461346 () Bool)

(declare-fun tp!1461347 () Bool)

(assert (=> b!5211124 (= e!3244208 (and tp!1461346 tp!1461347))))

(assert (=> b!5210038 (= tp!1461073 e!3244208)))

(assert (= (and b!5210038 ((_ is Cons!60566) (t!373851 (exprs!4681 (h!67015 zl!343))))) b!5211124))

(declare-fun b!5211127 () Bool)

(declare-fun e!3244209 () Bool)

(declare-fun tp!1461351 () Bool)

(assert (=> b!5211127 (= e!3244209 tp!1461351)))

(declare-fun b!5211125 () Bool)

(assert (=> b!5211125 (= e!3244209 tp_is_empty!38847)))

(assert (=> b!5210078 (= tp!1461118 e!3244209)))

(declare-fun b!5211126 () Bool)

(declare-fun tp!1461352 () Bool)

(declare-fun tp!1461350 () Bool)

(assert (=> b!5211126 (= e!3244209 (and tp!1461352 tp!1461350))))

(declare-fun b!5211128 () Bool)

(declare-fun tp!1461348 () Bool)

(declare-fun tp!1461349 () Bool)

(assert (=> b!5211128 (= e!3244209 (and tp!1461348 tp!1461349))))

(assert (= (and b!5210078 ((_ is ElementMatch!14797) (reg!15126 (reg!15126 r!7292)))) b!5211125))

(assert (= (and b!5210078 ((_ is Concat!23642) (reg!15126 (reg!15126 r!7292)))) b!5211126))

(assert (= (and b!5210078 ((_ is Star!14797) (reg!15126 (reg!15126 r!7292)))) b!5211127))

(assert (= (and b!5210078 ((_ is Union!14797) (reg!15126 (reg!15126 r!7292)))) b!5211128))

(declare-fun b!5211131 () Bool)

(declare-fun e!3244210 () Bool)

(declare-fun tp!1461356 () Bool)

(assert (=> b!5211131 (= e!3244210 tp!1461356)))

(declare-fun b!5211129 () Bool)

(assert (=> b!5211129 (= e!3244210 tp_is_empty!38847)))

(assert (=> b!5210077 (= tp!1461119 e!3244210)))

(declare-fun b!5211130 () Bool)

(declare-fun tp!1461357 () Bool)

(declare-fun tp!1461355 () Bool)

(assert (=> b!5211130 (= e!3244210 (and tp!1461357 tp!1461355))))

(declare-fun b!5211132 () Bool)

(declare-fun tp!1461353 () Bool)

(declare-fun tp!1461354 () Bool)

(assert (=> b!5211132 (= e!3244210 (and tp!1461353 tp!1461354))))

(assert (= (and b!5210077 ((_ is ElementMatch!14797) (regOne!30106 (reg!15126 r!7292)))) b!5211129))

(assert (= (and b!5210077 ((_ is Concat!23642) (regOne!30106 (reg!15126 r!7292)))) b!5211130))

(assert (= (and b!5210077 ((_ is Star!14797) (regOne!30106 (reg!15126 r!7292)))) b!5211131))

(assert (= (and b!5210077 ((_ is Union!14797) (regOne!30106 (reg!15126 r!7292)))) b!5211132))

(declare-fun b!5211135 () Bool)

(declare-fun e!3244211 () Bool)

(declare-fun tp!1461361 () Bool)

(assert (=> b!5211135 (= e!3244211 tp!1461361)))

(declare-fun b!5211133 () Bool)

(assert (=> b!5211133 (= e!3244211 tp_is_empty!38847)))

(assert (=> b!5210077 (= tp!1461117 e!3244211)))

(declare-fun b!5211134 () Bool)

(declare-fun tp!1461362 () Bool)

(declare-fun tp!1461360 () Bool)

(assert (=> b!5211134 (= e!3244211 (and tp!1461362 tp!1461360))))

(declare-fun b!5211136 () Bool)

(declare-fun tp!1461358 () Bool)

(declare-fun tp!1461359 () Bool)

(assert (=> b!5211136 (= e!3244211 (and tp!1461358 tp!1461359))))

(assert (= (and b!5210077 ((_ is ElementMatch!14797) (regTwo!30106 (reg!15126 r!7292)))) b!5211133))

(assert (= (and b!5210077 ((_ is Concat!23642) (regTwo!30106 (reg!15126 r!7292)))) b!5211134))

(assert (= (and b!5210077 ((_ is Star!14797) (regTwo!30106 (reg!15126 r!7292)))) b!5211135))

(assert (= (and b!5210077 ((_ is Union!14797) (regTwo!30106 (reg!15126 r!7292)))) b!5211136))

(declare-fun b!5211139 () Bool)

(declare-fun e!3244212 () Bool)

(declare-fun tp!1461366 () Bool)

(assert (=> b!5211139 (= e!3244212 tp!1461366)))

(declare-fun b!5211137 () Bool)

(assert (=> b!5211137 (= e!3244212 tp_is_empty!38847)))

(assert (=> b!5210056 (= tp!1461089 e!3244212)))

(declare-fun b!5211138 () Bool)

(declare-fun tp!1461367 () Bool)

(declare-fun tp!1461365 () Bool)

(assert (=> b!5211138 (= e!3244212 (and tp!1461367 tp!1461365))))

(declare-fun b!5211140 () Bool)

(declare-fun tp!1461363 () Bool)

(declare-fun tp!1461364 () Bool)

(assert (=> b!5211140 (= e!3244212 (and tp!1461363 tp!1461364))))

(assert (= (and b!5210056 ((_ is ElementMatch!14797) (regOne!30107 (regTwo!30107 r!7292)))) b!5211137))

(assert (= (and b!5210056 ((_ is Concat!23642) (regOne!30107 (regTwo!30107 r!7292)))) b!5211138))

(assert (= (and b!5210056 ((_ is Star!14797) (regOne!30107 (regTwo!30107 r!7292)))) b!5211139))

(assert (= (and b!5210056 ((_ is Union!14797) (regOne!30107 (regTwo!30107 r!7292)))) b!5211140))

(declare-fun b!5211143 () Bool)

(declare-fun e!3244213 () Bool)

(declare-fun tp!1461371 () Bool)

(assert (=> b!5211143 (= e!3244213 tp!1461371)))

(declare-fun b!5211141 () Bool)

(assert (=> b!5211141 (= e!3244213 tp_is_empty!38847)))

(assert (=> b!5210056 (= tp!1461090 e!3244213)))

(declare-fun b!5211142 () Bool)

(declare-fun tp!1461372 () Bool)

(declare-fun tp!1461370 () Bool)

(assert (=> b!5211142 (= e!3244213 (and tp!1461372 tp!1461370))))

(declare-fun b!5211144 () Bool)

(declare-fun tp!1461368 () Bool)

(declare-fun tp!1461369 () Bool)

(assert (=> b!5211144 (= e!3244213 (and tp!1461368 tp!1461369))))

(assert (= (and b!5210056 ((_ is ElementMatch!14797) (regTwo!30107 (regTwo!30107 r!7292)))) b!5211141))

(assert (= (and b!5210056 ((_ is Concat!23642) (regTwo!30107 (regTwo!30107 r!7292)))) b!5211142))

(assert (= (and b!5210056 ((_ is Star!14797) (regTwo!30107 (regTwo!30107 r!7292)))) b!5211143))

(assert (= (and b!5210056 ((_ is Union!14797) (regTwo!30107 (regTwo!30107 r!7292)))) b!5211144))

(declare-fun b!5211147 () Bool)

(declare-fun e!3244214 () Bool)

(declare-fun tp!1461376 () Bool)

(assert (=> b!5211147 (= e!3244214 tp!1461376)))

(declare-fun b!5211145 () Bool)

(assert (=> b!5211145 (= e!3244214 tp_is_empty!38847)))

(assert (=> b!5210055 (= tp!1461092 e!3244214)))

(declare-fun b!5211146 () Bool)

(declare-fun tp!1461377 () Bool)

(declare-fun tp!1461375 () Bool)

(assert (=> b!5211146 (= e!3244214 (and tp!1461377 tp!1461375))))

(declare-fun b!5211148 () Bool)

(declare-fun tp!1461373 () Bool)

(declare-fun tp!1461374 () Bool)

(assert (=> b!5211148 (= e!3244214 (and tp!1461373 tp!1461374))))

(assert (= (and b!5210055 ((_ is ElementMatch!14797) (reg!15126 (regTwo!30107 r!7292)))) b!5211145))

(assert (= (and b!5210055 ((_ is Concat!23642) (reg!15126 (regTwo!30107 r!7292)))) b!5211146))

(assert (= (and b!5210055 ((_ is Star!14797) (reg!15126 (regTwo!30107 r!7292)))) b!5211147))

(assert (= (and b!5210055 ((_ is Union!14797) (reg!15126 (regTwo!30107 r!7292)))) b!5211148))

(declare-fun b!5211150 () Bool)

(declare-fun e!3244216 () Bool)

(declare-fun tp!1461378 () Bool)

(assert (=> b!5211150 (= e!3244216 tp!1461378)))

(declare-fun e!3244215 () Bool)

(declare-fun b!5211149 () Bool)

(declare-fun tp!1461379 () Bool)

(assert (=> b!5211149 (= e!3244215 (and (inv!80239 (h!67015 (t!373852 (t!373852 zl!343)))) e!3244216 tp!1461379))))

(assert (=> b!5210086 (= tp!1461125 e!3244215)))

(assert (= b!5211149 b!5211150))

(assert (= (and b!5210086 ((_ is Cons!60567) (t!373852 (t!373852 zl!343)))) b!5211149))

(declare-fun m!6260854 () Bool)

(assert (=> b!5211149 m!6260854))

(declare-fun b!5211153 () Bool)

(declare-fun e!3244217 () Bool)

(declare-fun tp!1461383 () Bool)

(assert (=> b!5211153 (= e!3244217 tp!1461383)))

(declare-fun b!5211151 () Bool)

(assert (=> b!5211151 (= e!3244217 tp_is_empty!38847)))

(assert (=> b!5210064 (= tp!1461100 e!3244217)))

(declare-fun b!5211152 () Bool)

(declare-fun tp!1461384 () Bool)

(declare-fun tp!1461382 () Bool)

(assert (=> b!5211152 (= e!3244217 (and tp!1461384 tp!1461382))))

(declare-fun b!5211154 () Bool)

(declare-fun tp!1461380 () Bool)

(declare-fun tp!1461381 () Bool)

(assert (=> b!5211154 (= e!3244217 (and tp!1461380 tp!1461381))))

(assert (= (and b!5210064 ((_ is ElementMatch!14797) (reg!15126 (regOne!30106 r!7292)))) b!5211151))

(assert (= (and b!5210064 ((_ is Concat!23642) (reg!15126 (regOne!30106 r!7292)))) b!5211152))

(assert (= (and b!5210064 ((_ is Star!14797) (reg!15126 (regOne!30106 r!7292)))) b!5211153))

(assert (= (and b!5210064 ((_ is Union!14797) (reg!15126 (regOne!30106 r!7292)))) b!5211154))

(declare-fun b!5211157 () Bool)

(declare-fun e!3244218 () Bool)

(declare-fun tp!1461388 () Bool)

(assert (=> b!5211157 (= e!3244218 tp!1461388)))

(declare-fun b!5211155 () Bool)

(assert (=> b!5211155 (= e!3244218 tp_is_empty!38847)))

(assert (=> b!5210063 (= tp!1461101 e!3244218)))

(declare-fun b!5211156 () Bool)

(declare-fun tp!1461389 () Bool)

(declare-fun tp!1461387 () Bool)

(assert (=> b!5211156 (= e!3244218 (and tp!1461389 tp!1461387))))

(declare-fun b!5211158 () Bool)

(declare-fun tp!1461385 () Bool)

(declare-fun tp!1461386 () Bool)

(assert (=> b!5211158 (= e!3244218 (and tp!1461385 tp!1461386))))

(assert (= (and b!5210063 ((_ is ElementMatch!14797) (regOne!30106 (regOne!30106 r!7292)))) b!5211155))

(assert (= (and b!5210063 ((_ is Concat!23642) (regOne!30106 (regOne!30106 r!7292)))) b!5211156))

(assert (= (and b!5210063 ((_ is Star!14797) (regOne!30106 (regOne!30106 r!7292)))) b!5211157))

(assert (= (and b!5210063 ((_ is Union!14797) (regOne!30106 (regOne!30106 r!7292)))) b!5211158))

(declare-fun b!5211161 () Bool)

(declare-fun e!3244219 () Bool)

(declare-fun tp!1461393 () Bool)

(assert (=> b!5211161 (= e!3244219 tp!1461393)))

(declare-fun b!5211159 () Bool)

(assert (=> b!5211159 (= e!3244219 tp_is_empty!38847)))

(assert (=> b!5210063 (= tp!1461099 e!3244219)))

(declare-fun b!5211160 () Bool)

(declare-fun tp!1461394 () Bool)

(declare-fun tp!1461392 () Bool)

(assert (=> b!5211160 (= e!3244219 (and tp!1461394 tp!1461392))))

(declare-fun b!5211162 () Bool)

(declare-fun tp!1461390 () Bool)

(declare-fun tp!1461391 () Bool)

(assert (=> b!5211162 (= e!3244219 (and tp!1461390 tp!1461391))))

(assert (= (and b!5210063 ((_ is ElementMatch!14797) (regTwo!30106 (regOne!30106 r!7292)))) b!5211159))

(assert (= (and b!5210063 ((_ is Concat!23642) (regTwo!30106 (regOne!30106 r!7292)))) b!5211160))

(assert (= (and b!5210063 ((_ is Star!14797) (regTwo!30106 (regOne!30106 r!7292)))) b!5211161))

(assert (= (and b!5210063 ((_ is Union!14797) (regTwo!30106 (regOne!30106 r!7292)))) b!5211162))

(declare-fun b!5211165 () Bool)

(declare-fun e!3244220 () Bool)

(declare-fun tp!1461398 () Bool)

(assert (=> b!5211165 (= e!3244220 tp!1461398)))

(declare-fun b!5211163 () Bool)

(assert (=> b!5211163 (= e!3244220 tp_is_empty!38847)))

(assert (=> b!5210079 (= tp!1461115 e!3244220)))

(declare-fun b!5211164 () Bool)

(declare-fun tp!1461399 () Bool)

(declare-fun tp!1461397 () Bool)

(assert (=> b!5211164 (= e!3244220 (and tp!1461399 tp!1461397))))

(declare-fun b!5211166 () Bool)

(declare-fun tp!1461395 () Bool)

(declare-fun tp!1461396 () Bool)

(assert (=> b!5211166 (= e!3244220 (and tp!1461395 tp!1461396))))

(assert (= (and b!5210079 ((_ is ElementMatch!14797) (regOne!30107 (reg!15126 r!7292)))) b!5211163))

(assert (= (and b!5210079 ((_ is Concat!23642) (regOne!30107 (reg!15126 r!7292)))) b!5211164))

(assert (= (and b!5210079 ((_ is Star!14797) (regOne!30107 (reg!15126 r!7292)))) b!5211165))

(assert (= (and b!5210079 ((_ is Union!14797) (regOne!30107 (reg!15126 r!7292)))) b!5211166))

(declare-fun b!5211169 () Bool)

(declare-fun e!3244221 () Bool)

(declare-fun tp!1461403 () Bool)

(assert (=> b!5211169 (= e!3244221 tp!1461403)))

(declare-fun b!5211167 () Bool)

(assert (=> b!5211167 (= e!3244221 tp_is_empty!38847)))

(assert (=> b!5210079 (= tp!1461116 e!3244221)))

(declare-fun b!5211168 () Bool)

(declare-fun tp!1461404 () Bool)

(declare-fun tp!1461402 () Bool)

(assert (=> b!5211168 (= e!3244221 (and tp!1461404 tp!1461402))))

(declare-fun b!5211170 () Bool)

(declare-fun tp!1461400 () Bool)

(declare-fun tp!1461401 () Bool)

(assert (=> b!5211170 (= e!3244221 (and tp!1461400 tp!1461401))))

(assert (= (and b!5210079 ((_ is ElementMatch!14797) (regTwo!30107 (reg!15126 r!7292)))) b!5211167))

(assert (= (and b!5210079 ((_ is Concat!23642) (regTwo!30107 (reg!15126 r!7292)))) b!5211168))

(assert (= (and b!5210079 ((_ is Star!14797) (regTwo!30107 (reg!15126 r!7292)))) b!5211169))

(assert (= (and b!5210079 ((_ is Union!14797) (regTwo!30107 (reg!15126 r!7292)))) b!5211170))

(declare-fun b!5211171 () Bool)

(declare-fun e!3244222 () Bool)

(declare-fun tp!1461405 () Bool)

(declare-fun tp!1461406 () Bool)

(assert (=> b!5211171 (= e!3244222 (and tp!1461405 tp!1461406))))

(assert (=> b!5210087 (= tp!1461124 e!3244222)))

(assert (= (and b!5210087 ((_ is Cons!60566) (exprs!4681 (h!67015 (t!373852 zl!343))))) b!5211171))

(declare-fun b!5211174 () Bool)

(declare-fun e!3244223 () Bool)

(declare-fun tp!1461410 () Bool)

(assert (=> b!5211174 (= e!3244223 tp!1461410)))

(declare-fun b!5211172 () Bool)

(assert (=> b!5211172 (= e!3244223 tp_is_empty!38847)))

(assert (=> b!5210065 (= tp!1461097 e!3244223)))

(declare-fun b!5211173 () Bool)

(declare-fun tp!1461411 () Bool)

(declare-fun tp!1461409 () Bool)

(assert (=> b!5211173 (= e!3244223 (and tp!1461411 tp!1461409))))

(declare-fun b!5211175 () Bool)

(declare-fun tp!1461407 () Bool)

(declare-fun tp!1461408 () Bool)

(assert (=> b!5211175 (= e!3244223 (and tp!1461407 tp!1461408))))

(assert (= (and b!5210065 ((_ is ElementMatch!14797) (regOne!30107 (regOne!30106 r!7292)))) b!5211172))

(assert (= (and b!5210065 ((_ is Concat!23642) (regOne!30107 (regOne!30106 r!7292)))) b!5211173))

(assert (= (and b!5210065 ((_ is Star!14797) (regOne!30107 (regOne!30106 r!7292)))) b!5211174))

(assert (= (and b!5210065 ((_ is Union!14797) (regOne!30107 (regOne!30106 r!7292)))) b!5211175))

(declare-fun b!5211178 () Bool)

(declare-fun e!3244224 () Bool)

(declare-fun tp!1461415 () Bool)

(assert (=> b!5211178 (= e!3244224 tp!1461415)))

(declare-fun b!5211176 () Bool)

(assert (=> b!5211176 (= e!3244224 tp_is_empty!38847)))

(assert (=> b!5210065 (= tp!1461098 e!3244224)))

(declare-fun b!5211177 () Bool)

(declare-fun tp!1461416 () Bool)

(declare-fun tp!1461414 () Bool)

(assert (=> b!5211177 (= e!3244224 (and tp!1461416 tp!1461414))))

(declare-fun b!5211179 () Bool)

(declare-fun tp!1461412 () Bool)

(declare-fun tp!1461413 () Bool)

(assert (=> b!5211179 (= e!3244224 (and tp!1461412 tp!1461413))))

(assert (= (and b!5210065 ((_ is ElementMatch!14797) (regTwo!30107 (regOne!30106 r!7292)))) b!5211176))

(assert (= (and b!5210065 ((_ is Concat!23642) (regTwo!30107 (regOne!30106 r!7292)))) b!5211177))

(assert (= (and b!5210065 ((_ is Star!14797) (regTwo!30107 (regOne!30106 r!7292)))) b!5211178))

(assert (= (and b!5210065 ((_ is Union!14797) (regTwo!30107 (regOne!30106 r!7292)))) b!5211179))

(declare-fun b!5211180 () Bool)

(declare-fun e!3244225 () Bool)

(declare-fun tp!1461417 () Bool)

(declare-fun tp!1461418 () Bool)

(assert (=> b!5211180 (= e!3244225 (and tp!1461417 tp!1461418))))

(assert (=> b!5210075 (= tp!1461114 e!3244225)))

(assert (= (and b!5210075 ((_ is Cons!60566) (exprs!4681 setElem!33090))) b!5211180))

(declare-fun b!5211183 () Bool)

(declare-fun e!3244226 () Bool)

(declare-fun tp!1461422 () Bool)

(assert (=> b!5211183 (= e!3244226 tp!1461422)))

(declare-fun b!5211181 () Bool)

(assert (=> b!5211181 (= e!3244226 tp_is_empty!38847)))

(assert (=> b!5210052 (= tp!1461084 e!3244226)))

(declare-fun b!5211182 () Bool)

(declare-fun tp!1461423 () Bool)

(declare-fun tp!1461421 () Bool)

(assert (=> b!5211182 (= e!3244226 (and tp!1461423 tp!1461421))))

(declare-fun b!5211184 () Bool)

(declare-fun tp!1461419 () Bool)

(declare-fun tp!1461420 () Bool)

(assert (=> b!5211184 (= e!3244226 (and tp!1461419 tp!1461420))))

(assert (= (and b!5210052 ((_ is ElementMatch!14797) (regOne!30107 (regOne!30107 r!7292)))) b!5211181))

(assert (= (and b!5210052 ((_ is Concat!23642) (regOne!30107 (regOne!30107 r!7292)))) b!5211182))

(assert (= (and b!5210052 ((_ is Star!14797) (regOne!30107 (regOne!30107 r!7292)))) b!5211183))

(assert (= (and b!5210052 ((_ is Union!14797) (regOne!30107 (regOne!30107 r!7292)))) b!5211184))

(declare-fun b!5211187 () Bool)

(declare-fun e!3244227 () Bool)

(declare-fun tp!1461427 () Bool)

(assert (=> b!5211187 (= e!3244227 tp!1461427)))

(declare-fun b!5211185 () Bool)

(assert (=> b!5211185 (= e!3244227 tp_is_empty!38847)))

(assert (=> b!5210052 (= tp!1461085 e!3244227)))

(declare-fun b!5211186 () Bool)

(declare-fun tp!1461428 () Bool)

(declare-fun tp!1461426 () Bool)

(assert (=> b!5211186 (= e!3244227 (and tp!1461428 tp!1461426))))

(declare-fun b!5211188 () Bool)

(declare-fun tp!1461424 () Bool)

(declare-fun tp!1461425 () Bool)

(assert (=> b!5211188 (= e!3244227 (and tp!1461424 tp!1461425))))

(assert (= (and b!5210052 ((_ is ElementMatch!14797) (regTwo!30107 (regOne!30107 r!7292)))) b!5211185))

(assert (= (and b!5210052 ((_ is Concat!23642) (regTwo!30107 (regOne!30107 r!7292)))) b!5211186))

(assert (= (and b!5210052 ((_ is Star!14797) (regTwo!30107 (regOne!30107 r!7292)))) b!5211187))

(assert (= (and b!5210052 ((_ is Union!14797) (regTwo!30107 (regOne!30107 r!7292)))) b!5211188))

(declare-fun b!5211191 () Bool)

(declare-fun e!3244228 () Bool)

(declare-fun tp!1461432 () Bool)

(assert (=> b!5211191 (= e!3244228 tp!1461432)))

(declare-fun b!5211189 () Bool)

(assert (=> b!5211189 (= e!3244228 tp_is_empty!38847)))

(assert (=> b!5210051 (= tp!1461087 e!3244228)))

(declare-fun b!5211190 () Bool)

(declare-fun tp!1461433 () Bool)

(declare-fun tp!1461431 () Bool)

(assert (=> b!5211190 (= e!3244228 (and tp!1461433 tp!1461431))))

(declare-fun b!5211192 () Bool)

(declare-fun tp!1461429 () Bool)

(declare-fun tp!1461430 () Bool)

(assert (=> b!5211192 (= e!3244228 (and tp!1461429 tp!1461430))))

(assert (= (and b!5210051 ((_ is ElementMatch!14797) (reg!15126 (regOne!30107 r!7292)))) b!5211189))

(assert (= (and b!5210051 ((_ is Concat!23642) (reg!15126 (regOne!30107 r!7292)))) b!5211190))

(assert (= (and b!5210051 ((_ is Star!14797) (reg!15126 (regOne!30107 r!7292)))) b!5211191))

(assert (= (and b!5210051 ((_ is Union!14797) (reg!15126 (regOne!30107 r!7292)))) b!5211192))

(declare-fun condSetEmpty!33098 () Bool)

(assert (=> setNonEmpty!33090 (= condSetEmpty!33098 (= setRest!33090 ((as const (Array Context!8362 Bool)) false)))))

(declare-fun setRes!33098 () Bool)

(assert (=> setNonEmpty!33090 (= tp!1461113 setRes!33098)))

(declare-fun setIsEmpty!33098 () Bool)

(assert (=> setIsEmpty!33098 setRes!33098))

(declare-fun setNonEmpty!33098 () Bool)

(declare-fun tp!1461434 () Bool)

(declare-fun e!3244229 () Bool)

(declare-fun setElem!33098 () Context!8362)

(assert (=> setNonEmpty!33098 (= setRes!33098 (and tp!1461434 (inv!80239 setElem!33098) e!3244229))))

(declare-fun setRest!33098 () (InoxSet Context!8362))

(assert (=> setNonEmpty!33098 (= setRest!33090 ((_ map or) (store ((as const (Array Context!8362 Bool)) false) setElem!33098 true) setRest!33098))))

(declare-fun b!5211193 () Bool)

(declare-fun tp!1461435 () Bool)

(assert (=> b!5211193 (= e!3244229 tp!1461435)))

(assert (= (and setNonEmpty!33090 condSetEmpty!33098) setIsEmpty!33098))

(assert (= (and setNonEmpty!33090 (not condSetEmpty!33098)) setNonEmpty!33098))

(assert (= setNonEmpty!33098 b!5211193))

(declare-fun m!6260856 () Bool)

(assert (=> setNonEmpty!33098 m!6260856))

(declare-fun b!5211196 () Bool)

(declare-fun e!3244230 () Bool)

(declare-fun tp!1461439 () Bool)

(assert (=> b!5211196 (= e!3244230 tp!1461439)))

(declare-fun b!5211194 () Bool)

(assert (=> b!5211194 (= e!3244230 tp_is_empty!38847)))

(assert (=> b!5210050 (= tp!1461088 e!3244230)))

(declare-fun b!5211195 () Bool)

(declare-fun tp!1461440 () Bool)

(declare-fun tp!1461438 () Bool)

(assert (=> b!5211195 (= e!3244230 (and tp!1461440 tp!1461438))))

(declare-fun b!5211197 () Bool)

(declare-fun tp!1461436 () Bool)

(declare-fun tp!1461437 () Bool)

(assert (=> b!5211197 (= e!3244230 (and tp!1461436 tp!1461437))))

(assert (= (and b!5210050 ((_ is ElementMatch!14797) (regOne!30106 (regOne!30107 r!7292)))) b!5211194))

(assert (= (and b!5210050 ((_ is Concat!23642) (regOne!30106 (regOne!30107 r!7292)))) b!5211195))

(assert (= (and b!5210050 ((_ is Star!14797) (regOne!30106 (regOne!30107 r!7292)))) b!5211196))

(assert (= (and b!5210050 ((_ is Union!14797) (regOne!30106 (regOne!30107 r!7292)))) b!5211197))

(declare-fun b!5211200 () Bool)

(declare-fun e!3244231 () Bool)

(declare-fun tp!1461444 () Bool)

(assert (=> b!5211200 (= e!3244231 tp!1461444)))

(declare-fun b!5211198 () Bool)

(assert (=> b!5211198 (= e!3244231 tp_is_empty!38847)))

(assert (=> b!5210050 (= tp!1461086 e!3244231)))

(declare-fun b!5211199 () Bool)

(declare-fun tp!1461445 () Bool)

(declare-fun tp!1461443 () Bool)

(assert (=> b!5211199 (= e!3244231 (and tp!1461445 tp!1461443))))

(declare-fun b!5211201 () Bool)

(declare-fun tp!1461441 () Bool)

(declare-fun tp!1461442 () Bool)

(assert (=> b!5211201 (= e!3244231 (and tp!1461441 tp!1461442))))

(assert (= (and b!5210050 ((_ is ElementMatch!14797) (regTwo!30106 (regOne!30107 r!7292)))) b!5211198))

(assert (= (and b!5210050 ((_ is Concat!23642) (regTwo!30106 (regOne!30107 r!7292)))) b!5211199))

(assert (= (and b!5210050 ((_ is Star!14797) (regTwo!30106 (regOne!30107 r!7292)))) b!5211200))

(assert (= (and b!5210050 ((_ is Union!14797) (regTwo!30106 (regOne!30107 r!7292)))) b!5211201))

(declare-fun b_lambda!201569 () Bool)

(assert (= b_lambda!201559 (or d!1679970 b_lambda!201569)))

(declare-fun bs!1210805 () Bool)

(declare-fun d!1680412 () Bool)

(assert (= bs!1210805 (and d!1680412 d!1679970)))

(assert (=> bs!1210805 (= (dynLambda!23929 lambda!261240 (h!67014 (exprs!4681 setElem!33084))) (validRegex!6533 (h!67014 (exprs!4681 setElem!33084))))))

(declare-fun m!6260858 () Bool)

(assert (=> bs!1210805 m!6260858))

(assert (=> b!5210870 d!1680412))

(declare-fun b_lambda!201571 () Bool)

(assert (= b_lambda!201539 (or d!1679924 b_lambda!201571)))

(declare-fun bs!1210806 () Bool)

(declare-fun d!1680414 () Bool)

(assert (= bs!1210806 (and d!1680414 d!1679924)))

(assert (=> bs!1210806 (= (dynLambda!23929 lambda!261216 (h!67014 (exprs!4681 (h!67015 zl!343)))) (validRegex!6533 (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(declare-fun m!6260860 () Bool)

(assert (=> bs!1210806 m!6260860))

(assert (=> b!5210387 d!1680414))

(declare-fun b_lambda!201573 () Bool)

(assert (= b_lambda!201561 (or d!1679932 b_lambda!201573)))

(declare-fun bs!1210807 () Bool)

(declare-fun d!1680416 () Bool)

(assert (= bs!1210807 (and d!1680416 d!1679932)))

(assert (=> bs!1210807 (= (dynLambda!23929 lambda!261219 (h!67014 (unfocusZipperList!239 zl!343))) (validRegex!6533 (h!67014 (unfocusZipperList!239 zl!343))))))

(declare-fun m!6260862 () Bool)

(assert (=> bs!1210807 m!6260862))

(assert (=> b!5210944 d!1680416))

(declare-fun b_lambda!201575 () Bool)

(assert (= b_lambda!201563 (or b!5209316 b_lambda!201575)))

(assert (=> d!1680342 d!1679992))

(declare-fun b_lambda!201577 () Bool)

(assert (= b_lambda!201567 (or d!1679936 b_lambda!201577)))

(declare-fun bs!1210808 () Bool)

(declare-fun d!1680418 () Bool)

(assert (= bs!1210808 (and d!1680418 d!1679936)))

(assert (=> bs!1210808 (= (dynLambda!23929 lambda!261222 (h!67014 lt!2141997)) (validRegex!6533 (h!67014 lt!2141997)))))

(declare-fun m!6260864 () Bool)

(assert (=> bs!1210808 m!6260864))

(assert (=> b!5211063 d!1680418))

(declare-fun b_lambda!201579 () Bool)

(assert (= b_lambda!201565 (or d!1679976 b_lambda!201579)))

(declare-fun bs!1210809 () Bool)

(declare-fun d!1680420 () Bool)

(assert (= bs!1210809 (and d!1680420 d!1679976)))

(assert (=> bs!1210809 (= (dynLambda!23929 lambda!261241 (h!67014 (exprs!4681 (h!67015 zl!343)))) (validRegex!6533 (h!67014 (exprs!4681 (h!67015 zl!343)))))))

(assert (=> bs!1210809 m!6260860))

(assert (=> b!5211016 d!1680420))

(check-sat (not b!5211149) (not bm!366910) (not b!5211117) (not b!5211116) (not b!5211059) (not b!5211136) (not b!5211175) (not b!5210608) (not bm!366933) (not b!5211019) (not bm!366853) (not b_lambda!201569) (not b_lambda!201575) (not b!5211171) (not bm!366881) (not b_lambda!201579) (not b!5211095) (not bm!366843) (not bm!366980) (not d!1680162) (not b!5210945) (not b!5211024) (not b!5211177) (not b!5210554) (not b!5211123) (not b!5211118) (not d!1680302) (not b!5211096) (not d!1680242) (not b!5211154) (not bm!366954) (not b!5211188) (not bm!366849) (not b!5211113) (not bm!366976) (not b!5211126) (not b!5211166) (not b!5210876) (not b!5211132) (not b!5211160) (not bs!1210807) (not b!5211201) (not b!5210602) (not d!1680360) (not b!5210575) (not b!5210445) (not d!1680354) (not b!5211020) (not bm!366952) (not b!5210834) (not d!1680396) (not b!5210847) (not b!5211197) (not d!1680408) (not b!5211033) (not bm!366882) (not bm!366886) (not b!5210435) (not b!5210859) (not d!1680398) (not bm!366899) (not b!5211183) (not d!1680258) (not b!5210958) (not d!1680386) (not bm!366859) (not b!5210973) (not bm!366935) (not d!1680392) (not b!5210388) (not b!5211062) (not b!5210423) (not b!5211157) (not b!5211139) (not b!5211142) (not b!5210993) (not bm!366981) (not bs!1210809) (not bm!366955) (not b!5211064) (not b!5211028) (not bm!366855) (not bm!366988) (not b!5210989) (not b!5210854) (not b!5211180) (not b!5211148) (not b!5210996) (not b!5210864) (not d!1680152) (not bm!366969) (not b!5210923) (not b!5211017) (not bm!366973) (not b!5211165) (not b!5210421) (not b!5210527) (not b!5211101) (not b!5211162) (not bs!1210806) (not bm!366975) (not b!5211114) (not bs!1210805) (not b!5211119) (not d!1680312) (not b!5211056) (not bm!366902) (not d!1680294) (not b!5211135) (not d!1680256) (not b!5210978) (not b!5210975) (not b!5210868) (not b!5211066) (not b!5210863) (not b!5210936) (not b!5210991) (not setNonEmpty!33098) (not bm!366944) (not bm!366873) (not d!1680388) (not bm!366837) (not b!5211134) (not b!5211032) (not b!5211169) (not b!5210679) (not b!5210605) (not b!5211164) (not d!1680226) (not bm!366856) (not b!5211039) (not bm!366964) (not b!5210972) (not b!5211156) (not b!5211099) (not b!5211067) (not b!5211128) (not d!1680314) (not bm!366961) (not b!5211106) (not b!5211026) (not b!5210362) (not d!1680098) (not bm!366982) (not setNonEmpty!33097) (not b!5211075) (not d!1680100) (not b!5211184) (not b!5211100) (not bm!366978) (not b!5210861) (not b_lambda!201531) (not bm!366989) (not b!5210428) (not b!5210603) (not bm!366890) (not b!5211161) (not b!5211092) (not bm!366992) (not bm!366836) (not b!5211131) (not d!1680378) (not d!1680382) (not b!5210934) (not b!5211199) (not b!5211093) (not b!5211048) (not b!5211150) (not bm!366953) (not b!5211127) (not b!5210907) (not d!1680264) (not b_lambda!201571) (not bm!366949) (not b!5211170) (not b!5211192) (not b!5210912) (not b!5211030) (not bm!366967) (not b!5211187) (not bm!366872) (not bm!366874) (not b!5211091) (not b!5211104) (not b!5211049) (not b!5210598) (not b!5211179) (not b!5210871) tp_is_empty!38847 (not b!5210438) (not b!5210890) (not d!1680238) (not b!5211174) (not b!5211147) (not b!5211053) (not d!1680394) (not b!5211196) (not b!5211152) (not b!5211158) (not b!5211073) (not b!5211200) (not b!5211110) (not b!5211087) (not d!1680108) (not b!5211070) (not bs!1210808) (not b!5211045) (not b!5211034) (not d!1680404) (not bm!366898) (not bm!366960) (not b!5211078) (not b!5211144) (not b!5210968) (not b!5210956) (not b!5210413) (not bm!366875) (not bm!366977) (not b!5211191) (not b!5210869) (not bm!366878) (not d!1680390) (not b!5211168) (not b!5211040) (not d!1680308) (not b!5210433) (not b!5210961) (not b!5211089) (not b!5210611) (not b!5211138) (not b!5211015) (not b!5210984) (not bm!366970) (not b!5211178) (not b!5211042) (not d!1680328) (not b!5211013) (not b!5211182) (not b!5211122) (not bm!366858) (not d!1680288) (not d!1680318) (not b!5210986) (not d!1680174) (not d!1680310) (not b_lambda!201573) (not b!5210856) (not d!1680262) (not b!5211173) (not bm!366986) (not b!5211105) (not d!1680406) (not b!5211195) (not b!5210855) (not b!5210329) (not b!5210865) (not d!1680260) (not b!5210337) (not bm!366844) (not b!5211146) (not bm!366850) (not b!5211097) (not b!5211193) (not b!5211071) (not b!5211072) (not b!5211035) (not bm!366983) (not d!1680344) (not b!5211121) (not b!5211069) (not b!5211112) (not b!5210981) (not b!5211140) (not b!5210862) (not d!1680342) (not b!5211108) (not b!5211023) (not b!5210888) (not d!1680364) (not b!5210586) (not bm!366979) (not d!1680384) (not d!1680362) (not b_lambda!201577) (not b!5211103) (not b!5211130) (not b!5211088) (not b!5210441) (not d!1680400) (not b!5211143) (not bm!366945) (not b!5210877) (not bm!366887) (not b!5211014) (not bm!366991) (not b!5211190) (not b!5211124) (not bm!366946) (not b!5210908) (not b!5210432) (not b!5210846) (not b!5211186) (not bm!366958) (not bm!366943) (not b!5210338) (not b!5211153) (not d!1680322) (not b!5210525) (not b!5211109) (not bm!366968) (not b!5211054))
(check-sat)
