; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!555834 () Bool)

(assert start!555834)

(declare-fun b!5262535 () Bool)

(assert (=> b!5262535 true))

(assert (=> b!5262535 true))

(declare-fun lambda!265340 () Int)

(declare-fun lambda!265339 () Int)

(assert (=> b!5262535 (not (= lambda!265340 lambda!265339))))

(assert (=> b!5262535 true))

(assert (=> b!5262535 true))

(declare-fun b!5262556 () Bool)

(assert (=> b!5262556 true))

(declare-fun e!3273424 () Bool)

(declare-fun e!3273428 () Bool)

(assert (=> b!5262535 (= e!3273424 e!3273428)))

(declare-fun res!2233032 () Bool)

(assert (=> b!5262535 (=> res!2233032 e!3273428)))

(declare-fun lt!2155528 () Bool)

(declare-datatypes ((C!30032 0))(
  ( (C!30033 (val!24718 Int)) )
))
(declare-datatypes ((List!60942 0))(
  ( (Nil!60818) (Cons!60818 (h!67266 C!30032) (t!374129 List!60942)) )
))
(declare-fun s!2326 () List!60942)

(declare-fun lt!2155529 () Bool)

(get-info :version)

(assert (=> b!5262535 (= res!2233032 (or (not (= lt!2155528 lt!2155529)) ((_ is Nil!60818) s!2326)))))

(declare-fun Exists!2062 (Int) Bool)

(assert (=> b!5262535 (= (Exists!2062 lambda!265339) (Exists!2062 lambda!265340))))

(declare-datatypes ((Unit!153042 0))(
  ( (Unit!153043) )
))
(declare-fun lt!2155530 () Unit!153042)

(declare-datatypes ((Regex!14881 0))(
  ( (ElementMatch!14881 (c!910993 C!30032)) (Concat!23726 (regOne!30274 Regex!14881) (regTwo!30274 Regex!14881)) (EmptyExpr!14881) (Star!14881 (reg!15210 Regex!14881)) (EmptyLang!14881) (Union!14881 (regOne!30275 Regex!14881) (regTwo!30275 Regex!14881)) )
))
(declare-fun r!7292 () Regex!14881)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!716 (Regex!14881 Regex!14881 List!60942) Unit!153042)

(assert (=> b!5262535 (= lt!2155530 (lemmaExistCutMatchRandMatchRSpecEquivalent!716 (regOne!30274 r!7292) (regTwo!30274 r!7292) s!2326))))

(assert (=> b!5262535 (= lt!2155529 (Exists!2062 lambda!265339))))

(declare-datatypes ((tuple2!64160 0))(
  ( (tuple2!64161 (_1!35383 List!60942) (_2!35383 List!60942)) )
))
(declare-datatypes ((Option!14992 0))(
  ( (None!14991) (Some!14991 (v!51020 tuple2!64160)) )
))
(declare-fun isDefined!11695 (Option!14992) Bool)

(declare-fun findConcatSeparation!1406 (Regex!14881 Regex!14881 List!60942 List!60942 List!60942) Option!14992)

(assert (=> b!5262535 (= lt!2155529 (isDefined!11695 (findConcatSeparation!1406 (regOne!30274 r!7292) (regTwo!30274 r!7292) Nil!60818 s!2326 s!2326)))))

(declare-fun lt!2155532 () Unit!153042)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1170 (Regex!14881 Regex!14881 List!60942) Unit!153042)

(assert (=> b!5262535 (= lt!2155532 (lemmaFindConcatSeparationEquivalentToExists!1170 (regOne!30274 r!7292) (regTwo!30274 r!7292) s!2326))))

(declare-fun b!5262536 () Bool)

(declare-fun res!2233042 () Bool)

(assert (=> b!5262536 (=> res!2233042 e!3273424)))

(declare-datatypes ((List!60943 0))(
  ( (Nil!60819) (Cons!60819 (h!67267 Regex!14881) (t!374130 List!60943)) )
))
(declare-datatypes ((Context!8530 0))(
  ( (Context!8531 (exprs!4765 List!60943)) )
))
(declare-datatypes ((List!60944 0))(
  ( (Nil!60820) (Cons!60820 (h!67268 Context!8530) (t!374131 List!60944)) )
))
(declare-fun zl!343 () List!60944)

(declare-fun generalisedUnion!810 (List!60943) Regex!14881)

(declare-fun unfocusZipperList!323 (List!60944) List!60943)

(assert (=> b!5262536 (= res!2233042 (not (= r!7292 (generalisedUnion!810 (unfocusZipperList!323 zl!343)))))))

(declare-fun b!5262537 () Bool)

(declare-fun res!2233039 () Bool)

(declare-fun e!3273425 () Bool)

(assert (=> b!5262537 (=> (not res!2233039) (not e!3273425))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8530))

(declare-fun toList!8665 ((InoxSet Context!8530)) List!60944)

(assert (=> b!5262537 (= res!2233039 (= (toList!8665 z!1189) zl!343))))

(declare-fun b!5262538 () Bool)

(declare-fun e!3273426 () Bool)

(declare-fun tp!1471220 () Bool)

(assert (=> b!5262538 (= e!3273426 tp!1471220)))

(declare-fun b!5262539 () Bool)

(declare-fun e!3273423 () Bool)

(declare-fun validRegex!6617 (Regex!14881) Bool)

(assert (=> b!5262539 (= e!3273423 (validRegex!6617 (regOne!30274 (regOne!30274 r!7292))))))

(declare-fun setRes!33651 () Bool)

(declare-fun e!3273427 () Bool)

(declare-fun setElem!33651 () Context!8530)

(declare-fun setNonEmpty!33651 () Bool)

(declare-fun tp!1471219 () Bool)

(declare-fun inv!80449 (Context!8530) Bool)

(assert (=> setNonEmpty!33651 (= setRes!33651 (and tp!1471219 (inv!80449 setElem!33651) e!3273427))))

(declare-fun setRest!33651 () (InoxSet Context!8530))

(assert (=> setNonEmpty!33651 (= z!1189 ((_ map or) (store ((as const (Array Context!8530 Bool)) false) setElem!33651 true) setRest!33651))))

(declare-fun b!5262540 () Bool)

(declare-fun e!3273422 () Bool)

(declare-fun lt!2155531 () (InoxSet Context!8530))

(declare-fun matchZipper!1125 ((InoxSet Context!8530) List!60942) Bool)

(assert (=> b!5262540 (= e!3273422 (matchZipper!1125 lt!2155531 (t!374129 s!2326)))))

(declare-fun b!5262541 () Bool)

(declare-fun tp!1471216 () Bool)

(declare-fun tp!1471218 () Bool)

(assert (=> b!5262541 (= e!3273426 (and tp!1471216 tp!1471218))))

(declare-fun b!5262542 () Bool)

(declare-fun e!3273429 () Bool)

(declare-fun tp_is_empty!39015 () Bool)

(declare-fun tp!1471223 () Bool)

(assert (=> b!5262542 (= e!3273429 (and tp_is_empty!39015 tp!1471223))))

(declare-fun tp!1471217 () Bool)

(declare-fun e!3273430 () Bool)

(declare-fun b!5262543 () Bool)

(declare-fun e!3273421 () Bool)

(assert (=> b!5262543 (= e!3273430 (and (inv!80449 (h!67268 zl!343)) e!3273421 tp!1471217))))

(declare-fun b!5262544 () Bool)

(assert (=> b!5262544 (= e!3273425 (not e!3273424))))

(declare-fun res!2233031 () Bool)

(assert (=> b!5262544 (=> res!2233031 e!3273424)))

(assert (=> b!5262544 (= res!2233031 (not ((_ is Cons!60820) zl!343)))))

(declare-fun matchRSpec!1984 (Regex!14881 List!60942) Bool)

(assert (=> b!5262544 (= lt!2155528 (matchRSpec!1984 r!7292 s!2326))))

(declare-fun matchR!7066 (Regex!14881 List!60942) Bool)

(assert (=> b!5262544 (= lt!2155528 (matchR!7066 r!7292 s!2326))))

(declare-fun lt!2155538 () Unit!153042)

(declare-fun mainMatchTheorem!1984 (Regex!14881 List!60942) Unit!153042)

(assert (=> b!5262544 (= lt!2155538 (mainMatchTheorem!1984 r!7292 s!2326))))

(declare-fun res!2233035 () Bool)

(assert (=> start!555834 (=> (not res!2233035) (not e!3273425))))

(assert (=> start!555834 (= res!2233035 (validRegex!6617 r!7292))))

(assert (=> start!555834 e!3273425))

(assert (=> start!555834 e!3273426))

(declare-fun condSetEmpty!33651 () Bool)

(assert (=> start!555834 (= condSetEmpty!33651 (= z!1189 ((as const (Array Context!8530 Bool)) false)))))

(assert (=> start!555834 setRes!33651))

(assert (=> start!555834 e!3273430))

(assert (=> start!555834 e!3273429))

(declare-fun b!5262545 () Bool)

(declare-fun res!2233034 () Bool)

(assert (=> b!5262545 (=> res!2233034 e!3273428)))

(declare-fun isEmpty!32763 (List!60943) Bool)

(assert (=> b!5262545 (= res!2233034 (isEmpty!32763 (t!374130 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun setIsEmpty!33651 () Bool)

(assert (=> setIsEmpty!33651 setRes!33651))

(declare-fun b!5262546 () Bool)

(assert (=> b!5262546 (= e!3273426 tp_is_empty!39015)))

(declare-fun b!5262547 () Bool)

(declare-fun res!2233036 () Bool)

(assert (=> b!5262547 (=> (not res!2233036) (not e!3273425))))

(declare-fun unfocusZipper!623 (List!60944) Regex!14881)

(assert (=> b!5262547 (= res!2233036 (= r!7292 (unfocusZipper!623 zl!343)))))

(declare-fun b!5262548 () Bool)

(declare-fun tp!1471222 () Bool)

(assert (=> b!5262548 (= e!3273427 tp!1471222)))

(declare-fun b!5262549 () Bool)

(declare-fun res!2233043 () Bool)

(assert (=> b!5262549 (=> res!2233043 e!3273424)))

(assert (=> b!5262549 (= res!2233043 (or ((_ is EmptyExpr!14881) r!7292) ((_ is EmptyLang!14881) r!7292) ((_ is ElementMatch!14881) r!7292) ((_ is Union!14881) r!7292) (not ((_ is Concat!23726) r!7292))))))

(declare-fun b!5262550 () Bool)

(declare-fun tp!1471221 () Bool)

(declare-fun tp!1471224 () Bool)

(assert (=> b!5262550 (= e!3273426 (and tp!1471221 tp!1471224))))

(declare-fun b!5262551 () Bool)

(declare-fun res!2233038 () Bool)

(assert (=> b!5262551 (=> res!2233038 e!3273424)))

(assert (=> b!5262551 (= res!2233038 (not ((_ is Cons!60819) (exprs!4765 (h!67268 zl!343)))))))

(declare-fun b!5262552 () Bool)

(declare-fun e!3273420 () Unit!153042)

(declare-fun Unit!153044 () Unit!153042)

(assert (=> b!5262552 (= e!3273420 Unit!153044)))

(declare-fun lt!2155534 () (InoxSet Context!8530))

(declare-fun lt!2155533 () Unit!153042)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!118 ((InoxSet Context!8530) (InoxSet Context!8530) List!60942) Unit!153042)

(assert (=> b!5262552 (= lt!2155533 (lemmaZipperConcatMatchesSameAsBothZippers!118 lt!2155534 lt!2155531 (t!374129 s!2326)))))

(declare-fun res!2233030 () Bool)

(assert (=> b!5262552 (= res!2233030 (matchZipper!1125 lt!2155534 (t!374129 s!2326)))))

(assert (=> b!5262552 (=> res!2233030 e!3273422)))

(assert (=> b!5262552 (= (matchZipper!1125 ((_ map or) lt!2155534 lt!2155531) (t!374129 s!2326)) e!3273422)))

(declare-fun b!5262553 () Bool)

(declare-fun res!2233033 () Bool)

(assert (=> b!5262553 (=> res!2233033 e!3273423)))

(declare-fun lt!2155536 () Context!8530)

(declare-fun derivationStepZipperDown!329 (Regex!14881 Context!8530 C!30032) (InoxSet Context!8530))

(assert (=> b!5262553 (= res!2233033 (not (= lt!2155534 ((_ map or) (derivationStepZipperDown!329 (regOne!30274 (regOne!30274 r!7292)) (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (h!67266 s!2326)) (derivationStepZipperDown!329 (regTwo!30274 (regOne!30274 r!7292)) lt!2155536 (h!67266 s!2326))))))))

(declare-fun b!5262554 () Bool)

(declare-fun res!2233029 () Bool)

(assert (=> b!5262554 (=> res!2233029 e!3273424)))

(declare-fun generalisedConcat!550 (List!60943) Regex!14881)

(assert (=> b!5262554 (= res!2233029 (not (= r!7292 (generalisedConcat!550 (exprs!4765 (h!67268 zl!343))))))))

(declare-fun b!5262555 () Bool)

(declare-fun res!2233037 () Bool)

(assert (=> b!5262555 (=> res!2233037 e!3273424)))

(declare-fun isEmpty!32764 (List!60944) Bool)

(assert (=> b!5262555 (= res!2233037 (not (isEmpty!32764 (t!374131 zl!343))))))

(assert (=> b!5262556 (= e!3273428 e!3273423)))

(declare-fun res!2233041 () Bool)

(assert (=> b!5262556 (=> res!2233041 e!3273423)))

(assert (=> b!5262556 (= res!2233041 (or (and ((_ is ElementMatch!14881) (regOne!30274 r!7292)) (= (c!910993 (regOne!30274 r!7292)) (h!67266 s!2326))) ((_ is Union!14881) (regOne!30274 r!7292)) (not ((_ is Concat!23726) (regOne!30274 r!7292)))))))

(declare-fun lt!2155537 () Unit!153042)

(assert (=> b!5262556 (= lt!2155537 e!3273420)))

(declare-fun c!910992 () Bool)

(declare-fun nullable!5050 (Regex!14881) Bool)

(assert (=> b!5262556 (= c!910992 (nullable!5050 (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun lambda!265341 () Int)

(declare-fun flatMap!608 ((InoxSet Context!8530) Int) (InoxSet Context!8530))

(declare-fun derivationStepZipperUp!253 (Context!8530 C!30032) (InoxSet Context!8530))

(assert (=> b!5262556 (= (flatMap!608 z!1189 lambda!265341) (derivationStepZipperUp!253 (h!67268 zl!343) (h!67266 s!2326)))))

(declare-fun lt!2155527 () Unit!153042)

(declare-fun lemmaFlatMapOnSingletonSet!140 ((InoxSet Context!8530) Context!8530 Int) Unit!153042)

(assert (=> b!5262556 (= lt!2155527 (lemmaFlatMapOnSingletonSet!140 z!1189 (h!67268 zl!343) lambda!265341))))

(assert (=> b!5262556 (= lt!2155531 (derivationStepZipperUp!253 lt!2155536 (h!67266 s!2326)))))

(assert (=> b!5262556 (= lt!2155534 (derivationStepZipperDown!329 (h!67267 (exprs!4765 (h!67268 zl!343))) lt!2155536 (h!67266 s!2326)))))

(assert (=> b!5262556 (= lt!2155536 (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun lt!2155535 () (InoxSet Context!8530))

(assert (=> b!5262556 (= lt!2155535 (derivationStepZipperUp!253 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))) (h!67266 s!2326)))))

(declare-fun b!5262557 () Bool)

(declare-fun Unit!153045 () Unit!153042)

(assert (=> b!5262557 (= e!3273420 Unit!153045)))

(declare-fun b!5262558 () Bool)

(declare-fun tp!1471225 () Bool)

(assert (=> b!5262558 (= e!3273421 tp!1471225)))

(declare-fun b!5262559 () Bool)

(declare-fun res!2233040 () Bool)

(assert (=> b!5262559 (=> res!2233040 e!3273423)))

(assert (=> b!5262559 (= res!2233040 (not (nullable!5050 (regOne!30274 (regOne!30274 r!7292)))))))

(assert (= (and start!555834 res!2233035) b!5262537))

(assert (= (and b!5262537 res!2233039) b!5262547))

(assert (= (and b!5262547 res!2233036) b!5262544))

(assert (= (and b!5262544 (not res!2233031)) b!5262555))

(assert (= (and b!5262555 (not res!2233037)) b!5262554))

(assert (= (and b!5262554 (not res!2233029)) b!5262551))

(assert (= (and b!5262551 (not res!2233038)) b!5262536))

(assert (= (and b!5262536 (not res!2233042)) b!5262549))

(assert (= (and b!5262549 (not res!2233043)) b!5262535))

(assert (= (and b!5262535 (not res!2233032)) b!5262545))

(assert (= (and b!5262545 (not res!2233034)) b!5262556))

(assert (= (and b!5262556 c!910992) b!5262552))

(assert (= (and b!5262556 (not c!910992)) b!5262557))

(assert (= (and b!5262552 (not res!2233030)) b!5262540))

(assert (= (and b!5262556 (not res!2233041)) b!5262559))

(assert (= (and b!5262559 (not res!2233040)) b!5262553))

(assert (= (and b!5262553 (not res!2233033)) b!5262539))

(assert (= (and start!555834 ((_ is ElementMatch!14881) r!7292)) b!5262546))

(assert (= (and start!555834 ((_ is Concat!23726) r!7292)) b!5262550))

(assert (= (and start!555834 ((_ is Star!14881) r!7292)) b!5262538))

(assert (= (and start!555834 ((_ is Union!14881) r!7292)) b!5262541))

(assert (= (and start!555834 condSetEmpty!33651) setIsEmpty!33651))

(assert (= (and start!555834 (not condSetEmpty!33651)) setNonEmpty!33651))

(assert (= setNonEmpty!33651 b!5262548))

(assert (= b!5262543 b!5262558))

(assert (= (and start!555834 ((_ is Cons!60820) zl!343)) b!5262543))

(assert (= (and start!555834 ((_ is Cons!60818) s!2326)) b!5262542))

(declare-fun m!6303668 () Bool)

(assert (=> b!5262554 m!6303668))

(declare-fun m!6303670 () Bool)

(assert (=> setNonEmpty!33651 m!6303670))

(declare-fun m!6303672 () Bool)

(assert (=> b!5262556 m!6303672))

(declare-fun m!6303674 () Bool)

(assert (=> b!5262556 m!6303674))

(declare-fun m!6303676 () Bool)

(assert (=> b!5262556 m!6303676))

(declare-fun m!6303678 () Bool)

(assert (=> b!5262556 m!6303678))

(declare-fun m!6303680 () Bool)

(assert (=> b!5262556 m!6303680))

(declare-fun m!6303682 () Bool)

(assert (=> b!5262556 m!6303682))

(declare-fun m!6303684 () Bool)

(assert (=> b!5262556 m!6303684))

(declare-fun m!6303686 () Bool)

(assert (=> b!5262555 m!6303686))

(declare-fun m!6303688 () Bool)

(assert (=> b!5262540 m!6303688))

(declare-fun m!6303690 () Bool)

(assert (=> b!5262537 m!6303690))

(declare-fun m!6303692 () Bool)

(assert (=> b!5262536 m!6303692))

(assert (=> b!5262536 m!6303692))

(declare-fun m!6303694 () Bool)

(assert (=> b!5262536 m!6303694))

(declare-fun m!6303696 () Bool)

(assert (=> b!5262552 m!6303696))

(declare-fun m!6303698 () Bool)

(assert (=> b!5262552 m!6303698))

(declare-fun m!6303700 () Bool)

(assert (=> b!5262552 m!6303700))

(declare-fun m!6303702 () Bool)

(assert (=> start!555834 m!6303702))

(declare-fun m!6303704 () Bool)

(assert (=> b!5262544 m!6303704))

(declare-fun m!6303706 () Bool)

(assert (=> b!5262544 m!6303706))

(declare-fun m!6303708 () Bool)

(assert (=> b!5262544 m!6303708))

(declare-fun m!6303710 () Bool)

(assert (=> b!5262535 m!6303710))

(declare-fun m!6303712 () Bool)

(assert (=> b!5262535 m!6303712))

(declare-fun m!6303714 () Bool)

(assert (=> b!5262535 m!6303714))

(assert (=> b!5262535 m!6303714))

(declare-fun m!6303716 () Bool)

(assert (=> b!5262535 m!6303716))

(declare-fun m!6303718 () Bool)

(assert (=> b!5262535 m!6303718))

(assert (=> b!5262535 m!6303710))

(declare-fun m!6303720 () Bool)

(assert (=> b!5262535 m!6303720))

(declare-fun m!6303722 () Bool)

(assert (=> b!5262559 m!6303722))

(declare-fun m!6303724 () Bool)

(assert (=> b!5262545 m!6303724))

(declare-fun m!6303726 () Bool)

(assert (=> b!5262547 m!6303726))

(declare-fun m!6303728 () Bool)

(assert (=> b!5262539 m!6303728))

(declare-fun m!6303730 () Bool)

(assert (=> b!5262543 m!6303730))

(declare-fun m!6303732 () Bool)

(assert (=> b!5262553 m!6303732))

(declare-fun m!6303734 () Bool)

(assert (=> b!5262553 m!6303734))

(check-sat (not b!5262535) (not b!5262555) (not start!555834) (not b!5262552) (not b!5262558) (not b!5262543) (not b!5262542) tp_is_empty!39015 (not b!5262536) (not b!5262556) (not b!5262545) (not b!5262541) (not b!5262548) (not b!5262540) (not b!5262539) (not b!5262547) (not b!5262553) (not b!5262537) (not b!5262554) (not b!5262559) (not b!5262544) (not setNonEmpty!33651) (not b!5262538) (not b!5262550))
(check-sat)
(get-model)

(declare-fun d!1693896 () Bool)

(declare-fun e!3273493 () Bool)

(assert (=> d!1693896 (= (matchZipper!1125 ((_ map or) lt!2155534 lt!2155531) (t!374129 s!2326)) e!3273493)))

(declare-fun res!2233085 () Bool)

(assert (=> d!1693896 (=> res!2233085 e!3273493)))

(assert (=> d!1693896 (= res!2233085 (matchZipper!1125 lt!2155534 (t!374129 s!2326)))))

(declare-fun lt!2155565 () Unit!153042)

(declare-fun choose!39261 ((InoxSet Context!8530) (InoxSet Context!8530) List!60942) Unit!153042)

(assert (=> d!1693896 (= lt!2155565 (choose!39261 lt!2155534 lt!2155531 (t!374129 s!2326)))))

(assert (=> d!1693896 (= (lemmaZipperConcatMatchesSameAsBothZippers!118 lt!2155534 lt!2155531 (t!374129 s!2326)) lt!2155565)))

(declare-fun b!5262673 () Bool)

(assert (=> b!5262673 (= e!3273493 (matchZipper!1125 lt!2155531 (t!374129 s!2326)))))

(assert (= (and d!1693896 (not res!2233085)) b!5262673))

(assert (=> d!1693896 m!6303700))

(assert (=> d!1693896 m!6303698))

(declare-fun m!6303810 () Bool)

(assert (=> d!1693896 m!6303810))

(assert (=> b!5262673 m!6303688))

(assert (=> b!5262552 d!1693896))

(declare-fun d!1693898 () Bool)

(declare-fun c!911033 () Bool)

(declare-fun isEmpty!32766 (List!60942) Bool)

(assert (=> d!1693898 (= c!911033 (isEmpty!32766 (t!374129 s!2326)))))

(declare-fun e!3273510 () Bool)

(assert (=> d!1693898 (= (matchZipper!1125 lt!2155534 (t!374129 s!2326)) e!3273510)))

(declare-fun b!5262696 () Bool)

(declare-fun nullableZipper!1283 ((InoxSet Context!8530)) Bool)

(assert (=> b!5262696 (= e!3273510 (nullableZipper!1283 lt!2155534))))

(declare-fun b!5262697 () Bool)

(declare-fun derivationStepZipper!1127 ((InoxSet Context!8530) C!30032) (InoxSet Context!8530))

(declare-fun head!11285 (List!60942) C!30032)

(declare-fun tail!10382 (List!60942) List!60942)

(assert (=> b!5262697 (= e!3273510 (matchZipper!1125 (derivationStepZipper!1127 lt!2155534 (head!11285 (t!374129 s!2326))) (tail!10382 (t!374129 s!2326))))))

(assert (= (and d!1693898 c!911033) b!5262696))

(assert (= (and d!1693898 (not c!911033)) b!5262697))

(declare-fun m!6303820 () Bool)

(assert (=> d!1693898 m!6303820))

(declare-fun m!6303822 () Bool)

(assert (=> b!5262696 m!6303822))

(declare-fun m!6303824 () Bool)

(assert (=> b!5262697 m!6303824))

(assert (=> b!5262697 m!6303824))

(declare-fun m!6303826 () Bool)

(assert (=> b!5262697 m!6303826))

(declare-fun m!6303828 () Bool)

(assert (=> b!5262697 m!6303828))

(assert (=> b!5262697 m!6303826))

(assert (=> b!5262697 m!6303828))

(declare-fun m!6303830 () Bool)

(assert (=> b!5262697 m!6303830))

(assert (=> b!5262552 d!1693898))

(declare-fun d!1693904 () Bool)

(declare-fun c!911034 () Bool)

(assert (=> d!1693904 (= c!911034 (isEmpty!32766 (t!374129 s!2326)))))

(declare-fun e!3273511 () Bool)

(assert (=> d!1693904 (= (matchZipper!1125 ((_ map or) lt!2155534 lt!2155531) (t!374129 s!2326)) e!3273511)))

(declare-fun b!5262698 () Bool)

(assert (=> b!5262698 (= e!3273511 (nullableZipper!1283 ((_ map or) lt!2155534 lt!2155531)))))

(declare-fun b!5262699 () Bool)

(assert (=> b!5262699 (= e!3273511 (matchZipper!1125 (derivationStepZipper!1127 ((_ map or) lt!2155534 lt!2155531) (head!11285 (t!374129 s!2326))) (tail!10382 (t!374129 s!2326))))))

(assert (= (and d!1693904 c!911034) b!5262698))

(assert (= (and d!1693904 (not c!911034)) b!5262699))

(assert (=> d!1693904 m!6303820))

(declare-fun m!6303832 () Bool)

(assert (=> b!5262698 m!6303832))

(assert (=> b!5262699 m!6303824))

(assert (=> b!5262699 m!6303824))

(declare-fun m!6303834 () Bool)

(assert (=> b!5262699 m!6303834))

(assert (=> b!5262699 m!6303828))

(assert (=> b!5262699 m!6303834))

(assert (=> b!5262699 m!6303828))

(declare-fun m!6303836 () Bool)

(assert (=> b!5262699 m!6303836))

(assert (=> b!5262552 d!1693904))

(declare-fun b!5262737 () Bool)

(declare-fun res!2233115 () Bool)

(declare-fun e!3273543 () Bool)

(assert (=> b!5262737 (=> (not res!2233115) (not e!3273543))))

(declare-fun call!373264 () Bool)

(assert (=> b!5262737 (= res!2233115 call!373264)))

(declare-fun e!3273540 () Bool)

(assert (=> b!5262737 (= e!3273540 e!3273543)))

(declare-fun bm!373259 () Bool)

(declare-fun c!911045 () Bool)

(assert (=> bm!373259 (= call!373264 (validRegex!6617 (ite c!911045 (regOne!30275 r!7292) (regOne!30274 r!7292))))))

(declare-fun b!5262738 () Bool)

(declare-fun e!3273542 () Bool)

(declare-fun call!373266 () Bool)

(assert (=> b!5262738 (= e!3273542 call!373266)))

(declare-fun b!5262739 () Bool)

(declare-fun e!3273541 () Bool)

(assert (=> b!5262739 (= e!3273541 e!3273540)))

(assert (=> b!5262739 (= c!911045 ((_ is Union!14881) r!7292))))

(declare-fun bm!373260 () Bool)

(declare-fun call!373265 () Bool)

(assert (=> bm!373260 (= call!373265 call!373266)))

(declare-fun b!5262740 () Bool)

(assert (=> b!5262740 (= e!3273541 e!3273542)))

(declare-fun res!2233113 () Bool)

(assert (=> b!5262740 (= res!2233113 (not (nullable!5050 (reg!15210 r!7292))))))

(assert (=> b!5262740 (=> (not res!2233113) (not e!3273542))))

(declare-fun c!911046 () Bool)

(declare-fun bm!373261 () Bool)

(assert (=> bm!373261 (= call!373266 (validRegex!6617 (ite c!911046 (reg!15210 r!7292) (ite c!911045 (regTwo!30275 r!7292) (regTwo!30274 r!7292)))))))

(declare-fun b!5262742 () Bool)

(declare-fun e!3273544 () Bool)

(assert (=> b!5262742 (= e!3273544 e!3273541)))

(assert (=> b!5262742 (= c!911046 ((_ is Star!14881) r!7292))))

(declare-fun b!5262743 () Bool)

(declare-fun res!2233114 () Bool)

(declare-fun e!3273539 () Bool)

(assert (=> b!5262743 (=> res!2233114 e!3273539)))

(assert (=> b!5262743 (= res!2233114 (not ((_ is Concat!23726) r!7292)))))

(assert (=> b!5262743 (= e!3273540 e!3273539)))

(declare-fun b!5262741 () Bool)

(declare-fun e!3273545 () Bool)

(assert (=> b!5262741 (= e!3273539 e!3273545)))

(declare-fun res!2233116 () Bool)

(assert (=> b!5262741 (=> (not res!2233116) (not e!3273545))))

(assert (=> b!5262741 (= res!2233116 call!373264)))

(declare-fun d!1693906 () Bool)

(declare-fun res!2233117 () Bool)

(assert (=> d!1693906 (=> res!2233117 e!3273544)))

(assert (=> d!1693906 (= res!2233117 ((_ is ElementMatch!14881) r!7292))))

(assert (=> d!1693906 (= (validRegex!6617 r!7292) e!3273544)))

(declare-fun b!5262744 () Bool)

(assert (=> b!5262744 (= e!3273545 call!373265)))

(declare-fun b!5262745 () Bool)

(assert (=> b!5262745 (= e!3273543 call!373265)))

(assert (= (and d!1693906 (not res!2233117)) b!5262742))

(assert (= (and b!5262742 c!911046) b!5262740))

(assert (= (and b!5262742 (not c!911046)) b!5262739))

(assert (= (and b!5262740 res!2233113) b!5262738))

(assert (= (and b!5262739 c!911045) b!5262737))

(assert (= (and b!5262739 (not c!911045)) b!5262743))

(assert (= (and b!5262737 res!2233115) b!5262745))

(assert (= (and b!5262743 (not res!2233114)) b!5262741))

(assert (= (and b!5262741 res!2233116) b!5262744))

(assert (= (or b!5262745 b!5262744) bm!373260))

(assert (= (or b!5262737 b!5262741) bm!373259))

(assert (= (or b!5262738 bm!373260) bm!373261))

(declare-fun m!6303844 () Bool)

(assert (=> bm!373259 m!6303844))

(declare-fun m!6303846 () Bool)

(assert (=> b!5262740 m!6303846))

(declare-fun m!6303848 () Bool)

(assert (=> bm!373261 m!6303848))

(assert (=> start!555834 d!1693906))

(declare-fun b!5262781 () Bool)

(declare-fun e!3273568 () Bool)

(assert (=> b!5262781 (= e!3273568 (isEmpty!32763 (t!374130 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun b!5262782 () Bool)

(declare-fun e!3273569 () Regex!14881)

(assert (=> b!5262782 (= e!3273569 EmptyExpr!14881)))

(declare-fun b!5262784 () Bool)

(declare-fun e!3273567 () Bool)

(declare-fun lt!2155571 () Regex!14881)

(declare-fun isEmptyExpr!819 (Regex!14881) Bool)

(assert (=> b!5262784 (= e!3273567 (isEmptyExpr!819 lt!2155571))))

(declare-fun b!5262785 () Bool)

(declare-fun e!3273570 () Bool)

(assert (=> b!5262785 (= e!3273567 e!3273570)))

(declare-fun c!911061 () Bool)

(declare-fun tail!10383 (List!60943) List!60943)

(assert (=> b!5262785 (= c!911061 (isEmpty!32763 (tail!10383 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun b!5262786 () Bool)

(declare-fun e!3273572 () Regex!14881)

(assert (=> b!5262786 (= e!3273572 (h!67267 (exprs!4765 (h!67268 zl!343))))))

(declare-fun b!5262787 () Bool)

(assert (=> b!5262787 (= e!3273569 (Concat!23726 (h!67267 (exprs!4765 (h!67268 zl!343))) (generalisedConcat!550 (t!374130 (exprs!4765 (h!67268 zl!343))))))))

(declare-fun b!5262788 () Bool)

(declare-fun e!3273571 () Bool)

(assert (=> b!5262788 (= e!3273571 e!3273567)))

(declare-fun c!911063 () Bool)

(assert (=> b!5262788 (= c!911063 (isEmpty!32763 (exprs!4765 (h!67268 zl!343))))))

(declare-fun b!5262783 () Bool)

(declare-fun isConcat!342 (Regex!14881) Bool)

(assert (=> b!5262783 (= e!3273570 (isConcat!342 lt!2155571))))

(declare-fun d!1693910 () Bool)

(assert (=> d!1693910 e!3273571))

(declare-fun res!2233126 () Bool)

(assert (=> d!1693910 (=> (not res!2233126) (not e!3273571))))

(assert (=> d!1693910 (= res!2233126 (validRegex!6617 lt!2155571))))

(assert (=> d!1693910 (= lt!2155571 e!3273572)))

(declare-fun c!911062 () Bool)

(assert (=> d!1693910 (= c!911062 e!3273568)))

(declare-fun res!2233125 () Bool)

(assert (=> d!1693910 (=> (not res!2233125) (not e!3273568))))

(assert (=> d!1693910 (= res!2233125 ((_ is Cons!60819) (exprs!4765 (h!67268 zl!343))))))

(declare-fun lambda!265362 () Int)

(declare-fun forall!14293 (List!60943 Int) Bool)

(assert (=> d!1693910 (forall!14293 (exprs!4765 (h!67268 zl!343)) lambda!265362)))

(assert (=> d!1693910 (= (generalisedConcat!550 (exprs!4765 (h!67268 zl!343))) lt!2155571)))

(declare-fun b!5262789 () Bool)

(declare-fun head!11286 (List!60943) Regex!14881)

(assert (=> b!5262789 (= e!3273570 (= lt!2155571 (head!11286 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun b!5262790 () Bool)

(assert (=> b!5262790 (= e!3273572 e!3273569)))

(declare-fun c!911064 () Bool)

(assert (=> b!5262790 (= c!911064 ((_ is Cons!60819) (exprs!4765 (h!67268 zl!343))))))

(assert (= (and d!1693910 res!2233125) b!5262781))

(assert (= (and d!1693910 c!911062) b!5262786))

(assert (= (and d!1693910 (not c!911062)) b!5262790))

(assert (= (and b!5262790 c!911064) b!5262787))

(assert (= (and b!5262790 (not c!911064)) b!5262782))

(assert (= (and d!1693910 res!2233126) b!5262788))

(assert (= (and b!5262788 c!911063) b!5262784))

(assert (= (and b!5262788 (not c!911063)) b!5262785))

(assert (= (and b!5262785 c!911061) b!5262789))

(assert (= (and b!5262785 (not c!911061)) b!5262783))

(declare-fun m!6303876 () Bool)

(assert (=> b!5262783 m!6303876))

(declare-fun m!6303878 () Bool)

(assert (=> b!5262785 m!6303878))

(assert (=> b!5262785 m!6303878))

(declare-fun m!6303880 () Bool)

(assert (=> b!5262785 m!6303880))

(declare-fun m!6303882 () Bool)

(assert (=> b!5262787 m!6303882))

(declare-fun m!6303884 () Bool)

(assert (=> d!1693910 m!6303884))

(declare-fun m!6303886 () Bool)

(assert (=> d!1693910 m!6303886))

(declare-fun m!6303888 () Bool)

(assert (=> b!5262788 m!6303888))

(declare-fun m!6303890 () Bool)

(assert (=> b!5262784 m!6303890))

(assert (=> b!5262781 m!6303724))

(declare-fun m!6303892 () Bool)

(assert (=> b!5262789 m!6303892))

(assert (=> b!5262554 d!1693910))

(declare-fun d!1693924 () Bool)

(declare-fun e!3273604 () Bool)

(assert (=> d!1693924 e!3273604))

(declare-fun res!2233142 () Bool)

(assert (=> d!1693924 (=> res!2233142 e!3273604)))

(declare-fun e!3273606 () Bool)

(assert (=> d!1693924 (= res!2233142 e!3273606)))

(declare-fun res!2233141 () Bool)

(assert (=> d!1693924 (=> (not res!2233141) (not e!3273606))))

(declare-fun lt!2155579 () Option!14992)

(assert (=> d!1693924 (= res!2233141 (isDefined!11695 lt!2155579))))

(declare-fun e!3273607 () Option!14992)

(assert (=> d!1693924 (= lt!2155579 e!3273607)))

(declare-fun c!911087 () Bool)

(declare-fun e!3273605 () Bool)

(assert (=> d!1693924 (= c!911087 e!3273605)))

(declare-fun res!2233144 () Bool)

(assert (=> d!1693924 (=> (not res!2233144) (not e!3273605))))

(assert (=> d!1693924 (= res!2233144 (matchR!7066 (regOne!30274 r!7292) Nil!60818))))

(assert (=> d!1693924 (validRegex!6617 (regOne!30274 r!7292))))

(assert (=> d!1693924 (= (findConcatSeparation!1406 (regOne!30274 r!7292) (regTwo!30274 r!7292) Nil!60818 s!2326 s!2326) lt!2155579)))

(declare-fun b!5262848 () Bool)

(declare-fun lt!2155580 () Unit!153042)

(declare-fun lt!2155578 () Unit!153042)

(assert (=> b!5262848 (= lt!2155580 lt!2155578)))

(declare-fun ++!13264 (List!60942 List!60942) List!60942)

(assert (=> b!5262848 (= (++!13264 (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818)) (t!374129 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1679 (List!60942 C!30032 List!60942 List!60942) Unit!153042)

(assert (=> b!5262848 (= lt!2155578 (lemmaMoveElementToOtherListKeepsConcatEq!1679 Nil!60818 (h!67266 s!2326) (t!374129 s!2326) s!2326))))

(declare-fun e!3273608 () Option!14992)

(assert (=> b!5262848 (= e!3273608 (findConcatSeparation!1406 (regOne!30274 r!7292) (regTwo!30274 r!7292) (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818)) (t!374129 s!2326) s!2326))))

(declare-fun b!5262849 () Bool)

(declare-fun res!2233140 () Bool)

(assert (=> b!5262849 (=> (not res!2233140) (not e!3273606))))

(declare-fun get!20910 (Option!14992) tuple2!64160)

(assert (=> b!5262849 (= res!2233140 (matchR!7066 (regTwo!30274 r!7292) (_2!35383 (get!20910 lt!2155579))))))

(declare-fun b!5262850 () Bool)

(assert (=> b!5262850 (= e!3273607 e!3273608)))

(declare-fun c!911088 () Bool)

(assert (=> b!5262850 (= c!911088 ((_ is Nil!60818) s!2326))))

(declare-fun b!5262851 () Bool)

(assert (=> b!5262851 (= e!3273606 (= (++!13264 (_1!35383 (get!20910 lt!2155579)) (_2!35383 (get!20910 lt!2155579))) s!2326))))

(declare-fun b!5262852 () Bool)

(assert (=> b!5262852 (= e!3273604 (not (isDefined!11695 lt!2155579)))))

(declare-fun b!5262853 () Bool)

(assert (=> b!5262853 (= e!3273608 None!14991)))

(declare-fun b!5262854 () Bool)

(assert (=> b!5262854 (= e!3273607 (Some!14991 (tuple2!64161 Nil!60818 s!2326)))))

(declare-fun b!5262855 () Bool)

(assert (=> b!5262855 (= e!3273605 (matchR!7066 (regTwo!30274 r!7292) s!2326))))

(declare-fun b!5262856 () Bool)

(declare-fun res!2233143 () Bool)

(assert (=> b!5262856 (=> (not res!2233143) (not e!3273606))))

(assert (=> b!5262856 (= res!2233143 (matchR!7066 (regOne!30274 r!7292) (_1!35383 (get!20910 lt!2155579))))))

(assert (= (and d!1693924 res!2233144) b!5262855))

(assert (= (and d!1693924 c!911087) b!5262854))

(assert (= (and d!1693924 (not c!911087)) b!5262850))

(assert (= (and b!5262850 c!911088) b!5262853))

(assert (= (and b!5262850 (not c!911088)) b!5262848))

(assert (= (and d!1693924 res!2233141) b!5262856))

(assert (= (and b!5262856 res!2233143) b!5262849))

(assert (= (and b!5262849 res!2233140) b!5262851))

(assert (= (and d!1693924 (not res!2233142)) b!5262852))

(declare-fun m!6303920 () Bool)

(assert (=> d!1693924 m!6303920))

(declare-fun m!6303922 () Bool)

(assert (=> d!1693924 m!6303922))

(declare-fun m!6303924 () Bool)

(assert (=> d!1693924 m!6303924))

(assert (=> b!5262852 m!6303920))

(declare-fun m!6303926 () Bool)

(assert (=> b!5262851 m!6303926))

(declare-fun m!6303928 () Bool)

(assert (=> b!5262851 m!6303928))

(assert (=> b!5262849 m!6303926))

(declare-fun m!6303930 () Bool)

(assert (=> b!5262849 m!6303930))

(declare-fun m!6303932 () Bool)

(assert (=> b!5262848 m!6303932))

(assert (=> b!5262848 m!6303932))

(declare-fun m!6303934 () Bool)

(assert (=> b!5262848 m!6303934))

(declare-fun m!6303936 () Bool)

(assert (=> b!5262848 m!6303936))

(assert (=> b!5262848 m!6303932))

(declare-fun m!6303938 () Bool)

(assert (=> b!5262848 m!6303938))

(assert (=> b!5262856 m!6303926))

(declare-fun m!6303940 () Bool)

(assert (=> b!5262856 m!6303940))

(declare-fun m!6303942 () Bool)

(assert (=> b!5262855 m!6303942))

(assert (=> b!5262535 d!1693924))

(declare-fun d!1693934 () Bool)

(declare-fun choose!39264 (Int) Bool)

(assert (=> d!1693934 (= (Exists!2062 lambda!265340) (choose!39264 lambda!265340))))

(declare-fun bs!1220016 () Bool)

(assert (= bs!1220016 d!1693934))

(declare-fun m!6303944 () Bool)

(assert (=> bs!1220016 m!6303944))

(assert (=> b!5262535 d!1693934))

(declare-fun d!1693936 () Bool)

(assert (=> d!1693936 (= (Exists!2062 lambda!265339) (choose!39264 lambda!265339))))

(declare-fun bs!1220017 () Bool)

(assert (= bs!1220017 d!1693936))

(declare-fun m!6303946 () Bool)

(assert (=> bs!1220017 m!6303946))

(assert (=> b!5262535 d!1693936))

(declare-fun bs!1220018 () Bool)

(declare-fun d!1693938 () Bool)

(assert (= bs!1220018 (and d!1693938 b!5262535)))

(declare-fun lambda!265372 () Int)

(assert (=> bs!1220018 (= lambda!265372 lambda!265339)))

(assert (=> bs!1220018 (not (= lambda!265372 lambda!265340))))

(assert (=> d!1693938 true))

(assert (=> d!1693938 true))

(assert (=> d!1693938 true))

(assert (=> d!1693938 (= (isDefined!11695 (findConcatSeparation!1406 (regOne!30274 r!7292) (regTwo!30274 r!7292) Nil!60818 s!2326 s!2326)) (Exists!2062 lambda!265372))))

(declare-fun lt!2155583 () Unit!153042)

(declare-fun choose!39265 (Regex!14881 Regex!14881 List!60942) Unit!153042)

(assert (=> d!1693938 (= lt!2155583 (choose!39265 (regOne!30274 r!7292) (regTwo!30274 r!7292) s!2326))))

(assert (=> d!1693938 (validRegex!6617 (regOne!30274 r!7292))))

(assert (=> d!1693938 (= (lemmaFindConcatSeparationEquivalentToExists!1170 (regOne!30274 r!7292) (regTwo!30274 r!7292) s!2326) lt!2155583)))

(declare-fun bs!1220019 () Bool)

(assert (= bs!1220019 d!1693938))

(declare-fun m!6303948 () Bool)

(assert (=> bs!1220019 m!6303948))

(assert (=> bs!1220019 m!6303710))

(assert (=> bs!1220019 m!6303924))

(assert (=> bs!1220019 m!6303710))

(assert (=> bs!1220019 m!6303712))

(declare-fun m!6303950 () Bool)

(assert (=> bs!1220019 m!6303950))

(assert (=> b!5262535 d!1693938))

(declare-fun bs!1220027 () Bool)

(declare-fun d!1693940 () Bool)

(assert (= bs!1220027 (and d!1693940 b!5262535)))

(declare-fun lambda!265379 () Int)

(assert (=> bs!1220027 (= lambda!265379 lambda!265339)))

(assert (=> bs!1220027 (not (= lambda!265379 lambda!265340))))

(declare-fun bs!1220028 () Bool)

(assert (= bs!1220028 (and d!1693940 d!1693938)))

(assert (=> bs!1220028 (= lambda!265379 lambda!265372)))

(assert (=> d!1693940 true))

(assert (=> d!1693940 true))

(assert (=> d!1693940 true))

(declare-fun lambda!265380 () Int)

(assert (=> bs!1220027 (not (= lambda!265380 lambda!265339))))

(assert (=> bs!1220027 (= lambda!265380 lambda!265340)))

(assert (=> bs!1220028 (not (= lambda!265380 lambda!265372))))

(declare-fun bs!1220029 () Bool)

(assert (= bs!1220029 d!1693940))

(assert (=> bs!1220029 (not (= lambda!265380 lambda!265379))))

(assert (=> d!1693940 true))

(assert (=> d!1693940 true))

(assert (=> d!1693940 true))

(assert (=> d!1693940 (= (Exists!2062 lambda!265379) (Exists!2062 lambda!265380))))

(declare-fun lt!2155586 () Unit!153042)

(declare-fun choose!39266 (Regex!14881 Regex!14881 List!60942) Unit!153042)

(assert (=> d!1693940 (= lt!2155586 (choose!39266 (regOne!30274 r!7292) (regTwo!30274 r!7292) s!2326))))

(assert (=> d!1693940 (validRegex!6617 (regOne!30274 r!7292))))

(assert (=> d!1693940 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!716 (regOne!30274 r!7292) (regTwo!30274 r!7292) s!2326) lt!2155586)))

(declare-fun m!6303960 () Bool)

(assert (=> bs!1220029 m!6303960))

(declare-fun m!6303962 () Bool)

(assert (=> bs!1220029 m!6303962))

(declare-fun m!6303964 () Bool)

(assert (=> bs!1220029 m!6303964))

(assert (=> bs!1220029 m!6303924))

(assert (=> b!5262535 d!1693940))

(declare-fun d!1693944 () Bool)

(declare-fun isEmpty!32768 (Option!14992) Bool)

(assert (=> d!1693944 (= (isDefined!11695 (findConcatSeparation!1406 (regOne!30274 r!7292) (regTwo!30274 r!7292) Nil!60818 s!2326 s!2326)) (not (isEmpty!32768 (findConcatSeparation!1406 (regOne!30274 r!7292) (regTwo!30274 r!7292) Nil!60818 s!2326 s!2326))))))

(declare-fun bs!1220030 () Bool)

(assert (= bs!1220030 d!1693944))

(assert (=> bs!1220030 m!6303710))

(declare-fun m!6303966 () Bool)

(assert (=> bs!1220030 m!6303966))

(assert (=> b!5262535 d!1693944))

(declare-fun d!1693946 () Bool)

(assert (=> d!1693946 (= (isEmpty!32763 (t!374130 (exprs!4765 (h!67268 zl!343)))) ((_ is Nil!60819) (t!374130 (exprs!4765 (h!67268 zl!343)))))))

(assert (=> b!5262545 d!1693946))

(declare-fun d!1693948 () Bool)

(assert (=> d!1693948 (= (isEmpty!32764 (t!374131 zl!343)) ((_ is Nil!60820) (t!374131 zl!343)))))

(assert (=> b!5262555 d!1693948))

(declare-fun bs!1220031 () Bool)

(declare-fun d!1693950 () Bool)

(assert (= bs!1220031 (and d!1693950 d!1693910)))

(declare-fun lambda!265383 () Int)

(assert (=> bs!1220031 (= lambda!265383 lambda!265362)))

(assert (=> d!1693950 (= (inv!80449 (h!67268 zl!343)) (forall!14293 (exprs!4765 (h!67268 zl!343)) lambda!265383))))

(declare-fun bs!1220032 () Bool)

(assert (= bs!1220032 d!1693950))

(declare-fun m!6303968 () Bool)

(assert (=> bs!1220032 m!6303968))

(assert (=> b!5262543 d!1693950))

(declare-fun b!5263000 () Bool)

(declare-fun c!911134 () Bool)

(assert (=> b!5263000 (= c!911134 ((_ is Star!14881) (regOne!30274 (regOne!30274 r!7292))))))

(declare-fun e!3273690 () (InoxSet Context!8530))

(declare-fun e!3273689 () (InoxSet Context!8530))

(assert (=> b!5263000 (= e!3273690 e!3273689)))

(declare-fun b!5263001 () Bool)

(declare-fun c!911131 () Bool)

(declare-fun e!3273691 () Bool)

(assert (=> b!5263001 (= c!911131 e!3273691)))

(declare-fun res!2233206 () Bool)

(assert (=> b!5263001 (=> (not res!2233206) (not e!3273691))))

(assert (=> b!5263001 (= res!2233206 ((_ is Concat!23726) (regOne!30274 (regOne!30274 r!7292))))))

(declare-fun e!3273692 () (InoxSet Context!8530))

(declare-fun e!3273688 () (InoxSet Context!8530))

(assert (=> b!5263001 (= e!3273692 e!3273688)))

(declare-fun bm!373316 () Bool)

(declare-fun call!373321 () (InoxSet Context!8530))

(declare-fun call!373326 () (InoxSet Context!8530))

(assert (=> bm!373316 (= call!373321 call!373326)))

(declare-fun bm!373318 () Bool)

(declare-fun call!373324 () (InoxSet Context!8530))

(assert (=> bm!373318 (= call!373324 call!373321)))

(declare-fun call!373325 () List!60943)

(declare-fun c!911132 () Bool)

(declare-fun bm!373319 () Bool)

(declare-fun call!373323 () (InoxSet Context!8530))

(assert (=> bm!373319 (= call!373323 (derivationStepZipperDown!329 (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292)))) (ite c!911132 (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (Context!8531 call!373325)) (h!67266 s!2326)))))

(declare-fun b!5263002 () Bool)

(assert (=> b!5263002 (= e!3273691 (nullable!5050 (regOne!30274 (regOne!30274 (regOne!30274 r!7292)))))))

(declare-fun b!5263003 () Bool)

(assert (=> b!5263003 (= e!3273688 ((_ map or) call!373323 call!373321))))

(declare-fun b!5263004 () Bool)

(declare-fun e!3273687 () (InoxSet Context!8530))

(assert (=> b!5263004 (= e!3273687 e!3273692)))

(assert (=> b!5263004 (= c!911132 ((_ is Union!14881) (regOne!30274 (regOne!30274 r!7292))))))

(declare-fun b!5263005 () Bool)

(assert (=> b!5263005 (= e!3273690 call!373324)))

(declare-fun bm!373320 () Bool)

(declare-fun call!373322 () List!60943)

(declare-fun c!911130 () Bool)

(assert (=> bm!373320 (= call!373326 (derivationStepZipperDown!329 (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292)))))) (ite (or c!911132 c!911131) (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (Context!8531 call!373322)) (h!67266 s!2326)))))

(declare-fun bm!373317 () Bool)

(assert (=> bm!373317 (= call!373322 call!373325)))

(declare-fun d!1693952 () Bool)

(declare-fun c!911133 () Bool)

(assert (=> d!1693952 (= c!911133 (and ((_ is ElementMatch!14881) (regOne!30274 (regOne!30274 r!7292))) (= (c!910993 (regOne!30274 (regOne!30274 r!7292))) (h!67266 s!2326))))))

(assert (=> d!1693952 (= (derivationStepZipperDown!329 (regOne!30274 (regOne!30274 r!7292)) (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (h!67266 s!2326)) e!3273687)))

(declare-fun b!5263006 () Bool)

(assert (=> b!5263006 (= e!3273689 call!373324)))

(declare-fun bm!373321 () Bool)

(declare-fun $colon$colon!1334 (List!60943 Regex!14881) List!60943)

(assert (=> bm!373321 (= call!373325 ($colon$colon!1334 (exprs!4765 (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343)))))) (ite (or c!911131 c!911130) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 r!7292)))))))

(declare-fun b!5263007 () Bool)

(assert (=> b!5263007 (= e!3273692 ((_ map or) call!373326 call!373323))))

(declare-fun b!5263008 () Bool)

(assert (=> b!5263008 (= e!3273689 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263009 () Bool)

(assert (=> b!5263009 (= e!3273688 e!3273690)))

(assert (=> b!5263009 (= c!911130 ((_ is Concat!23726) (regOne!30274 (regOne!30274 r!7292))))))

(declare-fun b!5263010 () Bool)

(assert (=> b!5263010 (= e!3273687 (store ((as const (Array Context!8530 Bool)) false) (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) true))))

(assert (= (and d!1693952 c!911133) b!5263010))

(assert (= (and d!1693952 (not c!911133)) b!5263004))

(assert (= (and b!5263004 c!911132) b!5263007))

(assert (= (and b!5263004 (not c!911132)) b!5263001))

(assert (= (and b!5263001 res!2233206) b!5263002))

(assert (= (and b!5263001 c!911131) b!5263003))

(assert (= (and b!5263001 (not c!911131)) b!5263009))

(assert (= (and b!5263009 c!911130) b!5263005))

(assert (= (and b!5263009 (not c!911130)) b!5263000))

(assert (= (and b!5263000 c!911134) b!5263006))

(assert (= (and b!5263000 (not c!911134)) b!5263008))

(assert (= (or b!5263005 b!5263006) bm!373317))

(assert (= (or b!5263005 b!5263006) bm!373318))

(assert (= (or b!5263003 bm!373317) bm!373321))

(assert (= (or b!5263003 bm!373318) bm!373316))

(assert (= (or b!5263007 b!5263003) bm!373319))

(assert (= (or b!5263007 bm!373316) bm!373320))

(declare-fun m!6304008 () Bool)

(assert (=> bm!373321 m!6304008))

(declare-fun m!6304010 () Bool)

(assert (=> b!5263010 m!6304010))

(declare-fun m!6304012 () Bool)

(assert (=> b!5263002 m!6304012))

(declare-fun m!6304014 () Bool)

(assert (=> bm!373319 m!6304014))

(declare-fun m!6304016 () Bool)

(assert (=> bm!373320 m!6304016))

(assert (=> b!5262553 d!1693952))

(declare-fun b!5263012 () Bool)

(declare-fun c!911139 () Bool)

(assert (=> b!5263012 (= c!911139 ((_ is Star!14881) (regTwo!30274 (regOne!30274 r!7292))))))

(declare-fun e!3273697 () (InoxSet Context!8530))

(declare-fun e!3273696 () (InoxSet Context!8530))

(assert (=> b!5263012 (= e!3273697 e!3273696)))

(declare-fun b!5263013 () Bool)

(declare-fun c!911136 () Bool)

(declare-fun e!3273698 () Bool)

(assert (=> b!5263013 (= c!911136 e!3273698)))

(declare-fun res!2233208 () Bool)

(assert (=> b!5263013 (=> (not res!2233208) (not e!3273698))))

(assert (=> b!5263013 (= res!2233208 ((_ is Concat!23726) (regTwo!30274 (regOne!30274 r!7292))))))

(declare-fun e!3273699 () (InoxSet Context!8530))

(declare-fun e!3273695 () (InoxSet Context!8530))

(assert (=> b!5263013 (= e!3273699 e!3273695)))

(declare-fun bm!373322 () Bool)

(declare-fun call!373327 () (InoxSet Context!8530))

(declare-fun call!373332 () (InoxSet Context!8530))

(assert (=> bm!373322 (= call!373327 call!373332)))

(declare-fun bm!373324 () Bool)

(declare-fun call!373330 () (InoxSet Context!8530))

(assert (=> bm!373324 (= call!373330 call!373327)))

(declare-fun call!373329 () (InoxSet Context!8530))

(declare-fun bm!373325 () Bool)

(declare-fun call!373331 () List!60943)

(declare-fun c!911137 () Bool)

(assert (=> bm!373325 (= call!373329 (derivationStepZipperDown!329 (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292)))) (ite c!911137 lt!2155536 (Context!8531 call!373331)) (h!67266 s!2326)))))

(declare-fun b!5263014 () Bool)

(assert (=> b!5263014 (= e!3273698 (nullable!5050 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292)))))))

(declare-fun b!5263015 () Bool)

(assert (=> b!5263015 (= e!3273695 ((_ map or) call!373329 call!373327))))

(declare-fun b!5263016 () Bool)

(declare-fun e!3273694 () (InoxSet Context!8530))

(assert (=> b!5263016 (= e!3273694 e!3273699)))

(assert (=> b!5263016 (= c!911137 ((_ is Union!14881) (regTwo!30274 (regOne!30274 r!7292))))))

(declare-fun b!5263017 () Bool)

(assert (=> b!5263017 (= e!3273697 call!373330)))

(declare-fun call!373328 () List!60943)

(declare-fun bm!373326 () Bool)

(declare-fun c!911135 () Bool)

(assert (=> bm!373326 (= call!373332 (derivationStepZipperDown!329 (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292)))))) (ite (or c!911137 c!911136) lt!2155536 (Context!8531 call!373328)) (h!67266 s!2326)))))

(declare-fun bm!373323 () Bool)

(assert (=> bm!373323 (= call!373328 call!373331)))

(declare-fun d!1693964 () Bool)

(declare-fun c!911138 () Bool)

(assert (=> d!1693964 (= c!911138 (and ((_ is ElementMatch!14881) (regTwo!30274 (regOne!30274 r!7292))) (= (c!910993 (regTwo!30274 (regOne!30274 r!7292))) (h!67266 s!2326))))))

(assert (=> d!1693964 (= (derivationStepZipperDown!329 (regTwo!30274 (regOne!30274 r!7292)) lt!2155536 (h!67266 s!2326)) e!3273694)))

(declare-fun b!5263018 () Bool)

(assert (=> b!5263018 (= e!3273696 call!373330)))

(declare-fun bm!373327 () Bool)

(assert (=> bm!373327 (= call!373331 ($colon$colon!1334 (exprs!4765 lt!2155536) (ite (or c!911136 c!911135) (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 r!7292)))))))

(declare-fun b!5263019 () Bool)

(assert (=> b!5263019 (= e!3273699 ((_ map or) call!373332 call!373329))))

(declare-fun b!5263020 () Bool)

(assert (=> b!5263020 (= e!3273696 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263021 () Bool)

(assert (=> b!5263021 (= e!3273695 e!3273697)))

(assert (=> b!5263021 (= c!911135 ((_ is Concat!23726) (regTwo!30274 (regOne!30274 r!7292))))))

(declare-fun b!5263022 () Bool)

(assert (=> b!5263022 (= e!3273694 (store ((as const (Array Context!8530 Bool)) false) lt!2155536 true))))

(assert (= (and d!1693964 c!911138) b!5263022))

(assert (= (and d!1693964 (not c!911138)) b!5263016))

(assert (= (and b!5263016 c!911137) b!5263019))

(assert (= (and b!5263016 (not c!911137)) b!5263013))

(assert (= (and b!5263013 res!2233208) b!5263014))

(assert (= (and b!5263013 c!911136) b!5263015))

(assert (= (and b!5263013 (not c!911136)) b!5263021))

(assert (= (and b!5263021 c!911135) b!5263017))

(assert (= (and b!5263021 (not c!911135)) b!5263012))

(assert (= (and b!5263012 c!911139) b!5263018))

(assert (= (and b!5263012 (not c!911139)) b!5263020))

(assert (= (or b!5263017 b!5263018) bm!373323))

(assert (= (or b!5263017 b!5263018) bm!373324))

(assert (= (or b!5263015 bm!373323) bm!373327))

(assert (= (or b!5263015 bm!373324) bm!373322))

(assert (= (or b!5263019 b!5263015) bm!373325))

(assert (= (or b!5263019 bm!373322) bm!373326))

(declare-fun m!6304018 () Bool)

(assert (=> bm!373327 m!6304018))

(declare-fun m!6304020 () Bool)

(assert (=> b!5263022 m!6304020))

(declare-fun m!6304022 () Bool)

(assert (=> b!5263014 m!6304022))

(declare-fun m!6304024 () Bool)

(assert (=> bm!373325 m!6304024))

(declare-fun m!6304026 () Bool)

(assert (=> bm!373326 m!6304026))

(assert (=> b!5262553 d!1693964))

(declare-fun bs!1220041 () Bool)

(declare-fun b!5263134 () Bool)

(assert (= bs!1220041 (and b!5263134 b!5262535)))

(declare-fun lambda!265389 () Int)

(assert (=> bs!1220041 (not (= lambda!265389 lambda!265339))))

(declare-fun bs!1220042 () Bool)

(assert (= bs!1220042 (and b!5263134 d!1693940)))

(assert (=> bs!1220042 (not (= lambda!265389 lambda!265380))))

(declare-fun bs!1220043 () Bool)

(assert (= bs!1220043 (and b!5263134 d!1693938)))

(assert (=> bs!1220043 (not (= lambda!265389 lambda!265372))))

(assert (=> bs!1220042 (not (= lambda!265389 lambda!265379))))

(assert (=> bs!1220041 (not (= lambda!265389 lambda!265340))))

(assert (=> b!5263134 true))

(assert (=> b!5263134 true))

(declare-fun bs!1220044 () Bool)

(declare-fun b!5263135 () Bool)

(assert (= bs!1220044 (and b!5263135 b!5262535)))

(declare-fun lambda!265390 () Int)

(assert (=> bs!1220044 (not (= lambda!265390 lambda!265339))))

(declare-fun bs!1220045 () Bool)

(assert (= bs!1220045 (and b!5263135 d!1693940)))

(assert (=> bs!1220045 (= lambda!265390 lambda!265380)))

(declare-fun bs!1220046 () Bool)

(assert (= bs!1220046 (and b!5263135 d!1693938)))

(assert (=> bs!1220046 (not (= lambda!265390 lambda!265372))))

(declare-fun bs!1220047 () Bool)

(assert (= bs!1220047 (and b!5263135 b!5263134)))

(assert (=> bs!1220047 (not (= lambda!265390 lambda!265389))))

(assert (=> bs!1220045 (not (= lambda!265390 lambda!265379))))

(assert (=> bs!1220044 (= lambda!265390 lambda!265340)))

(assert (=> b!5263135 true))

(assert (=> b!5263135 true))

(declare-fun b!5263125 () Bool)

(declare-fun c!911153 () Bool)

(assert (=> b!5263125 (= c!911153 ((_ is Union!14881) r!7292))))

(declare-fun e!3273759 () Bool)

(declare-fun e!3273757 () Bool)

(assert (=> b!5263125 (= e!3273759 e!3273757)))

(declare-fun b!5263126 () Bool)

(declare-fun e!3273754 () Bool)

(assert (=> b!5263126 (= e!3273757 e!3273754)))

(declare-fun c!911155 () Bool)

(assert (=> b!5263126 (= c!911155 ((_ is Star!14881) r!7292))))

(declare-fun b!5263127 () Bool)

(assert (=> b!5263127 (= e!3273759 (= s!2326 (Cons!60818 (c!910993 r!7292) Nil!60818)))))

(declare-fun call!373340 () Bool)

(declare-fun bm!373335 () Bool)

(assert (=> bm!373335 (= call!373340 (Exists!2062 (ite c!911155 lambda!265389 lambda!265390)))))

(declare-fun b!5263128 () Bool)

(declare-fun e!3273753 () Bool)

(assert (=> b!5263128 (= e!3273757 e!3273753)))

(declare-fun res!2233235 () Bool)

(assert (=> b!5263128 (= res!2233235 (matchRSpec!1984 (regOne!30275 r!7292) s!2326))))

(assert (=> b!5263128 (=> res!2233235 e!3273753)))

(declare-fun b!5263129 () Bool)

(declare-fun e!3273758 () Bool)

(declare-fun e!3273755 () Bool)

(assert (=> b!5263129 (= e!3273758 e!3273755)))

(declare-fun res!2233233 () Bool)

(assert (=> b!5263129 (= res!2233233 (not ((_ is EmptyLang!14881) r!7292)))))

(assert (=> b!5263129 (=> (not res!2233233) (not e!3273755))))

(declare-fun d!1693966 () Bool)

(declare-fun c!911152 () Bool)

(assert (=> d!1693966 (= c!911152 ((_ is EmptyExpr!14881) r!7292))))

(assert (=> d!1693966 (= (matchRSpec!1984 r!7292 s!2326) e!3273758)))

(declare-fun b!5263130 () Bool)

(declare-fun res!2233234 () Bool)

(declare-fun e!3273756 () Bool)

(assert (=> b!5263130 (=> res!2233234 e!3273756)))

(declare-fun call!373341 () Bool)

(assert (=> b!5263130 (= res!2233234 call!373341)))

(assert (=> b!5263130 (= e!3273754 e!3273756)))

(declare-fun bm!373336 () Bool)

(assert (=> bm!373336 (= call!373341 (isEmpty!32766 s!2326))))

(declare-fun b!5263131 () Bool)

(assert (=> b!5263131 (= e!3273758 call!373341)))

(declare-fun b!5263132 () Bool)

(assert (=> b!5263132 (= e!3273753 (matchRSpec!1984 (regTwo!30275 r!7292) s!2326))))

(declare-fun b!5263133 () Bool)

(declare-fun c!911154 () Bool)

(assert (=> b!5263133 (= c!911154 ((_ is ElementMatch!14881) r!7292))))

(assert (=> b!5263133 (= e!3273755 e!3273759)))

(assert (=> b!5263134 (= e!3273756 call!373340)))

(assert (=> b!5263135 (= e!3273754 call!373340)))

(assert (= (and d!1693966 c!911152) b!5263131))

(assert (= (and d!1693966 (not c!911152)) b!5263129))

(assert (= (and b!5263129 res!2233233) b!5263133))

(assert (= (and b!5263133 c!911154) b!5263127))

(assert (= (and b!5263133 (not c!911154)) b!5263125))

(assert (= (and b!5263125 c!911153) b!5263128))

(assert (= (and b!5263125 (not c!911153)) b!5263126))

(assert (= (and b!5263128 (not res!2233235)) b!5263132))

(assert (= (and b!5263126 c!911155) b!5263130))

(assert (= (and b!5263126 (not c!911155)) b!5263135))

(assert (= (and b!5263130 (not res!2233234)) b!5263134))

(assert (= (or b!5263134 b!5263135) bm!373335))

(assert (= (or b!5263131 b!5263130) bm!373336))

(declare-fun m!6304056 () Bool)

(assert (=> bm!373335 m!6304056))

(declare-fun m!6304058 () Bool)

(assert (=> b!5263128 m!6304058))

(declare-fun m!6304060 () Bool)

(assert (=> bm!373336 m!6304060))

(declare-fun m!6304062 () Bool)

(assert (=> b!5263132 m!6304062))

(assert (=> b!5262544 d!1693966))

(declare-fun b!5263164 () Bool)

(declare-fun e!3273779 () Bool)

(assert (=> b!5263164 (= e!3273779 (= (head!11285 s!2326) (c!910993 r!7292)))))

(declare-fun b!5263165 () Bool)

(declare-fun res!2233258 () Bool)

(declare-fun e!3273776 () Bool)

(assert (=> b!5263165 (=> res!2233258 e!3273776)))

(assert (=> b!5263165 (= res!2233258 e!3273779)))

(declare-fun res!2233256 () Bool)

(assert (=> b!5263165 (=> (not res!2233256) (not e!3273779))))

(declare-fun lt!2155604 () Bool)

(assert (=> b!5263165 (= res!2233256 lt!2155604)))

(declare-fun b!5263166 () Bool)

(declare-fun e!3273780 () Bool)

(assert (=> b!5263166 (= e!3273780 (nullable!5050 r!7292))))

(declare-fun b!5263167 () Bool)

(declare-fun e!3273775 () Bool)

(assert (=> b!5263167 (= e!3273775 (not (= (head!11285 s!2326) (c!910993 r!7292))))))

(declare-fun b!5263168 () Bool)

(declare-fun derivativeStep!4105 (Regex!14881 C!30032) Regex!14881)

(assert (=> b!5263168 (= e!3273780 (matchR!7066 (derivativeStep!4105 r!7292 (head!11285 s!2326)) (tail!10382 s!2326)))))

(declare-fun b!5263169 () Bool)

(declare-fun e!3273777 () Bool)

(declare-fun call!373344 () Bool)

(assert (=> b!5263169 (= e!3273777 (= lt!2155604 call!373344))))

(declare-fun b!5263171 () Bool)

(declare-fun e!3273778 () Bool)

(assert (=> b!5263171 (= e!3273778 (not lt!2155604))))

(declare-fun b!5263172 () Bool)

(assert (=> b!5263172 (= e!3273777 e!3273778)))

(declare-fun c!911162 () Bool)

(assert (=> b!5263172 (= c!911162 ((_ is EmptyLang!14881) r!7292))))

(declare-fun b!5263173 () Bool)

(declare-fun res!2233254 () Bool)

(assert (=> b!5263173 (=> (not res!2233254) (not e!3273779))))

(assert (=> b!5263173 (= res!2233254 (not call!373344))))

(declare-fun b!5263174 () Bool)

(declare-fun e!3273774 () Bool)

(assert (=> b!5263174 (= e!3273776 e!3273774)))

(declare-fun res!2233255 () Bool)

(assert (=> b!5263174 (=> (not res!2233255) (not e!3273774))))

(assert (=> b!5263174 (= res!2233255 (not lt!2155604))))

(declare-fun bm!373339 () Bool)

(assert (=> bm!373339 (= call!373344 (isEmpty!32766 s!2326))))

(declare-fun b!5263175 () Bool)

(declare-fun res!2233257 () Bool)

(assert (=> b!5263175 (=> res!2233257 e!3273775)))

(assert (=> b!5263175 (= res!2233257 (not (isEmpty!32766 (tail!10382 s!2326))))))

(declare-fun b!5263176 () Bool)

(assert (=> b!5263176 (= e!3273774 e!3273775)))

(declare-fun res!2233253 () Bool)

(assert (=> b!5263176 (=> res!2233253 e!3273775)))

(assert (=> b!5263176 (= res!2233253 call!373344)))

(declare-fun b!5263177 () Bool)

(declare-fun res!2233252 () Bool)

(assert (=> b!5263177 (=> (not res!2233252) (not e!3273779))))

(assert (=> b!5263177 (= res!2233252 (isEmpty!32766 (tail!10382 s!2326)))))

(declare-fun b!5263170 () Bool)

(declare-fun res!2233259 () Bool)

(assert (=> b!5263170 (=> res!2233259 e!3273776)))

(assert (=> b!5263170 (= res!2233259 (not ((_ is ElementMatch!14881) r!7292)))))

(assert (=> b!5263170 (= e!3273778 e!3273776)))

(declare-fun d!1693980 () Bool)

(assert (=> d!1693980 e!3273777))

(declare-fun c!911163 () Bool)

(assert (=> d!1693980 (= c!911163 ((_ is EmptyExpr!14881) r!7292))))

(assert (=> d!1693980 (= lt!2155604 e!3273780)))

(declare-fun c!911164 () Bool)

(assert (=> d!1693980 (= c!911164 (isEmpty!32766 s!2326))))

(assert (=> d!1693980 (validRegex!6617 r!7292)))

(assert (=> d!1693980 (= (matchR!7066 r!7292 s!2326) lt!2155604)))

(assert (= (and d!1693980 c!911164) b!5263166))

(assert (= (and d!1693980 (not c!911164)) b!5263168))

(assert (= (and d!1693980 c!911163) b!5263169))

(assert (= (and d!1693980 (not c!911163)) b!5263172))

(assert (= (and b!5263172 c!911162) b!5263171))

(assert (= (and b!5263172 (not c!911162)) b!5263170))

(assert (= (and b!5263170 (not res!2233259)) b!5263165))

(assert (= (and b!5263165 res!2233256) b!5263173))

(assert (= (and b!5263173 res!2233254) b!5263177))

(assert (= (and b!5263177 res!2233252) b!5263164))

(assert (= (and b!5263165 (not res!2233258)) b!5263174))

(assert (= (and b!5263174 res!2233255) b!5263176))

(assert (= (and b!5263176 (not res!2233253)) b!5263175))

(assert (= (and b!5263175 (not res!2233257)) b!5263167))

(assert (= (or b!5263169 b!5263173 b!5263176) bm!373339))

(declare-fun m!6304064 () Bool)

(assert (=> b!5263166 m!6304064))

(assert (=> bm!373339 m!6304060))

(declare-fun m!6304066 () Bool)

(assert (=> b!5263177 m!6304066))

(assert (=> b!5263177 m!6304066))

(declare-fun m!6304068 () Bool)

(assert (=> b!5263177 m!6304068))

(declare-fun m!6304070 () Bool)

(assert (=> b!5263164 m!6304070))

(assert (=> d!1693980 m!6304060))

(assert (=> d!1693980 m!6303702))

(assert (=> b!5263167 m!6304070))

(assert (=> b!5263168 m!6304070))

(assert (=> b!5263168 m!6304070))

(declare-fun m!6304072 () Bool)

(assert (=> b!5263168 m!6304072))

(assert (=> b!5263168 m!6304066))

(assert (=> b!5263168 m!6304072))

(assert (=> b!5263168 m!6304066))

(declare-fun m!6304074 () Bool)

(assert (=> b!5263168 m!6304074))

(assert (=> b!5263175 m!6304066))

(assert (=> b!5263175 m!6304066))

(assert (=> b!5263175 m!6304068))

(assert (=> b!5262544 d!1693980))

(declare-fun d!1693982 () Bool)

(assert (=> d!1693982 (= (matchR!7066 r!7292 s!2326) (matchRSpec!1984 r!7292 s!2326))))

(declare-fun lt!2155607 () Unit!153042)

(declare-fun choose!39268 (Regex!14881 List!60942) Unit!153042)

(assert (=> d!1693982 (= lt!2155607 (choose!39268 r!7292 s!2326))))

(assert (=> d!1693982 (validRegex!6617 r!7292)))

(assert (=> d!1693982 (= (mainMatchTheorem!1984 r!7292 s!2326) lt!2155607)))

(declare-fun bs!1220048 () Bool)

(assert (= bs!1220048 d!1693982))

(assert (=> bs!1220048 m!6303706))

(assert (=> bs!1220048 m!6303704))

(declare-fun m!6304076 () Bool)

(assert (=> bs!1220048 m!6304076))

(assert (=> bs!1220048 m!6303702))

(assert (=> b!5262544 d!1693982))

(declare-fun d!1693984 () Bool)

(declare-fun lt!2155610 () Regex!14881)

(assert (=> d!1693984 (validRegex!6617 lt!2155610)))

(assert (=> d!1693984 (= lt!2155610 (generalisedUnion!810 (unfocusZipperList!323 zl!343)))))

(assert (=> d!1693984 (= (unfocusZipper!623 zl!343) lt!2155610)))

(declare-fun bs!1220049 () Bool)

(assert (= bs!1220049 d!1693984))

(declare-fun m!6304078 () Bool)

(assert (=> bs!1220049 m!6304078))

(assert (=> bs!1220049 m!6303692))

(assert (=> bs!1220049 m!6303692))

(assert (=> bs!1220049 m!6303694))

(assert (=> b!5262547 d!1693984))

(declare-fun bs!1220050 () Bool)

(declare-fun d!1693986 () Bool)

(assert (= bs!1220050 (and d!1693986 d!1693910)))

(declare-fun lambda!265393 () Int)

(assert (=> bs!1220050 (= lambda!265393 lambda!265362)))

(declare-fun bs!1220051 () Bool)

(assert (= bs!1220051 (and d!1693986 d!1693950)))

(assert (=> bs!1220051 (= lambda!265393 lambda!265383)))

(declare-fun b!5263198 () Bool)

(declare-fun e!3273798 () Bool)

(assert (=> b!5263198 (= e!3273798 (isEmpty!32763 (t!374130 (unfocusZipperList!323 zl!343))))))

(declare-fun b!5263199 () Bool)

(declare-fun e!3273795 () Regex!14881)

(assert (=> b!5263199 (= e!3273795 EmptyLang!14881)))

(declare-fun e!3273797 () Bool)

(assert (=> d!1693986 e!3273797))

(declare-fun res!2233265 () Bool)

(assert (=> d!1693986 (=> (not res!2233265) (not e!3273797))))

(declare-fun lt!2155613 () Regex!14881)

(assert (=> d!1693986 (= res!2233265 (validRegex!6617 lt!2155613))))

(declare-fun e!3273794 () Regex!14881)

(assert (=> d!1693986 (= lt!2155613 e!3273794)))

(declare-fun c!911175 () Bool)

(assert (=> d!1693986 (= c!911175 e!3273798)))

(declare-fun res!2233264 () Bool)

(assert (=> d!1693986 (=> (not res!2233264) (not e!3273798))))

(assert (=> d!1693986 (= res!2233264 ((_ is Cons!60819) (unfocusZipperList!323 zl!343)))))

(assert (=> d!1693986 (forall!14293 (unfocusZipperList!323 zl!343) lambda!265393)))

(assert (=> d!1693986 (= (generalisedUnion!810 (unfocusZipperList!323 zl!343)) lt!2155613)))

(declare-fun b!5263200 () Bool)

(declare-fun e!3273793 () Bool)

(declare-fun isEmptyLang!827 (Regex!14881) Bool)

(assert (=> b!5263200 (= e!3273793 (isEmptyLang!827 lt!2155613))))

(declare-fun b!5263201 () Bool)

(assert (=> b!5263201 (= e!3273794 (h!67267 (unfocusZipperList!323 zl!343)))))

(declare-fun b!5263202 () Bool)

(declare-fun e!3273796 () Bool)

(assert (=> b!5263202 (= e!3273793 e!3273796)))

(declare-fun c!911173 () Bool)

(assert (=> b!5263202 (= c!911173 (isEmpty!32763 (tail!10383 (unfocusZipperList!323 zl!343))))))

(declare-fun b!5263203 () Bool)

(assert (=> b!5263203 (= e!3273797 e!3273793)))

(declare-fun c!911176 () Bool)

(assert (=> b!5263203 (= c!911176 (isEmpty!32763 (unfocusZipperList!323 zl!343)))))

(declare-fun b!5263204 () Bool)

(assert (=> b!5263204 (= e!3273795 (Union!14881 (h!67267 (unfocusZipperList!323 zl!343)) (generalisedUnion!810 (t!374130 (unfocusZipperList!323 zl!343)))))))

(declare-fun b!5263205 () Bool)

(declare-fun isUnion!259 (Regex!14881) Bool)

(assert (=> b!5263205 (= e!3273796 (isUnion!259 lt!2155613))))

(declare-fun b!5263206 () Bool)

(assert (=> b!5263206 (= e!3273794 e!3273795)))

(declare-fun c!911174 () Bool)

(assert (=> b!5263206 (= c!911174 ((_ is Cons!60819) (unfocusZipperList!323 zl!343)))))

(declare-fun b!5263207 () Bool)

(assert (=> b!5263207 (= e!3273796 (= lt!2155613 (head!11286 (unfocusZipperList!323 zl!343))))))

(assert (= (and d!1693986 res!2233264) b!5263198))

(assert (= (and d!1693986 c!911175) b!5263201))

(assert (= (and d!1693986 (not c!911175)) b!5263206))

(assert (= (and b!5263206 c!911174) b!5263204))

(assert (= (and b!5263206 (not c!911174)) b!5263199))

(assert (= (and d!1693986 res!2233265) b!5263203))

(assert (= (and b!5263203 c!911176) b!5263200))

(assert (= (and b!5263203 (not c!911176)) b!5263202))

(assert (= (and b!5263202 c!911173) b!5263207))

(assert (= (and b!5263202 (not c!911173)) b!5263205))

(declare-fun m!6304080 () Bool)

(assert (=> b!5263198 m!6304080))

(declare-fun m!6304082 () Bool)

(assert (=> b!5263204 m!6304082))

(declare-fun m!6304084 () Bool)

(assert (=> b!5263200 m!6304084))

(declare-fun m!6304086 () Bool)

(assert (=> d!1693986 m!6304086))

(assert (=> d!1693986 m!6303692))

(declare-fun m!6304088 () Bool)

(assert (=> d!1693986 m!6304088))

(assert (=> b!5263203 m!6303692))

(declare-fun m!6304090 () Bool)

(assert (=> b!5263203 m!6304090))

(assert (=> b!5263207 m!6303692))

(declare-fun m!6304092 () Bool)

(assert (=> b!5263207 m!6304092))

(declare-fun m!6304094 () Bool)

(assert (=> b!5263205 m!6304094))

(assert (=> b!5263202 m!6303692))

(declare-fun m!6304096 () Bool)

(assert (=> b!5263202 m!6304096))

(assert (=> b!5263202 m!6304096))

(declare-fun m!6304098 () Bool)

(assert (=> b!5263202 m!6304098))

(assert (=> b!5262536 d!1693986))

(declare-fun bs!1220052 () Bool)

(declare-fun d!1693988 () Bool)

(assert (= bs!1220052 (and d!1693988 d!1693910)))

(declare-fun lambda!265396 () Int)

(assert (=> bs!1220052 (= lambda!265396 lambda!265362)))

(declare-fun bs!1220053 () Bool)

(assert (= bs!1220053 (and d!1693988 d!1693950)))

(assert (=> bs!1220053 (= lambda!265396 lambda!265383)))

(declare-fun bs!1220054 () Bool)

(assert (= bs!1220054 (and d!1693988 d!1693986)))

(assert (=> bs!1220054 (= lambda!265396 lambda!265393)))

(declare-fun lt!2155616 () List!60943)

(assert (=> d!1693988 (forall!14293 lt!2155616 lambda!265396)))

(declare-fun e!3273801 () List!60943)

(assert (=> d!1693988 (= lt!2155616 e!3273801)))

(declare-fun c!911179 () Bool)

(assert (=> d!1693988 (= c!911179 ((_ is Cons!60820) zl!343))))

(assert (=> d!1693988 (= (unfocusZipperList!323 zl!343) lt!2155616)))

(declare-fun b!5263212 () Bool)

(assert (=> b!5263212 (= e!3273801 (Cons!60819 (generalisedConcat!550 (exprs!4765 (h!67268 zl!343))) (unfocusZipperList!323 (t!374131 zl!343))))))

(declare-fun b!5263213 () Bool)

(assert (=> b!5263213 (= e!3273801 Nil!60819)))

(assert (= (and d!1693988 c!911179) b!5263212))

(assert (= (and d!1693988 (not c!911179)) b!5263213))

(declare-fun m!6304100 () Bool)

(assert (=> d!1693988 m!6304100))

(assert (=> b!5263212 m!6303668))

(declare-fun m!6304102 () Bool)

(assert (=> b!5263212 m!6304102))

(assert (=> b!5262536 d!1693988))

(declare-fun d!1693990 () Bool)

(declare-fun nullableFct!1436 (Regex!14881) Bool)

(assert (=> d!1693990 (= (nullable!5050 (h!67267 (exprs!4765 (h!67268 zl!343)))) (nullableFct!1436 (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun bs!1220055 () Bool)

(assert (= bs!1220055 d!1693990))

(declare-fun m!6304104 () Bool)

(assert (=> bs!1220055 m!6304104))

(assert (=> b!5262556 d!1693990))

(declare-fun b!5263224 () Bool)

(declare-fun e!3273809 () Bool)

(assert (=> b!5263224 (= e!3273809 (nullable!5050 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))))))

(declare-fun d!1693992 () Bool)

(declare-fun c!911184 () Bool)

(assert (=> d!1693992 (= c!911184 e!3273809)))

(declare-fun res!2233268 () Bool)

(assert (=> d!1693992 (=> (not res!2233268) (not e!3273809))))

(assert (=> d!1693992 (= res!2233268 ((_ is Cons!60819) (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))))))

(declare-fun e!3273810 () (InoxSet Context!8530))

(assert (=> d!1693992 (= (derivationStepZipperUp!253 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))) (h!67266 s!2326)) e!3273810)))

(declare-fun b!5263225 () Bool)

(declare-fun e!3273808 () (InoxSet Context!8530))

(assert (=> b!5263225 (= e!3273808 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263226 () Bool)

(declare-fun call!373347 () (InoxSet Context!8530))

(assert (=> b!5263226 (= e!3273808 call!373347)))

(declare-fun b!5263227 () Bool)

(assert (=> b!5263227 (= e!3273810 e!3273808)))

(declare-fun c!911185 () Bool)

(assert (=> b!5263227 (= c!911185 ((_ is Cons!60819) (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))))))

(declare-fun bm!373342 () Bool)

(assert (=> bm!373342 (= call!373347 (derivationStepZipperDown!329 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))) (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (h!67266 s!2326)))))

(declare-fun b!5263228 () Bool)

(assert (=> b!5263228 (= e!3273810 ((_ map or) call!373347 (derivationStepZipperUp!253 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (h!67266 s!2326))))))

(assert (= (and d!1693992 res!2233268) b!5263224))

(assert (= (and d!1693992 c!911184) b!5263228))

(assert (= (and d!1693992 (not c!911184)) b!5263227))

(assert (= (and b!5263227 c!911185) b!5263226))

(assert (= (and b!5263227 (not c!911185)) b!5263225))

(assert (= (or b!5263228 b!5263226) bm!373342))

(declare-fun m!6304106 () Bool)

(assert (=> b!5263224 m!6304106))

(declare-fun m!6304108 () Bool)

(assert (=> bm!373342 m!6304108))

(declare-fun m!6304110 () Bool)

(assert (=> b!5263228 m!6304110))

(assert (=> b!5262556 d!1693992))

(declare-fun d!1693994 () Bool)

(declare-fun choose!39271 ((InoxSet Context!8530) Int) (InoxSet Context!8530))

(assert (=> d!1693994 (= (flatMap!608 z!1189 lambda!265341) (choose!39271 z!1189 lambda!265341))))

(declare-fun bs!1220056 () Bool)

(assert (= bs!1220056 d!1693994))

(declare-fun m!6304112 () Bool)

(assert (=> bs!1220056 m!6304112))

(assert (=> b!5262556 d!1693994))

(declare-fun d!1693996 () Bool)

(declare-fun dynLambda!24031 (Int Context!8530) (InoxSet Context!8530))

(assert (=> d!1693996 (= (flatMap!608 z!1189 lambda!265341) (dynLambda!24031 lambda!265341 (h!67268 zl!343)))))

(declare-fun lt!2155619 () Unit!153042)

(declare-fun choose!39272 ((InoxSet Context!8530) Context!8530 Int) Unit!153042)

(assert (=> d!1693996 (= lt!2155619 (choose!39272 z!1189 (h!67268 zl!343) lambda!265341))))

(assert (=> d!1693996 (= z!1189 (store ((as const (Array Context!8530 Bool)) false) (h!67268 zl!343) true))))

(assert (=> d!1693996 (= (lemmaFlatMapOnSingletonSet!140 z!1189 (h!67268 zl!343) lambda!265341) lt!2155619)))

(declare-fun b_lambda!203065 () Bool)

(assert (=> (not b_lambda!203065) (not d!1693996)))

(declare-fun bs!1220057 () Bool)

(assert (= bs!1220057 d!1693996))

(assert (=> bs!1220057 m!6303684))

(declare-fun m!6304114 () Bool)

(assert (=> bs!1220057 m!6304114))

(declare-fun m!6304116 () Bool)

(assert (=> bs!1220057 m!6304116))

(declare-fun m!6304118 () Bool)

(assert (=> bs!1220057 m!6304118))

(assert (=> b!5262556 d!1693996))

(declare-fun b!5263229 () Bool)

(declare-fun e!3273812 () Bool)

(assert (=> b!5263229 (= e!3273812 (nullable!5050 (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun d!1693998 () Bool)

(declare-fun c!911186 () Bool)

(assert (=> d!1693998 (= c!911186 e!3273812)))

(declare-fun res!2233269 () Bool)

(assert (=> d!1693998 (=> (not res!2233269) (not e!3273812))))

(assert (=> d!1693998 (= res!2233269 ((_ is Cons!60819) (exprs!4765 (h!67268 zl!343))))))

(declare-fun e!3273813 () (InoxSet Context!8530))

(assert (=> d!1693998 (= (derivationStepZipperUp!253 (h!67268 zl!343) (h!67266 s!2326)) e!3273813)))

(declare-fun b!5263230 () Bool)

(declare-fun e!3273811 () (InoxSet Context!8530))

(assert (=> b!5263230 (= e!3273811 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263231 () Bool)

(declare-fun call!373348 () (InoxSet Context!8530))

(assert (=> b!5263231 (= e!3273811 call!373348)))

(declare-fun b!5263232 () Bool)

(assert (=> b!5263232 (= e!3273813 e!3273811)))

(declare-fun c!911187 () Bool)

(assert (=> b!5263232 (= c!911187 ((_ is Cons!60819) (exprs!4765 (h!67268 zl!343))))))

(declare-fun bm!373343 () Bool)

(assert (=> bm!373343 (= call!373348 (derivationStepZipperDown!329 (h!67267 (exprs!4765 (h!67268 zl!343))) (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343)))) (h!67266 s!2326)))))

(declare-fun b!5263233 () Bool)

(assert (=> b!5263233 (= e!3273813 ((_ map or) call!373348 (derivationStepZipperUp!253 (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343)))) (h!67266 s!2326))))))

(assert (= (and d!1693998 res!2233269) b!5263229))

(assert (= (and d!1693998 c!911186) b!5263233))

(assert (= (and d!1693998 (not c!911186)) b!5263232))

(assert (= (and b!5263232 c!911187) b!5263231))

(assert (= (and b!5263232 (not c!911187)) b!5263230))

(assert (= (or b!5263233 b!5263231) bm!373343))

(assert (=> b!5263229 m!6303682))

(declare-fun m!6304120 () Bool)

(assert (=> bm!373343 m!6304120))

(declare-fun m!6304122 () Bool)

(assert (=> b!5263233 m!6304122))

(assert (=> b!5262556 d!1693998))

(declare-fun b!5263234 () Bool)

(declare-fun c!911192 () Bool)

(assert (=> b!5263234 (= c!911192 ((_ is Star!14881) (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun e!3273817 () (InoxSet Context!8530))

(declare-fun e!3273816 () (InoxSet Context!8530))

(assert (=> b!5263234 (= e!3273817 e!3273816)))

(declare-fun b!5263235 () Bool)

(declare-fun c!911189 () Bool)

(declare-fun e!3273818 () Bool)

(assert (=> b!5263235 (= c!911189 e!3273818)))

(declare-fun res!2233270 () Bool)

(assert (=> b!5263235 (=> (not res!2233270) (not e!3273818))))

(assert (=> b!5263235 (= res!2233270 ((_ is Concat!23726) (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun e!3273819 () (InoxSet Context!8530))

(declare-fun e!3273815 () (InoxSet Context!8530))

(assert (=> b!5263235 (= e!3273819 e!3273815)))

(declare-fun bm!373344 () Bool)

(declare-fun call!373349 () (InoxSet Context!8530))

(declare-fun call!373354 () (InoxSet Context!8530))

(assert (=> bm!373344 (= call!373349 call!373354)))

(declare-fun bm!373346 () Bool)

(declare-fun call!373352 () (InoxSet Context!8530))

(assert (=> bm!373346 (= call!373352 call!373349)))

(declare-fun c!911190 () Bool)

(declare-fun call!373353 () List!60943)

(declare-fun bm!373347 () Bool)

(declare-fun call!373351 () (InoxSet Context!8530))

(assert (=> bm!373347 (= call!373351 (derivationStepZipperDown!329 (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343))))) (ite c!911190 lt!2155536 (Context!8531 call!373353)) (h!67266 s!2326)))))

(declare-fun b!5263236 () Bool)

(assert (=> b!5263236 (= e!3273818 (nullable!5050 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343))))))))

(declare-fun b!5263237 () Bool)

(assert (=> b!5263237 (= e!3273815 ((_ map or) call!373351 call!373349))))

(declare-fun b!5263238 () Bool)

(declare-fun e!3273814 () (InoxSet Context!8530))

(assert (=> b!5263238 (= e!3273814 e!3273819)))

(assert (=> b!5263238 (= c!911190 ((_ is Union!14881) (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun b!5263239 () Bool)

(assert (=> b!5263239 (= e!3273817 call!373352)))

(declare-fun c!911188 () Bool)

(declare-fun bm!373348 () Bool)

(declare-fun call!373350 () List!60943)

(assert (=> bm!373348 (= call!373354 (derivationStepZipperDown!329 (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343))))))) (ite (or c!911190 c!911189) lt!2155536 (Context!8531 call!373350)) (h!67266 s!2326)))))

(declare-fun bm!373345 () Bool)

(assert (=> bm!373345 (= call!373350 call!373353)))

(declare-fun d!1694000 () Bool)

(declare-fun c!911191 () Bool)

(assert (=> d!1694000 (= c!911191 (and ((_ is ElementMatch!14881) (h!67267 (exprs!4765 (h!67268 zl!343)))) (= (c!910993 (h!67267 (exprs!4765 (h!67268 zl!343)))) (h!67266 s!2326))))))

(assert (=> d!1694000 (= (derivationStepZipperDown!329 (h!67267 (exprs!4765 (h!67268 zl!343))) lt!2155536 (h!67266 s!2326)) e!3273814)))

(declare-fun b!5263240 () Bool)

(assert (=> b!5263240 (= e!3273816 call!373352)))

(declare-fun bm!373349 () Bool)

(assert (=> bm!373349 (= call!373353 ($colon$colon!1334 (exprs!4765 lt!2155536) (ite (or c!911189 c!911188) (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (h!67267 (exprs!4765 (h!67268 zl!343))))))))

(declare-fun b!5263241 () Bool)

(assert (=> b!5263241 (= e!3273819 ((_ map or) call!373354 call!373351))))

(declare-fun b!5263242 () Bool)

(assert (=> b!5263242 (= e!3273816 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263243 () Bool)

(assert (=> b!5263243 (= e!3273815 e!3273817)))

(assert (=> b!5263243 (= c!911188 ((_ is Concat!23726) (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun b!5263244 () Bool)

(assert (=> b!5263244 (= e!3273814 (store ((as const (Array Context!8530 Bool)) false) lt!2155536 true))))

(assert (= (and d!1694000 c!911191) b!5263244))

(assert (= (and d!1694000 (not c!911191)) b!5263238))

(assert (= (and b!5263238 c!911190) b!5263241))

(assert (= (and b!5263238 (not c!911190)) b!5263235))

(assert (= (and b!5263235 res!2233270) b!5263236))

(assert (= (and b!5263235 c!911189) b!5263237))

(assert (= (and b!5263235 (not c!911189)) b!5263243))

(assert (= (and b!5263243 c!911188) b!5263239))

(assert (= (and b!5263243 (not c!911188)) b!5263234))

(assert (= (and b!5263234 c!911192) b!5263240))

(assert (= (and b!5263234 (not c!911192)) b!5263242))

(assert (= (or b!5263239 b!5263240) bm!373345))

(assert (= (or b!5263239 b!5263240) bm!373346))

(assert (= (or b!5263237 bm!373345) bm!373349))

(assert (= (or b!5263237 bm!373346) bm!373344))

(assert (= (or b!5263241 b!5263237) bm!373347))

(assert (= (or b!5263241 bm!373344) bm!373348))

(declare-fun m!6304124 () Bool)

(assert (=> bm!373349 m!6304124))

(assert (=> b!5263244 m!6304020))

(declare-fun m!6304126 () Bool)

(assert (=> b!5263236 m!6304126))

(declare-fun m!6304128 () Bool)

(assert (=> bm!373347 m!6304128))

(declare-fun m!6304130 () Bool)

(assert (=> bm!373348 m!6304130))

(assert (=> b!5262556 d!1694000))

(declare-fun b!5263245 () Bool)

(declare-fun e!3273821 () Bool)

(assert (=> b!5263245 (= e!3273821 (nullable!5050 (h!67267 (exprs!4765 lt!2155536))))))

(declare-fun d!1694002 () Bool)

(declare-fun c!911193 () Bool)

(assert (=> d!1694002 (= c!911193 e!3273821)))

(declare-fun res!2233271 () Bool)

(assert (=> d!1694002 (=> (not res!2233271) (not e!3273821))))

(assert (=> d!1694002 (= res!2233271 ((_ is Cons!60819) (exprs!4765 lt!2155536)))))

(declare-fun e!3273822 () (InoxSet Context!8530))

(assert (=> d!1694002 (= (derivationStepZipperUp!253 lt!2155536 (h!67266 s!2326)) e!3273822)))

(declare-fun b!5263246 () Bool)

(declare-fun e!3273820 () (InoxSet Context!8530))

(assert (=> b!5263246 (= e!3273820 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263247 () Bool)

(declare-fun call!373355 () (InoxSet Context!8530))

(assert (=> b!5263247 (= e!3273820 call!373355)))

(declare-fun b!5263248 () Bool)

(assert (=> b!5263248 (= e!3273822 e!3273820)))

(declare-fun c!911194 () Bool)

(assert (=> b!5263248 (= c!911194 ((_ is Cons!60819) (exprs!4765 lt!2155536)))))

(declare-fun bm!373350 () Bool)

(assert (=> bm!373350 (= call!373355 (derivationStepZipperDown!329 (h!67267 (exprs!4765 lt!2155536)) (Context!8531 (t!374130 (exprs!4765 lt!2155536))) (h!67266 s!2326)))))

(declare-fun b!5263249 () Bool)

(assert (=> b!5263249 (= e!3273822 ((_ map or) call!373355 (derivationStepZipperUp!253 (Context!8531 (t!374130 (exprs!4765 lt!2155536))) (h!67266 s!2326))))))

(assert (= (and d!1694002 res!2233271) b!5263245))

(assert (= (and d!1694002 c!911193) b!5263249))

(assert (= (and d!1694002 (not c!911193)) b!5263248))

(assert (= (and b!5263248 c!911194) b!5263247))

(assert (= (and b!5263248 (not c!911194)) b!5263246))

(assert (= (or b!5263249 b!5263247) bm!373350))

(declare-fun m!6304132 () Bool)

(assert (=> b!5263245 m!6304132))

(declare-fun m!6304134 () Bool)

(assert (=> bm!373350 m!6304134))

(declare-fun m!6304136 () Bool)

(assert (=> b!5263249 m!6304136))

(assert (=> b!5262556 d!1694002))

(declare-fun d!1694004 () Bool)

(declare-fun e!3273825 () Bool)

(assert (=> d!1694004 e!3273825))

(declare-fun res!2233274 () Bool)

(assert (=> d!1694004 (=> (not res!2233274) (not e!3273825))))

(declare-fun lt!2155622 () List!60944)

(declare-fun noDuplicate!1239 (List!60944) Bool)

(assert (=> d!1694004 (= res!2233274 (noDuplicate!1239 lt!2155622))))

(declare-fun choose!39273 ((InoxSet Context!8530)) List!60944)

(assert (=> d!1694004 (= lt!2155622 (choose!39273 z!1189))))

(assert (=> d!1694004 (= (toList!8665 z!1189) lt!2155622)))

(declare-fun b!5263252 () Bool)

(declare-fun content!10810 (List!60944) (InoxSet Context!8530))

(assert (=> b!5263252 (= e!3273825 (= (content!10810 lt!2155622) z!1189))))

(assert (= (and d!1694004 res!2233274) b!5263252))

(declare-fun m!6304138 () Bool)

(assert (=> d!1694004 m!6304138))

(declare-fun m!6304140 () Bool)

(assert (=> d!1694004 m!6304140))

(declare-fun m!6304142 () Bool)

(assert (=> b!5263252 m!6304142))

(assert (=> b!5262537 d!1694004))

(declare-fun bs!1220058 () Bool)

(declare-fun d!1694006 () Bool)

(assert (= bs!1220058 (and d!1694006 d!1693910)))

(declare-fun lambda!265397 () Int)

(assert (=> bs!1220058 (= lambda!265397 lambda!265362)))

(declare-fun bs!1220059 () Bool)

(assert (= bs!1220059 (and d!1694006 d!1693950)))

(assert (=> bs!1220059 (= lambda!265397 lambda!265383)))

(declare-fun bs!1220060 () Bool)

(assert (= bs!1220060 (and d!1694006 d!1693986)))

(assert (=> bs!1220060 (= lambda!265397 lambda!265393)))

(declare-fun bs!1220061 () Bool)

(assert (= bs!1220061 (and d!1694006 d!1693988)))

(assert (=> bs!1220061 (= lambda!265397 lambda!265396)))

(assert (=> d!1694006 (= (inv!80449 setElem!33651) (forall!14293 (exprs!4765 setElem!33651) lambda!265397))))

(declare-fun bs!1220062 () Bool)

(assert (= bs!1220062 d!1694006))

(declare-fun m!6304144 () Bool)

(assert (=> bs!1220062 m!6304144))

(assert (=> setNonEmpty!33651 d!1694006))

(declare-fun d!1694008 () Bool)

(declare-fun c!911195 () Bool)

(assert (=> d!1694008 (= c!911195 (isEmpty!32766 (t!374129 s!2326)))))

(declare-fun e!3273826 () Bool)

(assert (=> d!1694008 (= (matchZipper!1125 lt!2155531 (t!374129 s!2326)) e!3273826)))

(declare-fun b!5263253 () Bool)

(assert (=> b!5263253 (= e!3273826 (nullableZipper!1283 lt!2155531))))

(declare-fun b!5263254 () Bool)

(assert (=> b!5263254 (= e!3273826 (matchZipper!1125 (derivationStepZipper!1127 lt!2155531 (head!11285 (t!374129 s!2326))) (tail!10382 (t!374129 s!2326))))))

(assert (= (and d!1694008 c!911195) b!5263253))

(assert (= (and d!1694008 (not c!911195)) b!5263254))

(assert (=> d!1694008 m!6303820))

(declare-fun m!6304146 () Bool)

(assert (=> b!5263253 m!6304146))

(assert (=> b!5263254 m!6303824))

(assert (=> b!5263254 m!6303824))

(declare-fun m!6304148 () Bool)

(assert (=> b!5263254 m!6304148))

(assert (=> b!5263254 m!6303828))

(assert (=> b!5263254 m!6304148))

(assert (=> b!5263254 m!6303828))

(declare-fun m!6304150 () Bool)

(assert (=> b!5263254 m!6304150))

(assert (=> b!5262540 d!1694008))

(declare-fun b!5263255 () Bool)

(declare-fun res!2233277 () Bool)

(declare-fun e!3273831 () Bool)

(assert (=> b!5263255 (=> (not res!2233277) (not e!3273831))))

(declare-fun call!373356 () Bool)

(assert (=> b!5263255 (= res!2233277 call!373356)))

(declare-fun e!3273828 () Bool)

(assert (=> b!5263255 (= e!3273828 e!3273831)))

(declare-fun bm!373351 () Bool)

(declare-fun c!911196 () Bool)

(assert (=> bm!373351 (= call!373356 (validRegex!6617 (ite c!911196 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))))))

(declare-fun b!5263256 () Bool)

(declare-fun e!3273830 () Bool)

(declare-fun call!373358 () Bool)

(assert (=> b!5263256 (= e!3273830 call!373358)))

(declare-fun b!5263257 () Bool)

(declare-fun e!3273829 () Bool)

(assert (=> b!5263257 (= e!3273829 e!3273828)))

(assert (=> b!5263257 (= c!911196 ((_ is Union!14881) (regOne!30274 (regOne!30274 r!7292))))))

(declare-fun bm!373352 () Bool)

(declare-fun call!373357 () Bool)

(assert (=> bm!373352 (= call!373357 call!373358)))

(declare-fun b!5263258 () Bool)

(assert (=> b!5263258 (= e!3273829 e!3273830)))

(declare-fun res!2233275 () Bool)

(assert (=> b!5263258 (= res!2233275 (not (nullable!5050 (reg!15210 (regOne!30274 (regOne!30274 r!7292))))))))

(assert (=> b!5263258 (=> (not res!2233275) (not e!3273830))))

(declare-fun bm!373353 () Bool)

(declare-fun c!911197 () Bool)

(assert (=> bm!373353 (= call!373358 (validRegex!6617 (ite c!911197 (reg!15210 (regOne!30274 (regOne!30274 r!7292))) (ite c!911196 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292)))))))))

(declare-fun b!5263260 () Bool)

(declare-fun e!3273832 () Bool)

(assert (=> b!5263260 (= e!3273832 e!3273829)))

(assert (=> b!5263260 (= c!911197 ((_ is Star!14881) (regOne!30274 (regOne!30274 r!7292))))))

(declare-fun b!5263261 () Bool)

(declare-fun res!2233276 () Bool)

(declare-fun e!3273827 () Bool)

(assert (=> b!5263261 (=> res!2233276 e!3273827)))

(assert (=> b!5263261 (= res!2233276 (not ((_ is Concat!23726) (regOne!30274 (regOne!30274 r!7292)))))))

(assert (=> b!5263261 (= e!3273828 e!3273827)))

(declare-fun b!5263259 () Bool)

(declare-fun e!3273833 () Bool)

(assert (=> b!5263259 (= e!3273827 e!3273833)))

(declare-fun res!2233278 () Bool)

(assert (=> b!5263259 (=> (not res!2233278) (not e!3273833))))

(assert (=> b!5263259 (= res!2233278 call!373356)))

(declare-fun d!1694010 () Bool)

(declare-fun res!2233279 () Bool)

(assert (=> d!1694010 (=> res!2233279 e!3273832)))

(assert (=> d!1694010 (= res!2233279 ((_ is ElementMatch!14881) (regOne!30274 (regOne!30274 r!7292))))))

(assert (=> d!1694010 (= (validRegex!6617 (regOne!30274 (regOne!30274 r!7292))) e!3273832)))

(declare-fun b!5263262 () Bool)

(assert (=> b!5263262 (= e!3273833 call!373357)))

(declare-fun b!5263263 () Bool)

(assert (=> b!5263263 (= e!3273831 call!373357)))

(assert (= (and d!1694010 (not res!2233279)) b!5263260))

(assert (= (and b!5263260 c!911197) b!5263258))

(assert (= (and b!5263260 (not c!911197)) b!5263257))

(assert (= (and b!5263258 res!2233275) b!5263256))

(assert (= (and b!5263257 c!911196) b!5263255))

(assert (= (and b!5263257 (not c!911196)) b!5263261))

(assert (= (and b!5263255 res!2233277) b!5263263))

(assert (= (and b!5263261 (not res!2233276)) b!5263259))

(assert (= (and b!5263259 res!2233278) b!5263262))

(assert (= (or b!5263263 b!5263262) bm!373352))

(assert (= (or b!5263255 b!5263259) bm!373351))

(assert (= (or b!5263256 bm!373352) bm!373353))

(declare-fun m!6304152 () Bool)

(assert (=> bm!373351 m!6304152))

(declare-fun m!6304154 () Bool)

(assert (=> b!5263258 m!6304154))

(declare-fun m!6304156 () Bool)

(assert (=> bm!373353 m!6304156))

(assert (=> b!5262539 d!1694010))

(declare-fun d!1694012 () Bool)

(assert (=> d!1694012 (= (nullable!5050 (regOne!30274 (regOne!30274 r!7292))) (nullableFct!1436 (regOne!30274 (regOne!30274 r!7292))))))

(declare-fun bs!1220063 () Bool)

(assert (= bs!1220063 d!1694012))

(declare-fun m!6304158 () Bool)

(assert (=> bs!1220063 m!6304158))

(assert (=> b!5262559 d!1694012))

(declare-fun b!5263268 () Bool)

(declare-fun e!3273836 () Bool)

(declare-fun tp!1471286 () Bool)

(assert (=> b!5263268 (= e!3273836 (and tp_is_empty!39015 tp!1471286))))

(assert (=> b!5262542 (= tp!1471223 e!3273836)))

(assert (= (and b!5262542 ((_ is Cons!60818) (t!374129 s!2326))) b!5263268))

(declare-fun b!5263280 () Bool)

(declare-fun e!3273839 () Bool)

(declare-fun tp!1471297 () Bool)

(declare-fun tp!1471300 () Bool)

(assert (=> b!5263280 (= e!3273839 (and tp!1471297 tp!1471300))))

(declare-fun b!5263279 () Bool)

(assert (=> b!5263279 (= e!3273839 tp_is_empty!39015)))

(declare-fun b!5263282 () Bool)

(declare-fun tp!1471298 () Bool)

(declare-fun tp!1471299 () Bool)

(assert (=> b!5263282 (= e!3273839 (and tp!1471298 tp!1471299))))

(assert (=> b!5262538 (= tp!1471220 e!3273839)))

(declare-fun b!5263281 () Bool)

(declare-fun tp!1471301 () Bool)

(assert (=> b!5263281 (= e!3273839 tp!1471301)))

(assert (= (and b!5262538 ((_ is ElementMatch!14881) (reg!15210 r!7292))) b!5263279))

(assert (= (and b!5262538 ((_ is Concat!23726) (reg!15210 r!7292))) b!5263280))

(assert (= (and b!5262538 ((_ is Star!14881) (reg!15210 r!7292))) b!5263281))

(assert (= (and b!5262538 ((_ is Union!14881) (reg!15210 r!7292))) b!5263282))

(declare-fun b!5263284 () Bool)

(declare-fun e!3273840 () Bool)

(declare-fun tp!1471302 () Bool)

(declare-fun tp!1471305 () Bool)

(assert (=> b!5263284 (= e!3273840 (and tp!1471302 tp!1471305))))

(declare-fun b!5263283 () Bool)

(assert (=> b!5263283 (= e!3273840 tp_is_empty!39015)))

(declare-fun b!5263286 () Bool)

(declare-fun tp!1471303 () Bool)

(declare-fun tp!1471304 () Bool)

(assert (=> b!5263286 (= e!3273840 (and tp!1471303 tp!1471304))))

(assert (=> b!5262550 (= tp!1471221 e!3273840)))

(declare-fun b!5263285 () Bool)

(declare-fun tp!1471306 () Bool)

(assert (=> b!5263285 (= e!3273840 tp!1471306)))

(assert (= (and b!5262550 ((_ is ElementMatch!14881) (regOne!30274 r!7292))) b!5263283))

(assert (= (and b!5262550 ((_ is Concat!23726) (regOne!30274 r!7292))) b!5263284))

(assert (= (and b!5262550 ((_ is Star!14881) (regOne!30274 r!7292))) b!5263285))

(assert (= (and b!5262550 ((_ is Union!14881) (regOne!30274 r!7292))) b!5263286))

(declare-fun b!5263288 () Bool)

(declare-fun e!3273841 () Bool)

(declare-fun tp!1471307 () Bool)

(declare-fun tp!1471310 () Bool)

(assert (=> b!5263288 (= e!3273841 (and tp!1471307 tp!1471310))))

(declare-fun b!5263287 () Bool)

(assert (=> b!5263287 (= e!3273841 tp_is_empty!39015)))

(declare-fun b!5263290 () Bool)

(declare-fun tp!1471308 () Bool)

(declare-fun tp!1471309 () Bool)

(assert (=> b!5263290 (= e!3273841 (and tp!1471308 tp!1471309))))

(assert (=> b!5262550 (= tp!1471224 e!3273841)))

(declare-fun b!5263289 () Bool)

(declare-fun tp!1471311 () Bool)

(assert (=> b!5263289 (= e!3273841 tp!1471311)))

(assert (= (and b!5262550 ((_ is ElementMatch!14881) (regTwo!30274 r!7292))) b!5263287))

(assert (= (and b!5262550 ((_ is Concat!23726) (regTwo!30274 r!7292))) b!5263288))

(assert (= (and b!5262550 ((_ is Star!14881) (regTwo!30274 r!7292))) b!5263289))

(assert (= (and b!5262550 ((_ is Union!14881) (regTwo!30274 r!7292))) b!5263290))

(declare-fun b!5263292 () Bool)

(declare-fun e!3273842 () Bool)

(declare-fun tp!1471312 () Bool)

(declare-fun tp!1471315 () Bool)

(assert (=> b!5263292 (= e!3273842 (and tp!1471312 tp!1471315))))

(declare-fun b!5263291 () Bool)

(assert (=> b!5263291 (= e!3273842 tp_is_empty!39015)))

(declare-fun b!5263294 () Bool)

(declare-fun tp!1471313 () Bool)

(declare-fun tp!1471314 () Bool)

(assert (=> b!5263294 (= e!3273842 (and tp!1471313 tp!1471314))))

(assert (=> b!5262541 (= tp!1471216 e!3273842)))

(declare-fun b!5263293 () Bool)

(declare-fun tp!1471316 () Bool)

(assert (=> b!5263293 (= e!3273842 tp!1471316)))

(assert (= (and b!5262541 ((_ is ElementMatch!14881) (regOne!30275 r!7292))) b!5263291))

(assert (= (and b!5262541 ((_ is Concat!23726) (regOne!30275 r!7292))) b!5263292))

(assert (= (and b!5262541 ((_ is Star!14881) (regOne!30275 r!7292))) b!5263293))

(assert (= (and b!5262541 ((_ is Union!14881) (regOne!30275 r!7292))) b!5263294))

(declare-fun b!5263296 () Bool)

(declare-fun e!3273843 () Bool)

(declare-fun tp!1471317 () Bool)

(declare-fun tp!1471320 () Bool)

(assert (=> b!5263296 (= e!3273843 (and tp!1471317 tp!1471320))))

(declare-fun b!5263295 () Bool)

(assert (=> b!5263295 (= e!3273843 tp_is_empty!39015)))

(declare-fun b!5263298 () Bool)

(declare-fun tp!1471318 () Bool)

(declare-fun tp!1471319 () Bool)

(assert (=> b!5263298 (= e!3273843 (and tp!1471318 tp!1471319))))

(assert (=> b!5262541 (= tp!1471218 e!3273843)))

(declare-fun b!5263297 () Bool)

(declare-fun tp!1471321 () Bool)

(assert (=> b!5263297 (= e!3273843 tp!1471321)))

(assert (= (and b!5262541 ((_ is ElementMatch!14881) (regTwo!30275 r!7292))) b!5263295))

(assert (= (and b!5262541 ((_ is Concat!23726) (regTwo!30275 r!7292))) b!5263296))

(assert (= (and b!5262541 ((_ is Star!14881) (regTwo!30275 r!7292))) b!5263297))

(assert (= (and b!5262541 ((_ is Union!14881) (regTwo!30275 r!7292))) b!5263298))

(declare-fun condSetEmpty!33657 () Bool)

(assert (=> setNonEmpty!33651 (= condSetEmpty!33657 (= setRest!33651 ((as const (Array Context!8530 Bool)) false)))))

(declare-fun setRes!33657 () Bool)

(assert (=> setNonEmpty!33651 (= tp!1471219 setRes!33657)))

(declare-fun setIsEmpty!33657 () Bool)

(assert (=> setIsEmpty!33657 setRes!33657))

(declare-fun setNonEmpty!33657 () Bool)

(declare-fun tp!1471327 () Bool)

(declare-fun e!3273846 () Bool)

(declare-fun setElem!33657 () Context!8530)

(assert (=> setNonEmpty!33657 (= setRes!33657 (and tp!1471327 (inv!80449 setElem!33657) e!3273846))))

(declare-fun setRest!33657 () (InoxSet Context!8530))

(assert (=> setNonEmpty!33657 (= setRest!33651 ((_ map or) (store ((as const (Array Context!8530 Bool)) false) setElem!33657 true) setRest!33657))))

(declare-fun b!5263303 () Bool)

(declare-fun tp!1471326 () Bool)

(assert (=> b!5263303 (= e!3273846 tp!1471326)))

(assert (= (and setNonEmpty!33651 condSetEmpty!33657) setIsEmpty!33657))

(assert (= (and setNonEmpty!33651 (not condSetEmpty!33657)) setNonEmpty!33657))

(assert (= setNonEmpty!33657 b!5263303))

(declare-fun m!6304160 () Bool)

(assert (=> setNonEmpty!33657 m!6304160))

(declare-fun b!5263311 () Bool)

(declare-fun e!3273852 () Bool)

(declare-fun tp!1471332 () Bool)

(assert (=> b!5263311 (= e!3273852 tp!1471332)))

(declare-fun b!5263310 () Bool)

(declare-fun tp!1471333 () Bool)

(declare-fun e!3273851 () Bool)

(assert (=> b!5263310 (= e!3273851 (and (inv!80449 (h!67268 (t!374131 zl!343))) e!3273852 tp!1471333))))

(assert (=> b!5262543 (= tp!1471217 e!3273851)))

(assert (= b!5263310 b!5263311))

(assert (= (and b!5262543 ((_ is Cons!60820) (t!374131 zl!343))) b!5263310))

(declare-fun m!6304162 () Bool)

(assert (=> b!5263310 m!6304162))

(declare-fun b!5263316 () Bool)

(declare-fun e!3273855 () Bool)

(declare-fun tp!1471338 () Bool)

(declare-fun tp!1471339 () Bool)

(assert (=> b!5263316 (= e!3273855 (and tp!1471338 tp!1471339))))

(assert (=> b!5262558 (= tp!1471225 e!3273855)))

(assert (= (and b!5262558 ((_ is Cons!60819) (exprs!4765 (h!67268 zl!343)))) b!5263316))

(declare-fun b!5263317 () Bool)

(declare-fun e!3273856 () Bool)

(declare-fun tp!1471340 () Bool)

(declare-fun tp!1471341 () Bool)

(assert (=> b!5263317 (= e!3273856 (and tp!1471340 tp!1471341))))

(assert (=> b!5262548 (= tp!1471222 e!3273856)))

(assert (= (and b!5262548 ((_ is Cons!60819) (exprs!4765 setElem!33651))) b!5263317))

(declare-fun b_lambda!203067 () Bool)

(assert (= b_lambda!203065 (or b!5262556 b_lambda!203067)))

(declare-fun bs!1220064 () Bool)

(declare-fun d!1694014 () Bool)

(assert (= bs!1220064 (and d!1694014 b!5262556)))

(assert (=> bs!1220064 (= (dynLambda!24031 lambda!265341 (h!67268 zl!343)) (derivationStepZipperUp!253 (h!67268 zl!343) (h!67266 s!2326)))))

(assert (=> bs!1220064 m!6303676))

(assert (=> d!1693996 d!1694014))

(check-sat (not b!5263205) (not b!5262697) (not b!5263132) (not d!1693988) (not b!5263168) (not bm!373325) (not b!5263280) (not bm!373347) (not b!5263249) (not bm!373348) (not b!5263254) (not b!5262855) (not b!5263128) (not b!5262781) (not d!1693936) (not b!5262849) (not setNonEmpty!33657) (not b!5263224) (not b!5263286) (not b!5263294) (not d!1693986) (not b!5263311) (not d!1693924) (not d!1693898) (not b!5263228) (not b!5263281) (not b!5263198) (not bm!373327) (not bm!373321) (not bm!373342) (not b!5262788) (not b!5262784) (not b!5263282) (not b!5263253) (not d!1693944) (not b!5263167) (not b!5263293) (not b_lambda!203067) (not b!5263207) (not b!5263204) (not bm!373351) (not b!5263284) (not d!1693938) (not b!5263258) (not b!5262673) (not b!5263317) (not d!1694004) (not b!5262698) (not b!5263236) (not b!5263285) (not b!5263252) (not b!5263202) (not b!5263245) (not b!5263175) (not b!5263177) (not bm!373320) (not d!1693950) (not b!5263288) (not d!1693990) (not bm!373319) (not bs!1220064) (not b!5263203) (not d!1693896) (not d!1693982) (not b!5263316) (not bm!373261) (not bm!373353) (not b!5262848) (not d!1693984) (not b!5263289) (not b!5263233) (not b!5262696) (not bm!373349) (not bm!373343) (not b!5263297) (not bm!373335) (not b!5262852) (not d!1693904) (not d!1693934) (not b!5263298) (not b!5263310) (not b!5263164) (not b!5262783) (not b!5263166) (not bm!373350) (not b!5262740) (not b!5263296) tp_is_empty!39015 (not b!5263014) (not d!1693994) (not b!5262856) (not d!1693910) (not b!5262785) (not d!1694006) (not b!5263002) (not b!5262787) (not d!1694008) (not b!5262789) (not d!1693996) (not bm!373336) (not b!5263229) (not b!5262851) (not d!1693980) (not b!5263268) (not d!1694012) (not b!5262699) (not b!5263303) (not bm!373326) (not b!5263212) (not d!1693940) (not b!5263292) (not b!5263290) (not bm!373259) (not bm!373339) (not b!5263200))
(check-sat)
(get-model)

(declare-fun b!5263318 () Bool)

(declare-fun c!911202 () Bool)

(assert (=> b!5263318 (= c!911202 ((_ is Star!14881) (h!67267 (exprs!4765 lt!2155536))))))

(declare-fun e!3273860 () (InoxSet Context!8530))

(declare-fun e!3273859 () (InoxSet Context!8530))

(assert (=> b!5263318 (= e!3273860 e!3273859)))

(declare-fun b!5263319 () Bool)

(declare-fun c!911199 () Bool)

(declare-fun e!3273861 () Bool)

(assert (=> b!5263319 (= c!911199 e!3273861)))

(declare-fun res!2233280 () Bool)

(assert (=> b!5263319 (=> (not res!2233280) (not e!3273861))))

(assert (=> b!5263319 (= res!2233280 ((_ is Concat!23726) (h!67267 (exprs!4765 lt!2155536))))))

(declare-fun e!3273862 () (InoxSet Context!8530))

(declare-fun e!3273858 () (InoxSet Context!8530))

(assert (=> b!5263319 (= e!3273862 e!3273858)))

(declare-fun bm!373354 () Bool)

(declare-fun call!373359 () (InoxSet Context!8530))

(declare-fun call!373364 () (InoxSet Context!8530))

(assert (=> bm!373354 (= call!373359 call!373364)))

(declare-fun bm!373356 () Bool)

(declare-fun call!373362 () (InoxSet Context!8530))

(assert (=> bm!373356 (= call!373362 call!373359)))

(declare-fun call!373361 () (InoxSet Context!8530))

(declare-fun c!911200 () Bool)

(declare-fun bm!373357 () Bool)

(declare-fun call!373363 () List!60943)

(assert (=> bm!373357 (= call!373361 (derivationStepZipperDown!329 (ite c!911200 (regTwo!30275 (h!67267 (exprs!4765 lt!2155536))) (regOne!30274 (h!67267 (exprs!4765 lt!2155536)))) (ite c!911200 (Context!8531 (t!374130 (exprs!4765 lt!2155536))) (Context!8531 call!373363)) (h!67266 s!2326)))))

(declare-fun b!5263320 () Bool)

(assert (=> b!5263320 (= e!3273861 (nullable!5050 (regOne!30274 (h!67267 (exprs!4765 lt!2155536)))))))

(declare-fun b!5263321 () Bool)

(assert (=> b!5263321 (= e!3273858 ((_ map or) call!373361 call!373359))))

(declare-fun b!5263322 () Bool)

(declare-fun e!3273857 () (InoxSet Context!8530))

(assert (=> b!5263322 (= e!3273857 e!3273862)))

(assert (=> b!5263322 (= c!911200 ((_ is Union!14881) (h!67267 (exprs!4765 lt!2155536))))))

(declare-fun b!5263323 () Bool)

(assert (=> b!5263323 (= e!3273860 call!373362)))

(declare-fun call!373360 () List!60943)

(declare-fun c!911198 () Bool)

(declare-fun bm!373358 () Bool)

(assert (=> bm!373358 (= call!373364 (derivationStepZipperDown!329 (ite c!911200 (regOne!30275 (h!67267 (exprs!4765 lt!2155536))) (ite c!911199 (regTwo!30274 (h!67267 (exprs!4765 lt!2155536))) (ite c!911198 (regOne!30274 (h!67267 (exprs!4765 lt!2155536))) (reg!15210 (h!67267 (exprs!4765 lt!2155536)))))) (ite (or c!911200 c!911199) (Context!8531 (t!374130 (exprs!4765 lt!2155536))) (Context!8531 call!373360)) (h!67266 s!2326)))))

(declare-fun bm!373355 () Bool)

(assert (=> bm!373355 (= call!373360 call!373363)))

(declare-fun d!1694016 () Bool)

(declare-fun c!911201 () Bool)

(assert (=> d!1694016 (= c!911201 (and ((_ is ElementMatch!14881) (h!67267 (exprs!4765 lt!2155536))) (= (c!910993 (h!67267 (exprs!4765 lt!2155536))) (h!67266 s!2326))))))

(assert (=> d!1694016 (= (derivationStepZipperDown!329 (h!67267 (exprs!4765 lt!2155536)) (Context!8531 (t!374130 (exprs!4765 lt!2155536))) (h!67266 s!2326)) e!3273857)))

(declare-fun b!5263324 () Bool)

(assert (=> b!5263324 (= e!3273859 call!373362)))

(declare-fun bm!373359 () Bool)

(assert (=> bm!373359 (= call!373363 ($colon$colon!1334 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 lt!2155536)))) (ite (or c!911199 c!911198) (regTwo!30274 (h!67267 (exprs!4765 lt!2155536))) (h!67267 (exprs!4765 lt!2155536)))))))

(declare-fun b!5263325 () Bool)

(assert (=> b!5263325 (= e!3273862 ((_ map or) call!373364 call!373361))))

(declare-fun b!5263326 () Bool)

(assert (=> b!5263326 (= e!3273859 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263327 () Bool)

(assert (=> b!5263327 (= e!3273858 e!3273860)))

(assert (=> b!5263327 (= c!911198 ((_ is Concat!23726) (h!67267 (exprs!4765 lt!2155536))))))

(declare-fun b!5263328 () Bool)

(assert (=> b!5263328 (= e!3273857 (store ((as const (Array Context!8530 Bool)) false) (Context!8531 (t!374130 (exprs!4765 lt!2155536))) true))))

(assert (= (and d!1694016 c!911201) b!5263328))

(assert (= (and d!1694016 (not c!911201)) b!5263322))

(assert (= (and b!5263322 c!911200) b!5263325))

(assert (= (and b!5263322 (not c!911200)) b!5263319))

(assert (= (and b!5263319 res!2233280) b!5263320))

(assert (= (and b!5263319 c!911199) b!5263321))

(assert (= (and b!5263319 (not c!911199)) b!5263327))

(assert (= (and b!5263327 c!911198) b!5263323))

(assert (= (and b!5263327 (not c!911198)) b!5263318))

(assert (= (and b!5263318 c!911202) b!5263324))

(assert (= (and b!5263318 (not c!911202)) b!5263326))

(assert (= (or b!5263323 b!5263324) bm!373355))

(assert (= (or b!5263323 b!5263324) bm!373356))

(assert (= (or b!5263321 bm!373355) bm!373359))

(assert (= (or b!5263321 bm!373356) bm!373354))

(assert (= (or b!5263325 b!5263321) bm!373357))

(assert (= (or b!5263325 bm!373354) bm!373358))

(declare-fun m!6304164 () Bool)

(assert (=> bm!373359 m!6304164))

(declare-fun m!6304166 () Bool)

(assert (=> b!5263328 m!6304166))

(declare-fun m!6304168 () Bool)

(assert (=> b!5263320 m!6304168))

(declare-fun m!6304170 () Bool)

(assert (=> bm!373357 m!6304170))

(declare-fun m!6304172 () Bool)

(assert (=> bm!373358 m!6304172))

(assert (=> bm!373350 d!1694016))

(declare-fun b!5263329 () Bool)

(declare-fun e!3273864 () Bool)

(assert (=> b!5263329 (= e!3273864 (nullable!5050 (h!67267 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343))))))))))

(declare-fun d!1694018 () Bool)

(declare-fun c!911203 () Bool)

(assert (=> d!1694018 (= c!911203 e!3273864)))

(declare-fun res!2233281 () Bool)

(assert (=> d!1694018 (=> (not res!2233281) (not e!3273864))))

(assert (=> d!1694018 (= res!2233281 ((_ is Cons!60819) (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343)))))))))

(declare-fun e!3273865 () (InoxSet Context!8530))

(assert (=> d!1694018 (= (derivationStepZipperUp!253 (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343)))) (h!67266 s!2326)) e!3273865)))

(declare-fun b!5263330 () Bool)

(declare-fun e!3273863 () (InoxSet Context!8530))

(assert (=> b!5263330 (= e!3273863 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263331 () Bool)

(declare-fun call!373365 () (InoxSet Context!8530))

(assert (=> b!5263331 (= e!3273863 call!373365)))

(declare-fun b!5263332 () Bool)

(assert (=> b!5263332 (= e!3273865 e!3273863)))

(declare-fun c!911204 () Bool)

(assert (=> b!5263332 (= c!911204 ((_ is Cons!60819) (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343)))))))))

(declare-fun bm!373360 () Bool)

(assert (=> bm!373360 (= call!373365 (derivationStepZipperDown!329 (h!67267 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343)))))) (Context!8531 (t!374130 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343))))))) (h!67266 s!2326)))))

(declare-fun b!5263333 () Bool)

(assert (=> b!5263333 (= e!3273865 ((_ map or) call!373365 (derivationStepZipperUp!253 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343))))))) (h!67266 s!2326))))))

(assert (= (and d!1694018 res!2233281) b!5263329))

(assert (= (and d!1694018 c!911203) b!5263333))

(assert (= (and d!1694018 (not c!911203)) b!5263332))

(assert (= (and b!5263332 c!911204) b!5263331))

(assert (= (and b!5263332 (not c!911204)) b!5263330))

(assert (= (or b!5263333 b!5263331) bm!373360))

(declare-fun m!6304174 () Bool)

(assert (=> b!5263329 m!6304174))

(declare-fun m!6304176 () Bool)

(assert (=> bm!373360 m!6304176))

(declare-fun m!6304178 () Bool)

(assert (=> b!5263333 m!6304178))

(assert (=> b!5263233 d!1694018))

(declare-fun d!1694020 () Bool)

(assert (=> d!1694020 (= ($colon$colon!1334 (exprs!4765 (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343)))))) (ite (or c!911131 c!911130) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 r!7292)))) (Cons!60819 (ite (or c!911131 c!911130) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 r!7292))) (exprs!4765 (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))))))))

(assert (=> bm!373321 d!1694020))

(assert (=> bs!1220064 d!1693998))

(declare-fun b!5263334 () Bool)

(declare-fun e!3273871 () Bool)

(assert (=> b!5263334 (= e!3273871 (= (head!11285 (_1!35383 (get!20910 lt!2155579))) (c!910993 (regOne!30274 r!7292))))))

(declare-fun b!5263335 () Bool)

(declare-fun res!2233288 () Bool)

(declare-fun e!3273868 () Bool)

(assert (=> b!5263335 (=> res!2233288 e!3273868)))

(assert (=> b!5263335 (= res!2233288 e!3273871)))

(declare-fun res!2233286 () Bool)

(assert (=> b!5263335 (=> (not res!2233286) (not e!3273871))))

(declare-fun lt!2155623 () Bool)

(assert (=> b!5263335 (= res!2233286 lt!2155623)))

(declare-fun b!5263336 () Bool)

(declare-fun e!3273872 () Bool)

(assert (=> b!5263336 (= e!3273872 (nullable!5050 (regOne!30274 r!7292)))))

(declare-fun b!5263337 () Bool)

(declare-fun e!3273867 () Bool)

(assert (=> b!5263337 (= e!3273867 (not (= (head!11285 (_1!35383 (get!20910 lt!2155579))) (c!910993 (regOne!30274 r!7292)))))))

(declare-fun b!5263338 () Bool)

(assert (=> b!5263338 (= e!3273872 (matchR!7066 (derivativeStep!4105 (regOne!30274 r!7292) (head!11285 (_1!35383 (get!20910 lt!2155579)))) (tail!10382 (_1!35383 (get!20910 lt!2155579)))))))

(declare-fun b!5263339 () Bool)

(declare-fun e!3273869 () Bool)

(declare-fun call!373366 () Bool)

(assert (=> b!5263339 (= e!3273869 (= lt!2155623 call!373366))))

(declare-fun b!5263341 () Bool)

(declare-fun e!3273870 () Bool)

(assert (=> b!5263341 (= e!3273870 (not lt!2155623))))

(declare-fun b!5263342 () Bool)

(assert (=> b!5263342 (= e!3273869 e!3273870)))

(declare-fun c!911205 () Bool)

(assert (=> b!5263342 (= c!911205 ((_ is EmptyLang!14881) (regOne!30274 r!7292)))))

(declare-fun b!5263343 () Bool)

(declare-fun res!2233284 () Bool)

(assert (=> b!5263343 (=> (not res!2233284) (not e!3273871))))

(assert (=> b!5263343 (= res!2233284 (not call!373366))))

(declare-fun b!5263344 () Bool)

(declare-fun e!3273866 () Bool)

(assert (=> b!5263344 (= e!3273868 e!3273866)))

(declare-fun res!2233285 () Bool)

(assert (=> b!5263344 (=> (not res!2233285) (not e!3273866))))

(assert (=> b!5263344 (= res!2233285 (not lt!2155623))))

(declare-fun bm!373361 () Bool)

(assert (=> bm!373361 (= call!373366 (isEmpty!32766 (_1!35383 (get!20910 lt!2155579))))))

(declare-fun b!5263345 () Bool)

(declare-fun res!2233287 () Bool)

(assert (=> b!5263345 (=> res!2233287 e!3273867)))

(assert (=> b!5263345 (= res!2233287 (not (isEmpty!32766 (tail!10382 (_1!35383 (get!20910 lt!2155579))))))))

(declare-fun b!5263346 () Bool)

(assert (=> b!5263346 (= e!3273866 e!3273867)))

(declare-fun res!2233283 () Bool)

(assert (=> b!5263346 (=> res!2233283 e!3273867)))

(assert (=> b!5263346 (= res!2233283 call!373366)))

(declare-fun b!5263347 () Bool)

(declare-fun res!2233282 () Bool)

(assert (=> b!5263347 (=> (not res!2233282) (not e!3273871))))

(assert (=> b!5263347 (= res!2233282 (isEmpty!32766 (tail!10382 (_1!35383 (get!20910 lt!2155579)))))))

(declare-fun b!5263340 () Bool)

(declare-fun res!2233289 () Bool)

(assert (=> b!5263340 (=> res!2233289 e!3273868)))

(assert (=> b!5263340 (= res!2233289 (not ((_ is ElementMatch!14881) (regOne!30274 r!7292))))))

(assert (=> b!5263340 (= e!3273870 e!3273868)))

(declare-fun d!1694022 () Bool)

(assert (=> d!1694022 e!3273869))

(declare-fun c!911206 () Bool)

(assert (=> d!1694022 (= c!911206 ((_ is EmptyExpr!14881) (regOne!30274 r!7292)))))

(assert (=> d!1694022 (= lt!2155623 e!3273872)))

(declare-fun c!911207 () Bool)

(assert (=> d!1694022 (= c!911207 (isEmpty!32766 (_1!35383 (get!20910 lt!2155579))))))

(assert (=> d!1694022 (validRegex!6617 (regOne!30274 r!7292))))

(assert (=> d!1694022 (= (matchR!7066 (regOne!30274 r!7292) (_1!35383 (get!20910 lt!2155579))) lt!2155623)))

(assert (= (and d!1694022 c!911207) b!5263336))

(assert (= (and d!1694022 (not c!911207)) b!5263338))

(assert (= (and d!1694022 c!911206) b!5263339))

(assert (= (and d!1694022 (not c!911206)) b!5263342))

(assert (= (and b!5263342 c!911205) b!5263341))

(assert (= (and b!5263342 (not c!911205)) b!5263340))

(assert (= (and b!5263340 (not res!2233289)) b!5263335))

(assert (= (and b!5263335 res!2233286) b!5263343))

(assert (= (and b!5263343 res!2233284) b!5263347))

(assert (= (and b!5263347 res!2233282) b!5263334))

(assert (= (and b!5263335 (not res!2233288)) b!5263344))

(assert (= (and b!5263344 res!2233285) b!5263346))

(assert (= (and b!5263346 (not res!2233283)) b!5263345))

(assert (= (and b!5263345 (not res!2233287)) b!5263337))

(assert (= (or b!5263339 b!5263343 b!5263346) bm!373361))

(declare-fun m!6304180 () Bool)

(assert (=> b!5263336 m!6304180))

(declare-fun m!6304182 () Bool)

(assert (=> bm!373361 m!6304182))

(declare-fun m!6304184 () Bool)

(assert (=> b!5263347 m!6304184))

(assert (=> b!5263347 m!6304184))

(declare-fun m!6304186 () Bool)

(assert (=> b!5263347 m!6304186))

(declare-fun m!6304188 () Bool)

(assert (=> b!5263334 m!6304188))

(assert (=> d!1694022 m!6304182))

(assert (=> d!1694022 m!6303924))

(assert (=> b!5263337 m!6304188))

(assert (=> b!5263338 m!6304188))

(assert (=> b!5263338 m!6304188))

(declare-fun m!6304190 () Bool)

(assert (=> b!5263338 m!6304190))

(assert (=> b!5263338 m!6304184))

(assert (=> b!5263338 m!6304190))

(assert (=> b!5263338 m!6304184))

(declare-fun m!6304192 () Bool)

(assert (=> b!5263338 m!6304192))

(assert (=> b!5263345 m!6304184))

(assert (=> b!5263345 m!6304184))

(assert (=> b!5263345 m!6304186))

(assert (=> b!5262856 d!1694022))

(declare-fun d!1694024 () Bool)

(assert (=> d!1694024 (= (get!20910 lt!2155579) (v!51020 lt!2155579))))

(assert (=> b!5262856 d!1694024))

(declare-fun d!1694026 () Bool)

(assert (=> d!1694026 true))

(declare-fun setRes!33660 () Bool)

(assert (=> d!1694026 setRes!33660))

(declare-fun condSetEmpty!33660 () Bool)

(declare-fun res!2233292 () (InoxSet Context!8530))

(assert (=> d!1694026 (= condSetEmpty!33660 (= res!2233292 ((as const (Array Context!8530 Bool)) false)))))

(assert (=> d!1694026 (= (choose!39271 z!1189 lambda!265341) res!2233292)))

(declare-fun setIsEmpty!33660 () Bool)

(assert (=> setIsEmpty!33660 setRes!33660))

(declare-fun e!3273875 () Bool)

(declare-fun setElem!33660 () Context!8530)

(declare-fun setNonEmpty!33660 () Bool)

(declare-fun tp!1471347 () Bool)

(assert (=> setNonEmpty!33660 (= setRes!33660 (and tp!1471347 (inv!80449 setElem!33660) e!3273875))))

(declare-fun setRest!33660 () (InoxSet Context!8530))

(assert (=> setNonEmpty!33660 (= res!2233292 ((_ map or) (store ((as const (Array Context!8530 Bool)) false) setElem!33660 true) setRest!33660))))

(declare-fun b!5263350 () Bool)

(declare-fun tp!1471346 () Bool)

(assert (=> b!5263350 (= e!3273875 tp!1471346)))

(assert (= (and d!1694026 condSetEmpty!33660) setIsEmpty!33660))

(assert (= (and d!1694026 (not condSetEmpty!33660)) setNonEmpty!33660))

(assert (= setNonEmpty!33660 b!5263350))

(declare-fun m!6304194 () Bool)

(assert (=> setNonEmpty!33660 m!6304194))

(assert (=> d!1693994 d!1694026))

(declare-fun d!1694028 () Bool)

(assert (=> d!1694028 (= (isEmpty!32763 (t!374130 (unfocusZipperList!323 zl!343))) ((_ is Nil!60819) (t!374130 (unfocusZipperList!323 zl!343))))))

(assert (=> b!5263198 d!1694028))

(declare-fun d!1694030 () Bool)

(declare-fun c!911208 () Bool)

(assert (=> d!1694030 (= c!911208 (isEmpty!32766 (tail!10382 (t!374129 s!2326))))))

(declare-fun e!3273876 () Bool)

(assert (=> d!1694030 (= (matchZipper!1125 (derivationStepZipper!1127 lt!2155534 (head!11285 (t!374129 s!2326))) (tail!10382 (t!374129 s!2326))) e!3273876)))

(declare-fun b!5263351 () Bool)

(assert (=> b!5263351 (= e!3273876 (nullableZipper!1283 (derivationStepZipper!1127 lt!2155534 (head!11285 (t!374129 s!2326)))))))

(declare-fun b!5263352 () Bool)

(assert (=> b!5263352 (= e!3273876 (matchZipper!1125 (derivationStepZipper!1127 (derivationStepZipper!1127 lt!2155534 (head!11285 (t!374129 s!2326))) (head!11285 (tail!10382 (t!374129 s!2326)))) (tail!10382 (tail!10382 (t!374129 s!2326)))))))

(assert (= (and d!1694030 c!911208) b!5263351))

(assert (= (and d!1694030 (not c!911208)) b!5263352))

(assert (=> d!1694030 m!6303828))

(declare-fun m!6304196 () Bool)

(assert (=> d!1694030 m!6304196))

(assert (=> b!5263351 m!6303826))

(declare-fun m!6304198 () Bool)

(assert (=> b!5263351 m!6304198))

(assert (=> b!5263352 m!6303828))

(declare-fun m!6304200 () Bool)

(assert (=> b!5263352 m!6304200))

(assert (=> b!5263352 m!6303826))

(assert (=> b!5263352 m!6304200))

(declare-fun m!6304202 () Bool)

(assert (=> b!5263352 m!6304202))

(assert (=> b!5263352 m!6303828))

(declare-fun m!6304204 () Bool)

(assert (=> b!5263352 m!6304204))

(assert (=> b!5263352 m!6304202))

(assert (=> b!5263352 m!6304204))

(declare-fun m!6304206 () Bool)

(assert (=> b!5263352 m!6304206))

(assert (=> b!5262697 d!1694030))

(declare-fun bs!1220065 () Bool)

(declare-fun d!1694032 () Bool)

(assert (= bs!1220065 (and d!1694032 b!5262556)))

(declare-fun lambda!265400 () Int)

(assert (=> bs!1220065 (= (= (head!11285 (t!374129 s!2326)) (h!67266 s!2326)) (= lambda!265400 lambda!265341))))

(assert (=> d!1694032 true))

(assert (=> d!1694032 (= (derivationStepZipper!1127 lt!2155534 (head!11285 (t!374129 s!2326))) (flatMap!608 lt!2155534 lambda!265400))))

(declare-fun bs!1220066 () Bool)

(assert (= bs!1220066 d!1694032))

(declare-fun m!6304208 () Bool)

(assert (=> bs!1220066 m!6304208))

(assert (=> b!5262697 d!1694032))

(declare-fun d!1694034 () Bool)

(assert (=> d!1694034 (= (head!11285 (t!374129 s!2326)) (h!67266 (t!374129 s!2326)))))

(assert (=> b!5262697 d!1694034))

(declare-fun d!1694036 () Bool)

(assert (=> d!1694036 (= (tail!10382 (t!374129 s!2326)) (t!374129 (t!374129 s!2326)))))

(assert (=> b!5262697 d!1694036))

(declare-fun d!1694038 () Bool)

(declare-fun lambda!265403 () Int)

(declare-fun exists!1986 ((InoxSet Context!8530) Int) Bool)

(assert (=> d!1694038 (= (nullableZipper!1283 ((_ map or) lt!2155534 lt!2155531)) (exists!1986 ((_ map or) lt!2155534 lt!2155531) lambda!265403))))

(declare-fun bs!1220067 () Bool)

(assert (= bs!1220067 d!1694038))

(declare-fun m!6304210 () Bool)

(assert (=> bs!1220067 m!6304210))

(assert (=> b!5262698 d!1694038))

(declare-fun bs!1220068 () Bool)

(declare-fun d!1694040 () Bool)

(assert (= bs!1220068 (and d!1694040 d!1694038)))

(declare-fun lambda!265404 () Int)

(assert (=> bs!1220068 (= lambda!265404 lambda!265403)))

(assert (=> d!1694040 (= (nullableZipper!1283 lt!2155531) (exists!1986 lt!2155531 lambda!265404))))

(declare-fun bs!1220069 () Bool)

(assert (= bs!1220069 d!1694040))

(declare-fun m!6304212 () Bool)

(assert (=> bs!1220069 m!6304212))

(assert (=> b!5263253 d!1694040))

(declare-fun d!1694042 () Bool)

(declare-fun c!911215 () Bool)

(assert (=> d!1694042 (= c!911215 ((_ is Nil!60820) lt!2155622))))

(declare-fun e!3273879 () (InoxSet Context!8530))

(assert (=> d!1694042 (= (content!10810 lt!2155622) e!3273879)))

(declare-fun b!5263359 () Bool)

(assert (=> b!5263359 (= e!3273879 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263360 () Bool)

(assert (=> b!5263360 (= e!3273879 ((_ map or) (store ((as const (Array Context!8530 Bool)) false) (h!67268 lt!2155622) true) (content!10810 (t!374131 lt!2155622))))))

(assert (= (and d!1694042 c!911215) b!5263359))

(assert (= (and d!1694042 (not c!911215)) b!5263360))

(declare-fun m!6304214 () Bool)

(assert (=> b!5263360 m!6304214))

(declare-fun m!6304216 () Bool)

(assert (=> b!5263360 m!6304216))

(assert (=> b!5263252 d!1694042))

(declare-fun d!1694044 () Bool)

(assert (=> d!1694044 (= (isEmptyLang!827 lt!2155613) ((_ is EmptyLang!14881) lt!2155613))))

(assert (=> b!5263200 d!1694044))

(declare-fun d!1694048 () Bool)

(assert (=> d!1694048 (= (nullable!5050 (regOne!30274 (regOne!30274 (regOne!30274 r!7292)))) (nullableFct!1436 (regOne!30274 (regOne!30274 (regOne!30274 r!7292)))))))

(declare-fun bs!1220070 () Bool)

(assert (= bs!1220070 d!1694048))

(declare-fun m!6304218 () Bool)

(assert (=> bs!1220070 m!6304218))

(assert (=> b!5263002 d!1694048))

(declare-fun b!5263361 () Bool)

(declare-fun res!2233295 () Bool)

(declare-fun e!3273884 () Bool)

(assert (=> b!5263361 (=> (not res!2233295) (not e!3273884))))

(declare-fun call!373367 () Bool)

(assert (=> b!5263361 (= res!2233295 call!373367)))

(declare-fun e!3273881 () Bool)

(assert (=> b!5263361 (= e!3273881 e!3273884)))

(declare-fun c!911216 () Bool)

(declare-fun bm!373362 () Bool)

(assert (=> bm!373362 (= call!373367 (validRegex!6617 (ite c!911216 (regOne!30275 (ite c!911197 (reg!15210 (regOne!30274 (regOne!30274 r!7292))) (ite c!911196 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292)))))) (regOne!30274 (ite c!911197 (reg!15210 (regOne!30274 (regOne!30274 r!7292))) (ite c!911196 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292)))))))))))

(declare-fun b!5263362 () Bool)

(declare-fun e!3273883 () Bool)

(declare-fun call!373369 () Bool)

(assert (=> b!5263362 (= e!3273883 call!373369)))

(declare-fun b!5263363 () Bool)

(declare-fun e!3273882 () Bool)

(assert (=> b!5263363 (= e!3273882 e!3273881)))

(assert (=> b!5263363 (= c!911216 ((_ is Union!14881) (ite c!911197 (reg!15210 (regOne!30274 (regOne!30274 r!7292))) (ite c!911196 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292)))))))))

(declare-fun bm!373363 () Bool)

(declare-fun call!373368 () Bool)

(assert (=> bm!373363 (= call!373368 call!373369)))

(declare-fun b!5263364 () Bool)

(assert (=> b!5263364 (= e!3273882 e!3273883)))

(declare-fun res!2233293 () Bool)

(assert (=> b!5263364 (= res!2233293 (not (nullable!5050 (reg!15210 (ite c!911197 (reg!15210 (regOne!30274 (regOne!30274 r!7292))) (ite c!911196 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292)))))))))))

(assert (=> b!5263364 (=> (not res!2233293) (not e!3273883))))

(declare-fun c!911217 () Bool)

(declare-fun bm!373364 () Bool)

(assert (=> bm!373364 (= call!373369 (validRegex!6617 (ite c!911217 (reg!15210 (ite c!911197 (reg!15210 (regOne!30274 (regOne!30274 r!7292))) (ite c!911196 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292)))))) (ite c!911216 (regTwo!30275 (ite c!911197 (reg!15210 (regOne!30274 (regOne!30274 r!7292))) (ite c!911196 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292)))))) (regTwo!30274 (ite c!911197 (reg!15210 (regOne!30274 (regOne!30274 r!7292))) (ite c!911196 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))))))))))))

(declare-fun b!5263366 () Bool)

(declare-fun e!3273885 () Bool)

(assert (=> b!5263366 (= e!3273885 e!3273882)))

(assert (=> b!5263366 (= c!911217 ((_ is Star!14881) (ite c!911197 (reg!15210 (regOne!30274 (regOne!30274 r!7292))) (ite c!911196 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292)))))))))

(declare-fun b!5263367 () Bool)

(declare-fun res!2233294 () Bool)

(declare-fun e!3273880 () Bool)

(assert (=> b!5263367 (=> res!2233294 e!3273880)))

(assert (=> b!5263367 (= res!2233294 (not ((_ is Concat!23726) (ite c!911197 (reg!15210 (regOne!30274 (regOne!30274 r!7292))) (ite c!911196 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))))))))))

(assert (=> b!5263367 (= e!3273881 e!3273880)))

(declare-fun b!5263365 () Bool)

(declare-fun e!3273886 () Bool)

(assert (=> b!5263365 (= e!3273880 e!3273886)))

(declare-fun res!2233296 () Bool)

(assert (=> b!5263365 (=> (not res!2233296) (not e!3273886))))

(assert (=> b!5263365 (= res!2233296 call!373367)))

(declare-fun d!1694050 () Bool)

(declare-fun res!2233297 () Bool)

(assert (=> d!1694050 (=> res!2233297 e!3273885)))

(assert (=> d!1694050 (= res!2233297 ((_ is ElementMatch!14881) (ite c!911197 (reg!15210 (regOne!30274 (regOne!30274 r!7292))) (ite c!911196 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292)))))))))

(assert (=> d!1694050 (= (validRegex!6617 (ite c!911197 (reg!15210 (regOne!30274 (regOne!30274 r!7292))) (ite c!911196 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292)))))) e!3273885)))

(declare-fun b!5263368 () Bool)

(assert (=> b!5263368 (= e!3273886 call!373368)))

(declare-fun b!5263369 () Bool)

(assert (=> b!5263369 (= e!3273884 call!373368)))

(assert (= (and d!1694050 (not res!2233297)) b!5263366))

(assert (= (and b!5263366 c!911217) b!5263364))

(assert (= (and b!5263366 (not c!911217)) b!5263363))

(assert (= (and b!5263364 res!2233293) b!5263362))

(assert (= (and b!5263363 c!911216) b!5263361))

(assert (= (and b!5263363 (not c!911216)) b!5263367))

(assert (= (and b!5263361 res!2233295) b!5263369))

(assert (= (and b!5263367 (not res!2233294)) b!5263365))

(assert (= (and b!5263365 res!2233296) b!5263368))

(assert (= (or b!5263369 b!5263368) bm!373363))

(assert (= (or b!5263361 b!5263365) bm!373362))

(assert (= (or b!5263362 bm!373363) bm!373364))

(declare-fun m!6304220 () Bool)

(assert (=> bm!373362 m!6304220))

(declare-fun m!6304222 () Bool)

(assert (=> b!5263364 m!6304222))

(declare-fun m!6304224 () Bool)

(assert (=> bm!373364 m!6304224))

(assert (=> bm!373353 d!1694050))

(assert (=> b!5263212 d!1693910))

(declare-fun bs!1220071 () Bool)

(declare-fun d!1694052 () Bool)

(assert (= bs!1220071 (and d!1694052 d!1693988)))

(declare-fun lambda!265405 () Int)

(assert (=> bs!1220071 (= lambda!265405 lambda!265396)))

(declare-fun bs!1220072 () Bool)

(assert (= bs!1220072 (and d!1694052 d!1693986)))

(assert (=> bs!1220072 (= lambda!265405 lambda!265393)))

(declare-fun bs!1220073 () Bool)

(assert (= bs!1220073 (and d!1694052 d!1693950)))

(assert (=> bs!1220073 (= lambda!265405 lambda!265383)))

(declare-fun bs!1220074 () Bool)

(assert (= bs!1220074 (and d!1694052 d!1693910)))

(assert (=> bs!1220074 (= lambda!265405 lambda!265362)))

(declare-fun bs!1220075 () Bool)

(assert (= bs!1220075 (and d!1694052 d!1694006)))

(assert (=> bs!1220075 (= lambda!265405 lambda!265397)))

(declare-fun lt!2155624 () List!60943)

(assert (=> d!1694052 (forall!14293 lt!2155624 lambda!265405)))

(declare-fun e!3273887 () List!60943)

(assert (=> d!1694052 (= lt!2155624 e!3273887)))

(declare-fun c!911218 () Bool)

(assert (=> d!1694052 (= c!911218 ((_ is Cons!60820) (t!374131 zl!343)))))

(assert (=> d!1694052 (= (unfocusZipperList!323 (t!374131 zl!343)) lt!2155624)))

(declare-fun b!5263370 () Bool)

(assert (=> b!5263370 (= e!3273887 (Cons!60819 (generalisedConcat!550 (exprs!4765 (h!67268 (t!374131 zl!343)))) (unfocusZipperList!323 (t!374131 (t!374131 zl!343)))))))

(declare-fun b!5263371 () Bool)

(assert (=> b!5263371 (= e!3273887 Nil!60819)))

(assert (= (and d!1694052 c!911218) b!5263370))

(assert (= (and d!1694052 (not c!911218)) b!5263371))

(declare-fun m!6304226 () Bool)

(assert (=> d!1694052 m!6304226))

(declare-fun m!6304228 () Bool)

(assert (=> b!5263370 m!6304228))

(declare-fun m!6304230 () Bool)

(assert (=> b!5263370 m!6304230))

(assert (=> b!5263212 d!1694052))

(declare-fun bs!1220076 () Bool)

(declare-fun b!5263381 () Bool)

(assert (= bs!1220076 (and b!5263381 b!5262535)))

(declare-fun lambda!265406 () Int)

(assert (=> bs!1220076 (not (= lambda!265406 lambda!265339))))

(declare-fun bs!1220077 () Bool)

(assert (= bs!1220077 (and b!5263381 d!1693940)))

(assert (=> bs!1220077 (not (= lambda!265406 lambda!265380))))

(declare-fun bs!1220078 () Bool)

(assert (= bs!1220078 (and b!5263381 d!1693938)))

(assert (=> bs!1220078 (not (= lambda!265406 lambda!265372))))

(declare-fun bs!1220079 () Bool)

(assert (= bs!1220079 (and b!5263381 b!5263134)))

(assert (=> bs!1220079 (= (and (= (reg!15210 (regTwo!30275 r!7292)) (reg!15210 r!7292)) (= (regTwo!30275 r!7292) r!7292)) (= lambda!265406 lambda!265389))))

(assert (=> bs!1220077 (not (= lambda!265406 lambda!265379))))

(assert (=> bs!1220076 (not (= lambda!265406 lambda!265340))))

(declare-fun bs!1220080 () Bool)

(assert (= bs!1220080 (and b!5263381 b!5263135)))

(assert (=> bs!1220080 (not (= lambda!265406 lambda!265390))))

(assert (=> b!5263381 true))

(assert (=> b!5263381 true))

(declare-fun bs!1220081 () Bool)

(declare-fun b!5263382 () Bool)

(assert (= bs!1220081 (and b!5263382 b!5262535)))

(declare-fun lambda!265407 () Int)

(assert (=> bs!1220081 (not (= lambda!265407 lambda!265339))))

(declare-fun bs!1220082 () Bool)

(assert (= bs!1220082 (and b!5263382 d!1693940)))

(assert (=> bs!1220082 (= (and (= (regOne!30274 (regTwo!30275 r!7292)) (regOne!30274 r!7292)) (= (regTwo!30274 (regTwo!30275 r!7292)) (regTwo!30274 r!7292))) (= lambda!265407 lambda!265380))))

(declare-fun bs!1220083 () Bool)

(assert (= bs!1220083 (and b!5263382 d!1693938)))

(assert (=> bs!1220083 (not (= lambda!265407 lambda!265372))))

(declare-fun bs!1220084 () Bool)

(assert (= bs!1220084 (and b!5263382 b!5263134)))

(assert (=> bs!1220084 (not (= lambda!265407 lambda!265389))))

(assert (=> bs!1220082 (not (= lambda!265407 lambda!265379))))

(assert (=> bs!1220081 (= (and (= (regOne!30274 (regTwo!30275 r!7292)) (regOne!30274 r!7292)) (= (regTwo!30274 (regTwo!30275 r!7292)) (regTwo!30274 r!7292))) (= lambda!265407 lambda!265340))))

(declare-fun bs!1220085 () Bool)

(assert (= bs!1220085 (and b!5263382 b!5263381)))

(assert (=> bs!1220085 (not (= lambda!265407 lambda!265406))))

(declare-fun bs!1220086 () Bool)

(assert (= bs!1220086 (and b!5263382 b!5263135)))

(assert (=> bs!1220086 (= (and (= (regOne!30274 (regTwo!30275 r!7292)) (regOne!30274 r!7292)) (= (regTwo!30274 (regTwo!30275 r!7292)) (regTwo!30274 r!7292))) (= lambda!265407 lambda!265390))))

(assert (=> b!5263382 true))

(assert (=> b!5263382 true))

(declare-fun b!5263372 () Bool)

(declare-fun c!911220 () Bool)

(assert (=> b!5263372 (= c!911220 ((_ is Union!14881) (regTwo!30275 r!7292)))))

(declare-fun e!3273894 () Bool)

(declare-fun e!3273892 () Bool)

(assert (=> b!5263372 (= e!3273894 e!3273892)))

(declare-fun b!5263373 () Bool)

(declare-fun e!3273889 () Bool)

(assert (=> b!5263373 (= e!3273892 e!3273889)))

(declare-fun c!911222 () Bool)

(assert (=> b!5263373 (= c!911222 ((_ is Star!14881) (regTwo!30275 r!7292)))))

(declare-fun b!5263374 () Bool)

(assert (=> b!5263374 (= e!3273894 (= s!2326 (Cons!60818 (c!910993 (regTwo!30275 r!7292)) Nil!60818)))))

(declare-fun call!373370 () Bool)

(declare-fun bm!373365 () Bool)

(assert (=> bm!373365 (= call!373370 (Exists!2062 (ite c!911222 lambda!265406 lambda!265407)))))

(declare-fun b!5263375 () Bool)

(declare-fun e!3273888 () Bool)

(assert (=> b!5263375 (= e!3273892 e!3273888)))

(declare-fun res!2233303 () Bool)

(assert (=> b!5263375 (= res!2233303 (matchRSpec!1984 (regOne!30275 (regTwo!30275 r!7292)) s!2326))))

(assert (=> b!5263375 (=> res!2233303 e!3273888)))

(declare-fun b!5263376 () Bool)

(declare-fun e!3273893 () Bool)

(declare-fun e!3273890 () Bool)

(assert (=> b!5263376 (= e!3273893 e!3273890)))

(declare-fun res!2233301 () Bool)

(assert (=> b!5263376 (= res!2233301 (not ((_ is EmptyLang!14881) (regTwo!30275 r!7292))))))

(assert (=> b!5263376 (=> (not res!2233301) (not e!3273890))))

(declare-fun d!1694056 () Bool)

(declare-fun c!911219 () Bool)

(assert (=> d!1694056 (= c!911219 ((_ is EmptyExpr!14881) (regTwo!30275 r!7292)))))

(assert (=> d!1694056 (= (matchRSpec!1984 (regTwo!30275 r!7292) s!2326) e!3273893)))

(declare-fun b!5263377 () Bool)

(declare-fun res!2233302 () Bool)

(declare-fun e!3273891 () Bool)

(assert (=> b!5263377 (=> res!2233302 e!3273891)))

(declare-fun call!373371 () Bool)

(assert (=> b!5263377 (= res!2233302 call!373371)))

(assert (=> b!5263377 (= e!3273889 e!3273891)))

(declare-fun bm!373366 () Bool)

(assert (=> bm!373366 (= call!373371 (isEmpty!32766 s!2326))))

(declare-fun b!5263378 () Bool)

(assert (=> b!5263378 (= e!3273893 call!373371)))

(declare-fun b!5263379 () Bool)

(assert (=> b!5263379 (= e!3273888 (matchRSpec!1984 (regTwo!30275 (regTwo!30275 r!7292)) s!2326))))

(declare-fun b!5263380 () Bool)

(declare-fun c!911221 () Bool)

(assert (=> b!5263380 (= c!911221 ((_ is ElementMatch!14881) (regTwo!30275 r!7292)))))

(assert (=> b!5263380 (= e!3273890 e!3273894)))

(assert (=> b!5263381 (= e!3273891 call!373370)))

(assert (=> b!5263382 (= e!3273889 call!373370)))

(assert (= (and d!1694056 c!911219) b!5263378))

(assert (= (and d!1694056 (not c!911219)) b!5263376))

(assert (= (and b!5263376 res!2233301) b!5263380))

(assert (= (and b!5263380 c!911221) b!5263374))

(assert (= (and b!5263380 (not c!911221)) b!5263372))

(assert (= (and b!5263372 c!911220) b!5263375))

(assert (= (and b!5263372 (not c!911220)) b!5263373))

(assert (= (and b!5263375 (not res!2233303)) b!5263379))

(assert (= (and b!5263373 c!911222) b!5263377))

(assert (= (and b!5263373 (not c!911222)) b!5263382))

(assert (= (and b!5263377 (not res!2233302)) b!5263381))

(assert (= (or b!5263381 b!5263382) bm!373365))

(assert (= (or b!5263378 b!5263377) bm!373366))

(declare-fun m!6304232 () Bool)

(assert (=> bm!373365 m!6304232))

(declare-fun m!6304234 () Bool)

(assert (=> b!5263375 m!6304234))

(assert (=> bm!373366 m!6304060))

(declare-fun m!6304236 () Bool)

(assert (=> b!5263379 m!6304236))

(assert (=> b!5263132 d!1694056))

(declare-fun d!1694058 () Bool)

(assert (=> d!1694058 (= (nullable!5050 (reg!15210 r!7292)) (nullableFct!1436 (reg!15210 r!7292)))))

(declare-fun bs!1220087 () Bool)

(assert (= bs!1220087 d!1694058))

(declare-fun m!6304238 () Bool)

(assert (=> bs!1220087 m!6304238))

(assert (=> b!5262740 d!1694058))

(assert (=> d!1693982 d!1693980))

(assert (=> d!1693982 d!1693966))

(declare-fun d!1694060 () Bool)

(assert (=> d!1694060 (= (matchR!7066 r!7292 s!2326) (matchRSpec!1984 r!7292 s!2326))))

(assert (=> d!1694060 true))

(declare-fun _$88!3541 () Unit!153042)

(assert (=> d!1694060 (= (choose!39268 r!7292 s!2326) _$88!3541)))

(declare-fun bs!1220088 () Bool)

(assert (= bs!1220088 d!1694060))

(assert (=> bs!1220088 m!6303706))

(assert (=> bs!1220088 m!6303704))

(assert (=> d!1693982 d!1694060))

(assert (=> d!1693982 d!1693906))

(declare-fun d!1694064 () Bool)

(declare-fun res!2233314 () Bool)

(declare-fun e!3273905 () Bool)

(assert (=> d!1694064 (=> res!2233314 e!3273905)))

(assert (=> d!1694064 (= res!2233314 ((_ is Nil!60819) lt!2155616))))

(assert (=> d!1694064 (= (forall!14293 lt!2155616 lambda!265396) e!3273905)))

(declare-fun b!5263393 () Bool)

(declare-fun e!3273906 () Bool)

(assert (=> b!5263393 (= e!3273905 e!3273906)))

(declare-fun res!2233315 () Bool)

(assert (=> b!5263393 (=> (not res!2233315) (not e!3273906))))

(declare-fun dynLambda!24033 (Int Regex!14881) Bool)

(assert (=> b!5263393 (= res!2233315 (dynLambda!24033 lambda!265396 (h!67267 lt!2155616)))))

(declare-fun b!5263394 () Bool)

(assert (=> b!5263394 (= e!3273906 (forall!14293 (t!374130 lt!2155616) lambda!265396))))

(assert (= (and d!1694064 (not res!2233314)) b!5263393))

(assert (= (and b!5263393 res!2233315) b!5263394))

(declare-fun b_lambda!203071 () Bool)

(assert (=> (not b_lambda!203071) (not b!5263393)))

(declare-fun m!6304244 () Bool)

(assert (=> b!5263393 m!6304244))

(declare-fun m!6304246 () Bool)

(assert (=> b!5263394 m!6304246))

(assert (=> d!1693988 d!1694064))

(assert (=> b!5262673 d!1694008))

(declare-fun d!1694066 () Bool)

(assert (=> d!1694066 (= (nullable!5050 (h!67267 (exprs!4765 lt!2155536))) (nullableFct!1436 (h!67267 (exprs!4765 lt!2155536))))))

(declare-fun bs!1220090 () Bool)

(assert (= bs!1220090 d!1694066))

(declare-fun m!6304248 () Bool)

(assert (=> bs!1220090 m!6304248))

(assert (=> b!5263245 d!1694066))

(declare-fun b!5263395 () Bool)

(declare-fun res!2233318 () Bool)

(declare-fun e!3273911 () Bool)

(assert (=> b!5263395 (=> (not res!2233318) (not e!3273911))))

(declare-fun call!373372 () Bool)

(assert (=> b!5263395 (= res!2233318 call!373372)))

(declare-fun e!3273908 () Bool)

(assert (=> b!5263395 (= e!3273908 e!3273911)))

(declare-fun bm!373367 () Bool)

(declare-fun c!911223 () Bool)

(assert (=> bm!373367 (= call!373372 (validRegex!6617 (ite c!911223 (regOne!30275 (ite c!911046 (reg!15210 r!7292) (ite c!911045 (regTwo!30275 r!7292) (regTwo!30274 r!7292)))) (regOne!30274 (ite c!911046 (reg!15210 r!7292) (ite c!911045 (regTwo!30275 r!7292) (regTwo!30274 r!7292)))))))))

(declare-fun b!5263396 () Bool)

(declare-fun e!3273910 () Bool)

(declare-fun call!373374 () Bool)

(assert (=> b!5263396 (= e!3273910 call!373374)))

(declare-fun b!5263397 () Bool)

(declare-fun e!3273909 () Bool)

(assert (=> b!5263397 (= e!3273909 e!3273908)))

(assert (=> b!5263397 (= c!911223 ((_ is Union!14881) (ite c!911046 (reg!15210 r!7292) (ite c!911045 (regTwo!30275 r!7292) (regTwo!30274 r!7292)))))))

(declare-fun bm!373368 () Bool)

(declare-fun call!373373 () Bool)

(assert (=> bm!373368 (= call!373373 call!373374)))

(declare-fun b!5263398 () Bool)

(assert (=> b!5263398 (= e!3273909 e!3273910)))

(declare-fun res!2233316 () Bool)

(assert (=> b!5263398 (= res!2233316 (not (nullable!5050 (reg!15210 (ite c!911046 (reg!15210 r!7292) (ite c!911045 (regTwo!30275 r!7292) (regTwo!30274 r!7292)))))))))

(assert (=> b!5263398 (=> (not res!2233316) (not e!3273910))))

(declare-fun bm!373369 () Bool)

(declare-fun c!911224 () Bool)

(assert (=> bm!373369 (= call!373374 (validRegex!6617 (ite c!911224 (reg!15210 (ite c!911046 (reg!15210 r!7292) (ite c!911045 (regTwo!30275 r!7292) (regTwo!30274 r!7292)))) (ite c!911223 (regTwo!30275 (ite c!911046 (reg!15210 r!7292) (ite c!911045 (regTwo!30275 r!7292) (regTwo!30274 r!7292)))) (regTwo!30274 (ite c!911046 (reg!15210 r!7292) (ite c!911045 (regTwo!30275 r!7292) (regTwo!30274 r!7292))))))))))

(declare-fun b!5263400 () Bool)

(declare-fun e!3273912 () Bool)

(assert (=> b!5263400 (= e!3273912 e!3273909)))

(assert (=> b!5263400 (= c!911224 ((_ is Star!14881) (ite c!911046 (reg!15210 r!7292) (ite c!911045 (regTwo!30275 r!7292) (regTwo!30274 r!7292)))))))

(declare-fun b!5263401 () Bool)

(declare-fun res!2233317 () Bool)

(declare-fun e!3273907 () Bool)

(assert (=> b!5263401 (=> res!2233317 e!3273907)))

(assert (=> b!5263401 (= res!2233317 (not ((_ is Concat!23726) (ite c!911046 (reg!15210 r!7292) (ite c!911045 (regTwo!30275 r!7292) (regTwo!30274 r!7292))))))))

(assert (=> b!5263401 (= e!3273908 e!3273907)))

(declare-fun b!5263399 () Bool)

(declare-fun e!3273913 () Bool)

(assert (=> b!5263399 (= e!3273907 e!3273913)))

(declare-fun res!2233319 () Bool)

(assert (=> b!5263399 (=> (not res!2233319) (not e!3273913))))

(assert (=> b!5263399 (= res!2233319 call!373372)))

(declare-fun d!1694068 () Bool)

(declare-fun res!2233320 () Bool)

(assert (=> d!1694068 (=> res!2233320 e!3273912)))

(assert (=> d!1694068 (= res!2233320 ((_ is ElementMatch!14881) (ite c!911046 (reg!15210 r!7292) (ite c!911045 (regTwo!30275 r!7292) (regTwo!30274 r!7292)))))))

(assert (=> d!1694068 (= (validRegex!6617 (ite c!911046 (reg!15210 r!7292) (ite c!911045 (regTwo!30275 r!7292) (regTwo!30274 r!7292)))) e!3273912)))

(declare-fun b!5263402 () Bool)

(assert (=> b!5263402 (= e!3273913 call!373373)))

(declare-fun b!5263403 () Bool)

(assert (=> b!5263403 (= e!3273911 call!373373)))

(assert (= (and d!1694068 (not res!2233320)) b!5263400))

(assert (= (and b!5263400 c!911224) b!5263398))

(assert (= (and b!5263400 (not c!911224)) b!5263397))

(assert (= (and b!5263398 res!2233316) b!5263396))

(assert (= (and b!5263397 c!911223) b!5263395))

(assert (= (and b!5263397 (not c!911223)) b!5263401))

(assert (= (and b!5263395 res!2233318) b!5263403))

(assert (= (and b!5263401 (not res!2233317)) b!5263399))

(assert (= (and b!5263399 res!2233319) b!5263402))

(assert (= (or b!5263403 b!5263402) bm!373368))

(assert (= (or b!5263395 b!5263399) bm!373367))

(assert (= (or b!5263396 bm!373368) bm!373369))

(declare-fun m!6304250 () Bool)

(assert (=> bm!373367 m!6304250))

(declare-fun m!6304252 () Bool)

(assert (=> b!5263398 m!6304252))

(declare-fun m!6304254 () Bool)

(assert (=> bm!373369 m!6304254))

(assert (=> bm!373261 d!1694068))

(declare-fun b!5263406 () Bool)

(declare-fun res!2233323 () Bool)

(declare-fun e!3273919 () Bool)

(assert (=> b!5263406 (=> (not res!2233323) (not e!3273919))))

(declare-fun call!373375 () Bool)

(assert (=> b!5263406 (= res!2233323 call!373375)))

(declare-fun e!3273916 () Bool)

(assert (=> b!5263406 (= e!3273916 e!3273919)))

(declare-fun bm!373370 () Bool)

(declare-fun c!911226 () Bool)

(assert (=> bm!373370 (= call!373375 (validRegex!6617 (ite c!911226 (regOne!30275 lt!2155613) (regOne!30274 lt!2155613))))))

(declare-fun b!5263407 () Bool)

(declare-fun e!3273918 () Bool)

(declare-fun call!373377 () Bool)

(assert (=> b!5263407 (= e!3273918 call!373377)))

(declare-fun b!5263408 () Bool)

(declare-fun e!3273917 () Bool)

(assert (=> b!5263408 (= e!3273917 e!3273916)))

(assert (=> b!5263408 (= c!911226 ((_ is Union!14881) lt!2155613))))

(declare-fun bm!373371 () Bool)

(declare-fun call!373376 () Bool)

(assert (=> bm!373371 (= call!373376 call!373377)))

(declare-fun b!5263409 () Bool)

(assert (=> b!5263409 (= e!3273917 e!3273918)))

(declare-fun res!2233321 () Bool)

(assert (=> b!5263409 (= res!2233321 (not (nullable!5050 (reg!15210 lt!2155613))))))

(assert (=> b!5263409 (=> (not res!2233321) (not e!3273918))))

(declare-fun c!911227 () Bool)

(declare-fun bm!373372 () Bool)

(assert (=> bm!373372 (= call!373377 (validRegex!6617 (ite c!911227 (reg!15210 lt!2155613) (ite c!911226 (regTwo!30275 lt!2155613) (regTwo!30274 lt!2155613)))))))

(declare-fun b!5263411 () Bool)

(declare-fun e!3273920 () Bool)

(assert (=> b!5263411 (= e!3273920 e!3273917)))

(assert (=> b!5263411 (= c!911227 ((_ is Star!14881) lt!2155613))))

(declare-fun b!5263412 () Bool)

(declare-fun res!2233322 () Bool)

(declare-fun e!3273915 () Bool)

(assert (=> b!5263412 (=> res!2233322 e!3273915)))

(assert (=> b!5263412 (= res!2233322 (not ((_ is Concat!23726) lt!2155613)))))

(assert (=> b!5263412 (= e!3273916 e!3273915)))

(declare-fun b!5263410 () Bool)

(declare-fun e!3273921 () Bool)

(assert (=> b!5263410 (= e!3273915 e!3273921)))

(declare-fun res!2233324 () Bool)

(assert (=> b!5263410 (=> (not res!2233324) (not e!3273921))))

(assert (=> b!5263410 (= res!2233324 call!373375)))

(declare-fun d!1694072 () Bool)

(declare-fun res!2233325 () Bool)

(assert (=> d!1694072 (=> res!2233325 e!3273920)))

(assert (=> d!1694072 (= res!2233325 ((_ is ElementMatch!14881) lt!2155613))))

(assert (=> d!1694072 (= (validRegex!6617 lt!2155613) e!3273920)))

(declare-fun b!5263413 () Bool)

(assert (=> b!5263413 (= e!3273921 call!373376)))

(declare-fun b!5263414 () Bool)

(assert (=> b!5263414 (= e!3273919 call!373376)))

(assert (= (and d!1694072 (not res!2233325)) b!5263411))

(assert (= (and b!5263411 c!911227) b!5263409))

(assert (= (and b!5263411 (not c!911227)) b!5263408))

(assert (= (and b!5263409 res!2233321) b!5263407))

(assert (= (and b!5263408 c!911226) b!5263406))

(assert (= (and b!5263408 (not c!911226)) b!5263412))

(assert (= (and b!5263406 res!2233323) b!5263414))

(assert (= (and b!5263412 (not res!2233322)) b!5263410))

(assert (= (and b!5263410 res!2233324) b!5263413))

(assert (= (or b!5263414 b!5263413) bm!373371))

(assert (= (or b!5263406 b!5263410) bm!373370))

(assert (= (or b!5263407 bm!373371) bm!373372))

(declare-fun m!6304256 () Bool)

(assert (=> bm!373370 m!6304256))

(declare-fun m!6304258 () Bool)

(assert (=> b!5263409 m!6304258))

(declare-fun m!6304260 () Bool)

(assert (=> bm!373372 m!6304260))

(assert (=> d!1693986 d!1694072))

(declare-fun d!1694074 () Bool)

(declare-fun res!2233326 () Bool)

(declare-fun e!3273922 () Bool)

(assert (=> d!1694074 (=> res!2233326 e!3273922)))

(assert (=> d!1694074 (= res!2233326 ((_ is Nil!60819) (unfocusZipperList!323 zl!343)))))

(assert (=> d!1694074 (= (forall!14293 (unfocusZipperList!323 zl!343) lambda!265393) e!3273922)))

(declare-fun b!5263415 () Bool)

(declare-fun e!3273923 () Bool)

(assert (=> b!5263415 (= e!3273922 e!3273923)))

(declare-fun res!2233327 () Bool)

(assert (=> b!5263415 (=> (not res!2233327) (not e!3273923))))

(assert (=> b!5263415 (= res!2233327 (dynLambda!24033 lambda!265393 (h!67267 (unfocusZipperList!323 zl!343))))))

(declare-fun b!5263416 () Bool)

(assert (=> b!5263416 (= e!3273923 (forall!14293 (t!374130 (unfocusZipperList!323 zl!343)) lambda!265393))))

(assert (= (and d!1694074 (not res!2233326)) b!5263415))

(assert (= (and b!5263415 res!2233327) b!5263416))

(declare-fun b_lambda!203073 () Bool)

(assert (=> (not b_lambda!203073) (not b!5263415)))

(declare-fun m!6304268 () Bool)

(assert (=> b!5263415 m!6304268))

(declare-fun m!6304270 () Bool)

(assert (=> b!5263416 m!6304270))

(assert (=> d!1693986 d!1694074))

(declare-fun d!1694078 () Bool)

(assert (=> d!1694078 (= ($colon$colon!1334 (exprs!4765 lt!2155536) (ite (or c!911136 c!911135) (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 r!7292)))) (Cons!60819 (ite (or c!911136 c!911135) (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 r!7292))) (exprs!4765 lt!2155536)))))

(assert (=> bm!373327 d!1694078))

(declare-fun d!1694080 () Bool)

(assert (=> d!1694080 (= (isEmpty!32766 s!2326) ((_ is Nil!60818) s!2326))))

(assert (=> d!1693980 d!1694080))

(assert (=> d!1693980 d!1693906))

(declare-fun d!1694082 () Bool)

(assert (=> d!1694082 (= (isDefined!11695 lt!2155579) (not (isEmpty!32768 lt!2155579)))))

(declare-fun bs!1220096 () Bool)

(assert (= bs!1220096 d!1694082))

(declare-fun m!6304272 () Bool)

(assert (=> bs!1220096 m!6304272))

(assert (=> b!5262852 d!1694082))

(declare-fun b!5263428 () Bool)

(declare-fun c!911237 () Bool)

(assert (=> b!5263428 (= c!911237 ((_ is Star!14881) (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292))))))))))

(declare-fun e!3273933 () (InoxSet Context!8530))

(declare-fun e!3273932 () (InoxSet Context!8530))

(assert (=> b!5263428 (= e!3273933 e!3273932)))

(declare-fun b!5263429 () Bool)

(declare-fun c!911234 () Bool)

(declare-fun e!3273934 () Bool)

(assert (=> b!5263429 (= c!911234 e!3273934)))

(declare-fun res!2233329 () Bool)

(assert (=> b!5263429 (=> (not res!2233329) (not e!3273934))))

(assert (=> b!5263429 (= res!2233329 ((_ is Concat!23726) (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292))))))))))

(declare-fun e!3273935 () (InoxSet Context!8530))

(declare-fun e!3273931 () (InoxSet Context!8530))

(assert (=> b!5263429 (= e!3273935 e!3273931)))

(declare-fun bm!373379 () Bool)

(declare-fun call!373384 () (InoxSet Context!8530))

(declare-fun call!373389 () (InoxSet Context!8530))

(assert (=> bm!373379 (= call!373384 call!373389)))

(declare-fun bm!373381 () Bool)

(declare-fun call!373387 () (InoxSet Context!8530))

(assert (=> bm!373381 (= call!373387 call!373384)))

(declare-fun call!373388 () List!60943)

(declare-fun c!911235 () Bool)

(declare-fun bm!373382 () Bool)

(declare-fun call!373386 () (InoxSet Context!8530))

(assert (=> bm!373382 (= call!373386 (derivationStepZipperDown!329 (ite c!911235 (regTwo!30275 (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292))))))) (regOne!30274 (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292)))))))) (ite c!911235 (ite (or c!911132 c!911131) (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (Context!8531 call!373322)) (Context!8531 call!373388)) (h!67266 s!2326)))))

(declare-fun b!5263430 () Bool)

(assert (=> b!5263430 (= e!3273934 (nullable!5050 (regOne!30274 (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292)))))))))))

(declare-fun b!5263431 () Bool)

(assert (=> b!5263431 (= e!3273931 ((_ map or) call!373386 call!373384))))

(declare-fun b!5263432 () Bool)

(declare-fun e!3273930 () (InoxSet Context!8530))

(assert (=> b!5263432 (= e!3273930 e!3273935)))

(assert (=> b!5263432 (= c!911235 ((_ is Union!14881) (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292))))))))))

(declare-fun b!5263433 () Bool)

(assert (=> b!5263433 (= e!3273933 call!373387)))

(declare-fun bm!373383 () Bool)

(declare-fun call!373385 () List!60943)

(declare-fun c!911233 () Bool)

(assert (=> bm!373383 (= call!373389 (derivationStepZipperDown!329 (ite c!911235 (regOne!30275 (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292))))))) (ite c!911234 (regTwo!30274 (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292))))))) (ite c!911233 (regOne!30274 (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292))))))) (reg!15210 (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292)))))))))) (ite (or c!911235 c!911234) (ite (or c!911132 c!911131) (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (Context!8531 call!373322)) (Context!8531 call!373385)) (h!67266 s!2326)))))

(declare-fun bm!373380 () Bool)

(assert (=> bm!373380 (= call!373385 call!373388)))

(declare-fun c!911236 () Bool)

(declare-fun d!1694084 () Bool)

(assert (=> d!1694084 (= c!911236 (and ((_ is ElementMatch!14881) (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292))))))) (= (c!910993 (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292))))))) (h!67266 s!2326))))))

(assert (=> d!1694084 (= (derivationStepZipperDown!329 (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292)))))) (ite (or c!911132 c!911131) (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (Context!8531 call!373322)) (h!67266 s!2326)) e!3273930)))

(declare-fun b!5263434 () Bool)

(assert (=> b!5263434 (= e!3273932 call!373387)))

(declare-fun bm!373384 () Bool)

(assert (=> bm!373384 (= call!373388 ($colon$colon!1334 (exprs!4765 (ite (or c!911132 c!911131) (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (Context!8531 call!373322))) (ite (or c!911234 c!911233) (regTwo!30274 (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292))))))) (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292)))))))))))

(declare-fun b!5263435 () Bool)

(assert (=> b!5263435 (= e!3273935 ((_ map or) call!373389 call!373386))))

(declare-fun b!5263436 () Bool)

(assert (=> b!5263436 (= e!3273932 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263437 () Bool)

(assert (=> b!5263437 (= e!3273931 e!3273933)))

(assert (=> b!5263437 (= c!911233 ((_ is Concat!23726) (ite c!911132 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (ite c!911131 (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))) (ite c!911130 (regOne!30274 (regOne!30274 (regOne!30274 r!7292))) (reg!15210 (regOne!30274 (regOne!30274 r!7292))))))))))

(declare-fun b!5263438 () Bool)

(assert (=> b!5263438 (= e!3273930 (store ((as const (Array Context!8530 Bool)) false) (ite (or c!911132 c!911131) (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (Context!8531 call!373322)) true))))

(assert (= (and d!1694084 c!911236) b!5263438))

(assert (= (and d!1694084 (not c!911236)) b!5263432))

(assert (= (and b!5263432 c!911235) b!5263435))

(assert (= (and b!5263432 (not c!911235)) b!5263429))

(assert (= (and b!5263429 res!2233329) b!5263430))

(assert (= (and b!5263429 c!911234) b!5263431))

(assert (= (and b!5263429 (not c!911234)) b!5263437))

(assert (= (and b!5263437 c!911233) b!5263433))

(assert (= (and b!5263437 (not c!911233)) b!5263428))

(assert (= (and b!5263428 c!911237) b!5263434))

(assert (= (and b!5263428 (not c!911237)) b!5263436))

(assert (= (or b!5263433 b!5263434) bm!373380))

(assert (= (or b!5263433 b!5263434) bm!373381))

(assert (= (or b!5263431 bm!373380) bm!373384))

(assert (= (or b!5263431 bm!373381) bm!373379))

(assert (= (or b!5263435 b!5263431) bm!373382))

(assert (= (or b!5263435 bm!373379) bm!373383))

(declare-fun m!6304274 () Bool)

(assert (=> bm!373384 m!6304274))

(declare-fun m!6304276 () Bool)

(assert (=> b!5263438 m!6304276))

(declare-fun m!6304278 () Bool)

(assert (=> b!5263430 m!6304278))

(declare-fun m!6304280 () Bool)

(assert (=> bm!373382 m!6304280))

(declare-fun m!6304284 () Bool)

(assert (=> bm!373383 m!6304284))

(assert (=> bm!373320 d!1694084))

(assert (=> bm!373339 d!1694080))

(declare-fun d!1694086 () Bool)

(assert (=> d!1694086 (= (Exists!2062 (ite c!911155 lambda!265389 lambda!265390)) (choose!39264 (ite c!911155 lambda!265389 lambda!265390)))))

(declare-fun bs!1220097 () Bool)

(assert (= bs!1220097 d!1694086))

(declare-fun m!6304288 () Bool)

(assert (=> bs!1220097 m!6304288))

(assert (=> bm!373335 d!1694086))

(assert (=> d!1693996 d!1693994))

(declare-fun d!1694088 () Bool)

(assert (=> d!1694088 (= (flatMap!608 z!1189 lambda!265341) (dynLambda!24031 lambda!265341 (h!67268 zl!343)))))

(assert (=> d!1694088 true))

(declare-fun _$13!1793 () Unit!153042)

(assert (=> d!1694088 (= (choose!39272 z!1189 (h!67268 zl!343) lambda!265341) _$13!1793)))

(declare-fun b_lambda!203075 () Bool)

(assert (=> (not b_lambda!203075) (not d!1694088)))

(declare-fun bs!1220098 () Bool)

(assert (= bs!1220098 d!1694088))

(assert (=> bs!1220098 m!6303684))

(assert (=> bs!1220098 m!6304114))

(assert (=> d!1693996 d!1694088))

(declare-fun d!1694092 () Bool)

(assert (=> d!1694092 (= (head!11286 (unfocusZipperList!323 zl!343)) (h!67267 (unfocusZipperList!323 zl!343)))))

(assert (=> b!5263207 d!1694092))

(declare-fun d!1694094 () Bool)

(assert (=> d!1694094 (= (nullable!5050 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292)))) (nullableFct!1436 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292)))))))

(declare-fun bs!1220099 () Bool)

(assert (= bs!1220099 d!1694094))

(declare-fun m!6304296 () Bool)

(assert (=> bs!1220099 m!6304296))

(assert (=> b!5263014 d!1694094))

(declare-fun d!1694096 () Bool)

(assert (=> d!1694096 (= (isEmpty!32763 (exprs!4765 (h!67268 zl!343))) ((_ is Nil!60819) (exprs!4765 (h!67268 zl!343))))))

(assert (=> b!5262788 d!1694096))

(declare-fun d!1694098 () Bool)

(assert (=> d!1694098 (= (head!11285 s!2326) (h!67266 s!2326))))

(assert (=> b!5263167 d!1694098))

(declare-fun b!5263439 () Bool)

(declare-fun res!2233332 () Bool)

(declare-fun e!3273940 () Bool)

(assert (=> b!5263439 (=> (not res!2233332) (not e!3273940))))

(declare-fun call!373390 () Bool)

(assert (=> b!5263439 (= res!2233332 call!373390)))

(declare-fun e!3273937 () Bool)

(assert (=> b!5263439 (= e!3273937 e!3273940)))

(declare-fun bm!373385 () Bool)

(declare-fun c!911238 () Bool)

(assert (=> bm!373385 (= call!373390 (validRegex!6617 (ite c!911238 (regOne!30275 (ite c!911045 (regOne!30275 r!7292) (regOne!30274 r!7292))) (regOne!30274 (ite c!911045 (regOne!30275 r!7292) (regOne!30274 r!7292))))))))

(declare-fun b!5263440 () Bool)

(declare-fun e!3273939 () Bool)

(declare-fun call!373392 () Bool)

(assert (=> b!5263440 (= e!3273939 call!373392)))

(declare-fun b!5263441 () Bool)

(declare-fun e!3273938 () Bool)

(assert (=> b!5263441 (= e!3273938 e!3273937)))

(assert (=> b!5263441 (= c!911238 ((_ is Union!14881) (ite c!911045 (regOne!30275 r!7292) (regOne!30274 r!7292))))))

(declare-fun bm!373386 () Bool)

(declare-fun call!373391 () Bool)

(assert (=> bm!373386 (= call!373391 call!373392)))

(declare-fun b!5263442 () Bool)

(assert (=> b!5263442 (= e!3273938 e!3273939)))

(declare-fun res!2233330 () Bool)

(assert (=> b!5263442 (= res!2233330 (not (nullable!5050 (reg!15210 (ite c!911045 (regOne!30275 r!7292) (regOne!30274 r!7292))))))))

(assert (=> b!5263442 (=> (not res!2233330) (not e!3273939))))

(declare-fun c!911239 () Bool)

(declare-fun bm!373387 () Bool)

(assert (=> bm!373387 (= call!373392 (validRegex!6617 (ite c!911239 (reg!15210 (ite c!911045 (regOne!30275 r!7292) (regOne!30274 r!7292))) (ite c!911238 (regTwo!30275 (ite c!911045 (regOne!30275 r!7292) (regOne!30274 r!7292))) (regTwo!30274 (ite c!911045 (regOne!30275 r!7292) (regOne!30274 r!7292)))))))))

(declare-fun b!5263444 () Bool)

(declare-fun e!3273941 () Bool)

(assert (=> b!5263444 (= e!3273941 e!3273938)))

(assert (=> b!5263444 (= c!911239 ((_ is Star!14881) (ite c!911045 (regOne!30275 r!7292) (regOne!30274 r!7292))))))

(declare-fun b!5263445 () Bool)

(declare-fun res!2233331 () Bool)

(declare-fun e!3273936 () Bool)

(assert (=> b!5263445 (=> res!2233331 e!3273936)))

(assert (=> b!5263445 (= res!2233331 (not ((_ is Concat!23726) (ite c!911045 (regOne!30275 r!7292) (regOne!30274 r!7292)))))))

(assert (=> b!5263445 (= e!3273937 e!3273936)))

(declare-fun b!5263443 () Bool)

(declare-fun e!3273942 () Bool)

(assert (=> b!5263443 (= e!3273936 e!3273942)))

(declare-fun res!2233333 () Bool)

(assert (=> b!5263443 (=> (not res!2233333) (not e!3273942))))

(assert (=> b!5263443 (= res!2233333 call!373390)))

(declare-fun d!1694100 () Bool)

(declare-fun res!2233334 () Bool)

(assert (=> d!1694100 (=> res!2233334 e!3273941)))

(assert (=> d!1694100 (= res!2233334 ((_ is ElementMatch!14881) (ite c!911045 (regOne!30275 r!7292) (regOne!30274 r!7292))))))

(assert (=> d!1694100 (= (validRegex!6617 (ite c!911045 (regOne!30275 r!7292) (regOne!30274 r!7292))) e!3273941)))

(declare-fun b!5263446 () Bool)

(assert (=> b!5263446 (= e!3273942 call!373391)))

(declare-fun b!5263447 () Bool)

(assert (=> b!5263447 (= e!3273940 call!373391)))

(assert (= (and d!1694100 (not res!2233334)) b!5263444))

(assert (= (and b!5263444 c!911239) b!5263442))

(assert (= (and b!5263444 (not c!911239)) b!5263441))

(assert (= (and b!5263442 res!2233330) b!5263440))

(assert (= (and b!5263441 c!911238) b!5263439))

(assert (= (and b!5263441 (not c!911238)) b!5263445))

(assert (= (and b!5263439 res!2233332) b!5263447))

(assert (= (and b!5263445 (not res!2233331)) b!5263443))

(assert (= (and b!5263443 res!2233333) b!5263446))

(assert (= (or b!5263447 b!5263446) bm!373386))

(assert (= (or b!5263439 b!5263443) bm!373385))

(assert (= (or b!5263440 bm!373386) bm!373387))

(declare-fun m!6304298 () Bool)

(assert (=> bm!373385 m!6304298))

(declare-fun m!6304300 () Bool)

(assert (=> b!5263442 m!6304300))

(declare-fun m!6304302 () Bool)

(assert (=> bm!373387 m!6304302))

(assert (=> bm!373259 d!1694100))

(declare-fun d!1694102 () Bool)

(assert (=> d!1694102 (= (nullable!5050 (reg!15210 (regOne!30274 (regOne!30274 r!7292)))) (nullableFct!1436 (reg!15210 (regOne!30274 (regOne!30274 r!7292)))))))

(declare-fun bs!1220100 () Bool)

(assert (= bs!1220100 d!1694102))

(declare-fun m!6304304 () Bool)

(assert (=> bs!1220100 m!6304304))

(assert (=> b!5263258 d!1694102))

(assert (=> bm!373336 d!1694080))

(declare-fun b!5263452 () Bool)

(declare-fun c!911244 () Bool)

(assert (=> b!5263452 (= c!911244 ((_ is Star!14881) (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292))))))))))

(declare-fun e!3273950 () (InoxSet Context!8530))

(declare-fun e!3273949 () (InoxSet Context!8530))

(assert (=> b!5263452 (= e!3273950 e!3273949)))

(declare-fun b!5263453 () Bool)

(declare-fun c!911241 () Bool)

(declare-fun e!3273951 () Bool)

(assert (=> b!5263453 (= c!911241 e!3273951)))

(declare-fun res!2233339 () Bool)

(assert (=> b!5263453 (=> (not res!2233339) (not e!3273951))))

(assert (=> b!5263453 (= res!2233339 ((_ is Concat!23726) (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292))))))))))

(declare-fun e!3273952 () (InoxSet Context!8530))

(declare-fun e!3273948 () (InoxSet Context!8530))

(assert (=> b!5263453 (= e!3273952 e!3273948)))

(declare-fun bm!373388 () Bool)

(declare-fun call!373393 () (InoxSet Context!8530))

(declare-fun call!373398 () (InoxSet Context!8530))

(assert (=> bm!373388 (= call!373393 call!373398)))

(declare-fun bm!373390 () Bool)

(declare-fun call!373396 () (InoxSet Context!8530))

(assert (=> bm!373390 (= call!373396 call!373393)))

(declare-fun call!373395 () (InoxSet Context!8530))

(declare-fun bm!373391 () Bool)

(declare-fun c!911242 () Bool)

(declare-fun call!373397 () List!60943)

(assert (=> bm!373391 (= call!373395 (derivationStepZipperDown!329 (ite c!911242 (regTwo!30275 (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292))))))) (regOne!30274 (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292)))))))) (ite c!911242 (ite (or c!911137 c!911136) lt!2155536 (Context!8531 call!373328)) (Context!8531 call!373397)) (h!67266 s!2326)))))

(declare-fun b!5263454 () Bool)

(assert (=> b!5263454 (= e!3273951 (nullable!5050 (regOne!30274 (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292)))))))))))

(declare-fun b!5263455 () Bool)

(assert (=> b!5263455 (= e!3273948 ((_ map or) call!373395 call!373393))))

(declare-fun b!5263456 () Bool)

(declare-fun e!3273947 () (InoxSet Context!8530))

(assert (=> b!5263456 (= e!3273947 e!3273952)))

(assert (=> b!5263456 (= c!911242 ((_ is Union!14881) (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292))))))))))

(declare-fun b!5263457 () Bool)

(assert (=> b!5263457 (= e!3273950 call!373396)))

(declare-fun bm!373392 () Bool)

(declare-fun call!373394 () List!60943)

(declare-fun c!911240 () Bool)

(assert (=> bm!373392 (= call!373398 (derivationStepZipperDown!329 (ite c!911242 (regOne!30275 (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292))))))) (ite c!911241 (regTwo!30274 (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292))))))) (ite c!911240 (regOne!30274 (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292))))))) (reg!15210 (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292)))))))))) (ite (or c!911242 c!911241) (ite (or c!911137 c!911136) lt!2155536 (Context!8531 call!373328)) (Context!8531 call!373394)) (h!67266 s!2326)))))

(declare-fun bm!373389 () Bool)

(assert (=> bm!373389 (= call!373394 call!373397)))

(declare-fun c!911243 () Bool)

(declare-fun d!1694104 () Bool)

(assert (=> d!1694104 (= c!911243 (and ((_ is ElementMatch!14881) (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292))))))) (= (c!910993 (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292))))))) (h!67266 s!2326))))))

(assert (=> d!1694104 (= (derivationStepZipperDown!329 (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292)))))) (ite (or c!911137 c!911136) lt!2155536 (Context!8531 call!373328)) (h!67266 s!2326)) e!3273947)))

(declare-fun b!5263458 () Bool)

(assert (=> b!5263458 (= e!3273949 call!373396)))

(declare-fun bm!373393 () Bool)

(assert (=> bm!373393 (= call!373397 ($colon$colon!1334 (exprs!4765 (ite (or c!911137 c!911136) lt!2155536 (Context!8531 call!373328))) (ite (or c!911241 c!911240) (regTwo!30274 (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292))))))) (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292)))))))))))

(declare-fun b!5263459 () Bool)

(assert (=> b!5263459 (= e!3273952 ((_ map or) call!373398 call!373395))))

(declare-fun b!5263460 () Bool)

(assert (=> b!5263460 (= e!3273949 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263461 () Bool)

(assert (=> b!5263461 (= e!3273948 e!3273950)))

(assert (=> b!5263461 (= c!911240 ((_ is Concat!23726) (ite c!911137 (regOne!30275 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911136 (regTwo!30274 (regTwo!30274 (regOne!30274 r!7292))) (ite c!911135 (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))) (reg!15210 (regTwo!30274 (regOne!30274 r!7292))))))))))

(declare-fun b!5263462 () Bool)

(assert (=> b!5263462 (= e!3273947 (store ((as const (Array Context!8530 Bool)) false) (ite (or c!911137 c!911136) lt!2155536 (Context!8531 call!373328)) true))))

(assert (= (and d!1694104 c!911243) b!5263462))

(assert (= (and d!1694104 (not c!911243)) b!5263456))

(assert (= (and b!5263456 c!911242) b!5263459))

(assert (= (and b!5263456 (not c!911242)) b!5263453))

(assert (= (and b!5263453 res!2233339) b!5263454))

(assert (= (and b!5263453 c!911241) b!5263455))

(assert (= (and b!5263453 (not c!911241)) b!5263461))

(assert (= (and b!5263461 c!911240) b!5263457))

(assert (= (and b!5263461 (not c!911240)) b!5263452))

(assert (= (and b!5263452 c!911244) b!5263458))

(assert (= (and b!5263452 (not c!911244)) b!5263460))

(assert (= (or b!5263457 b!5263458) bm!373389))

(assert (= (or b!5263457 b!5263458) bm!373390))

(assert (= (or b!5263455 bm!373389) bm!373393))

(assert (= (or b!5263455 bm!373390) bm!373388))

(assert (= (or b!5263459 b!5263455) bm!373391))

(assert (= (or b!5263459 bm!373388) bm!373392))

(declare-fun m!6304306 () Bool)

(assert (=> bm!373393 m!6304306))

(declare-fun m!6304308 () Bool)

(assert (=> b!5263462 m!6304308))

(declare-fun m!6304310 () Bool)

(assert (=> b!5263454 m!6304310))

(declare-fun m!6304312 () Bool)

(assert (=> bm!373391 m!6304312))

(declare-fun m!6304314 () Bool)

(assert (=> bm!373392 m!6304314))

(assert (=> bm!373326 d!1694104))

(assert (=> d!1693924 d!1694082))

(declare-fun b!5263465 () Bool)

(declare-fun e!3273960 () Bool)

(assert (=> b!5263465 (= e!3273960 (= (head!11285 Nil!60818) (c!910993 (regOne!30274 r!7292))))))

(declare-fun b!5263466 () Bool)

(declare-fun res!2233348 () Bool)

(declare-fun e!3273957 () Bool)

(assert (=> b!5263466 (=> res!2233348 e!3273957)))

(assert (=> b!5263466 (= res!2233348 e!3273960)))

(declare-fun res!2233346 () Bool)

(assert (=> b!5263466 (=> (not res!2233346) (not e!3273960))))

(declare-fun lt!2155626 () Bool)

(assert (=> b!5263466 (= res!2233346 lt!2155626)))

(declare-fun b!5263467 () Bool)

(declare-fun e!3273961 () Bool)

(assert (=> b!5263467 (= e!3273961 (nullable!5050 (regOne!30274 r!7292)))))

(declare-fun b!5263468 () Bool)

(declare-fun e!3273956 () Bool)

(assert (=> b!5263468 (= e!3273956 (not (= (head!11285 Nil!60818) (c!910993 (regOne!30274 r!7292)))))))

(declare-fun b!5263469 () Bool)

(assert (=> b!5263469 (= e!3273961 (matchR!7066 (derivativeStep!4105 (regOne!30274 r!7292) (head!11285 Nil!60818)) (tail!10382 Nil!60818)))))

(declare-fun b!5263470 () Bool)

(declare-fun e!3273958 () Bool)

(declare-fun call!373399 () Bool)

(assert (=> b!5263470 (= e!3273958 (= lt!2155626 call!373399))))

(declare-fun b!5263472 () Bool)

(declare-fun e!3273959 () Bool)

(assert (=> b!5263472 (= e!3273959 (not lt!2155626))))

(declare-fun b!5263473 () Bool)

(assert (=> b!5263473 (= e!3273958 e!3273959)))

(declare-fun c!911245 () Bool)

(assert (=> b!5263473 (= c!911245 ((_ is EmptyLang!14881) (regOne!30274 r!7292)))))

(declare-fun b!5263474 () Bool)

(declare-fun res!2233344 () Bool)

(assert (=> b!5263474 (=> (not res!2233344) (not e!3273960))))

(assert (=> b!5263474 (= res!2233344 (not call!373399))))

(declare-fun b!5263475 () Bool)

(declare-fun e!3273955 () Bool)

(assert (=> b!5263475 (= e!3273957 e!3273955)))

(declare-fun res!2233345 () Bool)

(assert (=> b!5263475 (=> (not res!2233345) (not e!3273955))))

(assert (=> b!5263475 (= res!2233345 (not lt!2155626))))

(declare-fun bm!373394 () Bool)

(assert (=> bm!373394 (= call!373399 (isEmpty!32766 Nil!60818))))

(declare-fun b!5263476 () Bool)

(declare-fun res!2233347 () Bool)

(assert (=> b!5263476 (=> res!2233347 e!3273956)))

(assert (=> b!5263476 (= res!2233347 (not (isEmpty!32766 (tail!10382 Nil!60818))))))

(declare-fun b!5263477 () Bool)

(assert (=> b!5263477 (= e!3273955 e!3273956)))

(declare-fun res!2233343 () Bool)

(assert (=> b!5263477 (=> res!2233343 e!3273956)))

(assert (=> b!5263477 (= res!2233343 call!373399)))

(declare-fun b!5263478 () Bool)

(declare-fun res!2233342 () Bool)

(assert (=> b!5263478 (=> (not res!2233342) (not e!3273960))))

(assert (=> b!5263478 (= res!2233342 (isEmpty!32766 (tail!10382 Nil!60818)))))

(declare-fun b!5263471 () Bool)

(declare-fun res!2233349 () Bool)

(assert (=> b!5263471 (=> res!2233349 e!3273957)))

(assert (=> b!5263471 (= res!2233349 (not ((_ is ElementMatch!14881) (regOne!30274 r!7292))))))

(assert (=> b!5263471 (= e!3273959 e!3273957)))

(declare-fun d!1694106 () Bool)

(assert (=> d!1694106 e!3273958))

(declare-fun c!911246 () Bool)

(assert (=> d!1694106 (= c!911246 ((_ is EmptyExpr!14881) (regOne!30274 r!7292)))))

(assert (=> d!1694106 (= lt!2155626 e!3273961)))

(declare-fun c!911247 () Bool)

(assert (=> d!1694106 (= c!911247 (isEmpty!32766 Nil!60818))))

(assert (=> d!1694106 (validRegex!6617 (regOne!30274 r!7292))))

(assert (=> d!1694106 (= (matchR!7066 (regOne!30274 r!7292) Nil!60818) lt!2155626)))

(assert (= (and d!1694106 c!911247) b!5263467))

(assert (= (and d!1694106 (not c!911247)) b!5263469))

(assert (= (and d!1694106 c!911246) b!5263470))

(assert (= (and d!1694106 (not c!911246)) b!5263473))

(assert (= (and b!5263473 c!911245) b!5263472))

(assert (= (and b!5263473 (not c!911245)) b!5263471))

(assert (= (and b!5263471 (not res!2233349)) b!5263466))

(assert (= (and b!5263466 res!2233346) b!5263474))

(assert (= (and b!5263474 res!2233344) b!5263478))

(assert (= (and b!5263478 res!2233342) b!5263465))

(assert (= (and b!5263466 (not res!2233348)) b!5263475))

(assert (= (and b!5263475 res!2233345) b!5263477))

(assert (= (and b!5263477 (not res!2233343)) b!5263476))

(assert (= (and b!5263476 (not res!2233347)) b!5263468))

(assert (= (or b!5263470 b!5263474 b!5263477) bm!373394))

(assert (=> b!5263467 m!6304180))

(declare-fun m!6304320 () Bool)

(assert (=> bm!373394 m!6304320))

(declare-fun m!6304322 () Bool)

(assert (=> b!5263478 m!6304322))

(assert (=> b!5263478 m!6304322))

(declare-fun m!6304324 () Bool)

(assert (=> b!5263478 m!6304324))

(declare-fun m!6304326 () Bool)

(assert (=> b!5263465 m!6304326))

(assert (=> d!1694106 m!6304320))

(assert (=> d!1694106 m!6303924))

(assert (=> b!5263468 m!6304326))

(assert (=> b!5263469 m!6304326))

(assert (=> b!5263469 m!6304326))

(declare-fun m!6304328 () Bool)

(assert (=> b!5263469 m!6304328))

(assert (=> b!5263469 m!6304322))

(assert (=> b!5263469 m!6304328))

(assert (=> b!5263469 m!6304322))

(declare-fun m!6304330 () Bool)

(assert (=> b!5263469 m!6304330))

(assert (=> b!5263476 m!6304322))

(assert (=> b!5263476 m!6304322))

(assert (=> b!5263476 m!6304324))

(assert (=> d!1693924 d!1694106))

(declare-fun b!5263479 () Bool)

(declare-fun res!2233352 () Bool)

(declare-fun e!3273966 () Bool)

(assert (=> b!5263479 (=> (not res!2233352) (not e!3273966))))

(declare-fun call!373400 () Bool)

(assert (=> b!5263479 (= res!2233352 call!373400)))

(declare-fun e!3273963 () Bool)

(assert (=> b!5263479 (= e!3273963 e!3273966)))

(declare-fun bm!373395 () Bool)

(declare-fun c!911248 () Bool)

(assert (=> bm!373395 (= call!373400 (validRegex!6617 (ite c!911248 (regOne!30275 (regOne!30274 r!7292)) (regOne!30274 (regOne!30274 r!7292)))))))

(declare-fun b!5263480 () Bool)

(declare-fun e!3273965 () Bool)

(declare-fun call!373402 () Bool)

(assert (=> b!5263480 (= e!3273965 call!373402)))

(declare-fun b!5263481 () Bool)

(declare-fun e!3273964 () Bool)

(assert (=> b!5263481 (= e!3273964 e!3273963)))

(assert (=> b!5263481 (= c!911248 ((_ is Union!14881) (regOne!30274 r!7292)))))

(declare-fun bm!373396 () Bool)

(declare-fun call!373401 () Bool)

(assert (=> bm!373396 (= call!373401 call!373402)))

(declare-fun b!5263482 () Bool)

(assert (=> b!5263482 (= e!3273964 e!3273965)))

(declare-fun res!2233350 () Bool)

(assert (=> b!5263482 (= res!2233350 (not (nullable!5050 (reg!15210 (regOne!30274 r!7292)))))))

(assert (=> b!5263482 (=> (not res!2233350) (not e!3273965))))

(declare-fun c!911249 () Bool)

(declare-fun bm!373397 () Bool)

(assert (=> bm!373397 (= call!373402 (validRegex!6617 (ite c!911249 (reg!15210 (regOne!30274 r!7292)) (ite c!911248 (regTwo!30275 (regOne!30274 r!7292)) (regTwo!30274 (regOne!30274 r!7292))))))))

(declare-fun b!5263484 () Bool)

(declare-fun e!3273967 () Bool)

(assert (=> b!5263484 (= e!3273967 e!3273964)))

(assert (=> b!5263484 (= c!911249 ((_ is Star!14881) (regOne!30274 r!7292)))))

(declare-fun b!5263485 () Bool)

(declare-fun res!2233351 () Bool)

(declare-fun e!3273962 () Bool)

(assert (=> b!5263485 (=> res!2233351 e!3273962)))

(assert (=> b!5263485 (= res!2233351 (not ((_ is Concat!23726) (regOne!30274 r!7292))))))

(assert (=> b!5263485 (= e!3273963 e!3273962)))

(declare-fun b!5263483 () Bool)

(declare-fun e!3273968 () Bool)

(assert (=> b!5263483 (= e!3273962 e!3273968)))

(declare-fun res!2233353 () Bool)

(assert (=> b!5263483 (=> (not res!2233353) (not e!3273968))))

(assert (=> b!5263483 (= res!2233353 call!373400)))

(declare-fun d!1694110 () Bool)

(declare-fun res!2233354 () Bool)

(assert (=> d!1694110 (=> res!2233354 e!3273967)))

(assert (=> d!1694110 (= res!2233354 ((_ is ElementMatch!14881) (regOne!30274 r!7292)))))

(assert (=> d!1694110 (= (validRegex!6617 (regOne!30274 r!7292)) e!3273967)))

(declare-fun b!5263486 () Bool)

(assert (=> b!5263486 (= e!3273968 call!373401)))

(declare-fun b!5263487 () Bool)

(assert (=> b!5263487 (= e!3273966 call!373401)))

(assert (= (and d!1694110 (not res!2233354)) b!5263484))

(assert (= (and b!5263484 c!911249) b!5263482))

(assert (= (and b!5263484 (not c!911249)) b!5263481))

(assert (= (and b!5263482 res!2233350) b!5263480))

(assert (= (and b!5263481 c!911248) b!5263479))

(assert (= (and b!5263481 (not c!911248)) b!5263485))

(assert (= (and b!5263479 res!2233352) b!5263487))

(assert (= (and b!5263485 (not res!2233351)) b!5263483))

(assert (= (and b!5263483 res!2233353) b!5263486))

(assert (= (or b!5263487 b!5263486) bm!373396))

(assert (= (or b!5263479 b!5263483) bm!373395))

(assert (= (or b!5263480 bm!373396) bm!373397))

(declare-fun m!6304332 () Bool)

(assert (=> bm!373395 m!6304332))

(declare-fun m!6304334 () Bool)

(assert (=> b!5263482 m!6304334))

(declare-fun m!6304336 () Bool)

(assert (=> bm!373397 m!6304336))

(assert (=> d!1693924 d!1694110))

(declare-fun b!5263517 () Bool)

(declare-fun e!3273989 () Bool)

(declare-fun lt!2155629 () List!60942)

(assert (=> b!5263517 (= e!3273989 (or (not (= (t!374129 s!2326) Nil!60818)) (= lt!2155629 (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818)))))))

(declare-fun d!1694112 () Bool)

(assert (=> d!1694112 e!3273989))

(declare-fun res!2233370 () Bool)

(assert (=> d!1694112 (=> (not res!2233370) (not e!3273989))))

(declare-fun content!10811 (List!60942) (InoxSet C!30032))

(assert (=> d!1694112 (= res!2233370 (= (content!10811 lt!2155629) ((_ map or) (content!10811 (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818))) (content!10811 (t!374129 s!2326)))))))

(declare-fun e!3273990 () List!60942)

(assert (=> d!1694112 (= lt!2155629 e!3273990)))

(declare-fun c!911254 () Bool)

(assert (=> d!1694112 (= c!911254 ((_ is Nil!60818) (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818))))))

(assert (=> d!1694112 (= (++!13264 (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818)) (t!374129 s!2326)) lt!2155629)))

(declare-fun b!5263515 () Bool)

(assert (=> b!5263515 (= e!3273990 (Cons!60818 (h!67266 (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818))) (++!13264 (t!374129 (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818))) (t!374129 s!2326))))))

(declare-fun b!5263516 () Bool)

(declare-fun res!2233371 () Bool)

(assert (=> b!5263516 (=> (not res!2233371) (not e!3273989))))

(declare-fun size!39741 (List!60942) Int)

(assert (=> b!5263516 (= res!2233371 (= (size!39741 lt!2155629) (+ (size!39741 (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818))) (size!39741 (t!374129 s!2326)))))))

(declare-fun b!5263514 () Bool)

(assert (=> b!5263514 (= e!3273990 (t!374129 s!2326))))

(assert (= (and d!1694112 c!911254) b!5263514))

(assert (= (and d!1694112 (not c!911254)) b!5263515))

(assert (= (and d!1694112 res!2233370) b!5263516))

(assert (= (and b!5263516 res!2233371) b!5263517))

(declare-fun m!6304344 () Bool)

(assert (=> d!1694112 m!6304344))

(assert (=> d!1694112 m!6303932))

(declare-fun m!6304346 () Bool)

(assert (=> d!1694112 m!6304346))

(declare-fun m!6304348 () Bool)

(assert (=> d!1694112 m!6304348))

(declare-fun m!6304350 () Bool)

(assert (=> b!5263515 m!6304350))

(declare-fun m!6304352 () Bool)

(assert (=> b!5263516 m!6304352))

(assert (=> b!5263516 m!6303932))

(declare-fun m!6304354 () Bool)

(assert (=> b!5263516 m!6304354))

(declare-fun m!6304356 () Bool)

(assert (=> b!5263516 m!6304356))

(assert (=> b!5262848 d!1694112))

(declare-fun b!5263521 () Bool)

(declare-fun e!3273991 () Bool)

(declare-fun lt!2155630 () List!60942)

(assert (=> b!5263521 (= e!3273991 (or (not (= (Cons!60818 (h!67266 s!2326) Nil!60818) Nil!60818)) (= lt!2155630 Nil!60818)))))

(declare-fun d!1694122 () Bool)

(assert (=> d!1694122 e!3273991))

(declare-fun res!2233372 () Bool)

(assert (=> d!1694122 (=> (not res!2233372) (not e!3273991))))

(assert (=> d!1694122 (= res!2233372 (= (content!10811 lt!2155630) ((_ map or) (content!10811 Nil!60818) (content!10811 (Cons!60818 (h!67266 s!2326) Nil!60818)))))))

(declare-fun e!3273992 () List!60942)

(assert (=> d!1694122 (= lt!2155630 e!3273992)))

(declare-fun c!911255 () Bool)

(assert (=> d!1694122 (= c!911255 ((_ is Nil!60818) Nil!60818))))

(assert (=> d!1694122 (= (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818)) lt!2155630)))

(declare-fun b!5263519 () Bool)

(assert (=> b!5263519 (= e!3273992 (Cons!60818 (h!67266 Nil!60818) (++!13264 (t!374129 Nil!60818) (Cons!60818 (h!67266 s!2326) Nil!60818))))))

(declare-fun b!5263520 () Bool)

(declare-fun res!2233373 () Bool)

(assert (=> b!5263520 (=> (not res!2233373) (not e!3273991))))

(assert (=> b!5263520 (= res!2233373 (= (size!39741 lt!2155630) (+ (size!39741 Nil!60818) (size!39741 (Cons!60818 (h!67266 s!2326) Nil!60818)))))))

(declare-fun b!5263518 () Bool)

(assert (=> b!5263518 (= e!3273992 (Cons!60818 (h!67266 s!2326) Nil!60818))))

(assert (= (and d!1694122 c!911255) b!5263518))

(assert (= (and d!1694122 (not c!911255)) b!5263519))

(assert (= (and d!1694122 res!2233372) b!5263520))

(assert (= (and b!5263520 res!2233373) b!5263521))

(declare-fun m!6304362 () Bool)

(assert (=> d!1694122 m!6304362))

(declare-fun m!6304364 () Bool)

(assert (=> d!1694122 m!6304364))

(declare-fun m!6304366 () Bool)

(assert (=> d!1694122 m!6304366))

(declare-fun m!6304368 () Bool)

(assert (=> b!5263519 m!6304368))

(declare-fun m!6304370 () Bool)

(assert (=> b!5263520 m!6304370))

(declare-fun m!6304372 () Bool)

(assert (=> b!5263520 m!6304372))

(declare-fun m!6304374 () Bool)

(assert (=> b!5263520 m!6304374))

(assert (=> b!5262848 d!1694122))

(declare-fun d!1694124 () Bool)

(assert (=> d!1694124 (= (++!13264 (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818)) (t!374129 s!2326)) s!2326)))

(declare-fun lt!2155633 () Unit!153042)

(declare-fun choose!39274 (List!60942 C!30032 List!60942 List!60942) Unit!153042)

(assert (=> d!1694124 (= lt!2155633 (choose!39274 Nil!60818 (h!67266 s!2326) (t!374129 s!2326) s!2326))))

(assert (=> d!1694124 (= (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) (t!374129 s!2326))) s!2326)))

(assert (=> d!1694124 (= (lemmaMoveElementToOtherListKeepsConcatEq!1679 Nil!60818 (h!67266 s!2326) (t!374129 s!2326) s!2326) lt!2155633)))

(declare-fun bs!1220101 () Bool)

(assert (= bs!1220101 d!1694124))

(assert (=> bs!1220101 m!6303932))

(assert (=> bs!1220101 m!6303932))

(assert (=> bs!1220101 m!6303934))

(declare-fun m!6304390 () Bool)

(assert (=> bs!1220101 m!6304390))

(declare-fun m!6304392 () Bool)

(assert (=> bs!1220101 m!6304392))

(assert (=> b!5262848 d!1694124))

(declare-fun d!1694130 () Bool)

(declare-fun e!3273994 () Bool)

(assert (=> d!1694130 e!3273994))

(declare-fun res!2233376 () Bool)

(assert (=> d!1694130 (=> res!2233376 e!3273994)))

(declare-fun e!3273996 () Bool)

(assert (=> d!1694130 (= res!2233376 e!3273996)))

(declare-fun res!2233375 () Bool)

(assert (=> d!1694130 (=> (not res!2233375) (not e!3273996))))

(declare-fun lt!2155635 () Option!14992)

(assert (=> d!1694130 (= res!2233375 (isDefined!11695 lt!2155635))))

(declare-fun e!3273997 () Option!14992)

(assert (=> d!1694130 (= lt!2155635 e!3273997)))

(declare-fun c!911259 () Bool)

(declare-fun e!3273995 () Bool)

(assert (=> d!1694130 (= c!911259 e!3273995)))

(declare-fun res!2233378 () Bool)

(assert (=> d!1694130 (=> (not res!2233378) (not e!3273995))))

(assert (=> d!1694130 (= res!2233378 (matchR!7066 (regOne!30274 r!7292) (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818))))))

(assert (=> d!1694130 (validRegex!6617 (regOne!30274 r!7292))))

(assert (=> d!1694130 (= (findConcatSeparation!1406 (regOne!30274 r!7292) (regTwo!30274 r!7292) (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818)) (t!374129 s!2326) s!2326) lt!2155635)))

(declare-fun b!5263524 () Bool)

(declare-fun lt!2155636 () Unit!153042)

(declare-fun lt!2155634 () Unit!153042)

(assert (=> b!5263524 (= lt!2155636 lt!2155634)))

(assert (=> b!5263524 (= (++!13264 (++!13264 (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818)) (Cons!60818 (h!67266 (t!374129 s!2326)) Nil!60818)) (t!374129 (t!374129 s!2326))) s!2326)))

(assert (=> b!5263524 (= lt!2155634 (lemmaMoveElementToOtherListKeepsConcatEq!1679 (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818)) (h!67266 (t!374129 s!2326)) (t!374129 (t!374129 s!2326)) s!2326))))

(declare-fun e!3273998 () Option!14992)

(assert (=> b!5263524 (= e!3273998 (findConcatSeparation!1406 (regOne!30274 r!7292) (regTwo!30274 r!7292) (++!13264 (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818)) (Cons!60818 (h!67266 (t!374129 s!2326)) Nil!60818)) (t!374129 (t!374129 s!2326)) s!2326))))

(declare-fun b!5263525 () Bool)

(declare-fun res!2233374 () Bool)

(assert (=> b!5263525 (=> (not res!2233374) (not e!3273996))))

(assert (=> b!5263525 (= res!2233374 (matchR!7066 (regTwo!30274 r!7292) (_2!35383 (get!20910 lt!2155635))))))

(declare-fun b!5263526 () Bool)

(assert (=> b!5263526 (= e!3273997 e!3273998)))

(declare-fun c!911260 () Bool)

(assert (=> b!5263526 (= c!911260 ((_ is Nil!60818) (t!374129 s!2326)))))

(declare-fun b!5263527 () Bool)

(assert (=> b!5263527 (= e!3273996 (= (++!13264 (_1!35383 (get!20910 lt!2155635)) (_2!35383 (get!20910 lt!2155635))) s!2326))))

(declare-fun b!5263528 () Bool)

(assert (=> b!5263528 (= e!3273994 (not (isDefined!11695 lt!2155635)))))

(declare-fun b!5263529 () Bool)

(assert (=> b!5263529 (= e!3273998 None!14991)))

(declare-fun b!5263530 () Bool)

(assert (=> b!5263530 (= e!3273997 (Some!14991 (tuple2!64161 (++!13264 Nil!60818 (Cons!60818 (h!67266 s!2326) Nil!60818)) (t!374129 s!2326))))))

(declare-fun b!5263531 () Bool)

(assert (=> b!5263531 (= e!3273995 (matchR!7066 (regTwo!30274 r!7292) (t!374129 s!2326)))))

(declare-fun b!5263532 () Bool)

(declare-fun res!2233377 () Bool)

(assert (=> b!5263532 (=> (not res!2233377) (not e!3273996))))

(assert (=> b!5263532 (= res!2233377 (matchR!7066 (regOne!30274 r!7292) (_1!35383 (get!20910 lt!2155635))))))

(assert (= (and d!1694130 res!2233378) b!5263531))

(assert (= (and d!1694130 c!911259) b!5263530))

(assert (= (and d!1694130 (not c!911259)) b!5263526))

(assert (= (and b!5263526 c!911260) b!5263529))

(assert (= (and b!5263526 (not c!911260)) b!5263524))

(assert (= (and d!1694130 res!2233375) b!5263532))

(assert (= (and b!5263532 res!2233377) b!5263525))

(assert (= (and b!5263525 res!2233374) b!5263527))

(assert (= (and d!1694130 (not res!2233376)) b!5263528))

(declare-fun m!6304394 () Bool)

(assert (=> d!1694130 m!6304394))

(assert (=> d!1694130 m!6303932))

(declare-fun m!6304396 () Bool)

(assert (=> d!1694130 m!6304396))

(assert (=> d!1694130 m!6303924))

(assert (=> b!5263528 m!6304394))

(declare-fun m!6304398 () Bool)

(assert (=> b!5263527 m!6304398))

(declare-fun m!6304400 () Bool)

(assert (=> b!5263527 m!6304400))

(assert (=> b!5263525 m!6304398))

(declare-fun m!6304402 () Bool)

(assert (=> b!5263525 m!6304402))

(assert (=> b!5263524 m!6303932))

(declare-fun m!6304404 () Bool)

(assert (=> b!5263524 m!6304404))

(assert (=> b!5263524 m!6304404))

(declare-fun m!6304406 () Bool)

(assert (=> b!5263524 m!6304406))

(assert (=> b!5263524 m!6303932))

(declare-fun m!6304408 () Bool)

(assert (=> b!5263524 m!6304408))

(assert (=> b!5263524 m!6304404))

(declare-fun m!6304412 () Bool)

(assert (=> b!5263524 m!6304412))

(assert (=> b!5263532 m!6304398))

(declare-fun m!6304414 () Bool)

(assert (=> b!5263532 m!6304414))

(declare-fun m!6304416 () Bool)

(assert (=> b!5263531 m!6304416))

(assert (=> b!5262848 d!1694130))

(declare-fun b!5263535 () Bool)

(declare-fun e!3274000 () Bool)

(assert (=> b!5263535 (= e!3274000 (nullable!5050 (h!67267 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))))))))))

(declare-fun d!1694134 () Bool)

(declare-fun c!911261 () Bool)

(assert (=> d!1694134 (= c!911261 e!3274000)))

(declare-fun res!2233379 () Bool)

(assert (=> d!1694134 (=> (not res!2233379) (not e!3274000))))

(assert (=> d!1694134 (= res!2233379 ((_ is Cons!60819) (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))))))))

(declare-fun e!3274001 () (InoxSet Context!8530))

(assert (=> d!1694134 (= (derivationStepZipperUp!253 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (h!67266 s!2326)) e!3274001)))

(declare-fun b!5263536 () Bool)

(declare-fun e!3273999 () (InoxSet Context!8530))

(assert (=> b!5263536 (= e!3273999 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263537 () Bool)

(declare-fun call!373406 () (InoxSet Context!8530))

(assert (=> b!5263537 (= e!3273999 call!373406)))

(declare-fun b!5263538 () Bool)

(assert (=> b!5263538 (= e!3274001 e!3273999)))

(declare-fun c!911262 () Bool)

(assert (=> b!5263538 (= c!911262 ((_ is Cons!60819) (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))))))))

(declare-fun bm!373401 () Bool)

(assert (=> bm!373401 (= call!373406 (derivationStepZipperDown!329 (h!67267 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))))) (Context!8531 (t!374130 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))))))) (h!67266 s!2326)))))

(declare-fun b!5263539 () Bool)

(assert (=> b!5263539 (= e!3274001 ((_ map or) call!373406 (derivationStepZipperUp!253 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))))))) (h!67266 s!2326))))))

(assert (= (and d!1694134 res!2233379) b!5263535))

(assert (= (and d!1694134 c!911261) b!5263539))

(assert (= (and d!1694134 (not c!911261)) b!5263538))

(assert (= (and b!5263538 c!911262) b!5263537))

(assert (= (and b!5263538 (not c!911262)) b!5263536))

(assert (= (or b!5263539 b!5263537) bm!373401))

(declare-fun m!6304418 () Bool)

(assert (=> b!5263535 m!6304418))

(declare-fun m!6304420 () Bool)

(assert (=> bm!373401 m!6304420))

(declare-fun m!6304422 () Bool)

(assert (=> b!5263539 m!6304422))

(assert (=> b!5263228 d!1694134))

(declare-fun bm!373410 () Bool)

(declare-fun call!373416 () Bool)

(declare-fun c!911270 () Bool)

(assert (=> bm!373410 (= call!373416 (nullable!5050 (ite c!911270 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))))))

(declare-fun b!5263579 () Bool)

(declare-fun e!3274035 () Bool)

(declare-fun e!3274030 () Bool)

(assert (=> b!5263579 (= e!3274035 e!3274030)))

(declare-fun res!2233408 () Bool)

(assert (=> b!5263579 (= res!2233408 call!373416)))

(assert (=> b!5263579 (=> res!2233408 e!3274030)))

(declare-fun b!5263580 () Bool)

(declare-fun e!3274032 () Bool)

(assert (=> b!5263580 (= e!3274035 e!3274032)))

(declare-fun res!2233409 () Bool)

(assert (=> b!5263580 (= res!2233409 call!373416)))

(assert (=> b!5263580 (=> (not res!2233409) (not e!3274032))))

(declare-fun bm!373411 () Bool)

(declare-fun call!373415 () Bool)

(assert (=> bm!373411 (= call!373415 (nullable!5050 (ite c!911270 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))))))

(declare-fun b!5263581 () Bool)

(assert (=> b!5263581 (= e!3274030 call!373415)))

(declare-fun b!5263582 () Bool)

(declare-fun e!3274033 () Bool)

(declare-fun e!3274031 () Bool)

(assert (=> b!5263582 (= e!3274033 e!3274031)))

(declare-fun res!2233405 () Bool)

(assert (=> b!5263582 (=> res!2233405 e!3274031)))

(assert (=> b!5263582 (= res!2233405 ((_ is Star!14881) (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun d!1694138 () Bool)

(declare-fun res!2233406 () Bool)

(declare-fun e!3274034 () Bool)

(assert (=> d!1694138 (=> res!2233406 e!3274034)))

(assert (=> d!1694138 (= res!2233406 ((_ is EmptyExpr!14881) (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(assert (=> d!1694138 (= (nullableFct!1436 (h!67267 (exprs!4765 (h!67268 zl!343)))) e!3274034)))

(declare-fun b!5263583 () Bool)

(assert (=> b!5263583 (= e!3274032 call!373415)))

(declare-fun b!5263584 () Bool)

(assert (=> b!5263584 (= e!3274034 e!3274033)))

(declare-fun res!2233407 () Bool)

(assert (=> b!5263584 (=> (not res!2233407) (not e!3274033))))

(assert (=> b!5263584 (= res!2233407 (and (not ((_ is EmptyLang!14881) (h!67267 (exprs!4765 (h!67268 zl!343))))) (not ((_ is ElementMatch!14881) (h!67267 (exprs!4765 (h!67268 zl!343)))))))))

(declare-fun b!5263585 () Bool)

(assert (=> b!5263585 (= e!3274031 e!3274035)))

(assert (=> b!5263585 (= c!911270 ((_ is Union!14881) (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(assert (= (and d!1694138 (not res!2233406)) b!5263584))

(assert (= (and b!5263584 res!2233407) b!5263582))

(assert (= (and b!5263582 (not res!2233405)) b!5263585))

(assert (= (and b!5263585 c!911270) b!5263579))

(assert (= (and b!5263585 (not c!911270)) b!5263580))

(assert (= (and b!5263579 (not res!2233408)) b!5263581))

(assert (= (and b!5263580 res!2233409) b!5263583))

(assert (= (or b!5263581 b!5263583) bm!373411))

(assert (= (or b!5263579 b!5263580) bm!373410))

(declare-fun m!6304438 () Bool)

(assert (=> bm!373410 m!6304438))

(declare-fun m!6304442 () Bool)

(assert (=> bm!373411 m!6304442))

(assert (=> d!1693990 d!1694138))

(declare-fun d!1694148 () Bool)

(assert (=> d!1694148 (= (isEmpty!32763 (unfocusZipperList!323 zl!343)) ((_ is Nil!60819) (unfocusZipperList!323 zl!343)))))

(assert (=> b!5263203 d!1694148))

(declare-fun d!1694150 () Bool)

(assert (=> d!1694150 (= (isEmptyExpr!819 lt!2155571) ((_ is EmptyExpr!14881) lt!2155571))))

(assert (=> b!5262784 d!1694150))

(declare-fun d!1694152 () Bool)

(assert (=> d!1694152 (= (isUnion!259 lt!2155613) ((_ is Union!14881) lt!2155613))))

(assert (=> b!5263205 d!1694152))

(declare-fun d!1694156 () Bool)

(declare-fun res!2233414 () Bool)

(declare-fun e!3274041 () Bool)

(assert (=> d!1694156 (=> res!2233414 e!3274041)))

(assert (=> d!1694156 (= res!2233414 ((_ is Nil!60820) lt!2155622))))

(assert (=> d!1694156 (= (noDuplicate!1239 lt!2155622) e!3274041)))

(declare-fun b!5263592 () Bool)

(declare-fun e!3274042 () Bool)

(assert (=> b!5263592 (= e!3274041 e!3274042)))

(declare-fun res!2233415 () Bool)

(assert (=> b!5263592 (=> (not res!2233415) (not e!3274042))))

(declare-fun contains!19689 (List!60944 Context!8530) Bool)

(assert (=> b!5263592 (= res!2233415 (not (contains!19689 (t!374131 lt!2155622) (h!67268 lt!2155622))))))

(declare-fun b!5263593 () Bool)

(assert (=> b!5263593 (= e!3274042 (noDuplicate!1239 (t!374131 lt!2155622)))))

(assert (= (and d!1694156 (not res!2233414)) b!5263592))

(assert (= (and b!5263592 res!2233415) b!5263593))

(declare-fun m!6304458 () Bool)

(assert (=> b!5263592 m!6304458))

(declare-fun m!6304460 () Bool)

(assert (=> b!5263593 m!6304460))

(assert (=> d!1694004 d!1694156))

(declare-fun d!1694162 () Bool)

(declare-fun e!3274052 () Bool)

(assert (=> d!1694162 e!3274052))

(declare-fun res!2233421 () Bool)

(assert (=> d!1694162 (=> (not res!2233421) (not e!3274052))))

(declare-fun res!2233422 () List!60944)

(assert (=> d!1694162 (= res!2233421 (noDuplicate!1239 res!2233422))))

(declare-fun e!3274054 () Bool)

(assert (=> d!1694162 e!3274054))

(assert (=> d!1694162 (= (choose!39273 z!1189) res!2233422)))

(declare-fun b!5263606 () Bool)

(declare-fun e!3274053 () Bool)

(declare-fun tp!1471359 () Bool)

(assert (=> b!5263606 (= e!3274053 tp!1471359)))

(declare-fun b!5263605 () Bool)

(declare-fun tp!1471358 () Bool)

(assert (=> b!5263605 (= e!3274054 (and (inv!80449 (h!67268 res!2233422)) e!3274053 tp!1471358))))

(declare-fun b!5263607 () Bool)

(assert (=> b!5263607 (= e!3274052 (= (content!10810 res!2233422) z!1189))))

(assert (= b!5263605 b!5263606))

(assert (= (and d!1694162 ((_ is Cons!60820) res!2233422)) b!5263605))

(assert (= (and d!1694162 res!2233421) b!5263607))

(declare-fun m!6304472 () Bool)

(assert (=> d!1694162 m!6304472))

(declare-fun m!6304474 () Bool)

(assert (=> b!5263605 m!6304474))

(declare-fun m!6304476 () Bool)

(assert (=> b!5263607 m!6304476))

(assert (=> d!1694004 d!1694162))

(declare-fun b!5263613 () Bool)

(declare-fun res!2233426 () Bool)

(declare-fun e!3274062 () Bool)

(assert (=> b!5263613 (=> (not res!2233426) (not e!3274062))))

(declare-fun call!373419 () Bool)

(assert (=> b!5263613 (= res!2233426 call!373419)))

(declare-fun e!3274059 () Bool)

(assert (=> b!5263613 (= e!3274059 e!3274062)))

(declare-fun bm!373414 () Bool)

(declare-fun c!911276 () Bool)

(assert (=> bm!373414 (= call!373419 (validRegex!6617 (ite c!911276 (regOne!30275 (ite c!911196 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))) (regOne!30274 (ite c!911196 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))))))))

(declare-fun b!5263614 () Bool)

(declare-fun e!3274061 () Bool)

(declare-fun call!373421 () Bool)

(assert (=> b!5263614 (= e!3274061 call!373421)))

(declare-fun b!5263615 () Bool)

(declare-fun e!3274060 () Bool)

(assert (=> b!5263615 (= e!3274060 e!3274059)))

(assert (=> b!5263615 (= c!911276 ((_ is Union!14881) (ite c!911196 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))))))

(declare-fun bm!373415 () Bool)

(declare-fun call!373420 () Bool)

(assert (=> bm!373415 (= call!373420 call!373421)))

(declare-fun b!5263616 () Bool)

(assert (=> b!5263616 (= e!3274060 e!3274061)))

(declare-fun res!2233424 () Bool)

(assert (=> b!5263616 (= res!2233424 (not (nullable!5050 (reg!15210 (ite c!911196 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))))))))

(assert (=> b!5263616 (=> (not res!2233424) (not e!3274061))))

(declare-fun bm!373416 () Bool)

(declare-fun c!911277 () Bool)

(assert (=> bm!373416 (= call!373421 (validRegex!6617 (ite c!911277 (reg!15210 (ite c!911196 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))) (ite c!911276 (regTwo!30275 (ite c!911196 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))) (regTwo!30274 (ite c!911196 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292)))))))))))

(declare-fun b!5263618 () Bool)

(declare-fun e!3274063 () Bool)

(assert (=> b!5263618 (= e!3274063 e!3274060)))

(assert (=> b!5263618 (= c!911277 ((_ is Star!14881) (ite c!911196 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))))))

(declare-fun b!5263619 () Bool)

(declare-fun res!2233425 () Bool)

(declare-fun e!3274058 () Bool)

(assert (=> b!5263619 (=> res!2233425 e!3274058)))

(assert (=> b!5263619 (= res!2233425 (not ((_ is Concat!23726) (ite c!911196 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292)))))))))

(assert (=> b!5263619 (= e!3274059 e!3274058)))

(declare-fun b!5263617 () Bool)

(declare-fun e!3274064 () Bool)

(assert (=> b!5263617 (= e!3274058 e!3274064)))

(declare-fun res!2233427 () Bool)

(assert (=> b!5263617 (=> (not res!2233427) (not e!3274064))))

(assert (=> b!5263617 (= res!2233427 call!373419)))

(declare-fun d!1694174 () Bool)

(declare-fun res!2233428 () Bool)

(assert (=> d!1694174 (=> res!2233428 e!3274063)))

(assert (=> d!1694174 (= res!2233428 ((_ is ElementMatch!14881) (ite c!911196 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))))))

(assert (=> d!1694174 (= (validRegex!6617 (ite c!911196 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))) e!3274063)))

(declare-fun b!5263620 () Bool)

(assert (=> b!5263620 (= e!3274064 call!373420)))

(declare-fun b!5263621 () Bool)

(assert (=> b!5263621 (= e!3274062 call!373420)))

(assert (= (and d!1694174 (not res!2233428)) b!5263618))

(assert (= (and b!5263618 c!911277) b!5263616))

(assert (= (and b!5263618 (not c!911277)) b!5263615))

(assert (= (and b!5263616 res!2233424) b!5263614))

(assert (= (and b!5263615 c!911276) b!5263613))

(assert (= (and b!5263615 (not c!911276)) b!5263619))

(assert (= (and b!5263613 res!2233426) b!5263621))

(assert (= (and b!5263619 (not res!2233425)) b!5263617))

(assert (= (and b!5263617 res!2233427) b!5263620))

(assert (= (or b!5263621 b!5263620) bm!373415))

(assert (= (or b!5263613 b!5263617) bm!373414))

(assert (= (or b!5263614 bm!373415) bm!373416))

(declare-fun m!6304478 () Bool)

(assert (=> bm!373414 m!6304478))

(declare-fun m!6304480 () Bool)

(assert (=> b!5263616 m!6304480))

(declare-fun m!6304484 () Bool)

(assert (=> bm!373416 m!6304484))

(assert (=> bm!373351 d!1694174))

(declare-fun bs!1220108 () Bool)

(declare-fun d!1694176 () Bool)

(assert (= bs!1220108 (and d!1694176 d!1693988)))

(declare-fun lambda!265413 () Int)

(assert (=> bs!1220108 (= lambda!265413 lambda!265396)))

(declare-fun bs!1220109 () Bool)

(assert (= bs!1220109 (and d!1694176 d!1693986)))

(assert (=> bs!1220109 (= lambda!265413 lambda!265393)))

(declare-fun bs!1220110 () Bool)

(assert (= bs!1220110 (and d!1694176 d!1693950)))

(assert (=> bs!1220110 (= lambda!265413 lambda!265383)))

(declare-fun bs!1220111 () Bool)

(assert (= bs!1220111 (and d!1694176 d!1694006)))

(assert (=> bs!1220111 (= lambda!265413 lambda!265397)))

(declare-fun bs!1220112 () Bool)

(assert (= bs!1220112 (and d!1694176 d!1693910)))

(assert (=> bs!1220112 (= lambda!265413 lambda!265362)))

(declare-fun bs!1220113 () Bool)

(assert (= bs!1220113 (and d!1694176 d!1694052)))

(assert (=> bs!1220113 (= lambda!265413 lambda!265405)))

(assert (=> d!1694176 (= (inv!80449 setElem!33657) (forall!14293 (exprs!4765 setElem!33657) lambda!265413))))

(declare-fun bs!1220114 () Bool)

(assert (= bs!1220114 d!1694176))

(declare-fun m!6304490 () Bool)

(assert (=> bs!1220114 m!6304490))

(assert (=> setNonEmpty!33657 d!1694176))

(declare-fun b!5263633 () Bool)

(declare-fun c!911286 () Bool)

(assert (=> b!5263633 (= c!911286 ((_ is Star!14881) (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))))))

(declare-fun e!3274075 () (InoxSet Context!8530))

(declare-fun e!3274074 () (InoxSet Context!8530))

(assert (=> b!5263633 (= e!3274075 e!3274074)))

(declare-fun b!5263634 () Bool)

(declare-fun c!911283 () Bool)

(declare-fun e!3274076 () Bool)

(assert (=> b!5263634 (= c!911283 e!3274076)))

(declare-fun res!2233432 () Bool)

(assert (=> b!5263634 (=> (not res!2233432) (not e!3274076))))

(assert (=> b!5263634 (= res!2233432 ((_ is Concat!23726) (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))))))

(declare-fun e!3274077 () (InoxSet Context!8530))

(declare-fun e!3274073 () (InoxSet Context!8530))

(assert (=> b!5263634 (= e!3274077 e!3274073)))

(declare-fun bm!373419 () Bool)

(declare-fun call!373424 () (InoxSet Context!8530))

(declare-fun call!373429 () (InoxSet Context!8530))

(assert (=> bm!373419 (= call!373424 call!373429)))

(declare-fun bm!373421 () Bool)

(declare-fun call!373427 () (InoxSet Context!8530))

(assert (=> bm!373421 (= call!373427 call!373424)))

(declare-fun c!911284 () Bool)

(declare-fun call!373426 () (InoxSet Context!8530))

(declare-fun bm!373422 () Bool)

(declare-fun call!373428 () List!60943)

(assert (=> bm!373422 (= call!373426 (derivationStepZipperDown!329 (ite c!911284 (regTwo!30275 (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))) (regOne!30274 (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343))))))) (ite c!911284 (ite c!911190 lt!2155536 (Context!8531 call!373353)) (Context!8531 call!373428)) (h!67266 s!2326)))))

(declare-fun b!5263635 () Bool)

(assert (=> b!5263635 (= e!3274076 (nullable!5050 (regOne!30274 (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343))))))))))

(declare-fun b!5263636 () Bool)

(assert (=> b!5263636 (= e!3274073 ((_ map or) call!373426 call!373424))))

(declare-fun b!5263637 () Bool)

(declare-fun e!3274072 () (InoxSet Context!8530))

(assert (=> b!5263637 (= e!3274072 e!3274077)))

(assert (=> b!5263637 (= c!911284 ((_ is Union!14881) (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))))))

(declare-fun b!5263638 () Bool)

(assert (=> b!5263638 (= e!3274075 call!373427)))

(declare-fun call!373425 () List!60943)

(declare-fun bm!373423 () Bool)

(declare-fun c!911282 () Bool)

(assert (=> bm!373423 (= call!373429 (derivationStepZipperDown!329 (ite c!911284 (regOne!30275 (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))) (ite c!911283 (regTwo!30274 (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))) (ite c!911282 (regOne!30274 (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))) (reg!15210 (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343))))))))) (ite (or c!911284 c!911283) (ite c!911190 lt!2155536 (Context!8531 call!373353)) (Context!8531 call!373425)) (h!67266 s!2326)))))

(declare-fun bm!373420 () Bool)

(assert (=> bm!373420 (= call!373425 call!373428)))

(declare-fun c!911285 () Bool)

(declare-fun d!1694180 () Bool)

(assert (=> d!1694180 (= c!911285 (and ((_ is ElementMatch!14881) (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))) (= (c!910993 (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))) (h!67266 s!2326))))))

(assert (=> d!1694180 (= (derivationStepZipperDown!329 (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343))))) (ite c!911190 lt!2155536 (Context!8531 call!373353)) (h!67266 s!2326)) e!3274072)))

(declare-fun b!5263639 () Bool)

(assert (=> b!5263639 (= e!3274074 call!373427)))

(declare-fun bm!373424 () Bool)

(assert (=> bm!373424 (= call!373428 ($colon$colon!1334 (exprs!4765 (ite c!911190 lt!2155536 (Context!8531 call!373353))) (ite (or c!911283 c!911282) (regTwo!30274 (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))) (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343))))))))))

(declare-fun b!5263640 () Bool)

(assert (=> b!5263640 (= e!3274077 ((_ map or) call!373429 call!373426))))

(declare-fun b!5263641 () Bool)

(assert (=> b!5263641 (= e!3274074 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263642 () Bool)

(assert (=> b!5263642 (= e!3274073 e!3274075)))

(assert (=> b!5263642 (= c!911282 ((_ is Concat!23726) (ite c!911190 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))))))))

(declare-fun b!5263643 () Bool)

(assert (=> b!5263643 (= e!3274072 (store ((as const (Array Context!8530 Bool)) false) (ite c!911190 lt!2155536 (Context!8531 call!373353)) true))))

(assert (= (and d!1694180 c!911285) b!5263643))

(assert (= (and d!1694180 (not c!911285)) b!5263637))

(assert (= (and b!5263637 c!911284) b!5263640))

(assert (= (and b!5263637 (not c!911284)) b!5263634))

(assert (= (and b!5263634 res!2233432) b!5263635))

(assert (= (and b!5263634 c!911283) b!5263636))

(assert (= (and b!5263634 (not c!911283)) b!5263642))

(assert (= (and b!5263642 c!911282) b!5263638))

(assert (= (and b!5263642 (not c!911282)) b!5263633))

(assert (= (and b!5263633 c!911286) b!5263639))

(assert (= (and b!5263633 (not c!911286)) b!5263641))

(assert (= (or b!5263638 b!5263639) bm!373420))

(assert (= (or b!5263638 b!5263639) bm!373421))

(assert (= (or b!5263636 bm!373420) bm!373424))

(assert (= (or b!5263636 bm!373421) bm!373419))

(assert (= (or b!5263640 b!5263636) bm!373422))

(assert (= (or b!5263640 bm!373419) bm!373423))

(declare-fun m!6304492 () Bool)

(assert (=> bm!373424 m!6304492))

(declare-fun m!6304494 () Bool)

(assert (=> b!5263643 m!6304494))

(declare-fun m!6304496 () Bool)

(assert (=> b!5263635 m!6304496))

(declare-fun m!6304498 () Bool)

(assert (=> bm!373422 m!6304498))

(declare-fun m!6304500 () Bool)

(assert (=> bm!373423 m!6304500))

(assert (=> bm!373347 d!1694180))

(declare-fun b!5263644 () Bool)

(declare-fun e!3274083 () Bool)

(assert (=> b!5263644 (= e!3274083 (= (head!11285 s!2326) (c!910993 (regTwo!30274 r!7292))))))

(declare-fun b!5263645 () Bool)

(declare-fun res!2233439 () Bool)

(declare-fun e!3274080 () Bool)

(assert (=> b!5263645 (=> res!2233439 e!3274080)))

(assert (=> b!5263645 (= res!2233439 e!3274083)))

(declare-fun res!2233437 () Bool)

(assert (=> b!5263645 (=> (not res!2233437) (not e!3274083))))

(declare-fun lt!2155638 () Bool)

(assert (=> b!5263645 (= res!2233437 lt!2155638)))

(declare-fun b!5263646 () Bool)

(declare-fun e!3274084 () Bool)

(assert (=> b!5263646 (= e!3274084 (nullable!5050 (regTwo!30274 r!7292)))))

(declare-fun b!5263647 () Bool)

(declare-fun e!3274079 () Bool)

(assert (=> b!5263647 (= e!3274079 (not (= (head!11285 s!2326) (c!910993 (regTwo!30274 r!7292)))))))

(declare-fun b!5263648 () Bool)

(assert (=> b!5263648 (= e!3274084 (matchR!7066 (derivativeStep!4105 (regTwo!30274 r!7292) (head!11285 s!2326)) (tail!10382 s!2326)))))

(declare-fun b!5263649 () Bool)

(declare-fun e!3274081 () Bool)

(declare-fun call!373430 () Bool)

(assert (=> b!5263649 (= e!3274081 (= lt!2155638 call!373430))))

(declare-fun b!5263651 () Bool)

(declare-fun e!3274082 () Bool)

(assert (=> b!5263651 (= e!3274082 (not lt!2155638))))

(declare-fun b!5263652 () Bool)

(assert (=> b!5263652 (= e!3274081 e!3274082)))

(declare-fun c!911287 () Bool)

(assert (=> b!5263652 (= c!911287 ((_ is EmptyLang!14881) (regTwo!30274 r!7292)))))

(declare-fun b!5263653 () Bool)

(declare-fun res!2233435 () Bool)

(assert (=> b!5263653 (=> (not res!2233435) (not e!3274083))))

(assert (=> b!5263653 (= res!2233435 (not call!373430))))

(declare-fun b!5263654 () Bool)

(declare-fun e!3274078 () Bool)

(assert (=> b!5263654 (= e!3274080 e!3274078)))

(declare-fun res!2233436 () Bool)

(assert (=> b!5263654 (=> (not res!2233436) (not e!3274078))))

(assert (=> b!5263654 (= res!2233436 (not lt!2155638))))

(declare-fun bm!373425 () Bool)

(assert (=> bm!373425 (= call!373430 (isEmpty!32766 s!2326))))

(declare-fun b!5263655 () Bool)

(declare-fun res!2233438 () Bool)

(assert (=> b!5263655 (=> res!2233438 e!3274079)))

(assert (=> b!5263655 (= res!2233438 (not (isEmpty!32766 (tail!10382 s!2326))))))

(declare-fun b!5263656 () Bool)

(assert (=> b!5263656 (= e!3274078 e!3274079)))

(declare-fun res!2233434 () Bool)

(assert (=> b!5263656 (=> res!2233434 e!3274079)))

(assert (=> b!5263656 (= res!2233434 call!373430)))

(declare-fun b!5263657 () Bool)

(declare-fun res!2233433 () Bool)

(assert (=> b!5263657 (=> (not res!2233433) (not e!3274083))))

(assert (=> b!5263657 (= res!2233433 (isEmpty!32766 (tail!10382 s!2326)))))

(declare-fun b!5263650 () Bool)

(declare-fun res!2233440 () Bool)

(assert (=> b!5263650 (=> res!2233440 e!3274080)))

(assert (=> b!5263650 (= res!2233440 (not ((_ is ElementMatch!14881) (regTwo!30274 r!7292))))))

(assert (=> b!5263650 (= e!3274082 e!3274080)))

(declare-fun d!1694182 () Bool)

(assert (=> d!1694182 e!3274081))

(declare-fun c!911288 () Bool)

(assert (=> d!1694182 (= c!911288 ((_ is EmptyExpr!14881) (regTwo!30274 r!7292)))))

(assert (=> d!1694182 (= lt!2155638 e!3274084)))

(declare-fun c!911289 () Bool)

(assert (=> d!1694182 (= c!911289 (isEmpty!32766 s!2326))))

(assert (=> d!1694182 (validRegex!6617 (regTwo!30274 r!7292))))

(assert (=> d!1694182 (= (matchR!7066 (regTwo!30274 r!7292) s!2326) lt!2155638)))

(assert (= (and d!1694182 c!911289) b!5263646))

(assert (= (and d!1694182 (not c!911289)) b!5263648))

(assert (= (and d!1694182 c!911288) b!5263649))

(assert (= (and d!1694182 (not c!911288)) b!5263652))

(assert (= (and b!5263652 c!911287) b!5263651))

(assert (= (and b!5263652 (not c!911287)) b!5263650))

(assert (= (and b!5263650 (not res!2233440)) b!5263645))

(assert (= (and b!5263645 res!2233437) b!5263653))

(assert (= (and b!5263653 res!2233435) b!5263657))

(assert (= (and b!5263657 res!2233433) b!5263644))

(assert (= (and b!5263645 (not res!2233439)) b!5263654))

(assert (= (and b!5263654 res!2233436) b!5263656))

(assert (= (and b!5263656 (not res!2233434)) b!5263655))

(assert (= (and b!5263655 (not res!2233438)) b!5263647))

(assert (= (or b!5263649 b!5263653 b!5263656) bm!373425))

(declare-fun m!6304502 () Bool)

(assert (=> b!5263646 m!6304502))

(assert (=> bm!373425 m!6304060))

(assert (=> b!5263657 m!6304066))

(assert (=> b!5263657 m!6304066))

(assert (=> b!5263657 m!6304068))

(assert (=> b!5263644 m!6304070))

(assert (=> d!1694182 m!6304060))

(declare-fun m!6304504 () Bool)

(assert (=> d!1694182 m!6304504))

(assert (=> b!5263647 m!6304070))

(assert (=> b!5263648 m!6304070))

(assert (=> b!5263648 m!6304070))

(declare-fun m!6304506 () Bool)

(assert (=> b!5263648 m!6304506))

(assert (=> b!5263648 m!6304066))

(assert (=> b!5263648 m!6304506))

(assert (=> b!5263648 m!6304066))

(declare-fun m!6304508 () Bool)

(assert (=> b!5263648 m!6304508))

(assert (=> b!5263655 m!6304066))

(assert (=> b!5263655 m!6304066))

(assert (=> b!5263655 m!6304068))

(assert (=> b!5262855 d!1694182))

(declare-fun b!5263658 () Bool)

(declare-fun c!911294 () Bool)

(assert (=> b!5263658 (= c!911294 ((_ is Star!14881) (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun e!3274088 () (InoxSet Context!8530))

(declare-fun e!3274087 () (InoxSet Context!8530))

(assert (=> b!5263658 (= e!3274088 e!3274087)))

(declare-fun b!5263659 () Bool)

(declare-fun c!911291 () Bool)

(declare-fun e!3274089 () Bool)

(assert (=> b!5263659 (= c!911291 e!3274089)))

(declare-fun res!2233441 () Bool)

(assert (=> b!5263659 (=> (not res!2233441) (not e!3274089))))

(assert (=> b!5263659 (= res!2233441 ((_ is Concat!23726) (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun e!3274090 () (InoxSet Context!8530))

(declare-fun e!3274086 () (InoxSet Context!8530))

(assert (=> b!5263659 (= e!3274090 e!3274086)))

(declare-fun bm!373426 () Bool)

(declare-fun call!373431 () (InoxSet Context!8530))

(declare-fun call!373436 () (InoxSet Context!8530))

(assert (=> bm!373426 (= call!373431 call!373436)))

(declare-fun bm!373428 () Bool)

(declare-fun call!373434 () (InoxSet Context!8530))

(assert (=> bm!373428 (= call!373434 call!373431)))

(declare-fun c!911292 () Bool)

(declare-fun call!373433 () (InoxSet Context!8530))

(declare-fun call!373435 () List!60943)

(declare-fun bm!373429 () Bool)

(assert (=> bm!373429 (= call!373433 (derivationStepZipperDown!329 (ite c!911292 (regTwo!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343))))) (ite c!911292 (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343)))) (Context!8531 call!373435)) (h!67266 s!2326)))))

(declare-fun b!5263660 () Bool)

(assert (=> b!5263660 (= e!3274089 (nullable!5050 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343))))))))

(declare-fun b!5263661 () Bool)

(assert (=> b!5263661 (= e!3274086 ((_ map or) call!373433 call!373431))))

(declare-fun b!5263662 () Bool)

(declare-fun e!3274085 () (InoxSet Context!8530))

(assert (=> b!5263662 (= e!3274085 e!3274090)))

(assert (=> b!5263662 (= c!911292 ((_ is Union!14881) (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun b!5263663 () Bool)

(assert (=> b!5263663 (= e!3274088 call!373434)))

(declare-fun c!911290 () Bool)

(declare-fun call!373432 () List!60943)

(declare-fun bm!373430 () Bool)

(assert (=> bm!373430 (= call!373436 (derivationStepZipperDown!329 (ite c!911292 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911291 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911290 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343))))))) (ite (or c!911292 c!911291) (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343)))) (Context!8531 call!373432)) (h!67266 s!2326)))))

(declare-fun bm!373427 () Bool)

(assert (=> bm!373427 (= call!373432 call!373435)))

(declare-fun d!1694184 () Bool)

(declare-fun c!911293 () Bool)

(assert (=> d!1694184 (= c!911293 (and ((_ is ElementMatch!14881) (h!67267 (exprs!4765 (h!67268 zl!343)))) (= (c!910993 (h!67267 (exprs!4765 (h!67268 zl!343)))) (h!67266 s!2326))))))

(assert (=> d!1694184 (= (derivationStepZipperDown!329 (h!67267 (exprs!4765 (h!67268 zl!343))) (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343)))) (h!67266 s!2326)) e!3274085)))

(declare-fun b!5263664 () Bool)

(assert (=> b!5263664 (= e!3274087 call!373434)))

(declare-fun bm!373431 () Bool)

(assert (=> bm!373431 (= call!373435 ($colon$colon!1334 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343))))) (ite (or c!911291 c!911290) (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (h!67267 (exprs!4765 (h!67268 zl!343))))))))

(declare-fun b!5263665 () Bool)

(assert (=> b!5263665 (= e!3274090 ((_ map or) call!373436 call!373433))))

(declare-fun b!5263666 () Bool)

(assert (=> b!5263666 (= e!3274087 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263667 () Bool)

(assert (=> b!5263667 (= e!3274086 e!3274088)))

(assert (=> b!5263667 (= c!911290 ((_ is Concat!23726) (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun b!5263668 () Bool)

(assert (=> b!5263668 (= e!3274085 (store ((as const (Array Context!8530 Bool)) false) (Context!8531 (t!374130 (exprs!4765 (h!67268 zl!343)))) true))))

(assert (= (and d!1694184 c!911293) b!5263668))

(assert (= (and d!1694184 (not c!911293)) b!5263662))

(assert (= (and b!5263662 c!911292) b!5263665))

(assert (= (and b!5263662 (not c!911292)) b!5263659))

(assert (= (and b!5263659 res!2233441) b!5263660))

(assert (= (and b!5263659 c!911291) b!5263661))

(assert (= (and b!5263659 (not c!911291)) b!5263667))

(assert (= (and b!5263667 c!911290) b!5263663))

(assert (= (and b!5263667 (not c!911290)) b!5263658))

(assert (= (and b!5263658 c!911294) b!5263664))

(assert (= (and b!5263658 (not c!911294)) b!5263666))

(assert (= (or b!5263663 b!5263664) bm!373427))

(assert (= (or b!5263663 b!5263664) bm!373428))

(assert (= (or b!5263661 bm!373427) bm!373431))

(assert (= (or b!5263661 bm!373428) bm!373426))

(assert (= (or b!5263665 b!5263661) bm!373429))

(assert (= (or b!5263665 bm!373426) bm!373430))

(declare-fun m!6304510 () Bool)

(assert (=> bm!373431 m!6304510))

(declare-fun m!6304512 () Bool)

(assert (=> b!5263668 m!6304512))

(assert (=> b!5263660 m!6304126))

(declare-fun m!6304514 () Bool)

(assert (=> bm!373429 m!6304514))

(declare-fun m!6304516 () Bool)

(assert (=> bm!373430 m!6304516))

(assert (=> bm!373343 d!1694184))

(assert (=> d!1693896 d!1693904))

(assert (=> d!1693896 d!1693898))

(declare-fun e!3274093 () Bool)

(declare-fun d!1694186 () Bool)

(assert (=> d!1694186 (= (matchZipper!1125 ((_ map or) lt!2155534 lt!2155531) (t!374129 s!2326)) e!3274093)))

(declare-fun res!2233444 () Bool)

(assert (=> d!1694186 (=> res!2233444 e!3274093)))

(assert (=> d!1694186 (= res!2233444 (matchZipper!1125 lt!2155534 (t!374129 s!2326)))))

(assert (=> d!1694186 true))

(declare-fun _$48!905 () Unit!153042)

(assert (=> d!1694186 (= (choose!39261 lt!2155534 lt!2155531 (t!374129 s!2326)) _$48!905)))

(declare-fun b!5263671 () Bool)

(assert (=> b!5263671 (= e!3274093 (matchZipper!1125 lt!2155531 (t!374129 s!2326)))))

(assert (= (and d!1694186 (not res!2233444)) b!5263671))

(assert (=> d!1694186 m!6303700))

(assert (=> d!1694186 m!6303698))

(assert (=> b!5263671 m!6303688))

(assert (=> d!1693896 d!1694186))

(declare-fun d!1694190 () Bool)

(assert (=> d!1694190 (= (isEmpty!32766 (tail!10382 s!2326)) ((_ is Nil!60818) (tail!10382 s!2326)))))

(assert (=> b!5263175 d!1694190))

(declare-fun d!1694192 () Bool)

(assert (=> d!1694192 (= (tail!10382 s!2326) (t!374129 s!2326))))

(assert (=> b!5263175 d!1694192))

(declare-fun d!1694194 () Bool)

(assert (=> d!1694194 (= (isEmpty!32766 (t!374129 s!2326)) ((_ is Nil!60818) (t!374129 s!2326)))))

(assert (=> d!1694008 d!1694194))

(declare-fun d!1694196 () Bool)

(assert (=> d!1694196 true))

(assert (=> d!1694196 true))

(declare-fun res!2233452 () Bool)

(assert (=> d!1694196 (= (choose!39264 lambda!265339) res!2233452)))

(assert (=> d!1693936 d!1694196))

(assert (=> d!1693898 d!1694194))

(declare-fun b!5263683 () Bool)

(declare-fun e!3274104 () Bool)

(assert (=> b!5263683 (= e!3274104 (nullable!5050 (h!67267 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 lt!2155536)))))))))

(declare-fun d!1694200 () Bool)

(declare-fun c!911297 () Bool)

(assert (=> d!1694200 (= c!911297 e!3274104)))

(declare-fun res!2233455 () Bool)

(assert (=> d!1694200 (=> (not res!2233455) (not e!3274104))))

(assert (=> d!1694200 (= res!2233455 ((_ is Cons!60819) (exprs!4765 (Context!8531 (t!374130 (exprs!4765 lt!2155536))))))))

(declare-fun e!3274105 () (InoxSet Context!8530))

(assert (=> d!1694200 (= (derivationStepZipperUp!253 (Context!8531 (t!374130 (exprs!4765 lt!2155536))) (h!67266 s!2326)) e!3274105)))

(declare-fun b!5263684 () Bool)

(declare-fun e!3274103 () (InoxSet Context!8530))

(assert (=> b!5263684 (= e!3274103 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263685 () Bool)

(declare-fun call!373440 () (InoxSet Context!8530))

(assert (=> b!5263685 (= e!3274103 call!373440)))

(declare-fun b!5263686 () Bool)

(assert (=> b!5263686 (= e!3274105 e!3274103)))

(declare-fun c!911298 () Bool)

(assert (=> b!5263686 (= c!911298 ((_ is Cons!60819) (exprs!4765 (Context!8531 (t!374130 (exprs!4765 lt!2155536))))))))

(declare-fun bm!373435 () Bool)

(assert (=> bm!373435 (= call!373440 (derivationStepZipperDown!329 (h!67267 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 lt!2155536))))) (Context!8531 (t!374130 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 lt!2155536)))))) (h!67266 s!2326)))))

(declare-fun b!5263687 () Bool)

(assert (=> b!5263687 (= e!3274105 ((_ map or) call!373440 (derivationStepZipperUp!253 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 lt!2155536)))))) (h!67266 s!2326))))))

(assert (= (and d!1694200 res!2233455) b!5263683))

(assert (= (and d!1694200 c!911297) b!5263687))

(assert (= (and d!1694200 (not c!911297)) b!5263686))

(assert (= (and b!5263686 c!911298) b!5263685))

(assert (= (and b!5263686 (not c!911298)) b!5263684))

(assert (= (or b!5263687 b!5263685) bm!373435))

(declare-fun m!6304532 () Bool)

(assert (=> b!5263683 m!6304532))

(declare-fun m!6304536 () Bool)

(assert (=> bm!373435 m!6304536))

(declare-fun m!6304538 () Bool)

(assert (=> b!5263687 m!6304538))

(assert (=> b!5263249 d!1694200))

(assert (=> b!5263177 d!1694190))

(assert (=> b!5263177 d!1694192))

(declare-fun bs!1220126 () Bool)

(declare-fun d!1694204 () Bool)

(assert (= bs!1220126 (and d!1694204 d!1694038)))

(declare-fun lambda!265416 () Int)

(assert (=> bs!1220126 (= lambda!265416 lambda!265403)))

(declare-fun bs!1220127 () Bool)

(assert (= bs!1220127 (and d!1694204 d!1694040)))

(assert (=> bs!1220127 (= lambda!265416 lambda!265404)))

(assert (=> d!1694204 (= (nullableZipper!1283 lt!2155534) (exists!1986 lt!2155534 lambda!265416))))

(declare-fun bs!1220128 () Bool)

(assert (= bs!1220128 d!1694204))

(declare-fun m!6304540 () Bool)

(assert (=> bs!1220128 m!6304540))

(assert (=> b!5262696 d!1694204))

(declare-fun d!1694206 () Bool)

(declare-fun c!911301 () Bool)

(assert (=> d!1694206 (= c!911301 (isEmpty!32766 (tail!10382 (t!374129 s!2326))))))

(declare-fun e!3274113 () Bool)

(assert (=> d!1694206 (= (matchZipper!1125 (derivationStepZipper!1127 ((_ map or) lt!2155534 lt!2155531) (head!11285 (t!374129 s!2326))) (tail!10382 (t!374129 s!2326))) e!3274113)))

(declare-fun b!5263697 () Bool)

(assert (=> b!5263697 (= e!3274113 (nullableZipper!1283 (derivationStepZipper!1127 ((_ map or) lt!2155534 lt!2155531) (head!11285 (t!374129 s!2326)))))))

(declare-fun b!5263698 () Bool)

(assert (=> b!5263698 (= e!3274113 (matchZipper!1125 (derivationStepZipper!1127 (derivationStepZipper!1127 ((_ map or) lt!2155534 lt!2155531) (head!11285 (t!374129 s!2326))) (head!11285 (tail!10382 (t!374129 s!2326)))) (tail!10382 (tail!10382 (t!374129 s!2326)))))))

(assert (= (and d!1694206 c!911301) b!5263697))

(assert (= (and d!1694206 (not c!911301)) b!5263698))

(assert (=> d!1694206 m!6303828))

(assert (=> d!1694206 m!6304196))

(assert (=> b!5263697 m!6303834))

(declare-fun m!6304542 () Bool)

(assert (=> b!5263697 m!6304542))

(assert (=> b!5263698 m!6303828))

(assert (=> b!5263698 m!6304200))

(assert (=> b!5263698 m!6303834))

(assert (=> b!5263698 m!6304200))

(declare-fun m!6304544 () Bool)

(assert (=> b!5263698 m!6304544))

(assert (=> b!5263698 m!6303828))

(assert (=> b!5263698 m!6304204))

(assert (=> b!5263698 m!6304544))

(assert (=> b!5263698 m!6304204))

(declare-fun m!6304546 () Bool)

(assert (=> b!5263698 m!6304546))

(assert (=> b!5262699 d!1694206))

(declare-fun bs!1220129 () Bool)

(declare-fun d!1694208 () Bool)

(assert (= bs!1220129 (and d!1694208 b!5262556)))

(declare-fun lambda!265417 () Int)

(assert (=> bs!1220129 (= (= (head!11285 (t!374129 s!2326)) (h!67266 s!2326)) (= lambda!265417 lambda!265341))))

(declare-fun bs!1220130 () Bool)

(assert (= bs!1220130 (and d!1694208 d!1694032)))

(assert (=> bs!1220130 (= lambda!265417 lambda!265400)))

(assert (=> d!1694208 true))

(assert (=> d!1694208 (= (derivationStepZipper!1127 ((_ map or) lt!2155534 lt!2155531) (head!11285 (t!374129 s!2326))) (flatMap!608 ((_ map or) lt!2155534 lt!2155531) lambda!265417))))

(declare-fun bs!1220131 () Bool)

(assert (= bs!1220131 d!1694208))

(declare-fun m!6304554 () Bool)

(assert (=> bs!1220131 m!6304554))

(assert (=> b!5262699 d!1694208))

(assert (=> b!5262699 d!1694034))

(assert (=> b!5262699 d!1694036))

(declare-fun d!1694212 () Bool)

(declare-fun c!911306 () Bool)

(assert (=> d!1694212 (= c!911306 (isEmpty!32766 (tail!10382 (t!374129 s!2326))))))

(declare-fun e!3274121 () Bool)

(assert (=> d!1694212 (= (matchZipper!1125 (derivationStepZipper!1127 lt!2155531 (head!11285 (t!374129 s!2326))) (tail!10382 (t!374129 s!2326))) e!3274121)))

(declare-fun b!5263710 () Bool)

(assert (=> b!5263710 (= e!3274121 (nullableZipper!1283 (derivationStepZipper!1127 lt!2155531 (head!11285 (t!374129 s!2326)))))))

(declare-fun b!5263711 () Bool)

(assert (=> b!5263711 (= e!3274121 (matchZipper!1125 (derivationStepZipper!1127 (derivationStepZipper!1127 lt!2155531 (head!11285 (t!374129 s!2326))) (head!11285 (tail!10382 (t!374129 s!2326)))) (tail!10382 (tail!10382 (t!374129 s!2326)))))))

(assert (= (and d!1694212 c!911306) b!5263710))

(assert (= (and d!1694212 (not c!911306)) b!5263711))

(assert (=> d!1694212 m!6303828))

(assert (=> d!1694212 m!6304196))

(assert (=> b!5263710 m!6304148))

(declare-fun m!6304556 () Bool)

(assert (=> b!5263710 m!6304556))

(assert (=> b!5263711 m!6303828))

(assert (=> b!5263711 m!6304200))

(assert (=> b!5263711 m!6304148))

(assert (=> b!5263711 m!6304200))

(declare-fun m!6304558 () Bool)

(assert (=> b!5263711 m!6304558))

(assert (=> b!5263711 m!6303828))

(assert (=> b!5263711 m!6304204))

(assert (=> b!5263711 m!6304558))

(assert (=> b!5263711 m!6304204))

(declare-fun m!6304560 () Bool)

(assert (=> b!5263711 m!6304560))

(assert (=> b!5263254 d!1694212))

(declare-fun bs!1220132 () Bool)

(declare-fun d!1694214 () Bool)

(assert (= bs!1220132 (and d!1694214 b!5262556)))

(declare-fun lambda!265418 () Int)

(assert (=> bs!1220132 (= (= (head!11285 (t!374129 s!2326)) (h!67266 s!2326)) (= lambda!265418 lambda!265341))))

(declare-fun bs!1220133 () Bool)

(assert (= bs!1220133 (and d!1694214 d!1694032)))

(assert (=> bs!1220133 (= lambda!265418 lambda!265400)))

(declare-fun bs!1220134 () Bool)

(assert (= bs!1220134 (and d!1694214 d!1694208)))

(assert (=> bs!1220134 (= lambda!265418 lambda!265417)))

(assert (=> d!1694214 true))

(assert (=> d!1694214 (= (derivationStepZipper!1127 lt!2155531 (head!11285 (t!374129 s!2326))) (flatMap!608 lt!2155531 lambda!265418))))

(declare-fun bs!1220135 () Bool)

(assert (= bs!1220135 d!1694214))

(declare-fun m!6304562 () Bool)

(assert (=> bs!1220135 m!6304562))

(assert (=> b!5263254 d!1694214))

(assert (=> b!5263254 d!1694034))

(assert (=> b!5263254 d!1694036))

(declare-fun b!5263712 () Bool)

(declare-fun e!3274127 () Bool)

(assert (=> b!5263712 (= e!3274127 (= (head!11285 (_2!35383 (get!20910 lt!2155579))) (c!910993 (regTwo!30274 r!7292))))))

(declare-fun b!5263713 () Bool)

(declare-fun res!2233470 () Bool)

(declare-fun e!3274124 () Bool)

(assert (=> b!5263713 (=> res!2233470 e!3274124)))

(assert (=> b!5263713 (= res!2233470 e!3274127)))

(declare-fun res!2233468 () Bool)

(assert (=> b!5263713 (=> (not res!2233468) (not e!3274127))))

(declare-fun lt!2155639 () Bool)

(assert (=> b!5263713 (= res!2233468 lt!2155639)))

(declare-fun b!5263714 () Bool)

(declare-fun e!3274128 () Bool)

(assert (=> b!5263714 (= e!3274128 (nullable!5050 (regTwo!30274 r!7292)))))

(declare-fun b!5263715 () Bool)

(declare-fun e!3274123 () Bool)

(assert (=> b!5263715 (= e!3274123 (not (= (head!11285 (_2!35383 (get!20910 lt!2155579))) (c!910993 (regTwo!30274 r!7292)))))))

(declare-fun b!5263716 () Bool)

(assert (=> b!5263716 (= e!3274128 (matchR!7066 (derivativeStep!4105 (regTwo!30274 r!7292) (head!11285 (_2!35383 (get!20910 lt!2155579)))) (tail!10382 (_2!35383 (get!20910 lt!2155579)))))))

(declare-fun b!5263717 () Bool)

(declare-fun e!3274125 () Bool)

(declare-fun call!373446 () Bool)

(assert (=> b!5263717 (= e!3274125 (= lt!2155639 call!373446))))

(declare-fun b!5263719 () Bool)

(declare-fun e!3274126 () Bool)

(assert (=> b!5263719 (= e!3274126 (not lt!2155639))))

(declare-fun b!5263720 () Bool)

(assert (=> b!5263720 (= e!3274125 e!3274126)))

(declare-fun c!911307 () Bool)

(assert (=> b!5263720 (= c!911307 ((_ is EmptyLang!14881) (regTwo!30274 r!7292)))))

(declare-fun b!5263721 () Bool)

(declare-fun res!2233466 () Bool)

(assert (=> b!5263721 (=> (not res!2233466) (not e!3274127))))

(assert (=> b!5263721 (= res!2233466 (not call!373446))))

(declare-fun b!5263722 () Bool)

(declare-fun e!3274122 () Bool)

(assert (=> b!5263722 (= e!3274124 e!3274122)))

(declare-fun res!2233467 () Bool)

(assert (=> b!5263722 (=> (not res!2233467) (not e!3274122))))

(assert (=> b!5263722 (= res!2233467 (not lt!2155639))))

(declare-fun bm!373441 () Bool)

(assert (=> bm!373441 (= call!373446 (isEmpty!32766 (_2!35383 (get!20910 lt!2155579))))))

(declare-fun b!5263723 () Bool)

(declare-fun res!2233469 () Bool)

(assert (=> b!5263723 (=> res!2233469 e!3274123)))

(assert (=> b!5263723 (= res!2233469 (not (isEmpty!32766 (tail!10382 (_2!35383 (get!20910 lt!2155579))))))))

(declare-fun b!5263724 () Bool)

(assert (=> b!5263724 (= e!3274122 e!3274123)))

(declare-fun res!2233465 () Bool)

(assert (=> b!5263724 (=> res!2233465 e!3274123)))

(assert (=> b!5263724 (= res!2233465 call!373446)))

(declare-fun b!5263725 () Bool)

(declare-fun res!2233464 () Bool)

(assert (=> b!5263725 (=> (not res!2233464) (not e!3274127))))

(assert (=> b!5263725 (= res!2233464 (isEmpty!32766 (tail!10382 (_2!35383 (get!20910 lt!2155579)))))))

(declare-fun b!5263718 () Bool)

(declare-fun res!2233471 () Bool)

(assert (=> b!5263718 (=> res!2233471 e!3274124)))

(assert (=> b!5263718 (= res!2233471 (not ((_ is ElementMatch!14881) (regTwo!30274 r!7292))))))

(assert (=> b!5263718 (= e!3274126 e!3274124)))

(declare-fun d!1694216 () Bool)

(assert (=> d!1694216 e!3274125))

(declare-fun c!911308 () Bool)

(assert (=> d!1694216 (= c!911308 ((_ is EmptyExpr!14881) (regTwo!30274 r!7292)))))

(assert (=> d!1694216 (= lt!2155639 e!3274128)))

(declare-fun c!911309 () Bool)

(assert (=> d!1694216 (= c!911309 (isEmpty!32766 (_2!35383 (get!20910 lt!2155579))))))

(assert (=> d!1694216 (validRegex!6617 (regTwo!30274 r!7292))))

(assert (=> d!1694216 (= (matchR!7066 (regTwo!30274 r!7292) (_2!35383 (get!20910 lt!2155579))) lt!2155639)))

(assert (= (and d!1694216 c!911309) b!5263714))

(assert (= (and d!1694216 (not c!911309)) b!5263716))

(assert (= (and d!1694216 c!911308) b!5263717))

(assert (= (and d!1694216 (not c!911308)) b!5263720))

(assert (= (and b!5263720 c!911307) b!5263719))

(assert (= (and b!5263720 (not c!911307)) b!5263718))

(assert (= (and b!5263718 (not res!2233471)) b!5263713))

(assert (= (and b!5263713 res!2233468) b!5263721))

(assert (= (and b!5263721 res!2233466) b!5263725))

(assert (= (and b!5263725 res!2233464) b!5263712))

(assert (= (and b!5263713 (not res!2233470)) b!5263722))

(assert (= (and b!5263722 res!2233467) b!5263724))

(assert (= (and b!5263724 (not res!2233465)) b!5263723))

(assert (= (and b!5263723 (not res!2233469)) b!5263715))

(assert (= (or b!5263717 b!5263721 b!5263724) bm!373441))

(assert (=> b!5263714 m!6304502))

(declare-fun m!6304564 () Bool)

(assert (=> bm!373441 m!6304564))

(declare-fun m!6304566 () Bool)

(assert (=> b!5263725 m!6304566))

(assert (=> b!5263725 m!6304566))

(declare-fun m!6304568 () Bool)

(assert (=> b!5263725 m!6304568))

(declare-fun m!6304570 () Bool)

(assert (=> b!5263712 m!6304570))

(assert (=> d!1694216 m!6304564))

(assert (=> d!1694216 m!6304504))

(assert (=> b!5263715 m!6304570))

(assert (=> b!5263716 m!6304570))

(assert (=> b!5263716 m!6304570))

(declare-fun m!6304572 () Bool)

(assert (=> b!5263716 m!6304572))

(assert (=> b!5263716 m!6304566))

(assert (=> b!5263716 m!6304572))

(assert (=> b!5263716 m!6304566))

(declare-fun m!6304574 () Bool)

(assert (=> b!5263716 m!6304574))

(assert (=> b!5263723 m!6304566))

(assert (=> b!5263723 m!6304566))

(assert (=> b!5263723 m!6304568))

(assert (=> b!5262849 d!1694216))

(assert (=> b!5262849 d!1694024))

(declare-fun d!1694218 () Bool)

(assert (=> d!1694218 (= ($colon$colon!1334 (exprs!4765 lt!2155536) (ite (or c!911189 c!911188) (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (h!67267 (exprs!4765 (h!67268 zl!343))))) (Cons!60819 (ite (or c!911189 c!911188) (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (h!67267 (exprs!4765 (h!67268 zl!343)))) (exprs!4765 lt!2155536)))))

(assert (=> bm!373349 d!1694218))

(declare-fun b!5263729 () Bool)

(declare-fun e!3274129 () Bool)

(declare-fun lt!2155640 () List!60942)

(assert (=> b!5263729 (= e!3274129 (or (not (= (_2!35383 (get!20910 lt!2155579)) Nil!60818)) (= lt!2155640 (_1!35383 (get!20910 lt!2155579)))))))

(declare-fun d!1694220 () Bool)

(assert (=> d!1694220 e!3274129))

(declare-fun res!2233472 () Bool)

(assert (=> d!1694220 (=> (not res!2233472) (not e!3274129))))

(assert (=> d!1694220 (= res!2233472 (= (content!10811 lt!2155640) ((_ map or) (content!10811 (_1!35383 (get!20910 lt!2155579))) (content!10811 (_2!35383 (get!20910 lt!2155579))))))))

(declare-fun e!3274130 () List!60942)

(assert (=> d!1694220 (= lt!2155640 e!3274130)))

(declare-fun c!911310 () Bool)

(assert (=> d!1694220 (= c!911310 ((_ is Nil!60818) (_1!35383 (get!20910 lt!2155579))))))

(assert (=> d!1694220 (= (++!13264 (_1!35383 (get!20910 lt!2155579)) (_2!35383 (get!20910 lt!2155579))) lt!2155640)))

(declare-fun b!5263727 () Bool)

(assert (=> b!5263727 (= e!3274130 (Cons!60818 (h!67266 (_1!35383 (get!20910 lt!2155579))) (++!13264 (t!374129 (_1!35383 (get!20910 lt!2155579))) (_2!35383 (get!20910 lt!2155579)))))))

(declare-fun b!5263728 () Bool)

(declare-fun res!2233473 () Bool)

(assert (=> b!5263728 (=> (not res!2233473) (not e!3274129))))

(assert (=> b!5263728 (= res!2233473 (= (size!39741 lt!2155640) (+ (size!39741 (_1!35383 (get!20910 lt!2155579))) (size!39741 (_2!35383 (get!20910 lt!2155579))))))))

(declare-fun b!5263726 () Bool)

(assert (=> b!5263726 (= e!3274130 (_2!35383 (get!20910 lt!2155579)))))

(assert (= (and d!1694220 c!911310) b!5263726))

(assert (= (and d!1694220 (not c!911310)) b!5263727))

(assert (= (and d!1694220 res!2233472) b!5263728))

(assert (= (and b!5263728 res!2233473) b!5263729))

(declare-fun m!6304576 () Bool)

(assert (=> d!1694220 m!6304576))

(declare-fun m!6304578 () Bool)

(assert (=> d!1694220 m!6304578))

(declare-fun m!6304580 () Bool)

(assert (=> d!1694220 m!6304580))

(declare-fun m!6304582 () Bool)

(assert (=> b!5263727 m!6304582))

(declare-fun m!6304584 () Bool)

(assert (=> b!5263728 m!6304584))

(declare-fun m!6304586 () Bool)

(assert (=> b!5263728 m!6304586))

(declare-fun m!6304588 () Bool)

(assert (=> b!5263728 m!6304588))

(assert (=> b!5262851 d!1694220))

(assert (=> b!5262851 d!1694024))

(assert (=> b!5263229 d!1693990))

(assert (=> d!1693904 d!1694194))

(declare-fun d!1694222 () Bool)

(assert (=> d!1694222 (= (nullable!5050 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343))))) (nullableFct!1436 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343))))))))

(declare-fun bs!1220143 () Bool)

(assert (= bs!1220143 d!1694222))

(declare-fun m!6304590 () Bool)

(assert (=> bs!1220143 m!6304590))

(assert (=> b!5263236 d!1694222))

(declare-fun b!5263730 () Bool)

(declare-fun c!911315 () Bool)

(assert (=> b!5263730 (= c!911315 ((_ is Star!14881) (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))))))))

(declare-fun e!3274134 () (InoxSet Context!8530))

(declare-fun e!3274133 () (InoxSet Context!8530))

(assert (=> b!5263730 (= e!3274134 e!3274133)))

(declare-fun b!5263731 () Bool)

(declare-fun c!911312 () Bool)

(declare-fun e!3274135 () Bool)

(assert (=> b!5263731 (= c!911312 e!3274135)))

(declare-fun res!2233474 () Bool)

(assert (=> b!5263731 (=> (not res!2233474) (not e!3274135))))

(assert (=> b!5263731 (= res!2233474 ((_ is Concat!23726) (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))))))))

(declare-fun e!3274136 () (InoxSet Context!8530))

(declare-fun e!3274132 () (InoxSet Context!8530))

(assert (=> b!5263731 (= e!3274136 e!3274132)))

(declare-fun bm!373442 () Bool)

(declare-fun call!373447 () (InoxSet Context!8530))

(declare-fun call!373452 () (InoxSet Context!8530))

(assert (=> bm!373442 (= call!373447 call!373452)))

(declare-fun bm!373444 () Bool)

(declare-fun call!373450 () (InoxSet Context!8530))

(assert (=> bm!373444 (= call!373450 call!373447)))

(declare-fun bm!373445 () Bool)

(declare-fun c!911313 () Bool)

(declare-fun call!373451 () List!60943)

(declare-fun call!373449 () (InoxSet Context!8530))

(assert (=> bm!373445 (= call!373449 (derivationStepZipperDown!329 (ite c!911313 (regTwo!30275 (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))))) (regOne!30274 (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292)))))) (ite c!911313 (ite c!911137 lt!2155536 (Context!8531 call!373331)) (Context!8531 call!373451)) (h!67266 s!2326)))))

(declare-fun b!5263732 () Bool)

(assert (=> b!5263732 (= e!3274135 (nullable!5050 (regOne!30274 (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292)))))))))

(declare-fun b!5263733 () Bool)

(assert (=> b!5263733 (= e!3274132 ((_ map or) call!373449 call!373447))))

(declare-fun b!5263734 () Bool)

(declare-fun e!3274131 () (InoxSet Context!8530))

(assert (=> b!5263734 (= e!3274131 e!3274136)))

(assert (=> b!5263734 (= c!911313 ((_ is Union!14881) (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))))))))

(declare-fun b!5263735 () Bool)

(assert (=> b!5263735 (= e!3274134 call!373450)))

(declare-fun call!373448 () List!60943)

(declare-fun bm!373446 () Bool)

(declare-fun c!911311 () Bool)

(assert (=> bm!373446 (= call!373452 (derivationStepZipperDown!329 (ite c!911313 (regOne!30275 (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))))) (ite c!911312 (regTwo!30274 (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))))) (ite c!911311 (regOne!30274 (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))))) (reg!15210 (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292)))))))) (ite (or c!911313 c!911312) (ite c!911137 lt!2155536 (Context!8531 call!373331)) (Context!8531 call!373448)) (h!67266 s!2326)))))

(declare-fun bm!373443 () Bool)

(assert (=> bm!373443 (= call!373448 call!373451)))

(declare-fun d!1694224 () Bool)

(declare-fun c!911314 () Bool)

(assert (=> d!1694224 (= c!911314 (and ((_ is ElementMatch!14881) (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))))) (= (c!910993 (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))))) (h!67266 s!2326))))))

(assert (=> d!1694224 (= (derivationStepZipperDown!329 (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292)))) (ite c!911137 lt!2155536 (Context!8531 call!373331)) (h!67266 s!2326)) e!3274131)))

(declare-fun b!5263736 () Bool)

(assert (=> b!5263736 (= e!3274133 call!373450)))

(declare-fun bm!373447 () Bool)

(assert (=> bm!373447 (= call!373451 ($colon$colon!1334 (exprs!4765 (ite c!911137 lt!2155536 (Context!8531 call!373331))) (ite (or c!911312 c!911311) (regTwo!30274 (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))))) (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292)))))))))

(declare-fun b!5263737 () Bool)

(assert (=> b!5263737 (= e!3274136 ((_ map or) call!373452 call!373449))))

(declare-fun b!5263738 () Bool)

(assert (=> b!5263738 (= e!3274133 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263739 () Bool)

(assert (=> b!5263739 (= e!3274132 e!3274134)))

(assert (=> b!5263739 (= c!911311 ((_ is Concat!23726) (ite c!911137 (regTwo!30275 (regTwo!30274 (regOne!30274 r!7292))) (regOne!30274 (regTwo!30274 (regOne!30274 r!7292))))))))

(declare-fun b!5263740 () Bool)

(assert (=> b!5263740 (= e!3274131 (store ((as const (Array Context!8530 Bool)) false) (ite c!911137 lt!2155536 (Context!8531 call!373331)) true))))

(assert (= (and d!1694224 c!911314) b!5263740))

(assert (= (and d!1694224 (not c!911314)) b!5263734))

(assert (= (and b!5263734 c!911313) b!5263737))

(assert (= (and b!5263734 (not c!911313)) b!5263731))

(assert (= (and b!5263731 res!2233474) b!5263732))

(assert (= (and b!5263731 c!911312) b!5263733))

(assert (= (and b!5263731 (not c!911312)) b!5263739))

(assert (= (and b!5263739 c!911311) b!5263735))

(assert (= (and b!5263739 (not c!911311)) b!5263730))

(assert (= (and b!5263730 c!911315) b!5263736))

(assert (= (and b!5263730 (not c!911315)) b!5263738))

(assert (= (or b!5263735 b!5263736) bm!373443))

(assert (= (or b!5263735 b!5263736) bm!373444))

(assert (= (or b!5263733 bm!373443) bm!373447))

(assert (= (or b!5263733 bm!373444) bm!373442))

(assert (= (or b!5263737 b!5263733) bm!373445))

(assert (= (or b!5263737 bm!373442) bm!373446))

(declare-fun m!6304592 () Bool)

(assert (=> bm!373447 m!6304592))

(declare-fun m!6304594 () Bool)

(assert (=> b!5263740 m!6304594))

(declare-fun m!6304596 () Bool)

(assert (=> b!5263732 m!6304596))

(declare-fun m!6304598 () Bool)

(assert (=> bm!373445 m!6304598))

(declare-fun m!6304600 () Bool)

(assert (=> bm!373446 m!6304600))

(assert (=> bm!373325 d!1694224))

(declare-fun d!1694226 () Bool)

(assert (=> d!1694226 (= (nullable!5050 r!7292) (nullableFct!1436 r!7292))))

(declare-fun bs!1220147 () Bool)

(assert (= bs!1220147 d!1694226))

(declare-fun m!6304602 () Bool)

(assert (=> bs!1220147 m!6304602))

(assert (=> b!5263166 d!1694226))

(declare-fun bs!1220152 () Bool)

(declare-fun b!5263750 () Bool)

(assert (= bs!1220152 (and b!5263750 b!5262535)))

(declare-fun lambda!265421 () Int)

(assert (=> bs!1220152 (not (= lambda!265421 lambda!265339))))

(declare-fun bs!1220153 () Bool)

(assert (= bs!1220153 (and b!5263750 d!1693940)))

(assert (=> bs!1220153 (not (= lambda!265421 lambda!265380))))

(declare-fun bs!1220154 () Bool)

(assert (= bs!1220154 (and b!5263750 d!1693938)))

(assert (=> bs!1220154 (not (= lambda!265421 lambda!265372))))

(declare-fun bs!1220156 () Bool)

(assert (= bs!1220156 (and b!5263750 b!5263382)))

(assert (=> bs!1220156 (not (= lambda!265421 lambda!265407))))

(declare-fun bs!1220157 () Bool)

(assert (= bs!1220157 (and b!5263750 b!5263134)))

(assert (=> bs!1220157 (= (and (= (reg!15210 (regOne!30275 r!7292)) (reg!15210 r!7292)) (= (regOne!30275 r!7292) r!7292)) (= lambda!265421 lambda!265389))))

(assert (=> bs!1220153 (not (= lambda!265421 lambda!265379))))

(assert (=> bs!1220152 (not (= lambda!265421 lambda!265340))))

(declare-fun bs!1220158 () Bool)

(assert (= bs!1220158 (and b!5263750 b!5263381)))

(assert (=> bs!1220158 (= (and (= (reg!15210 (regOne!30275 r!7292)) (reg!15210 (regTwo!30275 r!7292))) (= (regOne!30275 r!7292) (regTwo!30275 r!7292))) (= lambda!265421 lambda!265406))))

(declare-fun bs!1220159 () Bool)

(assert (= bs!1220159 (and b!5263750 b!5263135)))

(assert (=> bs!1220159 (not (= lambda!265421 lambda!265390))))

(assert (=> b!5263750 true))

(assert (=> b!5263750 true))

(declare-fun bs!1220160 () Bool)

(declare-fun b!5263751 () Bool)

(assert (= bs!1220160 (and b!5263751 d!1693940)))

(declare-fun lambda!265422 () Int)

(assert (=> bs!1220160 (= (and (= (regOne!30274 (regOne!30275 r!7292)) (regOne!30274 r!7292)) (= (regTwo!30274 (regOne!30275 r!7292)) (regTwo!30274 r!7292))) (= lambda!265422 lambda!265380))))

(declare-fun bs!1220161 () Bool)

(assert (= bs!1220161 (and b!5263751 d!1693938)))

(assert (=> bs!1220161 (not (= lambda!265422 lambda!265372))))

(declare-fun bs!1220162 () Bool)

(assert (= bs!1220162 (and b!5263751 b!5263382)))

(assert (=> bs!1220162 (= (and (= (regOne!30274 (regOne!30275 r!7292)) (regOne!30274 (regTwo!30275 r!7292))) (= (regTwo!30274 (regOne!30275 r!7292)) (regTwo!30274 (regTwo!30275 r!7292)))) (= lambda!265422 lambda!265407))))

(declare-fun bs!1220163 () Bool)

(assert (= bs!1220163 (and b!5263751 b!5263134)))

(assert (=> bs!1220163 (not (= lambda!265422 lambda!265389))))

(assert (=> bs!1220160 (not (= lambda!265422 lambda!265379))))

(declare-fun bs!1220164 () Bool)

(assert (= bs!1220164 (and b!5263751 b!5262535)))

(assert (=> bs!1220164 (= (and (= (regOne!30274 (regOne!30275 r!7292)) (regOne!30274 r!7292)) (= (regTwo!30274 (regOne!30275 r!7292)) (regTwo!30274 r!7292))) (= lambda!265422 lambda!265340))))

(declare-fun bs!1220165 () Bool)

(assert (= bs!1220165 (and b!5263751 b!5263381)))

(assert (=> bs!1220165 (not (= lambda!265422 lambda!265406))))

(declare-fun bs!1220166 () Bool)

(assert (= bs!1220166 (and b!5263751 b!5263135)))

(assert (=> bs!1220166 (= (and (= (regOne!30274 (regOne!30275 r!7292)) (regOne!30274 r!7292)) (= (regTwo!30274 (regOne!30275 r!7292)) (regTwo!30274 r!7292))) (= lambda!265422 lambda!265390))))

(assert (=> bs!1220164 (not (= lambda!265422 lambda!265339))))

(declare-fun bs!1220167 () Bool)

(assert (= bs!1220167 (and b!5263751 b!5263750)))

(assert (=> bs!1220167 (not (= lambda!265422 lambda!265421))))

(assert (=> b!5263751 true))

(assert (=> b!5263751 true))

(declare-fun b!5263741 () Bool)

(declare-fun c!911317 () Bool)

(assert (=> b!5263741 (= c!911317 ((_ is Union!14881) (regOne!30275 r!7292)))))

(declare-fun e!3274143 () Bool)

(declare-fun e!3274141 () Bool)

(assert (=> b!5263741 (= e!3274143 e!3274141)))

(declare-fun b!5263742 () Bool)

(declare-fun e!3274138 () Bool)

(assert (=> b!5263742 (= e!3274141 e!3274138)))

(declare-fun c!911319 () Bool)

(assert (=> b!5263742 (= c!911319 ((_ is Star!14881) (regOne!30275 r!7292)))))

(declare-fun b!5263743 () Bool)

(assert (=> b!5263743 (= e!3274143 (= s!2326 (Cons!60818 (c!910993 (regOne!30275 r!7292)) Nil!60818)))))

(declare-fun bm!373448 () Bool)

(declare-fun call!373453 () Bool)

(assert (=> bm!373448 (= call!373453 (Exists!2062 (ite c!911319 lambda!265421 lambda!265422)))))

(declare-fun b!5263744 () Bool)

(declare-fun e!3274137 () Bool)

(assert (=> b!5263744 (= e!3274141 e!3274137)))

(declare-fun res!2233477 () Bool)

(assert (=> b!5263744 (= res!2233477 (matchRSpec!1984 (regOne!30275 (regOne!30275 r!7292)) s!2326))))

(assert (=> b!5263744 (=> res!2233477 e!3274137)))

(declare-fun b!5263745 () Bool)

(declare-fun e!3274142 () Bool)

(declare-fun e!3274139 () Bool)

(assert (=> b!5263745 (= e!3274142 e!3274139)))

(declare-fun res!2233475 () Bool)

(assert (=> b!5263745 (= res!2233475 (not ((_ is EmptyLang!14881) (regOne!30275 r!7292))))))

(assert (=> b!5263745 (=> (not res!2233475) (not e!3274139))))

(declare-fun d!1694228 () Bool)

(declare-fun c!911316 () Bool)

(assert (=> d!1694228 (= c!911316 ((_ is EmptyExpr!14881) (regOne!30275 r!7292)))))

(assert (=> d!1694228 (= (matchRSpec!1984 (regOne!30275 r!7292) s!2326) e!3274142)))

(declare-fun b!5263746 () Bool)

(declare-fun res!2233476 () Bool)

(declare-fun e!3274140 () Bool)

(assert (=> b!5263746 (=> res!2233476 e!3274140)))

(declare-fun call!373454 () Bool)

(assert (=> b!5263746 (= res!2233476 call!373454)))

(assert (=> b!5263746 (= e!3274138 e!3274140)))

(declare-fun bm!373449 () Bool)

(assert (=> bm!373449 (= call!373454 (isEmpty!32766 s!2326))))

(declare-fun b!5263747 () Bool)

(assert (=> b!5263747 (= e!3274142 call!373454)))

(declare-fun b!5263748 () Bool)

(assert (=> b!5263748 (= e!3274137 (matchRSpec!1984 (regTwo!30275 (regOne!30275 r!7292)) s!2326))))

(declare-fun b!5263749 () Bool)

(declare-fun c!911318 () Bool)

(assert (=> b!5263749 (= c!911318 ((_ is ElementMatch!14881) (regOne!30275 r!7292)))))

(assert (=> b!5263749 (= e!3274139 e!3274143)))

(assert (=> b!5263750 (= e!3274140 call!373453)))

(assert (=> b!5263751 (= e!3274138 call!373453)))

(assert (= (and d!1694228 c!911316) b!5263747))

(assert (= (and d!1694228 (not c!911316)) b!5263745))

(assert (= (and b!5263745 res!2233475) b!5263749))

(assert (= (and b!5263749 c!911318) b!5263743))

(assert (= (and b!5263749 (not c!911318)) b!5263741))

(assert (= (and b!5263741 c!911317) b!5263744))

(assert (= (and b!5263741 (not c!911317)) b!5263742))

(assert (= (and b!5263744 (not res!2233477)) b!5263748))

(assert (= (and b!5263742 c!911319) b!5263746))

(assert (= (and b!5263742 (not c!911319)) b!5263751))

(assert (= (and b!5263746 (not res!2233476)) b!5263750))

(assert (= (or b!5263750 b!5263751) bm!373448))

(assert (= (or b!5263747 b!5263746) bm!373449))

(declare-fun m!6304610 () Bool)

(assert (=> bm!373448 m!6304610))

(declare-fun m!6304612 () Bool)

(assert (=> b!5263744 m!6304612))

(assert (=> bm!373449 m!6304060))

(declare-fun m!6304614 () Bool)

(assert (=> b!5263748 m!6304614))

(assert (=> b!5263128 d!1694228))

(declare-fun d!1694238 () Bool)

(declare-fun res!2233479 () Bool)

(declare-fun e!3274150 () Bool)

(assert (=> d!1694238 (=> res!2233479 e!3274150)))

(assert (=> d!1694238 (= res!2233479 ((_ is Nil!60819) (exprs!4765 setElem!33651)))))

(assert (=> d!1694238 (= (forall!14293 (exprs!4765 setElem!33651) lambda!265397) e!3274150)))

(declare-fun b!5263758 () Bool)

(declare-fun e!3274151 () Bool)

(assert (=> b!5263758 (= e!3274150 e!3274151)))

(declare-fun res!2233480 () Bool)

(assert (=> b!5263758 (=> (not res!2233480) (not e!3274151))))

(assert (=> b!5263758 (= res!2233480 (dynLambda!24033 lambda!265397 (h!67267 (exprs!4765 setElem!33651))))))

(declare-fun b!5263760 () Bool)

(assert (=> b!5263760 (= e!3274151 (forall!14293 (t!374130 (exprs!4765 setElem!33651)) lambda!265397))))

(assert (= (and d!1694238 (not res!2233479)) b!5263758))

(assert (= (and b!5263758 res!2233480) b!5263760))

(declare-fun b_lambda!203081 () Bool)

(assert (=> (not b_lambda!203081) (not b!5263758)))

(declare-fun m!6304616 () Bool)

(assert (=> b!5263758 m!6304616))

(declare-fun m!6304618 () Bool)

(assert (=> b!5263760 m!6304618))

(assert (=> d!1694006 d!1694238))

(declare-fun bs!1220168 () Bool)

(declare-fun d!1694240 () Bool)

(assert (= bs!1220168 (and d!1694240 d!1693988)))

(declare-fun lambda!265423 () Int)

(assert (=> bs!1220168 (= lambda!265423 lambda!265396)))

(declare-fun bs!1220169 () Bool)

(assert (= bs!1220169 (and d!1694240 d!1694176)))

(assert (=> bs!1220169 (= lambda!265423 lambda!265413)))

(declare-fun bs!1220170 () Bool)

(assert (= bs!1220170 (and d!1694240 d!1693986)))

(assert (=> bs!1220170 (= lambda!265423 lambda!265393)))

(declare-fun bs!1220171 () Bool)

(assert (= bs!1220171 (and d!1694240 d!1693950)))

(assert (=> bs!1220171 (= lambda!265423 lambda!265383)))

(declare-fun bs!1220172 () Bool)

(assert (= bs!1220172 (and d!1694240 d!1694006)))

(assert (=> bs!1220172 (= lambda!265423 lambda!265397)))

(declare-fun bs!1220173 () Bool)

(assert (= bs!1220173 (and d!1694240 d!1693910)))

(assert (=> bs!1220173 (= lambda!265423 lambda!265362)))

(declare-fun bs!1220174 () Bool)

(assert (= bs!1220174 (and d!1694240 d!1694052)))

(assert (=> bs!1220174 (= lambda!265423 lambda!265405)))

(declare-fun b!5263765 () Bool)

(declare-fun e!3274153 () Bool)

(assert (=> b!5263765 (= e!3274153 (isEmpty!32763 (t!374130 (t!374130 (exprs!4765 (h!67268 zl!343))))))))

(declare-fun b!5263766 () Bool)

(declare-fun e!3274154 () Regex!14881)

(assert (=> b!5263766 (= e!3274154 EmptyExpr!14881)))

(declare-fun b!5263768 () Bool)

(declare-fun e!3274152 () Bool)

(declare-fun lt!2155641 () Regex!14881)

(assert (=> b!5263768 (= e!3274152 (isEmptyExpr!819 lt!2155641))))

(declare-fun b!5263769 () Bool)

(declare-fun e!3274155 () Bool)

(assert (=> b!5263769 (= e!3274152 e!3274155)))

(declare-fun c!911325 () Bool)

(assert (=> b!5263769 (= c!911325 (isEmpty!32763 (tail!10383 (t!374130 (exprs!4765 (h!67268 zl!343))))))))

(declare-fun b!5263770 () Bool)

(declare-fun e!3274157 () Regex!14881)

(assert (=> b!5263770 (= e!3274157 (h!67267 (t!374130 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun b!5263771 () Bool)

(assert (=> b!5263771 (= e!3274154 (Concat!23726 (h!67267 (t!374130 (exprs!4765 (h!67268 zl!343)))) (generalisedConcat!550 (t!374130 (t!374130 (exprs!4765 (h!67268 zl!343)))))))))

(declare-fun b!5263772 () Bool)

(declare-fun e!3274156 () Bool)

(assert (=> b!5263772 (= e!3274156 e!3274152)))

(declare-fun c!911327 () Bool)

(assert (=> b!5263772 (= c!911327 (isEmpty!32763 (t!374130 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun b!5263767 () Bool)

(assert (=> b!5263767 (= e!3274155 (isConcat!342 lt!2155641))))

(assert (=> d!1694240 e!3274156))

(declare-fun res!2233482 () Bool)

(assert (=> d!1694240 (=> (not res!2233482) (not e!3274156))))

(assert (=> d!1694240 (= res!2233482 (validRegex!6617 lt!2155641))))

(assert (=> d!1694240 (= lt!2155641 e!3274157)))

(declare-fun c!911326 () Bool)

(assert (=> d!1694240 (= c!911326 e!3274153)))

(declare-fun res!2233481 () Bool)

(assert (=> d!1694240 (=> (not res!2233481) (not e!3274153))))

(assert (=> d!1694240 (= res!2233481 ((_ is Cons!60819) (t!374130 (exprs!4765 (h!67268 zl!343)))))))

(assert (=> d!1694240 (forall!14293 (t!374130 (exprs!4765 (h!67268 zl!343))) lambda!265423)))

(assert (=> d!1694240 (= (generalisedConcat!550 (t!374130 (exprs!4765 (h!67268 zl!343)))) lt!2155641)))

(declare-fun b!5263773 () Bool)

(assert (=> b!5263773 (= e!3274155 (= lt!2155641 (head!11286 (t!374130 (exprs!4765 (h!67268 zl!343))))))))

(declare-fun b!5263774 () Bool)

(assert (=> b!5263774 (= e!3274157 e!3274154)))

(declare-fun c!911328 () Bool)

(assert (=> b!5263774 (= c!911328 ((_ is Cons!60819) (t!374130 (exprs!4765 (h!67268 zl!343)))))))

(assert (= (and d!1694240 res!2233481) b!5263765))

(assert (= (and d!1694240 c!911326) b!5263770))

(assert (= (and d!1694240 (not c!911326)) b!5263774))

(assert (= (and b!5263774 c!911328) b!5263771))

(assert (= (and b!5263774 (not c!911328)) b!5263766))

(assert (= (and d!1694240 res!2233482) b!5263772))

(assert (= (and b!5263772 c!911327) b!5263768))

(assert (= (and b!5263772 (not c!911327)) b!5263769))

(assert (= (and b!5263769 c!911325) b!5263773))

(assert (= (and b!5263769 (not c!911325)) b!5263767))

(declare-fun m!6304620 () Bool)

(assert (=> b!5263767 m!6304620))

(declare-fun m!6304622 () Bool)

(assert (=> b!5263769 m!6304622))

(assert (=> b!5263769 m!6304622))

(declare-fun m!6304624 () Bool)

(assert (=> b!5263769 m!6304624))

(declare-fun m!6304626 () Bool)

(assert (=> b!5263771 m!6304626))

(declare-fun m!6304628 () Bool)

(assert (=> d!1694240 m!6304628))

(declare-fun m!6304632 () Bool)

(assert (=> d!1694240 m!6304632))

(assert (=> b!5263772 m!6303724))

(declare-fun m!6304634 () Bool)

(assert (=> b!5263768 m!6304634))

(declare-fun m!6304636 () Bool)

(assert (=> b!5263765 m!6304636))

(declare-fun m!6304638 () Bool)

(assert (=> b!5263773 m!6304638))

(assert (=> b!5262787 d!1694240))

(declare-fun d!1694242 () Bool)

(declare-fun res!2233483 () Bool)

(declare-fun e!3274158 () Bool)

(assert (=> d!1694242 (=> res!2233483 e!3274158)))

(assert (=> d!1694242 (= res!2233483 ((_ is Nil!60819) (exprs!4765 (h!67268 zl!343))))))

(assert (=> d!1694242 (= (forall!14293 (exprs!4765 (h!67268 zl!343)) lambda!265383) e!3274158)))

(declare-fun b!5263775 () Bool)

(declare-fun e!3274159 () Bool)

(assert (=> b!5263775 (= e!3274158 e!3274159)))

(declare-fun res!2233484 () Bool)

(assert (=> b!5263775 (=> (not res!2233484) (not e!3274159))))

(assert (=> b!5263775 (= res!2233484 (dynLambda!24033 lambda!265383 (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun b!5263776 () Bool)

(assert (=> b!5263776 (= e!3274159 (forall!14293 (t!374130 (exprs!4765 (h!67268 zl!343))) lambda!265383))))

(assert (= (and d!1694242 (not res!2233483)) b!5263775))

(assert (= (and b!5263775 res!2233484) b!5263776))

(declare-fun b_lambda!203083 () Bool)

(assert (=> (not b_lambda!203083) (not b!5263775)))

(declare-fun m!6304644 () Bool)

(assert (=> b!5263775 m!6304644))

(declare-fun m!6304648 () Bool)

(assert (=> b!5263776 m!6304648))

(assert (=> d!1693950 d!1694242))

(declare-fun d!1694244 () Bool)

(assert (=> d!1694244 (= (head!11286 (exprs!4765 (h!67268 zl!343))) (h!67267 (exprs!4765 (h!67268 zl!343))))))

(assert (=> b!5262789 d!1694244))

(declare-fun b!5263777 () Bool)

(declare-fun c!911333 () Bool)

(assert (=> b!5263777 (= c!911333 ((_ is Star!14881) (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))))))

(declare-fun e!3274163 () (InoxSet Context!8530))

(declare-fun e!3274162 () (InoxSet Context!8530))

(assert (=> b!5263777 (= e!3274163 e!3274162)))

(declare-fun b!5263778 () Bool)

(declare-fun c!911330 () Bool)

(declare-fun e!3274164 () Bool)

(assert (=> b!5263778 (= c!911330 e!3274164)))

(declare-fun res!2233485 () Bool)

(assert (=> b!5263778 (=> (not res!2233485) (not e!3274164))))

(assert (=> b!5263778 (= res!2233485 ((_ is Concat!23726) (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))))))

(declare-fun e!3274165 () (InoxSet Context!8530))

(declare-fun e!3274161 () (InoxSet Context!8530))

(assert (=> b!5263778 (= e!3274165 e!3274161)))

(declare-fun bm!373456 () Bool)

(declare-fun call!373461 () (InoxSet Context!8530))

(declare-fun call!373466 () (InoxSet Context!8530))

(assert (=> bm!373456 (= call!373461 call!373466)))

(declare-fun bm!373458 () Bool)

(declare-fun call!373464 () (InoxSet Context!8530))

(assert (=> bm!373458 (= call!373464 call!373461)))

(declare-fun c!911331 () Bool)

(declare-fun call!373463 () (InoxSet Context!8530))

(declare-fun bm!373459 () Bool)

(declare-fun call!373465 () List!60943)

(assert (=> bm!373459 (= call!373463 (derivationStepZipperDown!329 (ite c!911331 (regTwo!30275 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (regOne!30274 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))))) (ite c!911331 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (Context!8531 call!373465)) (h!67266 s!2326)))))

(declare-fun b!5263779 () Bool)

(assert (=> b!5263779 (= e!3274164 (nullable!5050 (regOne!30274 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))))))))

(declare-fun b!5263780 () Bool)

(assert (=> b!5263780 (= e!3274161 ((_ map or) call!373463 call!373461))))

(declare-fun b!5263781 () Bool)

(declare-fun e!3274160 () (InoxSet Context!8530))

(assert (=> b!5263781 (= e!3274160 e!3274165)))

(assert (=> b!5263781 (= c!911331 ((_ is Union!14881) (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))))))

(declare-fun b!5263782 () Bool)

(assert (=> b!5263782 (= e!3274163 call!373464)))

(declare-fun call!373462 () List!60943)

(declare-fun bm!373460 () Bool)

(declare-fun c!911329 () Bool)

(assert (=> bm!373460 (= call!373466 (derivationStepZipperDown!329 (ite c!911331 (regOne!30275 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (ite c!911330 (regTwo!30274 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (ite c!911329 (regOne!30274 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (reg!15210 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))))))) (ite (or c!911331 c!911330) (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (Context!8531 call!373462)) (h!67266 s!2326)))))

(declare-fun bm!373457 () Bool)

(assert (=> bm!373457 (= call!373462 call!373465)))

(declare-fun d!1694246 () Bool)

(declare-fun c!911332 () Bool)

(assert (=> d!1694246 (= c!911332 (and ((_ is ElementMatch!14881) (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (= (c!910993 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (h!67266 s!2326))))))

(assert (=> d!1694246 (= (derivationStepZipperDown!329 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))) (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (h!67266 s!2326)) e!3274160)))

(declare-fun b!5263783 () Bool)

(assert (=> b!5263783 (= e!3274162 call!373464)))

(declare-fun bm!373461 () Bool)

(assert (=> bm!373461 (= call!373465 ($colon$colon!1334 (exprs!4765 (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))))) (ite (or c!911330 c!911329) (regTwo!30274 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))))))))

(declare-fun b!5263784 () Bool)

(assert (=> b!5263784 (= e!3274165 ((_ map or) call!373466 call!373463))))

(declare-fun b!5263785 () Bool)

(assert (=> b!5263785 (= e!3274162 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263786 () Bool)

(assert (=> b!5263786 (= e!3274161 e!3274163)))

(assert (=> b!5263786 (= c!911329 ((_ is Concat!23726) (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))))))

(declare-fun b!5263787 () Bool)

(assert (=> b!5263787 (= e!3274160 (store ((as const (Array Context!8530 Bool)) false) (Context!8531 (t!374130 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) true))))

(assert (= (and d!1694246 c!911332) b!5263787))

(assert (= (and d!1694246 (not c!911332)) b!5263781))

(assert (= (and b!5263781 c!911331) b!5263784))

(assert (= (and b!5263781 (not c!911331)) b!5263778))

(assert (= (and b!5263778 res!2233485) b!5263779))

(assert (= (and b!5263778 c!911330) b!5263780))

(assert (= (and b!5263778 (not c!911330)) b!5263786))

(assert (= (and b!5263786 c!911329) b!5263782))

(assert (= (and b!5263786 (not c!911329)) b!5263777))

(assert (= (and b!5263777 c!911333) b!5263783))

(assert (= (and b!5263777 (not c!911333)) b!5263785))

(assert (= (or b!5263782 b!5263783) bm!373457))

(assert (= (or b!5263782 b!5263783) bm!373458))

(assert (= (or b!5263780 bm!373457) bm!373461))

(assert (= (or b!5263780 bm!373458) bm!373456))

(assert (= (or b!5263784 b!5263780) bm!373459))

(assert (= (or b!5263784 bm!373456) bm!373460))

(declare-fun m!6304654 () Bool)

(assert (=> bm!373461 m!6304654))

(declare-fun m!6304656 () Bool)

(assert (=> b!5263787 m!6304656))

(declare-fun m!6304658 () Bool)

(assert (=> b!5263779 m!6304658))

(declare-fun m!6304660 () Bool)

(assert (=> bm!373459 m!6304660))

(declare-fun m!6304662 () Bool)

(assert (=> bm!373460 m!6304662))

(assert (=> bm!373342 d!1694246))

(declare-fun b!5263788 () Bool)

(declare-fun e!3274171 () Bool)

(assert (=> b!5263788 (= e!3274171 (= (head!11285 (tail!10382 s!2326)) (c!910993 (derivativeStep!4105 r!7292 (head!11285 s!2326)))))))

(declare-fun b!5263789 () Bool)

(declare-fun res!2233492 () Bool)

(declare-fun e!3274168 () Bool)

(assert (=> b!5263789 (=> res!2233492 e!3274168)))

(assert (=> b!5263789 (= res!2233492 e!3274171)))

(declare-fun res!2233490 () Bool)

(assert (=> b!5263789 (=> (not res!2233490) (not e!3274171))))

(declare-fun lt!2155642 () Bool)

(assert (=> b!5263789 (= res!2233490 lt!2155642)))

(declare-fun b!5263790 () Bool)

(declare-fun e!3274172 () Bool)

(assert (=> b!5263790 (= e!3274172 (nullable!5050 (derivativeStep!4105 r!7292 (head!11285 s!2326))))))

(declare-fun b!5263791 () Bool)

(declare-fun e!3274167 () Bool)

(assert (=> b!5263791 (= e!3274167 (not (= (head!11285 (tail!10382 s!2326)) (c!910993 (derivativeStep!4105 r!7292 (head!11285 s!2326))))))))

(declare-fun b!5263792 () Bool)

(assert (=> b!5263792 (= e!3274172 (matchR!7066 (derivativeStep!4105 (derivativeStep!4105 r!7292 (head!11285 s!2326)) (head!11285 (tail!10382 s!2326))) (tail!10382 (tail!10382 s!2326))))))

(declare-fun b!5263793 () Bool)

(declare-fun e!3274169 () Bool)

(declare-fun call!373467 () Bool)

(assert (=> b!5263793 (= e!3274169 (= lt!2155642 call!373467))))

(declare-fun b!5263795 () Bool)

(declare-fun e!3274170 () Bool)

(assert (=> b!5263795 (= e!3274170 (not lt!2155642))))

(declare-fun b!5263796 () Bool)

(assert (=> b!5263796 (= e!3274169 e!3274170)))

(declare-fun c!911334 () Bool)

(assert (=> b!5263796 (= c!911334 ((_ is EmptyLang!14881) (derivativeStep!4105 r!7292 (head!11285 s!2326))))))

(declare-fun b!5263797 () Bool)

(declare-fun res!2233488 () Bool)

(assert (=> b!5263797 (=> (not res!2233488) (not e!3274171))))

(assert (=> b!5263797 (= res!2233488 (not call!373467))))

(declare-fun b!5263798 () Bool)

(declare-fun e!3274166 () Bool)

(assert (=> b!5263798 (= e!3274168 e!3274166)))

(declare-fun res!2233489 () Bool)

(assert (=> b!5263798 (=> (not res!2233489) (not e!3274166))))

(assert (=> b!5263798 (= res!2233489 (not lt!2155642))))

(declare-fun bm!373462 () Bool)

(assert (=> bm!373462 (= call!373467 (isEmpty!32766 (tail!10382 s!2326)))))

(declare-fun b!5263799 () Bool)

(declare-fun res!2233491 () Bool)

(assert (=> b!5263799 (=> res!2233491 e!3274167)))

(assert (=> b!5263799 (= res!2233491 (not (isEmpty!32766 (tail!10382 (tail!10382 s!2326)))))))

(declare-fun b!5263800 () Bool)

(assert (=> b!5263800 (= e!3274166 e!3274167)))

(declare-fun res!2233487 () Bool)

(assert (=> b!5263800 (=> res!2233487 e!3274167)))

(assert (=> b!5263800 (= res!2233487 call!373467)))

(declare-fun b!5263801 () Bool)

(declare-fun res!2233486 () Bool)

(assert (=> b!5263801 (=> (not res!2233486) (not e!3274171))))

(assert (=> b!5263801 (= res!2233486 (isEmpty!32766 (tail!10382 (tail!10382 s!2326))))))

(declare-fun b!5263794 () Bool)

(declare-fun res!2233493 () Bool)

(assert (=> b!5263794 (=> res!2233493 e!3274168)))

(assert (=> b!5263794 (= res!2233493 (not ((_ is ElementMatch!14881) (derivativeStep!4105 r!7292 (head!11285 s!2326)))))))

(assert (=> b!5263794 (= e!3274170 e!3274168)))

(declare-fun d!1694252 () Bool)

(assert (=> d!1694252 e!3274169))

(declare-fun c!911335 () Bool)

(assert (=> d!1694252 (= c!911335 ((_ is EmptyExpr!14881) (derivativeStep!4105 r!7292 (head!11285 s!2326))))))

(assert (=> d!1694252 (= lt!2155642 e!3274172)))

(declare-fun c!911336 () Bool)

(assert (=> d!1694252 (= c!911336 (isEmpty!32766 (tail!10382 s!2326)))))

(assert (=> d!1694252 (validRegex!6617 (derivativeStep!4105 r!7292 (head!11285 s!2326)))))

(assert (=> d!1694252 (= (matchR!7066 (derivativeStep!4105 r!7292 (head!11285 s!2326)) (tail!10382 s!2326)) lt!2155642)))

(assert (= (and d!1694252 c!911336) b!5263790))

(assert (= (and d!1694252 (not c!911336)) b!5263792))

(assert (= (and d!1694252 c!911335) b!5263793))

(assert (= (and d!1694252 (not c!911335)) b!5263796))

(assert (= (and b!5263796 c!911334) b!5263795))

(assert (= (and b!5263796 (not c!911334)) b!5263794))

(assert (= (and b!5263794 (not res!2233493)) b!5263789))

(assert (= (and b!5263789 res!2233490) b!5263797))

(assert (= (and b!5263797 res!2233488) b!5263801))

(assert (= (and b!5263801 res!2233486) b!5263788))

(assert (= (and b!5263789 (not res!2233492)) b!5263798))

(assert (= (and b!5263798 res!2233489) b!5263800))

(assert (= (and b!5263800 (not res!2233487)) b!5263799))

(assert (= (and b!5263799 (not res!2233491)) b!5263791))

(assert (= (or b!5263793 b!5263797 b!5263800) bm!373462))

(assert (=> b!5263790 m!6304072))

(declare-fun m!6304664 () Bool)

(assert (=> b!5263790 m!6304664))

(assert (=> bm!373462 m!6304066))

(assert (=> bm!373462 m!6304068))

(assert (=> b!5263801 m!6304066))

(declare-fun m!6304666 () Bool)

(assert (=> b!5263801 m!6304666))

(assert (=> b!5263801 m!6304666))

(declare-fun m!6304668 () Bool)

(assert (=> b!5263801 m!6304668))

(assert (=> b!5263788 m!6304066))

(declare-fun m!6304670 () Bool)

(assert (=> b!5263788 m!6304670))

(assert (=> d!1694252 m!6304066))

(assert (=> d!1694252 m!6304068))

(assert (=> d!1694252 m!6304072))

(declare-fun m!6304672 () Bool)

(assert (=> d!1694252 m!6304672))

(assert (=> b!5263791 m!6304066))

(assert (=> b!5263791 m!6304670))

(assert (=> b!5263792 m!6304066))

(assert (=> b!5263792 m!6304670))

(assert (=> b!5263792 m!6304072))

(assert (=> b!5263792 m!6304670))

(declare-fun m!6304674 () Bool)

(assert (=> b!5263792 m!6304674))

(assert (=> b!5263792 m!6304066))

(assert (=> b!5263792 m!6304666))

(assert (=> b!5263792 m!6304674))

(assert (=> b!5263792 m!6304666))

(declare-fun m!6304676 () Bool)

(assert (=> b!5263792 m!6304676))

(assert (=> b!5263799 m!6304066))

(assert (=> b!5263799 m!6304666))

(assert (=> b!5263799 m!6304666))

(assert (=> b!5263799 m!6304668))

(assert (=> b!5263168 d!1694252))

(declare-fun b!5263867 () Bool)

(declare-fun e!3274211 () Regex!14881)

(declare-fun call!373480 () Regex!14881)

(assert (=> b!5263867 (= e!3274211 (Concat!23726 call!373480 r!7292))))

(declare-fun b!5263868 () Bool)

(declare-fun e!3274210 () Regex!14881)

(declare-fun e!3274213 () Regex!14881)

(assert (=> b!5263868 (= e!3274210 e!3274213)))

(declare-fun c!911362 () Bool)

(assert (=> b!5263868 (= c!911362 ((_ is ElementMatch!14881) r!7292))))

(declare-fun b!5263869 () Bool)

(assert (=> b!5263869 (= e!3274213 (ite (= (head!11285 s!2326) (c!910993 r!7292)) EmptyExpr!14881 EmptyLang!14881))))

(declare-fun b!5263870 () Bool)

(assert (=> b!5263870 (= e!3274210 EmptyLang!14881)))

(declare-fun b!5263871 () Bool)

(declare-fun e!3274212 () Regex!14881)

(assert (=> b!5263871 (= e!3274212 e!3274211)))

(declare-fun c!911360 () Bool)

(assert (=> b!5263871 (= c!911360 ((_ is Star!14881) r!7292))))

(declare-fun b!5263872 () Bool)

(declare-fun c!911363 () Bool)

(assert (=> b!5263872 (= c!911363 (nullable!5050 (regOne!30274 r!7292)))))

(declare-fun e!3274209 () Regex!14881)

(assert (=> b!5263872 (= e!3274211 e!3274209)))

(declare-fun d!1694254 () Bool)

(declare-fun lt!2155650 () Regex!14881)

(assert (=> d!1694254 (validRegex!6617 lt!2155650)))

(assert (=> d!1694254 (= lt!2155650 e!3274210)))

(declare-fun c!911361 () Bool)

(assert (=> d!1694254 (= c!911361 (or ((_ is EmptyExpr!14881) r!7292) ((_ is EmptyLang!14881) r!7292)))))

(assert (=> d!1694254 (validRegex!6617 r!7292)))

(assert (=> d!1694254 (= (derivativeStep!4105 r!7292 (head!11285 s!2326)) lt!2155650)))

(declare-fun bm!373475 () Bool)

(declare-fun call!373482 () Regex!14881)

(assert (=> bm!373475 (= call!373480 call!373482)))

(declare-fun bm!373476 () Bool)

(declare-fun call!373481 () Regex!14881)

(assert (=> bm!373476 (= call!373481 call!373480)))

(declare-fun b!5263873 () Bool)

(declare-fun call!373483 () Regex!14881)

(assert (=> b!5263873 (= e!3274212 (Union!14881 call!373483 call!373482))))

(declare-fun bm!373477 () Bool)

(declare-fun c!911359 () Bool)

(assert (=> bm!373477 (= call!373482 (derivativeStep!4105 (ite c!911359 (regTwo!30275 r!7292) (ite c!911360 (reg!15210 r!7292) (ite c!911363 (regTwo!30274 r!7292) (regOne!30274 r!7292)))) (head!11285 s!2326)))))

(declare-fun b!5263874 () Bool)

(assert (=> b!5263874 (= c!911359 ((_ is Union!14881) r!7292))))

(assert (=> b!5263874 (= e!3274213 e!3274212)))

(declare-fun b!5263875 () Bool)

(assert (=> b!5263875 (= e!3274209 (Union!14881 (Concat!23726 call!373481 (regTwo!30274 r!7292)) EmptyLang!14881))))

(declare-fun b!5263876 () Bool)

(assert (=> b!5263876 (= e!3274209 (Union!14881 (Concat!23726 call!373483 (regTwo!30274 r!7292)) call!373481))))

(declare-fun bm!373478 () Bool)

(assert (=> bm!373478 (= call!373483 (derivativeStep!4105 (ite c!911359 (regOne!30275 r!7292) (regOne!30274 r!7292)) (head!11285 s!2326)))))

(assert (= (and d!1694254 c!911361) b!5263870))

(assert (= (and d!1694254 (not c!911361)) b!5263868))

(assert (= (and b!5263868 c!911362) b!5263869))

(assert (= (and b!5263868 (not c!911362)) b!5263874))

(assert (= (and b!5263874 c!911359) b!5263873))

(assert (= (and b!5263874 (not c!911359)) b!5263871))

(assert (= (and b!5263871 c!911360) b!5263867))

(assert (= (and b!5263871 (not c!911360)) b!5263872))

(assert (= (and b!5263872 c!911363) b!5263876))

(assert (= (and b!5263872 (not c!911363)) b!5263875))

(assert (= (or b!5263876 b!5263875) bm!373476))

(assert (= (or b!5263867 bm!373476) bm!373475))

(assert (= (or b!5263873 bm!373475) bm!373477))

(assert (= (or b!5263873 b!5263876) bm!373478))

(assert (=> b!5263872 m!6304180))

(declare-fun m!6304732 () Bool)

(assert (=> d!1694254 m!6304732))

(assert (=> d!1694254 m!6303702))

(assert (=> bm!373477 m!6304070))

(declare-fun m!6304734 () Bool)

(assert (=> bm!373477 m!6304734))

(assert (=> bm!373478 m!6304070))

(declare-fun m!6304736 () Bool)

(assert (=> bm!373478 m!6304736))

(assert (=> b!5263168 d!1694254))

(assert (=> b!5263168 d!1694098))

(assert (=> b!5263168 d!1694192))

(declare-fun d!1694268 () Bool)

(assert (=> d!1694268 true))

(assert (=> d!1694268 true))

(declare-fun res!2233519 () Bool)

(assert (=> d!1694268 (= (choose!39264 lambda!265340) res!2233519)))

(assert (=> d!1693934 d!1694268))

(declare-fun c!911368 () Bool)

(declare-fun b!5263881 () Bool)

(assert (=> b!5263881 (= c!911368 ((_ is Star!14881) (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343)))))))))))

(declare-fun e!3274219 () (InoxSet Context!8530))

(declare-fun e!3274218 () (InoxSet Context!8530))

(assert (=> b!5263881 (= e!3274219 e!3274218)))

(declare-fun b!5263882 () Bool)

(declare-fun c!911365 () Bool)

(declare-fun e!3274220 () Bool)

(assert (=> b!5263882 (= c!911365 e!3274220)))

(declare-fun res!2233520 () Bool)

(assert (=> b!5263882 (=> (not res!2233520) (not e!3274220))))

(assert (=> b!5263882 (= res!2233520 ((_ is Concat!23726) (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343)))))))))))

(declare-fun e!3274221 () (InoxSet Context!8530))

(declare-fun e!3274217 () (InoxSet Context!8530))

(assert (=> b!5263882 (= e!3274221 e!3274217)))

(declare-fun bm!373479 () Bool)

(declare-fun call!373484 () (InoxSet Context!8530))

(declare-fun call!373489 () (InoxSet Context!8530))

(assert (=> bm!373479 (= call!373484 call!373489)))

(declare-fun bm!373481 () Bool)

(declare-fun call!373487 () (InoxSet Context!8530))

(assert (=> bm!373481 (= call!373487 call!373484)))

(declare-fun call!373488 () List!60943)

(declare-fun bm!373482 () Bool)

(declare-fun call!373486 () (InoxSet Context!8530))

(declare-fun c!911366 () Bool)

(assert (=> bm!373482 (= call!373486 (derivationStepZipperDown!329 (ite c!911366 (regTwo!30275 (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343)))))))) (regOne!30274 (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343))))))))) (ite c!911366 (ite (or c!911190 c!911189) lt!2155536 (Context!8531 call!373350)) (Context!8531 call!373488)) (h!67266 s!2326)))))

(declare-fun b!5263883 () Bool)

(assert (=> b!5263883 (= e!3274220 (nullable!5050 (regOne!30274 (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343))))))))))))

(declare-fun b!5263884 () Bool)

(assert (=> b!5263884 (= e!3274217 ((_ map or) call!373486 call!373484))))

(declare-fun b!5263885 () Bool)

(declare-fun e!3274216 () (InoxSet Context!8530))

(assert (=> b!5263885 (= e!3274216 e!3274221)))

(assert (=> b!5263885 (= c!911366 ((_ is Union!14881) (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343)))))))))))

(declare-fun b!5263886 () Bool)

(assert (=> b!5263886 (= e!3274219 call!373487)))

(declare-fun c!911364 () Bool)

(declare-fun bm!373483 () Bool)

(declare-fun call!373485 () List!60943)

(assert (=> bm!373483 (= call!373489 (derivationStepZipperDown!329 (ite c!911366 (regOne!30275 (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343)))))))) (ite c!911365 (regTwo!30274 (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343)))))))) (ite c!911364 (regOne!30274 (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343)))))))) (reg!15210 (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343))))))))))) (ite (or c!911366 c!911365) (ite (or c!911190 c!911189) lt!2155536 (Context!8531 call!373350)) (Context!8531 call!373485)) (h!67266 s!2326)))))

(declare-fun bm!373480 () Bool)

(assert (=> bm!373480 (= call!373485 call!373488)))

(declare-fun d!1694270 () Bool)

(declare-fun c!911367 () Bool)

(assert (=> d!1694270 (= c!911367 (and ((_ is ElementMatch!14881) (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343)))))))) (= (c!910993 (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343)))))))) (h!67266 s!2326))))))

(assert (=> d!1694270 (= (derivationStepZipperDown!329 (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343))))))) (ite (or c!911190 c!911189) lt!2155536 (Context!8531 call!373350)) (h!67266 s!2326)) e!3274216)))

(declare-fun b!5263887 () Bool)

(assert (=> b!5263887 (= e!3274218 call!373487)))

(declare-fun bm!373484 () Bool)

(assert (=> bm!373484 (= call!373488 ($colon$colon!1334 (exprs!4765 (ite (or c!911190 c!911189) lt!2155536 (Context!8531 call!373350))) (ite (or c!911365 c!911364) (regTwo!30274 (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343)))))))) (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343))))))))))))

(declare-fun b!5263888 () Bool)

(assert (=> b!5263888 (= e!3274221 ((_ map or) call!373489 call!373486))))

(declare-fun b!5263889 () Bool)

(assert (=> b!5263889 (= e!3274218 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263890 () Bool)

(assert (=> b!5263890 (= e!3274217 e!3274219)))

(assert (=> b!5263890 (= c!911364 ((_ is Concat!23726) (ite c!911190 (regOne!30275 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911189 (regTwo!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (ite c!911188 (regOne!30274 (h!67267 (exprs!4765 (h!67268 zl!343)))) (reg!15210 (h!67267 (exprs!4765 (h!67268 zl!343)))))))))))

(declare-fun b!5263891 () Bool)

(assert (=> b!5263891 (= e!3274216 (store ((as const (Array Context!8530 Bool)) false) (ite (or c!911190 c!911189) lt!2155536 (Context!8531 call!373350)) true))))

(assert (= (and d!1694270 c!911367) b!5263891))

(assert (= (and d!1694270 (not c!911367)) b!5263885))

(assert (= (and b!5263885 c!911366) b!5263888))

(assert (= (and b!5263885 (not c!911366)) b!5263882))

(assert (= (and b!5263882 res!2233520) b!5263883))

(assert (= (and b!5263882 c!911365) b!5263884))

(assert (= (and b!5263882 (not c!911365)) b!5263890))

(assert (= (and b!5263890 c!911364) b!5263886))

(assert (= (and b!5263890 (not c!911364)) b!5263881))

(assert (= (and b!5263881 c!911368) b!5263887))

(assert (= (and b!5263881 (not c!911368)) b!5263889))

(assert (= (or b!5263886 b!5263887) bm!373480))

(assert (= (or b!5263886 b!5263887) bm!373481))

(assert (= (or b!5263884 bm!373480) bm!373484))

(assert (= (or b!5263884 bm!373481) bm!373479))

(assert (= (or b!5263888 b!5263884) bm!373482))

(assert (= (or b!5263888 bm!373479) bm!373483))

(declare-fun m!6304738 () Bool)

(assert (=> bm!373484 m!6304738))

(declare-fun m!6304740 () Bool)

(assert (=> b!5263891 m!6304740))

(declare-fun m!6304742 () Bool)

(assert (=> b!5263883 m!6304742))

(declare-fun m!6304744 () Bool)

(assert (=> bm!373482 m!6304744))

(declare-fun m!6304746 () Bool)

(assert (=> bm!373483 m!6304746))

(assert (=> bm!373348 d!1694270))

(declare-fun b!5263892 () Bool)

(declare-fun c!911373 () Bool)

(assert (=> b!5263892 (= c!911373 ((_ is Star!14881) (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))))))

(declare-fun e!3274225 () (InoxSet Context!8530))

(declare-fun e!3274224 () (InoxSet Context!8530))

(assert (=> b!5263892 (= e!3274225 e!3274224)))

(declare-fun b!5263893 () Bool)

(declare-fun c!911370 () Bool)

(declare-fun e!3274226 () Bool)

(assert (=> b!5263893 (= c!911370 e!3274226)))

(declare-fun res!2233521 () Bool)

(assert (=> b!5263893 (=> (not res!2233521) (not e!3274226))))

(assert (=> b!5263893 (= res!2233521 ((_ is Concat!23726) (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))))))

(declare-fun e!3274227 () (InoxSet Context!8530))

(declare-fun e!3274223 () (InoxSet Context!8530))

(assert (=> b!5263893 (= e!3274227 e!3274223)))

(declare-fun bm!373485 () Bool)

(declare-fun call!373490 () (InoxSet Context!8530))

(declare-fun call!373495 () (InoxSet Context!8530))

(assert (=> bm!373485 (= call!373490 call!373495)))

(declare-fun bm!373487 () Bool)

(declare-fun call!373493 () (InoxSet Context!8530))

(assert (=> bm!373487 (= call!373493 call!373490)))

(declare-fun c!911371 () Bool)

(declare-fun bm!373488 () Bool)

(declare-fun call!373492 () (InoxSet Context!8530))

(declare-fun call!373494 () List!60943)

(assert (=> bm!373488 (= call!373492 (derivationStepZipperDown!329 (ite c!911371 (regTwo!30275 (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))) (regOne!30274 (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292)))))) (ite c!911371 (ite c!911132 (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (Context!8531 call!373325)) (Context!8531 call!373494)) (h!67266 s!2326)))))

(declare-fun b!5263894 () Bool)

(assert (=> b!5263894 (= e!3274226 (nullable!5050 (regOne!30274 (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292)))))))))

(declare-fun b!5263895 () Bool)

(assert (=> b!5263895 (= e!3274223 ((_ map or) call!373492 call!373490))))

(declare-fun b!5263896 () Bool)

(declare-fun e!3274222 () (InoxSet Context!8530))

(assert (=> b!5263896 (= e!3274222 e!3274227)))

(assert (=> b!5263896 (= c!911371 ((_ is Union!14881) (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))))))

(declare-fun b!5263897 () Bool)

(assert (=> b!5263897 (= e!3274225 call!373493)))

(declare-fun call!373491 () List!60943)

(declare-fun c!911369 () Bool)

(declare-fun bm!373489 () Bool)

(assert (=> bm!373489 (= call!373495 (derivationStepZipperDown!329 (ite c!911371 (regOne!30275 (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))) (ite c!911370 (regTwo!30274 (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))) (ite c!911369 (regOne!30274 (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))) (reg!15210 (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292)))))))) (ite (or c!911371 c!911370) (ite c!911132 (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (Context!8531 call!373325)) (Context!8531 call!373491)) (h!67266 s!2326)))))

(declare-fun bm!373486 () Bool)

(assert (=> bm!373486 (= call!373491 call!373494)))

(declare-fun d!1694272 () Bool)

(declare-fun c!911372 () Bool)

(assert (=> d!1694272 (= c!911372 (and ((_ is ElementMatch!14881) (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))) (= (c!910993 (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))) (h!67266 s!2326))))))

(assert (=> d!1694272 (= (derivationStepZipperDown!329 (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292)))) (ite c!911132 (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (Context!8531 call!373325)) (h!67266 s!2326)) e!3274222)))

(declare-fun b!5263898 () Bool)

(assert (=> b!5263898 (= e!3274224 call!373493)))

(declare-fun bm!373490 () Bool)

(assert (=> bm!373490 (= call!373494 ($colon$colon!1334 (exprs!4765 (ite c!911132 (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (Context!8531 call!373325))) (ite (or c!911370 c!911369) (regTwo!30274 (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))) (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292)))))))))

(declare-fun b!5263899 () Bool)

(assert (=> b!5263899 (= e!3274227 ((_ map or) call!373495 call!373492))))

(declare-fun b!5263900 () Bool)

(assert (=> b!5263900 (= e!3274224 ((as const (Array Context!8530 Bool)) false))))

(declare-fun b!5263901 () Bool)

(assert (=> b!5263901 (= e!3274223 e!3274225)))

(assert (=> b!5263901 (= c!911369 ((_ is Concat!23726) (ite c!911132 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))))))

(declare-fun b!5263902 () Bool)

(assert (=> b!5263902 (= e!3274222 (store ((as const (Array Context!8530 Bool)) false) (ite c!911132 (Context!8531 (Cons!60819 (regTwo!30274 (regOne!30274 r!7292)) (t!374130 (exprs!4765 (h!67268 zl!343))))) (Context!8531 call!373325)) true))))

(assert (= (and d!1694272 c!911372) b!5263902))

(assert (= (and d!1694272 (not c!911372)) b!5263896))

(assert (= (and b!5263896 c!911371) b!5263899))

(assert (= (and b!5263896 (not c!911371)) b!5263893))

(assert (= (and b!5263893 res!2233521) b!5263894))

(assert (= (and b!5263893 c!911370) b!5263895))

(assert (= (and b!5263893 (not c!911370)) b!5263901))

(assert (= (and b!5263901 c!911369) b!5263897))

(assert (= (and b!5263901 (not c!911369)) b!5263892))

(assert (= (and b!5263892 c!911373) b!5263898))

(assert (= (and b!5263892 (not c!911373)) b!5263900))

(assert (= (or b!5263897 b!5263898) bm!373486))

(assert (= (or b!5263897 b!5263898) bm!373487))

(assert (= (or b!5263895 bm!373486) bm!373490))

(assert (= (or b!5263895 bm!373487) bm!373485))

(assert (= (or b!5263899 b!5263895) bm!373488))

(assert (= (or b!5263899 bm!373485) bm!373489))

(declare-fun m!6304748 () Bool)

(assert (=> bm!373490 m!6304748))

(declare-fun m!6304750 () Bool)

(assert (=> b!5263902 m!6304750))

(declare-fun m!6304752 () Bool)

(assert (=> b!5263894 m!6304752))

(declare-fun m!6304754 () Bool)

(assert (=> bm!373488 m!6304754))

(declare-fun m!6304756 () Bool)

(assert (=> bm!373489 m!6304756))

(assert (=> bm!373319 d!1694272))

(declare-fun bs!1220193 () Bool)

(declare-fun d!1694274 () Bool)

(assert (= bs!1220193 (and d!1694274 d!1693988)))

(declare-fun lambda!265428 () Int)

(assert (=> bs!1220193 (= lambda!265428 lambda!265396)))

(declare-fun bs!1220194 () Bool)

(assert (= bs!1220194 (and d!1694274 d!1694176)))

(assert (=> bs!1220194 (= lambda!265428 lambda!265413)))

(declare-fun bs!1220195 () Bool)

(assert (= bs!1220195 (and d!1694274 d!1693950)))

(assert (=> bs!1220195 (= lambda!265428 lambda!265383)))

(declare-fun bs!1220197 () Bool)

(assert (= bs!1220197 (and d!1694274 d!1694006)))

(assert (=> bs!1220197 (= lambda!265428 lambda!265397)))

(declare-fun bs!1220198 () Bool)

(assert (= bs!1220198 (and d!1694274 d!1693986)))

(assert (=> bs!1220198 (= lambda!265428 lambda!265393)))

(declare-fun bs!1220199 () Bool)

(assert (= bs!1220199 (and d!1694274 d!1694240)))

(assert (=> bs!1220199 (= lambda!265428 lambda!265423)))

(declare-fun bs!1220200 () Bool)

(assert (= bs!1220200 (and d!1694274 d!1693910)))

(assert (=> bs!1220200 (= lambda!265428 lambda!265362)))

(declare-fun bs!1220201 () Bool)

(assert (= bs!1220201 (and d!1694274 d!1694052)))

(assert (=> bs!1220201 (= lambda!265428 lambda!265405)))

(assert (=> d!1694274 (= (inv!80449 (h!67268 (t!374131 zl!343))) (forall!14293 (exprs!4765 (h!67268 (t!374131 zl!343))) lambda!265428))))

(declare-fun bs!1220202 () Bool)

(assert (= bs!1220202 d!1694274))

(declare-fun m!6304760 () Bool)

(assert (=> bs!1220202 m!6304760))

(assert (=> b!5263310 d!1694274))

(assert (=> b!5262781 d!1693946))

(declare-fun d!1694278 () Bool)

(assert (=> d!1694278 (= (isEmpty!32763 (tail!10383 (unfocusZipperList!323 zl!343))) ((_ is Nil!60819) (tail!10383 (unfocusZipperList!323 zl!343))))))

(assert (=> b!5263202 d!1694278))

(declare-fun d!1694280 () Bool)

(assert (=> d!1694280 (= (tail!10383 (unfocusZipperList!323 zl!343)) (t!374130 (unfocusZipperList!323 zl!343)))))

(assert (=> b!5263202 d!1694280))

(declare-fun bm!373497 () Bool)

(declare-fun call!373503 () Bool)

(declare-fun c!911379 () Bool)

(assert (=> bm!373497 (= call!373503 (nullable!5050 (ite c!911379 (regOne!30275 (regOne!30274 (regOne!30274 r!7292))) (regOne!30274 (regOne!30274 (regOne!30274 r!7292))))))))

(declare-fun b!5263914 () Bool)

(declare-fun e!3274239 () Bool)

(declare-fun e!3274234 () Bool)

(assert (=> b!5263914 (= e!3274239 e!3274234)))

(declare-fun res!2233526 () Bool)

(assert (=> b!5263914 (= res!2233526 call!373503)))

(assert (=> b!5263914 (=> res!2233526 e!3274234)))

(declare-fun b!5263915 () Bool)

(declare-fun e!3274236 () Bool)

(assert (=> b!5263915 (= e!3274239 e!3274236)))

(declare-fun res!2233527 () Bool)

(assert (=> b!5263915 (= res!2233527 call!373503)))

(assert (=> b!5263915 (=> (not res!2233527) (not e!3274236))))

(declare-fun bm!373498 () Bool)

(declare-fun call!373502 () Bool)

(assert (=> bm!373498 (= call!373502 (nullable!5050 (ite c!911379 (regTwo!30275 (regOne!30274 (regOne!30274 r!7292))) (regTwo!30274 (regOne!30274 (regOne!30274 r!7292))))))))

(declare-fun b!5263916 () Bool)

(assert (=> b!5263916 (= e!3274234 call!373502)))

(declare-fun b!5263917 () Bool)

(declare-fun e!3274237 () Bool)

(declare-fun e!3274235 () Bool)

(assert (=> b!5263917 (= e!3274237 e!3274235)))

(declare-fun res!2233523 () Bool)

(assert (=> b!5263917 (=> res!2233523 e!3274235)))

(assert (=> b!5263917 (= res!2233523 ((_ is Star!14881) (regOne!30274 (regOne!30274 r!7292))))))

(declare-fun d!1694282 () Bool)

(declare-fun res!2233524 () Bool)

(declare-fun e!3274238 () Bool)

(assert (=> d!1694282 (=> res!2233524 e!3274238)))

(assert (=> d!1694282 (= res!2233524 ((_ is EmptyExpr!14881) (regOne!30274 (regOne!30274 r!7292))))))

(assert (=> d!1694282 (= (nullableFct!1436 (regOne!30274 (regOne!30274 r!7292))) e!3274238)))

(declare-fun b!5263918 () Bool)

(assert (=> b!5263918 (= e!3274236 call!373502)))

(declare-fun b!5263919 () Bool)

(assert (=> b!5263919 (= e!3274238 e!3274237)))

(declare-fun res!2233525 () Bool)

(assert (=> b!5263919 (=> (not res!2233525) (not e!3274237))))

(assert (=> b!5263919 (= res!2233525 (and (not ((_ is EmptyLang!14881) (regOne!30274 (regOne!30274 r!7292)))) (not ((_ is ElementMatch!14881) (regOne!30274 (regOne!30274 r!7292))))))))

(declare-fun b!5263920 () Bool)

(assert (=> b!5263920 (= e!3274235 e!3274239)))

(assert (=> b!5263920 (= c!911379 ((_ is Union!14881) (regOne!30274 (regOne!30274 r!7292))))))

(assert (= (and d!1694282 (not res!2233524)) b!5263919))

(assert (= (and b!5263919 res!2233525) b!5263917))

(assert (= (and b!5263917 (not res!2233523)) b!5263920))

(assert (= (and b!5263920 c!911379) b!5263914))

(assert (= (and b!5263920 (not c!911379)) b!5263915))

(assert (= (and b!5263914 (not res!2233526)) b!5263916))

(assert (= (and b!5263915 res!2233527) b!5263918))

(assert (= (or b!5263916 b!5263918) bm!373498))

(assert (= (or b!5263914 b!5263915) bm!373497))

(declare-fun m!6304772 () Bool)

(assert (=> bm!373497 m!6304772))

(declare-fun m!6304774 () Bool)

(assert (=> bm!373498 m!6304774))

(assert (=> d!1694012 d!1694282))

(assert (=> d!1693938 d!1693924))

(declare-fun d!1694288 () Bool)

(assert (=> d!1694288 (= (Exists!2062 lambda!265372) (choose!39264 lambda!265372))))

(declare-fun bs!1220203 () Bool)

(assert (= bs!1220203 d!1694288))

(declare-fun m!6304776 () Bool)

(assert (=> bs!1220203 m!6304776))

(assert (=> d!1693938 d!1694288))

(assert (=> d!1693938 d!1694110))

(assert (=> d!1693938 d!1693944))

(declare-fun bs!1220210 () Bool)

(declare-fun d!1694290 () Bool)

(assert (= bs!1220210 (and d!1694290 d!1693940)))

(declare-fun lambda!265432 () Int)

(assert (=> bs!1220210 (not (= lambda!265432 lambda!265380))))

(declare-fun bs!1220211 () Bool)

(assert (= bs!1220211 (and d!1694290 d!1693938)))

(assert (=> bs!1220211 (= lambda!265432 lambda!265372)))

(declare-fun bs!1220212 () Bool)

(assert (= bs!1220212 (and d!1694290 b!5263382)))

(assert (=> bs!1220212 (not (= lambda!265432 lambda!265407))))

(declare-fun bs!1220213 () Bool)

(assert (= bs!1220213 (and d!1694290 b!5263134)))

(assert (=> bs!1220213 (not (= lambda!265432 lambda!265389))))

(assert (=> bs!1220210 (= lambda!265432 lambda!265379)))

(declare-fun bs!1220214 () Bool)

(assert (= bs!1220214 (and d!1694290 b!5262535)))

(assert (=> bs!1220214 (not (= lambda!265432 lambda!265340))))

(declare-fun bs!1220215 () Bool)

(assert (= bs!1220215 (and d!1694290 b!5263381)))

(assert (=> bs!1220215 (not (= lambda!265432 lambda!265406))))

(declare-fun bs!1220216 () Bool)

(assert (= bs!1220216 (and d!1694290 b!5263751)))

(assert (=> bs!1220216 (not (= lambda!265432 lambda!265422))))

(declare-fun bs!1220217 () Bool)

(assert (= bs!1220217 (and d!1694290 b!5263135)))

(assert (=> bs!1220217 (not (= lambda!265432 lambda!265390))))

(assert (=> bs!1220214 (= lambda!265432 lambda!265339)))

(declare-fun bs!1220218 () Bool)

(assert (= bs!1220218 (and d!1694290 b!5263750)))

(assert (=> bs!1220218 (not (= lambda!265432 lambda!265421))))

(assert (=> d!1694290 true))

(assert (=> d!1694290 true))

(assert (=> d!1694290 true))

(assert (=> d!1694290 (= (isDefined!11695 (findConcatSeparation!1406 (regOne!30274 r!7292) (regTwo!30274 r!7292) Nil!60818 s!2326 s!2326)) (Exists!2062 lambda!265432))))

(assert (=> d!1694290 true))

(declare-fun _$89!1448 () Unit!153042)

(assert (=> d!1694290 (= (choose!39265 (regOne!30274 r!7292) (regTwo!30274 r!7292) s!2326) _$89!1448)))

(declare-fun bs!1220219 () Bool)

(assert (= bs!1220219 d!1694290))

(assert (=> bs!1220219 m!6303710))

(assert (=> bs!1220219 m!6303710))

(assert (=> bs!1220219 m!6303712))

(declare-fun m!6304808 () Bool)

(assert (=> bs!1220219 m!6304808))

(assert (=> d!1693938 d!1694290))

(declare-fun b!5263945 () Bool)

(declare-fun res!2233546 () Bool)

(declare-fun e!3274258 () Bool)

(assert (=> b!5263945 (=> (not res!2233546) (not e!3274258))))

(declare-fun call!373505 () Bool)

(assert (=> b!5263945 (= res!2233546 call!373505)))

(declare-fun e!3274255 () Bool)

(assert (=> b!5263945 (= e!3274255 e!3274258)))

(declare-fun bm!373500 () Bool)

(declare-fun c!911384 () Bool)

(assert (=> bm!373500 (= call!373505 (validRegex!6617 (ite c!911384 (regOne!30275 lt!2155610) (regOne!30274 lt!2155610))))))

(declare-fun b!5263946 () Bool)

(declare-fun e!3274257 () Bool)

(declare-fun call!373507 () Bool)

(assert (=> b!5263946 (= e!3274257 call!373507)))

(declare-fun b!5263947 () Bool)

(declare-fun e!3274256 () Bool)

(assert (=> b!5263947 (= e!3274256 e!3274255)))

(assert (=> b!5263947 (= c!911384 ((_ is Union!14881) lt!2155610))))

(declare-fun bm!373501 () Bool)

(declare-fun call!373506 () Bool)

(assert (=> bm!373501 (= call!373506 call!373507)))

(declare-fun b!5263948 () Bool)

(assert (=> b!5263948 (= e!3274256 e!3274257)))

(declare-fun res!2233544 () Bool)

(assert (=> b!5263948 (= res!2233544 (not (nullable!5050 (reg!15210 lt!2155610))))))

(assert (=> b!5263948 (=> (not res!2233544) (not e!3274257))))

(declare-fun c!911385 () Bool)

(declare-fun bm!373502 () Bool)

(assert (=> bm!373502 (= call!373507 (validRegex!6617 (ite c!911385 (reg!15210 lt!2155610) (ite c!911384 (regTwo!30275 lt!2155610) (regTwo!30274 lt!2155610)))))))

(declare-fun b!5263950 () Bool)

(declare-fun e!3274259 () Bool)

(assert (=> b!5263950 (= e!3274259 e!3274256)))

(assert (=> b!5263950 (= c!911385 ((_ is Star!14881) lt!2155610))))

(declare-fun b!5263951 () Bool)

(declare-fun res!2233545 () Bool)

(declare-fun e!3274254 () Bool)

(assert (=> b!5263951 (=> res!2233545 e!3274254)))

(assert (=> b!5263951 (= res!2233545 (not ((_ is Concat!23726) lt!2155610)))))

(assert (=> b!5263951 (= e!3274255 e!3274254)))

(declare-fun b!5263949 () Bool)

(declare-fun e!3274260 () Bool)

(assert (=> b!5263949 (= e!3274254 e!3274260)))

(declare-fun res!2233547 () Bool)

(assert (=> b!5263949 (=> (not res!2233547) (not e!3274260))))

(assert (=> b!5263949 (= res!2233547 call!373505)))

(declare-fun d!1694308 () Bool)

(declare-fun res!2233548 () Bool)

(assert (=> d!1694308 (=> res!2233548 e!3274259)))

(assert (=> d!1694308 (= res!2233548 ((_ is ElementMatch!14881) lt!2155610))))

(assert (=> d!1694308 (= (validRegex!6617 lt!2155610) e!3274259)))

(declare-fun b!5263952 () Bool)

(assert (=> b!5263952 (= e!3274260 call!373506)))

(declare-fun b!5263953 () Bool)

(assert (=> b!5263953 (= e!3274258 call!373506)))

(assert (= (and d!1694308 (not res!2233548)) b!5263950))

(assert (= (and b!5263950 c!911385) b!5263948))

(assert (= (and b!5263950 (not c!911385)) b!5263947))

(assert (= (and b!5263948 res!2233544) b!5263946))

(assert (= (and b!5263947 c!911384) b!5263945))

(assert (= (and b!5263947 (not c!911384)) b!5263951))

(assert (= (and b!5263945 res!2233546) b!5263953))

(assert (= (and b!5263951 (not res!2233545)) b!5263949))

(assert (= (and b!5263949 res!2233547) b!5263952))

(assert (= (or b!5263953 b!5263952) bm!373501))

(assert (= (or b!5263945 b!5263949) bm!373500))

(assert (= (or b!5263946 bm!373501) bm!373502))

(declare-fun m!6304810 () Bool)

(assert (=> bm!373500 m!6304810))

(declare-fun m!6304812 () Bool)

(assert (=> b!5263948 m!6304812))

(declare-fun m!6304814 () Bool)

(assert (=> bm!373502 m!6304814))

(assert (=> d!1693984 d!1694308))

(assert (=> d!1693984 d!1693986))

(assert (=> d!1693984 d!1693988))

(declare-fun b!5263955 () Bool)

(declare-fun res!2233552 () Bool)

(declare-fun e!3274266 () Bool)

(assert (=> b!5263955 (=> (not res!2233552) (not e!3274266))))

(declare-fun call!373508 () Bool)

(assert (=> b!5263955 (= res!2233552 call!373508)))

(declare-fun e!3274263 () Bool)

(assert (=> b!5263955 (= e!3274263 e!3274266)))

(declare-fun bm!373503 () Bool)

(declare-fun c!911386 () Bool)

(assert (=> bm!373503 (= call!373508 (validRegex!6617 (ite c!911386 (regOne!30275 lt!2155571) (regOne!30274 lt!2155571))))))

(declare-fun b!5263956 () Bool)

(declare-fun e!3274265 () Bool)

(declare-fun call!373510 () Bool)

(assert (=> b!5263956 (= e!3274265 call!373510)))

(declare-fun b!5263957 () Bool)

(declare-fun e!3274264 () Bool)

(assert (=> b!5263957 (= e!3274264 e!3274263)))

(assert (=> b!5263957 (= c!911386 ((_ is Union!14881) lt!2155571))))

(declare-fun bm!373504 () Bool)

(declare-fun call!373509 () Bool)

(assert (=> bm!373504 (= call!373509 call!373510)))

(declare-fun b!5263958 () Bool)

(assert (=> b!5263958 (= e!3274264 e!3274265)))

(declare-fun res!2233550 () Bool)

(assert (=> b!5263958 (= res!2233550 (not (nullable!5050 (reg!15210 lt!2155571))))))

(assert (=> b!5263958 (=> (not res!2233550) (not e!3274265))))

(declare-fun c!911387 () Bool)

(declare-fun bm!373505 () Bool)

(assert (=> bm!373505 (= call!373510 (validRegex!6617 (ite c!911387 (reg!15210 lt!2155571) (ite c!911386 (regTwo!30275 lt!2155571) (regTwo!30274 lt!2155571)))))))

(declare-fun b!5263960 () Bool)

(declare-fun e!3274267 () Bool)

(assert (=> b!5263960 (= e!3274267 e!3274264)))

(assert (=> b!5263960 (= c!911387 ((_ is Star!14881) lt!2155571))))

(declare-fun b!5263961 () Bool)

(declare-fun res!2233551 () Bool)

(declare-fun e!3274262 () Bool)

(assert (=> b!5263961 (=> res!2233551 e!3274262)))

(assert (=> b!5263961 (= res!2233551 (not ((_ is Concat!23726) lt!2155571)))))

(assert (=> b!5263961 (= e!3274263 e!3274262)))

(declare-fun b!5263959 () Bool)

(declare-fun e!3274268 () Bool)

(assert (=> b!5263959 (= e!3274262 e!3274268)))

(declare-fun res!2233553 () Bool)

(assert (=> b!5263959 (=> (not res!2233553) (not e!3274268))))

(assert (=> b!5263959 (= res!2233553 call!373508)))

(declare-fun d!1694312 () Bool)

(declare-fun res!2233554 () Bool)

(assert (=> d!1694312 (=> res!2233554 e!3274267)))

(assert (=> d!1694312 (= res!2233554 ((_ is ElementMatch!14881) lt!2155571))))

(assert (=> d!1694312 (= (validRegex!6617 lt!2155571) e!3274267)))

(declare-fun b!5263962 () Bool)

(assert (=> b!5263962 (= e!3274268 call!373509)))

(declare-fun b!5263963 () Bool)

(assert (=> b!5263963 (= e!3274266 call!373509)))

(assert (= (and d!1694312 (not res!2233554)) b!5263960))

(assert (= (and b!5263960 c!911387) b!5263958))

(assert (= (and b!5263960 (not c!911387)) b!5263957))

(assert (= (and b!5263958 res!2233550) b!5263956))

(assert (= (and b!5263957 c!911386) b!5263955))

(assert (= (and b!5263957 (not c!911386)) b!5263961))

(assert (= (and b!5263955 res!2233552) b!5263963))

(assert (= (and b!5263961 (not res!2233551)) b!5263959))

(assert (= (and b!5263959 res!2233553) b!5263962))

(assert (= (or b!5263963 b!5263962) bm!373504))

(assert (= (or b!5263955 b!5263959) bm!373503))

(assert (= (or b!5263956 bm!373504) bm!373505))

(declare-fun m!6304816 () Bool)

(assert (=> bm!373503 m!6304816))

(declare-fun m!6304818 () Bool)

(assert (=> b!5263958 m!6304818))

(declare-fun m!6304820 () Bool)

(assert (=> bm!373505 m!6304820))

(assert (=> d!1693910 d!1694312))

(declare-fun d!1694314 () Bool)

(declare-fun res!2233555 () Bool)

(declare-fun e!3274269 () Bool)

(assert (=> d!1694314 (=> res!2233555 e!3274269)))

(assert (=> d!1694314 (= res!2233555 ((_ is Nil!60819) (exprs!4765 (h!67268 zl!343))))))

(assert (=> d!1694314 (= (forall!14293 (exprs!4765 (h!67268 zl!343)) lambda!265362) e!3274269)))

(declare-fun b!5263964 () Bool)

(declare-fun e!3274270 () Bool)

(assert (=> b!5263964 (= e!3274269 e!3274270)))

(declare-fun res!2233556 () Bool)

(assert (=> b!5263964 (=> (not res!2233556) (not e!3274270))))

(assert (=> b!5263964 (= res!2233556 (dynLambda!24033 lambda!265362 (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun b!5263965 () Bool)

(assert (=> b!5263965 (= e!3274270 (forall!14293 (t!374130 (exprs!4765 (h!67268 zl!343))) lambda!265362))))

(assert (= (and d!1694314 (not res!2233555)) b!5263964))

(assert (= (and b!5263964 res!2233556) b!5263965))

(declare-fun b_lambda!203089 () Bool)

(assert (=> (not b_lambda!203089) (not b!5263964)))

(declare-fun m!6304822 () Bool)

(assert (=> b!5263964 m!6304822))

(declare-fun m!6304824 () Bool)

(assert (=> b!5263965 m!6304824))

(assert (=> d!1693910 d!1694314))

(declare-fun d!1694316 () Bool)

(assert (=> d!1694316 (= (Exists!2062 lambda!265379) (choose!39264 lambda!265379))))

(declare-fun bs!1220220 () Bool)

(assert (= bs!1220220 d!1694316))

(declare-fun m!6304826 () Bool)

(assert (=> bs!1220220 m!6304826))

(assert (=> d!1693940 d!1694316))

(declare-fun d!1694318 () Bool)

(assert (=> d!1694318 (= (Exists!2062 lambda!265380) (choose!39264 lambda!265380))))

(declare-fun bs!1220221 () Bool)

(assert (= bs!1220221 d!1694318))

(declare-fun m!6304828 () Bool)

(assert (=> bs!1220221 m!6304828))

(assert (=> d!1693940 d!1694318))

(declare-fun bs!1220232 () Bool)

(declare-fun d!1694320 () Bool)

(assert (= bs!1220232 (and d!1694320 d!1693940)))

(declare-fun lambda!265438 () Int)

(assert (=> bs!1220232 (not (= lambda!265438 lambda!265380))))

(declare-fun bs!1220233 () Bool)

(assert (= bs!1220233 (and d!1694320 d!1693938)))

(assert (=> bs!1220233 (= lambda!265438 lambda!265372)))

(declare-fun bs!1220234 () Bool)

(assert (= bs!1220234 (and d!1694320 b!5263382)))

(assert (=> bs!1220234 (not (= lambda!265438 lambda!265407))))

(declare-fun bs!1220235 () Bool)

(assert (= bs!1220235 (and d!1694320 b!5263134)))

(assert (=> bs!1220235 (not (= lambda!265438 lambda!265389))))

(declare-fun bs!1220236 () Bool)

(assert (= bs!1220236 (and d!1694320 d!1694290)))

(assert (=> bs!1220236 (= lambda!265438 lambda!265432)))

(assert (=> bs!1220232 (= lambda!265438 lambda!265379)))

(declare-fun bs!1220237 () Bool)

(assert (= bs!1220237 (and d!1694320 b!5262535)))

(assert (=> bs!1220237 (not (= lambda!265438 lambda!265340))))

(declare-fun bs!1220238 () Bool)

(assert (= bs!1220238 (and d!1694320 b!5263381)))

(assert (=> bs!1220238 (not (= lambda!265438 lambda!265406))))

(declare-fun bs!1220239 () Bool)

(assert (= bs!1220239 (and d!1694320 b!5263751)))

(assert (=> bs!1220239 (not (= lambda!265438 lambda!265422))))

(declare-fun bs!1220240 () Bool)

(assert (= bs!1220240 (and d!1694320 b!5263135)))

(assert (=> bs!1220240 (not (= lambda!265438 lambda!265390))))

(assert (=> bs!1220237 (= lambda!265438 lambda!265339)))

(declare-fun bs!1220241 () Bool)

(assert (= bs!1220241 (and d!1694320 b!5263750)))

(assert (=> bs!1220241 (not (= lambda!265438 lambda!265421))))

(assert (=> d!1694320 true))

(assert (=> d!1694320 true))

(assert (=> d!1694320 true))

(declare-fun lambda!265439 () Int)

(assert (=> bs!1220232 (= lambda!265439 lambda!265380)))

(declare-fun bs!1220242 () Bool)

(assert (= bs!1220242 d!1694320))

(assert (=> bs!1220242 (not (= lambda!265439 lambda!265438))))

(assert (=> bs!1220233 (not (= lambda!265439 lambda!265372))))

(assert (=> bs!1220234 (= (and (= (regOne!30274 r!7292) (regOne!30274 (regTwo!30275 r!7292))) (= (regTwo!30274 r!7292) (regTwo!30274 (regTwo!30275 r!7292)))) (= lambda!265439 lambda!265407))))

(assert (=> bs!1220235 (not (= lambda!265439 lambda!265389))))

(assert (=> bs!1220236 (not (= lambda!265439 lambda!265432))))

(assert (=> bs!1220232 (not (= lambda!265439 lambda!265379))))

(assert (=> bs!1220237 (= lambda!265439 lambda!265340)))

(assert (=> bs!1220238 (not (= lambda!265439 lambda!265406))))

(assert (=> bs!1220239 (= (and (= (regOne!30274 r!7292) (regOne!30274 (regOne!30275 r!7292))) (= (regTwo!30274 r!7292) (regTwo!30274 (regOne!30275 r!7292)))) (= lambda!265439 lambda!265422))))

(assert (=> bs!1220240 (= lambda!265439 lambda!265390)))

(assert (=> bs!1220237 (not (= lambda!265439 lambda!265339))))

(assert (=> bs!1220241 (not (= lambda!265439 lambda!265421))))

(assert (=> d!1694320 true))

(assert (=> d!1694320 true))

(assert (=> d!1694320 true))

(assert (=> d!1694320 (= (Exists!2062 lambda!265438) (Exists!2062 lambda!265439))))

(assert (=> d!1694320 true))

(declare-fun _$90!1069 () Unit!153042)

(assert (=> d!1694320 (= (choose!39266 (regOne!30274 r!7292) (regTwo!30274 r!7292) s!2326) _$90!1069)))

(declare-fun m!6304858 () Bool)

(assert (=> bs!1220242 m!6304858))

(declare-fun m!6304860 () Bool)

(assert (=> bs!1220242 m!6304860))

(assert (=> d!1693940 d!1694320))

(assert (=> d!1693940 d!1694110))

(declare-fun bs!1220243 () Bool)

(declare-fun d!1694336 () Bool)

(assert (= bs!1220243 (and d!1694336 d!1693988)))

(declare-fun lambda!265442 () Int)

(assert (=> bs!1220243 (= lambda!265442 lambda!265396)))

(declare-fun bs!1220244 () Bool)

(assert (= bs!1220244 (and d!1694336 d!1694176)))

(assert (=> bs!1220244 (= lambda!265442 lambda!265413)))

(declare-fun bs!1220245 () Bool)

(assert (= bs!1220245 (and d!1694336 d!1693950)))

(assert (=> bs!1220245 (= lambda!265442 lambda!265383)))

(declare-fun bs!1220246 () Bool)

(assert (= bs!1220246 (and d!1694336 d!1694006)))

(assert (=> bs!1220246 (= lambda!265442 lambda!265397)))

(declare-fun bs!1220247 () Bool)

(assert (= bs!1220247 (and d!1694336 d!1694274)))

(assert (=> bs!1220247 (= lambda!265442 lambda!265428)))

(declare-fun bs!1220248 () Bool)

(assert (= bs!1220248 (and d!1694336 d!1693986)))

(assert (=> bs!1220248 (= lambda!265442 lambda!265393)))

(declare-fun bs!1220249 () Bool)

(assert (= bs!1220249 (and d!1694336 d!1694240)))

(assert (=> bs!1220249 (= lambda!265442 lambda!265423)))

(declare-fun bs!1220250 () Bool)

(assert (= bs!1220250 (and d!1694336 d!1693910)))

(assert (=> bs!1220250 (= lambda!265442 lambda!265362)))

(declare-fun bs!1220251 () Bool)

(assert (= bs!1220251 (and d!1694336 d!1694052)))

(assert (=> bs!1220251 (= lambda!265442 lambda!265405)))

(declare-fun b!5264009 () Bool)

(declare-fun e!3274306 () Bool)

(assert (=> b!5264009 (= e!3274306 (isEmpty!32763 (t!374130 (t!374130 (unfocusZipperList!323 zl!343)))))))

(declare-fun b!5264010 () Bool)

(declare-fun e!3274303 () Regex!14881)

(assert (=> b!5264010 (= e!3274303 EmptyLang!14881)))

(declare-fun e!3274305 () Bool)

(assert (=> d!1694336 e!3274305))

(declare-fun res!2233587 () Bool)

(assert (=> d!1694336 (=> (not res!2233587) (not e!3274305))))

(declare-fun lt!2155653 () Regex!14881)

(assert (=> d!1694336 (= res!2233587 (validRegex!6617 lt!2155653))))

(declare-fun e!3274302 () Regex!14881)

(assert (=> d!1694336 (= lt!2155653 e!3274302)))

(declare-fun c!911397 () Bool)

(assert (=> d!1694336 (= c!911397 e!3274306)))

(declare-fun res!2233586 () Bool)

(assert (=> d!1694336 (=> (not res!2233586) (not e!3274306))))

(assert (=> d!1694336 (= res!2233586 ((_ is Cons!60819) (t!374130 (unfocusZipperList!323 zl!343))))))

(assert (=> d!1694336 (forall!14293 (t!374130 (unfocusZipperList!323 zl!343)) lambda!265442)))

(assert (=> d!1694336 (= (generalisedUnion!810 (t!374130 (unfocusZipperList!323 zl!343))) lt!2155653)))

(declare-fun b!5264011 () Bool)

(declare-fun e!3274301 () Bool)

(assert (=> b!5264011 (= e!3274301 (isEmptyLang!827 lt!2155653))))

(declare-fun b!5264012 () Bool)

(assert (=> b!5264012 (= e!3274302 (h!67267 (t!374130 (unfocusZipperList!323 zl!343))))))

(declare-fun b!5264013 () Bool)

(declare-fun e!3274304 () Bool)

(assert (=> b!5264013 (= e!3274301 e!3274304)))

(declare-fun c!911395 () Bool)

(assert (=> b!5264013 (= c!911395 (isEmpty!32763 (tail!10383 (t!374130 (unfocusZipperList!323 zl!343)))))))

(declare-fun b!5264014 () Bool)

(assert (=> b!5264014 (= e!3274305 e!3274301)))

(declare-fun c!911398 () Bool)

(assert (=> b!5264014 (= c!911398 (isEmpty!32763 (t!374130 (unfocusZipperList!323 zl!343))))))

(declare-fun b!5264015 () Bool)

(assert (=> b!5264015 (= e!3274303 (Union!14881 (h!67267 (t!374130 (unfocusZipperList!323 zl!343))) (generalisedUnion!810 (t!374130 (t!374130 (unfocusZipperList!323 zl!343))))))))

(declare-fun b!5264016 () Bool)

(assert (=> b!5264016 (= e!3274304 (isUnion!259 lt!2155653))))

(declare-fun b!5264017 () Bool)

(assert (=> b!5264017 (= e!3274302 e!3274303)))

(declare-fun c!911396 () Bool)

(assert (=> b!5264017 (= c!911396 ((_ is Cons!60819) (t!374130 (unfocusZipperList!323 zl!343))))))

(declare-fun b!5264018 () Bool)

(assert (=> b!5264018 (= e!3274304 (= lt!2155653 (head!11286 (t!374130 (unfocusZipperList!323 zl!343)))))))

(assert (= (and d!1694336 res!2233586) b!5264009))

(assert (= (and d!1694336 c!911397) b!5264012))

(assert (= (and d!1694336 (not c!911397)) b!5264017))

(assert (= (and b!5264017 c!911396) b!5264015))

(assert (= (and b!5264017 (not c!911396)) b!5264010))

(assert (= (and d!1694336 res!2233587) b!5264014))

(assert (= (and b!5264014 c!911398) b!5264011))

(assert (= (and b!5264014 (not c!911398)) b!5264013))

(assert (= (and b!5264013 c!911395) b!5264018))

(assert (= (and b!5264013 (not c!911395)) b!5264016))

(declare-fun m!6304862 () Bool)

(assert (=> b!5264009 m!6304862))

(declare-fun m!6304864 () Bool)

(assert (=> b!5264015 m!6304864))

(declare-fun m!6304866 () Bool)

(assert (=> b!5264011 m!6304866))

(declare-fun m!6304868 () Bool)

(assert (=> d!1694336 m!6304868))

(declare-fun m!6304870 () Bool)

(assert (=> d!1694336 m!6304870))

(assert (=> b!5264014 m!6304080))

(declare-fun m!6304872 () Bool)

(assert (=> b!5264018 m!6304872))

(declare-fun m!6304874 () Bool)

(assert (=> b!5264016 m!6304874))

(declare-fun m!6304876 () Bool)

(assert (=> b!5264013 m!6304876))

(assert (=> b!5264013 m!6304876))

(declare-fun m!6304878 () Bool)

(assert (=> b!5264013 m!6304878))

(assert (=> b!5263204 d!1694336))

(declare-fun d!1694338 () Bool)

(assert (=> d!1694338 (= (isConcat!342 lt!2155571) ((_ is Concat!23726) lt!2155571))))

(assert (=> b!5262783 d!1694338))

(declare-fun d!1694340 () Bool)

(assert (=> d!1694340 (= (isEmpty!32763 (tail!10383 (exprs!4765 (h!67268 zl!343)))) ((_ is Nil!60819) (tail!10383 (exprs!4765 (h!67268 zl!343)))))))

(assert (=> b!5262785 d!1694340))

(declare-fun d!1694342 () Bool)

(assert (=> d!1694342 (= (tail!10383 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343))))))

(assert (=> b!5262785 d!1694342))

(declare-fun d!1694344 () Bool)

(assert (=> d!1694344 (= (isEmpty!32768 (findConcatSeparation!1406 (regOne!30274 r!7292) (regTwo!30274 r!7292) Nil!60818 s!2326 s!2326)) (not ((_ is Some!14991) (findConcatSeparation!1406 (regOne!30274 r!7292) (regTwo!30274 r!7292) Nil!60818 s!2326 s!2326))))))

(assert (=> d!1693944 d!1694344))

(declare-fun d!1694346 () Bool)

(assert (=> d!1694346 (= (nullable!5050 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))) (nullableFct!1436 (h!67267 (exprs!4765 (Context!8531 (Cons!60819 (h!67267 (exprs!4765 (h!67268 zl!343))) (t!374130 (exprs!4765 (h!67268 zl!343)))))))))))

(declare-fun bs!1220258 () Bool)

(assert (= bs!1220258 d!1694346))

(declare-fun m!6304880 () Bool)

(assert (=> bs!1220258 m!6304880))

(assert (=> b!5263224 d!1694346))

(assert (=> b!5263164 d!1694098))

(declare-fun b!5264023 () Bool)

(declare-fun e!3274309 () Bool)

(declare-fun tp!1471360 () Bool)

(assert (=> b!5264023 (= e!3274309 (and tp_is_empty!39015 tp!1471360))))

(assert (=> b!5263268 (= tp!1471286 e!3274309)))

(assert (= (and b!5263268 ((_ is Cons!60818) (t!374129 (t!374129 s!2326)))) b!5264023))

(declare-fun b!5264025 () Bool)

(declare-fun e!3274310 () Bool)

(declare-fun tp!1471361 () Bool)

(declare-fun tp!1471364 () Bool)

(assert (=> b!5264025 (= e!3274310 (and tp!1471361 tp!1471364))))

(declare-fun b!5264024 () Bool)

(assert (=> b!5264024 (= e!3274310 tp_is_empty!39015)))

(declare-fun b!5264027 () Bool)

(declare-fun tp!1471362 () Bool)

(declare-fun tp!1471363 () Bool)

(assert (=> b!5264027 (= e!3274310 (and tp!1471362 tp!1471363))))

(assert (=> b!5263292 (= tp!1471312 e!3274310)))

(declare-fun b!5264026 () Bool)

(declare-fun tp!1471365 () Bool)

(assert (=> b!5264026 (= e!3274310 tp!1471365)))

(assert (= (and b!5263292 ((_ is ElementMatch!14881) (regOne!30274 (regOne!30275 r!7292)))) b!5264024))

(assert (= (and b!5263292 ((_ is Concat!23726) (regOne!30274 (regOne!30275 r!7292)))) b!5264025))

(assert (= (and b!5263292 ((_ is Star!14881) (regOne!30274 (regOne!30275 r!7292)))) b!5264026))

(assert (= (and b!5263292 ((_ is Union!14881) (regOne!30274 (regOne!30275 r!7292)))) b!5264027))

(declare-fun b!5264029 () Bool)

(declare-fun e!3274311 () Bool)

(declare-fun tp!1471366 () Bool)

(declare-fun tp!1471369 () Bool)

(assert (=> b!5264029 (= e!3274311 (and tp!1471366 tp!1471369))))

(declare-fun b!5264028 () Bool)

(assert (=> b!5264028 (= e!3274311 tp_is_empty!39015)))

(declare-fun b!5264031 () Bool)

(declare-fun tp!1471367 () Bool)

(declare-fun tp!1471368 () Bool)

(assert (=> b!5264031 (= e!3274311 (and tp!1471367 tp!1471368))))

(assert (=> b!5263292 (= tp!1471315 e!3274311)))

(declare-fun b!5264030 () Bool)

(declare-fun tp!1471370 () Bool)

(assert (=> b!5264030 (= e!3274311 tp!1471370)))

(assert (= (and b!5263292 ((_ is ElementMatch!14881) (regTwo!30274 (regOne!30275 r!7292)))) b!5264028))

(assert (= (and b!5263292 ((_ is Concat!23726) (regTwo!30274 (regOne!30275 r!7292)))) b!5264029))

(assert (= (and b!5263292 ((_ is Star!14881) (regTwo!30274 (regOne!30275 r!7292)))) b!5264030))

(assert (= (and b!5263292 ((_ is Union!14881) (regTwo!30274 (regOne!30275 r!7292)))) b!5264031))

(declare-fun b!5264033 () Bool)

(declare-fun e!3274312 () Bool)

(declare-fun tp!1471371 () Bool)

(declare-fun tp!1471374 () Bool)

(assert (=> b!5264033 (= e!3274312 (and tp!1471371 tp!1471374))))

(declare-fun b!5264032 () Bool)

(assert (=> b!5264032 (= e!3274312 tp_is_empty!39015)))

(declare-fun b!5264035 () Bool)

(declare-fun tp!1471372 () Bool)

(declare-fun tp!1471373 () Bool)

(assert (=> b!5264035 (= e!3274312 (and tp!1471372 tp!1471373))))

(assert (=> b!5263288 (= tp!1471307 e!3274312)))

(declare-fun b!5264034 () Bool)

(declare-fun tp!1471375 () Bool)

(assert (=> b!5264034 (= e!3274312 tp!1471375)))

(assert (= (and b!5263288 ((_ is ElementMatch!14881) (regOne!30274 (regTwo!30274 r!7292)))) b!5264032))

(assert (= (and b!5263288 ((_ is Concat!23726) (regOne!30274 (regTwo!30274 r!7292)))) b!5264033))

(assert (= (and b!5263288 ((_ is Star!14881) (regOne!30274 (regTwo!30274 r!7292)))) b!5264034))

(assert (= (and b!5263288 ((_ is Union!14881) (regOne!30274 (regTwo!30274 r!7292)))) b!5264035))

(declare-fun b!5264037 () Bool)

(declare-fun e!3274313 () Bool)

(declare-fun tp!1471376 () Bool)

(declare-fun tp!1471379 () Bool)

(assert (=> b!5264037 (= e!3274313 (and tp!1471376 tp!1471379))))

(declare-fun b!5264036 () Bool)

(assert (=> b!5264036 (= e!3274313 tp_is_empty!39015)))

(declare-fun b!5264039 () Bool)

(declare-fun tp!1471377 () Bool)

(declare-fun tp!1471378 () Bool)

(assert (=> b!5264039 (= e!3274313 (and tp!1471377 tp!1471378))))

(assert (=> b!5263288 (= tp!1471310 e!3274313)))

(declare-fun b!5264038 () Bool)

(declare-fun tp!1471380 () Bool)

(assert (=> b!5264038 (= e!3274313 tp!1471380)))

(assert (= (and b!5263288 ((_ is ElementMatch!14881) (regTwo!30274 (regTwo!30274 r!7292)))) b!5264036))

(assert (= (and b!5263288 ((_ is Concat!23726) (regTwo!30274 (regTwo!30274 r!7292)))) b!5264037))

(assert (= (and b!5263288 ((_ is Star!14881) (regTwo!30274 (regTwo!30274 r!7292)))) b!5264038))

(assert (= (and b!5263288 ((_ is Union!14881) (regTwo!30274 (regTwo!30274 r!7292)))) b!5264039))

(declare-fun b!5264041 () Bool)

(declare-fun e!3274314 () Bool)

(declare-fun tp!1471381 () Bool)

(declare-fun tp!1471384 () Bool)

(assert (=> b!5264041 (= e!3274314 (and tp!1471381 tp!1471384))))

(declare-fun b!5264040 () Bool)

(assert (=> b!5264040 (= e!3274314 tp_is_empty!39015)))

(declare-fun b!5264043 () Bool)

(declare-fun tp!1471382 () Bool)

(declare-fun tp!1471383 () Bool)

(assert (=> b!5264043 (= e!3274314 (and tp!1471382 tp!1471383))))

(assert (=> b!5263289 (= tp!1471311 e!3274314)))

(declare-fun b!5264042 () Bool)

(declare-fun tp!1471385 () Bool)

(assert (=> b!5264042 (= e!3274314 tp!1471385)))

(assert (= (and b!5263289 ((_ is ElementMatch!14881) (reg!15210 (regTwo!30274 r!7292)))) b!5264040))

(assert (= (and b!5263289 ((_ is Concat!23726) (reg!15210 (regTwo!30274 r!7292)))) b!5264041))

(assert (= (and b!5263289 ((_ is Star!14881) (reg!15210 (regTwo!30274 r!7292)))) b!5264042))

(assert (= (and b!5263289 ((_ is Union!14881) (reg!15210 (regTwo!30274 r!7292)))) b!5264043))

(declare-fun b!5264045 () Bool)

(declare-fun e!3274315 () Bool)

(declare-fun tp!1471386 () Bool)

(declare-fun tp!1471389 () Bool)

(assert (=> b!5264045 (= e!3274315 (and tp!1471386 tp!1471389))))

(declare-fun b!5264044 () Bool)

(assert (=> b!5264044 (= e!3274315 tp_is_empty!39015)))

(declare-fun b!5264047 () Bool)

(declare-fun tp!1471387 () Bool)

(declare-fun tp!1471388 () Bool)

(assert (=> b!5264047 (= e!3274315 (and tp!1471387 tp!1471388))))

(assert (=> b!5263298 (= tp!1471318 e!3274315)))

(declare-fun b!5264046 () Bool)

(declare-fun tp!1471390 () Bool)

(assert (=> b!5264046 (= e!3274315 tp!1471390)))

(assert (= (and b!5263298 ((_ is ElementMatch!14881) (regOne!30275 (regTwo!30275 r!7292)))) b!5264044))

(assert (= (and b!5263298 ((_ is Concat!23726) (regOne!30275 (regTwo!30275 r!7292)))) b!5264045))

(assert (= (and b!5263298 ((_ is Star!14881) (regOne!30275 (regTwo!30275 r!7292)))) b!5264046))

(assert (= (and b!5263298 ((_ is Union!14881) (regOne!30275 (regTwo!30275 r!7292)))) b!5264047))

(declare-fun b!5264049 () Bool)

(declare-fun e!3274316 () Bool)

(declare-fun tp!1471391 () Bool)

(declare-fun tp!1471394 () Bool)

(assert (=> b!5264049 (= e!3274316 (and tp!1471391 tp!1471394))))

(declare-fun b!5264048 () Bool)

(assert (=> b!5264048 (= e!3274316 tp_is_empty!39015)))

(declare-fun b!5264051 () Bool)

(declare-fun tp!1471392 () Bool)

(declare-fun tp!1471393 () Bool)

(assert (=> b!5264051 (= e!3274316 (and tp!1471392 tp!1471393))))

(assert (=> b!5263298 (= tp!1471319 e!3274316)))

(declare-fun b!5264050 () Bool)

(declare-fun tp!1471395 () Bool)

(assert (=> b!5264050 (= e!3274316 tp!1471395)))

(assert (= (and b!5263298 ((_ is ElementMatch!14881) (regTwo!30275 (regTwo!30275 r!7292)))) b!5264048))

(assert (= (and b!5263298 ((_ is Concat!23726) (regTwo!30275 (regTwo!30275 r!7292)))) b!5264049))

(assert (= (and b!5263298 ((_ is Star!14881) (regTwo!30275 (regTwo!30275 r!7292)))) b!5264050))

(assert (= (and b!5263298 ((_ is Union!14881) (regTwo!30275 (regTwo!30275 r!7292)))) b!5264051))

(declare-fun b!5264053 () Bool)

(declare-fun e!3274317 () Bool)

(declare-fun tp!1471396 () Bool)

(declare-fun tp!1471399 () Bool)

(assert (=> b!5264053 (= e!3274317 (and tp!1471396 tp!1471399))))

(declare-fun b!5264052 () Bool)

(assert (=> b!5264052 (= e!3274317 tp_is_empty!39015)))

(declare-fun b!5264055 () Bool)

(declare-fun tp!1471397 () Bool)

(declare-fun tp!1471398 () Bool)

(assert (=> b!5264055 (= e!3274317 (and tp!1471397 tp!1471398))))

(assert (=> b!5263280 (= tp!1471297 e!3274317)))

(declare-fun b!5264054 () Bool)

(declare-fun tp!1471400 () Bool)

(assert (=> b!5264054 (= e!3274317 tp!1471400)))

(assert (= (and b!5263280 ((_ is ElementMatch!14881) (regOne!30274 (reg!15210 r!7292)))) b!5264052))

(assert (= (and b!5263280 ((_ is Concat!23726) (regOne!30274 (reg!15210 r!7292)))) b!5264053))

(assert (= (and b!5263280 ((_ is Star!14881) (regOne!30274 (reg!15210 r!7292)))) b!5264054))

(assert (= (and b!5263280 ((_ is Union!14881) (regOne!30274 (reg!15210 r!7292)))) b!5264055))

(declare-fun b!5264057 () Bool)

(declare-fun e!3274318 () Bool)

(declare-fun tp!1471401 () Bool)

(declare-fun tp!1471404 () Bool)

(assert (=> b!5264057 (= e!3274318 (and tp!1471401 tp!1471404))))

(declare-fun b!5264056 () Bool)

(assert (=> b!5264056 (= e!3274318 tp_is_empty!39015)))

(declare-fun b!5264059 () Bool)

(declare-fun tp!1471402 () Bool)

(declare-fun tp!1471403 () Bool)

(assert (=> b!5264059 (= e!3274318 (and tp!1471402 tp!1471403))))

(assert (=> b!5263280 (= tp!1471300 e!3274318)))

(declare-fun b!5264058 () Bool)

(declare-fun tp!1471405 () Bool)

(assert (=> b!5264058 (= e!3274318 tp!1471405)))

(assert (= (and b!5263280 ((_ is ElementMatch!14881) (regTwo!30274 (reg!15210 r!7292)))) b!5264056))

(assert (= (and b!5263280 ((_ is Concat!23726) (regTwo!30274 (reg!15210 r!7292)))) b!5264057))

(assert (= (and b!5263280 ((_ is Star!14881) (regTwo!30274 (reg!15210 r!7292)))) b!5264058))

(assert (= (and b!5263280 ((_ is Union!14881) (regTwo!30274 (reg!15210 r!7292)))) b!5264059))

(declare-fun b!5264061 () Bool)

(declare-fun e!3274319 () Bool)

(declare-fun tp!1471406 () Bool)

(declare-fun tp!1471409 () Bool)

(assert (=> b!5264061 (= e!3274319 (and tp!1471406 tp!1471409))))

(declare-fun b!5264060 () Bool)

(assert (=> b!5264060 (= e!3274319 tp_is_empty!39015)))

(declare-fun b!5264063 () Bool)

(declare-fun tp!1471407 () Bool)

(declare-fun tp!1471408 () Bool)

(assert (=> b!5264063 (= e!3274319 (and tp!1471407 tp!1471408))))

(assert (=> b!5263281 (= tp!1471301 e!3274319)))

(declare-fun b!5264062 () Bool)

(declare-fun tp!1471410 () Bool)

(assert (=> b!5264062 (= e!3274319 tp!1471410)))

(assert (= (and b!5263281 ((_ is ElementMatch!14881) (reg!15210 (reg!15210 r!7292)))) b!5264060))

(assert (= (and b!5263281 ((_ is Concat!23726) (reg!15210 (reg!15210 r!7292)))) b!5264061))

(assert (= (and b!5263281 ((_ is Star!14881) (reg!15210 (reg!15210 r!7292)))) b!5264062))

(assert (= (and b!5263281 ((_ is Union!14881) (reg!15210 (reg!15210 r!7292)))) b!5264063))

(declare-fun b!5264065 () Bool)

(declare-fun e!3274320 () Bool)

(declare-fun tp!1471411 () Bool)

(declare-fun tp!1471414 () Bool)

(assert (=> b!5264065 (= e!3274320 (and tp!1471411 tp!1471414))))

(declare-fun b!5264064 () Bool)

(assert (=> b!5264064 (= e!3274320 tp_is_empty!39015)))

(declare-fun b!5264067 () Bool)

(declare-fun tp!1471412 () Bool)

(declare-fun tp!1471413 () Bool)

(assert (=> b!5264067 (= e!3274320 (and tp!1471412 tp!1471413))))

(assert (=> b!5263290 (= tp!1471308 e!3274320)))

(declare-fun b!5264066 () Bool)

(declare-fun tp!1471415 () Bool)

(assert (=> b!5264066 (= e!3274320 tp!1471415)))

(assert (= (and b!5263290 ((_ is ElementMatch!14881) (regOne!30275 (regTwo!30274 r!7292)))) b!5264064))

(assert (= (and b!5263290 ((_ is Concat!23726) (regOne!30275 (regTwo!30274 r!7292)))) b!5264065))

(assert (= (and b!5263290 ((_ is Star!14881) (regOne!30275 (regTwo!30274 r!7292)))) b!5264066))

(assert (= (and b!5263290 ((_ is Union!14881) (regOne!30275 (regTwo!30274 r!7292)))) b!5264067))

(declare-fun b!5264069 () Bool)

(declare-fun e!3274321 () Bool)

(declare-fun tp!1471416 () Bool)

(declare-fun tp!1471419 () Bool)

(assert (=> b!5264069 (= e!3274321 (and tp!1471416 tp!1471419))))

(declare-fun b!5264068 () Bool)

(assert (=> b!5264068 (= e!3274321 tp_is_empty!39015)))

(declare-fun b!5264071 () Bool)

(declare-fun tp!1471417 () Bool)

(declare-fun tp!1471418 () Bool)

(assert (=> b!5264071 (= e!3274321 (and tp!1471417 tp!1471418))))

(assert (=> b!5263290 (= tp!1471309 e!3274321)))

(declare-fun b!5264070 () Bool)

(declare-fun tp!1471420 () Bool)

(assert (=> b!5264070 (= e!3274321 tp!1471420)))

(assert (= (and b!5263290 ((_ is ElementMatch!14881) (regTwo!30275 (regTwo!30274 r!7292)))) b!5264068))

(assert (= (and b!5263290 ((_ is Concat!23726) (regTwo!30275 (regTwo!30274 r!7292)))) b!5264069))

(assert (= (and b!5263290 ((_ is Star!14881) (regTwo!30275 (regTwo!30274 r!7292)))) b!5264070))

(assert (= (and b!5263290 ((_ is Union!14881) (regTwo!30275 (regTwo!30274 r!7292)))) b!5264071))

(declare-fun b!5264073 () Bool)

(declare-fun e!3274322 () Bool)

(declare-fun tp!1471421 () Bool)

(declare-fun tp!1471424 () Bool)

(assert (=> b!5264073 (= e!3274322 (and tp!1471421 tp!1471424))))

(declare-fun b!5264072 () Bool)

(assert (=> b!5264072 (= e!3274322 tp_is_empty!39015)))

(declare-fun b!5264075 () Bool)

(declare-fun tp!1471422 () Bool)

(declare-fun tp!1471423 () Bool)

(assert (=> b!5264075 (= e!3274322 (and tp!1471422 tp!1471423))))

(assert (=> b!5263317 (= tp!1471340 e!3274322)))

(declare-fun b!5264074 () Bool)

(declare-fun tp!1471425 () Bool)

(assert (=> b!5264074 (= e!3274322 tp!1471425)))

(assert (= (and b!5263317 ((_ is ElementMatch!14881) (h!67267 (exprs!4765 setElem!33651)))) b!5264072))

(assert (= (and b!5263317 ((_ is Concat!23726) (h!67267 (exprs!4765 setElem!33651)))) b!5264073))

(assert (= (and b!5263317 ((_ is Star!14881) (h!67267 (exprs!4765 setElem!33651)))) b!5264074))

(assert (= (and b!5263317 ((_ is Union!14881) (h!67267 (exprs!4765 setElem!33651)))) b!5264075))

(declare-fun b!5264076 () Bool)

(declare-fun e!3274323 () Bool)

(declare-fun tp!1471426 () Bool)

(declare-fun tp!1471427 () Bool)

(assert (=> b!5264076 (= e!3274323 (and tp!1471426 tp!1471427))))

(assert (=> b!5263317 (= tp!1471341 e!3274323)))

(assert (= (and b!5263317 ((_ is Cons!60819) (t!374130 (exprs!4765 setElem!33651)))) b!5264076))

(declare-fun b!5264080 () Bool)

(declare-fun e!3274330 () Bool)

(declare-fun tp!1471428 () Bool)

(declare-fun tp!1471431 () Bool)

(assert (=> b!5264080 (= e!3274330 (and tp!1471428 tp!1471431))))

(declare-fun b!5264079 () Bool)

(assert (=> b!5264079 (= e!3274330 tp_is_empty!39015)))

(declare-fun b!5264083 () Bool)

(declare-fun tp!1471429 () Bool)

(declare-fun tp!1471430 () Bool)

(assert (=> b!5264083 (= e!3274330 (and tp!1471429 tp!1471430))))

(assert (=> b!5263282 (= tp!1471298 e!3274330)))

(declare-fun b!5264082 () Bool)

(declare-fun tp!1471432 () Bool)

(assert (=> b!5264082 (= e!3274330 tp!1471432)))

(assert (= (and b!5263282 ((_ is ElementMatch!14881) (regOne!30275 (reg!15210 r!7292)))) b!5264079))

(assert (= (and b!5263282 ((_ is Concat!23726) (regOne!30275 (reg!15210 r!7292)))) b!5264080))

(assert (= (and b!5263282 ((_ is Star!14881) (regOne!30275 (reg!15210 r!7292)))) b!5264082))

(assert (= (and b!5263282 ((_ is Union!14881) (regOne!30275 (reg!15210 r!7292)))) b!5264083))

(declare-fun b!5264091 () Bool)

(declare-fun e!3274332 () Bool)

(declare-fun tp!1471433 () Bool)

(declare-fun tp!1471436 () Bool)

(assert (=> b!5264091 (= e!3274332 (and tp!1471433 tp!1471436))))

(declare-fun b!5264090 () Bool)

(assert (=> b!5264090 (= e!3274332 tp_is_empty!39015)))

(declare-fun b!5264093 () Bool)

(declare-fun tp!1471434 () Bool)

(declare-fun tp!1471435 () Bool)

(assert (=> b!5264093 (= e!3274332 (and tp!1471434 tp!1471435))))

(assert (=> b!5263282 (= tp!1471299 e!3274332)))

(declare-fun b!5264092 () Bool)

(declare-fun tp!1471437 () Bool)

(assert (=> b!5264092 (= e!3274332 tp!1471437)))

(assert (= (and b!5263282 ((_ is ElementMatch!14881) (regTwo!30275 (reg!15210 r!7292)))) b!5264090))

(assert (= (and b!5263282 ((_ is Concat!23726) (regTwo!30275 (reg!15210 r!7292)))) b!5264091))

(assert (= (and b!5263282 ((_ is Star!14881) (regTwo!30275 (reg!15210 r!7292)))) b!5264092))

(assert (= (and b!5263282 ((_ is Union!14881) (regTwo!30275 (reg!15210 r!7292)))) b!5264093))

(declare-fun b!5264094 () Bool)

(declare-fun e!3274333 () Bool)

(declare-fun tp!1471438 () Bool)

(declare-fun tp!1471439 () Bool)

(assert (=> b!5264094 (= e!3274333 (and tp!1471438 tp!1471439))))

(assert (=> b!5263303 (= tp!1471326 e!3274333)))

(assert (= (and b!5263303 ((_ is Cons!60819) (exprs!4765 setElem!33657))) b!5264094))

(declare-fun b!5264096 () Bool)

(declare-fun e!3274334 () Bool)

(declare-fun tp!1471440 () Bool)

(declare-fun tp!1471443 () Bool)

(assert (=> b!5264096 (= e!3274334 (and tp!1471440 tp!1471443))))

(declare-fun b!5264095 () Bool)

(assert (=> b!5264095 (= e!3274334 tp_is_empty!39015)))

(declare-fun b!5264098 () Bool)

(declare-fun tp!1471441 () Bool)

(declare-fun tp!1471442 () Bool)

(assert (=> b!5264098 (= e!3274334 (and tp!1471441 tp!1471442))))

(assert (=> b!5263316 (= tp!1471338 e!3274334)))

(declare-fun b!5264097 () Bool)

(declare-fun tp!1471444 () Bool)

(assert (=> b!5264097 (= e!3274334 tp!1471444)))

(assert (= (and b!5263316 ((_ is ElementMatch!14881) (h!67267 (exprs!4765 (h!67268 zl!343))))) b!5264095))

(assert (= (and b!5263316 ((_ is Concat!23726) (h!67267 (exprs!4765 (h!67268 zl!343))))) b!5264096))

(assert (= (and b!5263316 ((_ is Star!14881) (h!67267 (exprs!4765 (h!67268 zl!343))))) b!5264097))

(assert (= (and b!5263316 ((_ is Union!14881) (h!67267 (exprs!4765 (h!67268 zl!343))))) b!5264098))

(declare-fun b!5264099 () Bool)

(declare-fun e!3274335 () Bool)

(declare-fun tp!1471445 () Bool)

(declare-fun tp!1471446 () Bool)

(assert (=> b!5264099 (= e!3274335 (and tp!1471445 tp!1471446))))

(assert (=> b!5263316 (= tp!1471339 e!3274335)))

(assert (= (and b!5263316 ((_ is Cons!60819) (t!374130 (exprs!4765 (h!67268 zl!343))))) b!5264099))

(declare-fun b!5264101 () Bool)

(declare-fun e!3274336 () Bool)

(declare-fun tp!1471447 () Bool)

(declare-fun tp!1471450 () Bool)

(assert (=> b!5264101 (= e!3274336 (and tp!1471447 tp!1471450))))

(declare-fun b!5264100 () Bool)

(assert (=> b!5264100 (= e!3274336 tp_is_empty!39015)))

(declare-fun b!5264103 () Bool)

(declare-fun tp!1471448 () Bool)

(declare-fun tp!1471449 () Bool)

(assert (=> b!5264103 (= e!3274336 (and tp!1471448 tp!1471449))))

(assert (=> b!5263296 (= tp!1471317 e!3274336)))

(declare-fun b!5264102 () Bool)

(declare-fun tp!1471451 () Bool)

(assert (=> b!5264102 (= e!3274336 tp!1471451)))

(assert (= (and b!5263296 ((_ is ElementMatch!14881) (regOne!30274 (regTwo!30275 r!7292)))) b!5264100))

(assert (= (and b!5263296 ((_ is Concat!23726) (regOne!30274 (regTwo!30275 r!7292)))) b!5264101))

(assert (= (and b!5263296 ((_ is Star!14881) (regOne!30274 (regTwo!30275 r!7292)))) b!5264102))

(assert (= (and b!5263296 ((_ is Union!14881) (regOne!30274 (regTwo!30275 r!7292)))) b!5264103))

(declare-fun b!5264105 () Bool)

(declare-fun e!3274337 () Bool)

(declare-fun tp!1471452 () Bool)

(declare-fun tp!1471455 () Bool)

(assert (=> b!5264105 (= e!3274337 (and tp!1471452 tp!1471455))))

(declare-fun b!5264104 () Bool)

(assert (=> b!5264104 (= e!3274337 tp_is_empty!39015)))

(declare-fun b!5264107 () Bool)

(declare-fun tp!1471453 () Bool)

(declare-fun tp!1471454 () Bool)

(assert (=> b!5264107 (= e!3274337 (and tp!1471453 tp!1471454))))

(assert (=> b!5263296 (= tp!1471320 e!3274337)))

(declare-fun b!5264106 () Bool)

(declare-fun tp!1471456 () Bool)

(assert (=> b!5264106 (= e!3274337 tp!1471456)))

(assert (= (and b!5263296 ((_ is ElementMatch!14881) (regTwo!30274 (regTwo!30275 r!7292)))) b!5264104))

(assert (= (and b!5263296 ((_ is Concat!23726) (regTwo!30274 (regTwo!30275 r!7292)))) b!5264105))

(assert (= (and b!5263296 ((_ is Star!14881) (regTwo!30274 (regTwo!30275 r!7292)))) b!5264106))

(assert (= (and b!5263296 ((_ is Union!14881) (regTwo!30274 (regTwo!30275 r!7292)))) b!5264107))

(declare-fun b!5264109 () Bool)

(declare-fun e!3274339 () Bool)

(declare-fun tp!1471457 () Bool)

(assert (=> b!5264109 (= e!3274339 tp!1471457)))

(declare-fun e!3274338 () Bool)

(declare-fun b!5264108 () Bool)

(declare-fun tp!1471458 () Bool)

(assert (=> b!5264108 (= e!3274338 (and (inv!80449 (h!67268 (t!374131 (t!374131 zl!343)))) e!3274339 tp!1471458))))

(assert (=> b!5263310 (= tp!1471333 e!3274338)))

(assert (= b!5264108 b!5264109))

(assert (= (and b!5263310 ((_ is Cons!60820) (t!374131 (t!374131 zl!343)))) b!5264108))

(declare-fun m!6304892 () Bool)

(assert (=> b!5264108 m!6304892))

(declare-fun b!5264111 () Bool)

(declare-fun e!3274340 () Bool)

(declare-fun tp!1471459 () Bool)

(declare-fun tp!1471462 () Bool)

(assert (=> b!5264111 (= e!3274340 (and tp!1471459 tp!1471462))))

(declare-fun b!5264110 () Bool)

(assert (=> b!5264110 (= e!3274340 tp_is_empty!39015)))

(declare-fun b!5264113 () Bool)

(declare-fun tp!1471460 () Bool)

(declare-fun tp!1471461 () Bool)

(assert (=> b!5264113 (= e!3274340 (and tp!1471460 tp!1471461))))

(assert (=> b!5263297 (= tp!1471321 e!3274340)))

(declare-fun b!5264112 () Bool)

(declare-fun tp!1471463 () Bool)

(assert (=> b!5264112 (= e!3274340 tp!1471463)))

(assert (= (and b!5263297 ((_ is ElementMatch!14881) (reg!15210 (regTwo!30275 r!7292)))) b!5264110))

(assert (= (and b!5263297 ((_ is Concat!23726) (reg!15210 (regTwo!30275 r!7292)))) b!5264111))

(assert (= (and b!5263297 ((_ is Star!14881) (reg!15210 (regTwo!30275 r!7292)))) b!5264112))

(assert (= (and b!5263297 ((_ is Union!14881) (reg!15210 (regTwo!30275 r!7292)))) b!5264113))

(declare-fun b!5264114 () Bool)

(declare-fun e!3274341 () Bool)

(declare-fun tp!1471464 () Bool)

(declare-fun tp!1471465 () Bool)

(assert (=> b!5264114 (= e!3274341 (and tp!1471464 tp!1471465))))

(assert (=> b!5263311 (= tp!1471332 e!3274341)))

(assert (= (and b!5263311 ((_ is Cons!60819) (exprs!4765 (h!67268 (t!374131 zl!343))))) b!5264114))

(declare-fun b!5264116 () Bool)

(declare-fun e!3274342 () Bool)

(declare-fun tp!1471466 () Bool)

(declare-fun tp!1471469 () Bool)

(assert (=> b!5264116 (= e!3274342 (and tp!1471466 tp!1471469))))

(declare-fun b!5264115 () Bool)

(assert (=> b!5264115 (= e!3274342 tp_is_empty!39015)))

(declare-fun b!5264118 () Bool)

(declare-fun tp!1471467 () Bool)

(declare-fun tp!1471468 () Bool)

(assert (=> b!5264118 (= e!3274342 (and tp!1471467 tp!1471468))))

(assert (=> b!5263293 (= tp!1471316 e!3274342)))

(declare-fun b!5264117 () Bool)

(declare-fun tp!1471470 () Bool)

(assert (=> b!5264117 (= e!3274342 tp!1471470)))

(assert (= (and b!5263293 ((_ is ElementMatch!14881) (reg!15210 (regOne!30275 r!7292)))) b!5264115))

(assert (= (and b!5263293 ((_ is Concat!23726) (reg!15210 (regOne!30275 r!7292)))) b!5264116))

(assert (= (and b!5263293 ((_ is Star!14881) (reg!15210 (regOne!30275 r!7292)))) b!5264117))

(assert (= (and b!5263293 ((_ is Union!14881) (reg!15210 (regOne!30275 r!7292)))) b!5264118))

(declare-fun b!5264120 () Bool)

(declare-fun e!3274343 () Bool)

(declare-fun tp!1471471 () Bool)

(declare-fun tp!1471474 () Bool)

(assert (=> b!5264120 (= e!3274343 (and tp!1471471 tp!1471474))))

(declare-fun b!5264119 () Bool)

(assert (=> b!5264119 (= e!3274343 tp_is_empty!39015)))

(declare-fun b!5264122 () Bool)

(declare-fun tp!1471472 () Bool)

(declare-fun tp!1471473 () Bool)

(assert (=> b!5264122 (= e!3274343 (and tp!1471472 tp!1471473))))

(assert (=> b!5263284 (= tp!1471302 e!3274343)))

(declare-fun b!5264121 () Bool)

(declare-fun tp!1471475 () Bool)

(assert (=> b!5264121 (= e!3274343 tp!1471475)))

(assert (= (and b!5263284 ((_ is ElementMatch!14881) (regOne!30274 (regOne!30274 r!7292)))) b!5264119))

(assert (= (and b!5263284 ((_ is Concat!23726) (regOne!30274 (regOne!30274 r!7292)))) b!5264120))

(assert (= (and b!5263284 ((_ is Star!14881) (regOne!30274 (regOne!30274 r!7292)))) b!5264121))

(assert (= (and b!5263284 ((_ is Union!14881) (regOne!30274 (regOne!30274 r!7292)))) b!5264122))

(declare-fun b!5264124 () Bool)

(declare-fun e!3274344 () Bool)

(declare-fun tp!1471476 () Bool)

(declare-fun tp!1471479 () Bool)

(assert (=> b!5264124 (= e!3274344 (and tp!1471476 tp!1471479))))

(declare-fun b!5264123 () Bool)

(assert (=> b!5264123 (= e!3274344 tp_is_empty!39015)))

(declare-fun b!5264126 () Bool)

(declare-fun tp!1471477 () Bool)

(declare-fun tp!1471478 () Bool)

(assert (=> b!5264126 (= e!3274344 (and tp!1471477 tp!1471478))))

(assert (=> b!5263284 (= tp!1471305 e!3274344)))

(declare-fun b!5264125 () Bool)

(declare-fun tp!1471480 () Bool)

(assert (=> b!5264125 (= e!3274344 tp!1471480)))

(assert (= (and b!5263284 ((_ is ElementMatch!14881) (regTwo!30274 (regOne!30274 r!7292)))) b!5264123))

(assert (= (and b!5263284 ((_ is Concat!23726) (regTwo!30274 (regOne!30274 r!7292)))) b!5264124))

(assert (= (and b!5263284 ((_ is Star!14881) (regTwo!30274 (regOne!30274 r!7292)))) b!5264125))

(assert (= (and b!5263284 ((_ is Union!14881) (regTwo!30274 (regOne!30274 r!7292)))) b!5264126))

(declare-fun b!5264128 () Bool)

(declare-fun e!3274345 () Bool)

(declare-fun tp!1471481 () Bool)

(declare-fun tp!1471484 () Bool)

(assert (=> b!5264128 (= e!3274345 (and tp!1471481 tp!1471484))))

(declare-fun b!5264127 () Bool)

(assert (=> b!5264127 (= e!3274345 tp_is_empty!39015)))

(declare-fun b!5264130 () Bool)

(declare-fun tp!1471482 () Bool)

(declare-fun tp!1471483 () Bool)

(assert (=> b!5264130 (= e!3274345 (and tp!1471482 tp!1471483))))

(assert (=> b!5263285 (= tp!1471306 e!3274345)))

(declare-fun b!5264129 () Bool)

(declare-fun tp!1471485 () Bool)

(assert (=> b!5264129 (= e!3274345 tp!1471485)))

(assert (= (and b!5263285 ((_ is ElementMatch!14881) (reg!15210 (regOne!30274 r!7292)))) b!5264127))

(assert (= (and b!5263285 ((_ is Concat!23726) (reg!15210 (regOne!30274 r!7292)))) b!5264128))

(assert (= (and b!5263285 ((_ is Star!14881) (reg!15210 (regOne!30274 r!7292)))) b!5264129))

(assert (= (and b!5263285 ((_ is Union!14881) (reg!15210 (regOne!30274 r!7292)))) b!5264130))

(declare-fun b!5264132 () Bool)

(declare-fun e!3274346 () Bool)

(declare-fun tp!1471486 () Bool)

(declare-fun tp!1471489 () Bool)

(assert (=> b!5264132 (= e!3274346 (and tp!1471486 tp!1471489))))

(declare-fun b!5264131 () Bool)

(assert (=> b!5264131 (= e!3274346 tp_is_empty!39015)))

(declare-fun b!5264134 () Bool)

(declare-fun tp!1471487 () Bool)

(declare-fun tp!1471488 () Bool)

(assert (=> b!5264134 (= e!3274346 (and tp!1471487 tp!1471488))))

(assert (=> b!5263294 (= tp!1471313 e!3274346)))

(declare-fun b!5264133 () Bool)

(declare-fun tp!1471490 () Bool)

(assert (=> b!5264133 (= e!3274346 tp!1471490)))

(assert (= (and b!5263294 ((_ is ElementMatch!14881) (regOne!30275 (regOne!30275 r!7292)))) b!5264131))

(assert (= (and b!5263294 ((_ is Concat!23726) (regOne!30275 (regOne!30275 r!7292)))) b!5264132))

(assert (= (and b!5263294 ((_ is Star!14881) (regOne!30275 (regOne!30275 r!7292)))) b!5264133))

(assert (= (and b!5263294 ((_ is Union!14881) (regOne!30275 (regOne!30275 r!7292)))) b!5264134))

(declare-fun b!5264136 () Bool)

(declare-fun e!3274347 () Bool)

(declare-fun tp!1471491 () Bool)

(declare-fun tp!1471494 () Bool)

(assert (=> b!5264136 (= e!3274347 (and tp!1471491 tp!1471494))))

(declare-fun b!5264135 () Bool)

(assert (=> b!5264135 (= e!3274347 tp_is_empty!39015)))

(declare-fun b!5264138 () Bool)

(declare-fun tp!1471492 () Bool)

(declare-fun tp!1471493 () Bool)

(assert (=> b!5264138 (= e!3274347 (and tp!1471492 tp!1471493))))

(assert (=> b!5263294 (= tp!1471314 e!3274347)))

(declare-fun b!5264137 () Bool)

(declare-fun tp!1471495 () Bool)

(assert (=> b!5264137 (= e!3274347 tp!1471495)))

(assert (= (and b!5263294 ((_ is ElementMatch!14881) (regTwo!30275 (regOne!30275 r!7292)))) b!5264135))

(assert (= (and b!5263294 ((_ is Concat!23726) (regTwo!30275 (regOne!30275 r!7292)))) b!5264136))

(assert (= (and b!5263294 ((_ is Star!14881) (regTwo!30275 (regOne!30275 r!7292)))) b!5264137))

(assert (= (and b!5263294 ((_ is Union!14881) (regTwo!30275 (regOne!30275 r!7292)))) b!5264138))

(declare-fun b!5264140 () Bool)

(declare-fun e!3274348 () Bool)

(declare-fun tp!1471496 () Bool)

(declare-fun tp!1471499 () Bool)

(assert (=> b!5264140 (= e!3274348 (and tp!1471496 tp!1471499))))

(declare-fun b!5264139 () Bool)

(assert (=> b!5264139 (= e!3274348 tp_is_empty!39015)))

(declare-fun b!5264142 () Bool)

(declare-fun tp!1471497 () Bool)

(declare-fun tp!1471498 () Bool)

(assert (=> b!5264142 (= e!3274348 (and tp!1471497 tp!1471498))))

(assert (=> b!5263286 (= tp!1471303 e!3274348)))

(declare-fun b!5264141 () Bool)

(declare-fun tp!1471500 () Bool)

(assert (=> b!5264141 (= e!3274348 tp!1471500)))

(assert (= (and b!5263286 ((_ is ElementMatch!14881) (regOne!30275 (regOne!30274 r!7292)))) b!5264139))

(assert (= (and b!5263286 ((_ is Concat!23726) (regOne!30275 (regOne!30274 r!7292)))) b!5264140))

(assert (= (and b!5263286 ((_ is Star!14881) (regOne!30275 (regOne!30274 r!7292)))) b!5264141))

(assert (= (and b!5263286 ((_ is Union!14881) (regOne!30275 (regOne!30274 r!7292)))) b!5264142))

(declare-fun b!5264144 () Bool)

(declare-fun e!3274349 () Bool)

(declare-fun tp!1471501 () Bool)

(declare-fun tp!1471504 () Bool)

(assert (=> b!5264144 (= e!3274349 (and tp!1471501 tp!1471504))))

(declare-fun b!5264143 () Bool)

(assert (=> b!5264143 (= e!3274349 tp_is_empty!39015)))

(declare-fun b!5264146 () Bool)

(declare-fun tp!1471502 () Bool)

(declare-fun tp!1471503 () Bool)

(assert (=> b!5264146 (= e!3274349 (and tp!1471502 tp!1471503))))

(assert (=> b!5263286 (= tp!1471304 e!3274349)))

(declare-fun b!5264145 () Bool)

(declare-fun tp!1471505 () Bool)

(assert (=> b!5264145 (= e!3274349 tp!1471505)))

(assert (= (and b!5263286 ((_ is ElementMatch!14881) (regTwo!30275 (regOne!30274 r!7292)))) b!5264143))

(assert (= (and b!5263286 ((_ is Concat!23726) (regTwo!30275 (regOne!30274 r!7292)))) b!5264144))

(assert (= (and b!5263286 ((_ is Star!14881) (regTwo!30275 (regOne!30274 r!7292)))) b!5264145))

(assert (= (and b!5263286 ((_ is Union!14881) (regTwo!30275 (regOne!30274 r!7292)))) b!5264146))

(declare-fun condSetEmpty!33661 () Bool)

(assert (=> setNonEmpty!33657 (= condSetEmpty!33661 (= setRest!33657 ((as const (Array Context!8530 Bool)) false)))))

(declare-fun setRes!33661 () Bool)

(assert (=> setNonEmpty!33657 (= tp!1471327 setRes!33661)))

(declare-fun setIsEmpty!33661 () Bool)

(assert (=> setIsEmpty!33661 setRes!33661))

(declare-fun tp!1471507 () Bool)

(declare-fun setNonEmpty!33661 () Bool)

(declare-fun e!3274350 () Bool)

(declare-fun setElem!33661 () Context!8530)

(assert (=> setNonEmpty!33661 (= setRes!33661 (and tp!1471507 (inv!80449 setElem!33661) e!3274350))))

(declare-fun setRest!33661 () (InoxSet Context!8530))

(assert (=> setNonEmpty!33661 (= setRest!33657 ((_ map or) (store ((as const (Array Context!8530 Bool)) false) setElem!33661 true) setRest!33661))))

(declare-fun b!5264147 () Bool)

(declare-fun tp!1471506 () Bool)

(assert (=> b!5264147 (= e!3274350 tp!1471506)))

(assert (= (and setNonEmpty!33657 condSetEmpty!33661) setIsEmpty!33661))

(assert (= (and setNonEmpty!33657 (not condSetEmpty!33661)) setNonEmpty!33661))

(assert (= setNonEmpty!33661 b!5264147))

(declare-fun m!6304896 () Bool)

(assert (=> setNonEmpty!33661 m!6304896))

(declare-fun b_lambda!203091 () Bool)

(assert (= b_lambda!203071 (or d!1693988 b_lambda!203091)))

(declare-fun bs!1220274 () Bool)

(declare-fun d!1694354 () Bool)

(assert (= bs!1220274 (and d!1694354 d!1693988)))

(assert (=> bs!1220274 (= (dynLambda!24033 lambda!265396 (h!67267 lt!2155616)) (validRegex!6617 (h!67267 lt!2155616)))))

(declare-fun m!6304900 () Bool)

(assert (=> bs!1220274 m!6304900))

(assert (=> b!5263393 d!1694354))

(declare-fun b_lambda!203093 () Bool)

(assert (= b_lambda!203083 (or d!1693950 b_lambda!203093)))

(declare-fun bs!1220275 () Bool)

(declare-fun d!1694358 () Bool)

(assert (= bs!1220275 (and d!1694358 d!1693950)))

(assert (=> bs!1220275 (= (dynLambda!24033 lambda!265383 (h!67267 (exprs!4765 (h!67268 zl!343)))) (validRegex!6617 (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(declare-fun m!6304902 () Bool)

(assert (=> bs!1220275 m!6304902))

(assert (=> b!5263775 d!1694358))

(declare-fun b_lambda!203095 () Bool)

(assert (= b_lambda!203075 (or b!5262556 b_lambda!203095)))

(assert (=> d!1694088 d!1694014))

(declare-fun b_lambda!203097 () Bool)

(assert (= b_lambda!203089 (or d!1693910 b_lambda!203097)))

(declare-fun bs!1220276 () Bool)

(declare-fun d!1694360 () Bool)

(assert (= bs!1220276 (and d!1694360 d!1693910)))

(assert (=> bs!1220276 (= (dynLambda!24033 lambda!265362 (h!67267 (exprs!4765 (h!67268 zl!343)))) (validRegex!6617 (h!67267 (exprs!4765 (h!67268 zl!343)))))))

(assert (=> bs!1220276 m!6304902))

(assert (=> b!5263964 d!1694360))

(declare-fun b_lambda!203099 () Bool)

(assert (= b_lambda!203081 (or d!1694006 b_lambda!203099)))

(declare-fun bs!1220277 () Bool)

(declare-fun d!1694362 () Bool)

(assert (= bs!1220277 (and d!1694362 d!1694006)))

(assert (=> bs!1220277 (= (dynLambda!24033 lambda!265397 (h!67267 (exprs!4765 setElem!33651))) (validRegex!6617 (h!67267 (exprs!4765 setElem!33651))))))

(declare-fun m!6304904 () Bool)

(assert (=> bs!1220277 m!6304904))

(assert (=> b!5263758 d!1694362))

(declare-fun b_lambda!203101 () Bool)

(assert (= b_lambda!203073 (or d!1693986 b_lambda!203101)))

(declare-fun bs!1220278 () Bool)

(declare-fun d!1694364 () Bool)

(assert (= bs!1220278 (and d!1694364 d!1693986)))

(assert (=> bs!1220278 (= (dynLambda!24033 lambda!265393 (h!67267 (unfocusZipperList!323 zl!343))) (validRegex!6617 (h!67267 (unfocusZipperList!323 zl!343))))))

(declare-fun m!6304906 () Bool)

(assert (=> bs!1220278 m!6304906))

(assert (=> b!5263415 d!1694364))

(check-sat (not b!5263660) (not b_lambda!203093) (not b_lambda!203101) (not b!5264093) (not b!5264145) (not bm!373366) (not b!5264016) (not bs!1220278) (not bm!373424) (not bm!373394) (not bm!373359) (not bm!373429) (not bm!373498) (not d!1694130) (not b!5264124) (not b!5263605) (not b!5263791) (not b!5263338) (not bs!1220276) (not b!5263769) (not b!5263336) (not b!5263606) (not bm!373489) (not b!5263965) (not bm!373391) (not b!5264144) (not bm!373449) (not b!5264096) (not b!5263768) (not b!5264103) (not bm!373478) (not b!5264136) (not bm!373435) (not d!1694288) (not d!1694122) (not b!5264070) (not bm!373448) (not b!5263776) (not d!1694208) (not b!5263394) (not b!5263744) (not d!1694082) (not b!5264138) (not b!5264015) (not b!5264129) (not b!5263468) (not b!5264076) (not b!5264116) (not b!5263347) (not d!1694106) (not b!5263767) (not b!5264046) (not b!5264023) (not b!5264097) (not d!1694088) (not b!5264050) (not b!5263531) (not bm!373425) (not b_lambda!203095) (not d!1694048) (not b!5264141) (not b!5263765) (not b!5263727) (not d!1694212) (not d!1694112) (not b!5263515) (not bm!373401) (not b!5264051) (not b!5264062) (not bm!373383) (not b!5263337) (not d!1694274) (not bm!373460) (not b!5264092) (not d!1694030) (not b!5263370) (not b!5263799) (not b!5264041) (not b!5263364) (not b_lambda!203067) (not b!5263593) (not bm!373369) (not d!1694240) (not d!1694318) (not b!5264108) (not b!5263779) (not d!1694060) (not b!5263320) (not bm!373484) (not bm!373414) (not b!5263350) (not b!5263657) (not d!1694346) (not b!5264066) (not b!5263772) (not b!5263655) (not d!1694052) (not b_lambda!203099) (not b!5263525) (not d!1694086) (not bm!373430) (not b!5264038) (not b!5264035) (not b!5264125) (not bm!373387) (not b!5264034) (not b!5263716) (not b!5263725) (not bm!373500) (not b!5264057) (not d!1694040) (not bm!373431) (not b!5264109) (not d!1694102) (not d!1694336) (not setNonEmpty!33660) (not bm!373395) (not b!5263792) (not bs!1220274) (not b!5264147) (not b!5264132) (not d!1694252) (not b!5263712) (not bm!373384) (not b!5263894) (not bm!373370) (not b!5264128) (not b!5263442) (not b!5263430) (not b!5263467) (not b!5264111) (not b!5264025) (not bm!373422) (not b!5263883) (not b!5263520) (not bm!373410) (not d!1694320) (not bm!373447) (not b!5263732) (not b!5264075) (not bm!373385) (not b!5264049) (not b!5264098) (not d!1694038) (not bm!373358) (not bm!373365) (not b!5264091) (not b!5264027) (not b!5264053) (not b!5264112) (not bm!373441) (not b!5263352) (not b!5264055) (not d!1694066) (not b!5264069) (not b!5264065) (not b!5264009) (not b!5264114) (not b!5263671) (not b!5263532) (not b!5264011) (not b!5264037) (not b!5263375) (not b!5263469) (not b!5264058) (not b_lambda!203097) (not b!5263648) (not b!5263592) (not d!1694032) (not b!5263379) (not bm!373360) (not bm!373357) (not b!5264130) (not b!5264074) (not b!5263958) (not b!5263647) (not b!5263760) (not setNonEmpty!33661) (not bm!373497) (not b_lambda!203091) (not b!5263711) (not b!5263454) (not b!5263345) (not b!5263748) (not b!5263535) (not bm!373393) (not bm!373397) (not bm!373416) (not b!5264133) (not b!5263635) (not d!1694204) (not d!1694094) (not b!5264073) (not b!5263728) (not bs!1220275) (not d!1694214) (not b!5263644) (not b!5264047) (not b!5263416) (not b!5264033) (not b!5263524) (not bm!373502) (not b!5264061) (not b!5264137) (not b!5263333) (not d!1694316) (not b!5264029) (not bm!373477) (not bm!373372) (not bm!373411) (not b!5263465) (not b!5263351) (not d!1694182) (not b!5264042) (not bm!373361) (not b!5264043) (not b!5263476) (not b!5264059) (not bm!373462) (not b!5263714) (not bm!373382) (not bm!373459) (not b!5264106) (not bm!373392) (not b!5263773) (not bs!1220277) (not b!5264122) (not b!5263409) tp_is_empty!39015 (not b!5264045) (not d!1694254) (not b!5263788) (not d!1694124) (not b!5264118) (not d!1694226) (not bm!373490) (not d!1694162) (not b!5264140) (not b!5263519) (not b!5263683) (not b!5263646) (not b!5264134) (not b!5264018) (not b!5264013) (not b!5264071) (not b!5263478) (not b!5263723) (not b!5263710) (not b!5264102) (not b!5263482) (not b!5263607) (not b!5264105) (not b!5263801) (not b!5263948) (not b!5263527) (not b!5263872) (not b!5263687) (not b!5263539) (not bm!373445) (not d!1694058) (not bm!373488) (not d!1694186) (not b!5263616) (not b!5264146) (not b!5264142) (not bm!373482) (not b!5264099) (not d!1694222) (not bm!373423) (not b!5263528) (not b!5263398) (not b!5264082) (not bm!373503) (not b!5264117) (not b!5263715) (not d!1694216) (not b!5263516) (not bm!373367) (not b!5263360) (not b!5263698) (not b!5263697) (not bm!373505) (not b!5264054) (not d!1694206) (not d!1694220) (not b!5264039) (not b!5264113) (not b!5264014) (not d!1694290) (not b!5264080) (not b!5264107) (not b!5263771) (not bm!373461) (not b!5264121) (not b!5264120) (not b!5264094) (not b!5264030) (not bm!373446) (not b!5263790) (not b!5263329) (not b!5264026) (not d!1694176) (not b!5264031) (not bm!373483) (not b!5263334) (not b!5264083) (not b!5264126) (not bm!373364) (not b!5264067) (not b!5264101) (not bm!373362) (not d!1694022) (not b!5264063))
(check-sat)
