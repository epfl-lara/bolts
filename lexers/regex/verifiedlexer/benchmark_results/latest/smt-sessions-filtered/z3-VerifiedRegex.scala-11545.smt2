; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!635482 () Bool)

(assert start!635482)

(declare-fun b!6433843 () Bool)

(assert (=> b!6433843 true))

(assert (=> b!6433843 true))

(declare-fun lambda!355999 () Int)

(declare-fun lambda!355998 () Int)

(assert (=> b!6433843 (not (= lambda!355999 lambda!355998))))

(assert (=> b!6433843 true))

(assert (=> b!6433843 true))

(declare-fun b!6433884 () Bool)

(assert (=> b!6433884 true))

(declare-fun bs!1619025 () Bool)

(declare-fun b!6433866 () Bool)

(assert (= bs!1619025 (and b!6433866 b!6433843)))

(declare-datatypes ((C!32944 0))(
  ( (C!32945 (val!26174 Int)) )
))
(declare-datatypes ((Regex!16337 0))(
  ( (ElementMatch!16337 (c!1176002 C!32944)) (Concat!25182 (regOne!33186 Regex!16337) (regTwo!33186 Regex!16337)) (EmptyExpr!16337) (Star!16337 (reg!16666 Regex!16337)) (EmptyLang!16337) (Union!16337 (regOne!33187 Regex!16337) (regTwo!33187 Regex!16337)) )
))
(declare-fun r!7292 () Regex!16337)

(declare-fun lt!2379981 () Regex!16337)

(declare-fun lambda!356001 () Int)

(assert (=> bs!1619025 (= (= lt!2379981 (regOne!33186 r!7292)) (= lambda!356001 lambda!355998))))

(assert (=> bs!1619025 (not (= lambda!356001 lambda!355999))))

(assert (=> b!6433866 true))

(assert (=> b!6433866 true))

(assert (=> b!6433866 true))

(declare-fun lambda!356002 () Int)

(assert (=> bs!1619025 (not (= lambda!356002 lambda!355998))))

(assert (=> bs!1619025 (= (= lt!2379981 (regOne!33186 r!7292)) (= lambda!356002 lambda!355999))))

(assert (=> b!6433866 (not (= lambda!356002 lambda!356001))))

(assert (=> b!6433866 true))

(assert (=> b!6433866 true))

(assert (=> b!6433866 true))

(declare-fun bs!1619026 () Bool)

(declare-fun b!6433847 () Bool)

(assert (= bs!1619026 (and b!6433847 b!6433843)))

(declare-datatypes ((List!65310 0))(
  ( (Nil!65186) (Cons!65186 (h!71634 C!32944) (t!378928 List!65310)) )
))
(declare-fun s!2326 () List!65310)

(declare-datatypes ((tuple2!66632 0))(
  ( (tuple2!66633 (_1!36619 List!65310) (_2!36619 List!65310)) )
))
(declare-fun lt!2379961 () tuple2!66632)

(declare-fun lambda!356003 () Int)

(assert (=> bs!1619026 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) (regOne!33186 r!7292)) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356003 lambda!355998))))

(assert (=> bs!1619026 (not (= lambda!356003 lambda!355999))))

(declare-fun bs!1619027 () Bool)

(assert (= bs!1619027 (and b!6433847 b!6433866)))

(assert (=> bs!1619027 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356003 lambda!356001))))

(assert (=> bs!1619027 (not (= lambda!356003 lambda!356002))))

(assert (=> b!6433847 true))

(assert (=> b!6433847 true))

(assert (=> b!6433847 true))

(declare-fun lambda!356004 () Int)

(assert (=> b!6433847 (not (= lambda!356004 lambda!356003))))

(assert (=> bs!1619026 (not (= lambda!356004 lambda!355998))))

(assert (=> bs!1619026 (not (= lambda!356004 lambda!355999))))

(assert (=> bs!1619027 (not (= lambda!356004 lambda!356001))))

(assert (=> bs!1619027 (not (= lambda!356004 lambda!356002))))

(assert (=> b!6433847 true))

(assert (=> b!6433847 true))

(assert (=> b!6433847 true))

(declare-fun lambda!356005 () Int)

(assert (=> b!6433847 (not (= lambda!356005 lambda!356003))))

(assert (=> bs!1619026 (not (= lambda!356005 lambda!355998))))

(assert (=> bs!1619026 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) (regOne!33186 r!7292)) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356005 lambda!355999))))

(assert (=> bs!1619027 (not (= lambda!356005 lambda!356001))))

(assert (=> b!6433847 (not (= lambda!356005 lambda!356004))))

(assert (=> bs!1619027 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356005 lambda!356002))))

(assert (=> b!6433847 true))

(assert (=> b!6433847 true))

(assert (=> b!6433847 true))

(declare-fun b!6433842 () Bool)

(declare-fun e!3902905 () Bool)

(declare-fun tp!1784633 () Bool)

(assert (=> b!6433842 (= e!3902905 tp!1784633)))

(declare-fun e!3902915 () Bool)

(declare-fun e!3902909 () Bool)

(assert (=> b!6433843 (= e!3902915 e!3902909)))

(declare-fun res!2644655 () Bool)

(assert (=> b!6433843 (=> res!2644655 e!3902909)))

(declare-fun lt!2379992 () Bool)

(declare-fun lt!2379969 () Bool)

(get-info :version)

(assert (=> b!6433843 (= res!2644655 (or (not (= lt!2379969 lt!2379992)) ((_ is Nil!65186) s!2326)))))

(declare-fun Exists!3407 (Int) Bool)

(assert (=> b!6433843 (= (Exists!3407 lambda!355998) (Exists!3407 lambda!355999))))

(declare-datatypes ((Unit!158679 0))(
  ( (Unit!158680) )
))
(declare-fun lt!2379955 () Unit!158679)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1944 (Regex!16337 Regex!16337 List!65310) Unit!158679)

(assert (=> b!6433843 (= lt!2379955 (lemmaExistCutMatchRandMatchRSpecEquivalent!1944 (regOne!33186 r!7292) (regTwo!33186 r!7292) s!2326))))

(assert (=> b!6433843 (= lt!2379992 (Exists!3407 lambda!355998))))

(declare-datatypes ((Option!16228 0))(
  ( (None!16227) (Some!16227 (v!52400 tuple2!66632)) )
))
(declare-fun isDefined!12931 (Option!16228) Bool)

(declare-fun findConcatSeparation!2642 (Regex!16337 Regex!16337 List!65310 List!65310 List!65310) Option!16228)

(assert (=> b!6433843 (= lt!2379992 (isDefined!12931 (findConcatSeparation!2642 (regOne!33186 r!7292) (regTwo!33186 r!7292) Nil!65186 s!2326 s!2326)))))

(declare-fun lt!2379995 () Unit!158679)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2406 (Regex!16337 Regex!16337 List!65310) Unit!158679)

(assert (=> b!6433843 (= lt!2379995 (lemmaFindConcatSeparationEquivalentToExists!2406 (regOne!33186 r!7292) (regTwo!33186 r!7292) s!2326))))

(declare-fun b!6433844 () Bool)

(declare-fun res!2644678 () Bool)

(declare-fun e!3902901 () Bool)

(assert (=> b!6433844 (=> res!2644678 e!3902901)))

(declare-fun matchR!8520 (Regex!16337 List!65310) Bool)

(assert (=> b!6433844 (= res!2644678 (not (matchR!8520 lt!2379981 (_1!36619 lt!2379961))))))

(declare-fun b!6433845 () Bool)

(declare-fun res!2644653 () Bool)

(assert (=> b!6433845 (=> res!2644653 e!3902915)))

(declare-datatypes ((List!65311 0))(
  ( (Nil!65187) (Cons!65187 (h!71635 Regex!16337) (t!378929 List!65311)) )
))
(declare-datatypes ((Context!11442 0))(
  ( (Context!11443 (exprs!6221 List!65311)) )
))
(declare-datatypes ((List!65312 0))(
  ( (Nil!65188) (Cons!65188 (h!71636 Context!11442) (t!378930 List!65312)) )
))
(declare-fun zl!343 () List!65312)

(declare-fun isEmpty!37356 (List!65312) Bool)

(assert (=> b!6433845 (= res!2644653 (not (isEmpty!37356 (t!378930 zl!343))))))

(declare-fun b!6433846 () Bool)

(declare-fun res!2644677 () Bool)

(declare-fun e!3902912 () Bool)

(assert (=> b!6433846 (=> res!2644677 e!3902912)))

(declare-fun e!3902911 () Bool)

(assert (=> b!6433846 (= res!2644677 e!3902911)))

(declare-fun res!2644656 () Bool)

(assert (=> b!6433846 (=> (not res!2644656) (not e!3902911))))

(assert (=> b!6433846 (= res!2644656 ((_ is Concat!25182) (regOne!33186 r!7292)))))

(declare-fun e!3902913 () Bool)

(assert (=> b!6433847 (= e!3902901 e!3902913)))

(declare-fun res!2644659 () Bool)

(assert (=> b!6433847 (=> res!2644659 e!3902913)))

(declare-fun lt!2379971 () List!65310)

(assert (=> b!6433847 (= res!2644659 (not (= (_1!36619 lt!2379961) lt!2379971)))))

(declare-fun lt!2379993 () tuple2!66632)

(declare-fun ++!14405 (List!65310 List!65310) List!65310)

(assert (=> b!6433847 (= lt!2379971 (++!14405 (_1!36619 lt!2379993) (_2!36619 lt!2379993)))))

(declare-fun lt!2380002 () Option!16228)

(declare-fun get!22589 (Option!16228) tuple2!66632)

(assert (=> b!6433847 (= lt!2379993 (get!22589 lt!2380002))))

(assert (=> b!6433847 (= (Exists!3407 lambda!356003) (Exists!3407 lambda!356005))))

(declare-fun lt!2379987 () Unit!158679)

(assert (=> b!6433847 (= lt!2379987 (lemmaExistCutMatchRandMatchRSpecEquivalent!1944 (reg!16666 (regOne!33186 r!7292)) lt!2379981 (_1!36619 lt!2379961)))))

(assert (=> b!6433847 (= (Exists!3407 lambda!356003) (Exists!3407 lambda!356004))))

(declare-fun lt!2379960 () Unit!158679)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!628 (Regex!16337 List!65310) Unit!158679)

(assert (=> b!6433847 (= lt!2379960 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!628 (reg!16666 (regOne!33186 r!7292)) (_1!36619 lt!2379961)))))

(assert (=> b!6433847 (= (isDefined!12931 lt!2380002) (Exists!3407 lambda!356003))))

(assert (=> b!6433847 (= lt!2380002 (findConcatSeparation!2642 (reg!16666 (regOne!33186 r!7292)) lt!2379981 Nil!65186 (_1!36619 lt!2379961) (_1!36619 lt!2379961)))))

(declare-fun lt!2379985 () Unit!158679)

(assert (=> b!6433847 (= lt!2379985 (lemmaFindConcatSeparationEquivalentToExists!2406 (reg!16666 (regOne!33186 r!7292)) lt!2379981 (_1!36619 lt!2379961)))))

(declare-fun matchRSpec!3438 (Regex!16337 List!65310) Bool)

(assert (=> b!6433847 (matchRSpec!3438 lt!2379981 (_1!36619 lt!2379961))))

(declare-fun lt!2379958 () Unit!158679)

(declare-fun mainMatchTheorem!3438 (Regex!16337 List!65310) Unit!158679)

(assert (=> b!6433847 (= lt!2379958 (mainMatchTheorem!3438 lt!2379981 (_1!36619 lt!2379961)))))

(declare-fun b!6433848 () Bool)

(declare-fun res!2644680 () Bool)

(assert (=> b!6433848 (=> res!2644680 e!3902915)))

(assert (=> b!6433848 (= res!2644680 (or ((_ is EmptyExpr!16337) r!7292) ((_ is EmptyLang!16337) r!7292) ((_ is ElementMatch!16337) r!7292) ((_ is Union!16337) r!7292) (not ((_ is Concat!25182) r!7292))))))

(declare-fun b!6433849 () Bool)

(declare-fun e!3902910 () Bool)

(declare-fun tp!1784634 () Bool)

(assert (=> b!6433849 (= e!3902910 tp!1784634)))

(declare-fun b!6433850 () Bool)

(declare-fun res!2644665 () Bool)

(assert (=> b!6433850 (=> res!2644665 e!3902901)))

(declare-fun isEmpty!37357 (List!65310) Bool)

(assert (=> b!6433850 (= res!2644665 (isEmpty!37357 (_1!36619 lt!2379961)))))

(declare-fun b!6433851 () Bool)

(declare-fun res!2644662 () Bool)

(assert (=> b!6433851 (=> res!2644662 e!3902909)))

(declare-fun isEmpty!37358 (List!65311) Bool)

(assert (=> b!6433851 (= res!2644662 (isEmpty!37358 (t!378929 (exprs!6221 (h!71636 zl!343)))))))

(declare-fun b!6433852 () Bool)

(declare-fun tp!1784638 () Bool)

(declare-fun e!3902917 () Bool)

(declare-fun inv!84089 (Context!11442) Bool)

(assert (=> b!6433852 (= e!3902917 (and (inv!84089 (h!71636 zl!343)) e!3902905 tp!1784638))))

(declare-fun b!6433853 () Bool)

(declare-fun tp_is_empty!41927 () Bool)

(assert (=> b!6433853 (= e!3902910 tp_is_empty!41927)))

(declare-fun b!6433854 () Bool)

(declare-fun res!2644663 () Bool)

(declare-fun e!3902914 () Bool)

(assert (=> b!6433854 (=> res!2644663 e!3902914)))

(assert (=> b!6433854 (= res!2644663 (not (matchR!8520 (reg!16666 (regOne!33186 r!7292)) (_1!36619 lt!2379993))))))

(declare-fun b!6433855 () Bool)

(declare-fun res!2644649 () Bool)

(assert (=> b!6433855 (=> res!2644649 e!3902915)))

(declare-fun generalisedUnion!2181 (List!65311) Regex!16337)

(declare-fun unfocusZipperList!1758 (List!65312) List!65311)

(assert (=> b!6433855 (= res!2644649 (not (= r!7292 (generalisedUnion!2181 (unfocusZipperList!1758 zl!343)))))))

(declare-fun b!6433856 () Bool)

(declare-fun res!2644658 () Bool)

(declare-fun e!3902908 () Bool)

(assert (=> b!6433856 (=> res!2644658 e!3902908)))

(declare-fun lt!2379977 () Regex!16337)

(assert (=> b!6433856 (= res!2644658 (not (= lt!2379977 r!7292)))))

(declare-fun b!6433857 () Bool)

(declare-fun e!3902898 () Bool)

(declare-fun e!3902907 () Bool)

(assert (=> b!6433857 (= e!3902898 e!3902907)))

(declare-fun res!2644648 () Bool)

(assert (=> b!6433857 (=> res!2644648 e!3902907)))

(declare-fun lt!2379976 () Context!11442)

(declare-fun unfocusZipper!2079 (List!65312) Regex!16337)

