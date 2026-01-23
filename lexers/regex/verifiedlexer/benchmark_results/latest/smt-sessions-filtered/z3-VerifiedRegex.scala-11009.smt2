; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570854 () Bool)

(assert start!570854)

(declare-fun b!5443846 () Bool)

(assert (=> b!5443846 true))

(assert (=> b!5443846 true))

(declare-fun lambda!286566 () Int)

(declare-fun lambda!286565 () Int)

(assert (=> b!5443846 (not (= lambda!286566 lambda!286565))))

(assert (=> b!5443846 true))

(assert (=> b!5443846 true))

(declare-fun b!5443851 () Bool)

(assert (=> b!5443851 true))

(declare-fun b!5443837 () Bool)

(declare-fun res!2317652 () Bool)

(declare-fun e!3372139 () Bool)

(assert (=> b!5443837 (=> (not res!2317652) (not e!3372139))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30800 0))(
  ( (C!30801 (val!25102 Int)) )
))
(declare-datatypes ((Regex!15265 0))(
  ( (ElementMatch!15265 (c!950093 C!30800)) (Concat!24110 (regOne!31042 Regex!15265) (regTwo!31042 Regex!15265)) (EmptyExpr!15265) (Star!15265 (reg!15594 Regex!15265)) (EmptyLang!15265) (Union!15265 (regOne!31043 Regex!15265) (regTwo!31043 Regex!15265)) )
))
(declare-datatypes ((List!62094 0))(
  ( (Nil!61970) (Cons!61970 (h!68418 Regex!15265) (t!375321 List!62094)) )
))
(declare-datatypes ((Context!9298 0))(
  ( (Context!9299 (exprs!5149 List!62094)) )
))
(declare-fun z!1189 () (InoxSet Context!9298))

(declare-datatypes ((List!62095 0))(
  ( (Nil!61971) (Cons!61971 (h!68419 Context!9298) (t!375322 List!62095)) )
))
(declare-fun zl!343 () List!62095)

(declare-fun toList!9049 ((InoxSet Context!9298)) List!62095)

(assert (=> b!5443837 (= res!2317652 (= (toList!9049 z!1189) zl!343))))

(declare-fun b!5443838 () Bool)

(declare-fun res!2317665 () Bool)

(declare-fun e!3372127 () Bool)

(assert (=> b!5443838 (=> res!2317665 e!3372127)))

(declare-fun isEmpty!33958 (List!62095) Bool)

(assert (=> b!5443838 (= res!2317665 (not (isEmpty!33958 (t!375322 zl!343))))))

(declare-fun b!5443839 () Bool)

(declare-fun e!3372132 () Bool)

(declare-fun tp!1500632 () Bool)

(assert (=> b!5443839 (= e!3372132 tp!1500632)))

(declare-fun b!5443840 () Bool)

(declare-fun e!3372137 () Bool)

(declare-fun e!3372140 () Bool)

(assert (=> b!5443840 (= e!3372137 e!3372140)))

(declare-fun res!2317648 () Bool)

(assert (=> b!5443840 (=> res!2317648 e!3372140)))

(declare-fun lt!2219557 () (InoxSet Context!9298))

(declare-fun r!7292 () Regex!15265)

(assert (=> b!5443840 (= res!2317648 (or (not (= lt!2219557 ((as const (Array Context!9298 Bool)) false))) (not (= r!7292 (Concat!24110 (regOne!31042 r!7292) (regTwo!31042 r!7292)))) (not (= (regOne!31042 r!7292) EmptyExpr!15265))))))

(declare-datatypes ((List!62096 0))(
  ( (Nil!61972) (Cons!61972 (h!68420 C!30800) (t!375323 List!62096)) )
))
(declare-fun s!2326 () List!62096)

(declare-fun matchZipper!1509 ((InoxSet Context!9298) List!62096) Bool)

(assert (=> b!5443840 (not (matchZipper!1509 lt!2219557 (t!375323 s!2326)))))

