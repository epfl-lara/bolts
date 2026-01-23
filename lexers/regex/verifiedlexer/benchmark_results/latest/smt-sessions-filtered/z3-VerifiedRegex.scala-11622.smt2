; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!646914 () Bool)

(assert start!646914)

(declare-fun b!6618041 () Bool)

(assert (=> b!6618041 true))

(assert (=> b!6618041 true))

(declare-fun lambda!369754 () Int)

(declare-fun lambda!369753 () Int)

(assert (=> b!6618041 (not (= lambda!369754 lambda!369753))))

(assert (=> b!6618041 true))

(assert (=> b!6618041 true))

(declare-fun b!6618050 () Bool)

(assert (=> b!6618050 true))

(declare-fun b!6618040 () Bool)

(declare-fun e!4003637 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33252 0))(
  ( (C!33253 (val!26328 Int)) )
))
(declare-datatypes ((Regex!16491 0))(
  ( (ElementMatch!16491 (c!1220016 C!33252)) (Concat!25336 (regOne!33494 Regex!16491) (regTwo!33494 Regex!16491)) (EmptyExpr!16491) (Star!16491 (reg!16820 Regex!16491)) (EmptyLang!16491) (Union!16491 (regOne!33495 Regex!16491) (regTwo!33495 Regex!16491)) )
))
(declare-datatypes ((List!65772 0))(
  ( (Nil!65648) (Cons!65648 (h!72096 Regex!16491) (t!379430 List!65772)) )
))
(declare-datatypes ((Context!11750 0))(
  ( (Context!11751 (exprs!6375 List!65772)) )
))
(declare-fun lt!2417766 () (InoxSet Context!11750))

(declare-datatypes ((List!65773 0))(
  ( (Nil!65649) (Cons!65649 (h!72097 C!33252) (t!379431 List!65773)) )
))
(declare-fun s!2326 () List!65773)

(declare-fun matchZipper!2503 ((InoxSet Context!11750) List!65773) Bool)

(assert (=> b!6618040 (= e!4003637 (matchZipper!2503 lt!2417766 (t!379431 s!2326)))))

(declare-fun e!4003638 () Bool)

(declare-fun e!4003636 () Bool)

(assert (=> b!6618041 (= e!4003638 e!4003636)))

(declare-fun res!2713683 () Bool)

(assert (=> b!6618041 (=> res!2713683 e!4003636)))

(declare-fun lt!2417764 () Bool)

(declare-fun lt!2417761 () Bool)

(get-info :version)

(assert (=> b!6618041 (= res!2713683 (or (not (= lt!2417761 lt!2417764)) ((_ is Nil!65649) s!2326)))))

(declare-fun Exists!3561 (Int) Bool)

(assert (=> b!6618041 (= (Exists!3561 lambda!369753) (Exists!3561 lambda!369754))))

(declare-datatypes ((Unit!159319 0))(
  ( (Unit!159320) )
))
(declare-fun lt!2417760 () Unit!159319)

(declare-fun r!7292 () Regex!16491)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2098 (Regex!16491 Regex!16491 List!65773) Unit!159319)

(assert (=> b!6618041 (= lt!2417760 (lemmaExistCutMatchRandMatchRSpecEquivalent!2098 (regOne!33494 r!7292) (regTwo!33494 r!7292) s!2326))))

(assert (=> b!6618041 (= lt!2417764 (Exists!3561 lambda!369753))))

(declare-datatypes ((tuple2!66940 0))(
  ( (tuple2!66941 (_1!36773 List!65773) (_2!36773 List!65773)) )
))
(declare-datatypes ((Option!16382 0))(
  ( (None!16381) (Some!16381 (v!52570 tuple2!66940)) )
))
(declare-fun isDefined!13085 (Option!16382) Bool)

(declare-fun findConcatSeparation!2796 (Regex!16491 Regex!16491 List!65773 List!65773 List!65773) Option!16382)

(assert (=> b!6618041 (= lt!2417764 (isDefined!13085 (findConcatSeparation!2796 (regOne!33494 r!7292) (regTwo!33494 r!7292) Nil!65649 s!2326 s!2326)))))

(declare-fun lt!2417750 () Unit!159319)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2560 (Regex!16491 Regex!16491 List!65773) Unit!159319)

(assert (=> b!6618041 (= lt!2417750 (lemmaFindConcatSeparationEquivalentToExists!2560 (regOne!33494 r!7292) (regTwo!33494 r!7292) s!2326))))

(declare-fun b!6618042 () Bool)

(declare-fun e!4003643 () Unit!159319)

(declare-fun Unit!159321 () Unit!159319)

(assert (=> b!6618042 (= e!4003643 Unit!159321)))

(declare-fun b!6618043 () Bool)

(declare-fun res!2713680 () Bool)

(assert (=> b!6618043 (=> res!2713680 e!4003636)))

(declare-datatypes ((List!65774 0))(
  ( (Nil!65650) (Cons!65650 (h!72098 Context!11750) (t!379432 List!65774)) )
))
(declare-fun zl!343 () List!65774)

(declare-fun isEmpty!37935 (List!65772) Bool)