(assert (=> b!6433857 (= res!2644648 (not (= (unfocusZipper!2079 (Cons!65188 lt!2379976 Nil!65188)) (reg!16666 (regOne!33186 r!7292)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2379989 () (InoxSet Context!11442))

(declare-fun lt!2379962 () Context!11442)

(declare-fun lambda!356000 () Int)

(declare-fun flatMap!1842 ((InoxSet Context!11442) Int) (InoxSet Context!11442))

(declare-fun derivationStepZipperUp!1511 (Context!11442 C!32944) (InoxSet Context!11442))

(assert (=> b!6433857 (= (flatMap!1842 lt!2379989 lambda!356000) (derivationStepZipperUp!1511 lt!2379962 (h!71634 s!2326)))))

(declare-fun lt!2380000 () Unit!158679)

(declare-fun lemmaFlatMapOnSingletonSet!1368 ((InoxSet Context!11442) Context!11442 Int) Unit!158679)

(assert (=> b!6433857 (= lt!2380000 (lemmaFlatMapOnSingletonSet!1368 lt!2379989 lt!2379962 lambda!356000))))

(declare-fun lt!2379984 () (InoxSet Context!11442))

(assert (=> b!6433857 (= (flatMap!1842 lt!2379984 lambda!356000) (derivationStepZipperUp!1511 lt!2379976 (h!71634 s!2326)))))

(declare-fun lt!2379954 () Unit!158679)

(assert (=> b!6433857 (= lt!2379954 (lemmaFlatMapOnSingletonSet!1368 lt!2379984 lt!2379976 lambda!356000))))

(declare-fun lt!2379994 () (InoxSet Context!11442))

(assert (=> b!6433857 (= lt!2379994 (derivationStepZipperUp!1511 lt!2379962 (h!71634 s!2326)))))

(declare-fun lt!2379996 () (InoxSet Context!11442))

(assert (=> b!6433857 (= lt!2379996 (derivationStepZipperUp!1511 lt!2379976 (h!71634 s!2326)))))

(assert (=> b!6433857 (= lt!2379989 (store ((as const (Array Context!11442 Bool)) false) lt!2379962 true))))

(assert (=> b!6433857 (= lt!2379984 (store ((as const (Array Context!11442 Bool)) false) lt!2379976 true))))

(assert (=> b!6433857 (= lt!2379976 (Context!11443 (Cons!65187 (reg!16666 (regOne!33186 r!7292)) Nil!65187)))))

(declare-fun b!6433858 () Bool)

(declare-fun res!2644660 () Bool)

(assert (=> b!6433858 (=> res!2644660 e!3902912)))

(assert (=> b!6433858 (= res!2644660 (or ((_ is Concat!25182) (regOne!33186 r!7292)) (not ((_ is Star!16337) (regOne!33186 r!7292)))))))

(declare-fun b!6433859 () Bool)

(declare-fun tp!1784637 () Bool)

(declare-fun tp!1784629 () Bool)

(assert (=> b!6433859 (= e!3902910 (and tp!1784637 tp!1784629))))

(declare-fun b!6433860 () Bool)

(declare-fun e!3902900 () Bool)

(declare-fun tp!1784636 () Bool)

(assert (=> b!6433860 (= e!3902900 (and tp_is_empty!41927 tp!1784636))))

(declare-fun b!6433861 () Bool)

(declare-fun e!3902903 () Bool)

(assert (=> b!6433861 (= e!3902908 e!3902903)))

(declare-fun res!2644650 () Bool)

(assert (=> b!6433861 (=> res!2644650 e!3902903)))

(declare-fun lt!2379973 () Regex!16337)

(assert (=> b!6433861 (= res!2644650 (not (= r!7292 lt!2379973)))))

(assert (=> b!6433861 (= lt!2379973 (Concat!25182 lt!2379981 (regTwo!33186 r!7292)))))

(declare-fun b!6433862 () Bool)

(assert (=> b!6433862 (= e!3902913 e!3902914)))

(declare-fun res!2644661 () Bool)

(assert (=> b!6433862 (=> res!2644661 e!3902914)))

(declare-fun lt!2379970 () List!65310)

(assert (=> b!6433862 (= res!2644661 (not (= lt!2379970 s!2326)))))

(declare-fun lt!2379968 () List!65310)

(assert (=> b!6433862 (= lt!2379970 (++!14405 (_1!36619 lt!2379993) lt!2379968))))

(assert (=> b!6433862 (= lt!2379970 (++!14405 lt!2379971 (_2!36619 lt!2379961)))))

(assert (=> b!6433862 (= lt!2379968 (++!14405 (_2!36619 lt!2379993) (_2!36619 lt!2379961)))))

(declare-fun lt!2379966 () Unit!158679)

(declare-fun lemmaConcatAssociativity!2908 (List!65310 List!65310 List!65310) Unit!158679)

(assert (=> b!6433862 (= lt!2379966 (lemmaConcatAssociativity!2908 (_1!36619 lt!2379993) (_2!36619 lt!2379993) (_2!36619 lt!2379961)))))

(declare-fun b!6433863 () Bool)

(declare-fun tp!1784631 () Bool)

(declare-fun tp!1784635 () Bool)

(assert (=> b!6433863 (= e!3902910 (and tp!1784631 tp!1784635))))

(declare-fun b!6433864 () Bool)

(declare-fun e!3902916 () Unit!158679)

(declare-fun Unit!158681 () Unit!158679)

(assert (=> b!6433864 (= e!3902916 Unit!158681)))

(declare-fun b!6433865 () Bool)

(declare-fun e!3902919 () Bool)

(declare-fun lt!2379982 () Bool)

(assert (=> b!6433865 (= e!3902919 (or (not lt!2379969) lt!2379982))))

(declare-fun tp!1784630 () Bool)

(declare-fun e!3902904 () Bool)

(declare-fun setRes!43934 () Bool)

(declare-fun setElem!43934 () Context!11442)

(declare-fun setNonEmpty!43934 () Bool)

(assert (=> setNonEmpty!43934 (= setRes!43934 (and tp!1784630 (inv!84089 setElem!43934) e!3902904))))

(declare-fun z!1189 () (InoxSet Context!11442))

(declare-fun setRest!43934 () (InoxSet Context!11442))

(assert (=> setNonEmpty!43934 (= z!1189 ((_ map or) (store ((as const (Array Context!11442 Bool)) false) setElem!43934 true) setRest!43934))))

(declare-fun res!2644669 () Bool)

(declare-fun e!3902902 () Bool)

(assert (=> start!635482 (=> (not res!2644669) (not e!3902902))))

(declare-fun validRegex!8073 (Regex!16337) Bool)

(assert (=> start!635482 (= res!2644669 (validRegex!8073 r!7292))))

(assert (=> start!635482 e!3902902))

(assert (=> start!635482 e!3902910))

(declare-fun condSetEmpty!43934 () Bool)

(assert (=> start!635482 (= condSetEmpty!43934 (= z!1189 ((as const (Array Context!11442 Bool)) false)))))

(assert (=> start!635482 setRes!43934))

(assert (=> start!635482 e!3902917))

(assert (=> start!635482 e!3902900))

(declare-fun e!3902899 () Bool)

(assert (=> b!6433866 (= e!3902899 e!3902901)))

(declare-fun res!2644651 () Bool)

(assert (=> b!6433866 (=> res!2644651 e!3902901)))

(assert (=> b!6433866 (= res!2644651 (not (= (++!14405 (_1!36619 lt!2379961) (_2!36619 lt!2379961)) s!2326)))))

(declare-fun lt!2379963 () Option!16228)

(assert (=> b!6433866 (= lt!2379961 (get!22589 lt!2379963))))

(assert (=> b!6433866 (= (Exists!3407 lambda!356001) (Exists!3407 lambda!356002))))

(declare-fun lt!2379988 () Unit!158679)

(assert (=> b!6433866 (= lt!2379988 (lemmaExistCutMatchRandMatchRSpecEquivalent!1944 lt!2379981 (regTwo!33186 r!7292) s!2326))))

(assert (=> b!6433866 (= (isDefined!12931 lt!2379963) (Exists!3407 lambda!356001))))

(assert (=> b!6433866 (= lt!2379963 (findConcatSeparation!2642 lt!2379981 (regTwo!33186 r!7292) Nil!65186 s!2326 s!2326))))

(declare-fun lt!2379983 () Unit!158679)

(assert (=> b!6433866 (= lt!2379983 (lemmaFindConcatSeparationEquivalentToExists!2406 lt!2379981 (regTwo!33186 r!7292) s!2326))))

(declare-fun b!6433867 () Bool)

(declare-fun res!2644670 () Bool)

(assert (=> b!6433867 (=> res!2644670 e!3902907)))

(assert (=> b!6433867 (= res!2644670 (not (= (unfocusZipper!2079 (Cons!65188 lt!2379962 Nil!65188)) lt!2379973)))))

(declare-fun b!6433868 () Bool)

(declare-fun res!2644654 () Bool)

(assert (=> b!6433868 (=> res!2644654 e!3902908)))

(declare-fun lt!2379978 () (InoxSet Context!11442))

(declare-fun lt!2379972 () (InoxSet Context!11442))

(declare-fun matchZipper!2349 ((InoxSet Context!11442) List!65310) Bool)

(assert (=> b!6433868 (= res!2644654 (not (= (matchZipper!2349 lt!2379978 s!2326) (matchZipper!2349 lt!2379972 (t!378928 s!2326)))))))

(declare-fun b!6433869 () Bool)

(declare-fun res!2644676 () Bool)

(assert (=> b!6433869 (=> res!2644676 e!3902901)))

(assert (=> b!6433869 (= res!2644676 (not (matchR!8520 (regTwo!33186 r!7292) (_2!36619 lt!2379961))))))

(declare-fun b!6433870 () Bool)

(declare-fun Unit!158682 () Unit!158679)

(assert (=> b!6433870 (= e!3902916 Unit!158682)))

(declare-fun lt!2379965 () (InoxSet Context!11442))

(declare-fun lt!2379959 () (InoxSet Context!11442))

(declare-fun lt!2380001 () Unit!158679)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1168 ((InoxSet Context!11442) (InoxSet Context!11442) List!65310) Unit!158679)

(assert (=> b!6433870 (= lt!2380001 (lemmaZipperConcatMatchesSameAsBothZippers!1168 lt!2379959 lt!2379965 (t!378928 s!2326)))))

(declare-fun res!2644666 () Bool)

(assert (=> b!6433870 (= res!2644666 (matchZipper!2349 lt!2379959 (t!378928 s!2326)))))

(declare-fun e!3902906 () Bool)

(assert (=> b!6433870 (=> res!2644666 e!3902906)))

(assert (=> b!6433870 (= (matchZipper!2349 ((_ map or) lt!2379959 lt!2379965) (t!378928 s!2326)) e!3902906)))

(declare-fun b!6433871 () Bool)

(declare-fun res!2644652 () Bool)

(assert (=> b!6433871 (=> res!2644652 e!3902915)))

(declare-fun generalisedConcat!1934 (List!65311) Regex!16337)

(assert (=> b!6433871 (= res!2644652 (not (= r!7292 (generalisedConcat!1934 (exprs!6221 (h!71636 zl!343))))))))

(declare-fun b!6433872 () Bool)

(declare-fun nullable!6330 (Regex!16337) Bool)

(assert (=> b!6433872 (= e!3902911 (nullable!6330 (regOne!33186 (regOne!33186 r!7292))))))

(declare-fun b!6433873 () Bool)

(declare-fun e!3902920 () Bool)

(assert (=> b!6433873 (= e!3902912 e!3902920)))

(declare-fun res!2644673 () Bool)

(assert (=> b!6433873 (=> res!2644673 e!3902920)))

(declare-fun lt!2379956 () (InoxSet Context!11442))

(assert (=> b!6433873 (= res!2644673 (not (= lt!2379959 lt!2379956)))))

(declare-fun derivationStepZipperDown!1585 (Regex!16337 Context!11442 C!32944) (InoxSet Context!11442))

(assert (=> b!6433873 (= lt!2379956 (derivationStepZipperDown!1585 (reg!16666 (regOne!33186 r!7292)) lt!2379962 (h!71634 s!2326)))))

(declare-fun lt!2379991 () List!65311)

(assert (=> b!6433873 (= lt!2379962 (Context!11443 lt!2379991))))

(assert (=> b!6433873 (= lt!2379991 (Cons!65187 lt!2379981 (t!378929 (exprs!6221 (h!71636 zl!343)))))))

(assert (=> b!6433873 (= lt!2379981 (Star!16337 (reg!16666 (regOne!33186 r!7292))))))

(declare-fun setIsEmpty!43934 () Bool)

(assert (=> setIsEmpty!43934 setRes!43934))

(declare-fun b!6433874 () Bool)

(declare-fun res!2644664 () Bool)

(assert (=> b!6433874 (=> res!2644664 e!3902914)))

(assert (=> b!6433874 (= res!2644664 (not (matchR!8520 lt!2379981 (_2!36619 lt!2379993))))))

(declare-fun b!6433875 () Bool)

(assert (=> b!6433875 (= e!3902906 (matchZipper!2349 lt!2379965 (t!378928 s!2326)))))

(declare-fun b!6433876 () Bool)

(assert (=> b!6433876 (= e!3902920 e!3902908)))

(declare-fun res!2644647 () Bool)

(assert (=> b!6433876 (=> res!2644647 e!3902908)))

(assert (=> b!6433876 (= res!2644647 (not (= lt!2379972 lt!2379956)))))

(declare-fun lt!2379998 () Context!11442)

(assert (=> b!6433876 (= (flatMap!1842 lt!2379978 lambda!356000) (derivationStepZipperUp!1511 lt!2379998 (h!71634 s!2326)))))

(declare-fun lt!2379997 () Unit!158679)

(assert (=> b!6433876 (= lt!2379997 (lemmaFlatMapOnSingletonSet!1368 lt!2379978 lt!2379998 lambda!356000))))

(declare-fun lt!2379986 () (InoxSet Context!11442))

(assert (=> b!6433876 (= lt!2379986 (derivationStepZipperUp!1511 lt!2379998 (h!71634 s!2326)))))

(declare-fun derivationStepZipper!2303 ((InoxSet Context!11442) C!32944) (InoxSet Context!11442))

(assert (=> b!6433876 (= lt!2379972 (derivationStepZipper!2303 lt!2379978 (h!71634 s!2326)))))

(assert (=> b!6433876 (= lt!2379978 (store ((as const (Array Context!11442 Bool)) false) lt!2379998 true))))

(assert (=> b!6433876 (= lt!2379998 (Context!11443 (Cons!65187 (reg!16666 (regOne!33186 r!7292)) lt!2379991)))))

(declare-fun b!6433877 () Bool)

(declare-fun res!2644657 () Bool)

(assert (=> b!6433877 (=> (not res!2644657) (not e!3902902))))

(declare-fun toList!10121 ((InoxSet Context!11442)) List!65312)

(assert (=> b!6433877 (= res!2644657 (= (toList!10121 z!1189) zl!343))))

(declare-fun b!6433878 () Bool)

(declare-fun e!3902918 () Bool)

(assert (=> b!6433878 (= e!3902902 e!3902918)))

(declare-fun res!2644679 () Bool)

(assert (=> b!6433878 (=> (not res!2644679) (not e!3902918))))

(assert (=> b!6433878 (= res!2644679 (= r!7292 lt!2379977))))

(assert (=> b!6433878 (= lt!2379977 (unfocusZipper!2079 zl!343))))

(declare-fun b!6433879 () Bool)

(assert (=> b!6433879 (= e!3902914 (validRegex!8073 (reg!16666 (regOne!33186 r!7292))))))

(assert (=> b!6433879 (matchR!8520 lt!2379973 lt!2379968)))

(declare-fun lt!2379964 () Unit!158679)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!300 (Regex!16337 Regex!16337 List!65310 List!65310) Unit!158679)

(assert (=> b!6433879 (= lt!2379964 (lemmaTwoRegexMatchThenConcatMatchesConcatString!300 lt!2379981 (regTwo!33186 r!7292) (_2!36619 lt!2379993) (_2!36619 lt!2379961)))))

(assert (=> b!6433879 (matchR!8520 lt!2379981 lt!2379971)))

(declare-fun lt!2379999 () Unit!158679)

(declare-fun lemmaStarApp!114 (Regex!16337 List!65310 List!65310) Unit!158679)

(assert (=> b!6433879 (= lt!2379999 (lemmaStarApp!114 (reg!16666 (regOne!33186 r!7292)) (_1!36619 lt!2379993) (_2!36619 lt!2379993)))))

(declare-fun b!6433880 () Bool)

(assert (=> b!6433880 (= e!3902903 e!3902898)))

(declare-fun res!2644667 () Bool)

(assert (=> b!6433880 (=> res!2644667 e!3902898)))

(declare-fun lt!2379979 () Regex!16337)

(assert (=> b!6433880 (= res!2644667 (not (= (unfocusZipper!2079 (Cons!65188 lt!2379998 Nil!65188)) lt!2379979)))))

(assert (=> b!6433880 (= lt!2379979 (Concat!25182 (reg!16666 (regOne!33186 r!7292)) lt!2379973))))

(declare-fun b!6433881 () Bool)

(assert (=> b!6433881 (= e!3902907 e!3902899)))

(declare-fun res!2644668 () Bool)

(assert (=> b!6433881 (=> res!2644668 e!3902899)))

(assert (=> b!6433881 (= res!2644668 (not lt!2379969))))

(assert (=> b!6433881 e!3902919))

(declare-fun res!2644675 () Bool)

(assert (=> b!6433881 (=> (not res!2644675) (not e!3902919))))

(assert (=> b!6433881 (= res!2644675 (= (matchR!8520 lt!2379979 s!2326) (matchRSpec!3438 lt!2379979 s!2326)))))

(declare-fun lt!2379974 () Unit!158679)

(assert (=> b!6433881 (= lt!2379974 (mainMatchTheorem!3438 lt!2379979 s!2326))))

(declare-fun b!6433882 () Bool)

(declare-fun tp!1784632 () Bool)

(assert (=> b!6433882 (= e!3902904 tp!1784632)))

(declare-fun b!6433883 () Bool)

(assert (=> b!6433883 (= e!3902918 (not e!3902915))))

(declare-fun res!2644671 () Bool)

(assert (=> b!6433883 (=> res!2644671 e!3902915)))

(assert (=> b!6433883 (= res!2644671 (not ((_ is Cons!65188) zl!343)))))

(assert (=> b!6433883 (= lt!2379969 lt!2379982)))

(assert (=> b!6433883 (= lt!2379982 (matchRSpec!3438 r!7292 s!2326))))

(assert (=> b!6433883 (= lt!2379969 (matchR!8520 r!7292 s!2326))))

(declare-fun lt!2379975 () Unit!158679)

(assert (=> b!6433883 (= lt!2379975 (mainMatchTheorem!3438 r!7292 s!2326))))

(assert (=> b!6433884 (= e!3902909 e!3902912)))

(declare-fun res!2644672 () Bool)

(assert (=> b!6433884 (=> res!2644672 e!3902912)))

(assert (=> b!6433884 (= res!2644672 (or (and ((_ is ElementMatch!16337) (regOne!33186 r!7292)) (= (c!1176002 (regOne!33186 r!7292)) (h!71634 s!2326))) ((_ is Union!16337) (regOne!33186 r!7292))))))

(declare-fun lt!2379980 () Unit!158679)

(assert (=> b!6433884 (= lt!2379980 e!3902916)))

(declare-fun c!1176001 () Bool)

(assert (=> b!6433884 (= c!1176001 (nullable!6330 (h!71635 (exprs!6221 (h!71636 zl!343)))))))

(assert (=> b!6433884 (= (flatMap!1842 z!1189 lambda!356000) (derivationStepZipperUp!1511 (h!71636 zl!343) (h!71634 s!2326)))))

(declare-fun lt!2379990 () Unit!158679)

(assert (=> b!6433884 (= lt!2379990 (lemmaFlatMapOnSingletonSet!1368 z!1189 (h!71636 zl!343) lambda!356000))))

(declare-fun lt!2379967 () Context!11442)

(assert (=> b!6433884 (= lt!2379965 (derivationStepZipperUp!1511 lt!2379967 (h!71634 s!2326)))))

(assert (=> b!6433884 (= lt!2379959 (derivationStepZipperDown!1585 (h!71635 (exprs!6221 (h!71636 zl!343))) lt!2379967 (h!71634 s!2326)))))

(assert (=> b!6433884 (= lt!2379967 (Context!11443 (t!378929 (exprs!6221 (h!71636 zl!343)))))))

(declare-fun lt!2379957 () (InoxSet Context!11442))

(assert (=> b!6433884 (= lt!2379957 (derivationStepZipperUp!1511 (Context!11443 (Cons!65187 (h!71635 (exprs!6221 (h!71636 zl!343))) (t!378929 (exprs!6221 (h!71636 zl!343))))) (h!71634 s!2326)))))

(declare-fun b!6433885 () Bool)

(declare-fun res!2644674 () Bool)

(assert (=> b!6433885 (=> res!2644674 e!3902915)))

(assert (=> b!6433885 (= res!2644674 (not ((_ is Cons!65187) (exprs!6221 (h!71636 zl!343)))))))

(assert (= (and start!635482 res!2644669) b!6433877))

(assert (= (and b!6433877 res!2644657) b!6433878))

(assert (= (and b!6433878 res!2644679) b!6433883))

(assert (= (and b!6433883 (not res!2644671)) b!6433845))

(assert (= (and b!6433845 (not res!2644653)) b!6433871))

(assert (= (and b!6433871 (not res!2644652)) b!6433885))

(assert (= (and b!6433885 (not res!2644674)) b!6433855))

(assert (= (and b!6433855 (not res!2644649)) b!6433848))

(assert (= (and b!6433848 (not res!2644680)) b!6433843))

(assert (= (and b!6433843 (not res!2644655)) b!6433851))

(assert (= (and b!6433851 (not res!2644662)) b!6433884))

(assert (= (and b!6433884 c!1176001) b!6433870))

(assert (= (and b!6433884 (not c!1176001)) b!6433864))

(assert (= (and b!6433870 (not res!2644666)) b!6433875))

(assert (= (and b!6433884 (not res!2644672)) b!6433846))

(assert (= (and b!6433846 res!2644656) b!6433872))

(assert (= (and b!6433846 (not res!2644677)) b!6433858))

(assert (= (and b!6433858 (not res!2644660)) b!6433873))

(assert (= (and b!6433873 (not res!2644673)) b!6433876))

(assert (= (and b!6433876 (not res!2644647)) b!6433868))

(assert (= (and b!6433868 (not res!2644654)) b!6433856))

(assert (= (and b!6433856 (not res!2644658)) b!6433861))

(assert (= (and b!6433861 (not res!2644650)) b!6433880))

(assert (= (and b!6433880 (not res!2644667)) b!6433857))

(assert (= (and b!6433857 (not res!2644648)) b!6433867))

(assert (= (and b!6433867 (not res!2644670)) b!6433881))

(assert (= (and b!6433881 res!2644675) b!6433865))

(assert (= (and b!6433881 (not res!2644668)) b!6433866))

(assert (= (and b!6433866 (not res!2644651)) b!6433844))

(assert (= (and b!6433844 (not res!2644678)) b!6433869))

(assert (= (and b!6433869 (not res!2644676)) b!6433850))

(assert (= (and b!6433850 (not res!2644665)) b!6433847))

(assert (= (and b!6433847 (not res!2644659)) b!6433862))

(assert (= (and b!6433862 (not res!2644661)) b!6433854))

(assert (= (and b!6433854 (not res!2644663)) b!6433874))

(assert (= (and b!6433874 (not res!2644664)) b!6433879))

(assert (= (and start!635482 ((_ is ElementMatch!16337) r!7292)) b!6433853))

(assert (= (and start!635482 ((_ is Concat!25182) r!7292)) b!6433863))

(assert (= (and start!635482 ((_ is Star!16337) r!7292)) b!6433849))

(assert (= (and start!635482 ((_ is Union!16337) r!7292)) b!6433859))

(assert (= (and start!635482 condSetEmpty!43934) setIsEmpty!43934))

(assert (= (and start!635482 (not condSetEmpty!43934)) setNonEmpty!43934))

(assert (= setNonEmpty!43934 b!6433882))

(assert (= b!6433852 b!6433842))

(assert (= (and start!635482 ((_ is Cons!65188) zl!343)) b!6433852))

(assert (= (and start!635482 ((_ is Cons!65186) s!2326)) b!6433860))

(declare-fun m!7227366 () Bool)

(assert (=> b!6433870 m!7227366))

(declare-fun m!7227368 () Bool)

(assert (=> b!6433870 m!7227368))

(declare-fun m!7227370 () Bool)

(assert (=> b!6433870 m!7227370))

(declare-fun m!7227372 () Bool)

(assert (=> b!6433875 m!7227372))

(declare-fun m!7227374 () Bool)

(assert (=> b!6433855 m!7227374))

(assert (=> b!6433855 m!7227374))

(declare-fun m!7227376 () Bool)

(assert (=> b!6433855 m!7227376))

(declare-fun m!7227378 () Bool)

(assert (=> b!6433845 m!7227378))

(declare-fun m!7227380 () Bool)

(assert (=> b!6433866 m!7227380))

(declare-fun m!7227382 () Bool)

(assert (=> b!6433866 m!7227382))

(declare-fun m!7227384 () Bool)

(assert (=> b!6433866 m!7227384))

(declare-fun m!7227386 () Bool)

(assert (=> b!6433866 m!7227386))

(declare-fun m!7227388 () Bool)

(assert (=> b!6433866 m!7227388))

(assert (=> b!6433866 m!7227380))

(declare-fun m!7227390 () Bool)

(assert (=> b!6433866 m!7227390))

(declare-fun m!7227392 () Bool)

(assert (=> b!6433866 m!7227392))

(declare-fun m!7227394 () Bool)

(assert (=> b!6433866 m!7227394))

(declare-fun m!7227396 () Bool)

(assert (=> b!6433871 m!7227396))

(declare-fun m!7227398 () Bool)

(assert (=> b!6433872 m!7227398))

(declare-fun m!7227400 () Bool)

(assert (=> b!6433843 m!7227400))

(declare-fun m!7227402 () Bool)

(assert (=> b!6433843 m!7227402))

(declare-fun m!7227404 () Bool)

(assert (=> b!6433843 m!7227404))

(declare-fun m!7227406 () Bool)

(assert (=> b!6433843 m!7227406))

(declare-fun m!7227408 () Bool)

(assert (=> b!6433843 m!7227408))

(assert (=> b!6433843 m!7227400))

(assert (=> b!6433843 m!7227402))

(declare-fun m!7227410 () Bool)

(assert (=> b!6433843 m!7227410))

(declare-fun m!7227412 () Bool)

(assert (=> b!6433883 m!7227412))

(declare-fun m!7227414 () Bool)

(assert (=> b!6433883 m!7227414))

(declare-fun m!7227416 () Bool)

(assert (=> b!6433883 m!7227416))

(declare-fun m!7227418 () Bool)

(assert (=> b!6433874 m!7227418))

(declare-fun m!7227420 () Bool)

(assert (=> b!6433877 m!7227420))

(declare-fun m!7227422 () Bool)

(assert (=> b!6433884 m!7227422))

(declare-fun m!7227424 () Bool)

(assert (=> b!6433884 m!7227424))

(declare-fun m!7227426 () Bool)

(assert (=> b!6433884 m!7227426))

(declare-fun m!7227428 () Bool)

(assert (=> b!6433884 m!7227428))

(declare-fun m!7227430 () Bool)

(assert (=> b!6433884 m!7227430))

(declare-fun m!7227432 () Bool)

(assert (=> b!6433884 m!7227432))

(declare-fun m!7227434 () Bool)

(assert (=> b!6433884 m!7227434))

(declare-fun m!7227436 () Bool)

(assert (=> setNonEmpty!43934 m!7227436))

(declare-fun m!7227438 () Bool)

(assert (=> b!6433854 m!7227438))

(declare-fun m!7227440 () Bool)

(assert (=> b!6433878 m!7227440))

(declare-fun m!7227442 () Bool)

(assert (=> b!6433851 m!7227442))

(declare-fun m!7227444 () Bool)

(assert (=> b!6433873 m!7227444))

(declare-fun m!7227446 () Bool)

(assert (=> b!6433881 m!7227446))

(declare-fun m!7227448 () Bool)

(assert (=> b!6433881 m!7227448))

(declare-fun m!7227450 () Bool)

(assert (=> b!6433881 m!7227450))

(declare-fun m!7227452 () Bool)

(assert (=> b!6433879 m!7227452))

(declare-fun m!7227454 () Bool)

(assert (=> b!6433879 m!7227454))

(declare-fun m!7227456 () Bool)

(assert (=> b!6433879 m!7227456))

(declare-fun m!7227458 () Bool)

(assert (=> b!6433879 m!7227458))

(declare-fun m!7227460 () Bool)

(assert (=> b!6433879 m!7227460))

(declare-fun m!7227462 () Bool)

(assert (=> b!6433867 m!7227462))

(declare-fun m!7227464 () Bool)

(assert (=> b!6433852 m!7227464))

(declare-fun m!7227466 () Bool)

(assert (=> b!6433850 m!7227466))

(declare-fun m!7227468 () Bool)

(assert (=> b!6433880 m!7227468))

(declare-fun m!7227470 () Bool)

(assert (=> b!6433876 m!7227470))

(declare-fun m!7227472 () Bool)

(assert (=> b!6433876 m!7227472))

(declare-fun m!7227474 () Bool)

(assert (=> b!6433876 m!7227474))

(declare-fun m!7227476 () Bool)

(assert (=> b!6433876 m!7227476))

(declare-fun m!7227478 () Bool)

(assert (=> b!6433876 m!7227478))

(declare-fun m!7227480 () Bool)

(assert (=> b!6433847 m!7227480))

(declare-fun m!7227482 () Bool)

(assert (=> b!6433847 m!7227482))

(declare-fun m!7227484 () Bool)

(assert (=> b!6433847 m!7227484))

(declare-fun m!7227486 () Bool)

(assert (=> b!6433847 m!7227486))

(declare-fun m!7227488 () Bool)

(assert (=> b!6433847 m!7227488))

(declare-fun m!7227490 () Bool)

(assert (=> b!6433847 m!7227490))

(declare-fun m!7227492 () Bool)

(assert (=> b!6433847 m!7227492))

(assert (=> b!6433847 m!7227484))

(declare-fun m!7227494 () Bool)

(assert (=> b!6433847 m!7227494))

(assert (=> b!6433847 m!7227484))

(declare-fun m!7227496 () Bool)

(assert (=> b!6433847 m!7227496))

(declare-fun m!7227498 () Bool)

(assert (=> b!6433847 m!7227498))

(declare-fun m!7227500 () Bool)

(assert (=> b!6433847 m!7227500))

(declare-fun m!7227502 () Bool)

(assert (=> b!6433847 m!7227502))

(declare-fun m!7227504 () Bool)

(assert (=> start!635482 m!7227504))

(declare-fun m!7227506 () Bool)

(assert (=> b!6433868 m!7227506))

(declare-fun m!7227508 () Bool)

(assert (=> b!6433868 m!7227508))

(declare-fun m!7227510 () Bool)

(assert (=> b!6433857 m!7227510))

(declare-fun m!7227512 () Bool)

(assert (=> b!6433857 m!7227512))

(declare-fun m!7227514 () Bool)

(assert (=> b!6433857 m!7227514))

(declare-fun m!7227516 () Bool)

(assert (=> b!6433857 m!7227516))

(declare-fun m!7227518 () Bool)

(assert (=> b!6433857 m!7227518))

(declare-fun m!7227520 () Bool)

(assert (=> b!6433857 m!7227520))

(declare-fun m!7227522 () Bool)

(assert (=> b!6433857 m!7227522))

(declare-fun m!7227524 () Bool)

(assert (=> b!6433857 m!7227524))

(declare-fun m!7227526 () Bool)

(assert (=> b!6433857 m!7227526))

(declare-fun m!7227528 () Bool)

(assert (=> b!6433844 m!7227528))

(declare-fun m!7227530 () Bool)

(assert (=> b!6433862 m!7227530))

(declare-fun m!7227532 () Bool)

(assert (=> b!6433862 m!7227532))

(declare-fun m!7227534 () Bool)

(assert (=> b!6433862 m!7227534))

(declare-fun m!7227536 () Bool)

(assert (=> b!6433862 m!7227536))

(declare-fun m!7227538 () Bool)

(assert (=> b!6433869 m!7227538))

(check-sat (not b!6433851) (not b!6433877) (not b!6433880) (not b!6433854) (not b!6433859) (not b!6433857) (not b!6433874) (not setNonEmpty!43934) (not b!6433873) (not b!6433883) (not b!6433867) (not b!6433872) (not b!6433844) (not b!6433879) (not b!6433881) (not b!6433843) (not b!6433875) (not b!6433878) (not b!6433869) (not b!6433842) (not b!6433863) (not b!6433882) (not start!635482) (not b!6433845) (not b!6433871) (not b!6433852) (not b!6433862) (not b!6433870) (not b!6433849) (not b!6433866) (not b!6433855) (not b!6433860) tp_is_empty!41927 (not b!6433847) (not b!6433868) (not b!6433876) (not b!6433850) (not b!6433884))
(check-sat)
(get-model)

(declare-fun d!2016986 () Bool)

(declare-fun lambda!356008 () Int)

(declare-fun forall!15527 (List!65311 Int) Bool)

(assert (=> d!2016986 (= (inv!84089 setElem!43934) (forall!15527 (exprs!6221 setElem!43934) lambda!356008))))

(declare-fun bs!1619028 () Bool)

(assert (= bs!1619028 d!2016986))

(declare-fun m!7227540 () Bool)

(assert (=> bs!1619028 m!7227540))

(assert (=> setNonEmpty!43934 d!2016986))

(declare-fun b!6433922 () Bool)

(declare-fun e!3902938 () Bool)

(declare-fun lt!2380005 () Bool)

(assert (=> b!6433922 (= e!3902938 (not lt!2380005))))

(declare-fun b!6433923 () Bool)

(declare-fun res!2644701 () Bool)

(declare-fun e!3902941 () Bool)

(assert (=> b!6433923 (=> (not res!2644701) (not e!3902941))))

(declare-fun tail!12248 (List!65310) List!65310)

(assert (=> b!6433923 (= res!2644701 (isEmpty!37357 (tail!12248 (_1!36619 lt!2379961))))))

(declare-fun b!6433924 () Bool)

(declare-fun res!2644700 () Bool)

(declare-fun e!3902939 () Bool)

(assert (=> b!6433924 (=> res!2644700 e!3902939)))

(assert (=> b!6433924 (= res!2644700 (not (isEmpty!37357 (tail!12248 (_1!36619 lt!2379961)))))))

(declare-fun b!6433925 () Bool)

(declare-fun res!2644697 () Bool)

(declare-fun e!3902936 () Bool)

(assert (=> b!6433925 (=> res!2644697 e!3902936)))

(assert (=> b!6433925 (= res!2644697 (not ((_ is ElementMatch!16337) lt!2379981)))))

(assert (=> b!6433925 (= e!3902938 e!3902936)))

(declare-fun b!6433926 () Bool)

(declare-fun res!2644698 () Bool)

(assert (=> b!6433926 (=> (not res!2644698) (not e!3902941))))

(declare-fun call!553551 () Bool)

(assert (=> b!6433926 (= res!2644698 (not call!553551))))

(declare-fun d!2016988 () Bool)

(declare-fun e!3902940 () Bool)

(assert (=> d!2016988 e!3902940))

(declare-fun c!1176011 () Bool)

(assert (=> d!2016988 (= c!1176011 ((_ is EmptyExpr!16337) lt!2379981))))

(declare-fun e!3902937 () Bool)

(assert (=> d!2016988 (= lt!2380005 e!3902937)))

(declare-fun c!1176009 () Bool)

(assert (=> d!2016988 (= c!1176009 (isEmpty!37357 (_1!36619 lt!2379961)))))

(assert (=> d!2016988 (validRegex!8073 lt!2379981)))

(assert (=> d!2016988 (= (matchR!8520 lt!2379981 (_1!36619 lt!2379961)) lt!2380005)))

(declare-fun b!6433927 () Bool)

(declare-fun head!13163 (List!65310) C!32944)

(assert (=> b!6433927 (= e!3902941 (= (head!13163 (_1!36619 lt!2379961)) (c!1176002 lt!2379981)))))

(declare-fun b!6433928 () Bool)

(declare-fun e!3902935 () Bool)

(assert (=> b!6433928 (= e!3902936 e!3902935)))

(declare-fun res!2644699 () Bool)

(assert (=> b!6433928 (=> (not res!2644699) (not e!3902935))))

(assert (=> b!6433928 (= res!2644699 (not lt!2380005))))

(declare-fun b!6433929 () Bool)

(assert (=> b!6433929 (= e!3902939 (not (= (head!13163 (_1!36619 lt!2379961)) (c!1176002 lt!2379981))))))

(declare-fun b!6433930 () Bool)

(assert (=> b!6433930 (= e!3902940 e!3902938)))

(declare-fun c!1176010 () Bool)

(assert (=> b!6433930 (= c!1176010 ((_ is EmptyLang!16337) lt!2379981))))

(declare-fun b!6433931 () Bool)

(declare-fun derivativeStep!5040 (Regex!16337 C!32944) Regex!16337)

(assert (=> b!6433931 (= e!3902937 (matchR!8520 (derivativeStep!5040 lt!2379981 (head!13163 (_1!36619 lt!2379961))) (tail!12248 (_1!36619 lt!2379961))))))

(declare-fun b!6433932 () Bool)

(assert (=> b!6433932 (= e!3902940 (= lt!2380005 call!553551))))

(declare-fun bm!553546 () Bool)

(assert (=> bm!553546 (= call!553551 (isEmpty!37357 (_1!36619 lt!2379961)))))

(declare-fun b!6433933 () Bool)

(declare-fun res!2644703 () Bool)

(assert (=> b!6433933 (=> res!2644703 e!3902936)))

(assert (=> b!6433933 (= res!2644703 e!3902941)))

(declare-fun res!2644702 () Bool)

(assert (=> b!6433933 (=> (not res!2644702) (not e!3902941))))

(assert (=> b!6433933 (= res!2644702 lt!2380005)))

(declare-fun b!6433934 () Bool)

(assert (=> b!6433934 (= e!3902937 (nullable!6330 lt!2379981))))

(declare-fun b!6433935 () Bool)

(assert (=> b!6433935 (= e!3902935 e!3902939)))

(declare-fun res!2644704 () Bool)

(assert (=> b!6433935 (=> res!2644704 e!3902939)))

(assert (=> b!6433935 (= res!2644704 call!553551)))

(assert (= (and d!2016988 c!1176009) b!6433934))

(assert (= (and d!2016988 (not c!1176009)) b!6433931))

(assert (= (and d!2016988 c!1176011) b!6433932))

(assert (= (and d!2016988 (not c!1176011)) b!6433930))

(assert (= (and b!6433930 c!1176010) b!6433922))

(assert (= (and b!6433930 (not c!1176010)) b!6433925))

(assert (= (and b!6433925 (not res!2644697)) b!6433933))

(assert (= (and b!6433933 res!2644702) b!6433926))

(assert (= (and b!6433926 res!2644698) b!6433923))

(assert (= (and b!6433923 res!2644701) b!6433927))

(assert (= (and b!6433933 (not res!2644703)) b!6433928))

(assert (= (and b!6433928 res!2644699) b!6433935))

(assert (= (and b!6433935 (not res!2644704)) b!6433924))

(assert (= (and b!6433924 (not res!2644700)) b!6433929))

(assert (= (or b!6433932 b!6433926 b!6433935) bm!553546))

(declare-fun m!7227542 () Bool)

(assert (=> b!6433931 m!7227542))

(assert (=> b!6433931 m!7227542))

(declare-fun m!7227544 () Bool)

(assert (=> b!6433931 m!7227544))

(declare-fun m!7227546 () Bool)

(assert (=> b!6433931 m!7227546))

(assert (=> b!6433931 m!7227544))

(assert (=> b!6433931 m!7227546))

(declare-fun m!7227548 () Bool)

(assert (=> b!6433931 m!7227548))

(assert (=> b!6433923 m!7227546))

(assert (=> b!6433923 m!7227546))

(declare-fun m!7227550 () Bool)

(assert (=> b!6433923 m!7227550))

(assert (=> d!2016988 m!7227466))

(declare-fun m!7227552 () Bool)

(assert (=> d!2016988 m!7227552))

(assert (=> bm!553546 m!7227466))

(declare-fun m!7227554 () Bool)

(assert (=> b!6433934 m!7227554))

(assert (=> b!6433927 m!7227542))

(assert (=> b!6433924 m!7227546))

(assert (=> b!6433924 m!7227546))

(assert (=> b!6433924 m!7227550))

(assert (=> b!6433929 m!7227542))

(assert (=> b!6433844 d!2016988))

(declare-fun d!2016990 () Bool)

(declare-fun isEmpty!37359 (Option!16228) Bool)

(assert (=> d!2016990 (= (isDefined!12931 lt!2379963) (not (isEmpty!37359 lt!2379963)))))

(declare-fun bs!1619029 () Bool)

(assert (= bs!1619029 d!2016990))

(declare-fun m!7227556 () Bool)

(assert (=> bs!1619029 m!7227556))

(assert (=> b!6433866 d!2016990))

(declare-fun d!2016992 () Bool)

(declare-fun choose!47837 (Int) Bool)

(assert (=> d!2016992 (= (Exists!3407 lambda!356001) (choose!47837 lambda!356001))))

(declare-fun bs!1619030 () Bool)

(assert (= bs!1619030 d!2016992))

(declare-fun m!7227558 () Bool)

(assert (=> bs!1619030 m!7227558))

(assert (=> b!6433866 d!2016992))

(declare-fun bs!1619031 () Bool)

(declare-fun d!2016994 () Bool)

(assert (= bs!1619031 (and d!2016994 b!6433847)))

(declare-fun lambda!356011 () Int)

(assert (=> bs!1619031 (= (and (= s!2326 (_1!36619 lt!2379961)) (= lt!2379981 (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356011 lambda!356003))))

(declare-fun bs!1619032 () Bool)

(assert (= bs!1619032 (and d!2016994 b!6433843)))

(assert (=> bs!1619032 (= (= lt!2379981 (regOne!33186 r!7292)) (= lambda!356011 lambda!355998))))

(assert (=> bs!1619032 (not (= lambda!356011 lambda!355999))))

(declare-fun bs!1619033 () Bool)

(assert (= bs!1619033 (and d!2016994 b!6433866)))

(assert (=> bs!1619033 (= lambda!356011 lambda!356001)))

(assert (=> bs!1619031 (not (= lambda!356011 lambda!356005))))

(assert (=> bs!1619031 (not (= lambda!356011 lambda!356004))))

(assert (=> bs!1619033 (not (= lambda!356011 lambda!356002))))

(assert (=> d!2016994 true))

(assert (=> d!2016994 true))

(assert (=> d!2016994 true))

(assert (=> d!2016994 (= (isDefined!12931 (findConcatSeparation!2642 lt!2379981 (regTwo!33186 r!7292) Nil!65186 s!2326 s!2326)) (Exists!3407 lambda!356011))))

(declare-fun lt!2380008 () Unit!158679)

(declare-fun choose!47839 (Regex!16337 Regex!16337 List!65310) Unit!158679)

(assert (=> d!2016994 (= lt!2380008 (choose!47839 lt!2379981 (regTwo!33186 r!7292) s!2326))))

(assert (=> d!2016994 (validRegex!8073 lt!2379981)))

(assert (=> d!2016994 (= (lemmaFindConcatSeparationEquivalentToExists!2406 lt!2379981 (regTwo!33186 r!7292) s!2326) lt!2380008)))

(declare-fun bs!1619034 () Bool)

(assert (= bs!1619034 d!2016994))

(declare-fun m!7227560 () Bool)

(assert (=> bs!1619034 m!7227560))

(assert (=> bs!1619034 m!7227552))

(assert (=> bs!1619034 m!7227390))

(declare-fun m!7227562 () Bool)

(assert (=> bs!1619034 m!7227562))

(assert (=> bs!1619034 m!7227390))

(declare-fun m!7227564 () Bool)

(assert (=> bs!1619034 m!7227564))

(assert (=> b!6433866 d!2016994))

(declare-fun bs!1619036 () Bool)

(declare-fun d!2016996 () Bool)

(assert (= bs!1619036 (and d!2016996 b!6433847)))

(declare-fun lambda!356019 () Int)

(assert (=> bs!1619036 (= (and (= s!2326 (_1!36619 lt!2379961)) (= lt!2379981 (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356019 lambda!356003))))

(declare-fun bs!1619037 () Bool)

(assert (= bs!1619037 (and d!2016996 b!6433843)))

(assert (=> bs!1619037 (= (= lt!2379981 (regOne!33186 r!7292)) (= lambda!356019 lambda!355998))))

(declare-fun bs!1619038 () Bool)

(assert (= bs!1619038 (and d!2016996 d!2016994)))

(assert (=> bs!1619038 (= lambda!356019 lambda!356011)))

(assert (=> bs!1619037 (not (= lambda!356019 lambda!355999))))

(declare-fun bs!1619039 () Bool)

(assert (= bs!1619039 (and d!2016996 b!6433866)))

(assert (=> bs!1619039 (= lambda!356019 lambda!356001)))

(assert (=> bs!1619036 (not (= lambda!356019 lambda!356005))))

(assert (=> bs!1619036 (not (= lambda!356019 lambda!356004))))

(assert (=> bs!1619039 (not (= lambda!356019 lambda!356002))))

(assert (=> d!2016996 true))

(assert (=> d!2016996 true))

(assert (=> d!2016996 true))

(declare-fun lambda!356020 () Int)

(assert (=> bs!1619036 (not (= lambda!356020 lambda!356003))))

(declare-fun bs!1619040 () Bool)

(assert (= bs!1619040 d!2016996))

(assert (=> bs!1619040 (not (= lambda!356020 lambda!356019))))

(assert (=> bs!1619037 (not (= lambda!356020 lambda!355998))))

(assert (=> bs!1619038 (not (= lambda!356020 lambda!356011))))

(assert (=> bs!1619037 (= (= lt!2379981 (regOne!33186 r!7292)) (= lambda!356020 lambda!355999))))

(assert (=> bs!1619039 (not (= lambda!356020 lambda!356001))))

(assert (=> bs!1619036 (= (and (= s!2326 (_1!36619 lt!2379961)) (= lt!2379981 (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356020 lambda!356005))))

(assert (=> bs!1619036 (not (= lambda!356020 lambda!356004))))

(assert (=> bs!1619039 (= lambda!356020 lambda!356002)))

(assert (=> d!2016996 true))

(assert (=> d!2016996 true))

(assert (=> d!2016996 true))

(assert (=> d!2016996 (= (Exists!3407 lambda!356019) (Exists!3407 lambda!356020))))

(declare-fun lt!2380014 () Unit!158679)

(declare-fun choose!47840 (Regex!16337 Regex!16337 List!65310) Unit!158679)

(assert (=> d!2016996 (= lt!2380014 (choose!47840 lt!2379981 (regTwo!33186 r!7292) s!2326))))

(assert (=> d!2016996 (validRegex!8073 lt!2379981)))

(assert (=> d!2016996 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1944 lt!2379981 (regTwo!33186 r!7292) s!2326) lt!2380014)))

(declare-fun m!7227574 () Bool)

(assert (=> bs!1619040 m!7227574))

(declare-fun m!7227576 () Bool)

(assert (=> bs!1619040 m!7227576))

(declare-fun m!7227578 () Bool)

(assert (=> bs!1619040 m!7227578))

(assert (=> bs!1619040 m!7227552))

(assert (=> b!6433866 d!2016996))

(declare-fun d!2017006 () Bool)

(assert (=> d!2017006 (= (get!22589 lt!2379963) (v!52400 lt!2379963))))

(assert (=> b!6433866 d!2017006))

(declare-fun b!6434020 () Bool)

(declare-fun e!3902988 () Bool)

(declare-fun lt!2380038 () Option!16228)

(assert (=> b!6434020 (= e!3902988 (= (++!14405 (_1!36619 (get!22589 lt!2380038)) (_2!36619 (get!22589 lt!2380038))) s!2326))))

(declare-fun b!6434021 () Bool)

(declare-fun e!3902989 () Bool)

(assert (=> b!6434021 (= e!3902989 (matchR!8520 (regTwo!33186 r!7292) s!2326))))

(declare-fun b!6434022 () Bool)

(declare-fun e!3902990 () Option!16228)

(assert (=> b!6434022 (= e!3902990 (Some!16227 (tuple2!66633 Nil!65186 s!2326)))))

(declare-fun b!6434023 () Bool)

(declare-fun lt!2380040 () Unit!158679)

(declare-fun lt!2380039 () Unit!158679)

(assert (=> b!6434023 (= lt!2380040 lt!2380039)))

(assert (=> b!6434023 (= (++!14405 (++!14405 Nil!65186 (Cons!65186 (h!71634 s!2326) Nil!65186)) (t!378928 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2500 (List!65310 C!32944 List!65310 List!65310) Unit!158679)

(assert (=> b!6434023 (= lt!2380039 (lemmaMoveElementToOtherListKeepsConcatEq!2500 Nil!65186 (h!71634 s!2326) (t!378928 s!2326) s!2326))))

(declare-fun e!3902992 () Option!16228)

(assert (=> b!6434023 (= e!3902992 (findConcatSeparation!2642 lt!2379981 (regTwo!33186 r!7292) (++!14405 Nil!65186 (Cons!65186 (h!71634 s!2326) Nil!65186)) (t!378928 s!2326) s!2326))))

(declare-fun b!6434024 () Bool)

(assert (=> b!6434024 (= e!3902992 None!16227)))

(declare-fun b!6434025 () Bool)

(declare-fun res!2644766 () Bool)

(assert (=> b!6434025 (=> (not res!2644766) (not e!3902988))))

(assert (=> b!6434025 (= res!2644766 (matchR!8520 (regTwo!33186 r!7292) (_2!36619 (get!22589 lt!2380038))))))

(declare-fun b!6434026 () Bool)

(assert (=> b!6434026 (= e!3902990 e!3902992)))

(declare-fun c!1176026 () Bool)

(assert (=> b!6434026 (= c!1176026 ((_ is Nil!65186) s!2326))))

(declare-fun b!6434027 () Bool)

(declare-fun e!3902991 () Bool)

(assert (=> b!6434027 (= e!3902991 (not (isDefined!12931 lt!2380038)))))

(declare-fun d!2017008 () Bool)

(assert (=> d!2017008 e!3902991))

(declare-fun res!2644765 () Bool)

(assert (=> d!2017008 (=> res!2644765 e!3902991)))

(assert (=> d!2017008 (= res!2644765 e!3902988)))

(declare-fun res!2644764 () Bool)

(assert (=> d!2017008 (=> (not res!2644764) (not e!3902988))))

(assert (=> d!2017008 (= res!2644764 (isDefined!12931 lt!2380038))))

(assert (=> d!2017008 (= lt!2380038 e!3902990)))

(declare-fun c!1176025 () Bool)

(assert (=> d!2017008 (= c!1176025 e!3902989)))

(declare-fun res!2644761 () Bool)

(assert (=> d!2017008 (=> (not res!2644761) (not e!3902989))))

(assert (=> d!2017008 (= res!2644761 (matchR!8520 lt!2379981 Nil!65186))))

(assert (=> d!2017008 (validRegex!8073 lt!2379981)))

(assert (=> d!2017008 (= (findConcatSeparation!2642 lt!2379981 (regTwo!33186 r!7292) Nil!65186 s!2326 s!2326) lt!2380038)))

(declare-fun b!6434028 () Bool)

(declare-fun res!2644767 () Bool)

(assert (=> b!6434028 (=> (not res!2644767) (not e!3902988))))

(assert (=> b!6434028 (= res!2644767 (matchR!8520 lt!2379981 (_1!36619 (get!22589 lt!2380038))))))

(assert (= (and d!2017008 res!2644761) b!6434021))

(assert (= (and d!2017008 c!1176025) b!6434022))

(assert (= (and d!2017008 (not c!1176025)) b!6434026))

(assert (= (and b!6434026 c!1176026) b!6434024))

(assert (= (and b!6434026 (not c!1176026)) b!6434023))

(assert (= (and d!2017008 res!2644764) b!6434028))

(assert (= (and b!6434028 res!2644767) b!6434025))

(assert (= (and b!6434025 res!2644766) b!6434020))

(assert (= (and d!2017008 (not res!2644765)) b!6434027))

(declare-fun m!7227626 () Bool)

(assert (=> b!6434025 m!7227626))

(declare-fun m!7227628 () Bool)

(assert (=> b!6434025 m!7227628))

(declare-fun m!7227630 () Bool)

(assert (=> b!6434023 m!7227630))

(assert (=> b!6434023 m!7227630))

(declare-fun m!7227632 () Bool)

(assert (=> b!6434023 m!7227632))

(declare-fun m!7227634 () Bool)

(assert (=> b!6434023 m!7227634))

(assert (=> b!6434023 m!7227630))

(declare-fun m!7227636 () Bool)

(assert (=> b!6434023 m!7227636))

(assert (=> b!6434020 m!7227626))

(declare-fun m!7227638 () Bool)

(assert (=> b!6434020 m!7227638))

(declare-fun m!7227640 () Bool)

(assert (=> d!2017008 m!7227640))

(declare-fun m!7227642 () Bool)

(assert (=> d!2017008 m!7227642))

(assert (=> d!2017008 m!7227552))

(assert (=> b!6434028 m!7227626))

(declare-fun m!7227644 () Bool)

(assert (=> b!6434028 m!7227644))

(declare-fun m!7227646 () Bool)

(assert (=> b!6434021 m!7227646))

(assert (=> b!6434027 m!7227640))

(assert (=> b!6433866 d!2017008))

(declare-fun b!6434043 () Bool)

(declare-fun e!3903001 () Bool)

(declare-fun lt!2380047 () List!65310)

(assert (=> b!6434043 (= e!3903001 (or (not (= (_2!36619 lt!2379961) Nil!65186)) (= lt!2380047 (_1!36619 lt!2379961))))))

(declare-fun b!6434042 () Bool)

(declare-fun res!2644775 () Bool)

(assert (=> b!6434042 (=> (not res!2644775) (not e!3903001))))

(declare-fun size!40396 (List!65310) Int)

(assert (=> b!6434042 (= res!2644775 (= (size!40396 lt!2380047) (+ (size!40396 (_1!36619 lt!2379961)) (size!40396 (_2!36619 lt!2379961)))))))

(declare-fun b!6434040 () Bool)

(declare-fun e!3903000 () List!65310)

(assert (=> b!6434040 (= e!3903000 (_2!36619 lt!2379961))))

(declare-fun d!2017020 () Bool)

(assert (=> d!2017020 e!3903001))

(declare-fun res!2644776 () Bool)

(assert (=> d!2017020 (=> (not res!2644776) (not e!3903001))))

(declare-fun content!12388 (List!65310) (InoxSet C!32944))

(assert (=> d!2017020 (= res!2644776 (= (content!12388 lt!2380047) ((_ map or) (content!12388 (_1!36619 lt!2379961)) (content!12388 (_2!36619 lt!2379961)))))))

(assert (=> d!2017020 (= lt!2380047 e!3903000)))

(declare-fun c!1176029 () Bool)

(assert (=> d!2017020 (= c!1176029 ((_ is Nil!65186) (_1!36619 lt!2379961)))))

(assert (=> d!2017020 (= (++!14405 (_1!36619 lt!2379961) (_2!36619 lt!2379961)) lt!2380047)))

(declare-fun b!6434041 () Bool)

(assert (=> b!6434041 (= e!3903000 (Cons!65186 (h!71634 (_1!36619 lt!2379961)) (++!14405 (t!378928 (_1!36619 lt!2379961)) (_2!36619 lt!2379961))))))

(assert (= (and d!2017020 c!1176029) b!6434040))

(assert (= (and d!2017020 (not c!1176029)) b!6434041))

(assert (= (and d!2017020 res!2644776) b!6434042))

(assert (= (and b!6434042 res!2644775) b!6434043))

(declare-fun m!7227660 () Bool)

(assert (=> b!6434042 m!7227660))

(declare-fun m!7227662 () Bool)

(assert (=> b!6434042 m!7227662))

(declare-fun m!7227664 () Bool)

(assert (=> b!6434042 m!7227664))

(declare-fun m!7227666 () Bool)

(assert (=> d!2017020 m!7227666))

(declare-fun m!7227668 () Bool)

(assert (=> d!2017020 m!7227668))

(declare-fun m!7227670 () Bool)

(assert (=> d!2017020 m!7227670))

(declare-fun m!7227672 () Bool)

(assert (=> b!6434041 m!7227672))

(assert (=> b!6433866 d!2017020))

(declare-fun d!2017030 () Bool)

(assert (=> d!2017030 (= (Exists!3407 lambda!356002) (choose!47837 lambda!356002))))

(declare-fun bs!1619053 () Bool)

(assert (= bs!1619053 d!2017030))

(declare-fun m!7227674 () Bool)

(assert (=> bs!1619053 m!7227674))

(assert (=> b!6433866 d!2017030))

(declare-fun d!2017032 () Bool)

(assert (=> d!2017032 (= (isEmpty!37356 (t!378930 zl!343)) ((_ is Nil!65188) (t!378930 zl!343)))))

(assert (=> b!6433845 d!2017032))

(declare-fun bs!1619059 () Bool)

(declare-fun d!2017038 () Bool)

(assert (= bs!1619059 (and d!2017038 d!2016996)))

(declare-fun lambda!356034 () Int)

(assert (=> bs!1619059 (not (= lambda!356034 lambda!356020))))

(declare-fun bs!1619060 () Bool)

(assert (= bs!1619060 (and d!2017038 b!6433847)))

(assert (=> bs!1619060 (= (= (Star!16337 (reg!16666 (regOne!33186 r!7292))) lt!2379981) (= lambda!356034 lambda!356003))))

(assert (=> bs!1619059 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= (Star!16337 (reg!16666 (regOne!33186 r!7292))) (regTwo!33186 r!7292))) (= lambda!356034 lambda!356019))))

(declare-fun bs!1619061 () Bool)

(assert (= bs!1619061 (and d!2017038 b!6433843)))

(assert (=> bs!1619061 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) (regOne!33186 r!7292)) (= (Star!16337 (reg!16666 (regOne!33186 r!7292))) (regTwo!33186 r!7292))) (= lambda!356034 lambda!355998))))

(declare-fun bs!1619062 () Bool)

(assert (= bs!1619062 (and d!2017038 d!2016994)))

(assert (=> bs!1619062 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= (Star!16337 (reg!16666 (regOne!33186 r!7292))) (regTwo!33186 r!7292))) (= lambda!356034 lambda!356011))))

(assert (=> bs!1619061 (not (= lambda!356034 lambda!355999))))

(declare-fun bs!1619063 () Bool)

(assert (= bs!1619063 (and d!2017038 b!6433866)))

(assert (=> bs!1619063 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= (Star!16337 (reg!16666 (regOne!33186 r!7292))) (regTwo!33186 r!7292))) (= lambda!356034 lambda!356001))))

(assert (=> bs!1619060 (not (= lambda!356034 lambda!356005))))

(assert (=> bs!1619060 (not (= lambda!356034 lambda!356004))))

(assert (=> bs!1619063 (not (= lambda!356034 lambda!356002))))

(assert (=> d!2017038 true))

(assert (=> d!2017038 true))

(declare-fun lambda!356035 () Int)

(assert (=> bs!1619059 (not (= lambda!356035 lambda!356020))))

(assert (=> bs!1619060 (not (= lambda!356035 lambda!356003))))

(assert (=> bs!1619059 (not (= lambda!356035 lambda!356019))))

(assert (=> bs!1619061 (not (= lambda!356035 lambda!355998))))

(declare-fun bs!1619064 () Bool)

(assert (= bs!1619064 d!2017038))

(assert (=> bs!1619064 (not (= lambda!356035 lambda!356034))))

(assert (=> bs!1619062 (not (= lambda!356035 lambda!356011))))

(assert (=> bs!1619061 (not (= lambda!356035 lambda!355999))))

(assert (=> bs!1619063 (not (= lambda!356035 lambda!356001))))

(assert (=> bs!1619060 (not (= lambda!356035 lambda!356005))))

(assert (=> bs!1619060 (= (= (Star!16337 (reg!16666 (regOne!33186 r!7292))) lt!2379981) (= lambda!356035 lambda!356004))))

(assert (=> bs!1619063 (not (= lambda!356035 lambda!356002))))

(assert (=> d!2017038 true))

(assert (=> d!2017038 true))

(assert (=> d!2017038 (= (Exists!3407 lambda!356034) (Exists!3407 lambda!356035))))

(declare-fun lt!2380059 () Unit!158679)

(declare-fun choose!47845 (Regex!16337 List!65310) Unit!158679)

(assert (=> d!2017038 (= lt!2380059 (choose!47845 (reg!16666 (regOne!33186 r!7292)) (_1!36619 lt!2379961)))))

(assert (=> d!2017038 (validRegex!8073 (reg!16666 (regOne!33186 r!7292)))))

(assert (=> d!2017038 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!628 (reg!16666 (regOne!33186 r!7292)) (_1!36619 lt!2379961)) lt!2380059)))

(declare-fun m!7227736 () Bool)

(assert (=> bs!1619064 m!7227736))

(declare-fun m!7227738 () Bool)

(assert (=> bs!1619064 m!7227738))

(declare-fun m!7227740 () Bool)

(assert (=> bs!1619064 m!7227740))

(assert (=> bs!1619064 m!7227454))

(assert (=> b!6433847 d!2017038))

(declare-fun b!6434133 () Bool)

(declare-fun e!3903048 () Bool)

(declare-fun lt!2380064 () Option!16228)