(declare-datatypes ((Unit!154602 0))(
  ( (Unit!154603) )
))
(declare-fun lt!2219547 () Unit!154602)

(declare-fun lemmaEmptyZipperMatchesNothing!20 ((InoxSet Context!9298) List!62096) Unit!154602)

(assert (=> b!5443840 (= lt!2219547 (lemmaEmptyZipperMatchesNothing!20 lt!2219557 (t!375323 s!2326)))))

(declare-fun b!5443841 () Bool)

(declare-fun res!2317656 () Bool)

(assert (=> b!5443841 (=> res!2317656 e!3372137)))

(declare-fun e!3372134 () Bool)

(assert (=> b!5443841 (= res!2317656 e!3372134)))

(declare-fun res!2317654 () Bool)

(assert (=> b!5443841 (=> (not res!2317654) (not e!3372134))))

(get-info :version)

(assert (=> b!5443841 (= res!2317654 ((_ is Concat!24110) (regOne!31042 r!7292)))))

(declare-fun b!5443842 () Bool)

(declare-fun res!2317661 () Bool)

(assert (=> b!5443842 (=> res!2317661 e!3372127)))

(assert (=> b!5443842 (= res!2317661 (or ((_ is EmptyExpr!15265) r!7292) ((_ is EmptyLang!15265) r!7292) ((_ is ElementMatch!15265) r!7292) ((_ is Union!15265) r!7292) (not ((_ is Concat!24110) r!7292))))))

(declare-fun b!5443843 () Bool)

(declare-fun e!3372135 () Bool)

(declare-fun e!3372142 () Bool)

(assert (=> b!5443843 (= e!3372135 e!3372142)))

(declare-fun res!2317649 () Bool)

(assert (=> b!5443843 (=> res!2317649 e!3372142)))

(declare-fun lt!2219558 () (InoxSet Context!9298))

(declare-fun lt!2219543 () (InoxSet Context!9298))

(declare-fun derivationStepZipper!1494 ((InoxSet Context!9298) C!30800) (InoxSet Context!9298))

(assert (=> b!5443843 (= res!2317649 (not (= lt!2219543 (derivationStepZipper!1494 lt!2219558 (h!68420 s!2326)))))))

(declare-fun lt!2219544 () Context!9298)

(declare-fun lambda!286567 () Int)

(declare-fun flatMap!992 ((InoxSet Context!9298) Int) (InoxSet Context!9298))

(declare-fun derivationStepZipperUp!637 (Context!9298 C!30800) (InoxSet Context!9298))

(assert (=> b!5443843 (= (flatMap!992 lt!2219558 lambda!286567) (derivationStepZipperUp!637 lt!2219544 (h!68420 s!2326)))))

(declare-fun lt!2219539 () Unit!154602)

(declare-fun lemmaFlatMapOnSingletonSet!524 ((InoxSet Context!9298) Context!9298 Int) Unit!154602)

(assert (=> b!5443843 (= lt!2219539 (lemmaFlatMapOnSingletonSet!524 lt!2219558 lt!2219544 lambda!286567))))

(assert (=> b!5443843 (= lt!2219558 (store ((as const (Array Context!9298 Bool)) false) lt!2219544 true))))

(declare-fun res!2317647 () Bool)

(assert (=> start!570854 (=> (not res!2317647) (not e!3372139))))

(declare-fun validRegex!7001 (Regex!15265) Bool)

(assert (=> start!570854 (= res!2317647 (validRegex!7001 r!7292))))

(assert (=> start!570854 e!3372139))

(declare-fun e!3372138 () Bool)

(assert (=> start!570854 e!3372138))

(declare-fun condSetEmpty!35605 () Bool)

(assert (=> start!570854 (= condSetEmpty!35605 (= z!1189 ((as const (Array Context!9298 Bool)) false)))))

(declare-fun setRes!35605 () Bool)

(assert (=> start!570854 setRes!35605))