(assert (=> b!6618043 (= res!2713680 (isEmpty!37935 (t!379430 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun b!6618044 () Bool)

(declare-fun e!4003649 () Bool)

(declare-fun nullable!6484 (Regex!16491) Bool)

(assert (=> b!6618044 (= e!4003649 (nullable!6484 (regOne!33494 (regOne!33494 r!7292))))))

(declare-fun b!6618045 () Bool)

(declare-fun e!4003648 () Bool)

(declare-fun e!4003644 () Bool)

(assert (=> b!6618045 (= e!4003648 e!4003644)))

(declare-fun res!2713689 () Bool)

(assert (=> b!6618045 (=> res!2713689 e!4003644)))

(declare-fun lt!2417768 () Bool)

(assert (=> b!6618045 (= res!2713689 (not (= lt!2417761 lt!2417768)))))

(declare-fun matchRSpec!3592 (Regex!16491 List!65773) Bool)

(assert (=> b!6618045 (= lt!2417768 (matchRSpec!3592 (regTwo!33494 r!7292) s!2326))))

(declare-fun matchR!8674 (Regex!16491 List!65773) Bool)

(assert (=> b!6618045 (= lt!2417768 (matchR!8674 (regTwo!33494 r!7292) s!2326))))

(declare-fun lt!2417756 () Unit!159319)

(declare-fun mainMatchTheorem!3592 (Regex!16491 List!65773) Unit!159319)

(assert (=> b!6618045 (= lt!2417756 (mainMatchTheorem!3592 (regTwo!33494 r!7292) s!2326))))

(assert (=> b!6618045 (= (matchR!8674 (regOne!33494 r!7292) s!2326) (matchRSpec!3592 (regOne!33494 r!7292) s!2326))))

(declare-fun lt!2417770 () Unit!159319)

(assert (=> b!6618045 (= lt!2417770 (mainMatchTheorem!3592 (regOne!33494 r!7292) s!2326))))

(declare-fun b!6618046 () Bool)

(declare-fun e!4003640 () Bool)

(declare-fun tp!1822634 () Bool)

(assert (=> b!6618046 (= e!4003640 tp!1822634)))

(declare-fun b!6618047 () Bool)

(declare-fun e!4003645 () Bool)

(declare-fun tp!1822636 () Bool)

(declare-fun tp!1822642 () Bool)

(assert (=> b!6618047 (= e!4003645 (and tp!1822636 tp!1822642))))

(declare-fun b!6618048 () Bool)

(declare-fun e!4003642 () Bool)

(declare-fun validRegex!8227 (Regex!16491) Bool)

(declare-fun generalisedConcat!2088 (List!65772) Regex!16491)

(assert (=> b!6618048 (= e!4003642 (validRegex!8227 (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343))))))))

(declare-fun e!4003646 () Bool)

(assert (=> b!6618050 (= e!4003636 e!4003646)))

(declare-fun res!2713678 () Bool)

(assert (=> b!6618050 (=> res!2713678 e!4003646)))

(assert (=> b!6618050 (= res!2713678 (or (and ((_ is ElementMatch!16491) (regOne!33494 r!7292)) (= (c!1220016 (regOne!33494 r!7292)) (h!72097 s!2326))) ((_ is Union!16491) (regOne!33494 r!7292))))))

(declare-fun lt!2417762 () Unit!159319)

(assert (=> b!6618050 (= lt!2417762 e!4003643)))

(declare-fun c!1220015 () Bool)

(assert (=> b!6618050 (= c!1220015 (nullable!6484 (h!72096 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11750))

(declare-fun lambda!369755 () Int)

(declare-fun flatMap!1996 ((InoxSet Context!11750) Int) (InoxSet Context!11750))

(declare-fun derivationStepZipperUp!1665 (Context!11750 C!33252) (InoxSet Context!11750))

(assert (=> b!6618050 (= (flatMap!1996 z!1189 lambda!369755) (derivationStepZipperUp!1665 (h!72098 zl!343) (h!72097 s!2326)))))

(declare-fun lt!2417767 () Unit!159319)

(declare-fun lemmaFlatMapOnSingletonSet!1522 ((InoxSet Context!11750) Context!11750 Int) Unit!159319)

(assert (=> b!6618050 (= lt!2417767 (lemmaFlatMapOnSingletonSet!1522 z!1189 (h!72098 zl!343) lambda!369755))))

(declare-fun lt!2417749 () Context!11750)

(assert (=> b!6618050 (= lt!2417766 (derivationStepZipperUp!1665 lt!2417749 (h!72097 s!2326)))))

(declare-fun lt!2417751 () (InoxSet Context!11750))

(declare-fun derivationStepZipperDown!1739 (Regex!16491 Context!11750 C!33252) (InoxSet Context!11750))

(assert (=> b!6618050 (= lt!2417751 (derivationStepZipperDown!1739 (h!72096 (exprs!6375 (h!72098 zl!343))) lt!2417749 (h!72097 s!2326)))))

(assert (=> b!6618050 (= lt!2417749 (Context!11751 (t!379430 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun lt!2417757 () (InoxSet Context!11750))

(assert (=> b!6618050 (= lt!2417757 (derivationStepZipperUp!1665 (Context!11751 (Cons!65648 (h!72096 (exprs!6375 (h!72098 zl!343))) (t!379430 (exprs!6375 (h!72098 zl!343))))) (h!72097 s!2326)))))

(declare-fun b!6618051 () Bool)

(declare-fun res!2713681 () Bool)

(assert (=> b!6618051 (=> res!2713681 e!4003638)))

(assert (=> b!6618051 (= res!2713681 (not (= r!7292 (generalisedConcat!2088 (exprs!6375 (h!72098 zl!343))))))))

(declare-fun b!6618052 () Bool)

(declare-fun e!4003635 () Bool)

(assert (=> b!6618052 (= e!4003635 (not e!4003638))))

(declare-fun res!2713675 () Bool)

(assert (=> b!6618052 (=> res!2713675 e!4003638)))

(assert (=> b!6618052 (= res!2713675 (not ((_ is Cons!65650) zl!343)))))

(assert (=> b!6618052 (= lt!2417761 (matchRSpec!3592 r!7292 s!2326))))

(assert (=> b!6618052 (= lt!2417761 (matchR!8674 r!7292 s!2326))))

(declare-fun lt!2417759 () Unit!159319)

(assert (=> b!6618052 (= lt!2417759 (mainMatchTheorem!3592 r!7292 s!2326))))

(declare-fun b!6618053 () Bool)

(declare-fun e!4003639 () Bool)

(assert (=> b!6618053 (= e!4003644 e!4003639)))

(declare-fun res!2713677 () Bool)

(assert (=> b!6618053 (=> res!2713677 e!4003639)))

(declare-fun lt!2417763 () (InoxSet Context!11750))

(declare-fun derivationStepZipper!2457 ((InoxSet Context!11750) C!33252) (InoxSet Context!11750))

(assert (=> b!6618053 (= res!2713677 (not (= lt!2417766 (derivationStepZipper!2457 lt!2417763 (h!72097 s!2326)))))))

(assert (=> b!6618053 (= (flatMap!1996 lt!2417763 lambda!369755) (derivationStepZipperUp!1665 lt!2417749 (h!72097 s!2326)))))

(declare-fun lt!2417752 () Unit!159319)

(assert (=> b!6618053 (= lt!2417752 (lemmaFlatMapOnSingletonSet!1522 lt!2417763 lt!2417749 lambda!369755))))

(assert (=> b!6618053 (= lt!2417763 (store ((as const (Array Context!11750 Bool)) false) lt!2417749 true))))

(declare-fun b!6618054 () Bool)

(declare-fun res!2713690 () Bool)

(assert (=> b!6618054 (=> res!2713690 e!4003638)))

(assert (=> b!6618054 (= res!2713690 (not ((_ is Cons!65648) (exprs!6375 (h!72098 zl!343)))))))

(declare-fun b!6618055 () Bool)

(declare-fun res!2713692 () Bool)

(assert (=> b!6618055 (=> res!2713692 e!4003638)))

(declare-fun isEmpty!37936 (List!65774) Bool)

(assert (=> b!6618055 (= res!2713692 (not (isEmpty!37936 (t!379432 zl!343))))))

(declare-fun b!6618056 () Bool)

(declare-fun tp_is_empty!42235 () Bool)

(assert (=> b!6618056 (= e!4003645 tp_is_empty!42235)))

(declare-fun b!6618057 () Bool)

(declare-fun e!4003641 () Bool)

(declare-fun tp!1822640 () Bool)

(assert (=> b!6618057 (= e!4003641 (and tp_is_empty!42235 tp!1822640))))

(declare-fun b!6618058 () Bool)

(declare-fun tp!1822638 () Bool)

(declare-fun tp!1822635 () Bool)

(assert (=> b!6618058 (= e!4003645 (and tp!1822638 tp!1822635))))

(declare-fun setRes!45238 () Bool)

(declare-fun e!4003647 () Bool)

(declare-fun setElem!45238 () Context!11750)

(declare-fun setNonEmpty!45238 () Bool)

(declare-fun tp!1822639 () Bool)

(declare-fun inv!84474 (Context!11750) Bool)

(assert (=> setNonEmpty!45238 (= setRes!45238 (and tp!1822639 (inv!84474 setElem!45238) e!4003647))))

(declare-fun setRest!45238 () (InoxSet Context!11750))

(assert (=> setNonEmpty!45238 (= z!1189 ((_ map or) (store ((as const (Array Context!11750 Bool)) false) setElem!45238 true) setRest!45238))))

(declare-fun b!6618059 () Bool)

(declare-fun res!2713688 () Bool)

(assert (=> b!6618059 (=> (not res!2713688) (not e!4003635))))

(declare-fun unfocusZipper!2233 (List!65774) Regex!16491)

(assert (=> b!6618059 (= res!2713688 (= r!7292 (unfocusZipper!2233 zl!343)))))

(declare-fun b!6618060 () Bool)

(declare-fun res!2713684 () Bool)

(assert (=> b!6618060 (=> res!2713684 e!4003638)))

(declare-fun generalisedUnion!2335 (List!65772) Regex!16491)

(declare-fun unfocusZipperList!1912 (List!65774) List!65772)

(assert (=> b!6618060 (= res!2713684 (not (= r!7292 (generalisedUnion!2335 (unfocusZipperList!1912 zl!343)))))))

(declare-fun setIsEmpty!45238 () Bool)

(assert (=> setIsEmpty!45238 setRes!45238))

(declare-fun tp!1822637 () Bool)

(declare-fun e!4003650 () Bool)

(declare-fun b!6618061 () Bool)

(assert (=> b!6618061 (= e!4003650 (and (inv!84474 (h!72098 zl!343)) e!4003640 tp!1822637))))

(declare-fun b!6618062 () Bool)

(declare-fun tp!1822643 () Bool)

(assert (=> b!6618062 (= e!4003645 tp!1822643)))

(declare-fun b!6618063 () Bool)

(declare-fun res!2713674 () Bool)

(assert (=> b!6618063 (=> res!2713674 e!4003646)))

(assert (=> b!6618063 (= res!2713674 e!4003649)))

(declare-fun res!2713682 () Bool)

(assert (=> b!6618063 (=> (not res!2713682) (not e!4003649))))

(assert (=> b!6618063 (= res!2713682 ((_ is Concat!25336) (regOne!33494 r!7292)))))

(declare-fun b!6618064 () Bool)

(assert (=> b!6618064 (= e!4003646 e!4003648)))

(declare-fun res!2713679 () Bool)

(assert (=> b!6618064 (=> res!2713679 e!4003648)))

(assert (=> b!6618064 (= res!2713679 (or (not (= lt!2417751 ((as const (Array Context!11750 Bool)) false))) (not (= r!7292 (Concat!25336 (regOne!33494 r!7292) (regTwo!33494 r!7292)))) (not (= (regOne!33494 r!7292) EmptyExpr!16491))))))

(assert (=> b!6618064 (not (matchZipper!2503 lt!2417751 (t!379431 s!2326)))))

(declare-fun lt!2417765 () Unit!159319)

(declare-fun lemmaEmptyZipperMatchesNothing!86 ((InoxSet Context!11750) List!65773) Unit!159319)

(assert (=> b!6618064 (= lt!2417765 (lemmaEmptyZipperMatchesNothing!86 lt!2417751 (t!379431 s!2326)))))

(declare-fun res!2713676 () Bool)

(assert (=> start!646914 (=> (not res!2713676) (not e!4003635))))

(assert (=> start!646914 (= res!2713676 (validRegex!8227 r!7292))))

(assert (=> start!646914 e!4003635))

(assert (=> start!646914 e!4003645))

(declare-fun condSetEmpty!45238 () Bool)

(assert (=> start!646914 (= condSetEmpty!45238 (= z!1189 ((as const (Array Context!11750 Bool)) false)))))

(assert (=> start!646914 setRes!45238))

(assert (=> start!646914 e!4003650))

(assert (=> start!646914 e!4003641))

(declare-fun b!6618049 () Bool)

(declare-fun res!2713687 () Bool)

(assert (=> b!6618049 (=> res!2713687 e!4003646)))

(assert (=> b!6618049 (= res!2713687 (or ((_ is Concat!25336) (regOne!33494 r!7292)) ((_ is Star!16491) (regOne!33494 r!7292)) (not ((_ is EmptyExpr!16491) (regOne!33494 r!7292)))))))

(declare-fun b!6618065 () Bool)

(declare-fun e!4003634 () Bool)

(assert (=> b!6618065 (= e!4003639 e!4003634)))

(declare-fun res!2713673 () Bool)

(assert (=> b!6618065 (=> res!2713673 e!4003634)))

(declare-fun lt!2417769 () (InoxSet Context!11750))

(assert (=> b!6618065 (= res!2713673 (not (= (derivationStepZipper!2457 z!1189 (h!72097 s!2326)) lt!2417769)))))

(assert (=> b!6618065 (= lt!2417769 ((_ map or) lt!2417751 lt!2417766))))

(declare-fun b!6618066 () Bool)

(declare-fun res!2713672 () Bool)

(assert (=> b!6618066 (=> res!2713672 e!4003638)))

(assert (=> b!6618066 (= res!2713672 (or ((_ is EmptyExpr!16491) r!7292) ((_ is EmptyLang!16491) r!7292) ((_ is ElementMatch!16491) r!7292) ((_ is Union!16491) r!7292) (not ((_ is Concat!25336) r!7292))))))

(declare-fun b!6618067 () Bool)

(declare-fun tp!1822641 () Bool)

(assert (=> b!6618067 (= e!4003647 tp!1822641)))

(declare-fun b!6618068 () Bool)

(declare-fun res!2713686 () Bool)

(assert (=> b!6618068 (=> (not res!2713686) (not e!4003635))))

(declare-fun toList!10275 ((InoxSet Context!11750)) List!65774)

(assert (=> b!6618068 (= res!2713686 (= (toList!10275 z!1189) zl!343))))

(declare-fun b!6618069 () Bool)

(declare-fun Unit!159322 () Unit!159319)

(assert (=> b!6618069 (= e!4003643 Unit!159322)))

(declare-fun lt!2417758 () Unit!159319)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1322 ((InoxSet Context!11750) (InoxSet Context!11750) List!65773) Unit!159319)

(assert (=> b!6618069 (= lt!2417758 (lemmaZipperConcatMatchesSameAsBothZippers!1322 lt!2417751 lt!2417766 (t!379431 s!2326)))))

(declare-fun res!2713691 () Bool)

(assert (=> b!6618069 (= res!2713691 (matchZipper!2503 lt!2417751 (t!379431 s!2326)))))

(assert (=> b!6618069 (=> res!2713691 e!4003637)))

(assert (=> b!6618069 (= (matchZipper!2503 ((_ map or) lt!2417751 lt!2417766) (t!379431 s!2326)) e!4003637)))

(declare-fun b!6618070 () Bool)

(assert (=> b!6618070 (= e!4003634 e!4003642)))

(declare-fun res!2713685 () Bool)

(assert (=> b!6618070 (=> res!2713685 e!4003642)))

(declare-fun lt!2417753 () Bool)

(assert (=> b!6618070 (= res!2713685 (not (= (matchZipper!2503 z!1189 s!2326) lt!2417753)))))

(declare-fun lt!2417755 () Bool)

(assert (=> b!6618070 (= lt!2417755 lt!2417753)))

(assert (=> b!6618070 (= lt!2417753 (matchZipper!2503 lt!2417766 (t!379431 s!2326)))))

(assert (=> b!6618070 (= lt!2417755 (matchZipper!2503 lt!2417769 (t!379431 s!2326)))))

(declare-fun lt!2417754 () Unit!159319)

(assert (=> b!6618070 (= lt!2417754 (lemmaZipperConcatMatchesSameAsBothZippers!1322 lt!2417751 lt!2417766 (t!379431 s!2326)))))

(assert (= (and start!646914 res!2713676) b!6618068))

(assert (= (and b!6618068 res!2713686) b!6618059))

(assert (= (and b!6618059 res!2713688) b!6618052))

(assert (= (and b!6618052 (not res!2713675)) b!6618055))

(assert (= (and b!6618055 (not res!2713692)) b!6618051))

(assert (= (and b!6618051 (not res!2713681)) b!6618054))

(assert (= (and b!6618054 (not res!2713690)) b!6618060))

(assert (= (and b!6618060 (not res!2713684)) b!6618066))

(assert (= (and b!6618066 (not res!2713672)) b!6618041))

(assert (= (and b!6618041 (not res!2713683)) b!6618043))

(assert (= (and b!6618043 (not res!2713680)) b!6618050))

(assert (= (and b!6618050 c!1220015) b!6618069))

(assert (= (and b!6618050 (not c!1220015)) b!6618042))

(assert (= (and b!6618069 (not res!2713691)) b!6618040))

(assert (= (and b!6618050 (not res!2713678)) b!6618063))

(assert (= (and b!6618063 res!2713682) b!6618044))

(assert (= (and b!6618063 (not res!2713674)) b!6618049))

(assert (= (and b!6618049 (not res!2713687)) b!6618064))

(assert (= (and b!6618064 (not res!2713679)) b!6618045))

(assert (= (and b!6618045 (not res!2713689)) b!6618053))

(assert (= (and b!6618053 (not res!2713677)) b!6618065))

(assert (= (and b!6618065 (not res!2713673)) b!6618070))

(assert (= (and b!6618070 (not res!2713685)) b!6618048))

(assert (= (and start!646914 ((_ is ElementMatch!16491) r!7292)) b!6618056))

(assert (= (and start!646914 ((_ is Concat!25336) r!7292)) b!6618047))

(assert (= (and start!646914 ((_ is Star!16491) r!7292)) b!6618062))

(assert (= (and start!646914 ((_ is Union!16491) r!7292)) b!6618058))

(assert (= (and start!646914 condSetEmpty!45238) setIsEmpty!45238))

(assert (= (and start!646914 (not condSetEmpty!45238)) setNonEmpty!45238))

(assert (= setNonEmpty!45238 b!6618067))

(assert (= b!6618061 b!6618046))

(assert (= (and start!646914 ((_ is Cons!65650) zl!343)) b!6618061))

(assert (= (and start!646914 ((_ is Cons!65649) s!2326)) b!6618057))

(declare-fun m!7390426 () Bool)

(assert (=> b!6618043 m!7390426))

(declare-fun m!7390428 () Bool)

(assert (=> b!6618050 m!7390428))

(declare-fun m!7390430 () Bool)

(assert (=> b!6618050 m!7390430))

(declare-fun m!7390432 () Bool)

(assert (=> b!6618050 m!7390432))

(declare-fun m!7390434 () Bool)

(assert (=> b!6618050 m!7390434))

(declare-fun m!7390436 () Bool)

(assert (=> b!6618050 m!7390436))

(declare-fun m!7390438 () Bool)

(assert (=> b!6618050 m!7390438))

(declare-fun m!7390440 () Bool)

(assert (=> b!6618050 m!7390440))

(declare-fun m!7390442 () Bool)

(assert (=> b!6618041 m!7390442))

(declare-fun m!7390444 () Bool)

(assert (=> b!6618041 m!7390444))

(declare-fun m!7390446 () Bool)

(assert (=> b!6618041 m!7390446))

(assert (=> b!6618041 m!7390446))

(declare-fun m!7390448 () Bool)

(assert (=> b!6618041 m!7390448))

(declare-fun m!7390450 () Bool)

(assert (=> b!6618041 m!7390450))

(assert (=> b!6618041 m!7390442))

(declare-fun m!7390452 () Bool)

(assert (=> b!6618041 m!7390452))

(declare-fun m!7390454 () Bool)

(assert (=> b!6618065 m!7390454))

(declare-fun m!7390456 () Bool)

(assert (=> b!6618044 m!7390456))

(declare-fun m!7390458 () Bool)

(assert (=> b!6618051 m!7390458))

(declare-fun m!7390460 () Bool)

(assert (=> b!6618045 m!7390460))

(declare-fun m!7390462 () Bool)

(assert (=> b!6618045 m!7390462))

(declare-fun m!7390464 () Bool)

(assert (=> b!6618045 m!7390464))

(declare-fun m!7390466 () Bool)

(assert (=> b!6618045 m!7390466))

(declare-fun m!7390468 () Bool)

(assert (=> b!6618045 m!7390468))

(declare-fun m!7390470 () Bool)

(assert (=> b!6618045 m!7390470))

(declare-fun m!7390472 () Bool)

(assert (=> b!6618048 m!7390472))

(assert (=> b!6618048 m!7390472))

(declare-fun m!7390474 () Bool)

(assert (=> b!6618048 m!7390474))

(assert (=> b!6618053 m!7390430))

(declare-fun m!7390476 () Bool)

(assert (=> b!6618053 m!7390476))

(declare-fun m!7390478 () Bool)

(assert (=> b!6618053 m!7390478))

(declare-fun m!7390480 () Bool)

(assert (=> b!6618053 m!7390480))

(declare-fun m!7390482 () Bool)

(assert (=> b!6618053 m!7390482))

(declare-fun m!7390484 () Bool)

(assert (=> b!6618064 m!7390484))

(declare-fun m!7390486 () Bool)

(assert (=> b!6618064 m!7390486))

(declare-fun m!7390488 () Bool)

(assert (=> b!6618070 m!7390488))

(declare-fun m!7390490 () Bool)

(assert (=> b!6618070 m!7390490))

(declare-fun m!7390492 () Bool)

(assert (=> b!6618070 m!7390492))

(declare-fun m!7390494 () Bool)

(assert (=> b!6618070 m!7390494))

(assert (=> b!6618040 m!7390490))

(declare-fun m!7390496 () Bool)

(assert (=> b!6618055 m!7390496))

(declare-fun m!7390498 () Bool)

(assert (=> b!6618059 m!7390498))

(declare-fun m!7390500 () Bool)

(assert (=> setNonEmpty!45238 m!7390500))

(declare-fun m!7390502 () Bool)

(assert (=> b!6618052 m!7390502))

(declare-fun m!7390504 () Bool)

(assert (=> b!6618052 m!7390504))

(declare-fun m!7390506 () Bool)

(assert (=> b!6618052 m!7390506))

(assert (=> b!6618069 m!7390494))

(assert (=> b!6618069 m!7390484))

(declare-fun m!7390508 () Bool)

(assert (=> b!6618069 m!7390508))

(declare-fun m!7390510 () Bool)

(assert (=> b!6618061 m!7390510))

(declare-fun m!7390512 () Bool)

(assert (=> b!6618068 m!7390512))

(declare-fun m!7390514 () Bool)

(assert (=> start!646914 m!7390514))

(declare-fun m!7390516 () Bool)

(assert (=> b!6618060 m!7390516))

(assert (=> b!6618060 m!7390516))

(declare-fun m!7390518 () Bool)

(assert (=> b!6618060 m!7390518))

(check-sat (not b!6618069) (not b!6618047) (not b!6618068) (not b!6618050) (not b!6618064) (not setNonEmpty!45238) (not b!6618059) (not b!6618044) (not b!6618067) (not b!6618046) (not b!6618057) (not b!6618045) (not b!6618040) (not b!6618061) (not b!6618065) (not b!6618052) (not b!6618043) (not b!6618041) (not start!646914) (not b!6618048) (not b!6618051) (not b!6618055) (not b!6618053) (not b!6618062) (not b!6618060) (not b!6618070) tp_is_empty!42235 (not b!6618058))
(check-sat)
(get-model)

(declare-fun e!4003653 () Bool)

(declare-fun d!2074565 () Bool)

(assert (=> d!2074565 (= (matchZipper!2503 ((_ map or) lt!2417751 lt!2417766) (t!379431 s!2326)) e!4003653)))

(declare-fun res!2713695 () Bool)

(assert (=> d!2074565 (=> res!2713695 e!4003653)))

(assert (=> d!2074565 (= res!2713695 (matchZipper!2503 lt!2417751 (t!379431 s!2326)))))

(declare-fun lt!2417773 () Unit!159319)

(declare-fun choose!49457 ((InoxSet Context!11750) (InoxSet Context!11750) List!65773) Unit!159319)

(assert (=> d!2074565 (= lt!2417773 (choose!49457 lt!2417751 lt!2417766 (t!379431 s!2326)))))

(assert (=> d!2074565 (= (lemmaZipperConcatMatchesSameAsBothZippers!1322 lt!2417751 lt!2417766 (t!379431 s!2326)) lt!2417773)))

(declare-fun b!6618079 () Bool)

(assert (=> b!6618079 (= e!4003653 (matchZipper!2503 lt!2417766 (t!379431 s!2326)))))

(assert (= (and d!2074565 (not res!2713695)) b!6618079))

(assert (=> d!2074565 m!7390508))

(assert (=> d!2074565 m!7390484))

(declare-fun m!7390520 () Bool)

(assert (=> d!2074565 m!7390520))

(assert (=> b!6618079 m!7390490))

(assert (=> b!6618069 d!2074565))

(declare-fun d!2074569 () Bool)

(declare-fun c!1220027 () Bool)

(declare-fun isEmpty!37938 (List!65773) Bool)

(assert (=> d!2074569 (= c!1220027 (isEmpty!37938 (t!379431 s!2326)))))

(declare-fun e!4003672 () Bool)

(assert (=> d!2074569 (= (matchZipper!2503 lt!2417751 (t!379431 s!2326)) e!4003672)))

(declare-fun b!6618112 () Bool)

(declare-fun nullableZipper!2231 ((InoxSet Context!11750)) Bool)

(assert (=> b!6618112 (= e!4003672 (nullableZipper!2231 lt!2417751))))

(declare-fun b!6618113 () Bool)

(declare-fun head!13424 (List!65773) C!33252)

(declare-fun tail!12509 (List!65773) List!65773)

(assert (=> b!6618113 (= e!4003672 (matchZipper!2503 (derivationStepZipper!2457 lt!2417751 (head!13424 (t!379431 s!2326))) (tail!12509 (t!379431 s!2326))))))

(assert (= (and d!2074569 c!1220027) b!6618112))

(assert (= (and d!2074569 (not c!1220027)) b!6618113))

(declare-fun m!7390522 () Bool)

(assert (=> d!2074569 m!7390522))

(declare-fun m!7390524 () Bool)

(assert (=> b!6618112 m!7390524))

(declare-fun m!7390526 () Bool)

(assert (=> b!6618113 m!7390526))

(assert (=> b!6618113 m!7390526))

(declare-fun m!7390528 () Bool)

(assert (=> b!6618113 m!7390528))

(declare-fun m!7390530 () Bool)

(assert (=> b!6618113 m!7390530))

(assert (=> b!6618113 m!7390528))

(assert (=> b!6618113 m!7390530))

(declare-fun m!7390532 () Bool)

(assert (=> b!6618113 m!7390532))

(assert (=> b!6618069 d!2074569))

(declare-fun d!2074571 () Bool)

(declare-fun c!1220028 () Bool)

(assert (=> d!2074571 (= c!1220028 (isEmpty!37938 (t!379431 s!2326)))))

(declare-fun e!4003675 () Bool)

(assert (=> d!2074571 (= (matchZipper!2503 ((_ map or) lt!2417751 lt!2417766) (t!379431 s!2326)) e!4003675)))

(declare-fun b!6618116 () Bool)

(assert (=> b!6618116 (= e!4003675 (nullableZipper!2231 ((_ map or) lt!2417751 lt!2417766)))))

(declare-fun b!6618117 () Bool)

(assert (=> b!6618117 (= e!4003675 (matchZipper!2503 (derivationStepZipper!2457 ((_ map or) lt!2417751 lt!2417766) (head!13424 (t!379431 s!2326))) (tail!12509 (t!379431 s!2326))))))

(assert (= (and d!2074571 c!1220028) b!6618116))

(assert (= (and d!2074571 (not c!1220028)) b!6618117))

(assert (=> d!2074571 m!7390522))

(declare-fun m!7390534 () Bool)

(assert (=> b!6618116 m!7390534))

(assert (=> b!6618117 m!7390526))

(assert (=> b!6618117 m!7390526))

(declare-fun m!7390536 () Bool)

(assert (=> b!6618117 m!7390536))

(assert (=> b!6618117 m!7390530))

(assert (=> b!6618117 m!7390536))

(assert (=> b!6618117 m!7390530))

(declare-fun m!7390538 () Bool)

(assert (=> b!6618117 m!7390538))

(assert (=> b!6618069 d!2074571))

(declare-fun d!2074573 () Bool)

(declare-fun lt!2417776 () Regex!16491)

(assert (=> d!2074573 (validRegex!8227 lt!2417776)))

(assert (=> d!2074573 (= lt!2417776 (generalisedUnion!2335 (unfocusZipperList!1912 zl!343)))))

(assert (=> d!2074573 (= (unfocusZipper!2233 zl!343) lt!2417776)))

(declare-fun bs!1697044 () Bool)

(assert (= bs!1697044 d!2074573))

(declare-fun m!7390540 () Bool)

(assert (=> bs!1697044 m!7390540))

(assert (=> bs!1697044 m!7390516))

(assert (=> bs!1697044 m!7390516))

(assert (=> bs!1697044 m!7390518))

(assert (=> b!6618059 d!2074573))

(declare-fun b!6618177 () Bool)

(declare-fun res!2713741 () Bool)

(declare-fun e!4003713 () Bool)

(assert (=> b!6618177 (=> (not res!2713741) (not e!4003713))))

(declare-fun call!579982 () Bool)

(assert (=> b!6618177 (= res!2713741 call!579982)))

(declare-fun e!4003712 () Bool)

(assert (=> b!6618177 (= e!4003712 e!4003713)))

(declare-fun b!6618178 () Bool)

(declare-fun res!2713744 () Bool)

(declare-fun e!4003714 () Bool)

(assert (=> b!6618178 (=> res!2713744 e!4003714)))

(assert (=> b!6618178 (= res!2713744 (not ((_ is Concat!25336) r!7292)))))

(assert (=> b!6618178 (= e!4003712 e!4003714)))

(declare-fun b!6618179 () Bool)

(declare-fun e!4003711 () Bool)

(assert (=> b!6618179 (= e!4003711 e!4003712)))

(declare-fun c!1220043 () Bool)

(assert (=> b!6618179 (= c!1220043 ((_ is Union!16491) r!7292))))

(declare-fun b!6618180 () Bool)

(declare-fun call!579983 () Bool)

(assert (=> b!6618180 (= e!4003713 call!579983)))

(declare-fun b!6618181 () Bool)

(declare-fun e!4003716 () Bool)

(declare-fun call!579984 () Bool)

(assert (=> b!6618181 (= e!4003716 call!579984)))

(declare-fun b!6618182 () Bool)

(declare-fun e!4003717 () Bool)

(assert (=> b!6618182 (= e!4003717 call!579983)))

(declare-fun b!6618183 () Bool)

(declare-fun e!4003715 () Bool)

(assert (=> b!6618183 (= e!4003715 e!4003711)))

(declare-fun c!1220044 () Bool)

(assert (=> b!6618183 (= c!1220044 ((_ is Star!16491) r!7292))))

(declare-fun b!6618184 () Bool)

(assert (=> b!6618184 (= e!4003714 e!4003717)))

(declare-fun res!2713745 () Bool)

(assert (=> b!6618184 (=> (not res!2713745) (not e!4003717))))

(assert (=> b!6618184 (= res!2713745 call!579982)))

(declare-fun bm!579978 () Bool)

(assert (=> bm!579978 (= call!579984 (validRegex!8227 (ite c!1220044 (reg!16820 r!7292) (ite c!1220043 (regTwo!33495 r!7292) (regTwo!33494 r!7292)))))))

(declare-fun b!6618185 () Bool)

(assert (=> b!6618185 (= e!4003711 e!4003716)))

(declare-fun res!2713743 () Bool)

(assert (=> b!6618185 (= res!2713743 (not (nullable!6484 (reg!16820 r!7292))))))

(assert (=> b!6618185 (=> (not res!2713743) (not e!4003716))))

(declare-fun bm!579979 () Bool)

(assert (=> bm!579979 (= call!579982 (validRegex!8227 (ite c!1220043 (regOne!33495 r!7292) (regOne!33494 r!7292))))))

(declare-fun d!2074575 () Bool)

(declare-fun res!2713742 () Bool)

(assert (=> d!2074575 (=> res!2713742 e!4003715)))

(assert (=> d!2074575 (= res!2713742 ((_ is ElementMatch!16491) r!7292))))

(assert (=> d!2074575 (= (validRegex!8227 r!7292) e!4003715)))

(declare-fun bm!579977 () Bool)

(assert (=> bm!579977 (= call!579983 call!579984)))

(assert (= (and d!2074575 (not res!2713742)) b!6618183))

(assert (= (and b!6618183 c!1220044) b!6618185))

(assert (= (and b!6618183 (not c!1220044)) b!6618179))

(assert (= (and b!6618185 res!2713743) b!6618181))

(assert (= (and b!6618179 c!1220043) b!6618177))

(assert (= (and b!6618179 (not c!1220043)) b!6618178))

(assert (= (and b!6618177 res!2713741) b!6618180))

(assert (= (and b!6618178 (not res!2713744)) b!6618184))

(assert (= (and b!6618184 res!2713745) b!6618182))

(assert (= (or b!6618180 b!6618182) bm!579977))

(assert (= (or b!6618177 b!6618184) bm!579979))

(assert (= (or b!6618181 bm!579977) bm!579978))

(declare-fun m!7390554 () Bool)

(assert (=> bm!579978 m!7390554))

(declare-fun m!7390556 () Bool)

(assert (=> b!6618185 m!7390556))

(declare-fun m!7390558 () Bool)

(assert (=> bm!579979 m!7390558))

(assert (=> start!646914 d!2074575))

(declare-fun d!2074581 () Bool)

(declare-fun e!4003734 () Bool)

(assert (=> d!2074581 e!4003734))

(declare-fun res!2713759 () Bool)

(assert (=> d!2074581 (=> (not res!2713759) (not e!4003734))))

(declare-fun lt!2417785 () List!65774)

(declare-fun noDuplicate!2291 (List!65774) Bool)

(assert (=> d!2074581 (= res!2713759 (noDuplicate!2291 lt!2417785))))

(declare-fun choose!49458 ((InoxSet Context!11750)) List!65774)

(assert (=> d!2074581 (= lt!2417785 (choose!49458 z!1189))))

(assert (=> d!2074581 (= (toList!10275 z!1189) lt!2417785)))

(declare-fun b!6618213 () Bool)

(declare-fun content!12669 (List!65774) (InoxSet Context!11750))

(assert (=> b!6618213 (= e!4003734 (= (content!12669 lt!2417785) z!1189))))

(assert (= (and d!2074581 res!2713759) b!6618213))

(declare-fun m!7390572 () Bool)

(assert (=> d!2074581 m!7390572))

(declare-fun m!7390574 () Bool)

(assert (=> d!2074581 m!7390574))

(declare-fun m!7390576 () Bool)

(assert (=> b!6618213 m!7390576))

(assert (=> b!6618068 d!2074581))

(declare-fun b!6618290 () Bool)

(declare-fun e!4003783 () Regex!16491)

(assert (=> b!6618290 (= e!4003783 (h!72096 (exprs!6375 (h!72098 zl!343))))))

(declare-fun b!6618291 () Bool)

(declare-fun e!4003781 () Bool)

(declare-fun e!4003779 () Bool)

(assert (=> b!6618291 (= e!4003781 e!4003779)))

(declare-fun c!1220083 () Bool)

(assert (=> b!6618291 (= c!1220083 (isEmpty!37935 (exprs!6375 (h!72098 zl!343))))))

(declare-fun d!2074585 () Bool)

(assert (=> d!2074585 e!4003781))

(declare-fun res!2713779 () Bool)

(assert (=> d!2074585 (=> (not res!2713779) (not e!4003781))))

(declare-fun lt!2417793 () Regex!16491)

(assert (=> d!2074585 (= res!2713779 (validRegex!8227 lt!2417793))))

(assert (=> d!2074585 (= lt!2417793 e!4003783)))

(declare-fun c!1220081 () Bool)

(declare-fun e!4003782 () Bool)

(assert (=> d!2074585 (= c!1220081 e!4003782)))

(declare-fun res!2713778 () Bool)

(assert (=> d!2074585 (=> (not res!2713778) (not e!4003782))))

(assert (=> d!2074585 (= res!2713778 ((_ is Cons!65648) (exprs!6375 (h!72098 zl!343))))))

(declare-fun lambda!369766 () Int)

(declare-fun forall!15686 (List!65772 Int) Bool)

(assert (=> d!2074585 (forall!15686 (exprs!6375 (h!72098 zl!343)) lambda!369766)))

(assert (=> d!2074585 (= (generalisedConcat!2088 (exprs!6375 (h!72098 zl!343))) lt!2417793)))

(declare-fun b!6618292 () Bool)

(declare-fun e!4003780 () Regex!16491)

(assert (=> b!6618292 (= e!4003783 e!4003780)))

(declare-fun c!1220084 () Bool)

(assert (=> b!6618292 (= c!1220084 ((_ is Cons!65648) (exprs!6375 (h!72098 zl!343))))))

(declare-fun b!6618293 () Bool)

(declare-fun e!4003778 () Bool)

(declare-fun isConcat!1387 (Regex!16491) Bool)

(assert (=> b!6618293 (= e!4003778 (isConcat!1387 lt!2417793))))

(declare-fun b!6618294 () Bool)

(declare-fun head!13425 (List!65772) Regex!16491)

(assert (=> b!6618294 (= e!4003778 (= lt!2417793 (head!13425 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun b!6618295 () Bool)

(assert (=> b!6618295 (= e!4003779 e!4003778)))

(declare-fun c!1220082 () Bool)

(declare-fun tail!12510 (List!65772) List!65772)

(assert (=> b!6618295 (= c!1220082 (isEmpty!37935 (tail!12510 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun b!6618296 () Bool)

(assert (=> b!6618296 (= e!4003780 EmptyExpr!16491)))

(declare-fun b!6618297 () Bool)

(assert (=> b!6618297 (= e!4003782 (isEmpty!37935 (t!379430 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun b!6618298 () Bool)

(declare-fun isEmptyExpr!1864 (Regex!16491) Bool)

(assert (=> b!6618298 (= e!4003779 (isEmptyExpr!1864 lt!2417793))))

(declare-fun b!6618299 () Bool)

(assert (=> b!6618299 (= e!4003780 (Concat!25336 (h!72096 (exprs!6375 (h!72098 zl!343))) (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343))))))))

(assert (= (and d!2074585 res!2713778) b!6618297))

(assert (= (and d!2074585 c!1220081) b!6618290))

(assert (= (and d!2074585 (not c!1220081)) b!6618292))

(assert (= (and b!6618292 c!1220084) b!6618299))

(assert (= (and b!6618292 (not c!1220084)) b!6618296))

(assert (= (and d!2074585 res!2713779) b!6618291))

(assert (= (and b!6618291 c!1220083) b!6618298))

(assert (= (and b!6618291 (not c!1220083)) b!6618295))

(assert (= (and b!6618295 c!1220082) b!6618294))

(assert (= (and b!6618295 (not c!1220082)) b!6618293))

(declare-fun m!7390614 () Bool)

(assert (=> b!6618291 m!7390614))

(declare-fun m!7390616 () Bool)

(assert (=> b!6618294 m!7390616))

(declare-fun m!7390618 () Bool)

(assert (=> d!2074585 m!7390618))

(declare-fun m!7390620 () Bool)

(assert (=> d!2074585 m!7390620))

(assert (=> b!6618297 m!7390426))

(declare-fun m!7390622 () Bool)

(assert (=> b!6618298 m!7390622))

(declare-fun m!7390624 () Bool)

(assert (=> b!6618293 m!7390624))

(declare-fun m!7390626 () Bool)

(assert (=> b!6618295 m!7390626))

(assert (=> b!6618295 m!7390626))

(declare-fun m!7390628 () Bool)

(assert (=> b!6618295 m!7390628))

(assert (=> b!6618299 m!7390472))

(assert (=> b!6618051 d!2074585))

(declare-fun d!2074603 () Bool)

(declare-fun c!1220085 () Bool)

(assert (=> d!2074603 (= c!1220085 (isEmpty!37938 (t!379431 s!2326)))))

(declare-fun e!4003784 () Bool)

(assert (=> d!2074603 (= (matchZipper!2503 lt!2417766 (t!379431 s!2326)) e!4003784)))

(declare-fun b!6618300 () Bool)

(assert (=> b!6618300 (= e!4003784 (nullableZipper!2231 lt!2417766))))

(declare-fun b!6618301 () Bool)

(assert (=> b!6618301 (= e!4003784 (matchZipper!2503 (derivationStepZipper!2457 lt!2417766 (head!13424 (t!379431 s!2326))) (tail!12509 (t!379431 s!2326))))))

(assert (= (and d!2074603 c!1220085) b!6618300))

(assert (= (and d!2074603 (not c!1220085)) b!6618301))

(assert (=> d!2074603 m!7390522))

(declare-fun m!7390630 () Bool)

(assert (=> b!6618300 m!7390630))

(assert (=> b!6618301 m!7390526))

(assert (=> b!6618301 m!7390526))

(declare-fun m!7390632 () Bool)

(assert (=> b!6618301 m!7390632))

(assert (=> b!6618301 m!7390530))

(assert (=> b!6618301 m!7390632))

(assert (=> b!6618301 m!7390530))

(declare-fun m!7390634 () Bool)

(assert (=> b!6618301 m!7390634))

(assert (=> b!6618040 d!2074603))

(declare-fun d!2074605 () Bool)

(declare-fun c!1220086 () Bool)

(assert (=> d!2074605 (= c!1220086 (isEmpty!37938 s!2326))))

(declare-fun e!4003785 () Bool)

(assert (=> d!2074605 (= (matchZipper!2503 z!1189 s!2326) e!4003785)))

(declare-fun b!6618302 () Bool)

(assert (=> b!6618302 (= e!4003785 (nullableZipper!2231 z!1189))))

(declare-fun b!6618303 () Bool)

(assert (=> b!6618303 (= e!4003785 (matchZipper!2503 (derivationStepZipper!2457 z!1189 (head!13424 s!2326)) (tail!12509 s!2326)))))

(assert (= (and d!2074605 c!1220086) b!6618302))

(assert (= (and d!2074605 (not c!1220086)) b!6618303))

(declare-fun m!7390636 () Bool)

(assert (=> d!2074605 m!7390636))

(declare-fun m!7390638 () Bool)

(assert (=> b!6618302 m!7390638))

(declare-fun m!7390640 () Bool)

(assert (=> b!6618303 m!7390640))

(assert (=> b!6618303 m!7390640))

(declare-fun m!7390642 () Bool)

(assert (=> b!6618303 m!7390642))

(declare-fun m!7390644 () Bool)

(assert (=> b!6618303 m!7390644))

(assert (=> b!6618303 m!7390642))

(assert (=> b!6618303 m!7390644))

(declare-fun m!7390646 () Bool)

(assert (=> b!6618303 m!7390646))

(assert (=> b!6618070 d!2074605))

(assert (=> b!6618070 d!2074603))

(declare-fun d!2074607 () Bool)

(declare-fun c!1220092 () Bool)

(assert (=> d!2074607 (= c!1220092 (isEmpty!37938 (t!379431 s!2326)))))

(declare-fun e!4003792 () Bool)

(assert (=> d!2074607 (= (matchZipper!2503 lt!2417769 (t!379431 s!2326)) e!4003792)))

(declare-fun b!6618315 () Bool)

(assert (=> b!6618315 (= e!4003792 (nullableZipper!2231 lt!2417769))))

(declare-fun b!6618316 () Bool)

(assert (=> b!6618316 (= e!4003792 (matchZipper!2503 (derivationStepZipper!2457 lt!2417769 (head!13424 (t!379431 s!2326))) (tail!12509 (t!379431 s!2326))))))

(assert (= (and d!2074607 c!1220092) b!6618315))

(assert (= (and d!2074607 (not c!1220092)) b!6618316))

(assert (=> d!2074607 m!7390522))

(declare-fun m!7390650 () Bool)

(assert (=> b!6618315 m!7390650))

(assert (=> b!6618316 m!7390526))

(assert (=> b!6618316 m!7390526))

(declare-fun m!7390654 () Bool)

(assert (=> b!6618316 m!7390654))

(assert (=> b!6618316 m!7390530))

(assert (=> b!6618316 m!7390654))

(assert (=> b!6618316 m!7390530))

(declare-fun m!7390660 () Bool)

(assert (=> b!6618316 m!7390660))

(assert (=> b!6618070 d!2074607))

(assert (=> b!6618070 d!2074565))

(declare-fun bs!1697062 () Bool)

(declare-fun d!2074611 () Bool)

(assert (= bs!1697062 (and d!2074611 d!2074585)))

(declare-fun lambda!369771 () Int)

(assert (=> bs!1697062 (= lambda!369771 lambda!369766)))

(declare-fun b!6618370 () Bool)

(declare-fun e!4003827 () Bool)

(declare-fun e!4003824 () Bool)

(assert (=> b!6618370 (= e!4003827 e!4003824)))

(declare-fun c!1220117 () Bool)

(assert (=> b!6618370 (= c!1220117 (isEmpty!37935 (unfocusZipperList!1912 zl!343)))))

(declare-fun b!6618371 () Bool)

(declare-fun e!4003826 () Regex!16491)

(assert (=> b!6618371 (= e!4003826 EmptyLang!16491)))

(declare-fun b!6618372 () Bool)

(assert (=> b!6618372 (= e!4003826 (Union!16491 (h!72096 (unfocusZipperList!1912 zl!343)) (generalisedUnion!2335 (t!379430 (unfocusZipperList!1912 zl!343)))))))

(assert (=> d!2074611 e!4003827))

(declare-fun res!2713790 () Bool)

(assert (=> d!2074611 (=> (not res!2713790) (not e!4003827))))

(declare-fun lt!2417804 () Regex!16491)

(assert (=> d!2074611 (= res!2713790 (validRegex!8227 lt!2417804))))

(declare-fun e!4003829 () Regex!16491)

(assert (=> d!2074611 (= lt!2417804 e!4003829)))

(declare-fun c!1220116 () Bool)

(declare-fun e!4003825 () Bool)

(assert (=> d!2074611 (= c!1220116 e!4003825)))

(declare-fun res!2713791 () Bool)

(assert (=> d!2074611 (=> (not res!2713791) (not e!4003825))))

(assert (=> d!2074611 (= res!2713791 ((_ is Cons!65648) (unfocusZipperList!1912 zl!343)))))

(assert (=> d!2074611 (forall!15686 (unfocusZipperList!1912 zl!343) lambda!369771)))

(assert (=> d!2074611 (= (generalisedUnion!2335 (unfocusZipperList!1912 zl!343)) lt!2417804)))

(declare-fun b!6618373 () Bool)

(assert (=> b!6618373 (= e!4003829 e!4003826)))

(declare-fun c!1220115 () Bool)

(assert (=> b!6618373 (= c!1220115 ((_ is Cons!65648) (unfocusZipperList!1912 zl!343)))))

(declare-fun b!6618374 () Bool)

(declare-fun e!4003828 () Bool)

(declare-fun isUnion!1303 (Regex!16491) Bool)

(assert (=> b!6618374 (= e!4003828 (isUnion!1303 lt!2417804))))

(declare-fun b!6618375 () Bool)

(assert (=> b!6618375 (= e!4003828 (= lt!2417804 (head!13425 (unfocusZipperList!1912 zl!343))))))

(declare-fun b!6618376 () Bool)

(assert (=> b!6618376 (= e!4003825 (isEmpty!37935 (t!379430 (unfocusZipperList!1912 zl!343))))))

(declare-fun b!6618377 () Bool)

(declare-fun isEmptyLang!1873 (Regex!16491) Bool)

(assert (=> b!6618377 (= e!4003824 (isEmptyLang!1873 lt!2417804))))

(declare-fun b!6618378 () Bool)

(assert (=> b!6618378 (= e!4003824 e!4003828)))

(declare-fun c!1220118 () Bool)

(assert (=> b!6618378 (= c!1220118 (isEmpty!37935 (tail!12510 (unfocusZipperList!1912 zl!343))))))

(declare-fun b!6618379 () Bool)

(assert (=> b!6618379 (= e!4003829 (h!72096 (unfocusZipperList!1912 zl!343)))))

(assert (= (and d!2074611 res!2713791) b!6618376))

(assert (= (and d!2074611 c!1220116) b!6618379))

(assert (= (and d!2074611 (not c!1220116)) b!6618373))

(assert (= (and b!6618373 c!1220115) b!6618372))

(assert (= (and b!6618373 (not c!1220115)) b!6618371))

(assert (= (and d!2074611 res!2713790) b!6618370))

(assert (= (and b!6618370 c!1220117) b!6618377))

(assert (= (and b!6618370 (not c!1220117)) b!6618378))

(assert (= (and b!6618378 c!1220118) b!6618375))

(assert (= (and b!6618378 (not c!1220118)) b!6618374))

(declare-fun m!7390706 () Bool)

(assert (=> b!6618374 m!7390706))

(assert (=> b!6618375 m!7390516))

(declare-fun m!7390708 () Bool)

(assert (=> b!6618375 m!7390708))

(assert (=> b!6618370 m!7390516))

(declare-fun m!7390710 () Bool)

(assert (=> b!6618370 m!7390710))

(declare-fun m!7390712 () Bool)

(assert (=> b!6618377 m!7390712))

(assert (=> b!6618378 m!7390516))

(declare-fun m!7390714 () Bool)

(assert (=> b!6618378 m!7390714))

(assert (=> b!6618378 m!7390714))

(declare-fun m!7390716 () Bool)

(assert (=> b!6618378 m!7390716))

(declare-fun m!7390718 () Bool)

(assert (=> b!6618372 m!7390718))

(declare-fun m!7390720 () Bool)

(assert (=> d!2074611 m!7390720))

(assert (=> d!2074611 m!7390516))

(declare-fun m!7390722 () Bool)

(assert (=> d!2074611 m!7390722))

(declare-fun m!7390724 () Bool)

(assert (=> b!6618376 m!7390724))

(assert (=> b!6618060 d!2074611))

(declare-fun bs!1697063 () Bool)

(declare-fun d!2074627 () Bool)

(assert (= bs!1697063 (and d!2074627 d!2074585)))

(declare-fun lambda!369775 () Int)

(assert (=> bs!1697063 (= lambda!369775 lambda!369766)))

(declare-fun bs!1697064 () Bool)

(assert (= bs!1697064 (and d!2074627 d!2074611)))

(assert (=> bs!1697064 (= lambda!369775 lambda!369771)))

(declare-fun lt!2417808 () List!65772)

(assert (=> d!2074627 (forall!15686 lt!2417808 lambda!369775)))

(declare-fun e!4003838 () List!65772)

(assert (=> d!2074627 (= lt!2417808 e!4003838)))

(declare-fun c!1220125 () Bool)

(assert (=> d!2074627 (= c!1220125 ((_ is Cons!65650) zl!343))))

(assert (=> d!2074627 (= (unfocusZipperList!1912 zl!343) lt!2417808)))

(declare-fun b!6618394 () Bool)

(assert (=> b!6618394 (= e!4003838 (Cons!65648 (generalisedConcat!2088 (exprs!6375 (h!72098 zl!343))) (unfocusZipperList!1912 (t!379432 zl!343))))))

(declare-fun b!6618395 () Bool)

(assert (=> b!6618395 (= e!4003838 Nil!65648)))

(assert (= (and d!2074627 c!1220125) b!6618394))

(assert (= (and d!2074627 (not c!1220125)) b!6618395))

(declare-fun m!7390726 () Bool)

(assert (=> d!2074627 m!7390726))

(assert (=> b!6618394 m!7390458))

(declare-fun m!7390728 () Bool)

(assert (=> b!6618394 m!7390728))

(assert (=> b!6618060 d!2074627))

(declare-fun d!2074629 () Bool)

(declare-fun nullableFct!2406 (Regex!16491) Bool)

(assert (=> d!2074629 (= (nullable!6484 (h!72096 (exprs!6375 (h!72098 zl!343)))) (nullableFct!2406 (h!72096 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun bs!1697065 () Bool)

(assert (= bs!1697065 d!2074629))

(declare-fun m!7390730 () Bool)

(assert (=> bs!1697065 m!7390730))

(assert (=> b!6618050 d!2074629))

(declare-fun b!6618437 () Bool)

(declare-fun e!4003863 () (InoxSet Context!11750))

(declare-fun call!580014 () (InoxSet Context!11750))

(assert (=> b!6618437 (= e!4003863 call!580014)))

(declare-fun b!6618438 () Bool)

(declare-fun e!4003864 () Bool)

(assert (=> b!6618438 (= e!4003864 (nullable!6484 (h!72096 (exprs!6375 (Context!11751 (Cons!65648 (h!72096 (exprs!6375 (h!72098 zl!343))) (t!379430 (exprs!6375 (h!72098 zl!343)))))))))))

(declare-fun b!6618439 () Bool)

(declare-fun e!4003862 () (InoxSet Context!11750))

(assert (=> b!6618439 (= e!4003862 ((_ map or) call!580014 (derivationStepZipperUp!1665 (Context!11751 (t!379430 (exprs!6375 (Context!11751 (Cons!65648 (h!72096 (exprs!6375 (h!72098 zl!343))) (t!379430 (exprs!6375 (h!72098 zl!343)))))))) (h!72097 s!2326))))))

(declare-fun d!2074631 () Bool)

(declare-fun c!1220137 () Bool)

(assert (=> d!2074631 (= c!1220137 e!4003864)))

(declare-fun res!2713815 () Bool)

(assert (=> d!2074631 (=> (not res!2713815) (not e!4003864))))

(assert (=> d!2074631 (= res!2713815 ((_ is Cons!65648) (exprs!6375 (Context!11751 (Cons!65648 (h!72096 (exprs!6375 (h!72098 zl!343))) (t!379430 (exprs!6375 (h!72098 zl!343))))))))))

(assert (=> d!2074631 (= (derivationStepZipperUp!1665 (Context!11751 (Cons!65648 (h!72096 (exprs!6375 (h!72098 zl!343))) (t!379430 (exprs!6375 (h!72098 zl!343))))) (h!72097 s!2326)) e!4003862)))

(declare-fun b!6618440 () Bool)

(assert (=> b!6618440 (= e!4003863 ((as const (Array Context!11750 Bool)) false))))

(declare-fun bm!580009 () Bool)

(assert (=> bm!580009 (= call!580014 (derivationStepZipperDown!1739 (h!72096 (exprs!6375 (Context!11751 (Cons!65648 (h!72096 (exprs!6375 (h!72098 zl!343))) (t!379430 (exprs!6375 (h!72098 zl!343))))))) (Context!11751 (t!379430 (exprs!6375 (Context!11751 (Cons!65648 (h!72096 (exprs!6375 (h!72098 zl!343))) (t!379430 (exprs!6375 (h!72098 zl!343)))))))) (h!72097 s!2326)))))

(declare-fun b!6618441 () Bool)

(assert (=> b!6618441 (= e!4003862 e!4003863)))

(declare-fun c!1220136 () Bool)

(assert (=> b!6618441 (= c!1220136 ((_ is Cons!65648) (exprs!6375 (Context!11751 (Cons!65648 (h!72096 (exprs!6375 (h!72098 zl!343))) (t!379430 (exprs!6375 (h!72098 zl!343))))))))))

(assert (= (and d!2074631 res!2713815) b!6618438))

(assert (= (and d!2074631 c!1220137) b!6618439))

(assert (= (and d!2074631 (not c!1220137)) b!6618441))

(assert (= (and b!6618441 c!1220136) b!6618437))

(assert (= (and b!6618441 (not c!1220136)) b!6618440))

(assert (= (or b!6618439 b!6618437) bm!580009))

(declare-fun m!7390754 () Bool)

(assert (=> b!6618438 m!7390754))

(declare-fun m!7390756 () Bool)

(assert (=> b!6618439 m!7390756))

(declare-fun m!7390758 () Bool)

(assert (=> bm!580009 m!7390758))

(assert (=> b!6618050 d!2074631))

(declare-fun b!6618442 () Bool)

(declare-fun e!4003866 () (InoxSet Context!11750))

(declare-fun call!580015 () (InoxSet Context!11750))

(assert (=> b!6618442 (= e!4003866 call!580015)))

(declare-fun b!6618443 () Bool)

(declare-fun e!4003867 () Bool)

(assert (=> b!6618443 (= e!4003867 (nullable!6484 (h!72096 (exprs!6375 lt!2417749))))))

(declare-fun e!4003865 () (InoxSet Context!11750))

(declare-fun b!6618444 () Bool)

(assert (=> b!6618444 (= e!4003865 ((_ map or) call!580015 (derivationStepZipperUp!1665 (Context!11751 (t!379430 (exprs!6375 lt!2417749))) (h!72097 s!2326))))))

(declare-fun d!2074637 () Bool)

(declare-fun c!1220139 () Bool)

(assert (=> d!2074637 (= c!1220139 e!4003867)))

(declare-fun res!2713816 () Bool)

(assert (=> d!2074637 (=> (not res!2713816) (not e!4003867))))

(assert (=> d!2074637 (= res!2713816 ((_ is Cons!65648) (exprs!6375 lt!2417749)))))

(assert (=> d!2074637 (= (derivationStepZipperUp!1665 lt!2417749 (h!72097 s!2326)) e!4003865)))

(declare-fun b!6618445 () Bool)

(assert (=> b!6618445 (= e!4003866 ((as const (Array Context!11750 Bool)) false))))

(declare-fun bm!580010 () Bool)

(assert (=> bm!580010 (= call!580015 (derivationStepZipperDown!1739 (h!72096 (exprs!6375 lt!2417749)) (Context!11751 (t!379430 (exprs!6375 lt!2417749))) (h!72097 s!2326)))))

(declare-fun b!6618446 () Bool)

(assert (=> b!6618446 (= e!4003865 e!4003866)))

(declare-fun c!1220138 () Bool)

(assert (=> b!6618446 (= c!1220138 ((_ is Cons!65648) (exprs!6375 lt!2417749)))))

(assert (= (and d!2074637 res!2713816) b!6618443))

(assert (= (and d!2074637 c!1220139) b!6618444))

(assert (= (and d!2074637 (not c!1220139)) b!6618446))

(assert (= (and b!6618446 c!1220138) b!6618442))

(assert (= (and b!6618446 (not c!1220138)) b!6618445))

(assert (= (or b!6618444 b!6618442) bm!580010))

(declare-fun m!7390760 () Bool)

(assert (=> b!6618443 m!7390760))

(declare-fun m!7390762 () Bool)

(assert (=> b!6618444 m!7390762))

(declare-fun m!7390764 () Bool)

(assert (=> bm!580010 m!7390764))

(assert (=> b!6618050 d!2074637))

(declare-fun d!2074639 () Bool)

(declare-fun choose!49463 ((InoxSet Context!11750) Int) (InoxSet Context!11750))

(assert (=> d!2074639 (= (flatMap!1996 z!1189 lambda!369755) (choose!49463 z!1189 lambda!369755))))

(declare-fun bs!1697073 () Bool)

(assert (= bs!1697073 d!2074639))

(declare-fun m!7390768 () Bool)

(assert (=> bs!1697073 m!7390768))

(assert (=> b!6618050 d!2074639))

(declare-fun b!6618447 () Bool)

(declare-fun e!4003869 () (InoxSet Context!11750))

(declare-fun call!580016 () (InoxSet Context!11750))

(assert (=> b!6618447 (= e!4003869 call!580016)))

(declare-fun b!6618448 () Bool)

(declare-fun e!4003870 () Bool)

(assert (=> b!6618448 (= e!4003870 (nullable!6484 (h!72096 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun e!4003868 () (InoxSet Context!11750))

(declare-fun b!6618449 () Bool)

(assert (=> b!6618449 (= e!4003868 ((_ map or) call!580016 (derivationStepZipperUp!1665 (Context!11751 (t!379430 (exprs!6375 (h!72098 zl!343)))) (h!72097 s!2326))))))

(declare-fun d!2074641 () Bool)

(declare-fun c!1220141 () Bool)

(assert (=> d!2074641 (= c!1220141 e!4003870)))

(declare-fun res!2713817 () Bool)

(assert (=> d!2074641 (=> (not res!2713817) (not e!4003870))))

(assert (=> d!2074641 (= res!2713817 ((_ is Cons!65648) (exprs!6375 (h!72098 zl!343))))))

(assert (=> d!2074641 (= (derivationStepZipperUp!1665 (h!72098 zl!343) (h!72097 s!2326)) e!4003868)))

(declare-fun b!6618450 () Bool)

(assert (=> b!6618450 (= e!4003869 ((as const (Array Context!11750 Bool)) false))))

(declare-fun bm!580011 () Bool)

(assert (=> bm!580011 (= call!580016 (derivationStepZipperDown!1739 (h!72096 (exprs!6375 (h!72098 zl!343))) (Context!11751 (t!379430 (exprs!6375 (h!72098 zl!343)))) (h!72097 s!2326)))))

(declare-fun b!6618451 () Bool)

(assert (=> b!6618451 (= e!4003868 e!4003869)))

(declare-fun c!1220140 () Bool)

(assert (=> b!6618451 (= c!1220140 ((_ is Cons!65648) (exprs!6375 (h!72098 zl!343))))))

(assert (= (and d!2074641 res!2713817) b!6618448))

(assert (= (and d!2074641 c!1220141) b!6618449))

(assert (= (and d!2074641 (not c!1220141)) b!6618451))

(assert (= (and b!6618451 c!1220140) b!6618447))

(assert (= (and b!6618451 (not c!1220140)) b!6618450))

(assert (= (or b!6618449 b!6618447) bm!580011))

(assert (=> b!6618448 m!7390434))

(declare-fun m!7390772 () Bool)

(assert (=> b!6618449 m!7390772))

(declare-fun m!7390774 () Bool)

(assert (=> bm!580011 m!7390774))

(assert (=> b!6618050 d!2074641))

(declare-fun d!2074645 () Bool)

(declare-fun dynLambda!26146 (Int Context!11750) (InoxSet Context!11750))

(assert (=> d!2074645 (= (flatMap!1996 z!1189 lambda!369755) (dynLambda!26146 lambda!369755 (h!72098 zl!343)))))

(declare-fun lt!2417825 () Unit!159319)

(declare-fun choose!49465 ((InoxSet Context!11750) Context!11750 Int) Unit!159319)

(assert (=> d!2074645 (= lt!2417825 (choose!49465 z!1189 (h!72098 zl!343) lambda!369755))))

(assert (=> d!2074645 (= z!1189 (store ((as const (Array Context!11750 Bool)) false) (h!72098 zl!343) true))))

(assert (=> d!2074645 (= (lemmaFlatMapOnSingletonSet!1522 z!1189 (h!72098 zl!343) lambda!369755) lt!2417825)))

(declare-fun b_lambda!250307 () Bool)

(assert (=> (not b_lambda!250307) (not d!2074645)))

(declare-fun bs!1697074 () Bool)

(assert (= bs!1697074 d!2074645))

(assert (=> bs!1697074 m!7390436))

(declare-fun m!7390776 () Bool)

(assert (=> bs!1697074 m!7390776))

(declare-fun m!7390778 () Bool)

(assert (=> bs!1697074 m!7390778))

(declare-fun m!7390780 () Bool)

(assert (=> bs!1697074 m!7390780))

(assert (=> b!6618050 d!2074645))

(declare-fun b!6618534 () Bool)

(declare-fun c!1220169 () Bool)

(assert (=> b!6618534 (= c!1220169 ((_ is Star!16491) (h!72096 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun e!4003925 () (InoxSet Context!11750))

(declare-fun e!4003922 () (InoxSet Context!11750))

(assert (=> b!6618534 (= e!4003925 e!4003922)))

(declare-fun bm!580036 () Bool)

(declare-fun call!580044 () (InoxSet Context!11750))

(declare-fun call!580041 () (InoxSet Context!11750))

(assert (=> bm!580036 (= call!580044 call!580041)))

(declare-fun bm!580037 () Bool)

(declare-fun call!580045 () (InoxSet Context!11750))

(assert (=> bm!580037 (= call!580041 call!580045)))

(declare-fun b!6618535 () Bool)

(assert (=> b!6618535 (= e!4003922 ((as const (Array Context!11750 Bool)) false))))

(declare-fun b!6618536 () Bool)

(declare-fun e!4003927 () (InoxSet Context!11750))

(declare-fun call!580042 () (InoxSet Context!11750))

(assert (=> b!6618536 (= e!4003927 ((_ map or) call!580042 call!580041))))

(declare-fun bm!580038 () Bool)

(declare-fun call!580046 () List!65772)

(declare-fun call!580043 () List!65772)

(assert (=> bm!580038 (= call!580046 call!580043)))

(declare-fun b!6618537 () Bool)

(assert (=> b!6618537 (= e!4003922 call!580044)))

(declare-fun b!6618538 () Bool)

(declare-fun e!4003923 () Bool)

(assert (=> b!6618538 (= e!4003923 (nullable!6484 (regOne!33494 (h!72096 (exprs!6375 (h!72098 zl!343))))))))

(declare-fun b!6618539 () Bool)

(assert (=> b!6618539 (= e!4003927 e!4003925)))

(declare-fun c!1220168 () Bool)

(assert (=> b!6618539 (= c!1220168 ((_ is Concat!25336) (h!72096 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun b!6618540 () Bool)

(declare-fun e!4003926 () (InoxSet Context!11750))

(assert (=> b!6618540 (= e!4003926 (store ((as const (Array Context!11750 Bool)) false) lt!2417749 true))))

(declare-fun b!6618541 () Bool)

(declare-fun e!4003924 () (InoxSet Context!11750))

(assert (=> b!6618541 (= e!4003924 ((_ map or) call!580045 call!580042))))

(declare-fun c!1220165 () Bool)

(declare-fun bm!580039 () Bool)

(declare-fun $colon$colon!2328 (List!65772 Regex!16491) List!65772)

(assert (=> bm!580039 (= call!580043 ($colon$colon!2328 (exprs!6375 lt!2417749) (ite (or c!1220165 c!1220168) (regTwo!33494 (h!72096 (exprs!6375 (h!72098 zl!343)))) (h!72096 (exprs!6375 (h!72098 zl!343))))))))

(declare-fun b!6618542 () Bool)

(assert (=> b!6618542 (= c!1220165 e!4003923)))

(declare-fun res!2713854 () Bool)

(assert (=> b!6618542 (=> (not res!2713854) (not e!4003923))))

(assert (=> b!6618542 (= res!2713854 ((_ is Concat!25336) (h!72096 (exprs!6375 (h!72098 zl!343)))))))

(assert (=> b!6618542 (= e!4003924 e!4003927)))

(declare-fun c!1220167 () Bool)

(declare-fun bm!580040 () Bool)

(assert (=> bm!580040 (= call!580045 (derivationStepZipperDown!1739 (ite c!1220167 (regOne!33495 (h!72096 (exprs!6375 (h!72098 zl!343)))) (ite c!1220165 (regTwo!33494 (h!72096 (exprs!6375 (h!72098 zl!343)))) (ite c!1220168 (regOne!33494 (h!72096 (exprs!6375 (h!72098 zl!343)))) (reg!16820 (h!72096 (exprs!6375 (h!72098 zl!343))))))) (ite (or c!1220167 c!1220165) lt!2417749 (Context!11751 call!580046)) (h!72097 s!2326)))))

(declare-fun b!6618543 () Bool)

(assert (=> b!6618543 (= e!4003926 e!4003924)))

(assert (=> b!6618543 (= c!1220167 ((_ is Union!16491) (h!72096 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun b!6618544 () Bool)

(assert (=> b!6618544 (= e!4003925 call!580044)))

(declare-fun bm!580041 () Bool)

(assert (=> bm!580041 (= call!580042 (derivationStepZipperDown!1739 (ite c!1220167 (regTwo!33495 (h!72096 (exprs!6375 (h!72098 zl!343)))) (regOne!33494 (h!72096 (exprs!6375 (h!72098 zl!343))))) (ite c!1220167 lt!2417749 (Context!11751 call!580043)) (h!72097 s!2326)))))

(declare-fun d!2074647 () Bool)

(declare-fun c!1220166 () Bool)

(assert (=> d!2074647 (= c!1220166 (and ((_ is ElementMatch!16491) (h!72096 (exprs!6375 (h!72098 zl!343)))) (= (c!1220016 (h!72096 (exprs!6375 (h!72098 zl!343)))) (h!72097 s!2326))))))

(assert (=> d!2074647 (= (derivationStepZipperDown!1739 (h!72096 (exprs!6375 (h!72098 zl!343))) lt!2417749 (h!72097 s!2326)) e!4003926)))

(assert (= (and d!2074647 c!1220166) b!6618540))

(assert (= (and d!2074647 (not c!1220166)) b!6618543))

(assert (= (and b!6618543 c!1220167) b!6618541))

(assert (= (and b!6618543 (not c!1220167)) b!6618542))

(assert (= (and b!6618542 res!2713854) b!6618538))

(assert (= (and b!6618542 c!1220165) b!6618536))

(assert (= (and b!6618542 (not c!1220165)) b!6618539))

(assert (= (and b!6618539 c!1220168) b!6618544))

(assert (= (and b!6618539 (not c!1220168)) b!6618534))

(assert (= (and b!6618534 c!1220169) b!6618537))

(assert (= (and b!6618534 (not c!1220169)) b!6618535))

(assert (= (or b!6618544 b!6618537) bm!580038))

(assert (= (or b!6618544 b!6618537) bm!580036))

(assert (= (or b!6618536 bm!580038) bm!580039))

(assert (= (or b!6618536 bm!580036) bm!580037))

(assert (= (or b!6618541 b!6618536) bm!580041))

(assert (= (or b!6618541 bm!580037) bm!580040))

(declare-fun m!7390812 () Bool)

(assert (=> bm!580040 m!7390812))

(declare-fun m!7390814 () Bool)

(assert (=> bm!580041 m!7390814))

(declare-fun m!7390816 () Bool)

(assert (=> bm!580039 m!7390816))

(assert (=> b!6618540 m!7390482))

(declare-fun m!7390818 () Bool)

(assert (=> b!6618538 m!7390818))

(assert (=> b!6618050 d!2074647))

(declare-fun bs!1697100 () Bool)

(declare-fun d!2074663 () Bool)

(assert (= bs!1697100 (and d!2074663 d!2074585)))

(declare-fun lambda!369789 () Int)

(assert (=> bs!1697100 (= lambda!369789 lambda!369766)))

(declare-fun bs!1697101 () Bool)

(assert (= bs!1697101 (and d!2074663 d!2074611)))

(assert (=> bs!1697101 (= lambda!369789 lambda!369771)))

(declare-fun bs!1697102 () Bool)

(assert (= bs!1697102 (and d!2074663 d!2074627)))

(assert (=> bs!1697102 (= lambda!369789 lambda!369775)))

(assert (=> d!2074663 (= (inv!84474 setElem!45238) (forall!15686 (exprs!6375 setElem!45238) lambda!369789))))

(declare-fun bs!1697103 () Bool)

(assert (= bs!1697103 d!2074663))

(declare-fun m!7390828 () Bool)

(assert (=> bs!1697103 m!7390828))

(assert (=> setNonEmpty!45238 d!2074663))

(declare-fun b!6618552 () Bool)

(declare-fun res!2713858 () Bool)

(declare-fun e!4003934 () Bool)

(assert (=> b!6618552 (=> (not res!2713858) (not e!4003934))))

(declare-fun call!580047 () Bool)

(assert (=> b!6618552 (= res!2713858 call!580047)))

(declare-fun e!4003933 () Bool)

(assert (=> b!6618552 (= e!4003933 e!4003934)))

(declare-fun b!6618553 () Bool)

(declare-fun res!2713861 () Bool)

(declare-fun e!4003935 () Bool)

(assert (=> b!6618553 (=> res!2713861 e!4003935)))

(assert (=> b!6618553 (= res!2713861 (not ((_ is Concat!25336) (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343)))))))))

(assert (=> b!6618553 (= e!4003933 e!4003935)))

(declare-fun b!6618554 () Bool)

(declare-fun e!4003932 () Bool)

(assert (=> b!6618554 (= e!4003932 e!4003933)))

(declare-fun c!1220173 () Bool)

(assert (=> b!6618554 (= c!1220173 ((_ is Union!16491) (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343))))))))

(declare-fun b!6618555 () Bool)

(declare-fun call!580048 () Bool)

(assert (=> b!6618555 (= e!4003934 call!580048)))

(declare-fun b!6618556 () Bool)

(declare-fun e!4003937 () Bool)

(declare-fun call!580049 () Bool)

(assert (=> b!6618556 (= e!4003937 call!580049)))

(declare-fun b!6618557 () Bool)

(declare-fun e!4003938 () Bool)

(assert (=> b!6618557 (= e!4003938 call!580048)))

(declare-fun b!6618558 () Bool)

(declare-fun e!4003936 () Bool)

(assert (=> b!6618558 (= e!4003936 e!4003932)))

(declare-fun c!1220174 () Bool)

(assert (=> b!6618558 (= c!1220174 ((_ is Star!16491) (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343))))))))

(declare-fun b!6618559 () Bool)

(assert (=> b!6618559 (= e!4003935 e!4003938)))

(declare-fun res!2713862 () Bool)

(assert (=> b!6618559 (=> (not res!2713862) (not e!4003938))))

(assert (=> b!6618559 (= res!2713862 call!580047)))

(declare-fun bm!580043 () Bool)

(assert (=> bm!580043 (= call!580049 (validRegex!8227 (ite c!1220174 (reg!16820 (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343))))) (ite c!1220173 (regTwo!33495 (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343))))) (regTwo!33494 (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343)))))))))))

(declare-fun b!6618560 () Bool)

(assert (=> b!6618560 (= e!4003932 e!4003937)))

(declare-fun res!2713860 () Bool)

(assert (=> b!6618560 (= res!2713860 (not (nullable!6484 (reg!16820 (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343))))))))))

(assert (=> b!6618560 (=> (not res!2713860) (not e!4003937))))

(declare-fun bm!580044 () Bool)

(assert (=> bm!580044 (= call!580047 (validRegex!8227 (ite c!1220173 (regOne!33495 (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343))))) (regOne!33494 (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343))))))))))

(declare-fun d!2074669 () Bool)

(declare-fun res!2713859 () Bool)

(assert (=> d!2074669 (=> res!2713859 e!4003936)))

(assert (=> d!2074669 (= res!2713859 ((_ is ElementMatch!16491) (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343))))))))

(assert (=> d!2074669 (= (validRegex!8227 (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343))))) e!4003936)))

(declare-fun bm!580042 () Bool)

(assert (=> bm!580042 (= call!580048 call!580049)))

(assert (= (and d!2074669 (not res!2713859)) b!6618558))

(assert (= (and b!6618558 c!1220174) b!6618560))

(assert (= (and b!6618558 (not c!1220174)) b!6618554))

(assert (= (and b!6618560 res!2713860) b!6618556))

(assert (= (and b!6618554 c!1220173) b!6618552))

(assert (= (and b!6618554 (not c!1220173)) b!6618553))

(assert (= (and b!6618552 res!2713858) b!6618555))

(assert (= (and b!6618553 (not res!2713861)) b!6618559))

(assert (= (and b!6618559 res!2713862) b!6618557))

(assert (= (or b!6618555 b!6618557) bm!580042))

(assert (= (or b!6618552 b!6618559) bm!580044))

(assert (= (or b!6618556 bm!580042) bm!580043))

(declare-fun m!7390834 () Bool)

(assert (=> bm!580043 m!7390834))

(declare-fun m!7390836 () Bool)

(assert (=> b!6618560 m!7390836))

(declare-fun m!7390838 () Bool)

(assert (=> bm!580044 m!7390838))

(assert (=> b!6618048 d!2074669))

(declare-fun bs!1697107 () Bool)

(declare-fun d!2074677 () Bool)

(assert (= bs!1697107 (and d!2074677 d!2074585)))

(declare-fun lambda!369795 () Int)

(assert (=> bs!1697107 (= lambda!369795 lambda!369766)))

(declare-fun bs!1697108 () Bool)

(assert (= bs!1697108 (and d!2074677 d!2074611)))

(assert (=> bs!1697108 (= lambda!369795 lambda!369771)))

(declare-fun bs!1697110 () Bool)

(assert (= bs!1697110 (and d!2074677 d!2074627)))

(assert (=> bs!1697110 (= lambda!369795 lambda!369775)))

(declare-fun bs!1697112 () Bool)

(assert (= bs!1697112 (and d!2074677 d!2074663)))

(assert (=> bs!1697112 (= lambda!369795 lambda!369789)))

(declare-fun b!6618561 () Bool)

(declare-fun e!4003944 () Regex!16491)

(assert (=> b!6618561 (= e!4003944 (h!72096 (t!379430 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun b!6618562 () Bool)

(declare-fun e!4003942 () Bool)

(declare-fun e!4003940 () Bool)

(assert (=> b!6618562 (= e!4003942 e!4003940)))

(declare-fun c!1220177 () Bool)

(assert (=> b!6618562 (= c!1220177 (isEmpty!37935 (t!379430 (exprs!6375 (h!72098 zl!343)))))))

(assert (=> d!2074677 e!4003942))

(declare-fun res!2713864 () Bool)

(assert (=> d!2074677 (=> (not res!2713864) (not e!4003942))))

(declare-fun lt!2417832 () Regex!16491)

(assert (=> d!2074677 (= res!2713864 (validRegex!8227 lt!2417832))))

(assert (=> d!2074677 (= lt!2417832 e!4003944)))

(declare-fun c!1220175 () Bool)

(declare-fun e!4003943 () Bool)

(assert (=> d!2074677 (= c!1220175 e!4003943)))

(declare-fun res!2713863 () Bool)

(assert (=> d!2074677 (=> (not res!2713863) (not e!4003943))))

(assert (=> d!2074677 (= res!2713863 ((_ is Cons!65648) (t!379430 (exprs!6375 (h!72098 zl!343)))))))

(assert (=> d!2074677 (forall!15686 (t!379430 (exprs!6375 (h!72098 zl!343))) lambda!369795)))

(assert (=> d!2074677 (= (generalisedConcat!2088 (t!379430 (exprs!6375 (h!72098 zl!343)))) lt!2417832)))

(declare-fun b!6618563 () Bool)

(declare-fun e!4003941 () Regex!16491)

(assert (=> b!6618563 (= e!4003944 e!4003941)))

(declare-fun c!1220178 () Bool)

(assert (=> b!6618563 (= c!1220178 ((_ is Cons!65648) (t!379430 (exprs!6375 (h!72098 zl!343)))))))

(declare-fun b!6618564 () Bool)

(declare-fun e!4003939 () Bool)

(assert (=> b!6618564 (= e!4003939 (isConcat!1387 lt!2417832))))

(declare-fun b!6618565 () Bool)

(assert (=> b!6618565 (= e!4003939 (= lt!2417832 (head!13425 (t!379430 (exprs!6375 (h!72098 zl!343))))))))

(declare-fun b!6618566 () Bool)

(assert (=> b!6618566 (= e!4003940 e!4003939)))

(declare-fun c!1220176 () Bool)

(assert (=> b!6618566 (= c!1220176 (isEmpty!37935 (tail!12510 (t!379430 (exprs!6375 (h!72098 zl!343))))))))

(declare-fun b!6618567 () Bool)

(assert (=> b!6618567 (= e!4003941 EmptyExpr!16491)))

(declare-fun b!6618568 () Bool)

(assert (=> b!6618568 (= e!4003943 (isEmpty!37935 (t!379430 (t!379430 (exprs!6375 (h!72098 zl!343))))))))

(declare-fun b!6618569 () Bool)

(assert (=> b!6618569 (= e!4003940 (isEmptyExpr!1864 lt!2417832))))

(declare-fun b!6618570 () Bool)

(assert (=> b!6618570 (= e!4003941 (Concat!25336 (h!72096 (t!379430 (exprs!6375 (h!72098 zl!343)))) (generalisedConcat!2088 (t!379430 (t!379430 (exprs!6375 (h!72098 zl!343)))))))))

(assert (= (and d!2074677 res!2713863) b!6618568))

(assert (= (and d!2074677 c!1220175) b!6618561))

(assert (= (and d!2074677 (not c!1220175)) b!6618563))

(assert (= (and b!6618563 c!1220178) b!6618570))

(assert (= (and b!6618563 (not c!1220178)) b!6618567))

(assert (= (and d!2074677 res!2713864) b!6618562))

(assert (= (and b!6618562 c!1220177) b!6618569))

(assert (= (and b!6618562 (not c!1220177)) b!6618566))

(assert (= (and b!6618566 c!1220176) b!6618565))

(assert (= (and b!6618566 (not c!1220176)) b!6618564))

(assert (=> b!6618562 m!7390426))

(declare-fun m!7390854 () Bool)

(assert (=> b!6618565 m!7390854))

(declare-fun m!7390856 () Bool)

(assert (=> d!2074677 m!7390856))

(declare-fun m!7390858 () Bool)

(assert (=> d!2074677 m!7390858))

(declare-fun m!7390860 () Bool)

(assert (=> b!6618568 m!7390860))

(declare-fun m!7390862 () Bool)

(assert (=> b!6618569 m!7390862))

(declare-fun m!7390864 () Bool)

(assert (=> b!6618564 m!7390864))

(declare-fun m!7390866 () Bool)

(assert (=> b!6618566 m!7390866))

(assert (=> b!6618566 m!7390866))

(declare-fun m!7390868 () Bool)

(assert (=> b!6618566 m!7390868))

(declare-fun m!7390870 () Bool)

(assert (=> b!6618570 m!7390870))

(assert (=> b!6618048 d!2074677))

(declare-fun d!2074685 () Bool)

(assert (=> d!2074685 (= (isEmpty!37936 (t!379432 zl!343)) ((_ is Nil!65650) (t!379432 zl!343)))))

(assert (=> b!6618055 d!2074685))

(declare-fun d!2074687 () Bool)

(assert (=> d!2074687 (= (nullable!6484 (regOne!33494 (regOne!33494 r!7292))) (nullableFct!2406 (regOne!33494 (regOne!33494 r!7292))))))

(declare-fun bs!1697113 () Bool)

(assert (= bs!1697113 d!2074687))

(declare-fun m!7390872 () Bool)

(assert (=> bs!1697113 m!7390872))

(assert (=> b!6618044 d!2074687))

(declare-fun bs!1697114 () Bool)

(declare-fun d!2074689 () Bool)

(assert (= bs!1697114 (and d!2074689 b!6618050)))

(declare-fun lambda!369801 () Int)

(assert (=> bs!1697114 (= lambda!369801 lambda!369755)))

(assert (=> d!2074689 true))

(assert (=> d!2074689 (= (derivationStepZipper!2457 z!1189 (h!72097 s!2326)) (flatMap!1996 z!1189 lambda!369801))))

(declare-fun bs!1697115 () Bool)

(assert (= bs!1697115 d!2074689))

(declare-fun m!7390874 () Bool)

(assert (=> bs!1697115 m!7390874))

(assert (=> b!6618065 d!2074689))

(declare-fun bs!1697138 () Bool)

(declare-fun b!6618723 () Bool)

(assert (= bs!1697138 (and b!6618723 b!6618041)))

(declare-fun lambda!369813 () Int)

(assert (=> bs!1697138 (not (= lambda!369813 lambda!369753))))

(assert (=> bs!1697138 (not (= lambda!369813 lambda!369754))))

(assert (=> b!6618723 true))

(assert (=> b!6618723 true))

(declare-fun bs!1697139 () Bool)

(declare-fun b!6618721 () Bool)

(assert (= bs!1697139 (and b!6618721 b!6618041)))

(declare-fun lambda!369814 () Int)

(assert (=> bs!1697139 (not (= lambda!369814 lambda!369753))))

(assert (=> bs!1697139 (= (and (= (regOne!33494 (regOne!33494 r!7292)) (regOne!33494 r!7292)) (= (regTwo!33494 (regOne!33494 r!7292)) (regTwo!33494 r!7292))) (= lambda!369814 lambda!369754))))

(declare-fun bs!1697140 () Bool)

(assert (= bs!1697140 (and b!6618721 b!6618723)))

(assert (=> bs!1697140 (not (= lambda!369814 lambda!369813))))

(assert (=> b!6618721 true))

(assert (=> b!6618721 true))

(declare-fun e!4004025 () Bool)

(declare-fun call!580058 () Bool)

(assert (=> b!6618721 (= e!4004025 call!580058)))

(declare-fun b!6618722 () Bool)

(declare-fun e!4004031 () Bool)

(declare-fun e!4004029 () Bool)

(assert (=> b!6618722 (= e!4004031 e!4004029)))

(declare-fun res!2713899 () Bool)

(assert (=> b!6618722 (= res!2713899 (not ((_ is EmptyLang!16491) (regOne!33494 r!7292))))))

(assert (=> b!6618722 (=> (not res!2713899) (not e!4004029))))

(declare-fun e!4004028 () Bool)

(assert (=> b!6618723 (= e!4004028 call!580058)))

(declare-fun b!6618724 () Bool)

(declare-fun res!2713898 () Bool)

(assert (=> b!6618724 (=> res!2713898 e!4004028)))

(declare-fun call!580057 () Bool)

(assert (=> b!6618724 (= res!2713898 call!580057)))

(assert (=> b!6618724 (= e!4004025 e!4004028)))

(declare-fun bm!580052 () Bool)

(assert (=> bm!580052 (= call!580057 (isEmpty!37938 s!2326))))

(declare-fun b!6618725 () Bool)

(declare-fun e!4004026 () Bool)

(declare-fun e!4004030 () Bool)

(assert (=> b!6618725 (= e!4004026 e!4004030)))

(declare-fun res!2713897 () Bool)

(assert (=> b!6618725 (= res!2713897 (matchRSpec!3592 (regOne!33495 (regOne!33494 r!7292)) s!2326))))

(assert (=> b!6618725 (=> res!2713897 e!4004030)))

(declare-fun b!6618726 () Bool)

(declare-fun c!1220213 () Bool)

(assert (=> b!6618726 (= c!1220213 ((_ is ElementMatch!16491) (regOne!33494 r!7292)))))

(declare-fun e!4004027 () Bool)

(assert (=> b!6618726 (= e!4004029 e!4004027)))

(declare-fun bm!580053 () Bool)

(declare-fun c!1220214 () Bool)

(assert (=> bm!580053 (= call!580058 (Exists!3561 (ite c!1220214 lambda!369813 lambda!369814)))))

(declare-fun b!6618727 () Bool)

(assert (=> b!6618727 (= e!4004027 (= s!2326 (Cons!65649 (c!1220016 (regOne!33494 r!7292)) Nil!65649)))))

(declare-fun b!6618729 () Bool)

(assert (=> b!6618729 (= e!4004030 (matchRSpec!3592 (regTwo!33495 (regOne!33494 r!7292)) s!2326))))

(declare-fun b!6618730 () Bool)

(assert (=> b!6618730 (= e!4004026 e!4004025)))

(assert (=> b!6618730 (= c!1220214 ((_ is Star!16491) (regOne!33494 r!7292)))))

(declare-fun b!6618731 () Bool)

(assert (=> b!6618731 (= e!4004031 call!580057)))

(declare-fun b!6618728 () Bool)

(declare-fun c!1220215 () Bool)

(assert (=> b!6618728 (= c!1220215 ((_ is Union!16491) (regOne!33494 r!7292)))))

(assert (=> b!6618728 (= e!4004027 e!4004026)))

(declare-fun d!2074691 () Bool)

(declare-fun c!1220212 () Bool)

(assert (=> d!2074691 (= c!1220212 ((_ is EmptyExpr!16491) (regOne!33494 r!7292)))))

(assert (=> d!2074691 (= (matchRSpec!3592 (regOne!33494 r!7292) s!2326) e!4004031)))

(assert (= (and d!2074691 c!1220212) b!6618731))

(assert (= (and d!2074691 (not c!1220212)) b!6618722))

(assert (= (and b!6618722 res!2713899) b!6618726))

(assert (= (and b!6618726 c!1220213) b!6618727))

(assert (= (and b!6618726 (not c!1220213)) b!6618728))

(assert (= (and b!6618728 c!1220215) b!6618725))

(assert (= (and b!6618728 (not c!1220215)) b!6618730))

(assert (= (and b!6618725 (not res!2713897)) b!6618729))

(assert (= (and b!6618730 c!1220214) b!6618724))

(assert (= (and b!6618730 (not c!1220214)) b!6618721))

(assert (= (and b!6618724 (not res!2713898)) b!6618723))

(assert (= (or b!6618723 b!6618721) bm!580053))

(assert (= (or b!6618731 b!6618724) bm!580052))

(assert (=> bm!580052 m!7390636))

(declare-fun m!7390944 () Bool)

(assert (=> b!6618725 m!7390944))

(declare-fun m!7390946 () Bool)

(assert (=> bm!580053 m!7390946))

(declare-fun m!7390948 () Bool)

(assert (=> b!6618729 m!7390948))

(assert (=> b!6618045 d!2074691))

(declare-fun d!2074713 () Bool)

(assert (=> d!2074713 (= (matchR!8674 (regOne!33494 r!7292) s!2326) (matchRSpec!3592 (regOne!33494 r!7292) s!2326))))

(declare-fun lt!2417846 () Unit!159319)

(declare-fun choose!49467 (Regex!16491 List!65773) Unit!159319)

(assert (=> d!2074713 (= lt!2417846 (choose!49467 (regOne!33494 r!7292) s!2326))))

(assert (=> d!2074713 (validRegex!8227 (regOne!33494 r!7292))))

(assert (=> d!2074713 (= (mainMatchTheorem!3592 (regOne!33494 r!7292) s!2326) lt!2417846)))

(declare-fun bs!1697141 () Bool)

(assert (= bs!1697141 d!2074713))

(assert (=> bs!1697141 m!7390466))

(assert (=> bs!1697141 m!7390468))

(declare-fun m!7390950 () Bool)

(assert (=> bs!1697141 m!7390950))

(declare-fun m!7390952 () Bool)

(assert (=> bs!1697141 m!7390952))

(assert (=> b!6618045 d!2074713))

(declare-fun b!6618760 () Bool)

(declare-fun res!2713916 () Bool)

(declare-fun e!4004046 () Bool)

(assert (=> b!6618760 (=> res!2713916 e!4004046)))

(assert (=> b!6618760 (= res!2713916 (not (isEmpty!37938 (tail!12509 s!2326))))))

(declare-fun b!6618761 () Bool)

(declare-fun res!2713919 () Bool)

(declare-fun e!4004052 () Bool)

(assert (=> b!6618761 (=> res!2713919 e!4004052)))

(declare-fun e!4004051 () Bool)

(assert (=> b!6618761 (= res!2713919 e!4004051)))

(declare-fun res!2713922 () Bool)

(assert (=> b!6618761 (=> (not res!2713922) (not e!4004051))))

(declare-fun lt!2417849 () Bool)

(assert (=> b!6618761 (= res!2713922 lt!2417849)))

(declare-fun b!6618762 () Bool)

(declare-fun res!2713921 () Bool)

(assert (=> b!6618762 (=> (not res!2713921) (not e!4004051))))

(assert (=> b!6618762 (= res!2713921 (isEmpty!37938 (tail!12509 s!2326)))))

(declare-fun d!2074715 () Bool)

(declare-fun e!4004047 () Bool)

(assert (=> d!2074715 e!4004047))

(declare-fun c!1220223 () Bool)

(assert (=> d!2074715 (= c!1220223 ((_ is EmptyExpr!16491) (regOne!33494 r!7292)))))

(declare-fun e!4004049 () Bool)

(assert (=> d!2074715 (= lt!2417849 e!4004049)))

(declare-fun c!1220222 () Bool)

(assert (=> d!2074715 (= c!1220222 (isEmpty!37938 s!2326))))

(assert (=> d!2074715 (validRegex!8227 (regOne!33494 r!7292))))

(assert (=> d!2074715 (= (matchR!8674 (regOne!33494 r!7292) s!2326) lt!2417849)))

(declare-fun b!6618763 () Bool)

(declare-fun e!4004050 () Bool)

(assert (=> b!6618763 (= e!4004050 e!4004046)))

(declare-fun res!2713917 () Bool)

(assert (=> b!6618763 (=> res!2713917 e!4004046)))

(declare-fun call!580061 () Bool)

(assert (=> b!6618763 (= res!2713917 call!580061)))

(declare-fun b!6618764 () Bool)

(declare-fun e!4004048 () Bool)

(assert (=> b!6618764 (= e!4004048 (not lt!2417849))))

(declare-fun b!6618765 () Bool)

(assert (=> b!6618765 (= e!4004051 (= (head!13424 s!2326) (c!1220016 (regOne!33494 r!7292))))))

(declare-fun b!6618766 () Bool)

(assert (=> b!6618766 (= e!4004049 (nullable!6484 (regOne!33494 r!7292)))))

(declare-fun b!6618767 () Bool)

(assert (=> b!6618767 (= e!4004047 (= lt!2417849 call!580061))))

(declare-fun b!6618768 () Bool)

(declare-fun derivativeStep!5171 (Regex!16491 C!33252) Regex!16491)

(assert (=> b!6618768 (= e!4004049 (matchR!8674 (derivativeStep!5171 (regOne!33494 r!7292) (head!13424 s!2326)) (tail!12509 s!2326)))))

(declare-fun bm!580056 () Bool)

(assert (=> bm!580056 (= call!580061 (isEmpty!37938 s!2326))))

(declare-fun b!6618769 () Bool)

(declare-fun res!2713920 () Bool)

(assert (=> b!6618769 (=> res!2713920 e!4004052)))

(assert (=> b!6618769 (= res!2713920 (not ((_ is ElementMatch!16491) (regOne!33494 r!7292))))))

(assert (=> b!6618769 (= e!4004048 e!4004052)))

(declare-fun b!6618770 () Bool)

(assert (=> b!6618770 (= e!4004046 (not (= (head!13424 s!2326) (c!1220016 (regOne!33494 r!7292)))))))

(declare-fun b!6618771 () Bool)

(assert (=> b!6618771 (= e!4004052 e!4004050)))

(declare-fun res!2713918 () Bool)

(assert (=> b!6618771 (=> (not res!2713918) (not e!4004050))))

(assert (=> b!6618771 (= res!2713918 (not lt!2417849))))

(declare-fun b!6618772 () Bool)

(declare-fun res!2713923 () Bool)

(assert (=> b!6618772 (=> (not res!2713923) (not e!4004051))))

(assert (=> b!6618772 (= res!2713923 (not call!580061))))

(declare-fun b!6618773 () Bool)

(assert (=> b!6618773 (= e!4004047 e!4004048)))

(declare-fun c!1220224 () Bool)

(assert (=> b!6618773 (= c!1220224 ((_ is EmptyLang!16491) (regOne!33494 r!7292)))))

(assert (= (and d!2074715 c!1220222) b!6618766))

(assert (= (and d!2074715 (not c!1220222)) b!6618768))

(assert (= (and d!2074715 c!1220223) b!6618767))

(assert (= (and d!2074715 (not c!1220223)) b!6618773))

(assert (= (and b!6618773 c!1220224) b!6618764))

(assert (= (and b!6618773 (not c!1220224)) b!6618769))

(assert (= (and b!6618769 (not res!2713920)) b!6618761))

(assert (= (and b!6618761 res!2713922) b!6618772))

(assert (= (and b!6618772 res!2713923) b!6618762))

(assert (= (and b!6618762 res!2713921) b!6618765))

(assert (= (and b!6618761 (not res!2713919)) b!6618771))

(assert (= (and b!6618771 res!2713918) b!6618763))

(assert (= (and b!6618763 (not res!2713917)) b!6618760))

(assert (= (and b!6618760 (not res!2713916)) b!6618770))

(assert (= (or b!6618767 b!6618763 b!6618772) bm!580056))

(declare-fun m!7390954 () Bool)

(assert (=> b!6618766 m!7390954))

(assert (=> b!6618768 m!7390640))

(assert (=> b!6618768 m!7390640))

(declare-fun m!7390956 () Bool)

(assert (=> b!6618768 m!7390956))

(assert (=> b!6618768 m!7390644))

(assert (=> b!6618768 m!7390956))

(assert (=> b!6618768 m!7390644))

(declare-fun m!7390958 () Bool)

(assert (=> b!6618768 m!7390958))

(assert (=> b!6618762 m!7390644))

(assert (=> b!6618762 m!7390644))

(declare-fun m!7390960 () Bool)

(assert (=> b!6618762 m!7390960))

(assert (=> b!6618760 m!7390644))

(assert (=> b!6618760 m!7390644))

(assert (=> b!6618760 m!7390960))

(assert (=> b!6618765 m!7390640))

(assert (=> bm!580056 m!7390636))

(assert (=> d!2074715 m!7390636))

(assert (=> d!2074715 m!7390952))

(assert (=> b!6618770 m!7390640))

(assert (=> b!6618045 d!2074715))

(declare-fun bs!1697142 () Bool)

(declare-fun b!6618776 () Bool)

(assert (= bs!1697142 (and b!6618776 b!6618041)))

(declare-fun lambda!369815 () Int)

(assert (=> bs!1697142 (not (= lambda!369815 lambda!369753))))

(assert (=> bs!1697142 (not (= lambda!369815 lambda!369754))))

(declare-fun bs!1697143 () Bool)

(assert (= bs!1697143 (and b!6618776 b!6618723)))

(assert (=> bs!1697143 (= (and (= (reg!16820 (regTwo!33494 r!7292)) (reg!16820 (regOne!33494 r!7292))) (= (regTwo!33494 r!7292) (regOne!33494 r!7292))) (= lambda!369815 lambda!369813))))

(declare-fun bs!1697144 () Bool)

(assert (= bs!1697144 (and b!6618776 b!6618721)))

(assert (=> bs!1697144 (not (= lambda!369815 lambda!369814))))

(assert (=> b!6618776 true))

(assert (=> b!6618776 true))

(declare-fun bs!1697145 () Bool)

(declare-fun b!6618774 () Bool)

(assert (= bs!1697145 (and b!6618774 b!6618721)))

(declare-fun lambda!369816 () Int)

(assert (=> bs!1697145 (= (and (= (regOne!33494 (regTwo!33494 r!7292)) (regOne!33494 (regOne!33494 r!7292))) (= (regTwo!33494 (regTwo!33494 r!7292)) (regTwo!33494 (regOne!33494 r!7292)))) (= lambda!369816 lambda!369814))))

(declare-fun bs!1697146 () Bool)

(assert (= bs!1697146 (and b!6618774 b!6618041)))

(assert (=> bs!1697146 (= (and (= (regOne!33494 (regTwo!33494 r!7292)) (regOne!33494 r!7292)) (= (regTwo!33494 (regTwo!33494 r!7292)) (regTwo!33494 r!7292))) (= lambda!369816 lambda!369754))))

(declare-fun bs!1697147 () Bool)

(assert (= bs!1697147 (and b!6618774 b!6618723)))

(assert (=> bs!1697147 (not (= lambda!369816 lambda!369813))))

(assert (=> bs!1697146 (not (= lambda!369816 lambda!369753))))

(declare-fun bs!1697148 () Bool)

(assert (= bs!1697148 (and b!6618774 b!6618776)))

(assert (=> bs!1697148 (not (= lambda!369816 lambda!369815))))

(assert (=> b!6618774 true))

(assert (=> b!6618774 true))

(declare-fun e!4004053 () Bool)

(declare-fun call!580063 () Bool)

(assert (=> b!6618774 (= e!4004053 call!580063)))

(declare-fun b!6618775 () Bool)

(declare-fun e!4004059 () Bool)

(declare-fun e!4004057 () Bool)

(assert (=> b!6618775 (= e!4004059 e!4004057)))

(declare-fun res!2713926 () Bool)

(assert (=> b!6618775 (= res!2713926 (not ((_ is EmptyLang!16491) (regTwo!33494 r!7292))))))

(assert (=> b!6618775 (=> (not res!2713926) (not e!4004057))))

(declare-fun e!4004056 () Bool)

(assert (=> b!6618776 (= e!4004056 call!580063)))

(declare-fun b!6618777 () Bool)

(declare-fun res!2713925 () Bool)

(assert (=> b!6618777 (=> res!2713925 e!4004056)))

(declare-fun call!580062 () Bool)

(assert (=> b!6618777 (= res!2713925 call!580062)))

(assert (=> b!6618777 (= e!4004053 e!4004056)))

(declare-fun bm!580057 () Bool)

(assert (=> bm!580057 (= call!580062 (isEmpty!37938 s!2326))))

(declare-fun b!6618778 () Bool)

(declare-fun e!4004054 () Bool)

(declare-fun e!4004058 () Bool)

(assert (=> b!6618778 (= e!4004054 e!4004058)))

(declare-fun res!2713924 () Bool)

(assert (=> b!6618778 (= res!2713924 (matchRSpec!3592 (regOne!33495 (regTwo!33494 r!7292)) s!2326))))

(assert (=> b!6618778 (=> res!2713924 e!4004058)))

(declare-fun b!6618779 () Bool)

(declare-fun c!1220226 () Bool)

(assert (=> b!6618779 (= c!1220226 ((_ is ElementMatch!16491) (regTwo!33494 r!7292)))))

(declare-fun e!4004055 () Bool)

(assert (=> b!6618779 (= e!4004057 e!4004055)))

(declare-fun bm!580058 () Bool)

(declare-fun c!1220227 () Bool)

(assert (=> bm!580058 (= call!580063 (Exists!3561 (ite c!1220227 lambda!369815 lambda!369816)))))

(declare-fun b!6618780 () Bool)

(assert (=> b!6618780 (= e!4004055 (= s!2326 (Cons!65649 (c!1220016 (regTwo!33494 r!7292)) Nil!65649)))))

(declare-fun b!6618782 () Bool)

(assert (=> b!6618782 (= e!4004058 (matchRSpec!3592 (regTwo!33495 (regTwo!33494 r!7292)) s!2326))))

(declare-fun b!6618783 () Bool)

(assert (=> b!6618783 (= e!4004054 e!4004053)))

(assert (=> b!6618783 (= c!1220227 ((_ is Star!16491) (regTwo!33494 r!7292)))))

(declare-fun b!6618784 () Bool)

(assert (=> b!6618784 (= e!4004059 call!580062)))

(declare-fun b!6618781 () Bool)

(declare-fun c!1220228 () Bool)

(assert (=> b!6618781 (= c!1220228 ((_ is Union!16491) (regTwo!33494 r!7292)))))

(assert (=> b!6618781 (= e!4004055 e!4004054)))

(declare-fun d!2074717 () Bool)

(declare-fun c!1220225 () Bool)

(assert (=> d!2074717 (= c!1220225 ((_ is EmptyExpr!16491) (regTwo!33494 r!7292)))))

(assert (=> d!2074717 (= (matchRSpec!3592 (regTwo!33494 r!7292) s!2326) e!4004059)))

(assert (= (and d!2074717 c!1220225) b!6618784))

(assert (= (and d!2074717 (not c!1220225)) b!6618775))

(assert (= (and b!6618775 res!2713926) b!6618779))

(assert (= (and b!6618779 c!1220226) b!6618780))

(assert (= (and b!6618779 (not c!1220226)) b!6618781))

(assert (= (and b!6618781 c!1220228) b!6618778))

(assert (= (and b!6618781 (not c!1220228)) b!6618783))

(assert (= (and b!6618778 (not res!2713924)) b!6618782))

(assert (= (and b!6618783 c!1220227) b!6618777))

(assert (= (and b!6618783 (not c!1220227)) b!6618774))

(assert (= (and b!6618777 (not res!2713925)) b!6618776))

(assert (= (or b!6618776 b!6618774) bm!580058))

(assert (= (or b!6618784 b!6618777) bm!580057))

(assert (=> bm!580057 m!7390636))

(declare-fun m!7390962 () Bool)

(assert (=> b!6618778 m!7390962))

(declare-fun m!7390964 () Bool)

(assert (=> bm!580058 m!7390964))

(declare-fun m!7390966 () Bool)

(assert (=> b!6618782 m!7390966))

(assert (=> b!6618045 d!2074717))

(declare-fun b!6618785 () Bool)

(declare-fun res!2713927 () Bool)

(declare-fun e!4004060 () Bool)

(assert (=> b!6618785 (=> res!2713927 e!4004060)))

(assert (=> b!6618785 (= res!2713927 (not (isEmpty!37938 (tail!12509 s!2326))))))

(declare-fun b!6618786 () Bool)

(declare-fun res!2713930 () Bool)

(declare-fun e!4004066 () Bool)

(assert (=> b!6618786 (=> res!2713930 e!4004066)))

(declare-fun e!4004065 () Bool)

(assert (=> b!6618786 (= res!2713930 e!4004065)))

(declare-fun res!2713933 () Bool)

(assert (=> b!6618786 (=> (not res!2713933) (not e!4004065))))

(declare-fun lt!2417850 () Bool)

(assert (=> b!6618786 (= res!2713933 lt!2417850)))

(declare-fun b!6618787 () Bool)

(declare-fun res!2713932 () Bool)

(assert (=> b!6618787 (=> (not res!2713932) (not e!4004065))))

(assert (=> b!6618787 (= res!2713932 (isEmpty!37938 (tail!12509 s!2326)))))

(declare-fun d!2074719 () Bool)

(declare-fun e!4004061 () Bool)

(assert (=> d!2074719 e!4004061))

(declare-fun c!1220230 () Bool)

(assert (=> d!2074719 (= c!1220230 ((_ is EmptyExpr!16491) (regTwo!33494 r!7292)))))

(declare-fun e!4004063 () Bool)

(assert (=> d!2074719 (= lt!2417850 e!4004063)))

(declare-fun c!1220229 () Bool)

(assert (=> d!2074719 (= c!1220229 (isEmpty!37938 s!2326))))

(assert (=> d!2074719 (validRegex!8227 (regTwo!33494 r!7292))))

(assert (=> d!2074719 (= (matchR!8674 (regTwo!33494 r!7292) s!2326) lt!2417850)))

(declare-fun b!6618788 () Bool)

(declare-fun e!4004064 () Bool)

(assert (=> b!6618788 (= e!4004064 e!4004060)))

(declare-fun res!2713928 () Bool)

(assert (=> b!6618788 (=> res!2713928 e!4004060)))

(declare-fun call!580064 () Bool)

(assert (=> b!6618788 (= res!2713928 call!580064)))

(declare-fun b!6618789 () Bool)

(declare-fun e!4004062 () Bool)

(assert (=> b!6618789 (= e!4004062 (not lt!2417850))))

(declare-fun b!6618790 () Bool)

(assert (=> b!6618790 (= e!4004065 (= (head!13424 s!2326) (c!1220016 (regTwo!33494 r!7292))))))

(declare-fun b!6618791 () Bool)

(assert (=> b!6618791 (= e!4004063 (nullable!6484 (regTwo!33494 r!7292)))))

(declare-fun b!6618792 () Bool)

(assert (=> b!6618792 (= e!4004061 (= lt!2417850 call!580064))))

(declare-fun b!6618793 () Bool)

(assert (=> b!6618793 (= e!4004063 (matchR!8674 (derivativeStep!5171 (regTwo!33494 r!7292) (head!13424 s!2326)) (tail!12509 s!2326)))))

(declare-fun bm!580059 () Bool)

(assert (=> bm!580059 (= call!580064 (isEmpty!37938 s!2326))))

(declare-fun b!6618794 () Bool)

(declare-fun res!2713931 () Bool)

(assert (=> b!6618794 (=> res!2713931 e!4004066)))

(assert (=> b!6618794 (= res!2713931 (not ((_ is ElementMatch!16491) (regTwo!33494 r!7292))))))

(assert (=> b!6618794 (= e!4004062 e!4004066)))

(declare-fun b!6618795 () Bool)

(assert (=> b!6618795 (= e!4004060 (not (= (head!13424 s!2326) (c!1220016 (regTwo!33494 r!7292)))))))

(declare-fun b!6618796 () Bool)

(assert (=> b!6618796 (= e!4004066 e!4004064)))

(declare-fun res!2713929 () Bool)

(assert (=> b!6618796 (=> (not res!2713929) (not e!4004064))))

(assert (=> b!6618796 (= res!2713929 (not lt!2417850))))

(declare-fun b!6618797 () Bool)

(declare-fun res!2713934 () Bool)

(assert (=> b!6618797 (=> (not res!2713934) (not e!4004065))))

(assert (=> b!6618797 (= res!2713934 (not call!580064))))

(declare-fun b!6618798 () Bool)

(assert (=> b!6618798 (= e!4004061 e!4004062)))

(declare-fun c!1220231 () Bool)

(assert (=> b!6618798 (= c!1220231 ((_ is EmptyLang!16491) (regTwo!33494 r!7292)))))

(assert (= (and d!2074719 c!1220229) b!6618791))

(assert (= (and d!2074719 (not c!1220229)) b!6618793))

(assert (= (and d!2074719 c!1220230) b!6618792))

(assert (= (and d!2074719 (not c!1220230)) b!6618798))

(assert (= (and b!6618798 c!1220231) b!6618789))

(assert (= (and b!6618798 (not c!1220231)) b!6618794))

(assert (= (and b!6618794 (not res!2713931)) b!6618786))

(assert (= (and b!6618786 res!2713933) b!6618797))

(assert (= (and b!6618797 res!2713934) b!6618787))

(assert (= (and b!6618787 res!2713932) b!6618790))

(assert (= (and b!6618786 (not res!2713930)) b!6618796))

(assert (= (and b!6618796 res!2713929) b!6618788))

(assert (= (and b!6618788 (not res!2713928)) b!6618785))

(assert (= (and b!6618785 (not res!2713927)) b!6618795))

(assert (= (or b!6618792 b!6618788 b!6618797) bm!580059))

(declare-fun m!7390968 () Bool)

(assert (=> b!6618791 m!7390968))

(assert (=> b!6618793 m!7390640))

(assert (=> b!6618793 m!7390640))

(declare-fun m!7390970 () Bool)

(assert (=> b!6618793 m!7390970))

(assert (=> b!6618793 m!7390644))

(assert (=> b!6618793 m!7390970))

(assert (=> b!6618793 m!7390644))

(declare-fun m!7390972 () Bool)

(assert (=> b!6618793 m!7390972))

(assert (=> b!6618787 m!7390644))

(assert (=> b!6618787 m!7390644))

(assert (=> b!6618787 m!7390960))

(assert (=> b!6618785 m!7390644))

(assert (=> b!6618785 m!7390644))

(assert (=> b!6618785 m!7390960))

(assert (=> b!6618790 m!7390640))

(assert (=> bm!580059 m!7390636))

(assert (=> d!2074719 m!7390636))

(declare-fun m!7390974 () Bool)

(assert (=> d!2074719 m!7390974))

(assert (=> b!6618795 m!7390640))

(assert (=> b!6618045 d!2074719))

(declare-fun d!2074721 () Bool)

(assert (=> d!2074721 (= (matchR!8674 (regTwo!33494 r!7292) s!2326) (matchRSpec!3592 (regTwo!33494 r!7292) s!2326))))

(declare-fun lt!2417851 () Unit!159319)

(assert (=> d!2074721 (= lt!2417851 (choose!49467 (regTwo!33494 r!7292) s!2326))))

(assert (=> d!2074721 (validRegex!8227 (regTwo!33494 r!7292))))

(assert (=> d!2074721 (= (mainMatchTheorem!3592 (regTwo!33494 r!7292) s!2326) lt!2417851)))

(declare-fun bs!1697149 () Bool)

(assert (= bs!1697149 d!2074721))

(assert (=> bs!1697149 m!7390460))

(assert (=> bs!1697149 m!7390470))

(declare-fun m!7390976 () Bool)

(assert (=> bs!1697149 m!7390976))

(assert (=> bs!1697149 m!7390974))

(assert (=> b!6618045 d!2074721))

(assert (=> b!6618064 d!2074569))

(declare-fun d!2074723 () Bool)

(assert (=> d!2074723 (not (matchZipper!2503 lt!2417751 (t!379431 s!2326)))))

(declare-fun lt!2417854 () Unit!159319)

(declare-fun choose!49469 ((InoxSet Context!11750) List!65773) Unit!159319)

(assert (=> d!2074723 (= lt!2417854 (choose!49469 lt!2417751 (t!379431 s!2326)))))

(assert (=> d!2074723 (= lt!2417751 ((as const (Array Context!11750 Bool)) false))))

(assert (=> d!2074723 (= (lemmaEmptyZipperMatchesNothing!86 lt!2417751 (t!379431 s!2326)) lt!2417854)))

(declare-fun bs!1697150 () Bool)

(assert (= bs!1697150 d!2074723))

(assert (=> bs!1697150 m!7390484))

(declare-fun m!7390978 () Bool)

(assert (=> bs!1697150 m!7390978))

(assert (=> b!6618064 d!2074723))

(declare-fun bs!1697151 () Bool)

(declare-fun d!2074725 () Bool)

(assert (= bs!1697151 (and d!2074725 d!2074677)))

(declare-fun lambda!369817 () Int)

(assert (=> bs!1697151 (= lambda!369817 lambda!369795)))

(declare-fun bs!1697152 () Bool)

(assert (= bs!1697152 (and d!2074725 d!2074585)))

(assert (=> bs!1697152 (= lambda!369817 lambda!369766)))

(declare-fun bs!1697153 () Bool)

(assert (= bs!1697153 (and d!2074725 d!2074663)))

(assert (=> bs!1697153 (= lambda!369817 lambda!369789)))

(declare-fun bs!1697154 () Bool)

(assert (= bs!1697154 (and d!2074725 d!2074611)))

(assert (=> bs!1697154 (= lambda!369817 lambda!369771)))

(declare-fun bs!1697155 () Bool)

(assert (= bs!1697155 (and d!2074725 d!2074627)))

(assert (=> bs!1697155 (= lambda!369817 lambda!369775)))

(assert (=> d!2074725 (= (inv!84474 (h!72098 zl!343)) (forall!15686 (exprs!6375 (h!72098 zl!343)) lambda!369817))))

(declare-fun bs!1697156 () Bool)

(assert (= bs!1697156 d!2074725))

(declare-fun m!7390980 () Bool)

(assert (=> bs!1697156 m!7390980))

(assert (=> b!6618061 d!2074725))

(declare-fun bs!1697157 () Bool)

(declare-fun b!6618801 () Bool)

(assert (= bs!1697157 (and b!6618801 b!6618721)))

(declare-fun lambda!369818 () Int)

(assert (=> bs!1697157 (not (= lambda!369818 lambda!369814))))

(declare-fun bs!1697158 () Bool)

(assert (= bs!1697158 (and b!6618801 b!6618041)))

(assert (=> bs!1697158 (not (= lambda!369818 lambda!369754))))

(declare-fun bs!1697159 () Bool)

(assert (= bs!1697159 (and b!6618801 b!6618774)))

(assert (=> bs!1697159 (not (= lambda!369818 lambda!369816))))

(declare-fun bs!1697160 () Bool)

(assert (= bs!1697160 (and b!6618801 b!6618723)))

(assert (=> bs!1697160 (= (and (= (reg!16820 r!7292) (reg!16820 (regOne!33494 r!7292))) (= r!7292 (regOne!33494 r!7292))) (= lambda!369818 lambda!369813))))

(assert (=> bs!1697158 (not (= lambda!369818 lambda!369753))))

(declare-fun bs!1697161 () Bool)

(assert (= bs!1697161 (and b!6618801 b!6618776)))

(assert (=> bs!1697161 (= (and (= (reg!16820 r!7292) (reg!16820 (regTwo!33494 r!7292))) (= r!7292 (regTwo!33494 r!7292))) (= lambda!369818 lambda!369815))))

(assert (=> b!6618801 true))

(assert (=> b!6618801 true))

(declare-fun bs!1697162 () Bool)

(declare-fun b!6618799 () Bool)

(assert (= bs!1697162 (and b!6618799 b!6618721)))

(declare-fun lambda!369819 () Int)

(assert (=> bs!1697162 (= (and (= (regOne!33494 r!7292) (regOne!33494 (regOne!33494 r!7292))) (= (regTwo!33494 r!7292) (regTwo!33494 (regOne!33494 r!7292)))) (= lambda!369819 lambda!369814))))

(declare-fun bs!1697163 () Bool)

(assert (= bs!1697163 (and b!6618799 b!6618041)))

(assert (=> bs!1697163 (= lambda!369819 lambda!369754)))

(declare-fun bs!1697164 () Bool)

(assert (= bs!1697164 (and b!6618799 b!6618801)))

(assert (=> bs!1697164 (not (= lambda!369819 lambda!369818))))

(declare-fun bs!1697165 () Bool)

(assert (= bs!1697165 (and b!6618799 b!6618774)))

(assert (=> bs!1697165 (= (and (= (regOne!33494 r!7292) (regOne!33494 (regTwo!33494 r!7292))) (= (regTwo!33494 r!7292) (regTwo!33494 (regTwo!33494 r!7292)))) (= lambda!369819 lambda!369816))))

(declare-fun bs!1697166 () Bool)

(assert (= bs!1697166 (and b!6618799 b!6618723)))

(assert (=> bs!1697166 (not (= lambda!369819 lambda!369813))))

(assert (=> bs!1697163 (not (= lambda!369819 lambda!369753))))

(declare-fun bs!1697167 () Bool)

(assert (= bs!1697167 (and b!6618799 b!6618776)))

(assert (=> bs!1697167 (not (= lambda!369819 lambda!369815))))

(assert (=> b!6618799 true))

(assert (=> b!6618799 true))

(declare-fun e!4004067 () Bool)

(declare-fun call!580066 () Bool)

(assert (=> b!6618799 (= e!4004067 call!580066)))

(declare-fun b!6618800 () Bool)

(declare-fun e!4004073 () Bool)

(declare-fun e!4004071 () Bool)

(assert (=> b!6618800 (= e!4004073 e!4004071)))

(declare-fun res!2713937 () Bool)

(assert (=> b!6618800 (= res!2713937 (not ((_ is EmptyLang!16491) r!7292)))))

(assert (=> b!6618800 (=> (not res!2713937) (not e!4004071))))

(declare-fun e!4004070 () Bool)

(assert (=> b!6618801 (= e!4004070 call!580066)))

(declare-fun b!6618802 () Bool)

(declare-fun res!2713936 () Bool)

(assert (=> b!6618802 (=> res!2713936 e!4004070)))

(declare-fun call!580065 () Bool)

(assert (=> b!6618802 (= res!2713936 call!580065)))

(assert (=> b!6618802 (= e!4004067 e!4004070)))

(declare-fun bm!580060 () Bool)

(assert (=> bm!580060 (= call!580065 (isEmpty!37938 s!2326))))

(declare-fun b!6618803 () Bool)

(declare-fun e!4004068 () Bool)

(declare-fun e!4004072 () Bool)

(assert (=> b!6618803 (= e!4004068 e!4004072)))

(declare-fun res!2713935 () Bool)

(assert (=> b!6618803 (= res!2713935 (matchRSpec!3592 (regOne!33495 r!7292) s!2326))))

(assert (=> b!6618803 (=> res!2713935 e!4004072)))

(declare-fun b!6618804 () Bool)

(declare-fun c!1220233 () Bool)

(assert (=> b!6618804 (= c!1220233 ((_ is ElementMatch!16491) r!7292))))

(declare-fun e!4004069 () Bool)

(assert (=> b!6618804 (= e!4004071 e!4004069)))

(declare-fun c!1220234 () Bool)

(declare-fun bm!580061 () Bool)

(assert (=> bm!580061 (= call!580066 (Exists!3561 (ite c!1220234 lambda!369818 lambda!369819)))))

(declare-fun b!6618805 () Bool)

(assert (=> b!6618805 (= e!4004069 (= s!2326 (Cons!65649 (c!1220016 r!7292) Nil!65649)))))

(declare-fun b!6618807 () Bool)

(assert (=> b!6618807 (= e!4004072 (matchRSpec!3592 (regTwo!33495 r!7292) s!2326))))

(declare-fun b!6618808 () Bool)

(assert (=> b!6618808 (= e!4004068 e!4004067)))

(assert (=> b!6618808 (= c!1220234 ((_ is Star!16491) r!7292))))

(declare-fun b!6618809 () Bool)

(assert (=> b!6618809 (= e!4004073 call!580065)))

(declare-fun b!6618806 () Bool)

(declare-fun c!1220235 () Bool)

(assert (=> b!6618806 (= c!1220235 ((_ is Union!16491) r!7292))))

(assert (=> b!6618806 (= e!4004069 e!4004068)))

(declare-fun d!2074727 () Bool)

(declare-fun c!1220232 () Bool)

(assert (=> d!2074727 (= c!1220232 ((_ is EmptyExpr!16491) r!7292))))

(assert (=> d!2074727 (= (matchRSpec!3592 r!7292 s!2326) e!4004073)))

(assert (= (and d!2074727 c!1220232) b!6618809))

(assert (= (and d!2074727 (not c!1220232)) b!6618800))

(assert (= (and b!6618800 res!2713937) b!6618804))

(assert (= (and b!6618804 c!1220233) b!6618805))

(assert (= (and b!6618804 (not c!1220233)) b!6618806))

(assert (= (and b!6618806 c!1220235) b!6618803))

(assert (= (and b!6618806 (not c!1220235)) b!6618808))

(assert (= (and b!6618803 (not res!2713935)) b!6618807))

(assert (= (and b!6618808 c!1220234) b!6618802))

(assert (= (and b!6618808 (not c!1220234)) b!6618799))

(assert (= (and b!6618802 (not res!2713936)) b!6618801))

(assert (= (or b!6618801 b!6618799) bm!580061))

(assert (= (or b!6618809 b!6618802) bm!580060))

(assert (=> bm!580060 m!7390636))

(declare-fun m!7390982 () Bool)

(assert (=> b!6618803 m!7390982))

(declare-fun m!7390984 () Bool)

(assert (=> bm!580061 m!7390984))

(declare-fun m!7390986 () Bool)

(assert (=> b!6618807 m!7390986))

(assert (=> b!6618052 d!2074727))

(declare-fun b!6618810 () Bool)

(declare-fun res!2713938 () Bool)

(declare-fun e!4004074 () Bool)

(assert (=> b!6618810 (=> res!2713938 e!4004074)))

(assert (=> b!6618810 (= res!2713938 (not (isEmpty!37938 (tail!12509 s!2326))))))

(declare-fun b!6618811 () Bool)

(declare-fun res!2713941 () Bool)

(declare-fun e!4004080 () Bool)

(assert (=> b!6618811 (=> res!2713941 e!4004080)))

(declare-fun e!4004079 () Bool)

(assert (=> b!6618811 (= res!2713941 e!4004079)))

(declare-fun res!2713944 () Bool)

(assert (=> b!6618811 (=> (not res!2713944) (not e!4004079))))

(declare-fun lt!2417855 () Bool)

(assert (=> b!6618811 (= res!2713944 lt!2417855)))

(declare-fun b!6618812 () Bool)

(declare-fun res!2713943 () Bool)

(assert (=> b!6618812 (=> (not res!2713943) (not e!4004079))))

(assert (=> b!6618812 (= res!2713943 (isEmpty!37938 (tail!12509 s!2326)))))

(declare-fun d!2074729 () Bool)

(declare-fun e!4004075 () Bool)

(assert (=> d!2074729 e!4004075))

(declare-fun c!1220237 () Bool)

(assert (=> d!2074729 (= c!1220237 ((_ is EmptyExpr!16491) r!7292))))

(declare-fun e!4004077 () Bool)

(assert (=> d!2074729 (= lt!2417855 e!4004077)))

(declare-fun c!1220236 () Bool)

(assert (=> d!2074729 (= c!1220236 (isEmpty!37938 s!2326))))

(assert (=> d!2074729 (validRegex!8227 r!7292)))

(assert (=> d!2074729 (= (matchR!8674 r!7292 s!2326) lt!2417855)))

(declare-fun b!6618813 () Bool)

(declare-fun e!4004078 () Bool)

(assert (=> b!6618813 (= e!4004078 e!4004074)))

(declare-fun res!2713939 () Bool)

(assert (=> b!6618813 (=> res!2713939 e!4004074)))

(declare-fun call!580067 () Bool)

(assert (=> b!6618813 (= res!2713939 call!580067)))

(declare-fun b!6618814 () Bool)

(declare-fun e!4004076 () Bool)

(assert (=> b!6618814 (= e!4004076 (not lt!2417855))))

(declare-fun b!6618815 () Bool)

(assert (=> b!6618815 (= e!4004079 (= (head!13424 s!2326) (c!1220016 r!7292)))))

(declare-fun b!6618816 () Bool)

(assert (=> b!6618816 (= e!4004077 (nullable!6484 r!7292))))

(declare-fun b!6618817 () Bool)

(assert (=> b!6618817 (= e!4004075 (= lt!2417855 call!580067))))

(declare-fun b!6618818 () Bool)

(assert (=> b!6618818 (= e!4004077 (matchR!8674 (derivativeStep!5171 r!7292 (head!13424 s!2326)) (tail!12509 s!2326)))))

(declare-fun bm!580062 () Bool)

(assert (=> bm!580062 (= call!580067 (isEmpty!37938 s!2326))))

(declare-fun b!6618819 () Bool)

(declare-fun res!2713942 () Bool)

(assert (=> b!6618819 (=> res!2713942 e!4004080)))

(assert (=> b!6618819 (= res!2713942 (not ((_ is ElementMatch!16491) r!7292)))))

(assert (=> b!6618819 (= e!4004076 e!4004080)))

(declare-fun b!6618820 () Bool)

(assert (=> b!6618820 (= e!4004074 (not (= (head!13424 s!2326) (c!1220016 r!7292))))))

(declare-fun b!6618821 () Bool)

(assert (=> b!6618821 (= e!4004080 e!4004078)))

(declare-fun res!2713940 () Bool)

(assert (=> b!6618821 (=> (not res!2713940) (not e!4004078))))

(assert (=> b!6618821 (= res!2713940 (not lt!2417855))))

(declare-fun b!6618822 () Bool)

(declare-fun res!2713945 () Bool)

(assert (=> b!6618822 (=> (not res!2713945) (not e!4004079))))

(assert (=> b!6618822 (= res!2713945 (not call!580067))))

(declare-fun b!6618823 () Bool)

(assert (=> b!6618823 (= e!4004075 e!4004076)))

(declare-fun c!1220238 () Bool)

(assert (=> b!6618823 (= c!1220238 ((_ is EmptyLang!16491) r!7292))))

(assert (= (and d!2074729 c!1220236) b!6618816))

(assert (= (and d!2074729 (not c!1220236)) b!6618818))

(assert (= (and d!2074729 c!1220237) b!6618817))

(assert (= (and d!2074729 (not c!1220237)) b!6618823))

(assert (= (and b!6618823 c!1220238) b!6618814))

(assert (= (and b!6618823 (not c!1220238)) b!6618819))

(assert (= (and b!6618819 (not res!2713942)) b!6618811))

(assert (= (and b!6618811 res!2713944) b!6618822))

(assert (= (and b!6618822 res!2713945) b!6618812))

(assert (= (and b!6618812 res!2713943) b!6618815))

(assert (= (and b!6618811 (not res!2713941)) b!6618821))

(assert (= (and b!6618821 res!2713940) b!6618813))

(assert (= (and b!6618813 (not res!2713939)) b!6618810))

(assert (= (and b!6618810 (not res!2713938)) b!6618820))

(assert (= (or b!6618817 b!6618813 b!6618822) bm!580062))

(declare-fun m!7390988 () Bool)

(assert (=> b!6618816 m!7390988))

(assert (=> b!6618818 m!7390640))

(assert (=> b!6618818 m!7390640))

(declare-fun m!7390990 () Bool)

(assert (=> b!6618818 m!7390990))

(assert (=> b!6618818 m!7390644))

(assert (=> b!6618818 m!7390990))

(assert (=> b!6618818 m!7390644))

(declare-fun m!7390992 () Bool)

(assert (=> b!6618818 m!7390992))

(assert (=> b!6618812 m!7390644))

(assert (=> b!6618812 m!7390644))

(assert (=> b!6618812 m!7390960))

(assert (=> b!6618810 m!7390644))

(assert (=> b!6618810 m!7390644))

(assert (=> b!6618810 m!7390960))

(assert (=> b!6618815 m!7390640))

(assert (=> bm!580062 m!7390636))

(assert (=> d!2074729 m!7390636))

(assert (=> d!2074729 m!7390514))

(assert (=> b!6618820 m!7390640))

(assert (=> b!6618052 d!2074729))

(declare-fun d!2074731 () Bool)

(assert (=> d!2074731 (= (matchR!8674 r!7292 s!2326) (matchRSpec!3592 r!7292 s!2326))))

(declare-fun lt!2417856 () Unit!159319)

(assert (=> d!2074731 (= lt!2417856 (choose!49467 r!7292 s!2326))))

(assert (=> d!2074731 (validRegex!8227 r!7292)))

(assert (=> d!2074731 (= (mainMatchTheorem!3592 r!7292 s!2326) lt!2417856)))

(declare-fun bs!1697168 () Bool)

(assert (= bs!1697168 d!2074731))

(assert (=> bs!1697168 m!7390504))

(assert (=> bs!1697168 m!7390502))

(declare-fun m!7390994 () Bool)

(assert (=> bs!1697168 m!7390994))

(assert (=> bs!1697168 m!7390514))

(assert (=> b!6618052 d!2074731))

(declare-fun b!6618842 () Bool)

(declare-fun e!4004094 () Bool)

(declare-fun lt!2417865 () Option!16382)

(assert (=> b!6618842 (= e!4004094 (not (isDefined!13085 lt!2417865)))))

(declare-fun b!6618843 () Bool)

(declare-fun e!4004093 () Option!16382)

(assert (=> b!6618843 (= e!4004093 (Some!16381 (tuple2!66941 Nil!65649 s!2326)))))

(declare-fun b!6618844 () Bool)

(declare-fun e!4004095 () Bool)

(declare-fun ++!14641 (List!65773 List!65773) List!65773)

(declare-fun get!22818 (Option!16382) tuple2!66940)

(assert (=> b!6618844 (= e!4004095 (= (++!14641 (_1!36773 (get!22818 lt!2417865)) (_2!36773 (get!22818 lt!2417865))) s!2326))))

(declare-fun d!2074733 () Bool)

(assert (=> d!2074733 e!4004094))

(declare-fun res!2713959 () Bool)

(assert (=> d!2074733 (=> res!2713959 e!4004094)))

(assert (=> d!2074733 (= res!2713959 e!4004095)))

(declare-fun res!2713960 () Bool)

(assert (=> d!2074733 (=> (not res!2713960) (not e!4004095))))

(assert (=> d!2074733 (= res!2713960 (isDefined!13085 lt!2417865))))

(assert (=> d!2074733 (= lt!2417865 e!4004093)))

(declare-fun c!1220244 () Bool)

(declare-fun e!4004092 () Bool)

(assert (=> d!2074733 (= c!1220244 e!4004092)))

(declare-fun res!2713956 () Bool)

(assert (=> d!2074733 (=> (not res!2713956) (not e!4004092))))

(assert (=> d!2074733 (= res!2713956 (matchR!8674 (regOne!33494 r!7292) Nil!65649))))

(assert (=> d!2074733 (validRegex!8227 (regOne!33494 r!7292))))

(assert (=> d!2074733 (= (findConcatSeparation!2796 (regOne!33494 r!7292) (regTwo!33494 r!7292) Nil!65649 s!2326 s!2326) lt!2417865)))

(declare-fun b!6618845 () Bool)

(assert (=> b!6618845 (= e!4004092 (matchR!8674 (regTwo!33494 r!7292) s!2326))))

(declare-fun b!6618846 () Bool)

(declare-fun res!2713957 () Bool)

(assert (=> b!6618846 (=> (not res!2713957) (not e!4004095))))

(assert (=> b!6618846 (= res!2713957 (matchR!8674 (regOne!33494 r!7292) (_1!36773 (get!22818 lt!2417865))))))

(declare-fun b!6618847 () Bool)

(declare-fun res!2713958 () Bool)

(assert (=> b!6618847 (=> (not res!2713958) (not e!4004095))))

(assert (=> b!6618847 (= res!2713958 (matchR!8674 (regTwo!33494 r!7292) (_2!36773 (get!22818 lt!2417865))))))

(declare-fun b!6618848 () Bool)

(declare-fun e!4004091 () Option!16382)

(assert (=> b!6618848 (= e!4004093 e!4004091)))

(declare-fun c!1220243 () Bool)

(assert (=> b!6618848 (= c!1220243 ((_ is Nil!65649) s!2326))))

(declare-fun b!6618849 () Bool)

(assert (=> b!6618849 (= e!4004091 None!16381)))

(declare-fun b!6618850 () Bool)

(declare-fun lt!2417864 () Unit!159319)

(declare-fun lt!2417863 () Unit!159319)

(assert (=> b!6618850 (= lt!2417864 lt!2417863)))

(assert (=> b!6618850 (= (++!14641 (++!14641 Nil!65649 (Cons!65649 (h!72097 s!2326) Nil!65649)) (t!379431 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2630 (List!65773 C!33252 List!65773 List!65773) Unit!159319)

(assert (=> b!6618850 (= lt!2417863 (lemmaMoveElementToOtherListKeepsConcatEq!2630 Nil!65649 (h!72097 s!2326) (t!379431 s!2326) s!2326))))

(assert (=> b!6618850 (= e!4004091 (findConcatSeparation!2796 (regOne!33494 r!7292) (regTwo!33494 r!7292) (++!14641 Nil!65649 (Cons!65649 (h!72097 s!2326) Nil!65649)) (t!379431 s!2326) s!2326))))

(assert (= (and d!2074733 res!2713956) b!6618845))

(assert (= (and d!2074733 c!1220244) b!6618843))

(assert (= (and d!2074733 (not c!1220244)) b!6618848))

(assert (= (and b!6618848 c!1220243) b!6618849))

(assert (= (and b!6618848 (not c!1220243)) b!6618850))

(assert (= (and d!2074733 res!2713960) b!6618846))

(assert (= (and b!6618846 res!2713957) b!6618847))

(assert (= (and b!6618847 res!2713958) b!6618844))

(assert (= (and d!2074733 (not res!2713959)) b!6618842))

(declare-fun m!7390996 () Bool)

(assert (=> b!6618842 m!7390996))

(declare-fun m!7390998 () Bool)

(assert (=> b!6618844 m!7390998))

(declare-fun m!7391000 () Bool)

(assert (=> b!6618844 m!7391000))

(assert (=> b!6618847 m!7390998))

(declare-fun m!7391002 () Bool)

(assert (=> b!6618847 m!7391002))

(assert (=> d!2074733 m!7390996))

(declare-fun m!7391004 () Bool)

(assert (=> d!2074733 m!7391004))

(assert (=> d!2074733 m!7390952))

(declare-fun m!7391006 () Bool)

(assert (=> b!6618850 m!7391006))

(assert (=> b!6618850 m!7391006))

(declare-fun m!7391008 () Bool)

(assert (=> b!6618850 m!7391008))

(declare-fun m!7391010 () Bool)

(assert (=> b!6618850 m!7391010))

(assert (=> b!6618850 m!7391006))

(declare-fun m!7391012 () Bool)

(assert (=> b!6618850 m!7391012))

(assert (=> b!6618845 m!7390460))

(assert (=> b!6618846 m!7390998))

(declare-fun m!7391014 () Bool)

(assert (=> b!6618846 m!7391014))

(assert (=> b!6618041 d!2074733))

(declare-fun d!2074735 () Bool)

(declare-fun choose!49470 (Int) Bool)

(assert (=> d!2074735 (= (Exists!3561 lambda!369754) (choose!49470 lambda!369754))))

(declare-fun bs!1697169 () Bool)

(assert (= bs!1697169 d!2074735))

(declare-fun m!7391016 () Bool)

(assert (=> bs!1697169 m!7391016))

(assert (=> b!6618041 d!2074735))

(declare-fun d!2074737 () Bool)

(assert (=> d!2074737 (= (Exists!3561 lambda!369753) (choose!49470 lambda!369753))))

(declare-fun bs!1697170 () Bool)

(assert (= bs!1697170 d!2074737))

(declare-fun m!7391018 () Bool)

(assert (=> bs!1697170 m!7391018))

(assert (=> b!6618041 d!2074737))

(declare-fun bs!1697171 () Bool)

(declare-fun d!2074739 () Bool)

(assert (= bs!1697171 (and d!2074739 b!6618721)))

(declare-fun lambda!369822 () Int)

(assert (=> bs!1697171 (not (= lambda!369822 lambda!369814))))

(declare-fun bs!1697172 () Bool)

(assert (= bs!1697172 (and d!2074739 b!6618801)))

(assert (=> bs!1697172 (not (= lambda!369822 lambda!369818))))

(declare-fun bs!1697173 () Bool)

(assert (= bs!1697173 (and d!2074739 b!6618774)))

(assert (=> bs!1697173 (not (= lambda!369822 lambda!369816))))

(declare-fun bs!1697174 () Bool)

(assert (= bs!1697174 (and d!2074739 b!6618723)))

(assert (=> bs!1697174 (not (= lambda!369822 lambda!369813))))

(declare-fun bs!1697175 () Bool)

(assert (= bs!1697175 (and d!2074739 b!6618041)))

(assert (=> bs!1697175 (= lambda!369822 lambda!369753)))

(declare-fun bs!1697176 () Bool)

(assert (= bs!1697176 (and d!2074739 b!6618776)))

(assert (=> bs!1697176 (not (= lambda!369822 lambda!369815))))

(assert (=> bs!1697175 (not (= lambda!369822 lambda!369754))))

(declare-fun bs!1697177 () Bool)

(assert (= bs!1697177 (and d!2074739 b!6618799)))

(assert (=> bs!1697177 (not (= lambda!369822 lambda!369819))))

(assert (=> d!2074739 true))

(assert (=> d!2074739 true))

(assert (=> d!2074739 true))

(assert (=> d!2074739 (= (isDefined!13085 (findConcatSeparation!2796 (regOne!33494 r!7292) (regTwo!33494 r!7292) Nil!65649 s!2326 s!2326)) (Exists!3561 lambda!369822))))

(declare-fun lt!2417868 () Unit!159319)

(declare-fun choose!49471 (Regex!16491 Regex!16491 List!65773) Unit!159319)

(assert (=> d!2074739 (= lt!2417868 (choose!49471 (regOne!33494 r!7292) (regTwo!33494 r!7292) s!2326))))

(assert (=> d!2074739 (validRegex!8227 (regOne!33494 r!7292))))

(assert (=> d!2074739 (= (lemmaFindConcatSeparationEquivalentToExists!2560 (regOne!33494 r!7292) (regTwo!33494 r!7292) s!2326) lt!2417868)))

(declare-fun bs!1697178 () Bool)

(assert (= bs!1697178 d!2074739))

(declare-fun m!7391020 () Bool)

(assert (=> bs!1697178 m!7391020))

(assert (=> bs!1697178 m!7390442))

(assert (=> bs!1697178 m!7390444))

(assert (=> bs!1697178 m!7390952))

(assert (=> bs!1697178 m!7390442))

(declare-fun m!7391022 () Bool)

(assert (=> bs!1697178 m!7391022))

(assert (=> b!6618041 d!2074739))

(declare-fun bs!1697179 () Bool)

(declare-fun d!2074741 () Bool)

(assert (= bs!1697179 (and d!2074741 b!6618721)))

(declare-fun lambda!369827 () Int)

(assert (=> bs!1697179 (not (= lambda!369827 lambda!369814))))

(declare-fun bs!1697180 () Bool)

(assert (= bs!1697180 (and d!2074741 d!2074739)))

(assert (=> bs!1697180 (= lambda!369827 lambda!369822)))

(declare-fun bs!1697181 () Bool)

(assert (= bs!1697181 (and d!2074741 b!6618801)))

(assert (=> bs!1697181 (not (= lambda!369827 lambda!369818))))

(declare-fun bs!1697182 () Bool)

(assert (= bs!1697182 (and d!2074741 b!6618774)))

(assert (=> bs!1697182 (not (= lambda!369827 lambda!369816))))

(declare-fun bs!1697183 () Bool)

(assert (= bs!1697183 (and d!2074741 b!6618723)))

(assert (=> bs!1697183 (not (= lambda!369827 lambda!369813))))

(declare-fun bs!1697184 () Bool)

(assert (= bs!1697184 (and d!2074741 b!6618041)))

(assert (=> bs!1697184 (= lambda!369827 lambda!369753)))

(declare-fun bs!1697185 () Bool)

(assert (= bs!1697185 (and d!2074741 b!6618776)))

(assert (=> bs!1697185 (not (= lambda!369827 lambda!369815))))

(assert (=> bs!1697184 (not (= lambda!369827 lambda!369754))))

(declare-fun bs!1697186 () Bool)

(assert (= bs!1697186 (and d!2074741 b!6618799)))

(assert (=> bs!1697186 (not (= lambda!369827 lambda!369819))))

(assert (=> d!2074741 true))

(assert (=> d!2074741 true))

(assert (=> d!2074741 true))

(declare-fun lambda!369828 () Int)

(assert (=> bs!1697179 (= (and (= (regOne!33494 r!7292) (regOne!33494 (regOne!33494 r!7292))) (= (regTwo!33494 r!7292) (regTwo!33494 (regOne!33494 r!7292)))) (= lambda!369828 lambda!369814))))

(assert (=> bs!1697180 (not (= lambda!369828 lambda!369822))))

(declare-fun bs!1697187 () Bool)

(assert (= bs!1697187 d!2074741))

(assert (=> bs!1697187 (not (= lambda!369828 lambda!369827))))

(assert (=> bs!1697181 (not (= lambda!369828 lambda!369818))))

(assert (=> bs!1697182 (= (and (= (regOne!33494 r!7292) (regOne!33494 (regTwo!33494 r!7292))) (= (regTwo!33494 r!7292) (regTwo!33494 (regTwo!33494 r!7292)))) (= lambda!369828 lambda!369816))))

(assert (=> bs!1697183 (not (= lambda!369828 lambda!369813))))

(assert (=> bs!1697184 (not (= lambda!369828 lambda!369753))))

(assert (=> bs!1697185 (not (= lambda!369828 lambda!369815))))

(assert (=> bs!1697184 (= lambda!369828 lambda!369754)))

(assert (=> bs!1697186 (= lambda!369828 lambda!369819)))

(assert (=> d!2074741 true))

(assert (=> d!2074741 true))

(assert (=> d!2074741 true))

(assert (=> d!2074741 (= (Exists!3561 lambda!369827) (Exists!3561 lambda!369828))))

(declare-fun lt!2417871 () Unit!159319)

(declare-fun choose!49472 (Regex!16491 Regex!16491 List!65773) Unit!159319)

(assert (=> d!2074741 (= lt!2417871 (choose!49472 (regOne!33494 r!7292) (regTwo!33494 r!7292) s!2326))))

(assert (=> d!2074741 (validRegex!8227 (regOne!33494 r!7292))))

(assert (=> d!2074741 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2098 (regOne!33494 r!7292) (regTwo!33494 r!7292) s!2326) lt!2417871)))

(declare-fun m!7391024 () Bool)

(assert (=> bs!1697187 m!7391024))

(declare-fun m!7391026 () Bool)

(assert (=> bs!1697187 m!7391026))

(declare-fun m!7391028 () Bool)

(assert (=> bs!1697187 m!7391028))

(assert (=> bs!1697187 m!7390952))

(assert (=> b!6618041 d!2074741))

(declare-fun d!2074743 () Bool)

(declare-fun isEmpty!37940 (Option!16382) Bool)

(assert (=> d!2074743 (= (isDefined!13085 (findConcatSeparation!2796 (regOne!33494 r!7292) (regTwo!33494 r!7292) Nil!65649 s!2326 s!2326)) (not (isEmpty!37940 (findConcatSeparation!2796 (regOne!33494 r!7292) (regTwo!33494 r!7292) Nil!65649 s!2326 s!2326))))))

(declare-fun bs!1697188 () Bool)

(assert (= bs!1697188 d!2074743))

(assert (=> bs!1697188 m!7390442))

(declare-fun m!7391030 () Bool)

(assert (=> bs!1697188 m!7391030))

(assert (=> b!6618041 d!2074743))

(declare-fun d!2074745 () Bool)

(assert (=> d!2074745 (= (isEmpty!37935 (t!379430 (exprs!6375 (h!72098 zl!343)))) ((_ is Nil!65648) (t!379430 (exprs!6375 (h!72098 zl!343)))))))

(assert (=> b!6618043 d!2074745))

(declare-fun bs!1697189 () Bool)

(declare-fun d!2074747 () Bool)

(assert (= bs!1697189 (and d!2074747 b!6618050)))

(declare-fun lambda!369829 () Int)

(assert (=> bs!1697189 (= lambda!369829 lambda!369755)))

(declare-fun bs!1697190 () Bool)

(assert (= bs!1697190 (and d!2074747 d!2074689)))

(assert (=> bs!1697190 (= lambda!369829 lambda!369801)))

(assert (=> d!2074747 true))

(assert (=> d!2074747 (= (derivationStepZipper!2457 lt!2417763 (h!72097 s!2326)) (flatMap!1996 lt!2417763 lambda!369829))))

(declare-fun bs!1697191 () Bool)

(assert (= bs!1697191 d!2074747))

(declare-fun m!7391032 () Bool)

(assert (=> bs!1697191 m!7391032))

(assert (=> b!6618053 d!2074747))

(declare-fun d!2074749 () Bool)

(assert (=> d!2074749 (= (flatMap!1996 lt!2417763 lambda!369755) (choose!49463 lt!2417763 lambda!369755))))

(declare-fun bs!1697192 () Bool)

(assert (= bs!1697192 d!2074749))

(declare-fun m!7391034 () Bool)

(assert (=> bs!1697192 m!7391034))

(assert (=> b!6618053 d!2074749))

(assert (=> b!6618053 d!2074637))

(declare-fun d!2074751 () Bool)

(assert (=> d!2074751 (= (flatMap!1996 lt!2417763 lambda!369755) (dynLambda!26146 lambda!369755 lt!2417749))))

(declare-fun lt!2417872 () Unit!159319)

(assert (=> d!2074751 (= lt!2417872 (choose!49465 lt!2417763 lt!2417749 lambda!369755))))

(assert (=> d!2074751 (= lt!2417763 (store ((as const (Array Context!11750 Bool)) false) lt!2417749 true))))

(assert (=> d!2074751 (= (lemmaFlatMapOnSingletonSet!1522 lt!2417763 lt!2417749 lambda!369755) lt!2417872)))

(declare-fun b_lambda!250315 () Bool)

(assert (=> (not b_lambda!250315) (not d!2074751)))

(declare-fun bs!1697193 () Bool)

(assert (= bs!1697193 d!2074751))

(assert (=> bs!1697193 m!7390480))

(declare-fun m!7391036 () Bool)

(assert (=> bs!1697193 m!7391036))

(declare-fun m!7391038 () Bool)

(assert (=> bs!1697193 m!7391038))

(assert (=> bs!1697193 m!7390482))

(assert (=> b!6618053 d!2074751))

(declare-fun b!6618873 () Bool)

(declare-fun e!4004104 () Bool)

(assert (=> b!6618873 (= e!4004104 tp_is_empty!42235)))

(declare-fun b!6618875 () Bool)

(declare-fun tp!1822715 () Bool)

(assert (=> b!6618875 (= e!4004104 tp!1822715)))

(declare-fun b!6618876 () Bool)

(declare-fun tp!1822713 () Bool)

(declare-fun tp!1822714 () Bool)

(assert (=> b!6618876 (= e!4004104 (and tp!1822713 tp!1822714))))

(declare-fun b!6618874 () Bool)

(declare-fun tp!1822712 () Bool)

(declare-fun tp!1822716 () Bool)

(assert (=> b!6618874 (= e!4004104 (and tp!1822712 tp!1822716))))

(assert (=> b!6618047 (= tp!1822636 e!4004104)))

(assert (= (and b!6618047 ((_ is ElementMatch!16491) (regOne!33494 r!7292))) b!6618873))

(assert (= (and b!6618047 ((_ is Concat!25336) (regOne!33494 r!7292))) b!6618874))

(assert (= (and b!6618047 ((_ is Star!16491) (regOne!33494 r!7292))) b!6618875))

(assert (= (and b!6618047 ((_ is Union!16491) (regOne!33494 r!7292))) b!6618876))

(declare-fun b!6618877 () Bool)

(declare-fun e!4004105 () Bool)

(assert (=> b!6618877 (= e!4004105 tp_is_empty!42235)))

(declare-fun b!6618879 () Bool)

(declare-fun tp!1822720 () Bool)

(assert (=> b!6618879 (= e!4004105 tp!1822720)))

(declare-fun b!6618880 () Bool)

(declare-fun tp!1822718 () Bool)

(declare-fun tp!1822719 () Bool)

(assert (=> b!6618880 (= e!4004105 (and tp!1822718 tp!1822719))))

(declare-fun b!6618878 () Bool)

(declare-fun tp!1822717 () Bool)

(declare-fun tp!1822721 () Bool)

(assert (=> b!6618878 (= e!4004105 (and tp!1822717 tp!1822721))))

(assert (=> b!6618047 (= tp!1822642 e!4004105)))

(assert (= (and b!6618047 ((_ is ElementMatch!16491) (regTwo!33494 r!7292))) b!6618877))

(assert (= (and b!6618047 ((_ is Concat!25336) (regTwo!33494 r!7292))) b!6618878))

(assert (= (and b!6618047 ((_ is Star!16491) (regTwo!33494 r!7292))) b!6618879))

(assert (= (and b!6618047 ((_ is Union!16491) (regTwo!33494 r!7292))) b!6618880))

(declare-fun b!6618888 () Bool)

(declare-fun e!4004111 () Bool)

(declare-fun tp!1822726 () Bool)

(assert (=> b!6618888 (= e!4004111 tp!1822726)))

(declare-fun tp!1822727 () Bool)

(declare-fun b!6618887 () Bool)

(declare-fun e!4004110 () Bool)

(assert (=> b!6618887 (= e!4004110 (and (inv!84474 (h!72098 (t!379432 zl!343))) e!4004111 tp!1822727))))

(assert (=> b!6618061 (= tp!1822637 e!4004110)))

(assert (= b!6618887 b!6618888))

(assert (= (and b!6618061 ((_ is Cons!65650) (t!379432 zl!343))) b!6618887))

(declare-fun m!7391040 () Bool)

(assert (=> b!6618887 m!7391040))

(declare-fun b!6618893 () Bool)

(declare-fun e!4004114 () Bool)

(declare-fun tp!1822730 () Bool)

(assert (=> b!6618893 (= e!4004114 (and tp_is_empty!42235 tp!1822730))))

(assert (=> b!6618057 (= tp!1822640 e!4004114)))

(assert (= (and b!6618057 ((_ is Cons!65649) (t!379431 s!2326))) b!6618893))

(declare-fun b!6618898 () Bool)

(declare-fun e!4004117 () Bool)

(declare-fun tp!1822735 () Bool)

(declare-fun tp!1822736 () Bool)

(assert (=> b!6618898 (= e!4004117 (and tp!1822735 tp!1822736))))

(assert (=> b!6618046 (= tp!1822634 e!4004117)))

(assert (= (and b!6618046 ((_ is Cons!65648) (exprs!6375 (h!72098 zl!343)))) b!6618898))

(declare-fun condSetEmpty!45244 () Bool)

(assert (=> setNonEmpty!45238 (= condSetEmpty!45244 (= setRest!45238 ((as const (Array Context!11750 Bool)) false)))))

(declare-fun setRes!45244 () Bool)

(assert (=> setNonEmpty!45238 (= tp!1822639 setRes!45244)))

(declare-fun setIsEmpty!45244 () Bool)

(assert (=> setIsEmpty!45244 setRes!45244))

(declare-fun tp!1822742 () Bool)

(declare-fun setElem!45244 () Context!11750)

(declare-fun e!4004120 () Bool)

(declare-fun setNonEmpty!45244 () Bool)

(assert (=> setNonEmpty!45244 (= setRes!45244 (and tp!1822742 (inv!84474 setElem!45244) e!4004120))))

(declare-fun setRest!45244 () (InoxSet Context!11750))

(assert (=> setNonEmpty!45244 (= setRest!45238 ((_ map or) (store ((as const (Array Context!11750 Bool)) false) setElem!45244 true) setRest!45244))))

(declare-fun b!6618903 () Bool)

(declare-fun tp!1822741 () Bool)

(assert (=> b!6618903 (= e!4004120 tp!1822741)))

(assert (= (and setNonEmpty!45238 condSetEmpty!45244) setIsEmpty!45244))

(assert (= (and setNonEmpty!45238 (not condSetEmpty!45244)) setNonEmpty!45244))

(assert (= setNonEmpty!45244 b!6618903))

(declare-fun m!7391042 () Bool)

(assert (=> setNonEmpty!45244 m!7391042))

(declare-fun b!6618904 () Bool)

(declare-fun e!4004121 () Bool)

(assert (=> b!6618904 (= e!4004121 tp_is_empty!42235)))

(declare-fun b!6618906 () Bool)

(declare-fun tp!1822746 () Bool)

(assert (=> b!6618906 (= e!4004121 tp!1822746)))

(declare-fun b!6618907 () Bool)

(declare-fun tp!1822744 () Bool)

(declare-fun tp!1822745 () Bool)

(assert (=> b!6618907 (= e!4004121 (and tp!1822744 tp!1822745))))

(declare-fun b!6618905 () Bool)

(declare-fun tp!1822743 () Bool)

(declare-fun tp!1822747 () Bool)

(assert (=> b!6618905 (= e!4004121 (and tp!1822743 tp!1822747))))

(assert (=> b!6618062 (= tp!1822643 e!4004121)))

(assert (= (and b!6618062 ((_ is ElementMatch!16491) (reg!16820 r!7292))) b!6618904))

(assert (= (and b!6618062 ((_ is Concat!25336) (reg!16820 r!7292))) b!6618905))

(assert (= (and b!6618062 ((_ is Star!16491) (reg!16820 r!7292))) b!6618906))

(assert (= (and b!6618062 ((_ is Union!16491) (reg!16820 r!7292))) b!6618907))

(declare-fun b!6618908 () Bool)

(declare-fun e!4004122 () Bool)

(declare-fun tp!1822748 () Bool)

(declare-fun tp!1822749 () Bool)

(assert (=> b!6618908 (= e!4004122 (and tp!1822748 tp!1822749))))

(assert (=> b!6618067 (= tp!1822641 e!4004122)))

(assert (= (and b!6618067 ((_ is Cons!65648) (exprs!6375 setElem!45238))) b!6618908))

(declare-fun b!6618909 () Bool)

(declare-fun e!4004123 () Bool)

(assert (=> b!6618909 (= e!4004123 tp_is_empty!42235)))

(declare-fun b!6618911 () Bool)

(declare-fun tp!1822753 () Bool)

(assert (=> b!6618911 (= e!4004123 tp!1822753)))

(declare-fun b!6618912 () Bool)

(declare-fun tp!1822751 () Bool)

(declare-fun tp!1822752 () Bool)

(assert (=> b!6618912 (= e!4004123 (and tp!1822751 tp!1822752))))

(declare-fun b!6618910 () Bool)

(declare-fun tp!1822750 () Bool)

(declare-fun tp!1822754 () Bool)

(assert (=> b!6618910 (= e!4004123 (and tp!1822750 tp!1822754))))

(assert (=> b!6618058 (= tp!1822638 e!4004123)))

(assert (= (and b!6618058 ((_ is ElementMatch!16491) (regOne!33495 r!7292))) b!6618909))

(assert (= (and b!6618058 ((_ is Concat!25336) (regOne!33495 r!7292))) b!6618910))

(assert (= (and b!6618058 ((_ is Star!16491) (regOne!33495 r!7292))) b!6618911))

(assert (= (and b!6618058 ((_ is Union!16491) (regOne!33495 r!7292))) b!6618912))

(declare-fun b!6618913 () Bool)

(declare-fun e!4004124 () Bool)

(assert (=> b!6618913 (= e!4004124 tp_is_empty!42235)))

(declare-fun b!6618915 () Bool)

(declare-fun tp!1822758 () Bool)

(assert (=> b!6618915 (= e!4004124 tp!1822758)))

(declare-fun b!6618916 () Bool)

(declare-fun tp!1822756 () Bool)

(declare-fun tp!1822757 () Bool)

(assert (=> b!6618916 (= e!4004124 (and tp!1822756 tp!1822757))))

(declare-fun b!6618914 () Bool)

(declare-fun tp!1822755 () Bool)

(declare-fun tp!1822759 () Bool)

(assert (=> b!6618914 (= e!4004124 (and tp!1822755 tp!1822759))))

(assert (=> b!6618058 (= tp!1822635 e!4004124)))

(assert (= (and b!6618058 ((_ is ElementMatch!16491) (regTwo!33495 r!7292))) b!6618913))

(assert (= (and b!6618058 ((_ is Concat!25336) (regTwo!33495 r!7292))) b!6618914))

(assert (= (and b!6618058 ((_ is Star!16491) (regTwo!33495 r!7292))) b!6618915))

(assert (= (and b!6618058 ((_ is Union!16491) (regTwo!33495 r!7292))) b!6618916))

(declare-fun b_lambda!250317 () Bool)

(assert (= b_lambda!250315 (or b!6618050 b_lambda!250317)))

(declare-fun bs!1697194 () Bool)

(declare-fun d!2074753 () Bool)

(assert (= bs!1697194 (and d!2074753 b!6618050)))

(assert (=> bs!1697194 (= (dynLambda!26146 lambda!369755 lt!2417749) (derivationStepZipperUp!1665 lt!2417749 (h!72097 s!2326)))))

(assert (=> bs!1697194 m!7390430))

(assert (=> d!2074751 d!2074753))

(declare-fun b_lambda!250319 () Bool)

(assert (= b_lambda!250307 (or b!6618050 b_lambda!250319)))

(declare-fun bs!1697195 () Bool)

(declare-fun d!2074755 () Bool)

(assert (= bs!1697195 (and d!2074755 b!6618050)))

(assert (=> bs!1697195 (= (dynLambda!26146 lambda!369755 (h!72098 zl!343)) (derivationStepZipperUp!1665 (h!72098 zl!343) (h!72097 s!2326)))))

(assert (=> bs!1697195 m!7390432))

(assert (=> d!2074645 d!2074755))

(check-sat (not b!6618213) (not d!2074747) (not bs!1697194) (not b!6618842) (not b!6618438) (not bm!580041) (not d!2074571) (not b!6618905) (not d!2074737) (not b!6618790) (not b!6618810) (not bm!580062) (not d!2074729) (not d!2074565) (not b!6618878) (not d!2074569) (not d!2074627) (not b!6618562) (not setNonEmpty!45244) (not d!2074689) (not b!6618844) (not d!2074607) (not b!6618303) (not b!6618912) (not d!2074663) (not b!6618820) (not b!6618875) (not b_lambda!250319) (not b!6618376) (not b!6618874) (not b!6618887) (not b!6618910) (not b_lambda!250317) (not b!6618911) (not b!6618846) (not d!2074751) (not d!2074739) (not b!6618778) (not b!6618766) (not d!2074629) (not b!6618876) (not d!2074639) (not b!6618444) (not bm!580010) (not b!6618893) (not bm!579978) (not d!2074735) (not b!6618850) (not d!2074611) (not b!6618375) (not b!6618782) (not bm!580011) (not bm!580043) (not bm!580039) (not b!6618439) (not b!6618785) (not b!6618914) (not b!6618729) (not b!6618079) (not b!6618300) (not b!6618448) (not d!2074733) (not b!6618879) (not d!2074741) (not b!6618566) (not b!6618378) (not d!2074723) (not b!6618791) (not b!6618760) (not b!6618291) (not b!6618906) (not b!6618768) (not d!2074719) (not b!6618815) (not bm!580059) (not b!6618449) (not d!2074677) (not b!6618370) (not b!6618185) (not bm!580057) (not bm!580040) (not d!2074743) (not b!6618793) (not b!6618569) (not b!6618903) (not d!2074749) (not d!2074731) (not b!6618916) (not bm!580056) (not d!2074721) (not b!6618564) (not b!6618898) (not b!6618770) (not b!6618762) (not b!6618374) (not b!6618315) (not b!6618394) (not d!2074581) (not b!6618725) (not d!2074687) (not b!6618915) (not b!6618816) (not b!6618377) (not b!6618812) (not b!6618765) (not b!6618807) (not d!2074645) (not bm!580060) (not b!6618117) (not b!6618372) (not b!6618293) (not bs!1697195) (not b!6618795) (not bm!580061) (not bm!580052) (not d!2074573) (not b!6618818) (not d!2074713) (not b!6618113) (not d!2074715) (not d!2074725) (not d!2074585) (not bm!580009) (not b!6618297) (not b!6618847) (not bm!580044) (not b!6618565) (not b!6618295) (not b!6618538) (not b!6618888) (not b!6618301) (not b!6618302) (not b!6618880) (not b!6618294) (not b!6618112) (not bm!579979) (not b!6618316) (not b!6618570) (not d!2074605) (not b!6618298) (not b!6618299) (not b!6618787) (not b!6618568) (not b!6618908) (not b!6618443) (not b!6618907) (not bm!580058) tp_is_empty!42235 (not d!2074603) (not bm!580053) (not b!6618845) (not b!6618560) (not b!6618803) (not b!6618116))
(check-sat)