(assert (=> b!6434133 (= e!3903048 (= (++!14405 (_1!36619 (get!22589 lt!2380064)) (_2!36619 (get!22589 lt!2380064))) (_1!36619 lt!2379961)))))

(declare-fun b!6434134 () Bool)

(declare-fun e!3903049 () Bool)

(assert (=> b!6434134 (= e!3903049 (matchR!8520 lt!2379981 (_1!36619 lt!2379961)))))

(declare-fun b!6434135 () Bool)

(declare-fun e!3903050 () Option!16228)

(assert (=> b!6434135 (= e!3903050 (Some!16227 (tuple2!66633 Nil!65186 (_1!36619 lt!2379961))))))

(declare-fun b!6434136 () Bool)

(declare-fun lt!2380066 () Unit!158679)

(declare-fun lt!2380065 () Unit!158679)

(assert (=> b!6434136 (= lt!2380066 lt!2380065)))

(assert (=> b!6434136 (= (++!14405 (++!14405 Nil!65186 (Cons!65186 (h!71634 (_1!36619 lt!2379961)) Nil!65186)) (t!378928 (_1!36619 lt!2379961))) (_1!36619 lt!2379961))))

(assert (=> b!6434136 (= lt!2380065 (lemmaMoveElementToOtherListKeepsConcatEq!2500 Nil!65186 (h!71634 (_1!36619 lt!2379961)) (t!378928 (_1!36619 lt!2379961)) (_1!36619 lt!2379961)))))

(declare-fun e!3903052 () Option!16228)

(assert (=> b!6434136 (= e!3903052 (findConcatSeparation!2642 (reg!16666 (regOne!33186 r!7292)) lt!2379981 (++!14405 Nil!65186 (Cons!65186 (h!71634 (_1!36619 lt!2379961)) Nil!65186)) (t!378928 (_1!36619 lt!2379961)) (_1!36619 lt!2379961)))))

(declare-fun b!6434137 () Bool)

(assert (=> b!6434137 (= e!3903052 None!16227)))

(declare-fun b!6434138 () Bool)

(declare-fun res!2644823 () Bool)

(assert (=> b!6434138 (=> (not res!2644823) (not e!3903048))))

(assert (=> b!6434138 (= res!2644823 (matchR!8520 lt!2379981 (_2!36619 (get!22589 lt!2380064))))))

(declare-fun b!6434139 () Bool)

(assert (=> b!6434139 (= e!3903050 e!3903052)))

(declare-fun c!1176054 () Bool)

(assert (=> b!6434139 (= c!1176054 ((_ is Nil!65186) (_1!36619 lt!2379961)))))

(declare-fun b!6434140 () Bool)

(declare-fun e!3903051 () Bool)

(assert (=> b!6434140 (= e!3903051 (not (isDefined!12931 lt!2380064)))))

(declare-fun d!2017056 () Bool)

(assert (=> d!2017056 e!3903051))

(declare-fun res!2644822 () Bool)

(assert (=> d!2017056 (=> res!2644822 e!3903051)))

(assert (=> d!2017056 (= res!2644822 e!3903048)))

(declare-fun res!2644821 () Bool)

(assert (=> d!2017056 (=> (not res!2644821) (not e!3903048))))

(assert (=> d!2017056 (= res!2644821 (isDefined!12931 lt!2380064))))

(assert (=> d!2017056 (= lt!2380064 e!3903050)))

(declare-fun c!1176053 () Bool)

(assert (=> d!2017056 (= c!1176053 e!3903049)))

(declare-fun res!2644820 () Bool)

(assert (=> d!2017056 (=> (not res!2644820) (not e!3903049))))

(assert (=> d!2017056 (= res!2644820 (matchR!8520 (reg!16666 (regOne!33186 r!7292)) Nil!65186))))

(assert (=> d!2017056 (validRegex!8073 (reg!16666 (regOne!33186 r!7292)))))

(assert (=> d!2017056 (= (findConcatSeparation!2642 (reg!16666 (regOne!33186 r!7292)) lt!2379981 Nil!65186 (_1!36619 lt!2379961) (_1!36619 lt!2379961)) lt!2380064)))

(declare-fun b!6434141 () Bool)

(declare-fun res!2644824 () Bool)

(assert (=> b!6434141 (=> (not res!2644824) (not e!3903048))))

(assert (=> b!6434141 (= res!2644824 (matchR!8520 (reg!16666 (regOne!33186 r!7292)) (_1!36619 (get!22589 lt!2380064))))))

(assert (= (and d!2017056 res!2644820) b!6434134))

(assert (= (and d!2017056 c!1176053) b!6434135))

(assert (= (and d!2017056 (not c!1176053)) b!6434139))

(assert (= (and b!6434139 c!1176054) b!6434137))

(assert (= (and b!6434139 (not c!1176054)) b!6434136))

(assert (= (and d!2017056 res!2644821) b!6434141))

(assert (= (and b!6434141 res!2644824) b!6434138))

(assert (= (and b!6434138 res!2644823) b!6434133))

(assert (= (and d!2017056 (not res!2644822)) b!6434140))

(declare-fun m!7227758 () Bool)

(assert (=> b!6434138 m!7227758))

(declare-fun m!7227760 () Bool)

(assert (=> b!6434138 m!7227760))

(declare-fun m!7227764 () Bool)

(assert (=> b!6434136 m!7227764))

(assert (=> b!6434136 m!7227764))

(declare-fun m!7227768 () Bool)

(assert (=> b!6434136 m!7227768))

(declare-fun m!7227770 () Bool)

(assert (=> b!6434136 m!7227770))

(assert (=> b!6434136 m!7227764))

(declare-fun m!7227772 () Bool)

(assert (=> b!6434136 m!7227772))

(assert (=> b!6434133 m!7227758))

(declare-fun m!7227774 () Bool)

(assert (=> b!6434133 m!7227774))

(declare-fun m!7227776 () Bool)

(assert (=> d!2017056 m!7227776))

(declare-fun m!7227778 () Bool)

(assert (=> d!2017056 m!7227778))

(assert (=> d!2017056 m!7227454))

(assert (=> b!6434141 m!7227758))

(declare-fun m!7227780 () Bool)

(assert (=> b!6434141 m!7227780))

(assert (=> b!6434134 m!7227528))

(assert (=> b!6434140 m!7227776))

(assert (=> b!6433847 d!2017056))

(declare-fun bs!1619082 () Bool)

(declare-fun b!6434197 () Bool)

(assert (= bs!1619082 (and b!6434197 d!2017038)))

(declare-fun lambda!356046 () Int)

(assert (=> bs!1619082 (= (and (= (reg!16666 lt!2379981) (reg!16666 (regOne!33186 r!7292))) (= lt!2379981 (Star!16337 (reg!16666 (regOne!33186 r!7292))))) (= lambda!356046 lambda!356035))))

(declare-fun bs!1619083 () Bool)

(assert (= bs!1619083 (and b!6434197 d!2016996)))

(assert (=> bs!1619083 (not (= lambda!356046 lambda!356020))))

(declare-fun bs!1619084 () Bool)

(assert (= bs!1619084 (and b!6434197 b!6433847)))

(assert (=> bs!1619084 (not (= lambda!356046 lambda!356003))))

(assert (=> bs!1619083 (not (= lambda!356046 lambda!356019))))

(declare-fun bs!1619085 () Bool)

(assert (= bs!1619085 (and b!6434197 b!6433843)))

(assert (=> bs!1619085 (not (= lambda!356046 lambda!355998))))

(assert (=> bs!1619082 (not (= lambda!356046 lambda!356034))))

(declare-fun bs!1619086 () Bool)

(assert (= bs!1619086 (and b!6434197 d!2016994)))

(assert (=> bs!1619086 (not (= lambda!356046 lambda!356011))))

(assert (=> bs!1619085 (not (= lambda!356046 lambda!355999))))

(declare-fun bs!1619087 () Bool)

(assert (= bs!1619087 (and b!6434197 b!6433866)))

(assert (=> bs!1619087 (not (= lambda!356046 lambda!356001))))

(assert (=> bs!1619084 (not (= lambda!356046 lambda!356005))))

(assert (=> bs!1619084 (= (= (reg!16666 lt!2379981) (reg!16666 (regOne!33186 r!7292))) (= lambda!356046 lambda!356004))))

(assert (=> bs!1619087 (not (= lambda!356046 lambda!356002))))

(assert (=> b!6434197 true))

(assert (=> b!6434197 true))

(declare-fun bs!1619088 () Bool)

(declare-fun b!6434195 () Bool)

(assert (= bs!1619088 (and b!6434195 d!2017038)))

(declare-fun lambda!356047 () Int)

(assert (=> bs!1619088 (not (= lambda!356047 lambda!356035))))

(declare-fun bs!1619089 () Bool)

(assert (= bs!1619089 (and b!6434195 d!2016996)))

(assert (=> bs!1619089 (= (and (= (_1!36619 lt!2379961) s!2326) (= (regOne!33186 lt!2379981) lt!2379981) (= (regTwo!33186 lt!2379981) (regTwo!33186 r!7292))) (= lambda!356047 lambda!356020))))

(declare-fun bs!1619090 () Bool)

(assert (= bs!1619090 (and b!6434195 b!6433847)))

(assert (=> bs!1619090 (not (= lambda!356047 lambda!356003))))

(assert (=> bs!1619089 (not (= lambda!356047 lambda!356019))))

(declare-fun bs!1619091 () Bool)

(assert (= bs!1619091 (and b!6434195 b!6433843)))

(assert (=> bs!1619091 (not (= lambda!356047 lambda!355998))))

(assert (=> bs!1619088 (not (= lambda!356047 lambda!356034))))

(declare-fun bs!1619092 () Bool)

(assert (= bs!1619092 (and b!6434195 d!2016994)))

(assert (=> bs!1619092 (not (= lambda!356047 lambda!356011))))

(assert (=> bs!1619091 (= (and (= (_1!36619 lt!2379961) s!2326) (= (regOne!33186 lt!2379981) (regOne!33186 r!7292)) (= (regTwo!33186 lt!2379981) (regTwo!33186 r!7292))) (= lambda!356047 lambda!355999))))

(assert (=> bs!1619090 (= (and (= (regOne!33186 lt!2379981) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 lt!2379981) lt!2379981)) (= lambda!356047 lambda!356005))))

(declare-fun bs!1619093 () Bool)

(assert (= bs!1619093 (and b!6434195 b!6434197)))

(assert (=> bs!1619093 (not (= lambda!356047 lambda!356046))))

(declare-fun bs!1619094 () Bool)

(assert (= bs!1619094 (and b!6434195 b!6433866)))

(assert (=> bs!1619094 (not (= lambda!356047 lambda!356001))))

(assert (=> bs!1619090 (not (= lambda!356047 lambda!356004))))

(assert (=> bs!1619094 (= (and (= (_1!36619 lt!2379961) s!2326) (= (regOne!33186 lt!2379981) lt!2379981) (= (regTwo!33186 lt!2379981) (regTwo!33186 r!7292))) (= lambda!356047 lambda!356002))))

(assert (=> b!6434195 true))

(assert (=> b!6434195 true))

(declare-fun b!6434194 () Bool)

(declare-fun c!1176072 () Bool)

(assert (=> b!6434194 (= c!1176072 ((_ is Union!16337) lt!2379981))))

(declare-fun e!3903085 () Bool)

(declare-fun e!3903083 () Bool)

(assert (=> b!6434194 (= e!3903085 e!3903083)))

(declare-fun d!2017064 () Bool)

(declare-fun c!1176071 () Bool)

(assert (=> d!2017064 (= c!1176071 ((_ is EmptyExpr!16337) lt!2379981))))

(declare-fun e!3903087 () Bool)

(assert (=> d!2017064 (= (matchRSpec!3438 lt!2379981 (_1!36619 lt!2379961)) e!3903087)))

(declare-fun e!3903088 () Bool)

(declare-fun call!553564 () Bool)

(assert (=> b!6434195 (= e!3903088 call!553564)))

(declare-fun b!6434196 () Bool)

(declare-fun c!1176074 () Bool)

(assert (=> b!6434196 (= c!1176074 ((_ is ElementMatch!16337) lt!2379981))))

(declare-fun e!3903086 () Bool)

(assert (=> b!6434196 (= e!3903086 e!3903085)))

(declare-fun e!3903084 () Bool)

(assert (=> b!6434197 (= e!3903084 call!553564)))

(declare-fun b!6434198 () Bool)

(declare-fun e!3903089 () Bool)

(assert (=> b!6434198 (= e!3903089 (matchRSpec!3438 (regTwo!33187 lt!2379981) (_1!36619 lt!2379961)))))

(declare-fun c!1176073 () Bool)

(declare-fun bm!553558 () Bool)

(assert (=> bm!553558 (= call!553564 (Exists!3407 (ite c!1176073 lambda!356046 lambda!356047)))))

(declare-fun b!6434199 () Bool)

(assert (=> b!6434199 (= e!3903087 e!3903086)))

(declare-fun res!2644845 () Bool)

(assert (=> b!6434199 (= res!2644845 (not ((_ is EmptyLang!16337) lt!2379981)))))

(assert (=> b!6434199 (=> (not res!2644845) (not e!3903086))))

(declare-fun b!6434200 () Bool)

(declare-fun call!553563 () Bool)

(assert (=> b!6434200 (= e!3903087 call!553563)))

(declare-fun bm!553559 () Bool)

(assert (=> bm!553559 (= call!553563 (isEmpty!37357 (_1!36619 lt!2379961)))))

(declare-fun b!6434201 () Bool)

(assert (=> b!6434201 (= e!3903083 e!3903089)))

(declare-fun res!2644846 () Bool)

(assert (=> b!6434201 (= res!2644846 (matchRSpec!3438 (regOne!33187 lt!2379981) (_1!36619 lt!2379961)))))

(assert (=> b!6434201 (=> res!2644846 e!3903089)))

(declare-fun b!6434202 () Bool)

(declare-fun res!2644847 () Bool)

(assert (=> b!6434202 (=> res!2644847 e!3903084)))

(assert (=> b!6434202 (= res!2644847 call!553563)))

(assert (=> b!6434202 (= e!3903088 e!3903084)))

(declare-fun b!6434203 () Bool)

(assert (=> b!6434203 (= e!3903085 (= (_1!36619 lt!2379961) (Cons!65186 (c!1176002 lt!2379981) Nil!65186)))))

(declare-fun b!6434204 () Bool)

(assert (=> b!6434204 (= e!3903083 e!3903088)))

(assert (=> b!6434204 (= c!1176073 ((_ is Star!16337) lt!2379981))))

(assert (= (and d!2017064 c!1176071) b!6434200))

(assert (= (and d!2017064 (not c!1176071)) b!6434199))

(assert (= (and b!6434199 res!2644845) b!6434196))

(assert (= (and b!6434196 c!1176074) b!6434203))

(assert (= (and b!6434196 (not c!1176074)) b!6434194))

(assert (= (and b!6434194 c!1176072) b!6434201))

(assert (= (and b!6434194 (not c!1176072)) b!6434204))

(assert (= (and b!6434201 (not res!2644846)) b!6434198))

(assert (= (and b!6434204 c!1176073) b!6434202))

(assert (= (and b!6434204 (not c!1176073)) b!6434195))

(assert (= (and b!6434202 (not res!2644847)) b!6434197))

(assert (= (or b!6434197 b!6434195) bm!553558))

(assert (= (or b!6434200 b!6434202) bm!553559))

(declare-fun m!7227814 () Bool)

(assert (=> b!6434198 m!7227814))

(declare-fun m!7227816 () Bool)

(assert (=> bm!553558 m!7227816))

(assert (=> bm!553559 m!7227466))

(declare-fun m!7227818 () Bool)

(assert (=> b!6434201 m!7227818))

(assert (=> b!6433847 d!2017064))

(declare-fun bs!1619097 () Bool)

(declare-fun d!2017074 () Bool)

(assert (= bs!1619097 (and d!2017074 d!2016996)))

(declare-fun lambda!356051 () Int)

(assert (=> bs!1619097 (not (= lambda!356051 lambda!356020))))

(declare-fun bs!1619098 () Bool)

(assert (= bs!1619098 (and d!2017074 b!6433847)))

(assert (=> bs!1619098 (= lambda!356051 lambda!356003)))

(assert (=> bs!1619097 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356051 lambda!356019))))

(declare-fun bs!1619100 () Bool)

(assert (= bs!1619100 (and d!2017074 b!6433843)))

(assert (=> bs!1619100 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) (regOne!33186 r!7292)) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356051 lambda!355998))))

(declare-fun bs!1619101 () Bool)

(assert (= bs!1619101 (and d!2017074 d!2017038)))

(assert (=> bs!1619101 (= (= lt!2379981 (Star!16337 (reg!16666 (regOne!33186 r!7292)))) (= lambda!356051 lambda!356034))))

(declare-fun bs!1619102 () Bool)

(assert (= bs!1619102 (and d!2017074 d!2016994)))

(assert (=> bs!1619102 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356051 lambda!356011))))

(assert (=> bs!1619100 (not (= lambda!356051 lambda!355999))))

(assert (=> bs!1619098 (not (= lambda!356051 lambda!356005))))

(declare-fun bs!1619103 () Bool)

(assert (= bs!1619103 (and d!2017074 b!6434195)))

(assert (=> bs!1619103 (not (= lambda!356051 lambda!356047))))

(assert (=> bs!1619101 (not (= lambda!356051 lambda!356035))))

(declare-fun bs!1619104 () Bool)

(assert (= bs!1619104 (and d!2017074 b!6434197)))

(assert (=> bs!1619104 (not (= lambda!356051 lambda!356046))))

(declare-fun bs!1619105 () Bool)

(assert (= bs!1619105 (and d!2017074 b!6433866)))

(assert (=> bs!1619105 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356051 lambda!356001))))

(assert (=> bs!1619098 (not (= lambda!356051 lambda!356004))))

(assert (=> bs!1619105 (not (= lambda!356051 lambda!356002))))

(assert (=> d!2017074 true))

(assert (=> d!2017074 true))

(assert (=> d!2017074 true))

(declare-fun bs!1619106 () Bool)

(assert (= bs!1619106 d!2017074))

(declare-fun lambda!356052 () Int)

(assert (=> bs!1619106 (not (= lambda!356052 lambda!356051))))

(assert (=> bs!1619097 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356052 lambda!356020))))

(assert (=> bs!1619098 (not (= lambda!356052 lambda!356003))))

(assert (=> bs!1619097 (not (= lambda!356052 lambda!356019))))

(assert (=> bs!1619100 (not (= lambda!356052 lambda!355998))))

(assert (=> bs!1619101 (not (= lambda!356052 lambda!356034))))

(assert (=> bs!1619102 (not (= lambda!356052 lambda!356011))))

(assert (=> bs!1619100 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) (regOne!33186 r!7292)) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356052 lambda!355999))))

(assert (=> bs!1619098 (= lambda!356052 lambda!356005)))

(assert (=> bs!1619103 (= (and (= (reg!16666 (regOne!33186 r!7292)) (regOne!33186 lt!2379981)) (= lt!2379981 (regTwo!33186 lt!2379981))) (= lambda!356052 lambda!356047))))

(assert (=> bs!1619101 (not (= lambda!356052 lambda!356035))))

(assert (=> bs!1619104 (not (= lambda!356052 lambda!356046))))

(assert (=> bs!1619105 (not (= lambda!356052 lambda!356001))))

(assert (=> bs!1619098 (not (= lambda!356052 lambda!356004))))

(assert (=> bs!1619105 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356052 lambda!356002))))

(assert (=> d!2017074 true))

(assert (=> d!2017074 true))

(assert (=> d!2017074 true))

(assert (=> d!2017074 (= (Exists!3407 lambda!356051) (Exists!3407 lambda!356052))))

(declare-fun lt!2380075 () Unit!158679)

(assert (=> d!2017074 (= lt!2380075 (choose!47840 (reg!16666 (regOne!33186 r!7292)) lt!2379981 (_1!36619 lt!2379961)))))

(assert (=> d!2017074 (validRegex!8073 (reg!16666 (regOne!33186 r!7292)))))

(assert (=> d!2017074 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1944 (reg!16666 (regOne!33186 r!7292)) lt!2379981 (_1!36619 lt!2379961)) lt!2380075)))

(declare-fun m!7227842 () Bool)

(assert (=> bs!1619106 m!7227842))

(declare-fun m!7227844 () Bool)

(assert (=> bs!1619106 m!7227844))

(declare-fun m!7227846 () Bool)

(assert (=> bs!1619106 m!7227846))

(assert (=> bs!1619106 m!7227454))

(assert (=> b!6433847 d!2017074))

(declare-fun b!6434238 () Bool)

(declare-fun e!3903107 () Bool)

(declare-fun lt!2380077 () List!65310)

(assert (=> b!6434238 (= e!3903107 (or (not (= (_2!36619 lt!2379993) Nil!65186)) (= lt!2380077 (_1!36619 lt!2379993))))))

(declare-fun b!6434237 () Bool)

(declare-fun res!2644858 () Bool)

(assert (=> b!6434237 (=> (not res!2644858) (not e!3903107))))

(assert (=> b!6434237 (= res!2644858 (= (size!40396 lt!2380077) (+ (size!40396 (_1!36619 lt!2379993)) (size!40396 (_2!36619 lt!2379993)))))))

(declare-fun b!6434235 () Bool)

(declare-fun e!3903106 () List!65310)

(assert (=> b!6434235 (= e!3903106 (_2!36619 lt!2379993))))

(declare-fun d!2017082 () Bool)

(assert (=> d!2017082 e!3903107))

(declare-fun res!2644859 () Bool)

(assert (=> d!2017082 (=> (not res!2644859) (not e!3903107))))

(assert (=> d!2017082 (= res!2644859 (= (content!12388 lt!2380077) ((_ map or) (content!12388 (_1!36619 lt!2379993)) (content!12388 (_2!36619 lt!2379993)))))))

(assert (=> d!2017082 (= lt!2380077 e!3903106)))

(declare-fun c!1176085 () Bool)

(assert (=> d!2017082 (= c!1176085 ((_ is Nil!65186) (_1!36619 lt!2379993)))))

(assert (=> d!2017082 (= (++!14405 (_1!36619 lt!2379993) (_2!36619 lt!2379993)) lt!2380077)))

(declare-fun b!6434236 () Bool)

(assert (=> b!6434236 (= e!3903106 (Cons!65186 (h!71634 (_1!36619 lt!2379993)) (++!14405 (t!378928 (_1!36619 lt!2379993)) (_2!36619 lt!2379993))))))

(assert (= (and d!2017082 c!1176085) b!6434235))

(assert (= (and d!2017082 (not c!1176085)) b!6434236))

(assert (= (and d!2017082 res!2644859) b!6434237))

(assert (= (and b!6434237 res!2644858) b!6434238))

(declare-fun m!7227848 () Bool)

(assert (=> b!6434237 m!7227848))

(declare-fun m!7227850 () Bool)

(assert (=> b!6434237 m!7227850))

(declare-fun m!7227852 () Bool)

(assert (=> b!6434237 m!7227852))

(declare-fun m!7227854 () Bool)

(assert (=> d!2017082 m!7227854))

(declare-fun m!7227856 () Bool)

(assert (=> d!2017082 m!7227856))

(declare-fun m!7227858 () Bool)

(assert (=> d!2017082 m!7227858))

(declare-fun m!7227860 () Bool)

(assert (=> b!6434236 m!7227860))

(assert (=> b!6433847 d!2017082))

(declare-fun d!2017084 () Bool)

(assert (=> d!2017084 (= (Exists!3407 lambda!356005) (choose!47837 lambda!356005))))

(declare-fun bs!1619107 () Bool)

(assert (= bs!1619107 d!2017084))

(declare-fun m!7227862 () Bool)

(assert (=> bs!1619107 m!7227862))

(assert (=> b!6433847 d!2017084))

(declare-fun d!2017086 () Bool)

(assert (=> d!2017086 (= (get!22589 lt!2380002) (v!52400 lt!2380002))))

(assert (=> b!6433847 d!2017086))

(declare-fun d!2017088 () Bool)

(assert (=> d!2017088 (= (Exists!3407 lambda!356003) (choose!47837 lambda!356003))))

(declare-fun bs!1619108 () Bool)

(assert (= bs!1619108 d!2017088))

(declare-fun m!7227864 () Bool)

(assert (=> bs!1619108 m!7227864))

(assert (=> b!6433847 d!2017088))

(declare-fun d!2017090 () Bool)

(assert (=> d!2017090 (= (isDefined!12931 lt!2380002) (not (isEmpty!37359 lt!2380002)))))

(declare-fun bs!1619109 () Bool)

(assert (= bs!1619109 d!2017090))

(declare-fun m!7227866 () Bool)

(assert (=> bs!1619109 m!7227866))

(assert (=> b!6433847 d!2017090))

(declare-fun d!2017092 () Bool)

(assert (=> d!2017092 (= (matchR!8520 lt!2379981 (_1!36619 lt!2379961)) (matchRSpec!3438 lt!2379981 (_1!36619 lt!2379961)))))

(declare-fun lt!2380080 () Unit!158679)

(declare-fun choose!47847 (Regex!16337 List!65310) Unit!158679)

(assert (=> d!2017092 (= lt!2380080 (choose!47847 lt!2379981 (_1!36619 lt!2379961)))))

(assert (=> d!2017092 (validRegex!8073 lt!2379981)))

(assert (=> d!2017092 (= (mainMatchTheorem!3438 lt!2379981 (_1!36619 lt!2379961)) lt!2380080)))

(declare-fun bs!1619110 () Bool)

(assert (= bs!1619110 d!2017092))

(assert (=> bs!1619110 m!7227528))

(assert (=> bs!1619110 m!7227490))

(declare-fun m!7227868 () Bool)

(assert (=> bs!1619110 m!7227868))

(assert (=> bs!1619110 m!7227552))

(assert (=> b!6433847 d!2017092))

(declare-fun d!2017094 () Bool)

(assert (=> d!2017094 (= (Exists!3407 lambda!356004) (choose!47837 lambda!356004))))

(declare-fun bs!1619111 () Bool)

(assert (= bs!1619111 d!2017094))

(declare-fun m!7227870 () Bool)

(assert (=> bs!1619111 m!7227870))

(assert (=> b!6433847 d!2017094))

(declare-fun bs!1619112 () Bool)

(declare-fun d!2017096 () Bool)

(assert (= bs!1619112 (and d!2017096 d!2017074)))

(declare-fun lambda!356053 () Int)

(assert (=> bs!1619112 (= lambda!356053 lambda!356051)))

(declare-fun bs!1619113 () Bool)

(assert (= bs!1619113 (and d!2017096 d!2016996)))

(assert (=> bs!1619113 (not (= lambda!356053 lambda!356020))))

(declare-fun bs!1619114 () Bool)

(assert (= bs!1619114 (and d!2017096 b!6433847)))

(assert (=> bs!1619114 (= lambda!356053 lambda!356003)))

(assert (=> bs!1619113 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356053 lambda!356019))))

(declare-fun bs!1619115 () Bool)

(assert (= bs!1619115 (and d!2017096 b!6433843)))

(assert (=> bs!1619115 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) (regOne!33186 r!7292)) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356053 lambda!355998))))

(declare-fun bs!1619116 () Bool)

(assert (= bs!1619116 (and d!2017096 d!2017038)))

(assert (=> bs!1619116 (= (= lt!2379981 (Star!16337 (reg!16666 (regOne!33186 r!7292)))) (= lambda!356053 lambda!356034))))

(declare-fun bs!1619117 () Bool)

(assert (= bs!1619117 (and d!2017096 d!2016994)))

(assert (=> bs!1619117 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356053 lambda!356011))))

(assert (=> bs!1619115 (not (= lambda!356053 lambda!355999))))

(assert (=> bs!1619112 (not (= lambda!356053 lambda!356052))))

(assert (=> bs!1619114 (not (= lambda!356053 lambda!356005))))

(declare-fun bs!1619118 () Bool)

(assert (= bs!1619118 (and d!2017096 b!6434195)))

(assert (=> bs!1619118 (not (= lambda!356053 lambda!356047))))

(assert (=> bs!1619116 (not (= lambda!356053 lambda!356035))))

(declare-fun bs!1619119 () Bool)

(assert (= bs!1619119 (and d!2017096 b!6434197)))

(assert (=> bs!1619119 (not (= lambda!356053 lambda!356046))))

(declare-fun bs!1619120 () Bool)

(assert (= bs!1619120 (and d!2017096 b!6433866)))

(assert (=> bs!1619120 (= (and (= (_1!36619 lt!2379961) s!2326) (= (reg!16666 (regOne!33186 r!7292)) lt!2379981) (= lt!2379981 (regTwo!33186 r!7292))) (= lambda!356053 lambda!356001))))

(assert (=> bs!1619114 (not (= lambda!356053 lambda!356004))))

(assert (=> bs!1619120 (not (= lambda!356053 lambda!356002))))

(assert (=> d!2017096 true))

(assert (=> d!2017096 true))

(assert (=> d!2017096 true))

(assert (=> d!2017096 (= (isDefined!12931 (findConcatSeparation!2642 (reg!16666 (regOne!33186 r!7292)) lt!2379981 Nil!65186 (_1!36619 lt!2379961) (_1!36619 lt!2379961))) (Exists!3407 lambda!356053))))

(declare-fun lt!2380081 () Unit!158679)

(assert (=> d!2017096 (= lt!2380081 (choose!47839 (reg!16666 (regOne!33186 r!7292)) lt!2379981 (_1!36619 lt!2379961)))))

(assert (=> d!2017096 (validRegex!8073 (reg!16666 (regOne!33186 r!7292)))))

(assert (=> d!2017096 (= (lemmaFindConcatSeparationEquivalentToExists!2406 (reg!16666 (regOne!33186 r!7292)) lt!2379981 (_1!36619 lt!2379961)) lt!2380081)))

(declare-fun bs!1619121 () Bool)

(assert (= bs!1619121 d!2017096))

(declare-fun m!7227872 () Bool)

(assert (=> bs!1619121 m!7227872))

(assert (=> bs!1619121 m!7227454))

(assert (=> bs!1619121 m!7227486))

(declare-fun m!7227874 () Bool)

(assert (=> bs!1619121 m!7227874))

(assert (=> bs!1619121 m!7227486))

(declare-fun m!7227876 () Bool)

(assert (=> bs!1619121 m!7227876))

(assert (=> b!6433847 d!2017096))

(declare-fun b!6434304 () Bool)

(declare-fun e!3903151 () Bool)

(declare-fun call!553591 () Bool)

(assert (=> b!6434304 (= e!3903151 call!553591)))

(declare-fun b!6434305 () Bool)

(declare-fun e!3903153 () Bool)

(declare-fun call!553592 () Bool)

(assert (=> b!6434305 (= e!3903153 call!553592)))

(declare-fun b!6434306 () Bool)

(declare-fun res!2644884 () Bool)

(declare-fun e!3903148 () Bool)

(assert (=> b!6434306 (=> res!2644884 e!3903148)))

(assert (=> b!6434306 (= res!2644884 (not ((_ is Concat!25182) r!7292)))))

(declare-fun e!3903150 () Bool)

(assert (=> b!6434306 (= e!3903150 e!3903148)))

(declare-fun b!6434307 () Bool)

(declare-fun e!3903147 () Bool)

(assert (=> b!6434307 (= e!3903147 e!3903151)))

(declare-fun res!2644881 () Bool)

(assert (=> b!6434307 (= res!2644881 (not (nullable!6330 (reg!16666 r!7292))))))

(assert (=> b!6434307 (=> (not res!2644881) (not e!3903151))))

(declare-fun b!6434309 () Bool)

(declare-fun e!3903149 () Bool)

(assert (=> b!6434309 (= e!3903149 call!553592)))

(declare-fun b!6434310 () Bool)

(declare-fun e!3903152 () Bool)

(assert (=> b!6434310 (= e!3903152 e!3903147)))

(declare-fun c!1176108 () Bool)

(assert (=> b!6434310 (= c!1176108 ((_ is Star!16337) r!7292))))

(declare-fun c!1176109 () Bool)

(declare-fun bm!553586 () Bool)

(assert (=> bm!553586 (= call!553591 (validRegex!8073 (ite c!1176108 (reg!16666 r!7292) (ite c!1176109 (regTwo!33187 r!7292) (regTwo!33186 r!7292)))))))

(declare-fun b!6434311 () Bool)

(declare-fun res!2644882 () Bool)

(assert (=> b!6434311 (=> (not res!2644882) (not e!3903153))))

(declare-fun call!553593 () Bool)

(assert (=> b!6434311 (= res!2644882 call!553593)))

(assert (=> b!6434311 (= e!3903150 e!3903153)))

(declare-fun bm!553587 () Bool)

(assert (=> bm!553587 (= call!553593 (validRegex!8073 (ite c!1176109 (regOne!33187 r!7292) (regOne!33186 r!7292))))))

(declare-fun b!6434312 () Bool)

(assert (=> b!6434312 (= e!3903147 e!3903150)))

(assert (=> b!6434312 (= c!1176109 ((_ is Union!16337) r!7292))))

(declare-fun bm!553588 () Bool)

(assert (=> bm!553588 (= call!553592 call!553591)))

(declare-fun d!2017098 () Bool)

(declare-fun res!2644883 () Bool)

(assert (=> d!2017098 (=> res!2644883 e!3903152)))

(assert (=> d!2017098 (= res!2644883 ((_ is ElementMatch!16337) r!7292))))

(assert (=> d!2017098 (= (validRegex!8073 r!7292) e!3903152)))

(declare-fun b!6434308 () Bool)

(assert (=> b!6434308 (= e!3903148 e!3903149)))

(declare-fun res!2644885 () Bool)

(assert (=> b!6434308 (=> (not res!2644885) (not e!3903149))))

(assert (=> b!6434308 (= res!2644885 call!553593)))

(assert (= (and d!2017098 (not res!2644883)) b!6434310))

(assert (= (and b!6434310 c!1176108) b!6434307))

(assert (= (and b!6434310 (not c!1176108)) b!6434312))

(assert (= (and b!6434307 res!2644881) b!6434304))

(assert (= (and b!6434312 c!1176109) b!6434311))

(assert (= (and b!6434312 (not c!1176109)) b!6434306))

(assert (= (and b!6434311 res!2644882) b!6434305))

(assert (= (and b!6434306 (not res!2644884)) b!6434308))

(assert (= (and b!6434308 res!2644885) b!6434309))

(assert (= (or b!6434305 b!6434309) bm!553588))

(assert (= (or b!6434311 b!6434308) bm!553587))

(assert (= (or b!6434304 bm!553588) bm!553586))

(declare-fun m!7227902 () Bool)

(assert (=> b!6434307 m!7227902))

(declare-fun m!7227904 () Bool)

(assert (=> bm!553586 m!7227904))

(declare-fun m!7227906 () Bool)

(assert (=> bm!553587 m!7227906))

(assert (=> start!635482 d!2017098))

(declare-fun d!2017104 () Bool)

(declare-fun lt!2380085 () Regex!16337)

(assert (=> d!2017104 (validRegex!8073 lt!2380085)))

(assert (=> d!2017104 (= lt!2380085 (generalisedUnion!2181 (unfocusZipperList!1758 (Cons!65188 lt!2379962 Nil!65188))))))

(assert (=> d!2017104 (= (unfocusZipper!2079 (Cons!65188 lt!2379962 Nil!65188)) lt!2380085)))

(declare-fun bs!1619122 () Bool)

(assert (= bs!1619122 d!2017104))

(declare-fun m!7227908 () Bool)

(assert (=> bs!1619122 m!7227908))

(declare-fun m!7227910 () Bool)

(assert (=> bs!1619122 m!7227910))

(assert (=> bs!1619122 m!7227910))

(declare-fun m!7227912 () Bool)

(assert (=> bs!1619122 m!7227912))

(assert (=> b!6433867 d!2017104))

(declare-fun b!6434335 () Bool)

(declare-fun e!3903171 () Bool)

(declare-fun lt!2380086 () Bool)

(assert (=> b!6434335 (= e!3903171 (not lt!2380086))))

(declare-fun b!6434336 () Bool)

(declare-fun res!2644896 () Bool)

(declare-fun e!3903174 () Bool)

(assert (=> b!6434336 (=> (not res!2644896) (not e!3903174))))

(assert (=> b!6434336 (= res!2644896 (isEmpty!37357 (tail!12248 (_2!36619 lt!2379961))))))

(declare-fun b!6434337 () Bool)

(declare-fun res!2644895 () Bool)

(declare-fun e!3903172 () Bool)

(assert (=> b!6434337 (=> res!2644895 e!3903172)))

(assert (=> b!6434337 (= res!2644895 (not (isEmpty!37357 (tail!12248 (_2!36619 lt!2379961)))))))

(declare-fun b!6434338 () Bool)

(declare-fun res!2644892 () Bool)

(declare-fun e!3903169 () Bool)

(assert (=> b!6434338 (=> res!2644892 e!3903169)))

(assert (=> b!6434338 (= res!2644892 (not ((_ is ElementMatch!16337) (regTwo!33186 r!7292))))))

(assert (=> b!6434338 (= e!3903171 e!3903169)))

(declare-fun b!6434339 () Bool)

(declare-fun res!2644893 () Bool)

(assert (=> b!6434339 (=> (not res!2644893) (not e!3903174))))

(declare-fun call!553594 () Bool)

(assert (=> b!6434339 (= res!2644893 (not call!553594))))

(declare-fun d!2017106 () Bool)

(declare-fun e!3903173 () Bool)

(assert (=> d!2017106 e!3903173))

(declare-fun c!1176120 () Bool)

(assert (=> d!2017106 (= c!1176120 ((_ is EmptyExpr!16337) (regTwo!33186 r!7292)))))

(declare-fun e!3903170 () Bool)

(assert (=> d!2017106 (= lt!2380086 e!3903170)))

(declare-fun c!1176118 () Bool)

(assert (=> d!2017106 (= c!1176118 (isEmpty!37357 (_2!36619 lt!2379961)))))

(assert (=> d!2017106 (validRegex!8073 (regTwo!33186 r!7292))))

(assert (=> d!2017106 (= (matchR!8520 (regTwo!33186 r!7292) (_2!36619 lt!2379961)) lt!2380086)))

(declare-fun b!6434340 () Bool)

(assert (=> b!6434340 (= e!3903174 (= (head!13163 (_2!36619 lt!2379961)) (c!1176002 (regTwo!33186 r!7292))))))

(declare-fun b!6434341 () Bool)

(declare-fun e!3903168 () Bool)

(assert (=> b!6434341 (= e!3903169 e!3903168)))

(declare-fun res!2644894 () Bool)