(declare-fun e!3372136 () Bool)

(assert (=> start!570854 e!3372136))

(declare-fun e!3372141 () Bool)

(assert (=> start!570854 e!3372141))

(declare-fun b!5443844 () Bool)

(declare-fun res!2317660 () Bool)

(assert (=> b!5443844 (=> (not res!2317660) (not e!3372139))))

(declare-fun unfocusZipper!1007 (List!62095) Regex!15265)

(assert (=> b!5443844 (= res!2317660 (= r!7292 (unfocusZipper!1007 zl!343)))))

(declare-fun e!3372128 () Bool)

(declare-fun b!5443845 () Bool)

(declare-fun tp!1500639 () Bool)

(declare-fun inv!81409 (Context!9298) Bool)

(assert (=> b!5443845 (= e!3372136 (and (inv!81409 (h!68419 zl!343)) e!3372128 tp!1500639))))

(declare-fun e!3372126 () Bool)

(assert (=> b!5443846 (= e!3372127 e!3372126)))

(declare-fun res!2317651 () Bool)

(assert (=> b!5443846 (=> res!2317651 e!3372126)))

(declare-fun lt!2219541 () Bool)

(declare-fun lt!2219549 () Bool)

(assert (=> b!5443846 (= res!2317651 (or (not (= lt!2219549 lt!2219541)) ((_ is Nil!61972) s!2326)))))

(declare-fun Exists!2446 (Int) Bool)

(assert (=> b!5443846 (= (Exists!2446 lambda!286565) (Exists!2446 lambda!286566))))

(declare-fun lt!2219542 () Unit!154602)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1100 (Regex!15265 Regex!15265 List!62096) Unit!154602)

(assert (=> b!5443846 (= lt!2219542 (lemmaExistCutMatchRandMatchRSpecEquivalent!1100 (regOne!31042 r!7292) (regTwo!31042 r!7292) s!2326))))

(assert (=> b!5443846 (= lt!2219541 (Exists!2446 lambda!286565))))

(declare-datatypes ((tuple2!64928 0))(
  ( (tuple2!64929 (_1!35767 List!62096) (_2!35767 List!62096)) )
))
(declare-datatypes ((Option!15376 0))(
  ( (None!15375) (Some!15375 (v!51404 tuple2!64928)) )
))
(declare-fun isDefined!12079 (Option!15376) Bool)

(declare-fun findConcatSeparation!1790 (Regex!15265 Regex!15265 List!62096 List!62096 List!62096) Option!15376)

(assert (=> b!5443846 (= lt!2219541 (isDefined!12079 (findConcatSeparation!1790 (regOne!31042 r!7292) (regTwo!31042 r!7292) Nil!61972 s!2326 s!2326)))))

(declare-fun lt!2219550 () Unit!154602)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1554 (Regex!15265 Regex!15265 List!62096) Unit!154602)

(assert (=> b!5443846 (= lt!2219550 (lemmaFindConcatSeparationEquivalentToExists!1554 (regOne!31042 r!7292) (regTwo!31042 r!7292) s!2326))))

(declare-fun b!5443847 () Bool)

(declare-fun tp_is_empty!39783 () Bool)

(assert (=> b!5443847 (= e!3372138 tp_is_empty!39783)))

(declare-fun b!5443848 () Bool)

(declare-fun tp!1500640 () Bool)

(declare-fun tp!1500638 () Bool)

(assert (=> b!5443848 (= e!3372138 (and tp!1500640 tp!1500638))))

(declare-fun b!5443849 () Bool)

(declare-fun e!3372133 () Bool)

(assert (=> b!5443849 (= e!3372142 e!3372133)))

(declare-fun res!2317646 () Bool)

(assert (=> b!5443849 (=> res!2317646 e!3372133)))

(declare-fun lt!2219536 () (InoxSet Context!9298))

(assert (=> b!5443849 (= res!2317646 (not (= (derivationStepZipper!1494 z!1189 (h!68420 s!2326)) lt!2219536)))))

(assert (=> b!5443849 (= lt!2219536 ((_ map or) lt!2219557 lt!2219543))))

(declare-fun b!5443850 () Bool)

(declare-fun e!3372131 () Bool)

(assert (=> b!5443850 (= e!3372133 e!3372131)))

(declare-fun res!2317662 () Bool)

(assert (=> b!5443850 (=> res!2317662 e!3372131)))

(declare-fun lt!2219556 () Bool)

(assert (=> b!5443850 (= res!2317662 (not (= (matchZipper!1509 z!1189 s!2326) lt!2219556)))))

(declare-fun lt!2219553 () Bool)

(assert (=> b!5443850 (= lt!2219553 lt!2219556)))

(assert (=> b!5443850 (= lt!2219556 (matchZipper!1509 lt!2219543 (t!375323 s!2326)))))

(assert (=> b!5443850 (= lt!2219553 (matchZipper!1509 lt!2219536 (t!375323 s!2326)))))

(declare-fun lt!2219555 () Unit!154602)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!502 ((InoxSet Context!9298) (InoxSet Context!9298) List!62096) Unit!154602)

(assert (=> b!5443850 (= lt!2219555 (lemmaZipperConcatMatchesSameAsBothZippers!502 lt!2219557 lt!2219543 (t!375323 s!2326)))))

(assert (=> b!5443851 (= e!3372126 e!3372137)))

(declare-fun res!2317657 () Bool)

(assert (=> b!5443851 (=> res!2317657 e!3372137)))

(assert (=> b!5443851 (= res!2317657 (or (and ((_ is ElementMatch!15265) (regOne!31042 r!7292)) (= (c!950093 (regOne!31042 r!7292)) (h!68420 s!2326))) ((_ is Union!15265) (regOne!31042 r!7292))))))

(declare-fun lt!2219551 () Unit!154602)

(declare-fun e!3372130 () Unit!154602)

(assert (=> b!5443851 (= lt!2219551 e!3372130)))

(declare-fun c!950092 () Bool)

(declare-fun nullable!5434 (Regex!15265) Bool)

(assert (=> b!5443851 (= c!950092 (nullable!5434 (h!68418 (exprs!5149 (h!68419 zl!343)))))))

(assert (=> b!5443851 (= (flatMap!992 z!1189 lambda!286567) (derivationStepZipperUp!637 (h!68419 zl!343) (h!68420 s!2326)))))

(declare-fun lt!2219537 () Unit!154602)

(assert (=> b!5443851 (= lt!2219537 (lemmaFlatMapOnSingletonSet!524 z!1189 (h!68419 zl!343) lambda!286567))))

(assert (=> b!5443851 (= lt!2219543 (derivationStepZipperUp!637 lt!2219544 (h!68420 s!2326)))))

(declare-fun derivationStepZipperDown!713 (Regex!15265 Context!9298 C!30800) (InoxSet Context!9298))

(assert (=> b!5443851 (= lt!2219557 (derivationStepZipperDown!713 (h!68418 (exprs!5149 (h!68419 zl!343))) lt!2219544 (h!68420 s!2326)))))

(assert (=> b!5443851 (= lt!2219544 (Context!9299 (t!375321 (exprs!5149 (h!68419 zl!343)))))))

(declare-fun lt!2219538 () (InoxSet Context!9298))

(assert (=> b!5443851 (= lt!2219538 (derivationStepZipperUp!637 (Context!9299 (Cons!61970 (h!68418 (exprs!5149 (h!68419 zl!343))) (t!375321 (exprs!5149 (h!68419 zl!343))))) (h!68420 s!2326)))))

(declare-fun b!5443852 () Bool)

(declare-fun res!2317655 () Bool)

(assert (=> b!5443852 (=> res!2317655 e!3372127)))