(assert (=> b!6434341 (=> (not res!2644894) (not e!3903168))))

(assert (=> b!6434341 (= res!2644894 (not lt!2380086))))

(declare-fun b!6434342 () Bool)

(assert (=> b!6434342 (= e!3903172 (not (= (head!13163 (_2!36619 lt!2379961)) (c!1176002 (regTwo!33186 r!7292)))))))

(declare-fun b!6434343 () Bool)

(assert (=> b!6434343 (= e!3903173 e!3903171)))

(declare-fun c!1176119 () Bool)

(assert (=> b!6434343 (= c!1176119 ((_ is EmptyLang!16337) (regTwo!33186 r!7292)))))

(declare-fun b!6434344 () Bool)

(assert (=> b!6434344 (= e!3903170 (matchR!8520 (derivativeStep!5040 (regTwo!33186 r!7292) (head!13163 (_2!36619 lt!2379961))) (tail!12248 (_2!36619 lt!2379961))))))

(declare-fun b!6434345 () Bool)

(assert (=> b!6434345 (= e!3903173 (= lt!2380086 call!553594))))

(declare-fun bm!553589 () Bool)

(assert (=> bm!553589 (= call!553594 (isEmpty!37357 (_2!36619 lt!2379961)))))

(declare-fun b!6434346 () Bool)

(declare-fun res!2644898 () Bool)

(assert (=> b!6434346 (=> res!2644898 e!3903169)))

(assert (=> b!6434346 (= res!2644898 e!3903174)))

(declare-fun res!2644897 () Bool)

(assert (=> b!6434346 (=> (not res!2644897) (not e!3903174))))

(assert (=> b!6434346 (= res!2644897 lt!2380086)))

(declare-fun b!6434347 () Bool)

(assert (=> b!6434347 (= e!3903170 (nullable!6330 (regTwo!33186 r!7292)))))

(declare-fun b!6434348 () Bool)

(assert (=> b!6434348 (= e!3903168 e!3903172)))

(declare-fun res!2644899 () Bool)

(assert (=> b!6434348 (=> res!2644899 e!3903172)))

(assert (=> b!6434348 (= res!2644899 call!553594)))

(assert (= (and d!2017106 c!1176118) b!6434347))

(assert (= (and d!2017106 (not c!1176118)) b!6434344))

(assert (= (and d!2017106 c!1176120) b!6434345))

(assert (= (and d!2017106 (not c!1176120)) b!6434343))

(assert (= (and b!6434343 c!1176119) b!6434335))

(assert (= (and b!6434343 (not c!1176119)) b!6434338))

(assert (= (and b!6434338 (not res!2644892)) b!6434346))

(assert (= (and b!6434346 res!2644897) b!6434339))

(assert (= (and b!6434339 res!2644893) b!6434336))

(assert (= (and b!6434336 res!2644896) b!6434340))

(assert (= (and b!6434346 (not res!2644898)) b!6434341))

(assert (= (and b!6434341 res!2644894) b!6434348))

(assert (= (and b!6434348 (not res!2644899)) b!6434337))

(assert (= (and b!6434337 (not res!2644895)) b!6434342))

(assert (= (or b!6434345 b!6434339 b!6434348) bm!553589))

(declare-fun m!7227914 () Bool)

(assert (=> b!6434344 m!7227914))

(assert (=> b!6434344 m!7227914))

(declare-fun m!7227916 () Bool)

(assert (=> b!6434344 m!7227916))

(declare-fun m!7227918 () Bool)

(assert (=> b!6434344 m!7227918))

(assert (=> b!6434344 m!7227916))

(assert (=> b!6434344 m!7227918))

(declare-fun m!7227920 () Bool)

(assert (=> b!6434344 m!7227920))

(assert (=> b!6434336 m!7227918))

(assert (=> b!6434336 m!7227918))

(declare-fun m!7227922 () Bool)

(assert (=> b!6434336 m!7227922))

(declare-fun m!7227924 () Bool)

(assert (=> d!2017106 m!7227924))

(declare-fun m!7227926 () Bool)

(assert (=> d!2017106 m!7227926))

(assert (=> bm!553589 m!7227924))

(declare-fun m!7227928 () Bool)

(assert (=> b!6434347 m!7227928))

(assert (=> b!6434340 m!7227914))

(assert (=> b!6434337 m!7227918))

(assert (=> b!6434337 m!7227918))

(assert (=> b!6434337 m!7227922))

(assert (=> b!6434342 m!7227914))

(assert (=> b!6433869 d!2017106))

(declare-fun d!2017108 () Bool)

(declare-fun c!1176123 () Bool)

(assert (=> d!2017108 (= c!1176123 (isEmpty!37357 s!2326))))

(declare-fun e!3903181 () Bool)

(assert (=> d!2017108 (= (matchZipper!2349 lt!2379978 s!2326) e!3903181)))

(declare-fun b!6434363 () Bool)

(declare-fun nullableZipper!2102 ((InoxSet Context!11442)) Bool)

(assert (=> b!6434363 (= e!3903181 (nullableZipper!2102 lt!2379978))))

(declare-fun b!6434364 () Bool)

(assert (=> b!6434364 (= e!3903181 (matchZipper!2349 (derivationStepZipper!2303 lt!2379978 (head!13163 s!2326)) (tail!12248 s!2326)))))

(assert (= (and d!2017108 c!1176123) b!6434363))

(assert (= (and d!2017108 (not c!1176123)) b!6434364))

(declare-fun m!7227930 () Bool)

(assert (=> d!2017108 m!7227930))

(declare-fun m!7227932 () Bool)

(assert (=> b!6434363 m!7227932))

(declare-fun m!7227934 () Bool)

(assert (=> b!6434364 m!7227934))

(assert (=> b!6434364 m!7227934))

(declare-fun m!7227936 () Bool)

(assert (=> b!6434364 m!7227936))

(declare-fun m!7227938 () Bool)

(assert (=> b!6434364 m!7227938))

(assert (=> b!6434364 m!7227936))

(assert (=> b!6434364 m!7227938))

(declare-fun m!7227940 () Bool)

(assert (=> b!6434364 m!7227940))

(assert (=> b!6433868 d!2017108))

(declare-fun d!2017110 () Bool)

(declare-fun c!1176124 () Bool)

(assert (=> d!2017110 (= c!1176124 (isEmpty!37357 (t!378928 s!2326)))))

(declare-fun e!3903182 () Bool)

(assert (=> d!2017110 (= (matchZipper!2349 lt!2379972 (t!378928 s!2326)) e!3903182)))

(declare-fun b!6434365 () Bool)

(assert (=> b!6434365 (= e!3903182 (nullableZipper!2102 lt!2379972))))

(declare-fun b!6434366 () Bool)

(assert (=> b!6434366 (= e!3903182 (matchZipper!2349 (derivationStepZipper!2303 lt!2379972 (head!13163 (t!378928 s!2326))) (tail!12248 (t!378928 s!2326))))))

(assert (= (and d!2017110 c!1176124) b!6434365))

(assert (= (and d!2017110 (not c!1176124)) b!6434366))

(declare-fun m!7227942 () Bool)

(assert (=> d!2017110 m!7227942))

(declare-fun m!7227944 () Bool)

(assert (=> b!6434365 m!7227944))

(declare-fun m!7227946 () Bool)

(assert (=> b!6434366 m!7227946))

(assert (=> b!6434366 m!7227946))

(declare-fun m!7227948 () Bool)

(assert (=> b!6434366 m!7227948))

(declare-fun m!7227950 () Bool)

(assert (=> b!6434366 m!7227950))

(assert (=> b!6434366 m!7227948))

(assert (=> b!6434366 m!7227950))

(declare-fun m!7227952 () Bool)

(assert (=> b!6434366 m!7227952))

(assert (=> b!6433868 d!2017110))

(declare-fun d!2017112 () Bool)

(declare-fun lt!2380087 () Regex!16337)

(assert (=> d!2017112 (validRegex!8073 lt!2380087)))

(assert (=> d!2017112 (= lt!2380087 (generalisedUnion!2181 (unfocusZipperList!1758 (Cons!65188 lt!2379998 Nil!65188))))))

(assert (=> d!2017112 (= (unfocusZipper!2079 (Cons!65188 lt!2379998 Nil!65188)) lt!2380087)))

(declare-fun bs!1619123 () Bool)

(assert (= bs!1619123 d!2017112))

(declare-fun m!7227954 () Bool)

(assert (=> bs!1619123 m!7227954))

(declare-fun m!7227956 () Bool)

(assert (=> bs!1619123 m!7227956))

(assert (=> bs!1619123 m!7227956))

(declare-fun m!7227958 () Bool)

(assert (=> bs!1619123 m!7227958))

(assert (=> b!6433880 d!2017112))

(declare-fun b!6434367 () Bool)

(declare-fun e!3903186 () Bool)

(declare-fun lt!2380088 () Bool)

(assert (=> b!6434367 (= e!3903186 (not lt!2380088))))

(declare-fun b!6434368 () Bool)

(declare-fun res!2644914 () Bool)

(declare-fun e!3903189 () Bool)

(assert (=> b!6434368 (=> (not res!2644914) (not e!3903189))))

(assert (=> b!6434368 (= res!2644914 (isEmpty!37357 (tail!12248 lt!2379968)))))

(declare-fun b!6434369 () Bool)

(declare-fun res!2644913 () Bool)

(declare-fun e!3903187 () Bool)

(assert (=> b!6434369 (=> res!2644913 e!3903187)))

(assert (=> b!6434369 (= res!2644913 (not (isEmpty!37357 (tail!12248 lt!2379968))))))

(declare-fun b!6434370 () Bool)

(declare-fun res!2644910 () Bool)

(declare-fun e!3903184 () Bool)

(assert (=> b!6434370 (=> res!2644910 e!3903184)))

(assert (=> b!6434370 (= res!2644910 (not ((_ is ElementMatch!16337) lt!2379973)))))

(assert (=> b!6434370 (= e!3903186 e!3903184)))

(declare-fun b!6434371 () Bool)

(declare-fun res!2644911 () Bool)

(assert (=> b!6434371 (=> (not res!2644911) (not e!3903189))))

(declare-fun call!553599 () Bool)

(assert (=> b!6434371 (= res!2644911 (not call!553599))))

(declare-fun d!2017114 () Bool)

(declare-fun e!3903188 () Bool)

(assert (=> d!2017114 e!3903188))

(declare-fun c!1176127 () Bool)

(assert (=> d!2017114 (= c!1176127 ((_ is EmptyExpr!16337) lt!2379973))))

(declare-fun e!3903185 () Bool)

(assert (=> d!2017114 (= lt!2380088 e!3903185)))

(declare-fun c!1176125 () Bool)

(assert (=> d!2017114 (= c!1176125 (isEmpty!37357 lt!2379968))))

(assert (=> d!2017114 (validRegex!8073 lt!2379973)))

(assert (=> d!2017114 (= (matchR!8520 lt!2379973 lt!2379968) lt!2380088)))

(declare-fun b!6434372 () Bool)

(assert (=> b!6434372 (= e!3903189 (= (head!13163 lt!2379968) (c!1176002 lt!2379973)))))

(declare-fun b!6434373 () Bool)

(declare-fun e!3903183 () Bool)

(assert (=> b!6434373 (= e!3903184 e!3903183)))

(declare-fun res!2644912 () Bool)

(assert (=> b!6434373 (=> (not res!2644912) (not e!3903183))))

(assert (=> b!6434373 (= res!2644912 (not lt!2380088))))

(declare-fun b!6434374 () Bool)

(assert (=> b!6434374 (= e!3903187 (not (= (head!13163 lt!2379968) (c!1176002 lt!2379973))))))

(declare-fun b!6434375 () Bool)

(assert (=> b!6434375 (= e!3903188 e!3903186)))

(declare-fun c!1176126 () Bool)

(assert (=> b!6434375 (= c!1176126 ((_ is EmptyLang!16337) lt!2379973))))

(declare-fun b!6434376 () Bool)

(assert (=> b!6434376 (= e!3903185 (matchR!8520 (derivativeStep!5040 lt!2379973 (head!13163 lt!2379968)) (tail!12248 lt!2379968)))))

(declare-fun b!6434377 () Bool)

(assert (=> b!6434377 (= e!3903188 (= lt!2380088 call!553599))))

(declare-fun bm!553594 () Bool)

(assert (=> bm!553594 (= call!553599 (isEmpty!37357 lt!2379968))))

(declare-fun b!6434378 () Bool)

(declare-fun res!2644916 () Bool)

(assert (=> b!6434378 (=> res!2644916 e!3903184)))

(assert (=> b!6434378 (= res!2644916 e!3903189)))

(declare-fun res!2644915 () Bool)

(assert (=> b!6434378 (=> (not res!2644915) (not e!3903189))))

(assert (=> b!6434378 (= res!2644915 lt!2380088)))

(declare-fun b!6434379 () Bool)

(assert (=> b!6434379 (= e!3903185 (nullable!6330 lt!2379973))))

(declare-fun b!6434380 () Bool)

(assert (=> b!6434380 (= e!3903183 e!3903187)))

(declare-fun res!2644917 () Bool)

(assert (=> b!6434380 (=> res!2644917 e!3903187)))

(assert (=> b!6434380 (= res!2644917 call!553599)))

(assert (= (and d!2017114 c!1176125) b!6434379))

(assert (= (and d!2017114 (not c!1176125)) b!6434376))

(assert (= (and d!2017114 c!1176127) b!6434377))

(assert (= (and d!2017114 (not c!1176127)) b!6434375))

(assert (= (and b!6434375 c!1176126) b!6434367))

(assert (= (and b!6434375 (not c!1176126)) b!6434370))

(assert (= (and b!6434370 (not res!2644910)) b!6434378))

(assert (= (and b!6434378 res!2644915) b!6434371))

(assert (= (and b!6434371 res!2644911) b!6434368))

(assert (= (and b!6434368 res!2644914) b!6434372))

(assert (= (and b!6434378 (not res!2644916)) b!6434373))

(assert (= (and b!6434373 res!2644912) b!6434380))

(assert (= (and b!6434380 (not res!2644917)) b!6434369))

(assert (= (and b!6434369 (not res!2644913)) b!6434374))

(assert (= (or b!6434377 b!6434371 b!6434380) bm!553594))

(declare-fun m!7227960 () Bool)

(assert (=> b!6434376 m!7227960))

(assert (=> b!6434376 m!7227960))

(declare-fun m!7227962 () Bool)

(assert (=> b!6434376 m!7227962))

(declare-fun m!7227964 () Bool)

(assert (=> b!6434376 m!7227964))

(assert (=> b!6434376 m!7227962))

(assert (=> b!6434376 m!7227964))

(declare-fun m!7227966 () Bool)

(assert (=> b!6434376 m!7227966))

(assert (=> b!6434368 m!7227964))

(assert (=> b!6434368 m!7227964))

(declare-fun m!7227968 () Bool)

(assert (=> b!6434368 m!7227968))

(declare-fun m!7227970 () Bool)

(assert (=> d!2017114 m!7227970))

(declare-fun m!7227972 () Bool)

(assert (=> d!2017114 m!7227972))

(assert (=> bm!553594 m!7227970))

(declare-fun m!7227974 () Bool)

(assert (=> b!6434379 m!7227974))

(assert (=> b!6434372 m!7227960))

(assert (=> b!6434369 m!7227964))

(assert (=> b!6434369 m!7227964))

(assert (=> b!6434369 m!7227968))

(assert (=> b!6434374 m!7227960))

(assert (=> b!6433879 d!2017114))

(declare-fun b!6434381 () Bool)

(declare-fun e!3903193 () Bool)

(declare-fun lt!2380089 () Bool)

(assert (=> b!6434381 (= e!3903193 (not lt!2380089))))

(declare-fun b!6434382 () Bool)

(declare-fun res!2644922 () Bool)

(declare-fun e!3903196 () Bool)

(assert (=> b!6434382 (=> (not res!2644922) (not e!3903196))))

(assert (=> b!6434382 (= res!2644922 (isEmpty!37357 (tail!12248 lt!2379971)))))

(declare-fun b!6434383 () Bool)

(declare-fun res!2644921 () Bool)

(declare-fun e!3903194 () Bool)

(assert (=> b!6434383 (=> res!2644921 e!3903194)))

(assert (=> b!6434383 (= res!2644921 (not (isEmpty!37357 (tail!12248 lt!2379971))))))

(declare-fun b!6434384 () Bool)

(declare-fun res!2644918 () Bool)

(declare-fun e!3903191 () Bool)

(assert (=> b!6434384 (=> res!2644918 e!3903191)))

(assert (=> b!6434384 (= res!2644918 (not ((_ is ElementMatch!16337) lt!2379981)))))

(assert (=> b!6434384 (= e!3903193 e!3903191)))

(declare-fun b!6434385 () Bool)

(declare-fun res!2644919 () Bool)

(assert (=> b!6434385 (=> (not res!2644919) (not e!3903196))))

(declare-fun call!553600 () Bool)

(assert (=> b!6434385 (= res!2644919 (not call!553600))))

(declare-fun d!2017116 () Bool)

(declare-fun e!3903195 () Bool)

(assert (=> d!2017116 e!3903195))

(declare-fun c!1176130 () Bool)

(assert (=> d!2017116 (= c!1176130 ((_ is EmptyExpr!16337) lt!2379981))))

(declare-fun e!3903192 () Bool)

(assert (=> d!2017116 (= lt!2380089 e!3903192)))

(declare-fun c!1176128 () Bool)

(assert (=> d!2017116 (= c!1176128 (isEmpty!37357 lt!2379971))))

(assert (=> d!2017116 (validRegex!8073 lt!2379981)))

(assert (=> d!2017116 (= (matchR!8520 lt!2379981 lt!2379971) lt!2380089)))

(declare-fun b!6434386 () Bool)

(assert (=> b!6434386 (= e!3903196 (= (head!13163 lt!2379971) (c!1176002 lt!2379981)))))

(declare-fun b!6434387 () Bool)

(declare-fun e!3903190 () Bool)

(assert (=> b!6434387 (= e!3903191 e!3903190)))

(declare-fun res!2644920 () Bool)

(assert (=> b!6434387 (=> (not res!2644920) (not e!3903190))))

(assert (=> b!6434387 (= res!2644920 (not lt!2380089))))

(declare-fun b!6434388 () Bool)

(assert (=> b!6434388 (= e!3903194 (not (= (head!13163 lt!2379971) (c!1176002 lt!2379981))))))

(declare-fun b!6434389 () Bool)

(assert (=> b!6434389 (= e!3903195 e!3903193)))

(declare-fun c!1176129 () Bool)

(assert (=> b!6434389 (= c!1176129 ((_ is EmptyLang!16337) lt!2379981))))

(declare-fun b!6434390 () Bool)

(assert (=> b!6434390 (= e!3903192 (matchR!8520 (derivativeStep!5040 lt!2379981 (head!13163 lt!2379971)) (tail!12248 lt!2379971)))))

(declare-fun b!6434391 () Bool)

(assert (=> b!6434391 (= e!3903195 (= lt!2380089 call!553600))))

(declare-fun bm!553595 () Bool)

(assert (=> bm!553595 (= call!553600 (isEmpty!37357 lt!2379971))))

(declare-fun b!6434392 () Bool)

(declare-fun res!2644924 () Bool)

(assert (=> b!6434392 (=> res!2644924 e!3903191)))

(assert (=> b!6434392 (= res!2644924 e!3903196)))

(declare-fun res!2644923 () Bool)

(assert (=> b!6434392 (=> (not res!2644923) (not e!3903196))))

(assert (=> b!6434392 (= res!2644923 lt!2380089)))

(declare-fun b!6434393 () Bool)

(assert (=> b!6434393 (= e!3903192 (nullable!6330 lt!2379981))))

(declare-fun b!6434394 () Bool)

(assert (=> b!6434394 (= e!3903190 e!3903194)))

(declare-fun res!2644925 () Bool)

(assert (=> b!6434394 (=> res!2644925 e!3903194)))

(assert (=> b!6434394 (= res!2644925 call!553600)))

(assert (= (and d!2017116 c!1176128) b!6434393))

(assert (= (and d!2017116 (not c!1176128)) b!6434390))

(assert (= (and d!2017116 c!1176130) b!6434391))

(assert (= (and d!2017116 (not c!1176130)) b!6434389))

(assert (= (and b!6434389 c!1176129) b!6434381))

(assert (= (and b!6434389 (not c!1176129)) b!6434384))

(assert (= (and b!6434384 (not res!2644918)) b!6434392))

(assert (= (and b!6434392 res!2644923) b!6434385))

(assert (= (and b!6434385 res!2644919) b!6434382))

(assert (= (and b!6434382 res!2644922) b!6434386))

(assert (= (and b!6434392 (not res!2644924)) b!6434387))

(assert (= (and b!6434387 res!2644920) b!6434394))

(assert (= (and b!6434394 (not res!2644925)) b!6434383))

(assert (= (and b!6434383 (not res!2644921)) b!6434388))

(assert (= (or b!6434391 b!6434385 b!6434394) bm!553595))

(declare-fun m!7227976 () Bool)

(assert (=> b!6434390 m!7227976))

(assert (=> b!6434390 m!7227976))

(declare-fun m!7227978 () Bool)

(assert (=> b!6434390 m!7227978))

(declare-fun m!7227980 () Bool)

(assert (=> b!6434390 m!7227980))

(assert (=> b!6434390 m!7227978))

(assert (=> b!6434390 m!7227980))

(declare-fun m!7227982 () Bool)

(assert (=> b!6434390 m!7227982))

(assert (=> b!6434382 m!7227980))

(assert (=> b!6434382 m!7227980))

(declare-fun m!7227984 () Bool)

(assert (=> b!6434382 m!7227984))

(declare-fun m!7227986 () Bool)

(assert (=> d!2017116 m!7227986))

(assert (=> d!2017116 m!7227552))

(assert (=> bm!553595 m!7227986))

(assert (=> b!6434393 m!7227554))

(assert (=> b!6434386 m!7227976))

(assert (=> b!6434383 m!7227980))

(assert (=> b!6434383 m!7227980))

(assert (=> b!6434383 m!7227984))

(assert (=> b!6434388 m!7227976))

(assert (=> b!6433879 d!2017116))

(declare-fun b!6434395 () Bool)

(declare-fun e!3903201 () Bool)

(declare-fun call!553601 () Bool)

(assert (=> b!6434395 (= e!3903201 call!553601)))

(declare-fun b!6434396 () Bool)

(declare-fun e!3903203 () Bool)

(declare-fun call!553602 () Bool)

(assert (=> b!6434396 (= e!3903203 call!553602)))

(declare-fun b!6434397 () Bool)

(declare-fun res!2644929 () Bool)

(declare-fun e!3903198 () Bool)

(assert (=> b!6434397 (=> res!2644929 e!3903198)))

(assert (=> b!6434397 (= res!2644929 (not ((_ is Concat!25182) (reg!16666 (regOne!33186 r!7292)))))))

(declare-fun e!3903200 () Bool)

(assert (=> b!6434397 (= e!3903200 e!3903198)))

(declare-fun b!6434398 () Bool)

(declare-fun e!3903197 () Bool)

(assert (=> b!6434398 (= e!3903197 e!3903201)))

(declare-fun res!2644926 () Bool)

(assert (=> b!6434398 (= res!2644926 (not (nullable!6330 (reg!16666 (reg!16666 (regOne!33186 r!7292))))))))

(assert (=> b!6434398 (=> (not res!2644926) (not e!3903201))))

(declare-fun b!6434400 () Bool)

(declare-fun e!3903199 () Bool)

(assert (=> b!6434400 (= e!3903199 call!553602)))

(declare-fun b!6434401 () Bool)

(declare-fun e!3903202 () Bool)

(assert (=> b!6434401 (= e!3903202 e!3903197)))

(declare-fun c!1176131 () Bool)

(assert (=> b!6434401 (= c!1176131 ((_ is Star!16337) (reg!16666 (regOne!33186 r!7292))))))

(declare-fun bm!553596 () Bool)

(declare-fun c!1176132 () Bool)

(assert (=> bm!553596 (= call!553601 (validRegex!8073 (ite c!1176131 (reg!16666 (reg!16666 (regOne!33186 r!7292))) (ite c!1176132 (regTwo!33187 (reg!16666 (regOne!33186 r!7292))) (regTwo!33186 (reg!16666 (regOne!33186 r!7292)))))))))

(declare-fun b!6434402 () Bool)

(declare-fun res!2644927 () Bool)

(assert (=> b!6434402 (=> (not res!2644927) (not e!3903203))))

(declare-fun call!553603 () Bool)

(assert (=> b!6434402 (= res!2644927 call!553603)))

(assert (=> b!6434402 (= e!3903200 e!3903203)))

(declare-fun bm!553597 () Bool)

(assert (=> bm!553597 (= call!553603 (validRegex!8073 (ite c!1176132 (regOne!33187 (reg!16666 (regOne!33186 r!7292))) (regOne!33186 (reg!16666 (regOne!33186 r!7292))))))))

(declare-fun b!6434403 () Bool)

(assert (=> b!6434403 (= e!3903197 e!3903200)))

(assert (=> b!6434403 (= c!1176132 ((_ is Union!16337) (reg!16666 (regOne!33186 r!7292))))))

(declare-fun bm!553598 () Bool)

(assert (=> bm!553598 (= call!553602 call!553601)))

(declare-fun d!2017118 () Bool)

(declare-fun res!2644928 () Bool)

(assert (=> d!2017118 (=> res!2644928 e!3903202)))

(assert (=> d!2017118 (= res!2644928 ((_ is ElementMatch!16337) (reg!16666 (regOne!33186 r!7292))))))

(assert (=> d!2017118 (= (validRegex!8073 (reg!16666 (regOne!33186 r!7292))) e!3903202)))

(declare-fun b!6434399 () Bool)

(assert (=> b!6434399 (= e!3903198 e!3903199)))

(declare-fun res!2644930 () Bool)

(assert (=> b!6434399 (=> (not res!2644930) (not e!3903199))))

(assert (=> b!6434399 (= res!2644930 call!553603)))

(assert (= (and d!2017118 (not res!2644928)) b!6434401))

(assert (= (and b!6434401 c!1176131) b!6434398))

(assert (= (and b!6434401 (not c!1176131)) b!6434403))

(assert (= (and b!6434398 res!2644926) b!6434395))

(assert (= (and b!6434403 c!1176132) b!6434402))

(assert (= (and b!6434403 (not c!1176132)) b!6434397))

(assert (= (and b!6434402 res!2644927) b!6434396))

(assert (= (and b!6434397 (not res!2644929)) b!6434399))

(assert (= (and b!6434399 res!2644930) b!6434400))

(assert (= (or b!6434396 b!6434400) bm!553598))

(assert (= (or b!6434402 b!6434399) bm!553597))

(assert (= (or b!6434395 bm!553598) bm!553596))

(declare-fun m!7227988 () Bool)

(assert (=> b!6434398 m!7227988))

(declare-fun m!7227990 () Bool)

(assert (=> bm!553596 m!7227990))

(declare-fun m!7227992 () Bool)

(assert (=> bm!553597 m!7227992))

(assert (=> b!6433879 d!2017118))

(declare-fun d!2017120 () Bool)

(assert (=> d!2017120 (matchR!8520 (Concat!25182 lt!2379981 (regTwo!33186 r!7292)) (++!14405 (_2!36619 lt!2379993) (_2!36619 lt!2379961)))))

(declare-fun lt!2380092 () Unit!158679)

(declare-fun choose!47848 (Regex!16337 Regex!16337 List!65310 List!65310) Unit!158679)

(assert (=> d!2017120 (= lt!2380092 (choose!47848 lt!2379981 (regTwo!33186 r!7292) (_2!36619 lt!2379993) (_2!36619 lt!2379961)))))

(declare-fun e!3903213 () Bool)

(assert (=> d!2017120 e!3903213))

(declare-fun res!2644936 () Bool)

(assert (=> d!2017120 (=> (not res!2644936) (not e!3903213))))

(assert (=> d!2017120 (= res!2644936 (validRegex!8073 lt!2379981))))

(assert (=> d!2017120 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!300 lt!2379981 (regTwo!33186 r!7292) (_2!36619 lt!2379993) (_2!36619 lt!2379961)) lt!2380092)))

(declare-fun b!6434417 () Bool)

(assert (=> b!6434417 (= e!3903213 (validRegex!8073 (regTwo!33186 r!7292)))))

(assert (= (and d!2017120 res!2644936) b!6434417))

(assert (=> d!2017120 m!7227534))

(assert (=> d!2017120 m!7227534))

(declare-fun m!7227994 () Bool)

(assert (=> d!2017120 m!7227994))

(declare-fun m!7227996 () Bool)

(assert (=> d!2017120 m!7227996))

(assert (=> d!2017120 m!7227552))

(assert (=> b!6434417 m!7227926))

(assert (=> b!6433879 d!2017120))

(declare-fun d!2017122 () Bool)

(assert (=> d!2017122 (matchR!8520 (Star!16337 (reg!16666 (regOne!33186 r!7292))) (++!14405 (_1!36619 lt!2379993) (_2!36619 lt!2379993)))))

(declare-fun lt!2380095 () Unit!158679)

(declare-fun choose!47849 (Regex!16337 List!65310 List!65310) Unit!158679)

(assert (=> d!2017122 (= lt!2380095 (choose!47849 (reg!16666 (regOne!33186 r!7292)) (_1!36619 lt!2379993) (_2!36619 lt!2379993)))))

(assert (=> d!2017122 (validRegex!8073 (Star!16337 (reg!16666 (regOne!33186 r!7292))))))

(assert (=> d!2017122 (= (lemmaStarApp!114 (reg!16666 (regOne!33186 r!7292)) (_1!36619 lt!2379993) (_2!36619 lt!2379993)) lt!2380095)))

(declare-fun bs!1619139 () Bool)

(assert (= bs!1619139 d!2017122))

(assert (=> bs!1619139 m!7227500))

(assert (=> bs!1619139 m!7227500))

(declare-fun m!7228004 () Bool)

(assert (=> bs!1619139 m!7228004))

(declare-fun m!7228006 () Bool)

(assert (=> bs!1619139 m!7228006))

(declare-fun m!7228008 () Bool)

(assert (=> bs!1619139 m!7228008))

(assert (=> b!6433879 d!2017122))

(declare-fun b!6434418 () Bool)

(declare-fun e!3903217 () Bool)

(declare-fun lt!2380096 () Bool)

(assert (=> b!6434418 (= e!3903217 (not lt!2380096))))

(declare-fun b!6434419 () Bool)

(declare-fun res!2644941 () Bool)

(declare-fun e!3903220 () Bool)

(assert (=> b!6434419 (=> (not res!2644941) (not e!3903220))))

(assert (=> b!6434419 (= res!2644941 (isEmpty!37357 (tail!12248 s!2326)))))

(declare-fun b!6434420 () Bool)

(declare-fun res!2644940 () Bool)

(declare-fun e!3903218 () Bool)

(assert (=> b!6434420 (=> res!2644940 e!3903218)))

(assert (=> b!6434420 (= res!2644940 (not (isEmpty!37357 (tail!12248 s!2326))))))

(declare-fun b!6434421 () Bool)

(declare-fun res!2644937 () Bool)

(declare-fun e!3903215 () Bool)

(assert (=> b!6434421 (=> res!2644937 e!3903215)))

(assert (=> b!6434421 (= res!2644937 (not ((_ is ElementMatch!16337) lt!2379979)))))

(assert (=> b!6434421 (= e!3903217 e!3903215)))

(declare-fun b!6434422 () Bool)

(declare-fun res!2644938 () Bool)

(assert (=> b!6434422 (=> (not res!2644938) (not e!3903220))))

(declare-fun call!553606 () Bool)

(assert (=> b!6434422 (= res!2644938 (not call!553606))))

(declare-fun d!2017126 () Bool)

(declare-fun e!3903219 () Bool)

(assert (=> d!2017126 e!3903219))

(declare-fun c!1176139 () Bool)

(assert (=> d!2017126 (= c!1176139 ((_ is EmptyExpr!16337) lt!2379979))))

(declare-fun e!3903216 () Bool)

(assert (=> d!2017126 (= lt!2380096 e!3903216)))

(declare-fun c!1176137 () Bool)

(assert (=> d!2017126 (= c!1176137 (isEmpty!37357 s!2326))))

(assert (=> d!2017126 (validRegex!8073 lt!2379979)))

(assert (=> d!2017126 (= (matchR!8520 lt!2379979 s!2326) lt!2380096)))

(declare-fun b!6434423 () Bool)

(assert (=> b!6434423 (= e!3903220 (= (head!13163 s!2326) (c!1176002 lt!2379979)))))

(declare-fun b!6434424 () Bool)

(declare-fun e!3903214 () Bool)

(assert (=> b!6434424 (= e!3903215 e!3903214)))

(declare-fun res!2644939 () Bool)

(assert (=> b!6434424 (=> (not res!2644939) (not e!3903214))))

(assert (=> b!6434424 (= res!2644939 (not lt!2380096))))

(declare-fun b!6434425 () Bool)

(assert (=> b!6434425 (= e!3903218 (not (= (head!13163 s!2326) (c!1176002 lt!2379979))))))

(declare-fun b!6434426 () Bool)

(assert (=> b!6434426 (= e!3903219 e!3903217)))

(declare-fun c!1176138 () Bool)

(assert (=> b!6434426 (= c!1176138 ((_ is EmptyLang!16337) lt!2379979))))

(declare-fun b!6434427 () Bool)

(assert (=> b!6434427 (= e!3903216 (matchR!8520 (derivativeStep!5040 lt!2379979 (head!13163 s!2326)) (tail!12248 s!2326)))))

(declare-fun b!6434428 () Bool)

(assert (=> b!6434428 (= e!3903219 (= lt!2380096 call!553606))))

(declare-fun bm!553601 () Bool)

(assert (=> bm!553601 (= call!553606 (isEmpty!37357 s!2326))))

(declare-fun b!6434429 () Bool)

(declare-fun res!2644943 () Bool)

(assert (=> b!6434429 (=> res!2644943 e!3903215)))

(assert (=> b!6434429 (= res!2644943 e!3903220)))

(declare-fun res!2644942 () Bool)

(assert (=> b!6434429 (=> (not res!2644942) (not e!3903220))))

(assert (=> b!6434429 (= res!2644942 lt!2380096)))

(declare-fun b!6434430 () Bool)

(assert (=> b!6434430 (= e!3903216 (nullable!6330 lt!2379979))))

(declare-fun b!6434431 () Bool)

(assert (=> b!6434431 (= e!3903214 e!3903218)))

(declare-fun res!2644944 () Bool)

(assert (=> b!6434431 (=> res!2644944 e!3903218)))

(assert (=> b!6434431 (= res!2644944 call!553606)))

(assert (= (and d!2017126 c!1176137) b!6434430))

(assert (= (and d!2017126 (not c!1176137)) b!6434427))

(assert (= (and d!2017126 c!1176139) b!6434428))

(assert (= (and d!2017126 (not c!1176139)) b!6434426))

(assert (= (and b!6434426 c!1176138) b!6434418))

(assert (= (and b!6434426 (not c!1176138)) b!6434421))

(assert (= (and b!6434421 (not res!2644937)) b!6434429))

(assert (= (and b!6434429 res!2644942) b!6434422))

(assert (= (and b!6434422 res!2644938) b!6434419))

(assert (= (and b!6434419 res!2644941) b!6434423))

(assert (= (and b!6434429 (not res!2644943)) b!6434424))

(assert (= (and b!6434424 res!2644939) b!6434431))

(assert (= (and b!6434431 (not res!2644944)) b!6434420))

(assert (= (and b!6434420 (not res!2644940)) b!6434425))

(assert (= (or b!6434428 b!6434422 b!6434431) bm!553601))

(assert (=> b!6434427 m!7227934))

(assert (=> b!6434427 m!7227934))

(declare-fun m!7228010 () Bool)

(assert (=> b!6434427 m!7228010))

(assert (=> b!6434427 m!7227938))

(assert (=> b!6434427 m!7228010))

(assert (=> b!6434427 m!7227938))

(declare-fun m!7228012 () Bool)

(assert (=> b!6434427 m!7228012))

(assert (=> b!6434419 m!7227938))

(assert (=> b!6434419 m!7227938))

(declare-fun m!7228014 () Bool)

(assert (=> b!6434419 m!7228014))

(assert (=> d!2017126 m!7227930))

(declare-fun m!7228016 () Bool)

(assert (=> d!2017126 m!7228016))

(assert (=> bm!553601 m!7227930))

(declare-fun m!7228018 () Bool)

(assert (=> b!6434430 m!7228018))

(assert (=> b!6434423 m!7227934))

(assert (=> b!6434420 m!7227938))

(assert (=> b!6434420 m!7227938))

(assert (=> b!6434420 m!7228014))

(assert (=> b!6434425 m!7227934))

(assert (=> b!6433881 d!2017126))

(declare-fun bs!1619141 () Bool)

(declare-fun b!6434435 () Bool)

(assert (= bs!1619141 (and b!6434435 d!2017074)))

(declare-fun lambda!356060 () Int)

(assert (=> bs!1619141 (not (= lambda!356060 lambda!356051))))

(declare-fun bs!1619143 () Bool)

(assert (= bs!1619143 (and b!6434435 d!2016996)))

(assert (=> bs!1619143 (not (= lambda!356060 lambda!356020))))

(declare-fun bs!1619144 () Bool)

(assert (= bs!1619144 (and b!6434435 b!6433847)))

(assert (=> bs!1619144 (not (= lambda!356060 lambda!356003))))

(assert (=> bs!1619143 (not (= lambda!356060 lambda!356019))))

(declare-fun bs!1619146 () Bool)

(assert (= bs!1619146 (and b!6434435 b!6433843)))

(assert (=> bs!1619146 (not (= lambda!356060 lambda!355998))))

(declare-fun bs!1619148 () Bool)

(assert (= bs!1619148 (and b!6434435 d!2017038)))

(assert (=> bs!1619148 (not (= lambda!356060 lambda!356034))))

(declare-fun bs!1619150 () Bool)

(assert (= bs!1619150 (and b!6434435 d!2016994)))

(assert (=> bs!1619150 (not (= lambda!356060 lambda!356011))))

(assert (=> bs!1619146 (not (= lambda!356060 lambda!355999))))

(assert (=> bs!1619141 (not (= lambda!356060 lambda!356052))))

(assert (=> bs!1619144 (not (= lambda!356060 lambda!356005))))

(declare-fun bs!1619154 () Bool)