(assert (=> b!5443852 (= res!2317655 (not ((_ is Cons!61970) (exprs!5149 (h!68419 zl!343)))))))

(declare-fun b!5443853 () Bool)

(assert (=> b!5443853 (= e!3372140 e!3372135)))

(declare-fun res!2317645 () Bool)

(assert (=> b!5443853 (=> res!2317645 e!3372135)))

(declare-fun lt!2219548 () Bool)

(assert (=> b!5443853 (= res!2317645 (not (= lt!2219549 lt!2219548)))))

(declare-fun matchRSpec!2368 (Regex!15265 List!62096) Bool)

(assert (=> b!5443853 (= lt!2219548 (matchRSpec!2368 (regTwo!31042 r!7292) s!2326))))

(declare-fun matchR!7450 (Regex!15265 List!62096) Bool)

(assert (=> b!5443853 (= lt!2219548 (matchR!7450 (regTwo!31042 r!7292) s!2326))))

(declare-fun lt!2219552 () Unit!154602)

(declare-fun mainMatchTheorem!2368 (Regex!15265 List!62096) Unit!154602)

(assert (=> b!5443853 (= lt!2219552 (mainMatchTheorem!2368 (regTwo!31042 r!7292) s!2326))))

(assert (=> b!5443853 (= (matchR!7450 (regOne!31042 r!7292) s!2326) (matchRSpec!2368 (regOne!31042 r!7292) s!2326))))

(declare-fun lt!2219540 () Unit!154602)

(assert (=> b!5443853 (= lt!2219540 (mainMatchTheorem!2368 (regOne!31042 r!7292) s!2326))))

(declare-fun b!5443854 () Bool)

(declare-fun tp!1500633 () Bool)

(assert (=> b!5443854 (= e!3372138 tp!1500633)))

(declare-fun b!5443855 () Bool)

(declare-fun res!2317664 () Bool)

(assert (=> b!5443855 (=> res!2317664 e!3372127)))

(declare-fun generalisedConcat!934 (List!62094) Regex!15265)

(assert (=> b!5443855 (= res!2317664 (not (= r!7292 (generalisedConcat!934 (exprs!5149 (h!68419 zl!343))))))))

(declare-fun b!5443856 () Bool)

(assert (=> b!5443856 (= e!3372134 (nullable!5434 (regOne!31042 (regOne!31042 r!7292))))))

(declare-fun b!5443857 () Bool)

(declare-fun tp!1500635 () Bool)

(assert (=> b!5443857 (= e!3372128 tp!1500635)))

(declare-fun b!5443858 () Bool)

(declare-fun Unit!154604 () Unit!154602)

(assert (=> b!5443858 (= e!3372130 Unit!154604)))

(declare-fun setIsEmpty!35605 () Bool)

(assert (=> setIsEmpty!35605 setRes!35605))

(declare-fun setNonEmpty!35605 () Bool)

(declare-fun setElem!35605 () Context!9298)

(declare-fun tp!1500634 () Bool)

(assert (=> setNonEmpty!35605 (= setRes!35605 (and tp!1500634 (inv!81409 setElem!35605) e!3372132))))

(declare-fun setRest!35605 () (InoxSet Context!9298))

(assert (=> setNonEmpty!35605 (= z!1189 ((_ map or) (store ((as const (Array Context!9298 Bool)) false) setElem!35605 true) setRest!35605))))

(declare-fun b!5443859 () Bool)

(declare-fun tp!1500636 () Bool)

(declare-fun tp!1500641 () Bool)

(assert (=> b!5443859 (= e!3372138 (and tp!1500636 tp!1500641))))

(declare-fun b!5443860 () Bool)

(assert (=> b!5443860 (= e!3372131 true)))

(declare-fun lt!2219554 () Regex!15265)

(assert (=> b!5443860 (= (matchR!7450 lt!2219554 s!2326) (matchZipper!1509 lt!2219558 s!2326))))

(declare-fun lt!2219546 () Unit!154602)