(assert (= bs!1619154 (and b!6434435 b!6434195)))

(assert (=> bs!1619154 (not (= lambda!356060 lambda!356047))))

(assert (=> bs!1619148 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (reg!16666 lt!2379979) (reg!16666 (regOne!33186 r!7292))) (= lt!2379979 (Star!16337 (reg!16666 (regOne!33186 r!7292))))) (= lambda!356060 lambda!356035))))

(declare-fun bs!1619156 () Bool)

(assert (= bs!1619156 (and b!6434435 d!2017096)))

(assert (=> bs!1619156 (not (= lambda!356060 lambda!356053))))

(declare-fun bs!1619157 () Bool)

(assert (= bs!1619157 (and b!6434435 b!6434197)))

(assert (=> bs!1619157 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (reg!16666 lt!2379979) (reg!16666 lt!2379981)) (= lt!2379979 lt!2379981)) (= lambda!356060 lambda!356046))))

(declare-fun bs!1619158 () Bool)

(assert (= bs!1619158 (and b!6434435 b!6433866)))

(assert (=> bs!1619158 (not (= lambda!356060 lambda!356001))))

(assert (=> bs!1619144 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (reg!16666 lt!2379979) (reg!16666 (regOne!33186 r!7292))) (= lt!2379979 lt!2379981)) (= lambda!356060 lambda!356004))))

(assert (=> bs!1619158 (not (= lambda!356060 lambda!356002))))

(assert (=> b!6434435 true))

(assert (=> b!6434435 true))

(declare-fun bs!1619161 () Bool)

(declare-fun b!6434433 () Bool)

(assert (= bs!1619161 (and b!6434433 d!2017074)))

(declare-fun lambda!356063 () Int)

(assert (=> bs!1619161 (not (= lambda!356063 lambda!356051))))

(declare-fun bs!1619163 () Bool)

(assert (= bs!1619163 (and b!6434433 d!2016996)))

(assert (=> bs!1619163 (= (and (= (regOne!33186 lt!2379979) lt!2379981) (= (regTwo!33186 lt!2379979) (regTwo!33186 r!7292))) (= lambda!356063 lambda!356020))))

(declare-fun bs!1619165 () Bool)

(assert (= bs!1619165 (and b!6434433 b!6433847)))

(assert (=> bs!1619165 (not (= lambda!356063 lambda!356003))))

(assert (=> bs!1619163 (not (= lambda!356063 lambda!356019))))

(declare-fun bs!1619167 () Bool)

(assert (= bs!1619167 (and b!6434433 b!6433843)))

(assert (=> bs!1619167 (not (= lambda!356063 lambda!355998))))

(declare-fun bs!1619169 () Bool)

(assert (= bs!1619169 (and b!6434433 d!2017038)))

(assert (=> bs!1619169 (not (= lambda!356063 lambda!356034))))

(declare-fun bs!1619171 () Bool)

(assert (= bs!1619171 (and b!6434433 d!2016994)))

(assert (=> bs!1619171 (not (= lambda!356063 lambda!356011))))

(assert (=> bs!1619167 (= (and (= (regOne!33186 lt!2379979) (regOne!33186 r!7292)) (= (regTwo!33186 lt!2379979) (regTwo!33186 r!7292))) (= lambda!356063 lambda!355999))))

(declare-fun bs!1619174 () Bool)

(assert (= bs!1619174 (and b!6434433 b!6434435)))

(assert (=> bs!1619174 (not (= lambda!356063 lambda!356060))))

(assert (=> bs!1619161 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 lt!2379979) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 lt!2379979) lt!2379981)) (= lambda!356063 lambda!356052))))

(assert (=> bs!1619165 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 lt!2379979) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 lt!2379979) lt!2379981)) (= lambda!356063 lambda!356005))))

(declare-fun bs!1619176 () Bool)

(assert (= bs!1619176 (and b!6434433 b!6434195)))

(assert (=> bs!1619176 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 lt!2379979) (regOne!33186 lt!2379981)) (= (regTwo!33186 lt!2379979) (regTwo!33186 lt!2379981))) (= lambda!356063 lambda!356047))))

(assert (=> bs!1619169 (not (= lambda!356063 lambda!356035))))

(declare-fun bs!1619178 () Bool)

(assert (= bs!1619178 (and b!6434433 d!2017096)))

(assert (=> bs!1619178 (not (= lambda!356063 lambda!356053))))

(declare-fun bs!1619179 () Bool)

(assert (= bs!1619179 (and b!6434433 b!6434197)))

(assert (=> bs!1619179 (not (= lambda!356063 lambda!356046))))

(declare-fun bs!1619180 () Bool)

(assert (= bs!1619180 (and b!6434433 b!6433866)))

(assert (=> bs!1619180 (not (= lambda!356063 lambda!356001))))

(assert (=> bs!1619165 (not (= lambda!356063 lambda!356004))))

(assert (=> bs!1619180 (= (and (= (regOne!33186 lt!2379979) lt!2379981) (= (regTwo!33186 lt!2379979) (regTwo!33186 r!7292))) (= lambda!356063 lambda!356002))))

(assert (=> b!6434433 true))

(assert (=> b!6434433 true))

(declare-fun b!6434432 () Bool)

(declare-fun c!1176141 () Bool)

(assert (=> b!6434432 (= c!1176141 ((_ is Union!16337) lt!2379979))))

(declare-fun e!3903223 () Bool)

(declare-fun e!3903221 () Bool)

(assert (=> b!6434432 (= e!3903223 e!3903221)))

(declare-fun d!2017128 () Bool)

(declare-fun c!1176140 () Bool)

(assert (=> d!2017128 (= c!1176140 ((_ is EmptyExpr!16337) lt!2379979))))

(declare-fun e!3903225 () Bool)

(assert (=> d!2017128 (= (matchRSpec!3438 lt!2379979 s!2326) e!3903225)))

(declare-fun e!3903226 () Bool)

(declare-fun call!553608 () Bool)

(assert (=> b!6434433 (= e!3903226 call!553608)))

(declare-fun b!6434434 () Bool)

(declare-fun c!1176143 () Bool)

(assert (=> b!6434434 (= c!1176143 ((_ is ElementMatch!16337) lt!2379979))))

(declare-fun e!3903224 () Bool)

(assert (=> b!6434434 (= e!3903224 e!3903223)))

(declare-fun e!3903222 () Bool)

(assert (=> b!6434435 (= e!3903222 call!553608)))

(declare-fun b!6434436 () Bool)

(declare-fun e!3903227 () Bool)

(assert (=> b!6434436 (= e!3903227 (matchRSpec!3438 (regTwo!33187 lt!2379979) s!2326))))

(declare-fun bm!553602 () Bool)

(declare-fun c!1176142 () Bool)

(assert (=> bm!553602 (= call!553608 (Exists!3407 (ite c!1176142 lambda!356060 lambda!356063)))))

(declare-fun b!6434437 () Bool)

(assert (=> b!6434437 (= e!3903225 e!3903224)))

(declare-fun res!2644945 () Bool)

(assert (=> b!6434437 (= res!2644945 (not ((_ is EmptyLang!16337) lt!2379979)))))

(assert (=> b!6434437 (=> (not res!2644945) (not e!3903224))))

(declare-fun b!6434438 () Bool)

(declare-fun call!553607 () Bool)

(assert (=> b!6434438 (= e!3903225 call!553607)))

(declare-fun bm!553603 () Bool)

(assert (=> bm!553603 (= call!553607 (isEmpty!37357 s!2326))))

(declare-fun b!6434439 () Bool)

(assert (=> b!6434439 (= e!3903221 e!3903227)))

(declare-fun res!2644946 () Bool)

(assert (=> b!6434439 (= res!2644946 (matchRSpec!3438 (regOne!33187 lt!2379979) s!2326))))

(assert (=> b!6434439 (=> res!2644946 e!3903227)))

(declare-fun b!6434440 () Bool)

(declare-fun res!2644947 () Bool)

(assert (=> b!6434440 (=> res!2644947 e!3903222)))

(assert (=> b!6434440 (= res!2644947 call!553607)))

(assert (=> b!6434440 (= e!3903226 e!3903222)))

(declare-fun b!6434441 () Bool)

(assert (=> b!6434441 (= e!3903223 (= s!2326 (Cons!65186 (c!1176002 lt!2379979) Nil!65186)))))

(declare-fun b!6434442 () Bool)

(assert (=> b!6434442 (= e!3903221 e!3903226)))

(assert (=> b!6434442 (= c!1176142 ((_ is Star!16337) lt!2379979))))

(assert (= (and d!2017128 c!1176140) b!6434438))

(assert (= (and d!2017128 (not c!1176140)) b!6434437))

(assert (= (and b!6434437 res!2644945) b!6434434))

(assert (= (and b!6434434 c!1176143) b!6434441))

(assert (= (and b!6434434 (not c!1176143)) b!6434432))

(assert (= (and b!6434432 c!1176141) b!6434439))

(assert (= (and b!6434432 (not c!1176141)) b!6434442))

(assert (= (and b!6434439 (not res!2644946)) b!6434436))

(assert (= (and b!6434442 c!1176142) b!6434440))

(assert (= (and b!6434442 (not c!1176142)) b!6434433))

(assert (= (and b!6434440 (not res!2644947)) b!6434435))

(assert (= (or b!6434435 b!6434433) bm!553602))

(assert (= (or b!6434438 b!6434440) bm!553603))

(declare-fun m!7228028 () Bool)

(assert (=> b!6434436 m!7228028))

(declare-fun m!7228030 () Bool)

(assert (=> bm!553602 m!7228030))

(assert (=> bm!553603 m!7227930))

(declare-fun m!7228032 () Bool)

(assert (=> b!6434439 m!7228032))

(assert (=> b!6433881 d!2017128))

(declare-fun d!2017134 () Bool)

(assert (=> d!2017134 (= (matchR!8520 lt!2379979 s!2326) (matchRSpec!3438 lt!2379979 s!2326))))

(declare-fun lt!2380101 () Unit!158679)

(assert (=> d!2017134 (= lt!2380101 (choose!47847 lt!2379979 s!2326))))

(assert (=> d!2017134 (validRegex!8073 lt!2379979)))

(assert (=> d!2017134 (= (mainMatchTheorem!3438 lt!2379979 s!2326) lt!2380101)))

(declare-fun bs!1619181 () Bool)

(assert (= bs!1619181 d!2017134))

(assert (=> bs!1619181 m!7227446))

(assert (=> bs!1619181 m!7227448))

(declare-fun m!7228034 () Bool)

(assert (=> bs!1619181 m!7228034))

(assert (=> bs!1619181 m!7228016))

(assert (=> b!6433881 d!2017134))

(declare-fun lt!2380102 () List!65310)

(declare-fun b!6434471 () Bool)

(declare-fun e!3903243 () Bool)

(assert (=> b!6434471 (= e!3903243 (or (not (= lt!2379968 Nil!65186)) (= lt!2380102 (_1!36619 lt!2379993))))))

(declare-fun b!6434470 () Bool)

(declare-fun res!2644959 () Bool)

(assert (=> b!6434470 (=> (not res!2644959) (not e!3903243))))

(assert (=> b!6434470 (= res!2644959 (= (size!40396 lt!2380102) (+ (size!40396 (_1!36619 lt!2379993)) (size!40396 lt!2379968))))))

(declare-fun b!6434468 () Bool)

(declare-fun e!3903242 () List!65310)

(assert (=> b!6434468 (= e!3903242 lt!2379968)))

(declare-fun d!2017136 () Bool)

(assert (=> d!2017136 e!3903243))

(declare-fun res!2644960 () Bool)

(assert (=> d!2017136 (=> (not res!2644960) (not e!3903243))))

(assert (=> d!2017136 (= res!2644960 (= (content!12388 lt!2380102) ((_ map or) (content!12388 (_1!36619 lt!2379993)) (content!12388 lt!2379968))))))

(assert (=> d!2017136 (= lt!2380102 e!3903242)))

(declare-fun c!1176151 () Bool)

(assert (=> d!2017136 (= c!1176151 ((_ is Nil!65186) (_1!36619 lt!2379993)))))

(assert (=> d!2017136 (= (++!14405 (_1!36619 lt!2379993) lt!2379968) lt!2380102)))

(declare-fun b!6434469 () Bool)

(assert (=> b!6434469 (= e!3903242 (Cons!65186 (h!71634 (_1!36619 lt!2379993)) (++!14405 (t!378928 (_1!36619 lt!2379993)) lt!2379968)))))

(assert (= (and d!2017136 c!1176151) b!6434468))

(assert (= (and d!2017136 (not c!1176151)) b!6434469))

(assert (= (and d!2017136 res!2644960) b!6434470))

(assert (= (and b!6434470 res!2644959) b!6434471))

(declare-fun m!7228036 () Bool)

(assert (=> b!6434470 m!7228036))

(assert (=> b!6434470 m!7227850))

(declare-fun m!7228040 () Bool)

(assert (=> b!6434470 m!7228040))

(declare-fun m!7228042 () Bool)

(assert (=> d!2017136 m!7228042))

(assert (=> d!2017136 m!7227856))

(declare-fun m!7228044 () Bool)

(assert (=> d!2017136 m!7228044))

(declare-fun m!7228048 () Bool)

(assert (=> b!6434469 m!7228048))

(assert (=> b!6433862 d!2017136))

(declare-fun e!3903245 () Bool)

(declare-fun b!6434475 () Bool)

(declare-fun lt!2380103 () List!65310)

(assert (=> b!6434475 (= e!3903245 (or (not (= (_2!36619 lt!2379961) Nil!65186)) (= lt!2380103 lt!2379971)))))

(declare-fun b!6434474 () Bool)

(declare-fun res!2644961 () Bool)

(assert (=> b!6434474 (=> (not res!2644961) (not e!3903245))))

(assert (=> b!6434474 (= res!2644961 (= (size!40396 lt!2380103) (+ (size!40396 lt!2379971) (size!40396 (_2!36619 lt!2379961)))))))

(declare-fun b!6434472 () Bool)

(declare-fun e!3903244 () List!65310)

(assert (=> b!6434472 (= e!3903244 (_2!36619 lt!2379961))))

(declare-fun d!2017138 () Bool)

(assert (=> d!2017138 e!3903245))

(declare-fun res!2644962 () Bool)

(assert (=> d!2017138 (=> (not res!2644962) (not e!3903245))))

(assert (=> d!2017138 (= res!2644962 (= (content!12388 lt!2380103) ((_ map or) (content!12388 lt!2379971) (content!12388 (_2!36619 lt!2379961)))))))

(assert (=> d!2017138 (= lt!2380103 e!3903244)))

(declare-fun c!1176152 () Bool)

(assert (=> d!2017138 (= c!1176152 ((_ is Nil!65186) lt!2379971))))

(assert (=> d!2017138 (= (++!14405 lt!2379971 (_2!36619 lt!2379961)) lt!2380103)))

(declare-fun b!6434473 () Bool)

(assert (=> b!6434473 (= e!3903244 (Cons!65186 (h!71634 lt!2379971) (++!14405 (t!378928 lt!2379971) (_2!36619 lt!2379961))))))

(assert (= (and d!2017138 c!1176152) b!6434472))

(assert (= (and d!2017138 (not c!1176152)) b!6434473))

(assert (= (and d!2017138 res!2644962) b!6434474))

(assert (= (and b!6434474 res!2644961) b!6434475))

(declare-fun m!7228054 () Bool)

(assert (=> b!6434474 m!7228054))

(declare-fun m!7228056 () Bool)

(assert (=> b!6434474 m!7228056))

(assert (=> b!6434474 m!7227664))

(declare-fun m!7228058 () Bool)

(assert (=> d!2017138 m!7228058))

(declare-fun m!7228060 () Bool)

(assert (=> d!2017138 m!7228060))

(assert (=> d!2017138 m!7227670))

(declare-fun m!7228062 () Bool)

(assert (=> b!6434473 m!7228062))

(assert (=> b!6433862 d!2017138))

(declare-fun b!6434483 () Bool)

(declare-fun e!3903249 () Bool)

(declare-fun lt!2380106 () List!65310)

(assert (=> b!6434483 (= e!3903249 (or (not (= (_2!36619 lt!2379961) Nil!65186)) (= lt!2380106 (_2!36619 lt!2379993))))))

(declare-fun b!6434482 () Bool)

(declare-fun res!2644965 () Bool)

(assert (=> b!6434482 (=> (not res!2644965) (not e!3903249))))

(assert (=> b!6434482 (= res!2644965 (= (size!40396 lt!2380106) (+ (size!40396 (_2!36619 lt!2379993)) (size!40396 (_2!36619 lt!2379961)))))))

(declare-fun b!6434480 () Bool)

(declare-fun e!3903248 () List!65310)

(assert (=> b!6434480 (= e!3903248 (_2!36619 lt!2379961))))

(declare-fun d!2017144 () Bool)

(assert (=> d!2017144 e!3903249))

(declare-fun res!2644966 () Bool)

(assert (=> d!2017144 (=> (not res!2644966) (not e!3903249))))

(assert (=> d!2017144 (= res!2644966 (= (content!12388 lt!2380106) ((_ map or) (content!12388 (_2!36619 lt!2379993)) (content!12388 (_2!36619 lt!2379961)))))))

(assert (=> d!2017144 (= lt!2380106 e!3903248)))

(declare-fun c!1176154 () Bool)

(assert (=> d!2017144 (= c!1176154 ((_ is Nil!65186) (_2!36619 lt!2379993)))))

(assert (=> d!2017144 (= (++!14405 (_2!36619 lt!2379993) (_2!36619 lt!2379961)) lt!2380106)))

(declare-fun b!6434481 () Bool)

(assert (=> b!6434481 (= e!3903248 (Cons!65186 (h!71634 (_2!36619 lt!2379993)) (++!14405 (t!378928 (_2!36619 lt!2379993)) (_2!36619 lt!2379961))))))

(assert (= (and d!2017144 c!1176154) b!6434480))

(assert (= (and d!2017144 (not c!1176154)) b!6434481))

(assert (= (and d!2017144 res!2644966) b!6434482))

(assert (= (and b!6434482 res!2644965) b!6434483))

(declare-fun m!7228074 () Bool)

(assert (=> b!6434482 m!7228074))

(assert (=> b!6434482 m!7227852))

(assert (=> b!6434482 m!7227664))

(declare-fun m!7228080 () Bool)

(assert (=> d!2017144 m!7228080))

(assert (=> d!2017144 m!7227858))

(assert (=> d!2017144 m!7227670))

(declare-fun m!7228082 () Bool)

(assert (=> b!6434481 m!7228082))

(assert (=> b!6433862 d!2017144))

(declare-fun d!2017148 () Bool)

(assert (=> d!2017148 (= (++!14405 (++!14405 (_1!36619 lt!2379993) (_2!36619 lt!2379993)) (_2!36619 lt!2379961)) (++!14405 (_1!36619 lt!2379993) (++!14405 (_2!36619 lt!2379993) (_2!36619 lt!2379961))))))

(declare-fun lt!2380113 () Unit!158679)

(declare-fun choose!47851 (List!65310 List!65310 List!65310) Unit!158679)

(assert (=> d!2017148 (= lt!2380113 (choose!47851 (_1!36619 lt!2379993) (_2!36619 lt!2379993) (_2!36619 lt!2379961)))))

(assert (=> d!2017148 (= (lemmaConcatAssociativity!2908 (_1!36619 lt!2379993) (_2!36619 lt!2379993) (_2!36619 lt!2379961)) lt!2380113)))

(declare-fun bs!1619184 () Bool)

(assert (= bs!1619184 d!2017148))

(assert (=> bs!1619184 m!7227500))

(declare-fun m!7228106 () Bool)

(assert (=> bs!1619184 m!7228106))

(assert (=> bs!1619184 m!7227500))

(assert (=> bs!1619184 m!7227534))

(declare-fun m!7228108 () Bool)

(assert (=> bs!1619184 m!7228108))

(assert (=> bs!1619184 m!7227534))

(declare-fun m!7228110 () Bool)

(assert (=> bs!1619184 m!7228110))

(assert (=> b!6433862 d!2017148))

(declare-fun b!6434493 () Bool)

(declare-fun e!3903255 () Bool)

(declare-fun lt!2380114 () Option!16228)

(assert (=> b!6434493 (= e!3903255 (= (++!14405 (_1!36619 (get!22589 lt!2380114)) (_2!36619 (get!22589 lt!2380114))) s!2326))))

(declare-fun b!6434494 () Bool)

(declare-fun e!3903256 () Bool)

(assert (=> b!6434494 (= e!3903256 (matchR!8520 (regTwo!33186 r!7292) s!2326))))

(declare-fun b!6434495 () Bool)

(declare-fun e!3903257 () Option!16228)

(assert (=> b!6434495 (= e!3903257 (Some!16227 (tuple2!66633 Nil!65186 s!2326)))))

(declare-fun b!6434496 () Bool)

(declare-fun lt!2380116 () Unit!158679)

(declare-fun lt!2380115 () Unit!158679)

(assert (=> b!6434496 (= lt!2380116 lt!2380115)))

(assert (=> b!6434496 (= (++!14405 (++!14405 Nil!65186 (Cons!65186 (h!71634 s!2326) Nil!65186)) (t!378928 s!2326)) s!2326)))

(assert (=> b!6434496 (= lt!2380115 (lemmaMoveElementToOtherListKeepsConcatEq!2500 Nil!65186 (h!71634 s!2326) (t!378928 s!2326) s!2326))))

(declare-fun e!3903259 () Option!16228)

(assert (=> b!6434496 (= e!3903259 (findConcatSeparation!2642 (regOne!33186 r!7292) (regTwo!33186 r!7292) (++!14405 Nil!65186 (Cons!65186 (h!71634 s!2326) Nil!65186)) (t!378928 s!2326) s!2326))))

(declare-fun b!6434497 () Bool)

(assert (=> b!6434497 (= e!3903259 None!16227)))

(declare-fun b!6434498 () Bool)

(declare-fun res!2644975 () Bool)

(assert (=> b!6434498 (=> (not res!2644975) (not e!3903255))))

(assert (=> b!6434498 (= res!2644975 (matchR!8520 (regTwo!33186 r!7292) (_2!36619 (get!22589 lt!2380114))))))

(declare-fun b!6434499 () Bool)

(assert (=> b!6434499 (= e!3903257 e!3903259)))

(declare-fun c!1176158 () Bool)

(assert (=> b!6434499 (= c!1176158 ((_ is Nil!65186) s!2326))))

(declare-fun b!6434500 () Bool)

(declare-fun e!3903258 () Bool)

(assert (=> b!6434500 (= e!3903258 (not (isDefined!12931 lt!2380114)))))

(declare-fun d!2017154 () Bool)

(assert (=> d!2017154 e!3903258))

(declare-fun res!2644974 () Bool)

(assert (=> d!2017154 (=> res!2644974 e!3903258)))

(assert (=> d!2017154 (= res!2644974 e!3903255)))

(declare-fun res!2644973 () Bool)

(assert (=> d!2017154 (=> (not res!2644973) (not e!3903255))))

(assert (=> d!2017154 (= res!2644973 (isDefined!12931 lt!2380114))))

(assert (=> d!2017154 (= lt!2380114 e!3903257)))

(declare-fun c!1176157 () Bool)

(assert (=> d!2017154 (= c!1176157 e!3903256)))

(declare-fun res!2644972 () Bool)

(assert (=> d!2017154 (=> (not res!2644972) (not e!3903256))))

(assert (=> d!2017154 (= res!2644972 (matchR!8520 (regOne!33186 r!7292) Nil!65186))))

(assert (=> d!2017154 (validRegex!8073 (regOne!33186 r!7292))))

(assert (=> d!2017154 (= (findConcatSeparation!2642 (regOne!33186 r!7292) (regTwo!33186 r!7292) Nil!65186 s!2326 s!2326) lt!2380114)))

(declare-fun b!6434501 () Bool)

(declare-fun res!2644976 () Bool)

(assert (=> b!6434501 (=> (not res!2644976) (not e!3903255))))

(assert (=> b!6434501 (= res!2644976 (matchR!8520 (regOne!33186 r!7292) (_1!36619 (get!22589 lt!2380114))))))

(assert (= (and d!2017154 res!2644972) b!6434494))

(assert (= (and d!2017154 c!1176157) b!6434495))

(assert (= (and d!2017154 (not c!1176157)) b!6434499))

(assert (= (and b!6434499 c!1176158) b!6434497))

(assert (= (and b!6434499 (not c!1176158)) b!6434496))

(assert (= (and d!2017154 res!2644973) b!6434501))

(assert (= (and b!6434501 res!2644976) b!6434498))

(assert (= (and b!6434498 res!2644975) b!6434493))

(assert (= (and d!2017154 (not res!2644974)) b!6434500))

(declare-fun m!7228112 () Bool)

(assert (=> b!6434498 m!7228112))

(declare-fun m!7228114 () Bool)

(assert (=> b!6434498 m!7228114))

(assert (=> b!6434496 m!7227630))

(assert (=> b!6434496 m!7227630))

(assert (=> b!6434496 m!7227632))

(assert (=> b!6434496 m!7227634))

(assert (=> b!6434496 m!7227630))

(declare-fun m!7228116 () Bool)

(assert (=> b!6434496 m!7228116))

(assert (=> b!6434493 m!7228112))

(declare-fun m!7228118 () Bool)

(assert (=> b!6434493 m!7228118))

(declare-fun m!7228120 () Bool)

(assert (=> d!2017154 m!7228120))

(declare-fun m!7228122 () Bool)

(assert (=> d!2017154 m!7228122))

(declare-fun m!7228124 () Bool)

(assert (=> d!2017154 m!7228124))

(assert (=> b!6434501 m!7228112))

(declare-fun m!7228126 () Bool)

(assert (=> b!6434501 m!7228126))

(assert (=> b!6434494 m!7227646))

(assert (=> b!6434500 m!7228120))

(assert (=> b!6433843 d!2017154))

(declare-fun d!2017156 () Bool)

(assert (=> d!2017156 (= (Exists!3407 lambda!355999) (choose!47837 lambda!355999))))

(declare-fun bs!1619196 () Bool)

(assert (= bs!1619196 d!2017156))

(declare-fun m!7228128 () Bool)

(assert (=> bs!1619196 m!7228128))

(assert (=> b!6433843 d!2017156))

(declare-fun d!2017158 () Bool)

(assert (=> d!2017158 (= (Exists!3407 lambda!355998) (choose!47837 lambda!355998))))

(declare-fun bs!1619197 () Bool)

(assert (= bs!1619197 d!2017158))

(declare-fun m!7228130 () Bool)

(assert (=> bs!1619197 m!7228130))

(assert (=> b!6433843 d!2017158))

(declare-fun bs!1619198 () Bool)

(declare-fun d!2017160 () Bool)

(assert (= bs!1619198 (and d!2017160 d!2017074)))

(declare-fun lambda!356066 () Int)

(assert (=> bs!1619198 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356066 lambda!356051))))

(declare-fun bs!1619199 () Bool)

(assert (= bs!1619199 (and d!2017160 d!2016996)))

(assert (=> bs!1619199 (not (= lambda!356066 lambda!356020))))

(declare-fun bs!1619200 () Bool)

(assert (= bs!1619200 (and d!2017160 b!6433847)))

(assert (=> bs!1619200 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356066 lambda!356003))))

(assert (=> bs!1619199 (= (= (regOne!33186 r!7292) lt!2379981) (= lambda!356066 lambda!356019))))

(declare-fun bs!1619201 () Bool)

(assert (= bs!1619201 (and d!2017160 b!6433843)))

(assert (=> bs!1619201 (= lambda!356066 lambda!355998)))

(declare-fun bs!1619202 () Bool)

(assert (= bs!1619202 (and d!2017160 d!2017038)))

(assert (=> bs!1619202 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) (Star!16337 (reg!16666 (regOne!33186 r!7292))))) (= lambda!356066 lambda!356034))))

(declare-fun bs!1619204 () Bool)

(assert (= bs!1619204 (and d!2017160 b!6434433)))

(assert (=> bs!1619204 (not (= lambda!356066 lambda!356063))))

(declare-fun bs!1619205 () Bool)

(assert (= bs!1619205 (and d!2017160 d!2016994)))

(assert (=> bs!1619205 (= (= (regOne!33186 r!7292) lt!2379981) (= lambda!356066 lambda!356011))))

(assert (=> bs!1619201 (not (= lambda!356066 lambda!355999))))

(declare-fun bs!1619206 () Bool)

(assert (= bs!1619206 (and d!2017160 b!6434435)))

(assert (=> bs!1619206 (not (= lambda!356066 lambda!356060))))

(assert (=> bs!1619198 (not (= lambda!356066 lambda!356052))))

(assert (=> bs!1619200 (not (= lambda!356066 lambda!356005))))

(declare-fun bs!1619207 () Bool)

(assert (= bs!1619207 (and d!2017160 b!6434195)))

(assert (=> bs!1619207 (not (= lambda!356066 lambda!356047))))

(assert (=> bs!1619202 (not (= lambda!356066 lambda!356035))))

(declare-fun bs!1619208 () Bool)

(assert (= bs!1619208 (and d!2017160 d!2017096)))

(assert (=> bs!1619208 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356066 lambda!356053))))

(declare-fun bs!1619209 () Bool)

(assert (= bs!1619209 (and d!2017160 b!6434197)))

(assert (=> bs!1619209 (not (= lambda!356066 lambda!356046))))

(declare-fun bs!1619210 () Bool)

(assert (= bs!1619210 (and d!2017160 b!6433866)))

(assert (=> bs!1619210 (= (= (regOne!33186 r!7292) lt!2379981) (= lambda!356066 lambda!356001))))

(assert (=> bs!1619200 (not (= lambda!356066 lambda!356004))))

(assert (=> bs!1619210 (not (= lambda!356066 lambda!356002))))

(assert (=> d!2017160 true))

(assert (=> d!2017160 true))

(assert (=> d!2017160 true))

(assert (=> d!2017160 (= (isDefined!12931 (findConcatSeparation!2642 (regOne!33186 r!7292) (regTwo!33186 r!7292) Nil!65186 s!2326 s!2326)) (Exists!3407 lambda!356066))))

(declare-fun lt!2380117 () Unit!158679)

(assert (=> d!2017160 (= lt!2380117 (choose!47839 (regOne!33186 r!7292) (regTwo!33186 r!7292) s!2326))))

(assert (=> d!2017160 (validRegex!8073 (regOne!33186 r!7292))))

(assert (=> d!2017160 (= (lemmaFindConcatSeparationEquivalentToExists!2406 (regOne!33186 r!7292) (regTwo!33186 r!7292) s!2326) lt!2380117)))

(declare-fun bs!1619212 () Bool)

(assert (= bs!1619212 d!2017160))

(declare-fun m!7228140 () Bool)

(assert (=> bs!1619212 m!7228140))

(assert (=> bs!1619212 m!7228124))

(assert (=> bs!1619212 m!7227402))

(assert (=> bs!1619212 m!7227404))

(assert (=> bs!1619212 m!7227402))

(declare-fun m!7228142 () Bool)

(assert (=> bs!1619212 m!7228142))

(assert (=> b!6433843 d!2017160))

(declare-fun bs!1619215 () Bool)

(declare-fun d!2017166 () Bool)

(assert (= bs!1619215 (and d!2017166 d!2017074)))

(declare-fun lambda!356068 () Int)

(assert (=> bs!1619215 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356068 lambda!356051))))

(declare-fun bs!1619217 () Bool)

(assert (= bs!1619217 (and d!2017166 d!2016996)))

(assert (=> bs!1619217 (not (= lambda!356068 lambda!356020))))

(declare-fun bs!1619219 () Bool)

(assert (= bs!1619219 (and d!2017166 b!6433847)))

(assert (=> bs!1619219 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356068 lambda!356003))))

(assert (=> bs!1619217 (= (= (regOne!33186 r!7292) lt!2379981) (= lambda!356068 lambda!356019))))

(declare-fun bs!1619221 () Bool)

(assert (= bs!1619221 (and d!2017166 d!2017160)))

(assert (=> bs!1619221 (= lambda!356068 lambda!356066)))

(declare-fun bs!1619222 () Bool)

(assert (= bs!1619222 (and d!2017166 b!6433843)))

(assert (=> bs!1619222 (= lambda!356068 lambda!355998)))

(declare-fun bs!1619224 () Bool)

(assert (= bs!1619224 (and d!2017166 d!2017038)))

(assert (=> bs!1619224 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) (Star!16337 (reg!16666 (regOne!33186 r!7292))))) (= lambda!356068 lambda!356034))))

(declare-fun bs!1619226 () Bool)

(assert (= bs!1619226 (and d!2017166 b!6434433)))

(assert (=> bs!1619226 (not (= lambda!356068 lambda!356063))))

(declare-fun bs!1619228 () Bool)

(assert (= bs!1619228 (and d!2017166 d!2016994)))

(assert (=> bs!1619228 (= (= (regOne!33186 r!7292) lt!2379981) (= lambda!356068 lambda!356011))))

(assert (=> bs!1619222 (not (= lambda!356068 lambda!355999))))

(declare-fun bs!1619231 () Bool)

(assert (= bs!1619231 (and d!2017166 b!6434435)))

(assert (=> bs!1619231 (not (= lambda!356068 lambda!356060))))

(assert (=> bs!1619215 (not (= lambda!356068 lambda!356052))))

(assert (=> bs!1619219 (not (= lambda!356068 lambda!356005))))

(declare-fun bs!1619233 () Bool)

(assert (= bs!1619233 (and d!2017166 b!6434195)))

(assert (=> bs!1619233 (not (= lambda!356068 lambda!356047))))

(assert (=> bs!1619224 (not (= lambda!356068 lambda!356035))))

(declare-fun bs!1619235 () Bool)

(assert (= bs!1619235 (and d!2017166 d!2017096)))

(assert (=> bs!1619235 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356068 lambda!356053))))

(declare-fun bs!1619236 () Bool)

(assert (= bs!1619236 (and d!2017166 b!6434197)))

(assert (=> bs!1619236 (not (= lambda!356068 lambda!356046))))

(declare-fun bs!1619237 () Bool)

(assert (= bs!1619237 (and d!2017166 b!6433866)))

(assert (=> bs!1619237 (= (= (regOne!33186 r!7292) lt!2379981) (= lambda!356068 lambda!356001))))

(assert (=> bs!1619219 (not (= lambda!356068 lambda!356004))))

(assert (=> bs!1619237 (not (= lambda!356068 lambda!356002))))

(assert (=> d!2017166 true))

(assert (=> d!2017166 true))

(assert (=> d!2017166 true))

(declare-fun lambda!356069 () Int)

(assert (=> bs!1619215 (not (= lambda!356069 lambda!356051))))

(assert (=> bs!1619217 (= (= (regOne!33186 r!7292) lt!2379981) (= lambda!356069 lambda!356020))))

(assert (=> bs!1619219 (not (= lambda!356069 lambda!356003))))

(assert (=> bs!1619217 (not (= lambda!356069 lambda!356019))))

(assert (=> bs!1619221 (not (= lambda!356069 lambda!356066))))

(assert (=> bs!1619222 (not (= lambda!356069 lambda!355998))))

(declare-fun bs!1619242 () Bool)

(assert (= bs!1619242 d!2017166))

(assert (=> bs!1619242 (not (= lambda!356069 lambda!356068))))

(assert (=> bs!1619224 (not (= lambda!356069 lambda!356034))))

(assert (=> bs!1619226 (= (and (= (regOne!33186 r!7292) (regOne!33186 lt!2379979)) (= (regTwo!33186 r!7292) (regTwo!33186 lt!2379979))) (= lambda!356069 lambda!356063))))

(assert (=> bs!1619228 (not (= lambda!356069 lambda!356011))))

(assert (=> bs!1619222 (= lambda!356069 lambda!355999)))

(assert (=> bs!1619231 (not (= lambda!356069 lambda!356060))))

(assert (=> bs!1619215 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356069 lambda!356052))))

(assert (=> bs!1619219 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356069 lambda!356005))))

(assert (=> bs!1619233 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (regOne!33186 lt!2379981)) (= (regTwo!33186 r!7292) (regTwo!33186 lt!2379981))) (= lambda!356069 lambda!356047))))

(assert (=> bs!1619224 (not (= lambda!356069 lambda!356035))))

(assert (=> bs!1619235 (not (= lambda!356069 lambda!356053))))

(assert (=> bs!1619236 (not (= lambda!356069 lambda!356046))))

(assert (=> bs!1619237 (not (= lambda!356069 lambda!356001))))

(assert (=> bs!1619219 (not (= lambda!356069 lambda!356004))))

(assert (=> bs!1619237 (= (= (regOne!33186 r!7292) lt!2379981) (= lambda!356069 lambda!356002))))

(assert (=> d!2017166 true))

(assert (=> d!2017166 true))

(assert (=> d!2017166 true))

(assert (=> d!2017166 (= (Exists!3407 lambda!356068) (Exists!3407 lambda!356069))))

(declare-fun lt!2380119 () Unit!158679)

(assert (=> d!2017166 (= lt!2380119 (choose!47840 (regOne!33186 r!7292) (regTwo!33186 r!7292) s!2326))))

(assert (=> d!2017166 (validRegex!8073 (regOne!33186 r!7292))))

(assert (=> d!2017166 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1944 (regOne!33186 r!7292) (regTwo!33186 r!7292) s!2326) lt!2380119)))

(declare-fun m!7228156 () Bool)

(assert (=> bs!1619242 m!7228156))

(declare-fun m!7228158 () Bool)

(assert (=> bs!1619242 m!7228158))

(declare-fun m!7228160 () Bool)

(assert (=> bs!1619242 m!7228160))

(assert (=> bs!1619242 m!7228124))

(assert (=> b!6433843 d!2017166))

(declare-fun d!2017178 () Bool)

(assert (=> d!2017178 (= (isDefined!12931 (findConcatSeparation!2642 (regOne!33186 r!7292) (regTwo!33186 r!7292) Nil!65186 s!2326 s!2326)) (not (isEmpty!37359 (findConcatSeparation!2642 (regOne!33186 r!7292) (regTwo!33186 r!7292) Nil!65186 s!2326 s!2326))))))

(declare-fun bs!1619243 () Bool)

(assert (= bs!1619243 d!2017178))

(assert (=> bs!1619243 m!7227402))

(declare-fun m!7228162 () Bool)

(assert (=> bs!1619243 m!7228162))

(assert (=> b!6433843 d!2017178))

(declare-fun b!6434516 () Bool)

(declare-fun e!3903268 () (InoxSet Context!11442))

(declare-fun call!553614 () (InoxSet Context!11442))

(assert (=> b!6434516 (= e!3903268 call!553614)))

(declare-fun b!6434517 () Bool)

(declare-fun e!3903269 () Bool)

(assert (=> b!6434517 (= e!3903269 (nullable!6330 (h!71635 (exprs!6221 lt!2379967))))))

(declare-fun d!2017180 () Bool)

(declare-fun c!1176163 () Bool)

(assert (=> d!2017180 (= c!1176163 e!3903269)))

(declare-fun res!2644983 () Bool)

(assert (=> d!2017180 (=> (not res!2644983) (not e!3903269))))

(assert (=> d!2017180 (= res!2644983 ((_ is Cons!65187) (exprs!6221 lt!2379967)))))

(declare-fun e!3903270 () (InoxSet Context!11442))

(assert (=> d!2017180 (= (derivationStepZipperUp!1511 lt!2379967 (h!71634 s!2326)) e!3903270)))

(declare-fun bm!553609 () Bool)

(assert (=> bm!553609 (= call!553614 (derivationStepZipperDown!1585 (h!71635 (exprs!6221 lt!2379967)) (Context!11443 (t!378929 (exprs!6221 lt!2379967))) (h!71634 s!2326)))))

(declare-fun b!6434518 () Bool)

(assert (=> b!6434518 (= e!3903270 e!3903268)))

(declare-fun c!1176164 () Bool)

(assert (=> b!6434518 (= c!1176164 ((_ is Cons!65187) (exprs!6221 lt!2379967)))))

(declare-fun b!6434519 () Bool)

(assert (=> b!6434519 (= e!3903270 ((_ map or) call!553614 (derivationStepZipperUp!1511 (Context!11443 (t!378929 (exprs!6221 lt!2379967))) (h!71634 s!2326))))))

(declare-fun b!6434520 () Bool)

(assert (=> b!6434520 (= e!3903268 ((as const (Array Context!11442 Bool)) false))))

(assert (= (and d!2017180 res!2644983) b!6434517))

(assert (= (and d!2017180 c!1176163) b!6434519))

(assert (= (and d!2017180 (not c!1176163)) b!6434518))

(assert (= (and b!6434518 c!1176164) b!6434516))

(assert (= (and b!6434518 (not c!1176164)) b!6434520))

(assert (= (or b!6434519 b!6434516) bm!553609))

(declare-fun m!7228164 () Bool)

(assert (=> b!6434517 m!7228164))

(declare-fun m!7228166 () Bool)

(assert (=> bm!553609 m!7228166))

(declare-fun m!7228168 () Bool)

(assert (=> b!6434519 m!7228168))

(assert (=> b!6433884 d!2017180))

(declare-fun d!2017182 () Bool)

(declare-fun nullableFct!2276 (Regex!16337) Bool)

(assert (=> d!2017182 (= (nullable!6330 (h!71635 (exprs!6221 (h!71636 zl!343)))) (nullableFct!2276 (h!71635 (exprs!6221 (h!71636 zl!343)))))))

(declare-fun bs!1619244 () Bool)

(assert (= bs!1619244 d!2017182))

(declare-fun m!7228170 () Bool)

(assert (=> bs!1619244 m!7228170))

(assert (=> b!6433884 d!2017182))

(declare-fun b!6434521 () Bool)

(declare-fun e!3903271 () (InoxSet Context!11442))

(declare-fun call!553615 () (InoxSet Context!11442))

(assert (=> b!6434521 (= e!3903271 call!553615)))

(declare-fun b!6434522 () Bool)

(declare-fun e!3903272 () Bool)

(assert (=> b!6434522 (= e!3903272 (nullable!6330 (h!71635 (exprs!6221 (Context!11443 (Cons!65187 (h!71635 (exprs!6221 (h!71636 zl!343))) (t!378929 (exprs!6221 (h!71636 zl!343)))))))))))

(declare-fun d!2017184 () Bool)

(declare-fun c!1176165 () Bool)

(assert (=> d!2017184 (= c!1176165 e!3903272)))

(declare-fun res!2644984 () Bool)

(assert (=> d!2017184 (=> (not res!2644984) (not e!3903272))))

(assert (=> d!2017184 (= res!2644984 ((_ is Cons!65187) (exprs!6221 (Context!11443 (Cons!65187 (h!71635 (exprs!6221 (h!71636 zl!343))) (t!378929 (exprs!6221 (h!71636 zl!343))))))))))

(declare-fun e!3903273 () (InoxSet Context!11442))

(assert (=> d!2017184 (= (derivationStepZipperUp!1511 (Context!11443 (Cons!65187 (h!71635 (exprs!6221 (h!71636 zl!343))) (t!378929 (exprs!6221 (h!71636 zl!343))))) (h!71634 s!2326)) e!3903273)))

(declare-fun bm!553610 () Bool)

(assert (=> bm!553610 (= call!553615 (derivationStepZipperDown!1585 (h!71635 (exprs!6221 (Context!11443 (Cons!65187 (h!71635 (exprs!6221 (h!71636 zl!343))) (t!378929 (exprs!6221 (h!71636 zl!343))))))) (Context!11443 (t!378929 (exprs!6221 (Context!11443 (Cons!65187 (h!71635 (exprs!6221 (h!71636 zl!343))) (t!378929 (exprs!6221 (h!71636 zl!343)))))))) (h!71634 s!2326)))))

(declare-fun b!6434523 () Bool)

(assert (=> b!6434523 (= e!3903273 e!3903271)))

(declare-fun c!1176166 () Bool)

(assert (=> b!6434523 (= c!1176166 ((_ is Cons!65187) (exprs!6221 (Context!11443 (Cons!65187 (h!71635 (exprs!6221 (h!71636 zl!343))) (t!378929 (exprs!6221 (h!71636 zl!343))))))))))

(declare-fun b!6434524 () Bool)

(assert (=> b!6434524 (= e!3903273 ((_ map or) call!553615 (derivationStepZipperUp!1511 (Context!11443 (t!378929 (exprs!6221 (Context!11443 (Cons!65187 (h!71635 (exprs!6221 (h!71636 zl!343))) (t!378929 (exprs!6221 (h!71636 zl!343)))))))) (h!71634 s!2326))))))

(declare-fun b!6434525 () Bool)

(assert (=> b!6434525 (= e!3903271 ((as const (Array Context!11442 Bool)) false))))

(assert (= (and d!2017184 res!2644984) b!6434522))

(assert (= (and d!2017184 c!1176165) b!6434524))

(assert (= (and d!2017184 (not c!1176165)) b!6434523))

(assert (= (and b!6434523 c!1176166) b!6434521))

(assert (= (and b!6434523 (not c!1176166)) b!6434525))

(assert (= (or b!6434524 b!6434521) bm!553610))

(declare-fun m!7228172 () Bool)

(assert (=> b!6434522 m!7228172))

(declare-fun m!7228174 () Bool)

(assert (=> bm!553610 m!7228174))

(declare-fun m!7228176 () Bool)

(assert (=> b!6434524 m!7228176))

(assert (=> b!6433884 d!2017184))

(declare-fun d!2017186 () Bool)

(declare-fun choose!47852 ((InoxSet Context!11442) Int) (InoxSet Context!11442))

(assert (=> d!2017186 (= (flatMap!1842 z!1189 lambda!356000) (choose!47852 z!1189 lambda!356000))))

(declare-fun bs!1619245 () Bool)

(assert (= bs!1619245 d!2017186))

(declare-fun m!7228178 () Bool)

(assert (=> bs!1619245 m!7228178))

(assert (=> b!6433884 d!2017186))

(declare-fun d!2017188 () Bool)

(declare-fun dynLambda!25896 (Int Context!11442) (InoxSet Context!11442))

(assert (=> d!2017188 (= (flatMap!1842 z!1189 lambda!356000) (dynLambda!25896 lambda!356000 (h!71636 zl!343)))))

(declare-fun lt!2380126 () Unit!158679)

(declare-fun choose!47853 ((InoxSet Context!11442) Context!11442 Int) Unit!158679)

(assert (=> d!2017188 (= lt!2380126 (choose!47853 z!1189 (h!71636 zl!343) lambda!356000))))

(assert (=> d!2017188 (= z!1189 (store ((as const (Array Context!11442 Bool)) false) (h!71636 zl!343) true))))

(assert (=> d!2017188 (= (lemmaFlatMapOnSingletonSet!1368 z!1189 (h!71636 zl!343) lambda!356000) lt!2380126)))

(declare-fun b_lambda!244425 () Bool)

(assert (=> (not b_lambda!244425) (not d!2017188)))

(declare-fun bs!1619252 () Bool)

(assert (= bs!1619252 d!2017188))

(assert (=> bs!1619252 m!7227430))

(declare-fun m!7228180 () Bool)

(assert (=> bs!1619252 m!7228180))

(declare-fun m!7228182 () Bool)

(assert (=> bs!1619252 m!7228182))

(declare-fun m!7228184 () Bool)

(assert (=> bs!1619252 m!7228184))

(assert (=> b!6433884 d!2017188))

(declare-fun b!6434565 () Bool)

(declare-fun c!1176185 () Bool)

(assert (=> b!6434565 (= c!1176185 ((_ is Star!16337) (h!71635 (exprs!6221 (h!71636 zl!343)))))))

(declare-fun e!3903297 () (InoxSet Context!11442))

(declare-fun e!3903298 () (InoxSet Context!11442))

(assert (=> b!6434565 (= e!3903297 e!3903298)))

(declare-fun call!553631 () (InoxSet Context!11442))

(declare-fun bm!553625 () Bool)

(declare-fun c!1176184 () Bool)

(declare-fun call!553634 () List!65311)

(assert (=> bm!553625 (= call!553631 (derivationStepZipperDown!1585 (ite c!1176184 (regTwo!33187 (h!71635 (exprs!6221 (h!71636 zl!343)))) (regOne!33186 (h!71635 (exprs!6221 (h!71636 zl!343))))) (ite c!1176184 lt!2379967 (Context!11443 call!553634)) (h!71634 s!2326)))))

(declare-fun b!6434566 () Bool)

(declare-fun e!3903295 () (InoxSet Context!11442))

(declare-fun call!553633 () (InoxSet Context!11442))

(assert (=> b!6434566 (= e!3903295 ((_ map or) call!553633 call!553631))))

(declare-fun c!1176183 () Bool)

(declare-fun c!1176181 () Bool)

(declare-fun bm!553626 () Bool)

(declare-fun call!553635 () List!65311)

(assert (=> bm!553626 (= call!553633 (derivationStepZipperDown!1585 (ite c!1176184 (regOne!33187 (h!71635 (exprs!6221 (h!71636 zl!343)))) (ite c!1176183 (regTwo!33186 (h!71635 (exprs!6221 (h!71636 zl!343)))) (ite c!1176181 (regOne!33186 (h!71635 (exprs!6221 (h!71636 zl!343)))) (reg!16666 (h!71635 (exprs!6221 (h!71636 zl!343))))))) (ite (or c!1176184 c!1176183) lt!2379967 (Context!11443 call!553635)) (h!71634 s!2326)))))

(declare-fun d!2017190 () Bool)

(declare-fun c!1176182 () Bool)

(assert (=> d!2017190 (= c!1176182 (and ((_ is ElementMatch!16337) (h!71635 (exprs!6221 (h!71636 zl!343)))) (= (c!1176002 (h!71635 (exprs!6221 (h!71636 zl!343)))) (h!71634 s!2326))))))

(declare-fun e!3903299 () (InoxSet Context!11442))

(assert (=> d!2017190 (= (derivationStepZipperDown!1585 (h!71635 (exprs!6221 (h!71636 zl!343))) lt!2379967 (h!71634 s!2326)) e!3903299)))

(declare-fun b!6434567 () Bool)

(assert (=> b!6434567 (= e!3903299 (store ((as const (Array Context!11442 Bool)) false) lt!2379967 true))))

(declare-fun b!6434568 () Bool)

(declare-fun call!553632 () (InoxSet Context!11442))

(assert (=> b!6434568 (= e!3903298 call!553632)))

(declare-fun b!6434569 () Bool)

(assert (=> b!6434569 (= e!3903299 e!3903295)))

(assert (=> b!6434569 (= c!1176184 ((_ is Union!16337) (h!71635 (exprs!6221 (h!71636 zl!343)))))))

(declare-fun bm!553627 () Bool)

(assert (=> bm!553627 (= call!553635 call!553634)))

(declare-fun bm!553628 () Bool)

(declare-fun call!553630 () (InoxSet Context!11442))

(assert (=> bm!553628 (= call!553630 call!553633)))

(declare-fun b!6434570 () Bool)

(declare-fun e!3903300 () (InoxSet Context!11442))

(assert (=> b!6434570 (= e!3903300 e!3903297)))

(assert (=> b!6434570 (= c!1176181 ((_ is Concat!25182) (h!71635 (exprs!6221 (h!71636 zl!343)))))))

(declare-fun b!6434571 () Bool)

(assert (=> b!6434571 (= e!3903297 call!553632)))

(declare-fun b!6434572 () Bool)

(declare-fun e!3903296 () Bool)

(assert (=> b!6434572 (= c!1176183 e!3903296)))

(declare-fun res!2644996 () Bool)

(assert (=> b!6434572 (=> (not res!2644996) (not e!3903296))))

(assert (=> b!6434572 (= res!2644996 ((_ is Concat!25182) (h!71635 (exprs!6221 (h!71636 zl!343)))))))

(assert (=> b!6434572 (= e!3903295 e!3903300)))

(declare-fun bm!553629 () Bool)

(assert (=> bm!553629 (= call!553632 call!553630)))

(declare-fun b!6434573 () Bool)

(assert (=> b!6434573 (= e!3903300 ((_ map or) call!553631 call!553630))))

(declare-fun b!6434574 () Bool)

(assert (=> b!6434574 (= e!3903296 (nullable!6330 (regOne!33186 (h!71635 (exprs!6221 (h!71636 zl!343))))))))

(declare-fun b!6434575 () Bool)

(assert (=> b!6434575 (= e!3903298 ((as const (Array Context!11442 Bool)) false))))

(declare-fun bm!553630 () Bool)

(declare-fun $colon$colon!2198 (List!65311 Regex!16337) List!65311)

(assert (=> bm!553630 (= call!553634 ($colon$colon!2198 (exprs!6221 lt!2379967) (ite (or c!1176183 c!1176181) (regTwo!33186 (h!71635 (exprs!6221 (h!71636 zl!343)))) (h!71635 (exprs!6221 (h!71636 zl!343))))))))

(assert (= (and d!2017190 c!1176182) b!6434567))

(assert (= (and d!2017190 (not c!1176182)) b!6434569))

(assert (= (and b!6434569 c!1176184) b!6434566))

(assert (= (and b!6434569 (not c!1176184)) b!6434572))

(assert (= (and b!6434572 res!2644996) b!6434574))

(assert (= (and b!6434572 c!1176183) b!6434573))

(assert (= (and b!6434572 (not c!1176183)) b!6434570))

(assert (= (and b!6434570 c!1176181) b!6434571))

(assert (= (and b!6434570 (not c!1176181)) b!6434565))

(assert (= (and b!6434565 c!1176185) b!6434568))

(assert (= (and b!6434565 (not c!1176185)) b!6434575))

(assert (= (or b!6434571 b!6434568) bm!553627))

(assert (= (or b!6434571 b!6434568) bm!553629))

(assert (= (or b!6434573 bm!553627) bm!553630))

(assert (= (or b!6434573 bm!553629) bm!553628))

(assert (= (or b!6434566 b!6434573) bm!553625))

(assert (= (or b!6434566 bm!553628) bm!553626))

(declare-fun m!7228198 () Bool)

(assert (=> bm!553625 m!7228198))

(declare-fun m!7228204 () Bool)

(assert (=> bm!553626 m!7228204))

(declare-fun m!7228208 () Bool)

(assert (=> bm!553630 m!7228208))

(declare-fun m!7228210 () Bool)

(assert (=> b!6434574 m!7228210))

(declare-fun m!7228212 () Bool)

(assert (=> b!6434567 m!7228212))

(assert (=> b!6433884 d!2017190))

(declare-fun b!6434578 () Bool)

(declare-fun e!3903302 () (InoxSet Context!11442))

(declare-fun call!553636 () (InoxSet Context!11442))

(assert (=> b!6434578 (= e!3903302 call!553636)))

(declare-fun b!6434579 () Bool)

(declare-fun e!3903303 () Bool)

(assert (=> b!6434579 (= e!3903303 (nullable!6330 (h!71635 (exprs!6221 (h!71636 zl!343)))))))

(declare-fun d!2017198 () Bool)

(declare-fun c!1176187 () Bool)

(assert (=> d!2017198 (= c!1176187 e!3903303)))

(declare-fun res!2644997 () Bool)

(assert (=> d!2017198 (=> (not res!2644997) (not e!3903303))))

(assert (=> d!2017198 (= res!2644997 ((_ is Cons!65187) (exprs!6221 (h!71636 zl!343))))))

(declare-fun e!3903304 () (InoxSet Context!11442))

(assert (=> d!2017198 (= (derivationStepZipperUp!1511 (h!71636 zl!343) (h!71634 s!2326)) e!3903304)))

(declare-fun bm!553631 () Bool)

(assert (=> bm!553631 (= call!553636 (derivationStepZipperDown!1585 (h!71635 (exprs!6221 (h!71636 zl!343))) (Context!11443 (t!378929 (exprs!6221 (h!71636 zl!343)))) (h!71634 s!2326)))))

(declare-fun b!6434580 () Bool)

(assert (=> b!6434580 (= e!3903304 e!3903302)))

(declare-fun c!1176188 () Bool)

(assert (=> b!6434580 (= c!1176188 ((_ is Cons!65187) (exprs!6221 (h!71636 zl!343))))))

(declare-fun b!6434581 () Bool)

(assert (=> b!6434581 (= e!3903304 ((_ map or) call!553636 (derivationStepZipperUp!1511 (Context!11443 (t!378929 (exprs!6221 (h!71636 zl!343)))) (h!71634 s!2326))))))

(declare-fun b!6434582 () Bool)

(assert (=> b!6434582 (= e!3903302 ((as const (Array Context!11442 Bool)) false))))

(assert (= (and d!2017198 res!2644997) b!6434579))

(assert (= (and d!2017198 c!1176187) b!6434581))

(assert (= (and d!2017198 (not c!1176187)) b!6434580))

(assert (= (and b!6434580 c!1176188) b!6434578))

(assert (= (and b!6434580 (not c!1176188)) b!6434582))

(assert (= (or b!6434581 b!6434578) bm!553631))

(assert (=> b!6434579 m!7227434))

(declare-fun m!7228220 () Bool)

(assert (=> bm!553631 m!7228220))

(declare-fun m!7228222 () Bool)

(assert (=> b!6434581 m!7228222))

(assert (=> b!6433884 d!2017198))

(declare-fun bs!1619291 () Bool)

(declare-fun b!6434588 () Bool)

(assert (= bs!1619291 (and b!6434588 d!2017074)))

(declare-fun lambda!356078 () Int)

(assert (=> bs!1619291 (not (= lambda!356078 lambda!356051))))

(declare-fun bs!1619292 () Bool)

(assert (= bs!1619292 (and b!6434588 b!6433847)))

(assert (=> bs!1619292 (not (= lambda!356078 lambda!356003))))

(declare-fun bs!1619293 () Bool)

(assert (= bs!1619293 (and b!6434588 d!2016996)))

(assert (=> bs!1619293 (not (= lambda!356078 lambda!356019))))

(declare-fun bs!1619294 () Bool)

(assert (= bs!1619294 (and b!6434588 d!2017160)))

(assert (=> bs!1619294 (not (= lambda!356078 lambda!356066))))

(declare-fun bs!1619295 () Bool)

(assert (= bs!1619295 (and b!6434588 b!6433843)))

(assert (=> bs!1619295 (not (= lambda!356078 lambda!355998))))

(declare-fun bs!1619296 () Bool)

(assert (= bs!1619296 (and b!6434588 d!2017166)))

(assert (=> bs!1619296 (not (= lambda!356078 lambda!356068))))

(declare-fun bs!1619297 () Bool)

(assert (= bs!1619297 (and b!6434588 d!2017038)))

(assert (=> bs!1619297 (not (= lambda!356078 lambda!356034))))

(declare-fun bs!1619298 () Bool)

(assert (= bs!1619298 (and b!6434588 b!6434433)))

(assert (=> bs!1619298 (not (= lambda!356078 lambda!356063))))

(declare-fun bs!1619299 () Bool)

(assert (= bs!1619299 (and b!6434588 d!2016994)))

(assert (=> bs!1619299 (not (= lambda!356078 lambda!356011))))

(assert (=> bs!1619295 (not (= lambda!356078 lambda!355999))))

(declare-fun bs!1619300 () Bool)

(assert (= bs!1619300 (and b!6434588 b!6434435)))

(assert (=> bs!1619300 (= (and (= (reg!16666 r!7292) (reg!16666 lt!2379979)) (= r!7292 lt!2379979)) (= lambda!356078 lambda!356060))))

(assert (=> bs!1619291 (not (= lambda!356078 lambda!356052))))

(assert (=> bs!1619292 (not (= lambda!356078 lambda!356005))))

(declare-fun bs!1619301 () Bool)

(assert (= bs!1619301 (and b!6434588 b!6434195)))

(assert (=> bs!1619301 (not (= lambda!356078 lambda!356047))))

(assert (=> bs!1619297 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (reg!16666 r!7292) (reg!16666 (regOne!33186 r!7292))) (= r!7292 (Star!16337 (reg!16666 (regOne!33186 r!7292))))) (= lambda!356078 lambda!356035))))

(declare-fun bs!1619302 () Bool)

(assert (= bs!1619302 (and b!6434588 d!2017096)))

(assert (=> bs!1619302 (not (= lambda!356078 lambda!356053))))

(assert (=> bs!1619293 (not (= lambda!356078 lambda!356020))))

(assert (=> bs!1619296 (not (= lambda!356078 lambda!356069))))

(declare-fun bs!1619303 () Bool)

(assert (= bs!1619303 (and b!6434588 b!6434197)))

(assert (=> bs!1619303 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (reg!16666 r!7292) (reg!16666 lt!2379981)) (= r!7292 lt!2379981)) (= lambda!356078 lambda!356046))))

(declare-fun bs!1619304 () Bool)

(assert (= bs!1619304 (and b!6434588 b!6433866)))

(assert (=> bs!1619304 (not (= lambda!356078 lambda!356001))))

(assert (=> bs!1619292 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (reg!16666 r!7292) (reg!16666 (regOne!33186 r!7292))) (= r!7292 lt!2379981)) (= lambda!356078 lambda!356004))))

(assert (=> bs!1619304 (not (= lambda!356078 lambda!356002))))

(assert (=> b!6434588 true))

(assert (=> b!6434588 true))

(declare-fun bs!1619305 () Bool)

(declare-fun b!6434586 () Bool)

(assert (= bs!1619305 (and b!6434586 d!2017074)))

(declare-fun lambda!356079 () Int)

(assert (=> bs!1619305 (not (= lambda!356079 lambda!356051))))

(declare-fun bs!1619306 () Bool)

(assert (= bs!1619306 (and b!6434586 b!6433847)))

(assert (=> bs!1619306 (not (= lambda!356079 lambda!356003))))

(declare-fun bs!1619307 () Bool)

(assert (= bs!1619307 (and b!6434586 d!2016996)))

(assert (=> bs!1619307 (not (= lambda!356079 lambda!356019))))

(declare-fun bs!1619308 () Bool)

(assert (= bs!1619308 (and b!6434586 d!2017160)))

(assert (=> bs!1619308 (not (= lambda!356079 lambda!356066))))

(declare-fun bs!1619309 () Bool)

(assert (= bs!1619309 (and b!6434586 b!6433843)))

(assert (=> bs!1619309 (not (= lambda!356079 lambda!355998))))

(declare-fun bs!1619310 () Bool)

(assert (= bs!1619310 (and b!6434586 d!2017166)))

(assert (=> bs!1619310 (not (= lambda!356079 lambda!356068))))

(declare-fun bs!1619311 () Bool)

(assert (= bs!1619311 (and b!6434586 d!2017038)))

(assert (=> bs!1619311 (not (= lambda!356079 lambda!356034))))

(declare-fun bs!1619312 () Bool)

(assert (= bs!1619312 (and b!6434586 b!6434433)))

(assert (=> bs!1619312 (= (and (= (regOne!33186 r!7292) (regOne!33186 lt!2379979)) (= (regTwo!33186 r!7292) (regTwo!33186 lt!2379979))) (= lambda!356079 lambda!356063))))

(declare-fun bs!1619313 () Bool)

(assert (= bs!1619313 (and b!6434586 d!2016994)))

(assert (=> bs!1619313 (not (= lambda!356079 lambda!356011))))

(assert (=> bs!1619309 (= lambda!356079 lambda!355999)))

(declare-fun bs!1619314 () Bool)

(assert (= bs!1619314 (and b!6434586 b!6434435)))

(assert (=> bs!1619314 (not (= lambda!356079 lambda!356060))))

(assert (=> bs!1619305 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356079 lambda!356052))))

(assert (=> bs!1619306 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (reg!16666 (regOne!33186 r!7292))) (= (regTwo!33186 r!7292) lt!2379981)) (= lambda!356079 lambda!356005))))

(declare-fun bs!1619315 () Bool)

(assert (= bs!1619315 (and b!6434586 b!6434588)))

(assert (=> bs!1619315 (not (= lambda!356079 lambda!356078))))

(declare-fun bs!1619316 () Bool)

(assert (= bs!1619316 (and b!6434586 b!6434195)))

(assert (=> bs!1619316 (= (and (= s!2326 (_1!36619 lt!2379961)) (= (regOne!33186 r!7292) (regOne!33186 lt!2379981)) (= (regTwo!33186 r!7292) (regTwo!33186 lt!2379981))) (= lambda!356079 lambda!356047))))

(assert (=> bs!1619311 (not (= lambda!356079 lambda!356035))))

(declare-fun bs!1619317 () Bool)

(assert (= bs!1619317 (and b!6434586 d!2017096)))

(assert (=> bs!1619317 (not (= lambda!356079 lambda!356053))))

(assert (=> bs!1619307 (= (= (regOne!33186 r!7292) lt!2379981) (= lambda!356079 lambda!356020))))

(assert (=> bs!1619310 (= lambda!356079 lambda!356069)))

(declare-fun bs!1619318 () Bool)

(assert (= bs!1619318 (and b!6434586 b!6434197)))

(assert (=> bs!1619318 (not (= lambda!356079 lambda!356046))))

(declare-fun bs!1619319 () Bool)

(assert (= bs!1619319 (and b!6434586 b!6433866)))

(assert (=> bs!1619319 (not (= lambda!356079 lambda!356001))))

(assert (=> bs!1619306 (not (= lambda!356079 lambda!356004))))

(assert (=> bs!1619319 (= (= (regOne!33186 r!7292) lt!2379981) (= lambda!356079 lambda!356002))))

(assert (=> b!6434586 true))

(assert (=> b!6434586 true))

(declare-fun b!6434585 () Bool)

(declare-fun c!1176191 () Bool)

(assert (=> b!6434585 (= c!1176191 ((_ is Union!16337) r!7292))))

(declare-fun e!3903308 () Bool)

(declare-fun e!3903306 () Bool)

(assert (=> b!6434585 (= e!3903308 e!3903306)))

(declare-fun d!2017202 () Bool)

(declare-fun c!1176190 () Bool)

(assert (=> d!2017202 (= c!1176190 ((_ is EmptyExpr!16337) r!7292))))

(declare-fun e!3903310 () Bool)

(assert (=> d!2017202 (= (matchRSpec!3438 r!7292 s!2326) e!3903310)))

(declare-fun e!3903311 () Bool)

(declare-fun call!553638 () Bool)

(assert (=> b!6434586 (= e!3903311 call!553638)))

(declare-fun b!6434587 () Bool)

(declare-fun c!1176193 () Bool)

(assert (=> b!6434587 (= c!1176193 ((_ is ElementMatch!16337) r!7292))))

(declare-fun e!3903309 () Bool)

(assert (=> b!6434587 (= e!3903309 e!3903308)))

(declare-fun e!3903307 () Bool)

(assert (=> b!6434588 (= e!3903307 call!553638)))

(declare-fun b!6434589 () Bool)

(declare-fun e!3903312 () Bool)

(assert (=> b!6434589 (= e!3903312 (matchRSpec!3438 (regTwo!33187 r!7292) s!2326))))

(declare-fun c!1176192 () Bool)

(declare-fun bm!553632 () Bool)

(assert (=> bm!553632 (= call!553638 (Exists!3407 (ite c!1176192 lambda!356078 lambda!356079)))))

(declare-fun b!6434590 () Bool)

(assert (=> b!6434590 (= e!3903310 e!3903309)))

(declare-fun res!2644998 () Bool)

(assert (=> b!6434590 (= res!2644998 (not ((_ is EmptyLang!16337) r!7292)))))

(assert (=> b!6434590 (=> (not res!2644998) (not e!3903309))))

(declare-fun b!6434591 () Bool)

(declare-fun call!553637 () Bool)

(assert (=> b!6434591 (= e!3903310 call!553637)))

(declare-fun bm!553633 () Bool)

(assert (=> bm!553633 (= call!553637 (isEmpty!37357 s!2326))))

(declare-fun b!6434592 () Bool)

(assert (=> b!6434592 (= e!3903306 e!3903312)))

(declare-fun res!2644999 () Bool)

(assert (=> b!6434592 (= res!2644999 (matchRSpec!3438 (regOne!33187 r!7292) s!2326))))

(assert (=> b!6434592 (=> res!2644999 e!3903312)))

(declare-fun b!6434593 () Bool)

(declare-fun res!2645000 () Bool)

(assert (=> b!6434593 (=> res!2645000 e!3903307)))

(assert (=> b!6434593 (= res!2645000 call!553637)))

(assert (=> b!6434593 (= e!3903311 e!3903307)))

(declare-fun b!6434594 () Bool)

(assert (=> b!6434594 (= e!3903308 (= s!2326 (Cons!65186 (c!1176002 r!7292) Nil!65186)))))

(declare-fun b!6434595 () Bool)

(assert (=> b!6434595 (= e!3903306 e!3903311)))

(assert (=> b!6434595 (= c!1176192 ((_ is Star!16337) r!7292))))

(assert (= (and d!2017202 c!1176190) b!6434591))

(assert (= (and d!2017202 (not c!1176190)) b!6434590))

(assert (= (and b!6434590 res!2644998) b!6434587))

(assert (= (and b!6434587 c!1176193) b!6434594))

(assert (= (and b!6434587 (not c!1176193)) b!6434585))

(assert (= (and b!6434585 c!1176191) b!6434592))

(assert (= (and b!6434585 (not c!1176191)) b!6434595))

(assert (= (and b!6434592 (not res!2644999)) b!6434589))

(assert (= (and b!6434595 c!1176192) b!6434593))

(assert (= (and b!6434595 (not c!1176192)) b!6434586))

(assert (= (and b!6434593 (not res!2645000)) b!6434588))

(assert (= (or b!6434588 b!6434586) bm!553632))

(assert (= (or b!6434591 b!6434593) bm!553633))

(declare-fun m!7228242 () Bool)

(assert (=> b!6434589 m!7228242))

(declare-fun m!7228244 () Bool)

(assert (=> bm!553632 m!7228244))

(assert (=> bm!553633 m!7227930))

(declare-fun m!7228246 () Bool)

(assert (=> b!6434592 m!7228246))

(assert (=> b!6433883 d!2017202))

(declare-fun b!6434639 () Bool)

(declare-fun e!3903345 () Bool)

(declare-fun lt!2380129 () Bool)

(assert (=> b!6434639 (= e!3903345 (not lt!2380129))))

(declare-fun b!6434640 () Bool)

(declare-fun res!2645028 () Bool)

(declare-fun e!3903348 () Bool)

(assert (=> b!6434640 (=> (not res!2645028) (not e!3903348))))

(assert (=> b!6434640 (= res!2645028 (isEmpty!37357 (tail!12248 s!2326)))))

(declare-fun b!6434641 () Bool)

(declare-fun res!2645027 () Bool)

(declare-fun e!3903346 () Bool)

(assert (=> b!6434641 (=> res!2645027 e!3903346)))

(assert (=> b!6434641 (= res!2645027 (not (isEmpty!37357 (tail!12248 s!2326))))))

(declare-fun b!6434642 () Bool)

(declare-fun res!2645024 () Bool)

(declare-fun e!3903343 () Bool)

(assert (=> b!6434642 (=> res!2645024 e!3903343)))

(assert (=> b!6434642 (= res!2645024 (not ((_ is ElementMatch!16337) r!7292)))))

(assert (=> b!6434642 (= e!3903345 e!3903343)))

(declare-fun b!6434643 () Bool)

(declare-fun res!2645025 () Bool)

(assert (=> b!6434643 (=> (not res!2645025) (not e!3903348))))

(declare-fun call!553649 () Bool)

(assert (=> b!6434643 (= res!2645025 (not call!553649))))

(declare-fun d!2017210 () Bool)

(declare-fun e!3903347 () Bool)

(assert (=> d!2017210 e!3903347))

(declare-fun c!1176206 () Bool)

(assert (=> d!2017210 (= c!1176206 ((_ is EmptyExpr!16337) r!7292))))

(declare-fun e!3903344 () Bool)

(assert (=> d!2017210 (= lt!2380129 e!3903344)))

(declare-fun c!1176204 () Bool)

(assert (=> d!2017210 (= c!1176204 (isEmpty!37357 s!2326))))

(assert (=> d!2017210 (validRegex!8073 r!7292)))

(assert (=> d!2017210 (= (matchR!8520 r!7292 s!2326) lt!2380129)))

(declare-fun b!6434644 () Bool)

(assert (=> b!6434644 (= e!3903348 (= (head!13163 s!2326) (c!1176002 r!7292)))))

(declare-fun b!6434645 () Bool)

(declare-fun e!3903342 () Bool)

(assert (=> b!6434645 (= e!3903343 e!3903342)))

(declare-fun res!2645026 () Bool)

(assert (=> b!6434645 (=> (not res!2645026) (not e!3903342))))

(assert (=> b!6434645 (= res!2645026 (not lt!2380129))))

(declare-fun b!6434646 () Bool)

(assert (=> b!6434646 (= e!3903346 (not (= (head!13163 s!2326) (c!1176002 r!7292))))))

(declare-fun b!6434647 () Bool)

(assert (=> b!6434647 (= e!3903347 e!3903345)))

(declare-fun c!1176205 () Bool)

(assert (=> b!6434647 (= c!1176205 ((_ is EmptyLang!16337) r!7292))))

(declare-fun b!6434648 () Bool)

(assert (=> b!6434648 (= e!3903344 (matchR!8520 (derivativeStep!5040 r!7292 (head!13163 s!2326)) (tail!12248 s!2326)))))

(declare-fun b!6434649 () Bool)

(assert (=> b!6434649 (= e!3903347 (= lt!2380129 call!553649))))

(declare-fun bm!553644 () Bool)

(assert (=> bm!553644 (= call!553649 (isEmpty!37357 s!2326))))

(declare-fun b!6434650 () Bool)

(declare-fun res!2645030 () Bool)

(assert (=> b!6434650 (=> res!2645030 e!3903343)))

(assert (=> b!6434650 (= res!2645030 e!3903348)))

(declare-fun res!2645029 () Bool)

(assert (=> b!6434650 (=> (not res!2645029) (not e!3903348))))

(assert (=> b!6434650 (= res!2645029 lt!2380129)))

(declare-fun b!6434651 () Bool)

(assert (=> b!6434651 (= e!3903344 (nullable!6330 r!7292))))

(declare-fun b!6434652 () Bool)

(assert (=> b!6434652 (= e!3903342 e!3903346)))

(declare-fun res!2645031 () Bool)

(assert (=> b!6434652 (=> res!2645031 e!3903346)))

(assert (=> b!6434652 (= res!2645031 call!553649)))

(assert (= (and d!2017210 c!1176204) b!6434651))

(assert (= (and d!2017210 (not c!1176204)) b!6434648))

(assert (= (and d!2017210 c!1176206) b!6434649))

(assert (= (and d!2017210 (not c!1176206)) b!6434647))

(assert (= (and b!6434647 c!1176205) b!6434639))

(assert (= (and b!6434647 (not c!1176205)) b!6434642))

(assert (= (and b!6434642 (not res!2645024)) b!6434650))

(assert (= (and b!6434650 res!2645029) b!6434643))

(assert (= (and b!6434643 res!2645025) b!6434640))

(assert (= (and b!6434640 res!2645028) b!6434644))

(assert (= (and b!6434650 (not res!2645030)) b!6434645))

(assert (= (and b!6434645 res!2645026) b!6434652))

(assert (= (and b!6434652 (not res!2645031)) b!6434641))

(assert (= (and b!6434641 (not res!2645027)) b!6434646))

(assert (= (or b!6434649 b!6434643 b!6434652) bm!553644))

(assert (=> b!6434648 m!7227934))

(assert (=> b!6434648 m!7227934))

(declare-fun m!7228260 () Bool)

(assert (=> b!6434648 m!7228260))

(assert (=> b!6434648 m!7227938))

(assert (=> b!6434648 m!7228260))

(assert (=> b!6434648 m!7227938))

(declare-fun m!7228262 () Bool)

(assert (=> b!6434648 m!7228262))

(assert (=> b!6434640 m!7227938))

(assert (=> b!6434640 m!7227938))

(assert (=> b!6434640 m!7228014))

(assert (=> d!2017210 m!7227930))

(assert (=> d!2017210 m!7227504))

(assert (=> bm!553644 m!7227930))

(declare-fun m!7228264 () Bool)

(assert (=> b!6434651 m!7228264))

(assert (=> b!6434644 m!7227934))

(assert (=> b!6434641 m!7227938))

(assert (=> b!6434641 m!7227938))

(assert (=> b!6434641 m!7228014))

(assert (=> b!6434646 m!7227934))

(assert (=> b!6433883 d!2017210))

(declare-fun d!2017214 () Bool)

(assert (=> d!2017214 (= (matchR!8520 r!7292 s!2326) (matchRSpec!3438 r!7292 s!2326))))

(declare-fun lt!2380130 () Unit!158679)

(assert (=> d!2017214 (= lt!2380130 (choose!47847 r!7292 s!2326))))

(assert (=> d!2017214 (validRegex!8073 r!7292)))

(assert (=> d!2017214 (= (mainMatchTheorem!3438 r!7292 s!2326) lt!2380130)))