(declare-fun theoremZipperRegexEquiv!553 ((InoxSet Context!9298) List!62095 Regex!15265 List!62096) Unit!154602)

(assert (=> b!5443860 (= lt!2219546 (theoremZipperRegexEquiv!553 lt!2219558 (Cons!61971 lt!2219544 Nil!61971) lt!2219554 s!2326))))

(assert (=> b!5443860 (= lt!2219554 (generalisedConcat!934 (t!375321 (exprs!5149 (h!68419 zl!343)))))))

(declare-fun b!5443861 () Bool)

(assert (=> b!5443861 (= e!3372139 (not e!3372127))))

(declare-fun res!2317658 () Bool)

(assert (=> b!5443861 (=> res!2317658 e!3372127)))

(assert (=> b!5443861 (= res!2317658 (not ((_ is Cons!61971) zl!343)))))

(assert (=> b!5443861 (= lt!2219549 (matchRSpec!2368 r!7292 s!2326))))

(assert (=> b!5443861 (= lt!2219549 (matchR!7450 r!7292 s!2326))))

(declare-fun lt!2219545 () Unit!154602)

(assert (=> b!5443861 (= lt!2219545 (mainMatchTheorem!2368 r!7292 s!2326))))

(declare-fun b!5443862 () Bool)

(declare-fun tp!1500637 () Bool)

(assert (=> b!5443862 (= e!3372141 (and tp_is_empty!39783 tp!1500637))))

(declare-fun b!5443863 () Bool)

(declare-fun res!2317663 () Bool)

(assert (=> b!5443863 (=> res!2317663 e!3372126)))

(declare-fun isEmpty!33959 (List!62094) Bool)

(assert (=> b!5443863 (= res!2317663 (isEmpty!33959 (t!375321 (exprs!5149 (h!68419 zl!343)))))))

(declare-fun b!5443864 () Bool)

(declare-fun res!2317659 () Bool)

(assert (=> b!5443864 (=> res!2317659 e!3372137)))

(assert (=> b!5443864 (= res!2317659 (or ((_ is Concat!24110) (regOne!31042 r!7292)) ((_ is Star!15265) (regOne!31042 r!7292)) (not ((_ is EmptyExpr!15265) (regOne!31042 r!7292)))))))

(declare-fun b!5443865 () Bool)

(declare-fun Unit!154605 () Unit!154602)

(assert (=> b!5443865 (= e!3372130 Unit!154605)))

(declare-fun lt!2219535 () Unit!154602)

(assert (=> b!5443865 (= lt!2219535 (lemmaZipperConcatMatchesSameAsBothZippers!502 lt!2219557 lt!2219543 (t!375323 s!2326)))))

(declare-fun res!2317653 () Bool)

(assert (=> b!5443865 (= res!2317653 (matchZipper!1509 lt!2219557 (t!375323 s!2326)))))

(declare-fun e!3372129 () Bool)

(assert (=> b!5443865 (=> res!2317653 e!3372129)))

(assert (=> b!5443865 (= (matchZipper!1509 ((_ map or) lt!2219557 lt!2219543) (t!375323 s!2326)) e!3372129)))

(declare-fun b!5443866 () Bool)

(declare-fun res!2317650 () Bool)

(assert (=> b!5443866 (=> res!2317650 e!3372127)))

(declare-fun generalisedUnion!1194 (List!62094) Regex!15265)

(declare-fun unfocusZipperList!707 (List!62095) List!62094)

(assert (=> b!5443866 (= res!2317650 (not (= r!7292 (generalisedUnion!1194 (unfocusZipperList!707 zl!343)))))))

(declare-fun b!5443867 () Bool)

(assert (=> b!5443867 (= e!3372129 (matchZipper!1509 lt!2219543 (t!375323 s!2326)))))

(assert (= (and start!570854 res!2317647) b!5443837))

(assert (= (and b!5443837 res!2317652) b!5443844))

(assert (= (and b!5443844 res!2317660) b!5443861))