(declare-fun bs!1619320 () Bool)

(assert (= bs!1619320 d!2017214))

(assert (=> bs!1619320 m!7227414))

(assert (=> bs!1619320 m!7227412))

(declare-fun m!7228266 () Bool)

(assert (=> bs!1619320 m!7228266))

(assert (=> bs!1619320 m!7227504))

(assert (=> b!6433883 d!2017214))

(declare-fun bs!1619330 () Bool)

(declare-fun d!2017218 () Bool)

(assert (= bs!1619330 (and d!2017218 d!2016986)))

(declare-fun lambda!356086 () Int)

(assert (=> bs!1619330 (= lambda!356086 lambda!356008)))

(declare-fun b!6434692 () Bool)

(declare-fun e!3903372 () Regex!16337)

(assert (=> b!6434692 (= e!3903372 EmptyLang!16337)))

(declare-fun b!6434693 () Bool)

(assert (=> b!6434693 (= e!3903372 (Union!16337 (h!71635 (unfocusZipperList!1758 zl!343)) (generalisedUnion!2181 (t!378929 (unfocusZipperList!1758 zl!343)))))))

(declare-fun b!6434694 () Bool)

(declare-fun e!3903373 () Regex!16337)

(assert (=> b!6434694 (= e!3903373 (h!71635 (unfocusZipperList!1758 zl!343)))))

(declare-fun e!3903374 () Bool)

(assert (=> d!2017218 e!3903374))

(declare-fun res!2645044 () Bool)

(assert (=> d!2017218 (=> (not res!2645044) (not e!3903374))))

(declare-fun lt!2380140 () Regex!16337)

(assert (=> d!2017218 (= res!2645044 (validRegex!8073 lt!2380140))))

(assert (=> d!2017218 (= lt!2380140 e!3903373)))

(declare-fun c!1176222 () Bool)

(declare-fun e!3903371 () Bool)

(assert (=> d!2017218 (= c!1176222 e!3903371)))

(declare-fun res!2645043 () Bool)

(assert (=> d!2017218 (=> (not res!2645043) (not e!3903371))))

(assert (=> d!2017218 (= res!2645043 ((_ is Cons!65187) (unfocusZipperList!1758 zl!343)))))

(assert (=> d!2017218 (forall!15527 (unfocusZipperList!1758 zl!343) lambda!356086)))

(assert (=> d!2017218 (= (generalisedUnion!2181 (unfocusZipperList!1758 zl!343)) lt!2380140)))

(declare-fun b!6434695 () Bool)

(declare-fun e!3903370 () Bool)

(declare-fun isUnion!1175 (Regex!16337) Bool)

(assert (=> b!6434695 (= e!3903370 (isUnion!1175 lt!2380140))))

(declare-fun b!6434696 () Bool)

(declare-fun e!3903375 () Bool)

(declare-fun isEmptyLang!1745 (Regex!16337) Bool)

(assert (=> b!6434696 (= e!3903375 (isEmptyLang!1745 lt!2380140))))

(declare-fun b!6434697 () Bool)

(assert (=> b!6434697 (= e!3903375 e!3903370)))

(declare-fun c!1176223 () Bool)

(declare-fun tail!12251 (List!65311) List!65311)

(assert (=> b!6434697 (= c!1176223 (isEmpty!37358 (tail!12251 (unfocusZipperList!1758 zl!343))))))

(declare-fun b!6434698 () Bool)

(assert (=> b!6434698 (= e!3903371 (isEmpty!37358 (t!378929 (unfocusZipperList!1758 zl!343))))))

(declare-fun b!6434699 () Bool)

(assert (=> b!6434699 (= e!3903373 e!3903372)))

(declare-fun c!1176224 () Bool)

(assert (=> b!6434699 (= c!1176224 ((_ is Cons!65187) (unfocusZipperList!1758 zl!343)))))

(declare-fun b!6434700 () Bool)

(declare-fun head!13166 (List!65311) Regex!16337)

(assert (=> b!6434700 (= e!3903370 (= lt!2380140 (head!13166 (unfocusZipperList!1758 zl!343))))))

(declare-fun b!6434701 () Bool)

(assert (=> b!6434701 (= e!3903374 e!3903375)))

(declare-fun c!1176225 () Bool)

(assert (=> b!6434701 (= c!1176225 (isEmpty!37358 (unfocusZipperList!1758 zl!343)))))

(assert (= (and d!2017218 res!2645043) b!6434698))

(assert (= (and d!2017218 c!1176222) b!6434694))

(assert (= (and d!2017218 (not c!1176222)) b!6434699))

(assert (= (and b!6434699 c!1176224) b!6434693))

(assert (= (and b!6434699 (not c!1176224)) b!6434692))

(assert (= (and d!2017218 res!2645044) b!6434701))

(assert (= (and b!6434701 c!1176225) b!6434696))

(assert (= (and b!6434701 (not c!1176225)) b!6434697))

(assert (= (and b!6434697 c!1176223) b!6434700))

(assert (= (and b!6434697 (not c!1176223)) b!6434695))

(declare-fun m!7228320 () Bool)

(assert (=> b!6434698 m!7228320))

(assert (=> b!6434697 m!7227374))

(declare-fun m!7228324 () Bool)

(assert (=> b!6434697 m!7228324))

(assert (=> b!6434697 m!7228324))

(declare-fun m!7228328 () Bool)

(assert (=> b!6434697 m!7228328))

(assert (=> b!6434701 m!7227374))

(declare-fun m!7228330 () Bool)

(assert (=> b!6434701 m!7228330))

(assert (=> b!6434700 m!7227374))

(declare-fun m!7228332 () Bool)

(assert (=> b!6434700 m!7228332))

(declare-fun m!7228336 () Bool)

(assert (=> b!6434693 m!7228336))

(declare-fun m!7228338 () Bool)

(assert (=> b!6434696 m!7228338))

(declare-fun m!7228340 () Bool)

(assert (=> d!2017218 m!7228340))

(assert (=> d!2017218 m!7227374))

(declare-fun m!7228342 () Bool)

(assert (=> d!2017218 m!7228342))

(declare-fun m!7228346 () Bool)

(assert (=> b!6434695 m!7228346))

(assert (=> b!6433855 d!2017218))

(declare-fun bs!1619334 () Bool)

(declare-fun d!2017240 () Bool)

(assert (= bs!1619334 (and d!2017240 d!2016986)))

(declare-fun lambda!356089 () Int)

(assert (=> bs!1619334 (= lambda!356089 lambda!356008)))

(declare-fun bs!1619335 () Bool)

(assert (= bs!1619335 (and d!2017240 d!2017218)))

(assert (=> bs!1619335 (= lambda!356089 lambda!356086)))

(declare-fun lt!2380145 () List!65311)

(assert (=> d!2017240 (forall!15527 lt!2380145 lambda!356089)))

(declare-fun e!3903400 () List!65311)

(assert (=> d!2017240 (= lt!2380145 e!3903400)))

(declare-fun c!1176242 () Bool)

(assert (=> d!2017240 (= c!1176242 ((_ is Cons!65188) zl!343))))

(assert (=> d!2017240 (= (unfocusZipperList!1758 zl!343) lt!2380145)))

(declare-fun b!6434746 () Bool)

(assert (=> b!6434746 (= e!3903400 (Cons!65187 (generalisedConcat!1934 (exprs!6221 (h!71636 zl!343))) (unfocusZipperList!1758 (t!378930 zl!343))))))

(declare-fun b!6434747 () Bool)

(assert (=> b!6434747 (= e!3903400 Nil!65187)))

(assert (= (and d!2017240 c!1176242) b!6434746))

(assert (= (and d!2017240 (not c!1176242)) b!6434747))

(declare-fun m!7228386 () Bool)

(assert (=> d!2017240 m!7228386))

(assert (=> b!6434746 m!7227396))

(declare-fun m!7228388 () Bool)

(assert (=> b!6434746 m!7228388))

(assert (=> b!6433855 d!2017240))

(declare-fun b!6434757 () Bool)

(declare-fun e!3903411 () Bool)

(declare-fun lt!2380146 () Bool)

(assert (=> b!6434757 (= e!3903411 (not lt!2380146))))

(declare-fun b!6434758 () Bool)

(declare-fun res!2645066 () Bool)

(declare-fun e!3903414 () Bool)

(assert (=> b!6434758 (=> (not res!2645066) (not e!3903414))))

(assert (=> b!6434758 (= res!2645066 (isEmpty!37357 (tail!12248 (_2!36619 lt!2379993))))))

(declare-fun b!6434759 () Bool)

(declare-fun res!2645065 () Bool)

(declare-fun e!3903412 () Bool)

(assert (=> b!6434759 (=> res!2645065 e!3903412)))

(assert (=> b!6434759 (= res!2645065 (not (isEmpty!37357 (tail!12248 (_2!36619 lt!2379993)))))))

(declare-fun b!6434760 () Bool)

(declare-fun res!2645062 () Bool)

(declare-fun e!3903409 () Bool)

(assert (=> b!6434760 (=> res!2645062 e!3903409)))

(assert (=> b!6434760 (= res!2645062 (not ((_ is ElementMatch!16337) lt!2379981)))))

(assert (=> b!6434760 (= e!3903411 e!3903409)))

(declare-fun b!6434761 () Bool)

(declare-fun res!2645063 () Bool)

(assert (=> b!6434761 (=> (not res!2645063) (not e!3903414))))

(declare-fun call!553664 () Bool)

(assert (=> b!6434761 (= res!2645063 (not call!553664))))

(declare-fun d!2017258 () Bool)

(declare-fun e!3903413 () Bool)

(assert (=> d!2017258 e!3903413))

(declare-fun c!1176247 () Bool)

(assert (=> d!2017258 (= c!1176247 ((_ is EmptyExpr!16337) lt!2379981))))

(declare-fun e!3903410 () Bool)

(assert (=> d!2017258 (= lt!2380146 e!3903410)))

(declare-fun c!1176245 () Bool)

(assert (=> d!2017258 (= c!1176245 (isEmpty!37357 (_2!36619 lt!2379993)))))

(assert (=> d!2017258 (validRegex!8073 lt!2379981)))

(assert (=> d!2017258 (= (matchR!8520 lt!2379981 (_2!36619 lt!2379993)) lt!2380146)))

(declare-fun b!6434762 () Bool)

(assert (=> b!6434762 (= e!3903414 (= (head!13163 (_2!36619 lt!2379993)) (c!1176002 lt!2379981)))))

(declare-fun b!6434763 () Bool)

(declare-fun e!3903408 () Bool)

(assert (=> b!6434763 (= e!3903409 e!3903408)))

(declare-fun res!2645064 () Bool)

(assert (=> b!6434763 (=> (not res!2645064) (not e!3903408))))

(assert (=> b!6434763 (= res!2645064 (not lt!2380146))))

(declare-fun b!6434764 () Bool)

(assert (=> b!6434764 (= e!3903412 (not (= (head!13163 (_2!36619 lt!2379993)) (c!1176002 lt!2379981))))))

(declare-fun b!6434765 () Bool)

(assert (=> b!6434765 (= e!3903413 e!3903411)))

(declare-fun c!1176246 () Bool)

(assert (=> b!6434765 (= c!1176246 ((_ is EmptyLang!16337) lt!2379981))))

(declare-fun b!6434766 () Bool)

(assert (=> b!6434766 (= e!3903410 (matchR!8520 (derivativeStep!5040 lt!2379981 (head!13163 (_2!36619 lt!2379993))) (tail!12248 (_2!36619 lt!2379993))))))

(declare-fun b!6434767 () Bool)

(assert (=> b!6434767 (= e!3903413 (= lt!2380146 call!553664))))

(declare-fun bm!553659 () Bool)

(assert (=> bm!553659 (= call!553664 (isEmpty!37357 (_2!36619 lt!2379993)))))

(declare-fun b!6434768 () Bool)

(declare-fun res!2645068 () Bool)

(assert (=> b!6434768 (=> res!2645068 e!3903409)))

(assert (=> b!6434768 (= res!2645068 e!3903414)))

(declare-fun res!2645067 () Bool)

(assert (=> b!6434768 (=> (not res!2645067) (not e!3903414))))

(assert (=> b!6434768 (= res!2645067 lt!2380146)))

(declare-fun b!6434769 () Bool)

(assert (=> b!6434769 (= e!3903410 (nullable!6330 lt!2379981))))

(declare-fun b!6434770 () Bool)

(assert (=> b!6434770 (= e!3903408 e!3903412)))

(declare-fun res!2645069 () Bool)

(assert (=> b!6434770 (=> res!2645069 e!3903412)))

(assert (=> b!6434770 (= res!2645069 call!553664)))

(assert (= (and d!2017258 c!1176245) b!6434769))

(assert (= (and d!2017258 (not c!1176245)) b!6434766))

(assert (= (and d!2017258 c!1176247) b!6434767))

(assert (= (and d!2017258 (not c!1176247)) b!6434765))

(assert (= (and b!6434765 c!1176246) b!6434757))

(assert (= (and b!6434765 (not c!1176246)) b!6434760))

(assert (= (and b!6434760 (not res!2645062)) b!6434768))

(assert (= (and b!6434768 res!2645067) b!6434761))

(assert (= (and b!6434761 res!2645063) b!6434758))

(assert (= (and b!6434758 res!2645066) b!6434762))

(assert (= (and b!6434768 (not res!2645068)) b!6434763))

(assert (= (and b!6434763 res!2645064) b!6434770))

(assert (= (and b!6434770 (not res!2645069)) b!6434759))

(assert (= (and b!6434759 (not res!2645065)) b!6434764))

(assert (= (or b!6434767 b!6434761 b!6434770) bm!553659))

(declare-fun m!7228396 () Bool)

(assert (=> b!6434766 m!7228396))

(assert (=> b!6434766 m!7228396))

(declare-fun m!7228398 () Bool)

(assert (=> b!6434766 m!7228398))

(declare-fun m!7228400 () Bool)

(assert (=> b!6434766 m!7228400))

(assert (=> b!6434766 m!7228398))

(assert (=> b!6434766 m!7228400))

(declare-fun m!7228402 () Bool)

(assert (=> b!6434766 m!7228402))

(assert (=> b!6434758 m!7228400))

(assert (=> b!6434758 m!7228400))

(declare-fun m!7228404 () Bool)

(assert (=> b!6434758 m!7228404))

(declare-fun m!7228406 () Bool)

(assert (=> d!2017258 m!7228406))

(assert (=> d!2017258 m!7227552))

(assert (=> bm!553659 m!7228406))

(assert (=> b!6434769 m!7227554))

(assert (=> b!6434762 m!7228396))

(assert (=> b!6434759 m!7228400))

(assert (=> b!6434759 m!7228400))

(assert (=> b!6434759 m!7228404))

(assert (=> b!6434764 m!7228396))

(assert (=> b!6433874 d!2017258))

(declare-fun d!2017262 () Bool)

(assert (=> d!2017262 (= (flatMap!1842 lt!2379978 lambda!356000) (choose!47852 lt!2379978 lambda!356000))))

(declare-fun bs!1619336 () Bool)

(assert (= bs!1619336 d!2017262))

(declare-fun m!7228408 () Bool)

(assert (=> bs!1619336 m!7228408))

(assert (=> b!6433876 d!2017262))

(declare-fun b!6434771 () Bool)

(declare-fun e!3903415 () (InoxSet Context!11442))

(declare-fun call!553665 () (InoxSet Context!11442))

(assert (=> b!6434771 (= e!3903415 call!553665)))

(declare-fun b!6434772 () Bool)

(declare-fun e!3903416 () Bool)

(assert (=> b!6434772 (= e!3903416 (nullable!6330 (h!71635 (exprs!6221 lt!2379998))))))

(declare-fun d!2017264 () Bool)

(declare-fun c!1176248 () Bool)

(assert (=> d!2017264 (= c!1176248 e!3903416)))

(declare-fun res!2645070 () Bool)

(assert (=> d!2017264 (=> (not res!2645070) (not e!3903416))))

(assert (=> d!2017264 (= res!2645070 ((_ is Cons!65187) (exprs!6221 lt!2379998)))))

(declare-fun e!3903417 () (InoxSet Context!11442))

(assert (=> d!2017264 (= (derivationStepZipperUp!1511 lt!2379998 (h!71634 s!2326)) e!3903417)))

(declare-fun bm!553660 () Bool)

(assert (=> bm!553660 (= call!553665 (derivationStepZipperDown!1585 (h!71635 (exprs!6221 lt!2379998)) (Context!11443 (t!378929 (exprs!6221 lt!2379998))) (h!71634 s!2326)))))

(declare-fun b!6434773 () Bool)

(assert (=> b!6434773 (= e!3903417 e!3903415)))

(declare-fun c!1176249 () Bool)

(assert (=> b!6434773 (= c!1176249 ((_ is Cons!65187) (exprs!6221 lt!2379998)))))

(declare-fun b!6434774 () Bool)

(assert (=> b!6434774 (= e!3903417 ((_ map or) call!553665 (derivationStepZipperUp!1511 (Context!11443 (t!378929 (exprs!6221 lt!2379998))) (h!71634 s!2326))))))

(declare-fun b!6434775 () Bool)

(assert (=> b!6434775 (= e!3903415 ((as const (Array Context!11442 Bool)) false))))

(assert (= (and d!2017264 res!2645070) b!6434772))

(assert (= (and d!2017264 c!1176248) b!6434774))

(assert (= (and d!2017264 (not c!1176248)) b!6434773))

(assert (= (and b!6434773 c!1176249) b!6434771))

(assert (= (and b!6434773 (not c!1176249)) b!6434775))

(assert (= (or b!6434774 b!6434771) bm!553660))

(declare-fun m!7228410 () Bool)

(assert (=> b!6434772 m!7228410))

(declare-fun m!7228412 () Bool)

(assert (=> bm!553660 m!7228412))

(declare-fun m!7228414 () Bool)

(assert (=> b!6434774 m!7228414))

(assert (=> b!6433876 d!2017264))

(declare-fun d!2017266 () Bool)

(assert (=> d!2017266 (= (flatMap!1842 lt!2379978 lambda!356000) (dynLambda!25896 lambda!356000 lt!2379998))))

(declare-fun lt!2380147 () Unit!158679)

(assert (=> d!2017266 (= lt!2380147 (choose!47853 lt!2379978 lt!2379998 lambda!356000))))

(assert (=> d!2017266 (= lt!2379978 (store ((as const (Array Context!11442 Bool)) false) lt!2379998 true))))

(assert (=> d!2017266 (= (lemmaFlatMapOnSingletonSet!1368 lt!2379978 lt!2379998 lambda!356000) lt!2380147)))

(declare-fun b_lambda!244431 () Bool)

(assert (=> (not b_lambda!244431) (not d!2017266)))

(declare-fun bs!1619337 () Bool)

(assert (= bs!1619337 d!2017266))

(assert (=> bs!1619337 m!7227476))

(declare-fun m!7228416 () Bool)

(assert (=> bs!1619337 m!7228416))

(declare-fun m!7228418 () Bool)

(assert (=> bs!1619337 m!7228418))

(assert (=> bs!1619337 m!7227470))

(assert (=> b!6433876 d!2017266))

(declare-fun bs!1619338 () Bool)

(declare-fun d!2017268 () Bool)

(assert (= bs!1619338 (and d!2017268 b!6433884)))

(declare-fun lambda!356092 () Int)

(assert (=> bs!1619338 (= lambda!356092 lambda!356000)))

(assert (=> d!2017268 true))

(assert (=> d!2017268 (= (derivationStepZipper!2303 lt!2379978 (h!71634 s!2326)) (flatMap!1842 lt!2379978 lambda!356092))))

(declare-fun bs!1619339 () Bool)

(assert (= bs!1619339 d!2017268))

(declare-fun m!7228424 () Bool)

(assert (=> bs!1619339 m!7228424))

(assert (=> b!6433876 d!2017268))

(declare-fun d!2017270 () Bool)

(declare-fun c!1176252 () Bool)

(assert (=> d!2017270 (= c!1176252 (isEmpty!37357 (t!378928 s!2326)))))

(declare-fun e!3903421 () Bool)

(assert (=> d!2017270 (= (matchZipper!2349 lt!2379965 (t!378928 s!2326)) e!3903421)))

(declare-fun b!6434781 () Bool)

(assert (=> b!6434781 (= e!3903421 (nullableZipper!2102 lt!2379965))))

(declare-fun b!6434782 () Bool)

(assert (=> b!6434782 (= e!3903421 (matchZipper!2349 (derivationStepZipper!2303 lt!2379965 (head!13163 (t!378928 s!2326))) (tail!12248 (t!378928 s!2326))))))

(assert (= (and d!2017270 c!1176252) b!6434781))

(assert (= (and d!2017270 (not c!1176252)) b!6434782))

(assert (=> d!2017270 m!7227942))

(declare-fun m!7228426 () Bool)

(assert (=> b!6434781 m!7228426))

(assert (=> b!6434782 m!7227946))

(assert (=> b!6434782 m!7227946))

(declare-fun m!7228428 () Bool)

(assert (=> b!6434782 m!7228428))

(assert (=> b!6434782 m!7227950))

(assert (=> b!6434782 m!7228428))

(assert (=> b!6434782 m!7227950))

(declare-fun m!7228430 () Bool)

(assert (=> b!6434782 m!7228430))

(assert (=> b!6433875 d!2017270))

(declare-fun d!2017274 () Bool)

(declare-fun e!3903431 () Bool)

(assert (=> d!2017274 e!3903431))

(declare-fun res!2645084 () Bool)

(assert (=> d!2017274 (=> (not res!2645084) (not e!3903431))))

(declare-fun lt!2380154 () List!65312)

(declare-fun noDuplicate!2166 (List!65312) Bool)

(assert (=> d!2017274 (= res!2645084 (noDuplicate!2166 lt!2380154))))

(declare-fun choose!47855 ((InoxSet Context!11442)) List!65312)

(assert (=> d!2017274 (= lt!2380154 (choose!47855 z!1189))))

(assert (=> d!2017274 (= (toList!10121 z!1189) lt!2380154)))

(declare-fun b!6434799 () Bool)

(declare-fun content!12389 (List!65312) (InoxSet Context!11442))

(assert (=> b!6434799 (= e!3903431 (= (content!12389 lt!2380154) z!1189))))

(assert (= (and d!2017274 res!2645084) b!6434799))

(declare-fun m!7228448 () Bool)

(assert (=> d!2017274 m!7228448))

(declare-fun m!7228450 () Bool)

(assert (=> d!2017274 m!7228450))

(declare-fun m!7228452 () Bool)

(assert (=> b!6434799 m!7228452))

(assert (=> b!6433877 d!2017274))

(declare-fun d!2017278 () Bool)

(assert (=> d!2017278 (= (flatMap!1842 lt!2379984 lambda!356000) (choose!47852 lt!2379984 lambda!356000))))

(declare-fun bs!1619340 () Bool)

(assert (= bs!1619340 d!2017278))

(declare-fun m!7228454 () Bool)

(assert (=> bs!1619340 m!7228454))

(assert (=> b!6433857 d!2017278))

(declare-fun d!2017280 () Bool)

(declare-fun lt!2380155 () Regex!16337)

(assert (=> d!2017280 (validRegex!8073 lt!2380155)))

(assert (=> d!2017280 (= lt!2380155 (generalisedUnion!2181 (unfocusZipperList!1758 (Cons!65188 lt!2379976 Nil!65188))))))

(assert (=> d!2017280 (= (unfocusZipper!2079 (Cons!65188 lt!2379976 Nil!65188)) lt!2380155)))

(declare-fun bs!1619341 () Bool)

(assert (= bs!1619341 d!2017280))

(declare-fun m!7228456 () Bool)

(assert (=> bs!1619341 m!7228456))

(declare-fun m!7228458 () Bool)

(assert (=> bs!1619341 m!7228458))

(assert (=> bs!1619341 m!7228458))

(declare-fun m!7228460 () Bool)

(assert (=> bs!1619341 m!7228460))

(assert (=> b!6433857 d!2017280))

(declare-fun d!2017282 () Bool)

(assert (=> d!2017282 (= (flatMap!1842 lt!2379989 lambda!356000) (dynLambda!25896 lambda!356000 lt!2379962))))

(declare-fun lt!2380156 () Unit!158679)

(assert (=> d!2017282 (= lt!2380156 (choose!47853 lt!2379989 lt!2379962 lambda!356000))))

(assert (=> d!2017282 (= lt!2379989 (store ((as const (Array Context!11442 Bool)) false) lt!2379962 true))))

(assert (=> d!2017282 (= (lemmaFlatMapOnSingletonSet!1368 lt!2379989 lt!2379962 lambda!356000) lt!2380156)))

(declare-fun b_lambda!244433 () Bool)

(assert (=> (not b_lambda!244433) (not d!2017282)))

(declare-fun bs!1619342 () Bool)

(assert (= bs!1619342 d!2017282))

(assert (=> bs!1619342 m!7227510))

(declare-fun m!7228462 () Bool)

(assert (=> bs!1619342 m!7228462))

(declare-fun m!7228464 () Bool)

(assert (=> bs!1619342 m!7228464))

(assert (=> bs!1619342 m!7227516))

(assert (=> b!6433857 d!2017282))

(declare-fun d!2017284 () Bool)

(assert (=> d!2017284 (= (flatMap!1842 lt!2379984 lambda!356000) (dynLambda!25896 lambda!356000 lt!2379976))))

(declare-fun lt!2380157 () Unit!158679)

(assert (=> d!2017284 (= lt!2380157 (choose!47853 lt!2379984 lt!2379976 lambda!356000))))

(assert (=> d!2017284 (= lt!2379984 (store ((as const (Array Context!11442 Bool)) false) lt!2379976 true))))

(assert (=> d!2017284 (= (lemmaFlatMapOnSingletonSet!1368 lt!2379984 lt!2379976 lambda!356000) lt!2380157)))

(declare-fun b_lambda!244435 () Bool)

(assert (=> (not b_lambda!244435) (not d!2017284)))

(declare-fun bs!1619343 () Bool)

(assert (= bs!1619343 d!2017284))

(assert (=> bs!1619343 m!7227512))

(declare-fun m!7228466 () Bool)

(assert (=> bs!1619343 m!7228466))

(declare-fun m!7228468 () Bool)

(assert (=> bs!1619343 m!7228468))

(assert (=> bs!1619343 m!7227526))

(assert (=> b!6433857 d!2017284))

(declare-fun b!6434800 () Bool)

(declare-fun e!3903432 () (InoxSet Context!11442))

(declare-fun call!553667 () (InoxSet Context!11442))

(assert (=> b!6434800 (= e!3903432 call!553667)))

(declare-fun b!6434801 () Bool)

(declare-fun e!3903433 () Bool)

(assert (=> b!6434801 (= e!3903433 (nullable!6330 (h!71635 (exprs!6221 lt!2379962))))))

(declare-fun d!2017286 () Bool)

(declare-fun c!1176256 () Bool)

(assert (=> d!2017286 (= c!1176256 e!3903433)))

(declare-fun res!2645085 () Bool)

(assert (=> d!2017286 (=> (not res!2645085) (not e!3903433))))

(assert (=> d!2017286 (= res!2645085 ((_ is Cons!65187) (exprs!6221 lt!2379962)))))

(declare-fun e!3903434 () (InoxSet Context!11442))

(assert (=> d!2017286 (= (derivationStepZipperUp!1511 lt!2379962 (h!71634 s!2326)) e!3903434)))

(declare-fun bm!553662 () Bool)

(assert (=> bm!553662 (= call!553667 (derivationStepZipperDown!1585 (h!71635 (exprs!6221 lt!2379962)) (Context!11443 (t!378929 (exprs!6221 lt!2379962))) (h!71634 s!2326)))))

(declare-fun b!6434802 () Bool)

(assert (=> b!6434802 (= e!3903434 e!3903432)))

(declare-fun c!1176257 () Bool)

(assert (=> b!6434802 (= c!1176257 ((_ is Cons!65187) (exprs!6221 lt!2379962)))))

(declare-fun b!6434803 () Bool)

(assert (=> b!6434803 (= e!3903434 ((_ map or) call!553667 (derivationStepZipperUp!1511 (Context!11443 (t!378929 (exprs!6221 lt!2379962))) (h!71634 s!2326))))))

(declare-fun b!6434804 () Bool)

(assert (=> b!6434804 (= e!3903432 ((as const (Array Context!11442 Bool)) false))))

(assert (= (and d!2017286 res!2645085) b!6434801))

(assert (= (and d!2017286 c!1176256) b!6434803))

(assert (= (and d!2017286 (not c!1176256)) b!6434802))

(assert (= (and b!6434802 c!1176257) b!6434800))

(assert (= (and b!6434802 (not c!1176257)) b!6434804))

(assert (= (or b!6434803 b!6434800) bm!553662))

(declare-fun m!7228470 () Bool)

(assert (=> b!6434801 m!7228470))

(declare-fun m!7228472 () Bool)

(assert (=> bm!553662 m!7228472))

(declare-fun m!7228474 () Bool)

(assert (=> b!6434803 m!7228474))

(assert (=> b!6433857 d!2017286))

(declare-fun b!6434805 () Bool)

(declare-fun e!3903435 () (InoxSet Context!11442))

(declare-fun call!553668 () (InoxSet Context!11442))

(assert (=> b!6434805 (= e!3903435 call!553668)))

(declare-fun b!6434806 () Bool)

(declare-fun e!3903436 () Bool)

(assert (=> b!6434806 (= e!3903436 (nullable!6330 (h!71635 (exprs!6221 lt!2379976))))))

(declare-fun d!2017288 () Bool)

(declare-fun c!1176258 () Bool)

(assert (=> d!2017288 (= c!1176258 e!3903436)))

(declare-fun res!2645086 () Bool)

(assert (=> d!2017288 (=> (not res!2645086) (not e!3903436))))

(assert (=> d!2017288 (= res!2645086 ((_ is Cons!65187) (exprs!6221 lt!2379976)))))

(declare-fun e!3903437 () (InoxSet Context!11442))

(assert (=> d!2017288 (= (derivationStepZipperUp!1511 lt!2379976 (h!71634 s!2326)) e!3903437)))

(declare-fun bm!553663 () Bool)

(assert (=> bm!553663 (= call!553668 (derivationStepZipperDown!1585 (h!71635 (exprs!6221 lt!2379976)) (Context!11443 (t!378929 (exprs!6221 lt!2379976))) (h!71634 s!2326)))))

(declare-fun b!6434807 () Bool)

(assert (=> b!6434807 (= e!3903437 e!3903435)))

(declare-fun c!1176259 () Bool)

(assert (=> b!6434807 (= c!1176259 ((_ is Cons!65187) (exprs!6221 lt!2379976)))))

(declare-fun b!6434808 () Bool)

(assert (=> b!6434808 (= e!3903437 ((_ map or) call!553668 (derivationStepZipperUp!1511 (Context!11443 (t!378929 (exprs!6221 lt!2379976))) (h!71634 s!2326))))))

(declare-fun b!6434809 () Bool)

(assert (=> b!6434809 (= e!3903435 ((as const (Array Context!11442 Bool)) false))))

(assert (= (and d!2017288 res!2645086) b!6434806))

(assert (= (and d!2017288 c!1176258) b!6434808))

(assert (= (and d!2017288 (not c!1176258)) b!6434807))

(assert (= (and b!6434807 c!1176259) b!6434805))

(assert (= (and b!6434807 (not c!1176259)) b!6434809))

(assert (= (or b!6434808 b!6434805) bm!553663))

(declare-fun m!7228482 () Bool)

(assert (=> b!6434806 m!7228482))

(declare-fun m!7228484 () Bool)

(assert (=> bm!553663 m!7228484))

(declare-fun m!7228486 () Bool)

(assert (=> b!6434808 m!7228486))

(assert (=> b!6433857 d!2017288))

(declare-fun d!2017292 () Bool)

(assert (=> d!2017292 (= (flatMap!1842 lt!2379989 lambda!356000) (choose!47852 lt!2379989 lambda!356000))))

(declare-fun bs!1619345 () Bool)

(assert (= bs!1619345 d!2017292))

(declare-fun m!7228488 () Bool)

(assert (=> bs!1619345 m!7228488))

(assert (=> b!6433857 d!2017292))

(declare-fun d!2017294 () Bool)

(declare-fun lt!2380162 () Regex!16337)

(assert (=> d!2017294 (validRegex!8073 lt!2380162)))

(assert (=> d!2017294 (= lt!2380162 (generalisedUnion!2181 (unfocusZipperList!1758 zl!343)))))

(assert (=> d!2017294 (= (unfocusZipper!2079 zl!343) lt!2380162)))

(declare-fun bs!1619346 () Bool)

(assert (= bs!1619346 d!2017294))

(declare-fun m!7228490 () Bool)

(assert (=> bs!1619346 m!7228490))

(assert (=> bs!1619346 m!7227374))

(assert (=> bs!1619346 m!7227374))

(assert (=> bs!1619346 m!7227376))

(assert (=> b!6433878 d!2017294))

(declare-fun e!3903447 () Bool)

(declare-fun d!2017296 () Bool)

(assert (=> d!2017296 (= (matchZipper!2349 ((_ map or) lt!2379959 lt!2379965) (t!378928 s!2326)) e!3903447)))

(declare-fun res!2645097 () Bool)

(assert (=> d!2017296 (=> res!2645097 e!3903447)))

(assert (=> d!2017296 (= res!2645097 (matchZipper!2349 lt!2379959 (t!378928 s!2326)))))

(declare-fun lt!2380166 () Unit!158679)

(declare-fun choose!47856 ((InoxSet Context!11442) (InoxSet Context!11442) List!65310) Unit!158679)

(assert (=> d!2017296 (= lt!2380166 (choose!47856 lt!2379959 lt!2379965 (t!378928 s!2326)))))

(assert (=> d!2017296 (= (lemmaZipperConcatMatchesSameAsBothZippers!1168 lt!2379959 lt!2379965 (t!378928 s!2326)) lt!2380166)))

(declare-fun b!6434826 () Bool)

(assert (=> b!6434826 (= e!3903447 (matchZipper!2349 lt!2379965 (t!378928 s!2326)))))

(assert (= (and d!2017296 (not res!2645097)) b!6434826))

(assert (=> d!2017296 m!7227370))

(assert (=> d!2017296 m!7227368))

(declare-fun m!7228506 () Bool)

(assert (=> d!2017296 m!7228506))

(assert (=> b!6434826 m!7227372))

(assert (=> b!6433870 d!2017296))

(declare-fun d!2017302 () Bool)

(declare-fun c!1176263 () Bool)

(assert (=> d!2017302 (= c!1176263 (isEmpty!37357 (t!378928 s!2326)))))

(declare-fun e!3903448 () Bool)

(assert (=> d!2017302 (= (matchZipper!2349 lt!2379959 (t!378928 s!2326)) e!3903448)))

(declare-fun b!6434827 () Bool)

(assert (=> b!6434827 (= e!3903448 (nullableZipper!2102 lt!2379959))))

(declare-fun b!6434828 () Bool)

(assert (=> b!6434828 (= e!3903448 (matchZipper!2349 (derivationStepZipper!2303 lt!2379959 (head!13163 (t!378928 s!2326))) (tail!12248 (t!378928 s!2326))))))

(assert (= (and d!2017302 c!1176263) b!6434827))

(assert (= (and d!2017302 (not c!1176263)) b!6434828))

(assert (=> d!2017302 m!7227942))

(declare-fun m!7228508 () Bool)

(assert (=> b!6434827 m!7228508))

(assert (=> b!6434828 m!7227946))

(assert (=> b!6434828 m!7227946))

(declare-fun m!7228510 () Bool)

(assert (=> b!6434828 m!7228510))

(assert (=> b!6434828 m!7227950))

(assert (=> b!6434828 m!7228510))

(assert (=> b!6434828 m!7227950))

(declare-fun m!7228512 () Bool)

(assert (=> b!6434828 m!7228512))

(assert (=> b!6433870 d!2017302))

(declare-fun d!2017304 () Bool)

(declare-fun c!1176264 () Bool)

(assert (=> d!2017304 (= c!1176264 (isEmpty!37357 (t!378928 s!2326)))))

(declare-fun e!3903449 () Bool)

(assert (=> d!2017304 (= (matchZipper!2349 ((_ map or) lt!2379959 lt!2379965) (t!378928 s!2326)) e!3903449)))

(declare-fun b!6434829 () Bool)

(assert (=> b!6434829 (= e!3903449 (nullableZipper!2102 ((_ map or) lt!2379959 lt!2379965)))))

(declare-fun b!6434830 () Bool)

(assert (=> b!6434830 (= e!3903449 (matchZipper!2349 (derivationStepZipper!2303 ((_ map or) lt!2379959 lt!2379965) (head!13163 (t!378928 s!2326))) (tail!12248 (t!378928 s!2326))))))

(assert (= (and d!2017304 c!1176264) b!6434829))

(assert (= (and d!2017304 (not c!1176264)) b!6434830))

(assert (=> d!2017304 m!7227942))

(declare-fun m!7228514 () Bool)

(assert (=> b!6434829 m!7228514))

(assert (=> b!6434830 m!7227946))

(assert (=> b!6434830 m!7227946))

(declare-fun m!7228516 () Bool)

(assert (=> b!6434830 m!7228516))

(assert (=> b!6434830 m!7227950))

(assert (=> b!6434830 m!7228516))

(assert (=> b!6434830 m!7227950))

(declare-fun m!7228518 () Bool)

(assert (=> b!6434830 m!7228518))

(assert (=> b!6433870 d!2017304))

(declare-fun d!2017306 () Bool)

(assert (=> d!2017306 (= (isEmpty!37357 (_1!36619 lt!2379961)) ((_ is Nil!65186) (_1!36619 lt!2379961)))))

(assert (=> b!6433850 d!2017306))

(declare-fun d!2017308 () Bool)

(assert (=> d!2017308 (= (isEmpty!37358 (t!378929 (exprs!6221 (h!71636 zl!343)))) ((_ is Nil!65187) (t!378929 (exprs!6221 (h!71636 zl!343)))))))

(assert (=> b!6433851 d!2017308))

(declare-fun bs!1619353 () Bool)

(declare-fun d!2017310 () Bool)

(assert (= bs!1619353 (and d!2017310 d!2016986)))

(declare-fun lambda!356098 () Int)

(assert (=> bs!1619353 (= lambda!356098 lambda!356008)))

(declare-fun bs!1619354 () Bool)

(assert (= bs!1619354 (and d!2017310 d!2017218)))