(assert (= (and b!5443861 (not res!2317658)) b!5443838))

(assert (= (and b!5443838 (not res!2317665)) b!5443855))

(assert (= (and b!5443855 (not res!2317664)) b!5443852))

(assert (= (and b!5443852 (not res!2317655)) b!5443866))

(assert (= (and b!5443866 (not res!2317650)) b!5443842))

(assert (= (and b!5443842 (not res!2317661)) b!5443846))

(assert (= (and b!5443846 (not res!2317651)) b!5443863))

(assert (= (and b!5443863 (not res!2317663)) b!5443851))

(assert (= (and b!5443851 c!950092) b!5443865))

(assert (= (and b!5443851 (not c!950092)) b!5443858))

(assert (= (and b!5443865 (not res!2317653)) b!5443867))

(assert (= (and b!5443851 (not res!2317657)) b!5443841))

(assert (= (and b!5443841 res!2317654) b!5443856))

(assert (= (and b!5443841 (not res!2317656)) b!5443864))

(assert (= (and b!5443864 (not res!2317659)) b!5443840))

(assert (= (and b!5443840 (not res!2317648)) b!5443853))

(assert (= (and b!5443853 (not res!2317645)) b!5443843))

(assert (= (and b!5443843 (not res!2317649)) b!5443849))

(assert (= (and b!5443849 (not res!2317646)) b!5443850))

(assert (= (and b!5443850 (not res!2317662)) b!5443860))

(assert (= (and start!570854 ((_ is ElementMatch!15265) r!7292)) b!5443847))

(assert (= (and start!570854 ((_ is Concat!24110) r!7292)) b!5443848))

(assert (= (and start!570854 ((_ is Star!15265) r!7292)) b!5443854))

(assert (= (and start!570854 ((_ is Union!15265) r!7292)) b!5443859))

(assert (= (and start!570854 condSetEmpty!35605) setIsEmpty!35605))

(assert (= (and start!570854 (not condSetEmpty!35605)) setNonEmpty!35605))

(assert (= setNonEmpty!35605 b!5443839))

(assert (= b!5443845 b!5443857))

(assert (= (and start!570854 ((_ is Cons!61971) zl!343)) b!5443845))

(assert (= (and start!570854 ((_ is Cons!61972) s!2326)) b!5443862))

(declare-fun m!6463914 () Bool)

(assert (=> b!5443853 m!6463914))

(declare-fun m!6463916 () Bool)

(assert (=> b!5443853 m!6463916))

(declare-fun m!6463918 () Bool)

(assert (=> b!5443853 m!6463918))

(declare-fun m!6463920 () Bool)

(assert (=> b!5443853 m!6463920))

(declare-fun m!6463922 () Bool)

(assert (=> b!5443853 m!6463922))

(declare-fun m!6463924 () Bool)

(assert (=> b!5443853 m!6463924))

(declare-fun m!6463926 () Bool)

(assert (=> b!5443851 m!6463926))

(declare-fun m!6463928 () Bool)

(assert (=> b!5443851 m!6463928))

(declare-fun m!6463930 () Bool)

(assert (=> b!5443851 m!6463930))

(declare-fun m!6463932 () Bool)

(assert (=> b!5443851 m!6463932))

(declare-fun m!6463934 () Bool)

(assert (=> b!5443851 m!6463934))

(declare-fun m!6463936 () Bool)

(assert (=> b!5443851 m!6463936))

(declare-fun m!6463938 () Bool)

(assert (=> b!5443851 m!6463938))

(declare-fun m!6463940 () Bool)

(assert (=> b!5443840 m!6463940))

(declare-fun m!6463942 () Bool)

(assert (=> b!5443840 m!6463942))

(declare-fun m!6463944 () Bool)

(assert (=> b!5443856 m!6463944))

(declare-fun m!6463946 () Bool)

(assert (=> b!5443844 m!6463946))