(assert (=> bs!1619354 (= lambda!356098 lambda!356086)))

(declare-fun bs!1619355 () Bool)

(assert (= bs!1619355 (and d!2017310 d!2017240)))

(assert (=> bs!1619355 (= lambda!356098 lambda!356089)))

(declare-fun b!6434912 () Bool)

(declare-fun e!3903496 () Bool)

(declare-fun e!3903498 () Bool)

(assert (=> b!6434912 (= e!3903496 e!3903498)))

(declare-fun c!1176285 () Bool)

(assert (=> b!6434912 (= c!1176285 (isEmpty!37358 (exprs!6221 (h!71636 zl!343))))))

(declare-fun b!6434913 () Bool)

(declare-fun e!3903495 () Regex!16337)

(assert (=> b!6434913 (= e!3903495 (Concat!25182 (h!71635 (exprs!6221 (h!71636 zl!343))) (generalisedConcat!1934 (t!378929 (exprs!6221 (h!71636 zl!343))))))))

(declare-fun b!6434914 () Bool)

(declare-fun e!3903493 () Regex!16337)

(assert (=> b!6434914 (= e!3903493 e!3903495)))

(declare-fun c!1176287 () Bool)

(assert (=> b!6434914 (= c!1176287 ((_ is Cons!65187) (exprs!6221 (h!71636 zl!343))))))

(declare-fun b!6434915 () Bool)

(declare-fun lt!2380173 () Regex!16337)

(declare-fun isEmptyExpr!1737 (Regex!16337) Bool)

(assert (=> b!6434915 (= e!3903498 (isEmptyExpr!1737 lt!2380173))))

(declare-fun b!6434916 () Bool)

(assert (=> b!6434916 (= e!3903493 (h!71635 (exprs!6221 (h!71636 zl!343))))))

(declare-fun b!6434917 () Bool)

(declare-fun e!3903497 () Bool)

(assert (=> b!6434917 (= e!3903497 (isEmpty!37358 (t!378929 (exprs!6221 (h!71636 zl!343)))))))

(declare-fun b!6434918 () Bool)

(declare-fun e!3903494 () Bool)

(declare-fun isConcat!1260 (Regex!16337) Bool)

(assert (=> b!6434918 (= e!3903494 (isConcat!1260 lt!2380173))))

(assert (=> d!2017310 e!3903496))

(declare-fun res!2645108 () Bool)

(assert (=> d!2017310 (=> (not res!2645108) (not e!3903496))))

(assert (=> d!2017310 (= res!2645108 (validRegex!8073 lt!2380173))))

(assert (=> d!2017310 (= lt!2380173 e!3903493)))

(declare-fun c!1176286 () Bool)

(assert (=> d!2017310 (= c!1176286 e!3903497)))

(declare-fun res!2645109 () Bool)

(assert (=> d!2017310 (=> (not res!2645109) (not e!3903497))))

(assert (=> d!2017310 (= res!2645109 ((_ is Cons!65187) (exprs!6221 (h!71636 zl!343))))))

(assert (=> d!2017310 (forall!15527 (exprs!6221 (h!71636 zl!343)) lambda!356098)))

(assert (=> d!2017310 (= (generalisedConcat!1934 (exprs!6221 (h!71636 zl!343))) lt!2380173)))

(declare-fun b!6434919 () Bool)

(assert (=> b!6434919 (= e!3903498 e!3903494)))

(declare-fun c!1176288 () Bool)

(assert (=> b!6434919 (= c!1176288 (isEmpty!37358 (tail!12251 (exprs!6221 (h!71636 zl!343)))))))

(declare-fun b!6434920 () Bool)

(assert (=> b!6434920 (= e!3903495 EmptyExpr!16337)))

(declare-fun b!6434921 () Bool)

(assert (=> b!6434921 (= e!3903494 (= lt!2380173 (head!13166 (exprs!6221 (h!71636 zl!343)))))))

(assert (= (and d!2017310 res!2645109) b!6434917))

(assert (= (and d!2017310 c!1176286) b!6434916))

(assert (= (and d!2017310 (not c!1176286)) b!6434914))

(assert (= (and b!6434914 c!1176287) b!6434913))

(assert (= (and b!6434914 (not c!1176287)) b!6434920))

(assert (= (and d!2017310 res!2645108) b!6434912))

(assert (= (and b!6434912 c!1176285) b!6434915))

(assert (= (and b!6434912 (not c!1176285)) b!6434919))

(assert (= (and b!6434919 c!1176288) b!6434921))

(assert (= (and b!6434919 (not c!1176288)) b!6434918))

(assert (=> b!6434917 m!7227442))

(declare-fun m!7228548 () Bool)

(assert (=> b!6434915 m!7228548))

(declare-fun m!7228550 () Bool)

(assert (=> b!6434919 m!7228550))

(assert (=> b!6434919 m!7228550))

(declare-fun m!7228552 () Bool)

(assert (=> b!6434919 m!7228552))

(declare-fun m!7228554 () Bool)

(assert (=> b!6434918 m!7228554))

(declare-fun m!7228556 () Bool)

(assert (=> b!6434921 m!7228556))

(declare-fun m!7228558 () Bool)

(assert (=> d!2017310 m!7228558))

(declare-fun m!7228560 () Bool)

(assert (=> d!2017310 m!7228560))

(declare-fun m!7228562 () Bool)

(assert (=> b!6434912 m!7228562))

(declare-fun m!7228564 () Bool)

(assert (=> b!6434913 m!7228564))

(assert (=> b!6433871 d!2017310))

(declare-fun b!6434941 () Bool)

(declare-fun c!1176293 () Bool)

(assert (=> b!6434941 (= c!1176293 ((_ is Star!16337) (reg!16666 (regOne!33186 r!7292))))))

(declare-fun e!3903510 () (InoxSet Context!11442))

(declare-fun e!3903511 () (InoxSet Context!11442))

(assert (=> b!6434941 (= e!3903510 e!3903511)))

(declare-fun c!1176292 () Bool)

(declare-fun bm!553665 () Bool)

(declare-fun call!553674 () List!65311)

(declare-fun call!553671 () (InoxSet Context!11442))

(assert (=> bm!553665 (= call!553671 (derivationStepZipperDown!1585 (ite c!1176292 (regTwo!33187 (reg!16666 (regOne!33186 r!7292))) (regOne!33186 (reg!16666 (regOne!33186 r!7292)))) (ite c!1176292 lt!2379962 (Context!11443 call!553674)) (h!71634 s!2326)))))

(declare-fun b!6434942 () Bool)

(declare-fun e!3903508 () (InoxSet Context!11442))

(declare-fun call!553673 () (InoxSet Context!11442))

(assert (=> b!6434942 (= e!3903508 ((_ map or) call!553673 call!553671))))

(declare-fun c!1176289 () Bool)

(declare-fun c!1176291 () Bool)

(declare-fun call!553675 () List!65311)

(declare-fun bm!553666 () Bool)

(assert (=> bm!553666 (= call!553673 (derivationStepZipperDown!1585 (ite c!1176292 (regOne!33187 (reg!16666 (regOne!33186 r!7292))) (ite c!1176291 (regTwo!33186 (reg!16666 (regOne!33186 r!7292))) (ite c!1176289 (regOne!33186 (reg!16666 (regOne!33186 r!7292))) (reg!16666 (reg!16666 (regOne!33186 r!7292)))))) (ite (or c!1176292 c!1176291) lt!2379962 (Context!11443 call!553675)) (h!71634 s!2326)))))

(declare-fun d!2017314 () Bool)

(declare-fun c!1176290 () Bool)

(assert (=> d!2017314 (= c!1176290 (and ((_ is ElementMatch!16337) (reg!16666 (regOne!33186 r!7292))) (= (c!1176002 (reg!16666 (regOne!33186 r!7292))) (h!71634 s!2326))))))

(declare-fun e!3903512 () (InoxSet Context!11442))

(assert (=> d!2017314 (= (derivationStepZipperDown!1585 (reg!16666 (regOne!33186 r!7292)) lt!2379962 (h!71634 s!2326)) e!3903512)))

(declare-fun b!6434943 () Bool)

(assert (=> b!6434943 (= e!3903512 (store ((as const (Array Context!11442 Bool)) false) lt!2379962 true))))

(declare-fun b!6434944 () Bool)

(declare-fun call!553672 () (InoxSet Context!11442))

(assert (=> b!6434944 (= e!3903511 call!553672)))

(declare-fun b!6434945 () Bool)

(assert (=> b!6434945 (= e!3903512 e!3903508)))

(assert (=> b!6434945 (= c!1176292 ((_ is Union!16337) (reg!16666 (regOne!33186 r!7292))))))

(declare-fun bm!553667 () Bool)

(assert (=> bm!553667 (= call!553675 call!553674)))

(declare-fun bm!553668 () Bool)

(declare-fun call!553670 () (InoxSet Context!11442))

(assert (=> bm!553668 (= call!553670 call!553673)))

(declare-fun b!6434946 () Bool)

(declare-fun e!3903513 () (InoxSet Context!11442))

(assert (=> b!6434946 (= e!3903513 e!3903510)))

(assert (=> b!6434946 (= c!1176289 ((_ is Concat!25182) (reg!16666 (regOne!33186 r!7292))))))

(declare-fun b!6434947 () Bool)

(assert (=> b!6434947 (= e!3903510 call!553672)))

(declare-fun b!6434948 () Bool)

(declare-fun e!3903509 () Bool)

(assert (=> b!6434948 (= c!1176291 e!3903509)))

(declare-fun res!2645110 () Bool)

(assert (=> b!6434948 (=> (not res!2645110) (not e!3903509))))

(assert (=> b!6434948 (= res!2645110 ((_ is Concat!25182) (reg!16666 (regOne!33186 r!7292))))))

(assert (=> b!6434948 (= e!3903508 e!3903513)))

(declare-fun bm!553669 () Bool)

(assert (=> bm!553669 (= call!553672 call!553670)))

(declare-fun b!6434949 () Bool)

(assert (=> b!6434949 (= e!3903513 ((_ map or) call!553671 call!553670))))

(declare-fun b!6434950 () Bool)

(assert (=> b!6434950 (= e!3903509 (nullable!6330 (regOne!33186 (reg!16666 (regOne!33186 r!7292)))))))

(declare-fun b!6434951 () Bool)

(assert (=> b!6434951 (= e!3903511 ((as const (Array Context!11442 Bool)) false))))

(declare-fun bm!553670 () Bool)

(assert (=> bm!553670 (= call!553674 ($colon$colon!2198 (exprs!6221 lt!2379962) (ite (or c!1176291 c!1176289) (regTwo!33186 (reg!16666 (regOne!33186 r!7292))) (reg!16666 (regOne!33186 r!7292)))))))

(assert (= (and d!2017314 c!1176290) b!6434943))

(assert (= (and d!2017314 (not c!1176290)) b!6434945))

(assert (= (and b!6434945 c!1176292) b!6434942))

(assert (= (and b!6434945 (not c!1176292)) b!6434948))

(assert (= (and b!6434948 res!2645110) b!6434950))

(assert (= (and b!6434948 c!1176291) b!6434949))

(assert (= (and b!6434948 (not c!1176291)) b!6434946))

(assert (= (and b!6434946 c!1176289) b!6434947))

(assert (= (and b!6434946 (not c!1176289)) b!6434941))

(assert (= (and b!6434941 c!1176293) b!6434944))

(assert (= (and b!6434941 (not c!1176293)) b!6434951))

(assert (= (or b!6434947 b!6434944) bm!553667))

(assert (= (or b!6434947 b!6434944) bm!553669))

(assert (= (or b!6434949 bm!553667) bm!553670))

(assert (= (or b!6434949 bm!553669) bm!553668))

(assert (= (or b!6434942 b!6434949) bm!553665))

(assert (= (or b!6434942 bm!553668) bm!553666))

(declare-fun m!7228566 () Bool)

(assert (=> bm!553665 m!7228566))

(declare-fun m!7228568 () Bool)

(assert (=> bm!553666 m!7228568))

(declare-fun m!7228570 () Bool)

(assert (=> bm!553670 m!7228570))

(declare-fun m!7228572 () Bool)

(assert (=> b!6434950 m!7228572))

(assert (=> b!6434943 m!7227516))

(assert (=> b!6433873 d!2017314))

(declare-fun d!2017324 () Bool)

(assert (=> d!2017324 (= (nullable!6330 (regOne!33186 (regOne!33186 r!7292))) (nullableFct!2276 (regOne!33186 (regOne!33186 r!7292))))))

(declare-fun bs!1619360 () Bool)

(assert (= bs!1619360 d!2017324))

(declare-fun m!7228574 () Bool)

(assert (=> bs!1619360 m!7228574))

(assert (=> b!6433872 d!2017324))

(declare-fun bs!1619361 () Bool)

(declare-fun d!2017326 () Bool)

(assert (= bs!1619361 (and d!2017326 d!2016986)))

(declare-fun lambda!356099 () Int)

(assert (=> bs!1619361 (= lambda!356099 lambda!356008)))

(declare-fun bs!1619362 () Bool)

(assert (= bs!1619362 (and d!2017326 d!2017218)))

(assert (=> bs!1619362 (= lambda!356099 lambda!356086)))

(declare-fun bs!1619363 () Bool)

(assert (= bs!1619363 (and d!2017326 d!2017240)))

(assert (=> bs!1619363 (= lambda!356099 lambda!356089)))

(declare-fun bs!1619364 () Bool)

(assert (= bs!1619364 (and d!2017326 d!2017310)))

(assert (=> bs!1619364 (= lambda!356099 lambda!356098)))

(assert (=> d!2017326 (= (inv!84089 (h!71636 zl!343)) (forall!15527 (exprs!6221 (h!71636 zl!343)) lambda!356099))))

(declare-fun bs!1619365 () Bool)

(assert (= bs!1619365 d!2017326))

(declare-fun m!7228576 () Bool)

(assert (=> bs!1619365 m!7228576))

(assert (=> b!6433852 d!2017326))

(declare-fun b!6434956 () Bool)

(declare-fun e!3903518 () Bool)

(declare-fun lt!2380174 () Bool)

(assert (=> b!6434956 (= e!3903518 (not lt!2380174))))

(declare-fun b!6434957 () Bool)

(declare-fun res!2645115 () Bool)

(declare-fun e!3903521 () Bool)

(assert (=> b!6434957 (=> (not res!2645115) (not e!3903521))))

(assert (=> b!6434957 (= res!2645115 (isEmpty!37357 (tail!12248 (_1!36619 lt!2379993))))))

(declare-fun b!6434958 () Bool)

(declare-fun res!2645114 () Bool)

(declare-fun e!3903519 () Bool)

(assert (=> b!6434958 (=> res!2645114 e!3903519)))

(assert (=> b!6434958 (= res!2645114 (not (isEmpty!37357 (tail!12248 (_1!36619 lt!2379993)))))))

(declare-fun b!6434959 () Bool)

(declare-fun res!2645111 () Bool)

(declare-fun e!3903516 () Bool)

(assert (=> b!6434959 (=> res!2645111 e!3903516)))

(assert (=> b!6434959 (= res!2645111 (not ((_ is ElementMatch!16337) (reg!16666 (regOne!33186 r!7292)))))))

(assert (=> b!6434959 (= e!3903518 e!3903516)))

(declare-fun b!6434960 () Bool)

(declare-fun res!2645112 () Bool)

(assert (=> b!6434960 (=> (not res!2645112) (not e!3903521))))

(declare-fun call!553676 () Bool)

(assert (=> b!6434960 (= res!2645112 (not call!553676))))

(declare-fun d!2017328 () Bool)

(declare-fun e!3903520 () Bool)

(assert (=> d!2017328 e!3903520))

(declare-fun c!1176296 () Bool)

(assert (=> d!2017328 (= c!1176296 ((_ is EmptyExpr!16337) (reg!16666 (regOne!33186 r!7292))))))

(declare-fun e!3903517 () Bool)

(assert (=> d!2017328 (= lt!2380174 e!3903517)))

(declare-fun c!1176294 () Bool)

(assert (=> d!2017328 (= c!1176294 (isEmpty!37357 (_1!36619 lt!2379993)))))

(assert (=> d!2017328 (validRegex!8073 (reg!16666 (regOne!33186 r!7292)))))

(assert (=> d!2017328 (= (matchR!8520 (reg!16666 (regOne!33186 r!7292)) (_1!36619 lt!2379993)) lt!2380174)))

(declare-fun b!6434961 () Bool)

(assert (=> b!6434961 (= e!3903521 (= (head!13163 (_1!36619 lt!2379993)) (c!1176002 (reg!16666 (regOne!33186 r!7292)))))))

(declare-fun b!6434962 () Bool)

(declare-fun e!3903515 () Bool)

(assert (=> b!6434962 (= e!3903516 e!3903515)))

(declare-fun res!2645113 () Bool)

(assert (=> b!6434962 (=> (not res!2645113) (not e!3903515))))

(assert (=> b!6434962 (= res!2645113 (not lt!2380174))))

(declare-fun b!6434963 () Bool)

(assert (=> b!6434963 (= e!3903519 (not (= (head!13163 (_1!36619 lt!2379993)) (c!1176002 (reg!16666 (regOne!33186 r!7292))))))))

(declare-fun b!6434964 () Bool)

(assert (=> b!6434964 (= e!3903520 e!3903518)))

(declare-fun c!1176295 () Bool)

(assert (=> b!6434964 (= c!1176295 ((_ is EmptyLang!16337) (reg!16666 (regOne!33186 r!7292))))))

(declare-fun b!6434965 () Bool)

(assert (=> b!6434965 (= e!3903517 (matchR!8520 (derivativeStep!5040 (reg!16666 (regOne!33186 r!7292)) (head!13163 (_1!36619 lt!2379993))) (tail!12248 (_1!36619 lt!2379993))))))

(declare-fun b!6434966 () Bool)

(assert (=> b!6434966 (= e!3903520 (= lt!2380174 call!553676))))

(declare-fun bm!553671 () Bool)

(assert (=> bm!553671 (= call!553676 (isEmpty!37357 (_1!36619 lt!2379993)))))

(declare-fun b!6434967 () Bool)

(declare-fun res!2645117 () Bool)

(assert (=> b!6434967 (=> res!2645117 e!3903516)))

(assert (=> b!6434967 (= res!2645117 e!3903521)))

(declare-fun res!2645116 () Bool)

(assert (=> b!6434967 (=> (not res!2645116) (not e!3903521))))

(assert (=> b!6434967 (= res!2645116 lt!2380174)))

(declare-fun b!6434968 () Bool)

(assert (=> b!6434968 (= e!3903517 (nullable!6330 (reg!16666 (regOne!33186 r!7292))))))

(declare-fun b!6434969 () Bool)

(assert (=> b!6434969 (= e!3903515 e!3903519)))

(declare-fun res!2645118 () Bool)

(assert (=> b!6434969 (=> res!2645118 e!3903519)))

(assert (=> b!6434969 (= res!2645118 call!553676)))

(assert (= (and d!2017328 c!1176294) b!6434968))

(assert (= (and d!2017328 (not c!1176294)) b!6434965))

(assert (= (and d!2017328 c!1176296) b!6434966))

(assert (= (and d!2017328 (not c!1176296)) b!6434964))

(assert (= (and b!6434964 c!1176295) b!6434956))

(assert (= (and b!6434964 (not c!1176295)) b!6434959))

(assert (= (and b!6434959 (not res!2645111)) b!6434967))

(assert (= (and b!6434967 res!2645116) b!6434960))

(assert (= (and b!6434960 res!2645112) b!6434957))

(assert (= (and b!6434957 res!2645115) b!6434961))

(assert (= (and b!6434967 (not res!2645117)) b!6434962))

(assert (= (and b!6434962 res!2645113) b!6434969))

(assert (= (and b!6434969 (not res!2645118)) b!6434958))

(assert (= (and b!6434958 (not res!2645114)) b!6434963))

(assert (= (or b!6434966 b!6434960 b!6434969) bm!553671))

(declare-fun m!7228578 () Bool)

(assert (=> b!6434965 m!7228578))

(assert (=> b!6434965 m!7228578))

(declare-fun m!7228580 () Bool)

(assert (=> b!6434965 m!7228580))

(declare-fun m!7228582 () Bool)

(assert (=> b!6434965 m!7228582))

(assert (=> b!6434965 m!7228580))

(assert (=> b!6434965 m!7228582))

(declare-fun m!7228584 () Bool)

(assert (=> b!6434965 m!7228584))

(assert (=> b!6434957 m!7228582))

(assert (=> b!6434957 m!7228582))

(declare-fun m!7228586 () Bool)

(assert (=> b!6434957 m!7228586))

(declare-fun m!7228588 () Bool)

(assert (=> d!2017328 m!7228588))

(assert (=> d!2017328 m!7227454))

(assert (=> bm!553671 m!7228588))

(declare-fun m!7228590 () Bool)

(assert (=> b!6434968 m!7228590))

(assert (=> b!6434961 m!7228578))

(assert (=> b!6434958 m!7228582))

(assert (=> b!6434958 m!7228582))

(assert (=> b!6434958 m!7228586))

(assert (=> b!6434963 m!7228578))

(assert (=> b!6433854 d!2017328))

(declare-fun condSetEmpty!43940 () Bool)

(assert (=> setNonEmpty!43934 (= condSetEmpty!43940 (= setRest!43934 ((as const (Array Context!11442 Bool)) false)))))

(declare-fun setRes!43940 () Bool)

(assert (=> setNonEmpty!43934 (= tp!1784630 setRes!43940)))

(declare-fun setIsEmpty!43940 () Bool)

(assert (=> setIsEmpty!43940 setRes!43940))

(declare-fun e!3903524 () Bool)

(declare-fun setNonEmpty!43940 () Bool)

(declare-fun tp!1784701 () Bool)

(declare-fun setElem!43940 () Context!11442)

(assert (=> setNonEmpty!43940 (= setRes!43940 (and tp!1784701 (inv!84089 setElem!43940) e!3903524))))

(declare-fun setRest!43940 () (InoxSet Context!11442))

(assert (=> setNonEmpty!43940 (= setRest!43934 ((_ map or) (store ((as const (Array Context!11442 Bool)) false) setElem!43940 true) setRest!43940))))

(declare-fun b!6434974 () Bool)

(declare-fun tp!1784702 () Bool)

(assert (=> b!6434974 (= e!3903524 tp!1784702)))

(assert (= (and setNonEmpty!43934 condSetEmpty!43940) setIsEmpty!43940))

(assert (= (and setNonEmpty!43934 (not condSetEmpty!43940)) setNonEmpty!43940))

(assert (= setNonEmpty!43940 b!6434974))

(declare-fun m!7228592 () Bool)

(assert (=> setNonEmpty!43940 m!7228592))

(declare-fun b!6434987 () Bool)

(declare-fun e!3903527 () Bool)

(declare-fun tp!1784717 () Bool)

(assert (=> b!6434987 (= e!3903527 tp!1784717)))

(assert (=> b!6433849 (= tp!1784634 e!3903527)))

(declare-fun b!6434988 () Bool)

(declare-fun tp!1784716 () Bool)

(declare-fun tp!1784714 () Bool)

(assert (=> b!6434988 (= e!3903527 (and tp!1784716 tp!1784714))))

(declare-fun b!6434985 () Bool)

(assert (=> b!6434985 (= e!3903527 tp_is_empty!41927)))

(declare-fun b!6434986 () Bool)

(declare-fun tp!1784713 () Bool)

(declare-fun tp!1784715 () Bool)

(assert (=> b!6434986 (= e!3903527 (and tp!1784713 tp!1784715))))

(assert (= (and b!6433849 ((_ is ElementMatch!16337) (reg!16666 r!7292))) b!6434985))

(assert (= (and b!6433849 ((_ is Concat!25182) (reg!16666 r!7292))) b!6434986))

(assert (= (and b!6433849 ((_ is Star!16337) (reg!16666 r!7292))) b!6434987))

(assert (= (and b!6433849 ((_ is Union!16337) (reg!16666 r!7292))) b!6434988))

(declare-fun b!6434993 () Bool)

(declare-fun e!3903530 () Bool)

(declare-fun tp!1784720 () Bool)

(assert (=> b!6434993 (= e!3903530 (and tp_is_empty!41927 tp!1784720))))

(assert (=> b!6433860 (= tp!1784636 e!3903530)))

(assert (= (and b!6433860 ((_ is Cons!65186) (t!378928 s!2326))) b!6434993))

(declare-fun b!6434996 () Bool)

(declare-fun e!3903531 () Bool)

(declare-fun tp!1784725 () Bool)

(assert (=> b!6434996 (= e!3903531 tp!1784725)))

(assert (=> b!6433863 (= tp!1784631 e!3903531)))

(declare-fun b!6434997 () Bool)

(declare-fun tp!1784724 () Bool)

(declare-fun tp!1784722 () Bool)

(assert (=> b!6434997 (= e!3903531 (and tp!1784724 tp!1784722))))

(declare-fun b!6434994 () Bool)

(assert (=> b!6434994 (= e!3903531 tp_is_empty!41927)))

(declare-fun b!6434995 () Bool)

(declare-fun tp!1784721 () Bool)

(declare-fun tp!1784723 () Bool)

(assert (=> b!6434995 (= e!3903531 (and tp!1784721 tp!1784723))))

(assert (= (and b!6433863 ((_ is ElementMatch!16337) (regOne!33186 r!7292))) b!6434994))

(assert (= (and b!6433863 ((_ is Concat!25182) (regOne!33186 r!7292))) b!6434995))

(assert (= (and b!6433863 ((_ is Star!16337) (regOne!33186 r!7292))) b!6434996))

(assert (= (and b!6433863 ((_ is Union!16337) (regOne!33186 r!7292))) b!6434997))

(declare-fun b!6435000 () Bool)

(declare-fun e!3903532 () Bool)

(declare-fun tp!1784730 () Bool)

(assert (=> b!6435000 (= e!3903532 tp!1784730)))

(assert (=> b!6433863 (= tp!1784635 e!3903532)))

(declare-fun b!6435001 () Bool)

(declare-fun tp!1784729 () Bool)

(declare-fun tp!1784727 () Bool)

(assert (=> b!6435001 (= e!3903532 (and tp!1784729 tp!1784727))))

(declare-fun b!6434998 () Bool)

(assert (=> b!6434998 (= e!3903532 tp_is_empty!41927)))

(declare-fun b!6434999 () Bool)

(declare-fun tp!1784726 () Bool)

(declare-fun tp!1784728 () Bool)

(assert (=> b!6434999 (= e!3903532 (and tp!1784726 tp!1784728))))

(assert (= (and b!6433863 ((_ is ElementMatch!16337) (regTwo!33186 r!7292))) b!6434998))

(assert (= (and b!6433863 ((_ is Concat!25182) (regTwo!33186 r!7292))) b!6434999))

(assert (= (and b!6433863 ((_ is Star!16337) (regTwo!33186 r!7292))) b!6435000))

(assert (= (and b!6433863 ((_ is Union!16337) (regTwo!33186 r!7292))) b!6435001))

(declare-fun b!6435006 () Bool)

(declare-fun e!3903535 () Bool)

(declare-fun tp!1784735 () Bool)

(declare-fun tp!1784736 () Bool)

(assert (=> b!6435006 (= e!3903535 (and tp!1784735 tp!1784736))))

(assert (=> b!6433842 (= tp!1784633 e!3903535)))

(assert (= (and b!6433842 ((_ is Cons!65187) (exprs!6221 (h!71636 zl!343)))) b!6435006))

(declare-fun b!6435007 () Bool)

(declare-fun e!3903536 () Bool)

(declare-fun tp!1784737 () Bool)

(declare-fun tp!1784738 () Bool)

(assert (=> b!6435007 (= e!3903536 (and tp!1784737 tp!1784738))))

(assert (=> b!6433882 (= tp!1784632 e!3903536)))

(assert (= (and b!6433882 ((_ is Cons!65187) (exprs!6221 setElem!43934))) b!6435007))

(declare-fun b!6435015 () Bool)

(declare-fun e!3903542 () Bool)

(declare-fun tp!1784743 () Bool)

(assert (=> b!6435015 (= e!3903542 tp!1784743)))

(declare-fun tp!1784744 () Bool)

(declare-fun e!3903541 () Bool)

(declare-fun b!6435014 () Bool)

(assert (=> b!6435014 (= e!3903541 (and (inv!84089 (h!71636 (t!378930 zl!343))) e!3903542 tp!1784744))))

(assert (=> b!6433852 (= tp!1784638 e!3903541)))

(assert (= b!6435014 b!6435015))

(assert (= (and b!6433852 ((_ is Cons!65188) (t!378930 zl!343))) b!6435014))

(declare-fun m!7228594 () Bool)

(assert (=> b!6435014 m!7228594))

(declare-fun b!6435018 () Bool)

(declare-fun e!3903543 () Bool)

(declare-fun tp!1784749 () Bool)

(assert (=> b!6435018 (= e!3903543 tp!1784749)))

(assert (=> b!6433859 (= tp!1784637 e!3903543)))

(declare-fun b!6435019 () Bool)

(declare-fun tp!1784748 () Bool)

(declare-fun tp!1784746 () Bool)

(assert (=> b!6435019 (= e!3903543 (and tp!1784748 tp!1784746))))

(declare-fun b!6435016 () Bool)

(assert (=> b!6435016 (= e!3903543 tp_is_empty!41927)))

(declare-fun b!6435017 () Bool)

(declare-fun tp!1784745 () Bool)

(declare-fun tp!1784747 () Bool)

(assert (=> b!6435017 (= e!3903543 (and tp!1784745 tp!1784747))))

(assert (= (and b!6433859 ((_ is ElementMatch!16337) (regOne!33187 r!7292))) b!6435016))

(assert (= (and b!6433859 ((_ is Concat!25182) (regOne!33187 r!7292))) b!6435017))

(assert (= (and b!6433859 ((_ is Star!16337) (regOne!33187 r!7292))) b!6435018))

(assert (= (and b!6433859 ((_ is Union!16337) (regOne!33187 r!7292))) b!6435019))

(declare-fun b!6435022 () Bool)

(declare-fun e!3903544 () Bool)

(declare-fun tp!1784754 () Bool)

(assert (=> b!6435022 (= e!3903544 tp!1784754)))

(assert (=> b!6433859 (= tp!1784629 e!3903544)))

(declare-fun b!6435023 () Bool)

(declare-fun tp!1784753 () Bool)

(declare-fun tp!1784751 () Bool)

(assert (=> b!6435023 (= e!3903544 (and tp!1784753 tp!1784751))))

(declare-fun b!6435020 () Bool)

(assert (=> b!6435020 (= e!3903544 tp_is_empty!41927)))

(declare-fun b!6435021 () Bool)

(declare-fun tp!1784750 () Bool)

(declare-fun tp!1784752 () Bool)

(assert (=> b!6435021 (= e!3903544 (and tp!1784750 tp!1784752))))

(assert (= (and b!6433859 ((_ is ElementMatch!16337) (regTwo!33187 r!7292))) b!6435020))

(assert (= (and b!6433859 ((_ is Concat!25182) (regTwo!33187 r!7292))) b!6435021))

(assert (= (and b!6433859 ((_ is Star!16337) (regTwo!33187 r!7292))) b!6435022))

(assert (= (and b!6433859 ((_ is Union!16337) (regTwo!33187 r!7292))) b!6435023))

(declare-fun b_lambda!244445 () Bool)

(assert (= b_lambda!244425 (or b!6433884 b_lambda!244445)))

(declare-fun bs!1619366 () Bool)

(declare-fun d!2017330 () Bool)

(assert (= bs!1619366 (and d!2017330 b!6433884)))

(assert (=> bs!1619366 (= (dynLambda!25896 lambda!356000 (h!71636 zl!343)) (derivationStepZipperUp!1511 (h!71636 zl!343) (h!71634 s!2326)))))

(assert (=> bs!1619366 m!7227426))

(assert (=> d!2017188 d!2017330))

(declare-fun b_lambda!244447 () Bool)

(assert (= b_lambda!244435 (or b!6433884 b_lambda!244447)))

(declare-fun bs!1619367 () Bool)

(declare-fun d!2017332 () Bool)

(assert (= bs!1619367 (and d!2017332 b!6433884)))

(assert (=> bs!1619367 (= (dynLambda!25896 lambda!356000 lt!2379976) (derivationStepZipperUp!1511 lt!2379976 (h!71634 s!2326)))))

(assert (=> bs!1619367 m!7227520))

(assert (=> d!2017284 d!2017332))

(declare-fun b_lambda!244449 () Bool)

(assert (= b_lambda!244433 (or b!6433884 b_lambda!244449)))

(declare-fun bs!1619368 () Bool)

(declare-fun d!2017334 () Bool)

(assert (= bs!1619368 (and d!2017334 b!6433884)))

(assert (=> bs!1619368 (= (dynLambda!25896 lambda!356000 lt!2379962) (derivationStepZipperUp!1511 lt!2379962 (h!71634 s!2326)))))

(assert (=> bs!1619368 m!7227518))

(assert (=> d!2017282 d!2017334))

(declare-fun b_lambda!244451 () Bool)

(assert (= b_lambda!244431 (or b!6433884 b_lambda!244451)))

(declare-fun bs!1619369 () Bool)

(declare-fun d!2017336 () Bool)

(assert (= bs!1619369 (and d!2017336 b!6433884)))

(assert (=> bs!1619369 (= (dynLambda!25896 lambda!356000 lt!2379998) (derivationStepZipperUp!1511 lt!2379998 (h!71634 s!2326)))))

(assert (=> bs!1619369 m!7227474))

(assert (=> d!2017266 d!2017336))

(check-sat (not b!6435000) (not d!2017218) (not b!6434425) (not b!6434774) (not b!6434592) (not b!6434915) (not d!2017116) (not bm!553596) (not bm!553665) (not d!2017302) (not d!2017158) (not b!6434020) (not b!6435019) (not b!6434589) (not b!6434997) (not d!2016996) (not b!6434374) (not b!6434758) (not bm!553546) (not b!6434021) (not b!6434746) (not d!2017154) (not bm!553587) (not b!6434644) (not bm!553595) (not b!6434700) (not b!6434961) (not b!6434917) (not d!2017166) (not d!2017138) (not d!2017160) (not b_lambda!244445) (not d!2017120) (not b!6434393) (not d!2017038) (not d!2017112) (not d!2017266) (not d!2017214) (not b!6434988) (not b!6434517) (not d!2017240) (not b!6434042) (not d!2016994) (not b!6434695) (not b!6434698) (not d!2016990) (not b!6434764) (not b!6434912) (not d!2016988) (not b!6434640) (not b!6434439) (not bm!553631) (not d!2017090) (not b!6433929) (not d!2017328) (not b!6435007) (not d!2017294) (not b!6434417) (not bm!553594) (not b!6434493) (not b!6435022) (not bm!553586) (not d!2017122) (not b!6434347) (not b!6434579) (not b!6434340) (not d!2017092) (not b!6434028) (not bm!553670) (not b!6434364) (not d!2016992) (not b!6434766) (not b!6435001) (not b!6434420) (not bm!553633) (not b!6434419) (not b!6434769) (not d!2017274) (not b!6434641) (not b!6434830) (not b!6434701) (not b!6434999) (not b!6434027) (not d!2017136) (not b!6434522) (not d!2017114) (not b!6434398) (not d!2017304) (not b!6434140) (not b!6434041) (not b!6434337) (not b!6433923) (not b!6434023) (not d!2017074) (not b!6434958) (not d!2017020) (not b!6434801) (not b!6434363) (not b!6434986) (not bm!553589) (not b!6434368) (not d!2017270) (not b_lambda!244449) (not b!6434648) (not b!6434651) (not b!6434965) (not d!2017148) (not b!6434501) (not b!6434496) (not d!2017108) (not b!6434201) (not d!2017262) (not bm!553597) (not b!6434336) (not b!6434799) (not b!6434469) (not b!6434993) (not d!2017056) (not b!6434772) (not b!6434646) (not b!6434138) (not b!6434781) (not b!6434696) (not d!2017110) (not d!2016986) (not b!6434307) (not b!6434237) (not b!6434581) (not b!6434344) (not bm!553662) (not b!6434968) (not bm!553660) (not d!2017324) (not b!6434828) (not bm!553644) (not b!6434365) (not b_lambda!244447) (not b!6435018) (not b!6434995) (not b!6434474) (not b!6434762) (not d!2017144) (not b!6434388) (not b!6435014) (not b!6434693) (not b!6434141) (not b!6434236) (not b!6433934) (not b!6434950) (not b!6434423) (not b!6434386) (not bm!553610) (not bm!553663) (not d!2017156) (not d!2017182) (not b!6434390) (not bm!553601) (not d!2017268) (not b!6434482) (not b!6434759) (not d!2017008) (not b!6434376) (not setNonEmpty!43940) (not b!6434470) (not b!6434369) (not d!2017280) (not b_lambda!244451) (not b!6434500) (not bm!553630) (not b!6434524) (not d!2017258) (not d!2017126) (not b!6434963) (not d!2017106) (not d!2017284) (not d!2017082) (not b!6434697) (not b!6434974) (not d!2017178) (not bm!553666) (not d!2017296) (not b!6435006) (not b!6434806) tp_is_empty!41927 (not d!2017094) (not b!6434918) (not b!6435021) (not bs!1619369) (not d!2017278) (not bm!553659) (not b!6434025) (not bm!553559) (not d!2017310) (not b!6433931) (not bs!1619367) (not d!2017292) (not b!6434430) (not b!6434996) (not bm!553602) (not b!6434133) (not b!6434134) (not b!6434427) (not b!6434574) (not bm!553558) (not b!6434808) (not d!2017134) (not b!6434782) (not b!6434383) (not b!6433927) (not b!6435015) (not b!6434519) (not d!2017030) (not b!6434803) (not b!6434826) (not b!6433924) (not d!2017088) (not d!2017188) (not bm!553671) (not b!6434913) (not bm!553609) (not b!6434136) (not b!6434473) (not b!6434829) (not b!6434957) (not d!2017104) (not d!2017096) (not b!6434987) (not d!2017210) (not b!6434919) (not bm!553603) (not b!6434498) (not d!2017084) (not b!6435023) (not bm!553626) (not bs!1619366) (not b!6434827) (not bm!553625) (not b!6434379) (not b!6434494) (not b!6434921) (not b!6434366) (not b!6434481) (not bm!553632) (not b!6434436) (not d!2017186) (not d!2017282) (not b!6434342) (not b!6434198) (not b!6435017) (not d!2017326) (not b!6434372) (not bs!1619368) (not b!6434382))
(check-sat)