(declare-fun m!6463948 () Bool)

(assert (=> b!5443849 m!6463948))

(declare-fun m!6463950 () Bool)

(assert (=> b!5443867 m!6463950))

(declare-fun m!6463952 () Bool)

(assert (=> start!570854 m!6463952))

(declare-fun m!6463954 () Bool)

(assert (=> b!5443855 m!6463954))

(declare-fun m!6463956 () Bool)

(assert (=> b!5443863 m!6463956))

(declare-fun m!6463958 () Bool)

(assert (=> b!5443838 m!6463958))

(declare-fun m!6463960 () Bool)

(assert (=> b!5443845 m!6463960))

(declare-fun m!6463962 () Bool)

(assert (=> b!5443846 m!6463962))

(declare-fun m!6463964 () Bool)

(assert (=> b!5443846 m!6463964))

(declare-fun m!6463966 () Bool)

(assert (=> b!5443846 m!6463966))

(declare-fun m!6463968 () Bool)

(assert (=> b!5443846 m!6463968))

(assert (=> b!5443846 m!6463962))

(declare-fun m!6463970 () Bool)

(assert (=> b!5443846 m!6463970))

(assert (=> b!5443846 m!6463964))

(declare-fun m!6463972 () Bool)

(assert (=> b!5443846 m!6463972))

(declare-fun m!6463974 () Bool)

(assert (=> setNonEmpty!35605 m!6463974))

(declare-fun m!6463976 () Bool)

(assert (=> b!5443860 m!6463976))

(declare-fun m!6463978 () Bool)

(assert (=> b!5443860 m!6463978))

(declare-fun m!6463980 () Bool)

(assert (=> b!5443860 m!6463980))

(declare-fun m!6463982 () Bool)

(assert (=> b!5443860 m!6463982))

(declare-fun m!6463984 () Bool)

(assert (=> b!5443861 m!6463984))

(declare-fun m!6463986 () Bool)

(assert (=> b!5443861 m!6463986))

(declare-fun m!6463988 () Bool)

(assert (=> b!5443861 m!6463988))

(declare-fun m!6463990 () Bool)

(assert (=> b!5443837 m!6463990))

(declare-fun m!6463992 () Bool)

(assert (=> b!5443843 m!6463992))

(declare-fun m!6463994 () Bool)

(assert (=> b!5443843 m!6463994))

(assert (=> b!5443843 m!6463936))

(declare-fun m!6463996 () Bool)

(assert (=> b!5443843 m!6463996))

(declare-fun m!6463998 () Bool)

(assert (=> b!5443843 m!6463998))

(declare-fun m!6464000 () Bool)

(assert (=> b!5443866 m!6464000))

(assert (=> b!5443866 m!6464000))

(declare-fun m!6464002 () Bool)

(assert (=> b!5443866 m!6464002))

(declare-fun m!6464004 () Bool)

(assert (=> b!5443850 m!6464004))

(assert (=> b!5443850 m!6463950))

(declare-fun m!6464006 () Bool)

(assert (=> b!5443850 m!6464006))

(declare-fun m!6464008 () Bool)

(assert (=> b!5443850 m!6464008))

(assert (=> b!5443865 m!6464008))

(assert (=> b!5443865 m!6463940))

(declare-fun m!6464010 () Bool)

(assert (=> b!5443865 m!6464010))

(check-sat (not b!5443851) (not b!5443850) (not b!5443845) (not b!5443838) (not b!5443843) (not b!5443844) (not b!5443866) (not setNonEmpty!35605) (not b!5443861) (not b!5443849) (not b!5443840) (not b!5443854) (not b!5443848) (not b!5443846) (not b!5443859) (not b!5443839) (not b!5443857) (not b!5443855) (not b!5443862) (not start!570854) (not b!5443853) (not b!5443860) (not b!5443856) (not b!5443865) tp_is_empty!39783 (not b!5443863) (not b!5443867) (not b!5443837))
(check-sat)
